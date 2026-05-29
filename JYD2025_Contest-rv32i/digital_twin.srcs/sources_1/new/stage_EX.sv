`timescale 1ns / 1ns
`include "defines.sv"

module stage_EX#(
    parameter DATAWIDTH = 32,
    parameter ADDR_WIDTH = 5
)(
    input logic clk,
    input logic reset,

    // pipeline control
    input  logic id_to_ex_valid,
    output logic ex_allow_in,
    input  logic mem_allow_in,

    // input from ID
    input logic [`id_to_ex_bus_WIDTH-1:0] id_to_ex_bus,

    // output to MEM (EX/MEM pipeline register)
    output logic [`ex_to_mem_bus_WIDTH-1:0] ex_to_mem_bus,
    output logic ex_to_mem_valid,

    // next instruction is load/store (for MEM stall logic)
    output logic ex_is_mem_op,

    // combinational ALU result for perip_addr driving
    output logic [DATAWIDTH-1:0] ex_alu_result,

    // forwarding to ID stage
    output logic                 ex_reg_write,
    output logic [ADDR_WIDTH-1:0] ex_waddr,
    output logic [DATAWIDTH-1:0] ex_wdata,
    output logic                 ex_is_load
);

    logic [`id_to_ex_bus_WIDTH-1:0] ex_reg;
    logic ex_valid;
    logic ex_ready_go;

    logic [DATAWIDTH-1:0] ex_pc, ex_rs1, ex_rs2, ex_imm;
    logic [6:0] ex_opcode;
    logic [3:0] ex_alu_control;
    logic [1:0] ex_npc_op;
    logic       ex_reg_wr;
    logic [1:0] ex_mem_to_reg;
    logic       ex_mem_write;
    logic       ex_alu_src;
    logic       ex_offset_origin;
    logic [4:0] ex_rd;
    logic [2:0] ex_funct3;

    assign {
        ex_pc,
        ex_rs1,
        ex_rs2,
        ex_imm,
        ex_opcode,
        ex_alu_control,
        ex_npc_op,
        ex_reg_wr,
        ex_mem_to_reg,
        ex_mem_write,
        ex_alu_src,
        ex_offset_origin,
        ex_rd,
        ex_funct3
    } = ex_reg;

    assign ex_ready_go = 1'b1;
    assign ex_allow_in = !ex_valid || (ex_ready_go && mem_allow_in);

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            ex_valid <= 1'b0;
        else if (ex_allow_in)
            ex_valid <= id_to_ex_valid;
    end

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            ex_reg <= 0;
        else if (ex_allow_in && id_to_ex_valid)
            ex_reg <= id_to_ex_bus;
    end

    logic [DATAWIDTH-1:0] alu_a;
    always_comb begin
        unique case (ex_opcode)
            7'b0110111: alu_a = 32'd0;
            7'b0010111: alu_a = ex_pc;
            default:    alu_a = ex_rs1;
        endcase
    end

    logic [DATAWIDTH-1:0] alu_b;
    assign alu_b = ex_alu_src ? ex_imm : ex_rs2;

    logic [DATAWIDTH-1:0] alu_result;
    logic alu_isTrue;
    ALU #(DATAWIDTH) alu (
        .A         (alu_a),
        .B         (alu_b),
        .ALUControl(ex_alu_control),
        .Result    (alu_result),
        .isTrue    (alu_isTrue)
    );

    logic [DATAWIDTH-1:0] pc_plus4;
    assign pc_plus4 = ex_pc + 4;

    // ============================================================
    // EX/MEM pipeline register
    // packed: {alu_result(32), rs2(32), pc_plus4(32),
    //          reg_write(1), mem_to_reg(2), mem_write(1),
    //          rd(5), funct3(3)}
    // ============================================================
    logic [`ex_to_mem_bus_WIDTH-1:0] ex_mem_reg;
    logic ex_mem_valid;

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            ex_mem_valid <= 1'b0;
            ex_mem_reg   <= 0;
        end else if (mem_allow_in) begin
            ex_mem_valid <= ex_valid && ex_ready_go;
            if (ex_valid && ex_ready_go) begin
                ex_mem_reg <= {
                    alu_result,     // 32
                    ex_rs2,         // 32
                    pc_plus4,       // 32
                    ex_reg_wr,      // 1
                    ex_mem_to_reg,  // 2
                    ex_mem_write,   // 1
                    ex_rd,          // 5
                    ex_funct3       // 3
                };
            end
        end
    end

    assign ex_to_mem_bus   = ex_mem_reg;
    assign ex_to_mem_valid = ex_mem_valid;
    assign ex_alu_result  = alu_result;

    // Signal to MEM: next instruction is load or store
    assign ex_is_mem_op = ex_valid && (ex_opcode == 7'b0000011 || ex_opcode == 7'b0100011);

    // ============================================================
    // Forwarding to ID — TIMING OPTIMIZATION
    //
    // CRITICAL: ex_wdata depends on alu_result (32-bit ALU carry chain)
    // and pc_plus4 (32-bit adder). These are REGISTERED here to break
    // the combinational path from EX ALU → ID forwarding mux → ID
    // branch comparator → IF NPC mux.
    //
    // ex_reg_write / ex_waddr / ex_is_load are combinational from
    // ex_reg (ID/EX pipeline register). They do NOT depend on ALU
    // result, so they stay combinational for fast hazard detection
    // in ID stage.
    //
    // Result: ex_wdata is 1 cycle delayed → ID stage stalls on ALL
    // EX→ID RAW hazards, then uses EX/MEM forwarding (same data).
    // ============================================================
    logic [DATAWIDTH-1:0] ex_wdata_next;
    assign ex_wdata_next = (ex_mem_to_reg == 2'b10) ? pc_plus4 : alu_result;

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            ex_wdata <= '0;
        else if (ex_valid && mem_allow_in)
            ex_wdata <= ex_wdata_next;
    end

    // Combinational: address/control for hazard detection (no ALU dependency)
    assign ex_reg_write = ex_reg_wr && ex_valid;
    assign ex_waddr     = ex_rd;
    assign ex_is_load   = (ex_opcode == 7'b0000011);

endmodule
