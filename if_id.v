`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		 CSUChico
// Engineer: 		 Sean Michaels, Kelli Henneman
// 
// Create Date:    10:08:22 03/29/2017 
// Design Name: 
// Module Name:    if_id 
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
module if_id(
    input [31:0] instr,
    input [31:0] pc_4,
	 input clk,
    output reg [31:0] instr_ifid,
    output reg [31:0] pc_4ifid
    );
	always @(posedge clk) begin		// just a register
		pc_4ifid <= pc_4;
		instr_ifid <= instr;
	end

endmodule
