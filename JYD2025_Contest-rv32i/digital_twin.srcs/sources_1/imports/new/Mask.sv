`timescale 1ns / 1ns
module Mask#(
    parameter   DATAWIDTH = 32
)(
    input  logic [2:0]             mask   ,
    input  logic [DATAWIDTH - 1:0] dout	  ,
	output logic [DATAWIDTH - 1:0] mdata
);
    logic op_other, op_lb, op_lh;

    assign op_lb = mask == 3'b000;
    assign op_lh = mask == 3'b001;
    assign op_other = ~(op_lh | op_lb);

    assign mdata = {32{op_lb}} & {{24{dout[7]}}, dout[7:0]} |
                {32{op_lh}} & {{16{dout[15]}}, dout[15:0]} |
                {32{op_other}} & dout;

endmodule
