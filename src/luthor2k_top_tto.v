`default_nettype none

module luthor2k_top_tto
  #(parameter CLOCK_RATE=1000)
  (
   input [7:0]  io_in,
   output [7:0] io_out
   );
  
  // INPUTS
  wire                      clk   = io_in[0];
  wire                      ascii_in = io_in[1];
  wire                      baudot_in = io_in[2];
  
  // OUTPUTS
  wire                      ascii_out;
  wire                      baudot_out;
  
  assign io_out[2] = ascii_out;
  assign io_out[2] = baudot_out;  

  // instatiate converter
  baudot baudot(.clk(clk), .ascii_in(ascii_in), .baudot_in(baudot_in), .ascii_out(ascii_out), .baudot_out(baudot_out));
  
endmodule
