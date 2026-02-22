/**************************************************/
/* Compile Script for Synopsys                    */
/* */
/* dc_shell-t -f compile_dc.tcl                   */
/* */
/* OSU FreePDK 45nm                               */
/* Modified for OSU ami05 - Rice U. 2018          */
/**************************************************/

/* User Input Data Section */

# List all your verified Verilog files from the Questa directory
set my_verilog_files [list ../Questa/datapath.v ../Questa/fsm_controller.v ../Questa/fsmd_top.v]

# Set the top-level module name to match your fsmd_top.v
set my_toplevel fsmd_top

# Primary clock pin
set my_clock_pin clka

# 25 MHz results in a 40ns period (1000/25 = 40)
set my_clk_freq_MHz 25

# Standard delays for the ami05 library
set my_input_delay_ns 1
set my_output_delay_ns 1

/********************************************************************/
/* No modifications needed below.                                   */
/********************************************************************/

set OSUcells "/clear/apps/osu/soc/synopsys/lib/ami05"
set search_path [concat  $search_path $OSUcells]
set alib_library_analysis_path $OSUcells

set link_library [set target_library [concat  [list osu05_stdcells.db] [list dw_foundation.sldb]]]
set target_library "osu05_stdcells.db"

define_design_lib WORK -path ./WORK
set verilogout_show_unconnected_pins "true"

analyze -f verilog $my_verilog_files
elaborate $my_toplevel
current_design $my_toplevel

link
uniquify

set my_period [expr 1000 / $my_clk_freq_MHz]

# Define clka
set find_clock [ find port [list $my_clock_pin] ]
if {  $find_clock != [list] } {
   set clk_name $my_clock_pin
   create_clock -period $my_period $clk_name
} else {
   set clk_name vclk
   create_clock -period $my_period -name $clk_name
}

# Define clkb as a second clock to ensure proper timing analysis
create_clock -period $my_period -name clkb [get_ports clkb]
set_false_path -from [get_clocks clka] -to [get_clocks clkb]
set_false_path -from [get_clocks clkb] -to [get_clocks clka]

set_driving_cell  -lib_cell INVX1  [all_inputs]
set_input_delay $my_input_delay_ns -clock $clk_name [remove_from_collection [all_inputs] $my_clock_pin]
set_output_delay $my_output_delay_ns -clock $clk_name [all_outputs]

compile -ungroup_all -map_effort medium
compile -incremental_mapping -map_effort medium

check_design
report_constraint -all_violators

# Save the gate-level netlist as fsmd_top.vh
set filename [format "%s%s"  $my_toplevel ".vh"]
write -f verilog -output $filename

set filename [format "%s%s"  $my_toplevel ".sdc"]
write_sdc $filename

report_cell 
report_area 
report_timing -path full -delay max -max_paths 3 -nworst 1
report_power

redirect timing.rep { report_timing }
redirect cell.rep { report_cell }
redirect power.rep { report_power }
quit
