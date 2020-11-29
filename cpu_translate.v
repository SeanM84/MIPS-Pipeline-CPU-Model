////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: cpu_translate.v
// /___/   /\     Timestamp: Mon May 01 13:37:32 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim cpu.ngd cpu_translate.v 
// Device	: 7a100tcsg324-3
// Input file	: cpu.ngd
// Output file	: C:\Users\seanm\Downloads\Pipeline EX\EX\netgen\translate\cpu_translate.v
// # of Modules	: 1
// Design Name	: cpu
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module cpu (
  clk, pcSrc, zFlag, ex_mem_pc, wb, mem, brDst, alu_out, rt, signExt, wrDst
);
  input clk;
  input pcSrc;
  output zFlag;
  input [31 : 0] ex_mem_pc;
  output [1 : 0] wb;
  output [2 : 0] mem;
  output [31 : 0] brDst;
  output [31 : 0] alu_out;
  output [31 : 0] rt;
  output [31 : 0] signExt;
  output [4 : 0] wrDst;
  wire ex_mem_pc_31_IBUF_18;
  wire ex_mem_pc_30_IBUF_19;
  wire ex_mem_pc_29_IBUF_20;
  wire ex_mem_pc_28_IBUF_21;
  wire ex_mem_pc_27_IBUF_22;
  wire ex_mem_pc_26_IBUF_23;
  wire ex_mem_pc_25_IBUF_24;
  wire ex_mem_pc_24_IBUF_25;
  wire ex_mem_pc_23_IBUF_26;
  wire ex_mem_pc_22_IBUF_27;
  wire ex_mem_pc_21_IBUF_28;
  wire ex_mem_pc_20_IBUF_29;
  wire ex_mem_pc_19_IBUF_30;
  wire ex_mem_pc_18_IBUF_31;
  wire ex_mem_pc_17_IBUF_32;
  wire ex_mem_pc_16_IBUF_33;
  wire ex_mem_pc_15_IBUF_34;
  wire ex_mem_pc_14_IBUF_35;
  wire ex_mem_pc_13_IBUF_36;
  wire ex_mem_pc_12_IBUF_37;
  wire ex_mem_pc_11_IBUF_38;
  wire ex_mem_pc_10_IBUF_39;
  wire ex_mem_pc_9_IBUF_40;
  wire ex_mem_pc_8_IBUF_41;
  wire ex_mem_pc_7_IBUF_42;
  wire ex_mem_pc_6_IBUF_43;
  wire ex_mem_pc_5_IBUF_44;
  wire ex_mem_pc_4_IBUF_45;
  wire ex_mem_pc_3_IBUF_46;
  wire ex_mem_pc_2_IBUF_47;
  wire ex_mem_pc_1_IBUF_48;
  wire ex_mem_pc_0_IBUF_49;
  wire clk_BUFGP;
  wire pcSrc_IBUF_51;
  wire \fetch/if_id_state/instr_ifid[31] ;
  wire \fetch/if_id_state/instr_ifid[28] ;
  wire \fetch/if_id_state/instr_ifid[27] ;
  wire \fetch/if_id_state/instr_ifid[26] ;
  wire \fetch/if_id_state/instr_ifid[23] ;
  wire \fetch/if_id_state/instr_ifid[22] ;
  wire \fetch/if_id_state/instr_ifid[21] ;
  wire \fetch/if_id_state/instr_ifid[18] ;
  wire \fetch/if_id_state/instr_ifid[17] ;
  wire \fetch/if_id_state/instr_ifid[16] ;
  wire \fetch/if_id_state/instr_ifid[15] ;
  wire \fetch/if_id_state/instr_ifid[14] ;
  wire \fetch/if_id_state/instr_ifid[13] ;
  wire \fetch/if_id_state/instr_ifid[12] ;
  wire \fetch/if_id_state/instr_ifid[11] ;
  wire \fetch/if_id_state/instr_ifid[10] ;
  wire \fetch/if_id_state/instr_ifid[9] ;
  wire \fetch/if_id_state/instr_ifid[8] ;
  wire \fetch/if_id_state/instr_ifid[7] ;
  wire \fetch/if_id_state/instr_ifid[6] ;
  wire \fetch/if_id_state/instr_ifid[5] ;
  wire \fetch/if_id_state/instr_ifid[4] ;
  wire \fetch/if_id_state/instr_ifid[3] ;
  wire \fetch/if_id_state/instr_ifid[2] ;
  wire \fetch/if_id_state/instr_ifid[1] ;
  wire \fetch/if_id_state/instr_ifid[0] ;
  wire \decode_stage/IDEX/regdst_80 ;
  wire \decode_stage/IDEX/alusrc_134 ;
  wire \ex/EX_M/alu_outM[31] ;
  wire \ex/EX_M/alu_outM[16] ;
  wire \ex/EX_M/alu_outM[15] ;
  wire \ex/EX_M/alu_outM[14] ;
  wire \ex/EX_M/alu_outM[13] ;
  wire \ex/EX_M/alu_outM[12] ;
  wire \ex/EX_M/alu_outM[11] ;
  wire \ex/EX_M/alu_outM[10] ;
  wire \ex/EX_M/alu_outM[9] ;
  wire \ex/EX_M/alu_outM[8] ;
  wire \ex/EX_M/alu_outM[7] ;
  wire \ex/EX_M/alu_outM[6] ;
  wire \ex/EX_M/alu_outM[5] ;
  wire \ex/EX_M/alu_outM[4] ;
  wire \ex/EX_M/alu_outM[3] ;
  wire \ex/EX_M/alu_outM[2] ;
  wire \ex/EX_M/alu_outM[1] ;
  wire \ex/EX_M/alu_outM[0] ;
  wire \ex/EX_M/zFlagM_195 ;
  wire N0;
  wire \fetch/imem_out[0] ;
  wire \fetch/imem_out[1] ;
  wire \fetch/imem_out[2] ;
  wire \fetch/imem_out[3] ;
  wire \fetch/imem_out[4] ;
  wire \fetch/imem_out[6] ;
  wire \fetch/imem_out[10] ;
  wire \fetch/imem_out[11] ;
  wire \fetch/imem_out[12] ;
  wire \fetch/imem_out[13] ;
  wire \fetch/imem_out[16] ;
  wire \fetch/imem_out[17] ;
  wire \fetch/imem_out[18] ;
  wire \fetch/imem_out[21] ;
  wire \fetch/imem_out[22] ;
  wire \fetch/imem_out[23] ;
  wire \fetch/imem_out[26] ;
  wire \fetch/imem_out[27] ;
  wire \fetch/imem_out[28] ;
  wire \fetch/imem_out[29] ;
  wire \decode_stage/regy/ra2[4]_read_port_6_OUT<1> ;
  wire \decode_stage/regy/ra1[4]_read_port_3_OUT<1> ;
  wire \ex/alu_control/alu_cntrl_0_316 ;
  wire \ex/alu_control/alu_cntrl_1_317 ;
  wire \ex/alu_control/alu_cntrl_2_318 ;
  wire \ex/aluSrc[0] ;
  wire \ex/aluSrc[1] ;
  wire \ex/aluSrc[2] ;
  wire \ex/aluSrc[3] ;
  wire \ex/aluSrc[4] ;
  wire \ex/aluSrc[5] ;
  wire \ex/aluSrc[6] ;
  wire \ex/aluSrc[7] ;
  wire \ex/aluSrc[8] ;
  wire \ex/aluSrc[9] ;
  wire \ex/aluSrc[10] ;
  wire \ex/aluSrc[11] ;
  wire \ex/aluSrc[12] ;
  wire \ex/aluSrc[13] ;
  wire \ex/aluSrc[14] ;
  wire \ex/aluSrc[15] ;
  wire \ex/aluSrc[16] ;
  wire \ex/aluSrc[24] ;
  wire \ex/z ;
  wire \decode_stage/cntrl/Mram__n0054 ;
  wire \decode_stage/cntrl/Mram__n00541 ;
  wire \fetch/if_id_state/instr_ifid[29] ;
  wire \decode_stage/cntrl/Mram__n00544 ;
  wire \decode_stage/cntrl/Mram__n00545 ;
  wire \decode_stage/cntrl/Mram__n00546 ;
  wire \ex/alUnit/Mmux_ALU_out7_rs_AS_inv ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<15>_558 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<15> ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi15 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<14>_561 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<14> ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi14 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<13>_564 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<13> ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi13 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<12>_567 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<12> ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi12 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<11>_570 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<11> ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi11_572 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<10>_573 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<10> ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi10 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<9>_576 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<9> ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi9 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<8>_579 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<8> ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi8 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<7>_582 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<7> ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi7 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<6>_585 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<6> ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi6 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<5>_588 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<5> ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi5 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<4>_591 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<4> ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi4 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<3>_594 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<3> ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi3 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<2>_597 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<2> ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi2 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<1>_600 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<1> ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi1_602 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<0>_603 ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<0> ;
  wire \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi ;
  wire \ex/alUnit/Mmux_ALU_out7_rs_B[16] ;
  wire \ex/alUnit/Mmux_ALU_out7_rs_B[24] ;
  wire \ex/alu_control/alu_cntrl[2]_funct[5]_mux_12_OUT<2>_639 ;
  wire \ex/alu_control/alu_cntrl[2]_funct[5]_mux_12_OUT<0> ;
  wire \ex/alu_control/alu_cntrl[2]_funct[5]_mux_12_OUT<1> ;
  wire \ex/alu_control/alu_op[1]_funct[5]_MUX_48_o ;
  wire \decode_stage/sign_extend<23><31>1_644 ;
  wire \decode_stage/sign_extend<23><31>2_645 ;
  wire \decode_stage/sign_extend<23><31>3_646 ;
  wire \ex/alUnit/zero<31>1_648 ;
  wire \ex/alUnit/zero<31>2_649 ;
  wire \ex/alUnit/zero<31>3_650 ;
  wire \ex/alUnit/zero<31>5 ;
  wire N4;
  wire N6;
  wire N8;
  wire N10;
  wire \fetch/pc_adder/Madd_pc_4_cy<3>_rt_797 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<4>_rt_798 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<5>_rt_799 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<6>_rt_800 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<7>_rt_801 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<8>_rt_802 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<9>_rt_803 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<10>_rt_804 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<11>_rt_805 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<12>_rt_806 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<13>_rt_807 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<14>_rt_808 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<15>_rt_809 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<16>_rt_810 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<17>_rt_811 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<18>_rt_812 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<19>_rt_813 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<20>_rt_814 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<21>_rt_815 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<22>_rt_816 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<23>_rt_817 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<24>_rt_818 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<25>_rt_819 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<26>_rt_820 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<27>_rt_821 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<28>_rt_822 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<29>_rt_823 ;
  wire \fetch/pc_adder/Madd_pc_4_cy<30>_rt_824 ;
  wire \ex/bAdder/Madd_bdst_cy<26>_rt_825 ;
  wire \ex/bAdder/Madd_bdst_cy<27>_rt_826 ;
  wire \ex/bAdder/Madd_bdst_cy<28>_rt_827 ;
  wire \ex/bAdder/Madd_bdst_cy<29>_rt_828 ;
  wire \ex/bAdder/Madd_bdst_cy<30>_rt_829 ;
  wire N12;
  wire N14;
  wire N15;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_29_833 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_31_834 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_30_835 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_28_836 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_27_837 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_26_838 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_25_839 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_24_840 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_23_841 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_22_842 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_21_843 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_20_844 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_19_845 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_18_846 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_17_847 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_16_848 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_15_849 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_12_850 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_14_851 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_13_852 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_11_853 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_10_854 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_9_855 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_8_856 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_7_857 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_6_858 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_5_859 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_4_860 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_3_861 ;
  wire \decode_stage/IDEX/Mshreg_pc_4_IDEX_2_862 ;
  wire \ex/EX_M/Mshreg_brnchDstM_1_863 ;
  wire \ex/EX_M/Mshreg_brnchDstM_0_864 ;
  wire \ex/EX_M/Mshreg_memM_0_865 ;
  wire \ex/EX_M/Mshreg_wbM_0_866 ;
  wire \clk_BUFGP/IBUFG_17 ;
  wire VCC;
  wire GND;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_29_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_31_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_30_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_28_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_27_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_26_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_25_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_24_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_23_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_22_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_21_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_20_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_19_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_18_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_17_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_16_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_15_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_12_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_14_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_13_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_11_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_10_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_9_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_8_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_7_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_6_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_5_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_4_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_3_Q15_UNCONNECTED ;
  wire \NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_2_Q15_UNCONNECTED ;
  wire \NLW_ex/EX_M/Mshreg_brnchDstM_1_Q15_UNCONNECTED ;
  wire \NLW_ex/EX_M/Mshreg_brnchDstM_0_Q15_UNCONNECTED ;
  wire \NLW_ex/EX_M/Mshreg_memM_0_Q15_UNCONNECTED ;
  wire \NLW_ex/EX_M/Mshreg_wbM_0_Q15_UNCONNECTED ;
  wire [19 : 19] instr;
  wire [1 : 1] \decode_stage/IDEX/mem_IDEX ;
  wire [0 : 0] \decode_stage/IDEX/aluop ;
  wire [31 : 2] \decode_stage/IDEX/pc_4_IDEX ;
  wire [31 : 31] \decode_stage/IDEX/rs_IDEX ;
  wire [31 : 31] \decode_stage/IDEX/rt_IDEX ;
  wire [16 : 0] \decode_stage/IDEX/signExt_IDEX ;
  wire [2 : 0] \decode_stage/IDEX/instr20_16_IDEX ;
  wire [2 : 0] \ex/EX_M/memM ;
  wire [0 : 0] \ex/EX_M/wbM ;
  wire [31 : 0] \ex/EX_M/brnchDstM ;
  wire [31 : 31] \ex/EX_M/rtM ;
  wire [4 : 0] \ex/EX_M/wrDstM ;
  wire [31 : 2] \fetch/adder_out ;
  wire [31 : 0] \fetch/instr_pc/pc_out ;
  wire [31 : 0] \fetch/mux_out ;
  wire [23 : 23] \decode_stage/sign_extend ;
  wire [31 : 31] \decode_stage/rt ;
  wire [31 : 31] \decode_stage/rs ;
  wire [4 : 0] \ex/wrDst ;
  wire [31 : 0] \ex/aluOut ;
  wire [31 : 2] \ex/bAddr ;
  wire [2 : 2] \fetch/pc_adder/Madd_pc_4_lut ;
  wire [30 : 2] \fetch/pc_adder/Madd_pc_4_cy ;
  wire [25 : 2] \ex/bAdder/Madd_bdst_lut ;
  wire [30 : 2] \ex/bAdder/Madd_bdst_cy ;
  wire [31 : 0] \ex/alUnit/Mmux_ALU_out7_rs_lut ;
  wire [30 : 0] \ex/alUnit/Mmux_ALU_out7_rs_cy ;
  wire [30 : 0] \ex/alUnit/Mmux_ALU_out7_rs_A ;
  wire [31 : 31] \decode_stage/sign_extend<23> ;
  wire [31 : 31] \ex/alUnit/zero ;
  X_ONE   XST_VCC (
    .O(N0)
  );
  X_ZERO   XST_GND (
    .O(instr[19])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<2>  (
    .IB(instr[19]),
    .IA(N0),
    .SEL(\fetch/pc_adder/Madd_pc_4_lut [2]),
    .O(\fetch/pc_adder/Madd_pc_4_cy [2])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<2>  (
    .I0(instr[19]),
    .I1(\fetch/pc_adder/Madd_pc_4_lut [2]),
    .O(\fetch/adder_out [2])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<3>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [2]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<3>_rt_797 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [3])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<3>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [2]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<3>_rt_797 ),
    .O(\fetch/adder_out [3])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<4>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [3]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<4>_rt_798 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [4])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<4>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [3]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<4>_rt_798 ),
    .O(\fetch/adder_out [4])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<5>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [4]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<5>_rt_799 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [5])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<5>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [4]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<5>_rt_799 ),
    .O(\fetch/adder_out [5])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<6>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [5]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<6>_rt_800 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [6])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<6>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [5]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<6>_rt_800 ),
    .O(\fetch/adder_out [6])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<7>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [6]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<7>_rt_801 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [7])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<7>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [6]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<7>_rt_801 ),
    .O(\fetch/adder_out [7])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<8>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [7]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<8>_rt_802 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [8])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<8>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [7]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<8>_rt_802 ),
    .O(\fetch/adder_out [8])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<9>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [8]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<9>_rt_803 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [9])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<9>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [8]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<9>_rt_803 ),
    .O(\fetch/adder_out [9])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<10>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [9]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<10>_rt_804 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [10])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<10>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [9]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<10>_rt_804 ),
    .O(\fetch/adder_out [10])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<11>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [10]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<11>_rt_805 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [11])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<11>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [10]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<11>_rt_805 ),
    .O(\fetch/adder_out [11])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<12>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [11]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<12>_rt_806 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [12])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<12>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [11]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<12>_rt_806 ),
    .O(\fetch/adder_out [12])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<13>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [12]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<13>_rt_807 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [13])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<13>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [12]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<13>_rt_807 ),
    .O(\fetch/adder_out [13])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<14>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [13]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<14>_rt_808 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [14])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<14>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [13]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<14>_rt_808 ),
    .O(\fetch/adder_out [14])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<15>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [14]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<15>_rt_809 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [15])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<15>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [14]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<15>_rt_809 ),
    .O(\fetch/adder_out [15])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<16>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [15]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<16>_rt_810 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [16])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<16>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [15]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<16>_rt_810 ),
    .O(\fetch/adder_out [16])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<17>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [16]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<17>_rt_811 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [17])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<17>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [16]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<17>_rt_811 ),
    .O(\fetch/adder_out [17])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<18>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [17]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<18>_rt_812 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [18])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<18>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [17]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<18>_rt_812 ),
    .O(\fetch/adder_out [18])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<19>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [18]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<19>_rt_813 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [19])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<19>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [18]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<19>_rt_813 ),
    .O(\fetch/adder_out [19])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<20>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [19]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<20>_rt_814 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [20])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<20>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [19]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<20>_rt_814 ),
    .O(\fetch/adder_out [20])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<21>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [20]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<21>_rt_815 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [21])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<21>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [20]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<21>_rt_815 ),
    .O(\fetch/adder_out [21])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<22>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [21]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<22>_rt_816 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [22])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<22>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [21]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<22>_rt_816 ),
    .O(\fetch/adder_out [22])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<23>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [22]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<23>_rt_817 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [23])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<23>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [22]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<23>_rt_817 ),
    .O(\fetch/adder_out [23])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<24>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [23]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<24>_rt_818 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [24])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<24>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [23]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<24>_rt_818 ),
    .O(\fetch/adder_out [24])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<25>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [24]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<25>_rt_819 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [25])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<25>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [24]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<25>_rt_819 ),
    .O(\fetch/adder_out [25])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<26>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [25]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<26>_rt_820 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [26])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<26>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [25]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<26>_rt_820 ),
    .O(\fetch/adder_out [26])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<27>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [26]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<27>_rt_821 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [27])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<27>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [26]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<27>_rt_821 ),
    .O(\fetch/adder_out [27])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<28>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [27]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<28>_rt_822 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [28])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<28>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [27]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<28>_rt_822 ),
    .O(\fetch/adder_out [28])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<29>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [28]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<29>_rt_823 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [29])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<29>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [28]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<29>_rt_823 ),
    .O(\fetch/adder_out [29])
  );
  X_MUX2   \fetch/pc_adder/Madd_pc_4_cy<30>  (
    .IB(\fetch/pc_adder/Madd_pc_4_cy [29]),
    .IA(instr[19]),
    .SEL(\fetch/pc_adder/Madd_pc_4_cy<30>_rt_824 ),
    .O(\fetch/pc_adder/Madd_pc_4_cy [30])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<30>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [29]),
    .I1(\fetch/pc_adder/Madd_pc_4_cy<30>_rt_824 ),
    .O(\fetch/adder_out [30])
  );
  X_XOR2   \fetch/pc_adder/Madd_pc_4_xor<31>  (
    .I0(\fetch/pc_adder/Madd_pc_4_cy [30]),
    .I1(\fetch/instr_pc/pc_out [31]),
    .O(\fetch/adder_out [31])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<2>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [2]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [0]),
    .O(\ex/bAdder/Madd_bdst_lut [2])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<2>  (
    .IB(instr[19]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [2]),
    .SEL(\ex/bAdder/Madd_bdst_lut [2]),
    .O(\ex/bAdder/Madd_bdst_cy [2])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<2>  (
    .I0(instr[19]),
    .I1(\ex/bAdder/Madd_bdst_lut [2]),
    .O(\ex/bAddr [2])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<3>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [3]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [1]),
    .O(\ex/bAdder/Madd_bdst_lut [3])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<3>  (
    .IB(\ex/bAdder/Madd_bdst_cy [2]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [3]),
    .SEL(\ex/bAdder/Madd_bdst_lut [3]),
    .O(\ex/bAdder/Madd_bdst_cy [3])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<3>  (
    .I0(\ex/bAdder/Madd_bdst_cy [2]),
    .I1(\ex/bAdder/Madd_bdst_lut [3]),
    .O(\ex/bAddr [3])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<4>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [4]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [2]),
    .O(\ex/bAdder/Madd_bdst_lut [4])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<4>  (
    .IB(\ex/bAdder/Madd_bdst_cy [3]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [4]),
    .SEL(\ex/bAdder/Madd_bdst_lut [4]),
    .O(\ex/bAdder/Madd_bdst_cy [4])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<4>  (
    .I0(\ex/bAdder/Madd_bdst_cy [3]),
    .I1(\ex/bAdder/Madd_bdst_lut [4]),
    .O(\ex/bAddr [4])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<5>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [5]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [3]),
    .O(\ex/bAdder/Madd_bdst_lut [5])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<5>  (
    .IB(\ex/bAdder/Madd_bdst_cy [4]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [5]),
    .SEL(\ex/bAdder/Madd_bdst_lut [5]),
    .O(\ex/bAdder/Madd_bdst_cy [5])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<5>  (
    .I0(\ex/bAdder/Madd_bdst_cy [4]),
    .I1(\ex/bAdder/Madd_bdst_lut [5]),
    .O(\ex/bAddr [5])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<6>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [6]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [4]),
    .O(\ex/bAdder/Madd_bdst_lut [6])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<6>  (
    .IB(\ex/bAdder/Madd_bdst_cy [5]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [6]),
    .SEL(\ex/bAdder/Madd_bdst_lut [6]),
    .O(\ex/bAdder/Madd_bdst_cy [6])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<6>  (
    .I0(\ex/bAdder/Madd_bdst_cy [5]),
    .I1(\ex/bAdder/Madd_bdst_lut [6]),
    .O(\ex/bAddr [6])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<7>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [7]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [5]),
    .O(\ex/bAdder/Madd_bdst_lut [7])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<7>  (
    .IB(\ex/bAdder/Madd_bdst_cy [6]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [7]),
    .SEL(\ex/bAdder/Madd_bdst_lut [7]),
    .O(\ex/bAdder/Madd_bdst_cy [7])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<7>  (
    .I0(\ex/bAdder/Madd_bdst_cy [6]),
    .I1(\ex/bAdder/Madd_bdst_lut [7]),
    .O(\ex/bAddr [7])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<8>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [8]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [6]),
    .O(\ex/bAdder/Madd_bdst_lut [8])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<8>  (
    .IB(\ex/bAdder/Madd_bdst_cy [7]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [8]),
    .SEL(\ex/bAdder/Madd_bdst_lut [8]),
    .O(\ex/bAdder/Madd_bdst_cy [8])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<8>  (
    .I0(\ex/bAdder/Madd_bdst_cy [7]),
    .I1(\ex/bAdder/Madd_bdst_lut [8]),
    .O(\ex/bAddr [8])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<9>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [9]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [7]),
    .O(\ex/bAdder/Madd_bdst_lut [9])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<9>  (
    .IB(\ex/bAdder/Madd_bdst_cy [8]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [9]),
    .SEL(\ex/bAdder/Madd_bdst_lut [9]),
    .O(\ex/bAdder/Madd_bdst_cy [9])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<9>  (
    .I0(\ex/bAdder/Madd_bdst_cy [8]),
    .I1(\ex/bAdder/Madd_bdst_lut [9]),
    .O(\ex/bAddr [9])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<10>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [10]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [8]),
    .O(\ex/bAdder/Madd_bdst_lut [10])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<10>  (
    .IB(\ex/bAdder/Madd_bdst_cy [9]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [10]),
    .SEL(\ex/bAdder/Madd_bdst_lut [10]),
    .O(\ex/bAdder/Madd_bdst_cy [10])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<10>  (
    .I0(\ex/bAdder/Madd_bdst_cy [9]),
    .I1(\ex/bAdder/Madd_bdst_lut [10]),
    .O(\ex/bAddr [10])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<11>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [11]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [9]),
    .O(\ex/bAdder/Madd_bdst_lut [11])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<11>  (
    .IB(\ex/bAdder/Madd_bdst_cy [10]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [11]),
    .SEL(\ex/bAdder/Madd_bdst_lut [11]),
    .O(\ex/bAdder/Madd_bdst_cy [11])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<11>  (
    .I0(\ex/bAdder/Madd_bdst_cy [10]),
    .I1(\ex/bAdder/Madd_bdst_lut [11]),
    .O(\ex/bAddr [11])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<12>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [12]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [10]),
    .O(\ex/bAdder/Madd_bdst_lut [12])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<12>  (
    .IB(\ex/bAdder/Madd_bdst_cy [11]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [12]),
    .SEL(\ex/bAdder/Madd_bdst_lut [12]),
    .O(\ex/bAdder/Madd_bdst_cy [12])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<12>  (
    .I0(\ex/bAdder/Madd_bdst_cy [11]),
    .I1(\ex/bAdder/Madd_bdst_lut [12]),
    .O(\ex/bAddr [12])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<13>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [13]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [11]),
    .O(\ex/bAdder/Madd_bdst_lut [13])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<13>  (
    .IB(\ex/bAdder/Madd_bdst_cy [12]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [13]),
    .SEL(\ex/bAdder/Madd_bdst_lut [13]),
    .O(\ex/bAdder/Madd_bdst_cy [13])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<13>  (
    .I0(\ex/bAdder/Madd_bdst_cy [12]),
    .I1(\ex/bAdder/Madd_bdst_lut [13]),
    .O(\ex/bAddr [13])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<14>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [14]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [12]),
    .O(\ex/bAdder/Madd_bdst_lut [14])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<14>  (
    .IB(\ex/bAdder/Madd_bdst_cy [13]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [14]),
    .SEL(\ex/bAdder/Madd_bdst_lut [14]),
    .O(\ex/bAdder/Madd_bdst_cy [14])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<14>  (
    .I0(\ex/bAdder/Madd_bdst_cy [13]),
    .I1(\ex/bAdder/Madd_bdst_lut [14]),
    .O(\ex/bAddr [14])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<15>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [15]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [13]),
    .O(\ex/bAdder/Madd_bdst_lut [15])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<15>  (
    .IB(\ex/bAdder/Madd_bdst_cy [14]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [15]),
    .SEL(\ex/bAdder/Madd_bdst_lut [15]),
    .O(\ex/bAdder/Madd_bdst_cy [15])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<15>  (
    .I0(\ex/bAdder/Madd_bdst_cy [14]),
    .I1(\ex/bAdder/Madd_bdst_lut [15]),
    .O(\ex/bAddr [15])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<16>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [16]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [14]),
    .O(\ex/bAdder/Madd_bdst_lut [16])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<16>  (
    .IB(\ex/bAdder/Madd_bdst_cy [15]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [16]),
    .SEL(\ex/bAdder/Madd_bdst_lut [16]),
    .O(\ex/bAdder/Madd_bdst_cy [16])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<16>  (
    .I0(\ex/bAdder/Madd_bdst_cy [15]),
    .I1(\ex/bAdder/Madd_bdst_lut [16]),
    .O(\ex/bAddr [16])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<17>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [17]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [15]),
    .O(\ex/bAdder/Madd_bdst_lut [17])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<17>  (
    .IB(\ex/bAdder/Madd_bdst_cy [16]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [17]),
    .SEL(\ex/bAdder/Madd_bdst_lut [17]),
    .O(\ex/bAdder/Madd_bdst_cy [17])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<17>  (
    .I0(\ex/bAdder/Madd_bdst_cy [16]),
    .I1(\ex/bAdder/Madd_bdst_lut [17]),
    .O(\ex/bAddr [17])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<18>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [18]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [16]),
    .O(\ex/bAdder/Madd_bdst_lut [18])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<18>  (
    .IB(\ex/bAdder/Madd_bdst_cy [17]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [18]),
    .SEL(\ex/bAdder/Madd_bdst_lut [18]),
    .O(\ex/bAdder/Madd_bdst_cy [18])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<18>  (
    .I0(\ex/bAdder/Madd_bdst_cy [17]),
    .I1(\ex/bAdder/Madd_bdst_lut [18]),
    .O(\ex/bAddr [18])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<19>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [19]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [16]),
    .O(\ex/bAdder/Madd_bdst_lut [19])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<19>  (
    .IB(\ex/bAdder/Madd_bdst_cy [18]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [19]),
    .SEL(\ex/bAdder/Madd_bdst_lut [19]),
    .O(\ex/bAdder/Madd_bdst_cy [19])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<19>  (
    .I0(\ex/bAdder/Madd_bdst_cy [18]),
    .I1(\ex/bAdder/Madd_bdst_lut [19]),
    .O(\ex/bAddr [19])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<20>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [20]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [16]),
    .O(\ex/bAdder/Madd_bdst_lut [20])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<20>  (
    .IB(\ex/bAdder/Madd_bdst_cy [19]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [20]),
    .SEL(\ex/bAdder/Madd_bdst_lut [20]),
    .O(\ex/bAdder/Madd_bdst_cy [20])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<20>  (
    .I0(\ex/bAdder/Madd_bdst_cy [19]),
    .I1(\ex/bAdder/Madd_bdst_lut [20]),
    .O(\ex/bAddr [20])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<21>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [21]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [16]),
    .O(\ex/bAdder/Madd_bdst_lut [21])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<21>  (
    .IB(\ex/bAdder/Madd_bdst_cy [20]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [21]),
    .SEL(\ex/bAdder/Madd_bdst_lut [21]),
    .O(\ex/bAdder/Madd_bdst_cy [21])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<21>  (
    .I0(\ex/bAdder/Madd_bdst_cy [20]),
    .I1(\ex/bAdder/Madd_bdst_lut [21]),
    .O(\ex/bAddr [21])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<22>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [22]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [16]),
    .O(\ex/bAdder/Madd_bdst_lut [22])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<22>  (
    .IB(\ex/bAdder/Madd_bdst_cy [21]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [22]),
    .SEL(\ex/bAdder/Madd_bdst_lut [22]),
    .O(\ex/bAdder/Madd_bdst_cy [22])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<22>  (
    .I0(\ex/bAdder/Madd_bdst_cy [21]),
    .I1(\ex/bAdder/Madd_bdst_lut [22]),
    .O(\ex/bAddr [22])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<23>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [23]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [16]),
    .O(\ex/bAdder/Madd_bdst_lut [23])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<23>  (
    .IB(\ex/bAdder/Madd_bdst_cy [22]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [23]),
    .SEL(\ex/bAdder/Madd_bdst_lut [23]),
    .O(\ex/bAdder/Madd_bdst_cy [23])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<23>  (
    .I0(\ex/bAdder/Madd_bdst_cy [22]),
    .I1(\ex/bAdder/Madd_bdst_lut [23]),
    .O(\ex/bAddr [23])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<24>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [24]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [16]),
    .O(\ex/bAdder/Madd_bdst_lut [24])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<24>  (
    .IB(\ex/bAdder/Madd_bdst_cy [23]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [24]),
    .SEL(\ex/bAdder/Madd_bdst_lut [24]),
    .O(\ex/bAdder/Madd_bdst_cy [24])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<24>  (
    .I0(\ex/bAdder/Madd_bdst_cy [23]),
    .I1(\ex/bAdder/Madd_bdst_lut [24]),
    .O(\ex/bAddr [24])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \ex/bAdder/Madd_bdst_lut<25>  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [25]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [16]),
    .O(\ex/bAdder/Madd_bdst_lut [25])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<25>  (
    .IB(\ex/bAdder/Madd_bdst_cy [24]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [25]),
    .SEL(\ex/bAdder/Madd_bdst_lut [25]),
    .O(\ex/bAdder/Madd_bdst_cy [25])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<25>  (
    .I0(\ex/bAdder/Madd_bdst_cy [24]),
    .I1(\ex/bAdder/Madd_bdst_lut [25]),
    .O(\ex/bAddr [25])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<26>  (
    .IB(\ex/bAdder/Madd_bdst_cy [25]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [26]),
    .SEL(\ex/bAdder/Madd_bdst_cy<26>_rt_825 ),
    .O(\ex/bAdder/Madd_bdst_cy [26])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<26>  (
    .I0(\ex/bAdder/Madd_bdst_cy [25]),
    .I1(\ex/bAdder/Madd_bdst_cy<26>_rt_825 ),
    .O(\ex/bAddr [26])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<27>  (
    .IB(\ex/bAdder/Madd_bdst_cy [26]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [27]),
    .SEL(\ex/bAdder/Madd_bdst_cy<27>_rt_826 ),
    .O(\ex/bAdder/Madd_bdst_cy [27])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<27>  (
    .I0(\ex/bAdder/Madd_bdst_cy [26]),
    .I1(\ex/bAdder/Madd_bdst_cy<27>_rt_826 ),
    .O(\ex/bAddr [27])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<28>  (
    .IB(\ex/bAdder/Madd_bdst_cy [27]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [28]),
    .SEL(\ex/bAdder/Madd_bdst_cy<28>_rt_827 ),
    .O(\ex/bAdder/Madd_bdst_cy [28])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<28>  (
    .I0(\ex/bAdder/Madd_bdst_cy [27]),
    .I1(\ex/bAdder/Madd_bdst_cy<28>_rt_827 ),
    .O(\ex/bAddr [28])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<29>  (
    .IB(\ex/bAdder/Madd_bdst_cy [28]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [29]),
    .SEL(\ex/bAdder/Madd_bdst_cy<29>_rt_828 ),
    .O(\ex/bAdder/Madd_bdst_cy [29])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<29>  (
    .I0(\ex/bAdder/Madd_bdst_cy [28]),
    .I1(\ex/bAdder/Madd_bdst_cy<29>_rt_828 ),
    .O(\ex/bAddr [29])
  );
  X_MUX2   \ex/bAdder/Madd_bdst_cy<30>  (
    .IB(\ex/bAdder/Madd_bdst_cy [29]),
    .IA(\decode_stage/IDEX/pc_4_IDEX [30]),
    .SEL(\ex/bAdder/Madd_bdst_cy<30>_rt_829 ),
    .O(\ex/bAdder/Madd_bdst_cy [30])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<30>  (
    .I0(\ex/bAdder/Madd_bdst_cy [29]),
    .I1(\ex/bAdder/Madd_bdst_cy<30>_rt_829 ),
    .O(\ex/bAddr [30])
  );
  X_XOR2   \ex/bAdder/Madd_bdst_xor<31>  (
    .I0(\ex/bAdder/Madd_bdst_cy [30]),
    .I1(\decode_stage/IDEX/pc_4_IDEX [31]),
    .O(\ex/bAddr [31])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_31  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [31]),
    .O(\fetch/instr_pc/pc_out [31]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_30  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [30]),
    .O(\fetch/instr_pc/pc_out [30]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_29  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [29]),
    .O(\fetch/instr_pc/pc_out [29]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_28  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [28]),
    .O(\fetch/instr_pc/pc_out [28]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_27  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [27]),
    .O(\fetch/instr_pc/pc_out [27]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_26  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [26]),
    .O(\fetch/instr_pc/pc_out [26]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_25  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [25]),
    .O(\fetch/instr_pc/pc_out [25]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_24  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [24]),
    .O(\fetch/instr_pc/pc_out [24]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_23  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [23]),
    .O(\fetch/instr_pc/pc_out [23]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_22  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [22]),
    .O(\fetch/instr_pc/pc_out [22]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_21  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [21]),
    .O(\fetch/instr_pc/pc_out [21]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_20  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [20]),
    .O(\fetch/instr_pc/pc_out [20]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_19  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [19]),
    .O(\fetch/instr_pc/pc_out [19]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_18  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [18]),
    .O(\fetch/instr_pc/pc_out [18]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_17  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [17]),
    .O(\fetch/instr_pc/pc_out [17]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_16  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [16]),
    .O(\fetch/instr_pc/pc_out [16]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_15  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [15]),
    .O(\fetch/instr_pc/pc_out [15]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_14  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [14]),
    .O(\fetch/instr_pc/pc_out [14]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_13  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [13]),
    .O(\fetch/instr_pc/pc_out [13]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_12  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [12]),
    .O(\fetch/instr_pc/pc_out [12]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_11  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [11]),
    .O(\fetch/instr_pc/pc_out [11]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_10  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [10]),
    .O(\fetch/instr_pc/pc_out [10]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_9  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [9]),
    .O(\fetch/instr_pc/pc_out [9]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_8  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [8]),
    .O(\fetch/instr_pc/pc_out [8]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_7  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [7]),
    .O(\fetch/instr_pc/pc_out [7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_6  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [6]),
    .O(\fetch/instr_pc/pc_out [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_5  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [5]),
    .O(\fetch/instr_pc/pc_out [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_4  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [4]),
    .O(\fetch/instr_pc/pc_out [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_3  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [3]),
    .O(\fetch/instr_pc/pc_out [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_2  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [2]),
    .O(\fetch/instr_pc/pc_out [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_1  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [1]),
    .O(\fetch/instr_pc/pc_out [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/instr_pc/pc_out_0  (
    .CLK(clk_BUFGP),
    .I(\fetch/mux_out [0]),
    .O(\fetch/instr_pc/pc_out [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_31  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[26] ),
    .O(\fetch/if_id_state/instr_ifid[31] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_29  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[29] ),
    .O(\fetch/if_id_state/instr_ifid[29] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_28  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[28] ),
    .O(\fetch/if_id_state/instr_ifid[28] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_27  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[27] ),
    .O(\fetch/if_id_state/instr_ifid[27] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_26  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[26] ),
    .O(\fetch/if_id_state/instr_ifid[26] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_23  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[23] ),
    .O(\fetch/if_id_state/instr_ifid[23] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_22  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[22] ),
    .O(\fetch/if_id_state/instr_ifid[22] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_21  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[21] ),
    .O(\fetch/if_id_state/instr_ifid[21] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_18  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[18] ),
    .O(\fetch/if_id_state/instr_ifid[18] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_17  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[17] ),
    .O(\fetch/if_id_state/instr_ifid[17] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_16  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[16] ),
    .O(\fetch/if_id_state/instr_ifid[16] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_15  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[10] ),
    .O(\fetch/if_id_state/instr_ifid[15] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_14  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[10] ),
    .O(\fetch/if_id_state/instr_ifid[14] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_13  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[13] ),
    .O(\fetch/if_id_state/instr_ifid[13] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_12  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[12] ),
    .O(\fetch/if_id_state/instr_ifid[12] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_11  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[11] ),
    .O(\fetch/if_id_state/instr_ifid[11] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_10  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[10] ),
    .O(\fetch/if_id_state/instr_ifid[10] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_9  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[10] ),
    .O(\fetch/if_id_state/instr_ifid[9] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_8  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[10] ),
    .O(\fetch/if_id_state/instr_ifid[8] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_7  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[10] ),
    .O(\fetch/if_id_state/instr_ifid[7] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_6  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[6] ),
    .O(\fetch/if_id_state/instr_ifid[6] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_5  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[13] ),
    .O(\fetch/if_id_state/instr_ifid[5] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_4  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[4] ),
    .O(\fetch/if_id_state/instr_ifid[4] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_3  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[3] ),
    .O(\fetch/if_id_state/instr_ifid[3] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_2  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[2] ),
    .O(\fetch/if_id_state/instr_ifid[2] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_1  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[1] ),
    .O(\fetch/if_id_state/instr_ifid[1] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \fetch/if_id_state/instr_ifid_0  (
    .CLK(clk_BUFGP),
    .I(\fetch/imem_out[0] ),
    .O(\fetch/if_id_state/instr_ifid[0] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/regdst  (
    .CLK(clk_BUFGP),
    .I(\decode_stage/cntrl/Mram__n00545 ),
    .O(\decode_stage/IDEX/regdst_80 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/alusrc  (
    .CLK(clk_BUFGP),
    .I(\decode_stage/cntrl/Mram__n00546 ),
    .O(\decode_stage/IDEX/alusrc_134 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/instr20_16_IDEX_2  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[18] ),
    .O(\decode_stage/IDEX/instr20_16_IDEX [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/instr20_16_IDEX_1  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[17] ),
    .O(\decode_stage/IDEX/instr20_16_IDEX [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/instr20_16_IDEX_0  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[16] ),
    .O(\decode_stage/IDEX/instr20_16_IDEX [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/aluop_0  (
    .CLK(clk_BUFGP),
    .I(\decode_stage/cntrl/Mram__n00544 ),
    .O(\decode_stage/IDEX/aluop [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/rt_IDEX_31  (
    .CLK(clk_BUFGP),
    .I(\decode_stage/rt [31]),
    .O(\decode_stage/IDEX/rt_IDEX [31]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/rs_IDEX_31  (
    .CLK(clk_BUFGP),
    .I(\decode_stage/rs [31]),
    .O(\decode_stage/IDEX/rs_IDEX [31]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/signExt_IDEX_16  (
    .CLK(clk_BUFGP),
    .I(\decode_stage/sign_extend [23]),
    .O(\decode_stage/IDEX/signExt_IDEX [16]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/signExt_IDEX_15  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[15] ),
    .O(\decode_stage/IDEX/signExt_IDEX [15]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/signExt_IDEX_14  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[14] ),
    .O(\decode_stage/IDEX/signExt_IDEX [14]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/signExt_IDEX_13  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[13] ),
    .O(\decode_stage/IDEX/signExt_IDEX [13]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/signExt_IDEX_12  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[12] ),
    .O(\decode_stage/IDEX/signExt_IDEX [12]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/signExt_IDEX_11  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[11] ),
    .O(\decode_stage/IDEX/signExt_IDEX [11]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/signExt_IDEX_10  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[10] ),
    .O(\decode_stage/IDEX/signExt_IDEX [10]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/signExt_IDEX_9  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[9] ),
    .O(\decode_stage/IDEX/signExt_IDEX [9]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/signExt_IDEX_8  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[8] ),
    .O(\decode_stage/IDEX/signExt_IDEX [8]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/signExt_IDEX_7  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[7] ),
    .O(\decode_stage/IDEX/signExt_IDEX [7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/signExt_IDEX_6  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[6] ),
    .O(\decode_stage/IDEX/signExt_IDEX [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/signExt_IDEX_5  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[5] ),
    .O(\decode_stage/IDEX/signExt_IDEX [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/signExt_IDEX_4  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[4] ),
    .O(\decode_stage/IDEX/signExt_IDEX [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/signExt_IDEX_3  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[3] ),
    .O(\decode_stage/IDEX/signExt_IDEX [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/signExt_IDEX_2  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[2] ),
    .O(\decode_stage/IDEX/signExt_IDEX [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/signExt_IDEX_1  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[1] ),
    .O(\decode_stage/IDEX/signExt_IDEX [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/signExt_IDEX_0  (
    .CLK(clk_BUFGP),
    .I(\fetch/if_id_state/instr_ifid[0] ),
    .O(\decode_stage/IDEX/signExt_IDEX [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/mem_IDEX_1  (
    .CLK(clk_BUFGP),
    .I(\decode_stage/cntrl/Mram__n00541 ),
    .O(\decode_stage/IDEX/mem_IDEX [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<31>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [30]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [31]),
    .O(\ex/aluOut [31])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<30>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [29]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [30]),
    .O(\ex/aluOut [30])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<30>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [29]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [30]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [30]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [30])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<29>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [28]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [29]),
    .O(\ex/aluOut [29])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<29>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [28]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [29]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [29]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [29])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<28>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [27]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [28]),
    .O(\ex/aluOut [28])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<28>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [27]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [28]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [28]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [28])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<27>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [26]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [27]),
    .O(\ex/aluOut [27])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<27>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [26]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [27]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [27]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [27])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<26>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [25]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [26]),
    .O(\ex/aluOut [26])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<26>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [25]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [26]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [26]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [26])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<25>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [24]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [25]),
    .O(\ex/aluOut [25])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<25>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [24]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [25]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [25]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [25])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<24>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [23]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [24]),
    .O(\ex/aluOut [24])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<24>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [23]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [24]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [24]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [24])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<23>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [22]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [23]),
    .O(\ex/aluOut [23])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<23>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [22]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [23]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [23]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [23])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<22>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [21]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [22]),
    .O(\ex/aluOut [22])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<22>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [21]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [22]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [22]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [22])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<21>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [20]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [21]),
    .O(\ex/aluOut [21])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<21>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [20]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [21]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [21]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [21])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<20>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [19]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [20]),
    .O(\ex/aluOut [20])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<20>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [19]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [20]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [20]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [20])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<19>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [18]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [19]),
    .O(\ex/aluOut [19])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<19>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [18]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [19]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [19]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [19])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<18>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [17]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [18]),
    .O(\ex/aluOut [18])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<18>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [17]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [18]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [18]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [18])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<17>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [16]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [17]),
    .O(\ex/aluOut [17])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<17>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [16]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [17]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [17]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [17])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<16>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [15]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [16]),
    .O(\ex/aluOut [16])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<16>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [15]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [16]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [16]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [16])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<15>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [14]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [15]),
    .O(\ex/aluOut [15])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<15>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [14]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [15]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [15]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [15])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<14>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [13]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [14]),
    .O(\ex/aluOut [14])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<14>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [13]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [14]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [14]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [14])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<13>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [12]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [13]),
    .O(\ex/aluOut [13])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<13>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [12]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [13]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [13]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [13])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<12>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [11]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [12]),
    .O(\ex/aluOut [12])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<12>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [11]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [12]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [12]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [12])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<11>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [10]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [11]),
    .O(\ex/aluOut [11])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<11>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [10]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [11]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [11]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [11])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<10>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [9]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [10]),
    .O(\ex/aluOut [10])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<10>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [9]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [10]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [10]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [10])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<9>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [8]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [9]),
    .O(\ex/aluOut [9])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<9>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [8]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [9]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [9]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [9])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<8>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [7]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [8]),
    .O(\ex/aluOut [8])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<8>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [7]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [8]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [8]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [8])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<7>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [6]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [7]),
    .O(\ex/aluOut [7])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<7>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [6]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [7]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [7]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [7])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<6>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [5]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [6]),
    .O(\ex/aluOut [6])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<6>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [5]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [6]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [6]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [6])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<5>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [4]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [5]),
    .O(\ex/aluOut [5])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<5>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [4]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [5]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [5]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [5])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<4>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [3]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [4]),
    .O(\ex/aluOut [4])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<4>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [3]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [4]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [4]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [4])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<3>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [2]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [3]),
    .O(\ex/aluOut [3])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<3>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [2]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [3]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [3]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [3])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<2>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [1]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [2]),
    .O(\ex/aluOut [2])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<2>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [1]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [2]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [2]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [2])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<1>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_cy [0]),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [1]),
    .O(\ex/aluOut [1])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<1>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_cy [0]),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [1]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [1]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [1])
  );
  X_XOR2   \ex/alUnit/Mmux_ALU_out7_rs_xor<0>  (
    .I0(\ex/alUnit/Mmux_ALU_out7_rs_AS_inv ),
    .I1(\ex/alUnit/Mmux_ALU_out7_rs_lut [0]),
    .O(\ex/aluOut [0])
  );
  X_MUX2   \ex/alUnit/Mmux_ALU_out7_rs_cy<0>  (
    .IB(\ex/alUnit/Mmux_ALU_out7_rs_AS_inv ),
    .IA(\ex/alUnit/Mmux_ALU_out7_rs_A [0]),
    .SEL(\ex/alUnit/Mmux_ALU_out7_rs_lut [0]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_cy [0])
  );
  X_MUX2   \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<15>  (
    .IB(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<14>_561 ),
    .IA(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi15 ),
    .SEL(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<15> ),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<15>_558 )
  );
  X_MUX2   \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<14>  (
    .IB(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<13>_564 ),
    .IA(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi14 ),
    .SEL(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<14> ),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<14>_561 )
  );
  X_MUX2   \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<13>  (
    .IB(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<12>_567 ),
    .IA(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi13 ),
    .SEL(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<13> ),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<13>_564 )
  );
  X_MUX2   \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<12>  (
    .IB(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<11>_570 ),
    .IA(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi12 ),
    .SEL(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<12> ),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<12>_567 )
  );
  X_MUX2   \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<11>  (
    .IB(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<10>_573 ),
    .IA(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi11_572 ),
    .SEL(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<11> ),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<11>_570 )
  );
  X_MUX2   \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<10>  (
    .IB(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<9>_576 ),
    .IA(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi10 ),
    .SEL(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<10> ),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<10>_573 )
  );
  X_MUX2   \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<9>  (
    .IB(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<8>_579 ),
    .IA(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi9 ),
    .SEL(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<9> ),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<9>_576 )
  );
  X_MUX2   \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<8>  (
    .IB(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<7>_582 ),
    .IA(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi8 ),
    .SEL(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<8> ),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<8>_579 )
  );
  X_MUX2   \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<7>  (
    .IB(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<6>_585 ),
    .IA(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi7 ),
    .SEL(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<7> ),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<7>_582 )
  );
  X_MUX2   \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<6>  (
    .IB(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<5>_588 ),
    .IA(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi6 ),
    .SEL(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<6> ),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<6>_585 )
  );
  X_MUX2   \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<5>  (
    .IB(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<4>_591 ),
    .IA(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi5 ),
    .SEL(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<5> ),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<5>_588 )
  );
  X_MUX2   \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<4>  (
    .IB(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<3>_594 ),
    .IA(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi4 ),
    .SEL(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<4> ),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<4>_591 )
  );
  X_MUX2   \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<3>  (
    .IB(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<2>_597 ),
    .IA(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi3 ),
    .SEL(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<3> ),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<3>_594 )
  );
  X_MUX2   \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<2>  (
    .IB(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<1>_600 ),
    .IA(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi2 ),
    .SEL(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<2> ),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<2>_597 )
  );
  X_MUX2   \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<1>  (
    .IB(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<0>_603 ),
    .IA(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi1_602 ),
    .SEL(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<1> ),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<1>_600 )
  );
  X_MUX2   \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<0>  (
    .IB(N0),
    .IA(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi ),
    .SEL(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<0> ),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<0>_603 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/wrDstM_4  (
    .CLK(clk_BUFGP),
    .I(\ex/wrDst [4]),
    .O(\ex/EX_M/wrDstM [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/wrDstM_3  (
    .CLK(clk_BUFGP),
    .I(\ex/wrDst [3]),
    .O(\ex/EX_M/wrDstM [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/wrDstM_2  (
    .CLK(clk_BUFGP),
    .I(\ex/wrDst [2]),
    .O(\ex/EX_M/wrDstM [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/wrDstM_1  (
    .CLK(clk_BUFGP),
    .I(\ex/wrDst [1]),
    .O(\ex/EX_M/wrDstM [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/wrDstM_0  (
    .CLK(clk_BUFGP),
    .I(\ex/wrDst [0]),
    .O(\ex/EX_M/wrDstM [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/rtM_31  (
    .CLK(clk_BUFGP),
    .I(\decode_stage/IDEX/rt_IDEX [31]),
    .O(\ex/EX_M/rtM [31]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/zFlagM  (
    .CLK(clk_BUFGP),
    .I(\ex/z ),
    .O(\ex/EX_M/zFlagM_195 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_31  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [31]),
    .O(\ex/EX_M/alu_outM[31] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_16  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [16]),
    .O(\ex/EX_M/alu_outM[16] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_15  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [15]),
    .O(\ex/EX_M/alu_outM[15] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_14  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [14]),
    .O(\ex/EX_M/alu_outM[14] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_13  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [13]),
    .O(\ex/EX_M/alu_outM[13] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_12  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [12]),
    .O(\ex/EX_M/alu_outM[12] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_11  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [11]),
    .O(\ex/EX_M/alu_outM[11] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_10  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [10]),
    .O(\ex/EX_M/alu_outM[10] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_9  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [9]),
    .O(\ex/EX_M/alu_outM[9] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_8  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [8]),
    .O(\ex/EX_M/alu_outM[8] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_7  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [7]),
    .O(\ex/EX_M/alu_outM[7] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_6  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [6]),
    .O(\ex/EX_M/alu_outM[6] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_5  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [5]),
    .O(\ex/EX_M/alu_outM[5] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_4  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [4]),
    .O(\ex/EX_M/alu_outM[4] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_3  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [3]),
    .O(\ex/EX_M/alu_outM[3] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_2  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [2]),
    .O(\ex/EX_M/alu_outM[2] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_1  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [1]),
    .O(\ex/EX_M/alu_outM[1] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/alu_outM_0  (
    .CLK(clk_BUFGP),
    .I(\ex/aluOut [0]),
    .O(\ex/EX_M/alu_outM[0] ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_31  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [31]),
    .O(\ex/EX_M/brnchDstM [31]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_30  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [30]),
    .O(\ex/EX_M/brnchDstM [30]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_29  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [29]),
    .O(\ex/EX_M/brnchDstM [29]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_28  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [28]),
    .O(\ex/EX_M/brnchDstM [28]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_27  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [27]),
    .O(\ex/EX_M/brnchDstM [27]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_26  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [26]),
    .O(\ex/EX_M/brnchDstM [26]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_25  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [25]),
    .O(\ex/EX_M/brnchDstM [25]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_24  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [24]),
    .O(\ex/EX_M/brnchDstM [24]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_23  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [23]),
    .O(\ex/EX_M/brnchDstM [23]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_22  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [22]),
    .O(\ex/EX_M/brnchDstM [22]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_21  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [21]),
    .O(\ex/EX_M/brnchDstM [21]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_20  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [20]),
    .O(\ex/EX_M/brnchDstM [20]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_19  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [19]),
    .O(\ex/EX_M/brnchDstM [19]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_18  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [18]),
    .O(\ex/EX_M/brnchDstM [18]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_17  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [17]),
    .O(\ex/EX_M/brnchDstM [17]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_16  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [16]),
    .O(\ex/EX_M/brnchDstM [16]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_15  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [15]),
    .O(\ex/EX_M/brnchDstM [15]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_14  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [14]),
    .O(\ex/EX_M/brnchDstM [14]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_13  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [13]),
    .O(\ex/EX_M/brnchDstM [13]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_12  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [12]),
    .O(\ex/EX_M/brnchDstM [12]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_11  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [11]),
    .O(\ex/EX_M/brnchDstM [11]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_10  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [10]),
    .O(\ex/EX_M/brnchDstM [10]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_9  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [9]),
    .O(\ex/EX_M/brnchDstM [9]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_8  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [8]),
    .O(\ex/EX_M/brnchDstM [8]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_7  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [7]),
    .O(\ex/EX_M/brnchDstM [7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_6  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [6]),
    .O(\ex/EX_M/brnchDstM [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_5  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [5]),
    .O(\ex/EX_M/brnchDstM [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_4  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [4]),
    .O(\ex/EX_M/brnchDstM [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_3  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [3]),
    .O(\ex/EX_M/brnchDstM [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_2  (
    .CLK(clk_BUFGP),
    .I(\ex/bAddr [2]),
    .O(\ex/EX_M/brnchDstM [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/memM_2  (
    .CLK(clk_BUFGP),
    .I(\decode_stage/IDEX/aluop [0]),
    .O(\ex/EX_M/memM [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/memM_1  (
    .CLK(clk_BUFGP),
    .I(\decode_stage/IDEX/mem_IDEX [1]),
    .O(\ex/EX_M/memM [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \ex/alu_control/alu_cntrl_0  (
    .I(\ex/alu_control/alu_cntrl[2]_funct[5]_mux_12_OUT<0> ),
    .CLK(\ex/alu_control/alu_op[1]_funct[5]_MUX_48_o ),
    .O(\ex/alu_control/alu_cntrl_0_316 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \ex/alu_control/alu_cntrl_1  (
    .I(\ex/alu_control/alu_cntrl[2]_funct[5]_mux_12_OUT<1> ),
    .CLK(\ex/alu_control/alu_op[1]_funct[5]_MUX_48_o ),
    .O(\ex/alu_control/alu_cntrl_1_317 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \ex/alu_control/alu_cntrl_2  (
    .I(\ex/alu_control/alu_cntrl[2]_funct[5]_mux_12_OUT<2>_639 ),
    .CLK(\ex/alu_control/alu_op[1]_funct[5]_MUX_48_o ),
    .O(\ex/alu_control/alu_cntrl_2_318 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT3 #(
    .INIT ( 8'h02 ))
  \decode_stage/cntrl/Mram__n0054111  (
    .ADR0(\fetch/if_id_state/instr_ifid[27] ),
    .ADR1(\fetch/if_id_state/instr_ifid[28] ),
    .ADR2(\fetch/if_id_state/instr_ifid[29] ),
    .O(\decode_stage/cntrl/Mram__n00541 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \decode_stage/cntrl/Mram__n005441  (
    .ADR0(\fetch/if_id_state/instr_ifid[28] ),
    .ADR1(\fetch/if_id_state/instr_ifid[29] ),
    .O(\decode_stage/cntrl/Mram__n00544 )
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \decode_stage/cntrl/Mram__n005461  (
    .ADR0(\fetch/if_id_state/instr_ifid[27] ),
    .ADR1(\fetch/if_id_state/instr_ifid[28] ),
    .ADR2(\fetch/if_id_state/instr_ifid[29] ),
    .O(\decode_stage/cntrl/Mram__n00546 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out321  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [9]),
    .ADR2(ex_mem_pc_9_IBUF_40),
    .O(\fetch/mux_out [9])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out311  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [8]),
    .ADR2(ex_mem_pc_8_IBUF_41),
    .O(\fetch/mux_out [8])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out301  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [7]),
    .ADR2(ex_mem_pc_7_IBUF_42),
    .O(\fetch/mux_out [7])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out291  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [6]),
    .ADR2(ex_mem_pc_6_IBUF_43),
    .O(\fetch/mux_out [6])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out281  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [5]),
    .ADR2(ex_mem_pc_5_IBUF_44),
    .O(\fetch/mux_out [5])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out271  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [4]),
    .ADR2(ex_mem_pc_4_IBUF_45),
    .O(\fetch/mux_out [4])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out261  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [3]),
    .ADR2(ex_mem_pc_3_IBUF_46),
    .O(\fetch/mux_out [3])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out251  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [31]),
    .ADR2(ex_mem_pc_31_IBUF_18),
    .O(\fetch/mux_out [31])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out241  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [30]),
    .ADR2(ex_mem_pc_30_IBUF_19),
    .O(\fetch/mux_out [30])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out231  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [2]),
    .ADR2(ex_mem_pc_2_IBUF_47),
    .O(\fetch/mux_out [2])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out221  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [29]),
    .ADR2(ex_mem_pc_29_IBUF_20),
    .O(\fetch/mux_out [29])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out211  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [28]),
    .ADR2(ex_mem_pc_28_IBUF_21),
    .O(\fetch/mux_out [28])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out201  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [27]),
    .ADR2(ex_mem_pc_27_IBUF_22),
    .O(\fetch/mux_out [27])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out191  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [26]),
    .ADR2(ex_mem_pc_26_IBUF_23),
    .O(\fetch/mux_out [26])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out181  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [25]),
    .ADR2(ex_mem_pc_25_IBUF_24),
    .O(\fetch/mux_out [25])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out171  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [24]),
    .ADR2(ex_mem_pc_24_IBUF_25),
    .O(\fetch/mux_out [24])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out161  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [23]),
    .ADR2(ex_mem_pc_23_IBUF_26),
    .O(\fetch/mux_out [23])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out151  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [22]),
    .ADR2(ex_mem_pc_22_IBUF_27),
    .O(\fetch/mux_out [22])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out141  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [21]),
    .ADR2(ex_mem_pc_21_IBUF_28),
    .O(\fetch/mux_out [21])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out131  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [20]),
    .ADR2(ex_mem_pc_20_IBUF_29),
    .O(\fetch/mux_out [20])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out121  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/instr_pc/pc_out [1]),
    .ADR2(ex_mem_pc_1_IBUF_48),
    .O(\fetch/mux_out [1])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out111  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [19]),
    .ADR2(ex_mem_pc_19_IBUF_30),
    .O(\fetch/mux_out [19])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out101  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [18]),
    .ADR2(ex_mem_pc_18_IBUF_31),
    .O(\fetch/mux_out [18])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out91  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [17]),
    .ADR2(ex_mem_pc_17_IBUF_32),
    .O(\fetch/mux_out [17])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out81  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [16]),
    .ADR2(ex_mem_pc_16_IBUF_33),
    .O(\fetch/mux_out [16])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out71  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [15]),
    .ADR2(ex_mem_pc_15_IBUF_34),
    .O(\fetch/mux_out [15])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out61  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [14]),
    .ADR2(ex_mem_pc_14_IBUF_35),
    .O(\fetch/mux_out [14])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out51  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [13]),
    .ADR2(ex_mem_pc_13_IBUF_36),
    .O(\fetch/mux_out [13])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out41  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [12]),
    .ADR2(ex_mem_pc_12_IBUF_37),
    .O(\fetch/mux_out [12])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out31  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [11]),
    .ADR2(ex_mem_pc_11_IBUF_38),
    .O(\fetch/mux_out [11])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out21  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/adder_out [10]),
    .ADR2(ex_mem_pc_10_IBUF_39),
    .O(\fetch/mux_out [10])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \fetch/pc_mux/Mmux_out11  (
    .ADR0(pcSrc_IBUF_51),
    .ADR1(\fetch/instr_pc/pc_out [0]),
    .ADR2(ex_mem_pc_0_IBUF_49),
    .O(\fetch/mux_out [0])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \ex/alu_Src/Mmux_out321  (
    .ADR0(\decode_stage/IDEX/alusrc_134 ),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [9]),
    .O(\ex/aluSrc[9] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \ex/alu_Src/Mmux_out311  (
    .ADR0(\decode_stage/IDEX/alusrc_134 ),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [8]),
    .O(\ex/aluSrc[8] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \ex/alu_Src/Mmux_out301  (
    .ADR0(\decode_stage/IDEX/alusrc_134 ),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [7]),
    .O(\ex/aluSrc[7] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \ex/alu_Src/Mmux_out291  (
    .ADR0(\decode_stage/IDEX/alusrc_134 ),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [6]),
    .O(\ex/aluSrc[6] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \ex/alu_Src/Mmux_out281  (
    .ADR0(\decode_stage/IDEX/alusrc_134 ),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [5]),
    .O(\ex/aluSrc[5] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \ex/alu_Src/Mmux_out271  (
    .ADR0(\decode_stage/IDEX/alusrc_134 ),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [4]),
    .O(\ex/aluSrc[4] )
  );
  X_LUT3 #(
    .INIT ( 8'hAC ))
  \ex/alu_Src/Mmux_out261  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [3]),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/alusrc_134 ),
    .O(\ex/aluSrc[3] )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \ex/alu_Src/Mmux_out251  (
    .ADR0(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR1(\decode_stage/IDEX/alusrc_134 ),
    .O(\ex/aluSrc[24] )
  );
  X_LUT3 #(
    .INIT ( 8'hAC ))
  \ex/alu_Src/Mmux_out231  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [2]),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/alusrc_134 ),
    .O(\ex/aluSrc[2] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \ex/alu_Src/Mmux_out161  (
    .ADR0(\decode_stage/IDEX/alusrc_134 ),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [16]),
    .O(\ex/aluSrc[16] )
  );
  X_LUT3 #(
    .INIT ( 8'hAC ))
  \ex/alu_Src/Mmux_out121  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [1]),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/alusrc_134 ),
    .O(\ex/aluSrc[1] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \ex/alu_Src/Mmux_out71  (
    .ADR0(\decode_stage/IDEX/alusrc_134 ),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [15]),
    .O(\ex/aluSrc[15] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \ex/alu_Src/Mmux_out61  (
    .ADR0(\decode_stage/IDEX/alusrc_134 ),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [14]),
    .O(\ex/aluSrc[14] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \ex/alu_Src/Mmux_out51  (
    .ADR0(\decode_stage/IDEX/alusrc_134 ),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [13]),
    .O(\ex/aluSrc[13] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \ex/alu_Src/Mmux_out41  (
    .ADR0(\decode_stage/IDEX/alusrc_134 ),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [12]),
    .O(\ex/aluSrc[12] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \ex/alu_Src/Mmux_out31  (
    .ADR0(\decode_stage/IDEX/alusrc_134 ),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [11]),
    .O(\ex/aluSrc[11] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \ex/alu_Src/Mmux_out21  (
    .ADR0(\decode_stage/IDEX/alusrc_134 ),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [10]),
    .O(\ex/aluSrc[10] )
  );
  X_LUT3 #(
    .INIT ( 8'hAC ))
  \ex/alu_Src/Mmux_out11  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [0]),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/alusrc_134 ),
    .O(\ex/aluSrc[0] )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \ex/wrDestination/Mmux_out51  (
    .ADR0(\decode_stage/IDEX/regdst_80 ),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [15]),
    .O(\ex/wrDst [4])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \ex/wrDestination/Mmux_out41  (
    .ADR0(\decode_stage/IDEX/regdst_80 ),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [14]),
    .O(\ex/wrDst [3])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \ex/wrDestination/Mmux_out31  (
    .ADR0(\decode_stage/IDEX/regdst_80 ),
    .ADR1(\decode_stage/IDEX/instr20_16_IDEX [2]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [13]),
    .O(\ex/wrDst [2])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \ex/wrDestination/Mmux_out21  (
    .ADR0(\decode_stage/IDEX/regdst_80 ),
    .ADR1(\decode_stage/IDEX/instr20_16_IDEX [1]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [12]),
    .O(\ex/wrDst [1])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \ex/wrDestination/Mmux_out11  (
    .ADR0(\decode_stage/IDEX/regdst_80 ),
    .ADR1(\decode_stage/IDEX/instr20_16_IDEX [0]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [11]),
    .O(\ex/wrDst [0])
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \decode_stage/sign_extend<23><31>11  (
    .ADR0(\fetch/if_id_state/instr_ifid[29] ),
    .ADR1(\fetch/if_id_state/instr_ifid[28] ),
    .ADR2(\fetch/if_id_state/instr_ifid[27] ),
    .O(\decode_stage/cntrl/Mram__n00545 )
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A91  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[16] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [17])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A81  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[16] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [16])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A71  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[15] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [15])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A61  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[14] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [14])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A51  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[13] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [13])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A41  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[12] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [12])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A321  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[9] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [9])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A311  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[8] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [8])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A301  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[7] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [7])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A31  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[11] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [11])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A291  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[6] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [6])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A281  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[5] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [5])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A271  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[4] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [4])
  );
  X_LUT5 #(
    .INIT ( 32'h3D447E00 ))
  \ex/alUnit/Mmux_ALU_out7_A261  (
    .ADR0(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR1(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR2(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR4(\ex/aluSrc[3] ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [3])
  );
  X_LUT5 #(
    .INIT ( 32'h3D447E00 ))
  \ex/alUnit/Mmux_ALU_out7_A231  (
    .ADR0(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR1(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR2(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR4(\ex/aluSrc[2] ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [2])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A21  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[10] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [10])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A161  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[16] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [23])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A151  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[16] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [22])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A141  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[16] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [21])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A131  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[16] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [20])
  );
  X_LUT5 #(
    .INIT ( 32'h3D447E00 ))
  \ex/alUnit/Mmux_ALU_out7_A121  (
    .ADR0(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR1(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR2(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR4(\ex/aluSrc[1] ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [1])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A111  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[16] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [19])
  );
  X_LUT5 #(
    .INIT ( 32'h282A7AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A101  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[16] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [18])
  );
  X_LUT6 #(
    .INIT ( 64'h227A8AA8EE7A8AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A11  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/aluSrc[0] ),
    .ADR3(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR4(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR5(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<15>_558 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [0])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \ex/alUnit/Mmux_ALU_out7_rs_AS_inv2  (
    .ADR0(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_AS_inv )
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \decode_stage/sign_extend<23><31>1  (
    .ADR0(\fetch/if_id_state/instr_ifid[8] ),
    .ADR1(\fetch/if_id_state/instr_ifid[9] ),
    .ADR2(\fetch/if_id_state/instr_ifid[7] ),
    .ADR3(\fetch/if_id_state/instr_ifid[6] ),
    .ADR4(\fetch/if_id_state/instr_ifid[5] ),
    .ADR5(\fetch/if_id_state/instr_ifid[4] ),
    .O(\decode_stage/sign_extend<23> [31])
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \decode_stage/sign_extend<23><31>2  (
    .ADR0(\fetch/if_id_state/instr_ifid[31] ),
    .ADR1(\fetch/if_id_state/instr_ifid[3] ),
    .ADR2(\fetch/if_id_state/instr_ifid[2] ),
    .ADR3(\fetch/if_id_state/instr_ifid[26] ),
    .ADR4(\fetch/if_id_state/instr_ifid[23] ),
    .ADR5(\fetch/if_id_state/instr_ifid[22] ),
    .O(\decode_stage/sign_extend<23><31>1_644 )
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \decode_stage/sign_extend<23><31>3  (
    .ADR0(\fetch/if_id_state/instr_ifid[1] ),
    .ADR1(\fetch/if_id_state/instr_ifid[21] ),
    .ADR2(\fetch/if_id_state/instr_ifid[18] ),
    .ADR3(\fetch/if_id_state/instr_ifid[17] ),
    .ADR4(\fetch/if_id_state/instr_ifid[16] ),
    .ADR5(\fetch/if_id_state/instr_ifid[15] ),
    .O(\decode_stage/sign_extend<23><31>2_645 )
  );
  X_LUT5 #(
    .INIT ( 32'h00000001 ))
  \decode_stage/sign_extend<23><31>4  (
    .ADR0(\fetch/if_id_state/instr_ifid[13] ),
    .ADR1(\fetch/if_id_state/instr_ifid[14] ),
    .ADR2(\fetch/if_id_state/instr_ifid[12] ),
    .ADR3(\fetch/if_id_state/instr_ifid[11] ),
    .ADR4(\fetch/if_id_state/instr_ifid[10] ),
    .O(\decode_stage/sign_extend<23><31>3_646 )
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \decode_stage/sign_extend<23><31>5  (
    .ADR0(\decode_stage/cntrl/Mram__n00545 ),
    .ADR1(\fetch/if_id_state/instr_ifid[0] ),
    .ADR2(\decode_stage/sign_extend<23> [31]),
    .ADR3(\decode_stage/sign_extend<23><31>1_644 ),
    .ADR4(\decode_stage/sign_extend<23><31>2_645 ),
    .ADR5(\decode_stage/sign_extend<23><31>3_646 ),
    .O(\decode_stage/sign_extend [23])
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \ex/alUnit/zero<31>1  (
    .ADR0(\ex/aluOut [1]),
    .ADR1(\ex/aluOut [0]),
    .ADR2(\ex/aluOut [2]),
    .ADR3(\ex/aluOut [3]),
    .ADR4(\ex/aluOut [4]),
    .ADR5(\ex/aluOut [5]),
    .O(\ex/alUnit/zero [31])
  );
  X_LUT5 #(
    .INIT ( 32'h00010000 ))
  \ex/alUnit/zero<31>2  (
    .ADR0(\ex/aluOut [12]),
    .ADR1(\ex/aluOut [13]),
    .ADR2(\ex/aluOut [21]),
    .ADR3(\ex/aluOut [30]),
    .ADR4(\ex/alUnit/zero [31]),
    .O(\ex/alUnit/zero<31>1_648 )
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \ex/alUnit/zero<31>3  (
    .ADR0(\ex/aluOut [23]),
    .ADR1(\ex/aluOut [22]),
    .ADR2(\ex/aluOut [24]),
    .ADR3(\ex/aluOut [25]),
    .ADR4(\ex/aluOut [26]),
    .ADR5(\ex/aluOut [27]),
    .O(\ex/alUnit/zero<31>2_649 )
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \ex/alUnit/zero<31>4  (
    .ADR0(\ex/aluOut [6]),
    .ADR1(\ex/aluOut [7]),
    .ADR2(\ex/aluOut [8]),
    .O(\ex/alUnit/zero<31>3_650 )
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \ex/alUnit/zero<31>6  (
    .ADR0(\ex/aluOut [15]),
    .ADR1(\ex/aluOut [14]),
    .ADR2(\ex/aluOut [16]),
    .ADR3(\ex/aluOut [17]),
    .ADR4(\ex/aluOut [18]),
    .ADR5(\ex/aluOut [19]),
    .O(\ex/alUnit/zero<31>5 )
  );
  X_LUT2 #(
    .INIT ( 4'hB ))
  \ex/alu_control/alu_cntrl[2]_funct[5]_mux_12_OUT<2>_SW0  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [4]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [5]),
    .O(N4)
  );
  X_LUT6 #(
    .INIT ( 64'h4444444444444464 ))
  \ex/alu_control/alu_cntrl[2]_funct[5]_mux_12_OUT<2>  (
    .ADR0(\decode_stage/IDEX/regdst_80 ),
    .ADR1(\decode_stage/IDEX/aluop [0]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [1]),
    .ADR3(\decode_stage/IDEX/signExt_IDEX [0]),
    .ADR4(\decode_stage/IDEX/signExt_IDEX [2]),
    .ADR5(N4),
    .O(\ex/alu_control/alu_cntrl[2]_funct[5]_mux_12_OUT<2>_639 )
  );
  X_LUT3 #(
    .INIT ( 8'h02 ))
  \ex/alu_control/Mmux_alu_cntrl[2]_funct[5]_mux_12_OUT<1>1_SW0  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [5]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [2]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [4]),
    .O(N6)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFF4044FFFFFFFF ))
  \ex/alu_control/Mmux_alu_cntrl[2]_funct[5]_mux_12_OUT<1>1  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [0]),
    .ADR1(N6),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [1]),
    .ADR3(\decode_stage/IDEX/signExt_IDEX [3]),
    .ADR4(\decode_stage/IDEX/aluop [0]),
    .ADR5(\decode_stage/IDEX/regdst_80 ),
    .O(\ex/alu_control/alu_cntrl[2]_funct[5]_mux_12_OUT<1> )
  );
  X_LUT3 #(
    .INIT ( 8'hEF ))
  \ex/alu_control/Mmux_alu_op[1]_funct[5]_MUX_48_o1_SW0  (
    .ADR0(\decode_stage/IDEX/aluop [0]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [4]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [5]),
    .O(N8)
  );
  X_LUT6 #(
    .INIT ( 64'h01010051FFFFFFFF ))
  \ex/alu_control/Mmux_alu_op[1]_funct[5]_MUX_48_o1  (
    .ADR0(N8),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [0]),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [2]),
    .ADR3(\decode_stage/IDEX/signExt_IDEX [3]),
    .ADR4(\decode_stage/IDEX/signExt_IDEX [1]),
    .ADR5(\decode_stage/IDEX/regdst_80 ),
    .O(\ex/alu_control/alu_op[1]_funct[5]_MUX_48_o )
  );
  X_LUT3 #(
    .INIT ( 8'hEF ))
  \ex/alu_control/Mmux_alu_cntrl[2]_funct[5]_mux_12_OUT<0>1_SW0  (
    .ADR0(\decode_stage/IDEX/aluop [0]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [4]),
    .ADR2(\decode_stage/IDEX/regdst_80 ),
    .O(N10)
  );
  X_LUT6 #(
    .INIT ( 64'h0000020000200000 ))
  \ex/alu_control/Mmux_alu_cntrl[2]_funct[5]_mux_12_OUT<0>1  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [5]),
    .ADR1(N10),
    .ADR2(\decode_stage/IDEX/signExt_IDEX [0]),
    .ADR3(\decode_stage/IDEX/signExt_IDEX [3]),
    .ADR4(\decode_stage/IDEX/signExt_IDEX [2]),
    .ADR5(\decode_stage/IDEX/signExt_IDEX [1]),
    .O(\ex/alu_control/alu_cntrl[2]_funct[5]_mux_12_OUT<0> )
  );
  X_BUF   ex_mem_pc_31_IBUF (
    .I(ex_mem_pc[31]),
    .O(ex_mem_pc_31_IBUF_18)
  );
  X_BUF   ex_mem_pc_30_IBUF (
    .I(ex_mem_pc[30]),
    .O(ex_mem_pc_30_IBUF_19)
  );
  X_BUF   ex_mem_pc_29_IBUF (
    .I(ex_mem_pc[29]),
    .O(ex_mem_pc_29_IBUF_20)
  );
  X_BUF   ex_mem_pc_28_IBUF (
    .I(ex_mem_pc[28]),
    .O(ex_mem_pc_28_IBUF_21)
  );
  X_BUF   ex_mem_pc_27_IBUF (
    .I(ex_mem_pc[27]),
    .O(ex_mem_pc_27_IBUF_22)
  );
  X_BUF   ex_mem_pc_26_IBUF (
    .I(ex_mem_pc[26]),
    .O(ex_mem_pc_26_IBUF_23)
  );
  X_BUF   ex_mem_pc_25_IBUF (
    .I(ex_mem_pc[25]),
    .O(ex_mem_pc_25_IBUF_24)
  );
  X_BUF   ex_mem_pc_24_IBUF (
    .I(ex_mem_pc[24]),
    .O(ex_mem_pc_24_IBUF_25)
  );
  X_BUF   ex_mem_pc_23_IBUF (
    .I(ex_mem_pc[23]),
    .O(ex_mem_pc_23_IBUF_26)
  );
  X_BUF   ex_mem_pc_22_IBUF (
    .I(ex_mem_pc[22]),
    .O(ex_mem_pc_22_IBUF_27)
  );
  X_BUF   ex_mem_pc_21_IBUF (
    .I(ex_mem_pc[21]),
    .O(ex_mem_pc_21_IBUF_28)
  );
  X_BUF   ex_mem_pc_20_IBUF (
    .I(ex_mem_pc[20]),
    .O(ex_mem_pc_20_IBUF_29)
  );
  X_BUF   ex_mem_pc_19_IBUF (
    .I(ex_mem_pc[19]),
    .O(ex_mem_pc_19_IBUF_30)
  );
  X_BUF   ex_mem_pc_18_IBUF (
    .I(ex_mem_pc[18]),
    .O(ex_mem_pc_18_IBUF_31)
  );
  X_BUF   ex_mem_pc_17_IBUF (
    .I(ex_mem_pc[17]),
    .O(ex_mem_pc_17_IBUF_32)
  );
  X_BUF   ex_mem_pc_16_IBUF (
    .I(ex_mem_pc[16]),
    .O(ex_mem_pc_16_IBUF_33)
  );
  X_BUF   ex_mem_pc_15_IBUF (
    .I(ex_mem_pc[15]),
    .O(ex_mem_pc_15_IBUF_34)
  );
  X_BUF   ex_mem_pc_14_IBUF (
    .I(ex_mem_pc[14]),
    .O(ex_mem_pc_14_IBUF_35)
  );
  X_BUF   ex_mem_pc_13_IBUF (
    .I(ex_mem_pc[13]),
    .O(ex_mem_pc_13_IBUF_36)
  );
  X_BUF   ex_mem_pc_12_IBUF (
    .I(ex_mem_pc[12]),
    .O(ex_mem_pc_12_IBUF_37)
  );
  X_BUF   ex_mem_pc_11_IBUF (
    .I(ex_mem_pc[11]),
    .O(ex_mem_pc_11_IBUF_38)
  );
  X_BUF   ex_mem_pc_10_IBUF (
    .I(ex_mem_pc[10]),
    .O(ex_mem_pc_10_IBUF_39)
  );
  X_BUF   ex_mem_pc_9_IBUF (
    .I(ex_mem_pc[9]),
    .O(ex_mem_pc_9_IBUF_40)
  );
  X_BUF   ex_mem_pc_8_IBUF (
    .I(ex_mem_pc[8]),
    .O(ex_mem_pc_8_IBUF_41)
  );
  X_BUF   ex_mem_pc_7_IBUF (
    .I(ex_mem_pc[7]),
    .O(ex_mem_pc_7_IBUF_42)
  );
  X_BUF   ex_mem_pc_6_IBUF (
    .I(ex_mem_pc[6]),
    .O(ex_mem_pc_6_IBUF_43)
  );
  X_BUF   ex_mem_pc_5_IBUF (
    .I(ex_mem_pc[5]),
    .O(ex_mem_pc_5_IBUF_44)
  );
  X_BUF   ex_mem_pc_4_IBUF (
    .I(ex_mem_pc[4]),
    .O(ex_mem_pc_4_IBUF_45)
  );
  X_BUF   ex_mem_pc_3_IBUF (
    .I(ex_mem_pc[3]),
    .O(ex_mem_pc_3_IBUF_46)
  );
  X_BUF   ex_mem_pc_2_IBUF (
    .I(ex_mem_pc[2]),
    .O(ex_mem_pc_2_IBUF_47)
  );
  X_BUF   ex_mem_pc_1_IBUF (
    .I(ex_mem_pc[1]),
    .O(ex_mem_pc_1_IBUF_48)
  );
  X_BUF   ex_mem_pc_0_IBUF (
    .I(ex_mem_pc[0]),
    .O(ex_mem_pc_0_IBUF_49)
  );
  X_BUF   pcSrc_IBUF (
    .I(pcSrc),
    .O(pcSrc_IBUF_51)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<3>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [3]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<3>_rt_797 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<4>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [4]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<4>_rt_798 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<5>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [5]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<5>_rt_799 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<6>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [6]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<6>_rt_800 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<7>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [7]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<7>_rt_801 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<8>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [8]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<8>_rt_802 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<9>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [9]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<9>_rt_803 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<10>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [10]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<10>_rt_804 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<11>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [11]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<11>_rt_805 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<12>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [12]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<12>_rt_806 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<13>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [13]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<13>_rt_807 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<14>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [14]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<14>_rt_808 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<15>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [15]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<15>_rt_809 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<16>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [16]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<16>_rt_810 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<17>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [17]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<17>_rt_811 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<18>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [18]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<18>_rt_812 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<19>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [19]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<19>_rt_813 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<20>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [20]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<20>_rt_814 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<21>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [21]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<21>_rt_815 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<22>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [22]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<22>_rt_816 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<23>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [23]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<23>_rt_817 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<24>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [24]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<24>_rt_818 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<25>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [25]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<25>_rt_819 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<26>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [26]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<26>_rt_820 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<27>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [27]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<27>_rt_821 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<28>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [28]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<28>_rt_822 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<29>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [29]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<29>_rt_823 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \fetch/pc_adder/Madd_pc_4_cy<30>_rt  (
    .ADR0(\fetch/instr_pc/pc_out [30]),
    .O(\fetch/pc_adder/Madd_pc_4_cy<30>_rt_824 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \ex/bAdder/Madd_bdst_cy<26>_rt  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [26]),
    .O(\ex/bAdder/Madd_bdst_cy<26>_rt_825 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \ex/bAdder/Madd_bdst_cy<27>_rt  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [27]),
    .O(\ex/bAdder/Madd_bdst_cy<27>_rt_826 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \ex/bAdder/Madd_bdst_cy<28>_rt  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [28]),
    .O(\ex/bAdder/Madd_bdst_cy<28>_rt_827 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \ex/bAdder/Madd_bdst_cy<29>_rt  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [29]),
    .O(\ex/bAdder/Madd_bdst_cy<29>_rt_828 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \ex/bAdder/Madd_bdst_cy<30>_rt  (
    .ADR0(\decode_stage/IDEX/pc_4_IDEX [30]),
    .O(\ex/bAdder/Madd_bdst_cy<30>_rt_829 ),
    .ADR1(GND)
  );
  X_LUT5 #(
    .INIT ( 32'h88F0110F ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<0>1  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [1]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [0]),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR3(\decode_stage/IDEX/alusrc_134 ),
    .ADR4(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<0> )
  );
  X_LUT5 #(
    .INIT ( 32'h770F0000 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi1  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [0]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [1]),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR3(\decode_stage/IDEX/alusrc_134 ),
    .ADR4(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi )
  );
  X_LUT5 #(
    .INIT ( 32'h88F0110F ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<1>1  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [3]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [2]),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR3(\decode_stage/IDEX/alusrc_134 ),
    .ADR4(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<1> )
  );
  X_LUT5 #(
    .INIT ( 32'h770F0000 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi11  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [3]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [2]),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR3(\decode_stage/IDEX/alusrc_134 ),
    .ADR4(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi1_602 )
  );
  X_LUT5 #(
    .INIT ( 32'h88F0110F ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<2>1  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [5]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [4]),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR3(\decode_stage/IDEX/alusrc_134 ),
    .ADR4(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<2> )
  );
  X_LUT5 #(
    .INIT ( 32'h770F0000 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi21  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [5]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [4]),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR3(\decode_stage/IDEX/alusrc_134 ),
    .ADR4(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi2 )
  );
  X_LUT5 #(
    .INIT ( 32'h88F0110F ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<3>1  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [7]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [6]),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR3(\decode_stage/IDEX/alusrc_134 ),
    .ADR4(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<3> )
  );
  X_LUT5 #(
    .INIT ( 32'h770F0000 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi31  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [7]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [6]),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR3(\decode_stage/IDEX/alusrc_134 ),
    .ADR4(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi3 )
  );
  X_LUT5 #(
    .INIT ( 32'h88F0110F ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<4>1  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [9]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [8]),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR3(\decode_stage/IDEX/alusrc_134 ),
    .ADR4(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<4> )
  );
  X_LUT5 #(
    .INIT ( 32'h770F0000 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi41  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [9]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [8]),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR3(\decode_stage/IDEX/alusrc_134 ),
    .ADR4(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi4 )
  );
  X_LUT5 #(
    .INIT ( 32'h88F0110F ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<5>1  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [10]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [11]),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR3(\decode_stage/IDEX/alusrc_134 ),
    .ADR4(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<5> )
  );
  X_LUT5 #(
    .INIT ( 32'h770F0000 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi51  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [10]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [11]),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR3(\decode_stage/IDEX/alusrc_134 ),
    .ADR4(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi5 )
  );
  X_LUT5 #(
    .INIT ( 32'h88F0110F ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<6>1  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [13]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [12]),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR3(\decode_stage/IDEX/alusrc_134 ),
    .ADR4(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<6> )
  );
  X_LUT5 #(
    .INIT ( 32'h770F0000 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi61  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [13]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [12]),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR3(\decode_stage/IDEX/alusrc_134 ),
    .ADR4(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi6 )
  );
  X_LUT5 #(
    .INIT ( 32'h88F0110F ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<7>1  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [15]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [14]),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR3(\decode_stage/IDEX/alusrc_134 ),
    .ADR4(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<7> )
  );
  X_LUT5 #(
    .INIT ( 32'h770F0000 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi71  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [15]),
    .ADR1(\decode_stage/IDEX/signExt_IDEX [14]),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR3(\decode_stage/IDEX/alusrc_134 ),
    .ADR4(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi7 )
  );
  X_LUT4 #(
    .INIT ( 16'hAC53 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<8>1  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [16]),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/alusrc_134 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<8> )
  );
  X_LUT4 #(
    .INIT ( 16'h5300 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi81  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [16]),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/alusrc_134 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi8 )
  );
  X_LUT4 #(
    .INIT ( 16'hAC53 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<9>1  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [16]),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/alusrc_134 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<9> )
  );
  X_LUT4 #(
    .INIT ( 16'h5300 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi91  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [16]),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/alusrc_134 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi9 )
  );
  X_LUT4 #(
    .INIT ( 16'hAC53 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<10>1  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [16]),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/alusrc_134 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<10> )
  );
  X_LUT4 #(
    .INIT ( 16'h5300 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi101  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [16]),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/alusrc_134 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi10 )
  );
  X_LUT4 #(
    .INIT ( 16'hAC53 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<11>1  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [16]),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/alusrc_134 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<11> )
  );
  X_LUT4 #(
    .INIT ( 16'h5300 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi111  (
    .ADR0(\decode_stage/IDEX/signExt_IDEX [16]),
    .ADR1(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR2(\decode_stage/IDEX/alusrc_134 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi11_572 )
  );
  X_LUT3 #(
    .INIT ( 8'h65 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<12>1  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\decode_stage/IDEX/alusrc_134 ),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<12> )
  );
  X_LUT3 #(
    .INIT ( 8'h8A ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi121  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\decode_stage/IDEX/alusrc_134 ),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi12 )
  );
  X_LUT3 #(
    .INIT ( 8'h65 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<13>1  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\decode_stage/IDEX/alusrc_134 ),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<13> )
  );
  X_LUT3 #(
    .INIT ( 8'h8A ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi131  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\decode_stage/IDEX/alusrc_134 ),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi13 )
  );
  X_LUT3 #(
    .INIT ( 8'h65 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<14>1  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\decode_stage/IDEX/alusrc_134 ),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<14> )
  );
  X_LUT3 #(
    .INIT ( 8'h8A ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi141  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\decode_stage/IDEX/alusrc_134 ),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi14 )
  );
  X_LUT3 #(
    .INIT ( 8'h65 ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<15>1  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\decode_stage/IDEX/alusrc_134 ),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lut<15> )
  );
  X_LUT3 #(
    .INIT ( 8'h8A ))
  \ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi151  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\decode_stage/IDEX/alusrc_134 ),
    .ADR2(\decode_stage/IDEX/rt_IDEX [31]),
    .O(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_lutdi15 )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \ex/alUnit/zero<31>5_SW0  (
    .ADR0(\ex/aluOut [9]),
    .ADR1(\ex/aluOut [10]),
    .ADR2(\ex/aluOut [11]),
    .ADR3(\ex/aluOut [20]),
    .ADR4(\ex/aluOut [28]),
    .ADR5(\ex/aluOut [29]),
    .O(N12)
  );
  X_LUT6 #(
    .INIT ( 64'h0400000000000000 ))
  \ex/alUnit/zero<31>7  (
    .ADR0(\ex/aluOut [31]),
    .ADR1(\ex/alUnit/zero<31>3_650 ),
    .ADR2(N12),
    .ADR3(\ex/alUnit/zero<31>5 ),
    .ADR4(\ex/alUnit/zero<31>1_648 ),
    .ADR5(\ex/alUnit/zero<31>2_649 ),
    .O(\ex/z )
  );
  X_LUT5 #(
    .INIT ( 32'h77888787 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<0>  (
    .ADR0(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR1(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR2(N14),
    .ADR3(N15),
    .ADR4(\ex/alUnit/Mcompar_A[31]_B[31]_LessThan_11_o_cy<15>_558 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [0])
  );
  X_LUT5 #(
    .INIT ( 32'h5C31215F ))
  \ex/alUnit/Mmux_ALU_out7_A11_SW0  (
    .ADR0(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR4(\ex/aluSrc[0] ),
    .O(N14)
  );
  X_LUT5 #(
    .INIT ( 32'h234E5E20 ))
  \ex/alUnit/Mmux_ALU_out7_A11_SW1  (
    .ADR0(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR4(\ex/aluSrc[0] ),
    .O(N15)
  );
  X_LUT4 #(
    .INIT ( 16'hAAA8 ))
  \decode_stage/regy/Mmux_rd1251  (
    .ADR0(\decode_stage/regy/ra1[4]_read_port_3_OUT<1> ),
    .ADR1(\fetch/if_id_state/instr_ifid[21] ),
    .ADR2(\fetch/if_id_state/instr_ifid[23] ),
    .ADR3(\fetch/if_id_state/instr_ifid[22] ),
    .O(\decode_stage/rs [31])
  );
  X_LUT4 #(
    .INIT ( 16'hAAA8 ))
  \decode_stage/regy/Mmux_rd2251  (
    .ADR0(\decode_stage/regy/ra2[4]_read_port_6_OUT<1> ),
    .ADR1(\fetch/if_id_state/instr_ifid[16] ),
    .ADR2(\fetch/if_id_state/instr_ifid[18] ),
    .ADR3(\fetch/if_id_state/instr_ifid[17] ),
    .O(\decode_stage/rt [31])
  );
  X_LUT6 #(
    .INIT ( 64'h569A95665696666A ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<31>  (
    .ADR0(\ex/alUnit/Mmux_ALU_out7_rs_B[24] ),
    .ADR1(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR2(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR3(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR5(\ex/aluSrc[24] ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [31])
  );
  X_LUT6 #(
    .INIT ( 64'h0C200C200C0C2020 ))
  \ex/alUnit/Mmux_ALU_out7_B81  (
    .ADR0(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\decode_stage/IDEX/signExt_IDEX [16]),
    .ADR4(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR5(\decode_stage/IDEX/alusrc_134 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_B[16] )
  );
  X_LUT5 #(
    .INIT ( 32'h20442020 ))
  \ex/alUnit/Mmux_ALU_out7_B171  (
    .ADR0(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR3(\decode_stage/IDEX/alusrc_134 ),
    .ADR4(\decode_stage/IDEX/rt_IDEX [31]),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_B[24] )
  );
  X_LUT6 #(
    .INIT ( 64'h2A2A272AA8A88AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A171  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR3(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR4(\decode_stage/IDEX/alusrc_134 ),
    .ADR5(\ex/alu_control/alu_cntrl_0_316 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [24])
  );
  X_LUT6 #(
    .INIT ( 64'h2A2A272AA8A88AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A181  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR3(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR4(\decode_stage/IDEX/alusrc_134 ),
    .ADR5(\ex/alu_control/alu_cntrl_0_316 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [25])
  );
  X_LUT6 #(
    .INIT ( 64'h2A2A272AA8A88AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A191  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR3(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR4(\decode_stage/IDEX/alusrc_134 ),
    .ADR5(\ex/alu_control/alu_cntrl_0_316 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [26])
  );
  X_LUT6 #(
    .INIT ( 64'h2A2A272AA8A88AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A201  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR3(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR4(\decode_stage/IDEX/alusrc_134 ),
    .ADR5(\ex/alu_control/alu_cntrl_0_316 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [27])
  );
  X_LUT6 #(
    .INIT ( 64'h2A2A272AA8A88AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A211  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR3(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR4(\decode_stage/IDEX/alusrc_134 ),
    .ADR5(\ex/alu_control/alu_cntrl_0_316 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [28])
  );
  X_LUT6 #(
    .INIT ( 64'h2A2A272AA8A88AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A221  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR3(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR4(\decode_stage/IDEX/alusrc_134 ),
    .ADR5(\ex/alu_control/alu_cntrl_0_316 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [29])
  );
  X_LUT6 #(
    .INIT ( 64'h2A2A272AA8A88AA8 ))
  \ex/alUnit/Mmux_ALU_out7_A241  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR3(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR4(\decode_stage/IDEX/alusrc_134 ),
    .ADR5(\ex/alu_control/alu_cntrl_0_316 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_A [30])
  );
  X_LUT5 #(
    .INIT ( 32'hADD4D6A8 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<1>  (
    .ADR0(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR1(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR2(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR4(\ex/aluSrc[1] ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [1])
  );
  X_LUT5 #(
    .INIT ( 32'hADD4D6A8 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<2>  (
    .ADR0(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR1(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR2(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR4(\ex/aluSrc[2] ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [2])
  );
  X_LUT5 #(
    .INIT ( 32'hADD4D6A8 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<3>  (
    .ADR0(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR1(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR2(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR4(\ex/aluSrc[3] ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [3])
  );
  X_LUT5 #(
    .INIT ( 32'hE8D676A8 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<4>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[4] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [4])
  );
  X_LUT5 #(
    .INIT ( 32'hE8D676A8 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<5>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[5] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [5])
  );
  X_LUT5 #(
    .INIT ( 32'hE8D676A8 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<6>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[6] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [6])
  );
  X_LUT5 #(
    .INIT ( 32'hE8D676A8 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<7>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[7] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [7])
  );
  X_LUT6 #(
    .INIT ( 64'h621B215F9DE4DEA0 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<16>  (
    .ADR0(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR1(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR2(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR4(\ex/aluSrc[16] ),
    .ADR5(\ex/alUnit/Mmux_ALU_out7_rs_B[16] ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [16])
  );
  X_LUT6 #(
    .INIT ( 64'h621B215F9DE4DEA0 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<17>  (
    .ADR0(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR1(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR2(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR4(\ex/aluSrc[16] ),
    .ADR5(\ex/alUnit/Mmux_ALU_out7_rs_B[16] ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [17])
  );
  X_LUT6 #(
    .INIT ( 64'h621B215F9DE4DEA0 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<18>  (
    .ADR0(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR1(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR2(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR4(\ex/aluSrc[16] ),
    .ADR5(\ex/alUnit/Mmux_ALU_out7_rs_B[16] ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [18])
  );
  X_LUT6 #(
    .INIT ( 64'h621B215F9DE4DEA0 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<19>  (
    .ADR0(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR1(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR2(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR4(\ex/aluSrc[16] ),
    .ADR5(\ex/alUnit/Mmux_ALU_out7_rs_B[16] ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [19])
  );
  X_LUT6 #(
    .INIT ( 64'h621B215F9DE4DEA0 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<20>  (
    .ADR0(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR1(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR2(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR4(\ex/aluSrc[16] ),
    .ADR5(\ex/alUnit/Mmux_ALU_out7_rs_B[16] ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [20])
  );
  X_LUT6 #(
    .INIT ( 64'h621B215F9DE4DEA0 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<21>  (
    .ADR0(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR1(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR2(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR4(\ex/aluSrc[16] ),
    .ADR5(\ex/alUnit/Mmux_ALU_out7_rs_B[16] ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [21])
  );
  X_LUT6 #(
    .INIT ( 64'h621B215F9DE4DEA0 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<22>  (
    .ADR0(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR1(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR2(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR3(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR4(\ex/aluSrc[16] ),
    .ADR5(\ex/alUnit/Mmux_ALU_out7_rs_B[16] ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [22])
  );
  X_LUT6 #(
    .INIT ( 64'h569A95665696666A ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<23>  (
    .ADR0(\ex/alUnit/Mmux_ALU_out7_rs_B[16] ),
    .ADR1(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR2(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR3(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR5(\ex/aluSrc[16] ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [23])
  );
  X_LUT6 #(
    .INIT ( 64'hDADAE7DA68688668 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<24>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR3(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR4(\decode_stage/IDEX/alusrc_134 ),
    .ADR5(\ex/alu_control/alu_cntrl_0_316 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [24])
  );
  X_LUT6 #(
    .INIT ( 64'hDADAE7DA68688668 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<25>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR3(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR4(\decode_stage/IDEX/alusrc_134 ),
    .ADR5(\ex/alu_control/alu_cntrl_0_316 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [25])
  );
  X_LUT6 #(
    .INIT ( 64'hDADAE7DA68688668 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<26>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR3(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR4(\decode_stage/IDEX/alusrc_134 ),
    .ADR5(\ex/alu_control/alu_cntrl_0_316 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [26])
  );
  X_LUT6 #(
    .INIT ( 64'hDADAE7DA68688668 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<27>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR3(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR4(\decode_stage/IDEX/alusrc_134 ),
    .ADR5(\ex/alu_control/alu_cntrl_0_316 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [27])
  );
  X_LUT6 #(
    .INIT ( 64'hDADAE7DA68688668 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<28>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR3(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR4(\decode_stage/IDEX/alusrc_134 ),
    .ADR5(\ex/alu_control/alu_cntrl_0_316 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [28])
  );
  X_LUT6 #(
    .INIT ( 64'hDADAE7DA68688668 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<29>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR3(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR4(\decode_stage/IDEX/alusrc_134 ),
    .ADR5(\ex/alu_control/alu_cntrl_0_316 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [29])
  );
  X_LUT6 #(
    .INIT ( 64'hDADAE7DA68688668 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<30>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_2_318 ),
    .ADR3(\decode_stage/IDEX/rt_IDEX [31]),
    .ADR4(\decode_stage/IDEX/alusrc_134 ),
    .ADR5(\ex/alu_control/alu_cntrl_0_316 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [30])
  );
  X_LUT5 #(
    .INIT ( 32'hE8D676A8 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<8>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[8] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [8])
  );
  X_LUT5 #(
    .INIT ( 32'hE8D676A8 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<9>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[9] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [9])
  );
  X_LUT5 #(
    .INIT ( 32'hE8D676A8 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<10>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[10] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [10])
  );
  X_LUT5 #(
    .INIT ( 32'hE8D676A8 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<11>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[11] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [11])
  );
  X_LUT5 #(
    .INIT ( 32'hE8D676A8 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<12>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[12] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [12])
  );
  X_LUT5 #(
    .INIT ( 32'hE8D676A8 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<13>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[13] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [13])
  );
  X_LUT5 #(
    .INIT ( 32'hE8D676A8 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<14>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[14] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [14])
  );
  X_LUT5 #(
    .INIT ( 32'hE8D676A8 ))
  \ex/alUnit/Mmux_ALU_out7_rs_lut<15>  (
    .ADR0(\decode_stage/IDEX/rs_IDEX [31]),
    .ADR1(\ex/alu_control/alu_cntrl_1_317 ),
    .ADR2(\ex/alu_control/alu_cntrl_0_316 ),
    .ADR3(\ex/aluSrc[15] ),
    .ADR4(\ex/alu_control/alu_cntrl_2_318 ),
    .O(\ex/alUnit/Mmux_ALU_out7_rs_lut [15])
  );
  X_INV   \fetch/pc_adder/Madd_pc_4_lut<2>_INV_0  (
    .I(\fetch/instr_pc/pc_out [2]),
    .O(\fetch/pc_adder/Madd_pc_4_lut [2])
  );
  X_INV   \decode_stage/cntrl/Mram__n005412_INV_0  (
    .I(\fetch/if_id_state/instr_ifid[29] ),
    .O(\decode_stage/cntrl/Mram__n0054 )
  );
  X_LUT6 #(
    .INIT ( 64'h0001000100450101 ))
  \fetch/imemx/Mram_RAM291  (
    .ADR0(\fetch/instr_pc/pc_out [7]),
    .ADR1(\fetch/instr_pc/pc_out [5]),
    .ADR2(\fetch/instr_pc/pc_out [4]),
    .ADR3(\fetch/instr_pc/pc_out [3]),
    .ADR4(\fetch/instr_pc/pc_out [2]),
    .ADR5(\fetch/instr_pc/pc_out [6]),
    .O(\fetch/imem_out[29] )
  );
  X_LUT6 #(
    .INIT ( 64'h0000000101000000 ))
  \fetch/imemx/Mram_RAM281  (
    .ADR0(\fetch/instr_pc/pc_out [2]),
    .ADR1(\fetch/instr_pc/pc_out [6]),
    .ADR2(\fetch/instr_pc/pc_out [7]),
    .ADR3(\fetch/instr_pc/pc_out [3]),
    .ADR4(\fetch/instr_pc/pc_out [4]),
    .ADR5(\fetch/instr_pc/pc_out [5]),
    .O(\fetch/imem_out[28] )
  );
  X_LUT6 #(
    .INIT ( 64'h0040004001400000 ))
  \fetch/imemx/Mram_RAM271  (
    .ADR0(\fetch/instr_pc/pc_out [7]),
    .ADR1(\fetch/instr_pc/pc_out [4]),
    .ADR2(\fetch/instr_pc/pc_out [5]),
    .ADR3(\fetch/instr_pc/pc_out [6]),
    .ADR4(\fetch/instr_pc/pc_out [2]),
    .ADR5(\fetch/instr_pc/pc_out [3]),
    .O(\fetch/imem_out[27] )
  );
  X_LUT6 #(
    .INIT ( 64'h0000000414000000 ))
  \fetch/imemx/Mram_RAM261  (
    .ADR0(\fetch/instr_pc/pc_out [7]),
    .ADR1(\fetch/instr_pc/pc_out [2]),
    .ADR2(\fetch/instr_pc/pc_out [3]),
    .ADR3(\fetch/instr_pc/pc_out [5]),
    .ADR4(\fetch/instr_pc/pc_out [4]),
    .ADR5(\fetch/instr_pc/pc_out [6]),
    .O(\fetch/imem_out[26] )
  );
  X_LUT6 #(
    .INIT ( 64'h0001111001100100 ))
  \fetch/imemx/Mram_RAM231  (
    .ADR0(\fetch/instr_pc/pc_out [6]),
    .ADR1(\fetch/instr_pc/pc_out [7]),
    .ADR2(\fetch/instr_pc/pc_out [2]),
    .ADR3(\fetch/instr_pc/pc_out [5]),
    .ADR4(\fetch/instr_pc/pc_out [4]),
    .ADR5(\fetch/instr_pc/pc_out [3]),
    .O(\fetch/imem_out[23] )
  );
  X_LUT6 #(
    .INIT ( 64'h0101100100101010 ))
  \fetch/imemx/Mram_RAM221  (
    .ADR0(\fetch/instr_pc/pc_out [6]),
    .ADR1(\fetch/instr_pc/pc_out [7]),
    .ADR2(\fetch/instr_pc/pc_out [3]),
    .ADR3(\fetch/instr_pc/pc_out [2]),
    .ADR4(\fetch/instr_pc/pc_out [5]),
    .ADR5(\fetch/instr_pc/pc_out [4]),
    .O(\fetch/imem_out[22] )
  );
  X_LUT6 #(
    .INIT ( 64'h0111001001111010 ))
  \fetch/imemx/Mram_RAM211  (
    .ADR0(\fetch/instr_pc/pc_out [6]),
    .ADR1(\fetch/instr_pc/pc_out [7]),
    .ADR2(\fetch/instr_pc/pc_out [3]),
    .ADR3(\fetch/instr_pc/pc_out [5]),
    .ADR4(\fetch/instr_pc/pc_out [4]),
    .ADR5(\fetch/instr_pc/pc_out [2]),
    .O(\fetch/imem_out[21] )
  );
  X_LUT6 #(
    .INIT ( 64'h0101100111011000 ))
  \fetch/imemx/Mram_RAM181  (
    .ADR0(\fetch/instr_pc/pc_out [6]),
    .ADR1(\fetch/instr_pc/pc_out [7]),
    .ADR2(\fetch/instr_pc/pc_out [5]),
    .ADR3(\fetch/instr_pc/pc_out [2]),
    .ADR4(\fetch/instr_pc/pc_out [4]),
    .ADR5(\fetch/instr_pc/pc_out [3]),
    .O(\fetch/imem_out[18] )
  );
  X_LUT6 #(
    .INIT ( 64'h0100001511101015 ))
  \fetch/imemx/Mram_RAM171  (
    .ADR0(\fetch/instr_pc/pc_out [7]),
    .ADR1(\fetch/instr_pc/pc_out [6]),
    .ADR2(\fetch/instr_pc/pc_out [3]),
    .ADR3(\fetch/instr_pc/pc_out [4]),
    .ADR4(\fetch/instr_pc/pc_out [5]),
    .ADR5(\fetch/instr_pc/pc_out [2]),
    .O(\fetch/imem_out[17] )
  );
  X_LUT6 #(
    .INIT ( 64'h0010010010100110 ))
  \fetch/imemx/Mram_RAM161  (
    .ADR0(\fetch/instr_pc/pc_out [6]),
    .ADR1(\fetch/instr_pc/pc_out [7]),
    .ADR2(\fetch/instr_pc/pc_out [2]),
    .ADR3(\fetch/instr_pc/pc_out [3]),
    .ADR4(\fetch/instr_pc/pc_out [5]),
    .ADR5(\fetch/instr_pc/pc_out [4]),
    .O(\fetch/imem_out[16] )
  );
  X_LUT6 #(
    .INIT ( 64'h0001100000000100 ))
  \fetch/imemx/Mram_RAM121  (
    .ADR0(\fetch/instr_pc/pc_out [6]),
    .ADR1(\fetch/instr_pc/pc_out [7]),
    .ADR2(\fetch/instr_pc/pc_out [2]),
    .ADR3(\fetch/instr_pc/pc_out [3]),
    .ADR4(\fetch/instr_pc/pc_out [4]),
    .ADR5(\fetch/instr_pc/pc_out [5]),
    .O(\fetch/imem_out[12] )
  );
  X_LUT6 #(
    .INIT ( 64'h0010010001000110 ))
  \fetch/imemx/Mram_RAM1111  (
    .ADR0(\fetch/instr_pc/pc_out [6]),
    .ADR1(\fetch/instr_pc/pc_out [7]),
    .ADR2(\fetch/instr_pc/pc_out [3]),
    .ADR3(\fetch/instr_pc/pc_out [4]),
    .ADR4(\fetch/instr_pc/pc_out [5]),
    .ADR5(\fetch/instr_pc/pc_out [2]),
    .O(\fetch/imem_out[11] )
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000004 ))
  \fetch/imemx/Mram_RAM71  (
    .ADR0(\fetch/instr_pc/pc_out [2]),
    .ADR1(\fetch/instr_pc/pc_out [3]),
    .ADR2(\fetch/instr_pc/pc_out [4]),
    .ADR3(\fetch/instr_pc/pc_out [5]),
    .ADR4(\fetch/instr_pc/pc_out [6]),
    .ADR5(\fetch/instr_pc/pc_out [7]),
    .O(\fetch/imem_out[10] )
  );
  X_LUT6 #(
    .INIT ( 64'h0110000000000140 ))
  \fetch/imemx/Mram_RAM61  (
    .ADR0(\fetch/instr_pc/pc_out [7]),
    .ADR1(\fetch/instr_pc/pc_out [6]),
    .ADR2(\fetch/instr_pc/pc_out [2]),
    .ADR3(\fetch/instr_pc/pc_out [3]),
    .ADR4(\fetch/instr_pc/pc_out [5]),
    .ADR5(\fetch/instr_pc/pc_out [4]),
    .O(\fetch/imem_out[6] )
  );
  X_LUT6 #(
    .INIT ( 64'h0101001011011010 ))
  \fetch/imemx/Mram_RAM51  (
    .ADR0(\fetch/instr_pc/pc_out [6]),
    .ADR1(\fetch/instr_pc/pc_out [7]),
    .ADR2(\fetch/instr_pc/pc_out [4]),
    .ADR3(\fetch/instr_pc/pc_out [2]),
    .ADR4(\fetch/instr_pc/pc_out [3]),
    .ADR5(\fetch/instr_pc/pc_out [5]),
    .O(\fetch/imem_out[13] )
  );
  X_LUT6 #(
    .INIT ( 64'h0400001004000004 ))
  \fetch/imemx/Mram_RAM41  (
    .ADR0(\fetch/instr_pc/pc_out [7]),
    .ADR1(\fetch/instr_pc/pc_out [3]),
    .ADR2(\fetch/instr_pc/pc_out [6]),
    .ADR3(\fetch/instr_pc/pc_out [4]),
    .ADR4(\fetch/instr_pc/pc_out [5]),
    .ADR5(\fetch/instr_pc/pc_out [2]),
    .O(\fetch/imem_out[4] )
  );
  X_LUT6 #(
    .INIT ( 64'h0000100100101000 ))
  \fetch/imemx/Mram_RAM32  (
    .ADR0(\fetch/instr_pc/pc_out [6]),
    .ADR1(\fetch/instr_pc/pc_out [7]),
    .ADR2(\fetch/instr_pc/pc_out [3]),
    .ADR3(\fetch/instr_pc/pc_out [4]),
    .ADR4(\fetch/instr_pc/pc_out [5]),
    .ADR5(\fetch/instr_pc/pc_out [2]),
    .O(\fetch/imem_out[3] )
  );
  X_LUT6 #(
    .INIT ( 64'h0001000104110101 ))
  \fetch/imemx/Mram_RAM24  (
    .ADR0(\fetch/instr_pc/pc_out [7]),
    .ADR1(\fetch/instr_pc/pc_out [5]),
    .ADR2(\fetch/instr_pc/pc_out [6]),
    .ADR3(\fetch/instr_pc/pc_out [4]),
    .ADR4(\fetch/instr_pc/pc_out [2]),
    .ADR5(\fetch/instr_pc/pc_out [3]),
    .O(\fetch/imem_out[2] )
  );
  X_LUT6 #(
    .INIT ( 64'h0000100001101010 ))
  \fetch/imemx/Mram_RAM112  (
    .ADR0(\fetch/instr_pc/pc_out [6]),
    .ADR1(\fetch/instr_pc/pc_out [7]),
    .ADR2(\fetch/instr_pc/pc_out [3]),
    .ADR3(\fetch/instr_pc/pc_out [4]),
    .ADR4(\fetch/instr_pc/pc_out [5]),
    .ADR5(\fetch/instr_pc/pc_out [2]),
    .O(\fetch/imem_out[1] )
  );
  X_LUT6 #(
    .INIT ( 64'h0000400100011011 ))
  \fetch/imemx/Mram_RAM19  (
    .ADR0(\fetch/instr_pc/pc_out [7]),
    .ADR1(\fetch/instr_pc/pc_out [4]),
    .ADR2(\fetch/instr_pc/pc_out [3]),
    .ADR3(\fetch/instr_pc/pc_out [2]),
    .ADR4(\fetch/instr_pc/pc_out [6]),
    .ADR5(\fetch/instr_pc/pc_out [5]),
    .O(\fetch/imem_out[0] )
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_29  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [29]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_29_833 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_29_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_29  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_29_833 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [29]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_31  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [31]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_31_834 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_31_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_31  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_31_834 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [31]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_30  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [30]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_30_835 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_30_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_30  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_30_835 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [30]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_28  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [28]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_28_836 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_28_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_28  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_28_836 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [28]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_27  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [27]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_27_837 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_27_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_27  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_27_837 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [27]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_26  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [26]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_26_838 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_26_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_26  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_26_838 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [26]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_25  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [25]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_25_839 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_25_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_25  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_25_839 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [25]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_24  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [24]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_24_840 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_24_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_24  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_24_840 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [24]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_23  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [23]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_23_841 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_23_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_23  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_23_841 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [23]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_22  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [22]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_22_842 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_22_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_22  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_22_842 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [22]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_21  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [21]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_21_843 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_21_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_21  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_21_843 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [21]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_20  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [20]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_20_844 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_20_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_20  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_20_844 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [20]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_19  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [19]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_19_845 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_19_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_19  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_19_845 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [19]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_18  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [18]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_18_846 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_18_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_18  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_18_846 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [18]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_17  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [17]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_17_847 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_17_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_17  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_17_847 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [17]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_16  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [16]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_16_848 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_16_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_16  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_16_848 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [16]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_15  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [15]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_15_849 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_15_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_15  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_15_849 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [15]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_12  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [12]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_12_850 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_12_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_12  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_12_850 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [12]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_14  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [14]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_14_851 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_14_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_14  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_14_851 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [14]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_13  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [13]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_13_852 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_13_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_13  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_13_852 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [13]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_11  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [11]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_11_853 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_11_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_11  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_11_853 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [11]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_10  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [10]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_10_854 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_10_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_10  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_10_854 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [10]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_9  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [9]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_9_855 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_9_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_9  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_9_855 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [9]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_8  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [8]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_8_856 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_8_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_8  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_8_856 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [8]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_7  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [7]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_7_857 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_7_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_7  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_7_857 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [7]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_6  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [6]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_6_858 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_6_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_6  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_6_858 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [6]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_5  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [5]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_5_859 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_5_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_5  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_5_859 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [5]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_4  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [4]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_4_860 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_4_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_4  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_4_860 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [4]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_3  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [3]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_3_861 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_3_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_3  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_3_861 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [3]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \decode_stage/IDEX/Mshreg_pc_4_IDEX_2  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/adder_out [2]),
    .Q(\decode_stage/IDEX/Mshreg_pc_4_IDEX_2_862 ),
    .Q15(\NLW_decode_stage/IDEX/Mshreg_pc_4_IDEX_2_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decode_stage/IDEX/pc_4_IDEX_2  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\decode_stage/IDEX/Mshreg_pc_4_IDEX_2_862 ),
    .O(\decode_stage/IDEX/pc_4_IDEX [2]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \ex/EX_M/Mshreg_brnchDstM_1  (
    .A0(N0),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/instr_pc/pc_out [1]),
    .Q(\ex/EX_M/Mshreg_brnchDstM_1_863 ),
    .Q15(\NLW_ex/EX_M/Mshreg_brnchDstM_1_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_1  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\ex/EX_M/Mshreg_brnchDstM_1_863 ),
    .O(\ex/EX_M/brnchDstM [1]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \ex/EX_M/Mshreg_brnchDstM_0  (
    .A0(N0),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/instr_pc/pc_out [0]),
    .Q(\ex/EX_M/Mshreg_brnchDstM_0_864 ),
    .Q15(\NLW_ex/EX_M/Mshreg_brnchDstM_0_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/brnchDstM_0  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\ex/EX_M/Mshreg_brnchDstM_0_864 ),
    .O(\ex/EX_M/brnchDstM [0]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \ex/EX_M/Mshreg_memM_0  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\fetch/if_id_state/instr_ifid[29] ),
    .Q(\ex/EX_M/Mshreg_memM_0_865 ),
    .Q15(\NLW_ex/EX_M/Mshreg_memM_0_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/memM_0  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\ex/EX_M/Mshreg_memM_0_865 ),
    .O(\ex/EX_M/memM [0]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \ex/EX_M/Mshreg_wbM_0  (
    .A0(instr[19]),
    .A1(instr[19]),
    .A2(instr[19]),
    .A3(instr[19]),
    .CE(N0),
    .CLK(clk_BUFGP),
    .D(\decode_stage/cntrl/Mram__n0054 ),
    .Q(\ex/EX_M/Mshreg_wbM_0_866 ),
    .Q15(\NLW_ex/EX_M/Mshreg_wbM_0_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ex/EX_M/wbM_0  (
    .CLK(clk_BUFGP),
    .CE(N0),
    .I(\ex/EX_M/Mshreg_wbM_0_866 ),
    .O(\ex/EX_M/wbM [0]),
    .SET(GND),
    .RST(GND)
  );
  X_IPAD   clk_819 (
    .PAD(clk)
  );
  X_IPAD   \ex_mem_pc<31>  (
    .PAD(ex_mem_pc[31])
  );
  X_IPAD   \ex_mem_pc<30>  (
    .PAD(ex_mem_pc[30])
  );
  X_IPAD   \ex_mem_pc<29>  (
    .PAD(ex_mem_pc[29])
  );
  X_IPAD   \ex_mem_pc<28>  (
    .PAD(ex_mem_pc[28])
  );
  X_IPAD   \ex_mem_pc<27>  (
    .PAD(ex_mem_pc[27])
  );
  X_IPAD   \ex_mem_pc<26>  (
    .PAD(ex_mem_pc[26])
  );
  X_IPAD   \ex_mem_pc<25>  (
    .PAD(ex_mem_pc[25])
  );
  X_IPAD   \ex_mem_pc<24>  (
    .PAD(ex_mem_pc[24])
  );
  X_IPAD   \ex_mem_pc<23>  (
    .PAD(ex_mem_pc[23])
  );
  X_IPAD   \ex_mem_pc<22>  (
    .PAD(ex_mem_pc[22])
  );
  X_IPAD   \ex_mem_pc<21>  (
    .PAD(ex_mem_pc[21])
  );
  X_IPAD   \ex_mem_pc<20>  (
    .PAD(ex_mem_pc[20])
  );
  X_IPAD   \ex_mem_pc<19>  (
    .PAD(ex_mem_pc[19])
  );
  X_IPAD   \ex_mem_pc<18>  (
    .PAD(ex_mem_pc[18])
  );
  X_IPAD   \ex_mem_pc<17>  (
    .PAD(ex_mem_pc[17])
  );
  X_IPAD   \ex_mem_pc<16>  (
    .PAD(ex_mem_pc[16])
  );
  X_IPAD   \ex_mem_pc<15>  (
    .PAD(ex_mem_pc[15])
  );
  X_IPAD   \ex_mem_pc<14>  (
    .PAD(ex_mem_pc[14])
  );
  X_IPAD   \ex_mem_pc<13>  (
    .PAD(ex_mem_pc[13])
  );
  X_IPAD   \ex_mem_pc<12>  (
    .PAD(ex_mem_pc[12])
  );
  X_IPAD   \ex_mem_pc<11>  (
    .PAD(ex_mem_pc[11])
  );
  X_IPAD   \ex_mem_pc<10>  (
    .PAD(ex_mem_pc[10])
  );
  X_IPAD   \ex_mem_pc<9>  (
    .PAD(ex_mem_pc[9])
  );
  X_IPAD   \ex_mem_pc<8>  (
    .PAD(ex_mem_pc[8])
  );
  X_IPAD   \ex_mem_pc<7>  (
    .PAD(ex_mem_pc[7])
  );
  X_IPAD   \ex_mem_pc<6>  (
    .PAD(ex_mem_pc[6])
  );
  X_IPAD   \ex_mem_pc<5>  (
    .PAD(ex_mem_pc[5])
  );
  X_IPAD   \ex_mem_pc<4>  (
    .PAD(ex_mem_pc[4])
  );
  X_IPAD   \ex_mem_pc<3>  (
    .PAD(ex_mem_pc[3])
  );
  X_IPAD   \ex_mem_pc<2>  (
    .PAD(ex_mem_pc[2])
  );
  X_IPAD   \ex_mem_pc<1>  (
    .PAD(ex_mem_pc[1])
  );
  X_IPAD   \ex_mem_pc<0>  (
    .PAD(ex_mem_pc[0])
  );
  X_IPAD   pcSrc_852 (
    .PAD(pcSrc)
  );
  X_OPAD   \wb<1>  (
    .PAD(wb[1])
  );
  X_OPAD   \wb<0>  (
    .PAD(wb[0])
  );
  X_OPAD   \mem<2>  (
    .PAD(mem[2])
  );
  X_OPAD   \mem<1>  (
    .PAD(mem[1])
  );
  X_OPAD   \mem<0>  (
    .PAD(mem[0])
  );
  X_OPAD   \brDst<31>  (
    .PAD(brDst[31])
  );
  X_OPAD   \brDst<30>  (
    .PAD(brDst[30])
  );
  X_OPAD   \brDst<29>  (
    .PAD(brDst[29])
  );
  X_OPAD   \brDst<28>  (
    .PAD(brDst[28])
  );
  X_OPAD   \brDst<27>  (
    .PAD(brDst[27])
  );
  X_OPAD   \brDst<26>  (
    .PAD(brDst[26])
  );
  X_OPAD   \brDst<25>  (
    .PAD(brDst[25])
  );
  X_OPAD   \brDst<24>  (
    .PAD(brDst[24])
  );
  X_OPAD   \brDst<23>  (
    .PAD(brDst[23])
  );
  X_OPAD   \brDst<22>  (
    .PAD(brDst[22])
  );
  X_OPAD   \brDst<21>  (
    .PAD(brDst[21])
  );
  X_OPAD   \brDst<20>  (
    .PAD(brDst[20])
  );
  X_OPAD   \brDst<19>  (
    .PAD(brDst[19])
  );
  X_OPAD   \brDst<18>  (
    .PAD(brDst[18])
  );
  X_OPAD   \brDst<17>  (
    .PAD(brDst[17])
  );
  X_OPAD   \brDst<16>  (
    .PAD(brDst[16])
  );
  X_OPAD   \brDst<15>  (
    .PAD(brDst[15])
  );
  X_OPAD   \brDst<14>  (
    .PAD(brDst[14])
  );
  X_OPAD   \brDst<13>  (
    .PAD(brDst[13])
  );
  X_OPAD   \brDst<12>  (
    .PAD(brDst[12])
  );
  X_OPAD   \brDst<11>  (
    .PAD(brDst[11])
  );
  X_OPAD   \brDst<10>  (
    .PAD(brDst[10])
  );
  X_OPAD   \brDst<9>  (
    .PAD(brDst[9])
  );
  X_OPAD   \brDst<8>  (
    .PAD(brDst[8])
  );
  X_OPAD   \brDst<7>  (
    .PAD(brDst[7])
  );
  X_OPAD   \brDst<6>  (
    .PAD(brDst[6])
  );
  X_OPAD   \brDst<5>  (
    .PAD(brDst[5])
  );
  X_OPAD   \brDst<4>  (
    .PAD(brDst[4])
  );
  X_OPAD   \brDst<3>  (
    .PAD(brDst[3])
  );
  X_OPAD   \brDst<2>  (
    .PAD(brDst[2])
  );
  X_OPAD   \brDst<1>  (
    .PAD(brDst[1])
  );
  X_OPAD   \brDst<0>  (
    .PAD(brDst[0])
  );
  X_OPAD   \alu_out<31>  (
    .PAD(alu_out[31])
  );
  X_OPAD   \alu_out<30>  (
    .PAD(alu_out[30])
  );
  X_OPAD   \alu_out<29>  (
    .PAD(alu_out[29])
  );
  X_OPAD   \alu_out<28>  (
    .PAD(alu_out[28])
  );
  X_OPAD   \alu_out<27>  (
    .PAD(alu_out[27])
  );
  X_OPAD   \alu_out<26>  (
    .PAD(alu_out[26])
  );
  X_OPAD   \alu_out<25>  (
    .PAD(alu_out[25])
  );
  X_OPAD   \alu_out<24>  (
    .PAD(alu_out[24])
  );
  X_OPAD   \alu_out<23>  (
    .PAD(alu_out[23])
  );
  X_OPAD   \alu_out<22>  (
    .PAD(alu_out[22])
  );
  X_OPAD   \alu_out<21>  (
    .PAD(alu_out[21])
  );
  X_OPAD   \alu_out<20>  (
    .PAD(alu_out[20])
  );
  X_OPAD   \alu_out<19>  (
    .PAD(alu_out[19])
  );
  X_OPAD   \alu_out<18>  (
    .PAD(alu_out[18])
  );
  X_OPAD   \alu_out<17>  (
    .PAD(alu_out[17])
  );
  X_OPAD   \alu_out<16>  (
    .PAD(alu_out[16])
  );
  X_OPAD   \alu_out<15>  (
    .PAD(alu_out[15])
  );
  X_OPAD   \alu_out<14>  (
    .PAD(alu_out[14])
  );
  X_OPAD   \alu_out<13>  (
    .PAD(alu_out[13])
  );
  X_OPAD   \alu_out<12>  (
    .PAD(alu_out[12])
  );
  X_OPAD   \alu_out<11>  (
    .PAD(alu_out[11])
  );
  X_OPAD   \alu_out<10>  (
    .PAD(alu_out[10])
  );
  X_OPAD   \alu_out<9>  (
    .PAD(alu_out[9])
  );
  X_OPAD   \alu_out<8>  (
    .PAD(alu_out[8])
  );
  X_OPAD   \alu_out<7>  (
    .PAD(alu_out[7])
  );
  X_OPAD   \alu_out<6>  (
    .PAD(alu_out[6])
  );
  X_OPAD   \alu_out<5>  (
    .PAD(alu_out[5])
  );
  X_OPAD   \alu_out<4>  (
    .PAD(alu_out[4])
  );
  X_OPAD   \alu_out<3>  (
    .PAD(alu_out[3])
  );
  X_OPAD   \alu_out<2>  (
    .PAD(alu_out[2])
  );
  X_OPAD   \alu_out<1>  (
    .PAD(alu_out[1])
  );
  X_OPAD   \alu_out<0>  (
    .PAD(alu_out[0])
  );
  X_OPAD   \rt<31>  (
    .PAD(rt[31])
  );
  X_OPAD   \rt<30>  (
    .PAD(rt[30])
  );
  X_OPAD   \rt<29>  (
    .PAD(rt[29])
  );
  X_OPAD   \rt<28>  (
    .PAD(rt[28])
  );
  X_OPAD   \rt<27>  (
    .PAD(rt[27])
  );
  X_OPAD   \rt<26>  (
    .PAD(rt[26])
  );
  X_OPAD   \rt<25>  (
    .PAD(rt[25])
  );
  X_OPAD   \rt<24>  (
    .PAD(rt[24])
  );
  X_OPAD   \rt<23>  (
    .PAD(rt[23])
  );
  X_OPAD   \rt<22>  (
    .PAD(rt[22])
  );
  X_OPAD   \rt<21>  (
    .PAD(rt[21])
  );
  X_OPAD   \rt<20>  (
    .PAD(rt[20])
  );
  X_OPAD   \rt<19>  (
    .PAD(rt[19])
  );
  X_OPAD   \rt<18>  (
    .PAD(rt[18])
  );
  X_OPAD   \rt<17>  (
    .PAD(rt[17])
  );
  X_OPAD   \rt<16>  (
    .PAD(rt[16])
  );
  X_OPAD   \rt<15>  (
    .PAD(rt[15])
  );
  X_OPAD   \rt<14>  (
    .PAD(rt[14])
  );
  X_OPAD   \rt<13>  (
    .PAD(rt[13])
  );
  X_OPAD   \rt<12>  (
    .PAD(rt[12])
  );
  X_OPAD   \rt<11>  (
    .PAD(rt[11])
  );
  X_OPAD   \rt<10>  (
    .PAD(rt[10])
  );
  X_OPAD   \rt<9>  (
    .PAD(rt[9])
  );
  X_OPAD   \rt<8>  (
    .PAD(rt[8])
  );
  X_OPAD   \rt<7>  (
    .PAD(rt[7])
  );
  X_OPAD   \rt<6>  (
    .PAD(rt[6])
  );
  X_OPAD   \rt<5>  (
    .PAD(rt[5])
  );
  X_OPAD   \rt<4>  (
    .PAD(rt[4])
  );
  X_OPAD   \rt<3>  (
    .PAD(rt[3])
  );
  X_OPAD   \rt<2>  (
    .PAD(rt[2])
  );
  X_OPAD   \rt<1>  (
    .PAD(rt[1])
  );
  X_OPAD   \rt<0>  (
    .PAD(rt[0])
  );
  X_OPAD   \wrDst<4>  (
    .PAD(wrDst[4])
  );
  X_OPAD   \wrDst<3>  (
    .PAD(wrDst[3])
  );
  X_OPAD   \wrDst<2>  (
    .PAD(wrDst[2])
  );
  X_OPAD   \wrDst<1>  (
    .PAD(wrDst[1])
  );
  X_OPAD   \wrDst<0>  (
    .PAD(wrDst[0])
  );
  X_OPAD   zFlag_959 (
    .PAD(zFlag)
  );
  X_RAMD32 #(
    .INIT ( 32'h00000000 ))
  \decode_stage/regy/Mram_rf2/X_RAMD32  (
    .RADR0(\fetch/if_id_state/instr_ifid[16] ),
    .RADR1(\fetch/if_id_state/instr_ifid[17] ),
    .RADR2(\fetch/if_id_state/instr_ifid[18] ),
    .RADR3(instr[19]),
    .RADR4(instr[19]),
    .WADR0(\fetch/if_id_state/instr_ifid[21] ),
    .WADR1(\fetch/if_id_state/instr_ifid[22] ),
    .WADR2(\fetch/if_id_state/instr_ifid[23] ),
    .WADR3(instr[19]),
    .WADR4(instr[19]),
    .I(instr[19]),
    .CLK(N0),
    .WE(instr[19]),
    .O(\decode_stage/regy/ra2[4]_read_port_6_OUT<1> )
  );
  X_RAMS32 #(
    .INIT ( 32'h00000000 ))
  \decode_stage/regy/Mram_rf2/X_RAMS32  (
    .ADR0(\fetch/if_id_state/instr_ifid[21] ),
    .ADR1(\fetch/if_id_state/instr_ifid[22] ),
    .ADR2(\fetch/if_id_state/instr_ifid[23] ),
    .ADR3(instr[19]),
    .ADR4(instr[19]),
    .I(instr[19]),
    .CLK(N0),
    .WE(instr[19]),
    .O(\decode_stage/regy/ra1[4]_read_port_3_OUT<1> )
  );
  X_CKBUF   \clk_BUFGP/BUFG  (
    .I(\clk_BUFGP/IBUFG_17 ),
    .O(clk_BUFGP)
  );
  X_CKBUF   \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk_BUFGP/IBUFG_17 )
  );
  X_OBUF   wb_1_OBUF (
    .I(\ex/EX_M/memM [1]),
    .O(wb[1])
  );
  X_OBUF   wb_0_OBUF (
    .I(\ex/EX_M/wbM [0]),
    .O(wb[0])
  );
  X_OBUF   mem_2_OBUF (
    .I(\ex/EX_M/memM [2]),
    .O(mem[2])
  );
  X_OBUF   mem_1_OBUF (
    .I(\ex/EX_M/memM [1]),
    .O(mem[1])
  );
  X_OBUF   mem_0_OBUF (
    .I(\ex/EX_M/memM [0]),
    .O(mem[0])
  );
  X_OBUF   brDst_31_OBUF (
    .I(\ex/EX_M/brnchDstM [31]),
    .O(brDst[31])
  );
  X_OBUF   brDst_30_OBUF (
    .I(\ex/EX_M/brnchDstM [30]),
    .O(brDst[30])
  );
  X_OBUF   brDst_29_OBUF (
    .I(\ex/EX_M/brnchDstM [29]),
    .O(brDst[29])
  );
  X_OBUF   brDst_28_OBUF (
    .I(\ex/EX_M/brnchDstM [28]),
    .O(brDst[28])
  );
  X_OBUF   brDst_27_OBUF (
    .I(\ex/EX_M/brnchDstM [27]),
    .O(brDst[27])
  );
  X_OBUF   brDst_26_OBUF (
    .I(\ex/EX_M/brnchDstM [26]),
    .O(brDst[26])
  );
  X_OBUF   brDst_25_OBUF (
    .I(\ex/EX_M/brnchDstM [25]),
    .O(brDst[25])
  );
  X_OBUF   brDst_24_OBUF (
    .I(\ex/EX_M/brnchDstM [24]),
    .O(brDst[24])
  );
  X_OBUF   brDst_23_OBUF (
    .I(\ex/EX_M/brnchDstM [23]),
    .O(brDst[23])
  );
  X_OBUF   brDst_22_OBUF (
    .I(\ex/EX_M/brnchDstM [22]),
    .O(brDst[22])
  );
  X_OBUF   brDst_21_OBUF (
    .I(\ex/EX_M/brnchDstM [21]),
    .O(brDst[21])
  );
  X_OBUF   brDst_20_OBUF (
    .I(\ex/EX_M/brnchDstM [20]),
    .O(brDst[20])
  );
  X_OBUF   brDst_19_OBUF (
    .I(\ex/EX_M/brnchDstM [19]),
    .O(brDst[19])
  );
  X_OBUF   brDst_18_OBUF (
    .I(\ex/EX_M/brnchDstM [18]),
    .O(brDst[18])
  );
  X_OBUF   brDst_17_OBUF (
    .I(\ex/EX_M/brnchDstM [17]),
    .O(brDst[17])
  );
  X_OBUF   brDst_16_OBUF (
    .I(\ex/EX_M/brnchDstM [16]),
    .O(brDst[16])
  );
  X_OBUF   brDst_15_OBUF (
    .I(\ex/EX_M/brnchDstM [15]),
    .O(brDst[15])
  );
  X_OBUF   brDst_14_OBUF (
    .I(\ex/EX_M/brnchDstM [14]),
    .O(brDst[14])
  );
  X_OBUF   brDst_13_OBUF (
    .I(\ex/EX_M/brnchDstM [13]),
    .O(brDst[13])
  );
  X_OBUF   brDst_12_OBUF (
    .I(\ex/EX_M/brnchDstM [12]),
    .O(brDst[12])
  );
  X_OBUF   brDst_11_OBUF (
    .I(\ex/EX_M/brnchDstM [11]),
    .O(brDst[11])
  );
  X_OBUF   brDst_10_OBUF (
    .I(\ex/EX_M/brnchDstM [10]),
    .O(brDst[10])
  );
  X_OBUF   brDst_9_OBUF (
    .I(\ex/EX_M/brnchDstM [9]),
    .O(brDst[9])
  );
  X_OBUF   brDst_8_OBUF (
    .I(\ex/EX_M/brnchDstM [8]),
    .O(brDst[8])
  );
  X_OBUF   brDst_7_OBUF (
    .I(\ex/EX_M/brnchDstM [7]),
    .O(brDst[7])
  );
  X_OBUF   brDst_6_OBUF (
    .I(\ex/EX_M/brnchDstM [6]),
    .O(brDst[6])
  );
  X_OBUF   brDst_5_OBUF (
    .I(\ex/EX_M/brnchDstM [5]),
    .O(brDst[5])
  );
  X_OBUF   brDst_4_OBUF (
    .I(\ex/EX_M/brnchDstM [4]),
    .O(brDst[4])
  );
  X_OBUF   brDst_3_OBUF (
    .I(\ex/EX_M/brnchDstM [3]),
    .O(brDst[3])
  );
  X_OBUF   brDst_2_OBUF (
    .I(\ex/EX_M/brnchDstM [2]),
    .O(brDst[2])
  );
  X_OBUF   brDst_1_OBUF (
    .I(\ex/EX_M/brnchDstM [1]),
    .O(brDst[1])
  );
  X_OBUF   brDst_0_OBUF (
    .I(\ex/EX_M/brnchDstM [0]),
    .O(brDst[0])
  );
  X_OBUF   alu_out_31_OBUF (
    .I(\ex/EX_M/alu_outM[31] ),
    .O(alu_out[31])
  );
  X_OBUF   alu_out_30_OBUF (
    .I(\ex/EX_M/alu_outM[31] ),
    .O(alu_out[30])
  );
  X_OBUF   alu_out_29_OBUF (
    .I(\ex/EX_M/alu_outM[31] ),
    .O(alu_out[29])
  );
  X_OBUF   alu_out_28_OBUF (
    .I(\ex/EX_M/alu_outM[31] ),
    .O(alu_out[28])
  );
  X_OBUF   alu_out_27_OBUF (
    .I(\ex/EX_M/alu_outM[31] ),
    .O(alu_out[27])
  );
  X_OBUF   alu_out_26_OBUF (
    .I(\ex/EX_M/alu_outM[31] ),
    .O(alu_out[26])
  );
  X_OBUF   alu_out_25_OBUF (
    .I(\ex/EX_M/alu_outM[31] ),
    .O(alu_out[25])
  );
  X_OBUF   alu_out_24_OBUF (
    .I(\ex/EX_M/alu_outM[31] ),
    .O(alu_out[24])
  );
  X_OBUF   alu_out_23_OBUF (
    .I(\ex/EX_M/alu_outM[31] ),
    .O(alu_out[23])
  );
  X_OBUF   alu_out_22_OBUF (
    .I(\ex/EX_M/alu_outM[31] ),
    .O(alu_out[22])
  );
  X_OBUF   alu_out_21_OBUF (
    .I(\ex/EX_M/alu_outM[31] ),
    .O(alu_out[21])
  );
  X_OBUF   alu_out_20_OBUF (
    .I(\ex/EX_M/alu_outM[31] ),
    .O(alu_out[20])
  );
  X_OBUF   alu_out_19_OBUF (
    .I(\ex/EX_M/alu_outM[31] ),
    .O(alu_out[19])
  );
  X_OBUF   alu_out_18_OBUF (
    .I(\ex/EX_M/alu_outM[31] ),
    .O(alu_out[18])
  );
  X_OBUF   alu_out_17_OBUF (
    .I(\ex/EX_M/alu_outM[31] ),
    .O(alu_out[17])
  );
  X_OBUF   alu_out_16_OBUF (
    .I(\ex/EX_M/alu_outM[16] ),
    .O(alu_out[16])
  );
  X_OBUF   alu_out_15_OBUF (
    .I(\ex/EX_M/alu_outM[15] ),
    .O(alu_out[15])
  );
  X_OBUF   alu_out_14_OBUF (
    .I(\ex/EX_M/alu_outM[14] ),
    .O(alu_out[14])
  );
  X_OBUF   alu_out_13_OBUF (
    .I(\ex/EX_M/alu_outM[13] ),
    .O(alu_out[13])
  );
  X_OBUF   alu_out_12_OBUF (
    .I(\ex/EX_M/alu_outM[12] ),
    .O(alu_out[12])
  );
  X_OBUF   alu_out_11_OBUF (
    .I(\ex/EX_M/alu_outM[11] ),
    .O(alu_out[11])
  );
  X_OBUF   alu_out_10_OBUF (
    .I(\ex/EX_M/alu_outM[10] ),
    .O(alu_out[10])
  );
  X_OBUF   alu_out_9_OBUF (
    .I(\ex/EX_M/alu_outM[9] ),
    .O(alu_out[9])
  );
  X_OBUF   alu_out_8_OBUF (
    .I(\ex/EX_M/alu_outM[8] ),
    .O(alu_out[8])
  );
  X_OBUF   alu_out_7_OBUF (
    .I(\ex/EX_M/alu_outM[7] ),
    .O(alu_out[7])
  );
  X_OBUF   alu_out_6_OBUF (
    .I(\ex/EX_M/alu_outM[6] ),
    .O(alu_out[6])
  );
  X_OBUF   alu_out_5_OBUF (
    .I(\ex/EX_M/alu_outM[5] ),
    .O(alu_out[5])
  );
  X_OBUF   alu_out_4_OBUF (
    .I(\ex/EX_M/alu_outM[4] ),
    .O(alu_out[4])
  );
  X_OBUF   alu_out_3_OBUF (
    .I(\ex/EX_M/alu_outM[3] ),
    .O(alu_out[3])
  );
  X_OBUF   alu_out_2_OBUF (
    .I(\ex/EX_M/alu_outM[2] ),
    .O(alu_out[2])
  );
  X_OBUF   alu_out_1_OBUF (
    .I(\ex/EX_M/alu_outM[1] ),
    .O(alu_out[1])
  );
  X_OBUF   alu_out_0_OBUF (
    .I(\ex/EX_M/alu_outM[0] ),
    .O(alu_out[0])
  );
  X_OBUF   rt_31_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[31])
  );
  X_OBUF   rt_30_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[30])
  );
  X_OBUF   rt_29_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[29])
  );
  X_OBUF   rt_28_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[28])
  );
  X_OBUF   rt_27_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[27])
  );
  X_OBUF   rt_26_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[26])
  );
  X_OBUF   rt_25_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[25])
  );
  X_OBUF   rt_24_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[24])
  );
  X_OBUF   rt_23_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[23])
  );
  X_OBUF   rt_22_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[22])
  );
  X_OBUF   rt_21_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[21])
  );
  X_OBUF   rt_20_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[20])
  );
  X_OBUF   rt_19_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[19])
  );
  X_OBUF   rt_18_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[18])
  );
  X_OBUF   rt_17_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[17])
  );
  X_OBUF   rt_16_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[16])
  );
  X_OBUF   rt_15_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[15])
  );
  X_OBUF   rt_14_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[14])
  );
  X_OBUF   rt_13_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[13])
  );
  X_OBUF   rt_12_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[12])
  );
  X_OBUF   rt_11_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[11])
  );
  X_OBUF   rt_10_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[10])
  );
  X_OBUF   rt_9_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[9])
  );
  X_OBUF   rt_8_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[8])
  );
  X_OBUF   rt_7_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[7])
  );
  X_OBUF   rt_6_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[6])
  );
  X_OBUF   rt_5_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[5])
  );
  X_OBUF   rt_4_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[4])
  );
  X_OBUF   rt_3_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[3])
  );
  X_OBUF   rt_2_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[2])
  );
  X_OBUF   rt_1_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[1])
  );
  X_OBUF   rt_0_OBUF (
    .I(\ex/EX_M/rtM [31]),
    .O(rt[0])
  );
  X_OBUF   wrDst_4_OBUF (
    .I(\ex/EX_M/wrDstM [4]),
    .O(wrDst[4])
  );
  X_OBUF   wrDst_3_OBUF (
    .I(\ex/EX_M/wrDstM [3]),
    .O(wrDst[3])
  );
  X_OBUF   wrDst_2_OBUF (
    .I(\ex/EX_M/wrDstM [2]),
    .O(wrDst[2])
  );
  X_OBUF   wrDst_1_OBUF (
    .I(\ex/EX_M/wrDstM [1]),
    .O(wrDst[1])
  );
  X_OBUF   wrDst_0_OBUF (
    .I(\ex/EX_M/wrDstM [0]),
    .O(wrDst[0])
  );
  X_OBUF   zFlag_OBUF (
    .I(\ex/EX_M/zFlagM_195 ),
    .O(zFlag)
  );
  X_ONE   NlwBlock_cpu_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_cpu_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

