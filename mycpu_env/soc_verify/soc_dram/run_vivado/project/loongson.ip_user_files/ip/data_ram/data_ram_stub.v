// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Apr 28 22:22:23 2024
// Host        : lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.gen/sources_1/ip/data_ram/data_ram_stub.v
// Design      : data_ram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2023.1" *)
module data_ram(a, d, clk, we, spo)
/* synthesis syn_black_box black_box_pad_pin="a[4:0],d[31:0],we,spo[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input [4:0]a;
  input [31:0]d;
  input clk /* synthesis syn_isclock = 1 */;
  input we;
  output [31:0]spo;
endmodule