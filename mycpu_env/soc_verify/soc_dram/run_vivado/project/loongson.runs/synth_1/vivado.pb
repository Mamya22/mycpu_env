
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:122default:default2
00:00:122default:default2
434.2302default:default2
164.6842default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.srcs/utils_1/imports/synth_1/soc_lite_top.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
�C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.srcs/utils_1/imports/synth_1/soc_lite_top.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
|
Command: %s
53*	vivadotcl2K
7synth_design -top soc_lite_top -part xc7a100ticsg324-1L2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
	xc7a100ti2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
	xc7a100ti2default:defaultZ17-349h px� 
Y
Loading part %s157*device2&
xc7a100ticsg324-1L2default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
111482default:defaultZ8-7075h px� 
�
.identifier '%s' is used before its declaration4750*oasys2
MEM_WB_data2default:default2\
FC:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/myCPU/my_cpu_pipeline39.v2default:default2
4712default:default8@Z8-6901h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1279.914 ; gain = 411.184
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2 
soc_lite_top2default:default2
 2default:default2i
SC:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/rtl/soc_lite_top.v2default:default2
672default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2$
mycpu_pipeline392default:default2
 2default:default2\
FC:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/myCPU/my_cpu_pipeline39.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2 
decoder_6_642default:default2
 2default:default2P
:C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/myCPU/tools.v2default:default2
402default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
decoder_6_642default:default2
 2default:default2
02default:default2
12default:default2P
:C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/myCPU/tools.v2default:default2
402default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
decoder_4_162default:default2
 2default:default2P
:C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/myCPU/tools.v2default:default2
142default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
decoder_4_162default:default2
 2default:default2
02default:default2
12default:default2P
:C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/myCPU/tools.v2default:default2
142default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
decoder_2_42default:default2
 2default:default2P
:C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/myCPU/tools.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
decoder_2_42default:default2
 2default:default2
02default:default2
12default:default2P
:C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/myCPU/tools.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
decoder_5_322default:default2
 2default:default2P
:C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/myCPU/tools.v2default:default2
272default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
decoder_5_322default:default2
 2default:default2
02default:default2
12default:default2P
:C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/myCPU/tools.v2default:default2
272default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
regfile2default:default2
 2default:default2R
<C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/myCPU/regfile.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
regfile2default:default2
 2default:default2
02default:default2
12default:default2R
<C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/myCPU/regfile.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
alu2default:default2
 2default:default2N
8C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/myCPU/alu.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
alu2default:default2
 2default:default2
02default:default2
12default:default2N
8C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/myCPU/alu.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
mycpu_pipeline392default:default2
 2default:default2
02default:default2
12default:default2\
FC:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/myCPU/my_cpu_pipeline39.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
dist_mem_gen_02default:default2
 2default:default2�
�C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.runs/synth_1/.Xil/Vivado-38548-lenovo/realtime/dist_mem_gen_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
dist_mem_gen_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.runs/synth_1/.Xil/Vivado-38548-lenovo/realtime/dist_mem_gen_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
a2default:default2
102default:default2"
dist_mem_gen_02default:default2i
SC:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/rtl/soc_lite_top.v2default:default2
1732default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2

bridge_1x22default:default2
 2default:default2n
XC:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/rtl/BRIDGE/bridge_1x2.v2default:default2
502default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

bridge_1x22default:default2
 2default:default2
02default:default2
12default:default2n
XC:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/rtl/BRIDGE/bridge_1x2.v2default:default2
502default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
data_ram2default:default2
 2default:default2�
�C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.runs/synth_1/.Xil/Vivado-38548-lenovo/realtime/data_ram_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
data_ram2default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.runs/synth_1/.Xil/Vivado-38548-lenovo/realtime/data_ram_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
a2default:default2
52default:default2
data_ram2default:default2i
SC:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/rtl/soc_lite_top.v2default:default2
2132default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
confreg2default:default2
 2default:default2l
VC:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/rtl/CONFREG/confreg.v2default:default2
752default:default8@Z8-6157h px� 
R
%s
*synth2:
&	Parameter SIMULATION bound to: 1'b0 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
confreg2default:default2
 2default:default2
02default:default2
12default:default2l
VC:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/rtl/CONFREG/confreg.v2default:default2
752default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
soc_lite_top2default:default2
 2default:default2
