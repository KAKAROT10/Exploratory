// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Square_root_dup (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x,
        ap_return
);

parameter    ap_ST_st1_fsm_0 = 59'b1;
parameter    ap_ST_st2_fsm_1 = 59'b10;
parameter    ap_ST_st3_fsm_2 = 59'b100;
parameter    ap_ST_st4_fsm_3 = 59'b1000;
parameter    ap_ST_st5_fsm_4 = 59'b10000;
parameter    ap_ST_st6_fsm_5 = 59'b100000;
parameter    ap_ST_st7_fsm_6 = 59'b1000000;
parameter    ap_ST_st8_fsm_7 = 59'b10000000;
parameter    ap_ST_st9_fsm_8 = 59'b100000000;
parameter    ap_ST_st10_fsm_9 = 59'b1000000000;
parameter    ap_ST_st11_fsm_10 = 59'b10000000000;
parameter    ap_ST_st12_fsm_11 = 59'b100000000000;
parameter    ap_ST_st13_fsm_12 = 59'b1000000000000;
parameter    ap_ST_st14_fsm_13 = 59'b10000000000000;
parameter    ap_ST_st15_fsm_14 = 59'b100000000000000;
parameter    ap_ST_st16_fsm_15 = 59'b1000000000000000;
parameter    ap_ST_st17_fsm_16 = 59'b10000000000000000;
parameter    ap_ST_st18_fsm_17 = 59'b100000000000000000;
parameter    ap_ST_st19_fsm_18 = 59'b1000000000000000000;
parameter    ap_ST_st20_fsm_19 = 59'b10000000000000000000;
parameter    ap_ST_st21_fsm_20 = 59'b100000000000000000000;
parameter    ap_ST_st22_fsm_21 = 59'b1000000000000000000000;
parameter    ap_ST_st23_fsm_22 = 59'b10000000000000000000000;
parameter    ap_ST_st24_fsm_23 = 59'b100000000000000000000000;
parameter    ap_ST_st25_fsm_24 = 59'b1000000000000000000000000;
parameter    ap_ST_st26_fsm_25 = 59'b10000000000000000000000000;
parameter    ap_ST_st27_fsm_26 = 59'b100000000000000000000000000;
parameter    ap_ST_st28_fsm_27 = 59'b1000000000000000000000000000;
parameter    ap_ST_st29_fsm_28 = 59'b10000000000000000000000000000;
parameter    ap_ST_st30_fsm_29 = 59'b100000000000000000000000000000;
parameter    ap_ST_st31_fsm_30 = 59'b1000000000000000000000000000000;
parameter    ap_ST_st32_fsm_31 = 59'b10000000000000000000000000000000;
parameter    ap_ST_st33_fsm_32 = 59'b100000000000000000000000000000000;
parameter    ap_ST_st34_fsm_33 = 59'b1000000000000000000000000000000000;
parameter    ap_ST_st35_fsm_34 = 59'b10000000000000000000000000000000000;
parameter    ap_ST_st36_fsm_35 = 59'b100000000000000000000000000000000000;
parameter    ap_ST_st37_fsm_36 = 59'b1000000000000000000000000000000000000;
parameter    ap_ST_st38_fsm_37 = 59'b10000000000000000000000000000000000000;
parameter    ap_ST_st39_fsm_38 = 59'b100000000000000000000000000000000000000;
parameter    ap_ST_st40_fsm_39 = 59'b1000000000000000000000000000000000000000;
parameter    ap_ST_st41_fsm_40 = 59'b10000000000000000000000000000000000000000;
parameter    ap_ST_st42_fsm_41 = 59'b100000000000000000000000000000000000000000;
parameter    ap_ST_st43_fsm_42 = 59'b1000000000000000000000000000000000000000000;
parameter    ap_ST_st44_fsm_43 = 59'b10000000000000000000000000000000000000000000;
parameter    ap_ST_st45_fsm_44 = 59'b100000000000000000000000000000000000000000000;
parameter    ap_ST_st46_fsm_45 = 59'b1000000000000000000000000000000000000000000000;
parameter    ap_ST_st47_fsm_46 = 59'b10000000000000000000000000000000000000000000000;
parameter    ap_ST_st48_fsm_47 = 59'b100000000000000000000000000000000000000000000000;
parameter    ap_ST_st49_fsm_48 = 59'b1000000000000000000000000000000000000000000000000;
parameter    ap_ST_st50_fsm_49 = 59'b10000000000000000000000000000000000000000000000000;
parameter    ap_ST_st51_fsm_50 = 59'b100000000000000000000000000000000000000000000000000;
parameter    ap_ST_st52_fsm_51 = 59'b1000000000000000000000000000000000000000000000000000;
parameter    ap_ST_st53_fsm_52 = 59'b10000000000000000000000000000000000000000000000000000;
parameter    ap_ST_st54_fsm_53 = 59'b100000000000000000000000000000000000000000000000000000;
parameter    ap_ST_st55_fsm_54 = 59'b1000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_st56_fsm_55 = 59'b10000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_st57_fsm_56 = 59'b100000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_st58_fsm_57 = 59'b1000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_st59_fsm_58 = 59'b10000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_38 = 32'b111000;
parameter    ap_const_lv32_39 = 32'b111001;
parameter    ap_const_lv32_37 = 32'b110111;
parameter    ap_const_lv5_0 = 5'b00000;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv15_0 = 15'b000000000000000;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv52_0 = 52'b0000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv5_1 = 5'b1;
parameter    ap_const_lv52_A = 52'b1010;
parameter    ap_const_lv105_1999999999999A = 105'b11001100110011001100110011001100110011001100110011010;
parameter    ap_const_lv32_33 = 32'b110011;
parameter    ap_const_lv32_68 = 32'b1101000;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv6_3F = 6'b111111;
parameter    ap_const_lv105_0 = 105'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv32_3A = 32'b111010;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] x;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] ap_return;

