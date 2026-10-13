Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/turboshaft-graph-interface?download=true
inline.NumInlined: 30203
inline.NumDeleted: 8011
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 120
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.171", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", [4 x i8], %"class.v8::internal::FlagValue.172", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.171", %"class.v8::internal::FlagValue.171", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.171", %"class.v8::internal::FlagValue.173", %"class.v8::internal::FlagValue.173", %"class.v8::internal::FlagValue.173", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.171", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.171", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.172", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.171", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.171", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.172", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", [4 x i8], %"class.v8::internal::FlagValue.172", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.171", %"class.v8::internal::FlagValue.171", %"class.v8::internal::FlagValue.171", %"class.v8::internal::FlagValue.171", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue.170", [4 x i8], %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.171", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.172", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.172", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.173", %"class.v8::internal::FlagValue.173", %"class.v8::internal::FlagValue.173", %"class.v8::internal::FlagValue.173", %"class.v8::internal::FlagValue.173", %"class.v8::internal::FlagValue.173", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.171", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.171", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.172", %"class.v8::internal::FlagValue.172", %"class.v8::internal::FlagValue.172", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.171", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.173", [2 x i8], %"class.v8::internal::FlagValue.170", [4 x i8], %"class.v8::internal::FlagValue.172", %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.171", %"class.v8::internal::FlagValue.171", [4 x i8], %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.174", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.173" = type { %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base" }
%"struct.std::_Optional_payload_base" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.172" = type { double }
%"class.v8::internal::FlagValue.171" = type { i32 }
%"class.v8::internal::FlagValue.174" = type { i64 }
%"class.v8::internal::FlagValue.170" = type { i32 }
%"class.v8::internal::FlagValue.169" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"struct.absl::container_internal::PolicyFunctions" = type { i32, i32, i32, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.std::piecewise_construct_t" = type { i8 }
%"struct.std::array.320" = type { [22 x i32] }
%"struct.std::array.511" = type { [256 x ptr] }
%"class.v8::internal::MachineType" = type { i8, i8 }
%"struct.std::array.1043" = type { [2 x %"class.v8::internal::compiler::turboshaft::RegisterRepresentation"] }
%"class.v8::internal::compiler::turboshaft::RegisterRepresentation" = type { %"class.v8::internal::compiler::turboshaft::MaybeRegisterRepresentation" }
%"class.v8::internal::compiler::turboshaft::MaybeRegisterRepresentation" = type { i8 }
%"struct.std::pair.308" = type { i32, i32 }
%"struct.std::atomic.3" = type { %"struct.std::__atomic_base.4" }
%"struct.std::__atomic_base.4" = type { i8 }
%"class.v8::internal::compiler::turboshaft::SupportedOperations" = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%"class.v8::internal::wasm::LoadType" = type { i8 }
%"class.v8::internal::wasm::StoreType" = type { i8 }
%"class.v8::internal::Signature" = type { i64, i64, ptr }
%"struct.std::array.1269" = type { [256 x i8] }
%"class.std::priority_queue" = type <{ %"class.std::vector.164", [8 x i8] }>
%"class.std::vector.164" = type { %"struct.std::_Vector_base.165" }
%"struct.std::_Vector_base.165" = type { %"struct.std::_Vector_base<v8::internal::wasm::InliningTree *, std::allocator<v8::internal::wasm::InliningTree *>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::wasm::InliningTree *, std::allocator<v8::internal::wasm::InliningTree *>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::wasm::InliningTree *, std::allocator<v8::internal::wasm::InliningTree *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::wasm::InliningTree *, std::allocator<v8::internal::wasm::InliningTree *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.v8::internal::Zone" = type <{ %"struct.std::atomic", %"struct.std::atomic", i64, i64, ptr, ptr, ptr, i8, [7 x i8] }>
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i64 }
%"class.v8::internal::compiler::turboshaft::TSAssembler" = type { %"class.v8::internal::compiler::turboshaft::Assembler" }
%"class.v8::internal::compiler::turboshaft::Assembler" = type { %"struct.v8::internal::compiler::turboshaft::AssemblerData", %"class.v8::internal::compiler::turboshaft::SelectLoweringReducer", %"class.v8::internal::compiler::turboshaft::TurboshaftAssemblerOpInterface", ptr, ptr, i8, %"class.v8::internal::compiler::turboshaft::V" }
%"struct.v8::internal::compiler::turboshaft::AssemblerData" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::turboshaft::SelectLoweringReducer" = type { %"class.v8::internal::compiler::turboshaft::DataViewLoweringReducer" }
%"class.v8::internal::compiler::turboshaft::DataViewLoweringReducer" = type { %"class.v8::internal::compiler::turboshaft::VariableReducer" }
%"class.v8::internal::compiler::turboshaft::VariableReducer" = type { %"struct.v8::internal::compiler::turboshaft::VariableReducer<v8::internal::compiler::turboshaft::EmitProjectionReducer<v8::internal::compiler::turboshaft::GenericReducerBase<v8::internal::compiler::turboshaft::TSReducerBase<v8::internal::compiler::turboshaft::StackBottom<v8::base::tmp::list1<v8::internal::compiler::turboshaft::SelectLoweringReducer, v8::internal::compiler::turboshaft::DataViewLoweringReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>>>>::VariableTable", ptr, %"class.v8::internal::compiler::turboshaft::GrowingBlockSidetable", i8, %"class.v8::internal::ZoneVector.186", %"class.v8::internal::ZoneAbslFlatHashMap" }
%"struct.v8::internal::compiler::turboshaft::VariableReducer<v8::internal::compiler::turboshaft::EmitProjectionReducer<v8::internal::compiler::turboshaft::GenericReducerBase<v8::internal::compiler::turboshaft::TSReducerBase<v8::internal::compiler::turboshaft::StackBottom<v8::base::tmp::list1<v8::internal::compiler::turboshaft::SelectLoweringReducer, v8::internal::compiler::turboshaft::DataViewLoweringReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>>>>::VariableTable" = type { %"class.v8::internal::compiler::turboshaft::ChangeTrackingSnapshotTable", %"class.v8::internal::ZoneIntrusiveSet" }
%"class.v8::internal::compiler::turboshaft::ChangeTrackingSnapshotTable" = type { %"class.v8::internal::compiler::turboshaft::SnapshotTable" }
%"class.v8::internal::compiler::turboshaft::SnapshotTable" = type { ptr, %"class.v8::internal::ZoneDeque", %"class.v8::internal::ZoneDeque.175", %"class.v8::internal::ZoneVector", ptr, ptr, %"class.v8::internal::ZoneVector.181", %"class.v8::internal::ZoneVector.182", %"class.v8::internal::ZoneVector.183" }
%"class.v8::internal::ZoneDeque" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>>>::_Deque_impl" }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>>>::_Deque_impl" = type { %"class.v8::internal::RecyclingZoneAllocator", %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>>>::_Deque_impl_data" }
%"class.v8::internal::RecyclingZoneAllocator" = type { %"class.v8::internal::ZoneAllocator", ptr }
%"class.v8::internal::ZoneAllocator" = type { ptr }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneDeque.175" = type { %"class.std::deque.176" }
%"class.std::deque.176" = type { %"class.std::_Deque_base.177" }
%"class.std::_Deque_base.177" = type { %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData>>::_Deque_impl" }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData>>::_Deque_impl" = type { %"class.v8::internal::RecyclingZoneAllocator.178", %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData>>::_Deque_impl_data" }
%"class.v8::internal::RecyclingZoneAllocator.178" = type { %"class.v8::internal::ZoneAllocator.179", ptr }
%"class.v8::internal::ZoneAllocator.179" = type { ptr }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.180", %"struct.std::_Deque_iterator.180" }
%"struct.std::_Deque_iterator.180" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.181" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.182" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.183" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneIntrusiveSet" = type { %"class.v8::base::IntrusiveSet.base", [7 x i8] }
%"class.v8::base::IntrusiveSet.base" = type <{ %"class.v8::internal::ZoneVector.184", i8 }>
%"class.v8::internal::ZoneVector.184" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::turboshaft::GrowingBlockSidetable" = type { %"class.v8::internal::compiler::turboshaft::detail::GrowingSidetable" }
%"class.v8::internal::compiler::turboshaft::detail::GrowingSidetable" = type { %"class.v8::internal::ZoneVector.185" }
%"class.v8::internal::ZoneVector.185" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.186" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneAbslFlatHashMap" = type { %"class.absl::flat_hash_map" }
%"class.absl::flat_hash_map" = type { %"class.absl::container_internal::raw_hash_map" }
%"class.absl::container_internal::raw_hash_map" = type { %"class.absl::container_internal::raw_hash_set" }
%"class.absl::container_internal::raw_hash_set" = type { %"class.absl::container_internal::CompressedTuple" }
%"class.absl::container_internal::CompressedTuple" = type { %"struct.absl::container_internal::internal_compressed_tuple::CompressedTupleImpl" }
%"struct.absl::container_internal::internal_compressed_tuple::CompressedTupleImpl" = type { %"struct.absl::container_internal::internal_compressed_tuple::Storage", %"struct.absl::container_internal::internal_compressed_tuple::Storage.192" }
%"struct.absl::container_internal::internal_compressed_tuple::Storage" = type { %"class.absl::container_internal::CommonFields" }
%"class.absl::container_internal::CommonFields" = type { i64, %"class.absl::container_internal::HashtableSize", %"union.absl::container_internal::HeapOrSoo" }
%"class.absl::container_internal::HashtableSize" = type { i64 }
%"union.absl::container_internal::HeapOrSoo" = type { %"struct.absl::container_internal::HeapPtrs" }
%"struct.absl::container_internal::HeapPtrs" = type { %"union.absl::container_internal::MaybeInitializedPtr", %"union.absl::container_internal::MaybeInitializedPtr.187" }
%"union.absl::container_internal::MaybeInitializedPtr" = type { ptr }
%"union.absl::container_internal::MaybeInitializedPtr.187" = type { ptr }
%"struct.absl::container_internal::internal_compressed_tuple::Storage.192" = type { %"class.v8::internal::ZoneAllocator.193" }
%"class.v8::internal::ZoneAllocator.193" = type { ptr }
%"class.v8::internal::compiler::turboshaft::TurboshaftAssemblerOpInterface" = type { %"class.v8::base::SmallVector", [4 x %"class.v8::internal::MaybeHandle"], i8, %"class.v8::internal::compiler::turboshaft::OperationMatcher" }
%"class.v8::base::SmallVector" = type { ptr, ptr, ptr, [64 x i8] }
%"class.v8::internal::MaybeHandle" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"class.v8::internal::compiler::turboshaft::OperationMatcher" = type { ptr }
%"class.v8::internal::compiler::turboshaft::V" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.v8::internal::compiler::turboshaft::OpIndex" = type { i32 }
%"class.v8::internal::wasm::WasmFullDecoder" = type { %"class.v8::internal::wasm::WasmDecoder", i32, %"class.v8::internal::wasm::TurboshaftGraphBuildingInterface", %"class.v8::internal::wasm::FastZoneVector", ptr, %"class.v8::internal::wasm::FastZoneVector.245", %"class.v8::internal::wasm::FastZoneVector.246", i8, i8, i32 }
%"class.v8::internal::wasm::WasmDecoder" = type { %"class.v8::internal::wasm::Decoder", ptr, ptr, i32, ptr, %"class.v8::internal::wasm::WasmEnabledFeatures", ptr, ptr, i8, ptr }
%"class.v8::internal::wasm::Decoder" = type { ptr, ptr, ptr, ptr, i32, %"class.v8::internal::wasm::WasmError" }
%"class.v8::internal::wasm::WasmError" = type { i32, %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.v8::internal::wasm::WasmEnabledFeatures" = type { %"class.v8::base::EnumSet" }
%"class.v8::base::EnumSet" = type { i32 }
%"class.v8::internal::wasm::TurboshaftGraphBuildingInterface" = type { %"class.v8::internal::wasm::WasmGraphBuilderBase", i32, %"class.v8::internal::ZoneAbslFlatHashMap.218", ptr, %"class.std::unique_ptr.228", ptr, ptr, ptr, i8, %"class.v8::internal::ZoneVector.182", i32, i32, i8, ptr, i32, ptr, %"class.v8::internal::wasm::(anonymous namespace)::BranchHintingStresser", ptr, i32, i32, i32, %"class.v8::base::Vector.236", ptr, ptr, ptr, %"class.v8::internal::SourcePosition", i8, %"class.std::optional", %"class.v8::internal::compiler::turboshaft::OptionalV", i32, %"class.std::unique_ptr.237" }
%"class.v8::internal::wasm::WasmGraphBuilderBase" = type { ptr, ptr }
%"class.v8::internal::ZoneAbslFlatHashMap.218" = type { %"class.absl::flat_hash_map.219" }
%"class.absl::flat_hash_map.219" = type { %"class.absl::container_internal::raw_hash_map.220" }
%"class.absl::container_internal::raw_hash_map.220" = type { %"class.absl::container_internal::raw_hash_set.221" }
%"class.absl::container_internal::raw_hash_set.221" = type { %"class.absl::container_internal::CompressedTuple.222" }
%"class.absl::container_internal::CompressedTuple.222" = type { %"struct.absl::container_internal::internal_compressed_tuple::CompressedTupleImpl.223" }
%"struct.absl::container_internal::internal_compressed_tuple::CompressedTupleImpl.223" = type { %"struct.absl::container_internal::internal_compressed_tuple::Storage.224", %"struct.absl::container_internal::internal_compressed_tuple::Storage.227" }
%"struct.absl::container_internal::internal_compressed_tuple::Storage.224" = type { %"class.absl::container_internal::CommonFields" }
%"struct.absl::container_internal::internal_compressed_tuple::Storage.227" = type { %"class.v8::internal::ZoneAllocator.193" }
%"class.std::unique_ptr.228" = type { %"struct.std::__uniq_ptr_data.229" }
%"struct.std::__uniq_ptr_data.229" = type { %"class.std::__uniq_ptr_impl.230" }
%"class.std::__uniq_ptr_impl.230" = type { %"class.std::tuple.231" }
%"class.std::tuple.231" = type { %"struct.std::_Tuple_impl.232" }
%"struct.std::_Tuple_impl.232" = type { %"struct.std::_Head_base.235" }
%"struct.std::_Head_base.235" = type { ptr }
%"class.v8::internal::wasm::(anonymous namespace)::BranchHintingStresser" = type { i32 }
%"class.v8::base::Vector.236" = type { ptr, i64 }
%"class.v8::internal::SourcePosition" = type { i64 }
%"class.v8::internal::compiler::turboshaft::OptionalV" = type { %"class.v8::internal::compiler::turboshaft::OptionalOpIndex" }
%"class.v8::internal::compiler::turboshaft::OptionalOpIndex" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.std::unique_ptr.237" = type { %"struct.std::__uniq_ptr_data.238" }
%"struct.std::__uniq_ptr_data.238" = type { %"class.std::__uniq_ptr_impl.239" }
%"class.std::__uniq_ptr_impl.239" = type { %"class.std::tuple.240" }
%"class.std::tuple.240" = type { %"struct.std::_Tuple_impl.241" }
%"struct.std::_Tuple_impl.241" = type { %"struct.std::_Head_base.244" }
%"struct.std::_Head_base.244" = type { ptr }
%"class.v8::internal::wasm::FastZoneVector" = type { ptr, ptr, ptr }
%"class.v8::internal::wasm::FastZoneVector.245" = type { ptr, ptr, ptr }
%"class.v8::internal::wasm::FastZoneVector.246" = type { ptr, ptr, ptr }
%class.anon.306 = type { ptr }
%class.anon.288 = type { ptr }
%"class.v8::base::SmallVector.310" = type { ptr, ptr, ptr, [64 x i8] }
%"class.v8::base::EmbeddedVector" = type { %"class.v8::base::Vector.317", [256 x i8] }
%"class.v8::base::Vector.317" = type { ptr, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"struct.v8::internal::compiler::FieldAccess" = type { i8, i32, %"class.v8::internal::MaybeHandle.457", %"class.v8::internal::compiler::OptionalRef", %"class.v8::internal::compiler::Type", %"class.v8::internal::MachineType", i8, ptr, %"struct.v8::internal::compiler::ConstFieldInfo", i8, i16, i8, i8, i8, i64 }
%"class.v8::internal::MaybeHandle.457" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::compiler::OptionalRef" = type { ptr }
%"class.v8::internal::compiler::Type" = type { i64 }
%"struct.v8::internal::compiler::ConstFieldInfo" = type { %"class.v8::internal::compiler::OptionalRef" }
%"class.v8::internal::SmallZoneVector" = type { %"class.v8::base::SmallVector.458" }
%"class.v8::base::SmallVector.458" = type { %"class.v8::internal::ZoneAllocator.459", ptr, ptr, ptr, [16 x i8] }
%"class.v8::internal::ZoneAllocator.459" = type { ptr }
%class.anon.348 = type { ptr }
%class.anon.345 = type { ptr }
%"class.v8::internal::ZoneVector.266" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::turboshaft::BlockIndex" = type { i32 }
%"struct.absl::container_internal::HashKey" = type { ptr, ptr }
%"class.v8::base::SmallVector.374" = type { ptr, ptr, ptr, [256 x i8] }
%"class.v8::base::SmallVector.376" = type { ptr, ptr, ptr, [128 x i8] }
%"class.v8::base::SmallVector.436" = type { ptr, ptr, ptr, [32 x i8] }
%"class.v8::base::SmallVector.437" = type { ptr, ptr, ptr, [64 x i8] }
%"class.v8::base::SmallVector.357" = type { ptr, ptr, ptr, [32 x i8] }
%"struct.v8::internal::wasm::BlockTypeImmediate" = type <{ i32, %"struct.v8::internal::wasm::ModuleTypeIndex", %"class.v8::internal::Signature", [1 x %"class.v8::internal::wasm::ValueType"], [4 x i8] }>
%"struct.v8::internal::wasm::ModuleTypeIndex" = type { %"struct.v8::internal::wasm::TypeIndex" }
%"struct.v8::internal::wasm::TypeIndex" = type { i32 }
%"class.v8::internal::wasm::ValueType" = type { %"class.v8::internal::wasm::ValueTypeBase" }
%"class.v8::internal::wasm::ValueTypeBase" = type { i32 }
%"struct.v8::internal::wasm::TurboshaftGraphBuildingInterface::Value" = type { %"struct.v8::internal::wasm::ValueBase", %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"struct.v8::internal::wasm::ValueBase" = type { %"class.v8::internal::wasm::ValueType" }
%"struct.v8::internal::wasm::TagIndexImmediate" = type { %"struct.v8::internal::wasm::IndexImmediate", ptr }
%"struct.v8::internal::wasm::IndexImmediate" = type { i32, i32 }
%"class.v8::base::SmallVector.638" = type { ptr, ptr, ptr, [64 x i8] }
%"class.std::tuple.598" = type { %"struct.std::_Tuple_impl.599" }
%"struct.std::_Tuple_impl.599" = type { %"struct.std::_Head_base.587" }
%"struct.std::_Head_base.587" = type { %"class.v8::internal::compiler::turboshaft::V.325" }
%"class.v8::internal::compiler::turboshaft::V.325" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"struct.v8::internal::wasm::BranchTableImmediate" = type { i32, ptr, ptr }
%"class.v8::internal::SmallZoneVector.692" = type { %"class.v8::base::SmallVector.693" }
%"class.v8::base::SmallVector.693" = type { %"class.v8::internal::ZoneAllocator.694", ptr, ptr, ptr, [32 x i8] }
%"class.v8::internal::ZoneAllocator.694" = type { ptr }
%"struct.v8::internal::wasm::CallFunctionImmediate" = type { %"struct.v8::internal::wasm::IndexImmediate", ptr }
%"struct.v8::internal::wasm::CallIndirectImmediate" = type { %"struct.v8::internal::wasm::SigIndexImmediate", %"struct.v8::internal::wasm::TableIndexImmediate", i32, ptr }
%"struct.v8::internal::wasm::SigIndexImmediate" = type <{ %"struct.v8::internal::wasm::TypeIndexImmediate", ptr, i8, [7 x i8] }>
%"struct.v8::internal::wasm::TypeIndexImmediate" = type { %"struct.v8::internal::wasm::ModuleTypeIndex", i32 }
%"struct.v8::internal::wasm::TableIndexImmediate" = type { %"struct.v8::internal::wasm::IndexImmediate", ptr }
%"struct.std::array.1210" = type { [3 x %"struct.v8::internal::wasm::TurboshaftGraphBuildingInterface::Value"] }
%"struct.v8::internal::wasm::GlobalIndexImmediate" = type { %"struct.v8::internal::wasm::IndexImmediate", ptr }
%"struct.std::array.1228" = type { [2 x %"struct.v8::internal::wasm::TurboshaftGraphBuildingInterface::Value"] }
%"struct.v8::internal::wasm::MemoryIndexImmediate" = type { %"struct.v8::internal::wasm::IndexImmediate", ptr }
%"struct.v8::internal::wasm::ContIndexImmediate" = type <{ %"struct.v8::internal::wasm::TypeIndexImmediate", ptr, i8, [7 x i8] }>
%"struct.absl::container_internal::HashKey.534" = type { ptr, ptr }
%"struct.v8::internal::wasm::SelectTypeImmediate" = type { i32, %"class.v8::internal::wasm::ValueType" }
%"struct.v8::internal::wasm::MemoryAccessImmediate" = type <{ i32, i32, i64, ptr, i32, [4 x i8] }>
%"struct.v8::internal::wasm::MemoryInitImmediate" = type <{ %"struct.v8::internal::wasm::IndexImmediate", %"struct.v8::internal::wasm::MemoryIndexImmediate", i32, [4 x i8] }>
%"struct.v8::internal::wasm::MemoryCopyImmediate" = type <{ %"struct.v8::internal::wasm::MemoryIndexImmediate", %"struct.v8::internal::wasm::MemoryIndexImmediate", i32, [4 x i8] }>
%"struct.v8::internal::wasm::TableInitImmediate" = type <{ %"struct.v8::internal::wasm::IndexImmediate", %"struct.v8::internal::wasm::TableIndexImmediate", i32, [4 x i8] }>
%"struct.v8::internal::wasm::TableCopyImmediate" = type <{ %"struct.v8::internal::wasm::TableIndexImmediate", %"struct.v8::internal::wasm::TableIndexImmediate", i32, [4 x i8] }>
%"struct.v8::internal::wasm::FieldImmediate" = type { %"struct.v8::internal::wasm::StructIndexImmediate", %"struct.v8::internal::wasm::IndexImmediate", i32, [4 x i8] }
%"struct.v8::internal::wasm::StructIndexImmediate" = type <{ %"struct.v8::internal::wasm::TypeIndexImmediate", ptr, i8, [7 x i8] }>
%"struct.v8::internal::wasm::BrOnCastImmediate" = type { %"struct.v8::internal::wasm::BrOnCastFlags", i8, i32 }
%"struct.v8::internal::wasm::BrOnCastFlags" = type { i8, i8 }
%"class.std::tuple.582" = type { %"struct.std::_Tuple_impl.583" }
%"struct.std::_Tuple_impl.583" = type { %"struct.std::_Tuple_impl.584", %"struct.std::_Head_base.587" }
%"struct.std::_Tuple_impl.584" = type { %"struct.std::_Head_base.585" }
%"struct.std::_Head_base.585" = type { %"class.v8::internal::compiler::turboshaft::V.586" }
%"class.v8::internal::compiler::turboshaft::V.586" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.v8::internal::compiler::turboshaft::Label" = type { %"class.v8::internal::compiler::turboshaft::LabelBase.base", [7 x i8] }
%"class.v8::internal::compiler::turboshaft::LabelBase.base" = type <{ %"struct.v8::internal::compiler::turboshaft::LabelBase<false, v8::internal::Object>::BlockData", i8 }>
%"struct.v8::internal::compiler::turboshaft::LabelBase<false, v8::internal::Object>::BlockData" = type { ptr, %"class.v8::base::SmallVector.589", %"class.std::tuple.590", %"class.v8::SourceLocation" }
%"class.v8::base::SmallVector.589" = type { ptr, ptr, ptr, [32 x i8] }
%"class.std::tuple.590" = type { %"struct.std::_Tuple_impl.591" }
%"struct.std::_Tuple_impl.591" = type { %"struct.std::_Head_base.592" }
%"struct.std::_Head_base.592" = type { %"class.v8::base::SmallVector.593" }
%"class.v8::base::SmallVector.593" = type { ptr, ptr, ptr, [8 x i8] }
%"class.v8::SourceLocation" = type { %"struct.std::source_location" }
%"struct.std::source_location" = type { ptr }
%"class.v8::internal::compiler::turboshaft::Label.594" = type { %"class.v8::internal::compiler::turboshaft::LabelBase.base.596", [7 x i8] }
%"class.v8::internal::compiler::turboshaft::LabelBase.base.596" = type <{ %"struct.v8::internal::compiler::turboshaft::LabelBase<false>::BlockData", i8 }>
%"struct.v8::internal::compiler::turboshaft::LabelBase<false>::BlockData" = type { ptr, %"class.v8::base::SmallVector.589", [8 x i8], %"class.v8::SourceLocation" }
%"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::compiler::turboshaft::SelectLoweringReducer, v8::internal::compiler::turboshaft::DataViewLoweringReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState" = type { ptr, ptr }
%"class.std::tuple.600" = type { %"struct.std::_Tuple_impl.601" }
%"struct.std::_Tuple_impl.601" = type { %"struct.std::_Head_base.602" }
%"struct.std::_Head_base.602" = type { i8 }
%"class.std::tuple.603" = type { %"struct.std::_Tuple_impl.base", [3 x i8] }
%"struct.std::_Tuple_impl.base" = type <{ %"struct.std::_Tuple_impl.605", %"struct.std::_Head_base.602" }>
%"struct.std::_Tuple_impl.605" = type { %"struct.std::_Head_base.606" }
%"struct.std::_Head_base.606" = type { %"class.v8::internal::compiler::turboshaft::V.325" }
%"class.v8::internal::CallInterfaceDescriptor" = type { ptr }
%"class.v8::base::SmallVector.616" = type <{ ptr, ptr, ptr, [12 x i8], [4 x i8] }>
%"class.v8::internal::compiler::turboshaft::ConstOrV" = type { %"class.std::optional.407", %"class.v8::internal::compiler::turboshaft::V.415", [4 x i8] }
%"class.std::optional.407" = type { %"struct.std::_Optional_base.408" }
%"struct.std::_Optional_base.408" = type { %"struct.std::_Optional_payload.410" }
%"struct.std::_Optional_payload.410" = type { %"struct.std::_Optional_payload_base.base.412", [7 x i8] }
%"struct.std::_Optional_payload_base.base.412" = type <{ %"union.std::_Optional_payload_base<unsigned long>::_Storage", i8 }>
%"union.std::_Optional_payload_base<unsigned long>::_Storage" = type { i64 }
%"class.v8::internal::compiler::turboshaft::V.415" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.v8::internal::SmallZoneVector.645" = type { %"class.v8::base::SmallVector.646" }
%"class.v8::base::SmallVector.646" = type { %"class.v8::internal::ZoneAllocator.459", ptr, ptr, ptr, [64 x i8] }
%"class.std::tuple.647" = type { %"struct.std::_Tuple_impl.648" }
%"struct.std::_Tuple_impl.648" = type { %"struct.std::_Head_base.649" }
%"struct.std::_Head_base.649" = type { %"class.v8::internal::compiler::turboshaft::V.415" }
%"class.std::tuple.669" = type { %"struct.std::_Tuple_impl.670" }
%"struct.std::_Tuple_impl.670" = type { %"struct.std::_Tuple_impl.671", %"struct.std::_Head_base.587" }
%"struct.std::_Tuple_impl.671" = type { %"struct.std::_Head_base.672" }
%"struct.std::_Head_base.672" = type { %"class.v8::internal::compiler::turboshaft::V.297" }
%"class.v8::internal::compiler::turboshaft::V.297" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.v8::base::SmallVector.673" = type { ptr, ptr, ptr, [8 x i8] }
%"class.v8::internal::compiler::turboshaft::ConstOrV.659" = type { %"class.std::optional.660", %"class.v8::internal::compiler::turboshaft::V.421", [4 x i8] }
%"class.std::optional.660" = type { %"struct.std::_Optional_base.661" }
%"struct.std::_Optional_base.661" = type { %"struct.std::_Optional_payload.663" }
%"struct.std::_Optional_payload.663" = type { %"struct.std::_Optional_payload_base.base.665", [7 x i8] }
%"struct.std::_Optional_payload_base.base.665" = type <{ %"union.std::_Optional_payload_base<double>::_Storage", i8 }>
%"union.std::_Optional_payload_base<double>::_Storage" = type { double }
%"class.v8::internal::compiler::turboshaft::V.421" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.v8::internal::wasm::TurboshaftGraphBuildingInterface::BrTableAnalysis" = type { %"class.std::optional.446", %"class.std::optional.446", %"class.v8::base::SmallVector.697", %"class.absl::btree_map" }
%"class.std::optional.446" = type { %"struct.std::_Optional_base.447" }
%"struct.std::_Optional_base.447" = type { %"struct.std::_Optional_payload.449" }
%"struct.std::_Optional_payload.449" = type { %"struct.std::_Optional_payload_base.base.451", [3 x i8] }
%"struct.std::_Optional_payload_base.base.451" = type <{ %"union.std::_Optional_payload_base<unsigned int>::_Storage", i8 }>
%"union.std::_Optional_payload_base<unsigned int>::_Storage" = type { i32 }
%"class.v8::base::SmallVector.697" = type { ptr, ptr, ptr, [8 x i8] }
%"class.absl::btree_map" = type { %"class.absl::container_internal::btree_map_container" }
%"class.absl::container_internal::btree_map_container" = type { %"class.absl::container_internal::btree_set_container" }
%"class.absl::container_internal::btree_set_container" = type { %"class.absl::container_internal::btree_container" }
%"class.absl::container_internal::btree_container" = type { %"class.absl::container_internal::btree" }
%"class.absl::container_internal::btree" = type { ptr, %"class.absl::container_internal::CompressedTuple.698", i64 }
%"class.absl::container_internal::CompressedTuple.698" = type { %"struct.absl::container_internal::internal_compressed_tuple::CompressedTupleImpl.699" }
%"struct.absl::container_internal::internal_compressed_tuple::CompressedTupleImpl.699" = type { %"struct.absl::container_internal::internal_compressed_tuple::Storage.705" }
%"struct.absl::container_internal::internal_compressed_tuple::Storage.705" = type { ptr }
%class.anon.706 = type { ptr }
%class.anon.707 = type { ptr, ptr }
%"class.v8::internal::SmallZoneVector.710" = type { %"class.v8::base::SmallVector.711" }
%"class.v8::base::SmallVector.711" = type { %"class.v8::internal::ZoneAllocator.712", ptr, ptr, ptr, [128 x i8] }
%"class.v8::internal::ZoneAllocator.712" = type { ptr }
%"class.std::tuple.747" = type { %"struct.std::_Tuple_impl.748" }
%"struct.std::_Tuple_impl.748" = type { %"struct.std::_Head_base.749" }
%"struct.std::_Head_base.749" = type { ptr }
%"class.std::tuple.397" = type { i8 }
%"struct.std::pair.716" = type { %"class.absl::container_internal::btree_iterator.718", i8, [7 x i8] }
%"class.absl::container_internal::btree_iterator.718" = type <{ ptr, i32, [4 x i8] }>
%"class.std::tuple.721" = type { %"struct.std::_Tuple_impl.722" }
%"struct.std::_Tuple_impl.722" = type { %"struct.std::_Head_base.723" }
%"struct.std::_Head_base.723" = type { ptr }
%"struct.std::pair.754" = type { i64, %"class.absl::container_internal::btree_iterator.718" }
%"struct.std::pair.758" = type { %"class.absl::container_internal::btree_iterator", %"class.absl::container_internal::btree_iterator" }
%"class.absl::container_internal::btree_iterator" = type <{ ptr, i32, [4 x i8] }>
%class.anon.735 = type { ptr }
%class.anon.736 = type { ptr, ptr, ptr }
%class.anon.750 = type { ptr }
%class.anon.751 = type { ptr, ptr, ptr }
%"class.std::tuple.789" = type { %"struct.std::_Tuple_impl.790" }
%"struct.std::_Tuple_impl.790" = type { %"struct.std::_Head_base.777" }
%"struct.std::_Head_base.777" = type { %"class.v8::internal::compiler::turboshaft::V.772" }
%"class.v8::internal::compiler::turboshaft::V.772" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.std::tuple.773" = type { %"struct.std::_Tuple_impl.774" }
%"struct.std::_Tuple_impl.774" = type { %"struct.std::_Tuple_impl.775", %"struct.std::_Head_base.777" }
%"struct.std::_Tuple_impl.775" = type { %"struct.std::_Head_base.776" }
%"struct.std::_Head_base.776" = type { %"class.v8::internal::compiler::turboshaft::V.772" }
%"class.std::tuple.778" = type { %"struct.std::_Tuple_impl.779" }
%"struct.std::_Tuple_impl.779" = type { %"struct.std::_Head_base.780" }
%"struct.std::_Head_base.780" = type { %"class.v8::internal::compiler::turboshaft::V.324" }
%"class.v8::internal::compiler::turboshaft::V.324" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.std::tuple.781" = type { %"struct.std::_Tuple_impl.782" }
%"struct.std::_Tuple_impl.782" = type { %"struct.std::_Tuple_impl.783", %"struct.std::_Head_base.787" }
%"struct.std::_Tuple_impl.783" = type { %"struct.std::_Tuple_impl.784", %"struct.std::_Head_base.786" }
%"struct.std::_Tuple_impl.784" = type { %"struct.std::_Head_base.785" }
%"struct.std::_Head_base.785" = type { %"class.v8::internal::compiler::turboshaft::V.324" }
%"struct.std::_Head_base.786" = type { %"class.v8::internal::compiler::turboshaft::V.324" }
%"struct.std::_Head_base.787" = type { %"class.v8::internal::compiler::turboshaft::V.788" }
%"class.v8::internal::compiler::turboshaft::V.788" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.std::tuple.791" = type { %"struct.std::_Tuple_impl.792" }
%"struct.std::_Tuple_impl.792" = type { %"struct.std::_Tuple_impl.783", %"struct.std::_Head_base.777" }
%"class.std::tuple.793" = type { %"struct.std::_Tuple_impl.794" }
%"struct.std::_Tuple_impl.794" = type { %"struct.std::_Tuple_impl.795", %"struct.std::_Head_base.777" }
%"struct.std::_Tuple_impl.795" = type { %"struct.std::_Tuple_impl.784", %"struct.std::_Head_base.796" }
%"struct.std::_Head_base.796" = type { %"class.v8::internal::compiler::turboshaft::V.788" }
%"class.std::tuple.797" = type { %"struct.std::_Tuple_impl.798" }
%"struct.std::_Tuple_impl.798" = type { %"struct.std::_Head_base.799" }
%"struct.std::_Head_base.799" = type { %"class.v8::internal::compiler::turboshaft::V.421" }
%"class.std::tuple.800" = type { %"struct.std::_Tuple_impl.801" }
%"struct.std::_Tuple_impl.801" = type { %"struct.std::_Tuple_impl.802", %"struct.std::_Head_base.780" }
%"struct.std::_Tuple_impl.802" = type { %"struct.std::_Head_base.786" }
%"class.v8::internal::compiler::turboshaft::Label.803" = type { %"class.v8::internal::compiler::turboshaft::LabelBase.base.809", [7 x i8] }
%"class.v8::internal::compiler::turboshaft::LabelBase.base.809" = type <{ %"struct.v8::internal::compiler::turboshaft::LabelBase<false, v8::internal::compiler::turboshaft::FloatWithBits<64>>::BlockData", i8 }>
%"struct.v8::internal::compiler::turboshaft::LabelBase<false, v8::internal::compiler::turboshaft::FloatWithBits<64>>::BlockData" = type { ptr, %"class.v8::base::SmallVector.589", %"class.std::tuple.805", %"class.v8::SourceLocation" }
%"class.std::tuple.805" = type { %"struct.std::_Tuple_impl.806" }
%"struct.std::_Tuple_impl.806" = type { %"struct.std::_Head_base.807" }
%"struct.std::_Head_base.807" = type { %"class.v8::base::SmallVector.808" }
%"class.v8::base::SmallVector.808" = type { ptr, ptr, ptr, [8 x i8] }
%"class.std::tuple.811" = type { %"struct.std::_Tuple_impl.812" }
%"struct.std::_Tuple_impl.812" = type { %"struct.std::_Head_base.813" }
%"struct.std::_Head_base.813" = type { %"class.v8::internal::compiler::turboshaft::ConstOrV.659" }
%"class.std::tuple.814" = type { %"struct.std::_Tuple_impl.base.818", [3 x i8] }
%"struct.std::_Tuple_impl.base.818" = type <{ %"struct.std::_Tuple_impl.816", %"struct.std::_Head_base.602" }>
%"struct.std::_Tuple_impl.816" = type { %"struct.std::_Head_base.817" }
%"struct.std::_Head_base.817" = type { %"class.v8::internal::compiler::turboshaft::V.421" }
%"class.v8::internal::compiler::turboshaft::Label.820" = type { %"class.v8::internal::compiler::turboshaft::LabelBase.base.826", [7 x i8] }
%"class.v8::internal::compiler::turboshaft::LabelBase.base.826" = type <{ %"struct.v8::internal::compiler::turboshaft::LabelBase<false, v8::internal::String>::BlockData", i8 }>
%"struct.v8::internal::compiler::turboshaft::LabelBase<false, v8::internal::String>::BlockData" = type { ptr, %"class.v8::base::SmallVector.589", %"class.std::tuple.822", %"class.v8::SourceLocation" }
%"class.std::tuple.822" = type { %"struct.std::_Tuple_impl.823" }
%"struct.std::_Tuple_impl.823" = type { %"struct.std::_Head_base.824" }
%"struct.std::_Head_base.824" = type { %"class.v8::base::SmallVector.825" }
%"class.v8::base::SmallVector.825" = type { ptr, ptr, ptr, [8 x i8] }
%"class.std::tuple.828" = type { %"struct.std::_Tuple_impl.base.830", [3 x i8] }
%"struct.std::_Tuple_impl.base.830" = type <{ %"struct.std::_Tuple_impl.775", %"struct.std::_Head_base.602" }>
%"struct.v8::internal::wasm::FunctionBody" = type <{ ptr, i32, [4 x i8], ptr, ptr, i8, [7 x i8] }>
%"class.v8::internal::wasm::Result" = type { ptr, %"class.v8::internal::wasm::WasmError" }
%"class.v8::internal::wasm::TurboshaftGraphBuildingInterface::BlockPhis" = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %"class.v8::internal::ZoneVector.182" }
%"class.v8::internal::compiler::turboshaft::Label.852" = type { %"class.v8::internal::compiler::turboshaft::LabelBase.base.858", [7 x i8] }
%"class.v8::internal::compiler::turboshaft::LabelBase.base.858" = type <{ %"struct.v8::internal::compiler::turboshaft::LabelBase<false, v8::internal::compiler::turboshaft::WordWithBits<32>>::BlockData", i8 }>
%"struct.v8::internal::compiler::turboshaft::LabelBase<false, v8::internal::compiler::turboshaft::WordWithBits<32>>::BlockData" = type { ptr, %"class.v8::base::SmallVector.589", %"class.std::tuple.854", %"class.v8::SourceLocation" }
%"class.std::tuple.854" = type { %"struct.std::_Tuple_impl.855" }
%"struct.std::_Tuple_impl.855" = type { %"struct.std::_Head_base.856" }
%"struct.std::_Head_base.856" = type { %"class.v8::base::SmallVector.857" }
%"class.v8::base::SmallVector.857" = type { ptr, ptr, ptr, [8 x i8] }
%"class.std::tuple.860" = type { %"struct.std::_Tuple_impl.861" }
%"struct.std::_Tuple_impl.861" = type { %"struct.std::_Head_base.862" }
%"struct.std::_Head_base.862" = type { %"class.v8::internal::compiler::turboshaft::ConstOrV.445" }
%"class.v8::internal::compiler::turboshaft::ConstOrV.445" = type { %"class.std::optional.446", %"class.v8::internal::compiler::turboshaft::V.324" }
%"class.std::tuple.863" = type { %"struct.std::_Tuple_impl.864" }
%"struct.std::_Tuple_impl.864" = type { %"struct.std::_Tuple_impl.802", %"struct.std::_Head_base.777" }
%"class.std::tuple.865" = type { %"struct.std::_Tuple_impl.base.867", [3 x i8] }
%"struct.std::_Tuple_impl.base.867" = type <{ %"struct.std::_Tuple_impl.802", %"struct.std::_Head_base.602" }>
%"class.std::tuple.891" = type { %"struct.std::_Tuple_impl.892" }
%"struct.std::_Tuple_impl.892" = type { %"struct.std::_Tuple_impl.893", %"struct.std::_Head_base.777" }
%"struct.std::_Tuple_impl.893" = type { %"struct.std::_Tuple_impl.894", %"struct.std::_Head_base.776" }
%"struct.std::_Tuple_impl.894" = type { %"struct.std::_Head_base.895" }
%"struct.std::_Head_base.895" = type { %"class.v8::internal::compiler::turboshaft::V.415" }
%"class.v8::base::SmallVector.896" = type { ptr, ptr, ptr, [16 x i8] }
%"class.std::tuple.910" = type { %"struct.std::_Tuple_impl.911" }
%"struct.std::_Tuple_impl.911" = type { %"struct.std::_Tuple_impl.912", %"struct.std::_Head_base.780" }
%"struct.std::_Tuple_impl.912" = type { %"struct.std::_Tuple_impl.913", %"struct.std::_Head_base.786" }
%"struct.std::_Tuple_impl.913" = type { %"struct.std::_Tuple_impl.914", %"struct.std::_Head_base.785" }
%"struct.std::_Tuple_impl.914" = type { %"struct.std::_Tuple_impl.915", %"struct.std::_Head_base.919" }
%"struct.std::_Tuple_impl.915" = type { %"struct.std::_Tuple_impl.916", %"struct.std::_Head_base.918" }
%"struct.std::_Tuple_impl.916" = type { %"struct.std::_Head_base.917" }
%"struct.std::_Head_base.917" = type { %"class.v8::internal::compiler::turboshaft::V.476" }
%"class.v8::internal::compiler::turboshaft::V.476" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"struct.std::_Head_base.918" = type { %"class.v8::internal::compiler::turboshaft::V.476" }
%"struct.std::_Head_base.919" = type { %"class.v8::internal::compiler::turboshaft::V.476" }
%"class.std::tuple.920" = type { %"struct.std::_Tuple_impl.921" }
%"struct.std::_Tuple_impl.921" = type { %"struct.std::_Tuple_impl.922", %"struct.std::_Head_base.780" }
%"struct.std::_Tuple_impl.922" = type { %"struct.std::_Tuple_impl.923", %"struct.std::_Head_base.786" }
%"struct.std::_Tuple_impl.923" = type { %"struct.std::_Tuple_impl.924", %"struct.std::_Head_base.925" }
%"struct.std::_Tuple_impl.924" = type { %"struct.std::_Head_base.919" }
%"struct.std::_Head_base.925" = type { %"class.v8::internal::compiler::turboshaft::V.788" }
%"class.std::tuple.936" = type { %"struct.std::_Tuple_impl.937" }
%"struct.std::_Tuple_impl.937" = type { %"struct.std::_Tuple_impl.938", %"struct.std::_Head_base.777" }
%"struct.std::_Tuple_impl.938" = type { %"struct.std::_Tuple_impl.939", %"struct.std::_Head_base.796" }
%"struct.std::_Tuple_impl.939" = type { %"struct.std::_Tuple_impl.924", %"struct.std::_Head_base.785" }
%"class.v8::base::SmallVector.967" = type <{ ptr, ptr, ptr, [4 x i8], [4 x i8] }>
%"class.std::tuple.978" = type { %"struct.std::_Tuple_impl.979" }
%"struct.std::_Tuple_impl.979" = type { %"struct.std::_Tuple_impl.980", %"struct.std::_Head_base.777" }
%"struct.std::_Tuple_impl.980" = type { %"struct.std::_Tuple_impl.981", %"struct.std::_Head_base.776" }
%"struct.std::_Tuple_impl.981" = type { %"struct.std::_Head_base.982" }
%"struct.std::_Head_base.982" = type { %"class.v8::internal::compiler::turboshaft::V.476" }
%"class.std::tuple.1030" = type { %"struct.std::_Tuple_impl.1031" }
%"struct.std::_Tuple_impl.1031" = type { %"struct.std::_Tuple_impl.605", %"struct.std::_Head_base.587" }
%"class.v8::base::SmallVector.926" = type <{ ptr, ptr, ptr, [28 x i8], [4 x i8] }>
%"class.v8::base::SmallVector.931" = type <{ ptr, ptr, ptr, [20 x i8], [4 x i8] }>
%"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry" = type <{ %"struct.v8::internal::compiler::turboshaft::VariableData", %"class.v8::internal::compiler::turboshaft::OpIndex", i32, i32, [4 x i8] }>
%"struct.v8::internal::compiler::turboshaft::VariableData" = type { %"class.v8::internal::compiler::turboshaft::MaybeRegisterRepresentation", i8, %"class.v8::base::IntrusiveSetIndex" }
%"class.v8::base::IntrusiveSetIndex" = type { i64 }
%"class.v8::internal::compiler::turboshaft::Label.988" = type { %"class.v8::internal::compiler::turboshaft::LabelBase.base.994", [7 x i8] }
%"class.v8::internal::compiler::turboshaft::LabelBase.base.994" = type <{ %"struct.v8::internal::compiler::turboshaft::LabelBase<false, v8::internal::compiler::turboshaft::WordWithBits<64>>::BlockData", i8 }>
%"struct.v8::internal::compiler::turboshaft::LabelBase<false, v8::internal::compiler::turboshaft::WordWithBits<64>>::BlockData" = type { ptr, %"class.v8::base::SmallVector.589", %"class.std::tuple.990", %"class.v8::SourceLocation" }
%"class.std::tuple.990" = type { %"struct.std::_Tuple_impl.991" }
%"struct.std::_Tuple_impl.991" = type { %"struct.std::_Head_base.992" }
%"struct.std::_Head_base.992" = type { %"class.v8::base::SmallVector.993" }
%"class.v8::base::SmallVector.993" = type { ptr, ptr, ptr, [8 x i8] }
%"class.std::tuple.996" = type { %"struct.std::_Tuple_impl.997" }
%"struct.std::_Tuple_impl.997" = type { %"struct.std::_Head_base.998" }
%"struct.std::_Head_base.998" = type { %"class.v8::internal::compiler::turboshaft::ConstOrV" }
%"class.std::tuple.999" = type { %"struct.std::_Tuple_impl.base.1003", [3 x i8] }
%"struct.std::_Tuple_impl.base.1003" = type <{ %"struct.std::_Tuple_impl.1001", %"struct.std::_Head_base.602" }>
%"struct.std::_Tuple_impl.1001" = type { %"struct.std::_Head_base.1002" }
%"struct.std::_Head_base.1002" = type { %"class.v8::internal::compiler::turboshaft::V.415" }
%"class.std::tuple.1014" = type { %"struct.std::_Tuple_impl.1015" }
%"struct.std::_Tuple_impl.1015" = type { %"struct.std::_Head_base.1016" }
%"struct.std::_Head_base.1016" = type { %"class.v8::internal::compiler::turboshaft::V.1017" }
%"class.v8::internal::compiler::turboshaft::V.1017" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"struct.v8::internal::compiler::ElementAccess" = type <{ i8, [3 x i8], i32, %"class.v8::internal::compiler::Type", %"class.v8::internal::MachineType", i8, [5 x i8] }>
%"class.v8::internal::SmallZoneVector.1065" = type { %"class.v8::base::SmallVector.1066" }
%"class.v8::base::SmallVector.1066" = type { %"class.v8::internal::ZoneAllocator.1067", ptr, ptr, ptr, [128 x i8] }
%"class.v8::internal::ZoneAllocator.1067" = type { ptr }
%"class.v8::internal::compiler::turboshaft::FrameStateData::Builder" = type <{ %"class.v8::base::SmallVector.1069", %"class.v8::base::SmallVector.1070", %"class.v8::base::SmallVector.1071", %"class.v8::base::SmallVector.376", i8, [7 x i8] }>
%"class.v8::base::SmallVector.1069" = type { ptr, ptr, ptr, [32 x i8] }
%"class.v8::base::SmallVector.1070" = type { ptr, ptr, ptr, [64 x i8] }
%"class.v8::base::SmallVector.1071" = type { ptr, ptr, ptr, [64 x i8] }
%"class.v8::base::SmallVector.1196" = type { ptr, ptr, ptr, [40 x i8] }
%"class.v8::internal::SmallZoneVector.1197" = type { %"class.v8::base::SmallVector.1198" }
%"class.v8::base::SmallVector.1198" = type { %"class.v8::internal::ZoneAllocator.1067", ptr, ptr, ptr, [32 x i8] }
%"class.std::tuple.1223" = type { %"struct.std::_Tuple_impl.1224" }
%"struct.std::_Tuple_impl.1224" = type { %"struct.std::_Tuple_impl.1225", %"struct.std::_Head_base.649" }
%"struct.std::_Tuple_impl.1225" = type { %"struct.std::_Tuple_impl.784", %"struct.std::_Head_base.1002" }
%"class.std::tuple.1231" = type { %"struct.std::_Tuple_impl.1232" }
%"struct.std::_Tuple_impl.1232" = type { %"struct.std::_Tuple_impl.1233", %"struct.std::_Head_base.649" }
%"struct.std::_Tuple_impl.1233" = type { %"struct.std::_Tuple_impl.1234", %"struct.std::_Head_base.786" }
%"struct.std::_Tuple_impl.1234" = type { %"struct.std::_Tuple_impl.1235", %"struct.std::_Head_base.895" }
%"struct.std::_Tuple_impl.1235" = type { %"struct.std::_Head_base.1236" }
%"struct.std::_Head_base.1236" = type { %"class.v8::internal::compiler::turboshaft::V.1207" }
%"class.v8::internal::compiler::turboshaft::V.1207" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.std::tuple.1237" = type { %"struct.std::_Tuple_impl.1238" }
%"struct.std::_Tuple_impl.1238" = type { %"struct.std::_Tuple_impl.1239", %"struct.std::_Head_base.649" }
%"struct.std::_Tuple_impl.1239" = type { %"struct.std::_Tuple_impl.1240", %"struct.std::_Head_base.786" }
%"struct.std::_Tuple_impl.1240" = type { %"struct.std::_Tuple_impl.1241", %"struct.std::_Head_base.895" }
%"struct.std::_Tuple_impl.1241" = type { %"struct.std::_Head_base.1242" }
%"struct.std::_Head_base.1242" = type { %"class.v8::internal::compiler::turboshaft::V.325" }
%"struct.std::pair.1252" = type <{ %"class.v8::internal::compiler::turboshaft::OpIndex", %"class.v8::internal::compiler::turboshaft::MemoryRepresentation", [3 x i8] }>
%"class.v8::internal::compiler::turboshaft::MemoryRepresentation" = type { i8 }
%"class.v8::internal::Signature.1034" = type { i64, i64, ptr }
%"class.v8::internal::FixedSizeSignature" = type <{ %"class.v8::internal::Signature.1034", [2 x %"class.v8::internal::MachineType"], [4 x i8] }>
%"class.std::tuple.1344" = type { %"struct.std::_Tuple_impl.1345" }
%"struct.std::_Tuple_impl.1345" = type { %"struct.std::_Tuple_impl.802", %"struct.std::_Head_base.1341" }
%"struct.std::_Head_base.1341" = type { %"class.v8::internal::compiler::turboshaft::V.1336" }
%"class.v8::internal::compiler::turboshaft::V.1336" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.std::tuple.1339" = type { %"struct.std::_Tuple_impl.1340" }
%"struct.std::_Tuple_impl.1340" = type { %"struct.std::_Head_base.1341" }
%"class.std::tuple.1307" = type { %"struct.std::_Tuple_impl.1308" }
%"struct.std::_Tuple_impl.1308" = type { %"struct.std::_Tuple_impl.783", %"struct.std::_Head_base.1309" }
%"struct.std::_Head_base.1309" = type { %"class.v8::internal::compiler::turboshaft::V.1302" }
%"class.v8::internal::compiler::turboshaft::V.1302" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"struct.v8::internal::wasm::StringConstImmediate" = type { i32, i32 }
%"struct.std::array.1270" = type { [4 x %"struct.v8::internal::wasm::TurboshaftGraphBuildingInterface::Value"] }
%"struct.v8::internal::wasm::ArrayIndexImmediate" = type <{ %"struct.v8::internal::wasm::TypeIndexImmediate", ptr, i8, [7 x i8] }>
%"struct.std::array.1354" = type { [5 x %"struct.v8::internal::wasm::TurboshaftGraphBuildingInterface::Value"] }
%"class.std::vector.1355" = type { %"struct.std::_Vector_base.1356" }
%"struct.std::_Vector_base.1356" = type { %"struct.std::_Vector_base<v8::internal::wasm::ValueType, std::allocator<v8::internal::wasm::ValueType>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::wasm::ValueType, std::allocator<v8::internal::wasm::ValueType>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::wasm::ValueType, std::allocator<v8::internal::wasm::ValueType>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::wasm::ValueType, std::allocator<v8::internal::wasm::ValueType>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator.1357" = type { i8 }
%"class.std::tuple.1278" = type { %"struct.std::_Tuple_impl.1279" }
%"struct.std::_Tuple_impl.1279" = type { %"struct.std::_Tuple_impl.1225", %"struct.std::_Head_base.780" }
%"class.std::tuple.1294" = type { %"struct.std::_Tuple_impl.1295" }
%"struct.std::_Tuple_impl.1295" = type { %"struct.std::_Tuple_impl.1225", %"struct.std::_Head_base.777" }
%"class.std::tuple.1326" = type { %"struct.std::_Tuple_impl.1327" }
%"struct.std::_Tuple_impl.1327" = type { %"struct.std::_Tuple_impl.1328", %"struct.std::_Head_base.649" }
%"struct.std::_Tuple_impl.1328" = type { %"struct.std::_Tuple_impl.1329", %"struct.std::_Head_base.786" }
%"struct.std::_Tuple_impl.1329" = type { %"struct.std::_Tuple_impl.1330", %"struct.std::_Head_base.785" }
%"struct.std::_Tuple_impl.1330" = type { %"struct.std::_Tuple_impl.1331", %"struct.std::_Head_base.1289" }
%"struct.std::_Tuple_impl.1331" = type { %"struct.std::_Head_base.918" }
%"struct.std::_Head_base.1289" = type { %"class.v8::internal::compiler::turboshaft::V.772" }
%"class.std::tuple.1271" = type { %"struct.std::_Tuple_impl.1272" }
%"struct.std::_Tuple_impl.1272" = type { %"struct.std::_Tuple_impl.1273", %"struct.std::_Head_base.649" }
%"struct.std::_Tuple_impl.1273" = type { %"struct.std::_Tuple_impl.939", %"struct.std::_Head_base.786" }
%"class.std::tuple.1284" = type { %"struct.std::_Tuple_impl.1285" }
%"struct.std::_Tuple_impl.1285" = type { %"struct.std::_Tuple_impl.1286", %"struct.std::_Head_base.649" }
%"struct.std::_Tuple_impl.1286" = type { %"struct.std::_Tuple_impl.1287", %"struct.std::_Head_base.786" }
%"struct.std::_Tuple_impl.1287" = type { %"struct.std::_Tuple_impl.1288", %"struct.std::_Head_base.785" }
%"struct.std::_Tuple_impl.1288" = type { %"struct.std::_Head_base.1289" }
%"class.std::tuple.1312" = type { %"struct.std::_Tuple_impl.1313" }
%"struct.std::_Tuple_impl.1313" = type { %"struct.std::_Tuple_impl.1314", %"struct.std::_Head_base.649" }
%"struct.std::_Tuple_impl.1314" = type { %"struct.std::_Tuple_impl.1315", %"struct.std::_Head_base.786" }
%"struct.std::_Tuple_impl.1315" = type { %"struct.std::_Tuple_impl.1316", %"struct.std::_Head_base.785" }
%"struct.std::_Tuple_impl.1316" = type { %"struct.std::_Tuple_impl.915", %"struct.std::_Head_base.1317" }
%"struct.std::_Head_base.1317" = type { %"class.v8::internal::compiler::turboshaft::V.1302" }
%"class.v8::base::SmallVector.1332" = type { ptr, ptr, ptr, [24 x i8] }
%"class.std::tuple.1409" = type { %"struct.std::_Tuple_impl.1410" }
%"struct.std::_Tuple_impl.1410" = type { %"struct.std::_Tuple_impl.1411", %"struct.std::_Head_base.780" }
%"struct.std::_Tuple_impl.1411" = type { %"struct.std::_Tuple_impl.1412", %"struct.std::_Head_base.786" }
%"struct.std::_Tuple_impl.1412" = type { %"struct.std::_Tuple_impl.1413", %"struct.std::_Head_base.785" }
%"struct.std::_Tuple_impl.1413" = type { %"struct.std::_Tuple_impl.1414", %"struct.std::_Head_base.919" }
%"struct.std::_Tuple_impl.1414" = type { %"struct.std::_Tuple_impl.1415", %"struct.std::_Head_base.918" }
%"struct.std::_Tuple_impl.1415" = type { %"struct.std::_Head_base.1416" }
%"struct.std::_Head_base.1416" = type { %"class.v8::internal::compiler::turboshaft::V.454" }
%"class.v8::internal::compiler::turboshaft::V.454" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.std::tuple.1421" = type { %"struct.std::_Tuple_impl.1422" }
%"struct.std::_Tuple_impl.1422" = type { %"struct.std::_Tuple_impl.1423", %"struct.std::_Head_base.780" }
%"struct.std::_Tuple_impl.1423" = type { %"struct.std::_Tuple_impl.1424", %"struct.std::_Head_base.786" }
%"struct.std::_Tuple_impl.1424" = type { %"struct.std::_Tuple_impl.1425", %"struct.std::_Head_base.785" }
%"struct.std::_Tuple_impl.1425" = type { %"struct.std::_Tuple_impl.1426", %"struct.std::_Head_base.919" }
%"struct.std::_Tuple_impl.1426" = type { %"struct.std::_Tuple_impl.1427", %"struct.std::_Head_base.918" }
%"struct.std::_Tuple_impl.1427" = type { %"struct.std::_Tuple_impl.1428", %"struct.std::_Head_base.917" }
%"struct.std::_Tuple_impl.1428" = type { %"struct.std::_Head_base.1429" }
%"struct.std::_Head_base.1429" = type { %"class.v8::internal::compiler::turboshaft::V.322" }
%"class.v8::internal::compiler::turboshaft::V.322" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.std::tuple.1387" = type { %"struct.std::_Tuple_impl.base.1401", [7 x i8] }
%"struct.std::_Tuple_impl.base.1401" = type { %"struct.std::_Tuple_impl.1389", %"struct.std::_Head_base.602" }
%"struct.std::_Tuple_impl.1389" = type { %"struct.std::_Tuple_impl.1390", %"struct.std::_Head_base.1392" }
%"struct.std::_Tuple_impl.1390" = type { %"struct.std::_Head_base.1391" }
%"struct.std::_Head_base.1391" = type { %"class.v8::internal::compiler::turboshaft::Label.594" }
%"struct.std::_Head_base.1392" = type { %"class.v8::internal::compiler::turboshaft::LoopLabel" }
%"class.v8::internal::compiler::turboshaft::LoopLabel" = type <{ %"class.v8::internal::compiler::turboshaft::LabelBase.base.1394", [7 x i8], %"struct.v8::internal::compiler::turboshaft::LabelBase<true>::BlockData", %"class.std::optional.1395", [6 x i8] }>
%"class.v8::internal::compiler::turboshaft::LabelBase.base.1394" = type <{ %"struct.v8::internal::compiler::turboshaft::LabelBase<true>::BlockData", i8 }>
%"struct.v8::internal::compiler::turboshaft::LabelBase<true>::BlockData" = type { ptr, %"class.v8::base::SmallVector.589", [8 x i8], %"class.v8::SourceLocation" }
%"class.std::optional.1395" = type { %"struct.std::_Optional_base.1396" }
%"struct.std::_Optional_base.1396" = type { %"struct.std::_Optional_payload.1398" }
%"struct.std::_Optional_payload.1398" = type { %"struct.std::_Optional_payload_base.1399" }
%"struct.std::_Optional_payload_base.1399" = type { i8, i8 }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.v8::internal::wasm::HeapType" = type { %"class.v8::internal::wasm::ValueTypeBase" }
%"class.std::tuple.1361" = type { %"struct.std::_Tuple_impl.1362" }
%"struct.std::_Tuple_impl.1362" = type { %"struct.std::_Tuple_impl.1363", %"struct.std::_Head_base.1366" }
%"struct.std::_Tuple_impl.1363" = type { %"struct.std::_Tuple_impl.1364", %"struct.std::_Head_base.786" }
%"struct.std::_Tuple_impl.1364" = type { %"struct.std::_Head_base.1365" }
%"struct.std::_Head_base.1365" = type { %"class.v8::internal::compiler::turboshaft::V.325" }
%"struct.std::_Head_base.1366" = type { %"class.v8::internal::compiler::turboshaft::V.454" }
%"class.v8::internal::compiler::turboshaft::ScopedVar.1385" = type { %"class.v8::internal::compiler::turboshaft::Var.1386" }
%"class.v8::internal::compiler::turboshaft::Var.1386" = type { %"class.v8::internal::compiler::turboshaft::SnapshotTableKey", ptr }
%"class.v8::internal::compiler::turboshaft::SnapshotTableKey" = type { ptr }
%"class.v8::internal::FixedSizeSignature.1448" = type <{ %"class.v8::internal::Signature.1034", [7 x %"class.v8::internal::MachineType"], [2 x i8] }>
%"class.v8::internal::FixedSizeSignature.1464" = type <{ %"class.v8::internal::Signature.1034", [6 x %"class.v8::internal::MachineType"], [4 x i8] }>
%"class.std::tuple.1468" = type { %"struct.std::_Tuple_impl.1469" }
%"struct.std::_Tuple_impl.1469" = type { %"struct.std::_Tuple_impl.912", %"struct.std::_Head_base.649" }
%"class.std::tuple.1472" = type { %"struct.std::_Tuple_impl.1473" }
%"struct.std::_Tuple_impl.1473" = type { %"struct.std::_Tuple_impl.1474", %"struct.std::_Head_base.649" }
%"struct.std::_Tuple_impl.1474" = type { %"struct.std::_Tuple_impl.1475", %"struct.std::_Head_base.1002" }
%"struct.std::_Tuple_impl.1475" = type { %"struct.std::_Tuple_impl.914", %"struct.std::_Head_base.895" }
%"class.std::tuple.1478" = type { %"struct.std::_Tuple_impl.1479" }
%"struct.std::_Tuple_impl.1479" = type { %"struct.std::_Tuple_impl.1480", %"struct.std::_Head_base.1482" }
%"struct.std::_Tuple_impl.1480" = type { %"struct.std::_Tuple_impl.1481", %"struct.std::_Head_base.1002" }
%"struct.std::_Tuple_impl.1481" = type { %"struct.std::_Tuple_impl.1241", %"struct.std::_Head_base.785" }
%"struct.std::_Head_base.1482" = type { %"class.v8::internal::compiler::turboshaft::V.476" }
%"class.std::tuple.1485" = type { %"struct.std::_Tuple_impl.1486" }
%"struct.std::_Tuple_impl.1486" = type { %"struct.std::_Tuple_impl.1487", %"struct.std::_Head_base.649" }
%"struct.std::_Tuple_impl.1487" = type { %"struct.std::_Tuple_impl.1488", %"struct.std::_Head_base.1002" }
%"struct.std::_Tuple_impl.1488" = type { %"struct.std::_Tuple_impl.1489", %"struct.std::_Head_base.785" }
%"struct.std::_Tuple_impl.1489" = type { %"struct.std::_Tuple_impl.1490", %"struct.std::_Head_base.919" }
%"struct.std::_Tuple_impl.1490" = type { %"struct.std::_Head_base.1491" }
%"struct.std::_Head_base.1491" = type { %"class.v8::internal::compiler::turboshaft::V.325" }
%"class.v8::base::SmallVector.1453" = type <{ ptr, ptr, ptr, [5 x i8], [3 x i8] }>
%class.anon.1459 = type { ptr }
%"class.v8::base::SmallVector.1466" = type <{ ptr, ptr, ptr, [4 x i8], [4 x i8] }>
%"struct.v8::internal::wasm::SimdLaneImmediate" = type { i8, i32 }
%"struct.v8::internal::wasm::Simd128Immediate" = type { [16 x i8] }
%"class.v8::internal::FixedSizeSignature.1532" = type <{ %"class.v8::internal::Signature.1034", [3 x %"class.v8::internal::MachineType"], [2 x i8] }>
%"class.std::tuple.1535" = type { %"struct.std::_Tuple_impl.1536" }
%"struct.std::_Tuple_impl.1536" = type { %"struct.std::_Tuple_impl.1537", %"struct.std::_Head_base.780" }
%"struct.std::_Tuple_impl.1537" = type { %"struct.std::_Tuple_impl.1538", %"struct.std::_Head_base.1002" }
%"struct.std::_Tuple_impl.1538" = type { %"struct.std::_Tuple_impl.1539", %"struct.std::_Head_base.785" }
%"struct.std::_Tuple_impl.1539" = type { %"struct.std::_Head_base.1540" }
%"struct.std::_Head_base.1540" = type { %"class.v8::internal::compiler::turboshaft::V.1534" }
%"class.v8::internal::compiler::turboshaft::V.1534" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.std::tuple.1541" = type { %"struct.std::_Tuple_impl.1542" }
%"struct.std::_Tuple_impl.1542" = type { %"struct.std::_Tuple_impl.1543", %"struct.std::_Head_base.780" }
%"struct.std::_Tuple_impl.1543" = type { %"struct.std::_Tuple_impl.1544", %"struct.std::_Head_base.1002" }
%"struct.std::_Tuple_impl.1544" = type { %"struct.std::_Tuple_impl.1539", %"struct.std::_Head_base.1545" }
%"struct.std::_Head_base.1545" = type { %"class.v8::internal::compiler::turboshaft::V.1534" }

$_ZNSt14priority_queueIPN2v88internal4wasm12InliningTreeESt6vectorIS4_SaIS4_EENS2_16TreeNodeOrderingEE4pushEOS4_ = comdat any

$_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EEC2IJPNS0_4ZoneERPNS1_14CompilationEnvERNS0_8compiler10turboshaft11TSAssemblerIJNSF_21SelectLoweringReducerENSF_23DataViewLoweringReducerENSF_15VariableReducerEEEERPSt10unique_ptrINS1_18AssumptionsJournalESt14default_deleteISN_EERPNS0_10ZoneVectorINS0_20WasmInliningPositionEEERiRKbRPKNS1_16WireBytesStorageERPNS1_24WasmFunctionCoverageDataEEEESA_PKNS1_10WasmModuleENS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesERKNS1_12FunctionBodyEDpOT_ = comdat any

$_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE6DecodeEv = comdat any

$_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EED2Ev = comdat any

$_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEC2EPNS2_12PipelineDataERNS2_5GraphESG_PNS0_4ZoneE = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEEC2EPNS0_4ZoneE = comdat any

$_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE17_M_initialize_mapEm = comdat any

$_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_push_back_auxIJRPS8_mEEEvDpOT_ = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE17_M_reallocate_mapEmb = comdat any

end_hunk_0
begin_hunk_1
$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface16StoreInStackSlotENS0_8compiler10turboshaft7OpIndexENS1_9ValueTypeE = comdat any

$_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_WhileESt8functionIFNS2_1VINS2_12WordWithBitsILm32EEEEEvEE = comdat any

$_ZN2v88internal8compiler10turboshaft9LoopLabelIJEE8BindLoopINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbEERT_NS_14SourceLocationE = comdat any

$_ZN2v88internal8compiler10turboshaft9LoopLabelIJEE4GotoINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEEvRT_RKSt5tupleIJEE = comdat any

$_ZNSt17_Function_handlerIFN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEEvEZNS1_4wasm32TurboshaftGraphBuildingInterface13ArrayFillImplENS4_INS1_9WasmArrayEEES7_NS4_INS3_3AnyEEENS3_7OpIndexEPKNS9_9ArrayTypeEbEUlvE_E9_M_invokeERKSt9_Any_data = comdat any

$_ZNSt17_Function_handlerIFN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEEvEZNS1_4wasm32TurboshaftGraphBuildingInterface13ArrayFillImplENS4_INS1_9WasmArrayEEES7_NS4_INS3_3AnyEEENS3_7OpIndexEPKNS9_9ArrayTypeEbEUlvE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ArraySetOpEJNS2_14ShadowyOpIndexESG_SG_NS0_4wasm9ValueTypeESt8optionalINS0_17AtomicMemoryOrderEEEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft9LoopLabelIJEE7EndLoopINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEEvRT_ = comdat any

$_ZN2v88internal8compiler10turboshaft9LabelBaseILb1EJEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbEERT_NS_14SourceLocationE = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor19WasmArrayNewSegmentEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNSA_11arguments_tENS2_17CheckForExceptionEQntsrSA_13kNeedsContext = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor20WasmArrayInitSegmentEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNSA_11arguments_tENS2_17CheckForExceptionEQntsrSA_13kNeedsContext = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface16BoundsCheckArrayENS0_8compiler10turboshaft1VINS0_5UnionIJNS0_9WasmArrayENS0_8WasmNullEEEEEENS5_INS4_12WordWithBitsILm32EEEEENS1_9ValueTypeE = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_13ArrayLengthOpEJNS2_14ShadowyOpIndexENS1_12CheckForNullEEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ArrayGetOpEJNS2_14ShadowyOpIndexESG_PKNS0_4wasm9ArrayTypeEbSt8optionalINS0_17AtomicMemoryOrderEEEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface26BoundsCheckArrayWithLengthENS0_8compiler10turboshaft1VINS0_5UnionIJNS0_9WasmArrayENS0_8WasmNullEEEEEENS5_INS4_12WordWithBitsILm32EEEEESD_NS3_12CheckForNullE = comdat any

$_ZNSt17_Function_handlerIFN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEEvEZNS1_4wasm32TurboshaftGraphBuildingInterface9ArrayCopyEPNS9_15WasmFullDecoderINS9_7Decoder15NoValidationTagESA_LNS9_12DecodingModeE0EEERKNSA_5ValueESJ_SJ_SJ_RKNS9_19ArrayIndexImmediateESJ_EUlvE_E9_M_invokeERKSt9_Any_data = comdat any

$_ZNSt17_Function_handlerIFN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEEvEZNS1_4wasm32TurboshaftGraphBuildingInterface9ArrayCopyEPNS9_15WasmFullDecoderINS9_7Decoder15NoValidationTagESA_LNS9_12DecodingModeE0EEERKNSA_5ValueESJ_SJ_SJ_RKNS9_19ArrayIndexImmediateESJ_EUlvE_E10_M_managerERSt9_Any_dataRKSP_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEEvEZNS1_4wasm32TurboshaftGraphBuildingInterface9ArrayCopyEPNS9_15WasmFullDecoderINS9_7Decoder15NoValidationTagESA_LNS9_12DecodingModeE0EEERKNSA_5ValueESJ_SJ_SJ_RKNS9_19ArrayIndexImmediateESJ_EUlvE0_E9_M_invokeERKSt9_Any_data = comdat any

$_ZNSt17_Function_handlerIFN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEEvEZNS1_4wasm32TurboshaftGraphBuildingInterface9ArrayCopyEPNS9_15WasmFullDecoderINS9_7Decoder15NoValidationTagESA_LNS9_12DecodingModeE0EEERKNSA_5ValueESJ_SJ_SJ_RKNS9_19ArrayIndexImmediateESJ_EUlvE0_E10_M_managerERSt9_Any_dataRKSP_St18_Manager_operation = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface12BrOnCastDescEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_8HeapTypeERKNS2_5ValueESC_PSA_jb = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8BrOnCastEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_8HeapTypeERKNS2_5ValueEPSA_jb = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface16BrOnCastDescFailEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_8HeapTypeERKNS2_5ValueESC_PSA_jb = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface12BrOnCastFailEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_8HeapTypeERKNS2_5ValueEPSA_jb = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface12BrOnCastImplEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS0_8compiler10turboshaft1VINS0_3MapEEENS9_19WasmTypeCheckConfigERKNS2_5ValueEPSF_jb = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface16BrOnCastFailImplEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS0_8compiler10turboshaft1VINS0_3MapEEENS9_19WasmTypeCheckConfigERKNS2_5ValueEPSF_jb = comdat any

$_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE19DecodeNumericOpcodeENS1_10WasmOpcodeEj = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface10MemoryInitEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_19MemoryInitImmediateERKNS2_5ValueESE_SE_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8DataDropEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_14IndexImmediateE = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface10MemoryCopyEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_19MemoryCopyImmediateERKNS2_5ValueESE_SE_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface10MemoryFillEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_20MemoryIndexImmediateERKNS2_5ValueESE_SE_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9TableInitEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_18TableInitImmediateERKNS2_5ValueESE_SE_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8ElemDropEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_14IndexImmediateE = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9TableCopyEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_18TableCopyImmediateERKNS2_5ValueESE_SE_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9TableGrowEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_19TableIndexImmediateERKNS2_5ValueESE_PSC_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9TableSizeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_19TableIndexImmediateEPNS2_5ValueE = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9TableFillEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_19TableIndexImmediateERKNS2_5ValueESE_SE_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface13InlineMemCopyEPKNS1_10WasmMemoryES5_NS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEESB_SB_i = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface18MemCopyBoundsCheckEPKNS1_10WasmMemoryES5_NS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEESB_SB_ = comdat any

$_ZZN2v88internal4wasm32TurboshaftGraphBuildingInterface18MemCopyBoundsCheckEPKNS1_10WasmMemoryES5_NS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEESB_SB_ENKUlS5_SB_SB_E_clES5_SB_SB_ = comdat any

$_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft20MemoryRepresentationELm5ESaIS5_EE11FreeStorageEv = comdat any

$_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface13InlineMemFillEPKNS1_10WasmMemoryENS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEENS8_INS9_ILm32EEEEESB_i = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface18MemFillBoundsCheckEPKNS1_10WasmMemoryENS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEESB_ = comdat any

$_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft20MemoryRepresentationELm4ESaIS5_EE11FreeStorageEv = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor13WasmTableInitEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNSA_11arguments_tENS2_17CheckForExceptionEQntsrSA_13kNeedsContext = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor13WasmTableCopyEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNSA_11arguments_tENS2_17CheckForExceptionEQntsrSA_13kNeedsContext = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor13WasmTableGrowEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNSA_11arguments_tENS2_17CheckForExceptionEQntsrSA_13kNeedsContext = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor13WasmTableFillEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNSA_11arguments_tENS2_17CheckForExceptionEQntsrSA_13kNeedsContext = comdat any

$_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE16DecodeSimdOpcodeENS1_10WasmOpcodeEj = comdat any

$_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE15SimdExtractLaneENS1_10WasmOpcodeENS1_9ValueTypeEj = comdat any

$_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE15SimdReplaceLaneENS1_10WasmOpcodeENS1_9ValueTypeEj = comdat any

$_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE17Simd8x16ShuffleOpEj = comdat any

$_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE22DecodeLoadTransformMemENS1_8LoadTypeENS1_22LoadTransformationKindEj = comdat any

$_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeLoadLaneENS1_10WasmOpcodeENS1_8LoadTypeEj = comdat any

$_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE15DecodeStoreLaneENS1_10WasmOpcodeENS1_9StoreTypeEj = comdat any

$_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11SimdConstOpEj = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface6SimdOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeEPKNS2_5ValueEPSA_ = comdat any

$_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EE8ValidateEPKhNS1_10WasmOpcodeERNS1_17SimdLaneImmediateE = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface10SimdLaneOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS1_17SimdLaneImmediateENS_4base6VectorIKNS2_5ValueEEEPSF_ = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_16Simd128ShuffleOpEJNS2_14ShadowyOpIndexESG_NSF_4KindEPKhEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface13LoadTransformEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_8LoadTypeENS1_22LoadTransformationKindERKNS1_21MemoryAccessImmediateERKNS2_5ValueEPSE_ = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_22Simd128LoadTransformOpEJNS2_14ShadowyOpIndexESG_NS2_6LoadOp4KindENSF_13TransformKindEiEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8LoadLaneEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_8LoadTypeERKNS2_5ValueESC_RKNS1_21MemoryAccessImmediateEhPSA_ = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_19Simd128LaneMemoryOpEJNS2_14ShadowyOpIndexESG_SG_NSF_4ModeENS2_6LoadOp4KindENSF_8LaneKindEhiEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9StoreLaneEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_9StoreTypeERKNS1_21MemoryAccessImmediateERKNS2_5ValueESF_h = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_14Simd128BinopOpEJNS2_14ShadowyOpIndexESG_NSF_4KindEEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_14Simd128UnaryOpEJNS2_14ShadowyOpIndexENSF_4KindEEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_14Simd128ShiftOpEJNS2_14ShadowyOpIndexESG_NSF_4KindEEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_13Simd128TestOpEJNS2_14ShadowyOpIndexENSF_4KindEEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_16Simd128TernaryOpEJNS2_14ShadowyOpIndexESG_SG_NSF_4KindEEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18DecodeAtomicOpcodeENS1_10WasmOpcodeEj = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface15StructAtomicGetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS2_5ValueERKNS1_14FieldImmediateEbNS0_17AtomicMemoryOrderEPS9_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface15StructAtomicSetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS2_5ValueERKNS1_14FieldImmediateESB_NS0_17AtomicMemoryOrderE = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface15StructAtomicRMWEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS2_5ValueERKNS1_14FieldImmediateESC_NS0_17AtomicMemoryOrderEPSA_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27StructAtomicCompareExchangeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS2_5ValueERKNS1_14FieldImmediateESC_SC_NS0_17AtomicMemoryOrderEPSA_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface14ArrayAtomicGetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS2_5ValueERKNS1_19ArrayIndexImmediateESB_bNS0_17AtomicMemoryOrderEPS9_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface14ArrayAtomicSetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS2_5ValueERKNS1_19ArrayIndexImmediateESB_SB_NS0_17AtomicMemoryOrderE = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface14ArrayAtomicRMWEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS2_5ValueERKNS1_19ArrayIndexImmediateESC_SC_NS0_17AtomicMemoryOrderEPSA_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface26ArrayAtomicCompareExchangeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS2_5ValueERKNS1_19ArrayIndexImmediateESC_SC_SC_NS0_17AtomicMemoryOrderEPSA_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8AtomicOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeEPKNS2_5ValueEmRKNS1_21MemoryAccessImmediateEPSA_ = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_15MemoryBarrierOpEJNS0_17AtomicMemoryOrderEEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7PauseOpEJEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_17StructAtomicRMWOpEJNS2_14ShadowyOpIndexESG_NS2_9OptionalVINS2_3AnyEEENS2_11AtomicRMWOp5BinOpEPKNS0_4wasm10StructTypeENSM_15ModuleTypeIndexEiNS1_12CheckForNullENS0_17AtomicMemoryOrderEEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_16ArrayAtomicRMWOpEJNS2_14ShadowyOpIndexESG_SG_NS2_9OptionalVINS2_3AnyEEENS2_11AtomicRMWOp5BinOpENS0_4wasm9ValueTypeENS0_17AtomicMemoryOrderEEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface12AtomicNotifyEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_21MemoryAccessImmediateENS0_8compiler10turboshaft7OpIndexESE_PNS2_5ValueE = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface10AtomicWaitEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS1_21MemoryAccessImmediateENS0_8compiler10turboshaft7OpIndexESF_NSE_1VINSE_12WordWithBitsILm64EEEEEPNS2_5ValueE = comdat any

$_ZZN2v88internal4wasm32TurboshaftGraphBuildingInterface8AtomicOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeEPKNS2_5ValueEmRKNS1_21MemoryAccessImmediateEPSA_EN12AtomicOpInfo3GetES9_ = comdat any

$_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE24BuildChangeInt64ToBigIntENS4_1VINS4_12WordWithBitsILm64EEEEENS0_12StubCallModeE = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor17WasmI32AtomicWaitEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNSA_11arguments_tENS2_17CheckForExceptionEQntsrSA_13kNeedsContext = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor17WasmI64AtomicWaitEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNSA_11arguments_tENS2_17CheckForExceptionEQntsrSA_13kNeedsContext = comdat any

$_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEm = comdat any

$_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE4GrowEm = comdat any

$_ZN2v88internal4wasm32TurboshaftGraphBuildingInterfaceC2EPNS0_4ZoneEPNS1_14CompilationEnvERNS0_8compiler10turboshaft11TSAssemblerIJNS8_21SelectLoweringReducerENS8_23DataViewLoweringReducerENS8_15VariableReducerEEEEPSt10unique_ptrINS1_18AssumptionsJournalESt14default_deleteISG_EEPNS0_10ZoneVectorINS0_20WasmInliningPositionEEEibPKNS1_16WireBytesStorageEPNS1_24WasmFunctionCoverageDataE = comdat any

$_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE18GetPolicyFunctionsEvE5value = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTVN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EEE = comdat any

$_ZTVN2v88internal4wasm7DecoderE = comdat any

$_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE16GetOpcodeHandlerEhE15kOpcodeHandlers = comdat any

$_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE18GetPolicyFunctionsEvE5value = comdat any

$_ZZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE9EmptyNodeEvE10empty_node = comdat any

$_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array = comdat any

$_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE1ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array = comdat any

$_ZTVN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EEE = comdat any

$_ZN2v88internal4wasm8LoadType13kLoadSizeLog2E = comdat any

$_ZN2v88internal4wasm8LoadType10kValueTypeE = comdat any

$_ZN2v88internal4wasm8LoadType9kLoadSizeE = comdat any

$_ZN2v88internal4wasm8LoadType8kMemTypeE = comdat any

$_ZN2v88internal4wasm9StoreType14kStoreSizeLog2E = comdat any

$_ZN2v88internal4wasm9StoreType7kMemRepE = comdat any

$_ZN2v88internal4wasm4impl11kCachedSigsE = comdat any

$_ZN2v88internal4wasm4impl8kSig_s_sE = comdat any

$_ZN2v88internal4wasm4impl8kSig_s_fE = comdat any

$_ZN2v88internal4wasm4impl8kSig_s_dE = comdat any

$_ZN2v88internal4wasm4impl9kSig_s_ssE = comdat any

$_ZN2v88internal4wasm4impl8kSig_s_iE = comdat any

$_ZN2v88internal4wasm4impl8kSig_s_lE = comdat any

$_ZN2v88internal4wasm4impl9kSig_s_siE = comdat any

$_ZN2v88internal4wasm4impl8kSig_i_sE = comdat any

$_ZN2v88internal4wasm4impl9kSig_v_isE = comdat any

$_ZN2v88internal4wasm4impl10kSig_s_sssE = comdat any

$_ZN2v88internal4wasm4impl9kSig_s_isE = comdat any

$_ZN2v88internal4wasm4impl8kSig_d_dE = comdat any

$_ZN2v88internal4wasm4impl9kSig_d_ddE = comdat any

$_ZN2v88internal4wasm4impl8kSig_d_fE = comdat any

$_ZN2v88internal4wasm4impl8kSig_d_iE = comdat any

$_ZN2v88internal4wasm4impl9kSig_d_idE = comdat any

$_ZN2v88internal4wasm4impl8kSig_d_lE = comdat any

$_ZN2v88internal4wasm4impl8kSig_f_dE = comdat any

$_ZN2v88internal4wasm4impl8kSig_f_fE = comdat any

$_ZN2v88internal4wasm4impl9kSig_f_ffE = comdat any

$_ZN2v88internal4wasm4impl8kSig_f_iE = comdat any

$_ZN2v88internal4wasm4impl9kSig_f_ifE = comdat any

$_ZN2v88internal4wasm4impl8kSig_f_lE = comdat any

$_ZN2v88internal4wasm4impl8kSig_i_aE = comdat any

$_ZN2v88internal4wasm4impl9kSig_i_ciE = comdat any

$_ZN2v88internal4wasm4impl8kSig_i_dE = comdat any

$_ZN2v88internal4wasm4impl9kSig_i_ddE = comdat any

$_ZN2v88internal4wasm4impl8kSig_i_fE = comdat any

$_ZN2v88internal4wasm4impl9kSig_i_ffE = comdat any

$_ZN2v88internal4wasm4impl8kSig_i_iE = comdat any

$_ZN2v88internal4wasm4impl9kSig_i_iiE = comdat any

$_ZN2v88internal4wasm4impl10kSig_i_iiiE = comdat any

$_ZN2v88internal4wasm4impl10kSig_i_iilE = comdat any

$_ZN2v88internal4wasm4impl10kSig_i_illE = comdat any

$_ZN2v88internal4wasm4impl8kSig_i_lE = comdat any

$_ZN2v88internal4wasm4impl9kSig_i_liE = comdat any

$_ZN2v88internal4wasm4impl10kSig_i_liiE = comdat any

$_ZN2v88internal4wasm4impl10kSig_i_lilE = comdat any

$_ZN2v88internal4wasm4impl10kSig_i_lllE = comdat any

$_ZN2v88internal4wasm4impl9kSig_i_llE = comdat any

$_ZN2v88internal4wasm4impl9kSig_i_qqE = comdat any

$_ZN2v88internal4wasm4impl8kSig_i_vE = comdat any

$_ZN2v88internal4wasm4impl8kSig_l_dE = comdat any

$_ZN2v88internal4wasm4impl8kSig_l_fE = comdat any

$_ZN2v88internal4wasm4impl8kSig_l_iE = comdat any

$_ZN2v88internal4wasm4impl9kSig_l_ilE = comdat any

$_ZN2v88internal4wasm4impl10kSig_l_illE = comdat any

$_ZN2v88internal4wasm4impl8kSig_l_lE = comdat any

$_ZN2v88internal4wasm4impl9kSig_l_llE = comdat any

$_ZN2v88internal4wasm4impl10kSig_l_lllE = comdat any

$_ZN2v88internal4wasm4impl9kSig_v_idE = comdat any

$_ZN2v88internal4wasm4impl9kSig_v_ifE = comdat any

$_ZN2v88internal4wasm4impl8kSig_v_iE = comdat any

$_ZN2v88internal4wasm4impl9kSig_v_iiE = comdat any

$_ZN2v88internal4wasm4impl10kSig_v_iiiE = comdat any

$_ZN2v88internal4wasm4impl9kSig_v_ilE = comdat any

$_ZN2v88internal4wasm4impl9kSig_v_liE = comdat any

$_ZN2v88internal4wasm4impl9kSig_v_llE = comdat any

$_ZN2v88internal4wasm4impl8kSig_v_vE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_s_sE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_s_fE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_s_dE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_s_ssE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_s_iE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_s_lE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_s_siE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_i_sE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_v_isE = comdat any

$_ZN2v88internal4wasm4impl12kTypes_s_sssE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_s_isE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_d_dE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_d_ddE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_d_fE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_d_iE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_d_idE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_d_lE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_f_dE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_f_fE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_f_ffE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_f_iE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_f_ifE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_f_lE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_i_aE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_i_ciE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_i_dE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_i_ddE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_i_fE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_i_ffE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_i_iE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_i_iiE = comdat any

$_ZN2v88internal4wasm4impl12kTypes_i_iiiE = comdat any

$_ZN2v88internal4wasm4impl12kTypes_i_iilE = comdat any

$_ZN2v88internal4wasm4impl12kTypes_i_illE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_i_lE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_i_liE = comdat any

$_ZN2v88internal4wasm4impl12kTypes_i_liiE = comdat any

$_ZN2v88internal4wasm4impl12kTypes_i_lilE = comdat any

$_ZN2v88internal4wasm4impl12kTypes_i_lllE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_i_llE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_i_qqE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_i_vE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_l_dE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_l_fE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_l_iE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_l_ilE = comdat any

$_ZN2v88internal4wasm4impl12kTypes_l_illE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_l_lE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_l_llE = comdat any

$_ZN2v88internal4wasm4impl12kTypes_l_lllE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_v_idE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_v_ifE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_v_iE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_v_iiE = comdat any

$_ZN2v88internal4wasm4impl12kTypes_v_iiiE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_v_ilE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_v_liE = comdat any

$_ZN2v88internal4wasm4impl11kTypes_v_llE = comdat any

$_ZN2v88internal4wasm4impl10kTypes_v_vE = comdat any

@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str = private unnamed_addr constant [112 x i8] c"[function %d: in function %d, considering call #%d, case #%d, to function %d (count=%d, size=%d, score=%ld)... \00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"[function %d: expanding topmost caller... \00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"imported function]\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"cannot inline asm.js function]\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"not called often enough]\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"not enough inlining budget]\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"decided to inline! \00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"no feedback yet or no callees]\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"queueing %zu callee(s)]\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"max inlining depth reached]\0A\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"[function %d: too many inlining candidates, stopping...]\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"budget=min(%zu, %zu), size %zu->%zu \00", align 1
@__func__._ZN2v88internal4wasm12BuildTSGraphEPNS0_8compiler10turboshaft12PipelineDataEPNS0_19AccountingAllocatorEPNS1_14CompilationEnvEPNS1_20WasmDetectedFeaturesERNS3_5GraphERKNS1_12FunctionBodyEPKNS1_16WireBytesStorageEPSt10unique_ptrINS1_18AssumptionsJournalESt14default_deleteISL_EEPNS0_10ZoneVectorINS0_20WasmInliningPositionEEEiPNS1_24WasmFunctionCoverageDataE = private unnamed_addr constant [13 x i8] c"BuildTSGraph\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::container_internal::PolicyFunctions" { i32 4, i32 48, i32 48, i16 8, i8 0, i8 0, ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft10BlockIndexEEES8_Lb1EEEmPKvPvm, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE19transfer_n_slots_fnEPvST_ST_m, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m, ptr @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSY_PFvSY_hmmE }, comdat, align 8
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EEE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EED2Ev, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EED0Ev, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12onFirstErrorEv] }, comdat, align 8
@_ZTVN2v88internal4wasm7DecoderE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal4wasm7DecoderD2Ev, ptr @_ZN2v88internal4wasm7DecoderD0Ev, ptr @_ZN2v88internal4wasm7Decoder12onFirstErrorEv] }, comdat, align 8
@.str.26 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"0 < len\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"base::SmallVector::Grow\00", align 1
@__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable = private unnamed_addr constant %"struct.std::array.320" { [22 x i32] [i32 5121, i32 5377, i32 514, i32 514, i32 514, i32 514, i32 4865, i32 4609, i32 4481, i32 4097, i32 3681, i32 3393, i32 3073, i32 2817, i32 2561, i32 3841, i32 2337, i32 2049, i32 1537, i32 1825, i32 1281, i32 1153] }, align 4
@.str.46 = private unnamed_addr constant [53 x i8] c"value_type_impl::PayloadField::is_valid(index.index)\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"expected %u bytes, fell off end\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"kMaxUInt32 >= new_capacity\00", align 1
@.str.52 = private unnamed_addr constant [83 x i8] c"new_capacity < std::numeric_limits<uint32_t>::max() / sizeof(OperationStorageSlot)\00", align 1
@.str.53 = private unnamed_addr constant [60 x i8] c"predecessors.size() <= std::numeric_limits<uint32_t>::max()\00", align 1
@.str.54 = private unnamed_addr constant [81 x i8] c"merge_values_.size() + predecessor_count <= std::numeric_limits<uint32_t>::max()\00", align 1
@.str.55 = private unnamed_addr constant [53 x i8] c"std::numeric_limits<size_t>::max() - size() >= count\00", align 1
@_ZN4absl18container_internal11kSooControlE = external constant [2 x i8], align 1
@.str.56 = private unnamed_addr constant [43 x i8] c"std::numeric_limits<int>::max() >= length_\00", align 1
@.str.57 = private unnamed_addr constant [25 x i8] c"index < parameter_count_\00", align 1
@_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE = internal unnamed_addr constant [172 x i64] [i64 24, i64 16, i64 16, i64 4, i64 8, i64 24, i64 32, i64 16, i64 8, i64 16, i64 16, i64 16, i64 8, i64 8, i64 8, i64 8, i64 12, i64 8, i64 16, i64 16, i64 8, i64 4, i64 8, i64 32, i64 32, i64 32, i64 24, i64 12, i64 16, i64 8, i64 24, i64 24, i64 8, i64 4, i64 4, i64 20, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 12, i64 12, i64 24, i64 36, i64 8, i64 12, i64 8, i64 8, i64 8, i64 8, i64 8, i64 4, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 4, i64 8, i64 8, i64 8, i64 16, i64 4, i64 12, i64 16, i64 4, i64 24, i64 8, i64 8, i64 16, i64 8, i64 16, i64 12, i64 4, i64 4, i64 4, i64 4, i64 8, i64 16, i64 24, i64 4, i64 24, i64 4, i64 8, i64 4, i64 16, i64 12, i64 12, i64 8, i64 16, i64 4, i64 4, i64 4, i64 8, i64 4, i64 4, i64 12, i64 8, i64 8, i64 8, i64 16, i64 32, i64 4, i64 32, i64 16, i64 8, i64 8, i64 8, i64 4, i64 8, i64 24, i64 8, i64 8, i64 8, i64 24, i64 8, i64 24, i64 8, i64 24, i64 8, i64 4, i64 40, i64 8, i64 8, i64 4, i64 4, i64 4, i64 8, i64 8, i64 4, i64 8, i64 24, i64 12, i64 8, i64 8, i64 16, i64 8, i64 8, i64 4, i64 4, i64 4, i64 4, i64 4, i64 8, i64 4, i64 4, i64 24, i64 32, i64 40, i64 8, i64 40, i64 8, i64 8, i64 8, i64 12, i64 8, i64 8, i64 8], align 16
@.str.59 = private unnamed_addr constant [22 x i8] c"index < return_count_\00", align 1
@_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE16GetOpcodeHandlerEhE15kOpcodeHandlers = linkonce_odr hidden local_unnamed_addr constant %"struct.std::array.511" { [256 x ptr] [ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE17DecodeUnreachableEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE9DecodeNopEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeBlockEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE10DecodeLoopEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE8DecodeIfEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE10DecodeElseEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE9DecodeTryEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeCatchEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeThrowEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeRethrowEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeThrowRefEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE9DecodeEndEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE8DecodeBrEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE10DecodeBrIfEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeBrTableEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeReturnEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18DecodeCallFunctionEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18DecodeCallIndirectEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE16DecodeReturnCallEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE24DecodeReturnCallIndirectEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeCallRefEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE19DecodeReturnCallRefEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE39DecodeNopForTestingUnsupportedInLiftoffEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeDelegateEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeCatchAllEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE10DecodeDropEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeSelectEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeSelectWithTypeEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeTryTableEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeLocalGetEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeLocalSetEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeLocalTeeEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE15DecodeGlobalGetEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE15DecodeGlobalSetEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeTableGetEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeTableSetEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeLoadMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeLoadMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeLoadMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeLoadMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeLoadMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeLoadMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeLoadMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeLoadMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeLoadMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeLoadMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeLoadMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeLoadMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeLoadMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeLoadMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeStoreMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeStoreMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeStoreMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeStoreMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeStoreMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeStoreMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeStoreMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeStoreMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeStoreMemEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE16DecodeMemorySizeEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE16DecodeMemoryGrowEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeI32ConstEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeI64ConstEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeF32ConstEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeF64ConstEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32EqzEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeI32EqEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeI32NeEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32LtSEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32LtUEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32GtSEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32GtUEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32LeSEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32LeUEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32GeSEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32GeUEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64EqzEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeI64EqEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeI64NeEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64LtSEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64LtUEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64GtSEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64GtUEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64LeSEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64LeUEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64GeSEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64GeUEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeF32EqEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeF32NeEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeF32LtEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeF32GtEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeF32LeEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeF32GeEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeF64EqEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeF64NeEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeF64LtEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeF64GtEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeF64LeEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeF64GeEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32ClzEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32CtzEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE15DecodeI32PopcntEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32AddEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32SubEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32MulEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeI32DivSEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeI32DivUEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeI32RemSEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeI32RemUEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32AndEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32IorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32XorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32ShlEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeI32ShrSEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeI32ShrUEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32RolEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI32RorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64ClzEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64CtzEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE15DecodeI64PopcntEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64AddEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64SubEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64MulEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeI64DivSEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeI64DivUEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeI64RemSEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeI64RemUEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64AndEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64IorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64XorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64ShlEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeI64ShrSEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeI64ShrUEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64RolEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeI64RorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeF32AbsEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeF32NegEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeF32CeilEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeF32FloorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeF32TruncEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE19DecodeF32NearestIntEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeF32SqrtEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeF32AddEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeF32SubEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeF32MulEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeF32DivEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeF32MinEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeF32MaxEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE17DecodeF32CopySignEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeF64AbsEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeF64NegEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeF64CeilEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeF64FloorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeF64TruncEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE19DecodeF64NearestIntEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeF64SqrtEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeF64AddEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeF64SubEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeF64MulEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeF64DivEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeF64MinEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeF64MaxEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE17DecodeF64CopySignEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE19DecodeI32ConvertI64EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeI32SConvertF32EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeI32UConvertF32EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeI32SConvertF64EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeI32UConvertF64EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeI64SConvertI32EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeI64UConvertI32EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeI64SConvertF32EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeI64UConvertF32EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeI64SConvertF64EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeI64UConvertF64EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeF32SConvertI32EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeF32UConvertI32EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeF32SConvertI64EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeF32UConvertI64EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE19DecodeF32ConvertF64EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeF64SConvertI32EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeF64UConvertI32EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeF64SConvertI64EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20DecodeF64UConvertI64EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE19DecodeF64ConvertF32EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE23DecodeI32ReinterpretF32EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE23DecodeI64ReinterpretF64EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE23DecodeF32ReinterpretI32EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE23DecodeF64ReinterpretI64EPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE23DecodeSignExtension_i_iEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE23DecodeSignExtension_i_iEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE23DecodeSignExtension_l_lEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE23DecodeSignExtension_l_lEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE23DecodeSignExtension_l_lEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeRefNullEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE15DecodeRefIsNullEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeRefFuncEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeRefEqEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18DecodeRefAsNonNullEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeBrOnNullEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE17DecodeBrOnNonNullEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeContNewEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeContBindEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeSuspendEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeResumeEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE17DecodeResumeThrowEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeSwitchEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11DecodeAsmJsEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE8DecodeGCEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeNumericEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE10DecodeSimdEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE12DecodeAtomicEPS7_NS1_10WasmOpcodeE, ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE] }, comdat, align 8
@_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::container_internal::PolicyFunctions" { i32 8, i32 80, i32 80, i16 8, i8 0, i8 0, ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS0_6HashEqIPN2v88internal8compiler10turboshaft5BlockEvE4HashES8_Lb0EEEmPKvPvm, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE19transfer_n_slots_fnEPvSN_SN_m, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m, ptr @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSS_PFvSS_hmmE }, comdat, align 8
@_ZN4absl13hash_internal15MixingHashState5kSeedE = external constant ptr, align 8
@.str.72 = private unnamed_addr constant [15 x i8] c"invalid opcode\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"prefixed opcode index\00", align 1
@.str.99 = private unnamed_addr constant [28 x i8] c"invalid br_on_cast flags %u\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"operator->\00", align 1
@.str.102 = private unnamed_addr constant [76 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/container/internal/raw_hash_set.h\00", align 1
@.str.103 = private unnamed_addr constant [29 x i8] c"%s called on end() iterator.\00", align 1
@.str.104 = private unnamed_addr constant [43 x i8] c"%s called on default-constructed iterator.\00", align 1
@.str.105 = private unnamed_addr constant [166 x i8] c"%s called on invalid iterator. The element might have been erased or the table might have rehashed. Consider running with --config=asan to diagnose rehashing issues.\00", align 1
@_ZN4absl18container_internal19kDefaultIterControlE = external global i8, align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"erase()\00", align 1
@.str.110 = private unnamed_addr constant [108 x i8] c"[function %d%s: Disabling deoptimizations for speculative inlining due to legacy exception handling usage]\0A\00", align 1
@.str.111 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.112 = private unnamed_addr constant [11 x i8] c" (inlined)\00", align 1
@.str.113 = private unnamed_addr constant [149 x i8] c"[function %d%s: Disabling deoptimizations for speculative inlining as the deoptimization limit (%u) for this function is reached or exceeded (%zu)]\0A\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__const._ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.kValueKindSize = private unnamed_addr constant [8 x i8] c"\04\08\04\08\10\01\02\02", align 1
@__const._ZNK2v88internal4wasm13ValueTypeBase12machine_typeEv.kMachineType = private unnamed_addr constant [8 x %"class.v8::internal::MachineType"] [%"class.v8::internal::MachineType" { i8 4, i8 2 }, %"class.v8::internal::MachineType" { i8 5, i8 4 }, %"class.v8::internal::MachineType" { i8 17, i8 8 }, %"class.v8::internal::MachineType" { i8 18, i8 8 }, %"class.v8::internal::MachineType" { i8 19, i8 0 }, %"class.v8::internal::MachineType" { i8 2, i8 2 }, %"class.v8::internal::MachineType" { i8 3, i8 2 }, %"class.v8::internal::MachineType" { i8 16, i8 8 }], align 16
@_ZZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE9EmptyNodeEvE10empty_node = linkonce_odr hidden constant { ptr, i8, i8, i8, i8 } { ptr @_ZZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, i8 0, i8 0, i8 0, i8 1 }, comdat, align 8
@.str.123 = private unnamed_addr constant [58 x i8] c"[function %d%s: inlining direct call #%d to function %d]\0A\00", align 1
@.str.124 = private unnamed_addr constant [44 x i8] c"[function %d: call to %d is well-known %s]\0A\00", align 1
@.str.129 = private unnamed_addr constant [29 x i8] c"sig->GetParam(i) == kWasmF32\00", align 1
@_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array = linkonce_odr hidden local_unnamed_addr constant %"struct.std::array.1043" zeroinitializer, comdat, align 1
@_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE1ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array = linkonce_odr hidden local_unnamed_addr constant { [2 x { i8 }] } { [2 x { i8 }] [{ i8 } { i8 1 }, { i8 } zeroinitializer] }, comdat, align 1
@.str.131 = private unnamed_addr constant [65 x i8] c"InlineTargetIsTypeCompatible(decoder->module_, sig, inlinee.sig)\00", align 1
@.str.132 = private unnamed_addr constant [138 x i8] c"[function %d%s: Disabling deoptimizations for speculative inlining as the deoptimization FrameState takes too many inputs (%zu vs. %zu)]\0A\00", align 1
@.str.133 = private unnamed_addr constant [58 x i8] c"function_feedback != feedback.feedback_for_function.end()\00", align 1
@.str.134 = private unnamed_addr constant [76 x i8] c"liftoff_frame_size_ != FunctionTypeFeedback::kUninitializedLiftoffFrameSize\00", align 1
@_ZTVN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EEE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal4wasm7DecoderD2Ev, ptr @_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EED0Ev, ptr @_ZN2v88internal4wasm7Decoder12onFirstErrorEv] }, comdat, align 8
@_ZN2v88internal4wasmL25invalid_instruction_traceE = internal constant %"struct.std::pair.308" zeroinitializer, align 4
@_ZN2v88internal12trap_handler25g_can_enable_trap_handlerE = external local_unnamed_addr global %"struct.std::atomic.3", align 1
@.str.135 = private unnamed_addr constant [23 x i8] c"v8_flags.wasm_inlining\00", align 1
@.str.136 = private unnamed_addr constant [113 x i8] c"[function %d%s: Not emitting deopt slow-path for call_indirect #%d as feedback contains non-inlineable targets]\0A\00", align 1
@.str.137 = private unnamed_addr constant [86 x i8] c"[function %d%s: Speculatively inlining call_indirect #%d, case #%zu, to function %d]\0A\00", align 1
@.str.138 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"deopts_enabled()\00", align 1
@.str.140 = private unnamed_addr constant [63 x i8] c"[function %d%s: inlining direct tail call #%d to function %d]\0A\00", align 1
@.str.141 = private unnamed_addr constant [93 x i8] c"[function %d%s: Speculatively inlining return_call_indirect #%d, case #%zu, to function %d]\0A\00", align 1
@.str.142 = private unnamed_addr constant [108 x i8] c"[function %d%s: Not emitting deopt slow-path for call_ref #%d as feedback contains non-inlineable targets]\0A\00", align 1
@.str.143 = private unnamed_addr constant [81 x i8] c"[function %d%s: Speculatively inlining call_ref #%d, case #%zu, to function %d]\0A\00", align 1
@.str.144 = private unnamed_addr constant [88 x i8] c"[function %d%s: Speculatively inlining return_call_ref #%d, case #%zu, to function %d]\0A\00", align 1
@_ZN2v88internal8compiler10turboshaft19SupportedOperations9instance_E = external local_unnamed_addr global %"class.v8::internal::compiler::turboshaft::SupportedOperations", align 1
@_ZN2v88internal4wasm8LoadType13kLoadSizeLog2E = linkonce_odr hidden local_unnamed_addr constant [16 x i8] c"\02\00\00\01\01\03\00\00\01\01\02\02\01\02\03\04", comdat, align 16
@_ZN2v88internal4wasm8LoadType10kValueTypeE = linkonce_odr hidden local_unnamed_addr constant [16 x { i32 }] [{ i32 } { i32 5648 }, { i32 } { i32 5648 }, { i32 } { i32 5648 }, { i32 } { i32 5648 }, { i32 } { i32 5648 }, { i32 } { i32 5904 }, { i32 } { i32 5904 }, { i32 } { i32 5904 }, { i32 } { i32 5904 }, { i32 } { i32 5904 }, { i32 } { i32 5904 }, { i32 } { i32 5904 }, { i32 } { i32 6160 }, { i32 } { i32 6160 }, { i32 } { i32 6416 }, { i32 } { i32 6672 }], comdat, align 16
@_ZN2v88internal4wasm8LoadType9kLoadSizeE = linkonce_odr hidden local_unnamed_addr constant [16 x i8] c"\04\01\01\02\02\08\01\01\02\02\04\04\02\04\08\10", comdat, align 16
@_ZN2v88internal4wasm8LoadType8kMemTypeE = linkonce_odr hidden local_unnamed_addr constant [16 x %"class.v8::internal::MachineType"] [%"class.v8::internal::MachineType" { i8 4, i8 2 }, %"class.v8::internal::MachineType" { i8 2, i8 2 }, %"class.v8::internal::MachineType" { i8 2, i8 3 }, %"class.v8::internal::MachineType" { i8 3, i8 2 }, %"class.v8::internal::MachineType" { i8 3, i8 3 }, %"class.v8::internal::MachineType" { i8 5, i8 4 }, %"class.v8::internal::MachineType" { i8 2, i8 2 }, %"class.v8::internal::MachineType" { i8 2, i8 3 }, %"class.v8::internal::MachineType" { i8 3, i8 2 }, %"class.v8::internal::MachineType" { i8 3, i8 3 }, %"class.v8::internal::MachineType" { i8 4, i8 2 }, %"class.v8::internal::MachineType" { i8 4, i8 3 }, %"class.v8::internal::MachineType" { i8 16, i8 8 }, %"class.v8::internal::MachineType" { i8 17, i8 8 }, %"class.v8::internal::MachineType" { i8 18, i8 8 }, %"class.v8::internal::MachineType" { i8 19, i8 0 }], comdat, align 16
@__const._ZN2v88internal4wasmL11GetLoadTypeENS1_10WasmOpcodeE.kLoadTypes = private unnamed_addr constant [14 x %"class.v8::internal::wasm::LoadType"] [%"class.v8::internal::wasm::LoadType" zeroinitializer, %"class.v8::internal::wasm::LoadType" { i8 5 }, %"class.v8::internal::wasm::LoadType" { i8 13 }, %"class.v8::internal::wasm::LoadType" { i8 14 }, %"class.v8::internal::wasm::LoadType" { i8 1 }, %"class.v8::internal::wasm::LoadType" { i8 2 }, %"class.v8::internal::wasm::LoadType" { i8 3 }, %"class.v8::internal::wasm::LoadType" { i8 4 }, %"class.v8::internal::wasm::LoadType" { i8 6 }, %"class.v8::internal::wasm::LoadType" { i8 7 }, %"class.v8::internal::wasm::LoadType" { i8 8 }, %"class.v8::internal::wasm::LoadType" { i8 9 }, %"class.v8::internal::wasm::LoadType" { i8 10 }, %"class.v8::internal::wasm::LoadType" { i8 11 }], align 1
@_ZN2v88internal4wasm9StoreType14kStoreSizeLog2E = linkonce_odr hidden local_unnamed_addr constant [11 x i8] c"\02\00\01\03\00\01\02\01\02\03\04", comdat, align 1
@_ZN2v88internal4wasm9StoreType7kMemRepE = linkonce_odr hidden local_unnamed_addr constant [11 x i8] c"\04\02\03\05\02\03\04\10\11\12\13", comdat, align 1
@__const._ZN2v88internal4wasmL12GetStoreTypeENS1_10WasmOpcodeE.kStoreTypes = private unnamed_addr constant [9 x %"class.v8::internal::wasm::StoreType"] [%"class.v8::internal::wasm::StoreType" zeroinitializer, %"class.v8::internal::wasm::StoreType" { i8 3 }, %"class.v8::internal::wasm::StoreType" { i8 8 }, %"class.v8::internal::wasm::StoreType" { i8 9 }, %"class.v8::internal::wasm::StoreType" { i8 1 }, %"class.v8::internal::wasm::StoreType" { i8 2 }, %"class.v8::internal::wasm::StoreType" { i8 4 }, %"class.v8::internal::wasm::StoreType" { i8 5 }, %"class.v8::internal::wasm::StoreType" { i8 6 }], align 1
@.str.152 = private unnamed_addr constant [17 x i8] c"object reference\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@.str.155 = private unnamed_addr constant [6 x i8] c"<end>\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@.str.157 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.160 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"throw\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"rethrow\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"try_table\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c"throw_ref\00", align 1
@.str.168 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.169 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"br_if\00", align 1
@.str.171 = private unnamed_addr constant [9 x i8] c"br_table\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c"delegate\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"catch_all\00", align 1
@.str.175 = private unnamed_addr constant [11 x i8] c"br_on_null\00", align 1
@.str.176 = private unnamed_addr constant [15 x i8] c"br_on_non_null\00", align 1
@.str.177 = private unnamed_addr constant [16 x i8] c"nop_for_testing\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.179 = private unnamed_addr constant [14 x i8] c"call_indirect\00", align 1
@.str.180 = private unnamed_addr constant [12 x i8] c"return_call\00", align 1
@.str.181 = private unnamed_addr constant [21 x i8] c"return_call_indirect\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"call_ref\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"return_call_ref\00", align 1
@.str.184 = private unnamed_addr constant [5 x i8] c"drop\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.186 = private unnamed_addr constant [10 x i8] c"local.get\00", align 1
@.str.187 = private unnamed_addr constant [10 x i8] c"local.set\00", align 1
@.str.188 = private unnamed_addr constant [10 x i8] c"local.tee\00", align 1
@.str.189 = private unnamed_addr constant [11 x i8] c"global.get\00", align 1
@.str.190 = private unnamed_addr constant [11 x i8] c"global.set\00", align 1
@.str.191 = private unnamed_addr constant [10 x i8] c"table.get\00", align 1
@.str.192 = private unnamed_addr constant [10 x i8] c"table.set\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"i32.const\00", align 1
@.str.194 = private unnamed_addr constant [10 x i8] c"i64.const\00", align 1
@.str.195 = private unnamed_addr constant [10 x i8] c"f32.const\00", align 1
@.str.196 = private unnamed_addr constant [10 x i8] c"f64.const\00", align 1
@.str.197 = private unnamed_addr constant [9 x i8] c"ref.null\00", align 1
@.str.198 = private unnamed_addr constant [12 x i8] c"ref.is_null\00", align 1
@.str.199 = private unnamed_addr constant [9 x i8] c"ref.func\00", align 1
@.str.200 = private unnamed_addr constant [16 x i8] c"ref.as_non_null\00", align 1
@.str.201 = private unnamed_addr constant [7 x i8] c"ref.eq\00", align 1
@.str.202 = private unnamed_addr constant [8 x i8] c"i32.add\00", align 1
@.str.203 = private unnamed_addr constant [8 x i8] c"i32.sub\00", align 1
@.str.204 = private unnamed_addr constant [8 x i8] c"i32.mul\00", align 1
@.str.205 = private unnamed_addr constant [8 x i8] c"i64.add\00", align 1
@.str.206 = private unnamed_addr constant [8 x i8] c"i64.sub\00", align 1
@.str.207 = private unnamed_addr constant [8 x i8] c"i64.mul\00", align 1
@.str.208 = private unnamed_addr constant [8 x i8] c"i32.eqz\00", align 1
@.str.209 = private unnamed_addr constant [7 x i8] c"i32.eq\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c"i32.ne\00", align 1
@.str.211 = private unnamed_addr constant [9 x i8] c"i32.lt_s\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c"i32.lt_u\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"i32.gt_s\00", align 1
@.str.214 = private unnamed_addr constant [9 x i8] c"i32.gt_u\00", align 1
@.str.215 = private unnamed_addr constant [9 x i8] c"i32.le_s\00", align 1
@.str.216 = private unnamed_addr constant [9 x i8] c"i32.le_u\00", align 1
@.str.217 = private unnamed_addr constant [9 x i8] c"i32.ge_s\00", align 1
@.str.218 = private unnamed_addr constant [9 x i8] c"i32.ge_u\00", align 1
@.str.219 = private unnamed_addr constant [8 x i8] c"i64.eqz\00", align 1
@.str.220 = private unnamed_addr constant [7 x i8] c"i64.eq\00", align 1
@.str.221 = private unnamed_addr constant [7 x i8] c"i64.ne\00", align 1
@.str.222 = private unnamed_addr constant [9 x i8] c"i64.lt_s\00", align 1
@.str.223 = private unnamed_addr constant [9 x i8] c"i64.lt_u\00", align 1
@.str.224 = private unnamed_addr constant [9 x i8] c"i64.gt_s\00", align 1
@.str.225 = private unnamed_addr constant [9 x i8] c"i64.gt_u\00", align 1
@.str.226 = private unnamed_addr constant [9 x i8] c"i64.le_s\00", align 1
@.str.227 = private unnamed_addr constant [9 x i8] c"i64.le_u\00", align 1
@.str.228 = private unnamed_addr constant [9 x i8] c"i64.ge_s\00", align 1
@.str.229 = private unnamed_addr constant [9 x i8] c"i64.ge_u\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"f32.eq\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"f32.ne\00", align 1
@.str.232 = private unnamed_addr constant [7 x i8] c"f32.lt\00", align 1
@.str.233 = private unnamed_addr constant [7 x i8] c"f32.gt\00", align 1
@.str.234 = private unnamed_addr constant [7 x i8] c"f32.le\00", align 1
@.str.235 = private unnamed_addr constant [7 x i8] c"f32.ge\00", align 1
@.str.236 = private unnamed_addr constant [7 x i8] c"f64.eq\00", align 1
@.str.237 = private unnamed_addr constant [7 x i8] c"f64.ne\00", align 1
@.str.238 = private unnamed_addr constant [7 x i8] c"f64.lt\00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c"f64.gt\00", align 1
@.str.240 = private unnamed_addr constant [7 x i8] c"f64.le\00", align 1
@.str.241 = private unnamed_addr constant [7 x i8] c"f64.ge\00", align 1
@.str.242 = private unnamed_addr constant [8 x i8] c"i32.clz\00", align 1
@.str.243 = private unnamed_addr constant [8 x i8] c"i32.ctz\00", align 1
@.str.244 = private unnamed_addr constant [11 x i8] c"i32.popcnt\00", align 1
@.str.245 = private unnamed_addr constant [10 x i8] c"i32.div_s\00", align 1
@.str.246 = private unnamed_addr constant [10 x i8] c"i32.div_u\00", align 1
@.str.247 = private unnamed_addr constant [10 x i8] c"i32.rem_s\00", align 1
@.str.248 = private unnamed_addr constant [10 x i8] c"i32.rem_u\00", align 1
@.str.249 = private unnamed_addr constant [8 x i8] c"i32.and\00", align 1
@.str.250 = private unnamed_addr constant [7 x i8] c"i32.or\00", align 1
@.str.251 = private unnamed_addr constant [8 x i8] c"i32.xor\00", align 1
@.str.252 = private unnamed_addr constant [8 x i8] c"i32.shl\00", align 1
@.str.253 = private unnamed_addr constant [10 x i8] c"i32.shr_s\00", align 1
@.str.254 = private unnamed_addr constant [10 x i8] c"i32.shr_u\00", align 1
@.str.255 = private unnamed_addr constant [9 x i8] c"i32.rotl\00", align 1
@.str.256 = private unnamed_addr constant [9 x i8] c"i32.rotr\00", align 1
@.str.257 = private unnamed_addr constant [8 x i8] c"i64.clz\00", align 1
@.str.258 = private unnamed_addr constant [8 x i8] c"i64.ctz\00", align 1
@.str.259 = private unnamed_addr constant [11 x i8] c"i64.popcnt\00", align 1
@.str.260 = private unnamed_addr constant [10 x i8] c"i64.div_s\00", align 1
@.str.261 = private unnamed_addr constant [10 x i8] c"i64.div_u\00", align 1
@.str.262 = private unnamed_addr constant [10 x i8] c"i64.rem_s\00", align 1
@.str.263 = private unnamed_addr constant [10 x i8] c"i64.rem_u\00", align 1
@.str.264 = private unnamed_addr constant [8 x i8] c"i64.and\00", align 1
@.str.265 = private unnamed_addr constant [7 x i8] c"i64.or\00", align 1
@.str.266 = private unnamed_addr constant [8 x i8] c"i64.xor\00", align 1
@.str.267 = private unnamed_addr constant [8 x i8] c"i64.shl\00", align 1
@.str.268 = private unnamed_addr constant [10 x i8] c"i64.shr_s\00", align 1
@.str.269 = private unnamed_addr constant [10 x i8] c"i64.shr_u\00", align 1
@.str.270 = private unnamed_addr constant [9 x i8] c"i64.rotl\00", align 1
@.str.271 = private unnamed_addr constant [9 x i8] c"i64.rotr\00", align 1
@.str.272 = private unnamed_addr constant [8 x i8] c"f32.abs\00", align 1
@.str.273 = private unnamed_addr constant [8 x i8] c"f32.neg\00", align 1
@.str.274 = private unnamed_addr constant [9 x i8] c"f32.ceil\00", align 1
@.str.275 = private unnamed_addr constant [10 x i8] c"f32.floor\00", align 1
@.str.276 = private unnamed_addr constant [10 x i8] c"f32.trunc\00", align 1
@.str.277 = private unnamed_addr constant [12 x i8] c"f32.nearest\00", align 1
@.str.278 = private unnamed_addr constant [9 x i8] c"f32.sqrt\00", align 1
@.str.279 = private unnamed_addr constant [8 x i8] c"f32.add\00", align 1
@.str.280 = private unnamed_addr constant [8 x i8] c"f32.sub\00", align 1
@.str.281 = private unnamed_addr constant [8 x i8] c"f32.mul\00", align 1
@.str.282 = private unnamed_addr constant [8 x i8] c"f32.div\00", align 1
@.str.283 = private unnamed_addr constant [8 x i8] c"f32.min\00", align 1
@.str.284 = private unnamed_addr constant [8 x i8] c"f32.max\00", align 1
@.str.285 = private unnamed_addr constant [13 x i8] c"f32.copysign\00", align 1
@.str.286 = private unnamed_addr constant [8 x i8] c"f64.abs\00", align 1
@.str.287 = private unnamed_addr constant [8 x i8] c"f64.neg\00", align 1
@.str.288 = private unnamed_addr constant [9 x i8] c"f64.ceil\00", align 1
@.str.289 = private unnamed_addr constant [10 x i8] c"f64.floor\00", align 1
@.str.290 = private unnamed_addr constant [10 x i8] c"f64.trunc\00", align 1
@.str.291 = private unnamed_addr constant [12 x i8] c"f64.nearest\00", align 1
@.str.292 = private unnamed_addr constant [9 x i8] c"f64.sqrt\00", align 1
@.str.293 = private unnamed_addr constant [8 x i8] c"f64.add\00", align 1
@.str.294 = private unnamed_addr constant [8 x i8] c"f64.sub\00", align 1
@.str.295 = private unnamed_addr constant [8 x i8] c"f64.mul\00", align 1
@.str.296 = private unnamed_addr constant [8 x i8] c"f64.div\00", align 1
@.str.297 = private unnamed_addr constant [8 x i8] c"f64.min\00", align 1
@.str.298 = private unnamed_addr constant [8 x i8] c"f64.max\00", align 1
@.str.299 = private unnamed_addr constant [13 x i8] c"f64.copysign\00", align 1
@.str.300 = private unnamed_addr constant [13 x i8] c"i32.wrap_i64\00", align 1
@.str.301 = private unnamed_addr constant [16 x i8] c"i32.trunc_f32_s\00", align 1
@.str.302 = private unnamed_addr constant [16 x i8] c"i32.trunc_f32_u\00", align 1
@.str.303 = private unnamed_addr constant [16 x i8] c"i32.trunc_f64_s\00", align 1
@.str.304 = private unnamed_addr constant [16 x i8] c"i32.trunc_f64_u\00", align 1
@.str.305 = private unnamed_addr constant [17 x i8] c"i64.extend_i32_s\00", align 1
@.str.306 = private unnamed_addr constant [17 x i8] c"i64.extend_i32_u\00", align 1
@.str.307 = private unnamed_addr constant [16 x i8] c"i64.trunc_f32_s\00", align 1
@.str.308 = private unnamed_addr constant [16 x i8] c"i64.trunc_f32_u\00", align 1
@.str.309 = private unnamed_addr constant [16 x i8] c"i64.trunc_f64_s\00", align 1
@.str.310 = private unnamed_addr constant [16 x i8] c"i64.trunc_f64_u\00", align 1
@.str.311 = private unnamed_addr constant [18 x i8] c"f32.convert_i32_s\00", align 1
@.str.312 = private unnamed_addr constant [18 x i8] c"f32.convert_i32_u\00", align 1
@.str.313 = private unnamed_addr constant [18 x i8] c"f32.convert_i64_s\00", align 1
@.str.314 = private unnamed_addr constant [18 x i8] c"f32.convert_i64_u\00", align 1
@.str.315 = private unnamed_addr constant [15 x i8] c"f32.demote_f64\00", align 1
@.str.316 = private unnamed_addr constant [18 x i8] c"f64.convert_i32_s\00", align 1
@.str.317 = private unnamed_addr constant [18 x i8] c"f64.convert_i32_u\00", align 1
@.str.318 = private unnamed_addr constant [18 x i8] c"f64.convert_i64_s\00", align 1
@.str.319 = private unnamed_addr constant [18 x i8] c"f64.convert_i64_u\00", align 1
@.str.320 = private unnamed_addr constant [16 x i8] c"f64.promote_f32\00", align 1
@.str.321 = private unnamed_addr constant [20 x i8] c"i32.reinterpret_f32\00", align 1
@.str.322 = private unnamed_addr constant [20 x i8] c"i64.reinterpret_f64\00", align 1
@.str.323 = private unnamed_addr constant [20 x i8] c"f32.reinterpret_i32\00", align 1
@.str.324 = private unnamed_addr constant [20 x i8] c"f64.reinterpret_i64\00", align 1
@.str.325 = private unnamed_addr constant [10 x i8] c"i32.store\00", align 1
@.str.326 = private unnamed_addr constant [10 x i8] c"i64.store\00", align 1
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE31BuildSwitchBackFromCentralStackENS4_1VINS4_12WordWithBitsILm64EEEEESE_:bb.a
  %i.ba = icmp eq ptr %.pre73, null
  br i1 %i.ba, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15SetStackPointerENS2_1VINS2_12WordWithBitsILm64EEEEE.exit
  %i.bb = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 52
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp ne i32 %i.bd, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre71, i64 32
  %i.bg = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.bf, ptr noundef nonnull %i.bb, i1 noundef zeroext %i.be), !inline_history !6 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit40, %bb.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE15SetStackPointerENS2_1VINS2_12WordWithBitsILm64EEEEE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12WordPtrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESI_.exit, %bb.b
  %i.bh = add nuw nsw i32 %.066, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bh, 3
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !1230
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor22WasmPropagateExceptionEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNSA_11arguments_tENS2_17CheckForExceptionEQntsrSA_13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %5 = alloca %"class.v8::base::SmallVector.967", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !39, !align !41 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 noundef zeroext 12, i64 noundef 1370)
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit: ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %.sroa.0.0.i.i.i = phi i32 [ %i.g, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store i64 0, ptr %i.i, align 8, !alias.scope !1241
  store ptr %i.i, ptr %5, align 8, !alias.scope !1241
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !1241
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 28
  store ptr %i.l, ptr %i.k, align 8, !alias.scope !1241
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !39, !align !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.q = call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef 1370) #22 ; 3 uses
  store ptr %i.q, ptr %4, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8
  %i.t = load i32, ptr %i.q, align 8
  %i.u = sub nsw i32 %i.s, %i.t
  %i.v = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.u, i32 0, i8 0, i32 noundef 1) #22
  %i.w = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.v, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %i.p, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.x = call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface26CallAndMaybeCatchExceptionEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS0_8compiler10turboshaft1VINSA_13UntaggedUnionIJNSA_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSD_ILm32EEEEEEEENS_4base6VectorIKNSA_7OpIndexEEEPKNSA_16TSCallDescriptorENS2_17CheckForExceptionENSA_9OpEffectsE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i32 %.sroa.0.0.i.i.i, ptr nonnull %i.i, i64 0, ptr noundef %i.w, i32 noundef %3, i32 487263)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i32 %i.x
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE20ChangeInt64ToFloat32ENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef byval(%"class.v8::internal::compiler::turboshaft::ConstOrV") align 8 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !38, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit, label %bb.c, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 -504
  %i.i = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.h, i8 noundef zeroext 1, i64 noundef %i.g)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.j, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i.i, %bb.d ], [ %i.i, %bb.c ], [ -1, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ReduceIfReachableChangeIJNS2_1VINS2_12WordWithBitsILm64EEEEENS2_8ChangeOp4KindENSK_10AssumptionENS2_18WordRepresentationENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT_.exit, label %bb.e, !prof !37

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit
  %i.n = getelementptr inbounds i8, ptr %0, i64 -504
  %i.o = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.n, i32 %.sroa.0.0.i, i8 noundef zeroext 6, i8 noundef zeroext 0, i8 1, i8 2)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ReduceIfReachableChangeIJNS2_1VINS2_12WordWithBitsILm64EEEEENS2_8ChangeOp4KindENSK_10AssumptionENS2_18WordRepresentationENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ReduceIfReachableChangeIJNS2_1VINS2_12WordWithBitsILm64EEEEENS2_8ChangeOp4KindENSK_10AssumptionENS2_18WordRepresentationENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit, %bb.e
  %.sroa.07.0.i = phi i32 [ %i.o, %bb.e ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit ]
  ret i32 %.sroa.07.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21ChangeUint64ToFloat64ENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef byval(%"class.v8::internal::compiler::turboshaft::ConstOrV") align 8 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !38, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit, label %bb.c, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 -504
  %i.i = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.h, i8 noundef zeroext 1, i64 noundef %i.g)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.j, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i.i, %bb.d ], [ %i.i, %bb.c ], [ -1, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ReduceIfReachableChangeIJNS2_1VINS2_12WordWithBitsILm64EEEEENS2_8ChangeOp4KindENSK_10AssumptionENS2_18WordRepresentationENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT_.exit, label %bb.e, !prof !37

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit
  %i.n = getelementptr inbounds i8, ptr %0, i64 -504
  %i.o = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.n, i32 %.sroa.0.0.i, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 1, i8 3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ReduceIfReachableChangeIJNS2_1VINS2_12WordWithBitsILm64EEEEENS2_8ChangeOp4KindENSK_10AssumptionENS2_18WordRepresentationENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ReduceIfReachableChangeIJNS2_1VINS2_12WordWithBitsILm64EEEEENS2_8ChangeOp4KindENSK_10AssumptionENS2_18WordRepresentationENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit, %bb.e
  %.sroa.07.0.i = phi i32 [ %i.o, %bb.e ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit ]
  ret i32 %.sroa.07.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21ChangeUint64ToFloat32ENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef byval(%"class.v8::internal::compiler::turboshaft::ConstOrV") align 8 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !38, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit, label %bb.c, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 -504
  %i.i = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.h, i8 noundef zeroext 1, i64 noundef %i.g)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.j, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i.i, %bb.d ], [ %i.i, %bb.c ], [ -1, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ReduceIfReachableChangeIJNS2_1VINS2_12WordWithBitsILm64EEEEENS2_8ChangeOp4KindENSK_10AssumptionENS2_18WordRepresentationENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT_.exit, label %bb.e, !prof !37

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit
  %i.n = getelementptr inbounds i8, ptr %0, i64 -504
  %i.o = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.n, i32 %.sroa.0.0.i, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 1, i8 2)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ReduceIfReachableChangeIJNS2_1VINS2_12WordWithBitsILm64EEEEENS2_8ChangeOp4KindENSK_10AssumptionENS2_18WordRepresentationENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ReduceIfReachableChangeIJNS2_1VINS2_12WordWithBitsILm64EEEEENS2_8ChangeOp4KindENSK_10AssumptionENS2_18WordRepresentationENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit, %bb.e
  %.sroa.07.0.i = phi i32 [ %i.o, %bb.e ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit ]
  ret i32 %.sroa.07.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES5_EEEEEEEEEE19WrapInTupleIfNeededINS2_11TryChangeOpEEENS2_1VINS2_3AnyEEERKT_SM_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(7) %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::base::SmallVector.357", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.b = load i8, ptr %i.a, align 2
  %4 = icmp eq i8 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.f, ptr %i.e, align 8
  %5 = select i1 %4, ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array, ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE1ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.i = zext i32 %2 to i64                       ; 2 uses
  %.sroa.01.0.copyload = load i8, ptr %5, align 1
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit, label %bb.c, !prof !37