02default:default2
12default:default2i
SC:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/rtl/soc_lite_top.v2default:default2
672default:default8@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2)
confreg_uart_data_reg2default:default2l
VC:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/rtl/CONFREG/confreg.v2default:default2
3302default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2*
confreg_uart_valid_reg2default:default2l
VC:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/rtl/CONFREG/confreg.v2default:default2
3312default:default8@Z8-6014h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
conf_addr[31]2default:default2
confreg2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
conf_addr[30]2default:default2
confreg2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
conf_addr[29]2default:default2
confreg2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
conf_addr[28]2default:default2
confreg2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
conf_addr[27]2default:default2
confreg2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
conf_addr[26]2default:default2
confreg2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
conf_addr[25]2default:default2
confreg2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
conf_addr[24]2default:default2
confreg2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
conf_addr[23]2default:default2
confreg2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
conf_addr[22]2default:default2
confreg2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
conf_addr[21]2default:default2
confreg2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
conf_addr[20]2default:default2
confreg2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
conf_addr[19]2default:default2
confreg2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
conf_addr[18]2default:default2
confreg2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
conf_addr[17]2default:default2
confreg2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
conf_addr[16]2default:default2
confreg2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
clk2default:default2

bridge_1x22default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
resetn2default:default2

bridge_1x22default:defaultZ8-7129h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 . Memory (MB): peak = 1379.945 ; gain = 511.215
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1379.945 ; gain = 511.215
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1379.945 ; gain = 511.215
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0762default:default2
1379.9452default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0/dist_mem_gen_0_in_context.xdc2default:default2
inst_ram	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0/dist_mem_gen_0_in_context.xdc2default:default2
inst_ram	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.gen/sources_1/ip/data_ram/data_ram/data_ram_in_context.xdc2default:default2
data_ram	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.gen/sources_1/ip/data_ram/data_ram/data_ram_in_context.xdc2default:default2
data_ram	2default:default8Z20-847h px� 
w
Parsing XDC File [%s]
179*designutils26
 D:/QQ/soc_lite_top_on_Nexys4.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils26
 D:/QQ/soc_lite_top_on_Nexys4.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project24
 D:/QQ/soc_lite_top_on_Nexys4.xdc2default:default22
