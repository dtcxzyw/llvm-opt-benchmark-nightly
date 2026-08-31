Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/isolate-group?download=true
inline.NumInlined: 775
inline.NumDeleted: 525
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.77", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", [4 x i8], %"class.v8::internal::FlagValue.78", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.77", %"class.v8::internal::FlagValue.77", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.77", %"class.v8::internal::FlagValue.79", %"class.v8::internal::FlagValue.79", %"class.v8::internal::FlagValue.79", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.77", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.77", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.78", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.77", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.77", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.78", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", [4 x i8], %"class.v8::internal::FlagValue.78", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.77", %"class.v8::internal::FlagValue.77", %"class.v8::internal::FlagValue.77", %"class.v8::internal::FlagValue.77", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue.76", [4 x i8], %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.77", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.78", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.78", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.79", %"class.v8::internal::FlagValue.79", %"class.v8::internal::FlagValue.79", %"class.v8::internal::FlagValue.79", %"class.v8::internal::FlagValue.79", %"class.v8::internal::FlagValue.79", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.77", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.77", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.78", %"class.v8::internal::FlagValue.78", %"class.v8::internal::FlagValue.78", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.77", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.79", [2 x i8], %"class.v8::internal::FlagValue.76", [4 x i8], %"class.v8::internal::FlagValue.78", %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.77", %"class.v8::internal::FlagValue.77", [4 x i8], %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.80", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.76", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.75", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.79" = type { %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base" }
%"struct.std::_Optional_payload_base" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.78" = type { double }
%"class.v8::internal::FlagValue.77" = type { i32 }
%"class.v8::internal::FlagValue.80" = type { i64 }
%"class.v8::internal::FlagValue.76" = type { i32 }
%"class.v8::internal::FlagValue.75" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"struct.v8::OOMDetails" = type { i8, ptr }
%"struct.v8::internal::ThreadIsolation::TrustedData" = type { ptr, i32, ptr, ptr, [4064 x i8] }
%"struct.absl::container_internal::PolicyFunctions" = type { i32, i32, i32, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.std::function.610" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"struct.absl::container_internal::HashKey" = type { ptr, ptr }
%"class.std::unique_ptr.590" = type { %"struct.std::__uniq_ptr_data.591" }
%"struct.std::__uniq_ptr_data.591" = type { %"class.std::__uniq_ptr_impl.592" }
%"class.std::__uniq_ptr_impl.592" = type { %"class.std::tuple.593" }
%"class.std::tuple.593" = type { %"struct.std::_Tuple_impl.594" }
%"struct.std::_Tuple_impl.594" = type { %"struct.std::_Head_base.597" }
%"struct.std::_Head_base.597" = type { ptr }

$_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE10InitializeEv = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5eraseIS6_EEmRKT_ = comdat any

$_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb = comdat any

$_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE10InitializeEv = comdat any

$_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E9_M_invokeERKSt9_Any_data = comdat any

$_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation = comdat any

$_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS0_6HashEqIPN2v88internal7IsolateEvE4HashES6_Lb0EEEmPKvPvm = comdat any

$_ZN4absl18container_internal20TransferNRelocatableILm8EEEvPvS2_S2_m = comdat any

$_ZN4absl18container_internal20AllocateBackingArrayILm8ESaIcEEEPvS3_m = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSJ_PFvSJ_hmmE = comdat any

$_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPN2v88internal7IsolateEvE4HashES8_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5eraseENSD_8iteratorE = comdat any

$_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE18GetPolicyFunctionsEvE5value = comdat any

@_ZN2v88internal12IsolateGroup22default_isolate_group_E = hidden local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"(default_isolate_group_) == nullptr\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"(group->page_allocator_) != nullptr\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"inserted\00", align 1
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str.4 = private unnamed_addr constant [33 x i8] c"isolate == shared_space_isolate_\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"isolates_.erase(isolate) == 1\00", align 1
@.str.6 = private unnamed_addr constant [98 x i8] c"Creation of new isolate groups requires enabling multiple pointer compression cages at build-time\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"group->reference_count_.load() == 1\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"!group->has_shared_space_isolate()\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Failed to reserve virtual memory for CodeRange\00", align 1
@_ZN2v88internal2V813kNoOOMDetailsE = external global %"struct.v8::OOMDetails", align 8
@_ZTVN2v88internal9CodeRangeE = external unnamed_addr constant { [4 x ptr] }, align 8
@.str.10 = private unnamed_addr constant [63 x i8] c"ExternalEntityTable::InitializeTable (r/o segments allocation)\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"SegmentedTable::InitializeTable (subspace allocation)\00", align 1
@_ZN2v88internal15ThreadIsolation13trusted_data_E = external local_unnamed_addr global %"struct.v8::internal::ThreadIsolation::TrustedData", align 4096
@_ZN4absl18container_internal11kSooControlE = external constant [2 x i8], align 1
@_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::container_internal::PolicyFunctions" { i32 8, i32 8, i32 8, i16 8, i8 1, i8 1, ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS0_6HashEqIPN2v88internal7IsolateEvE4HashES6_Lb0EEEmPKvPvm, ptr @_ZN4absl18container_internal20TransferNRelocatableILm8EEEvPvS2_S2_m, ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8ESaIcEEEPvS3_m, ptr @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSJ_PFvSJ_hmmE }, comdat, align 8
@_ZN4absl13hash_internal15MixingHashState5kSeedE = external constant ptr, align 8
@_ZN4absl18container_internal19kDefaultIterControlE = external global i8, align 1
@.str.13 = private unnamed_addr constant [100 x i8] c"Comparing default-constructed hashtable iterator with a non-default-constructed hashtable iterator.\00", align 1
@.str.15 = private unnamed_addr constant [76 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/container/internal/raw_hash_set.h\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Invalid iterator comparison. %s\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"erase()\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"%s called on end() iterator.\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"%s called on default-constructed iterator.\00", align 1
@.str.20 = private unnamed_addr constant [166 x i8] c"%s called on invalid iterator. The element might have been erased or the table might have rehashed. Consider running with --config=asan to diagnose rehashing issues.\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"operator*()\00", align 1

@_ZN2v88internal12IsolateGroupD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2v88internal12IsolateGroupD2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12IsolateGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(10736) dereferenceable(10736) initializes((10688, 10696)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal10MemoryPool8TearDownEv(ptr noundef nonnull align 8 dereferenceable(176) %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10688
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10696 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(44) %i.e, i64 noundef %i.g, i64 noundef 65536) #16, !inline_history !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10704
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 8) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.c, align 8
  %i.m = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE8TearDownEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %i.m) #16, !inline_history !6
  br label %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE8TearDownEv.exit

_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE8TearDownEv.exit: ; preds = %bb.e, %bb.f
  store ptr null, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  store ptr null, ptr %i.r, align 8
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt10unique_ptrIN2v88internal9CodeRangeESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN2v88internal9CodeRangeEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN2v88internal9CodeRangeEEclEPS2_.exit.i.i: ; preds = %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE8TearDownEv.exit
  tail call void @_ZN2v88internal9CodeRangeD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.s) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 72) #17
  br label %_ZNSt10unique_ptrIN2v88internal9CodeRangeESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN2v88internal9CodeRangeESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE8TearDownEv.exit, %_ZNKSt14default_deleteIN2v88internal9CodeRangeEEclEPS2_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10648 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8              ; 4 uses
  %i.v = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp ult i64 %i.u, 2
  br i1 %i.w, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EED2Ev.exit, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE7deallocEv.exit.i.i.a

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE7deallocEv.exit.i.i.a: ; preds = %_ZNSt10unique_ptrIN2v88internal9CodeRangeESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10656
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, 65536                      ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.z, 0
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 10664
  %.sroa.0.0.copyload.i.i.i1.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8 ; 5 uses
  %.pre.i.i.i = add i64 %i.u, 16                  ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE7deallocEv.exit.i.i, label %1

