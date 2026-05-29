`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2025 06:21:13 PM
// Design Name: 
// Module Name: student_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module student_top#(
    parameter                           P_SW_CNT            = 64,
    parameter                           P_LED_CNT           = 32,
    parameter                           P_SEG_CNT           = 40,
    parameter                           P_KEY_CNT           = 8
) (
    input                                       w_cpu_clk     ,
    input                                       w_clk_50Mhz   ,
    input                                       w_clk_rst     ,
    input  [P_KEY_CNT - 1:0]                    virtual_key   ,
    input  [P_SW_CNT  - 1:0]                    virtual_sw    ,

    output [P_LED_CNT - 1:0]                    virtual_led   ,
    output [P_SEG_CNT - 1:0]                    virtual_seg   
);

    // IROM
    logic [31:0] pc;
    logic [11:0] inst_addr;
    logic [31:0] instruction;


    // perip
    logic [31:0] cpu_perip_addr, cpu_perip_wdata, cpu_perip_rdata;
    logic        cpu_perip_wen;
    logic [1:0]  cpu_perip_mask;

    // ============================================================
    // Reset synchronizer — async assert, sync de-assert
    //
    // w_clk_rst from top is ~PLL_locked, an asynchronous signal
    // relative to w_cpu_clk. Using it directly as async reset on
    // downstream FFs causes recovery-time violations when reset
    // de-asserts — different FFs exit reset on different cycles,
    // leaving the pipeline in an inconsistent state.
    //
    // This 3-FF chain asserts reset immediately (posedge w_clk_rst)
    // but de-asserts cleanly 3 cycles after w_clk_rst goes low.
    // ============================================================
    reg [2:0] rst_sr;
    always_ff @(posedge w_cpu_clk or posedge w_clk_rst) begin
        if (w_clk_rst)
            rst_sr <= 3'b111;
        else
            rst_sr <= {1'b0, rst_sr[2:1]};
    end
    wire w_rst_synced;
    assign w_rst_synced = rst_sr[0];

    // ============================================================
    // Pipeline registers on perip_* outputs — TIMING OPTIMIZATION
    //
    // Break the combinational path from EX ALU through perip_bridge
    // and dram_driver to BRAM (WNS=-1.197ns @ 175MHz).
    //
    // All perip_* signals are registered together to stay coherent.
    // This adds 1 cycle of latency for memory ops → compensated by
    // load_stall in stage_MEM (waits 1 extra cycle for BRAM data).
    // ============================================================
    logic [31:0] bridge_perip_addr, bridge_perip_wdata, bridge_perip_rdata;
    logic        bridge_perip_wen;
    logic [1:0]  bridge_perip_mask;

    always_ff @(posedge w_cpu_clk) begin
        if (w_rst_synced) begin
            bridge_perip_addr  <= 32'd0;
            bridge_perip_wen   <= 1'b0;
            bridge_perip_mask  <= 2'd0;
            bridge_perip_wdata <= 32'd0;
        end else begin
            bridge_perip_addr  <= cpu_perip_addr;
            bridge_perip_wen   <= cpu_perip_wen;
            bridge_perip_mask  <= cpu_perip_mask;
            bridge_perip_wdata <= cpu_perip_wdata;
        end
    end

    // 16KB = 2^12 * 32bit
    assign inst_addr = pc[13:2];

    myCPU Core_cpu (
        .cpu_rst            (w_rst_synced),
        .cpu_clk            (w_cpu_clk),

        // Interface to IROM
        .irom_addr          (pc),
        .irom_data          (instruction),


        // Interface to DRAM & periphera
        .perip_addr         (cpu_perip_addr),
        .perip_wen          (cpu_perip_wen),
        .perip_mask         (cpu_perip_mask),
        .perip_wdata        (cpu_perip_wdata),
        .perip_rdata        (cpu_perip_rdata)
    );

    IROM Mem_IROM (
        .a          (inst_addr),
        .spo        (instruction)
);



    perip_bridge bridge_inst (
        .clk				(w_cpu_clk),
        .cnt_clk            (w_clk_50Mhz),
        .rst                (w_rst_synced),
        .perip_addr			(bridge_perip_addr),
        .perip_wdata		(bridge_perip_wdata),
        .perip_wen			(bridge_perip_wen),
        .perip_mask			(bridge_perip_mask),
        .perip_rdata		(bridge_perip_rdata),
        .virtual_sw_input	(virtual_sw),
        .virtual_key_input	(virtual_key),
        .virtual_seg_output	(virtual_seg),
        .virtual_led_output (virtual_led)
    );

    assign cpu_perip_rdata = bridge_perip_rdata;

endmodule
