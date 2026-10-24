Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-assembler-x64?download=true
inline.NumInlined: 1328
inline.NumDeleted: 654
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
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
%"class.v8::internal::Operand" = type { %union.anon }
%union.anon = type { %"struct.v8::internal::Operand::LabelOperand" }
%"struct.v8::internal::Operand::LabelOperand" = type { i8, i8, i8, ptr }
%"struct.v8::internal::maglev::RegisterSnapshot" = type { %"class.v8::internal::RegListBase", %"class.v8::internal::RegListBase", %"class.v8::internal::RegListBase.0" }
%"class.v8::internal::RegListBase" = type { i16 }
%"class.v8::internal::RegListBase.0" = type { i16 }
%"class.v8::internal::Register" = type { %"class.v8::internal::RegisterBase" }
%"class.v8::internal::RegisterBase" = type { i8 }
%"class.v8::internal::maglev::ZoneLabelRef" = type { ptr }
%"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScope" = type { %"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScopeBase.base", i8, i8, [2 x i8] }
%"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScopeBase.base" = type <{ ptr, ptr, %"class.v8::internal::RegListBase", %"class.v8::internal::RegListBase.0" }>
%"class.v8::internal::Label" = type { i32, i32 }
%"class.v8::internal::compiler::NativeContextRef" = type { %"class.v8::internal::compiler::ContextRef" }
%"class.v8::internal::compiler::ContextRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::internal::compiler::HeapObjectRef" = type { %"class.v8::internal::compiler::ObjectRef" }
%"class.v8::internal::compiler::ObjectRef" = type { ptr }

$_ZN2v88internal6maglev15MaglevAssembler6JumpIfENS0_9ConditionEPNS0_5LabelENS4_8DistanceE = comdat any

$_ZN2v88internal6maglev15MaglevAssembler4MoveENS0_8RegisterEi = comdat any

$_ZN2v88internal6maglev15MaglevAssembler20EmitEagerDeoptStressEPNS0_5LabelE = comdat any

$_ZN2v88internal6maglev12AllocateSlowIiEEvPNS1_15MaglevAssemblerENS1_16RegisterSnapshotENS0_8RegisterENS0_7BuiltinET_NS1_12ZoneLabelRefE = comdat any

$_ZN2v88internal6maglev15MaglevAssembler16MakeDeferredCodeIRFvPS2_NS1_16RegisterSnapshotENS0_8RegisterENS0_7BuiltinEiNS1_12ZoneLabelRefEEJRS5_RS6_S7_RiRS8_EEEPNS0_5LabelEOT_DpOT0_ = comdat any

$_ZN2v88internal6maglev6detail20DeferredCodeInfoImplIRFvPNS1_15MaglevAssemblerENS1_16RegisterSnapshotENS0_8RegisterENS0_7BuiltinEiNS1_12ZoneLabelRefEEE8GenerateES5_ = comdat any

$_ZN2v88internal6maglev12AllocateSlowINS0_8RegisterEEEvPNS1_15MaglevAssemblerENS1_16RegisterSnapshotES3_NS0_7BuiltinET_NS1_12ZoneLabelRefE = comdat any

$_ZN2v88internal6maglev15MaglevAssembler16MakeDeferredCodeIRFvPS2_NS1_16RegisterSnapshotENS0_8RegisterENS0_7BuiltinES6_NS1_12ZoneLabelRefEEJRS5_RS6_S7_SC_RS8_EEEPNS0_5LabelEOT_DpOT0_ = comdat any

$_ZN2v88internal6maglev6detail20DeferredCodeInfoImplIRFvPNS1_15MaglevAssemblerENS1_16RegisterSnapshotENS0_8RegisterENS0_7BuiltinES7_NS1_12ZoneLabelRefEEE8GenerateES5_ = comdat any

$_ZTVN2v88internal6maglev6detail20DeferredCodeInfoImplIRFvPNS1_15MaglevAssemblerENS1_16RegisterSnapshotENS0_8RegisterENS0_7BuiltinEiNS1_12ZoneLabelRefEEEE = comdat any

$_ZTVN2v88internal6maglev6detail20DeferredCodeInfoImplIRFvPNS1_15MaglevAssemblerENS1_16RegisterSnapshotENS0_8RegisterENS0_7BuiltinES7_NS1_12ZoneLabelRefEEEE = comdat any

