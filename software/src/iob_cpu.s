# SPDX-FileCopyrightText: 2026 IObundle
#
# SPDX-License-Identifier: GPL-3.0-only

// Assembly macros for iob_cpu - included via #include in .S files
// (Processed by C preprocessor then GNU Assembler)

// VexiiRiscv data cache size (used for full cache flush)
#define DCACHE_SIZE (32 * 1024)
#define CACHE_LINE_SIZE 64

// Full data cache flush - iterate over all cache lines
// Uses t0, t1, t2 as temporaries
.macro iob_cpu_flush_dcache
  li t0, 0
  li t1, DCACHE_SIZE
1:
  bgeu t0, t1, 2f
  .option push
  .option arch, +zicbom
  cbo.flush 0(t0)
  .option pop
  addi t0, t0, CACHE_LINE_SIZE
  j 1b
2:
.endm

// Range flush - flush cache lines covering [start, start+len)
// Arguments: start (immediate or register), len (immediate or register)
// Uses t0, t1, t2 as temporaries
.macro iob_cpu_flush_dcache_range start, len
  // Load start into t0 if immediate, otherwise use as-is
  .if \start >= 0 && \start < (1<<12)
    addi t0, zero, \start
  .elseif \start >= -(1<<11) && \start < 0
    addi t0, zero, \start
  .else
    li t0, \start
  .endif

  // Load len into t1 if immediate, otherwise use as-is
  .if \len >= 0 && \len < (1<<12)
    addi t1, zero, \len
  .elseif \len >= -(1<<11) && \len < 0
    addi t1, zero, \len
  .else
    li t1, \len
  .endif

  // Round start down to cache line boundary
  andi t0, t0, ~(CACHE_LINE_SIZE - 1)

  // Calculate end address
  add t2, t0, t1

1:
  bgeu t0, t2, 2f
  .option push
  .option arch, +zicbom
  cbo.flush 0(t0)
  .option pop
  addi t0, t0, CACHE_LINE_SIZE
  j 1b
2:
.endm

.macro iob_cpu_invalidate_icache
  fence.i
.endm
