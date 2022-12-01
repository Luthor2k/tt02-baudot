`default_nettype none

module luthor2k_top_tto
  #(parameter CLOCK_RATE=1000)
  (
   input [7:0]  io_in,
   output [7:0] io_out
   );
  
  // INPUTS
  wire                      clk_ascii   = io_in[0];
  wire                      clk_baudot = io_in[1];
  wire                      baudot_input = io_in[2];
  
  // OUTPUTS
  wire                      ascii_serial_output;
  wire                      baudot_ready_out;
  
  assign io_out[0] = ascii_serial_output;
  assign io_out[1] = baudot_ready_out;  

  // instatiate converter  .function_pin(top_pin)
  baudot baudot(.vee2c6c(clk_ascii), .ve9039a(clk_baudot), .vcb44a7(baudot_input), .v7c2fea(ascii_serial_output), .v0fbb9e(baudot_ready_out));
  
endmodule
