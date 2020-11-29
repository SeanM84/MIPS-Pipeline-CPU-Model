`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 		Sean Michaels, Kelli Hennemand
// 
// Create Date:    12:13:46 04/24/2017 
// Design Name: 
// Module Name:    ID_EX 
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
module ID_EX(
	input clk,
	input [1:0] wb,
	input [2:0] mem,
	input [3:0] ex,
	input [31:0] pc_4,
	input [31:0] rs,
	input [31:0] rt,
	input [31:0] signExt,
	input [4:0]	instr20_16,
	input [4:0] instr15_11,
	output reg[1:0] wb_IDEX,
	output reg[2:0] mem_IDEX,
	output reg[1:0] aluop,
	output reg alusrc,
	output reg regdst,
	output reg[31:0] pc_4_IDEX,
	output reg[31:0] rs_IDEX,
	output reg[31:0] rt_IDEX,
	output reg[31:0] signExt_IDEX,
	output reg[4:0] instr20_16_IDEX,
	output reg[4:0] instr15_11_IDEX
    );

	always @ (posedge clk) begin
		wb_IDEX <= wb;
		mem_IDEX <= mem;
		aluop <= ex[3:2];
		alusrc <= ex[1];
		regdst <= ex[0];
		pc_4_IDEX <= pc_4;
		rs_IDEX <= rs;
		rt_IDEX <= rt;
		signExt_IDEX <= signExt;
		instr20_16_IDEX <= instr20_16;
		instr15_11_IDEX <= instr15_11;
	end


endmodule
