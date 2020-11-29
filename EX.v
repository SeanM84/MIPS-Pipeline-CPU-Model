`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 		Sean Michaels
// 
// Create Date:    09:14:25 05/01/2017 
// Design Name: 
// Module Name:    EX 
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
module EX(input clk, input [31:0] pc_4, input [31:0] rs, input [31:0] rt, input [31:0] sign_ext, input [4:0] instr20_16, 
				input [4:0] instr15_11, input [1:0] wb, input [2:0] mem, input [1:0] aluop, input alusrc, input regdst,
				output [1:0] wbEX, output [2:0] memEX, output [31:0] brDst, output zFlag, output [31:0]alu_out, output [31:0] rtEX,
				output [4:0] wrDstEX
    );

wire [4:0] wrDst;
wire [31:0] aluOut;
wire z;
wire [31:0] bAddr;
wire [2:0] aluCntrl;
wire [31:0] aluSrc;

	mux2to1_5b wrDestination(.a(instr20_16), .b(instr15_11), .s(regdst), .out(wrDst));	
	mux_2to1 alu_Src(.a(rt), .b(sign_ext), .select(alusrc), .out(aluSrc));
	
	branchAdder bAdder(.pc_4(pc_4), .sign_ext(sign_ext), .bdst(bAddr));
	
	aluCntrl alu_control(.funct(sign_ext[5:0]), .alu_op(aluop), .alu_cntrl(aluCntrl));
	
	alu alUnit(.A(rs), .B(aluSrc), .cntrl(aluCntrl), .ALU_out(aluOut), .zero(z));
	
	EXMEM EX_M(.clk(clk), .wb(wb), .mem(mem), .brnchDst(bAddr), .zFlag(z), .alu_out(aluOut), .rt(rt), .wrDst(wrDst), 
					.wbM(wbEX), .memM(memEX), .brnchDstM(brDst), .zFlagM(zFlag), .alu_outM(alu_out), .rtM(rtEX), .wrDstM(wrDstEX));
	
endmodule