1:                                                ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE7deallocEv.exit.i.i.a
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i1.pre.i.i.i, i64 %.pre.i.i.i
  %3 = icmp ule ptr %2, %i.t
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 10680
  %5 = icmp ule ptr %4, %.sroa.0.0.copyload.i.i.i1.pre.i.i.i
  %6 = select i1 %3, i1 true, i1 %5
  tail call void @llvm.assume(i1 %6)
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE7deallocEv.exit.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE7deallocEv.exit.i.i: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE7deallocEv.exit.i.i.a, %1
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i1.pre.i.i.i, i64 %.pre.i.i.i
  %8 = icmp ule ptr %7, %i.t
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 10680
  %10 = icmp ule ptr %9, %.sroa.0.0.copyload.i.i.i1.pre.i.i.i
  %11 = select i1 %8, i1 true, i1 %10
  tail call void @llvm.assume(i1 %11)
  %12 = icmp ne i64 %i.z, 0
  tail call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef %i.u, ptr noundef %.sroa.0.0.copyload.i.i.i1.pre.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %12)
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EED2Ev.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v88internal9CodeRangeESt14default_deleteIS2_EE5resetEPS2_.exit, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE7deallocEv.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 10640
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v88internal29OptimizingCompileTaskExecutorESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal29OptimizingCompileTaskExecutorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN2v88internal29OptimizingCompileTaskExecutorEEclEPS2_.exit.i: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EED2Ev.exit
  tail call void @_ZN2v88internal29OptimizingCompileTaskExecutorD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.ab) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 144) #17
  br label %_ZNSt10unique_ptrIN2v88internal29OptimizingCompileTaskExecutorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal29OptimizingCompileTaskExecutorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EED2Ev.exit, %_ZNKSt14default_deleteIN2v88internal29OptimizingCompileTaskExecutorEEclEPS2_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10616
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not.i2 = icmp eq ptr %i.ad, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal17ReadOnlyArtifactsEEclEPS2_.exit.i

_ZNKSt14default_deleteIN2v88internal17ReadOnlyArtifactsEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN2v88internal29OptimizingCompileTaskExecutorESt14default_deleteIS2_EED2Ev.exit
  tail call void @_ZN2v88internal17ReadOnlyArtifactsD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ad) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 104) #17
  br label %_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v88internal29OptimizingCompileTaskExecutorESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN2v88internal17ReadOnlyArtifactsEEclEPS2_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 10608
  tail call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ae) #16
  %i.af = load ptr, ptr %i.r, align 8             ; 3 uses
  %.not.i3 = icmp eq ptr %i.af, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIN2v88internal9CodeRangeESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal9CodeRangeEEclEPS2_.exit.i

_ZNKSt14default_deleteIN2v88internal9CodeRangeEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EED2Ev.exit
  tail call void @_ZN2v88internal9CodeRangeD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.af) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 72) #17
  br label %_ZNSt10unique_ptrIN2v88internal9CodeRangeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal9CodeRangeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN2v88internal9CodeRangeEEclEPS2_.exit.i
  %i.ag = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i4 = icmp eq ptr %i.ag, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN2v88internal10MemoryPoolESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal10MemoryPoolEEclEPS2_.exit.i

