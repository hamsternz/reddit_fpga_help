set_part "xc7a100tcsg324-1"

# read all design files
read_verilog hdl/test.v
read_xdc     constraints/constraints.xdc
import_ip    ip/clk_wiz_0.xci 
save_project test.xpr -force
update_ip
synth_ip -objects [ get_ips clk_wiz_0 ]

# Synthesize Design
synth_design -top test -part "xc7a100tcsg324-1" -flatten_hierarchy none
write_checkpoint test.dcp -force

# Opt Design 
opt_design
# Place Design
place_design 
# Route Design
route_design

write_checkpoint top.dcp -force

# Write the bitstream	
write_bitstream -force -file top.bit

# Generate reports
report_timing -nworst 1
report_utilization -hierarchical
