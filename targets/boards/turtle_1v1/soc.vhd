-- ******************************************************************
-- ******************************************************************
-- ******************************************************************
-- This file is generated by soc_gen and will be overwritten next time
-- the tool is run. See soc_top/README for information on running soc_gen.
-- ******************************************************************
-- ******************************************************************
-- ******************************************************************
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.config.all;
use work.clk_config.all;
use work.cpu2j0_pack.all;
use work.data_bus_pack.all;
use work.ddrc_cnt_pack.all;
use work.dma_pack.all;
entity soc is
    port (
        clk_emac : in std_logic;
        clk_mem : in std_logic;
        clk_mem_2x : in std_logic;
        clk_mem_90 : in std_logic;
        clk_sys : in std_logic;
        clk_gpsif : in std_logic;
        ddr_sd_data_i : out sd_data_i_t;
        ddr_sd_data_o : in sd_data_o_t;
        ddr_sd_pre_ctrl : out sd_ctrl_t;
        emac_phy_clk : out std_logic;
        emac_phy_crs_dv : in std_logic;
        emac_phy_rxd : in std_logic_vector(1 downto 0);
        emac_phy_rxerr : in std_logic;
        emac_phy_txd : out std_logic_vector(1 downto 0);
        emac_phy_txen : out std_logic;
        flash_clk : out std_logic;
        flash_cs : out std_logic_vector(1 downto 0);
        flash_miso : in std_logic;
        flash_mosi : out std_logic;
        gps_clk : in std_logic;
        gps_d : in std_logic_vector(1 downto 0);
        phy_rmii_clk : in std_logic;
        pi : in std_logic_vector(31 downto 0);
        po : out std_logic_vector(31 downto 0);
        reset : in std_logic;
        rtc_nsec : out std_logic_vector(31 downto 0);
        uart0_rx : in std_logic;
        uart0_tx : out std_logic
    );
end;
architecture impl of soc is
    signal cache01sel_ctrl_temp : std_logic;
    signal cpu0_data_master_ack : std_logic;
    signal cpu0_data_master_en : std_logic;
    signal cpu0_ddr_dbus_i : cpu_data_i_t;
    signal cpu0_ddr_dbus_o : cpu_data_o_t;
    signal cpu0_ddr_ibus_i : cpu_instruction_i_t;
    signal cpu0_ddr_ibus_o : cpu_instruction_o_t;
    signal cpu0_event_i : cpu_event_i_t;
    signal cpu0_event_o : cpu_event_o_t;
    signal cpu0_mem_lock : std_logic;
    signal cpu0_periph_dbus_i : cpu_data_i_t;
    signal cpu0_periph_dbus_o : cpu_data_o_t;
    signal cpu1_data_master_ack : std_logic;
    signal cpu1_data_master_en : std_logic;
    signal cpu1_ddr_dbus_i : cpu_data_i_t;
    signal cpu1_ddr_dbus_o : cpu_data_o_t;
    signal cpu1_ddr_ibus_i : cpu_instruction_i_t;
    signal cpu1_ddr_ibus_o : cpu_instruction_o_t;
    signal cpu1_event_i : cpu_event_i_t;
    signal cpu1_event_o : cpu_event_o_t;
    signal cpu1_mem_lock : std_logic;
    signal cpu1_periph_dbus_i : cpu_data_i_t;
    signal cpu1_periph_dbus_o : cpu_data_o_t;
    signal dcache0_ctrl : cache_ctrl_t;
    signal dcache1_ctrl : cache_ctrl_t;
    signal ddr_burst : std_logic;
    signal ddr_bus_ack_r : std_logic;
    signal ddr_bus_i : cpu_data_i_t;
    signal ddr_bus_o : cpu_data_o_t;
    signal ddr_status : ddr_status_o_t;
    signal debug_i : cpu_debug_i_t;
    signal dma_dbus_o : bus_ddr_o_t;
    signal icache0_ctrl : cache_ctrl_t;
    signal icache1_ctrl : cache_ctrl_t;
