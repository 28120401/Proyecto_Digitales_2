
�
�You have specified a new message control rule that is equivalent to an existing rule with attributes '%s'. The existing rule will be replaced.601*common2
 -id {17-179}  -suppress Z17-1361h px� 
�
�You have specified a new message control rule that is equivalent to an existing rule with attributes '%s'. The existing rule will be replaced.601*common2
 -id {17-179}  -suppress Z17-1361h px� 
�
�You have specified a new message control rule that is equivalent to an existing rule with attributes '%s'. The existing rule will be replaced.601*common2
 -id {17-179}  -suppress Z17-1361h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:082

00:00:082	
513.1372	
200.691Z17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
�Failed to load user IP repository '%s'; %s
If this directory should no longer be in your list of user repositories, go to the IP Settings dialog and remove it.
1318*coregen2
d:/WorkBORI/Basys-3/hw/repo2 
Can't find the specified path.Z19-2248h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
C:/Xilinx/Vivado/2024.1/data/ipZ19-2313h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/utils_1/imports/synth_1/XADCdemo.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2m
kC:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/utils_1/imports/synth_1/XADCdemo.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
g
Command: %s
53*	vivadotcl26
4synth_design -top top_fft_xadc -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
IP '%s' is locked:
%s
1260*coregen2

xadc_wiz_02�
�* IP definition 'XADC Wizard (3.3)' for IP 'xadc_wiz_0' (customized with software release 2020.1) has a different revision in the IP Catalog.Z19-2162h px�
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 
Z
$Part: %s does not have CEAM library.966*device2
xc7a35tcpg236-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
�
�You have specified a new message control rule that is equivalent to an existing rule with attributes '%s'. The existing rule will be replaced.601*common2
 -id {17-179}  -suppress Z17-1361h px� 
M
#Helper process launched with PID %s4824*oasys2
2164Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1379.422 ; gain = 449.734
h px� 
�
synthesizing module '%s'638*oasys2
top_fft_xadc2`
\C:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/sources_1/new/top.vhd2
168@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
XADC_module2h
dC:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/sources_1/new/xadc_module.vhd2
158@Z8-638h px� 
�
synthesizing module '%s'%s4497*oasys2

xadc_wiz_02
 2�
�C:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.runs/synth_1/.Xil/Vivado-22572-DESKTOP-B69ULGN/realtime/xadc_wiz_0_stub.v2
58@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

xadc_wiz_02
 2
02
12�
�C:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.runs/synth_1/.Xil/Vivado-22572-DESKTOP-B69ULGN/realtime/xadc_wiz_0_stub.v2
58@Z8-6155h px� 
�
default block is never used226*oasys2h
dC:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/sources_1/new/xadc_module.vhd2
648@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
XADC_module2
02
12h
dC:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/sources_1/new/xadc_module.vhd2
158@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
fft_module_82i
eC:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/sources_1/new/FFT_module_8.vhd2
268@Z8-638h px� 
�
synthesizing module '%s'%s4497*oasys2
xfft_12
 2�
�C:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.runs/synth_1/.Xil/Vivado-22572-DESKTOP-B69ULGN/realtime/xfft_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xfft_12
 2
02
12�
�C:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.runs/synth_1/.Xil/Vivado-22572-DESKTOP-B69ULGN/realtime/xfft_1_stub.v2
68@Z8-6155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
fft_module_82
02
12i
eC:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/sources_1/new/FFT_module_8.vhd2
268@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
uart_module2d
`C:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/sources_1/new/Tx-uart.vhd2
158@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
transmitter2g
cC:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/sources_1/new/Transmiter.vhd2
158@Z8-638h px� 
�
default block is never used226*oasys2g
cC:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/sources_1/new/Transmiter.vhd2
638@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
transmitter2
02
12g
cC:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/sources_1/new/Transmiter.vhd2
158@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
uart_module2
02
12d
`C:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/sources_1/new/Tx-uart.vhd2
158@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
top_fft_xadc2
02
12`
\C:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/sources_1/new/top.vhd2
168@Z8-256h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn12
top_fft_xadcZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1493.805 ; gain = 564.117
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1493.805 ; gain = 564.117
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1493.805 ; gain = 564.117
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1493.8052
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0/xadc_wiz_0_in_context.xdc2
XADC_inst/XLXI_7	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0/xadc_wiz_0_in_context.xdc2
XADC_inst/XLXI_7	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2z
vc:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.gen/sources_1/ip/xfft_1/xfft_1/xfft_1_in_context.xdc2
FFT_inst/FFT_IP	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2z
vc:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.gen/sources_1/ip/xfft_1/xfft_1/xfft_1_in_context.xdc2
FFT_inst/FFT_IP	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2r
nC:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/TOP_ADC_FFT/imports/new/top_fft_adc.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
dp2r
nC:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/TOP_ADC_FFT/imports/new/top_fft_adc.xdc2
78@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
dp2r
nC:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/TOP_ADC_FFT/imports/new/top_fft_adc.xdc2
98@Z12-584h px�
�
Finished Parsing XDC File [%s]
178*designutils2r
nC:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/TOP_ADC_FFT/imports/new/top_fft_adc.xdc8Z20-178h px� 
�
�One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2p
nC:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/TOP_ADC_FFT/imports/new/top_fft_adc.xdc2 
.Xil/top_fft_xadc_propImpl.xdcZ1-498h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2p
nC:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.srcs/TOP_ADC_FFT/imports/new/top_fft_adc.xdc2 
.Xil/top_fft_xadc_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2a
]C:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2a
]C:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.runs/synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1585.4302
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0052

