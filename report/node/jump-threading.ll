Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/jump-threading?download=true
inline.NumInlined: 543
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", [4 x i8], %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", [4 x i8], %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue.33", [4 x i8], %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.36", [2 x i8], %"class.v8::internal::FlagValue.33", [4 x i8], %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue.34", [4 x i8], %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.37", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.36" = type { %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base" }
%"struct.std::_Optional_payload_base" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.35" = type { double }
%"class.v8::internal::FlagValue.34" = type { i32 }
%"class.v8::internal::FlagValue.37" = type { i64 }
%"class.v8::internal::FlagValue.33" = type { i32 }
%"class.v8::internal::FlagValue.32" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.v8::internal::compiler::RpoNumber" = type { i32 }
%"class.v8::internal::ZoneStack" = type { %"class.std::stack" }
%"class.std::stack" = type { %"class.v8::internal::ZoneDeque" }
%"class.v8::internal::ZoneDeque" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<v8::internal::compiler::RpoNumber, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::RpoNumber>>::_Deque_impl" }
%"struct.std::_Deque_base<v8::internal::compiler::RpoNumber, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::RpoNumber>>::_Deque_impl" = type { %"class.v8::internal::RecyclingZoneAllocator", %"struct.std::_Deque_base<v8::internal::compiler::RpoNumber, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::RpoNumber>>::_Deque_impl_data" }
%"class.v8::internal::RecyclingZoneAllocator" = type { %"class.v8::internal::ZoneAllocator", ptr }
%"class.v8::internal::ZoneAllocator" = type { ptr }
%"struct.std::_Deque_base<v8::internal::compiler::RpoNumber, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::RpoNumber>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"struct.v8::internal::compiler::(anonymous namespace)::GapJumpRecord" = type { ptr, %"class.v8::internal::ZoneUnorderedMap.13" }
%"class.v8::internal::ZoneUnorderedMap.13" = type { %"class.std::unordered_map.14" }
%"class.std::unordered_map.14" = type { %"class.std::_Hashtable.15" }
%"class.std::_Hashtable.15" = type { %"struct.std::__detail::_Hashtable_alloc.27", ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hashtable_alloc.27" = type { %"struct.std::__detail::_Hashtable_ebo_helper.28" }
%"struct.std::__detail::_Hashtable_ebo_helper.28" = type { %"class.v8::internal::ZoneAllocator.29" }
%"class.v8::internal::ZoneAllocator.29" = type { ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }

$_ZN2v88internal9ZoneStackINS0_8compiler9RpoNumberEEC2EPNS0_4ZoneE = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE4GrowEm = comdat any

$_ZNSt5dequeIN2v88internal8compiler9RpoNumberENS1_22RecyclingZoneAllocatorIS3_EEE16_M_push_back_auxIJRKS3_EEEvDpOT_ = comdat any

$_ZNSt5dequeIN2v88internal8compiler9RpoNumberENS1_22RecyclingZoneAllocatorIS3_EEE17_M_reallocate_mapEmb = comdat any

$_ZNSt11_Deque_baseIN2v88internal8compiler9RpoNumberENS1_22RecyclingZoneAllocatorIS3_EEE17_M_initialize_mapEm = comdat any

@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str.9 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.10 = private unnamed_addr constant [70 x i8] c"block->must_construct_frame() implies block->must_deconstruct_frame()\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler13JumpThreading17ComputeForwardingEPNS0_4ZoneEPNS0_10ZoneVectorINS1_9RpoNumberEEEPNS1_19InstructionSequenceEb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::RpoNumber", align 4 ; 5 uses
  %5 = alloca %"class.v8::internal::compiler::RpoNumber", align 4 ; 5 uses
  %6 = alloca %"class.v8::internal::ZoneStack", align 8 ; 16 uses
  %7 = alloca %"struct.v8::internal::compiler::(anonymous namespace)::GapJumpRecord", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @_ZN2v88internal9ZoneStackINS0_8compiler9RpoNumberEEC2EPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %sext = shl i64 %i.i, 29
  %i.j = ashr i64 %sext, 32                       ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 5 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 8 uses
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %.not.i.i = icmp ult i64 %i.r, %i.j
  br i1 %.not.i.i, label %.lr.ph40.preheader.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx42.i.i = shl nsw i64 %i.j, 2               ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx42.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.p
  %i.x = ashr exact i64 %i.w, 2
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 range(i64 -2147483648, 2147483648) %i.j, i64 %i.x) ; 2 uses
  %.idx.i.i = shl nsw i64 %.sroa.speculated.i.i, 2 ; 5 uses
  %i.y = getelementptr i8, ptr %i.n, i64 %.idx.i.i
  %.not41.i.i = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %.not41.i.i, label %.preheader35.i.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %i.z = add i64 %.idx.i.i, %i.p
  %i.aa = add i64 %i.p, 4
  %umax.i = call i64 @llvm.umax.i64(i64 %i.z, i64 %i.aa)
  %i.ab = xor i64 %i.p, -1
  %i.ac = add i64 %umax.i, %i.ab
  %i.ad = and i64 %i.ac, -4
  %i.ae = add i64 %i.ad, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 -1, i64 %i.ae, i1 false)
  br label %.preheader35.i.i