bb.b:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = load ptr, ptr %3, align 8                ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.m, %i.o
  %i.q = ashr exact i64 %i.p, 2
  %i.r = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11MakeTupleOpEJNS2_27ShadowyOpIndexVectorWrapperEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.n, i64 %i.q), !inline_history !8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1, %bb.b
  %.sroa.03.0.i.i = phi i32 [ %i.r, %bb.b ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1 ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i32 %.sroa.03.0.i.i

bb.c:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.h, align 8, !nonnull !39, !align !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = add i64 %i.v, %i.i
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4
  %i.z = icmp eq i8 %i.y, 96
  br i1 %i.z, label %bb.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.aa, align 4
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit: ; preds = %bb.c
  %i.ab = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ProjectionOpEJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %2, i16 noundef zeroext 0, i8 %.sroa.01.0.copyload), !inline_history !9 ; 2 uses
  %.pre = load ptr, ptr %i.d, align 8             ; 2 uses
  %.pre17 = load ptr, ptr %i.e, align 8
  %i.ac = icmp eq ptr %.pre, %.pre17
  br i1 %i.ac, label %bb.e, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit, !prof !51

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %.pre.i.i = load ptr, ptr %i.d, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit: ; preds = %bb.d, %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit, %bb.e
  %.sroa.05.0.i.i21 = phi i32 [ %i.ab, %bb.e ], [ %i.ab, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ -1, %bb.a ]
  %i.ad = phi ptr [ %.pre.i.i, %bb.e ], [ %.pre, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit ], [ %i.c, %bb.d ], [ %i.c, %bb.a ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store ptr %i.ae, ptr %i.d, align 8
  store i32 %.sroa.05.0.i.i21, ptr %i.ad, align 4
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %.sroa.01.0.copyload.1 = load i8, ptr %6, align 1
  %i.af = load ptr, ptr %i.g, align 8
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1, label %bb.f, !prof !37

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit
  %i.ah = load ptr, ptr %i.h, align 8, !nonnull !39, !align !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = add i64 %i.ak, %i.i
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.an = load i8, ptr %i.am, align 4
  %i.ao = icmp eq i8 %i.an, 96
  br i1 %i.ao, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ProjectionOpEJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %2, i16 noundef zeroext 1, i8 %.sroa.01.0.copyload.1), !inline_history !9
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1

