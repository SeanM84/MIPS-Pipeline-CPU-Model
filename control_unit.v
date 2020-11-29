`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 		Sean Michaels, Kelli Henneman
// 
// Create Date:    11:56:17 04/24/2017 
// Design Name: 
// Module Name:    control_unit 
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
module control_unit(
    input [31:0] instr,
    output [1:0] wb,
    output [2:0] mem,
    output [3:0] ex
    );
//~~~~~~~~~~~ Check if R type, check if LW, check if SW, check if BEQ, if none of the above set to x ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	assign wb = (instr[31:26] == 5'h0)? 2'b01 : (instr[31:26] == 5'h23)? 2'b11 : (instr[31:26] == 5'h2b)? 2'bx0 : (instr[31:26] == 5'h04)? 2'bx1 : 2'bxx;
	assign mem = (instr[31:26] == 5'h0)? 3'b000 : (instr[31:26] == 5'h23)? 3'b010 : (instr[31:26] == 5'h2b)? 3'b001 : (instr[31:26] == 5'h04)? 3'b100 : 3'bxxx;
	assign ex = (instr[31:26] == 5'h0)? 4'b1001 : (instr[31:26] == 5'h23)? 4'b0010 : (instr[31:26] == 5'h2b)? 4'b001x : (instr[31:26] == 5'h04)? 4'b010x : 4'bxxxx;
endmodule
