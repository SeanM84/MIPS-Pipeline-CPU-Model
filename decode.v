`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		
// Engineer: 		Sean Michaels, Kelli Henneman
// 
// Create Date:    11:14:01 04/24/2017 
// Design Name: 
// Module Name:    decode 
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
module decode(
	 input clk,
    input [31:0] pc_4,
    input [31:0] instr,
    input [4:0] write_reg_MEMWB,
    input [31:0] write_data_WB,
    input write_en,
    output [1:0]wb_IDEX,
	 output [2:0] mem_IDEX,
    output [1:0] aluop_IDEX,
	 output alusrc_IDEX,
	 output regdst_IDEX,
    output [31:0] pc_4_IDEX,
    output [31:0] rs_IDEX,
    output [31:0] rt_IDEX,
    output [31:0] signExt_IDEX,
    output [4:0] instr20_16_IDEX,
	 output [4:0] instr15_11_IDEX
    );
	 
	wire [1:0] wb;
	wire [2:0] mem;
	wire [3:0] ex;
	wire [31:0] rs,rt;
	wire [31:0] sign_extend;
	wire [4:0] instr20_16;
	wire [4:0] instr15_11;
	
	//~~~~~~ Setup Sign extend, and pull instr bits 20:16, 15:11 before passing into IDEX register ~~~~~~~~~~~~~
	assign sign_extend = (instr == 1'b1)? {16'hff, instr[15:0]} : {16'h00, instr[15:0]};
	assign instr20_16 = instr[20:16];
	assign instr15_11 = instr[15:11];
	
	//~~~~~~ Register File ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	reg_file regy(.clk(clk), .we3(write_en), .ra1(instr[25:21]), .ra2(instr[20:16]), .wa3(write_reg_MEMWB), .wd3(write_data_WB), .rd1(rs), .rd2(rt));
	
	//~~~~~~~~~~~ Control Unit ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	control_unit cntrl(.instr(instr),.wb(wb), .mem(mem), .ex(ex));
	
	ID_EX IDEX(.clk(clk), .wb(wb), .mem(mem), .ex(ex), .pc_4(pc_4), .rs(rs), .rt(rt), .signExt(sign_extend), .instr20_16(instr20_16), .instr15_11(instr15_11),
	.wb_IDEX(wb_IDEX), .mem_IDEX(mem_IDEX), .aluop(aluop_IDEX), .alusrc(alusrc_IDEX), .regdst(regdst_IDEX), .pc_4_IDEX(pc_4_IDEX), .rs_IDEX(rs_IDEX),
	.rt_IDEX(rt_IDEX), .signExt_IDEX(signExt_IDEX), .instr20_16_IDEX(instr20_16_IDEX), .instr15_11_IDEX(instr15_11_IDEX));
	
endmodule
