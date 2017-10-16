/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    output reg [23:0] io_led,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    input [23:0] io_dip
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  reg [7:0] M_led_reg_d, M_led_reg_q = 1'h0;
  wire [3-1:0] M_ctr_value;
  counter_2 ctr (
    .clk(clk),
    .rst(rst),
    .value(M_ctr_value)
  );
  wire [8-1:0] M_mystate_out;
  wire [1-1:0] M_mystate_z;
  wire [1-1:0] M_mystate_v;
  wire [1-1:0] M_mystate_n;
  reg [1-1:0] M_mystate_dipsw;
  reg [6-1:0] M_mystate_alufn;
  reg [8-1:0] M_mystate_a;
  reg [8-1:0] M_mystate_b;
  state_3 mystate (
    .clk(clk),
    .rst(rst),
    .dipsw(M_mystate_dipsw),
    .alufn(M_mystate_alufn),
    .a(M_mystate_a),
    .b(M_mystate_b),
    .out(M_mystate_out),
    .z(M_mystate_z),
    .v(M_mystate_v),
    .n(M_mystate_n)
  );
  
  wire [7-1:0] M_seven_seg0_segs;
  reg [4-1:0] M_seven_seg0_char;
  seven_seg_4 seven_seg0 (
    .char(M_seven_seg0_char),
    .segs(M_seven_seg0_segs)
  );
  
  wire [7-1:0] M_seven_seg1_segs;
  reg [4-1:0] M_seven_seg1_char;
  seven_seg_4 seven_seg1 (
    .char(M_seven_seg1_char),
    .segs(M_seven_seg1_segs)
  );
  
  wire [7-1:0] M_seven_seg2_segs;
  reg [4-1:0] M_seven_seg2_char;
  seven_seg_4 seven_seg2 (
    .char(M_seven_seg2_char),
    .segs(M_seven_seg2_segs)
  );
  
  wire [7-1:0] M_seven_seg3_segs;
  reg [4-1:0] M_seven_seg3_char;
  seven_seg_4 seven_seg3 (
    .char(M_seven_seg3_char),
    .segs(M_seven_seg3_segs)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    M_mystate_a = io_dip[0+7-:8];
    M_mystate_b = io_dip[8+7-:8];
    M_mystate_dipsw = io_dip[16+7+0-:1];
    M_mystate_alufn = io_dip[16+0+5-:6];
    M_seven_seg3_char = 4'hd;
    M_seven_seg2_char = M_mystate_z;
    M_seven_seg1_char = M_mystate_v;
    M_seven_seg0_char = M_mystate_n;
    
    case (M_ctr_value)
      1'h0: begin
        io_seg = ~M_seven_seg0_segs;
        io_sel = 4'he;
      end
      1'h1: begin
        io_seg = ~M_seven_seg1_segs;
        io_sel = 4'hd;
      end
      2'h2: begin
        io_seg = ~M_seven_seg2_segs;
        io_sel = 4'hb;
      end
      2'h3: begin
        io_seg = ~M_seven_seg3_segs;
        io_sel = 4'h7;
      end
      default: begin
        io_seg = ~M_seven_seg0_segs;
        io_sel = 4'he;
      end
    endcase
    io_led = io_dip;
    led = M_mystate_out;
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_led_reg_q <= 1'h0;
    end else begin
      M_led_reg_q <= M_led_reg_d;
    end
  end
  
endmodule
