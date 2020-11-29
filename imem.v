`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		 CSUChico
// Engineer: 		 Sean Michaels, Kelli Henneman
// 
// Create Date:    10:11:24 03/29/2017 
// Design Name: 
// Module Name:    imem
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
module dmem(input clk,we,
				input		[31:0] a, wd,
				output	[31:0] rd
				);
				
	reg [31:0]	RAM[63:0];
	
	assign rd = RAM[a[31:2]]; // word aligned
	
	always @(posedge clk)
	if (we)
		RAM[a[31:2]] <= wd;
endmodule


module imem(
    input [5:0] a,
    output [31:0] rd
    );
	reg [31:0] RAM[63:0];
	 
	initial begin
	$readmemh("imem.dat", RAM);	// file with instructions in it.
	end

	assign rd = RAM[a];  // word aligned

endmodule
