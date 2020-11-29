`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 		Sean Michaels
// 
// Create Date:    14:15:34 04/24/2017 
// Design Name: 
// Module Name:    cpu
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
module cpu(
	input clk,
	input pcSrc,
	input [31:0] ex_mem_pc,
	output [1:0] wb,
	output [2:0] mem,
	output [31:0] brDst,
	output zFlag,
	output [31:0] alu_out,
	output [31:0] rt,
	output [31:0] signExt,
	output [4:0] wrDst
	
    );
	 
	 wire [4:0] write_reg_MEMWB;
    wire [31:0] write_data_WB;
    wire write_en;
	 wire [31:0] pc_4x;
	 wire [31:0] instr;
	 

	 wire [31:0] brDstD;
	 wire [31:0] pc_4D;
	 wire [1:0] wbD;
	 wire [2:0] memD;
	 wire [1:0] aluopD;
	 wire alusrcD;
	 wire regdstD;
	 wire [31:0] rtD;
	 wire [31:0] rsD;
	 wire [31:0] signExtD;
	 wire [4:0] instr20_16D;
	 wire [4:0] instr15_11D;

	instr_fetch fetch(.clk(clk), .pcSrc(pcSrc), .ex_mem_pc(ex_mem_pc), .pc_4(pc_4x), .instr(instr));
	
	decode decode_stage(.clk(clk), .pc_4(pc_4x), .instr(instr), .write_reg_MEMWB(write_reg_MEMWB),
	.write_data_WB(write_data_WB), .write_en(write_en), .wb_IDEX(wbD), .mem_IDEX(memD), .aluop_IDEX(aluopD),
	.alusrc_IDEX(alusrcD), .regdst_IDEX(regdstD), .pc_4_IDEX(pc_4D), .rs_IDEX(rsD), .rt_IDEX(rtD),
	.signExt_IDEX(signExtD), .instr20_16_IDEX(instr20_16D), .instr15_11_IDEX(instr15_11D));

	EX	ex(.clk(clk), .pc_4(pc_4D), .rs(rsD), .rt(rtD), .sign_ext(signExtD), .instr20_16(instr20_16D), .instr15_11(instr15_11D),
			.wb(wbD), .mem(memD), .aluop(aluopD), .alusrc(alusrcD), .regdst(regdstD), .wbEX(wb), .memEX(mem), .brDst(brDst), .zFlag(zFlag), 
			.alu_out(alu_out), .rtEX(rt), .wrDstEX(wrDst)
	);

endmodule
