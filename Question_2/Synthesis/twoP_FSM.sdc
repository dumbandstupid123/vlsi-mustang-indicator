###################################################################

# Created by write_sdc on Thu Feb 19 23:13:53 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_driving_cell -lib_cell INVX1 [get_ports clka]
set_driving_cell -lib_cell INVX1 [get_ports clkb]
set_driving_cell -lib_cell INVX1 [get_ports RESTART]
set_driving_cell -lib_cell INVX1 [get_ports LEFT]
set_driving_cell -lib_cell INVX1 [get_ports RIGHT]
set_driving_cell -lib_cell INVX1 [get_ports BRAKE]
create_clock [get_ports clka]  -period 20  -waveform {0 10}
set_input_delay -clock clka  1  [get_ports clkb]
set_input_delay -clock clka  1  [get_ports RESTART]
set_input_delay -clock clka  1  [get_ports LEFT]
set_input_delay -clock clka  1  [get_ports RIGHT]
set_input_delay -clock clka  1  [get_ports BRAKE]
set_output_delay -clock clka  1  [get_ports L0]
set_output_delay -clock clka  1  [get_ports L1]
set_output_delay -clock clka  1  [get_ports L2]
set_output_delay -clock clka  1  [get_ports R0]
set_output_delay -clock clka  1  [get_ports R1]
set_output_delay -clock clka  1  [get_ports R2]
set_output_delay -clock clka  1  [get_ports ERROR]
set_output_delay -clock clka  1  [get_ports {state[3]}]
set_output_delay -clock clka  1  [get_ports {state[2]}]
set_output_delay -clock clka  1  [get_ports {state[1]}]
set_output_delay -clock clka  1  [get_ports {state[0]}]
