Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/liftoff-assembler?download=true
inline.NumInlined: 1729
inline.NumDeleted: 639
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.58", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", [4 x i8], %"class.v8::internal::FlagValue.59", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.58", %"class.v8::internal::FlagValue.58", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.58", %"class.v8::internal::FlagValue.60", %"class.v8::internal::FlagValue.60", %"class.v8::internal::FlagValue.60", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.58", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.58", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.59", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.58", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.58", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.59", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", [4 x i8], %"class.v8::internal::FlagValue.59", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.58", %"class.v8::internal::FlagValue.58", %"class.v8::internal::FlagValue.58", %"class.v8::internal::FlagValue.58", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue.57", [4 x i8], %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.58", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.59", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.59", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.60", %"class.v8::internal::FlagValue.60", %"class.v8::internal::FlagValue.60", %"class.v8::internal::FlagValue.60", %"class.v8::internal::FlagValue.60", %"class.v8::internal::FlagValue.60", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.58", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.58", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.59", %"class.v8::internal::FlagValue.59", %"class.v8::internal::FlagValue.59", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.58", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.60", [2 x i8], %"class.v8::internal::FlagValue.57", [4 x i8], %"class.v8::internal::FlagValue.59", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.58", %"class.v8::internal::FlagValue.58", [4 x i8], %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.67", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.60" = type { %"class.std::optional.61" }
%"class.std::optional.61" = type { %"struct.std::_Optional_base.62" }
%"struct.std::_Optional_base.62" = type { %"struct.std::_Optional_payload.64" }
%"struct.std::_Optional_payload.64" = type { %"struct.std::_Optional_payload_base.65" }
%"struct.std::_Optional_payload_base.65" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.59" = type { double }
%"class.v8::internal::FlagValue.58" = type { i32 }
%"class.v8::internal::FlagValue.67" = type { i64 }
%"class.v8::internal::FlagValue.57" = type { i32 }
%"class.v8::internal::FlagValue.56" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.v8::internal::wasm::LiftoffRegList" = type { i32 }
%"struct.std::array" = type { [11 x i8] }
%"struct.v8::internal::wasm::LiftoffAssembler::CacheState" = type <{ %"class.v8::internal::SmallZoneVector", %"class.v8::internal::wasm::LiftoffRegList", [24 x i32], %"class.v8::internal::wasm::LiftoffRegList", %"class.v8::internal::Register", [3 x i8], i32, %"class.v8::internal::Register", [7 x i8] }>
%"class.v8::internal::SmallZoneVector" = type { %"class.v8::base::SmallVector" }
%"class.v8::base::SmallVector" = type { %"class.v8::internal::ZoneAllocator", ptr, ptr, ptr, [192 x i8] }
%"class.v8::internal::ZoneAllocator" = type { ptr }
%"class.v8::internal::Register" = type { %"class.v8::internal::RegisterBase" }
%"class.v8::internal::RegisterBase" = type { i8 }
%"class.v8::internal::wasm::ParallelMove" = type <{ [48 x i8], [192 x i8], [24 x i32], %"class.v8::internal::wasm::LiftoffRegList", %"class.v8::internal::wasm::LiftoffRegList", ptr, i32, [4 x i8] }>
%"class.v8::internal::wasm::(anonymous namespace)::RegisterReuseMap" = type { %"class.v8::base::SmallVector.69" }
%"class.v8::base::SmallVector.69" = type { ptr, ptr, ptr, [8 x i8] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"struct.v8::internal::AssemblerOptions" = type <{ i8, i8, i8, i8, i32, i8, [7 x i8], i64, i8, i8, i8, [5 x i8] }>
%"class.v8::internal::wasm::WasmValue" = type { %"class.v8::internal::wasm::CanonicalValueType", [16 x i8], ptr }
%"class.v8::internal::wasm::CanonicalValueType" = type { %"class.v8::internal::wasm::ValueTypeBase" }
%"class.v8::internal::wasm::ValueTypeBase" = type { i32 }
%"class.v8::base::Vector.37" = type { ptr, i64 }
%"class.v8::internal::Operand" = type { %union.anon.86 }
%union.anon.86 = type { %"struct.v8::internal::Operand::LabelOperand" }
%"struct.v8::internal::Operand::LabelOperand" = type { i8, i8, i8, ptr }
%"class.v8::internal::wasm::LiftoffStackSlots" = type { %"class.v8::base::SmallVector.40", ptr }
%"class.v8::base::SmallVector.40" = type { ptr, ptr, ptr, [192 x i8] }
%"class.v8::internal::Label" = type { i32, i32 }
%"class.v8::internal::wasm::LiftoffVarState" = type { i8, i8, %union.anon.31, i32 }
%union.anon.31 = type { i32 }
%"struct.v8::internal::wasm::LiftoffStackSlots::Slot" = type { %"class.v8::internal::wasm::LiftoffVarState", i32, i8, i32 }

$_ZN2v88internal9AssemblerD2Ev = comdat any

$_ZN2v88internal4wasm16LiftoffAssembler19LoadToFixedRegisterENS1_15LiftoffVarStateENS1_15LiftoffRegisterE = comdat any

$_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE = comdat any

$_ZN2v88internal4wasm16LiftoffAssembler14MoveStackValueEjjNS1_9ValueKindE = comdat any

$_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_15LiftoffRegisterENS1_9ValueKindE = comdat any

$_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE = comdat any

$_ZN2v88internal4wasm17LiftoffStackSlots9ConstructEi = comdat any

$_ZN2v88internal4wasm16LiftoffAssembler4MoveENS0_11XMMRegisterES3_NS1_9ValueKindE = comdat any

$_ZN2v88internal4wasm16LiftoffAssembler19LoadOldFramePointerEv = comdat any

$_ZN2v88internal13AssemblerBase21AbortedCodeGenerationEv = comdat any

$_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE4GrowEv = comdat any

$_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE4GrowEm = comdat any

$_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE11FreeStorageEv = comdat any

$_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv = comdat any

$_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEEaSERKS7_ = comdat any

$_ZN2v88internal17GrowableBitVector4GrowEiPNS0_4ZoneE = comdat any

$_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E = comdat any

$_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE = comdat any

$_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE = comdat any

$_ZN2v84base11SmallVectorINS_8internal4wasm17LiftoffStackSlots4SlotELm8ESaIS5_EE4GrowEv = comdat any

$_ZN2v84base11SmallVectorINS_8internal4wasm17LiftoffStackSlots4SlotELm8ESaIS5_EE4GrowEm = comdat any

$_ZN2v84base11SmallVectorINS_8internal4wasm17LiftoffStackSlots4SlotELm8ESaIS5_EE11FreeStorageEv = comdat any

$_ZN2v88internal4wasm7liftoff4pushEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS1_9ValueKindEi = comdat any

$_ZSt16__introsort_loopIPN2v88internal4wasm17LiftoffStackSlots4SlotElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_15SortInPushOrderEvEUlRKS4_SA_E_EEEvT_SD_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPN2v88internal4wasm17LiftoffStackSlots4SlotEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_15SortInPushOrderEvEUlRKS4_SA_E_EEEvT_SD_T0_ = comdat any

$_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv = comdat any

$_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEm = comdat any

$_ZN2v88internal4wasm16LiftoffAssembler13PushRegistersENS1_14LiftoffRegListE = comdat any

$_ZN2v88internal4wasm16LiftoffAssembler12PopRegistersENS1_14LiftoffRegListE = comdat any

$_ZN2v88internal4wasm7liftoff13StoreToMemoryEPNS1_16LiftoffAssemblerENS0_7OperandENS1_15LiftoffRegisterENS1_9ValueKindE = comdat any

$_ZN2v88internal10ZoneVectorIiE4GrowEm = comdat any

$_ZN2v88internal4wasm16LiftoffAssembler11kIntPtrKindE = comdat any

$_ZN2v88internal4wasm16LiftoffAssembler8kSmiKindE = comdat any

$_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names = comdat any

$_ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names = comdat any

@_ZN2v88internal4wasm16LiftoffAssembler11kIntPtrKindE = weak_odr hidden local_unnamed_addr constant i8 2, comdat, align 1
@_ZN2v88internal4wasm16LiftoffAssembler8kSmiKindE = weak_odr hidden local_unnamed_addr constant i8 2, comdat, align 1
@_ZTVN2v88internal4wasm16LiftoffAssemblerE = hidden unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal4wasm16LiftoffAssemblerD2Ev, ptr @_ZN2v88internal4wasm16LiftoffAssemblerD0Ev, ptr @_ZN2v88internal13AssemblerBase21AbortedCodeGenerationEv, ptr @_ZN2v88internal9Assembler24PatchInHeapNumberRequestEmNS0_6HandleINS0_10HeapNumberEEE, ptr @_ZN2v88internal14MacroAssembler22LoadFromConstantsTableENS0_8RegisterEi, ptr @_ZN2v88internal14MacroAssembler22LoadRootRegisterOffsetENS0_8RegisterEl, ptr @_ZN2v88internal14MacroAssembler16LoadRootRelativeENS0_8RegisterEi, ptr @_ZN2v88internal14MacroAssembler17StoreRootRelativeEiNS0_8RegisterE, ptr @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE] }, align 8
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"kNeedS128RegPair\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"s0x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"base::SmallVector::Grow\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"kMaxSupportedValue >= needed_value\00", align 1
@_ZTVN2v88internal9AssemblerE = external unnamed_addr constant { [6 x ptr] }, align 8
@__const._ZN2v88internal4wasmL15GetCacheRegListENS1_8RegClassE.kRegLists = private unnamed_addr constant [2 x %"class.v8::internal::wasm::LiftoffRegList"] [%"class.v8::internal::wasm::LiftoffRegList" { i32 37839 }, %"class.v8::internal::wasm::LiftoffRegList" { i32 16711680 }], align 4
@__const._ZN2v88internal4wasmL13reg_class_forENS1_9ValueKindE.kRegClasses = private unnamed_addr constant %"struct.std::array" { [11 x i8] c"\02\00\00\01\01\01\00\00\01\00\00" }, align 1
@_ZN2v88internal11CpuFeatures10supported_E = external local_unnamed_addr global i32, align 4
@__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize = private unnamed_addr constant [13 x i8] c"\FF\04\08\04\08\10\01\02\02\08\08\FF\FF", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"index < parameter_count_\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"index < return_count_\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"<void>\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"f32\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"f64\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"v128\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"i16\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"f16\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"ref null\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"<top>\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"<bot>\00", align 1
@__const._ZN2v88internal4wasm4nameENS1_9ValueKindE.kKindName = private unnamed_addr constant [13 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], align 16
@_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names = linkonce_odr hidden local_unnamed_addr constant [16 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], comdat, align 16
@.str.43 = private unnamed_addr constant [4 x i8] c"rax\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"rcx\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"rdx\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"rbx\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"rsp\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"rbp\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"rsi\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"rdi\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"r8\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"r9\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"r10\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"r11\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"r12\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"r13\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"r14\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"r15\00", align 1
@_ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names = linkonce_odr hidden local_unnamed_addr constant [16 x ptr] [ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], comdat, align 16
@.str.60 = private unnamed_addr constant [5 x i8] c"xmm0\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"xmm1\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"xmm2\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"xmm3\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"xmm4\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"xmm5\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"xmm6\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"xmm7\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"xmm8\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"xmm9\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"xmm10\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"xmm11\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"xmm12\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"xmm13\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"xmm14\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"xmm15\00", align 1

