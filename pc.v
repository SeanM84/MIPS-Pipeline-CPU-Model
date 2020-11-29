`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		 CSUChico
// Engineer: 		 Sean Michaels, Kelli Henneman
// 
// Create Date:    10:00:39 03/29/2017 
// Design Name: 
// Module Name:    pc 
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
module pc(
    input [31:0] pc_in,
    input clk,
    output reg [31:0] pc_out
    );
	 
	always @(posedge clk) begin	// just a register
		pc_out <= pc_in;
	end

endmodule