@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"!graph->has_recursive_calls()\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"source_frame_size <= target_frame_size\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"size_so_far <= target_frame_size\00", align 1
@_ZN2v88internal11CpuFeatures10supported_E = external local_unnamed_addr global i32, align 4
@_ZTVN2v88internal6maglev6detail20DeferredCodeInfoImplIRFvPNS1_15MaglevAssemblerENS1_16RegisterSnapshotENS0_8RegisterENS0_7BuiltinEiNS1_12ZoneLabelRefEEEE = linkonce_odr hidden unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal6maglev6detail20DeferredCodeInfoImplIRFvPNS1_15MaglevAssemblerENS1_16RegisterSnapshotENS0_8RegisterENS0_7BuiltinEiNS1_12ZoneLabelRefEEE8GenerateES5_] }, comdat, align 8
@.str.35 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN2v88internal6maglev6detail20DeferredCodeInfoImplIRFvPNS1_15MaglevAssemblerENS1_16RegisterSnapshotENS0_8RegisterENS0_7BuiltinES7_NS1_12ZoneLabelRefEEEE = linkonce_odr hidden unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal6maglev6detail20DeferredCodeInfoImplIRFvPNS1_15MaglevAssemblerENS1_16RegisterSnapshotENS0_8RegisterENS0_7BuiltinES7_NS1_12ZoneLabelRefEEE8GenerateES5_] }, comdat, align 8
@"_ZTVN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_15MaglevAssembler18StringFromCharCodeENS1_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterES8_S8_NS4_16CharCodeMaskModeEE3$_0EE" = internal unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr null, ptr @"_ZN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_15MaglevAssembler18StringFromCharCodeENS1_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterES8_S8_NS4_16CharCodeMaskModeEE3$_0E8GenerateEPS4_"] }, align 8
@.str.46 = private unnamed_addr constant [19 x i8] c"(data_) != nullptr\00", align 1
@"_ZTVN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_15MaglevAssembler27StringCharCodeOrCodePointAtENS1_43BuiltinStringPrototypeCharCodeOrCodePointAt4ModeERNS1_16RegisterSnapshotENS0_8RegisterES9_S9_S9_S9_PNS0_5LabelEE3$_0EE" = internal unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr null, ptr @"_ZN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_15MaglevAssembler27StringCharCodeOrCodePointAtENS1_43BuiltinStringPrototypeCharCodeOrCodePointAt4ModeERNS1_16RegisterSnapshotENS0_8RegisterES9_S9_S9_S9_PNS0_5LabelEE3$_0E8GenerateEPS4_"] }, align 8
@"_ZTVN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_15MaglevAssembler21TruncateDoubleToInt32ENS0_8RegisterENS0_11XMMRegisterEE3$_0EE" = internal unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr null, ptr @"_ZN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_15MaglevAssembler21TruncateDoubleToInt32ENS0_8RegisterENS0_11XMMRegisterEE3$_0E8GenerateEPS4_"] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev15MaglevAssembler8AllocateENS1_16RegisterSnapshotENS0_8RegisterEiNS0_14AllocationTypeENS0_19AllocationAlignmentE(ptr noundef nonnull align 8 dereferenceable(456) %0, i48 %1, i8 %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %7 = alloca %"struct.v8::internal::maglev::RegisterSnapshot", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::Register", align 1 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.v8::internal::maglev::ZoneLabelRef", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i48 %1, ptr %7, align 8
  store i8 %2, ptr %8, align 1
  store i32 %3, ptr %i.a, align 4
  %i.e = icmp eq i8 %4, 0                         ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @_ZN2v88internal17ExternalReference32new_space_allocation_top_addressEPNS0_7IsolateE(ptr noundef %i.d) #11
  %i.g = tail call i64 @_ZN2v88internal17ExternalReference34new_space_allocation_limit_addressEPNS0_7IsolateE(ptr noundef %i.d) #11
  br label %_ZN2v88internal6maglev27SpaceAllocationLimitAddressEPNS0_7IsolateENS0_14AllocationTypeE.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i64 @_ZN2v88internal17ExternalReference32old_space_allocation_top_addressEPNS0_7IsolateE(ptr noundef %i.d) #11
  %i.i = tail call i64 @_ZN2v88internal17ExternalReference34old_space_allocation_limit_addressEPNS0_7IsolateE(ptr noundef %i.d) #11
  br label %_ZN2v88internal6maglev27SpaceAllocationLimitAddressEPNS0_7IsolateENS0_14AllocationTypeE.exit.i

_ZN2v88internal6maglev27SpaceAllocationLimitAddressEPNS0_7IsolateENS0_14AllocationTypeE.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i39.i = phi i64 [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.sroa.0.0.i37.i = phi i64 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = sub i64 %i.n, %i.p
  %i.r = icmp ult i64 %i.q, 8
  br i1 %i.r, label %bb.d, label %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit.i, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal6maglev27SpaceAllocationLimitAddressEPNS0_7IsolateENS0_14AllocationTypeE.exit.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 noundef 8) #11
  %.pre.i.i.i.i.i = load i64, ptr %i.o, align 8
  br label %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit.i

_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit.i: ; preds = %bb.d, %_ZN2v88internal6maglev27SpaceAllocationLimitAddressEPNS0_7IsolateENS0_14AllocationTypeE.exit.i
  %i.s = phi i64 [ %.pre.i.i.i.i.i, %bb.d ], [ %i.p, %_ZN2v88internal6maglev27SpaceAllocationLimitAddressEPNS0_7IsolateENS0_14AllocationTypeE.exit.i ] ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = add i64 %i.s, 8
  store i64 %i.u, ptr %i.o, align 8
  store i64 0, ptr %i.t, align 4
  store ptr %i.t, ptr %9, align 8
  %i.v = tail call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.sroa.0.0.i39.i, i8 10) #11 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(456) %0, i8 %2, i64 %i.w, ptr %i.x) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %6, align 8
  store i64 1, ptr %i.aa, align 8
  switch i8 %2, label %bb.f [
    i8 4, label %bb.e
    i8 12, label %bb.e
  ]

bb.e:                                             ; preds = %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit.i, %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit.i
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %6, i64 3
  %i.ab = and i8 %2, 7
  %i.ac = or disjoint i8 %i.ab, 32
  store i8 %i.ac, ptr %scevgep.i.i, align 1
  %i.ad = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = lshr i8 %2, 3
  store i64 2, ptr %i.aa, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit.i
  %i.af = phi ptr [ inttoptr (i64 1 to ptr), %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit.i ], [ inttoptr (i64 2 to ptr), %bb.e ]
  %i.ag = phi i64 [ 1, %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit.i ], [ 2, %bb.e ] ; 3 uses
  %i.ah = phi i8 [ 0, %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit.i ], [ %i.ae, %bb.e ] ; 3 uses
  %i.ai = icmp eq i32 %3, 0
  br i1 %i.ai, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  switch i8 %2, label %bb.h [
    i8 5, label %.thread.i.i
    i8 13, label %.thread.i.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.aj = and i8 %2, 7
  store i8 %i.aj, ptr %i.z, align 2
  %i.ak = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = lshr i8 %2, 3
  %i.am = or i8 %i.ah, %i.al
  store i8 %i.am, ptr %i.y, align 1
  br label %_ZN2v88internal6maglev12_GLOBAL__N_120LoadNewAllocationTopEPNS1_15MaglevAssemblerENS0_8RegisterES5_i.exit.i

bb.i:                                             ; preds = %bb.f
  %10 = sext i32 %3 to i64
  %11 = add nsw i64 %10, 128
  %i.an = icmp ult i64 %11, 256
  br i1 %i.an, label %.thread.i.i, label %bb.j

.thread.i.i:                                      ; preds = %bb.i, %bb.g, %bb.g
  %i.ao = and i8 %2, 7
  %i.ap = or disjoint i8 %i.ao, 64
  store i8 %i.ap, ptr %i.z, align 2
  %i.aq = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = lshr i8 %2, 3
  %i.as = or i8 %i.ah, %i.ar
  store i8 %i.as, ptr %i.y, align 1
  %i.at = trunc i32 %3 to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ag
  store i8 %i.at, ptr %i.au, align 1
  %i.av = add nuw nsw i64 %i.ag, 1
  %i.aw = inttoptr i64 %i.av to ptr
  br label %_ZN2v88internal6maglev12_GLOBAL__N_120LoadNewAllocationTopEPNS1_15MaglevAssemblerENS0_8RegisterES5_i.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ax = and i8 %2, 7
  %i.ay = or disjoint i8 %i.ax, -128
  store i8 %i.ay, ptr %i.z, align 2
  %i.az = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = lshr i8 %2, 3
  %i.bb = or i8 %i.ah, %i.ba
  store i8 %i.bb, ptr %i.y, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ag
  store i32 %3, ptr %i.bc, align 1
  %i.bd = load i64, ptr %i.aa, align 8
  %i.be = add i64 %i.bd, 4
  %i.bf = inttoptr i64 %i.be to ptr
  br label %_ZN2v88internal6maglev12_GLOBAL__N_120LoadNewAllocationTopEPNS1_15MaglevAssemblerENS0_8RegisterES5_i.exit.i

_ZN2v88internal6maglev12_GLOBAL__N_120LoadNewAllocationTopEPNS1_15MaglevAssemblerENS0_8RegisterES5_i.exit.i: ; preds = %bb.j, %.thread.i.i, %bb.h
  %i.bg = phi ptr [ %i.af, %bb.h ], [ %i.aw, %.thread.i.i ], [ %i.bf, %bb.j ]
  %i.bh = load i64, ptr %6, align 8
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %i.bh, ptr %i.bg, i32 noundef 8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bi = tail call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.sroa.0.0.i37.i, i8 10) #11 ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bi, 0
  %i.bk = extractvalue { i64, ptr } %i.bi, 1
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 59, i8 10, i64 %i.bj, ptr %i.bk, i32 noundef 8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %..i.i = select i1 %i.e, i32 126, i32 127
  store i32 %..i.i, ptr %i.b, align 4
  %i.bl = call noundef ptr @_ZN2v88internal6maglev15MaglevAssembler16MakeDeferredCodeIRFvPS2_NS1_16RegisterSnapshotENS0_8RegisterENS0_7BuiltinEiNS1_12ZoneLabelRefEEJRS5_RS6_S7_RiRS8_EEEPNS0_5LabelEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull @_ZN2v88internal6maglev12AllocateSlowIiEEvPNS1_15MaglevAssemblerENS1_16RegisterSnapshotENS0_8RegisterENS0_7BuiltinET_NS1_12ZoneLabelRefE, ptr noundef nonnull align 2 dereferenceable(6) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 3 uses
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 444), align 4
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %bb.k, label %_ZN2v88internal6maglev12_GLOBAL__N_111AllocateRawIiEEvPNS1_15MaglevAssemblerEPNS0_7IsolateENS1_16RegisterSnapshotENS0_8RegisterET_NS0_14AllocationTypeENS0_19AllocationAlignmentE.exit, !prof !5