bb.h:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0.0.copyload.i.i.i.1 = load i32, ptr %i.aq, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1: ; preds = %bb.h, %bb.g, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit
  %.sroa.05.0.i.i.1 = phi i32 [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit ], [ %i.ap, %bb.g ], [ %.sroa.0.0.copyload.i.i.i.1, %bb.h ]
  %i.ar = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.as = load ptr, ptr %i.e, align 8
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1, !prof !37

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %.pre.i.i.1 = load ptr, ptr %i.d, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1: ; preds = %bb.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1
  %i.au = phi ptr [ %.pre.i.i.1, %bb.i ], [ %i.ar, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1 ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store ptr %i.av, ptr %i.d, align 8
  store i32 %.sroa.05.0.i.i.1, ptr %i.au, align 4
  %i.aw = load ptr, ptr %i.g, align 8
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit, label %bb.b, !prof !37
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11TryChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENS2_19FloatRepresentationENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i8 noundef zeroext %2, i8 %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !39, !align !41 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_11TryChangeOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS2_19FloatRepresentationENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre12 = ptrtoint ptr %.pre to i64
  %.pre13 = sub i64 %.pre10.i.i.i.i, %.pre12
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_11TryChangeOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS2_19FloatRepresentationENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_11TryChangeOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS2_19FloatRepresentationENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi14 = phi i64 [ %i.i, %bb.a ], [ %.pre13, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi14 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi14, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 2, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 16
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 2, ptr %i.af, align 2
  store i8 70, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %3, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %4, ptr %i.al, align 2
  %i.am = load ptr, ptr %i.f, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = zext i32 %1 to i64
  %i.ap = add i64 %i.an, %i.ao
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.as, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11TryChangeOpEEEvRKT_.exit, label %bb.c, !prof !37

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_11TryChangeOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS2_19FloatRepresentationENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit
  %i.at = add nuw i8 %i.as, 1
  store i8 %i.at, ptr %i.ar, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11TryChangeOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11TryChangeOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_11TryChangeOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS2_19FloatRepresentationENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.au, align 4
  %i.av = load ptr, ptr %i.a, align 8, !nonnull !39, !align !41 ; 4 uses
  %i.aw = lshr i64 %i.i, 4
  %i.ax = and i64 %i.aw, 268435455                ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 216
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 208 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2
  %.not.i.i10 = icmp ugt i64 %i.bf, %i.ax
  br i1 %.not.i.i10, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !36

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11TryChangeOpEEEvRKT_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 200 ; 2 uses
  %i.bh = lshr i64 %i.ax, 1
  %i.bi = add nuw nsw i64 %i.ax, 32
  %i.bj = add nuw nsw i64 %i.bi, %i.bh
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 noundef %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 224
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %i.ba, align 8
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 noundef %i.bq)
  %.pre.i.i = load ptr, ptr %i.ba, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11TryChangeOpEEEvRKT_.exit, %bb.d
  %i.br = phi ptr [ %.pre.i.i, %bb.d ], [ %i.bb, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11TryChangeOpEEEvRKT_.exit ]
  %i.bs = trunc i64 %i.i to i32
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ax
  store i32 %.sroa.0.0.copyload.i, ptr %i.bt, align 4
  ret i32 %i.bs
}

