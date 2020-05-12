$(VHDLS) += cpus.vhd
$(VHDLS) += cpu_core.vhd
$(VHDLS) += cpu_core_pkg.vhd
$(VHDLS) += data_bus_pkg.vhd
$(VHDLS) += reset.vhd
$(VHDLS) += ddr_ram_mux/ddr_ram_mux.vhd
$(VHDLS) += cpu_rom.vhd
$(VHDLS) += cpumreg.vhd
$(VHDLS) += clk_config.vhd
$(VHDLS) +=   byte_bus/aic2_slave_process.vhd
#$(VHDLS) +=   byte_bus/dma_db_slave_process.vhd
#$(VHDLS) +=   byte_bus/icache_modereg_wsbu_slave_process.vhd
$(VHDLS) +=   byte_bus/aic_slave_process.vhd
$(VHDLS) +=   byte_bus/icache_modereg_slave_process.vhd
