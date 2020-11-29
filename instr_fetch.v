`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		 CSUChico
// Engineer: 		 Sean Michaels, Kelli Henneman
// 
// Create Date:    09:57:40 03/29/2017 
// Design Name: 
// Module Name:    instr_fetch 
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
module instr_fetch(
	 input clk,
    input pcSrc,
    input [31:0] ex_mem_pc,
    output [31:0] pc_4,
    output [31:0] instr
    );
	wire [31:0] mux_out;
	wire [31:0] adder_out;
	wire [31:0] pc_out;
	wire [31:0] imem_out;
	
	// PC_Mux
	mux_2to1 pc_mux(.a(adder_out), .b(ex_mem_pc), .select(pcSrc), .out(mux_out));	
	
	// PC
	pc instr_pc(.pc_in(mux_out), .clk(clk), .pc_out(pc_out));
	
	// PC+4 ADDER
	pc_4adder pc_adder(.pc(pc_out),.pc_4(adder_out));
	
	// Instruction Memory
	imem imemx(.a(pc_out[7:2]), .rd(imem_out));
	
	// IF/ID State Register
	if_id if_id_state(.instr(imem_out), .pc_4(adder_out),.clk(clk), .instr_ifid(instr), .pc_4ifid(pc_4));
	
endmodule
