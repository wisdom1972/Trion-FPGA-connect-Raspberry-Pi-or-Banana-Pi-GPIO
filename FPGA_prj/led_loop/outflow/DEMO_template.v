
// Efinity Top-level template
// Version: 2019.3.272
// Date: 2020-01-03 13:02

// Copyright (C) 2017 - 2019 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as C:\Efinity\2019.3\project\demo_led_loop\FPGA_prj\led_loop\DEMO.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  DEMO
//     #4)  Insert design content.


module DEMO
(
  input [7:0] raspi_gpiox8,
  input rasp1_i,
  input bscan_TMS,
  input bscan_UPDATE,
  input bscan_TDI,
  input bscan_SEL,
  input bscan_RESET,
  input bscan_DRCK,
  input bscan_TCK,
  input lock,
  input rasp0_i,
  input butten_i,
  input clk,
  input bscan_CAPTURE,
  input bscan_SHIFT,
  input bscan_RUNTEST,
  output led0_o,
  output bscan_TDO,
  output butten_o,
  output freq_1sec_o,
  output led1_o
);


endmodule

