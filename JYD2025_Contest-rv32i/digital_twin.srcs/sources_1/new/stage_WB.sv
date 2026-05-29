`timescale 1ns / 1ns
`include "defines.sv"

module stage_WB#(
    parameter DATAWIDTH = 32,
    parameter ADDR_WIDTH = 5
)(
    input logic clk,
    input logic reset,

    // pipeline control
    input  logic mem_to_wb_valid,
    output logic wb_allow_in,

    // input from MEM (MEM/WB register output — already registered)
    input logic [`mem_to_wb_bus_WIDTH-1:0] mem_to_wb_bus,

    // writeback to register file
    output logic                 wb_reg_write,
    output logic [ADDR_WIDTH-1:0] wb_waddr,
    output logic [DATAWIDTH-1:0]  wb_wdata
);

    // ============================================================
    // Unpack MEM/WB bus directly (combinational — no extra register)
    // The MEM/WB pipeline register is already inside stage_MEM.
    // This stage is purely combinational between that register and RF.
    // ============================================================
    logic [DATAWIDTH-1:0] wb_alu_result;
    logic [DATAWIDTH-1:0] wb_mem_rdata;
    logic [DATAWIDTH-1:0] wb_pc_plus4;
    logic                 wb_reg_wr;
    logic [1:0]           wb_mem_to_reg;
    logic [4:0]           wb_rd;

    assign {
        wb_alu_result,
        wb_mem_rdata,
        wb_pc_plus4,
        wb_reg_wr,
        wb_mem_to_reg,
        wb_rd
    } = mem_to_wb_bus;

    // WB always accepts
    assign wb_allow_in = 1'b1;

    // Writeback data MUX (combinational)
    // 00: alu_result (R/I/U-type ALU, LUI, AUIPC)
    // 01: mem_rdata  (loads)
    // 10: pc_plus4   (JAL, JALR)
    logic [DATAWIDTH-1:0] wb_data;
    MUX4_1 #(DATAWIDTH) wb_mux (
        .A       (wb_alu_result),
        .B       (wb_mem_rdata),
        .C       (wb_pc_plus4),
        .D       (32'd0),
        .Control (wb_mem_to_reg),
        .Result  (wb_data)
    );

    assign wb_reg_write = wb_reg_wr && mem_to_wb_valid;
    assign wb_waddr     = wb_rd;
    assign wb_wdata     = wb_data;

endmodule