.preheader35.i.i:                                 ; preds = %.lr.ph.i.preheader.i, %bb.b
  %i.af = icmp samesign ult i64 %.idx.i.i, %.idx42.i.i
  br i1 %i.af, label %.lr.ph38.i.preheader.i, label %.preheader.i.i

.lr.ph38.i.preheader.i:                           ; preds = %.preheader35.i.i
  %i.ag = add i64 %i.p, 4
  %i.ah = add i64 %i.ag, %.idx.i.i
  %i.ai = add i64 %.idx42.i.i, %i.p
  %umax3.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ai)
  %i.aj = xor i64 %i.p, -1
  %i.ak = sub i64 %i.aj, %.idx.i.i
  %i.al = add i64 %i.ak, %umax3.i
  %i.am = and i64 %i.al, -4
  %i.an = add i64 %i.am, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.y, i8 -1, i64 %i.an, i1 false)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph38.i.preheader.i, %.preheader35.i.i
  store ptr %i.s, ptr %i.t, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState5ClearEm.exit

.lr.ph40.preheader.i.i:                           ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.ao, align 8
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef range(i64 -2147483648, 2147483648) %i.j)
  %i.ap = load ptr, ptr %i.m, align 8             ; 2 uses
  %.idx43.i.i = shl nuw nsw i64 %i.j, 2           ; 2 uses
  %8 = call i64 @llvm.umax.i64(i64 %.idx43.i.i, i64 4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ap, i8 -1, i64 %8, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx43.i.i
  store ptr %i.aq, ptr %i.ao, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState5ClearEm.exit

_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState5ClearEm.exit: ; preds = %.preheader.i.i, %.lr.ph40.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store ptr %0, ptr %7, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.as = ptrtoint ptr %0 to i64
  store i64 %i.as, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 5 uses
  store ptr %i.au, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 9 uses
  store i64 1, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 11 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.az = call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 noundef 0) #7 ; 6 uses
  %i.ba = load i64, ptr %i.av, align 8            ; 2 uses
  %i.bb = icmp ugt i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.c, label %_ZN2v88internal8compiler12_GLOBAL__N_113GapJumpRecordC2EPNS0_4ZoneE.exit

bb.c:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState5ClearEm.exit
  %i.bc = icmp eq i64 %i.az, 1
  br i1 %i.bc, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.au, align 8
  br label %_ZNSt10_HashtableIN2v88internal8compiler9RpoNumberESt4pairIKS3_NS1_10ZoneVectorINS2_12_GLOBAL__N_113GapJumpRecord6RecordEEEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS3_ENS8_13RpoNumberHashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %.val.i.i.i.i.i = load ptr, ptr %i.ar, align 8  ; 3 uses
  %i.bd = icmp ult i64 %i.az, 2305843009213693951
  br i1 %i.bd, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.15) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.be = shl nuw i64 %i.az, 3                    ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16 ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = sub i64 %i.bg, %i.bi
  %i.bk = icmp ugt i64 %i.be, %i.bj
  br i1 %i.bk, label %bb.h, label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler9RpoNumberENS2_10ZoneVectorINS6_12_GLOBAL__N_113GapJumpRecord6RecordEEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i, !prof !6

bb.h:                                             ; preds = %bb.g
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val.i.i.i.i.i, i64 noundef %i.be) #7
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bh, align 8
  br label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler9RpoNumberENS2_10ZoneVectorINS6_12_GLOBAL__N_113GapJumpRecord6RecordEEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler9RpoNumberENS2_10ZoneVectorINS6_12_GLOBAL__N_113GapJumpRecord6RecordEEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.bl = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ %i.bi, %bb.g ] ; 2 uses
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = add i64 %i.bl, %i.be
  store i64 %i.bn, ptr %i.bh, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.bm, i8 0, i64 %i.be, i1 false)
  br label %_ZNSt10_HashtableIN2v88internal8compiler9RpoNumberESt4pairIKS3_NS1_10ZoneVectorINS2_12_GLOBAL__N_113GapJumpRecord6RecordEEEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS3_ENS8_13RpoNumberHashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i

