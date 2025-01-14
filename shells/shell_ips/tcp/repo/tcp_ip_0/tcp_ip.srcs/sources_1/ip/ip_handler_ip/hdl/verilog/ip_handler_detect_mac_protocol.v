// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ip_handler_detect_mac_protocol (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        s_axis_raw_TVALID,
        ipDataFifo_V_din,
        ipDataFifo_V_full_n,
        ipDataFifo_V_write,
        m_axis_ARP_TREADY,
        s_axis_raw_TDATA,
        s_axis_raw_TREADY,
        s_axis_raw_TKEEP,
        s_axis_raw_TLAST,
        m_axis_ARP_TDATA,
        m_axis_ARP_TVALID,
        m_axis_ARP_TKEEP,
        m_axis_ARP_TLAST
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv2_2 = 2'b10;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv32_28 = 32'b101000;
parameter    ap_const_lv32_2F = 32'b101111;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_27 = 32'b100111;
parameter    ap_const_lv16_806 = 16'b100000000110;
parameter    ap_const_lv16_800 = 16'b100000000000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   s_axis_raw_TVALID;
output  [72:0] ipDataFifo_V_din;
input   ipDataFifo_V_full_n;
output   ipDataFifo_V_write;
input   m_axis_ARP_TREADY;
input  [63:0] s_axis_raw_TDATA;
output   s_axis_raw_TREADY;
input  [7:0] s_axis_raw_TKEEP;
input  [0:0] s_axis_raw_TLAST;
output  [63:0] m_axis_ARP_TDATA;
output   m_axis_ARP_TVALID;
output  [7:0] m_axis_ARP_TKEEP;
output  [0:0] m_axis_ARP_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[72:0] ipDataFifo_V_din;
reg ipDataFifo_V_write;
reg s_axis_raw_TREADY;
reg m_axis_ARP_TVALID;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [0:0] tmp_nbreadreq_fu_86_p5;
reg    ap_sig_bdd_49;
reg   [0:0] dmp_fsmState_V_load_reg_360;
reg   [0:0] tmp_reg_364;
reg   [0:0] cond_reg_383;
reg   [0:0] tmp_8_reg_390;
reg   [0:0] tmp_s_reg_394;
reg   [0:0] tmp_2_reg_398;
reg   [0:0] tmp_5_reg_402;
reg    ap_sig_bdd_83;
reg    ap_sig_ioackin_m_axis_ARP_TREADY;
reg   [0:0] dmp_fsmState_V = 1'b0;
reg   [15:0] dmp_macType_V = 16'b0000000000000000;
reg   [63:0] dmp_prevWord_data_V = 64'b0000000000000000000000000000000000000000000000000000000000000000;
reg   [7:0] dmp_prevWord_keep_V = 8'b00000000;
reg   [0:0] dmp_prevWord_last_V = 1'b0;
reg   [1:0] dmp_wordCount_V = 2'b00;
reg   [63:0] tmp_data_V_3_reg_368;
reg   [7:0] tmp_keep_V_2_reg_373;
wire   [0:0] tmp_last_V_2_fu_211_p1;
reg   [0:0] tmp_last_V_2_reg_378;
wire   [0:0] cond_fu_219_p2;
wire   [0:0] tmp_8_fu_266_p2;
wire   [0:0] tmp_s_fu_272_p2;
wire   [0:0] tmp_2_fu_290_p2;
wire   [0:0] tmp_5_fu_296_p2;
wire   [0:0] ap_reg_phiprechg_dmp_wordCount_V_flag_reg_128pp0_it0;
wire   [0:0] tmp_6_fu_225_p2;
reg   [0:0] dmp_wordCount_V_flag_phi_fu_131_p4;
wire   [15:0] p_Result_s_fu_251_p3;
wire   [15:0] ap_reg_phiprechg_dmp_macType_V_loc_reg_139pp0_it0;
reg   [15:0] dmp_macType_V_loc_phi_fu_142_p4;
wire   [0:0] ap_reg_phiprechg_dmp_wordCount_V_flag_1_reg_148pp0_it0;
reg   [0:0] dmp_wordCount_V_flag_1_phi_fu_151_p4;
wire   [1:0] ap_reg_phiprechg_dmp_wordCount_V_new_1_reg_159pp0_it0;
reg   [1:0] dmp_wordCount_V_new_1_phi_fu_162_p4;
wire   [0:0] ap_reg_phiprechg_dmp_wordCount_V_flag_2_reg_170pp0_it0;
reg   [0:0] dmp_wordCount_V_flag_2_phi_fu_173_p4;
wire   [1:0] ap_reg_phiprechg_dmp_wordCount_V_new_2_reg_182pp0_it0;
reg   [1:0] dmp_wordCount_V_new_2_phi_fu_185_p4;
wire   [72:0] tmp9_fu_323_p4;
wire   [72:0] tmp_116_fu_349_p4;
reg    ap_reg_ioackin_m_axis_ARP_TREADY = 1'b0;
wire   [7:0] p_Result_6_fu_241_p4;
wire   [7:0] p_Result_4_fu_231_p4;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_190;
reg    ap_sig_bdd_101;
reg    ap_sig_bdd_177;
reg    ap_sig_bdd_231;
reg    ap_sig_bdd_72;
reg    ap_sig_bdd_81;
reg    ap_sig_bdd_211;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ioackin_m_axis_ARP_TREADY assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ioackin_m_axis_ARP_TREADY
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axis_ARP_TREADY <= ap_const_logic_0;
    end else begin
        if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_2_reg_398) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
            ap_reg_ioackin_m_axis_ARP_TREADY <= ap_const_logic_0;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & (ap_const_logic_1 == m_axis_ARP_TREADY)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_2_reg_398) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & (ap_const_logic_1 == m_axis_ARP_TREADY)))) begin
            ap_reg_ioackin_m_axis_ARP_TREADY <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_101) begin
        if (~(dmp_fsmState_V == ap_const_lv1_0)) begin
            dmp_fsmState_V <= ap_const_lv1_0;
        end else if (ap_sig_bdd_190) begin
            dmp_fsmState_V <= ap_const_lv1_1;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (dmp_fsmState_V == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_86_p5) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        cond_reg_383 <= cond_fu_219_p2;
        tmp_data_V_3_reg_368 <= s_axis_raw_TDATA;
        tmp_keep_V_2_reg_373 <= s_axis_raw_TKEEP;
        tmp_last_V_2_reg_378 <= s_axis_raw_TLAST;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        dmp_fsmState_V_load_reg_360 <= dmp_fsmState_V;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (dmp_fsmState_V == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_86_p5) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & (ap_const_lv1_0 == cond_fu_219_p2) & ~(ap_const_lv1_0 == tmp_6_fu_225_p2))) begin
        dmp_macType_V <= p_Result_s_fu_251_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        dmp_prevWord_data_V <= tmp_data_V_3_reg_368;
        dmp_prevWord_keep_V <= tmp_keep_V_2_reg_373;
        dmp_prevWord_last_V <= tmp_last_V_2_reg_378;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (dmp_fsmState_V == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_86_p5) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(ap_const_lv1_0 == dmp_wordCount_V_flag_2_phi_fu_173_p4))) begin
        dmp_wordCount_V <= dmp_wordCount_V_new_2_phi_fu_185_p4;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(dmp_fsmState_V == ap_const_lv1_0))) begin
        tmp_2_reg_398 <= tmp_2_fu_290_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(dmp_fsmState_V == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_2_fu_290_p2))) begin
        tmp_5_reg_402 <= tmp_5_fu_296_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (dmp_fsmState_V == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_86_p5) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & (ap_const_lv1_0 == cond_fu_219_p2))) begin
        tmp_8_reg_390 <= tmp_8_fu_266_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (dmp_fsmState_V == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_reg_364 <= tmp_nbreadreq_fu_86_p5;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (dmp_fsmState_V == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_86_p5) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & (ap_const_lv1_0 == cond_fu_219_p2) & (ap_const_lv1_0 == tmp_8_fu_266_p2))) begin
        tmp_s_reg_394 <= tmp_s_fu_272_p2;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or dmp_fsmState_V_load_reg_360 or tmp_reg_364 or cond_reg_383 or tmp_8_reg_390 or tmp_2_reg_398 or ap_sig_bdd_83 or ap_sig_ioackin_m_axis_ARP_TREADY)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or dmp_fsmState_V_load_reg_360 or tmp_reg_364 or cond_reg_383 or tmp_8_reg_390 or tmp_2_reg_398 or ap_sig_bdd_83 or ap_sig_ioackin_m_axis_ARP_TREADY)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_0 assign process. ///