bb.k:                                             ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_120LoadNewAllocationTopEPNS1_15MaglevAssemblerENS0_8RegisterES5_i.exit.i
  %i.bo = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not16.i.i.i.i = icmp eq ptr %i.bq, %i.bs
  br i1 %.not16.i.i.i.i, label %_ZN2v88internal6maglev12_GLOBAL__N_111AllocateRawIiEEvPNS1_15MaglevAssemblerEPNS0_7IsolateENS1_16RegisterSnapshotENS0_8RegisterET_NS0_14AllocationTypeENS0_19AllocationAlignmentE.exit, label %.lr.ph.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i, i64 8 ; 2 uses
  %.not17.i.i.i.i = icmp eq ptr %i.bt, %i.bs
  br i1 %.not17.i.i.i.i, label %_ZN2v88internal6maglev12_GLOBAL__N_111AllocateRawIiEEvPNS1_15MaglevAssemblerEPNS0_7IsolateENS1_16RegisterSnapshotENS0_8RegisterET_NS0_14AllocationTypeENS0_19AllocationAlignmentE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %bb.l
  %.sroa.09.013.i.i.i.i = phi ptr [ %i.bt, %bb.l ], [ %i.bq, %bb.k ] ; 2 uses
  %i.bu = load ptr, ptr %.sroa.09.013.i.i.i.i, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %.not.i.i16.i.i = icmp eq ptr %i.bv, %i.bl
  br i1 %.not.i.i16.i.i, label %_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i.i.i, label %bb.l

_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZN2v88internal6maglev15MaglevAssembler20EmitEagerDeoptStressEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef %i.bl) #12, !inline_history !6
  br label %_ZN2v88internal6maglev12_GLOBAL__N_111AllocateRawIiEEvPNS1_15MaglevAssemblerEPNS0_7IsolateENS1_16RegisterSnapshotENS0_8RegisterET_NS0_14AllocationTypeENS0_19AllocationAlignmentE.exit

_ZN2v88internal6maglev12_GLOBAL__N_111AllocateRawIiEEvPNS1_15MaglevAssemblerEPNS0_7IsolateENS1_16RegisterSnapshotENS0_8RegisterET_NS0_14AllocationTypeENS0_19AllocationAlignmentE.exit: ; preds = %bb.l, %_ZN2v88internal6maglev12_GLOBAL__N_120LoadNewAllocationTopEPNS1_15MaglevAssemblerENS0_8RegisterES5_i.exit.i, %bb.k, %_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i.i.i
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 noundef 3, ptr noundef %i.bl, i32 noundef 1) #11, !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.bw = call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.sroa.0.0.i39.i, i8 10) #11 ; 2 uses
  %i.bx = extractvalue { i64, ptr } %i.bw, 0
  %i.by = extractvalue { i64, ptr } %i.bw, 1
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %i.bx, ptr %i.by, i8 10, i32 noundef 8) #11
  %.sroa.0.0.copyload.i = load i8, ptr %8, align 1
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 0, i8 %.sroa.0.0.copyload.i, i64 1, i32 noundef 8) #11
  %i.bz = load ptr, ptr %9, align 8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %i.bz) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev15MaglevAssembler8AllocateENS1_16RegisterSnapshotENS0_8RegisterES4_NS0_14AllocationTypeENS0_19AllocationAlignmentE(ptr noundef nonnull align 8 dereferenceable(456) %0, i48 %1, i8 %2, i8 %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.v8::internal::maglev::RegisterSnapshot", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::Register", align 1 ; 5 uses
  %8 = alloca %"class.v8::internal::Register", align 1 ; 4 uses
  %9 = alloca %"class.v8::internal::maglev::ZoneLabelRef", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i48 %1, ptr %6, align 8
  store i8 %2, ptr %7, align 1
  store i8 %3, ptr %8, align 1
  %i.d = icmp eq i8 %4, 0                         ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_ZN2v88internal17ExternalReference32new_space_allocation_top_addressEPNS0_7IsolateE(ptr noundef %i.c) #11
  %i.f = tail call i64 @_ZN2v88internal17ExternalReference34new_space_allocation_limit_addressEPNS0_7IsolateE(ptr noundef %i.c) #11
  br label %_ZN2v88internal6maglev27SpaceAllocationLimitAddressEPNS0_7IsolateENS0_14AllocationTypeE.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @_ZN2v88internal17ExternalReference32old_space_allocation_top_addressEPNS0_7IsolateE(ptr noundef %i.c) #11
  %i.h = tail call i64 @_ZN2v88internal17ExternalReference34old_space_allocation_limit_addressEPNS0_7IsolateE(ptr noundef %i.c) #11
  br label %_ZN2v88internal6maglev27SpaceAllocationLimitAddressEPNS0_7IsolateENS0_14AllocationTypeE.exit.i

_ZN2v88internal6maglev27SpaceAllocationLimitAddressEPNS0_7IsolateENS0_14AllocationTypeE.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i40.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %.sroa.0.0.i38.i = phi i64 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = sub i64 %i.m, %i.o
  %i.q = icmp ult i64 %i.p, 8
  br i1 %i.q, label %bb.d, label %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit.i, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal6maglev27SpaceAllocationLimitAddressEPNS0_7IsolateENS0_14AllocationTypeE.exit.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 noundef 8) #11
  %.pre.i.i.i.i.i = load i64, ptr %i.n, align 8
  br label %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit.i

