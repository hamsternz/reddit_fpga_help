set_property PACKAGE_PIN H5      [get_ports q] 
set_property IOSTANDARD LVCMOS33 [get_ports q] 
set_property PACKAGE_PIN G6      [get_ports locked] 
set_property IOSTANDARD LVCMOS33 [get_ports locked] 
set_property PACKAGE_PIN D9      [get_ports rst] 
set_property IOSTANDARD LVCMOS33 [get_ports rst]

set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk] 
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]

set_property CONFIG_VOLTAGE 3.3 [current_design] 
set_property CFGBVS VCCO [current_design]