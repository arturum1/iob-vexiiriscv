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
  VexiiRiscv #(
""" + f"""\
      .IO_REGION_BASE (32'h{params["uncached_start_addr"]:x}),
      .IO_REGION_SIZE (32'h{params["uncached_size"]:x})
""" + """\
  ) CPU (
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
      .iBusAxi_arvalid(ibus_axi_arvalid_o),
      .iBusAxi_arready(ibus_axi_arready_i),
      .iBusAxi_araddr(ibus_axi_araddr_o),
      .iBusAxi_arlen(ibus_axi_arlen_int),
      .iBusAxi_arsize(ibus_axi_arsize_o),
      .iBusAxi_arburst(ibus_axi_arburst_o),
      .iBusAxi_arcache(ibus_axi_arcache_o),
      .iBusAxi_arprot(),
      .iBusAxi_rvalid(ibus_axi_rvalid_i),
      .iBusAxi_rready(ibus_axi_rready_o),
      .iBusAxi_rdata(ibus_axi_rdata_i),
      .iBusAxi_rresp(ibus_axi_rresp_i),
      .iBusAxi_rlast(ibus_axi_rlast_i),
      // Cached Data Bus
      .dBusAxi_awvalid(cached_dbus_axi_awvalid),
      .dBusAxi_awready(cached_dbus_axi_awready),
      .dBusAxi_awaddr(cached_dbus_axi_awaddr),
      .dBusAxi_awlen(cached_dbus_axi_awlen_int),
      .dBusAxi_awsize(cached_dbus_axi_awsize),
      .dBusAxi_awburst(cached_dbus_axi_awburst),
      .dBusAxi_awcache(cached_dbus_axi_awcache),
      .dBusAxi_awprot(),
      .dBusAxi_wvalid(cached_dbus_axi_wvalid),
      .dBusAxi_wready(cached_dbus_axi_wready),
      .dBusAxi_wdata(cached_dbus_axi_wdata),
      .dBusAxi_wstrb(cached_dbus_axi_wstrb),
      .dBusAxi_wlast(cached_dbus_axi_wlast),
      .dBusAxi_bvalid(cached_dbus_axi_bvalid),
      .dBusAxi_bready(cached_dbus_axi_bready),
      .dBusAxi_bresp(cached_dbus_axi_bresp),
      .dBusAxi_arvalid(cached_dbus_axi_arvalid),
      .dBusAxi_arready(cached_dbus_axi_arready),
      .dBusAxi_araddr(cached_dbus_axi_araddr),
      .dBusAxi_arlen(cached_dbus_axi_arlen_int),
      .dBusAxi_arsize(cached_dbus_axi_arsize),
      .dBusAxi_arburst(cached_dbus_axi_arburst),
      .dBusAxi_arcache(cached_dbus_axi_arcache),
      .dBusAxi_arprot(),
      .dBusAxi_rvalid(cached_dbus_axi_rvalid),
      .dBusAxi_rready(cached_dbus_axi_rready),
      .dBusAxi_rdata(cached_dbus_axi_rdata),
      .dBusAxi_rresp(cached_dbus_axi_rresp),
      .dBusAxi_rlast(cached_dbus_axi_rlast),
      // Uncached IO Bus
      .ioBusAxi_awvalid(iobus_axi_awvalid),
      .ioBusAxi_awready(iobus_axi_awready),
      .ioBusAxi_awaddr(iobus_axi_awaddr),
      .ioBusAxi_awsize(iobus_axi_awsize),
      .ioBusAxi_awcache(iobus_axi_awcache),
      .ioBusAxi_awprot(),
      .ioBusAxi_wvalid(iobus_axi_wvalid),
      .ioBusAxi_wready(iobus_axi_wready),
      .ioBusAxi_wdata(iobus_axi_wdata),
      .ioBusAxi_wstrb(iobus_axi_wstrb),
      .ioBusAxi_wlast(iobus_axi_wlast),
      .ioBusAxi_bvalid(iobus_axi_bvalid),
      .ioBusAxi_bready(iobus_axi_bready),
      .ioBusAxi_bresp(iobus_axi_bresp),
      .ioBusAxi_arvalid(iobus_axi_arvalid),
      .ioBusAxi_arready(iobus_axi_arready),
      .ioBusAxi_araddr(iobus_axi_araddr),
      .ioBusAxi_arsize(iobus_axi_arsize),
      .ioBusAxi_arcache(iobus_axi_arcache),
      .ioBusAxi_arprot(),
      .ioBusAxi_rvalid(iobus_axi_rvalid),
      .ioBusAxi_rready(iobus_axi_rready),
      .ioBusAxi_rdata(iobus_axi_rdata),
      .ioBusAxi_rresp(iobus_axi_rresp),
      .ioBusAxi_rlast(iobus_axi_rlast),
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