.Xil/soc_lite_top_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1481.4262default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0182default:default2
1481.4262default:default2
0.0002default:defaultZ17-268h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2
data_ram2default:default2
clk2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2
inst_ram2default:default2
clk2default:default2
10.0002default:defaultZ38-316h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 1481.441 ; gain = 612.711
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Loading part: xc7a100ticsg324-1L
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 1481.441 ; gain = 612.711
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 1481.441 ; gain = 612.711
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1481.441 ; gain = 612.711
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   33 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 2     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 37    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 27    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 23    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   7 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 6     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:47 ; elapsed = 00:00:49 . Memory (MB): peak = 1481.441 ; gain = 612.711
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping Report (see note below)
2default:defaulth px� 
�
%s*synth2h
T+------------+------------------+-----------+----------------------+--------------+
2default:defaulth px� 
�
%s*synth2i
U|Module Name | RTL Object       | Inference | Size (Depth x Width) | Primitives   | 
2default:defaulth px� 
�
%s*synth2h
T+------------+------------------+-----------+----------------------+--------------+
2default:defaulth px� 
�
%s*synth2i
U|cpu         | u_regfile/rf_reg | Implied   | 32 x 32              | RAM32M x 12  | 
2default:defaulth px� 
�
%s*synth2i
U+------------+------------------+-----------+----------------------+--------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:56 ; elapsed = 00:00:58 . Memory (MB): peak = 1481.441 ; gain = 612.711
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:01:05 ; elapsed = 00:01:07 . Memory (MB): peak = 1482.293 ; gain = 613.562
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
S
%s
*synth2;
'
Distributed RAM: Final Mapping Report
2default:defaulth p
x
� 
�
%s
*synth2h
T+------------+------------------+-----------+----------------------+--------------+
2default:defaulth p
x
� 
�
%s
*synth2i
U|Module Name | RTL Object       | Inference | Size (Depth x Width) | Primitives   | 
2default:defaulth p
x
� 
�
%s
*synth2h
T+------------+------------------+-----------+----------------------+--------------+
2default:defaulth p
x
� 
�
%s
*synth2i
U|cpu         | u_regfile/rf_reg | Implied   | 32 x 32              | RAM32M x 12  | 
2default:defaulth p
x
� 
�
%s
*synth2i
U+------------+------------------+-----------+----------------------+--------------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:01:06 ; elapsed = 00:01:09 . Memory (MB): peak = 1500.375 ; gain = 631.645
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:01:12 ; elapsed = 00:01:15 . Memory (MB): peak = 1500.375 ; gain = 631.645
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:12 ; elapsed = 00:01:15 . Memory (MB): peak = 1500.375 ; gain = 631.645
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:13 ; elapsed = 00:01:15 . Memory (MB): peak = 1500.375 ; gain = 631.645
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:13 ; elapsed = 00:01:15 . Memory (MB): peak = 1500.375 ; gain = 631.645
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:13 ; elapsed = 00:01:15 . Memory (MB): peak = 1500.375 ; gain = 631.645
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:13 ; elapsed = 00:01:15 . Memory (MB): peak = 1500.375 ; gain = 631.645
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
� 
P
%s
*synth28
$|      |BlackBox name  |Instances |
2default:defaulth p
x
� 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
� 
P
%s
*synth28
$|1     |dist_mem_gen_0 |         1|
2default:defaulth p
x
� 
P
%s
*synth28
$|2     |data_ram       |         1|
2default:defaulth p
x
� 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
J
%s*synth22
+------+-------------+------+
2default:defaulth px� 
J
%s*synth22
|      |Cell         |Count |
2default:defaulth px� 
J
%s*synth22
+------+-------------+------+
2default:defaulth px� 
J
%s*synth22
|1     |data_ram     |     1|
2default:defaulth px� 
J
%s*synth22
|2     |dist_mem_gen |     1|
2default:defaulth px� 
J
%s*synth22
|3     |BUFG         |     1|
2default:defaulth px� 
J
%s*synth22
|4     |CARRY4       |    56|
2default:defaulth px� 
J
%s*synth22
|5     |LUT1         |     8|
2default:defaulth px� 
J
%s*synth22
|6     |LUT2         |    76|
2default:defaulth px� 
J
%s*synth22
|7     |LUT3         |   210|
2default:defaulth px� 
J
%s*synth22
|8     |LUT4         |   112|
2default:defaulth px� 
J
%s*synth22
|9     |LUT5         |   300|
2default:defaulth px� 
J
%s*synth22
|10    |LUT6         |   748|
2default:defaulth px� 
J
%s*synth22
|11    |MUXF7        |     4|
2default:defaulth px� 
J
%s*synth22
|12    |RAM32M       |    10|
2default:defaulth px� 
J
%s*synth22
|13    |RAM32X1D     |     4|
2default:defaulth px� 
J
%s*synth22
|14    |FDRE         |  1193|
2default:defaulth px� 
J
%s*synth22
|15    |FDSE         |    71|
2default:defaulth px� 
J
%s*synth22
|16    |IBUF         |    12|
2default:defaulth px� 
J
%s*synth22
|17    |OBUF         |    35|
2default:defaulth px� 
J
%s*synth22
+------+-------------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:13 ; elapsed = 00:01:15 . Memory (MB): peak = 1500.375 ; gain = 631.645
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:59 ; elapsed = 00:01:11 . Memory (MB): peak = 1500.375 ; gain = 530.148
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:13 ; elapsed = 00:01:15 . Memory (MB): peak = 1500.375 ; gain = 631.645
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0312default:default2
1503.2622default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
742default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1506.9022default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 14 instances were transformed.
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 10 instances
  RAM32X1D => RAM32X1D (RAMD32(x2)): 4 instances
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
a9647e162default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
452default:default2
262default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:202default:default2
00:01:252default:default2
1506.9022default:default2
1039.3012default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
zC:/Users/Lenovo1/Desktop/mycpu_env/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.runs/synth_1/soc_lite_top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
nExecuting : report_utilization -file soc_lite_top_utilization_synth.rpt -pb soc_lite_top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Apr 29 19:13:23 20242default:defaultZ17-206h px� 


End Record