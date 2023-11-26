	component soc_system is
		port (
			clk_clk                 : in    std_logic                     := 'X';             -- clk
			hps_0_h2f_reset_reset_n : out   std_logic;                                        -- reset_n
			memory_mem_a            : out   std_logic_vector(14 downto 0);                    -- mem_a
			memory_mem_ba           : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck           : out   std_logic;                                        -- mem_ck
			memory_mem_ck_n         : out   std_logic;                                        -- mem_ck_n
			memory_mem_cke          : out   std_logic;                                        -- mem_cke
			memory_mem_cs_n         : out   std_logic;                                        -- mem_cs_n
			memory_mem_ras_n        : out   std_logic;                                        -- mem_ras_n
			memory_mem_cas_n        : out   std_logic;                                        -- mem_cas_n
			memory_mem_we_n         : out   std_logic;                                        -- mem_we_n
			memory_mem_reset_n      : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq           : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			memory_mem_dqs          : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n        : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			memory_mem_odt          : out   std_logic;                                        -- mem_odt
			memory_mem_dm           : out   std_logic_vector(3 downto 0);                     -- mem_dm
			memory_oct_rzqin        : in    std_logic                     := 'X';             -- oct_rzqin
			reset_reset_n           : in    std_logic                     := 'X';             -- reset_n
			sdram_address           : in    std_logic_vector(21 downto 0) := (others => 'X'); -- address
			sdram_byte_enable       : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- byte_enable
			sdram_read              : in    std_logic                     := 'X';             -- read
			sdram_write             : in    std_logic                     := 'X';             -- write
			sdram_write_data        : in    std_logic_vector(31 downto 0) := (others => 'X'); -- write_data
			sdram_acknowledge       : out   std_logic;                                        -- acknowledge
			sdram_read_data         : out   std_logic_vector(31 downto 0);                    -- read_data
			uart_RXD                : in    std_logic                     := 'X';             -- RXD
			uart_TXD                : out   std_logic;                                        -- TXD
			uart_in_data            : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- data
			uart_in_error           : in    std_logic                     := 'X';             -- error
			uart_in_valid           : in    std_logic                     := 'X';             -- valid
			uart_in_ready           : out   std_logic;                                        -- ready
			uart_out_ready          : in    std_logic                     := 'X';             -- ready
			uart_out_data           : out   std_logic_vector(7 downto 0);                     -- data
			uart_out_error          : out   std_logic;                                        -- error
			uart_out_valid          : out   std_logic                                         -- valid
		);
	end component soc_system;

	u0 : component soc_system
		port map (
			clk_clk                 => CONNECTED_TO_clk_clk,                 --             clk.clk
			hps_0_h2f_reset_reset_n => CONNECTED_TO_hps_0_h2f_reset_reset_n, -- hps_0_h2f_reset.reset_n
			memory_mem_a            => CONNECTED_TO_memory_mem_a,            --          memory.mem_a
			memory_mem_ba           => CONNECTED_TO_memory_mem_ba,           --                .mem_ba
			memory_mem_ck           => CONNECTED_TO_memory_mem_ck,           --                .mem_ck
			memory_mem_ck_n         => CONNECTED_TO_memory_mem_ck_n,         --                .mem_ck_n
			memory_mem_cke          => CONNECTED_TO_memory_mem_cke,          --                .mem_cke
			memory_mem_cs_n         => CONNECTED_TO_memory_mem_cs_n,         --                .mem_cs_n
			memory_mem_ras_n        => CONNECTED_TO_memory_mem_ras_n,        --                .mem_ras_n
			memory_mem_cas_n        => CONNECTED_TO_memory_mem_cas_n,        --                .mem_cas_n
			memory_mem_we_n         => CONNECTED_TO_memory_mem_we_n,         --                .mem_we_n
			memory_mem_reset_n      => CONNECTED_TO_memory_mem_reset_n,      --                .mem_reset_n
			memory_mem_dq           => CONNECTED_TO_memory_mem_dq,           --                .mem_dq
			memory_mem_dqs          => CONNECTED_TO_memory_mem_dqs,          --                .mem_dqs
			memory_mem_dqs_n        => CONNECTED_TO_memory_mem_dqs_n,        --                .mem_dqs_n
			memory_mem_odt          => CONNECTED_TO_memory_mem_odt,          --                .mem_odt
			memory_mem_dm           => CONNECTED_TO_memory_mem_dm,           --                .mem_dm
			memory_oct_rzqin        => CONNECTED_TO_memory_oct_rzqin,        --                .oct_rzqin
			reset_reset_n           => CONNECTED_TO_reset_reset_n,           --           reset.reset_n
			sdram_address           => CONNECTED_TO_sdram_address,           --           sdram.address
			sdram_byte_enable       => CONNECTED_TO_sdram_byte_enable,       --                .byte_enable
			sdram_read              => CONNECTED_TO_sdram_read,              --                .read
			sdram_write             => CONNECTED_TO_sdram_write,             --                .write
			sdram_write_data        => CONNECTED_TO_sdram_write_data,        --                .write_data
			sdram_acknowledge       => CONNECTED_TO_sdram_acknowledge,       --                .acknowledge
			sdram_read_data         => CONNECTED_TO_sdram_read_data,         --                .read_data
			uart_RXD                => CONNECTED_TO_uart_RXD,                --            uart.RXD
			uart_TXD                => CONNECTED_TO_uart_TXD,                --                .TXD
			uart_in_data            => CONNECTED_TO_uart_in_data,            --         uart_in.data
			uart_in_error           => CONNECTED_TO_uart_in_error,           --                .error
			uart_in_valid           => CONNECTED_TO_uart_in_valid,           --                .valid
			uart_in_ready           => CONNECTED_TO_uart_in_ready,           --                .ready
			uart_out_ready          => CONNECTED_TO_uart_out_ready,          --        uart_out.ready
			uart_out_data           => CONNECTED_TO_uart_out_data,           --                .data
			uart_out_error          => CONNECTED_TO_uart_out_error,          --                .error
			uart_out_valid          => CONNECTED_TO_uart_out_valid           --                .valid
		);