_ZNKSt14default_deleteIN2v88internal10MemoryPoolEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN2v88internal9CodeRangeESt14default_deleteIS2_EED2Ev.exit
  tail call void @_ZN2v88internal10MemoryPoolD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.ag) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 176) #17
  br label %_ZNSt10unique_ptrIN2v88internal10MemoryPoolESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal10MemoryPoolESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v88internal9CodeRangeESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN2v88internal10MemoryPoolEEclEPS2_.exit.i
  ret void
}

declare void @_ZN2v88internal10MemoryPool8TearDownEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12IsolateGroup10InitializeEb(ptr noundef nonnull align 8 dereferenceable(10736) initializes((8, 16), (10600, 10601)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10600
  store i8 %i.a, ptr %i.b, align 8
  %i.c = tail call noundef ptr @_ZN2v88internal24GetPlatformPageAllocatorEv() #16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #18, !noalias !7 ; 2 uses
  tail call void @_ZN2v88internal29OptimizingCompileTaskExecutorC1Ev(ptr noundef nonnull align 8 dereferenceable(137) %i.e) #16, !noalias !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10640 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  store ptr %i.e, ptr %i.f, align 8
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal29OptimizingCompileTaskExecutorESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal29OptimizingCompileTaskExecutorEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN2v88internal29OptimizingCompileTaskExecutorEEclEPS2_.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_ZN2v88internal29OptimizingCompileTaskExecutorD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.g) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 144) #17
  br label %_ZNSt10unique_ptrIN2v88internal29OptimizingCompileTaskExecutorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal29OptimizingCompileTaskExecutorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v88internal29OptimizingCompileTaskExecutorEEclEPS2_.exit.i.i.i.i, %bb.a
  %i.h = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #18, !noalias !10 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.h, i8 0, i64 176, i1 false), !noalias !10
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #16, !noalias !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i8 0, i64 16, i1 false), !noalias !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false), !noalias !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #16, !noalias !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #16, !noalias !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false), !noalias !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  store i64 1, ptr %i.o, align 8, !noalias !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  store ptr %i.h, ptr %i.p, align 8
  %.not.i.i.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i1, label %_ZNSt10unique_ptrIN2v88internal10MemoryPoolESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal10MemoryPoolEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN2v88internal10MemoryPoolEEclEPS2_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN2v88internal29OptimizingCompileTaskExecutorESt14default_deleteIS2_EED2Ev.exit
  tail call void @_ZN2v88internal10MemoryPoolD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.q) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 176) #17
  br label %_ZNSt10unique_ptrIN2v88internal10MemoryPoolESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal10MemoryPoolESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v88internal10MemoryPoolEEclEPS2_.exit.i.i.i.i, %_ZNSt10unique_ptrIN2v88internal29OptimizingCompileTaskExecutorESt14default_deleteIS2_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10688
  tail call void @_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE10InitializeEv(ptr noundef nonnull align 8 dereferenceable(44) %i.r)
  ret void
}

declare noundef ptr @_ZN2v88internal24GetPlatformPageAllocatorEv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE10InitializeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE10InitializeEv(ptr noundef nonnull align 8 dereferenceable(44) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(44) %i.b, i64 noundef %i.d, i64 noundef 65536, i64 noundef 16384, i32 noundef 1) #16
  %i.i = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %.not = icmp eq i64 %i.h, %i.k
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal2V823FatalProcessOutOfMemoryEPNS0_7IsolateEPKcRKNS_10OOMDetailsE(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(16) @_ZN2v88internal2V813kNoOOMDetailsE) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(44) %i.i, i64 noundef 0, i64 noundef 16384, i64 noundef 16384, i32 noundef 2) #16, !inline_history !13 ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  %.pre20.i = load ptr, ptr %i.a, align 8         ; 3 uses
  br i1 %.not.i, label %.split.us.1.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.pre20.i, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = sub i64 %i.o, %i.r
  %i.t = trunc i64 %i.s to i32
  store atomic i32 %i.t, ptr %i.p release, align 8
  br label %.split.us.1.i

.split.us.1.i:                                    ; preds = %bb.d, %bb.c
  %i.u = load ptr, ptr %.pre20.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(44) %.pre20.i, i64 noundef 0, i64 noundef 16384, i64 noundef 16384, i32 noundef 2) #16, !inline_history !13 ; 2 uses
  %.not.us.1.i = icmp eq i64 %i.x, 0
  %.pre18.i = load ptr, ptr %i.a, align 8         ; 3 uses
  br i1 %.not.us.1.i, label %.split.us.2.i, label %bb.e

bb.e:                                             ; preds = %.split.us.1.i
  %i.y = getelementptr inbounds nuw i8, ptr %.pre18.i, i64 24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28
  store atomic i32 %i.ab, ptr %i.ac release, align 4
  br label %.split.us.2.i

.split.us.2.i:                                    ; preds = %bb.e, %.split.us.1.i
  %i.ad = load ptr, ptr %.pre18.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i64 %i.af(ptr noundef nonnull align 8 dereferenceable(44) %.pre18.i, i64 noundef 0, i64 noundef 16384, i64 noundef 16384, i32 noundef 2) #16, !inline_history !13 ; 2 uses
  %.not.us.2.i = icmp eq i64 %i.ag, 0
  %.pre19.i = load ptr, ptr %i.a, align 8         ; 3 uses
  br i1 %.not.us.2.i, label %.split.us.3.i, label %bb.f

bb.f:                                             ; preds = %.split.us.2.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre19.i, i64 24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = sub i64 %i.ag, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i32 %i.ak, ptr %i.al release, align 8
  br label %.split.us.3.i