_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit.i: ; preds = %bb.d, %_ZN2v88internal6maglev27SpaceAllocationLimitAddressEPNS0_7IsolateENS0_14AllocationTypeE.exit.i
  %i.r = phi i64 [ %.pre.i.i.i.i.i, %bb.d ], [ %i.o, %_ZN2v88internal6maglev27SpaceAllocationLimitAddressEPNS0_7IsolateENS0_14AllocationTypeE.exit.i ] ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = add i64 %i.r, 8
  store i64 %i.t, ptr %i.n, align 8
  store i64 0, ptr %i.s, align 4
  store ptr %i.s, ptr %9, align 8
  %i.u = tail call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.sroa.0.0.i40.i, i8 10) #11 ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0
  %i.w = extractvalue { i64, ptr } %i.u, 1
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(456) %0, i8 %2, i64 %i.v, ptr %i.w) #11
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(456) %0, i8 10, i8 %2) #11
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 3, i8 10, i8 %3, i32 noundef 8) #11
  %i.x = tail call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.sroa.0.0.i38.i, i8 10) #11 ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = extractvalue { i64, ptr } %i.x, 1
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 59, i8 10, i64 %i.y, ptr %i.z, i32 noundef 8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %..i.i = select i1 %i.d, i32 126, i32 127
  store i32 %..i.i, ptr %i.a, align 4
  %i.aa = call noundef ptr @_ZN2v88internal6maglev15MaglevAssembler16MakeDeferredCodeIRFvPS2_NS1_16RegisterSnapshotENS0_8RegisterENS0_7BuiltinES6_NS1_12ZoneLabelRefEEJRS5_RS6_S7_SC_RS8_EEEPNS0_5LabelEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull @_ZN2v88internal6maglev12AllocateSlowINS0_8RegisterEEEvPNS1_15MaglevAssemblerENS1_16RegisterSnapshotES3_NS0_7BuiltinET_NS1_12ZoneLabelRefE, ptr noundef nonnull align 2 dereferenceable(6) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 3 uses
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 444), align 4
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %_ZN2v88internal6maglev12_GLOBAL__N_111AllocateRawINS0_8RegisterEEEvPNS1_15MaglevAssemblerEPNS0_7IsolateENS1_16RegisterSnapshotES4_T_NS0_14AllocationTypeENS0_19AllocationAlignmentE.exit, !prof !5

bb.e:                                             ; preds = %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit.i
  %i.ad = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not16.i.i.i.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not16.i.i.i.i, label %_ZN2v88internal6maglev12_GLOBAL__N_111AllocateRawINS0_8RegisterEEEvPNS1_15MaglevAssemblerEPNS0_7IsolateENS1_16RegisterSnapshotES4_T_NS0_14AllocationTypeENS0_19AllocationAlignmentE.exit, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i, i64 8 ; 2 uses
  %.not17.i.i.i.i = icmp eq ptr %i.ai, %i.ah
  br i1 %.not17.i.i.i.i, label %_ZN2v88internal6maglev12_GLOBAL__N_111AllocateRawINS0_8RegisterEEEvPNS1_15MaglevAssemblerEPNS0_7IsolateENS1_16RegisterSnapshotES4_T_NS0_14AllocationTypeENS0_19AllocationAlignmentE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.09.013.i.i.i.i = phi ptr [ %i.ai, %bb.f ], [ %i.af, %bb.e ] ; 2 uses
  %i.aj = load ptr, ptr %.sroa.09.013.i.i.i.i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.not.i.i16.i.i = icmp eq ptr %i.ak, %i.aa
  br i1 %.not.i.i16.i.i, label %_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i.i.i, label %bb.f

_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZN2v88internal6maglev15MaglevAssembler20EmitEagerDeoptStressEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef %i.aa) #12, !inline_history !6
  br label %_ZN2v88internal6maglev12_GLOBAL__N_111AllocateRawINS0_8RegisterEEEvPNS1_15MaglevAssemblerEPNS0_7IsolateENS1_16RegisterSnapshotES4_T_NS0_14AllocationTypeENS0_19AllocationAlignmentE.exit

_ZN2v88internal6maglev12_GLOBAL__N_111AllocateRawINS0_8RegisterEEEvPNS1_15MaglevAssemblerEPNS0_7IsolateENS1_16RegisterSnapshotES4_T_NS0_14AllocationTypeENS0_19AllocationAlignmentE.exit: ; preds = %bb.f, %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit.i, %bb.e, %_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i.i.i
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 noundef 3, ptr noundef %i.aa, i32 noundef 1) #11, !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.al = call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.sroa.0.0.i40.i, i8 10) #11 ; 2 uses
  %i.am = extractvalue { i64, ptr } %i.al, 0
  %i.an = extractvalue { i64, ptr } %i.al, 1
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %i.am, ptr %i.an, i8 10, i32 noundef 8) #11
  %.sroa.0.0.copyload.i = load i8, ptr %7, align 1
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 0, i8 %.sroa.0.0.copyload.i, i64 1, i32 noundef 8) #11
  %i.ao = load ptr, ptr %9, align 8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %i.ao) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev15MaglevAssembler25LoadSingleCharacterStringENS0_8RegisterES3_S3_(ptr noundef nonnull align 8 dereferenceable(456) %0, i8 %1, i8 %2, i8 %3) local_unnamed_addr #0 align 2 {
