
# Efinity Interface Designer SDC
# Version: 2019.3.272
# Date: 2020-01-03 13:02

# Copyright (C) 2017 - 2019 Efinix Inc. All rights reserved.

# Device: T20F169
# Project: DEMO
# Timing Model: C4 (final)

# PLL Constraints
#################
create_clock -period 40.00 clk

# GPIO Constraints
####################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {butten_i}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {butten_i}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {rasp0_i}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {rasp0_i}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {rasp1_i}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {rasp1_i}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {raspi_gpiox8[7]}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {raspi_gpiox8[7]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {butten_o}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {butten_o}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {freq_1sec_o}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {freq_1sec_o}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led0_o}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led0_o}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led1_o}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led1_o}]

# LVDS TX GPIO Constraints
############################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {raspi_gpiox8[6]}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {raspi_gpiox8[6]}]

# LVDS Rx Constraints
####################

# LVDS TX GPIO Constraints
############################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {raspi_gpiox8[0]}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {raspi_gpiox8[0]}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {raspi_gpiox8[1]}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {raspi_gpiox8[1]}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {raspi_gpiox8[2]}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {raspi_gpiox8[2]}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {raspi_gpiox8[3]}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {raspi_gpiox8[3]}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {raspi_gpiox8[4]}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {raspi_gpiox8[4]}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {raspi_gpiox8[5]}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {raspi_gpiox8[5]}]

# LVDS Tx Constraints
####################

# JTAG Constraints
####################
# create_clock -period <USER_PERIOD> [get_ports {bscan_TCK}]
# create_clock -period <USER_PERIOD> [get_ports {bscan_DRCK}]
set_output_delay -clock bscan_TCK -max 0.111 [get_ports {bscan_TDO}]
set_output_delay -clock bscan_TCK -min 0.053 [get_ports {bscan_TDO}]
set_input_delay -clock_fall -clock bscan_TCK -max 0.267 [get_ports {bscan_CAPTURE}]
set_input_delay -clock_fall -clock bscan_TCK -min 0.134 [get_ports {bscan_CAPTURE}]
set_input_delay -clock_fall -clock bscan_TCK -max 0.267 [get_ports {bscan_RESET}]
set_input_delay -clock_fall -clock bscan_TCK -min 0.134 [get_ports {bscan_RESET}]
set_input_delay -clock_fall -clock bscan_TCK -max 0.267 [get_ports {bscan_RUNTEST}]
set_input_delay -clock_fall -clock bscan_TCK -min 0.134 [get_ports {bscan_RUNTEST}]
set_input_delay -clock_fall -clock bscan_TCK -max 0.231 [get_ports {bscan_SEL}]
set_input_delay -clock_fall -clock bscan_TCK -min 0.116 [get_ports {bscan_SEL}]
set_input_delay -clock_fall -clock bscan_TCK -max 0.267 [get_ports {bscan_UPDATE}]
set_input_delay -clock_fall -clock bscan_TCK -min 0.134 [get_ports {bscan_UPDATE}]
set_input_delay -clock_fall -clock bscan_TCK -max 0.321 [get_ports {bscan_SHIFT}]
set_input_delay -clock_fall -clock bscan_TCK -min 0.161 [get_ports {bscan_SHIFT}]
