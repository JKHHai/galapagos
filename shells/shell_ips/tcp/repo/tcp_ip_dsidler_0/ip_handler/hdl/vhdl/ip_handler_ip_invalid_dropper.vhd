-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.1
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ip_handler_ip_invalid_dropper is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ipDataCheckFifo_V_dout : IN STD_LOGIC_VECTOR (72 downto 0);
    ipDataCheckFifo_V_empty_n : IN STD_LOGIC;
    ipDataCheckFifo_V_read : OUT STD_LOGIC;
    ipValidFifo_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    ipValidFifo_V_empty_n : IN STD_LOGIC;
    ipValidFifo_V_read : OUT STD_LOGIC;
    ipDataDropFifo_V_din : OUT STD_LOGIC_VECTOR (72 downto 0);
    ipDataDropFifo_V_full_n : IN STD_LOGIC;
    ipDataDropFifo_V_write : OUT STD_LOGIC );
end;


architecture behav of ip_handler_ip_invalid_dropper is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_pp0_stg0_fsm_0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_48 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001000";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_pp0_stg0_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_20 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it0 : STD_LOGIC;
    signal ap_reg_ppiten_pp0_it1 : STD_LOGIC := '0';
    signal grp_nbreadreq_fu_66_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_nbreadreq_fu_80_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_bdd_71 : BOOLEAN;
    signal iid_state_load_reg_134 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_reg_146 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_bdd_85 : BOOLEAN;
    signal iid_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal grp_fu_102_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp28_reg_150 : STD_LOGIC_VECTOR (72 downto 0);
    signal storemerge_fu_120_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_pprstidle_pp0 : STD_LOGIC;


