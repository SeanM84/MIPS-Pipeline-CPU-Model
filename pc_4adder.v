`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		 CSUChico
// Engineer: 		 Sean Michaels, Kelli Henneman
// 
// Create Date:    09:47:36 03/29/2017 
// Design Name: 
// Module Name:    pc_4adder 
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
module pc_4adder(
    input [31:0] pc,
    output [31:0] pc_4
    );
	
	assign pc_4 = (pc + 32'h04);	// add 4 to pc all the time.


endmodule