@_ZN2v88internal4wasm16LiftoffAssemblerC1EPNS0_4ZoneESt10unique_ptrINS0_15AssemblerBufferESt14default_deleteIS6_EE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN2v88internal4wasm16LiftoffAssemblerC2EPNS0_4ZoneESt10unique_ptrINS0_15AssemblerBufferESt14default_deleteIS6_EE
@_ZN2v88internal4wasm16LiftoffAssemblerD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2v88internal4wasm16LiftoffAssemblerD2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler17MergeIntoNewStateEjjj(ptr dead_on_unwind noalias writable sret(%"struct.v8::internal::wasm::LiftoffAssembler::CacheState") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(824) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::wasm::ParallelMove", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 456
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  store i64 %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.g, i8 0, i64 104, i1 false)
  store i8 -1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  store i32 -1, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store i8 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.l = load i8, ptr %i.k, align 8               ; 5 uses
  %.not88 = icmp eq i8 %i.l, -1
  br i1 %.not88, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %i.l, ptr %i.h, align 8
  %i.m = zext nneg i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.o = zext nneg i8 %i.l to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  store i32 1, ptr %i.p, align 4
  %i.q = shl nuw nsw i32 1, %i.m                  ; 2 uses
  store i32 %i.q, ptr %i.g, align 8
  %i.r = icmp samesign ult i8 %i.l, 16
  tail call void @llvm.assume(i1 %i.r)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = phi i32 [ %i.q, %bb.b ], [ 0, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 792
  %i.u = load i8, ptr %i.t, align 8               ; 5 uses
  %.not89 = icmp eq i8 %i.u, -1
  br i1 %.not89, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 788
  %i.w = load i32, ptr %i.v, align 4
  store i8 %i.u, ptr %i.j, align 8
  %i.x = zext nneg i8 %i.u to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.z = zext nneg i8 %i.u to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  store i32 1, ptr %i.aa, align 4
  %i.ab = shl nuw nsw i32 1, %i.x
  %i.ac = or i32 %i.s, %i.ab
  store i32 %i.ac, ptr %i.g, align 8
  %i.ad = icmp samesign ult i8 %i.u, 16
  tail call void @llvm.assume(i1 %i.ad)
  store i32 %i.w, ptr %i.i, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = add i32 %3, %2
  %i.af = add i32 %i.ae, %4                       ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = icmp ugt i32 %i.af, 16
  br i1 %i.ah, label %bb.f, label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %i.ag)
  %.pre.i = load ptr, ptr %i.c, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE6resizeEm.exit

