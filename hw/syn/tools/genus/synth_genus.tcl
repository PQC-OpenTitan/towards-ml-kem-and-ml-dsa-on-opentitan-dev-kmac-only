# Copyright "Towards ML-KEM & ML-DSA on OpenTitan" Authors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0


############################################
#
# TCL script for Synthesis with Genus
#
############################################

# Required if SRAM blocks are synthesized
set_db hdl_max_memory_address_range 65536

############################################
# Read Sources
############################################
source ${READ_SOURCES}.tcl

############################################
# Elaborate Design
############################################

# Effort: none, low, medium, high, express
set_db syn_global_effort high

elaborate top_earlgrey

check_design -unresolved top_earlgrey 
check_design -combo_loops top_earlgrey
check_design -multiple_driver top_earlgrey

############################################
# Set Timing and Design Constraints
############################################

read_sdc ${REPO_TOP}/hw/top_earlgrey/syn/chip_earlgrey_asic.sdc

############################################
# Apply Optimization Directives
############################################

puts "Apply Optimization Directive"

############################################
# Synthesize Design
############################################

#SYN GENERIC - Prepare Logic
syn_gen
#SYN MAP - Map Design for Target Technology
syn_map
#SYN OPT - Optimize final results
syn_opt



############################################
# Write Output Files
############################################

# REPORTS
#check_timing_intent -verbose > ../reports/timing_intent.rpt
report timing > ../reports/timing.rpt
report area > ../reports/area.rpt
report power > ../reports/power.rpt

# RESULTS

# Flat hierarchy
#ungroup -all -flatten

#write_hdl >  $TARGET_PATH/${NETLIST_NAME}_${FREQUENCY}.v
#write_sdc > ../outputs/CONSTRAINT.sdc
#write_sdf > ../outputs/SDF.sdf

quit