begin
    cpus : configuration work.two_cpus_decode_rodimix_fpga
        generic map (
            insert_inst_delay_boot_mem => TRUE,
            insert_read_delay_boot_mem => TRUE,
            insert_write_delay_boot_mem => TRUE
        )
        port map (
            clk => clk_sys,
            cpu0_copro_i => NULL_COPR_I,
            cpu0_copro_o => open,
            cpu0_data_master_ack => cpu0_data_master_ack,
            cpu0_data_master_en => cpu0_data_master_en,
            cpu0_ddr_dbus_i => cpu0_ddr_dbus_i,
            cpu0_ddr_dbus_o => cpu0_ddr_dbus_o,
            cpu0_ddr_ibus_i => cpu0_ddr_ibus_i,
            cpu0_ddr_ibus_o => cpu0_ddr_ibus_o,
            cpu0_event_i => cpu0_event_i,
            cpu0_event_o => cpu0_event_o,
            cpu0_mem_lock => cpu0_mem_lock,
            cpu0_periph_dbus_i => cpu0_periph_dbus_i,
            cpu0_periph_dbus_o => cpu0_periph_dbus_o,
            cpu1_copro_i => NULL_COPR_I,
            cpu1_copro_o => open,
            cpu1_data_master_ack => cpu1_data_master_ack,
            cpu1_data_master_en => cpu1_data_master_en,
            cpu1_ddr_dbus_i => cpu1_ddr_dbus_i,
            cpu1_ddr_dbus_o => cpu1_ddr_dbus_o,
            cpu1_ddr_ibus_i => cpu1_ddr_ibus_i,
            cpu1_ddr_ibus_o => cpu1_ddr_ibus_o,
            cpu1_event_i => cpu1_event_i,
            cpu1_event_o => cpu1_event_o,
            cpu1_mem_lock => cpu1_mem_lock,
            cpu1_periph_dbus_i => cpu1_periph_dbus_i,
            cpu1_periph_dbus_o => cpu1_periph_dbus_o,
            cpu1eni => '0',
            debug_i => debug_i,
            debug_o => open,
            rst => reset
        );
    ddr_ctrl : entity work.ddr_fsm(logic)
        generic map (
            read_sample_tm => freq_to_read_sample_tm(CFG_CLK_MEM_FREQ_HZ)
        )
        port map (
            bst => ddr_burst,
            clk => clk_mem,
            clk_2x => clk_mem_2x,
            clk_90 => clk_mem_90,
            eack => open,
            fix_pinhi => '0',
            fix_pinlo => '0',
            i => ddr_bus_o,
            o_ack_r => ddr_bus_ack_r,
            o_d => ddr_bus_i,
            o_st => ddr_status,
            reset_in => reset,
            s_c => ddr_sd_pre_ctrl,
            s_i => ddr_sd_data_o,
            s_o => ddr_sd_data_i
        );
    ddr_ram_mux : configuration work.ddr_ram_mux_two_cpu_idcache_fpga
        port map (
            cache01sel_ctrl_temp => cache01sel_ctrl_temp,
            clk => clk_sys,
            clk_ddr => clk_mem,
            cpu0_dbus_i => cpu0_ddr_dbus_i,
            cpu0_dbus_o => cpu0_ddr_dbus_o,
            cpu0_ibus_i => cpu0_ddr_ibus_i,
            cpu0_ibus_o => cpu0_ddr_ibus_o,
            cpu0_mem_lock => cpu0_mem_lock,
            cpu1_dbus_i => cpu1_ddr_dbus_i,
            cpu1_dbus_o => cpu1_ddr_dbus_o,
            cpu1_ibus_i => cpu1_ddr_ibus_i,
            cpu1_ibus_o => cpu1_ddr_ibus_o,
            cpu1_mem_lock => cpu1_mem_lock,
            dcache0_ctrl => dcache0_ctrl,
            dcache1_ctrl => dcache1_ctrl,
            ddr_burst => ddr_burst,
            ddr_bus_ack_r => ddr_bus_ack_r,
            ddr_bus_i => ddr_bus_i,
            ddr_bus_o => ddr_bus_o,
            dma_dbus_i => open,
            dma_dbus_o => dma_dbus_o,
            icache0_ctrl => icache0_ctrl,
            icache1_ctrl => icache1_ctrl,
            rst => reset
        );
    devices : entity work.devices(impl)
        port map (
            cache01sel_ctrl_temp => cache01sel_ctrl_temp,
            clk_emac => clk_emac,
            clk_gpsif => clk_gpsif,
            clk_sys => clk_sys,
            cpu0_data_master_ack => cpu0_data_master_ack,
            cpu0_data_master_en => cpu0_data_master_en,
            cpu0_ddr_ibus_o => cpu0_ddr_ibus_o,
            cpu0_event_i => cpu0_event_i,
            cpu0_event_o => cpu0_event_o,
            cpu0_periph_dbus_i => cpu0_periph_dbus_i,
            cpu0_periph_dbus_o => cpu0_periph_dbus_o,
            cpu1_data_master_ack => cpu1_data_master_ack,
            cpu1_data_master_en => cpu1_data_master_en,
            cpu1_ddr_ibus_o => cpu1_ddr_ibus_o,
            cpu1_event_i => cpu1_event_i,
            cpu1_event_o => cpu1_event_o,
            cpu1_periph_dbus_i => cpu1_periph_dbus_i,
            cpu1_periph_dbus_o => cpu1_periph_dbus_o,
            dcache0_ctrl => dcache0_ctrl,
            dcache1_ctrl => dcache1_ctrl,
            ddr_status => ddr_status,
            emac_phy_clk => emac_phy_clk,
            emac_phy_crs_dv => emac_phy_crs_dv,
            emac_phy_rxd => emac_phy_rxd,
            emac_phy_rxerr => emac_phy_rxerr,
            emac_phy_txd => emac_phy_txd,
            emac_phy_txen => emac_phy_txen,
            flash_clk => flash_clk,
            flash_cs => flash_cs,
            flash_miso => flash_miso,
            flash_mosi => flash_mosi,
            gps_clk => gps_clk,
            gps_d => gps_d,
            icache0_ctrl => icache0_ctrl,
            icache1_ctrl => icache1_ctrl,
            phy_rmii_clk => phy_rmii_clk,
            pi => pi,
            po => po,
            reset => reset,
            rtc_nsec => rtc_nsec,
            uart0_rx => uart0_rx,
            uart0_tx => uart0_tx
        );
    -- Zero out unused signals
    debug_i <= (en => '0', cmd => BREAK, ir => (others => '0'), d => (others => '0'), d_en => '0');
    dma_dbus_o <= (en => '0', a => (others => '0'), d => (others => '0'), wr => '0', we => (others => '0'), burst32 => '0', burst16 => '0', bgrp => '0');
end;
