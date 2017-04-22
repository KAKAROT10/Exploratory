// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

module Square3_mul_47s_64s_64_14_MulnS_5(clk, ce, a, b, p);
input clk;
input ce;
input[47 - 1 : 0] a; // synthesis attribute keep a "true"
input[64 - 1 : 0] b; // synthesis attribute keep b "true"
output[64 - 1 : 0] p;

reg signed [47 - 1 : 0] a_reg0;
reg signed [64 - 1 : 0] b_reg0;
wire signed [64 - 1 : 0] tmp_product;
reg signed [64 - 1 : 0] buff0;
reg signed [64 - 1 : 0] buff1;
reg signed [64 - 1 : 0] buff2;
reg signed [64 - 1 : 0] buff3;
reg signed [64 - 1 : 0] buff4;
reg signed [64 - 1 : 0] buff5;
reg signed [64 - 1 : 0] buff6;
reg signed [64 - 1 : 0] buff7;
reg signed [64 - 1 : 0] buff8;
reg signed [64 - 1 : 0] buff9;
reg signed [64 - 1 : 0] buff10;
reg signed [64 - 1 : 0] buff11;

assign p = buff11;
assign tmp_product = a_reg0 * b_reg0;
always @ (posedge clk) begin
    if (ce) begin
        a_reg0 <= a;
        b_reg0 <= b;
        buff0 <= tmp_product;
        buff1 <= buff0;
        buff2 <= buff1;
        buff3 <= buff2;
        buff4 <= buff3;
        buff5 <= buff4;
        buff6 <= buff5;
        buff7 <= buff6;
        buff8 <= buff7;
        buff9 <= buff8;
        buff10 <= buff9;
        buff11 <= buff10;
    end
end
endmodule

`timescale 1 ns / 1 ps
module Square3_mul_47s_64s_64_14(
    clk,
    reset,
    ce,
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



Square3_mul_47s_64s_64_14_MulnS_5 Square3_mul_47s_64s_64_14_MulnS_5_U(
    .clk( clk ),
    .ce( ce ),
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

