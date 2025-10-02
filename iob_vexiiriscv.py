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
                "name": "cached_dbus",
                "descr": "Internal cached data bus",
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
                "name": "uncached_dbus",
                "descr": "Internal uncached data bus",
                "signals": {
                    "type": "axi",
                    "prefix": "uncached_dbus_",
                    "ID_W": "AXI_ID_W",
                    "ADDR_W": "AXI_ADDR_W",
                    "DATA_W": "AXI_DATA_W",
                    "LEN_W": "AXI_LEN_W",
                    "LOCK_W": 1,
                },
            },
            {
                "name": "unused_signals",
                "signals": [
                    {"name": "dbus_araddr_ignore_bit", "width": "1"},
                    {"name": "dbus_awaddr_ignore_bit", "width": "1"},
                    {"name": "unused_rdtime", "width": "64"},
                    {"name": "unused_harts_0_int_m_timer", "width": "1"},
                    {"name": "unused_harts_0_int_m_software", "width": "1"},
                    {"name": "unused_harts_0_int_m_external", "width": "1"},
                    {"name": "unused_harts_0_int_s_external", "width": "1"},
                ],
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
            {
                "core_name": "iob_axi_merge",
                "name": "iob_vexiiriscv_dbus_axi_merge",
                "instance_name": "dbus_axi_merge",
                "instance_description": "Merge internal data and peripheral buses into a single data bus",
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
                    "s_0_s": "cached_dbus",
                    "s_1_s": "uncached_dbus",
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
        ],
        "snippets": [
            {
                "verilog_code": """
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
      //.ioStartAddr(32'h{params["uncached_start_addr"]:x}),
      //.ioSize(32'h{params["uncached_size"]:x}),
"""
                + """

      // Instruction Bus
      .FetchL1Axi4Plugin_logic_axi_ar_valid(ibus_axi_arvalid_o),
      .FetchL1Axi4Plugin_logic_axi_ar_ready(ibus_axi_arready_i),
      .FetchL1Axi4Plugin_logic_axi_ar_payload_addr(ibus_axi_araddr_o),
      //.FetchL1Axi4Plugin_logic_axi_ar_payload_id(ibus_axi_arid_o), // Not available
      .FetchL1Axi4Plugin_logic_axi_ar_payload_len(ibus_axi_arlen_o),
      .FetchL1Axi4Plugin_logic_axi_ar_payload_size(ibus_axi_arsize_o),
      .FetchL1Axi4Plugin_logic_axi_ar_payload_burst(ibus_axi_arburst_o),
      //.FetchL1Axi4Plugin_logic_axi_ar_payload_lock(ibus_axi_arlock_o), // Not available
      .FetchL1Axi4Plugin_logic_axi_ar_payload_cache(ibus_axi_arcache_o),
      //.FetchL1Axi4Plugin_logic_axi_ar_payload_qos(ibus_axi_arqos_o), // Not available
      .FetchL1Axi4Plugin_logic_axi_ar_payload_prot(),
      .FetchL1Axi4Plugin_logic_axi_r_valid(ibus_axi_rvalid_i),
      .FetchL1Axi4Plugin_logic_axi_r_ready(ibus_axi_rready_o),
      .FetchL1Axi4Plugin_logic_axi_r_payload_data(ibus_axi_rdata_i),
      //.FetchL1Axi4Plugin_logic_axi_r_payload_id(ibus_axi_rid_i), // Not available
      .FetchL1Axi4Plugin_logic_axi_r_payload_resp(ibus_axi_rresp_i),
      .FetchL1Axi4Plugin_logic_axi_r_payload_last(ibus_axi_rlast_i),

      // (cached) Data Bus
      .LsuL1Axi4Plugin_logic_axi_aw_valid(cached_dbus_axi_awvalid),
      .LsuL1Axi4Plugin_logic_axi_aw_ready(cached_dbus_axi_awready),
      .LsuL1Axi4Plugin_logic_axi_aw_payload_addr(cached_dbus_axi_awaddr),
      //.LsuL1Axi4Plugin_logic_axi_aw_payload_id(cached_dbus_axi_awid), // Not available
      .LsuL1Axi4Plugin_logic_axi_aw_payload_len(cached_dbus_axi_awlen),
      .LsuL1Axi4Plugin_logic_axi_aw_payload_size(cached_dbus_axi_awsize),
      .LsuL1Axi4Plugin_logic_axi_aw_payload_burst(cached_dbus_axi_awburst),
      //.LsuL1Axi4Plugin_logic_axi_aw_payload_lock(cached_dbus_axi_awlock), // Not available
      .LsuL1Axi4Plugin_logic_axi_aw_payload_cache(cached_dbus_axi_awcache),
      //.LsuL1Axi4Plugin_logic_axi_aw_payload_qos(cached_dbus_axi_awqos), // Not available
      .LsuL1Axi4Plugin_logic_axi_aw_payload_prot(),
      .LsuL1Axi4Plugin_logic_axi_w_valid(cached_dbus_axi_wvalid),
      .LsuL1Axi4Plugin_logic_axi_w_ready(cached_dbus_axi_wready),
      .LsuL1Axi4Plugin_logic_axi_w_payload_data(cached_dbus_axi_wdata),
      .LsuL1Axi4Plugin_logic_axi_w_payload_strb(cached_dbus_axi_wstrb),
      .LsuL1Axi4Plugin_logic_axi_w_payload_last(cached_dbus_axi_wlast),
      .LsuL1Axi4Plugin_logic_axi_b_valid(cached_dbus_axi_bvalid),
      .LsuL1Axi4Plugin_logic_axi_b_ready(cached_dbus_axi_bready),
      //.LsuL1Axi4Plugin_logic_axi_b_payload_id(cached_dbus_axi_bid), // Not available
      .LsuL1Axi4Plugin_logic_axi_b_payload_resp(cached_dbus_axi_bresp),
      .LsuL1Axi4Plugin_logic_axi_ar_valid(cached_dbus_axi_arvalid),
      .LsuL1Axi4Plugin_logic_axi_ar_ready(cached_dbus_axi_arready),
      .LsuL1Axi4Plugin_logic_axi_ar_payload_addr(cached_dbus_axi_araddr),
      //.LsuL1Axi4Plugin_logic_axi_ar_payload_id(cached_dbus_axi_arid), // Not available
      .LsuL1Axi4Plugin_logic_axi_ar_payload_len(cached_dbus_axi_arlen),
      .LsuL1Axi4Plugin_logic_axi_ar_payload_size(cached_dbus_axi_arsize),
      .LsuL1Axi4Plugin_logic_axi_ar_payload_burst(cached_dbus_axi_arburst),
      //.LsuL1Axi4Plugin_logic_axi_ar_payload_lock(cached_dbus_axi_arlock), // Not available
      .LsuL1Axi4Plugin_logic_axi_ar_payload_cache(cached_dbus_axi_arcache),
      //.LsuL1Axi4Plugin_logic_axi_ar_payload_qos(cached_dbus_axi_arqos), // Not available
      .LsuL1Axi4Plugin_logic_axi_ar_payload_prot(),
      .LsuL1Axi4Plugin_logic_axi_r_valid(cached_dbus_axi_rvalid),
      .LsuL1Axi4Plugin_logic_axi_r_ready(cached_dbus_axi_rready),
      .LsuL1Axi4Plugin_logic_axi_r_payload_data(cached_dbus_axi_rdata),
      //.LsuL1Axi4Plugin_logic_axi_r_payload_id(cached_dbus_axi_rid), // Not available
      .LsuL1Axi4Plugin_logic_axi_r_payload_resp(cached_dbus_axi_rresp),
      .LsuL1Axi4Plugin_logic_axi_r_payload_last(cached_dbus_axi_rlast),

      // (uncached) Peripheral Bus
      .LsuCachelessAxi4Plugin_logic_axi_aw_valid(uncached_dbus_axi_awvalid),
      .LsuCachelessAxi4Plugin_logic_axi_aw_ready(uncached_dbus_axi_awready),
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_addr(uncached_dbus_axi_awaddr),
      //.LsuCachelessAxi4Plugin_logic_axi_aw_payload_id(uncached_dbus_axi_awid), // Not available
      //.LsuCachelessAxi4Plugin_logic_axi_aw_payload_len(uncached_dbus_axi_awlen), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_size(uncached_dbus_axi_awsize),
      //.LsuCachelessAxi4Plugin_logic_axi_aw_payload_burst(uncached_dbus_axi_awburst), // Not available
      //.LsuCachelessAxi4Plugin_logic_axi_aw_payload_lock(uncached_dbus_axi_awlock), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_cache(uncached_dbus_axi_awcache),
      //.LsuCachelessAxi4Plugin_logic_axi_aw_payload_qos(uncached_dbus_axi_awqos), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_prot(),
      .LsuCachelessAxi4Plugin_logic_axi_w_valid(uncached_dbus_axi_wvalid),
      .LsuCachelessAxi4Plugin_logic_axi_w_ready(uncached_dbus_axi_wready),
      .LsuCachelessAxi4Plugin_logic_axi_w_payload_data(uncached_dbus_axi_wdata),
      .LsuCachelessAxi4Plugin_logic_axi_w_payload_strb(uncached_dbus_axi_wstrb),
      .LsuCachelessAxi4Plugin_logic_axi_w_payload_last(uncached_dbus_axi_wlast),
      .LsuCachelessAxi4Plugin_logic_axi_b_valid(uncached_dbus_axi_bvalid),
      .LsuCachelessAxi4Plugin_logic_axi_b_ready(uncached_dbus_axi_bready),
      //.LsuCachelessAxi4Plugin_logic_axi_b_payload_id(uncached_dbus_axi_bid), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_b_payload_resp(uncached_dbus_axi_bresp),
      .LsuCachelessAxi4Plugin_logic_axi_ar_valid(uncached_dbus_axi_arvalid),
      .LsuCachelessAxi4Plugin_logic_axi_ar_ready(uncached_dbus_axi_arready),
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_addr(uncached_dbus_axi_araddr),
      //.LsuCachelessAxi4Plugin_logic_axi_ar_payload_id(uncached_dbus_axi_arid), // Not available
      //.LsuCachelessAxi4Plugin_logic_axi_ar_payload_len(uncached_dbus_axi_arlen), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_size(uncached_dbus_axi_arsize),
      //.LsuCachelessAxi4Plugin_logic_axi_ar_payload_burst(uncached_dbus_axi_arburst), // Not available
      //.LsuCachelessAxi4Plugin_logic_axi_ar_payload_lock(uncached_dbus_axi_arlock), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_cache(uncached_dbus_axi_arcache),
      //.LsuCachelessAxi4Plugin_logic_axi_ar_payload_qos(uncached_dbus_axi_arqos), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_prot(),
      .LsuCachelessAxi4Plugin_logic_axi_r_valid(uncached_dbus_axi_rvalid),
      .LsuCachelessAxi4Plugin_logic_axi_r_ready(uncached_dbus_axi_rready),
      .LsuCachelessAxi4Plugin_logic_axi_r_payload_data(uncached_dbus_axi_rdata),
      //.LsuCachelessAxi4Plugin_logic_axi_r_payload_id(uncached_dbus_axi_rid), // Not available
      .LsuCachelessAxi4Plugin_logic_axi_r_payload_resp(uncached_dbus_axi_rresp),
      .LsuCachelessAxi4Plugin_logic_axi_r_payload_last(uncached_dbus_axi_rlast),

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



   assign cpu_reset = rst_i | arst_i;

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
   assign ibus_axi_arid_o = 1'b0;
   assign ibus_axi_arlock_o = 1'b0;
   assign ibus_axi_arqos_o = 4'b0;
   // ibus_axi_rid_i

   assign cached_dbus_axi_awid = 1'b0;
   assign cached_dbus_axi_awlock = 1'b0;
   assign cached_dbus_axi_awqos = 4'b0;
   // cached_dbus_axi_bid
   assign cached_dbus_axi_arid = 1'b0;
   assign cached_dbus_axi_arlock = 1'b0;
   assign cached_dbus_axi_arqos = 4'b0;
   // cached_dbus_axi_rid

   assign uncached_dbus_axi_awid = 1'b0;
   assign uncached_dbus_axi_awlen = 1'b0;
   assign uncached_dbus_axi_awburst = 1'b0;
   assign uncached_dbus_axi_awlock = 1'b0;
   assign uncached_dbus_axi_awqos = 4'b0;
   // uncached_dbus_axi_bid
   assign uncached_dbus_axi_arid = 1'b0;
   assign uncached_dbus_axi_arlen = 1'b0;
   assign uncached_dbus_axi_arburst = 1'b0;
   assign uncached_dbus_axi_arlock = 1'b0;
   assign uncached_dbus_axi_arqos = 4'b0;
   // uncached_dbus_axi_rid

   // Temporary unused interrupt signals
   assign unused_rdtime = 64'b0;
   assign unused_harts_0_int_m_timer = 1'b0;
   assign unused_harts_0_int_m_software = 1'b0;
   assign unused_harts_0_int_m_external = 1'b0;
   assign unused_harts_0_int_s_external = 1'b0;

"""
            }
        ],
    }

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

    return attributes_dict