_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE6resizeEm.exit: ; preds = %bb.e, %bb.f
  %i.ai = phi ptr [ %.pre.i, %bb.f ], [ %i.d, %bb.e ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.aj, ptr %i.e, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.al = load ptr, ptr %i.ak, align 8            ; 5 uses
  %i.am = zext i32 %2 to i64                      ; 2 uses
  %.idx = mul nuw nsw i64 %i.am, 12               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx ; 3 uses
  %i.ao = zext i32 %4 to i64                      ; 2 uses
  %.idx73 = mul nuw nsw i64 %i.ao, 12             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx73
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.as = zext i32 %3 to i64
  %.idx100 = mul nsw i64 %i.as, -12
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %.idx100 ; 3 uses
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.ai, i64 %i.am ; 2 uses
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.au, i64 %i.ao
  %.not90 = icmp eq i32 %2, 0                     ; 2 uses
  br i1 %.not90, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE6resizeEm.exit
  %.sroa.083.0.lcssa = phi i32 [ 0, %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE6resizeEm.exit ], [ %.sroa.083.1, %bb.h ] ; 3 uses
  %i.aw = icmp ult i32 %3, 2
  %or.cond.not = icmp eq i32 %3, 1
  br i1 %or.cond.not, label %.lr.ph96.preheader, label %.loopexit

.lr.ph96.preheader:                               ; preds = %._crit_edge
  %i.ax = load i8, ptr %i.at, align 4
  %i.ay = icmp eq i8 %i.ax, 1
  br i1 %i.ay, label %bb.i, label %.loopexit

.lr.ph:                                           ; preds = %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE6resizeEm.exit, %bb.h
  %.06692 = phi ptr [ %i.bf, %bb.h ], [ %i.al, %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE6resizeEm.exit ] ; 3 uses
  %.sroa.083.091 = phi i32 [ %.sroa.083.1, %bb.h ], [ 0, %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE6resizeEm.exit ] ; 2 uses
  %i.az = load i8, ptr %.06692, align 4
  %i.ba = icmp eq i8 %i.az, 1
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %.06692, i64 4
  %.sroa.0.0.copyload.i = load i8, ptr %i.bb, align 4
  %i.bc = zext nneg i8 %.sroa.0.0.copyload.i to i32
  %i.bd = shl nuw i32 1, %i.bc
  %i.be = or i32 %i.bd, %.sroa.083.091
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.sroa.083.1 = phi i32 [ %i.be, %bb.g ], [ %.sroa.083.091, %.lr.ph ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.06692, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.an
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph96.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %.sroa.0.0.copyload.i78 = load i8, ptr %i.bg, align 4
  %i.bh = zext nneg i8 %.sroa.0.0.copyload.i78 to i32
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = or i32 %i.bi, %.sroa.083.0.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph96.preheader, %bb.i, %._crit_edge
  %.sroa.083.4 = phi i32 [ %.sroa.083.0.lcssa, %._crit_edge ], [ %i.bj, %bb.i ], [ %.sroa.083.0.lcssa, %.lr.ph96.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 240
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm16LiftoffAssembler17MergeIntoNewStateEjjj:bb.a
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115InitMergeRegionEPNS1_16LiftoffAssembler10CacheStateEPKNS1_15LiftoffVarStateEPS6_jNS2_19MergeKeepStackSlotsENS2_19MergeAllowConstantsENS2_19MergeAllowRegistersENS2_14ReuseRegistersENS1_14LiftoffRegListEiRNS1_12ParallelMoveE(ptr noundef nonnull %0, ptr noundef nonnull %i.at, ptr noundef %i.av, i32 noundef %3, i1 noundef zeroext %i.bx, i1 noundef zeroext false, i1 noundef zeroext %i.aw, i1 noundef zeroext false, i32 %.sroa.083.4, i32 noundef %i.cd, ptr noundef nonnull align 8 dereferenceable(356) %5)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit
  br i1 %.not90, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115InitMergeRegionEPNS1_16LiftoffAssembler10CacheStateEPKNS1_15LiftoffVarStateEPS6_jNS2_19MergeKeepStackSlotsENS2_19MergeAllowConstantsENS2_19MergeAllowRegistersENS2_14ReuseRegistersENS1_14LiftoffRegListEiRNS1_12ParallelMoveE(ptr noundef nonnull %0, ptr noundef %i.al, ptr noundef %i.ai, i32 noundef %2, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i32 %.sroa.083.4, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(356) %5)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not75 = icmp eq i32 %4, 0
  br i1 %.not75, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115InitMergeRegionEPNS1_16LiftoffAssembler10CacheStateEPKNS1_15LiftoffVarStateEPS6_jNS2_19MergeKeepStackSlotsENS2_19MergeAllowConstantsENS2_19MergeAllowRegistersENS2_14ReuseRegistersENS1_14LiftoffRegListEiRNS1_12ParallelMoveE(ptr noundef nonnull %0, ptr noundef %i.an, ptr noundef %i.au, i32 noundef %4, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i32 %.sroa.083.4, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(356) %5)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 336
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call preserve_mostcc void @_ZN2v88internal4wasm12ParallelMove12ExecuteMovesEv(ptr noundef nonnull align 8 dereferenceable(356) %5) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 340
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call preserve_mostcc void @_ZN2v88internal4wasm12ParallelMove12ExecuteLoadsEv(ptr noundef nonnull align 8 dereferenceable(356) %5) #20
  br label %_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit

_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115InitMergeRegionEPNS1_16LiftoffAssembler10CacheStateEPKNS1_15LiftoffVarStateEPS6_jNS2_19MergeKeepStackSlotsENS2_19MergeAllowConstantsENS2_19MergeAllowRegistersENS2_14ReuseRegistersENS1_14LiftoffRegListEiRNS1_12ParallelMoveE(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef range(i32 1, 0) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i32 %8, i32 noundef %9, ptr noundef nonnull align 8 dereferenceable(356) %10) unnamed_addr #0 {
.lr.ph:
  %11 = alloca %"class.v8::internal::wasm::(anonymous namespace)::RegisterReuseMap", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.a, ptr %11, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.d, ptr %i.c, align 8
  %i.e = zext i32 %3 to i64
  %.idx = mul nuw nsw i64 %i.e, 12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 340 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 352 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 336 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 240
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 228
  br label %bb.a

._crit_edge:                                      ; preds = %bb.ah
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.ah
  %.0153 = phi ptr [ %1, %.lr.ph ], [ %i.ee, %bb.ah ] ; 21 uses
  %.074152 = phi ptr [ %2, %.lr.ph ], [ %i.ef, %bb.ah ] ; 11 uses
  %.075151 = phi i32 [ %9, %.lr.ph ], [ %.2, %bb.ah ] ; 7 uses
  %i.n = load i8, ptr %.0153, align 4             ; 4 uses
  %i.o = icmp eq i8 %i.n, 0                       ; 2 uses
  %or.cond = and i1 %4, %i.o
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.074152, ptr noundef nonnull align 4 dereferenceable(12) %.0153, i64 12, i1 false)
  %.not82 = icmp eq i32 %.075151, 0
  br i1 %.not82, label %bb.ah, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.0153, i64 1
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = add i8 %i.q, -9
  %i.s = icmp ult i8 %i.r, 2
  br i1 %i.s, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit88, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit: ; preds = %bb.c
  %i.t = zext i8 %i.q to i64
  %i.u = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %i.w = sext i8 %i.v to i32
  %i.x = add nsw i32 %.075151, %i.w
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit85

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit88: ; preds = %bb.c
  %i.y = add i32 %.075151, 15
  %i.z = and i32 %i.y, -8
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit85

_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit85: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit88
  %.0.i84 = phi i32 [ %i.z, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit88 ], [ %i.x, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0153, i64 8
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %.not83 = icmp eq i32 %.0.i84, %i.ab
  br i1 %.not83, label %bb.ah, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit85
  %i.ad = getelementptr inbounds nuw i8, ptr %.074152, i64 8
  store i32 %.0.i84, ptr %i.ad, align 4
  call void @_ZN2v88internal4wasm12ParallelMove15TransferToStackEiRKNS1_15LiftoffVarStateE(ptr noundef nonnull align 8 dereferenceable(356) %10, i32 noundef %.0.i84, ptr noundef nonnull align 4 dereferenceable(12) %.0153) #20
  br label %bb.ah

bb.e:                                             ; preds = %bb.a
  %i.ae = icmp eq i8 %i.n, 2
  %or.cond5 = and i1 %5, %i.ae
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.074152, ptr noundef nonnull align 4 dereferenceable(12) %.0153, i64 12, i1 false)
  br label %bb.ah

bb.g:                                             ; preds = %bb.e
  br i1 %6, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq i8 %i.n, 1
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.0153, i64 4
  %.sroa.0.0.copyload.i89 = load i8, ptr %i.ag, align 4 ; 2 uses
  %i.ah = load i32, ptr %i.g, align 4
  %i.ai = zext nneg i8 %.sroa.0.0.copyload.i89 to i32
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = and i32 %i.aj, %i.ah
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %.thread133, label %bb.j

.thread133:                                       ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0153, i64 1
  %i.am = load i8, ptr %i.al, align 1             ; 2 uses
  %i.an = icmp ult i8 %i.am, 11
  call void @llvm.assume(i1 %i.an)
  %i.ao = icmp ne i8 %i.am, 0
  call void @llvm.assume(i1 %i.ao)
  br label %bb.n

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %7, label %bb.k, label %.thread137

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.0153, i64 4
  %.sroa.0.0.copyload.i91 = load i8, ptr %i.ap, align 4
  %.val = load ptr, ptr %11, align 8              ; 2 uses
  %.val86 = load ptr, ptr %i.b, align 8           ; 2 uses
  %.not7.i = icmp eq ptr %.val, %.val86
  br i1 %.not7.i, label %.thread137, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.l
  %.08.i = phi ptr [ %i.as, %bb.l ], [ %.val, %bb.k ] ; 3 uses
  %i.aq = load i8, ptr %.08.i, align 1
  %i.ar = icmp eq i8 %i.aq, %.sroa.0.0.copyload.i91
  br i1 %i.ar, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i, i64 2 ; 2 uses
  %.not.i92 = icmp eq ptr %i.as, %.val86
  br i1 %.not.i92, label %.thread137, label %.lr.ph.i, !llvm.loop !10

bb.m:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  %i.au = load i8, ptr %i.at, align 1
  br label %bb.n

.thread137:                                       ; preds = %bb.l, %bb.k, %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.0153, i64 1
  %i.aw = load i8, ptr %i.av, align 1             ; 3 uses
  %i.ax = icmp ult i8 %i.aw, 11
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp ne i8 %i.aw, 0
  call void @llvm.assume(i1 %i.ay)
  %.pn = zext nneg i8 %i.aw to i64
  %.in = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasmL13reg_class_forENS1_9ValueKindE.kRegClasses, i64 %.pn
  %12 = load i8, ptr %.in, align 1
  %13 = zext nneg i8 %12 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasmL15GetCacheRegListENS1_8RegClassE.kRegLists, i64 %13
  %.sroa.0.0.copyload.i.i = load i32, ptr %14, align 4
  %.sroa.0.0.copyload.i3.i = load i32, ptr %i.g, align 8
  %15 = or i32 %.sroa.0.0.copyload.i3.i, %8
  %16 = xor i32 %15, -1
  %17 = and i32 %.sroa.0.0.copyload.i.i, %16      ; 2 uses
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %bb.n, label %_ZNSt8optionalIN2v88internal4wasm15LiftoffRegisterEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit94

_ZNSt8optionalIN2v88internal4wasm15LiftoffRegisterEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit94: ; preds = %.thread137
  %i.az = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %17, i1 true)
  %i.ba = trunc nuw nsw i32 %i.az to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread133, %.thread137, %_ZNSt8optionalIN2v88internal4wasm15LiftoffRegisterEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit94, %bb.g
  %.sroa.0117.2 = phi i8 [ %i.au, %bb.m ], [ %i.ba, %_ZNSt8optionalIN2v88internal4wasm15LiftoffRegisterEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit94 ], [ 0, %.thread137 ], [ undef, %bb.g ], [ %.sroa.0.0.copyload.i89, %.thread133 ] ; 12 uses
  %.sroa.9.2 = phi i1 [ true, %bb.m ], [ true, %_ZNSt8optionalIN2v88internal4wasm15LiftoffRegisterEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit94 ], [ false, %.thread137 ], [ false, %bb.g ], [ true, %.thread133 ]
  %.177 = phi i1 [ true, %bb.m ], [ true, %_ZNSt8optionalIN2v88internal4wasm15LiftoffRegisterEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit94 ], [ true, %.thread137 ], [ true, %bb.g ], [ false, %.thread133 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0153, i64 8
  %i.bc = load i32, ptr %i.bb, align 4            ; 6 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  call void @llvm.assume(i1 %i.bd)
  %.not81 = icmp eq i32 %.075151, 0
  br i1 %.not81, label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %.0153, i64 1
  %i.bf = load i8, ptr %i.be, align 1             ; 2 uses
  %i.bg = add i8 %i.bf, -9
  %i.bh = icmp ult i8 %i.bg, 2
  br i1 %i.bh, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit98, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit96

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit96: ; preds = %bb.o
  %i.bi = zext i8 %i.bf to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = sext i8 %i.bk to i32
  %i.bm = add nsw i32 %.075151, %i.bl             ; 2 uses
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit98: ; preds = %bb.o
  %i.bn = add i32 %.075151, 15
  %i.bo = and i32 %i.bn, -8                       ; 2 uses
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit

_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit98, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit96, %bb.n
  %.078 = phi i32 [ %i.bc, %bb.n ], [ %i.bo, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit98 ], [ %i.bm, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit96 ] ; 3 uses
  %.1 = phi i32 [ 0, %bb.n ], [ %i.bo, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit98 ], [ %i.bm, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit96 ] ; 2 uses
  br i1 %.sroa.9.2, label %bb.p, label %bb.ag

bb.p:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit
  br i1 %.177, label %bb.q, label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.q:                                             ; preds = %bb.p
  %i.bp = icmp eq i8 %i.n, 1
  br i1 %i.bp, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %.0153, i64 4
  %.sroa.0.0.copyload.i99 = load i8, ptr %i.bq, align 4 ; 3 uses
  %i.br = icmp eq i8 %.sroa.0117.2, %.sroa.0.0.copyload.i99
  br i1 %i.br, label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %.0153, i64 1
  %i.bt = load i8, ptr %i.bs, align 1             ; 2 uses
  %i.bu = load i32, ptr %i.k, align 8             ; 2 uses
  %i.bv = zext nneg i8 %.sroa.0117.2 to i32
  %i.bw = shl nuw i32 1, %i.bv                    ; 2 uses
  %i.bx = and i32 %i.bu, %i.bw
  %.not.i101 = icmp eq i32 %i.bx, 0
  br i1 %.not.i101, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = icmp eq i8 %i.bt, 4
  br i1 %i.by, label %bb.u, label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.u:                                             ; preds = %bb.t
  %i.bz = zext i8 %.sroa.0117.2 to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store i8 4, ptr %i.cb, align 1
  br label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.v:                                             ; preds = %bb.s
  %i.cc = or i32 %i.bu, %i.bw
  store i32 %i.cc, ptr %i.k, align 8
  %i.cd = zext i8 %.sroa.0.0.copyload.i99 to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4
  %i.ch = zext i8 %.sroa.0117.2 to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %i.ch
  %.sroa.4.0.insert.ext.i = zext i8 %i.bt to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %.sroa.0.0.copyload.i99 to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.ci, align 2
  br label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.w:                                             ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %.0153, i64 1
  %i.ck = load i8, ptr %i.cj, align 1             ; 3 uses
  br i1 %i.o, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.cl = icmp ne i32 %i.bc, 0
  call void @llvm.assume(i1 %i.cl)
  %i.cm = load i32, ptr %i.h, align 4             ; 2 uses
  %i.cn = zext nneg i8 %.sroa.0117.2 to i32
  %i.co = shl nuw i32 1, %i.cn                    ; 2 uses
  %i.cp = and i32 %i.cm, %i.co
  %.not.i102 = icmp eq i32 %i.cp, 0
  br i1 %.not.i102, label %bb.y, label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.y:                                             ; preds = %bb.x
  %i.cq = or i32 %i.cm, %i.co
  store i32 %i.cq, ptr %i.h, align 4
  %i.cr = load i32, ptr %i.j, align 8
  %i.cs = icmp sgt i32 %i.bc, %i.cr
  br i1 %i.cs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.bc, ptr %i.j, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.32.0.insert.ext.i.i = zext nneg i32 %i.bc to i64
  %.sroa.32.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.32.0.insert.ext.i.i, 32
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.ck to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i, 8
  %.sroa.2.0.insert.insert.i.i = or disjoint i64 %.sroa.32.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i, 2
  %i.ct = zext i8 %.sroa.0117.2 to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ct
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.cu, align 8
  br label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.ab:                                            ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %.0153, i64 4
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = zext nneg i8 %.sroa.0117.2 to i32
  %i.cy = shl nuw i32 1, %i.cx
  %i.cz = load i32, ptr %i.h, align 4
  %i.da = or i32 %i.cz, %i.cy
  store i32 %i.da, ptr %i.h, align 4
  %i.db = add i8 %i.ck, -1
  %i.dc = icmp ult i8 %i.db, 2
  call void @llvm.assume(i1 %i.dc)
  %.sroa.34.0.insert.ext.i.i = zext i32 %i.cw to i64
  %.sroa.34.0.insert.shift.i.i = shl nuw i64 %.sroa.34.0.insert.ext.i.i, 32
  %.sroa.2.0.insert.ext.i.i103 = zext nneg i8 %i.ck to i64
  %.sroa.2.0.insert.shift.i.i104 = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i103, 8
  %.sroa.2.0.insert.insert.i.i105 = or disjoint i64 %.sroa.2.0.insert.shift.i.i104, %.sroa.34.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i106 = or disjoint i64 %.sroa.2.0.insert.insert.i.i105, 1
  %i.dd = zext i8 %.sroa.0117.2 to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.dd
  store i64 %.sroa.0.0.insert.insert.i.i106, ptr %i.de, align 8
  br label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit: ; preds = %bb.ab, %bb.r, %bb.t, %bb.u, %bb.v, %bb.x, %bb.aa, %bb.p
  br i1 %7, label %bb.ac, label %_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap3AddENS1_15LiftoffRegisterES4_.exit

bb.ac:                                            ; preds = %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit
  %i.df = getelementptr inbounds nuw i8, ptr %.0153, i64 4
  %.sroa.0.0.copyload.i107 = load i8, ptr %i.df, align 4 ; 2 uses
  %.val.i = load ptr, ptr %11, align 8            ; 2 uses
  %.val1.i = load ptr, ptr %i.b, align 8          ; 4 uses
  %.not7.i.i = icmp eq ptr %.val.i, %.val1.i
  br i1 %.not7.i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap6LookupENS1_15LiftoffRegisterE.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %bb.ad
  %.08.i.i = phi ptr [ %i.di, %bb.ad ], [ %.val.i, %bb.ac ] ; 2 uses
  %i.dg = load i8, ptr %.08.i.i, align 1
  %i.dh = icmp eq i8 %i.dg, %.sroa.0.0.copyload.i107
  br i1 %i.dh, label %_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap3AddENS1_15LiftoffRegisterES4_.exit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 2 ; 2 uses
  %.not.i.i = icmp eq ptr %i.di, %.val1.i
  br i1 %.not.i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap6LookupENS1_15LiftoffRegisterE.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !10

_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap6LookupENS1_15LiftoffRegisterE.exit.thread.i: ; preds = %bb.ad, %bb.ac
  %i.dj = load ptr, ptr %i.c, align 8
  %i.dk = icmp eq ptr %.val1.i, %i.dj
  br i1 %i.dk, label %bb.ae, label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit.i, !prof !6

bb.ae:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap6LookupENS1_15LiftoffRegisterE.exit.thread.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
  %.pre.i.i = load ptr, ptr %i.b, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit.i

_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit.i: ; preds = %bb.ae, %_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap6LookupENS1_15LiftoffRegisterE.exit.thread.i
  %i.dl = phi ptr [ %.pre.i.i, %bb.ae ], [ %.val1.i, %_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap6LookupENS1_15LiftoffRegisterE.exit.thread.i ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  store ptr %i.dm, ptr %i.b, align 8
  store i8 %.sroa.0.0.copyload.i107, ptr %i.dl, align 1
  %i.dn = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.do = load ptr, ptr %i.c, align 8
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %bb.af, label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit3.i, !prof !6

bb.af:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
  %.pre.i2.i = load ptr, ptr %i.b, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit3.i

_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit3.i: ; preds = %bb.af, %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit.i
  %i.dq = phi ptr [ %.pre.i2.i, %bb.af ], [ %i.dn, %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
end_hunk_1
begin_hunk_2_@_ZNK2v88internal4wasm16LiftoffAssembler27GetTotalFrameSlotCountForGCEv:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 -268435456, 268435456) i32 @_ZNK2v88internal4wasm16LiftoffAssembler13OolSpillCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(824) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 804
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sdiv i32 %i.b, 8
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssemblerC2EPNS0_4ZoneESt10unique_ptrINS0_15AssemblerBufferESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %4 = alloca %"struct.v8::internal::AssemblerOptions", align 8 ; 9 uses
  %i.a = load i64, ptr %2, align 8
  store ptr null, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i8 1, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %.sroa.32.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 25
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %i.a, ptr %3, align 8
  call void @_ZN2v88internal18MacroAssemblerBaseC2EPNS0_7IsolateESt7variantIJPNS0_4ZoneEPNS0_19AccountingAllocatorEEENS0_16AssemblerOptionsENS0_18CodeObjectRequiredESt10unique_ptrINS0_15AssemblerBufferESt14default_deleteISD_EE(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef null, ptr %1, i8 0, ptr noundef nonnull byval(%"struct.v8::internal::AssemblerOptions") align 8 %4, i32 noundef 0, ptr noundef nonnull %3) #20
  %i.b = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal15AssemblerBufferESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal15AssemblerBufferEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal15AssemblerBufferEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #20, !inline_history !20
  br label %_ZNSt10unique_ptrIN2v88internal15AssemblerBufferESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal15AssemblerBufferESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v88internal15AssemblerBufferEEclEPS2_.exit.i.i.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2v88internal4wasm16LiftoffAssemblerE, i64 16), ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = ptrtoint ptr %1 to i64
  store i64 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.m, i8 0, i64 104, i1 false)
  store i8 -1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 788
  store i32 -1, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 792
  store i8 -1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i32 32, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 804
  store i32 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 808
  store i8 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 816
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 425
  store i8 1, ptr %i.u, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(824) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2v88internal4wasm16LiftoffAssemblerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp ugt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @free(ptr noundef %i.e) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 456
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %i.f)
  tail call void @_ZN2v88internal9AssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(436) %0) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9AssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal9AssemblerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #21
  br label %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit

_ZN2v88internal19JumpTableInfoWriterD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt5dequeIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = icmp ult ptr %i.o, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.06.i.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #21
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.u = icmp ult ptr %.06.i.i.i, %i.p
  br i1 %i.u, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, !llvm.loop !21

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, %bb.c
  %i.v = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i ], [ %i.l, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #21
  br label %_ZNSt5dequeIiSaIiEED2Ev.exit

_ZNSt5dequeIiSaIiEED2Ev.exit:                     ; preds = %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i
  tail call void @_ZN2v88internal13AssemblerBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssemblerD0Ev(ptr noundef nonnull align 8 dereferenceable(824) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2v88internal4wasm16LiftoffAssemblerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp ugt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %_ZN2v88internal4wasm16LiftoffAssemblerD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @free(ptr noundef %i.e) #20, !inline_history !22
  br label %_ZN2v88internal4wasm16LiftoffAssemblerD2Ev.exit

_ZN2v88internal4wasm16LiftoffAssemblerD2Ev.exit:  ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 456
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %i.f), !inline_history !22
  tail call void @_ZN2v88internal9AssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(824) %0) #20, !inline_history !22
  tail call void @_ZN2v88internal8MalloceddlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal8MalloceddlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden preserve_mostcc range(i8 0, 32) i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %1, i32 %2, i32 %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 9 uses
  %.sroa.2.0.extract.shift = lshr i64 %1, 8       ; 2 uses
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i8 ; 4 uses
  %i.a = and i64 %.sroa.2.0.extract.shift, 15     ; 2 uses
  %i.b = icmp ult i8 %.sroa.2.0.extract.trunc, 11
  tail call void @llvm.assume(i1 %i.b)
  %5 = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasmL13reg_class_forENS1_9ValueKindE.kRegClasses, i64 %i.a
  %6 = load i8, ptr %5, align 1
  %i.c = icmp ne i8 %.sroa.2.0.extract.trunc, 0
  tail call void @llvm.assume(i1 %i.c)
  %7 = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %7)
  %8 = zext nneg i8 %6 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasmL15GetCacheRegListENS1_8RegClassE.kRegLists, i64 %8
  %.sroa.0.0.copyload.i.i = load i32, ptr %9, align 4
  %i.d = xor i32 %3, -1
  %i.e = and i32 %.sroa.0.0.copyload.i.i, %i.d    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.f, align 8
  %i.g = xor i32 %.sroa.0.0.copyload.i.i.i, -1
  %i.h = and i32 %i.e, %i.g                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.h, i1 true)
  %i.j = trunc nuw nsw i32 %i.i to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %i.e)
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit: ; preds = %bb.b, %bb.c
  %.sroa.06.0.i.i = phi i8 [ %i.j, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.sroa.46.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.46.0.extract.trunc.i = trunc nuw i64 %.sroa.46.0.extract.shift.i to i32
  %i.l = and i64 %1, 255
  %i.m = icmp eq i64 %i.l, 2
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.n = icmp eq i8 %.sroa.2.0.extract.trunc, 1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.o, i8 0, i64 12, i1 false), !alias.scope !25
  store i32 %.sroa.46.0.extract.trunc.i, ptr %scevgep.i.i.i, align 4, !alias.scope !25
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.p = ashr i64 %1, 32
  %scevgep.i1.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i64 0, ptr %i.q, align 4, !alias.scope !25
  store i64 %i.p, ptr %scevgep.i1.i.i, align 4, !alias.scope !25
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i = phi i32 [ 5648, %bb.e ], [ 5904, %bb.f ]
  store i32 %.sink.i.i, ptr %4, align 8, !alias.scope !25
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.r, align 8, !alias.scope !25
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %4)
  br label %_ZN2v88internal4wasm16LiftoffAssembler19LoadToFixedRegisterENS1_15LiftoffVarStateENS1_15LiftoffRegisterE.exit

