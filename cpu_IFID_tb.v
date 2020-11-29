`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:		Sean Michaels, Kelli Henneman
//
// Create Date:   14:36:09 04/24/2017
// Design Name:   cpu_IFID
// Module Name:   C:/Users/seanm/Downloads/PipelineCPU1/CPU1/cpu_IFID_tb.v
// Project Name:  CPU1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu_IFID
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cpu_IFID_tb;

	// Inputs
	reg clk;
	reg pcSrc;
	reg [31:0] ex_mem_pc;

	// Outputs
	wire [31:0] pc_4;
	wire [1:0] wb;
	wire [2:0] mem;
	wire [1:0] aluop;
	wire alusrc;
	wire regdst;
	wire [31:0] rt;
	wire [31:0] rs;
	wire [31:0] signExt;
	wire [4:0] instr20_16;
	wire [4:0] instr15_11;

	// Instantiate the Unit Under Test (UUT)
	cpu_IFID uut (
		.clk(clk), 
		.pcSrc(pcSrc), 
		.ex_mem_pc(ex_mem_pc), 
		.pc_4(pc_4), 
		.wb(wb), 
		.mem(mem), 
		.aluop(aluop), 
		.alusrc(alusrc), 
		.regdst(regdst), 
		.rt(rt), 
		.rs(rs), 
		.signExt(signExt), 
		.instr20_16(instr20_16), 
		.instr15_11(instr15_11)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		pcSrc = 1'bx;		// sets pc to 0
		ex_mem_pc = 0;

		// Wait 100 ns for global reset to finish
		#100;
      pcSrc = 1'b0;			// sets pc_mux to pc  
		$display("\ttime,  clk,    \tpc_4,\twb, mem,  aluOp, aluSrc, regDst,\trs,\trt,\tsignExt,\tinstr20_16,\tinstr15_11");
		$monitor("%d,\t%b,\t%h,\t%b,   %b,    %b,   %b,   %b,\t%h,\t%h,\t%b,\t%b,\t%b", $time, clk, pc_4, wb, mem, aluop, alusrc, regdst, rs, rt, signExt, instr20_16, instr15_11 );

	end
	
	always begin		// artificial clock
	#5
	clk <= ~clk;
	end
	
endmodule

