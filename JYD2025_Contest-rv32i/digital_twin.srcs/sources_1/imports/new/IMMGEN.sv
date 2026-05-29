`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/18 11:22:17
// Design Name: 
// Module Name: IMMGEN
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


module IMMGEN#(
    parameter   DATAWIDTH = 32	
)(
    input  logic [31:0]            instr   ,
    output logic [DATAWIDTH - 1:0] imm       
);
    // imm generator
    logic [6:0] opcode;
    assign opcode = instr[6:0];
    
    always_comb begin
        case (opcode)
            7'b0010011, 7'b0000011,7'b1100111: // I-type (addi, lw, jalr.)
                imm = {{20{instr[31]}}, instr[31:20]};
            7'b0100011: // S-type (sw)
                imm = {{20{instr[31]}}, instr[31:25], instr[11:7]};
            7'b1100011: // B-type
                imm = {{20{instr[31]}},  instr[7], instr[30:25], instr[11:8], 1'b0};
            7'b0110111,7'b0010111: // U-type (lui,auipc)
                imm = {instr[31:12], 12'b0};
            7'b1101111: // J-type (jal)
                imm = {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0};
            7'b1110011: // CSR (I-type encoding)
                imm = {{20{instr[31]}}, instr[31:20]};  // 同 I-type, 但实际使用 zimm={0,rs1}
            default:
                imm = 32'b0;
        endcase
    end
endmodule