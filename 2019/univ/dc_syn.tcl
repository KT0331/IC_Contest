#uplevel #0 synopsys_dc.setup

#Read All Files
read_file -format verilog  CONV.v
#read_file -format sverilog  geofence.v
current_design CONV
link

#Setting Clock Constraints
source -echo -verbose CONV.sdc
check_design
set high_fanout_net_threshold 0
uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]

#Synthesis all design
#compile -map_effort high -area_effort high
#compile -map_effort high -area_effort high -inc
#compile
compile_ultra

write -format ddc     -hierarchy -output "CONV_syn.ddc"
write_sdf -version 1.0  CONV_syn.sdf
write -format verilog -hierarchy -output CONV_syn.v
report_area > area.log
report_power > power.log
report_timing > timing.log
report_qor   >  CONV_syn.qor