_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit:
  %i.a = tail call noundef i32 @_ZN2v88internal18MacroAssemblerBase30RootRegisterOffsetForRootIndexENS0_9RootIndexE(i16 noundef zeroext 328) #11 ; 3 uses
  %i.b = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.b)
  %4 = sext i32 %i.a to i64
  %5 = add nsw i64 %4, 128
  %i.c = icmp ult i64 %5, 256                     ; 3 uses
  %.sroa.12.sroa.4.0.extract.shift = and i32 %i.a, -256
  %.sroa.12.sroa.4.sroa.0.0 = select i1 %i.c, i32 0, i32 %.sroa.12.sroa.4.0.extract.shift
  %.sroa.7.0 = select i1 %i.c, i64 4456448, i64 8650752
  %storemerge = select i1 %i.c, i64 3, i64 6
  %i.d = lshr i8 %2, 2
  %i.e = or i8 %i.d, 1
  %i.f = shl nuw nsw i8 %2, 3
  %i.g = or i8 %i.f, -59
  %.sroa.12.sroa.0.0.insert.ext = and i32 %i.a, 255
  %.sroa.12.sroa.0.0.insert.insert = or disjoint i32 %.sroa.12.sroa.4.sroa.0.0, %.sroa.12.sroa.0.0.insert.ext
  %.sroa.12.0.insert.ext = zext i32 %.sroa.12.sroa.0.0.insert.insert to i64
  %.sroa.12.0.insert.shift = shl nuw i64 %.sroa.12.0.insert.ext, 32
  %.sroa.10.0.insert.ext = zext i8 %i.g to i64
  %.sroa.10.0.insert.shift = shl nuw nsw i64 %.sroa.10.0.insert.ext, 24
  %.sroa.10.0.insert.insert = or disjoint i64 %.sroa.12.0.insert.shift, %.sroa.10.0.insert.shift
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.10.0.insert.insert, %.sroa.7.0
  %.sroa.2.0.insert.ext = zext nneg i8 %i.e to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.insert, %.sroa.2.0.insert.shift
  %.cast = inttoptr i64 %storemerge to ptr
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %.sroa.2.0.insert.insert, ptr nonnull %.cast, i32 noundef 8) #11
  ret void
}

declare noundef i32 @_ZN2v88internal18MacroAssemblerBase30RootRegisterOffsetForRootIndexENS0_9RootIndexE(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev15MaglevAssembler18StringFromCharCodeENS1_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterES6_S6_NS2_16CharCodeMaskModeE(ptr noundef nonnull align 8 dereferenceable(456) %0, i48 %1, ptr noundef %2, i8 %3, i8 %4, i8 %5, i32 noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScope", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = icmp ult i64 %i.h, 8
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef 8) #11
  %.pre.i.i.i.i = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit

_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %.pre.i.i.i.i, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = add i64 %i.j, 8
  store i64 %i.l, ptr %i.f, align 8
  store i64 0, ptr %i.k, align 4
  %i.m = icmp eq i32 %6, 1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 4, i8 %4, i64 65535, i32 noundef 4) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 7, i8 %4, i64 255, i32 noundef 4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store ptr %0, ptr %7, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 5 uses
  store ptr %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  store i16 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 0, ptr %i.r, align 2
  store ptr %7, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  store i8 1, ptr %i.s, align 4
  br label %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load <2 x i16>, ptr %i.t, align 8
  store <2 x i16> %i.u, ptr %i.q, align 8
  store ptr %7, ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.x = load i8, ptr %i.w, align 4, !range !7, !noundef !8
  store i8 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 21
  %i.z = load i8, ptr %i.y, align 1, !range !7, !noundef !8
  br label %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i.i

_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i.i: ; preds = %bb.e, %.thread.i.i.i
  %i.aa = phi ptr [ %i.v, %bb.e ], [ %i.s, %.thread.i.i.i ]
  %i.ab = phi i8 [ %i.z, %bb.e ], [ 1, %.thread.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 21
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.q, align 8
  %i.af = load i16, ptr %i.aa, align 4
  %i.ag = zext i16 %i.af to i48
  %i.ah = shl nuw i48 %i.ag, 32
  %.sroa.01.0.insert.ext.i.i.i = zext i32 %.sroa.0.0.copyload.i.i.i.i to i48
  %.sroa.01.0.insert.insert.i.i.i = or disjoint i48 %i.ah, %.sroa.01.0.insert.ext.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = sub i64 %i.aj, %i.al
  %i.an = icmp ult i64 %i.am, 56
  br i1 %i.an, label %bb.f, label %"_ZN2v88internal4Zone3NewINS0_6maglev6detail20DeferredCodeInfoImplIZNS3_15MaglevAssembler18StringFromCharCodeENS3_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterESA_SA_NS6_16CharCodeMaskModeEE3$_0EEJPNS3_21MaglevCompilationInfoENS6_22TemporaryRegisterScope9SavedDataERSC_RS7_RNS3_12ZoneLabelRefERSA_SM_SM_EEEPT_DpOT0_.exit.i.i", !prof !5

bb.f:                                             ; preds = %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 noundef 56) #11
  %.pre.i.i.i.i10 = load i64, ptr %i.ak, align 8
  br label %"_ZN2v88internal4Zone3NewINS0_6maglev6detail20DeferredCodeInfoImplIZNS3_15MaglevAssembler18StringFromCharCodeENS3_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterESA_SA_NS6_16CharCodeMaskModeEE3$_0EEJPNS3_21MaglevCompilationInfoENS6_22TemporaryRegisterScope9SavedDataERSC_RS7_RNS3_12ZoneLabelRefERSA_SM_SM_EEEPT_DpOT0_.exit.i.i"

