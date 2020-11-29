`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		 CSUChico
// Engineer: 		 Sean Michaels, Kelli Henneman
// 
// Create Date:    09:44:38 03/29/2017 
// Design Name: 
// Module Name:    mux_2to1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux_2to1(
    input [31:0] a,
    input [31:0] b,
    input select,
    output reg [31:0] out
    );
	
	always @(*)begin
		case(select)
		1'b0: out <= a;
		1'b1: out <= b;
		default: out <= 32'h00;		// used in initial startup to set pc to 32'h00;
		endcase
	end

endmodule
