`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		CSUC EECE425
// Engineer: 		Sean Michaels
// 
// Create Date:    08:31:04 02/02/2017 
// Design Name: 	 alu.v
// Module Name:    alu
// Project Name: 	 Project1
// Target Devices: 
// Tool versions: 
// Description: 	 Simple ALU module
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu(
    input [31:0] A,
    input [31:0] B,
    input [2:0] cntrl,
    output reg [31:0] ALU_out,
    output zero
    );
	 assign zero = (ALU_out == 32'h00)? 1'b1 : 1'b0;
	 always @(*) begin
	 case(cntrl)
	 3'b000: ALU_out = (A & B);
	 3'b001: ALU_out = (A | B);
	 3'b010: ALU_out = (A + B);
	 3'b011: ALU_out = (A ^ B);
	 3'b100: ALU_out = (A & ~B);
	 3'b101: ALU_out = (A + ~B);
	 3'b110: ALU_out = (A - B);
	 3'b111: ALU_out = (A < B)? 32'h01:32'h0;
	 default: ALU_out = ALU_out;
	 endcase
	 end

endmodule
