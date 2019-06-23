#!/bin/bash
ASAN_SYMBOLIZER_PATH=/usr/lib/llvm-4.0/bin/llvm-symbolizer ASAN_OPTIONS="coverage=1:coverage_counters=1:detect_leaks=0" UBSAN_OPTIONS="coverage=1:detect_leaks=0" /home/ryan/src/qemu/x86_64-softmmu/qemu-system-x86_64 -max_len=153 -workers=12 -jobs=12 -detect_leaks=0 -value_profile=1 -stack-depth-guided=1 -use_value_profile=1 -alloc_guided=1 -print_final_stats=1 -print_pcs=1 -reload=1 -verbosity=100 -dump_coverage -print_coverage=1 -close_fd_mask=3