declare i64 @_ZN2v88internal17ExternalReference6CreateENS0_14IsolateFieldIdE(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE28BuildSwitchToTheCentralStackENS4_1VINS4_12WordWithBitsILm64EEEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit, !prof !37

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f) ; 4 uses
  %.pre = load ptr, ptr %i.a, align 8             ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre55 = load ptr, ptr %.phi.trans.insert, align 8
  %i.h = icmp eq ptr %.pre55, null
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, !prof !44

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %i.j = getelementptr inbounds nuw i8, ptr %.pre, i64 32 ; 2 uses
  %i.k = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.j, i8 noundef zeroext 0, i64 noundef 1)
  %.pr = load ptr, ptr %i.i, align 8
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit, label %bb.b, !prof !44

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  %i.m = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_7StoreOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexESG_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.j, i32 %i.g, i32 -1, i32 %i.k, i8 16, i8 1, i8 noundef zeroext 0, i32 noundef 320, i8 noundef zeroext 0, i1 noundef zeroext false, i64 noundef 0) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit: ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, %bb.b
  %.sroa.0.0.i.i69 = phi i32 [ %i.g, %bb.b ], [ %i.g, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit ], [ %i.g, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit ], [ -1, %bb.a ] ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !nonnull !39, !align !41 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 672
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit38, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, !prof !37

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.s = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, i32 %.sroa.0.0.i.i69, i32 -1, i8 16, i8 7, i8 1, i32 noundef 55168, i8 noundef zeroext 0) ; 4 uses
  %.pre56 = load ptr, ptr %i.a, align 8           ; 3 uses
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %.pre56, i64 672
  %.pre58 = load ptr, ptr %.phi.trans.insert57, align 8
  %i.t = icmp eq ptr %.pre58, null
  br i1 %i.t, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE5StoreENS2_7OpIndexESF_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEibNS0_18IndirectPointerTagE.exit38, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE12FramePointerEv.exit, !prof !44

end_hunk_2