"_ZN2v88internal4Zone3NewINS0_6maglev6detail20DeferredCodeInfoImplIZNS3_15MaglevAssembler18StringFromCharCodeENS3_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterESA_SA_NS6_16CharCodeMaskModeEE3$_0EEJPNS3_21MaglevCompilationInfoENS6_22TemporaryRegisterScope9SavedDataERSC_RS7_RNS3_12ZoneLabelRefERSA_SM_SM_EEEPT_DpOT0_.exit.i.i": ; preds = %bb.f, %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i.i
  %i.ao = phi i64 [ %.pre.i.i.i.i10, %bb.f ], [ %i.al, %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i.i ] ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr               ; 12 uses
  %i.aq = add i64 %i.ao, 56
  store i64 %i.aq, ptr %i.ak, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  store i32 0, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.as, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @"_ZTVN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_15MaglevAssembler18StringFromCharCodeENS1_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterES8_S8_NS4_16CharCodeMaskModeEE3$_0EE", i64 16), ptr %i.ap, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr @"_ZZN2v88internal6maglev15MaglevAssembler18StringFromCharCodeENS1_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterES6_S6_NS2_16CharCodeMaskModeEEN3$_08__invokeEPS2_S3_NS1_12ZoneLabelRefES6_S6_S6_", ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i8 %5, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 25
  store i8 %4, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 26
  store i8 %3, ptr %i.aw, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i64 %i.j, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i48 %1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i48 %.sroa.01.0.insert.insert.i.i.i, ptr %i.az, align 8
  %i.ba = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 40 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %.not.i.i9.i.i = icmp eq ptr %i.bd, %i.bf
  br i1 %.not.i.i9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZN2v88internal4Zone3NewINS0_6maglev6detail20DeferredCodeInfoImplIZNS3_15MaglevAssembler18StringFromCharCodeENS3_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterESA_SA_NS6_16CharCodeMaskModeEE3$_0EEJPNS3_21MaglevCompilationInfoENS6_22TemporaryRegisterScope9SavedDataERSC_RS7_RNS3_12ZoneLabelRefERSA_SM_SM_EEEPT_DpOT0_.exit.i.i"
  store ptr %i.ap, ptr %i.bd, align 8
  %i.bg = load ptr, ptr %i.bc, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bh, ptr %i.bc, align 8
  br label %"_ZN2v88internal6maglev15MaglevAssembler16MakeDeferredCodeIZNS2_18StringFromCharCodeENS1_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterES7_S7_NS2_16CharCodeMaskModeEE3$_0JRS4_RNS1_12ZoneLabelRefERS7_SD_SD_EEES6_OT_DpOT0_.exit.i"

bb.h:                                             ; preds = %"_ZN2v88internal4Zone3NewINS0_6maglev6detail20DeferredCodeInfoImplIZNS3_15MaglevAssembler18StringFromCharCodeENS3_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterESA_SA_NS6_16CharCodeMaskModeEE3$_0EEJPNS3_21MaglevCompilationInfoENS6_22TemporaryRegisterScope9SavedDataERSC_RS7_RNS3_12ZoneLabelRefERSA_SM_SM_EEEPT_DpOT0_.exit.i.i"
  %i.bi = load ptr, ptr %i.bb, align 8            ; 4 uses
  %i.bj = ptrtoint ptr %i.bd to i64
  %i.bk = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 5 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %bb.i, label %_ZNKSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #13
  unreachable

_ZNKSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %i.bn = ashr exact i64 %i.bl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = call i64 @llvm.umin.i64(i64 %i.bo, i64 1152921504606846975)
  %i.br = select i1 %i.bp, i64 1152921504606846975, i64 %i.bq ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.br, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #14 ; 4 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.bl ; 2 uses
  store ptr %i.ap, ptr %i.bu, align 8
  %i.bv = icmp sgt i64 %i.bl, 0
  br i1 %i.bv, label %bb.j, label %_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr align 8 %i.bi, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i

_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i
  %i.bx = load ptr, ptr %i.be, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bz) #15
  br label %_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i
  store ptr %i.bt, ptr %i.bb, align 8
  store ptr %i.bw, ptr %i.bc, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br
  store ptr %i.ca, ptr %i.be, align 8
  br label %"_ZN2v88internal6maglev15MaglevAssembler16MakeDeferredCodeIZNS2_18StringFromCharCodeENS1_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterES7_S7_NS2_16CharCodeMaskModeEE3$_0JRS4_RNS1_12ZoneLabelRefERS7_SD_SD_EEES6_OT_DpOT0_.exit.i"

"_ZN2v88internal6maglev15MaglevAssembler16MakeDeferredCodeIZNS2_18StringFromCharCodeENS1_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterES7_S7_NS2_16CharCodeMaskModeEE3$_0JRS4_RNS1_12ZoneLabelRefERS7_SD_SD_EEES6_OT_DpOT0_.exit.i": ; preds = %_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i, %bb.g
  %i.cb = load ptr, ptr %i.n, align 8
  %i.cc = load ptr, ptr %7, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 448
  store ptr %i.cb, ptr %i.cd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 444), align 4
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %bb.l, label %"_ZN2v88internal6maglev15MaglevAssembler16JumpToDeferredIfIZNS2_18StringFromCharCodeENS1_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterES7_S7_NS2_16CharCodeMaskModeEE3$_0JRS4_RNS1_12ZoneLabelRefERS7_SD_SD_EEEvNS0_9ConditionEOT_DpOT0_.exit", !prof !5

bb.l:                                             ; preds = %"_ZN2v88internal6maglev15MaglevAssembler16MakeDeferredCodeIZNS2_18StringFromCharCodeENS1_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterES7_S7_NS2_16CharCodeMaskModeEE3$_0JRS4_RNS1_12ZoneLabelRefERS7_SD_SD_EEES6_OT_DpOT0_.exit.i"
  %i.cg = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.ci, %i.ck
  br i1 %.not16.i.i.i, label %"_ZN2v88internal6maglev15MaglevAssembler16JumpToDeferredIfIZNS2_18StringFromCharCodeENS1_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterES7_S7_NS2_16CharCodeMaskModeEE3$_0JRS4_RNS1_12ZoneLabelRefERS7_SD_SD_EEEvNS0_9ConditionEOT_DpOT0_.exit", label %.lr.ph.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i, i64 8 ; 2 uses
  %.not17.i.i.i = icmp eq ptr %i.cl, %i.ck
  br i1 %.not17.i.i.i, label %"_ZN2v88internal6maglev15MaglevAssembler16JumpToDeferredIfIZNS2_18StringFromCharCodeENS1_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterES7_S7_NS2_16CharCodeMaskModeEE3$_0JRS4_RNS1_12ZoneLabelRefERS7_SD_SD_EEEvNS0_9ConditionEOT_DpOT0_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %bb.m
  %.sroa.09.013.i.i.i = phi ptr [ %i.cl, %bb.m ], [ %i.ci, %bb.l ] ; 2 uses
  %i.cm = load ptr, ptr %.sroa.09.013.i.i.i, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %.not.i.i16.i = icmp eq ptr %i.cn, %i.ar
  br i1 %.not.i.i16.i, label %_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i.i, label %bb.m

