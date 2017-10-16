/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     SIZE = 16
     DIV = 24
     TOP = 0
     UP = 1
*/
module counter_8 (
    input clk,
    input rst,
    output reg [15:0] value
  );
  
  localparam SIZE = 5'h10;
  localparam DIV = 5'h18;
  localparam TOP = 1'h0;
  localparam UP = 1'h1;
  
  
  reg [39:0] M_ctr_d, M_ctr_q = 1'h0;
  
  localparam MAX_VALUE = 25'h0ffffff;
  
  always @* begin
    M_ctr_d = M_ctr_q;
    
    value = M_ctr_q[24+15-:16];
    if (1'h1) begin
      M_ctr_d = M_ctr_q + 1'h1;
      if (1'h0 && M_ctr_q == 25'h0ffffff) begin
        M_ctr_d = 1'h0;
      end
    end else begin
      M_ctr_d = M_ctr_q - 1'h1;
      if (1'h0 && M_ctr_q == 1'h0) begin
        M_ctr_d = 25'h0ffffff;
      end
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_ctr_q <= 1'h0;
    end else begin
      M_ctr_q <= M_ctr_d;
    end
  end
  
endmodule
