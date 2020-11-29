`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 		Sean Michaels
// 
// Create Date:    09:36:37 05/01/2017 
// Design Name: 
// Module Name:    branchAdder 
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
module branchAdder(input [31:0] pc_4, input [31:0] sign_ext, output reg [31:0] bdst
    );
	
	wire [31:0] sl2;
	
	assign sl2 = sign_ext << 2;
	always @(*) begin
		bdst <= pc_4 + sl2;
	end

endmodule
