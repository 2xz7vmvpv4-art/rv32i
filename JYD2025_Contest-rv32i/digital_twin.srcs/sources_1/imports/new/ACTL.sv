`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/03 11:25:24
// Design Name: 
// Module Name: ACTL
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


module ACTL(
    input  logic [6:0] opcode       ,
    input  logic [3:0] funct        ,
    output logic [3:0] ALUControl    
);
    // ALU control module
    // funct: {instr[30], instr[14:12]}
    always_comb begin
        case (opcode)
            7'b0110011: begin  // R-type
                case (funct)
                    4'b0000: ALUControl = 4'b0000; // add
                    4'b1000: ALUControl = 4'b0001; // sub
                    4'b0111: ALUControl = 4'b0010; // and
                    4'b0110: ALUControl = 4'b0011; // or
                    4'b0100: ALUControl = 4'b0100; // xor
                    4'b0001: ALUControl = 4'b0101; // sll
                    4'b0101: ALUControl = 4'b0110; // srl
                    4'b1101: ALUControl = 4'b0111; // sra
                    4'b0010: ALUControl = 4'b1000; // slt     
                    4'b0011: ALUControl = 4'b1001; // sltu
                    default: ALUControl = 4'b0000;
                endcase
            end
            7'b0010011: begin  // I-type (ALU ops)
                case (funct[2:0])
                    3'b000: ALUControl = 4'b0000; // addi
                    3'b111: ALUControl = 4'b0010; // andi
                    3'b110: ALUControl = 4'b0011; // ori
                    3'b100: ALUControl = 4'b0100; // xori
                    3'b001: ALUControl = 4'b0101; // slli
                    3'b101: ALUControl = (funct[3] ? 4'b0111 : 4'b0110); // srai/srli
                    3'b010: ALUControl = 4'b1000; // slti
                    3'b011: ALUControl = 4'b1001; // sltiu
                    default: ALUControl = 4'b0000;
                endcase
            end
            7'b0000011: ALUControl = 4'b0000; // lw (add)
            7'b0100011: ALUControl = 4'b0000; // sw (add)
            7'b1100011: begin  // B-type
                case (funct[2:0])
                    3'b000: ALUControl = 4'b1010; // beq
                    3'b001: ALUControl = 4'b1011; // bne
                    3'b100: ALUControl = 4'b1100; // blt
                    3'b101: ALUControl = 4'b1101; // bge
                    3'b110: ALUControl = 4'b1110; // bltu
                    3'b111: ALUControl = 4'b1111; // bgeu
                    default: ALUControl = 4'b0000;
                endcase
            end
            7'b0110111: ALUControl = 4'b0000; // lui (add with 0)
            7'b1101111: ALUControl = 4'b0000; // jal (unused)
            7'b0010111: ALUControl = 4'b0000; // auipc
            7'b1100111: ALUControl = 4'b0000; // jalr
            default:     ALUControl = 4'b0000;
        endcase
    end
endmodule