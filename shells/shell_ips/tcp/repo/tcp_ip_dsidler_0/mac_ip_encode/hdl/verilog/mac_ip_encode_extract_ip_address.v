// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mac_ip_encode_extract_ip_address (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        dataStreamBuffer1_V_dout,
        dataStreamBuffer1_V_empty_n,
        dataStreamBuffer1_V_read,
        dataStreamBuffer2_V_din,
        dataStreamBuffer2_V_full_n,
        dataStreamBuffer2_V_write,
        arpTableOut_V_V_din,
        arpTableOut_V_V_full_n,
        arpTableOut_V_V_write,
        regSubNetMask_V,
        regDefaultGateway_V
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv2_2 = 2'b10;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv2_3 = 2'b11;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv32_48 = 32'b1001000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [72:0] dataStreamBuffer1_V_dout;
input   dataStreamBuffer1_V_empty_n;
output   dataStreamBuffer1_V_read;
output  [72:0] dataStreamBuffer2_V_din;
input   dataStreamBuffer2_V_full_n;
output   dataStreamBuffer2_V_write;
output  [31:0] arpTableOut_V_V_din;
input   arpTableOut_V_V_full_n;
output   arpTableOut_V_V_write;
input  [31:0] regSubNetMask_V;
input  [31:0] regDefaultGateway_V;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg dataStreamBuffer1_V_read;
reg dataStreamBuffer2_V_write;
reg[31:0] arpTableOut_V_V_din;
reg arpTableOut_V_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
wire   [0:0] tmp_nbreadreq_fu_92_p3;
reg    ap_sig_bdd_52;
reg   [0:0] tmp_reg_187;
reg    ap_sig_bdd_63;
reg   [0:0] ap_reg_ppstg_tmp_reg_187_pp0_it1;
reg   [1:0] eia_wordCount_V_load_reg_201;
reg   [1:0] ap_reg_ppstg_eia_wordCount_V_load_reg_201_pp0_it1;
reg   [0:0] tmp_21_reg_210;
reg    ap_sig_bdd_88;
reg   [1:0] eia_wordCount_V = 2'b00;
reg   [31:0] tmp_V_1_reg_176;
reg   [31:0] ap_reg_ppstg_tmp_V_1_reg_176_pp0_it1;
reg   [31:0] regSubNetMask_V_read_reg_182;
reg   [72:0] tmp1_reg_191;
wire   [0:0] tmp_last_V_fu_121_p3;
wire   [1:0] eia_wordCount_V_load_load_fu_129_p1;
wire   [31:0] dstIpAddress_V_fu_157_p1;
reg   [31:0] dstIpAddress_V_reg_205;
wire   [0:0] tmp_21_fu_170_p2;
wire   [31:0] tmp_s_fu_160_p2;
wire   [31:0] tmp_20_fu_165_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_196;
reg    ap_sig_bdd_200;
reg    ap_sig_bdd_124;




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
        end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_63 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_63 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// ap_reg_ppiten_pp0_it2 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it2
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
    end else begin
        if (~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_63 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_124) begin
        if (ap_sig_bdd_200) begin
            eia_wordCount_V <= ap_const_lv2_0;
        end else if ((ap_const_lv2_0 == eia_wordCount_V_load_load_fu_129_p1)) begin
            eia_wordCount_V <= ap_const_lv2_1;
        end else if ((eia_wordCount_V_load_load_fu_129_p1 == ap_const_lv2_1)) begin
            eia_wordCount_V <= ap_const_lv2_2;
        end else if ((ap_const_lv2_2 == eia_wordCount_V_load_load_fu_129_p1)) begin
            eia_wordCount_V <= ap_const_lv2_3;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_63 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        ap_reg_ppstg_eia_wordCount_V_load_reg_201_pp0_it1 <= eia_wordCount_V_load_reg_201;
        ap_reg_ppstg_tmp_V_1_reg_176_pp0_it1 <= tmp_V_1_reg_176;
        ap_reg_ppstg_tmp_reg_187_pp0_it1 <= tmp_reg_187;
        regSubNetMask_V_read_reg_182 <= regSubNetMask_V;
        tmp_V_1_reg_176 <= regDefaultGateway_V;
        tmp_reg_187 <= tmp_nbreadreq_fu_92_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == tmp_reg_187) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_63 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & (eia_wordCount_V_load_reg_201 == ap_const_lv2_2))) begin
        dstIpAddress_V_reg_205 <= dstIpAddress_V_fu_157_p1;
        tmp_21_reg_210 <= tmp_21_fu_170_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(tmp_nbreadreq_fu_92_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_63 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        eia_wordCount_V_load_reg_201 <= eia_wordCount_V;
        tmp1_reg_191 <= dataStreamBuffer1_V_dout;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_63 or ap_sig_bdd_88)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_63 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it2))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_63 or ap_sig_bdd_88)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_63 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
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