bb.g:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.s = icmp sgt i32 %2, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = sub nsw i32 0, %2                        ; 3 uses
  %i.u = sext i32 %i.t to i64
  %i.v = add nsw i64 %i.u, 128
  %i.w = icmp ult i64 %i.v, 256                   ; 2 uses
  %i.x = shl i32 %i.t, 24
  %i.y = or disjoint i32 %i.x, 4521984
  %.sroa.0.3.insert.insert11.i.i = zext i32 %i.y to i64
  %.sroa.0.3.insert.ext.i.i = zext i32 %i.t to i64
  %.sroa.0.3.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i.i, 24
  %.sroa.0.3.insert.insert.i.i = or disjoint i64 %.sroa.0.3.insert.shift.i.i, 8716288
  %.sroa.0.0.i.i = select i1 %i.w, i64 %.sroa.0.3.insert.insert11.i.i, i64 %.sroa.0.3.insert.insert.i.i
  %storemerge.i.i.i = select i1 %i.w, i64 2, i64 5
  %.fca.1.load.cast.i.i.i = inttoptr i64 %storemerge.i.i.i to ptr
  tail call void @_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i64 %.sroa.0.0.i.i, ptr nonnull %.fca.1.load.cast.i.i.i, i8 noundef zeroext %.sroa.2.0.extract.trunc)
  br label %_ZN2v88internal4wasm16LiftoffAssembler19LoadToFixedRegisterENS1_15LiftoffVarStateENS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler19LoadToFixedRegisterENS1_15LiftoffVarStateENS1_15LiftoffRegisterE.exit: ; preds = %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i8 %.sroa.06.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler19LoadToFixedRegisterENS1_15LiftoffVarStateENS1_15LiftoffRegisterE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %1, i32 %2, i8 %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 7 uses
  %.sroa.2.0.extract.shift = lshr i64 %1, 8
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i8 ; 2 uses
  %.sroa.46.0.extract.shift = lshr i64 %1, 32
  %.sroa.46.0.extract.trunc = trunc nuw i64 %.sroa.46.0.extract.shift to i32
  %i.a = and i64 %1, 255
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %.sroa.2.0.extract.trunc, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.d, i8 0, i64 12, i1 false), !alias.scope !28
  store i32 %.sroa.46.0.extract.trunc, ptr %scevgep.i.i, align 4, !alias.scope !28
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit

bb.d:                                             ; preds = %bb.b
  %i.e = ashr i64 %1, 32
  %scevgep.i1.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i64 0, ptr %i.f, align 4, !alias.scope !28
  store i64 %i.e, ptr %scevgep.i1.i, align 4, !alias.scope !28
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit: ; preds = %bb.c, %bb.d
  %.sink.i = phi i32 [ 5648, %bb.c ], [ 5904, %bb.d ]
  store i32 %.sink.i, ptr %4, align 8, !alias.scope !28
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.g, align 8, !alias.scope !28
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %3, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %2, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub nsw i32 0, %2                        ; 3 uses
  %i.j = sext i32 %i.i to i64
  %i.k = add nsw i64 %i.j, 128
  %i.l = icmp ult i64 %i.k, 256                   ; 2 uses
  %i.m = shl i32 %i.i, 24
  %i.n = or disjoint i32 %i.m, 4521984
  %.sroa.0.3.insert.insert11.i = zext i32 %i.n to i64
  %.sroa.0.3.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.3.insert.shift.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i, 24
  %.sroa.0.3.insert.insert.i = or disjoint i64 %.sroa.0.3.insert.shift.i, 8716288
  %.sroa.0.0.i = select i1 %i.l, i64 %.sroa.0.3.insert.insert11.i, i64 %.sroa.0.3.insert.insert.i
  %storemerge.i.i = select i1 %i.l, i64 2, i64 5
  %.fca.1.load.cast.i.i = inttoptr i64 %storemerge.i.i to ptr
  tail call void @_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %3, i64 %.sroa.0.0.i, ptr nonnull %.fca.1.load.cast.i.i, i8 noundef zeroext %.sroa.2.0.extract.trunc)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i8 0, 32) i8 @_ZN2v88internal4wasm16LiftoffAssembler23LoadI64HalfIntoRegisterENS1_15LiftoffVarStateENS1_11RegPairHalfENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %1, i32 %2, i8 noundef zeroext %3, i32 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 5 uses
  %.sroa.023.0.extract.trunc = trunc i64 %1 to i8 ; 2 uses
  %.sroa.526.0.extract.shift = lshr i64 %1, 32    ; 2 uses
  %.sroa.526.sroa.0.0.extract.trunc = trunc i64 %.sroa.526.0.extract.shift to i8 ; 2 uses
  %sum.shift = lshr i64 %1, 40                    ; 2 uses
  %.sroa.526.sroa.5.0.extract.trunc = trunc nuw nsw i64 %sum.shift to i32
  %i.a = icmp eq i8 %.sroa.023.0.extract.trunc, 1
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i8 %3, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = and i8 %.sroa.526.sroa.0.0.extract.trunc, 15
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.d = lshr i8 %.sroa.526.sroa.0.0.extract.trunc, 4
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.e = and i32 %4, 37839
  %i.f = xor i32 %i.e, 37839                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.g, align 8
  %i.h = xor i32 %.sroa.0.0.copyload.i.i.i, -1
  %i.i = and i32 %i.f, %i.h                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  %i.j = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.i, i1 true)
  %i.k = trunc nuw nsw i32 %i.j to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

bb.g:                                             ; preds = %bb.e
  %i.l = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %i.f)
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit: ; preds = %bb.f, %bb.g
  %.sroa.06.0.i.i = phi i8 [ %i.k, %bb.f ], [ %i.l, %bb.g ] ; 3 uses
  %i.m = icmp eq i8 %.sroa.023.0.extract.trunc, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.n = icmp samesign ult i8 %.sroa.06.0.i.i, 16
  tail call void @llvm.assume(i1 %i.n)
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

bb.i:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.o = icmp eq i8 %3, 0
  br i1 %i.o, label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit, label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit12

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit: ; preds = %bb.i
  %.sroa.526.sroa.5.0.insert.shift = shl nuw nsw i64 %sum.shift, 8
  %.sroa.526.sroa.0.0.insert.ext = and i64 %.sroa.526.0.extract.shift, 255
  %.sroa.526.sroa.0.0.insert.insert = or disjoint i64 %.sroa.526.sroa.5.0.insert.shift, %.sroa.526.sroa.0.0.insert.ext
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm16LiftoffAssembler13SpillLoopArgsEi:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %.011, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !32
  %i.af = icmp eq i8 %i.ae, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.011, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !32 ; 2 uses
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, i8 0, i64 12, i1 false), !alias.scope !32
  store i32 %i.ah, ptr %scevgep.i1.i.i, align 4, !alias.scope !32
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ai = sext i32 %i.ah to i64
  store i64 0, ptr %i.e, align 4, !alias.scope !32
  store i64 %i.ai, ptr %scevgep.i1.i.i, align 4, !alias.scope !32
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i: ; preds = %bb.g, %bb.f
  %.sink.i.i = phi i32 [ 5648, %bb.f ], [ 5904, %bb.g ]
  store i32 %.sink.i.i, ptr %2, align 8, !alias.scope !32
  store ptr null, ptr %i.g, align 8, !alias.scope !32
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %i.ab, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %2)
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i: ; preds = %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i, %bb.d, %bb.c, %bb.b
  store i8 0, ptr %.011, align 4
  br label %_ZN2v88internal4wasm16LiftoffAssembler5SpillEPNS1_15LiftoffVarStateE.exit