_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZN2v88internal6maglev15MaglevAssembler20EmitEagerDeoptStressEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull %i.ar) #12, !inline_history !6
  br label %"_ZN2v88internal6maglev15MaglevAssembler16JumpToDeferredIfIZNS2_18StringFromCharCodeENS1_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterES7_S7_NS2_16CharCodeMaskModeEE3$_0JRS4_RNS1_12ZoneLabelRefERS7_SD_SD_EEEvNS0_9ConditionEOT_DpOT0_.exit"

"_ZN2v88internal6maglev15MaglevAssembler16JumpToDeferredIfIZNS2_18StringFromCharCodeENS1_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterES7_S7_NS2_16CharCodeMaskModeEE3$_0JRS4_RNS1_12ZoneLabelRefERS7_SD_SD_EEEvNS0_9ConditionEOT_DpOT0_.exit": ; preds = %bb.m, %"_ZN2v88internal6maglev15MaglevAssembler16MakeDeferredCodeIZNS2_18StringFromCharCodeENS1_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterES7_S7_NS2_16CharCodeMaskModeEE3$_0JRS4_RNS1_12ZoneLabelRefERS7_SD_SD_EEES6_OT_DpOT0_.exit.i", %bb.l, %_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i.i
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 noundef 7, ptr noundef nonnull %i.ar, i32 noundef 1) #11, !inline_history !6
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %"_ZN2v88internal6maglev15MaglevAssembler16JumpToDeferredIfIZNS2_18StringFromCharCodeENS1_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterES7_S7_NS2_16CharCodeMaskModeEE3$_0JRS4_RNS1_12ZoneLabelRefERS7_SD_SD_EEEvNS0_9ConditionEOT_DpOT0_.exit"
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %2) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %"_ZN2v88internal6maglev15MaglevAssembler16JumpToDeferredIfIZNS2_18StringFromCharCodeENS1_16RegisterSnapshotEPNS0_5LabelENS0_8RegisterES7_S7_NS2_16CharCodeMaskModeEE3$_0JRS4_RNS1_12ZoneLabelRefERS7_SD_SD_EEEvNS0_9ConditionEOT_DpOT0_.exit"
  %i.co = call noundef i32 @_ZN2v88internal18MacroAssemblerBase30RootRegisterOffsetForRootIndexENS0_9RootIndexE(i16 noundef zeroext 328) #11 ; 3 uses
  %i.cp = icmp samesign ult i8 %4, 16
  call void @llvm.assume(i1 %i.cp)
  %8 = sext i32 %i.co to i64
  %9 = add nsw i64 %8, 128
  %i.cq = icmp ult i64 %9, 256                    ; 3 uses
  %.sroa.12.sroa.4.0.extract.shift.i = and i32 %i.co, -256
  %.sroa.12.sroa.4.sroa.0.0.i = select i1 %i.cq, i32 0, i32 %.sroa.12.sroa.4.0.extract.shift.i
  %.sroa.7.0.i = select i1 %i.cq, i64 4456448, i64 8650752
  %storemerge.i = select i1 %i.cq, i64 3, i64 6
  %i.cr = lshr i8 %4, 2
  %i.cs = or i8 %i.cr, 1
  %i.ct = shl nuw nsw i8 %4, 3
  %i.cu = or i8 %i.ct, -59
  %.sroa.12.sroa.0.0.insert.ext.i = and i32 %i.co, 255
  %.sroa.12.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.12.sroa.4.sroa.0.0.i, %.sroa.12.sroa.0.0.insert.ext.i
  %.sroa.12.0.insert.ext.i = zext i32 %.sroa.12.sroa.0.0.insert.insert.i to i64
  %.sroa.12.0.insert.shift.i = shl nuw i64 %.sroa.12.0.insert.ext.i, 32
  %.sroa.10.0.insert.ext.i = zext i8 %i.cu to i64
  %.sroa.10.0.insert.shift.i = shl nuw nsw i64 %.sroa.10.0.insert.ext.i, 24
  %.sroa.10.0.insert.insert.i = or disjoint i64 %.sroa.12.0.insert.shift.i, %.sroa.10.0.insert.shift.i
  %.sroa.7.0.insert.insert.i = or disjoint i64 %.sroa.10.0.insert.insert.i, %.sroa.7.0.i
  %.sroa.2.0.insert.ext.i = zext nneg i8 %i.cs to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 8
  %.sroa.2.0.insert.insert.i = or disjoint i64 %.sroa.7.0.insert.insert.i, %.sroa.2.0.insert.shift.i
  %.cast.i = inttoptr i64 %storemerge.i to ptr
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(456) %0, i8 %3, i64 %.sroa.2.0.insert.insert.i, ptr nonnull %.cast.i, i32 noundef 8) #11
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %i.k) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev15MaglevAssembler27StringCharCodeOrCodePointAtENS1_43BuiltinStringPrototypeCharCodeOrCodePointAt4ModeERNS1_16RegisterSnapshotENS0_8RegisterES7_S7_S7_S7_PNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %2, i8 %3, i8 %4, i8 %5, i8 %6, i8 %7, ptr noundef %8) local_unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %10 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %11 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %12 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %13 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %14 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %15 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %16 = alloca %"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScope", align 8 ; 12 uses
  %17 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %18 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %19 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %20 = alloca %"class.v8::internal::Label", align 4 ; 8 uses
  %21 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = icmp ult i64 %i.h, 8
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef 8) #11
  %.pre.i.i.i.i = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit

_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %.pre.i.i.i.i, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.k = inttoptr i64 %i.j to ptr                 ; 5 uses
  %i.l = add i64 %i.j, 8
  store i64 %i.l, ptr %i.f, align 8
  store i64 0, ptr %i.k, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  store i32 0, ptr %17, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 0, ptr %i.m, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  store i32 0, ptr %18, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 0, ptr %i.n, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  store i32 0, ptr %19, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i32 0, ptr %i.o, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  store ptr %0, ptr %16, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 5 uses
  store ptr %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %bb.c

.thread.i.i:                                      ; preds = %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit
  store i16 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 18
  store i16 0, ptr %i.t, align 2
  store ptr %16, ptr %i.q, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  store i8 1, ptr %i.u, align 4
  br label %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i

bb.c:                                             ; preds = %_ZN2v88internal6maglev12ZoneLabelRefC2EPNS1_15MaglevAssemblerE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load <2 x i16>, ptr %i.v, align 8
  store <2 x i16> %i.w, ptr %i.s, align 8
  store ptr %16, ptr %i.q, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.z = load i8, ptr %i.y, align 4, !range !7, !noundef !8
  store i8 %i.z, ptr %i.x, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 21
  %i.ab = load i8, ptr %i.aa, align 1, !range !7, !noundef !8
  br label %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i