begin




    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- ap_done_reg assign process. --
    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_71) or (ap_sig_bdd_85 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it1 assign process. --
    ap_reg_ppiten_pp0_it1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_71) or (ap_sig_bdd_85 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
                end if; 
            end if;
        end if;
    end process;


    -- iid_state assign process. --
    iid_state_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (iid_state = ap_const_lv2_0) and not((ap_const_lv1_0 = tmp_3_nbreadreq_fu_80_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_71) or (ap_sig_bdd_85 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then 
                iid_state <= storemerge_fu_120_p3;
            elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (iid_state = ap_const_lv2_2) and not((grp_nbreadreq_fu_66_p3 = ap_const_lv1_0)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_71) or (ap_sig_bdd_85 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and not((ap_const_lv1_0 = grp_fu_102_p3))) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((grp_nbreadreq_fu_66_p3 = ap_const_lv1_0)) and (iid_state = ap_const_lv2_1) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_71) or (ap_sig_bdd_85 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) and not((ap_const_lv1_0 = grp_fu_102_p3))))) then 
                iid_state <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_71) or (ap_sig_bdd_85 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then
                iid_state_load_reg_134 <= iid_state;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and not((grp_nbreadreq_fu_66_p3 = ap_const_lv1_0)) and (iid_state = ap_const_lv2_1) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_71) or (ap_sig_bdd_85 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then
                tmp28_reg_150 <= ipDataCheckFifo_V_dout;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (iid_state = ap_const_lv2_1) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_71) or (ap_sig_bdd_85 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then
                tmp_reg_146 <= grp_nbreadreq_fu_66_p3;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_done_reg, ap_CS_fsm, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, ap_sig_bdd_71, ap_sig_bdd_85, ap_sig_pprstidle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_pp0_stg0_fsm_0 => 
                ap_NS_fsm <= ap_ST_pp0_stg0_fsm_0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, ap_sig_bdd_71, ap_sig_bdd_85)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_71) or (ap_sig_bdd_85 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_0 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_0 = ap_reg_ppiten_pp0_it1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, ap_sig_bdd_71, ap_sig_bdd_85)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_71) or (ap_sig_bdd_85 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_reg_ppiten_pp0_it0 <= ap_start;

    -- ap_sig_bdd_20 assign process. --
    ap_sig_bdd_20_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_20 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_71 assign process. --
    ap_sig_bdd_71_assign_proc : process(ap_start, ap_done_reg, ipDataCheckFifo_V_empty_n, grp_nbreadreq_fu_66_p3, ipValidFifo_V_empty_n, tmp_3_nbreadreq_fu_80_p3, iid_state)
    begin
                ap_sig_bdd_71 <= (((ipDataCheckFifo_V_empty_n = ap_const_logic_0) and (iid_state = ap_const_lv2_2) and not((grp_nbreadreq_fu_66_p3 = ap_const_lv1_0))) or ((ipDataCheckFifo_V_empty_n = ap_const_logic_0) and not((grp_nbreadreq_fu_66_p3 = ap_const_lv1_0)) and (iid_state = ap_const_lv2_1)) or ((ipValidFifo_V_empty_n = ap_const_logic_0) and (iid_state = ap_const_lv2_0) and not((ap_const_lv1_0 = tmp_3_nbreadreq_fu_80_p3))) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    -- ap_sig_bdd_85 assign process. --
    ap_sig_bdd_85_assign_proc : process(ipDataDropFifo_V_full_n, iid_state_load_reg_134, tmp_reg_146)
    begin
                ap_sig_bdd_85 <= ((ipDataDropFifo_V_full_n = ap_const_logic_0) and (ap_const_lv2_1 = iid_state_load_reg_134) and not((ap_const_lv1_0 = tmp_reg_146)));
    end process;


    -- ap_sig_cseq_ST_pp0_stg0_fsm_0 assign process. --
    ap_sig_cseq_ST_pp0_stg0_fsm_0_assign_proc : process(ap_sig_bdd_20)
    begin
        if (ap_sig_bdd_20) then 
            ap_sig_cseq_ST_pp0_stg0_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg0_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_pprstidle_pp0 assign process. --
    ap_sig_pprstidle_pp0_assign_proc : process(ap_start, ap_reg_ppiten_pp0_it0)
    begin
        if (((ap_const_logic_0 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_0 = ap_start))) then 
            ap_sig_pprstidle_pp0 <= ap_const_logic_1;
        else 
            ap_sig_pprstidle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_102_p3 <= ipDataCheckFifo_V_dout(72 downto 72);
    grp_nbreadreq_fu_66_p3 <= (0=>ipDataCheckFifo_V_empty_n, others=>'-');

    -- ipDataCheckFifo_V_read assign process. --
    ipDataCheckFifo_V_read_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, grp_nbreadreq_fu_66_p3, ap_sig_bdd_71, ap_sig_bdd_85, iid_state)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (iid_state = ap_const_lv2_2) and not((grp_nbreadreq_fu_66_p3 = ap_const_lv1_0)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_71) or (ap_sig_bdd_85 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((grp_nbreadreq_fu_66_p3 = ap_const_lv1_0)) and (iid_state = ap_const_lv2_1) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_71) or (ap_sig_bdd_85 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))))) then 
            ipDataCheckFifo_V_read <= ap_const_logic_1;
        else 
            ipDataCheckFifo_V_read <= ap_const_logic_0;
        end if; 
    end process;

    ipDataDropFifo_V_din <= tmp28_reg_150;

    -- ipDataDropFifo_V_write assign process. --
    ipDataDropFifo_V_write_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, ap_sig_bdd_71, iid_state_load_reg_134, tmp_reg_146, ap_sig_bdd_85)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_lv2_1 = iid_state_load_reg_134) and not((ap_const_lv1_0 = tmp_reg_146)) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_71) or (ap_sig_bdd_85 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then 
            ipDataDropFifo_V_write <= ap_const_logic_1;
        else 
            ipDataDropFifo_V_write <= ap_const_logic_0;
        end if; 
    end process;


    -- ipValidFifo_V_read assign process. --
    ipValidFifo_V_read_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, tmp_3_nbreadreq_fu_80_p3, ap_sig_bdd_71, ap_sig_bdd_85, iid_state)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (iid_state = ap_const_lv2_0) and not((ap_const_lv1_0 = tmp_3_nbreadreq_fu_80_p3)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_71) or (ap_sig_bdd_85 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then 
            ipValidFifo_V_read <= ap_const_logic_1;
        else 
            ipValidFifo_V_read <= ap_const_logic_0;
        end if; 
    end process;

    storemerge_fu_120_p3 <= 
        ap_const_lv2_1 when (ipValidFifo_V_dout(0) = '1') else 
        ap_const_lv2_2;
    tmp_3_nbreadreq_fu_80_p3 <= (0=>ipValidFifo_V_empty_n, others=>'-');
end behav;