_ZN2v88internal4wasm16LiftoffAssembler5SpillEPNS1_15LiftoffVarStateE.exit: ; preds = %bb.b, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aj = getelementptr inbounds nuw i8, ptr %.011, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEPNS1_15LiftoffVarStateE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 7 uses
  %i.a = load i8, ptr %1, align 4
  switch i8 %i.a, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit [
    i8 0, label %bb.g
    i8 1, label %bb.b
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_15LiftoffRegisterENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %i.c, i8 %.sroa.0.0.copyload.i, i8 noundef zeroext %i.g)
  %.sroa.0.0.copyload.i10 = load i8, ptr %i.e, align 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.i = zext i8 %.sroa.0.0.copyload.i10 to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i8 %.sroa.0.0.copyload.i10 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.p = shl nuw i32 1, %i.n
  %i.q = xor i32 %i.p, -1
  %i.r = load i32, ptr %i.o, align 8
  %i.s = and i32 %i.r, %i.q
  store i32 %i.s, ptr %i.o, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.x = load i8, ptr %i.w, align 1, !noalias !35
  %i.y = icmp eq i8 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !noalias !35 ; 2 uses
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, i8 0, i64 12, i1 false), !alias.scope !35
  store i32 %i.aa, ptr %scevgep.i.i, align 4, !alias.scope !35
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = sext i32 %i.aa to i64
  %scevgep.i1.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i64 0, ptr %i.ad, align 4, !alias.scope !35
  store i64 %i.ac, ptr %scevgep.i1.i, align 4, !alias.scope !35
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit: ; preds = %bb.e, %bb.f
  %.sink.i = phi i32 [ 5648, %bb.e ], [ 5904, %bb.f ]
  store i32 %.sink.i, ptr %2, align 8, !alias.scope !35
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.ae, align 8, !alias.scope !35
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %i.u, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %2)
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit: ; preds = %bb.c, %bb.b, %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit, %bb.a
  store i8 0, ptr %1, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler16PrepareForBranchEjNS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [2 x %"class.v8::base::Vector.37"], align 8 ; 7 uses
  %4 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.i = zext i32 %1 to i64                       ; 2 uses
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds [12 x i8], ptr %i.h, i64 %i.j
  store ptr %i.k, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.o = load i32, ptr %i.n, align 4
  %i.p = zext i32 %i.o to i64
  store ptr %i.b, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 9 uses
  %scevgep.i1.i = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 684 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.0.idx96 = phi i64 [ 0, %bb.a ], [ %.0.add, %._crit_edge ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %3, i64 %.0.idx96 ; 2 uses
  %.sroa.083.0.copyload = load ptr, ptr %.0.ptr, align 8 ; 2 uses
  %.sroa.585.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 8
  %.sroa.585.0.copyload = load i64, ptr %.sroa.585.0..0.sroa_idx, align 8 ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.585.0.copyload, 12
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.083.0.copyload, i64 %.idx
  %.not6494 = icmp eq i64 %.sroa.585.0.copyload, 0
  br i1 %.not6494, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.af, %bb.c
  %.0.add = add nuw nsw i64 %.0.idx96, 16         ; 2 uses
  %.not = icmp eq i64 %.0.add, 32
  br i1 %.not, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %bb.af
  %.06395 = phi ptr [ %i.df, %bb.af ], [ %.sroa.083.0.copyload, %bb.c ] ; 13 uses
  %i.y = load i8, ptr %.06395, align 4
  switch i8 %i.y, label %bb.af [
    i8 1, label %bb.d
    i8 2, label %bb.u
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.06395, i64 4 ; 4 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.z, align 4 ; 6 uses
  %i.aa = zext i8 %.sroa.0.0.copyload.i to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp ugt i32 %i.ac, 1
  br i1 %i.ad, label %bb.e, label %bb.af

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.06395, i64 1
  %i.af = load i8, ptr %i.ae, align 1             ; 6 uses
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = icmp ult i8 %i.af, 11
  tail call void @llvm.assume(i1 %i.ah)
  %5 = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasmL13reg_class_forENS1_9ValueKindE.kRegClasses, i64 %i.ag
  %6 = load i8, ptr %5, align 1
  %i.ai = icmp ne i8 %i.af, 0
  tail call void @llvm.assume(i1 %i.ai)
  %7 = zext nneg i8 %6 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasmL15GetCacheRegListENS1_8RegClassE.kRegLists, i64 %7
  %.sroa.0.0.copyload.i.i = load i32, ptr %8, align 4
  %.sroa.0.0.copyload.i3.i = load i32, ptr %i.r, align 8
  %9 = or i32 %.sroa.0.0.copyload.i3.i, %2
  %10 = xor i32 %9, -1
  %11 = and i32 %.sroa.0.0.copyload.i.i, %10      ; 2 uses
  %.not93.a = icmp eq i32 %11, 0
  br i1 %.not93.a, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %11, i1 true) ; 4 uses
  %i.ak = trunc nuw nsw i32 %i.aj to i8           ; 3 uses
  %i.al = icmp samesign ult i32 %i.aj, 16
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = icmp samesign ult i8 %.sroa.0.0.copyload.i, 16
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i8 %i.af, 1
  %..i.i = select i1 %i.an, i32 4, i32 8
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.ak, i8 %.sroa.0.0.copyload.i, i32 noundef %..i.i) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = add nsw i8 %i.ak, -16                   ; 8 uses
  %i.ap = add nsw i8 %.sroa.0.0.copyload.i, -16   ; 6 uses
  %i.aq = icmp slt i8 %.sroa.0.0.copyload.i, 32
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.as = and i32 %i.ar, 32
  %.not.i.i14.i = icmp eq i32 %i.as, 0            ; 3 uses
  switch i8 %i.af, label %bb.o [
    i8 3, label %bb.i
    i8 4, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i.i14.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal9Assembler3vssEhNS0_11XMMRegisterES2_S2_(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 noundef zeroext 16, i8 %i.ao, i8 %i.ao, i8 %i.ap) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal9Assembler5movssENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.ao, i8 %i.ap) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit

bb.l:                                             ; preds = %bb.h
  br i1 %.not.i.i14.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_S2_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 noundef zeroext 16, i8 %i.ao, i8 %i.ao, i8 %i.ap, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit

bb.n:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.ao, i8 %i.ap) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit

bb.o:                                             ; preds = %bb.h
  br i1 %.not.i.i14.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN2v88internal9Assembler3vpdEhNS0_11XMMRegisterES2_S2_(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 noundef zeroext 40, i8 %i.ao, i8 0, i8 %i.ap) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit

bb.q:                                             ; preds = %bb.o
  tail call void @_ZN2v88internal9Assembler6movapsENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.ao, i8 %i.ap) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit

_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit: ; preds = %bb.q, %bb.p, %bb.n, %bb.m, %bb.k, %bb.j, %bb.g
  %i.at = shl nuw i32 1, %i.aj
  %i.au = load i32, ptr %i.r, align 8
  %i.av = or i32 %i.au, %i.at                     ; 2 uses
  store i32 %i.av, ptr %i.r, align 8
  %i.aw = zext nneg i32 %i.aj to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4
  %.sroa.0.0.copyload.i69 = load i8, ptr %i.z, align 4 ; 2 uses
  %i.ba = zext i8 %.sroa.0.0.copyload.i69 to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.r, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit

bb.r:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit
  %i.bf = zext nneg i8 %.sroa.0.0.copyload.i69 to i32
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = xor i32 %i.bg, -1
  %i.bi = and i32 %i.av, %i.bh
  store i32 %i.bi, ptr %i.r, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit, %bb.r
  store i8 1, ptr %.06395, align 4
  store i8 %i.ak, ptr %i.z, align 4
  br label %bb.af

bb.s:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %.06395, i64 8
  %i.bk = load i32, ptr %i.bj, align 4            ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, -1
  tail call void @llvm.assume(i1 %i.bl)
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_15LiftoffRegisterENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %i.bk, i8 %.sroa.0.0.copyload.i, i8 noundef zeroext %i.af)
  %.sroa.0.0.copyload.i71 = load i8, ptr %i.z, align 4 ; 2 uses
  %i.bm = zext i8 %.sroa.0.0.copyload.i71 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.t, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit72

bb.t:                                             ; preds = %bb.s
  %i.br = zext nneg i8 %.sroa.0.0.copyload.i71 to i32
  %i.bs = shl nuw i32 1, %i.br
  %i.bt = xor i32 %i.bs, -1
  %i.bu = load i32, ptr %i.r, align 8
  %i.bv = and i32 %i.bu, %i.bt
  store i32 %i.bv, ptr %i.r, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit72

_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit72: ; preds = %bb.s, %bb.t
  store i8 0, ptr %.06395, align 4
  br label %bb.af

bb.u:                                             ; preds = %.lr.ph
  %i.bw = getelementptr inbounds nuw i8, ptr %.06395, i64 1
  %i.bx = load i8, ptr %i.bw, align 1             ; 5 uses
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = icmp ult i8 %i.bx, 11
  tail call void @llvm.assume(i1 %i.bz)
  %12 = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasmL13reg_class_forENS1_9ValueKindE.kRegClasses, i64 %i.by
  %13 = load i8, ptr %12, align 1
  %i.ca = icmp ne i8 %i.bx, 0
  tail call void @llvm.assume(i1 %i.ca)
  %14 = zext nneg i8 %13 to i64
  %15 = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasmL15GetCacheRegListENS1_8RegClassE.kRegLists, i64 %14
  %.sroa.0.0.copyload.i.i73 = load i32, ptr %15, align 4
  %.sroa.0.0.copyload.i3.i74 = load i32, ptr %i.r, align 8
  %16 = or i32 %.sroa.0.0.copyload.i3.i74, %2
  %17 = xor i32 %16, -1
  %18 = and i32 %.sroa.0.0.copyload.i.i73, %17    ; 2 uses
  %.not91 = icmp eq i32 %18, 0
  br i1 %.not91, label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit80, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %18, i1 true) ; 3 uses
  %i.cc = trunc nuw nsw i32 %i.cb to i8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.cd = icmp eq i8 %i.bx, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.06395, i64 4 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !noalias !40 ; 2 uses
  br i1 %i.cd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.t, i8 0, i64 12, i1 false), !alias.scope !40
  store i32 %i.cf, ptr %scevgep.i1.i, align 4, !alias.scope !40
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit

bb.x:                                             ; preds = %bb.v
  %i.cg = sext i32 %i.cf to i64
  store i64 0, ptr %i.s, align 4, !alias.scope !40
  store i64 %i.cg, ptr %scevgep.i1.i, align 4, !alias.scope !40
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit: ; preds = %bb.w, %bb.x
  %.sink.i = phi i32 [ 5648, %bb.w ], [ 5904, %bb.x ]
  store i32 %.sink.i, ptr %4, align 8, !alias.scope !40
  store ptr null, ptr %i.u, align 8, !alias.scope !40
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.cc, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %4)
  %i.ch = shl nuw i32 1, %i.cb
  %i.ci = load i32, ptr %i.r, align 8
  %i.cj = or i32 %i.ci, %i.ch
  store i32 %i.cj, ptr %i.r, align 8
  %i.ck = zext nneg i32 %i.cb to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4
  store i8 1, ptr %.06395, align 4
  store i8 %i.cc, ptr %i.ce, align 4
  br label %bb.af

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit80: ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %.06395, i64 8
  %i.cp = load i32, ptr %i.co, align 4            ; 4 uses
  %i.cq = icmp sgt i32 %i.cp, -1
  tail call void @llvm.assume(i1 %i.cq)
  %.not92 = icmp eq i8 %i.bx, 1                   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.06395, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !noalias !41 ; 3 uses
  %i.ct = ashr i32 %i.cs, 31
  %i.cu = zext i32 %i.ct to i64
  %i.cv = shl nuw i64 %i.cu, 32
  %.sroa.2.sroa.3.0.insert.shift = select i1 %.not92, i64 0, i64 %i.cv
  %.sroa.2.sroa.0.0.insert.ext = zext i32 %i.cs to i64 ; 3 uses
  %.sroa.2.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.sroa.3.0.insert.shift, %.sroa.2.sroa.0.0.insert.ext ; 3 uses
  %i.cw = load i32, ptr %i.w, align 8
  %.not.i.i = icmp slt i32 %i.cp, %i.cw
  br i1 %.not.i.i, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit80
  store i32 %i.cp, ptr %i.w, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i: ; preds = %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit80, %bb.y
  %i.cx = sub nsw i32 0, %i.cp                    ; 3 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = add nsw i64 %i.cy, 128
  %i.da = icmp ult i64 %i.cz, 256                 ; 2 uses
  %i.db = shl i32 %i.cx, 24
  %i.dc = or disjoint i32 %i.db, 4521984
  %.sroa.036.3.insert.insert44.i = zext i32 %i.dc to i64
  %.sroa.036.3.insert.ext.i = zext i32 %i.cx to i64
  %.sroa.036.3.insert.shift.i = shl nuw nsw i64 %.sroa.036.3.insert.ext.i, 24
  %.sroa.036.3.insert.insert.i = or disjoint i64 %.sroa.036.3.insert.shift.i, 8716288
  %.sroa.036.0.i = select i1 %i.da, i64 %.sroa.036.3.insert.insert44.i, i64 %.sroa.036.3.insert.insert.i ; 4 uses
  %storemerge.i.i = select i1 %i.da, i64 2, i64 5
  %.fca.1.load.cast.i.i = inttoptr i64 %storemerge.i.i to ptr ; 4 uses
  br i1 %.not92, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.036.0.i, ptr nonnull %.fca.1.load.cast.i.i, i64 %.sroa.2.sroa.0.0.insert.ext, i32 noundef 4) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE.exit

