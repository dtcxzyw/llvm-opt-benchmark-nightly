Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-ir-x64?download=true
inline.NumInlined: 2333
inline.NumDeleted: 907
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.54", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", [4 x i8], %"class.v8::internal::FlagValue.55", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.54", %"class.v8::internal::FlagValue.54", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.54", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.54", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.54", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.55", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.54", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.54", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.55", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", [4 x i8], %"class.v8::internal::FlagValue.55", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.54", %"class.v8::internal::FlagValue.54", %"class.v8::internal::FlagValue.54", %"class.v8::internal::FlagValue.54", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.53", [4 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.54", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.55", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.55", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue.56", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.54", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.54", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.55", %"class.v8::internal::FlagValue.55", %"class.v8::internal::FlagValue.55", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.54", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.56", [2 x i8], %"class.v8::internal::FlagValue.53", [4 x i8], %"class.v8::internal::FlagValue.55", %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.54", %"class.v8::internal::FlagValue.54", [4 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.57", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.53", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.52", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.56" = type { %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base" }
%"struct.std::_Optional_payload_base" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.55" = type { double }
%"class.v8::internal::FlagValue.54" = type { i32 }
%"class.v8::internal::FlagValue.57" = type { i64 }
%"class.v8::internal::FlagValue.53" = type { i32 }
%"class.v8::internal::FlagValue.52" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.v8::internal::Operand" = type { %union.anon.33 }
%union.anon.33 = type { %"struct.v8::internal::Operand::LabelOperand" }
%"struct.v8::internal::Operand::LabelOperand" = type { i8, i8, i8, ptr }
%"class.v8::internal::Label" = type { i32, i32 }
%"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScope" = type { %"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScopeBase.base", i8, i8, [2 x i8] }
%"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScopeBase.base" = type <{ ptr, ptr, %"class.v8::internal::RegListBase", %"class.v8::internal::RegListBase.70" }>
%"class.v8::internal::RegListBase" = type { i16 }
%"class.v8::internal::RegListBase.70" = type { i16 }
%"class.v8::internal::maglev::SaveRegisterStateForCall" = type <{ ptr, %"struct.v8::internal::maglev::RegisterSnapshot", [2 x i8] }>
%"struct.v8::internal::maglev::RegisterSnapshot" = type { %"class.v8::internal::RegListBase", %"class.v8::internal::RegListBase", %"class.v8::internal::RegListBase.70" }
%"class.v8::internal::compiler::NativeContextRef" = type { %"class.v8::internal::compiler::ContextRef" }
%"class.v8::internal::compiler::ContextRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::internal::compiler::HeapObjectRef" = type { %"class.v8::internal::compiler::ObjectRef" }
%"class.v8::internal::compiler::ObjectRef" = type { ptr }

$_ZN2v88internal6maglev15MaglevAssembler4MoveENS0_8RegisterEi = comdat any

$_ZN2v88internal6maglev15MaglevAssembler13GetDeoptLabelINS1_21CheckFloat64SameValueEEEPNS0_5LabelEPT_NS0_16DeoptimizeReasonE = comdat any

$_ZN2v88internal6maglev15MaglevAssembler23CompareFloat64AndJumpIfENS0_11XMMRegisterES3_NS0_9ConditionEPNS0_5LabelES6_NS5_8DistanceE = comdat any

$_ZN2v88internal6maglev15MaglevAssembler6JumpIfENS0_9ConditionEPNS0_5LabelENS4_8DistanceE = comdat any

$_ZN2v88internal6maglev15MaglevAssembler20EmitEagerDeoptStressEPNS0_5LabelE = comdat any

$_ZN2v88internal6maglev24SaveRegisterStateForCall28DefineSafepointWithLazyDeoptEPNS1_13LazyDeoptInfoE = comdat any

$_ZN2v88internal6maglev15MaglevAssembler13GetDeoptLabelINS1_21CheckJSDataViewBoundsEEEPNS0_5LabelEPT_NS0_16DeoptimizeReasonE = comdat any

