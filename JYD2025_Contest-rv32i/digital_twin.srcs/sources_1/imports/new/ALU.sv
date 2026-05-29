`timescale 1ns / 1ns
// ALU.sv - Arithmetic Logic Unit for RV32I CPU
// Optimized version with cleaner structure and local params
module ALU#(
    parameter   DATAWIDTH = 32
)(
    input  logic [DATAWIDTH-1:0]  A          ,
    input  logic [DATAWIDTH-1:0]  B          ,
    input  logic [3:0]            ALUControl ,
    output logic [DATAWIDTH-1:0]  Result     ,
    output logic                  isTrue
);
    // ALUControl opcode definitions
    localparam ALU_ADD  = 4'b0000;
    localparam ALU_SUB  = 4'b0001;
    localparam ALU_AND  = 4'b0010;
    localparam ALU_OR   = 4'b0011;
    localparam ALU_XOR  = 4'b0100;
    localparam ALU_SLL  = 4'b0101;
    localparam ALU_SRL  = 4'b0110;
    localparam ALU_SRA  = 4'b0111;
    localparam ALU_SLT  = 4'b1000;
    localparam ALU_SLTU = 4'b1001;
    localparam ALU_BEQ  = 4'b1010;
    localparam ALU_BNE  = 4'b1011;
    localparam ALU_BLT  = 4'b1100;
    localparam ALU_BGE  = 4'b1101;
    localparam ALU_BLTU = 4'b1110;
    localparam ALU_BGEU = 4'b1111;

    // [修改1] 减法器按需使能：仅分支指令(ALUControl[3]=1)时计算 A-B
    // 非分支指令时固定为0，从关键路径上消除无用的8级CARRY4链
    logic is_branch_op;
    assign is_branch_op = ALUControl[3];
    logic [DATAWIDTH-1:0] sub_res;
    assign sub_res = is_branch_op ? (A - B) : '0;

    always_comb begin
        Result = '0;
        case (ALUControl)
            ALU_ADD:  Result = A + B;
            ALU_SUB:  Result = A - B;
            ALU_AND:  Result = A & B;
            ALU_OR:   Result = A | B;
            ALU_XOR:  Result = A ^ B;
            ALU_SLL:  Result = A << B[4:0];
            ALU_SRL:  Result = A >> B[4:0];
            ALU_SRA:  Result = ($signed(A)) >>> B[4:0];
            ALU_SLT:  Result = ($signed(A) < $signed(B)) ? 1 : 0;
            ALU_SLTU: Result = (A < B) ? 1 : 0;
            default:  Result = A + B;
        endcase
        
        // Branch condition generation
        case (ALUControl)
            ALU_BEQ:  isTrue = (sub_res == '0);
            ALU_BNE:  isTrue = (sub_res != '0);
            ALU_BLT:  isTrue = sub_res[DATAWIDTH-1];
            ALU_BGE:  isTrue = ~sub_res[DATAWIDTH-1];
            ALU_BLTU: isTrue = (A < B);
            ALU_BGEU: isTrue = (A >= B);
            default:  isTrue = 1'b0;
        endcase
    end
endmodule