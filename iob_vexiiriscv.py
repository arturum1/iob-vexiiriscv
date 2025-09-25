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
                "name": "unused_signals",
                "signals": [
                    {"name": "dbus_araddr_ignore_bit", "width": "1"},
                    {"name": "dbus_awaddr_ignore_bit", "width": "1"},
                ],
            },
        ],
        "subblocks": [
            # {
            #     "core_name": "iob_iob2axil",
            #     "instance_name": "clint_iob2axil",
            #     "instance_description": "Convert IOb to AXI lite for CLINT",
            #     "parameters": {
            #         "AXIL_ADDR_W": 16,
            #         "AXIL_DATA_W": "AXI_DATA_W",
            #     },
            #     "connect": {
            #         "iob_s": "clint_cbus_s",
            #         "axil_m": "clint_cbus_axil",
            #     },
            # },
            # {
            #     "core_name": "iob_iob2axil",
            #     "instance_name": "plic_iob2axil",
            #     "instance_description": "Convert IOb to AXI lite for PLIC",
            #     "parameters": {
            #         "AXIL_ADDR_W": 22,
            #         "AXIL_DATA_W": "AXI_DATA_W",
            #     },
            #     "connect": {
            #         "iob_s": "plic_cbus_s",
            #         "axil_m": "plic_cbus_axil",
            #     },
            # },
        ],
        "snippets": [
            {
                "verilog_code": """
   wire [7:0] ibus_axi_arlen_int;
   wire [7:0] dbus_axi_arlen_int;
   wire [7:0] dbus_axi_awlen_int;


   // Instantiation of VexiiRiscv, Plic, and Clint
   VexiiRiscvAxi4LinuxPlicClint CPU (
"""
                # TODO: Add plic and clint
                #       // CLINT
                #       .clint_awvalid(clint_axil_awvalid),
                #       .clint_awready(clint_axil_awready),
                #       .clint_awaddr(clint_axil_awaddr),
                #       .clint_awprot(3'd0),
                #       .clint_wvalid(clint_axil_wvalid),
                #       .clint_wready(clint_axil_wready),
                #       .clint_wdata(clint_axil_wdata),
                #       .clint_wstrb(clint_axil_wstrb),
                #       .clint_bvalid(clint_axil_bvalid),
                #       .clint_bready(clint_axil_bready),
                #       .clint_bresp(clint_axil_bresp),
                #       .clint_arvalid(clint_axil_arvalid),
                #       .clint_arready(clint_axil_arready),
                #       .clint_araddr(clint_axil_araddr),
                #       .clint_arprot(3'd0),
                #       .clint_rvalid(clint_axil_rvalid),
                #       .clint_rready(clint_axil_rready),
                #       .clint_rdata(clint_axil_rdata),
                #       .clint_rresp(clint_axil_rresp),
                #       // PLIC
                #       .plic_awvalid(plic_axil_awvalid),
                #       .plic_awready(plic_axil_awready),
                #       .plic_awaddr(plic_axil_awaddr),
                #       .plic_awprot(3'd0),
                #       .plic_wvalid(plic_axil_wvalid),
                #       .plic_wready(plic_axil_wready),
                #       .plic_wdata(plic_axil_wdata),
                #       .plic_wstrb(plic_axil_wstrb),
                #       .plic_bvalid(plic_axil_bvalid),
                #       .plic_bready(plic_axil_bready),
                #       .plic_bresp(plic_axil_bresp),
                #       .plic_arvalid(plic_axil_arvalid),
                #       .plic_arready(plic_axil_arready),
                #       .plic_araddr(plic_axil_araddr),
                #       .plic_arprot(3'd0),
                #       .plic_rvalid(plic_axil_rvalid),
                #       .plic_rready(plic_axil_rready),
                #       .plic_rdata(plic_axil_rdata),
                #       .plic_rresp(plic_axil_rresp),
                #       .plicInterrupts(plic_interrupts_i),
                # """
                #                 + f"""
                #       // Configuration ports
                #       .externalResetVector(32'h{params["reset_addr"]:x}),
                #       .ioStartAddr(32'h{params["uncached_start_addr"]:x}),
                #       .ioSize(32'h{params["uncached_size"]:x}),
                # """
                + """
      // Instruction Bus
      .iBusAxi_arvalid(ibus_axi_arvalid_o),
      .iBusAxi_arready(ibus_axi_arready_i),
      .iBusAxi_araddr(ibus_axi_araddr_o),
      //.iBusAxi_arid(ibus_axi_arid_o), // Not available
      .iBusAxi_arlen(ibus_axi_arlen_int),
      .iBusAxi_arsize(ibus_axi_arsize_o),
      .iBusAxi_arburst(ibus_axi_arburst_o),
      //.iBusAxi_arlock(ibus_axi_arlock_o), // Not available
      //.iBusAxi_arcache(ibus_axi_arcache_o), // Not available
      //.iBusAxi_arqos(ibus_axi_arqos_o), // Not available
      .iBusAxi_arprot(),
      .iBusAxi_rvalid(ibus_axi_rvalid_i),
      .iBusAxi_rready(ibus_axi_rready_o),
      .iBusAxi_rdata(ibus_axi_rdata_i),
      //.iBusAxi_rid(ibus_axi_rid_i), // Not available
      .iBusAxi_rresp(ibus_axi_rresp_i),
      .iBusAxi_rlast(ibus_axi_rlast_i),
      // Data Bus
      .dBusAxi_awvalid(dbus_axi_awvalid),
      .dBusAxi_awready(dbus_axi_awready),
      .dBusAxi_awaddr(dbus_axi_awaddr),
      .dBusAxi_awid(dbus_axi_awid),
      .dBusAxi_awlen(dbus_axi_awlen_int),
      .dBusAxi_awsize(dbus_axi_awsize),
      .dBusAxi_awburst(dbus_axi_awburst),
      //.dBusAxi_awlock(dbus_axi_awlock), // Not available
      //.dBusAxi_awcache(dbus_axi_awcache), // Not available
      //.dBusAxi_awqos(dbus_axi_awqos), // Not available
      .dBusAxi_awprot(),
      .dBusAxi_wvalid(dbus_axi_wvalid),
      .dBusAxi_wready(dbus_axi_wready),
      .dBusAxi_wdata(dbus_axi_wdata),
      .dBusAxi_wstrb(dbus_axi_wstrb),
      .dBusAxi_wlast(dbus_axi_wlast),
      .dBusAxi_bvalid(dbus_axi_bvalid),
      .dBusAxi_bready(dbus_axi_bready),
      .dBusAxi_bid(dbus_axi_bid),
      .dBusAxi_bresp(dbus_axi_bresp),
      .dBusAxi_arvalid(dbus_axi_arvalid),
      .dBusAxi_arready(dbus_axi_arready),
      .dBusAxi_araddr(dbus_axi_araddr),
      .dBusAxi_arid(dbus_axi_arid),
      .dBusAxi_arlen(dbus_axi_arlen_int),
      .dBusAxi_arsize(dbus_axi_arsize),
      .dBusAxi_arburst(dbus_axi_arburst),
      //.dBusAxi_arlock(dbus_axi_arlock), // Not available
      //.dBusAxi_arcache(dbus_axi_arcache), // Not available
      //.dBusAxi_arqos(dbus_axi_arqos), // Not available
      .dBusAxi_arprot(),
      .dBusAxi_rvalid(dbus_axi_rvalid),
      .dBusAxi_rready(dbus_axi_rready),
      .dBusAxi_rdata(dbus_axi_rdata),
      .dBusAxi_rid(dbus_axi_rid),
      .dBusAxi_rresp(dbus_axi_rresp),
      .dBusAxi_rlast(dbus_axi_rlast),
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
   assign ibus_axi_arid_o = {AXI_ID_W{1'b0}};
   assign ibus_axi_arlock_o = 1'b0;
   assign ibus_axi_arcache_o = 4'b0;
   assign ibus_axi_arqos_o = 4'b0;
   // ibus_axi_rid_i // Unused input
   assign dbus_axi_awlock = 1'b0;
   assign dbus_axi_awcache = 4'b0;
   assign dbus_axi_awqos = 4'b0;
   assign dbus_axi_arlock = 1'b0;
   assign dbus_axi_arcache = 4'b0;
   assign dbus_axi_arqos = 4'b0;

   generate
      if (AXI_LEN_W < 8) begin : gen_if_less_than_8
         assign ibus_axi_arlen_o = ibus_axi_arlen_int[AXI_LEN_W-1:0];
         assign dbus_axi_arlen = dbus_axi_arlen_int[AXI_LEN_W-1:0];
         assign dbus_axi_awlen = dbus_axi_awlen_int[AXI_LEN_W-1:0];
      end else begin : gen_if_equal_8
         assign ibus_axi_arlen_o = ibus_axi_arlen_int;
         assign dbus_axi_arlen = dbus_axi_arlen_int;
         assign dbus_axi_awlen = dbus_axi_awlen_int;
      end
   endgenerate
"""
            }
        ],
    }

    return attributes_dict


# TODO:
'''
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
'''
