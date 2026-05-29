`timescale 1ns / 1ns
`include "defines.sv"

module stage_ID#(
    parameter   DATAWIDTH   = 32,
    parameter ADDR_WIDTH = 5
 )(
    input logic clk,
    input logic reset,

    //pipeline control
    output logic id_to_ex_valid,
    input  logic ex_allow_in,
    input  logic if_to_id_valid,
    output logic id_allow_in,

    //bus
    input  logic [`if_to_id_bus_WIDTH - 1:0] if_to_id_bus,
    output logic [`id_to_ex_bus_WIDTH - 1:0] id_to_ex_bus,
    output logic [`id_to_if_bus_WIDTH - 1:0] id_to_if_bus,

    // register file read ports
    output logic [4:0] id_rs1,
    output logic [4:0] id_rs2,
    input  logic [DATAWIDTH-1:0] rR1_data_raw,
    input  logic [DATAWIDTH-1:0] rR2_data_raw,

    // forwarding from EX stage (ex_wdata is now registered, 1 cycle delayed)
    input  logic [DATAWIDTH-1:0]   fw_ex_wdata,
    input  logic [ADDR_WIDTH-1:0]  fw_ex_waddr,
    input  logic                   fw_ex_regwrite,
    input  logic                   fw_ex_is_load,

    // forwarding from EX/MEM pipeline register
    input  logic [DATAWIDTH-1:0]   fw_ex_mem_wdata,
    input  logic [ADDR_WIDTH-1:0]  fw_ex_mem_waddr,
    input  logic                   fw_ex_mem_regwrite,
    input  logic                   fw_ex_mem_is_load,

    // forwarding from MEM/WB pipeline register
    input  logic [DATAWIDTH-1:0]   fw_mem_wb_wdata,
    input  logic [ADDR_WIDTH-1:0]  fw_mem_wb_waddr,
    input  logic                   fw_mem_wb_regwrite
);

    // Decode from IF
    logic [DATAWIDTH-1:0] id_pc;
    logic [DATAWIDTH-1:0] id_instr;

    logic [`if_to_id_bus_WIDTH - 1:0] id_reg;
    logic id_valid;
    logic id_ready_go;

    assign {id_pc, id_instr} = if_to_id_bus;

    // Instruction fields
    logic [6:0] opcode;
    logic [4:0] rs1, rs2, rd;
    logic [2:0] funct3;
    logic [6:0] funct7;
    logic [3:0] funct_actl;

    // Control signals (from Control module)
    logic [1:0] npc_op;
    logic       reg_write;
    logic [1:0] mem_to_reg;
    logic       mem_write;
    logic       offset_origin;
    logic       alu_src;

    // Immediate
    logic [DATAWIDTH-1:0] imm;

    // ALU control
    logic [3:0] alu_control;

    // Register file data (after forwarding)
    logic [DATAWIDTH-1:0] rs1_data, rs2_data;

    logic br_taken_cancel;

    assign opcode   = id_instr[6:0];
    assign rs1      = id_instr[19:15];
    assign rs2      = id_instr[24:20];
    assign rd       = id_instr[11:7];
    assign funct3   = id_instr[14:12];
    assign funct7   = id_instr[31:25];
    assign funct_actl = {id_instr[30], id_instr[14:12]};

    assign id_rs1 = rs1;
    assign id_rs2 = rs2;

    // ============================================================
    // Forwarding mux (2-source: EX/MEM > MEM/WB > RF)
    //
    // EX forwarding data (fw_ex_wdata) is now REGISTERED in
    // stage_EX — it holds the result from the PREVIOUS EX
    // instruction. This data is identical to fw_ex_mem_wdata
    // (both hold the result of the instruction that was in EX
    // last cycle). Therefore EX data is removed from the mux.
    //
    // EX→ID RAW hazards are stalled (see below), giving time
    // for the result to reach EX/MEM forwarding.
    // ============================================================
    assign rs1_data = (fw_ex_mem_regwrite && !fw_ex_mem_is_load && fw_ex_mem_waddr != 0 && fw_ex_mem_waddr == rs1) ? fw_ex_mem_wdata :
                      (fw_mem_wb_regwrite && fw_mem_wb_waddr != 0 && fw_mem_wb_waddr == rs1) ? fw_mem_wb_wdata :
                      rR1_data_raw;

    assign rs2_data = (fw_ex_mem_regwrite && !fw_ex_mem_is_load && fw_ex_mem_waddr != 0 && fw_ex_mem_waddr == rs2) ? fw_ex_mem_wdata :
                      (fw_mem_wb_regwrite && fw_mem_wb_waddr != 0 && fw_mem_wb_waddr == rs2) ? fw_mem_wb_wdata :
                      rR2_data_raw;

    // ============================================================
    // Hazard stall — TIMING OPTIMIZATION
    //
    // 1. EX→ID RAW: Since ex_wdata is now registered, the ID
    //    stage must stall if the EX instruction writes to rs1/rs2.
    //    The stall delays ID by 1 cycle, allowing the EX result
    //    to reach EX/MEM forwarding (fw_ex_mem_wdata).
    //
    // 2. MEM→ID load-use: unchanged — stall if MEM has a pending
    //    load writing to rs1/rs2 (data not ready until WB).
    // ============================================================
    logic stall;
    assign stall = (fw_ex_regwrite && fw_ex_waddr != 0 &&
                    (fw_ex_waddr == rs1 || fw_ex_waddr == rs2)) ||
                   (fw_ex_mem_regwrite && fw_ex_mem_is_load && fw_ex_mem_waddr != 0 &&
                    (fw_ex_mem_waddr == rs1 || fw_ex_mem_waddr == rs2));

    assign id_ready_go = !stall;
    assign id_allow_in = !id_valid || (id_ready_go && ex_allow_in);
    assign id_to_ex_valid = if_to_id_valid && id_ready_go;

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            id_valid <= 1'b0;
        end else if (id_allow_in) begin
            id_valid <= if_to_id_valid;
        end
    end

    // ID pipeline register
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            id_reg <= 0;
        end else if (id_allow_in && if_to_id_valid) begin
            id_reg <= if_to_id_bus;
        end
    end

    assign id_to_ex_bus = {
        id_pc,        // 32
        rs1_data,     // 32
        rs2_data,     // 32
        imm,          // 32
        opcode,       // 7
        alu_control,  // 4
        npc_op,       // 2
        reg_write,    // 1
        mem_to_reg,   // 2
        mem_write,    // 1
        alu_src,      // 1
        offset_origin,// 1
        rd,           // 5
        funct3        // 3
    };

    // Control signal decode
    Control ctrl_inst (
        .opcode(opcode),
        .NpcOp(npc_op),
        .RegWrite(reg_write),
        .MemToReg(mem_to_reg),
        .MemWrite(mem_write),
        .OffsetOrigin(offset_origin),
        .ALUSrc(alu_src)
    );

    IMMGEN #(DATAWIDTH) immgen_inst (
        .instr(id_instr),
        .imm(imm)
    );

    ACTL actl_inst (
        .opcode(opcode),
        .funct(funct_actl),
        .ALUControl(alu_control)
    );

    // Branch condition (for B-type only)
    logic isTrue;
    always_comb begin
        case (funct3)
            3'b000: isTrue = (rs1_data == rs2_data);        // beq
            3'b001: isTrue = (rs1_data != rs2_data);        // bne
            3'b100: isTrue = ($signed(rs1_data) < $signed(rs2_data)); // blt
            3'b101: isTrue = ($signed(rs1_data) >= $signed(rs2_data)); // bge
            3'b110: isTrue = (rs1_data < rs2_data);         // bltu
            3'b111: isTrue = (rs1_data >= rs2_data);        // bgeu
            default: isTrue = 1'b0;
        endcase
    end

    // Branch/jump target computation
    logic [DATAWIDTH-1:0] branch_target;
    logic [DATAWIDTH-1:0] jalr_target;

    assign jalr_target = (rs1_data + imm) & ~1;
    assign branch_target = id_pc + imm;

    logic br_taken;
    logic [DATAWIDTH-1:0] br_target;

    always_comb begin
        br_taken = 1'b0;
        br_taken_cancel = 1'b0;
        br_target = 32'b0;
        if (if_to_id_valid) begin
            case (opcode)
                7'b1100011: begin          // B-type
                    if (isTrue) begin
                        br_taken = 1'b1;
                        br_taken_cancel = 1'b1;
                        br_target = branch_target;
                    end
                end
                7'b1101111: begin          // jal
                    br_taken = 1'b1;
                    br_taken_cancel = 1'b1;
                    br_target = branch_target;
                end
                7'b1100111: begin          // jalr
                    br_taken = 1'b1;
                    br_taken_cancel = 1'b1;
                    br_target = jalr_target;
                end
                default: begin
                    br_taken = 1'b0;
                    br_taken_cancel = 1'b0;
                    br_target = 32'b0;
                end
            endcase
        end
    end

    assign id_to_if_bus = {br_taken, br_target, br_taken_cancel};

endmodule