$_ZN2v88internal6maglev15MaglevAssembler13GetDeoptLabelINS1_20CheckedIntPtrToInt32EEEPNS0_5LabelEPT_NS0_16DeoptimizeReasonE = comdat any

$_ZN2v88internal6maglev15MaglevAssembler13GetDeoptLabelINS1_20Int32AddWithOverflowEEEPNS0_5LabelEPT_NS0_16DeoptimizeReasonE = comdat any

$_ZN2v88internal6maglev15MaglevAssembler13GetDeoptLabelINS1_25Int32SubtractWithOverflowEEEPNS0_5LabelEPT_NS0_16DeoptimizeReasonE = comdat any

$_ZN2v88internal6maglev15MaglevAssembler13GetDeoptLabelINS1_25Int32MultiplyWithOverflowEEEPNS0_5LabelEPT_NS0_16DeoptimizeReasonE = comdat any

$_ZN2v88internal6maglev15MaglevAssembler13GetDeoptLabelINS1_24Int32ModulusWithOverflowEEEPNS0_5LabelEPT_NS0_16DeoptimizeReasonE = comdat any

$_ZN2v88internal6maglev15MaglevAssembler13GetDeoptLabelINS1_23Int32DivideWithOverflowEEEPNS0_5LabelEPT_NS0_16DeoptimizeReasonE = comdat any

$_ZN2v88internal6maglev15MaglevAssembler13GetDeoptLabelINS1_26Int32IncrementWithOverflowEEEPNS0_5LabelEPT_NS0_16DeoptimizeReasonE = comdat any

$_ZN2v88internal6maglev15MaglevAssembler13GetDeoptLabelINS1_26Int32DecrementWithOverflowEEEPNS0_5LabelEPT_NS0_16DeoptimizeReasonE = comdat any

$_ZN2v88internal6maglev15MaglevAssembler13GetDeoptLabelINS1_23Int32NegateWithOverflowEEEPNS0_5LabelEPT_NS0_16DeoptimizeReasonE = comdat any

$_ZN2v88internal6maglev15MaglevAssembler13GetDeoptLabelINS1_20Int32AbsWithOverflowEEEPNS0_5LabelEPT_NS0_16DeoptimizeReasonE = comdat any