(* fsm_encoding = "none" *) reg   [58:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_76;
wire  signed [51:0] x_assign_cast_cast_cast_fu_177_p1;
wire   [63:0] cou1_cast_fu_181_p1;
reg   [63:0] cou1_cast_reg_396;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_95;
wire   [4:0] cou1_fu_191_p2;
reg   [4:0] cou1_reg_404;
wire   [104:0] mul_fu_207_p2;
reg   [104:0] mul_reg_409;
wire   [0:0] tmp_fu_185_p2;
reg   [0:0] tmp_16_reg_414;
reg   [48:0] tmp_18_reg_420;
wire   [0:0] tmp_3_fu_231_p1;
reg   [0:0] tmp_3_reg_425;
wire   [3:0] p_lshr_f_cast_fu_239_p4;
reg   [3:0] p_lshr_f_cast_reg_430;
wire   [63:0] tmp_1_cast_fu_249_p1;
reg   [63:0] tmp_1_cast_reg_435;
wire   [5:0] tmp_6_fu_253_p2;
reg   [5:0] tmp_6_reg_440;
wire   [51:0] tmp_14_fu_294_p3;
reg   [51:0] tmp_14_reg_445;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_126;
wire   [3:0] i_1_fu_320_p2;
reg   [3:0] i_1_reg_453;
reg    ap_sig_cseq_ST_st57_fsm_56;
reg    ap_sig_135;
wire   [0:0] exitcond_fu_315_p2;
wire   [14:0] z_1_fu_362_p2;
reg    ap_sig_cseq_ST_st58_fsm_57;
reg    ap_sig_158;
reg   [4:0] arr_address0;
reg    arr_ce0;
reg    arr_we0;
wire   [4:0] arr_d0;
wire   [4:0] arr_q0;
wire   [4:0] arr_address1;
reg    arr_ce1;
wire   [4:0] arr_q1;
reg   [4:0] indvars_iv_reg_103;
reg    ap_sig_cseq_ST_st56_fsm_55;
reg    ap_sig_180;
reg   [51:0] y1_reg_114;
reg   [3:0] i_reg_124;
reg   [14:0] z_reg_135;
wire  signed [63:0] tmp_7_cast_fu_331_p1;
wire   [63:0] i_cast_fu_310_p1;
wire   [34:0] p_shl_fu_147_p3;
wire   [32:0] p_shl1_fu_159_p3;
wire  signed [35:0] p_shl_cast_fu_155_p1;
wire  signed [35:0] p_shl1_cast_fu_167_p1;
wire   [35:0] y_fu_171_p2;
wire   [50:0] grp_fu_197_p0;
wire   [4:0] grp_fu_197_p1;
wire  signed [50:0] mul_fu_207_p1;
wire   [5:0] cou1_cast2_fu_235_p1;
wire   [104:0] neg_mul_fu_259_p2;
wire   [48:0] tmp_17_fu_264_p4;
wire  signed [51:0] tmp_1_fu_274_p1;
wire  signed [51:0] tmp_5_fu_278_p1;
wire   [51:0] tmp_10_fu_281_p3;
wire   [51:0] neg_ti_fu_288_p2;
wire   [4:0] grp_fu_197_p2;
wire   [5:0] i_cast1_fu_306_p1;
wire   [5:0] tmp_7_fu_326_p2;
wire  signed [4:0] tmp_8_fu_344_p0;
wire  signed [4:0] tmp_8_fu_344_p1;
wire   [9:0] tmp_8_fu_344_p2;
wire   [10:0] tmp_15_fu_350_p3;
wire  signed [14:0] tmp_9_cast_fu_358_p1;
reg    ap_sig_cseq_ST_st59_fsm_58;
reg    ap_sig_303;
wire  signed [31:0] grp_fu_382_p3;
wire  signed [31:0] tmp_11_fu_372_p1;
wire  signed [4:0] grp_fu_382_p0;
wire  signed [9:0] extLd_cast_fu_368_p1;
wire  signed [4:0] grp_fu_382_p1;
wire  signed [14:0] grp_fu_382_p2;
reg    grp_fu_197_ap_start;
wire    grp_fu_197_ap_done;
wire   [31:0] tmp_13_fu_376_p3;
reg   [31:0] ap_return_preg;
reg   [58:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 59'b1;
#0 ap_return_preg = 32'b00000000000000000000000000000000;
end

Square_root_dup_arr #(
    .DataWidth( 5 ),
    .AddressRange( 20 ),
    .AddressWidth( 5 ))
arr_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(arr_address0),
    .ce0(arr_ce0),
    .we0(arr_we0),
    .d0(arr_d0),
    .q0(arr_q0),
    .address1(arr_address1),
    .ce1(arr_ce1),
    .q1(arr_q1)
);

