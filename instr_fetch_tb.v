`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 		 CSUChico
// Engineer: 		 Sean Michaels, Kelli Henneman
//
// Create Date:   08:29:55 03/30/2017
// Design Name:   instr_fetch
// Module Name:   C:/Xilinx/Assignments/Pipeline_CPU/instr_fetch_tb.v
// Project Name:  Pipeline_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: instr_fetch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module instr_fetch_tb;

	// Inputs
	reg clk;
	reg pcSrc;
	reg [31:0] ex_mem_pc;

	// Outputs
	wire [31:0] pc_4;
	wire [31:0] instr;

	// Instantiate the Unit Under Test (UUT)
	instr_fetch uut (
		.clk(clk),
		.pcSrc(pcSrc), 
		.ex_mem_pc(ex_mem_pc), 
		.pc_4(pc_4), 
		.instr(instr)
	);
	reg [31:0] MEM [63:0];
	initial begin
		// Initialize Inputs
		clk = 0;
		pcSrc = 1'bx;		// sets pc to 0
		ex_mem_pc = 0;
		
		
		// Wait 100 ns for global reset to finish
		#100;
      pcSrc = 1'b0;			// sets pc_mux to pc
		// Add stimulus here
		$display("\ttime,\tclk,\tpcSrc,\tex_mem_pc,\t \t\tpc_4,\tinstr");
		$monitor("\%d,\t%b,\t%b,\t%b,\t%h,\t%h", $time, clk, pcSrc, ex_mem_pc, pc_4, instr);
	end
	always begin		// artificial clock
	#5
	clk <= ~clk;
	end
      
endmodule

