`timescale 1ns / 1ns
`include "defines.sv"

module stage_MEM#(
    parameter DATAWIDTH = 32,
    parameter ADDR_WIDTH = 5
)(
    input logic clk,
    input logic reset,

    // pipeline control
    input  logic ex_to_mem_valid,
    output logic mem_allow_in,
    input  logic wb_allow_in,

    // from EX: is the next instruction a load or store?
    input  logic ex_is_mem_op,

    // input from EX
    input logic [`ex_to_mem_bus_WIDTH-1:0] ex_to_mem_bus,

    // output to WB (MEM/WB pipeline register)
    output logic [`mem_to_wb_bus_WIDTH-1:0] mem_to_wb_bus,
    output logic mem_to_wb_valid,

    // memory interface
    output logic                 perip_wen,
    output logic [1:0]           perip_mask,
    output logic [DATAWIDTH-1:0] perip_wdata,
    input  logic [DATAWIDTH-1:0] perip_rdata,

    // for perip_addr mux
    output logic [DATAWIDTH-1:0] mem_alu_result,
    output logic                 mem_is_mem_op_out,

    // forwarding to ID
    output logic                 mem_fw_regwrite,
    output logic [ADDR_WIDTH-1:0] mem_fw_waddr,
    output logic [DATAWIDTH-1:0] mem_fw_wdata,
    output logic                 mem_fw_is_load
);

    // EX/MEM bus unpack
    logic [DATAWIDTH-1:0] ex_mem_alu_result;
    logic [DATAWIDTH-1:0] ex_mem_rs2;
    logic [DATAWIDTH-1:0] ex_mem_pc_plus4;
    logic                 ex_mem_reg_write;
    logic [1:0]           ex_mem_mem_to_reg;
    logic                 ex_mem_mem_write;
    logic [4:0]           ex_mem_rd;
    logic [2:0]           ex_mem_funct3;

    assign {
        ex_mem_alu_result,
        ex_mem_rs2,
        ex_mem_pc_plus4,
        ex_mem_reg_write,
        ex_mem_mem_to_reg,
        ex_mem_mem_write,
        ex_mem_rd,
        ex_mem_funct3
    } = ex_to_mem_bus;

    logic mem_is_load;
    assign mem_is_load = (ex_mem_mem_to_reg == 2'b01) && ex_mem_reg_write;
    logic mem_is_mem_op;
    assign mem_is_mem_op = ex_mem_mem_write || mem_is_load;

    // ============================================================
    // Structural hazard state machine:
    //   NORMAL: MEM processes instruction from ex_to_mem_bus
    //   STALL:  MEM has load/store AND EX has load/store.
    //           EX stalled. MEM instruction advances to WB.
    //           Next cycle → DRAIN.
    //   DRAIN:  ex_to_mem_bus has stale data (ignored).
    //           EX/MEM updates with next instruction.
    //           Next cycle → NORMAL.
    // ============================================================
    logic in_drain;
    logic structural_stall;
    logic mem_valid_eff;
    assign structural_stall = ex_to_mem_valid && !in_drain && mem_is_mem_op && ex_is_mem_op;

    // ============================================================
    // Load-data stall — TIMING OPTIMIZATION
    //
    // perip_* signals are registered in student_top (1 cycle delay).
    // Load address reaches BRAM during MEM instead of EX. BRAM data
    // needs 1 extra cycle to arrive → stall loads for 1 cycle in MEM.
    // MEM/WB capture is gated during the stall so stale data is not
    // latched. in_drain is gated to keep the load alive during stall.
    // ============================================================
    logic load_wait;
    logic  load_stall;
    assign load_stall = mem_valid_eff && mem_is_load && !load_wait;

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            load_wait <= 1'b0;
        else if (load_stall)
            load_wait <= 1'b1;
        else
            load_wait <= 1'b0;
    end

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            in_drain <= 1'b0;
        else if (!load_stall)          // only enter drain when not waiting for load data
            in_drain <= structural_stall;
    end

    // Effective valid: ex_to_mem_valid, but gated during drain cycle
    assign mem_valid_eff = ex_to_mem_valid && !in_drain;

    // Pipeline handshake
    logic mem_ready_go;
    assign mem_ready_go = !structural_stall && !load_stall;
    assign mem_allow_in = !mem_valid_eff || (mem_ready_go && wb_allow_in);

    // Memory interface: driven from ex_to_mem_bus
    assign perip_wdata = ex_mem_rs2;
    assign perip_mask  = ex_mem_funct3[1:0];
    assign perip_wen   = ex_mem_mem_write && mem_valid_eff;
    assign mem_alu_result    = ex_mem_alu_result;
    assign mem_is_mem_op_out = mem_valid_eff && mem_is_mem_op;

    // Load data through Mask
    logic [DATAWIDTH-1:0] mem_read_data;
    Mask #(DATAWIDTH) mask_inst (
        .mask (ex_mem_funct3),
        .dout (perip_rdata),
        .mdata(mem_read_data)
    );

    // ============================================================
    // MEM/WB pipeline register
    // ============================================================
    logic [`mem_to_wb_bus_WIDTH-1:0] mem_wb_reg;
    logic mem_wb_valid;

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            mem_wb_valid <= 1'b0;
            mem_wb_reg   <= 0;
        end else if (wb_allow_in && !load_stall) begin  // gated during load stall
            mem_wb_valid <= mem_valid_eff;
            if (mem_valid_eff) begin
                mem_wb_reg <= {
                    ex_mem_alu_result,   // 32
                    mem_read_data,       // 32
                    ex_mem_pc_plus4,     // 32
                    ex_mem_reg_write,    // 1
                    ex_mem_mem_to_reg,   // 2
                    ex_mem_rd            // 5
                };
            end
        end
    end

    assign mem_to_wb_bus   = mem_wb_reg;
    assign mem_to_wb_valid = mem_wb_valid;

    // Forwarding to ID
    logic is_load_fw;
    assign is_load_fw = (ex_mem_mem_to_reg == 2'b01) && ex_mem_reg_write;

    logic [DATAWIDTH-1:0] mem_fw_wdata_int;
    assign mem_fw_wdata_int = (ex_mem_mem_to_reg == 2'b10) ? ex_mem_pc_plus4 : ex_mem_alu_result;

    assign mem_fw_regwrite = ex_mem_reg_write && mem_valid_eff;
    assign mem_fw_waddr    = ex_mem_rd;
    assign mem_fw_wdata    = mem_fw_wdata_int;
    assign mem_fw_is_load  = is_load_fw && mem_valid_eff;

endmodule