Square_root_srem_51ns_5ns_5_55_seq #(
    .ID( 1 ),
    .NUM_STAGE( 55 ),
    .din0_WIDTH( 51 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 5 ))
Square_root_srem_51ns_5ns_5_55_seq_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_197_ap_start),
    .done(grp_fu_197_ap_done),
    .din0(grp_fu_197_p0),
    .din1(grp_fu_197_p1),
    .ce(1'b1),
    .dout(grp_fu_197_p2)
);

Square_root_mac_muladd_5s_5s_15s_32_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 5 ),
    .din2_WIDTH( 15 ),
    .dout_WIDTH( 32 ))
Square_root_mac_muladd_5s_5s_15s_32_1_U2(
    .din0(grp_fu_382_p0),
    .din1(grp_fu_382_p1),
    .din2(grp_fu_382_p2),
    .dout(grp_fu_382_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= ap_const_lv32_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st59_fsm_58)) begin
            ap_return_preg <= tmp_13_fu_376_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(tmp_fu_185_p2 == 1'b0))) begin
        i_reg_124 <= ap_const_lv4_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st58_fsm_57)) begin
        i_reg_124 <= i_1_reg_453;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        indvars_iv_reg_103 <= ap_const_lv5_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st56_fsm_55)) begin
        indvars_iv_reg_103 <= cou1_reg_404;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        y1_reg_114 <= x_assign_cast_cast_cast_fu_177_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st56_fsm_55)) begin
        y1_reg_114 <= tmp_14_reg_445;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(tmp_fu_185_p2 == 1'b0))) begin
        z_reg_135 <= ap_const_lv15_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st58_fsm_57)) begin
        z_reg_135 <= z_1_fu_362_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        cou1_cast_reg_396[4 : 0] <= cou1_cast_fu_181_p1[4 : 0];
        cou1_reg_404 <= cou1_fu_191_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st57_fsm_56)) begin
        i_1_reg_453 <= i_1_fu_320_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (tmp_fu_185_p2 == 1'b0))) begin
        mul_reg_409 <= mul_fu_207_p2;
        tmp_16_reg_414 <= y1_reg_114[ap_const_lv32_33];
        tmp_18_reg_420 <= {{mul_fu_207_p2[ap_const_lv32_68 : ap_const_lv32_38]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(tmp_fu_185_p2 == 1'b0))) begin
        p_lshr_f_cast_reg_430 <= {{indvars_iv_reg_103[ap_const_lv32_4 : ap_const_lv32_1]}};
        tmp_1_cast_reg_435[3 : 0] <= tmp_1_cast_fu_249_p1[3 : 0];
        tmp_3_reg_425 <= tmp_3_fu_231_p1;
        tmp_6_reg_440 <= tmp_6_fu_253_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        tmp_14_reg_445 <= tmp_14_fu_294_p3;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | (1'b1 == ap_sig_cseq_ST_st59_fsm_58))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st59_fsm_58)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st59_fsm_58)) begin
        ap_return = tmp_13_fu_376_p3;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (ap_sig_76) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_95) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_126) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_180) begin
        ap_sig_cseq_ST_st56_fsm_55 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st56_fsm_55 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_135) begin
        ap_sig_cseq_ST_st57_fsm_56 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st57_fsm_56 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_158) begin
        ap_sig_cseq_ST_st58_fsm_57 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st58_fsm_57 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_303) begin
        ap_sig_cseq_ST_st59_fsm_58 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st59_fsm_58 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st56_fsm_55)) begin
        arr_address0 = cou1_cast_reg_396;
    end else if (((1'b1 == ap_sig_cseq_ST_st57_fsm_56) & ~(1'b0 == exitcond_fu_315_p2) & ~(1'b0 == tmp_3_reg_425))) begin
        arr_address0 = tmp_1_cast_reg_435;
    end else if (((1'b1 == ap_sig_cseq_ST_st57_fsm_56) & (1'b0 == exitcond_fu_315_p2))) begin
        arr_address0 = tmp_7_cast_fu_331_p1;
    end else begin
        arr_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st57_fsm_56) & (1'b0 == exitcond_fu_315_p2)) | ((1'b1 == ap_sig_cseq_ST_st57_fsm_56) & ~(1'b0 == exitcond_fu_315_p2) & ~(1'b0 == tmp_3_reg_425)) | (1'b1 == ap_sig_cseq_ST_st56_fsm_55))) begin
        arr_ce0 = 1'b1;
    end else begin
        arr_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st57_fsm_56)) begin
        arr_ce1 = 1'b1;
    end else begin
        arr_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st56_fsm_55)) begin
        arr_we0 = 1'b1;
    end else begin
        arr_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (tmp_fu_185_p2 == 1'b0))) begin
        grp_fu_197_ap_start = 1'b1;
    end else begin
        grp_fu_197_ap_start = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (~(tmp_fu_185_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st57_fsm_56;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            ap_NS_fsm = ap_ST_st4_fsm_3;
        end
        ap_ST_st4_fsm_3 : begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
        end
        ap_ST_st7_fsm_6 : begin
            ap_NS_fsm = ap_ST_st8_fsm_7;
        end
        ap_ST_st8_fsm_7 : begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        ap_ST_st9_fsm_8 : begin
            ap_NS_fsm = ap_ST_st10_fsm_9;
        end
        ap_ST_st10_fsm_9 : begin
            ap_NS_fsm = ap_ST_st11_fsm_10;
        end
        ap_ST_st11_fsm_10 : begin
            ap_NS_fsm = ap_ST_st12_fsm_11;
        end
        ap_ST_st12_fsm_11 : begin
            ap_NS_fsm = ap_ST_st13_fsm_12;
        end
        ap_ST_st13_fsm_12 : begin
            ap_NS_fsm = ap_ST_st14_fsm_13;
        end
        ap_ST_st14_fsm_13 : begin
            ap_NS_fsm = ap_ST_st15_fsm_14;
        end
        ap_ST_st15_fsm_14 : begin
            ap_NS_fsm = ap_ST_st16_fsm_15;
        end
        ap_ST_st16_fsm_15 : begin
            ap_NS_fsm = ap_ST_st17_fsm_16;
        end
        ap_ST_st17_fsm_16 : begin
            ap_NS_fsm = ap_ST_st18_fsm_17;
        end
        ap_ST_st18_fsm_17 : begin
            ap_NS_fsm = ap_ST_st19_fsm_18;
        end
        ap_ST_st19_fsm_18 : begin
            ap_NS_fsm = ap_ST_st20_fsm_19;
        end
        ap_ST_st20_fsm_19 : begin
            ap_NS_fsm = ap_ST_st21_fsm_20;
        end
        ap_ST_st21_fsm_20 : begin
            ap_NS_fsm = ap_ST_st22_fsm_21;
        end
        ap_ST_st22_fsm_21 : begin
            ap_NS_fsm = ap_ST_st23_fsm_22;
        end
        ap_ST_st23_fsm_22 : begin
            ap_NS_fsm = ap_ST_st24_fsm_23;
        end
        ap_ST_st24_fsm_23 : begin
            ap_NS_fsm = ap_ST_st25_fsm_24;
        end
        ap_ST_st25_fsm_24 : begin
            ap_NS_fsm = ap_ST_st26_fsm_25;
        end
        ap_ST_st26_fsm_25 : begin
            ap_NS_fsm = ap_ST_st27_fsm_26;
        end
        ap_ST_st27_fsm_26 : begin
            ap_NS_fsm = ap_ST_st28_fsm_27;
        end
        ap_ST_st28_fsm_27 : begin
            ap_NS_fsm = ap_ST_st29_fsm_28;
        end
        ap_ST_st29_fsm_28 : begin
            ap_NS_fsm = ap_ST_st30_fsm_29;
        end
        ap_ST_st30_fsm_29 : begin
            ap_NS_fsm = ap_ST_st31_fsm_30;
        end
        ap_ST_st31_fsm_30 : begin
            ap_NS_fsm = ap_ST_st32_fsm_31;
        end
        ap_ST_st32_fsm_31 : begin
            ap_NS_fsm = ap_ST_st33_fsm_32;
        end
        ap_ST_st33_fsm_32 : begin
            ap_NS_fsm = ap_ST_st34_fsm_33;
        end
        ap_ST_st34_fsm_33 : begin
            ap_NS_fsm = ap_ST_st35_fsm_34;
        end
        ap_ST_st35_fsm_34 : begin
            ap_NS_fsm = ap_ST_st36_fsm_35;
        end
        ap_ST_st36_fsm_35 : begin
            ap_NS_fsm = ap_ST_st37_fsm_36;
        end
        ap_ST_st37_fsm_36 : begin
            ap_NS_fsm = ap_ST_st38_fsm_37;
        end
        ap_ST_st38_fsm_37 : begin
            ap_NS_fsm = ap_ST_st39_fsm_38;
        end
        ap_ST_st39_fsm_38 : begin
            ap_NS_fsm = ap_ST_st40_fsm_39;
        end
        ap_ST_st40_fsm_39 : begin
            ap_NS_fsm = ap_ST_st41_fsm_40;
        end
        ap_ST_st41_fsm_40 : begin
            ap_NS_fsm = ap_ST_st42_fsm_41;
        end
        ap_ST_st42_fsm_41 : begin
            ap_NS_fsm = ap_ST_st43_fsm_42;
        end
        ap_ST_st43_fsm_42 : begin
            ap_NS_fsm = ap_ST_st44_fsm_43;
        end
        ap_ST_st44_fsm_43 : begin
            ap_NS_fsm = ap_ST_st45_fsm_44;
        end
        ap_ST_st45_fsm_44 : begin
            ap_NS_fsm = ap_ST_st46_fsm_45;
        end
        ap_ST_st46_fsm_45 : begin
            ap_NS_fsm = ap_ST_st47_fsm_46;
        end
        ap_ST_st47_fsm_46 : begin
            ap_NS_fsm = ap_ST_st48_fsm_47;
        end
        ap_ST_st48_fsm_47 : begin
            ap_NS_fsm = ap_ST_st49_fsm_48;
        end
        ap_ST_st49_fsm_48 : begin
            ap_NS_fsm = ap_ST_st50_fsm_49;
        end
        ap_ST_st50_fsm_49 : begin
            ap_NS_fsm = ap_ST_st51_fsm_50;
        end
        ap_ST_st51_fsm_50 : begin
            ap_NS_fsm = ap_ST_st52_fsm_51;
        end
        ap_ST_st52_fsm_51 : begin
            ap_NS_fsm = ap_ST_st53_fsm_52;
        end
        ap_ST_st53_fsm_52 : begin
            ap_NS_fsm = ap_ST_st54_fsm_53;
        end
        ap_ST_st54_fsm_53 : begin
            ap_NS_fsm = ap_ST_st55_fsm_54;
        end
        ap_ST_st55_fsm_54 : begin
            ap_NS_fsm = ap_ST_st56_fsm_55;
        end
        ap_ST_st56_fsm_55 : begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        ap_ST_st57_fsm_56 : begin
            if (~(1'b0 == exitcond_fu_315_p2)) begin
                ap_NS_fsm = ap_ST_st59_fsm_58;
            end else begin
                ap_NS_fsm = ap_ST_st58_fsm_57;
            end
        end
        ap_ST_st58_fsm_57 : begin
            ap_NS_fsm = ap_ST_st57_fsm_56;
        end
        ap_ST_st59_fsm_58 : begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_126 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_135 = (1'b1 == ap_CS_fsm[ap_const_lv32_38]);
end

always @ (*) begin
    ap_sig_158 = (1'b1 == ap_CS_fsm[ap_const_lv32_39]);
end

always @ (*) begin
    ap_sig_180 = (1'b1 == ap_CS_fsm[ap_const_lv32_37]);
end

always @ (*) begin
    ap_sig_303 = (1'b1 == ap_CS_fsm[ap_const_lv32_3A]);
end

always @ (*) begin
    ap_sig_76 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_95 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

assign arr_address1 = i_cast_fu_310_p1;

assign arr_d0 = grp_fu_197_p2[4:0];

assign cou1_cast2_fu_235_p1 = indvars_iv_reg_103;

assign cou1_cast_fu_181_p1 = indvars_iv_reg_103;

assign cou1_fu_191_p2 = (indvars_iv_reg_103 + ap_const_lv5_1);

assign exitcond_fu_315_p2 = ((i_reg_124 == p_lshr_f_cast_reg_430) ? 1'b1 : 1'b0);

assign extLd_cast_fu_368_p1 = $signed(arr_q0);

assign grp_fu_197_p0 = y1_reg_114;

assign grp_fu_197_p1 = ap_const_lv52_A;

assign grp_fu_382_p0 = extLd_cast_fu_368_p1;

assign grp_fu_382_p1 = extLd_cast_fu_368_p1;

assign grp_fu_382_p2 = tmp_11_fu_372_p1;

assign i_1_fu_320_p2 = (i_reg_124 + ap_const_lv4_1);

assign i_cast1_fu_306_p1 = i_reg_124;

assign i_cast_fu_310_p1 = i_reg_124;

assign mul_fu_207_p1 = y1_reg_114;

assign mul_fu_207_p2 = ($signed({{1'b0}, {ap_const_lv105_1999999999999A}}) * $signed(mul_fu_207_p1));

assign neg_mul_fu_259_p2 = (ap_const_lv105_0 - mul_reg_409);

assign neg_ti_fu_288_p2 = (ap_const_lv52_0 - tmp_10_fu_281_p3);

assign p_lshr_f_cast_fu_239_p4 = {{indvars_iv_reg_103[ap_const_lv32_4 : ap_const_lv32_1]}};

assign p_shl1_cast_fu_167_p1 = $signed(p_shl1_fu_159_p3);

assign p_shl1_fu_159_p3 = {{x}, {1'b0}};

assign p_shl_cast_fu_155_p1 = $signed(p_shl_fu_147_p3);

assign p_shl_fu_147_p3 = {{x}, {ap_const_lv3_0}};

assign tmp_10_fu_281_p3 = ((tmp_16_reg_414[0:0] === 1'b1) ? tmp_1_fu_274_p1 : tmp_5_fu_278_p1);

assign tmp_11_fu_372_p1 = $signed(z_reg_135);

assign tmp_13_fu_376_p3 = ((tmp_3_reg_425[0:0] === 1'b1) ? grp_fu_382_p3 : tmp_11_fu_372_p1);

assign tmp_14_fu_294_p3 = ((tmp_16_reg_414[0:0] === 1'b1) ? neg_ti_fu_288_p2 : tmp_5_fu_278_p1);

assign tmp_15_fu_350_p3 = {{tmp_8_fu_344_p2}, {1'b0}};

assign tmp_17_fu_264_p4 = {{neg_mul_fu_259_p2[ap_const_lv32_68 : ap_const_lv32_38]}};

assign tmp_1_cast_fu_249_p1 = p_lshr_f_cast_fu_239_p4;

assign tmp_1_fu_274_p1 = $signed(tmp_17_fu_264_p4);

assign tmp_3_fu_231_p1 = indvars_iv_reg_103[0:0];

assign tmp_5_fu_278_p1 = $signed(tmp_18_reg_420);

assign tmp_6_fu_253_p2 = ($signed(ap_const_lv6_3F) + $signed(cou1_cast2_fu_235_p1));

assign tmp_7_cast_fu_331_p1 = $signed(tmp_7_fu_326_p2);

assign tmp_7_fu_326_p2 = (tmp_6_reg_440 - i_cast1_fu_306_p1);

assign tmp_8_fu_344_p0 = arr_q0;

assign tmp_8_fu_344_p1 = arr_q1;

assign tmp_8_fu_344_p2 = ($signed(tmp_8_fu_344_p0) * $signed(tmp_8_fu_344_p1));

assign tmp_9_cast_fu_358_p1 = $signed(tmp_15_fu_350_p3);

assign tmp_fu_185_p2 = ((y1_reg_114 == ap_const_lv52_0) ? 1'b1 : 1'b0);

assign x_assign_cast_cast_cast_fu_177_p1 = $signed(y_fu_171_p2);

assign y_fu_171_p2 = ($signed(p_shl_cast_fu_155_p1) + $signed(p_shl1_cast_fu_167_p1));

assign z_1_fu_362_p2 = ($signed(z_reg_135) + $signed(tmp_9_cast_fu_358_p1));

always @ (posedge ap_clk) begin
    cou1_cast_reg_396[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    tmp_1_cast_reg_435[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //Square_root_dup
