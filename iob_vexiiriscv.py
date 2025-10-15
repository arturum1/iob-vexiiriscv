# SPDX-FileCopyrightText: 2025 IObundle
#
# SPDX-License-Identifier: MIT

import os
import shutil


def setup(py_params_dict):
    # Each generated cpu verilog module must have a unique name due to different python parameters (can't have two differnet verilog modules with same name).
    assert "name" in py_params_dict, print(
        "Error: Missing name for generated vexiiriscv module."
    )

    params = {
        "reset_addr": 0x00000000,
        "uncached_start_addr": 0x00000000,
        "uncached_size": 2**32,
        "include_cache": True,
    }

    # Update params with values from py_params_dict
    for param in py_params_dict:
        if param in params:
            params[param] = py_params_dict[param]

    attributes_dict = {
        "name": py_params_dict["name"],
        "version": "0.1",
        "generate_hw": True,
        "confs": [
            {
                "name": "AXI_ID_W",
                "descr": "AXI ID bus width",
                "type": "P",
                "val": 0,
                "min": 0,
                "max": 32,
            },
            {
                "name": "AXI_ADDR_W",
                "descr": "AXI address bus width",
                "type": "P",
                "val": 0,
                "min": 0,
                "max": 32,
            },
            {
                "name": "AXI_DATA_W",
                "descr": "AXI data bus width",
                "type": "P",
                "val": 0,
                "min": 0,
                "max": 32,
            },
            {
                "name": "AXI_LEN_W",
                "descr": "AXI burst length width",
                "type": "P",
                "val": 0,
                "min": 0,
                "max": 4,
            },
        ],
        "ports": [
            {
                "name": "clk_en_rst_s",
                "descr": "Clock, clock enable and reset",
                "signals": {"type": "iob_clk"},
            },
            {
                "name": "rst_i",
                "descr": "Synchronous reset",
                "signals": [
                    {
                        "name": "rst_i",
                        "descr": "CPU synchronous reset",
                        "width": "1",
                    },
                ],
            },
            {
                "name": "i_bus_m",
                "descr": "CPU instruction bus",
                "signals": {
                    "type": "axi",
                    "prefix": "ibus_",
                    "ID_W": "AXI_ID_W",
                    "ADDR_W": "AXI_ADDR_W",
                    "DATA_W": "AXI_DATA_W",
                    "LEN_W": "AXI_LEN_W",
                    "LOCK_W": 1,
                },
            },
            {
                "name": "d_bus_m",
                "descr": "CPU data bus",
                "signals": {
                    "type": "axi",
                    "prefix": "dbus_",
                    "ID_W": "AXI_ID_W",
                    "ADDR_W": "AXI_ADDR_W",
                    "DATA_W": "AXI_DATA_W",
                    "LEN_W": "AXI_LEN_W",
                    "LOCK_W": 1,
                },
            },
            {
                "name": "clint_cbus_s",
                "descr": "CLINT CSRs bus",
                "signals": {
                    "type": "iob",
                    "prefix": "clint_",
                    "ADDR_W": 16,
                },
            },
            {
                "name": "plic_cbus_s",
                "descr": "PLIC CSRs bus",
                "signals": {
                    "type": "iob",
                    "prefix": "plic_",
                    "ADDR_W": 22,
                },
            },
            {
                "name": "plic_interrupts_i",
                "descr": "PLIC interrupts",
                "signals": [
                    {
                        "name": "plic_interrupts_i",
                        "descr": "PLIC interrupts",
                        "width": "32",
                    },
                ],
            },
        ],
        "wires": [
            {
                "name": "cpu_reset",
                "descr": "cpu reset signal",
                "signals": [
                    {"name": "cpu_reset", "width": "1"},
                ],
            },
            {
                "name": "clint_cbus_axil",
                "descr": "CLINT CSRs bus",
                "signals": {
                    "type": "axil",
                    "prefix": "clint_",
                    "ADDR_W": 16,
                    "DATA_W": "AXI_DATA_W",
                },
            },
            {
                "name": "plic_cbus_axil",
                "descr": "PLIC CSRs bus",
                "signals": {
                    "type": "axil",
                    "prefix": "plic_",
                    "ADDR_W": 22,
                    "DATA_W": "AXI_DATA_W",
                },
            },
            {
                "name": "unused_signals",
                "signals": [
                    {"name": "ibus_araddr_ignore_bit", "width": "1"},
                    {"name": "ibus_awaddr_ignore_bit", "width": "1"},
                    {"name": "dbus_araddr_ignore_bit", "width": "1"},
                    {"name": "dbus_awaddr_ignore_bit", "width": "1"},
                    {"name": "unused_rdtime", "width": "64"},
                    {"name": "unused_harts_0_int_m_timer", "width": "1"},
                    {"name": "unused_harts_0_int_m_software", "width": "1"},
                    {"name": "unused_harts_0_int_m_external", "width": "1"},
                    {"name": "unused_harts_0_int_s_external", "width": "1"},
                ],
            },
            {
                "name": "cached_i_bus",
                "descr": "CPU instr bus",
                "signals": {
                    "type": "axi",
                    "prefix": "cached_ibus_",
                    "ID_W": "AXI_ID_W",
                    "ADDR_W": "AXI_ADDR_W",
                    "DATA_W": "AXI_DATA_W",
                    "LEN_W": "AXI_LEN_W",
                    "LOCK_W": 1,
                },
            },
            {
                "name": "bypass_i_bus",
                "descr": "CPU instr bus",
                "signals": {
                    "type": "axi",
                    "prefix": "bypass_ibus_",
                    "ID_W": "AXI_ID_W",
                    "ADDR_W": "AXI_ADDR_W",
                    "DATA_W": "AXI_DATA_W",
                    "LEN_W": "AXI_LEN_W",
                    "LOCK_W": 1,
                },
            },
            {
                "name": "cached_d_bus",
                "descr": "CPU data bus",
                "signals": {
                    "type": "axi",
                    "prefix": "cached_dbus_",
                    "ID_W": "AXI_ID_W",
                    "ADDR_W": "AXI_ADDR_W",
                    "DATA_W": "AXI_DATA_W",
                    "LEN_W": "AXI_LEN_W",
                    "LOCK_W": 1,
                },
            },
            {
                "name": "bypass_d_bus",
                "descr": "CPU data bus",
                "signals": {
                    "type": "axi",
                    "prefix": "bypass_dbus_",
                    "ID_W": "AXI_ID_W",
                    "ADDR_W": "AXI_ADDR_W",
                    "DATA_W": "AXI_DATA_W",
                    "LEN_W": "AXI_LEN_W",
                    "LOCK_W": 1,
                },
            },
        ],
        "subblocks": [
            {
                "core_name": "iob_iob2axil",
                "instance_name": "clint_iob2axil",
                "instance_description": "Convert IOb to AXI lite for CLINT",
                "parameters": {
                    "AXIL_ADDR_W": 16,
                    "AXIL_DATA_W": "AXI_DATA_W",
                },
                "connect": {
                    "iob_s": "clint_cbus_s",
                    "axil_m": "clint_cbus_axil",
                },
            },
            {
                "core_name": "iob_iob2axil",
                "instance_name": "plic_iob2axil",
                "instance_description": "Convert IOb to AXI lite for PLIC",
                "parameters": {
                    "AXIL_ADDR_W": 22,
                    "AXIL_DATA_W": "AXI_DATA_W",
                },
                "connect": {
                    "iob_s": "plic_cbus_s",
                    "axil_m": "plic_cbus_axil",
                },
            },
        ],
    }
    cpu_start_snippet = (
        """
   wire [7:0] dbus_axi_arlen_int;
   wire [7:0] dbus_axi_awlen_int;


   // Instantiation of VexiiRiscv, Plic, and Clint
   VexiiRiscvAxi4LinuxPlicClint CPU (
      // CLINT
      .clint_awvalid(clint_axil_awvalid),
      .clint_awready(clint_axil_awready),
      .clint_awaddr(clint_axil_awaddr),
      .clint_awprot(3'd0),
      .clint_wvalid(clint_axil_wvalid),
      .clint_wready(clint_axil_wready),
      .clint_wdata(clint_axil_wdata),
      .clint_wstrb(clint_axil_wstrb),
      .clint_bvalid(clint_axil_bvalid),
      .clint_bready(clint_axil_bready),
      .clint_bresp(clint_axil_bresp),
      .clint_arvalid(clint_axil_arvalid),
      .clint_arready(clint_axil_arready),
      .clint_araddr(clint_axil_araddr),
      .clint_arprot(3'd0),
      .clint_rvalid(clint_axil_rvalid),
      .clint_rready(clint_axil_rready),
      .clint_rdata(clint_axil_rdata),
      .clint_rresp(clint_axil_rresp),
      // PLIC
      .plic_awvalid(plic_axil_awvalid),
      .plic_awready(plic_axil_awready),
      .plic_awaddr(plic_axil_awaddr),
      .plic_awprot(3'd0),
      .plic_wvalid(plic_axil_wvalid),
      .plic_wready(plic_axil_wready),
      .plic_wdata(plic_axil_wdata),
      .plic_wstrb(plic_axil_wstrb),
      .plic_bvalid(plic_axil_bvalid),
      .plic_bready(plic_axil_bready),
      .plic_bresp(plic_axil_bresp),
      .plic_arvalid(plic_axil_arvalid),
      .plic_arready(plic_axil_arready),
      .plic_araddr(plic_axil_araddr),
      .plic_arprot(3'd0),
      .plic_rvalid(plic_axil_rvalid),
      .plic_rready(plic_axil_rready),
      .plic_rdata(plic_axil_rdata),
      .plic_rresp(plic_axil_rresp),
      .plicInterrupts(plic_interrupts_i),
"""
        + f"""
      // Configuration ports
      .externalResetVector(32'h{params["reset_addr"]:x}),
      //.ioStartAddr(32'h{params["uncached_start_addr"]:x}), // Unused if Vexii does not include cache
      //.ioSize(32'h{params["uncached_size"]:x}), // Unused if Vexii does not include cache
"""
    )
    cpu_ibus_port_snippet = """
      // Instruction Bus
      .FetchCachelessAxi4Plugin_logic_bridge_axi_ar_valid(ibus_axi_arvalid_o),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_ar_ready(ibus_axi_arready_i),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_addr(ibus_axi_araddr_o),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_id(ibus_axi_arid_o),
      //.FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_len(ibus_axi_arlen_o), // Not available
      .FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_size(ibus_axi_arsize_o),
      //.FetchCachelessAxi4Plugin_logic_bridge_axi_ar_burst(ibus_axi_arburst_o), // Not available
      //.FetchCachelessAxi4Plugin_logic_bridge_axi_ar_lock(ibus_axi_arlock_o), // Not available
      .FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_cache(ibus_axi_arcache_o),
      //.FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_qos(ibus_axi_arqos_o), // Not available
      .FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_prot(),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_r_valid(ibus_axi_rvalid_i),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_r_ready(ibus_axi_rready_o),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_r_payload_data(ibus_axi_rdata_i),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_r_payload_id(ibus_axi_rid_i),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_r_payload_resp(ibus_axi_rresp_i),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_r_payload_last(ibus_axi_rlast_i),
"""
    cpu_dbus_port_snippet = """
      // Data Bus
      .LsuCachelessAxi4Plugin_logic_axi_aw_valid(dbus_axi_awvalid_o),
      .LsuCachelessAxi4Plugin_logic_axi_aw_ready(dbus_axi_awready_i),
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_addr(dbus_axi_awaddr_o),
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_id(dbus_axi_awid_o),
      //.LsuCachelessAxi4Plugin_logic_axi_aw_payload_len(dbus_axi_awlen_o), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_size(dbus_axi_awsize_o),
      //.LsuCachelessAxi4Plugin_logic_axi_aw_payload_burst(dbus_axi_awburst_o), // Not available
      //.LsuCachelessAxi4Plugin_logic_axi_aw_payload_lock(dbus_axi_awlock_o), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_cache(dbus_axi_awcache_o),
      //.LsuCachelessAxi4Plugin_logic_axi_aw_payload_qos(dbus_axi_awqos_o), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_prot(),
      .LsuCachelessAxi4Plugin_logic_axi_w_valid(dbus_axi_wvalid_o),
      .LsuCachelessAxi4Plugin_logic_axi_w_ready(dbus_axi_wready_i),
      .LsuCachelessAxi4Plugin_logic_axi_w_payload_data(dbus_axi_wdata_o),
      .LsuCachelessAxi4Plugin_logic_axi_w_payload_strb(dbus_axi_wstrb_o),
      .LsuCachelessAxi4Plugin_logic_axi_w_payload_last(dbus_axi_wlast_o),
      .LsuCachelessAxi4Plugin_logic_axi_b_valid(dbus_axi_bvalid_i),
      .LsuCachelessAxi4Plugin_logic_axi_b_ready(dbus_axi_bready_o),
      .LsuCachelessAxi4Plugin_logic_axi_b_payload_id(dbus_axi_bid_i),
      .LsuCachelessAxi4Plugin_logic_axi_b_payload_resp(dbus_axi_bresp_i),
      .LsuCachelessAxi4Plugin_logic_axi_ar_valid(dbus_axi_arvalid_o),
      .LsuCachelessAxi4Plugin_logic_axi_ar_ready(dbus_axi_arready_i),
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_addr(dbus_axi_araddr_o),
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_id(dbus_axi_arid_o),
      //.LsuCachelessAxi4Plugin_logic_axi_ar_payload_len(dbus_axi_arlen_o), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_size(dbus_axi_arsize_o),
      //.LsuCachelessAxi4Plugin_logic_axi_ar_payload_burst(dbus_axi_arburst_o), // Not available
      //.LsuCachelessAxi4Plugin_logic_axi_ar_payload_lock(dbus_axi_arlock_o), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_cache(dbus_axi_arcache_o),
      //.LsuCachelessAxi4Plugin_logic_axi_ar_payload_qos(dbus_axi_arqos_o), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_prot(),
      .LsuCachelessAxi4Plugin_logic_axi_r_valid(dbus_axi_rvalid_i),
      .LsuCachelessAxi4Plugin_logic_axi_r_ready(dbus_axi_rready_o),
      .LsuCachelessAxi4Plugin_logic_axi_r_payload_data(dbus_axi_rdata_i),
      .LsuCachelessAxi4Plugin_logic_axi_r_payload_id(dbus_axi_rid_i),
      .LsuCachelessAxi4Plugin_logic_axi_r_payload_resp(dbus_axi_rresp_i),
      .LsuCachelessAxi4Plugin_logic_axi_r_payload_last(dbus_axi_rlast_i),
"""
    cpu_end_snippet = """
      // Interrupts (TODO: connect them in SpinalHDL to internal plic and clint units)
      .PrivilegedPlugin_logic_rdtime(unused_rdtime),
      .PrivilegedPlugin_logic_harts_0_int_m_timer(unused_harts_0_int_m_timer),
      .PrivilegedPlugin_logic_harts_0_int_m_software(unused_harts_0_int_m_software),
      .PrivilegedPlugin_logic_harts_0_int_m_external(unused_harts_0_int_m_external),
      .PrivilegedPlugin_logic_harts_0_int_s_external(unused_harts_0_int_s_external),
      // Clock and Reset
      .clk(clk_i),
      .reset(cpu_reset)
  );
  """

    assigns_snippet = """
   assign cpu_reset = rst_i | arst_i;

   // Temporary unused interrupt signals
   assign unused_rdtime = 64'b0;
   assign unused_harts_0_int_m_timer = 1'b0;
   assign unused_harts_0_int_m_software = 1'b0;
   assign unused_harts_0_int_m_external = 1'b0;
   assign unused_harts_0_int_s_external = 1'b0;
"""
    ibus_assigns_snippet = """
   // Unused ibus write signals
   assign ibus_axi_awvalid_o = 1'b0;
   assign ibus_axi_awaddr_o = {AXI_ADDR_W{1'b0}};
   assign ibus_axi_awid_o = 1'b0;
   assign ibus_axi_awlen_o = {AXI_LEN_W{1'b0}};
   assign ibus_axi_awsize_o = {3{1'b0}};
   assign ibus_axi_awburst_o = {2{1'b0}};
   assign ibus_axi_awlock_o = 1'b0;
   assign ibus_axi_awcache_o = {4{1'b0}};
   assign ibus_axi_awqos_o = {4{1'b0}};
   assign ibus_axi_wvalid_o = 1'b0;
   assign ibus_axi_wdata_o = {AXI_DATA_W{1'b0}};
   assign ibus_axi_wstrb_o = {AXI_DATA_W / 8{1'b0}};
   assign ibus_axi_wlast_o = 1'b0;
   assign ibus_axi_bready_o = 1'b0;

   // Unused AXI signals
   assign ibus_axi_arlen_o = 1'b0;
   assign ibus_axi_arburst_o = 1'b0;
   assign ibus_axi_arlock_o = 1'b0;
   assign ibus_axi_arqos_o = 4'b0;

"""
    dbus_assigns_snippet = """
   assign dbus_axi_awlen_o = 1'b0;
   assign dbus_axi_awburst_o = 1'b0;
   assign dbus_axi_awlock_o = 1'b0;
   assign dbus_axi_awqos_o = 4'b0;
   assign dbus_axi_arlen_o = 1'b0;
   assign dbus_axi_arburst_o = 1'b0;
   assign dbus_axi_arlock_o = 1'b0;
   assign dbus_axi_arqos_o = 4'b0;
"""

    #
    # Include iob_cache
    #

    # CPU ibus -> axi_split +-> axi2iob --> iob_cache -+-> axi_merge -> memory
    #                       |                          |
    #                       +------> bypass -----------+
    #
    # CPU dbus -> axi_split +-> axi2iob --> iob_cache -+-> axi_merge -> memory
    #                       |                          |
    #                       +------> bypass -----------+
    #
    # The iob_split will split requests based on if the request address being included in the io region.

    if params["include_cache"]:
        attributes_dict["wires"] += [
            {
                "name": "cache_ie",
                "descr": "Cache invalidate and write-trough buffer IO chain",
                "signals": [
                    {"name": "cache_invalidate_i", "width": 1},
                    {"name": "cache_invalidate_o", "width": 1},
                    {"name": "cache_wtb_empty_i", "width": 1},
                    {"name": "cache_wtb_empty_o", "width": 1},
                ],
            },
            # IBus
            {
                "name": "cpu_i_bus_uncached",
                "descr": "CPU instr bus",
                "signals": {
                    "type": "axi",
                    "prefix": "cpu_ibus_uncached_",
                    "ID_W": "AXI_ID_W",
                    "ADDR_W": "AXI_ADDR_W",
                    "DATA_W": "AXI_DATA_W",
                    "LEN_W": "AXI_LEN_W",
                    "LOCK_W": 1,
                },
            },
            {
                "name": "cpu2iob_i_bus",
                "descr": "CPU instr bus",
                "signals": {
                    "type": "axi",
                    "prefix": "cpu2iob_ibus_",
                    "ID_W": "AXI_ID_W",
                    "ADDR_W": "AXI_ADDR_W",
                    "DATA_W": "AXI_DATA_W",
                    "LEN_W": "AXI_LEN_W",
                    "LOCK_W": 1,
                },
            },
            {
                "name": "iob2cache_i_bus",
                "descr": "",
                "signals": {
                    "type": "iob",
                    "prefix": "iob2cache_ibus_",
                    "ADDR_W": "AXI_ADDR_W",
                },
            },
            # Dbus
            {
                "name": "cpu_d_bus_uncached",
                "descr": "CPU data bus",
                "signals": {
                    "type": "axi",
                    "prefix": "cpu_dbus_uncached_",
                    "ID_W": "AXI_ID_W",
                    "ADDR_W": "AXI_ADDR_W",
                    "DATA_W": "AXI_DATA_W",
                    "LEN_W": "AXI_LEN_W",
                    "LOCK_W": 1,
                },
            },
            {
                "name": "cpu2iob_d_bus",
                "descr": "CPU data bus",
                "signals": {
                    "type": "axi",
                    "prefix": "cpu2iob_dbus_",
                    "ID_W": "AXI_ID_W",
                    "ADDR_W": "AXI_ADDR_W",
                    "DATA_W": "AXI_DATA_W",
                    "LEN_W": "AXI_LEN_W",
                    "LOCK_W": 1,
                },
            },
            {
                "name": "iob2cache_d_bus",
                "descr": "",
                "signals": {
                    "type": "iob",
                    "prefix": "iob2cache_dbus_",
                    "ADDR_W": "AXI_ADDR_W",
                },
            },
        ]
        attributes_dict["subblocks"] += [
            # Ibus
            {
                "core_name": "iob_axi_split",
                "name": "iob_vexiiriscv_ibus_axi_split",
                "instance_name": "ibus_axi_split",
                "instance_description": "split",
                "addr_w": 33,  # Each manager has -1 address bit (32 bits each). Subordinate has 33 bits (32 address + 1 selector)
                "lock_w": 1,
                "parameters": {
                    "ID_W": "AXI_ID_W",
                    "LEN_W": "AXI_LEN_W",
                },
                "num_managers": 2,
                "connect": {
                    "clk_en_rst_s": "clk_en_rst_s",
                    "reset_i": "rst_i",
                    "s_s": (
                        "cpu_i_bus_uncached",
                        [
                            "{ibus_inside_io_region_write, cpu_ibus_uncached_axi_awaddr}",
                            "{ibus_inside_io_region_read, cpu_ibus_uncached_axi_araddr}",
                        ],
                    ),
                    "m_0_m": "cpu2iob_i_bus",
                    "m_1_m": "bypass_i_bus",
                },
            },
            {
                "core_name": "iob_axi2iob",
                "instance_name": "ibus_axi2iob_coverter",
                "instance_description": "ibus axi2iob",
                "parameters": {
                    "ADDR_WIDTH": "AXI_ADDR_W",
                    "DATA_WIDTH": "AXI_DATA_W",
                    "AXI_ID_WIDTH": "AXI_ID_W",
                    "AXI_LEN_WIDTH": "AXI_LEN_W",
                },
                "connect": {
                    "clk_en_rst_s": "clk_en_rst_s",
                    "axi_s": "cpu2iob_i_bus",
                    "iob_m": "iob2cache_i_bus",
                },
            },
            {
                "core_name": "iob_cache",
                "instance_name": "ibus_iob_cache",
                "instance_description": "Cache",
                "parameters": {
                    "AXI_ID_W": "AXI_ID_W",
                    "AXI_DATA_W": "AXI_DATA_W",
                    "AXI_LEN_W": "AXI_LEN_W",
                    "FE_ADDR_W": "AXI_ADDR_W",
                    "BE_ADDR_W": "AXI_ADDR_W",
                    "NWAYS_W": "1",  # Number of ways
                    "NLINES_W": "7",  # Cache Line Offset (number of lines)
                    "WORD_OFFSET_W": "3",  # Word Offset (number of words per line)
                    "WTBUF_DEPTH_W": "5",  # FIFO's depth -- 5 minimum for BRAM implementation
                    "USE_CTRL": "0",  # Cache-Control can't be accessed
                    "USE_CTRL_CNT": "0",  # Remove counters
                },
                "connect": {
                    "clk_en_rst_s": "clk_en_rst_s",
                    "iob_s": ("iob2cache_i_bus", ["iob2cache_ibus_iob_addr[31:2]"]),
                    "axi_m": "cached_i_bus",
                    "ie_io": "cache_ie",
                },
            },
            {
                "core_name": "iob_axi_merge",
                "name": "iob_vexiiriscv_ibus_axi_merge",
                "instance_name": "ibus_axi_merge",
                "instance_description": "Merge",
                "addr_w": 33,  # Each subordinate has -1 address bit (32 bits each). Manager has 33 bits (1 ignored).
                "lock_w": 1,
                "parameters": {
                    "ID_W": "AXI_ID_W",
                    "LEN_W": "AXI_LEN_W",
                },
                "num_subordinates": 2,
                "connect": {
                    "clk_en_rst_s": "clk_en_rst_s",
                    "reset_i": "rst_i",
                    "s_0_s": "cached_i_bus",
                    "s_1_s": "bypass_i_bus",
                    "m_m": (
                        "i_bus_m",
                        [
                            # Ignore most significant address bit (we only use 32 bits)
                            "{ibus_araddr_ignore_bit, ibus_axi_araddr_o}",
                            "{ibus_awaddr_ignore_bit, ibus_axi_awaddr_o}",
                        ],
                    ),
                },
            },
            # Dbus
            {
                "core_name": "iob_axi_split",
                "name": "iob_vexiiriscv_dbus_axi_split",
                "instance_name": "dbus_axi_split",
                "instance_description": "split",
                "addr_w": 33,  # Each manager has -1 address bit (32 bits each). Subordinate has 33 bits (32 address + 1 selector)
                "lock_w": 1,
                "parameters": {
                    "ID_W": "AXI_ID_W",
                    "LEN_W": "AXI_LEN_W",
                },
                "num_managers": 2,
                "connect": {
                    "clk_en_rst_s": "clk_en_rst_s",
                    "reset_i": "rst_i",
                    "s_s": (
                        "cpu_d_bus_uncached",
                        [
                            "{inside_io_region_write, cpu_dbus_uncached_axi_awaddr}",
                            "{inside_io_region_read, cpu_dbus_uncached_axi_araddr}",
                        ],
                    ),
                    "m_0_m": "cpu2iob_d_bus",
                    "m_1_m": "bypass_d_bus",
                },
            },
            {
                "core_name": "iob_axi2iob",
                "instance_name": "dbus_axi2iob_coverter",
                "instance_description": "Dbus axi2iob",
                "parameters": {
                    "ADDR_WIDTH": "AXI_ADDR_W",
                    "DATA_WIDTH": "AXI_DATA_W",
                    "AXI_ID_WIDTH": "AXI_ID_W",
                    "AXI_LEN_WIDTH": "AXI_LEN_W",
                },
                "connect": {
                    "clk_en_rst_s": "clk_en_rst_s",
                    "axi_s": "cpu2iob_d_bus",
                    "iob_m": "iob2cache_d_bus",
                },
            },
            {
                "core_name": "iob_cache",
                "instance_name": "dbus_iob_cache",
                "instance_description": "Cache",
                "parameters": {
                    "AXI_ID_W": "AXI_ID_W",
                    "AXI_DATA_W": "AXI_DATA_W",
                    "AXI_LEN_W": "AXI_LEN_W",
                    "FE_ADDR_W": "AXI_ADDR_W",
                    "BE_ADDR_W": "AXI_ADDR_W",
                    "NWAYS_W": "1",  # Number of ways
                    "NLINES_W": "7",  # Cache Line Offset (number of lines)
                    "WORD_OFFSET_W": "3",  # Word Offset (number of words per line)
                    "WTBUF_DEPTH_W": "5",  # FIFO's depth -- 5 minimum for BRAM implementation
                    "USE_CTRL": "0",  # Cache-Control can't be accessed
                    "USE_CTRL_CNT": "0",  # Remove counters
                },
                "connect": {
                    "clk_en_rst_s": "clk_en_rst_s",
                    "iob_s": ("iob2cache_d_bus", ["iob2cache_dbus_iob_addr[31:2]"]),
                    "axi_m": "cached_d_bus",
                    "ie_io": "cache_ie",
                },
            },
            {
                "core_name": "iob_axi_merge",
                "name": "iob_vexiiriscv_dbus_axi_merge",
                "instance_name": "dbus_axi_merge",
                "instance_description": "Merge",
                "addr_w": 33,  # Each subordinate has -1 address bit (32 bits each). Manager has 33 bits (1 ignored).
                "lock_w": 1,
                "parameters": {
                    "ID_W": "AXI_ID_W",
                    "LEN_W": "AXI_LEN_W",
                },
                "num_subordinates": 2,
                "connect": {
                    "clk_en_rst_s": "clk_en_rst_s",
                    "reset_i": "rst_i",
                    "s_0_s": "cached_d_bus",
                    "s_1_s": "bypass_d_bus",
                    "m_m": (
                        "d_bus_m",
                        [
                            # Ignore most significant address bit (we only use 32 bits)
                            "{dbus_araddr_ignore_bit, dbus_axi_araddr_o}",
                            "{dbus_awaddr_ignore_bit, dbus_axi_awaddr_o}",
                        ],
                    ),
                },
            },
        ]
        assigns_snippet += f"""
   assign cache_invalidate_i = 1'b0;
   assign cache_wtb_empty_i = 1'b1;

   wire ibus_inside_io_region_write = cpu_ibus_uncached_axi_awaddr >= 32'h{params["uncached_start_addr"]:x} && cpu_ibus_uncached_axi_awaddr <= 32'h{(params["uncached_start_addr"]+params["uncached_size"]-1):x};
   wire ibus_inside_io_region_read = cpu_ibus_uncached_axi_araddr >= 32'h{params["uncached_start_addr"]:x} && cpu_ibus_uncached_axi_araddr <= 32'h{(params["uncached_start_addr"]+params["uncached_size"]-1):x};

   wire inside_io_region_write = cpu_dbus_uncached_axi_awaddr >= 32'h{params["uncached_start_addr"]:x} && cpu_dbus_uncached_axi_awaddr <= 32'h{(params["uncached_start_addr"]+params["uncached_size"]-1):x};
   wire inside_io_region_read = cpu_dbus_uncached_axi_araddr >= 32'h{params["uncached_start_addr"]:x} && cpu_dbus_uncached_axi_araddr <= 32'h{(params["uncached_start_addr"]+params["uncached_size"]-1):x};
"""
        # Replace connection in dbus port
        cpu_ibus_port_snippet = """
      // Instruction Bus
      .FetchCachelessAxi4Plugin_logic_bridge_axi_ar_valid(cpu_ibus_uncached_axi_arvalid),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_ar_ready(cpu_ibus_uncached_axi_arready),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_addr(cpu_ibus_uncached_axi_araddr),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_id(cpu_ibus_uncached_axi_arid),
      //.FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_len(cpu_ibus_uncached_axi_arlen), // Not available
      .FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_size(cpu_ibus_uncached_axi_arsize),
      //.FetchCachelessAxi4Plugin_logic_bridge_axi_ar_burst(cpu_ibus_uncached_axi_arburst), // Not available
      //.FetchCachelessAxi4Plugin_logic_bridge_axi_ar_lock(cpu_ibus_uncached_axi_arlock), // Not available
      .FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_cache(cpu_ibus_uncached_axi_arcache),
      //.FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_qos(cpu_ibus_uncached_axi_arqos), // Not available
      .FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_prot(),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_r_valid(cpu_ibus_uncached_axi_rvalid),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_r_ready(cpu_ibus_uncached_axi_rready),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_r_payload_data(cpu_ibus_uncached_axi_rdata),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_r_payload_id(cpu_ibus_uncached_axi_rid),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_r_payload_resp(cpu_ibus_uncached_axi_rresp),
      .FetchCachelessAxi4Plugin_logic_bridge_axi_r_payload_last(cpu_ibus_uncached_axi_rlast),
"""
        cpu_dbus_port_snippet = """
      // Data Bus
      .LsuCachelessAxi4Plugin_logic_axi_aw_valid(cpu_dbus_uncached_axi_awvalid),
      .LsuCachelessAxi4Plugin_logic_axi_aw_ready(cpu_dbus_uncached_axi_awready),
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_addr(cpu_dbus_uncached_axi_awaddr),
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_id(cpu_dbus_uncached_axi_awid),
      //.LsuCachelessAxi4Plugin_logic_axi_aw_payload_len(cpu_dbus_uncached_axi_awlen), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_size(cpu_dbus_uncached_axi_awsize),
      //.LsuCachelessAxi4Plugin_logic_axi_aw_payload_burst(cpu_dbus_uncached_axi_awburst), // Not available
      //.LsuCachelessAxi4Plugin_logic_axi_aw_payload_lock(cpu_dbus_uncached_axi_awlock), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_cache(cpu_dbus_uncached_axi_awcache),
      //.LsuCachelessAxi4Plugin_logic_axi_aw_payload_qos(cpu_dbus_uncached_axi_awqos), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_prot(),
      .LsuCachelessAxi4Plugin_logic_axi_w_valid(cpu_dbus_uncached_axi_wvalid),
      .LsuCachelessAxi4Plugin_logic_axi_w_ready(cpu_dbus_uncached_axi_wready),
      .LsuCachelessAxi4Plugin_logic_axi_w_payload_data(cpu_dbus_uncached_axi_wdata),
      .LsuCachelessAxi4Plugin_logic_axi_w_payload_strb(cpu_dbus_uncached_axi_wstrb),
      .LsuCachelessAxi4Plugin_logic_axi_w_payload_last(cpu_dbus_uncached_axi_wlast),
      .LsuCachelessAxi4Plugin_logic_axi_b_valid(cpu_dbus_uncached_axi_bvalid),
      .LsuCachelessAxi4Plugin_logic_axi_b_ready(cpu_dbus_uncached_axi_bready),
      .LsuCachelessAxi4Plugin_logic_axi_b_payload_id(cpu_dbus_uncached_axi_bid),
      .LsuCachelessAxi4Plugin_logic_axi_b_payload_resp(cpu_dbus_uncached_axi_bresp),
      .LsuCachelessAxi4Plugin_logic_axi_ar_valid(cpu_dbus_uncached_axi_arvalid),
      .LsuCachelessAxi4Plugin_logic_axi_ar_ready(cpu_dbus_uncached_axi_arready),
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_addr(cpu_dbus_uncached_axi_araddr),
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_id(cpu_dbus_uncached_axi_arid),
      //.LsuCachelessAxi4Plugin_logic_axi_ar_payload_len(cpu_dbus_uncached_axi_arlen), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_size(cpu_dbus_uncached_axi_arsize),
      //.LsuCachelessAxi4Plugin_logic_axi_ar_payload_burst(cpu_dbus_uncached_axi_arburst), // Not available
      //.LsuCachelessAxi4Plugin_logic_axi_ar_payload_lock(cpu_dbus_uncached_axi_arlock), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_cache(cpu_dbus_uncached_axi_arcache),
      //.LsuCachelessAxi4Plugin_logic_axi_ar_payload_qos(cpu_dbus_uncached_axi_arqos), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_prot(),
      .LsuCachelessAxi4Plugin_logic_axi_r_valid(cpu_dbus_uncached_axi_rvalid),
      .LsuCachelessAxi4Plugin_logic_axi_r_ready(cpu_dbus_uncached_axi_rready),
      .LsuCachelessAxi4Plugin_logic_axi_r_payload_data(cpu_dbus_uncached_axi_rdata),
      .LsuCachelessAxi4Plugin_logic_axi_r_payload_id(cpu_dbus_uncached_axi_rid),
      .LsuCachelessAxi4Plugin_logic_axi_r_payload_resp(cpu_dbus_uncached_axi_rresp),
      .LsuCachelessAxi4Plugin_logic_axi_r_payload_last(cpu_dbus_uncached_axi_rlast),
"""
        ibus_assigns_snippet = """
   // Unused ibus write signals
   assign cpu_ibus_uncached_axi_awvalid = 1'b0;
   assign cpu_ibus_uncached_axi_awaddr = {AXI_ADDR_W{1'b0}};
   assign cpu_ibus_uncached_axi_awid = 1'b0;
   assign cpu_ibus_uncached_axi_awlen = {AXI_LEN_W{1'b0}};
   assign cpu_ibus_uncached_axi_awsize = {3{1'b0}};
   assign cpu_ibus_uncached_axi_awburst = {2{1'b0}};
   assign cpu_ibus_uncached_axi_awlock = 1'b0;
   assign cpu_ibus_uncached_axi_awcache = {4{1'b0}};
   assign cpu_ibus_uncached_axi_awqos = {4{1'b0}};
   assign cpu_ibus_uncached_axi_wvalid = 1'b0;
   assign cpu_ibus_uncached_axi_wdata = {AXI_DATA_W{1'b0}};
   assign cpu_ibus_uncached_axi_wstrb = {AXI_DATA_W / 8{1'b0}};
   assign cpu_ibus_uncached_axi_wlast = 1'b0;
   assign cpu_ibus_uncached_axi_bready = 1'b0;

   // Unused AXI signals
   assign cpu_ibus_uncached_axi_arlen = 1'b0;
   assign cpu_ibus_uncached_axi_arburst = 1'b0;
   assign cpu_ibus_uncached_axi_arlock = 1'b0;
   assign cpu_ibus_uncached_axi_arqos = 4'b0;

"""
        dbus_assigns_snippet = """
   assign cpu_dbus_uncached_axi_awlen = 1'b0;
   assign cpu_dbus_uncached_axi_awburst = 1'b0;
   assign cpu_dbus_uncached_axi_awlock = 1'b0;
   assign cpu_dbus_uncached_axi_awqos = 4'b0;
   assign cpu_dbus_uncached_axi_arlen = 1'b0;
   assign cpu_dbus_uncached_axi_arburst = 1'b0;
   assign cpu_dbus_uncached_axi_arlock = 1'b0;
   assign cpu_dbus_uncached_axi_arqos = 4'b0;
"""
    #
    # Construct snippet
    #

    attributes_dict["snippets"] = [
        {
            "verilog_code": cpu_start_snippet
            + cpu_ibus_port_snippet
            + cpu_dbus_port_snippet
            + cpu_end_snippet
            + assigns_snippet
            + ibus_assigns_snippet
            + dbus_assigns_snippet
        }
    ]

    #
    # Other scripts
    #

    if py_params_dict.get("py2hwsw_target", "") == "setup":
        build_dir = py_params_dict.get("build_dir")
        # Disable linter for `VexiiRiscvAxi4LinuxPlicClint.v` source.
        os.makedirs(f"{build_dir}/hardware/lint/verilator", exist_ok=True)
        with open(f"{build_dir}/hardware/lint/verilator_config.vlt", "a") as file:
            file.write(
                f"""
// Lines generated by {os.path.basename(__file__)}
lint_off -file "**/VexiiRiscvAxi4LinuxPlicClint.v"
"""
            )

    return attributes_dict


# TODO:
"""
        # Copy CPU memory initialization binaries to build directory
        os.makedirs(f"{build_dir}/hardware/simulation", exist_ok=True)
        os.makedirs(f"{build_dir}/hardware/fpga", exist_ok=True)
        mem_bin_dir = f"{os.path.dirname(__file__)}/hardware/init_mems"
        bin_files = os.listdir(mem_bin_dir)
        for file in bin_files:
            # copy binaries to simulation directory
            shutil.copyfile(
                f"{mem_bin_dir}/{file}", f"{build_dir}/hardware/simulation/{file}"
            )
            # symlink binaries in fpga directory as well
            os.symlink(
                f"../simulation/{file}",
                f"{build_dir}/hardware/fpga/{file}",
            )
"""
