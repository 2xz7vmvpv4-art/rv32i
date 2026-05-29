`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/23 12:42:16
// Design Name: 
// Module Name: NPC
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
module NPC#(
    parameter   DATAWIDTH = 32
)(
    input  logic                   isTrue   ,
    input  logic [1:0]             npc_op   ,
    input  logic [DATAWIDTH - 1:0] pc       ,
    input  logic [DATAWIDTH - 1:0] offset   ,
    input  logic [DATAWIDTH - 1:0] rs1_data ,   // ???? jalr
    output logic [DATAWIDTH - 1:0] npc      ,
    output logic [DATAWIDTH - 1:0] pcadd4  
);
    assign pcadd4 = pc + 4;
    
    always_comb begin
        case (npc_op)
            2'b00:   npc = pcadd4;
            2'b01:   npc = isTrue ? (pc + offset) : pcadd4;
            2'b10:   npc = (rs1_data + offset) & ~1;//jalr
            2'b11:   npc = pc + offset;// jal
            default: npc = pcadd4;
        endcase
    end
endmodule