_ZNSt10_HashtableIN2v88internal8compiler9RpoNumberESt4pairIKS3_NS1_10ZoneVectorINS2_12_GLOBAL__N_113GapJumpRecord6RecordEEEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS3_ENS8_13RpoNumberHashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler9RpoNumberENS2_10ZoneVectorINS6_12_GLOBAL__N_113GapJumpRecord6RecordEEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i, %bb.d
  %.0.i.i.i.i.i = phi ptr [ %i.au, %bb.d ], [ %i.bm, %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler9RpoNumberENS2_10ZoneVectorINS6_12_GLOBAL__N_113GapJumpRecord6RecordEEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i ]
  store ptr %.0.i.i.i.i.i, ptr %i.at, align 8
  store i64 %i.az, ptr %i.av, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_113GapJumpRecordC2EPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_113GapJumpRecordC2EPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState5ClearEm.exit, %_ZNSt10_HashtableIN2v88internal8compiler9RpoNumberESt4pairIKS3_NS1_10ZoneVectorINS2_12_GLOBAL__N_113GapJumpRecord6RecordEEEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS3_ENS8_13RpoNumberHashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i
  %.val91203 = phi i64 [ %i.ba, %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState5ClearEm.exit ], [ %i.az, %_ZNSt10_HashtableIN2v88internal8compiler9RpoNumberESt4pairIKS3_NS1_10ZoneVectorINS2_12_GLOBAL__N_113GapJumpRecord6RecordEEEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS3_ENS8_13RpoNumberHashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i ]
  %i.bo = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not176 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not176, label %._crit_edge184, label %.lr.ph183

