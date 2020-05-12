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
library unisim;
use unisim.vcomponents.all;
entity pad_ring is
    port (
        pin_25mhz : in std_logic;
        pin_atmel_rst : out std_logic;
        pin_atmel_rxd : out std_logic;
        pin_atmel_txd : in std_logic;
        pin_cfg_sel : out std_logic;
        pin_ddr_a0 : out std_logic;
        pin_ddr_a1 : out std_logic;
        pin_ddr_a2 : out std_logic;
        pin_ddr_a3 : out std_logic;
        pin_ddr_a4 : out std_logic;
        pin_ddr_a5 : out std_logic;
        pin_ddr_a6 : out std_logic;
        pin_ddr_a7 : out std_logic;
        pin_ddr_a8 : out std_logic;
        pin_ddr_a9 : out std_logic;
        pin_ddr_a10 : out std_logic;
        pin_ddr_a11 : out std_logic;
        pin_ddr_a12 : out std_logic;
        pin_ddr_a13 : out std_logic;
        pin_ddr_ba0 : out std_logic;
        pin_ddr_ba1 : out std_logic;
        pin_ddr_cas : out std_logic;
        pin_ddr_ck_n : out std_logic;
        pin_ddr_ck_p : out std_logic;
        pin_ddr_cke : out std_logic;
        pin_ddr_dq0 : inout std_logic;
        pin_ddr_dq1 : inout std_logic;
        pin_ddr_dq2 : inout std_logic;
        pin_ddr_dq3 : inout std_logic;
        pin_ddr_dq4 : inout std_logic;
        pin_ddr_dq5 : inout std_logic;
        pin_ddr_dq6 : inout std_logic;
        pin_ddr_dq7 : inout std_logic;
        pin_ddr_dq8 : inout std_logic;
        pin_ddr_dq9 : inout std_logic;
        pin_ddr_dq10 : inout std_logic;
        pin_ddr_dq11 : inout std_logic;
        pin_ddr_dq12 : inout std_logic;
        pin_ddr_dq13 : inout std_logic;
        pin_ddr_dq14 : inout std_logic;
        pin_ddr_dq15 : inout std_logic;
        pin_ddr_ldm : out std_logic;
        pin_ddr_ldqs : inout std_logic;
        pin_ddr_ras : out std_logic;
        pin_ddr_udm : out std_logic;
        pin_ddr_udqs : inout std_logic;
        pin_ddr_we : out std_logic;
        pin_eth_clk : out std_logic;
        pin_eth_crs_dv : in std_logic;
        pin_eth_mdc : out std_logic;
        pin_eth_mdio : out std_logic;
        pin_eth_rst : out std_logic;
        pin_eth_rxd0 : in std_logic;
        pin_eth_rxd1 : in std_logic;
        pin_eth_rxer : in std_logic;
        pin_eth_txd0 : out std_logic;
        pin_eth_txd1 : out std_logic;
        pin_eth_txen : out std_logic;
        pin_flash_miso : in std_logic;
        pin_flash_mosi : out std_logic;
        pin_flash_sclk : out std_logic;
        pin_gpio7 : out std_logic;
        pin_gpio9 : in std_logic;
        pin_gpio10 : in std_logic;
        pin_gpio11 : out std_logic;
        pin_gpio19 : out std_logic;
        pin_gpio22 : in std_logic;
        pin_gpio26 : out std_logic;
        pin_led1 : out std_logic;
        pin_led2 : out std_logic;
        pin_sd_sel : out std_logic
    );