1585.4302
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1585.430 ; gain = 655.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1585.430 ; gain = 655.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1585.430 ; gain = 655.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
top_fft_xadcZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    idle |                              001 |                               00
h p
x
� 
y
%s
*synth2a
_          send_magnitude |                              010 |                               01
h p
x
� 
y
%s
*synth2a
_              send_phase |                              100 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2
top_fft_xadcZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1585.430 ; gain = 655.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    8 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 7     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 3     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn12
top_fft_xadcZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1585.430 ; gain = 655.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 1585.430 ; gain = 655.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 1585.430 ; gain = 655.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 1585.430 ; gain = 655.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 1585.430 ; gain = 655.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 1585.430 ; gain = 655.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 1585.430 ; gain = 655.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 1585.430 ; gain = 655.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 1585.430 ; gain = 655.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 1585.430 ; gain = 655.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|      |BlackBox name |Instances |
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|1     |xfft_1        |         1|
h p
x
� 
=
%s
*synth2%
#|2     |xadc_wiz_0    |         1|
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |xadc_wiz |     1|
h px� 
4
%s*synth2
|2     |xfft     |     1|
h px� 
4
%s*synth2
|3     |BUFG     |     1|
h px� 
4
%s*synth2
|4     |CARRY4   |     8|
h px� 
4
%s*synth2
|5     |LUT1     |     3|
h px� 
4
%s*synth2
|6     |LUT2     |    12|
h px� 
4
%s*synth2
|7     |LUT3     |    12|
h px� 
4
%s*synth2
|8     |LUT4     |    21|
h px� 
4
%s*synth2
|9     |LUT5     |     9|
h px� 
4
%s*synth2
|10    |LUT6     |     5|
h px� 
4
%s*synth2
|11    |FDRE     |    47|
h px� 
4
%s*synth2
|12    |FDSE     |     1|
h px� 
4
%s*synth2
|13    |IBUF     |    13|
h px� 
4
%s*synth2
|14    |OBUF     |     1|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 1585.430 ; gain = 655.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:25 ; elapsed = 00:00:36 . Memory (MB): peak = 1585.430 ; gain = 564.117
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 1585.430 ; gain = 655.742
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1585.4302
0.000Z17-268h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
8Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1585.4302
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

9dca7f2dZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
432
112
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:432

00:00:462

1585.4302

1059.070Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0022

1585.4302
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2a
_C:/Users/adria/vivadoAndrea/proyectoDigitales2/proyectoDigitales2.runs/synth_1/top_fft_xadc.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2c
areport_utilization -file top_fft_xadc_utilization_synth.rpt -pb top_fft_xadc_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Nov 26 21:34:14 2024Z17-206h px� 


End Record