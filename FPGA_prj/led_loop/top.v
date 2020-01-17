/////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2013-2018 Efinix Inc. All rights reserved.
//
// Dual Clock FIFO
//
//********************************
// Revisions:
// 0.0 Initial rev
//********************************

module top
(
//======= debug ==========//
    input  bscan_CAPTURE,
    input  bscan_DRCK,
    input  bscan_RESET,
    input  bscan_RUNTEST,
    input  bscan_SEL,
    input  bscan_SHIFT,
    input  bscan_TCK,
    input  bscan_TDI,
    input  bscan_TMS,
    input  bscan_UPDATE,
    output bscan_TDO,
//======================//	
  input      clk,
  input      lock,
  input [7:0]raspi_gpiox8,  
  
  //----- rasp ----//
  output  freq_1sec_o,
  output  butten_o,
  
  input   rasp0_i,
  input   rasp1_i,
  //----- FPGA ---//
  input   butten_i, 
  output  led0_o,
  output  led1_o
);


reg [30:0] cnt;

// we can change the cnt value, then change the singal led blinking speed
// 25M , it is one second,  12.5M is half second
reg        freq_1sec;
always@(posedge clk)
  if(!lock)begin
    cnt       <= 0;
	freq_1sec <= 0;
  end else if(cnt == 12500000)begin
    cnt       <= 0;
	freq_1sec <= ~freq_1sec;
  end else 	
    cnt       <= cnt + 1;
	
assign freq_1sec_o = freq_1sec;	
assign butten_o    = butten_i;

assign led0_o      = rasp0_i;
assign led1_o      = rasp1_i;

edb_top edb_top (
    // debug core ports
    .bscan_CAPTURE (bscan_CAPTURE),
    .bscan_DRCK    (bscan_DRCK   ),
    .bscan_RESET   (bscan_RESET  ),
    .bscan_RUNTEST (bscan_RUNTEST),
    .bscan_SEL     (bscan_SEL    ),
    .bscan_SHIFT   (bscan_SHIFT  ),
    .bscan_TCK     (bscan_TCK    ),
    .bscan_TDI     (bscan_TDI    ),
    .bscan_TMS     (bscan_TMS    ),
    .bscan_UPDATE  (bscan_UPDATE ),
    .bscan_TDO     (bscan_TDO    ),
    .la0_clk       (clk          ),
    .la0_probe0    ({raspi_gpiox8,butten_i} )
); 
endmodule