@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"has_double_scratch_register_\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"has_scratch_register_\00", align 1
@_ZN2v88internal11CpuFeatures10supported_E = external local_unnamed_addr global i32, align 4
@_ZTVN2v88internal6maglev6detail20DeferredCodeInfoImplIRFvPNS1_15MaglevAssemblerENS1_12ZoneLabelRefEPNS1_4NodeENS1_12_GLOBAL__N_125ReduceInterruptBudgetTypeEEEE = internal unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal6maglev6detail20DeferredCodeInfoImplIRFvPNS1_15MaglevAssemblerENS1_12ZoneLabelRefEPNS1_4NodeENS1_12_GLOBAL__N_125ReduceInterruptBudgetTypeEEE8GenerateES5_] }, align 8
@.str.33 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"(data_) != nullptr\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"!available_.is_empty()\00", align 1
@"_ZTVN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_11Int32Divide12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateEE3$_0EE" = internal unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr null, ptr @"_ZN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_11Int32Divide12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateEE3$_0E8GenerateES6_"] }, align 8
@"_ZTVN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_24Int32ModulusWithOverflow12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateEE3$_0EE" = internal unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr null, ptr @"_ZN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_24Int32ModulusWithOverflow12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateEE3$_0E8GenerateES6_"] }, align 8
@"_ZTVN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_24Int32ModulusWithOverflow12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateEE3$_1EE" = internal unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr null, ptr @"_ZN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_24Int32ModulusWithOverflow12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateEE3$_1E8GenerateES6_"] }, align 8
@"_ZTVN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_23Int32DivideWithOverflow12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateEE3$_0EE" = internal unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr null, ptr @"_ZN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_23Int32DivideWithOverflow12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateEE3$_0E8GenerateES6_"] }, align 8
@.str.81 = private unnamed_addr constant [30 x i8] c"!available_double_.is_empty()\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal6maglev17InlinedAllocation27SetValueLocationConstraintsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  store i64 962072674297, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 0
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %. = select i1 %i.f, i64 1099511627769, i64 962072674297
  store i64 %., ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev17InlinedAllocation12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(20) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Operand", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 8
  %i.e = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %i.f = trunc i64 %i.e to i8                     ; 2 uses
  %i.g = icmp samesign ult i8 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %.sroa.0.0.copyload.i.i.i7 = load i64, ptr %i.i, align 8
  %i.j = lshr i64 %.sroa.0.0.copyload.i.i.i7, 32
  %i.k = trunc i64 %i.j to i8                     ; 6 uses
  %i.l = icmp samesign ult i8 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %3, align 8
  store i64 1, ptr %i.o, align 8
  switch i8 %i.k, label %bb.d [
    i8 4, label %bb.c
    i8 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %scevgep = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.p = and i8 %i.k, 7
  %i.q = or disjoint i8 %i.p, 32
  store i8 %i.q, ptr %scevgep, align 1
  %i.r = lshr i8 %i.k, 3
  store i64 2, ptr %i.o, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.s = phi i64 [ 1, %bb.b ], [ 2, %bb.c ]       ; 3 uses
  %i.t = phi i8 [ 0, %bb.b ], [ %i.r, %bb.c ]
  %4 = add i32 %i.b, 128
  %i.u = icmp ult i32 %4, 256
  %i.v = and i8 %i.k, 7                           ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = or disjoint i8 %i.v, 64
  store i8 %i.w, ptr %i.n, align 2
  %i.x = trunc nsw i32 %i.b to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  store i8 %i.x, ptr %i.y, align 1
  %i.z = add nuw nsw i64 %i.s, 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = or disjoint i8 %i.v, -128
  store i8 %i.aa, ptr %i.n, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  store i32 %i.b, ptr %i.ab, align 1
  %i.ac = load i64, ptr %i.o, align 8
  %i.ad = add i64 %i.ac, 4
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.e, %bb.f
  %storemerge = phi i64 [ %i.ad, %bb.f ], [ %i.z, %bb.e ]
  %.pn = lshr i8 %i.k, 3
  %.sink = or i8 %i.t, %.pn
  store i8 %.sink, ptr %i.m, align 1
  %i.ae = load i64, ptr %3, align 8
  %.cast = inttoptr i64 %storemerge to ptr
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %1, i8 %i.f, i64 %i.ae, ptr %.cast, i32 noundef 8) #13
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal6maglev15ArgumentsLength27SetValueLocationConstraintsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 962072674297, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev15ArgumentsLength12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(20) %2) local_unnamed_addr #1 align 2 {
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.b, align 8
  %i.c = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %i.d = trunc i64 %i.c to i8                     ; 2 uses
  %i.e = icmp samesign ult i8 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %1, i8 %i.d, i64 3896836096, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.0.0.copyload.i.i.i6 = load i64, ptr %i.g, align 8
  %i.h = lshr i64 %.sroa.0.0.copyload.i.i.i6, 32
  %i.i = trunc i64 %i.h to i8                     ; 2 uses
  %i.j = icmp samesign ult i8 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  tail call void @_ZN2v88internal9Assembler8emit_decENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %1, i8 %i.i, i32 noundef 4) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal6maglev10RestLength27SetValueLocationConstraintsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 962072674297, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev10RestLength12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(20) %2) local_unnamed_addr #1 align 2 {
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:
  %3 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.b, align 8
  %i.c = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %i.d = trunc i64 %i.c to i8                     ; 7 uses
  %i.e = icmp samesign ult i8 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i32 0, ptr %3, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.f, align 4
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %1, i8 %i.d, i64 3896836096, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add nsw i32 %i.h, 1
  %.sroa.0.0.insert.ext = zext i32 %i.i to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %1, i8 noundef zeroext 5, i8 %i.d, i64 %.sroa.0.0.insert.ext, i32 noundef 4) #13
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %1, i32 noundef 13, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 noundef zeroext 51, i8 %i.d, i8 %i.d, i32 noundef 4) #13
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %1, ptr noundef nonnull %3) #13
  call void @_ZN2v88internal14MacroAssembler6SmiTagENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.d, i8 %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6maglev15MaglevAssembler4MoveENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(456) %0, i8 %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 51, i8 %1, i8 %1, i32 noundef 4) #13
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.c:                                             ; preds = %bb.a
  %i.b = zext i32 %2 to i64
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 %i.b, i32 noundef 4) #13
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit: ; preds = %bb.b, %bb.c
  ret void
}