.split.us.3.i:                                    ; preds = %bb.f, %.split.us.2.i
  %i.am = load ptr, ptr %.pre19.i, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(44) %.pre19.i, i64 noundef 0, i64 noundef 16384, i64 noundef 16384, i32 noundef 2) #16, !inline_history !13 ; 2 uses
  %.not.us.3.i = icmp eq i64 %i.ap, 0
  br i1 %.not.us.3.i, label %_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE16FillSegmentsPoolEb.exit, label %bb.g

end_hunk_0
begin_hunk_1_@_ZN2v88internal12IsolateGroup22TearDownOncePerProcessEv:bb.a

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12IsolateGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(10736) dereferenceable(10736) %i.a) #16
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(10736) %i.a, i64 noundef 10736) #17
  br label %_ZN2v88internal12IsolateGroup14ReleaseDefaultEv.exit

_ZN2v88internal12IsolateGroup14ReleaseDefaultEv.exit: ; preds = %bb.e, %bb.f
  store ptr null, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12IsolateGroup14ReleaseDefaultEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8 ; 5 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 10632
  %i.e = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = atomicrmw sub ptr %i.a, i32 1 seq_cst, align 4
  %.not.i = icmp eq i32 %i.f, 1
  br i1 %.not.i, label %bb.f, label %_ZN2v88internal12IsolateGroup7ReleaseEv.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12IsolateGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(10736) dereferenceable(10736) %i.a) #16
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(10736) %i.a, i64 noundef 10736) #17
  br label %_ZN2v88internal12IsolateGroup7ReleaseEv.exit

