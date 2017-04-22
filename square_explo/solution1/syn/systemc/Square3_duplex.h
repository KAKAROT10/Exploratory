// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Square3_duplex_HH_
#define _Square3_duplex_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Square3_srem_64ns_5ns_32_68_seq.h"
#include "Square3_mul_66ns_64s_129_18.h"
#include "Square3_mul_32s_32s_32_6.h"
#include "Square3_duplex_arr.h"

namespace ap_rtl {

struct Square3_duplex : public sc_module {
    // Port declarations 8
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<64> > x;
    sc_out< sc_lv<32> > ap_return;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    Square3_duplex(sc_module_name name);
    SC_HAS_PROCESS(Square3_duplex);

    ~Square3_duplex();

    sc_trace_file* mVcdFile;

    Square3_duplex_arr* arr_U;
    Square3_srem_64ns_5ns_32_68_seq<1,68,64,5,32>* Square3_srem_64ns_5ns_32_68_seq_U1;
    Square3_mul_66ns_64s_129_18<1,18,66,64,129>* Square3_mul_66ns_64s_129_18_U2;
    Square3_mul_32s_32s_32_6<1,6,32,32,32>* Square3_mul_32s_32s_32_6_U3;
    Square3_mul_32s_32s_32_6<1,6,32,32,32>* Square3_mul_32s_32s_32_6_U4;
    sc_signal< sc_lv<87> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_104;
    sc_signal< sc_lv<32> > arr_q0;
    sc_signal< sc_lv<32> > reg_138;
    sc_signal< sc_logic > ap_sig_cseq_ST_st72_fsm_71;
    sc_signal< bool > ap_sig_118;
    sc_signal< sc_logic > ap_sig_cseq_ST_st80_fsm_79;
    sc_signal< bool > ap_sig_125;
    sc_signal< sc_lv<32> > cou1_1_fu_148_p2;
    sc_signal< sc_lv<32> > cou1_1_reg_416;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_140;
    sc_signal< sc_lv<1> > tmp_fu_142_p2;
    sc_signal< sc_lv<1> > tmp_19_reg_426;
    sc_signal< sc_lv<1> > tmp_3_fu_178_p3;
    sc_signal< sc_lv<1> > tmp_3_reg_432;
    sc_signal< sc_lv<32> > p_neg_fu_186_p2;
    sc_signal< sc_lv<32> > p_neg_reg_437;
    sc_signal< sc_lv<32> > tmp_s_fu_226_p3;
    sc_signal< sc_lv<32> > tmp_s_reg_442;
    sc_signal< sc_lv<32> > tmp_6_fu_234_p2;
    sc_signal< sc_lv<32> > tmp_6_reg_448;
    sc_signal< sc_lv<129> > grp_fu_164_p2;
    sc_signal< sc_lv<129> > mul_reg_453;
    sc_signal< sc_logic > ap_sig_cseq_ST_st19_fsm_18;
    sc_signal< bool > ap_sig_167;
    sc_signal< sc_lv<61> > tmp_21_reg_458;
    sc_signal< sc_lv<64> > tmp_17_fu_269_p1;
    sc_signal< sc_lv<64> > tmp_17_reg_463;
    sc_signal< sc_logic > ap_sig_cseq_ST_st20_fsm_19;
    sc_signal< bool > ap_sig_178;
    sc_signal< sc_lv<64> > neg_ti_fu_279_p2;
    sc_signal< sc_lv<64> > neg_ti_reg_468;
    sc_signal< sc_lv<64> > y_1_fu_285_p3;
    sc_signal< sc_lv<64> > y_1_reg_473;
    sc_signal< sc_logic > ap_sig_cseq_ST_st21_fsm_20;
    sc_signal< bool > ap_sig_192;
    sc_signal< sc_lv<32> > grp_fu_154_p2;
    sc_signal< sc_lv<32> > tmp_2_reg_478;
    sc_signal< sc_logic > ap_sig_cseq_ST_st69_fsm_68;
    sc_signal< bool > ap_sig_201;
    sc_signal< sc_lv<31> > i_1_fu_308_p2;
    sc_signal< sc_lv<31> > i_1_reg_486;
    sc_signal< sc_logic > ap_sig_cseq_ST_st71_fsm_70;
    sc_signal< bool > ap_sig_210;
    sc_signal< sc_lv<1> > tmp_5_fu_303_p2;
    sc_signal< sc_lv<1> > tmp_26_fu_329_p1;
    sc_signal< sc_lv<1> > tmp_26_reg_501;
    sc_signal< sc_lv<32> > arr_q1;
    sc_signal< sc_lv<32> > arr_load_1_reg_511;
    sc_signal< sc_lv<32> > grp_fu_336_p2;
    sc_signal< sc_lv<32> > tmp_1_reg_516;
    sc_signal< sc_logic > ap_sig_cseq_ST_st78_fsm_77;
    sc_signal< bool > ap_sig_238;
    sc_signal< sc_lv<32> > z_2_fu_346_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st79_fsm_78;
    sc_signal< bool > ap_sig_247;
    sc_signal< sc_lv<1> > tmp_14_fu_384_p2;
    sc_signal< sc_lv<1> > tmp_14_reg_526;
    sc_signal< sc_lv<32> > grp_fu_390_p2;
    sc_signal< sc_lv<32> > tmp_16_reg_531;
    sc_signal< sc_logic > ap_sig_cseq_ST_st86_fsm_85;
    sc_signal< bool > ap_sig_258;
    sc_signal< sc_lv<5> > arr_address0;
    sc_signal< sc_logic > arr_ce0;
    sc_signal< sc_logic > arr_we0;
    sc_signal< sc_lv<32> > arr_d0;
    sc_signal< sc_lv<5> > arr_address1;
    sc_signal< sc_logic > arr_ce1;
    sc_signal< sc_lv<32> > cou1_reg_93;
    sc_signal< sc_logic > ap_sig_cseq_ST_st70_fsm_69;
    sc_signal< bool > ap_sig_281;
    sc_signal< sc_lv<64> > y_reg_105;
    sc_signal< sc_lv<31> > i_reg_115;
    sc_signal< sc_lv<32> > z_reg_126;
    sc_signal< sc_lv<64> > tmp_4_fu_294_p1;
    sc_signal< sc_lv<64> > tmp_8_fu_319_p1;
    sc_signal< sc_lv<64> > tmp_9_fu_324_p1;
    sc_signal< sc_lv<64> > tmp_15_fu_332_p1;
    sc_signal< sc_lv<5> > grp_fu_154_p1;
    sc_signal< sc_lv<66> > grp_fu_164_p0;
    sc_signal< sc_lv<31> > p_lshr_fu_192_p4;
    sc_signal< sc_lv<32> > tmp_10_fu_202_p1;
    sc_signal< sc_lv<31> > p_lshr_f_fu_212_p4;
    sc_signal< sc_lv<32> > p_neg_t_fu_206_p2;
    sc_signal< sc_lv<32> > tmp_11_fu_222_p1;
    sc_signal< sc_lv<129> > neg_mul_fu_250_p2;
    sc_signal< sc_lv<61> > tmp_20_fu_255_p4;
    sc_signal< sc_lv<64> > tmp_13_fu_265_p1;
    sc_signal< sc_lv<64> > tmp_18_fu_272_p3;
    sc_signal< sc_lv<32> > i_cast_fu_299_p1;
    sc_signal< sc_lv<32> > tmp_7_fu_314_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st73_fsm_72;
    sc_signal< bool > ap_sig_387;
    sc_signal< sc_lv<32> > tmp_22_fu_341_p2;
    sc_signal< sc_lv<2> > tmp_27_fu_356_p3;
    sc_signal< sc_lv<1> > tmp_25_fu_352_p1;
    sc_signal< sc_lv<2> > tmp_28_fu_363_p2;
    sc_signal< sc_lv<2> > tmp_23_fu_369_p3;
    sc_signal< sc_lv<2> > tmp_24_fu_377_p3;
    sc_signal< sc_logic > ap_sig_cseq_ST_st81_fsm_80;
    sc_signal< bool > ap_sig_420;
    sc_signal< sc_logic > ap_sig_cseq_ST_st87_fsm_86;
    sc_signal< bool > ap_sig_429;
    sc_signal< sc_lv<32> > z_3_fu_396_p2;
    sc_signal< sc_logic > grp_fu_154_ap_start;
    sc_signal< sc_logic > grp_fu_154_ap_done;
    sc_signal< sc_lv<87> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<87> ap_ST_st1_fsm_0;
    static const sc_lv<87> ap_ST_st2_fsm_1;
    static const sc_lv<87> ap_ST_st3_fsm_2;
    static const sc_lv<87> ap_ST_st4_fsm_3;
    static const sc_lv<87> ap_ST_st5_fsm_4;
    static const sc_lv<87> ap_ST_st6_fsm_5;
    static const sc_lv<87> ap_ST_st7_fsm_6;
    static const sc_lv<87> ap_ST_st8_fsm_7;
    static const sc_lv<87> ap_ST_st9_fsm_8;
    static const sc_lv<87> ap_ST_st10_fsm_9;
    static const sc_lv<87> ap_ST_st11_fsm_10;
    static const sc_lv<87> ap_ST_st12_fsm_11;
    static const sc_lv<87> ap_ST_st13_fsm_12;
    static const sc_lv<87> ap_ST_st14_fsm_13;
    static const sc_lv<87> ap_ST_st15_fsm_14;
    static const sc_lv<87> ap_ST_st16_fsm_15;
    static const sc_lv<87> ap_ST_st17_fsm_16;
    static const sc_lv<87> ap_ST_st18_fsm_17;
    static const sc_lv<87> ap_ST_st19_fsm_18;
    static const sc_lv<87> ap_ST_st20_fsm_19;
    static const sc_lv<87> ap_ST_st21_fsm_20;
    static const sc_lv<87> ap_ST_st22_fsm_21;
    static const sc_lv<87> ap_ST_st23_fsm_22;
    static const sc_lv<87> ap_ST_st24_fsm_23;
    static const sc_lv<87> ap_ST_st25_fsm_24;
    static const sc_lv<87> ap_ST_st26_fsm_25;
    static const sc_lv<87> ap_ST_st27_fsm_26;
    static const sc_lv<87> ap_ST_st28_fsm_27;
    static const sc_lv<87> ap_ST_st29_fsm_28;
    static const sc_lv<87> ap_ST_st30_fsm_29;
    static const sc_lv<87> ap_ST_st31_fsm_30;
    static const sc_lv<87> ap_ST_st32_fsm_31;
    static const sc_lv<87> ap_ST_st33_fsm_32;
    static const sc_lv<87> ap_ST_st34_fsm_33;
    static const sc_lv<87> ap_ST_st35_fsm_34;
    static const sc_lv<87> ap_ST_st36_fsm_35;
    static const sc_lv<87> ap_ST_st37_fsm_36;
    static const sc_lv<87> ap_ST_st38_fsm_37;
    static const sc_lv<87> ap_ST_st39_fsm_38;
    static const sc_lv<87> ap_ST_st40_fsm_39;
    static const sc_lv<87> ap_ST_st41_fsm_40;
    static const sc_lv<87> ap_ST_st42_fsm_41;
    static const sc_lv<87> ap_ST_st43_fsm_42;
    static const sc_lv<87> ap_ST_st44_fsm_43;
    static const sc_lv<87> ap_ST_st45_fsm_44;
    static const sc_lv<87> ap_ST_st46_fsm_45;
    static const sc_lv<87> ap_ST_st47_fsm_46;
    static const sc_lv<87> ap_ST_st48_fsm_47;
    static const sc_lv<87> ap_ST_st49_fsm_48;
    static const sc_lv<87> ap_ST_st50_fsm_49;
    static const sc_lv<87> ap_ST_st51_fsm_50;
    static const sc_lv<87> ap_ST_st52_fsm_51;
    static const sc_lv<87> ap_ST_st53_fsm_52;
    static const sc_lv<87> ap_ST_st54_fsm_53;
    static const sc_lv<87> ap_ST_st55_fsm_54;
    static const sc_lv<87> ap_ST_st56_fsm_55;
    static const sc_lv<87> ap_ST_st57_fsm_56;
    static const sc_lv<87> ap_ST_st58_fsm_57;
    static const sc_lv<87> ap_ST_st59_fsm_58;
    static const sc_lv<87> ap_ST_st60_fsm_59;
    static const sc_lv<87> ap_ST_st61_fsm_60;
    static const sc_lv<87> ap_ST_st62_fsm_61;
    static const sc_lv<87> ap_ST_st63_fsm_62;
    static const sc_lv<87> ap_ST_st64_fsm_63;
    static const sc_lv<87> ap_ST_st65_fsm_64;
    static const sc_lv<87> ap_ST_st66_fsm_65;
    static const sc_lv<87> ap_ST_st67_fsm_66;
    static const sc_lv<87> ap_ST_st68_fsm_67;
    static const sc_lv<87> ap_ST_st69_fsm_68;
    static const sc_lv<87> ap_ST_st70_fsm_69;
    static const sc_lv<87> ap_ST_st71_fsm_70;
    static const sc_lv<87> ap_ST_st72_fsm_71;
    static const sc_lv<87> ap_ST_st73_fsm_72;
    static const sc_lv<87> ap_ST_st74_fsm_73;
    static const sc_lv<87> ap_ST_st75_fsm_74;
    static const sc_lv<87> ap_ST_st76_fsm_75;
    static const sc_lv<87> ap_ST_st77_fsm_76;
    static const sc_lv<87> ap_ST_st78_fsm_77;
    static const sc_lv<87> ap_ST_st79_fsm_78;
    static const sc_lv<87> ap_ST_st80_fsm_79;
    static const sc_lv<87> ap_ST_st81_fsm_80;
    static const sc_lv<87> ap_ST_st82_fsm_81;
    static const sc_lv<87> ap_ST_st83_fsm_82;
    static const sc_lv<87> ap_ST_st84_fsm_83;
    static const sc_lv<87> ap_ST_st85_fsm_84;
    static const sc_lv<87> ap_ST_st86_fsm_85;
    static const sc_lv<87> ap_ST_st87_fsm_86;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_47;
    static const sc_lv<32> ap_const_lv32_4F;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_44;
    static const sc_lv<32> ap_const_lv32_46;
    static const sc_lv<32> ap_const_lv32_4D;
    static const sc_lv<32> ap_const_lv32_4E;
    static const sc_lv<32> ap_const_lv32_55;
    static const sc_lv<32> ap_const_lv32_45;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_A;
    static const sc_lv<129> ap_const_lv129_lc_1;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<32> ap_const_lv32_80;
    static const sc_lv<129> ap_const_lv129_lc_2;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<32> ap_const_lv32_48;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_50;
    static const sc_lv<32> ap_const_lv32_56;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_104();
    void thread_ap_sig_118();
    void thread_ap_sig_125();
    void thread_ap_sig_140();
    void thread_ap_sig_167();
    void thread_ap_sig_178();
    void thread_ap_sig_192();
    void thread_ap_sig_201();
    void thread_ap_sig_210();
    void thread_ap_sig_238();
    void thread_ap_sig_247();
    void thread_ap_sig_258();
    void thread_ap_sig_281();
    void thread_ap_sig_387();
    void thread_ap_sig_420();
    void thread_ap_sig_429();
    void thread_ap_sig_cseq_ST_st19_fsm_18();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st20_fsm_19();
    void thread_ap_sig_cseq_ST_st21_fsm_20();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st69_fsm_68();
    void thread_ap_sig_cseq_ST_st70_fsm_69();
    void thread_ap_sig_cseq_ST_st71_fsm_70();
    void thread_ap_sig_cseq_ST_st72_fsm_71();
    void thread_ap_sig_cseq_ST_st73_fsm_72();
    void thread_ap_sig_cseq_ST_st78_fsm_77();
    void thread_ap_sig_cseq_ST_st79_fsm_78();
    void thread_ap_sig_cseq_ST_st80_fsm_79();
    void thread_ap_sig_cseq_ST_st81_fsm_80();
    void thread_ap_sig_cseq_ST_st86_fsm_85();
    void thread_ap_sig_cseq_ST_st87_fsm_86();
    void thread_arr_address0();
    void thread_arr_address1();
    void thread_arr_ce0();
    void thread_arr_ce1();
    void thread_arr_d0();
    void thread_arr_we0();
    void thread_cou1_1_fu_148_p2();
    void thread_grp_fu_154_ap_start();
    void thread_grp_fu_154_p1();
    void thread_grp_fu_164_p0();
    void thread_i_1_fu_308_p2();
    void thread_i_cast_fu_299_p1();
    void thread_neg_mul_fu_250_p2();
    void thread_neg_ti_fu_279_p2();
    void thread_p_lshr_f_fu_212_p4();
    void thread_p_lshr_fu_192_p4();
    void thread_p_neg_fu_186_p2();
    void thread_p_neg_t_fu_206_p2();
    void thread_tmp_10_fu_202_p1();
    void thread_tmp_11_fu_222_p1();
    void thread_tmp_13_fu_265_p1();
    void thread_tmp_14_fu_384_p2();
    void thread_tmp_15_fu_332_p1();
    void thread_tmp_17_fu_269_p1();
    void thread_tmp_18_fu_272_p3();
    void thread_tmp_20_fu_255_p4();
    void thread_tmp_22_fu_341_p2();
    void thread_tmp_23_fu_369_p3();
    void thread_tmp_24_fu_377_p3();
    void thread_tmp_25_fu_352_p1();
    void thread_tmp_26_fu_329_p1();
    void thread_tmp_27_fu_356_p3();
    void thread_tmp_28_fu_363_p2();
    void thread_tmp_3_fu_178_p3();
    void thread_tmp_4_fu_294_p1();
    void thread_tmp_5_fu_303_p2();
    void thread_tmp_6_fu_234_p2();
    void thread_tmp_7_fu_314_p2();
    void thread_tmp_8_fu_319_p1();
    void thread_tmp_9_fu_324_p1();
    void thread_tmp_fu_142_p2();
    void thread_tmp_s_fu_226_p3();
    void thread_y_1_fu_285_p3();
    void thread_z_2_fu_346_p2();
    void thread_z_3_fu_396_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