declare void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal6maglev20LoadTypedArrayLength27SetValueLocationConstraintsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(21) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  store i64 962072674297, ptr %i.c, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 962072674297, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev20LoadTypedArrayLength12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(21) %0, ptr noundef %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(20) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.c, align 8
  %i.d = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %i.e = trunc i64 %i.d to i8                     ; 5 uses
  %i.f = icmp samesign ult i8 %i.e, 16
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.0.0.copyload.i.i.i20 = load i64, ptr %i.g, align 8
  %i.h = lshr i64 %.sroa.0.0.copyload.i.i.i20, 32
  %i.i = trunc i64 %i.h to i8                     ; 3 uses
  %i.j = icmp samesign ult i8 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i64 0, ptr %3, align 8
  switch i8 %i.e, label %._ZN2v88internal6maglev15MaglevAssembler25LoadBoundedSizeFromObjectENS0_8RegisterES3_i.exit_crit_edge [
    i8 4, label %bb.b
    i8 12, label %bb.b
  ]

._ZN2v88internal6maglev15MaglevAssembler25LoadBoundedSizeFromObjectENS0_8RegisterES3_i.exit_crit_edge: ; preds = %bb.a
  %.pre = and i8 %i.e, 7
  br label %_ZN2v88internal6maglev15MaglevAssembler25LoadBoundedSizeFromObjectENS0_8RegisterES3_i.exit

bb.b:                                             ; preds = %bb.a, %bb.a
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.m = and i8 %i.e, 7                           ; 2 uses
  %i.n = or disjoint i8 %i.m, 32
  store i8 %i.n, ptr %scevgep.i.i, align 1
  br label %_ZN2v88internal6maglev15MaglevAssembler25LoadBoundedSizeFromObjectENS0_8RegisterES3_i.exit

_ZN2v88internal6maglev15MaglevAssembler25LoadBoundedSizeFromObjectENS0_8RegisterES3_i.exit: ; preds = %._ZN2v88internal6maglev15MaglevAssembler25LoadBoundedSizeFromObjectENS0_8RegisterES3_i.exit_crit_edge, %bb.b
  %.pre-phi = phi i8 [ %.pre, %._ZN2v88internal6maglev15MaglevAssembler25LoadBoundedSizeFromObjectENS0_8RegisterES3_i.exit_crit_edge ], [ %i.m, %bb.b ]
  %i.o = phi i64 [ 1, %._ZN2v88internal6maglev15MaglevAssembler25LoadBoundedSizeFromObjectENS0_8RegisterES3_i.exit_crit_edge ], [ 2, %bb.b ] ; 2 uses
  %i.p = lshr i8 %i.e, 3
  %i.q = or disjoint i8 %.pre-phi, 64
  store i8 %i.q, ptr %i.l, align 2
  store i8 %i.p, ptr %i.k, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  store i8 55, ptr %i.r, align 1
  %i.s = add nuw nsw i64 %i.o, 1
  %i.t = inttoptr i64 %i.s to ptr
  %.fca.0.load.i.i = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.i, i64 %.fca.0.load.i.i, ptr nonnull %i.t, i32 noundef 8) #13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.v = load i8, ptr %i.u, align 4
  switch i8 %i.v, label %bb.f [
    i8 18, label %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit
    i8 19, label %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit
    i8 26, label %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit
    i8 30, label %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit
    i8 31, label %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit
    i8 38, label %_ZN2v88internal23ElementsKindToShiftSizeENS0_12ElementsKindE.exit
end_hunk_0
