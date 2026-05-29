`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/30 8:26:09
// Design Name: 
// Module Name: Control
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



module Control(
    input  logic [6:0]  opcode      ,
    output logic [1:0]  NpcOp       ,
    output logic        RegWrite    ,
    output logic [1:0]  MemToReg    ,
    output logic        MemWrite    ,
    output logic        OffsetOrigin,
    output logic        ALUSrc      
);
    // controller module
    always_comb begin
        // default values
        NpcOp = 2'b00;
        RegWrite = 1'b0;
        MemToReg = 2'b00;
        MemWrite = 1'b0;
        OffsetOrigin = 1'b0;
        ALUSrc = 1'b0;
        
        case (opcode)
            7'b0110011: begin // R-type
                NpcOp = 2'b00;
                RegWrite = 1'b1;
                MemToReg = 2'b00;
                MemWrite = 1'b0;
                ALUSrc = 1'b0;
            end
            7'b0010011: begin // I-type ALU
                NpcOp = 2'b00;
                RegWrite = 1'b1;
                MemToReg = 2'b00;
                MemWrite = 1'b0;
                ALUSrc = 1'b1;
            end
            7'b0000011: begin // lw
                NpcOp = 2'b00;
                RegWrite = 1'b1;
                MemToReg = 2'b01;
                MemWrite = 1'b0;
                ALUSrc = 1'b1;
                OffsetOrigin = 1'b0;
            end
            7'b0100011: begin // sw
                NpcOp = 2'b00;
                RegWrite = 1'b0;
                MemToReg = 2'b00;
                MemWrite = 1'b1;
                ALUSrc = 1'b1;
                OffsetOrigin = 1'b0;
            end
            7'b1100011: begin // B-type
                NpcOp = 2'b01;
                RegWrite = 1'b0;
                MemToReg = 2'b00;
                MemWrite = 1'b0;
                ALUSrc = 1'b0;
                OffsetOrigin = 1'b1;
            end
            7'b0110111: begin // lui
                NpcOp = 2'b00;
                RegWrite = 1'b1;
                MemToReg = 2'b00;
                MemWrite = 1'b0;
                ALUSrc = 1'b1;
            end
             7'b0010111: begin  // auipc
                NpcOp = 2'b00;
                RegWrite = 1'b1;
                MemToReg = 2'b00;
                MemWrite = 1'b0;
                ALUSrc   = 1'b1;
                OffsetOrigin = 1'b1;   // �� ALU ���� pc + imm
            end
            7'b1101111: begin // jal
                NpcOp    = 2'b11;
                RegWrite = 1'b1;
                MemToReg = 2'b10;
                MemWrite = 1'b0;
                ALUSrc = 1'b0;
                OffsetOrigin = 1'b1;
            end
            7'b1100111: begin // jalr
                NpcOp      = 2'b10;     // �������룬��ʾ jalr ��ת
                RegWrite   = 1'b1;
                MemToReg   = 2'b10;     // д�� PC+4
                MemWrite   = 1'b0;
                ALUSrc     = 1'b1;      // ALU �� B ����Ϊ������
                OffsetOrigin = 1'b1;
            end
            7'b1110011: begin // CSR / SYSTEM
                NpcOp = 2'b00;
                RegWrite = 1'b1;    // CSRR* 写 rd; ecall/ebreak 不写 (需额外判断)
                MemToReg = 2'b11;   // 选择 CSR 数据写回 rd
                MemWrite = 1'b0;
                ALUSrc = 1'b0;
            end
            default: begin
                NpcOp = 2'b00;
                RegWrite = 1'b0;
                MemToReg = 2'b00;
                MemWrite = 1'b0;
                ALUSrc = 1'b0;
            end
        endcase
    end
endmodule