`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:13:01 04/24/2017
// Design Name:   decode
// Module Name:   C:/Users/seanm/Downloads/PipelineCPU1/CPU1/decode_tb.v
// Project Name:  CPU1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decode
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decode_tb;

	// Inputs
	reg clk;
	reg [31:0] pc_4;
	reg [31:0] instr;
	reg [4:0] write_reg_MEMWB;
	reg [31:0] write_data_WB;
	reg write_en;

	// Outputs
	wire [1:0] wb_IDEX;
	wire [2:0] mem_IDEX;
	wire [1:0] aluop_IDEX;
	wire alusrc_IDEX;
	wire regdst_IDEX;
	wire [31:0] pc_4_IDEX;
	wire [31:0] rs_IDEX;
	wire [31:0] rt_IDEX;
	wire [31:0] signExt_IDEX;
	wire [4:0] instr20_16_IDEX;
	wire [4:0] instr15_11_IDEX;

	// Instantiate the Unit Under Test (UUT)
	decode uut (
		.clk(clk), 
		.pc_4(pc_4), 
		.instr(instr), 
		.write_reg_MEMWB(write_reg_MEMWB), 
		.write_data_WB(write_data_WB), 
		.write_en(write_en), 
		.wb_IDEX(wb_IDEX), 
		.mem_IDEX(mem_IDEX),
		.aluop_IDEX(aluop_IDEX), 
		.alusrc_IDEX(alusrc_IDEX), 
		.regdst_IDEX(regdst_IDEX), 
		.pc_4_IDEX(pc_4_IDEX), 
		.rs_IDEX(rs_IDEX), 
		.rt_IDEX(rt_IDEX), 
		.signExt_IDEX(signExt_IDEX), 
		.instr20_16_IDEX(instr20_16_IDEX), 
		.instr15_11_IDEX(instr15_11_IDEX)
	);

	reg [31:0] mem[0:127];
	reg [29:0] pc;

	initial begin
		// Initialize Inputs
		clk = 0;
		pc_4 = 0;
		instr = 0;
		write_reg_MEMWB = 0;
		write_data_WB = 0;
		write_en = 0;
		$readmemh("imem.dat", mem);

		// Wait 100 ns for global reset to finish
		#100;
	end

	always begin		// artificial clock
	#5
	clk <= ~clk;
	end
	
	always @(posedge clk) begin
		pc <= pc_4[31:2];
		pc_4 <= pc_4 + 32'h4;
	end
	
	always @(negedge clk) begin
		instr <= mem[pc];
	end
	
	initial begin
		$display("\ttime,  clk,    \tinstr,\tpc_4,\twb, mem,  aluOp, aluSrc, regDst,\trs,\trt,\tsignExt,\tinstr20_16,\tinstr15_11");
		$monitor("%d,\t%b,\t%h,\t%h,\t%b,   %b,    %b,   %b,   %b,\t%h,\t%h,\t%b,\t%b,\t%b", $time, clk, instr, pc, wb_IDEX, mem_IDEX, aluop_IDEX, alusrc_IDEX, regdst_IDEX, rs_IDEX, rt_IDEX, signExt_IDEX, instr20_16_IDEX, instr15_11_IDEX );
	end
      
endmodule

