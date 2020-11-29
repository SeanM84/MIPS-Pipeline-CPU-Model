`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 		Sean Michaels
// 
// Create Date:    10:24:20 05/01/2017 
// Design Name: 
// Module Name:    mux2to1_5b 
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
module mux2to1_5b(input [4:0] a, input [4:0] b, input s, output [4:0] out
    );

assign out = (s == 1'b0)? a : b;
endmodule
