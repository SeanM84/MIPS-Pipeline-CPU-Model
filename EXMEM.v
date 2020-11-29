`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 		Sean Michaels
// 
// Create Date:    09:28:15 05/01/2017 
// Design Name: 
// Module Name:    EXMEM 
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
module EXMEM(input clk, input [1:0] wb, input [2:0] mem, input [31:0] brnchDst, input zFlag, input [31:0] alu_out,
				input [31:0] rt, input [4:0] wrDst, output reg[1:0] wbM, output reg[2:0] memM, output reg[31:0] brnchDstM,
				output reg zFlagM, output reg[31:0] alu_outM, output reg[31:0] rtM, output reg[4:0] wrDstM
    );
	 
	always @ (posedge clk) begin
		wbM 			<= wb;
		memM 			<= mem;
		brnchDstM 	<= brnchDst;
		zFlagM		<= zFlag;
		alu_outM 	<= alu_out;
		rtM 			<= rt;
		wrDstM		<= wrDst;
	end

endmodule
