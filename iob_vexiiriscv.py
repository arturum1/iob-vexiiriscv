# SPDX-FileCopyrightText: 2025 IObundle
#
# SPDX-License-Identifier: MIT

import os


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

    # CPU ibus --------------------------> i_bus_m port
    #
    # CPU cached dbus ----+-> axi_merge -> d_bus_m port
    #                     |
    #                     |
    # CPU uncached iobus -+

    attributes_dict = {
        "name": py_params_dict["name"],
        "version": "0.1.0",
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
                "descr": "iob-picorv32 instruction bus",
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
                "descr": "iob-picorv32 data bus",
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
                "name": "interrupt_i",
                "descr": "Standard RISC‑V interrupt pending bits",
                "signals": [
                    {"name": "msip_i", "descr": "Machine software interrupt.", "width": "1"},
                    {"name": "mtip_i", "descr": "Machine timer interrupt.", "width": "1"},
                    {"name": "meip_i", "descr": "Machine external interrupt.", "width": "1"},
                    {"name": "seip_i", "descr": "Supervisor external interrupt.", "width": "1"},
                ],
            },
            {
                "name": "timebase_i",
                "descr": "Timebase interface",
                "signals": [
                    {"name": "mtime_i", "descr": "Input from external 64-bit counter for time CSRs", "width": "64"},
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
            # Internal buses
            {
                "name": "cached_d_bus",
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
                "name": "uncached_io_bus",
                "signals": {
                    "type": "axi",
                    "prefix": "iobus_",
                    "ID_W": "AXI_ID_W",
                    "ADDR_W": "AXI_ADDR_W",
                    "DATA_W": "AXI_DATA_W",
                    "LEN_W": "AXI_LEN_W",
                    "LOCK_W": 1,
                },
            },
            {
                "name": "internal_wires",
                "signals": [
                    {"name": "dbus_araddr_ignore_bits", "width": 1},
                    {"name": "dbus_awaddr_ignore_bits", "width": 1},
                ],
            },
        ],
        "subblocks": [
            {
                "core_name": "iob_axi_merge",
                "name": "iob_vexiiriscv_axi_merge",
                "instance_name": "axi_merge",
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
                    "s_1_s": "uncached_io_bus",
                    "m_m": (
                        "d_bus_m",
                        [
                            # Ignore most significant address bits (we only use 32 bits)
                            "{dbus_araddr_ignore_bits, dbus_axi_araddr_o}",
                            "{dbus_awaddr_ignore_bits, dbus_axi_awaddr_o}",
                        ],
                    ),
                },
            },
        ],
        "snippets": [
            {
                "verilog_code": """
    wire [7:0] ibus_axi_arlen_int;
    wire [7:0] cached_dbus_axi_arlen_int;
    wire [7:0] cached_dbus_axi_awlen_int;


  // Instantiation of VexiiRiscv core
  VexiiRiscv CPU (
      // Interrupt sources
      .PrivilegedPlugin_logic_harts_0_int_m_timer(mtip_i),
      .PrivilegedPlugin_logic_harts_0_int_m_software(msip_i),
      .PrivilegedPlugin_logic_harts_0_int_m_external(meip_i),
      .PrivilegedPlugin_logic_harts_0_int_s_external(seip_i),
      // Timbase input
      .PrivilegedPlugin_logic_rdtime(mtime_i),
""" + f"""\
      // CPU reset address
      .resetVector(32'h{params["reset_addr"]:x}),
""" + """\
      // Instruction Bus
      .FetchL1Axi4Plugin_logic_axi_ar_valid(ibus_axi_arvalid_o),
      .FetchL1Axi4Plugin_logic_axi_ar_ready(ibus_axi_arready_i),
      .FetchL1Axi4Plugin_logic_axi_ar_payload_addr(ibus_axi_araddr_o),
      .FetchL1Axi4Plugin_logic_axi_ar_payload_len(ibus_axi_arlen_int),
      .FetchL1Axi4Plugin_logic_axi_ar_payload_size(ibus_axi_arsize_o),
      .FetchL1Axi4Plugin_logic_axi_ar_payload_burst(ibus_axi_arburst_o),
      .FetchL1Axi4Plugin_logic_axi_ar_payload_cache(ibus_axi_arcache_o),
      .FetchL1Axi4Plugin_logic_axi_ar_payload_prot(),
      .FetchL1Axi4Plugin_logic_axi_r_valid(ibus_axi_rvalid_i),
      .FetchL1Axi4Plugin_logic_axi_r_ready(ibus_axi_rready_o),
      .FetchL1Axi4Plugin_logic_axi_r_payload_data(ibus_axi_rdata_i),
      .FetchL1Axi4Plugin_logic_axi_r_payload_resp(ibus_axi_rresp_i),
      .FetchL1Axi4Plugin_logic_axi_r_payload_last(ibus_axi_rlast_i),
      // Cached Data Bus
      .LsuL1Axi4Plugin_logic_axi_aw_valid(cached_dbus_axi_awvalid),
      .LsuL1Axi4Plugin_logic_axi_aw_ready(cached_dbus_axi_awready),
      .LsuL1Axi4Plugin_logic_axi_aw_payload_addr(cached_dbus_axi_awaddr),
      .LsuL1Axi4Plugin_logic_axi_aw_payload_len(cached_dbus_axi_awlen_int),
      .LsuL1Axi4Plugin_logic_axi_aw_payload_size(cached_dbus_axi_awsize),
      .LsuL1Axi4Plugin_logic_axi_aw_payload_burst(cached_dbus_axi_awburst),
      .LsuL1Axi4Plugin_logic_axi_aw_payload_cache(cached_dbus_axi_awcache),
      .LsuL1Axi4Plugin_logic_axi_aw_payload_prot(),
      .LsuL1Axi4Plugin_logic_axi_w_valid(cached_dbus_axi_wvalid),
      .LsuL1Axi4Plugin_logic_axi_w_ready(cached_dbus_axi_wready),
      .LsuL1Axi4Plugin_logic_axi_w_payload_data(cached_dbus_axi_wdata),
      .LsuL1Axi4Plugin_logic_axi_w_payload_strb(cached_dbus_axi_wstrb),
      .LsuL1Axi4Plugin_logic_axi_w_payload_last(cached_dbus_axi_wlast),
      .LsuL1Axi4Plugin_logic_axi_b_valid(cached_dbus_axi_bvalid),
      .LsuL1Axi4Plugin_logic_axi_b_ready(cached_dbus_axi_bready),
      .LsuL1Axi4Plugin_logic_axi_b_payload_resp(cached_dbus_axi_bresp),
      .LsuL1Axi4Plugin_logic_axi_ar_valid(cached_dbus_axi_arvalid),
      .LsuL1Axi4Plugin_logic_axi_ar_ready(cached_dbus_axi_arready),
      .LsuL1Axi4Plugin_logic_axi_ar_payload_addr(cached_dbus_axi_araddr),
      .LsuL1Axi4Plugin_logic_axi_ar_payload_len(cached_dbus_axi_arlen_int),
      .LsuL1Axi4Plugin_logic_axi_ar_payload_size(cached_dbus_axi_arsize),
      .LsuL1Axi4Plugin_logic_axi_ar_payload_burst(cached_dbus_axi_arburst),
      .LsuL1Axi4Plugin_logic_axi_ar_payload_cache(cached_dbus_axi_arcache),
      .LsuL1Axi4Plugin_logic_axi_ar_payload_prot(),
      .LsuL1Axi4Plugin_logic_axi_r_valid(cached_dbus_axi_rvalid),
      .LsuL1Axi4Plugin_logic_axi_r_ready(cached_dbus_axi_rready),
      .LsuL1Axi4Plugin_logic_axi_r_payload_data(cached_dbus_axi_rdata),
      .LsuL1Axi4Plugin_logic_axi_r_payload_resp(cached_dbus_axi_rresp),
      .LsuL1Axi4Plugin_logic_axi_r_payload_last(cached_dbus_axi_rlast),
      // Uncached IO Bus
      .LsuCachelessAxi4Plugin_logic_axi_aw_valid(iobus_axi_awvalid),
      .LsuCachelessAxi4Plugin_logic_axi_aw_ready(iobus_axi_awready),
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_addr(iobus_axi_awaddr),
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_size(iobus_axi_awsize),
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_cache(iobus_axi_awcache),
      .LsuCachelessAxi4Plugin_logic_axi_aw_payload_prot(),
      .LsuCachelessAxi4Plugin_logic_axi_w_valid(iobus_axi_wvalid),
      .LsuCachelessAxi4Plugin_logic_axi_w_ready(iobus_axi_wready),
      .LsuCachelessAxi4Plugin_logic_axi_w_payload_data(iobus_axi_wdata),
      .LsuCachelessAxi4Plugin_logic_axi_w_payload_strb(iobus_axi_wstrb),
      .LsuCachelessAxi4Plugin_logic_axi_w_payload_last(iobus_axi_wlast),
      .LsuCachelessAxi4Plugin_logic_axi_b_valid(iobus_axi_bvalid),
      .LsuCachelessAxi4Plugin_logic_axi_b_ready(iobus_axi_bready),
      .LsuCachelessAxi4Plugin_logic_axi_b_payload_resp(iobus_axi_bresp),
      .LsuCachelessAxi4Plugin_logic_axi_ar_valid(iobus_axi_arvalid),
      .LsuCachelessAxi4Plugin_logic_axi_ar_ready(iobus_axi_arready),
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_addr(iobus_axi_araddr),
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_size(iobus_axi_arsize),
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_cache(iobus_axi_arcache),
      .LsuCachelessAxi4Plugin_logic_axi_ar_payload_prot(),
      .LsuCachelessAxi4Plugin_logic_axi_r_valid(iobus_axi_rvalid),
      .LsuCachelessAxi4Plugin_logic_axi_r_ready(iobus_axi_rready),
      .LsuCachelessAxi4Plugin_logic_axi_r_payload_data(iobus_axi_rdata),
      .LsuCachelessAxi4Plugin_logic_axi_r_payload_resp(iobus_axi_rresp),
      .LsuCachelessAxi4Plugin_logic_axi_r_payload_last(iobus_axi_rlast),
      // Clock and Reset
      .clk(clk_i),
      .reset(cpu_reset)
  );



   assign cpu_reset = rst_i | arst_i;

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

   // Unused signals ibus
   assign ibus_axi_arid_o = 1'b0;
   assign ibus_axi_arlock_o = 1'b0;
   assign ibus_axi_arqos_o = 1'b0;
   // ibus_axi_rid

   // Unused signals (cached) dbus
   assign cached_dbus_axi_awid = 1'b0;
   assign cached_dbus_axi_awlock = 1'b0;
   assign cached_dbus_axi_awqos = {4{1'b0}};
   assign cached_dbus_axi_arid = 1'b0;
   assign cached_dbus_axi_arlock = 1'b0;
   assign cached_dbus_axi_arqos = {4{1'b0}};
   // cached_dbus_axi_bid
   // cached_dbus_axi_rid

   // Unused signals iobus
   assign iobus_axi_awid = 1'b0;
   assign iobus_axi_awlock = 1'b0;
   assign iobus_axi_awqos = {4{1'b0}};
   assign iobus_axi_arid = 1'b0;
   assign iobus_axi_arlock = 1'b0;
   assign iobus_axi_arqos = {4{1'b0}};
   assign iobus_axi_awburst = {2{1'b0}};
   assign iobus_axi_arburst = {2{1'b0}};
   assign iobus_axi_arlen = {AXI_LEN_W{1'b0}};
   assign iobus_axi_awlen = {AXI_LEN_W{1'b0}};
   // iobus_axi_bid
   // iobus_axi_rid


   generate
      if (AXI_LEN_W < 8) begin : gen_if_less_than_8
         assign ibus_axi_arlen_o = ibus_axi_arlen_int[AXI_LEN_W-1:0];
         assign cached_dbus_axi_arlen = cached_dbus_axi_arlen_int[AXI_LEN_W-1:0];
         assign cached_dbus_axi_awlen = cached_dbus_axi_awlen_int[AXI_LEN_W-1:0];
      end else begin : gen_if_equal_8
         assign ibus_axi_arlen_o = ibus_axi_arlen_int;
         assign cached_dbus_axi_arlen = cached_dbus_axi_arlen_int;
         assign cached_dbus_axi_awlen = cached_dbus_axi_awlen_int;
      end
   endgenerate
"""
            }
        ],
    }

    # Disable linter for `VexiiRiscv.v` source.
    if py_params_dict.get("py2hwsw_target", "") == "setup":
        build_dir = py_params_dict.get("build_dir")
        os.makedirs(f"{build_dir}/hardware/lint/verilator", exist_ok=True)
        with open(f"{build_dir}/hardware/lint/verilator_config.vlt", "a") as file:
            file.write(
                f"""
// Lines generated by {os.path.basename(__file__)}
lint_off -file "*/VexiiRiscv.v"
"""
            )

    return attributes_dict
