transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.cache/compile_simlib/activehdl}
vlib activehdl/dist_mem_gen_v8_0_13
vlib activehdl/xil_defaultlib

vlog -work dist_mem_gen_v8_0_13  -v2k5 -l dist_mem_gen_v8_0_13 -l xil_defaultlib \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -v2k5 -l dist_mem_gen_v8_0_13 -l xil_defaultlib \
"../../../../loongson.gen/sources_1/ip/inst_ram/sim/inst_ram.v" \


vlog -work xil_defaultlib \
"glbl.v"