/// ap_sig_pprstidle_pp0 assign process. ///
always @ (ap_start or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// arpTableOut_V_V_din assign process. ///
always @ (tmp_21_reg_210 or ap_reg_ppstg_tmp_V_1_reg_176_pp0_it1 or dstIpAddress_V_reg_205 or ap_sig_bdd_196)
begin
    if (ap_sig_bdd_196) begin
        if (~(ap_const_lv1_0 == tmp_21_reg_210)) begin
            arpTableOut_V_V_din = dstIpAddress_V_reg_205;
        end else if ((ap_const_lv1_0 == tmp_21_reg_210)) begin
            arpTableOut_V_V_din = ap_reg_ppstg_tmp_V_1_reg_176_pp0_it1;
        end else begin
            arpTableOut_V_V_din = 'bx;
        end
    end else begin
        arpTableOut_V_V_din = 'bx;
    end
end

/// arpTableOut_V_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_63 or ap_reg_ppstg_tmp_reg_187_pp0_it1 or ap_reg_ppstg_eia_wordCount_V_load_reg_201_pp0_it1 or tmp_21_reg_210 or ap_sig_bdd_88)
begin
    if (((~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_187_pp0_it1) & (ap_reg_ppstg_eia_wordCount_V_load_reg_201_pp0_it1 == ap_const_lv2_2) & (ap_const_lv1_0 == tmp_21_reg_210) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_63 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) | (~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_187_pp0_it1) & (ap_reg_ppstg_eia_wordCount_V_load_reg_201_pp0_it1 == ap_const_lv2_2) & ~(ap_const_lv1_0 == tmp_21_reg_210) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_63 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))))) begin
        arpTableOut_V_V_write = ap_const_logic_1;
    end else begin
        arpTableOut_V_V_write = ap_const_logic_0;
    end
end

/// dataStreamBuffer1_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or tmp_nbreadreq_fu_92_p3 or ap_sig_bdd_52 or ap_sig_bdd_63 or ap_sig_bdd_88)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_nbreadreq_fu_92_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_63 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        dataStreamBuffer1_V_read = ap_const_logic_1;
    end else begin
        dataStreamBuffer1_V_read = ap_const_logic_0;
    end
end

/// dataStreamBuffer2_V_write assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or tmp_reg_187 or ap_sig_bdd_63 or ap_sig_bdd_88)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == tmp_reg_187) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_63 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        dataStreamBuffer2_V_write = ap_const_logic_1;
    end else begin
        dataStreamBuffer2_V_write = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_63 or ap_sig_bdd_88 or ap_sig_pprstidle_pp0)
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

assign ap_reg_ppiten_pp0_it0 = ap_start;

/// ap_sig_bdd_124 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or tmp_nbreadreq_fu_92_p3 or ap_sig_bdd_52 or ap_sig_bdd_63 or ap_sig_bdd_88)
begin
    ap_sig_bdd_124 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_nbreadreq_fu_92_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_63 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))));
end

/// ap_sig_bdd_196 assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_63 or ap_reg_ppstg_tmp_reg_187_pp0_it1 or ap_reg_ppstg_eia_wordCount_V_load_reg_201_pp0_it1 or ap_sig_bdd_88)
begin
    ap_sig_bdd_196 = (~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_187_pp0_it1) & (ap_reg_ppstg_eia_wordCount_V_load_reg_201_pp0_it1 == ap_const_lv2_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_63 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_200 assign process. ///
always @ (tmp_last_V_fu_121_p3 or eia_wordCount_V_load_load_fu_129_p1)
begin
    ap_sig_bdd_200 = (~(ap_const_lv2_2 == eia_wordCount_V_load_load_fu_129_p1) & ~(eia_wordCount_V_load_load_fu_129_p1 == ap_const_lv2_1) & ~(ap_const_lv2_0 == eia_wordCount_V_load_load_fu_129_p1) & ~(ap_const_lv1_0 == tmp_last_V_fu_121_p3));
end

/// ap_sig_bdd_52 assign process. ///
always @ (ap_start or ap_done_reg or dataStreamBuffer1_V_empty_n or tmp_nbreadreq_fu_92_p3)
begin
    ap_sig_bdd_52 = (((dataStreamBuffer1_V_empty_n == ap_const_logic_0) & ~(tmp_nbreadreq_fu_92_p3 == ap_const_lv1_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_63 assign process. ///
always @ (dataStreamBuffer2_V_full_n or tmp_reg_187)
begin
    ap_sig_bdd_63 = ((dataStreamBuffer2_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_reg_187));
end

/// ap_sig_bdd_88 assign process. ///
always @ (arpTableOut_V_V_full_n or ap_reg_ppstg_tmp_reg_187_pp0_it1 or ap_reg_ppstg_eia_wordCount_V_load_reg_201_pp0_it1 or tmp_21_reg_210)
begin
    ap_sig_bdd_88 = (((arpTableOut_V_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_187_pp0_it1) & (ap_reg_ppstg_eia_wordCount_V_load_reg_201_pp0_it1 == ap_const_lv2_2) & (ap_const_lv1_0 == tmp_21_reg_210)) | ((arpTableOut_V_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_187_pp0_it1) & (ap_reg_ppstg_eia_wordCount_V_load_reg_201_pp0_it1 == ap_const_lv2_2) & ~(ap_const_lv1_0 == tmp_21_reg_210)));
end
assign dataStreamBuffer2_V_din = tmp1_reg_191;
assign dstIpAddress_V_fu_157_p1 = tmp1_reg_191[31:0];
assign eia_wordCount_V_load_load_fu_129_p1 = eia_wordCount_V;
assign tmp_20_fu_165_p2 = (tmp_s_fu_160_p2 & regSubNetMask_V_read_reg_182);
assign tmp_21_fu_170_p2 = (tmp_20_fu_165_p2 == ap_const_lv32_0? 1'b1: 1'b0);
assign tmp_last_V_fu_121_p3 = dataStreamBuffer1_V_dout[ap_const_lv32_48];
assign tmp_nbreadreq_fu_92_p3 = dataStreamBuffer1_V_empty_n;
assign tmp_s_fu_160_p2 = (dstIpAddress_V_fu_157_p1 ^ tmp_V_1_reg_176);


endmodule //mac_ip_encode_extract_ip_address

