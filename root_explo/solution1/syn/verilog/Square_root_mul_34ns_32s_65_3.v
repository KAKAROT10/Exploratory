// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

module Square_root_mul_34ns_32s_65_3_Mul3S_1(clk, ce, a, b, p);
input clk;
input ce;
input[34 - 1 : 0] a; // synthesis attribute keep a "true"
input[32 - 1 : 0] b; // synthesis attribute keep b "true"
output[65 - 1 : 0] p;

reg [34 - 1 : 0] a_reg0;
reg signed [32 - 1 : 0] b_reg0;
wire signed [65 - 1 : 0] tmp_product;
reg signed [65 - 1 : 0] buff0;

assign p = buff0;
assign tmp_product = $signed({1'b0, a_reg0}) * b_reg0;
always @ (posedge clk) begin
    if (ce) begin
        a_reg0 <= a;
        b_reg0 <= b;
        buff0 <= tmp_product;
    end
end
endmodule

`timescale 1 ns / 1 ps
module Square_root_mul_34ns_32s_65_3(
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



Square_root_mul_34ns_32s_65_3_Mul3S_1 Square_root_mul_34ns_32s_65_3_Mul3S_1_U(
    .clk( clk ),
    .ce( ce ),
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

