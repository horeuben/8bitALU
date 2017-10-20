/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module tester_4 (
    input clk,
    input rst,
    input forcederr,
    output reg [7:0] a,
    output reg [7:0] b,
    output reg [5:0] alufn,
    output reg [7:0] out,
    output reg z,
    output reg v,
    output reg n,
    output reg err
  );
  
  
  
  wire [5-1:0] M_ctr_value;
  counter_9 ctr (
    .clk(clk),
    .rst(rst),
    .value(M_ctr_value)
  );
  
  wire [1-1:0] M_myalu_z;
  wire [1-1:0] M_myalu_v;
  wire [1-1:0] M_myalu_n;
  wire [8-1:0] M_myalu_alu;
  reg [8-1:0] M_myalu_a;
  reg [8-1:0] M_myalu_b;
  reg [6-1:0] M_myalu_alufn;
  alu_5 myalu (
    .a(M_myalu_a),
    .b(M_myalu_b),
    .alufn(M_myalu_alufn),
    .z(M_myalu_z),
    .v(M_myalu_v),
    .n(M_myalu_n),
    .alu(M_myalu_alu)
  );
  
  reg [7:0] intermediate;
  
  always @* begin
    out = 1'h0;
    z = 1'h0;
    v = 1'h0;
    n = 1'h0;
    a = 1'h0;
    b = 1'h0;
    alufn = 1'h0;
    M_myalu_alufn = 1'h0;
    M_myalu_a = 1'h0;
    M_myalu_b = 1'h0;
    err = 1'h0;
    intermediate = 8'hff;
    
    case (M_ctr_value)
      5'h00: begin
        M_myalu_a = 8'h1b;
        M_myalu_b = 8'h25;
        a = 8'h1b;
        b = 8'h25;
        alufn = 6'h00;
        M_myalu_alufn = 6'h00;
        if (!forcederr) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h40 | M_myalu_z != 1'h0 | M_myalu_v != 1'h0 | M_myalu_n != 1'h0) begin
          err = 1'h1;
        end
      end
      5'h01: begin
        M_myalu_a = 8'h41;
        M_myalu_b = 8'h42;
        a = 8'h41;
        b = 8'h42;
        M_myalu_alufn = 6'h00;
        alufn = 6'h00;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h83 | M_myalu_z != 1'h0 | M_myalu_v != 1'h1 | M_myalu_n != 1'h1) begin
          err = 1'h1;
        end
      end
      5'h02: begin
        M_myalu_a = 8'h80;
        M_myalu_b = 8'h80;
        a = 8'h80;
        b = 8'h80;
        M_myalu_alufn = 6'h00;
        alufn = 6'h00;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h00 | M_myalu_z != 1'h0 | M_myalu_v != 1'h1 | M_myalu_n != 1'h0) begin
          err = 1'h1;
        end
      end
      5'h03: begin
        M_myalu_a = 8'hff;
        M_myalu_b = 8'h05;
        a = 8'hff;
        b = 8'h05;
        M_myalu_alufn = 6'h00;
        alufn = 6'h00;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h04 | M_myalu_z != 1'h0 | M_myalu_v != 1'h0 | M_myalu_n != 1'h0) begin
          err = 1'h1;
        end
      end
      5'h04: begin
        M_myalu_a = 8'h03;
        M_myalu_b = 8'h04;
        a = 8'h03;
        b = 8'h04;
        M_myalu_alufn = 6'h01;
        alufn = 6'h01;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'hff | M_myalu_z != 1'h0 | M_myalu_v != 1'h0 | M_myalu_n != 1'h1) begin
          err = 1'h1;
        end
      end
      5'h05: begin
        M_myalu_a = 8'h05;
        M_myalu_b = 8'h03;
        a = 8'h05;
        b = 8'h03;
        M_myalu_alufn = 6'h01;
        alufn = 6'h01;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h02 | M_myalu_z != 1'h0 | M_myalu_v != 1'h0 | M_myalu_n != 1'h0) begin
          err = 1'h1;
        end
      end
      5'h06: begin
        M_myalu_a = 8'h85;
        M_myalu_b = 8'h85;
        a = 8'h85;
        b = 8'h85;
        M_myalu_alufn = 6'h01;
        alufn = 6'h01;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h00 | M_myalu_z != 1'h1 | M_myalu_v != 1'h0 | M_myalu_n != 1'h0) begin
          err = 1'h1;
        end
      end
      5'h07: begin
        M_myalu_a = 8'h80;
        M_myalu_b = 8'h7f;
        a = 8'h80;
        b = 8'h7f;
        M_myalu_alufn = 6'h01;
        alufn = 6'h01;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h01 | M_myalu_z != 1'h1 | M_myalu_v != 1'h1 | M_myalu_n != 1'h0) begin
          err = 1'h1;
        end
      end
      5'h08: begin
        M_myalu_a = 8'h03;
        M_myalu_b = 8'h03;
        a = 8'h03;
        b = 8'h03;
        M_myalu_alufn = 6'h02;
        alufn = 6'h02;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h09) begin
          err = 1'h1;
        end
      end
      5'h09: begin
        M_myalu_a = 8'h89;
        M_myalu_b = 8'h15;
        a = 8'h89;
        b = 8'h15;
        M_myalu_alufn = 6'h02;
        alufn = 6'h02;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h3d) begin
          err = 1'h1;
        end
      end
      5'h0a: begin
        M_myalu_a = 8'h89;
        M_myalu_b = 8'h03;
        a = 8'h89;
        b = 8'h03;
        M_myalu_alufn = 6'h20;
        alufn = 6'h20;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h48) begin
          err = 1'h1;
        end
      end
      5'h0b: begin
        M_myalu_a = 8'ha4;
        M_myalu_b = 8'h04;
        a = 8'ha4;
        b = 8'h04;
        M_myalu_alufn = 6'h21;
        alufn = 6'h21;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h0a) begin
          err = 1'h1;
        end
      end
      5'h0c: begin
        M_myalu_a = 8'ha4;
        M_myalu_b = 8'h02;
        a = 8'ha4;
        b = 8'h02;
        M_myalu_alufn = 6'h23;
        alufn = 6'h23;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'he9) begin
          err = 1'h1;
        end
      end
      5'h0d: begin
        M_myalu_a = 8'h32;
        M_myalu_b = 8'h05;
        a = 8'h32;
        b = 8'h05;
        M_myalu_alufn = 6'h23;
        alufn = 6'h23;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h01) begin
          err = 1'h1;
        end
      end
      5'h0e: begin
        M_myalu_a = 8'hc0;
        M_myalu_b = 8'h06;
        a = 8'hc0;
        b = 8'h06;
        M_myalu_alufn = 6'h23;
        alufn = 6'h23;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'hff) begin
          err = 1'h1;
        end
      end
      5'h0f: begin
        M_myalu_a = 8'h90;
        M_myalu_b = 8'h90;
        a = 8'h90;
        b = 8'h90;
        M_myalu_alufn = 6'h33;
        alufn = 6'h33;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h01) begin
          err = 1'h1;
        end
      end
      5'h10: begin
        M_myalu_a = 8'h90;
        M_myalu_b = 8'h91;
        a = 8'h90;
        b = 8'h91;
        M_myalu_alufn = 6'h33;
        alufn = 6'h33;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h00) begin
          err = 1'h1;
        end
      end
      5'h10: begin
        M_myalu_a = 8'h90;
        M_myalu_b = 8'h91;
        a = 8'h90;
        b = 8'h91;
        M_myalu_alufn = 6'h33;
        alufn = 6'h33;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h00) begin
          err = 1'h1;
        end
      end
      5'h11: begin
        M_myalu_a = 8'h90;
        M_myalu_b = 8'h90;
        a = 8'h90;
        b = 8'h90;
        M_myalu_alufn = 6'h35;
        alufn = 6'h35;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h00) begin
          err = 1'h1;
        end
      end
      5'h12: begin
        M_myalu_a = 8'h90;
        M_myalu_b = 8'h91;
        a = 8'h90;
        b = 8'h91;
        M_myalu_alufn = 6'h35;
        alufn = 6'h35;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h01) begin
          err = 1'h1;
        end
      end
      5'h13: begin
        M_myalu_a = 8'h91;
        M_myalu_b = 8'h90;
        a = 8'h91;
        b = 8'h90;
        M_myalu_alufn = 6'h35;
        alufn = 6'h35;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h00) begin
          err = 1'h1;
        end
      end
      5'h14: begin
        M_myalu_a = 8'h90;
        M_myalu_b = 8'h90;
        a = 8'h90;
        b = 8'h90;
        M_myalu_alufn = 6'h37;
        alufn = 6'h37;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h01) begin
          err = 1'h1;
        end
      end
      5'h15: begin
        M_myalu_a = 8'h90;
        M_myalu_b = 8'h91;
        a = 8'h90;
        b = 8'h91;
        M_myalu_alufn = 6'h37;
        alufn = 6'h37;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h01) begin
          err = 1'h1;
        end
      end
      5'h16: begin
        M_myalu_a = 8'h91;
        M_myalu_b = 8'h90;
        a = 8'h91;
        b = 8'h90;
        M_myalu_alufn = 6'h37;
        alufn = 6'h37;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h00) begin
          err = 1'h1;
        end
      end
      5'h17: begin
        M_myalu_a = 8'h91;
        M_myalu_b = 8'h53;
        a = 8'h91;
        b = 8'h53;
        M_myalu_alufn = 6'h18;
        alufn = 6'h18;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h11) begin
          err = 1'h1;
        end
      end
      5'h18: begin
        M_myalu_a = 8'h91;
        M_myalu_b = 8'h53;
        a = 8'h91;
        b = 8'h53;
        M_myalu_alufn = 6'h1e;
        alufn = 6'h1e;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'hd3) begin
          err = 1'h1;
        end
      end
      5'h19: begin
        M_myalu_a = 8'h91;
        M_myalu_b = 8'h53;
        a = 8'h91;
        b = 8'h53;
        M_myalu_alufn = 6'h16;
        alufn = 6'h16;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'hc2) begin
          err = 1'h1;
        end
      end
      5'h1a: begin
        M_myalu_a = 8'h91;
        M_myalu_b = 8'h53;
        a = 8'h91;
        b = 8'h53;
        M_myalu_alufn = 6'h1a;
        alufn = 6'h1a;
        if (forcederr != 1'h1) begin
          intermediate = M_myalu_alu;
        end
        if (intermediate != 8'h91) begin
          err = 1'h1;
        end
      end
    endcase
    z = M_myalu_z;
    v = M_myalu_v;
    n = M_myalu_n;
    out = intermediate;
  end
endmodule