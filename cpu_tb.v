`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:		Sean Michaels
//
// Create Date:   13:21:52 05/01/2017
// Design Name:   cpu
// Module Name:   C:/Users/seanm/Downloads/Pipeline EX/EX/cpu_tb.v
// Project Name:  EX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cpu_tb;

	// Inputs
	reg clk;
	reg pcSrc;
	reg [31:0] ex_mem_pc;

	// Outputs
	wire [1:0] wb;
	wire [2:0] mem;
	wire [31:0] brDst;
	wire zFlag;
	wire [31:0] alu_out;
	wire [31:0] rt;
	wire [31:0] signExt;
	wire [4:0] wrDst;

	// Instantiate the Unit Under Test (UUT)
	cpu uut (
		.clk(clk), 
		.pcSrc(pcSrc), 
		.ex_mem_pc(ex_mem_pc), 
		.wb(wb), 
		.mem(mem), 
		.brDst(brDst), 
		.zFlag(zFlag), 
		.alu_out(alu_out), 
		.rt(rt), 
		.signExt(signExt), 
		.wrDst(wrDst)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		pcSrc = 0;
		ex_mem_pc = 0;

		// Wait 100 ns for global reset to finish
		#100;
      pcSrc = 1'b0;			// sets pc_mux to pc  
		$display("time,\tclk,\t\taluout,\t\t\tzFlag");
		$monitor("%d,\t%b,\t%b,\t%b", $time, clk, alu_out, zFlag);
	end
	
	always begin		// artificial clock
	#5
	clk <= ~clk;
	end
      
endmodule