_ZN2v88internal12IsolateGroup7ReleaseEv.exit:     ; preds = %bb.e, %bb.f
  store ptr null, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12IsolateGroup7ReleaseEv(ptr noundef nonnull align 8 dereferenceable(10736) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = atomicrmw sub ptr %0, i32 1 seq_cst, align 4
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal12IsolateGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(10736) dereferenceable(10736) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 10736) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal12IsolateGroup15EnsureCodeRangeEm(ptr noundef nonnull align 8 dereferenceable(10736) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::function.610", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10600
  %i.f = load i8, ptr %i.e, align 8, !range !16, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.g = load atomic i8, ptr %i.a acquire, align 8
  %.not.i = icmp eq i8 %i.g, 2
  br i1 %.not.i, label %_ZN2v84base8CallOnceIJPSt10unique_ptrINS_8internal9CodeRangeESt14default_deleteIS4_EEPNS_13PageAllocatorEmbEEEvPSt6atomicIhENS0_16FunctionWithArgsIJDpT_EE4typeESG_Qsr3stdE13conjunction_vIDpSt9is_scalarISF_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.j, align 8
  %i.k = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18 ; 6 uses
  store ptr @_ZN2v88internal12_GLOBAL__N_117InitCodeRangeOnceEPSt10unique_ptrINS0_9CodeRangeESt14default_deleteIS3_EEPNS_13PageAllocatorEmb, ptr %i.k, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx.i, align 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %1, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i8 %i.f, ptr %.sroa.7.0..sroa_idx.i, align 16
  store ptr %i.k, ptr %2, align 8
  store ptr @_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.i, align 8
  store ptr @_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation, ptr %i.h, align 8
  call void @_ZN2v84base12CallOnceImplEPSt6atomicIhESt8functionIFvvEE(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #16
  %i.l = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN2v84base8CallOnceIJPSt10unique_ptrINS_8internal9CodeRangeESt14default_deleteIS4_EEPNS_13PageAllocatorEmbEEEvPSt6atomicIhENS0_16FunctionWithArgsIJDpT_EE4typeESG_Qsr3stdE13conjunction_vIDpSt9is_scalarISF_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #16, !inline_history !18 ; 0 uses
  br label %_ZN2v84base8CallOnceIJPSt10unique_ptrINS_8internal9CodeRangeESt14default_deleteIS4_EEPNS_13PageAllocatorEmbEEEvPSt6atomicIhENS0_16FunctionWithArgsIJDpT_EE4typeESG_Qsr3stdE13conjunction_vIDpSt9is_scalarISF_EE.exit

_ZN2v84base8CallOnceIJPSt10unique_ptrINS_8internal9CodeRangeESt14default_deleteIS4_EEPNS_13PageAllocatorEmbEEEvPSt6atomicIhENS0_16FunctionWithArgsIJDpT_EE4typeESG_Qsr3stdE13conjunction_vIDpSt9is_scalarISF_EE.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.n = load ptr, ptr %i.b, align 8
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_117InitCodeRangeOnceEPSt10unique_ptrINS0_9CodeRangeESt14default_deleteIS3_EEPNS_13PageAllocatorEmb(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #18 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  tail call void @_ZN2v88internal17VirtualMemoryCageC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2v88internal9CodeRangeE, i64 16), ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #16
  %i.d = tail call noundef zeroext i1 @_ZN2v88internal9CodeRange15InitReservationEPNS_13PageAllocatorEmb(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) #16
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal2V823FatalProcessOutOfMemoryEPNS0_7IsolateEPKcRKNS_10OOMDetailsE(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(16) @_ZN2v88internal2V813kNoOOMDetailsE) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v88internal9CodeRangeESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN2v88internal9CodeRangeEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN2v88internal9CodeRangeEEclEPS2_.exit.i.i: ; preds = %bb.c
  tail call void @_ZN2v88internal9CodeRangeD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.e) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 72) #17
  br label %_ZNSt10unique_ptrIN2v88internal9CodeRangeESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN2v88internal9CodeRangeESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN2v88internal9CodeRangeEEclEPS2_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal12IsolateGroup27InitializeReadOnlyArtifactsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(10736) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #18, !noalias !19 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i8 0, i64 104, i1 false), !noalias !19
  store atomic i64 0, ptr %i.b seq_cst, align 8, !noalias !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.d, align 8, !noalias !19
  store atomic i64 0, ptr %i.c seq_cst, align 8, !noalias !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i8 0, i64 20, i1 false), !noalias !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !noalias !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10616 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  store ptr %i.a, ptr %i.g, align 8
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal17ReadOnlyArtifactsEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN2v88internal17ReadOnlyArtifactsEEclEPS2_.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_ZN2v88internal17ReadOnlyArtifactsD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.h) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 104) #17
  %.pre = load ptr, ptr %i.g, align 8
  br label %_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v88internal17ReadOnlyArtifactsEEclEPS2_.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %.pre, %_ZNKSt14default_deleteIN2v88internal17ReadOnlyArtifactsEEclEPS2_.exit.i.i.i.i ], [ %i.a, %bb.a ]
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12IsolateGroup17SetupReadOnlyHeapEPNS0_7IsolateEPNS0_12SnapshotDataEb(ptr noundef nonnull align 8 dereferenceable(10736) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10608 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #16
  tail call void @_ZN2v88internal12ReadOnlyHeap5SetUpEPNS0_7IsolateEPNS0_12SnapshotDataEb(ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #16
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #16
  ret void
}

declare void @_ZN2v88internal12ReadOnlyHeap5SetUpEPNS0_7IsolateEPNS0_12SnapshotDataEb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12IsolateGroup10AddIsolateEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(10736) %0, ptr noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10608 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10648 ; 9 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !22 ; 5 uses
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10656 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noalias !37
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.g, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.f, align 8, !noalias !37
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10664
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10664 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !noalias !37
  %i.k = icmp eq ptr %i.j, %1
  br i1 %i.k, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !37
  store ptr %i.c, ptr %2, align 8, !noalias !37
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.l, align 8, !noalias !37
  %i.m = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPN2v88internal7IsolateEvE4HashES8_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #16, !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !37
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !noalias !37, !nonnull !17, !noundef !17 ; 2 uses
  %3 = load i64, ptr %i.c, align 8, !noalias !37  ; 2 uses
  %4 = icmp ult i64 %3, 2
  %5 = add i64 %3, 16
  %6 = select i1 %4, i64 0, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %6
  %8 = icmp ule ptr %7, %i.c
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 10680
  %10 = icmp ule ptr %9, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  %11 = select i1 %8, i1 true, i1 %10
  call void @llvm.assume(i1 %11)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10672
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !noalias !37
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i, i64 %i.m
  %.pre = load ptr, ptr %i.a, align 8, !noalias !42
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10664 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !43 ; 4 uses
  %12 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.d
  %13 = getelementptr i8, ptr %12, i64 16
  %14 = icmp ule ptr %13, %i.c
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 10680 ; 2 uses
  %16 = icmp ule ptr %15, %.sroa.0.0.copyload.i.i.i.i.i
  %17 = select i1 %14, i1 true, i1 %16
  tail call void @llvm.assume(i1 %17)
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !43
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10656
  %i.r = load i64, ptr %i.q, align 8, !noalias !43
  %sext.i = shl i64 %i.r, 48
  %i.s = ashr exact i64 %sext.i, 48
  %i.t = ptrtoint ptr %1 to i64
  %i.u = xor i64 %i.t, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.v = zext i64 %i.u to i128
  %i.w = mul nuw nsw i128 %i.v, 8779197792823184629 ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64
  %i.aa = xor i64 %i.s, %i.z                      ; 3 uses
  %i.ab = lshr i64 %i.aa, 57
  %i.ac = trunc nuw nsw i64 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 10672 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.ad, align 8, !noalias !43 ; 2 uses
  %i.ae = insertelement <16 x i8> poison, i8 %i.ac, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.aa, %bb.f ], [ %i.bd, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bc, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.d             ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ag, i32 0, i32 3, i32 1), !noalias !43
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.ai = load <16 x i8>, ptr %i.ah, align 1, !noalias !43 ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.af, %i.ai
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not65.i = icmp eq i16 %i.ak, 0
  br i1 %.not65.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.035.066.i = phi i16 [ %i.at, %.critedge.i ], [ %i.ak, %bb.g ] ; 3 uses
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0.i, %i.am
  %i.ao = and i64 %i.an, %i.d
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !43
  %i.ar = icmp eq ptr %i.aq, %1
  br i1 %i.ar, label %.loopexit, label %.critedge.i, !prof !14

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.as = add i16 %.sroa.035.066.i, -1
  %i.at = and i16 %i.as, %.sroa.035.066.i         ; 2 uses
  %.not.i1 = icmp eq i16 %i.at, 0
  br i1 %.not.i1, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.g
  %i.au = icmp eq <16 x i8> %i.ai, splat (i8 -128)
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.av, 0
  br i1 %.not57.i, label %bb.h, label %.thread.i, !prof !15

.thread.i:                                        ; preds = %.critedge19.i
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.d
  %i.ba = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.aa, i64 %i.az, i64 %.sroa.15.0.i) #16, !noalias !43
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.p, align 8, !noalias !43, !nonnull !17, !noundef !17 ; 2 uses
  %18 = load i64, ptr %i.c, align 8, !noalias !43 ; 2 uses
  %19 = icmp ult i64 %18, 2
  %20 = add i64 %18, 16
  %21 = select i1 %19, i64 0, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %21
  %23 = icmp ule ptr %22, %i.c
  %24 = icmp ule ptr %15, %.sroa.0.0.copyload.i.i.i.i25.i
  %25 = select i1 %23, i1 true, i1 %24
  tail call void @llvm.assume(i1 %25)
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.ad, align 8, !noalias !43
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.ba
  br label %bb.i

bb.h:                                             ; preds = %.critedge19.i
  %i.bc = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bd = add i64 %i.bc, %.sroa.7.0.i
  br label %bb.g