end;
architecture impl of pad_ring is
    attribute loc : string;
    attribute tig : string;
    -- Pin attributes
    attribute loc of pin_25mhz      : signal is "A10";
    attribute loc of pin_atmel_rst  : signal is "J16";
    attribute loc of pin_atmel_rxd  : signal is "H17";
    attribute loc of pin_atmel_txd  : signal is "H18";
    attribute loc of pin_cfg_sel    : signal is "V3";
    attribute loc of pin_ddr_a0     : signal is "J7";
    attribute loc of pin_ddr_a1     : signal is "L4";
    attribute loc of pin_ddr_a2     : signal is "H5";
    attribute loc of pin_ddr_a3     : signal is "P3";
    attribute loc of pin_ddr_a4     : signal is "F3";
    attribute loc of pin_ddr_a5     : signal is "H4";
    attribute loc of pin_ddr_a6     : signal is "H3";
    attribute loc of pin_ddr_a7     : signal is "H6";
    attribute loc of pin_ddr_a8     : signal is "D2";
    attribute loc of pin_ddr_a9     : signal is "G6";
    attribute loc of pin_ddr_a10    : signal is "F4";
    attribute loc of pin_ddr_a11    : signal is "D3";
    attribute loc of pin_ddr_a12    : signal is "D1";
    attribute loc of pin_ddr_a13    : signal is "F6";
    attribute loc of pin_ddr_ba0    : signal is "F2";
    attribute loc of pin_ddr_ba1    : signal is "F1";
    attribute loc of pin_ddr_cas    : signal is "K5";
    attribute loc of pin_ddr_ck_n   : signal is "G1";
    attribute loc of pin_ddr_ck_p   : signal is "G3";
    attribute loc of pin_ddr_cke    : signal is "H7";
    attribute loc of pin_ddr_dq0    : signal is "L2";
    attribute loc of pin_ddr_dq1    : signal is "L1";
    attribute loc of pin_ddr_dq2    : signal is "K2";
    attribute loc of pin_ddr_dq3    : signal is "K1";
    attribute loc of pin_ddr_dq4    : signal is "H2";
    attribute loc of pin_ddr_dq5    : signal is "H1";
    attribute loc of pin_ddr_dq6    : signal is "J3";
    attribute loc of pin_ddr_dq7    : signal is "J1";
    attribute loc of pin_ddr_dq8    : signal is "M3";
    attribute loc of pin_ddr_dq9    : signal is "M1";
    attribute loc of pin_ddr_dq10   : signal is "N2";
    attribute loc of pin_ddr_dq11   : signal is "N1";
    attribute loc of pin_ddr_dq12   : signal is "T2";
    attribute loc of pin_ddr_dq13   : signal is "T1";
    attribute loc of pin_ddr_dq14   : signal is "U2";
    attribute loc of pin_ddr_dq15   : signal is "U1";
    attribute loc of pin_ddr_ldm    : signal is "K3";
    attribute loc of pin_ddr_ldqs   : signal is "J6";
    attribute loc of pin_ddr_ras    : signal is "L3";
    attribute loc of pin_ddr_udm    : signal is "K4";
    attribute loc of pin_ddr_udqs   : signal is "P2";
    attribute loc of pin_ddr_we     : signal is "E3";
    attribute loc of pin_eth_clk    : signal is "F18";
    attribute loc of pin_eth_crs_dv : signal is "F15";
    attribute loc of pin_eth_mdc    : signal is "H14";
    attribute loc of pin_eth_mdio   : signal is "E16";
    attribute loc of pin_eth_rst    : signal is "E18";
    attribute loc of pin_eth_rxd0   : signal is "D17";
    attribute loc of pin_eth_rxd1   : signal is "D18";
    attribute loc of pin_eth_rxer   : signal is "G14";
    attribute loc of pin_eth_txd0   : signal is "G16";
    attribute loc of pin_eth_txd1   : signal is "G18";
    attribute loc of pin_eth_txen   : signal is "F17";
    attribute loc of pin_flash_miso : signal is "R13";
    attribute loc of pin_flash_mosi : signal is "T13";
    attribute loc of pin_flash_sclk : signal is "R15";
    attribute loc of pin_gpio7      : signal is "U8";
    attribute loc of pin_gpio9      : signal is "V9";
    attribute loc of pin_gpio10     : signal is "U10";
    attribute loc of pin_gpio11     : signal is "T9";
    attribute loc of pin_gpio19     : signal is "T4";
    attribute loc of pin_gpio22     : signal is "U11";
    attribute loc of pin_gpio26     : signal is "R5";
    attribute loc of pin_led1       : signal is "A16";
    attribute tig of pin_led1       : signal is "yes";
    attribute loc of pin_led2       : signal is "B16";
    attribute tig of pin_led2       : signal is "yes";
    attribute loc of pin_sd_sel     : signal is "C18";
    signal clk_emac : std_logic;
    signal clk_mem : std_logic;
    signal clk_mem_2x : std_logic;
    signal clk_mem_90 : std_logic;
    signal clk_sys : std_logic;
    signal clk_gpsif : std_logic;
    signal clock_25 : std_logic;
    signal clock_locked0 : std_logic;
    signal clock_locked1 : std_logic;
    signal ddr_clk : std_logic;
    signal ddr_sd_ctrl : sd_ctrl_t;
    signal ddr_sd_data_i : sd_data_i_t;
    signal ddr_sd_data_o : sd_data_o_t;
    signal ddr_sd_pre_ctrl : sd_ctrl_t;
    signal dr_data_i : dr_data_i_t;
    signal dr_data_o : dr_data_o_t;
    signal emac_phy_clk : std_logic;
    signal emac_phy_crs_dv : std_logic;
    signal emac_phy_rxd : std_logic_vector(1 downto 0);
    signal emac_phy_rxerr : std_logic;
    signal emac_phy_txd : std_logic_vector(1 downto 0);
    signal emac_phy_txen : std_logic;
    signal flash_clk : std_logic;
    signal flash_cs : std_logic_vector(1 downto 0);
    signal flash_miso : std_logic;
    signal flash_mosi : std_logic;
    signal gps_clk : std_logic;
    signal gps_d : std_logic_vector(1 downto 0);
    signal phy_rmii_clk : std_logic;
    signal pi : std_logic_vector(31 downto 0);
    signal po : std_logic_vector(31 downto 0);
    signal reset : std_logic;
    signal uart0_rx : std_logic;
    signal uart0_tx : std_logic;
    signal pad_reset_n : std_logic;
    signal rtc_nsec : std_logic_vector(31 downto 0);