always @ (ap_sig_bdd_20)
begin
    if (ap_sig_bdd_20) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_ioackin_m_axis_ARP_TREADY assign process. ///
always @ (m_axis_ARP_TREADY or ap_reg_ioackin_m_axis_ARP_TREADY)
begin
    if ((ap_const_logic_0 == ap_reg_ioackin_m_axis_ARP_TREADY)) begin
        ap_sig_ioackin_m_axis_ARP_TREADY = m_axis_ARP_TREADY;
    end else begin
        ap_sig_ioackin_m_axis_ARP_TREADY = ap_const_logic_1;
    end
end

/// ap_sig_pprstidle_pp0 assign process. ///
always @ (ap_start or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// dmp_macType_V_loc_phi_fu_142_p4 assign process. ///
always @ (dmp_macType_V or tmp_6_fu_225_p2 or p_Result_s_fu_251_p3 or ap_reg_phiprechg_dmp_macType_V_loc_reg_139pp0_it0 or ap_sig_bdd_177)
begin
    if (ap_sig_bdd_177) begin
        if ((ap_const_lv1_0 == tmp_6_fu_225_p2)) begin
            dmp_macType_V_loc_phi_fu_142_p4 = dmp_macType_V;
        end else if (~(ap_const_lv1_0 == tmp_6_fu_225_p2)) begin
            dmp_macType_V_loc_phi_fu_142_p4 = p_Result_s_fu_251_p3;
        end else begin
            dmp_macType_V_loc_phi_fu_142_p4 = ap_reg_phiprechg_dmp_macType_V_loc_reg_139pp0_it0;
        end
    end else begin
        dmp_macType_V_loc_phi_fu_142_p4 = ap_reg_phiprechg_dmp_macType_V_loc_reg_139pp0_it0;
    end
end

/// dmp_wordCount_V_flag_1_phi_fu_151_p4 assign process. ///
always @ (cond_fu_219_p2 or dmp_wordCount_V_flag_phi_fu_131_p4 or ap_reg_phiprechg_dmp_wordCount_V_flag_1_reg_148pp0_it0 or ap_sig_bdd_231)
begin
    if (ap_sig_bdd_231) begin
        if (~(ap_const_lv1_0 == cond_fu_219_p2)) begin
            dmp_wordCount_V_flag_1_phi_fu_151_p4 = ap_const_lv1_1;
        end else if ((ap_const_lv1_0 == cond_fu_219_p2)) begin
            dmp_wordCount_V_flag_1_phi_fu_151_p4 = dmp_wordCount_V_flag_phi_fu_131_p4;
        end else begin
            dmp_wordCount_V_flag_1_phi_fu_151_p4 = ap_reg_phiprechg_dmp_wordCount_V_flag_1_reg_148pp0_it0;
        end
    end else begin
        dmp_wordCount_V_flag_1_phi_fu_151_p4 = ap_reg_phiprechg_dmp_wordCount_V_flag_1_reg_148pp0_it0;
    end
end

/// dmp_wordCount_V_flag_2_phi_fu_173_p4 assign process. ///
always @ (tmp_last_V_2_fu_211_p1 or dmp_wordCount_V_flag_1_phi_fu_151_p4 or ap_reg_phiprechg_dmp_wordCount_V_flag_2_reg_170pp0_it0 or ap_sig_bdd_231)
begin
    if (ap_sig_bdd_231) begin
        if ((ap_const_lv1_0 == tmp_last_V_2_fu_211_p1)) begin
            dmp_wordCount_V_flag_2_phi_fu_173_p4 = dmp_wordCount_V_flag_1_phi_fu_151_p4;
        end else if (~(ap_const_lv1_0 == tmp_last_V_2_fu_211_p1)) begin
            dmp_wordCount_V_flag_2_phi_fu_173_p4 = ap_const_lv1_1;
        end else begin
            dmp_wordCount_V_flag_2_phi_fu_173_p4 = ap_reg_phiprechg_dmp_wordCount_V_flag_2_reg_170pp0_it0;
        end
    end else begin
        dmp_wordCount_V_flag_2_phi_fu_173_p4 = ap_reg_phiprechg_dmp_wordCount_V_flag_2_reg_170pp0_it0;
    end
end

/// dmp_wordCount_V_flag_phi_fu_131_p4 assign process. ///
always @ (ap_reg_phiprechg_dmp_wordCount_V_flag_reg_128pp0_it0 or tmp_6_fu_225_p2 or ap_sig_bdd_177)
begin
    if (ap_sig_bdd_177) begin
        if ((ap_const_lv1_0 == tmp_6_fu_225_p2)) begin
            dmp_wordCount_V_flag_phi_fu_131_p4 = ap_const_lv1_0;
        end else if (~(ap_const_lv1_0 == tmp_6_fu_225_p2)) begin
            dmp_wordCount_V_flag_phi_fu_131_p4 = ap_const_lv1_1;
        end else begin
            dmp_wordCount_V_flag_phi_fu_131_p4 = ap_reg_phiprechg_dmp_wordCount_V_flag_reg_128pp0_it0;
        end
    end else begin
        dmp_wordCount_V_flag_phi_fu_131_p4 = ap_reg_phiprechg_dmp_wordCount_V_flag_reg_128pp0_it0;
    end
end

/// dmp_wordCount_V_new_1_phi_fu_162_p4 assign process. ///
always @ (cond_fu_219_p2 or ap_reg_phiprechg_dmp_wordCount_V_new_1_reg_159pp0_it0 or ap_sig_bdd_231)
begin
    if (ap_sig_bdd_231) begin
        if (~(ap_const_lv1_0 == cond_fu_219_p2)) begin
            dmp_wordCount_V_new_1_phi_fu_162_p4 = ap_const_lv2_1;
        end else if ((ap_const_lv1_0 == cond_fu_219_p2)) begin
            dmp_wordCount_V_new_1_phi_fu_162_p4 = ap_const_lv2_2;
        end else begin
            dmp_wordCount_V_new_1_phi_fu_162_p4 = ap_reg_phiprechg_dmp_wordCount_V_new_1_reg_159pp0_it0;
        end
    end else begin
        dmp_wordCount_V_new_1_phi_fu_162_p4 = ap_reg_phiprechg_dmp_wordCount_V_new_1_reg_159pp0_it0;
    end
end

/// dmp_wordCount_V_new_2_phi_fu_185_p4 assign process. ///
always @ (tmp_last_V_2_fu_211_p1 or dmp_wordCount_V_new_1_phi_fu_162_p4 or ap_reg_phiprechg_dmp_wordCount_V_new_2_reg_182pp0_it0 or ap_sig_bdd_231)
begin
    if (ap_sig_bdd_231) begin
        if ((ap_const_lv1_0 == tmp_last_V_2_fu_211_p1)) begin
            dmp_wordCount_V_new_2_phi_fu_185_p4 = dmp_wordCount_V_new_1_phi_fu_162_p4;
        end else if (~(ap_const_lv1_0 == tmp_last_V_2_fu_211_p1)) begin
            dmp_wordCount_V_new_2_phi_fu_185_p4 = ap_const_lv2_0;
        end else begin
            dmp_wordCount_V_new_2_phi_fu_185_p4 = ap_reg_phiprechg_dmp_wordCount_V_new_2_reg_182pp0_it0;
        end
    end else begin
        dmp_wordCount_V_new_2_phi_fu_185_p4 = ap_reg_phiprechg_dmp_wordCount_V_new_2_reg_182pp0_it0;
    end
end

/// ipDataFifo_V_din assign process. ///
always @ (tmp9_fu_323_p4 or tmp_116_fu_349_p4 or ap_sig_bdd_72 or ap_sig_bdd_81 or ap_sig_bdd_211)
begin
    if (ap_sig_bdd_211) begin
        if (ap_sig_bdd_81) begin
            ipDataFifo_V_din = tmp_116_fu_349_p4;
        end else if (ap_sig_bdd_72) begin
            ipDataFifo_V_din = tmp9_fu_323_p4;
        end else begin
            ipDataFifo_V_din = 'bx;
        end
    end else begin
        ipDataFifo_V_din = 'bx;
    end
end

/// ipDataFifo_V_write assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or dmp_fsmState_V_load_reg_360 or tmp_reg_364 or cond_reg_383 or tmp_8_reg_390 or tmp_s_reg_394 or tmp_2_reg_398 or tmp_5_reg_402 or ap_sig_bdd_83 or ap_sig_ioackin_m_axis_ARP_TREADY)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & (ap_const_lv1_0 == tmp_8_reg_390) & ~(ap_const_lv1_0 == tmp_s_reg_394) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_lv1_0 == tmp_2_reg_398) & ~(ap_const_lv1_0 == tmp_5_reg_402) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        ipDataFifo_V_write = ap_const_logic_1;
    end else begin
        ipDataFifo_V_write = ap_const_logic_0;
    end
end

/// m_axis_ARP_TVALID assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or dmp_fsmState_V_load_reg_360 or tmp_reg_364 or cond_reg_383 or tmp_8_reg_390 or tmp_2_reg_398 or ap_sig_bdd_83 or ap_reg_ioackin_m_axis_ARP_TREADY)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & (ap_const_logic_0 == ap_reg_ioackin_m_axis_ARP_TREADY)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_2_reg_398) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & (ap_const_logic_0 == ap_reg_ioackin_m_axis_ARP_TREADY)))) begin
        m_axis_ARP_TVALID = ap_const_logic_1;
    end else begin
        m_axis_ARP_TVALID = ap_const_logic_0;
    end
end

/// s_axis_raw_TREADY assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_nbreadreq_fu_86_p5 or ap_sig_bdd_49 or dmp_fsmState_V_load_reg_360 or tmp_reg_364 or cond_reg_383 or tmp_8_reg_390 or tmp_2_reg_398 or ap_sig_bdd_83 or ap_sig_ioackin_m_axis_ARP_TREADY or dmp_fsmState_V)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (dmp_fsmState_V == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_86_p5) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        s_axis_raw_TREADY = ap_const_logic_1;
    end else begin
        s_axis_raw_TREADY = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or dmp_fsmState_V_load_reg_360 or tmp_reg_364 or cond_reg_383 or tmp_8_reg_390 or tmp_2_reg_398 or ap_sig_bdd_83 or ap_sig_ioackin_m_axis_ARP_TREADY or ap_sig_pprstidle_pp0)