.loopexit:                                        ; preds = %.lr.ph.i, %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #19
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.c, %.thread.i
  %i.be = phi ptr [ %1, %.thread.i ], [ %1, %bb.c ], [ %.pre, %bb.e ]
  %.sroa.4.0.ph = phi ptr [ %i.bb, %.thread.i ], [ %i.h, %bb.c ], [ %i.o, %bb.e ]
  store ptr %i.be, ptr %.sroa.4.0.ph, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 10680 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.a, align 8
  store ptr %i.bh, ptr %i.bf, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 10640
  %i.bj = load ptr, ptr %i.bi, align 8
  call void @_ZN2v88internal29OptimizingCompileTaskExecutor13EnsureStartedEv(ptr noundef nonnull align 8 dereferenceable(137) %i.bj) #16
  %i.bk = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1971), align 1, !range !16, !noundef !17
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.l, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 10632 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %.not10 = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %.not10, label %bb.m, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.sink.split

bb.m:                                             ; preds = %bb.l
  store ptr %i.bo, ptr %i.bm, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.sink.split

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.sink.split: ; preds = %bb.l, %bb.m
  %.sink21 = phi i64 [ 55448, %bb.m ], [ 59480, %bb.l ]
  %.sink = phi i8 [ 1, %bb.m ], [ 0, %bb.l ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sink21
  store i8 %.sink, ptr %i.bp, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.sink.split, %bb.k
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #16
  ret void
}

declare void @_ZN2v88internal29OptimizingCompileTaskExecutor13EnsureStartedEv(ptr noundef nonnull align 8 dereferenceable(137)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12IsolateGroup13RemoveIsolateEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(10736) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10608 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10648 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10656 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.mask = and i64 %i.e, -131072
  %i.f = icmp eq i64 %.mask, 131072
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10616 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  store ptr null, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN2v88internal17ReadOnlyArtifactsEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN2v88internal17ReadOnlyArtifactsEEclEPS2_.exit.i.i: ; preds = %bb.b
  tail call void @_ZN2v88internal17ReadOnlyArtifactsD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.h) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 104) #17
  br label %_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN2v88internal17ReadOnlyArtifactsEEclEPS2_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10640
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @_ZN2v88internal29OptimizingCompileTaskExecutor4StopEv(ptr noundef nonnull align 8 dereferenceable(137) %i.j) #16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.l = load i8, ptr %i.k, align 8, !range !16, !noundef !17
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10632 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.e, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt10unique_ptrIN2v88internal17ReadOnlyArtifactsESt14default_deleteIS2_EE5resetEPS2_.exit, %bb.a
  %i.q = call noundef i64 @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5eraseIS6_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.g, !prof !14

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #19
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 10680 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.i, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %i.d, align 8
  %.not.i = icmp ult i64 %i.w, 131072
  br i1 %.not.i, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i64, ptr %i.c, align 8              ; 2 uses
  %i.y = icmp ult i64 %i.x, 2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 10664 ; 2 uses
  br i1 %i.y, label %..thread_crit_edge, label %bb.k

..thread_crit_edge:                               ; preds = %bb.j
  %.pre = load i8, ptr @_ZN4absl18container_internal11kSooControlE, align 1
  br label %.thread

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.z, align 8, !nonnull !17, !noundef !17 ; 5 uses
  %2 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.x
  %3 = getelementptr i8, ptr %2, i64 16
  %4 = icmp ule ptr %3, %i.c
  %5 = icmp ule ptr %i.s, %.sroa.0.0.copyload.i.i.i.i
  %6 = or i1 %4, %5
  call void @llvm.assume(i1 %6)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 10672
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.aa, align 8 ; 2 uses
  %i.ab = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1 ; 2 uses
  %i.ac = icmp slt i8 %i.ab, -1
  br i1 %i.ac, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.ad = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.k ]
  %i.ae = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.k ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ah = load i8, ptr %i.af, align 1             ; 2 uses
  %i.ai = icmp slt i8 %i.ah, -1
  br i1 %i.ai, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !46

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.k
  %i.aj = phi i8 [ %i.ab, %bb.k ], [ %i.ah, %.lr.ph.i.i ]
  %.sroa.6.0.i = phi ptr [ %.sroa.0.0.copyload.i.i.i, %bb.k ], [ %i.ag, %.lr.ph.i.i ]
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i, %bb.k ], [ %i.af, %.lr.ph.i.i ]
  %i.ak = icmp eq ptr %.sroa.0.0.i, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.ak, label %bb.l, label %.thread, !prof !48

bb.l:                                             ; preds = %.loopexit
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21) #16
  call void @llvm.trap()
  unreachable

.thread:                                          ; preds = %..thread_crit_edge, %.loopexit
  %i.al = phi i8 [ %i.aj, %.loopexit ], [ %.pre, %..thread_crit_edge ]
  %.sroa.6.0.i9 = phi ptr [ %.sroa.6.0.i, %.loopexit ], [ %i.z, %..thread_crit_edge ]
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratordeEv.exit, label %bb.m, !prof !14

bb.m:                                             ; preds = %.thread
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #16
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratordeEv.exit: ; preds = %.thread
  %i.an = load ptr, ptr %.sroa.6.0.i9, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.sink.split

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.sink.split: ; preds = %bb.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratordeEv.exit
  %.sink = phi ptr [ %i.an, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratordeEv.exit ], [ null, %bb.i ]
  store ptr %.sink, ptr %i.s, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.sink.split, %bb.h
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #16
  ret void
}

