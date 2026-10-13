/*
 * SPDX-FileCopyrightText: 2026 IObundle
 *
 * SPDX-License-Identifier: GPL-3.0-only
 */

// CPU-specific software operations: each CPU module provides this header, so
// the bootloader and the firmware stay CPU agnostic. Usable from C.
//
//   iob_cpu_flush_dcache: write the entire data cache back to memory and invalidate it
//   iob_cpu_flush_dcache_range: write a specific data cache range back to memory and invalidate it
//   iob_cpu_invalidate_icache: make the instruction cache see the memory contents (invalidate only)
//
// VexiiRiscv: uses CBO (Cache Block Operations) extension for data cache flush.
// fence.i invalidates the instruction cache.
//
// For assembly (.S): include "iob_cpu.s" instead
#ifndef IOB_CPU_H
#define IOB_CPU_H

// VexiiRiscv data cache size (used for full cache flush)
#define DCACHE_SIZE (32 * 1024)
#define CACHE_LINE_SIZE 64

#include <stdint.h>
#include <stddef.h>

static inline void iob_cpu_flush_dcache(void) {
  char *ptr = (char *)0;
  char *end = (char *)DCACHE_SIZE;

  // Flush (clean + invalidate) all cache lines
  while (ptr < end) {
    asm volatile(
      ".option push\n"
      ".option arch, +zicbom\n"
      "cbo.flush 0(%0)\n"
      ".option pop"
      ::"r"(ptr) : "memory");
    ptr += CACHE_LINE_SIZE;
  }
}

static inline void iob_cpu_flush_dcache_range(void *start, size_t len) {
  char *end = (char *)start + len;
  char *ptr;

  // Round start down to line boundary
  ptr = (char *)((uintptr_t)start & ~(CACHE_LINE_SIZE - 1));

  // Flush (clean + invalidate) whole lines covering the range
  while (ptr < end) {
    asm volatile(
      ".option push\n"
      ".option arch, +zicbom\n"
      "cbo.flush 0(%0)\n"
      ".option pop"
      ::"r"(ptr) : "memory");
    ptr += CACHE_LINE_SIZE;
  }
}

static inline void iob_cpu_invalidate_icache(void) {
  __asm__ volatile("fence.i" ::: "memory");
}

#endif