bb.aa:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  %i.dd = add nsw i64 %.sroa.2.sroa.0.0.insert.insert, 2147483648
  %i.de = icmp ult i64 %i.dd, 4294967296
  br i1 %i.de, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.036.0.i, ptr nonnull %.fca.1.load.cast.i.i, i64 %.sroa.2.sroa.0.0.insert.ext, i32 noundef 8) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE.exit

bb.ac:                                            ; preds = %bb.aa
  %.not.i.i.i = icmp sgt i32 %i.cs, -1
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 10, i64 %.sroa.2.sroa.0.0.insert.insert, i32 noundef 4) #20
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.036.0.i, ptr nonnull %.fca.1.load.cast.i.i, i8 10, i32 noundef 8) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE.exit

bb.ae:                                            ; preds = %bb.ac
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 10, i64 %.sroa.2.sroa.0.0.insert.insert, i8 0, i32 noundef 8) #20
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.036.0.i, ptr nonnull %.fca.1.load.cast.i.i, i8 10, i32 noundef 8) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE.exit

_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE.exit: ; preds = %bb.z, %bb.ab, %bb.ad, %bb.ae
  store i8 0, ptr %.06395, align 4
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit, %_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE.exit, %bb.d, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit72, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit
  %i.df = getelementptr inbounds nuw i8, ptr %.06395, i64 12 ; 2 uses
  %.not64 = icmp eq ptr %i.df, %i.x
  br i1 %.not64, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, i8 %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i8 %1, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i8 %3, 1
  %..i = select i1 %i.c, i32 4, i32 8
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, i8 %2, i32 noundef %..i) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = add nsw i8 %1, -16
  %i.e = icmp slt i8 %1, 32
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i8 %2, -16
  %i.g = icmp slt i8 %2, 32
  tail call void @llvm.assume(i1 %i.g)
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler4MoveENS0_11XMMRegisterES3_NS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.d, i8 %i.f, i8 noundef zeroext %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_15LiftoffRegisterENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %1, i8 %2, i8 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not.i = icmp slt i32 %1, %i.b
  br i1 %.not.i, label %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit

_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit: ; preds = %bb.a, %bb.b
  %i.c = sub nsw i32 0, %1                        ; 3 uses
  %i.d = sext i32 %i.c to i64
  %i.e = add nsw i64 %i.d, 128
  %i.f = icmp ult i64 %i.e, 256                   ; 2 uses
  %i.g = shl i32 %i.c, 24
  %i.h = or disjoint i32 %i.g, 4521984
  %.sroa.027.3.insert.insert35 = zext i32 %i.h to i64
  %.sroa.027.3.insert.ext = zext i32 %i.c to i64
  %.sroa.027.3.insert.shift = shl nuw nsw i64 %.sroa.027.3.insert.ext, 24
  %.sroa.027.3.insert.insert = or disjoint i64 %.sroa.027.3.insert.shift, 8716288
  %.sroa.027.0 = select i1 %i.f, i64 %.sroa.027.3.insert.insert35, i64 %.sroa.027.3.insert.insert ; 8 uses
  %storemerge.i = select i1 %i.f, i64 2, i64 5
  %.fca.1.load.cast.i = inttoptr i64 %storemerge.i to ptr ; 8 uses
  switch i8 %3, label %bb.n [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.h
    i8 5, label %bb.k
  ]

bb.c:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit
  %i.i = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.i)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.027.0, ptr nonnull %.fca.1.load.cast.i, i8 %2, i32 noundef 4) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.d:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit, %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit, %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit
  %i.j = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.j)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.027.0, ptr nonnull %.fca.1.load.cast.i, i8 %2, i32 noundef 8) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.e:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit
  %i.k = add nsw i8 %2, -16                       ; 2 uses
  %i.l = icmp slt i8 %2, 32
  tail call void @llvm.assume(i1 %i.l)
  %i.m = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.n = and i32 %i.m, 32
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler3vssEhNS0_11XMMRegisterES2_NS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 %i.k, i8 0, i64 %.sroa.027.0, ptr nonnull %.fca.1.load.cast.i) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler5movssENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.sroa.027.0, ptr nonnull %.fca.1.load.cast.i, i8 %i.k) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.h:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit
  %i.o = add nsw i8 %2, -16                       ; 2 uses
  %i.p = icmp slt i8 %2, 32
  tail call void @llvm.assume(i1 %i.p)
  %i.q = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.r = and i32 %i.q, 32
  %.not.i.i21 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 %i.o, i8 0, i64 %.sroa.027.0, ptr nonnull %.fca.1.load.cast.i, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal9Assembler5movsdENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.sroa.027.0, ptr nonnull %.fca.1.load.cast.i, i8 %i.o) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.k:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit
  %i.s = add nsw i8 %2, -16                       ; 2 uses
  %i.t = icmp slt i8 %2, 32
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm16LiftoffAssembler11PrepareCallEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorEPNS0_8RegisterESB_:bb.a
  br i1 %i.cy, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22ClearAllCacheRegistersEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit.i
  store i32 -1, ptr %i.cw, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8             ; 4 uses
  %i.db = icmp eq i8 %i.da, -1
  br i1 %i.db, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22ClearAllCacheRegistersEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = icmp samesign ult i8 %i.da, 16
  call void @llvm.assume(i1 %i.dc)
  %i.dd = zext nneg i8 %i.da to i32
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.df = zext nneg i8 %i.da to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.df
  store i32 0, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.di = shl nuw nsw i32 1, %i.dd
  %i.dj = xor i32 %i.di, -1
  %i.dk = load i32, ptr %i.dh, align 8
  %i.dl = and i32 %i.dk, %i.dj
  store i32 %i.dl, ptr %i.dh, align 8
  store i8 -1, ptr %i.cz, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22ClearAllCacheRegistersEv.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState22ClearAllCacheRegistersEv.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit.i, %bb.r, %bb.s
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 4 uses
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22ClearAllCacheRegistersEv.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 684
  br label %bb.u

bb.u:                                             ; preds = %.backedge, %bb.t
  %.pn = phi ptr [ %i.br, %bb.t ], [ %.037, %.backedge ] ; 4 uses
  %.037 = getelementptr inbounds i8, ptr %.pn, i64 -12 ; 3 uses
  %i.dq = load i8, ptr %.037, align 4
  %i.dr = icmp eq i8 %i.dq, 1
  br i1 %i.dr, label %bb.v, label %.backedge

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds i8, ptr %.pn, i64 -4
  %i.dt = load i32, ptr %i.ds, align 4            ; 2 uses
  %i.du = icmp sgt i32 %i.dt, -1
  call void @llvm.assume(i1 %i.du)
  %i.dv = getelementptr inbounds i8, ptr %.pn, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.dv, align 4
  %i.dw = getelementptr inbounds i8, ptr %.pn, i64 -11
  %i.dx = load i8, ptr %i.dw, align 1
  call void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_15LiftoffRegisterENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %i.dt, i8 %.sroa.0.0.copyload.i, i8 noundef zeroext %i.dx)
  %.sroa.0.0.copyload.i47 = load i8, ptr %i.dv, align 4 ; 2 uses
  %i.dy = zext i8 %.sroa.0.0.copyload.i47 to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = add i32 %i.ea, -1                       ; 2 uses
  store i32 %i.eb, ptr %i.dz, align 4
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.w, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit

bb.w:                                             ; preds = %bb.v
  %i.ed = zext nneg i8 %.sroa.0.0.copyload.i47 to i32
  %i.ee = shl nuw i32 1, %i.ed
  %i.ef = xor i32 %i.ee, -1
  %i.eg = load i32, ptr %i.dm, align 8
  %i.eh = and i32 %i.eg, %i.ef
  store i32 %i.eh, ptr %i.dm, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit: ; preds = %bb.v, %bb.w
  store i8 0, ptr %.037, align 4
  %i.ei = load i32, ptr %i.dm, align 8
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %.loopexit, label %.backedge

.backedge:                                        ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit, %bb.u
  br label %bb.u, !llvm.loop !50

.loopexit:                                        ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22ClearAllCacheRegistersEv.exit
  %i.ek = icmp sgt i32 %.1, 0
  br i1 %i.ek, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.loopexit
  call void @_ZN2v88internal4wasm17LiftoffStackSlots9ConstructEi(ptr noundef nonnull align 8 dereferenceable(224) %5, i32 noundef %.1)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.loopexit
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 336 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call preserve_mostcc void @_ZN2v88internal4wasm12ParallelMove12ExecuteMovesEv(ptr noundef nonnull align 8 dereferenceable(356) %6) #20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 340 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit41, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call preserve_mostcc void @_ZN2v88internal4wasm12ParallelMove12ExecuteLoadsEv(ptr noundef nonnull align 8 dereferenceable(356) %6) #20
  br label %_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit41

_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit41: ; preds = %bb.aa, %bb.ab
  br i1 %.sroa.061.068, label %bb.ac, label %.thread82

.thread82:                                        ; preds = %_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.ae

bb.ac:                                            ; preds = %_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit41
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 6, i64 4031053824, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #20
  %.pre72 = load i32, ptr %i.el, align 8
  %i.er = icmp eq i32 %.pre72, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %i.er, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call preserve_mostcc void @_ZN2v88internal4wasm12ParallelMove12ExecuteMovesEv(ptr noundef nonnull align 8 dereferenceable(356) %6) #20
  br label %bb.ae

bb.ae:                                            ; preds = %.thread82, %bb.ad, %bb.ac
  %i.es = load i32, ptr %i.eo, align 4
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call preserve_mostcc void @_ZN2v88internal4wasm12ParallelMove12ExecuteLoadsEv(ptr noundef nonnull align 8 dereferenceable(356) %6) #20
  br label %_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit

