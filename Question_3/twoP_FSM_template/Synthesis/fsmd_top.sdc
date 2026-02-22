###################################################################

# Created by write_sdc on Fri Feb 20 04:08:06 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_driving_cell -lib_cell INVX1 [get_ports clka]
set_driving_cell -lib_cell INVX1 [get_ports clkb]
set_driving_cell -lib_cell INVX1 [get_ports RESTART]
set_driving_cell -lib_cell INVX1 [get_ports LOAD]
set_driving_cell -lib_cell INVX1 [get_ports NOT_IN]
set_driving_cell -lib_cell INVX1 [get_ports {DATA[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {DATA[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {DATA[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {DATA[0]}]
create_clock [get_ports clka]  -period 40  -waveform {0 20}
create_clock [get_ports clkb]  -period 40  -waveform {0 20}
set_false_path   -from [get_clocks clka]  -to [get_clocks clkb]
set_false_path   -from [get_clocks clkb]  -to [get_clocks clka]
set_input_delay -clock clka  1  [get_ports clkb]
set_input_delay -clock clka  1  [get_ports RESTART]
set_input_delay -clock clka  1  [get_ports LOAD]
set_input_delay -clock clka  1  [get_ports NOT_IN]
set_input_delay -clock clka  1  [get_ports {DATA[3]}]
set_input_delay -clock clka  1  [get_ports {DATA[2]}]
set_input_delay -clock clka  1  [get_ports {DATA[1]}]
set_input_delay -clock clka  1  [get_ports {DATA[0]}]
set_output_delay -clock clka  1  [get_ports {DO[3]}]
set_output_delay -clock clka  1  [get_ports {DO[2]}]
set_output_delay -clock clka  1  [get_ports {DO[1]}]
set_output_delay -clock clka  1  [get_ports {DO[0]}]
set_output_delay -clock clka  1  [get_ports {STATE[2]}]
set_output_delay -clock clka  1  [get_ports {STATE[1]}]
set_output_delay -clock clka  1  [get_ports {STATE[0]}]
set_output_delay -clock clka  1  [get_ports ctrl_clear]
set_output_delay -clock clka  1  [get_ports ctrl_ld]
set_output_delay -clock clka  1  [get_ports ctrl_not]
