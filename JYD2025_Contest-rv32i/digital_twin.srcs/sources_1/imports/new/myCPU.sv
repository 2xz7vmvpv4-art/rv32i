`timescale 1ns / 1ns
`include "defines.sv"

module myCPU (
    input  logic         cpu_rst,
    input  logic         cpu_clk,

    output logic [31:0]  irom_addr,
    input  logic [31:0]  irom_data,

    output logic [31:0]  perip_addr,
    output logic         perip_wen,
    output logic [1:0]   perip_mask,
    output logic [31:0]  perip_wdata,
    input  logic [31:0]  perip_rdata
);
    parameter DATAWIDTH  = 32;
    parameter RESET_VAL  = 32'h8000_0000;
    parameter ADDR_WIDTH = 5;

    // ============================================================
    // Pipeline buses
    // ============================================================
    logic [`if_to_id_bus_WIDTH  - 1:0] if_to_id_bus;
    logic if_to_id_valid;
    logic id_allow_in;
    logic [`id_to_if_bus_WIDTH  - 1:0] id_to_if_bus;

    logic [`id_to_ex_bus_WIDTH  - 1:0] id_to_ex_bus;
    logic id_to_ex_valid;
    logic ex_allow_in;

    logic [`ex_to_mem_bus_WIDTH - 1:0] ex_to_mem_bus;
    logic ex_to_mem_valid;
    logic mem_allow_in;

    logic [`mem_to_wb_bus_WIDTH - 1:0] mem_to_wb_bus;
    logic mem_to_wb_valid;
    logic wb_allow_in;

    // Register file
    logic [4:0] id_rs1, id_rs2;
    logic [DATAWIDTH-1:0] rR1_data, rR2_data;

    // Forwarding: EX -> ID
    logic                 ex_reg_write;
    logic [ADDR_WIDTH-1:0] ex_waddr;
    logic [DATAWIDTH-1:0]  ex_wdata;
    logic                 ex_is_load;

    // Forwarding: MEM -> ID
    logic                 mem_fw_regwrite;
    logic [ADDR_WIDTH-1:0] mem_fw_waddr;
    logic [DATAWIDTH-1:0]  mem_fw_wdata;
    logic                 mem_fw_is_load;

    // WB writeback
    logic                 wb_reg_write;
    logic [ADDR_WIDTH-1:0] wb_waddr;
    logic [DATAWIDTH-1:0]  wb_wdata;

    // perip_addr driving
    logic [DATAWIDTH-1:0] ex_alu_result;
    logic [DATAWIDTH-1:0] mem_alu_result;
    logic                 mem_is_mem_op;
    logic                 ex_is_mem_op;

    // ============================================================
    // perip_addr MUX:
    //   MEM has load/store → keep address at MEM for correct
    //     perip_bridge routing (load) or BRAM write target (store)
    //   MEM has ALU/branch or is empty → drive from EX so next
    //     load/store can present its address to BRAM EARLY.
    //     This gives BRAM EX+MEM cycles for address→data round-trip.
    //   Structural hazard (MEM load/store + EX load/store) is
    //   handled by stalling EX via mem_allow_in in stage_MEM.
    // ============================================================
    assign perip_addr = mem_is_mem_op ? mem_alu_result : ex_alu_result;

    // ============================================================
    // Stage 1: Instruction Fetch
    // ============================================================
    stage_IF #(
        .DATAWIDTH(DATAWIDTH),
        .RESET_VAL(RESET_VAL)
    ) if_stage (
        .clk            (cpu_clk),
        .reset          (cpu_rst),
        .irom_data      (irom_data),
        .irom_addr      (irom_addr),
        .if_to_id_bus   (if_to_id_bus),
        .if_to_id_valid (if_to_id_valid),
        .id_allow_in    (id_allow_in),
        .id_to_if_bus   (id_to_if_bus)
    );

    // ============================================================
    // Stage 2: Instruction Decode
    // ============================================================
    stage_ID #(
        .DATAWIDTH(DATAWIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) id_stage (
        .clk              (cpu_clk),
        .reset            (cpu_rst),
        .id_to_ex_valid   (id_to_ex_valid),
        .ex_allow_in      (ex_allow_in),
        .if_to_id_valid   (if_to_id_valid),
        .id_allow_in      (id_allow_in),
        .id_to_ex_bus     (id_to_ex_bus),
        .if_to_id_bus     (if_to_id_bus),
        .id_to_if_bus     (id_to_if_bus),
        .id_rs1           (id_rs1),
        .id_rs2           (id_rs2),
        .rR1_data_raw     (rR1_data),
        .rR2_data_raw     (rR2_data),

        .fw_ex_wdata      (ex_wdata),
        .fw_ex_waddr      (ex_waddr),
        .fw_ex_regwrite   (ex_reg_write),
        .fw_ex_is_load    (ex_is_load),

        .fw_ex_mem_wdata     (mem_fw_wdata),
        .fw_ex_mem_waddr     (mem_fw_waddr),
        .fw_ex_mem_regwrite  (mem_fw_regwrite),
        .fw_ex_mem_is_load   (mem_fw_is_load),

        .fw_mem_wb_wdata     (wb_wdata),
        .fw_mem_wb_waddr     (wb_waddr),
        .fw_mem_wb_regwrite  (wb_reg_write)
    );

    // ============================================================
    // Stage 3: Execute
    // ============================================================
    stage_EX #(
        .DATAWIDTH(DATAWIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) ex_stage (
        .clk              (cpu_clk),
        .reset            (cpu_rst),
        .id_to_ex_valid   (id_to_ex_valid),
        .ex_allow_in      (ex_allow_in),
        .mem_allow_in     (mem_allow_in),
        .id_to_ex_bus     (id_to_ex_bus),
        .ex_to_mem_bus    (ex_to_mem_bus),
        .ex_to_mem_valid  (ex_to_mem_valid),
        .ex_is_mem_op     (ex_is_mem_op),
        .ex_alu_result    (ex_alu_result),

        .ex_reg_write     (ex_reg_write),
        .ex_waddr         (ex_waddr),
        .ex_wdata         (ex_wdata),
        .ex_is_load       (ex_is_load)
    );

    // ============================================================
    // Stage 4: Memory Access
    // ============================================================
    stage_MEM #(
        .DATAWIDTH(DATAWIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) mem_stage (
        .clk              (cpu_clk),
        .reset            (cpu_rst),
        .ex_to_mem_valid  (ex_to_mem_valid),
        .mem_allow_in     (mem_allow_in),
        .wb_allow_in      (wb_allow_in),
        .ex_is_mem_op     (ex_is_mem_op),
        .ex_to_mem_bus    (ex_to_mem_bus),
        .mem_to_wb_bus    (mem_to_wb_bus),
        .mem_to_wb_valid  (mem_to_wb_valid),

        .perip_wen           (perip_wen),
        .perip_mask          (perip_mask),
        .perip_wdata         (perip_wdata),
        .perip_rdata         (perip_rdata),
        .mem_alu_result      (mem_alu_result),
        .mem_is_mem_op_out   (mem_is_mem_op),

        .mem_fw_regwrite  (mem_fw_regwrite),
        .mem_fw_waddr     (mem_fw_waddr),
        .mem_fw_wdata     (mem_fw_wdata),
        .mem_fw_is_load   (mem_fw_is_load)
    );

    // ============================================================
    // Stage 5: Writeback
    // ============================================================
    stage_WB #(
        .DATAWIDTH(DATAWIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) wb_stage (
        .clk              (cpu_clk),
        .reset            (cpu_rst),
        .mem_to_wb_valid  (mem_to_wb_valid),
        .wb_allow_in      (wb_allow_in),
        .mem_to_wb_bus    (mem_to_wb_bus),

        .wb_reg_write     (wb_reg_write),
        .wb_waddr         (wb_waddr),
        .wb_wdata         (wb_wdata)
    );

    // ============================================================
    // Register File
    // ============================================================
    RF #(
        .ADDR_WIDTH(ADDR_WIDTH),
        .DATAWIDTH(DATAWIDTH)
    ) rf (
        .clk      (cpu_clk),
        .rst      (cpu_rst),
        .wen      (wb_reg_write),
        .waddr    (wb_waddr),
        .wdata    (wb_wdata),
        .rR1      (id_rs1),
        .rR2      (id_rs2),
        .rR1_data (rR1_data),
        .rR2_data (rR2_data)
    );

endmodule