_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm17LiftoffStackSlots4SlotELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(224) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler10FinishCallEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %.not78 = icmp samesign eq i64 %i.c, 0
  br i1 %.not78, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = load i64, ptr %i.l, align 8
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit: ; preds = %._crit_edge, %bb.b
  %i.w = phi i32 [ %i.u, %bb.b ], [ 32, %._crit_edge ]
  %i.x = shl nsw i32 %i.n, 3
  %i.y = add nsw i32 %i.w, %i.x                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8
  %.not.i = icmp slt i32 %i.y, %i.aa
  br i1 %.not.i, label %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit
  store i32 %i.y, ptr %i.z, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit

_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit ] ; 3 uses
  %.04479 = phi ptr [ %i.b, %.lr.ph ], [ %i.cq, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit ] ; 2 uses
  %i.ab = load i8, ptr %.04479, align 1           ; 7 uses
  %i.ac = zext nneg i8 %i.ab to i64               ; 2 uses
  %i.ad = icmp ult i8 %i.ab, 11
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasmL13reg_class_forENS1_9ValueKindE.kRegClasses, i64 %i.ac
  %i.af = load i8, ptr %i.ae, align 1             ; 2 uses
  %i.ag = icmp ne i8 %i.ab, 0
  tail call void @llvm.assume(i1 %i.ag)
  %3 = zext nneg i8 %i.af to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasmL15GetCacheRegListENS1_8RegClassE.kRegLists, i64 %3
  %i.ah = icmp eq i8 %i.ab, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ai = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = icmp ugt i64 %i.aj, %indvars.iv
  br i1 %i.ak, label %_ZNK2v88internal8compiler14CallDescriptor17GetReturnLocationEm.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.24) #22
  unreachable

_ZNK2v88internal8compiler14CallDescriptor17GetReturnLocationEm.exit: ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.an, align 4
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 3 uses
  %i.ao = and i32 %.sroa.0.0.extract.trunc, 1
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor17GetReturnLocationEm.exit
  %i.aq = ashr exact i32 %.sroa.0.0.extract.trunc, 1 ; 2 uses
  switch i8 %i.af, label %bb.i [
    i8 0, label %bb.g
    i8 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ar = trunc i32 %i.aq to i8                   ; 2 uses
  %i.as = icmp samesign ult i8 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  br label %_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit

bb.h:                                             ; preds = %bb.f
  %i.at = trunc i32 %i.aq to i8                   ; 2 uses
  %i.au = icmp samesign ult i8 %i.at, 16
  tail call void @llvm.assume(i1 %i.au)
  %i.av = or disjoint i8 %i.at, 16
  br label %_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit

bb.i:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit: ; preds = %bb.g, %bb.h
  %.sroa.0.0.i.i = phi i8 [ %i.ar, %bb.g ], [ %i.av, %bb.h ] ; 5 uses
  br i1 %i.ah, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit
  %i.aw = icmp samesign ult i8 %.sroa.0.0.i.i, 16
  tail call void @llvm.assume(i1 %i.aw)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.0.0.i.i, i8 %.sroa.0.0.i.i, i32 noundef 4) #20
  br label %bb.q

bb.k:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor17GetReturnLocationEm.exit
  %.sroa.0.0.copyload.i.i47 = load i32, ptr %4, align 4
  %5 = and i32 %.sroa.0.0.copyload.i.i47, -393222 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.f, align 8
  %i.ax = xor i32 %.sroa.0.0.copyload.i.i.i, -1
  %i.ay = and i32 %5, %i.ax                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i, label %bb.m, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.az = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ay, i1 true)
  %i.ba = trunc nuw nsw i32 %i.az to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %5)
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit: ; preds = %bb.l, %bb.m
  %.sroa.06.0.i.i = phi i8 [ %i.ba, %bb.l ], [ %i.bb, %bb.m ] ; 2 uses
  %i.bc = tail call noundef i32 @_ZNK2v88internal8compiler14CallDescriptor18GetOffsetToReturnsEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #20
  %i.bd = ashr i32 %.sroa.0.0.extract.trunc, 1
  %i.be = add i32 %i.bc, %i.bd                    ; 2 uses
  %i.bf = xor i32 %i.be, -1
  %i.bg = shl nsw i32 %i.bf, 3                    ; 3 uses
  %i.bh = icmp eq i32 %i.be, -1
  br i1 %i.bh, label %_ZN2v88internal4wasm16LiftoffAssembler19LoadReturnStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.bi = sext i32 %i.bg to i64
  %i.bj = add nsw i64 %i.bi, 128
  %i.bk = icmp ult i64 %i.bj, 256
  br i1 %i.bk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bl = and i32 %i.bg, 248
  %.sroa.060.4.insert.ext68 = zext nneg i32 %i.bl to i64
  %.sroa.060.4.insert.shift69 = shl nuw nsw i64 %.sroa.060.4.insert.ext68, 32
  %.sroa.060.4.insert.insert71 = or disjoint i64 %.sroa.060.4.insert.shift69, 608436224
  br label %_ZN2v88internal4wasm16LiftoffAssembler19LoadReturnStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit

bb.p:                                             ; preds = %bb.n
  %.sroa.060.4.insert.ext = zext i32 %i.bg to i64
  %.sroa.060.4.insert.shift = shl nuw i64 %.sroa.060.4.insert.ext, 32
  %.sroa.060.4.insert.insert = or disjoint i64 %.sroa.060.4.insert.shift, 612630528
  br label %_ZN2v88internal4wasm16LiftoffAssembler19LoadReturnStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit

_ZN2v88internal4wasm16LiftoffAssembler19LoadReturnStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit, %bb.o, %bb.p
  %.sroa.060.0 = phi i64 [ %.sroa.060.4.insert.insert, %bb.p ], [ %.sroa.060.4.insert.insert71, %bb.o ], [ 604241920, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit ]
  %.sroa.2.0.copyload.i = phi ptr [ inttoptr (i64 6 to ptr), %bb.p ], [ inttoptr (i64 3 to ptr), %bb.o ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit ]
  tail call void @_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i64 %.sroa.060.0, ptr nonnull %.sroa.2.0.copyload.i, i8 noundef zeroext %i.ab)
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler19LoadReturnStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit, %bb.j, %_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit
  %.sroa.054.1 = phi i8 [ %.sroa.0.0.i.i, %bb.j ], [ %.sroa.0.0.i.i, %_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit ], [ %.sroa.06.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler19LoadReturnStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit ] ; 3 uses
  %i.bm = zext nneg i8 %.sroa.054.1 to i32
  %i.bn = shl nuw i32 1, %i.bm
  %i.bo = load i32, ptr %i.f, align 8
  %i.bp = or i32 %i.bo, %i.bn
  store i32 %i.bp, ptr %i.f, align 8
  %i.bq = zext nneg i8 %.sroa.054.1 to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4
  %i.bu = load ptr, ptr %i.i, align 8             ; 4 uses
  %i.bv = load ptr, ptr %i.j, align 8
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %i.bz = icmp sgt i32 %i.by, -1
  tail call void @llvm.assume(i1 %i.bz)
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i: ; preds = %bb.r, %bb.q
  %i.ca = phi i32 [ %i.by, %bb.r ], [ 32, %bb.q ] ; 2 uses
  %i.cb = add nsw i8 %i.ab, -9
  %i.cc = icmp ult i8 %i.cb, 2
  br i1 %i.cc, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit3.i, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.ac
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = sext i8 %i.ce to i32
  %i.cg = add nsw i32 %i.ca, %i.cf
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit3.i: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i
  %i.ch = add nuw i32 %i.ca, 15
  %i.ci = and i32 %i.ch, -8
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindE.exit.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit3.i, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i
  %.0.i.i.i = phi i32 [ %i.ci, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit3.i ], [ %i.cg, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i ]
  %i.cj = load ptr, ptr %i.k, align 8
  %i.ck = icmp eq ptr %i.bu, %i.cj
  br i1 %i.ck, label %bb.s, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit, !prof !6

bb.s:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindE.exit.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.g)
  %.pre.i.i = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindE.exit.i, %bb.s
  %i.cl = phi ptr [ %.pre.i.i, %bb.s ], [ %i.bu, %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindE.exit.i ] ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store ptr %i.cm, ptr %i.i, align 8
  store i8 1, ptr %i.cl, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store i8 %i.ab, ptr %i.cn, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i8 %.sroa.054.1, ptr %i.co, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 %.0.i.i.i, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.04479, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.d
  br i1 %.not, label %._crit_edge, label %bb.d
}

declare noundef i32 @_ZNK2v88internal8compiler14CallDescriptor18GetOffsetToReturnsEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler4MoveENS0_11XMMRegisterES3_NS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, i8 %2, i8 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.b = and i32 %i.a, 32
  %.not.i.i14 = icmp eq i32 %i.b, 0               ; 3 uses
  switch i8 %3, label %bb.h [
    i8 3, label %bb.b
    i8 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler3vssEhNS0_11XMMRegisterES2_S2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 %1, i8 %1, i8 %2) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler5movssENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %2) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_S2_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 %1, i8 %1, i8 %2, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %2) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.h:                                             ; preds = %bb.a
  br i1 %.not.i.i14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal9Assembler3vpdEhNS0_11XMMRegisterES2_S2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 40, i8 %1, i8 0, i8 %2) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal9Assembler6movapsENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %2) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit: ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler20ParallelRegisterMoveENS_4base6VectorIKNS2_25ParallelRegisterMoveTupleEEE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::wasm::ParallelMove", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i8 0, i64 104, i1 false)
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit

_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i32 [ %i.i, %bb.b ], [ 32, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 352
  store i32 %i.k, ptr %i.l, align 8
  %.idx = mul nuw nsw i64 %2, 3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not12 = icmp eq i64 %2, 0
  br i1 %.not12, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 336 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN2v88internal4wasm12ParallelMove12MoveRegisterENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit
  %.pre = load i32, ptr %i.n, align 8
  %i.o = icmp eq i32 %.pre, 0
  br i1 %i.o, label %._crit_edge.thread, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  call preserve_mostcc void @_ZN2v88internal4wasm12ParallelMove12ExecuteMovesEv(ptr noundef nonnull align 8 dereferenceable(356) %3) #20
  br label %._crit_edge.thread
end_hunk_4
