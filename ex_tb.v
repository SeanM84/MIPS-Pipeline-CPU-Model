`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:47:26 05/01/2017
// Design Name:   EX
// Module Name:   C:/Users/seanm/Downloads/Pipeline EX/EX/ex_tb.v
// Project Name:  EX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: EX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ex_tb;

	// Inputs
	reg clk;
	reg [31:0] pc_4;
	reg [31:0] rs;
	reg [31:0] rt;
	reg [31:0] sign_ext;
	reg [4:0] instr20_16;
	reg [4:0] instr15_11;
	reg [1:0] wb;
	reg [2:0] mem;
	reg [1:0] aluop;
	reg alusrc;
	reg regdst;

	// Outputs
	wire [1:0] wbEX;
	wire [2:0] memEX;
	wire [31:0] brDst;
	wire zFlag;
	wire [31:0] alu_out;
	wire [31:0] rtEX;
	wire [4:0] wrDstEX;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	EX uut (
		.clk(clk), 
		.pc_4(pc_4), 
		.rs(rs), 
		.rt(rt), 
		.sign_ext(sign_ext), 
		.instr20_16(instr20_16), 
		.instr15_11(instr15_11), 
		.wb(wb), 
		.mem(mem), 
		.aluop(aluop), 
		.alusrc(alusrc), 
		.regdst(regdst), 
		.wbEX(wbEX), 
		.memEX(memEX), 
		.brDst(brDst), 
		.zFlag(zFlag), 
		.alu_out(alu_out), 
		.rtEX(rtEX), 
		.wrDstEX(wrDstEX)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		pc_4 = 0;
		rs = 0;
		rt = 0;
		sign_ext = 0;
		instr20_16 = 0;
		instr15_11 = 0;
		wb = 0;
		mem = 0;
		aluop = 0;
		alusrc = 0;
		regdst = 0;

		// Wait 100 ns for global reset to finish
		#100;
      // Add stimulus here
		
		$display("time,\tclk,\taluop,\trs,\t\t\trt,\t\t\taluout,\t\t\tzFlag");
		$monitor("%d,\t%b,\t%b,\t%b,\t%b\t%b,\t%b", $time, clk, aluop, rs, rt, alu_out, zFlag);
		

	end
	
	always begin		// artificial clock
	#5
	clk <= ~clk;
	end
	
	always begin
		rs = 32'h006;
		rt = 32'h001;
		aluop = 2'b10;
		#10
		sign_ext = 6'b100000;
		#10
		sign_ext = 6'b100010;
		#10
		sign_ext = 6'b100100;
		#10
		sign_ext = 6'b100101;
		#10
		sign_ext = 6'b101010;
		#10
		aluop = 2'b00;
		#10
		aluop = 2'b01;
		#10
		aluop = 2'b01;
		
	end
	
endmodule

