`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 		Sean Michaels
// 
// Create Date:    09:52:48 05/01/2017 
// Design Name: 
// Module Name:    aluCntrl 
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
module aluCntrl(input [5:0] funct, input [1:0] alu_op, output reg[2:0] alu_cntrl
    );
	always @(*) begin
		if(alu_op == 2'b00)begin
			alu_cntrl <= 3'b010;
		end
		if(alu_op == 2'b01)begin
			alu_cntrl <= 3'b110;
		end
		if(alu_op == 2'b10) begin
		case(funct)
		6'b100000: alu_cntrl <= 3'b010;
		6'b100010: alu_cntrl <= 3'b110;
		6'b100100: alu_cntrl <= 3'b000;
		6'b100101: alu_cntrl <= 3'b001;
		6'b101010: alu_cntrl <= 3'b111;
		default: alu_cntrl 	<= alu_cntrl;
		endcase
		end
	end

endmodule