.lr.ph183:                                        ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113GapJumpRecordC2EPNS0_4ZoneE.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 10 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %.pre199.pre = load ptr, ptr %i.bt, align 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph183, %._crit_edge
  %.pre199 = phi ptr [ %.pre199.pre, %.lr.ph183 ], [ %.pre199204, %._crit_edge ] ; 3 uses
  %.076182 = phi i32 [ undef, %.lr.ph183 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.077181 = phi i32 [ undef, %.lr.ph183 ], [ %.178.lcssa, %._crit_edge ] ; 2 uses
  %.084180 = phi ptr [ %i.bq, %.lr.ph183 ], [ %i.mi, %._crit_edge ] ; 2 uses
  %.sroa.0112.0179 = phi i32 [ -1, %.lr.ph183 ], [ %.sroa.0112.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0114.0178 = phi i32 [ -1, %.lr.ph183 ], [ %.sroa.0114.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0116.0177 = phi i1 [ false, %.lr.ph183 ], [ %.sroa.0116.1.lcssa, %._crit_edge ] ; 2 uses
  %i.cb = load ptr, ptr %.084180, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 100
  %.sroa.0.0.copyload.i = load i32, ptr %i.cc, align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 %.sroa.0.0.copyload.i, ptr %5, align 4
  %i.cd = sext i32 %.sroa.0.0.copyload.i to i64   ; 2 uses
  %i.ce = load ptr, ptr %i.m, align 8
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = icmp eq i32 %i.cg, -1
  br i1 %i.ch, label %bb.j, label %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState15PushIfUnvisitedENS1_9RpoNumberE.exit

bb.j:                                             ; preds = %bb.i
  %i.ci = load ptr, ptr %i.bu, align 8
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %.not.i.i.i = icmp eq ptr %.pre199, %i.cj
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %.sroa.0.0.copyload.i, ptr %.pre199, align 4
  %i.ck = load ptr, ptr %i.bt, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store ptr %i.cl, ptr %i.bt, align 8
  br label %_ZNSt5stackIN2v88internal8compiler9RpoNumberENS1_9ZoneDequeIS3_EEE4pushERKS3_.exit.i

bb.l:                                             ; preds = %bb.j
  call void @_ZNSt5dequeIN2v88internal8compiler9RpoNumberENS1_22RecyclingZoneAllocatorIS3_EEE16_M_push_back_auxIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %.pre.i = load i32, ptr %5, align 4
  %.pre2.i = sext i32 %.pre.i to i64
  br label %_ZNSt5stackIN2v88internal8compiler9RpoNumberENS1_9ZoneDequeIS3_EEE4pushERKS3_.exit.i

_ZNSt5stackIN2v88internal8compiler9RpoNumberENS1_9ZoneDequeIS3_EEE4pushERKS3_.exit.i: ; preds = %bb.l, %bb.k
  %.pre-phi.i = phi i64 [ %i.cd, %bb.k ], [ %.pre2.i, %bb.l ]
  %i.cm = load ptr, ptr %i.m, align 8
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.pre-phi.i
  store i32 -2, ptr %i.cn, align 4
  %.pre = load ptr, ptr %i.bt, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState15PushIfUnvisitedENS1_9RpoNumberE.exit

_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState15PushIfUnvisitedENS1_9RpoNumberE.exit: ; preds = %bb.i, %_ZNSt5stackIN2v88internal8compiler9RpoNumberENS1_9ZoneDequeIS3_EEE4pushERKS3_.exit.i
  %.pre199205 = phi ptr [ %.pre199, %bb.i ], [ %.pre, %_ZNSt5stackIN2v88internal8compiler9RpoNumberENS1_9ZoneDequeIS3_EEE4pushERKS3_.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.co = load ptr, ptr %i.bv, align 8
  %i.cp = icmp eq ptr %.pre199205, %i.co
  br i1 %i.cp, label %._crit_edge, label %.lr.ph171

.lr.ph171:                                        ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState15PushIfUnvisitedENS1_9RpoNumberE.exit, %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState7ForwardENS1_9RpoNumberE.exit
  %i.cq = phi ptr [ %i.mf, %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState7ForwardENS1_9RpoNumberE.exit ], [ %.pre199205, %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState15PushIfUnvisitedENS1_9RpoNumberE.exit ] ; 2 uses
  %.1170 = phi i32 [ %.6, %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState7ForwardENS1_9RpoNumberE.exit ], [ %.076182, %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState15PushIfUnvisitedENS1_9RpoNumberE.exit ] ; 20 uses
  %.178169 = phi i32 [ %.683, %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState7ForwardENS1_9RpoNumberE.exit ], [ %.077181, %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState15PushIfUnvisitedENS1_9RpoNumberE.exit ] ; 20 uses
  %.sroa.0112.1168 = phi i32 [ %.sroa.0112.4, %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState7ForwardENS1_9RpoNumberE.exit ], [ %.sroa.0112.0179, %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState15PushIfUnvisitedENS1_9RpoNumberE.exit ] ; 21 uses
  %.sroa.0114.1167 = phi i32 [ %.sroa.0114.4, %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState7ForwardENS1_9RpoNumberE.exit ], [ %.sroa.0114.0178, %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState15PushIfUnvisitedENS1_9RpoNumberE.exit ] ; 21 uses
  %.sroa.0116.1166 = phi i1 [ %.sroa.0116.3, %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState7ForwardENS1_9RpoNumberE.exit ], [ %.sroa.0116.0177, %_ZN2v88internal8compiler12_GLOBAL__N_118JumpThreadingState15PushIfUnvisitedENS1_9RpoNumberE.exit ] ; 2 uses
  %i.cr = load ptr, ptr %i.bw, align 8, !noalias !19
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph171
  %i.ct = load ptr, ptr %i.bx, align 8, !noalias !19
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 512
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph171
  %i.cx = phi ptr [ %i.cw, %bb.m ], [ %i.cq, %.lr.ph171 ]
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -4
  %.sroa.034.0.copyload = load i32, ptr %i.cy, align 4
  %i.cz = load ptr, ptr %i.a, align 8
  %i.da = sext i32 %.sroa.034.0.copyload to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.da
  %i.de = load ptr, ptr %i.dd, align 8            ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 100 ; 4 uses
  %.sroa.0.0.copyload.i93 = load i32, ptr %i.df, align 4 ; 17 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 116
  %i.dh = load i32, ptr %i.dg, align 4            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 120 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = icmp slt i32 %i.dh, %i.dj
  br i1 %i.dk, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.dl = sext i32 %i.dh to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bq
  %indvars.iv = phi i64 [ %i.dl, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.bq ] ; 2 uses
  %i.dm = load ptr, ptr %i.by, align 8
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv
  %i.do = load ptr, ptr %i.dn, align 8            ; 10 uses
  %i.dp = call noundef zeroext i1 @_ZNK2v88internal8compiler11Instruction17AreMovesRedundantEv(ptr noundef nonnull align 8 dereferenceable(48) %i.do) #7
  %i.dq = load i32, ptr %i.do, align 8            ; 3 uses
  br i1 %i.dp, label %bb.bb, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.dr = and i32 %i.dq, 511
end_hunk_0