begin
    case (ap_CS_fsm)
        ap_ST_pp0_stg0_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_reg_phiprechg_dmp_macType_V_loc_reg_139pp0_it0 = 'bx;
assign ap_reg_phiprechg_dmp_wordCount_V_flag_1_reg_148pp0_it0 = 'bx;
assign ap_reg_phiprechg_dmp_wordCount_V_flag_2_reg_170pp0_it0 = 'bx;
assign ap_reg_phiprechg_dmp_wordCount_V_flag_reg_128pp0_it0 = 'bx;
assign ap_reg_phiprechg_dmp_wordCount_V_new_1_reg_159pp0_it0 = 'bx;
assign ap_reg_phiprechg_dmp_wordCount_V_new_2_reg_182pp0_it0 = 'bx;
assign ap_reg_ppiten_pp0_it0 = ap_start;

/// ap_sig_bdd_101 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or dmp_fsmState_V_load_reg_360 or tmp_reg_364 or cond_reg_383 or tmp_8_reg_390 or tmp_2_reg_398 or ap_sig_bdd_83 or ap_sig_ioackin_m_axis_ARP_TREADY)
begin
    ap_sig_bdd_101 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | ((ap_sig_bdd_83 | ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & ~(ap_const_lv1_0 == tmp_8_reg_390) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY)) | (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_logic_0 == ap_sig_ioackin_m_axis_ARP_TREADY) & ~(ap_const_lv1_0 == tmp_2_reg_398))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))));