begin
    soc : entity work.soc(impl)
        port map (
            clk_emac => clk_emac,
            clk_mem => clk_mem,
            clk_mem_2x => clk_mem_2x,
            clk_mem_90 => clk_mem_90,
            clk_sys => clk_sys,
            clk_gpsif => clk_gpsif,
            ddr_sd_data_i => ddr_sd_data_i,
            ddr_sd_data_o => ddr_sd_data_o,
            ddr_sd_pre_ctrl => ddr_sd_pre_ctrl,
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
            phy_rmii_clk => phy_rmii_clk,
            pi => pi,
            po => po,
            reset => reset,
            rtc_nsec => rtc_nsec,
            uart0_rx => uart0_rx,
            uart0_tx => uart0_tx
        );
    clkin25_clkgen : entity work.clkin25_clkgen(s6_em50)
        generic map (
            clk_cpu_divide => CFG_CLK_CPU_DIVIDE,
            clk_mem_2x_divide => CFG_CLK_MEM_2X_DIVIDE
        )
        port map (
            clk_cpu => clk_sys,
            clk_cpu_0_5x => clk_gpsif,
            clk_fpga_cfg => clk_emac,
            clk_in => clock_25,
            clk_mem => clk_mem,
            clk_mem_2x => clk_mem_2x,
            clk_mem_90 => clk_mem_90,
            lock => clock_locked0,
            rst => '0'
        );
    ddr_iocells : configuration work.ddr_phy_spartan6
        generic map (
            read_sample_tm => freq_to_read_sample_tm(CFG_CLK_MEM_FREQ_HZ)
        )
        port map (
            ck2x0 => clk_mem,
            ck2x90 => clk_mem_90,
            ck_n => open,
            ck_p => ddr_clk,
            d_c => ddr_sd_ctrl,
            d_di => dr_data_i,
            d_do => dr_data_o,
            rst => reset,
            s_c => ddr_sd_pre_ctrl,
            s_i => ddr_sd_data_i,
            s_o => ddr_sd_data_o
        );
    reset_gen : entity work.reset_gen(arch)
        port map (
            clock_locked0 => clock_locked0,
            clock_locked1 => '1',
            reset => reset
        );
    rmii_clk_out : entity work.clock_output(spartan6)
        port map (
            clk => emac_phy_clk,
            q => phy_rmii_clk,
            rst => reset
        );
    -- led
    pi(0) <= po(0);
    -- led
    pi(1) <= po(1);
    pi(2) <= '0';
    pi(3) <= '0';
    pi(4) <= '0';
    pi(5) <= '0';
    pi(6) <= '0';
    pi(7) <= '0';
    pi(8) <= '0';
    pi(9) <= '0';
    pi(10) <= '0';
    pi(11) <= '0';
    pi(12) <= '0';
    pi(13) <= '0';
    pi(14) <= '0';
    pi(15) <= '0';
    pi(16) <= '0';
    pi(17) <= '0';
    pi(18) <= '0';
    pi(19) <= '0';
    pi(20) <= '0';
    pi(21) <= '0';
    pi(22) <= '0';
    pi(23) <= '0';
    pi(24) <= '0';
    pi(25) <= '0';
    pi(26) <= '0';
    pi(27) <= '0';
    pi(28) <= '0';
    pi(29) <= '0';
    pi(30) <= '0';
    pi(31) <= '0';
    pad_reset_n <= not reset;
    clock_25 <= pin_25mhz;
    obuf_atmel_rst : OBUF
        generic map (
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => '1',
            O => pin_atmel_rst
        );
    obuf_atmel_rxd : OBUF
        generic map (
            DRIVE => 8,
            IOSTANDARD => "LVCMOS33",
            SLEW => "fast"
        )
        port map (
            I => uart0_tx,
            O => pin_atmel_rxd
        );
    ibuf_atmel_txd : IBUF
        generic map (
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => pin_atmel_txd,
            O => uart0_rx
        );
    obuf_cfg_sel : OBUF
        generic map (
            DRIVE => 8,
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => flash_cs(1),
            O => pin_cfg_sel
        );
    obuf_ddr_a0 : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.a(0),
            O => pin_ddr_a0
        );
    obuf_ddr_a1 : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.a(1),
            O => pin_ddr_a1
        );
    obuf_ddr_a2 : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.a(2),
            O => pin_ddr_a2
        );
    obuf_ddr_a3 : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.a(3),
            O => pin_ddr_a3
        );
    obuf_ddr_a4 : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.a(4),
            O => pin_ddr_a4
        );
    obuf_ddr_a5 : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.a(5),
            O => pin_ddr_a5
        );
    obuf_ddr_a6 : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.a(6),
            O => pin_ddr_a6
        );
    obuf_ddr_a7 : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.a(7),
            O => pin_ddr_a7
        );
    obuf_ddr_a8 : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.a(8),
            O => pin_ddr_a8
        );
    obuf_ddr_a9 : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.a(9),
            O => pin_ddr_a9
        );
    obuf_ddr_a10 : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.a(10),
            O => pin_ddr_a10
        );
    obuf_ddr_a11 : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.a(11),
            O => pin_ddr_a11
        );
    obuf_ddr_a12 : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.a(12),
            O => pin_ddr_a12
        );
    obuf_ddr_a13 : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.a(13),
            O => pin_ddr_a13
        );
    obuf_ddr_ba0 : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.ba(0),
            O => pin_ddr_ba0
        );
    obuf_ddr_ba1 : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.ba(1),
            O => pin_ddr_ba1
        );
    obuf_ddr_cas : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.cas,
            O => pin_ddr_cas
        );
    obuf_ddr_cke : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.cke,
            O => pin_ddr_cke
        );
    iobuf_ddr_dq0 : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqo(0),
            T => dr_data_o.dq_outen(0),
            O => dr_data_i.dqi(0),
            IO => pin_ddr_dq0
        );
    iobuf_ddr_dq1 : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqo(1),
            T => dr_data_o.dq_outen(1),
            O => dr_data_i.dqi(1),
            IO => pin_ddr_dq1
        );
    iobuf_ddr_dq2 : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqo(2),
            T => dr_data_o.dq_outen(2),
            O => dr_data_i.dqi(2),
            IO => pin_ddr_dq2
        );
    iobuf_ddr_dq3 : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqo(3),
            T => dr_data_o.dq_outen(3),
            O => dr_data_i.dqi(3),
            IO => pin_ddr_dq3
        );
    iobuf_ddr_dq4 : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqo(4),
            T => dr_data_o.dq_outen(4),
            O => dr_data_i.dqi(4),
            IO => pin_ddr_dq4
        );
    iobuf_ddr_dq5 : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqo(5),
            T => dr_data_o.dq_outen(5),
            O => dr_data_i.dqi(5),
            IO => pin_ddr_dq5
        );
    iobuf_ddr_dq6 : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqo(6),
            T => dr_data_o.dq_outen(6),
            O => dr_data_i.dqi(6),
            IO => pin_ddr_dq6
        );
    iobuf_ddr_dq7 : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqo(7),
            T => dr_data_o.dq_outen(7),
            O => dr_data_i.dqi(7),
            IO => pin_ddr_dq7
        );
    iobuf_ddr_dq8 : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqo(8),
            T => dr_data_o.dq_outen(8),
            O => dr_data_i.dqi(8),
            IO => pin_ddr_dq8
        );
    iobuf_ddr_dq9 : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqo(9),
            T => dr_data_o.dq_outen(9),
            O => dr_data_i.dqi(9),
            IO => pin_ddr_dq9
        );
    iobuf_ddr_dq10 : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqo(10),
            T => dr_data_o.dq_outen(10),
            O => dr_data_i.dqi(10),
            IO => pin_ddr_dq10
        );
    iobuf_ddr_dq11 : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqo(11),
            T => dr_data_o.dq_outen(11),
            O => dr_data_i.dqi(11),
            IO => pin_ddr_dq11
        );
    iobuf_ddr_dq12 : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqo(12),
            T => dr_data_o.dq_outen(12),
            O => dr_data_i.dqi(12),
            IO => pin_ddr_dq12
        );
    iobuf_ddr_dq13 : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqo(13),
            T => dr_data_o.dq_outen(13),
            O => dr_data_i.dqi(13),
            IO => pin_ddr_dq13
        );
    iobuf_ddr_dq14 : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqo(14),
            T => dr_data_o.dq_outen(14),
            O => dr_data_i.dqi(14),
            IO => pin_ddr_dq14
        );
    iobuf_ddr_dq15 : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqo(15),
            T => dr_data_o.dq_outen(15),
            O => dr_data_i.dqi(15),
            IO => pin_ddr_dq15
        );
    obuft_ddr_ldm : OBUFT
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dmo(0),
            T => dr_data_o.dq_outen(16),
            O => pin_ddr_ldm
        );
    iobuf_ddr_ldqs : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqso(0),
            T => dr_data_o.dqs_outen(0),
            O => dr_data_i.dqsi(0),
            IO => pin_ddr_ldqs
        );
    obuf_ddr_ras : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.ras,
            O => pin_ddr_ras
        );
    obuft_ddr_udm : OBUFT
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dmo(1),
            T => dr_data_o.dq_outen(17),
            O => pin_ddr_udm
        );
    iobuf_ddr_udqs : IOBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => dr_data_o.dqso(1),
            T => dr_data_o.dqs_outen(1),
            O => dr_data_i.dqsi(1),
            IO => pin_ddr_udqs
        );
    obuf_ddr_we : OBUF
        generic map (
            IOSTANDARD => "MOBILE_DDR"
        )
        port map (
            I => ddr_sd_ctrl.we,
            O => pin_ddr_we
        );
    obuf_eth_clk : OBUF
        generic map (
            DRIVE => 8,
            IOSTANDARD => "LVCMOS33",
            SLEW => "fast"
        )
        port map (
            I => phy_rmii_clk,
            O => pin_eth_clk
        );
    ibuf_eth_crs_dv : IBUF
        generic map (
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => pin_eth_crs_dv,
            O => emac_phy_crs_dv
        );
    obuf_eth_mdc : OBUF
        generic map (
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => '0',
            O => pin_eth_mdc
        );
    obuf_eth_mdio : OBUF
        generic map (
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => '0',
            O => pin_eth_mdio
        );
    obuf_eth_rst : OBUF
        generic map (
            DRIVE => 8,
            IOSTANDARD => "LVCMOS33",
            SLEW => "fast"
        )
        port map (
            I => pad_reset_n,
            O => pin_eth_rst
        );
    ibuf_eth_rxd0 : IBUF
        generic map (
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => pin_eth_rxd0,
            O => emac_phy_rxd(0)
        );
    ibuf_eth_rxd1 : IBUF
        generic map (
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => pin_eth_rxd1,
            O => emac_phy_rxd(1)
        );
    ibuf_eth_rxer : IBUF
        generic map (
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => pin_eth_rxer,
            O => emac_phy_rxerr
        );
    obuf_eth_txd0 : OBUF
        generic map (
            DRIVE => 8,
            IOSTANDARD => "LVCMOS33",
            SLEW => "fast"
        )
        port map (
            I => emac_phy_txd(0),
            O => pin_eth_txd0
        );
    obuf_eth_txd1 : OBUF
        generic map (
            DRIVE => 8,
            IOSTANDARD => "LVCMOS33",
            SLEW => "fast"
        )
        port map (
            I => emac_phy_txd(1),
            O => pin_eth_txd1
        );
    obuf_eth_txen : OBUF
        generic map (
            DRIVE => 8,
            IOSTANDARD => "LVCMOS33",
            SLEW => "fast"
        )
        port map (
            I => emac_phy_txen,
            O => pin_eth_txen
        );
    ibuf_flash_miso : IBUF
        generic map (
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => pin_flash_miso,
            O => flash_miso
        );
    obuf_flash_mosi : OBUF
        generic map (
            DRIVE => 8,
            IOSTANDARD => "LVCMOS33",
            SLEW => "fast"
        )
        port map (
            I => flash_mosi,
            O => pin_flash_mosi
        );
    obuf_flash_sclk : OBUF
        generic map (
            DRIVE => 8,
            IOSTANDARD => "LVCMOS33",
            SLEW => "fast"
        )
        port map (
            I => flash_clk,
            O => pin_flash_sclk
        );
    obuf_gpio7 : OBUF
        generic map (
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => '1',
            O => pin_gpio7
        );
    ibuf_gpio9 : IBUF
        generic map (
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => pin_gpio9,
            O => gps_clk
        );
    ibuf_gpio10 : IBUF
        generic map (
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => pin_gpio10,
            O => gps_d(0)
        );
    obuf_gpio11 : OBUF
        generic map (
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => '1',
            O => pin_gpio11
        );
    obuf_gpio19 : OBUF
        generic map (
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => rtc_nsec(29),
            O => pin_gpio19
        );
    ibuf_gpio22 : IBUF
        generic map (
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => pin_gpio22,
            O => gps_d(1)
        );
    obuf_gpio26 : OBUF
        generic map (
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => rtc_nsec(30),
            O => pin_gpio26
        );
    obuf_led1 : OBUF
        generic map (
            DRIVE => 24,
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => po(0),
            O => pin_led1
        );
    obuf_led2 : OBUF
        generic map (
            DRIVE => 24,
            IOSTANDARD => "LVCMOS33"
        )
        port map (
            I => po(1),
            O => pin_led2
        );
    obuf_sd_sel : OBUF
        generic map (
            DRIVE => 8,
            IOSTANDARD => "LVCMOS33",
            SLEW => "fast"
        )
        port map (
            I => flash_cs(0),
            O => pin_sd_sel
        );
    obufds_ddr_ck_p_ddr_ck_n : OBUFDS
        generic map (
            IOSTANDARD => "DIFF_MOBILE_DDR"
        )
        port map (
            I => ddr_clk,
            O => pin_ddr_ck_p,
            OB => pin_ddr_ck_n
        );
end;
