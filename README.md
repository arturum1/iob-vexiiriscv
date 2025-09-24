<!--
SPDX-FileCopyrightText: 2025 IObundle

SPDX-License-Identifier: MIT
-->

# iob-vexiiriscv
This repository contains the hardware necessary to integrate the VexiiRiscv CPU on IOb-SoC.

## Requirements
- scala sbt: instructions of how to download can be found in https://www.scala-sbt.org/download.html;

This repository also provides the `shell.nix` file that can be used with [nix-shell](https://nixos.org/download.html#nix-install-linux) to create an environment with all the necessary tools, including sbt.
Run `nix-shell` from the root of the repository to create the environment.

## Makefile Targets
- vexiiriscv: build the Verilog RTL VexiiRiscv CPU core.
- clean-all: do all of the cleaning above

## Makefile Variables
- CPU: by default it has the value `VexiiRiscvAxi4LinuxPlicClint`. However, the value could be any of the CPUs present in the VexiiRiscv platform directory (`submodules/VexiiRiscv/src/main/scala/vexiiriscv/platform/`).

## Example:
To generate a new VexiiRiscv.v simply do:
- `make vexiiriscv`