end

/// ap_sig_bdd_177 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or tmp_nbreadreq_fu_86_p5 or dmp_fsmState_V or cond_fu_219_p2)
begin
    ap_sig_bdd_177 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (dmp_fsmState_V == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_86_p5) & (ap_const_lv1_0 == cond_fu_219_p2));
end

/// ap_sig_bdd_190 assign process. ///
always @ (tmp_nbreadreq_fu_86_p5 or dmp_fsmState_V or tmp_last_V_2_fu_211_p1)
begin
    ap_sig_bdd_190 = ((dmp_fsmState_V == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_86_p5) & ~(ap_const_lv1_0 == tmp_last_V_2_fu_211_p1));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_211 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or ap_sig_bdd_83)
begin
    ap_sig_bdd_211 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))));
end

/// ap_sig_bdd_231 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or tmp_nbreadreq_fu_86_p5 or dmp_fsmState_V)
begin
    ap_sig_bdd_231 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (dmp_fsmState_V == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_86_p5));
end

/// ap_sig_bdd_49 assign process. ///
always @ (ap_start or ap_done_reg or s_axis_raw_TVALID or tmp_nbreadreq_fu_86_p5 or dmp_fsmState_V)
begin
    ap_sig_bdd_49 = (((s_axis_raw_TVALID == ap_const_logic_0) & (dmp_fsmState_V == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_86_p5)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_72 assign process. ///
always @ (dmp_fsmState_V_load_reg_360 or tmp_reg_364 or cond_reg_383 or tmp_8_reg_390 or tmp_s_reg_394)
begin
    ap_sig_bdd_72 = ((ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & (ap_const_lv1_0 == tmp_8_reg_390) & ~(ap_const_lv1_0 == tmp_s_reg_394));
end

/// ap_sig_bdd_81 assign process. ///
always @ (dmp_fsmState_V_load_reg_360 or tmp_2_reg_398 or tmp_5_reg_402)
begin
    ap_sig_bdd_81 = (~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_lv1_0 == tmp_2_reg_398) & ~(ap_const_lv1_0 == tmp_5_reg_402));
end

/// ap_sig_bdd_83 assign process. ///
always @ (ipDataFifo_V_full_n or dmp_fsmState_V_load_reg_360 or tmp_reg_364 or cond_reg_383 or tmp_8_reg_390 or tmp_s_reg_394 or tmp_2_reg_398 or tmp_5_reg_402)
begin
    ap_sig_bdd_83 = (((ipDataFifo_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & ~(ap_const_lv1_0 == tmp_reg_364) & (ap_const_lv1_0 == cond_reg_383) & (ap_const_lv1_0 == tmp_8_reg_390) & ~(ap_const_lv1_0 == tmp_s_reg_394)) | ((ipDataFifo_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == dmp_fsmState_V_load_reg_360) & (ap_const_lv1_0 == tmp_2_reg_398) & ~(ap_const_lv1_0 == tmp_5_reg_402)));
end
assign cond_fu_219_p2 = (dmp_wordCount_V == ap_const_lv2_0? 1'b1: 1'b0);
assign m_axis_ARP_TDATA = dmp_prevWord_data_V;
assign m_axis_ARP_TKEEP = dmp_prevWord_keep_V;
assign m_axis_ARP_TLAST = dmp_prevWord_last_V;
assign p_Result_4_fu_231_p4 = {{s_axis_raw_TDATA[ap_const_lv32_2F : ap_const_lv32_28]}};
assign p_Result_6_fu_241_p4 = {{s_axis_raw_TDATA[ap_const_lv32_27 : ap_const_lv32_20]}};
assign p_Result_s_fu_251_p3 = {{p_Result_6_fu_241_p4}, {p_Result_4_fu_231_p4}};
assign tmp9_fu_323_p4 = {{{dmp_prevWord_last_V}, {dmp_prevWord_keep_V}}, {dmp_prevWord_data_V}};
assign tmp_116_fu_349_p4 = {{{dmp_prevWord_last_V}, {dmp_prevWord_keep_V}}, {dmp_prevWord_data_V}};
assign tmp_2_fu_290_p2 = (dmp_macType_V == ap_const_lv16_806? 1'b1: 1'b0);
assign tmp_5_fu_296_p2 = (dmp_macType_V == ap_const_lv16_800? 1'b1: 1'b0);
assign tmp_6_fu_225_p2 = (dmp_wordCount_V == ap_const_lv2_1? 1'b1: 1'b0);
assign tmp_8_fu_266_p2 = (dmp_macType_V_loc_phi_fu_142_p4 == ap_const_lv16_806? 1'b1: 1'b0);
assign tmp_last_V_2_fu_211_p1 = s_axis_raw_TLAST;
assign tmp_nbreadreq_fu_86_p5 = s_axis_raw_TVALID;
assign tmp_s_fu_272_p2 = (dmp_macType_V_loc_phi_fu_142_p4 == ap_const_lv16_800? 1'b1: 1'b0);


endmodule //ip_handler_detect_mac_protocol