_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i: ; preds = %bb.c, %.thread.i.i
  %i.ac = phi ptr [ %i.x, %bb.c ], [ %i.u, %.thread.i.i ]
  %i.ad = phi i8 [ %i.ab, %bb.c ], [ 1, %.thread.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 21
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.s, align 8
  %i.ah = load i16, ptr %i.ac, align 4
  %i.ai = zext i16 %i.ah to i48
  %i.aj = shl nuw i48 %i.ai, 32
  %.sroa.01.0.insert.ext.i.i = zext i32 %.sroa.0.0.copyload.i.i.i to i48
  %.sroa.01.0.insert.insert.i.i = or disjoint i48 %i.aj, %.sroa.01.0.insert.ext.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = sub i64 %i.al, %i.an
  %i.ap = icmp ult i64 %i.ao, 64
  br i1 %i.ap, label %bb.d, label %"_ZN2v88internal4Zone3NewINS0_6maglev6detail20DeferredCodeInfoImplIZNS3_15MaglevAssembler27StringCharCodeOrCodePointAtENS3_43BuiltinStringPrototypeCharCodeOrCodePointAt4ModeERNS3_16RegisterSnapshotENS0_8RegisterESB_SB_SB_SB_PNS0_5LabelEE3$_0EEJPNS3_21MaglevCompilationInfoENS6_22TemporaryRegisterScope9SavedDataERSE_RS8_SA_RNS3_12ZoneLabelRefERSB_SO_SO_EEEPT_DpOT0_.exit.i", !prof !5

bb.d:                                             ; preds = %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, i64 noundef 64) #11
  %.pre.i.i.i = load i64, ptr %i.am, align 8
  br label %"_ZN2v88internal4Zone3NewINS0_6maglev6detail20DeferredCodeInfoImplIZNS3_15MaglevAssembler27StringCharCodeOrCodePointAtENS3_43BuiltinStringPrototypeCharCodeOrCodePointAt4ModeERNS3_16RegisterSnapshotENS0_8RegisterESB_SB_SB_SB_PNS0_5LabelEE3$_0EEJPNS3_21MaglevCompilationInfoENS6_22TemporaryRegisterScope9SavedDataERSE_RS8_SA_RNS3_12ZoneLabelRefERSB_SO_SO_EEEPT_DpOT0_.exit.i"

"_ZN2v88internal4Zone3NewINS0_6maglev6detail20DeferredCodeInfoImplIZNS3_15MaglevAssembler27StringCharCodeOrCodePointAtENS3_43BuiltinStringPrototypeCharCodeOrCodePointAt4ModeERNS3_16RegisterSnapshotENS0_8RegisterESB_SB_SB_SB_PNS0_5LabelEE3$_0EEJPNS3_21MaglevCompilationInfoENS6_22TemporaryRegisterScope9SavedDataERSE_RS8_SA_RNS3_12ZoneLabelRefERSB_SO_SO_EEEPT_DpOT0_.exit.i": ; preds = %bb.d, %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i
  %i.aq = phi i64 [ %.pre.i.i.i, %bb.d ], [ %i.an, %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i ] ; 2 uses
  %i.ar = inttoptr i64 %i.aq to ptr               ; 13 uses
  %i.as = add i64 %i.aq, 64
  store i64 %i.as, ptr %i.am, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  store i32 0, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.au, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @"_ZTVN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_15MaglevAssembler27StringCharCodeOrCodePointAtENS1_43BuiltinStringPrototypeCharCodeOrCodePointAt4ModeERNS1_16RegisterSnapshotENS0_8RegisterES9_S9_S9_S9_PNS0_5LabelEE3$_0EE", i64 16), ptr %i.ar, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr @"_ZZN2v88internal6maglev15MaglevAssembler27StringCharCodeOrCodePointAtENS1_43BuiltinStringPrototypeCharCodeOrCodePointAt4ModeERNS1_16RegisterSnapshotENS0_8RegisterES7_S7_S7_S7_PNS0_5LabelEEN3$_08__invokeEPS2_S4_S5_NS1_12ZoneLabelRefES7_S7_S7_", ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load i48, ptr %2, align 2
  store i8 %5, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 25
  store i8 %4, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 26
  store i8 %3, ptr %i.ay, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i64 %i.j, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i48 %.sroa.0.0.copyload.i.i.i.i, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store i32 %1, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store i48 %.sroa.01.0.insert.insert.i.i, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 40 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %.not.i.i10.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i.i10.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN2v88internal4Zone3NewINS0_6maglev6detail20DeferredCodeInfoImplIZNS3_15MaglevAssembler27StringCharCodeOrCodePointAtENS3_43BuiltinStringPrototypeCharCodeOrCodePointAt4ModeERNS3_16RegisterSnapshotENS0_8RegisterESB_SB_SB_SB_PNS0_5LabelEE3$_0EEJPNS3_21MaglevCompilationInfoENS6_22TemporaryRegisterScope9SavedDataERSE_RS8_SA_RNS3_12ZoneLabelRefERSB_SO_SO_EEEPT_DpOT0_.exit.i"
  store ptr %i.ar, ptr %i.bg, align 8
  %i.bj = load ptr, ptr %i.bf, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.bf, align 8
  br label %bb.j

bb.f:                                             ; preds = %"_ZN2v88internal4Zone3NewINS0_6maglev6detail20DeferredCodeInfoImplIZNS3_15MaglevAssembler27StringCharCodeOrCodePointAtENS3_43BuiltinStringPrototypeCharCodeOrCodePointAt4ModeERNS3_16RegisterSnapshotENS0_8RegisterESB_SB_SB_SB_PNS0_5LabelEE3$_0EEJPNS3_21MaglevCompilationInfoENS6_22TemporaryRegisterScope9SavedDataERSE_RS8_SA_RNS3_12ZoneLabelRefERSB_SO_SO_EEEPT_DpOT0_.exit.i"
  %i.bl = load ptr, ptr %i.be, align 8            ; 4 uses
  %i.bm = ptrtoint ptr %i.bg to i64
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.g, label %_ZNKSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #13
  unreachable

_ZNKSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.f
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #14 ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store ptr %i.ar, ptr %i.bx, align 8
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.h, label %_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.bl, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i

_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.i
end_hunk_0