declare void @_ZN2v88internal29OptimizingCompileTaskExecutor4StopEv(ptr noundef nonnull align 8 dereferenceable(137)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5eraseIS6_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE4findIS6_EENSD_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %1, align 8
  %i.h = icmp eq ptr %i.f, %i.g
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE4findIS6_EENSD_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 6 uses
  %2 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.a
  %3 = getelementptr i8, ptr %2, i64 16
  %4 = icmp ule ptr %3, %0
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %6 = icmp ule ptr %5, %.sroa.0.0.copyload.i.i.i.i.i
  %7 = select i1 %4, i1 true, i1 %6
  tail call void @llvm.assume(i1 %7)
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %sext.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i, 48
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = xor i64 %i.n, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 8779197792823184629 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64
  %i.u = xor i64 %i.l, %i.t                       ; 2 uses
  %i.v = lshr i64 %i.u, 57
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.x, align 8 ; 3 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.u, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.a        ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1      ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not47.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not47.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.048.i.i = phi i16 [ %i.ap, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.a                     ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, %i.m
  br i1 %i.al, label %.thread33.i.i, label %bb.f, !prof !14

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE10find_largeIS6_EENSD_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = add i16 %.sroa.017.048.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.017.048.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.aq = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not44.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE10find_largeIS6_EENSD_8iteratorERKT_m.exit.i, !prof !15

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.as = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !49

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE10find_largeIS6_EENSD_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.an, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.am, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE4findIS6_EENSD_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE4findIS6_EENSD_8iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE10find_largeIS6_EENSD_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE10find_largeIS6_EENSD_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.au = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.av = extractvalue { ptr, ptr } %.pn.i, 1
  %i.aw = icmp eq ptr %i.au, null                 ; 2 uses
  %i.ax = icmp eq ptr %i.au, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.aw, %i.ax
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE4findIS6_EENSD_8iteratorERKT_.exit
  %i.ay = load i8, ptr %i.au, align 1
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE4findIS6_EENSD_8iteratorERKT_.exit
  br i1 %i.ax, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratorESG_.exit, !prof !15

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratorESG_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.aw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratorESG_.exit
  tail call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5eraseENSD_8iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull %i.au, ptr %i.av)
  br label %bb.l

bb.l:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratorESG_.exit, %bb.k
  %.0 = phi i64 [ 1, %bb.k ], [ 0, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratorESG_.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden noalias noundef nonnull ptr @_ZN2v88internal12IsolateGroup3NewEv() local_unnamed_addr #8 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6) #19
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZN2v88internal12IsolateGroup32optimizing_compile_task_executorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10736) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10640
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #11 comdat {
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = icmp ult i64 %1, 2
  %i.c = add i64 %1, 15
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = add i64 %i.d, %4
  %i.f = add i64 %i.e, %i.a
  %i.g = sub i64 0, %4
  %i.h = and i64 %i.f, %i.g
  %i.i = mul i64 %3, %1
  %i.j = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.k = add i64 %i.i, 7
  %i.l = add i64 %i.k, %i.h
  %i.m = and i64 %i.l, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @_ZN2v88internal29OptimizingCompileTaskExecutorD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal10MemoryPoolD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176)) unnamed_addr #2

declare void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare noundef zeroext i1 @_ZN2v88internal9CodeRange15InitReservationEPNS_13PageAllocatorEmb(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZN2v88internal2V823FatalProcessOutOfMemoryEPNS0_7IsolateEPKcRKNS_10OOMDetailsE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare void @_ZN2v88internal17VirtualMemoryCageC2Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v88internal17ReadOnlyArtifactsD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104)) unnamed_addr #2

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v88internal9CodeRangeD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare void @_ZN2v88internal29OptimizingCompileTaskExecutorC1Ev(ptr noundef nonnull align 8 dereferenceable(137)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14SegmentedTableINS0_15JSDispatchEntryELm268435456EE10InitializeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.590", align 8 ; 4 uses
  %i.a = tail call noundef ptr @_ZN2v88internal30GetPlatformVirtualAddressSpaceEv() #16 ; 7 uses
  %i.b = tail call noundef zeroext i1 @_ZN2v88internal15ThreadIsolation7EnabledEv() #16
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(44) %i.a) #16
  br i1 %i.g, label %_ZNSt10unique_ptrIN2v819VirtualAddressSpaceESt14default_deleteIS1_EED2Ev.exit, label %bb.b

_ZNSt10unique_ptrIN2v819VirtualAddressSpaceESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.h = zext i32 %i.c to i64
  %i.i = or disjoint i64 %i.h, 4294967296
  %.sroa.413.0 = select i1 %i.b, i64 %i.i, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.590") align 8 %1, ptr noundef nonnull align 8 dereferenceable(44) %i.a, i64 noundef 0, i64 noundef 268435456, i64 noundef 16384, i32 noundef 2, i64 %.sroa.413.0) #16
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(44) %i.a, i64 noundef 0, i64 noundef 268435456, i64 noundef 16384, i32 noundef 0) #16 ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %._crit_edge, label %.thread

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.c

.thread:                                          ; preds = %bb.b
  %i.s = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #18 ; 3 uses
  tail call void @_ZN2v84base30EmulatedVirtualAddressSubspaceC1EPNS_19VirtualAddressSpaceEmmm(ptr noundef nonnull align 8 dereferenceable(312) %i.s, ptr noundef nonnull %i.a, i64 noundef %i.r, i64 noundef 268435456, i64 noundef 268435456) #16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge, %_ZNSt10unique_ptrIN2v819VirtualAddressSpaceESt14default_deleteIS1_EED2Ev.exit
  %i.u = phi ptr [ %.pre, %._crit_edge ], [ %i.m, %_ZNSt10unique_ptrIN2v819VirtualAddressSpaceESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not11 = icmp eq ptr %i.u, null
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal2V823FatalProcessOutOfMemoryEPNS0_7IsolateEPKcRKNS_10OOMDetailsE(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull align 8 dereferenceable(16) @_ZN2v88internal2V813kNoOOMDetailsE) #19
  unreachable

bb.e:                                             ; preds = %.thread, %bb.c
  %i.v = phi ptr [ %i.s, %.thread ], [ %i.u, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic i32 -1, ptr %i.z release, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  store atomic i32 -1, ptr %i.aa release, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i32 -1, ptr %i.ab release, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  store atomic i32 -1, ptr %i.ac release, align 4
  %i.ad = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #18 ; 2 uses
  call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ad, ptr %i.ae, align 8
  ret void
}

declare noundef ptr @_ZN2v88internal30GetPlatformVirtualAddressSpaceEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN2v88internal15ThreadIsolation7EnabledEv() local_unnamed_addr #1

declare void @_ZN2v84base30EmulatedVirtualAddressSubspaceC1EPNS_19VirtualAddressSpaceEmmm(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare void @_ZN2v84base12CallOnceImplEPSt6atomicIhESt8functionIFvvEE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = load i8, ptr %i.i, align 8, !range !16, !noundef !17
  %i.k = trunc nuw i8 %i.j to i1
  tail call void %i.b(ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.h, i1 noundef zeroext %i.k) #16, !inline_history !50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8
  store ptr %i.a, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  store ptr %i.c, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 40) #17
  br label %_ZNSt14_Function_base13_Base_managerIZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2v84base8CallOnceIJPSt10unique_ptrINS1_8internal9CodeRangeESt14default_deleteIS6_EEPNS1_13PageAllocatorEmbEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESI_Qsr3stdE13conjunction_vIDpSt9is_scalarISH_EEEUlvE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS0_6HashEqIPN2v88internal7IsolateEvE4HashES6_Lb0EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw nsw i128 %i.d, 8779197792823184629 ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e
  %i.h = trunc i128 %i.g to i64
  %i.i = xor i64 %2, %i.h
  ret i64 %i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal20TransferNRelocatableILm8EEEvPvS2_S2_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #11 comdat {
bb.a:
  %i.a = shl i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8ESaIcEEEPvS3_m(ptr noundef %0, i64 noundef %1) #11 comdat {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl18container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZN4absl18container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #18
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSJ_PFvSJ_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #7 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 5 uses
  %5 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.a
  %6 = getelementptr i8, ptr %5, i64 16
  %7 = icmp ule ptr %6, %0
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i
  %10 = select i1 %7, i1 true, i1 %9
  tail call void @llvm.assume(i1 %10)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, i8 -128, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, i8 -128, i64 16, i1 false)
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.p = add nuw i64 %.04962, 16                  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !51

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.bc, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.04962, %i.s            ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = xor i64 %i.y, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.aa = zext i64 %i.z to i128
  %i.ab = mul nuw nsw i128 %i.aa, 8779197792823184629 ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = xor i128 %i.ac, %i.ab
  %i.ae = trunc i128 %i.ad to i64
  %i.af = xor i64 %i.w, %i.ae                     ; 6 uses
  %i.ag = lshr i64 %i.af, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i8           ; 2 uses
  %i.ai = sub i64 %i.t, %i.af                     ; 2 uses
  %i.aj = and i64 %i.h, %i.ai
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.e, !prof !14

bb.d:                                             ; preds = %.lr.ph
  %i.al = and i64 %i.ai, 15
  %i.am = add i64 %i.al, %i.af
  %i.an = and i64 %i.am, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ao = and i64 %i.af, %i.b
  %.not.i = icmp ult i64 %i.ao, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.ap = and i64 %i.af, %i.a                     ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ap
  %i.ar = load <16 x i8>, ptr %i.aq, align 1
  %i.as = icmp slt <16 x i8> %i.ar, zeroinitializer
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.at, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.au = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.at, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = add i64 %i.ap, %i.av
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ah, i64 noundef %i.t, i64 noundef %i.af) #16
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.aw, %bb.g ], [ %i.an, %bb.d ] ; 3 uses
  %i.ax = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.ah, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  %i.ba = load i64, ptr %i.u, align 8
  store i64 %i.ba, ptr %i.az, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bb = add i16 %.sroa.052.061, -1
  %i.bc = and i16 %i.bb, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.bc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPN2v88internal7IsolateEvE4HashES8_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !17, !align !52
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = xor i64 %i.d, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw nsw i128 %i.f, 8779197792823184629 ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g
  %i.j = trunc i128 %i.i to i64
  %i.k = xor i64 %1, %i.j
  ret i64 %i.k
}

declare noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5eraseENSD_8iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17) #16
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.b, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17) #16
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = load i8, ptr %1, align 1
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17) #16
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit: ; preds = %bb.e
  %i.e = load i64, ptr %0, align 8
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit
  tail call void @_ZN4absl18container_internal18EraseMetaOnlySmallERNS0_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext true, i64 noundef 8) #16
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE15erase_meta_onlyENSD_14const_iteratorE.exit

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit
  tail call void @_ZN4absl18container_internal18EraseMetaOnlyLargeERNS0_12CommonFieldsEPKNS0_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef 8) #16
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE15erase_meta_onlyENSD_14const_iteratorE.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE15erase_meta_onlyENSD_14const_iteratorE.exit: ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN4absl18container_internal18EraseMetaOnlySmallERNS0_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

declare void @_ZN4absl18container_internal18EraseMetaOnlyLargeERNS0_12CommonFieldsEPKNS0_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #15

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
end_hunk_1
