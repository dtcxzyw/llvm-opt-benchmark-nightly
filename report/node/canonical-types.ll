Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/canonical-types?download=true
inline.NumInlined: 939
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.v8::OOMDetails" = type { i8, ptr }
%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.307", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", [4 x i8], %"class.v8::internal::FlagValue.308", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.307", %"class.v8::internal::FlagValue.307", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.307", %"class.v8::internal::FlagValue.309", %"class.v8::internal::FlagValue.309", %"class.v8::internal::FlagValue.309", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.307", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.307", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.308", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.307", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.307", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.308", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", [4 x i8], %"class.v8::internal::FlagValue.308", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.307", %"class.v8::internal::FlagValue.307", %"class.v8::internal::FlagValue.307", %"class.v8::internal::FlagValue.307", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue.306", [4 x i8], %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.307", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.308", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.308", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.309", %"class.v8::internal::FlagValue.309", %"class.v8::internal::FlagValue.309", %"class.v8::internal::FlagValue.309", %"class.v8::internal::FlagValue.309", %"class.v8::internal::FlagValue.309", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.307", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.307", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.308", %"class.v8::internal::FlagValue.308", %"class.v8::internal::FlagValue.308", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.307", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.309", [2 x i8], %"class.v8::internal::FlagValue.306", [4 x i8], %"class.v8::internal::FlagValue.308", %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.307", %"class.v8::internal::FlagValue.307", [4 x i8], %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.310", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.306", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.305", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.309" = type { %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base" }
%"struct.std::_Optional_payload_base" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.308" = type { double }
%"class.v8::internal::FlagValue.307" = type { i32 }
%"class.v8::internal::FlagValue.310" = type { i64 }
%"class.v8::internal::FlagValue.306" = type { i32 }
%"class.v8::internal::FlagValue.305" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"struct.v8::internal::wasm::TypeCanonicalizer::CanonicalSingletonGroup" = type <{ %"struct.v8::internal::wasm::TypeCanonicalizer::CanonicalType", %"struct.v8::internal::wasm::CanonicalTypeIndex", [4 x i8] }>
%"struct.v8::internal::wasm::TypeCanonicalizer::CanonicalType" = type { %union.anon, %"struct.v8::internal::wasm::CanonicalTypeIndex", %"struct.v8::internal::wasm::CanonicalTypeIndex", %"struct.v8::internal::wasm::CanonicalTypeIndex", i8, i8, i8, i8 }
%union.anon = type { ptr }
%"struct.v8::internal::wasm::CanonicalTypeIndex" = type { %"struct.v8::internal::wasm::TypeIndex" }
%"struct.v8::internal::wasm::TypeIndex" = type { i32 }
%"class.v8::internal::ZoneSnapshot" = type { i64, i64, i64, i64, ptr }
%"struct.v8::internal::wasm::TypeCanonicalizer::CanonicalGroup" = type <{ %"class.v8::base::Vector", %"struct.v8::internal::wasm::CanonicalTypeIndex", [4 x i8] }>
%"class.v8::base::Vector" = type { ptr, i64 }
%"class.v8::internal::wasm::CanonicalSig::Builder" = type { %"class.v8::internal::SignatureBuilder" }
%"class.v8::internal::SignatureBuilder" = type { i64, i64, i64, i64, ptr, ptr }
%"class.v8::internal::wasm::StructTypeBase::BuilderImpl" = type { ptr, i32, i8, i8, i32, ptr, ptr, ptr }
%"struct.v8::internal::wasm::TypeCanonicalizer::CanonicalEquality" = type { %"struct.v8::internal::wasm::TypeCanonicalizer::RecursionGroupRange", %"struct.v8::internal::wasm::TypeCanonicalizer::RecursionGroupRange" }
%"struct.v8::internal::wasm::TypeCanonicalizer::RecursionGroupRange" = type { %"struct.v8::internal::wasm::CanonicalTypeIndex", %"struct.v8::internal::wasm::CanonicalTypeIndex" }
%"struct.v8::internal::wasm::TypeCanonicalizer::CanonicalHashing" = type { %"class.v8::base::Hasher", %"struct.v8::internal::wasm::TypeCanonicalizer::RecursionGroupRange" }
%"class.v8::base::Hasher" = type { i64 }

$_ZN2v88internal4wasm14StructTypeBase11BuilderImplINS1_19CanonicalStructTypeENS1_18CanonicalValueTypeEEC2EPNS0_4ZoneEjbb = comdat any

$_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_default_appendEm = comdat any

$_ZNSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer14CanonicalGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRS4_EEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNK2v88internal4wasm17TypeCanonicalizer17CanonicalEquality9EqualTypeERKNS2_13CanonicalTypeES6_ = comdat any

$_ZNK2v88internal4wasm17TypeCanonicalizer17CanonicalEquality8EqualSigERKNS1_12CanonicalSigES6_ = comdat any

$_ZNK2v88internal4wasm17TypeCanonicalizer17CanonicalEquality15EqualStructTypeERKNS1_19CanonicalStructTypeES6_ = comdat any

$_ZNK2v88internal4wasm17TypeCanonicalizer17CanonicalEquality14EqualArrayTypeERKNS1_18CanonicalArrayTypeES6_ = comdat any

$_ZNK2v88internal4wasm17TypeCanonicalizer17CanonicalEquality13EqualContTypeERKNS1_17CanonicalContTypeES6_ = comdat any

$_ZN2v88internal4wasm17TypeCanonicalizer16CanonicalHashing3AddENS2_13CanonicalTypeE = comdat any

$_ZN2v88internal4wasm17TypeCanonicalizer16CanonicalHashing3AddERKNS1_12CanonicalSigE = comdat any

$_ZN2v88internal4wasm17TypeCanonicalizer16CanonicalHashing3AddERKNS1_19CanonicalStructTypeE = comdat any

$_ZNSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer14CanonicalGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer23CanonicalSingletonGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRS4_EEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer23CanonicalSingletonGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNKSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer14CanonicalGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS4_ = comdat any

$_ZNKSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer23CanonicalSingletonGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS4_ = comdat any

@.str = private unnamed_addr constant [20 x i8] c"canonical type zone\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"too many canonicalized types\00", align 1
@_ZN2v88internal2V813kNoOOMDetailsE = external global %"struct.v8::OOMDetails", align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"type->kind == CanonicalType::kFunction\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"type->kind == CanonicalType::kStruct\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"type->kind == CanonicalType::kArray\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"GetWasmEngine()->NativeModuleCount() == 0\00", align 1
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str.7 = private unnamed_addr constant [24 x i8] c"TypeCanonicalizer: %zu\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"id.index <= kMaxInt / 2 - 1\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"kNumSegments > segment_idx\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"static_cast<unsigned>(capacity) <= kMaxCapacity\00", align 1

@_ZN2v88internal4wasm17TypeCanonicalizerC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2v88internal4wasm17TypeCanonicalizerC2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal4wasm20GetTypeCanonicalizerEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() #12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  ret ptr %i.b
}

declare noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm17TypeCanonicalizerC2Ev(ptr noundef nonnull align 8 dereferenceable(8056) initializes((0, 24)) %0) unnamed_addr #0 align 2 {
_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorC2Ev.exit:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7952 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7832) %i.l, i8 0, i64 7832, i1 false)
  tail call void @_ZN2v88internal19AccountingAllocatorC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.m) #12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7984
  tail call void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull %i.m, ptr noundef nonnull @.str) #12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8048
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #12
  tail call void @_ZN2v88internal4wasm17TypeCanonicalizer23AddPredefinedArrayTypesEv(ptr noundef nonnull align 8 dereferenceable(8056) %0)
  ret void
}

declare void @_ZN2v88internal19AccountingAllocatorC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm17TypeCanonicalizer23AddPredefinedArrayTypesEv(ptr noundef nonnull align 8 dereferenceable(8056) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.v8::internal::wasm::TypeCanonicalizer::CanonicalSingletonGroup", align 8 ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7984 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8008 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8000 ; 15 uses
  %i.e = load atomic ptr, ptr %i.a monotonic, align 8
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8
  %i.g = load i64, ptr %i.d, align 8              ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 8192
  br i1 %i.i, label %bb.c, label %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 8192) #12
  %.pre.i.i.i = load i64, ptr %i.d, align 8
  br label %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %.pre.i.i.i, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = add i64 %i.j, 8192
  store i64 %i.l, ptr %i.d, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.k, i8 0, i64 8192, i1 false)
  store atomic ptr %i.k, ptr %i.a monotonic, align 8
  br label %_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit, !llvm.loop !6

_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.u = load i64, ptr %i.c, align 8
  %i.v = load i64, ptr %i.d, align 8              ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, 8
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone3NewINS0_4wasm18CanonicalArrayTypeEJRNS3_18CanonicalValueTypeERKbEEEPT_DpOT0_.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 8) #12
  %.pre.i.i = load i64, ptr %i.d, align 8
  br label %_ZN2v88internal4Zone3NewINS0_4wasm18CanonicalArrayTypeEJRNS3_18CanonicalValueTypeERKbEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_4wasm18CanonicalArrayTypeEJRNS3_18CanonicalValueTypeERKbEEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 3 uses
  %i.aa = add i64 %i.y, 8
  store i64 %i.aa, ptr %i.d, align 8
  store i8 1, ptr %i.z, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 6928, ptr %i.ab, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store ptr %i.z, ptr %1, align 8
  store i32 -1, ptr %i.m, align 8
  store i32 -1, ptr %i.n, align 4
  store i32 -1, ptr %i.o, align 8
  store <4 x i8> <i8 2, i8 1, i8 0, i8 0>, ptr %i.p, align 4
  store i32 0, ptr %i.q, align 8
  %i.ac = call { ptr, i8 } @_ZNSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer23CanonicalSingletonGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRS4_EEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(28) %1)
  %.fca.0.extract = extractvalue { ptr, i8 } %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 8
  %i.ae = load atomic ptr, ptr %i.a monotonic, align 8
  store atomic ptr %i.ad, ptr %i.ae monotonic, align 8
  %i.af = load ptr, ptr %i.s, align 8             ; 3 uses
  %i.ag = load ptr, ptr %i.t, align 8
  %.not.i12 = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_4wasm18CanonicalArrayTypeEJRNS3_18CanonicalValueTypeERKbEEEPT_DpOT0_.exit
  store i32 -1, ptr %i.af, align 4
  %i.ah = load ptr, ptr %i.s, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store ptr %i.ai, ptr %i.s, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.f:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_4wasm18CanonicalArrayTypeEJRNS3_18CanonicalValueTypeERKbEEEPT_DpOT0_.exit
  %i.aj = load ptr, ptr %0, align 8               ; 4 uses
  %i.ak = ptrtoint ptr %i.af to i64
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 5 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775804
  br i1 %i.an, label %bb.g, label %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.v, %bb.q, %bb.l, %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #13
  unreachable

_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ao = ashr exact i64 %i.am, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 2305843009213693951)
  %i.as = select i1 %i.aq, i64 2305843009213693951, i64 %i.ar ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 2
  %i.au = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #14 ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.am ; 2 uses
  store i32 -1, ptr %i.av, align 4
  %i.aw = icmp sgt i64 %i.am, 0
  br i1 %i.aw, label %bb.h, label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.au, ptr align 4 %i.aj, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %.not.i17.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.ay = load ptr, ptr %i.t, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ba) #15
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.au, ptr %0, align 8
  store ptr %i.ax, ptr %i.s, align 8
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.as
  store ptr %i.bb, ptr %i.t, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.bc = load i64, ptr %i.c, align 8
  %i.bd = load i64, ptr %i.d, align 8             ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp ult i64 %i.be, 8
  br i1 %i.bf, label %bb.j, label %_ZN2v88internal4Zone3NewINS0_4wasm18CanonicalArrayTypeEJRNS3_18CanonicalValueTypeERKbEEEPT_DpOT0_.exit.1, !prof !5

bb.j:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 8) #12
  %.pre.i.i.1 = load i64, ptr %i.d, align 8
  br label %_ZN2v88internal4Zone3NewINS0_4wasm18CanonicalArrayTypeEJRNS3_18CanonicalValueTypeERKbEEEPT_DpOT0_.exit.1

_ZN2v88internal4Zone3NewINS0_4wasm18CanonicalArrayTypeEJRNS3_18CanonicalValueTypeERKbEEEPT_DpOT0_.exit.1: ; preds = %bb.j, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.bg = phi i64 [ %.pre.i.i.1, %bb.j ], [ %i.bd, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit ] ; 2 uses
  %i.bh = inttoptr i64 %i.bg to ptr               ; 3 uses
  %i.bi = add i64 %i.bg, 8
  store i64 %i.bi, ptr %i.d, align 8
  store i8 1, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 7184, ptr %i.bj, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store ptr %i.bh, ptr %1, align 8
  store i32 -1, ptr %i.m, align 8
  store i32 -1, ptr %i.n, align 4
  store i32 -1, ptr %i.o, align 8
  store <4 x i8> <i8 2, i8 1, i8 0, i8 0>, ptr %i.p, align 4
  store i32 1, ptr %i.q, align 8
  %i.bk = call { ptr, i8 } @_ZNSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer23CanonicalSingletonGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRS4_EEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(28) %1)
  %.fca.0.extract.1 = extractvalue { ptr, i8 } %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %.fca.0.extract.1, i64 8
  %i.bm = load atomic ptr, ptr %i.a monotonic, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store atomic ptr %i.bl, ptr %i.bn monotonic, align 8
  %i.bo = load ptr, ptr %i.s, align 8             ; 3 uses
  %i.bp = load ptr, ptr %i.t, align 8
  %.not.i12.1 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i12.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_4wasm18CanonicalArrayTypeEJRNS3_18CanonicalValueTypeERKbEEEPT_DpOT0_.exit.1
  store i32 -1, ptr %i.bo, align 4
  %i.bq = load ptr, ptr %i.s, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store ptr %i.br, ptr %i.s, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.1

bb.l:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_4wasm18CanonicalArrayTypeEJRNS3_18CanonicalValueTypeERKbEEEPT_DpOT0_.exit.1
  %i.bs = load ptr, ptr %0, align 8               ; 4 uses
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 5 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775804
  br i1 %i.bw, label %bb.g, label %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i.1

_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %bb.l
  %i.bx = ashr exact i64 %i.bv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.1 = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i.1, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = call i64 @llvm.umin.i64(i64 %i.by, i64 2305843009213693951)
  %i.cb = select i1 %i.bz, i64 2305843009213693951, i64 %i.ca ; 3 uses
  %.not.i.i.i.1 = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %.not.i.i.i.1)
  %i.cc = shl nuw nsw i64 %i.cb, 2
  %i.cd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #14 ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.bv ; 2 uses
  store i32 -1, ptr %i.ce, align 4
  %i.cf = icmp sgt i64 %i.bv, 0
  br i1 %i.cf, label %bb.m, label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.1

bb.m:                                             ; preds = %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i.1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cd, ptr align 4 %i.bs, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.1

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.1: ; preds = %bb.m, %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i.1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %.not.i17.i.i.1 = icmp eq ptr %i.bs, null
  br i1 %.not.i17.i.i.1, label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.1, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.1
  %i.ch = load ptr, ptr %i.t, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.ci, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cj) #15
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.1

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.1: ; preds = %bb.n, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.1
  store ptr %i.cd, ptr %0, align 8
  store ptr %i.cg, ptr %i.s, align 8
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.ck, ptr %i.t, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.1

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.1: ; preds = %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.1, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.cl = load i64, ptr %i.c, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm17TypeCanonicalizer23AddPredefinedArrayTypesEv:bb.a
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dk
  store ptr %i.dt, ptr %i.t, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.2

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.2: ; preds = %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.2, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.du = load i64, ptr %i.c, align 8
  %i.dv = load i64, ptr %i.d, align 8             ; 2 uses
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = icmp ult i64 %i.dw, 8
  br i1 %i.dx, label %bb.t, label %_ZN2v88internal4Zone3NewINS0_4wasm18CanonicalArrayTypeEJRNS3_18CanonicalValueTypeERKbEEEPT_DpOT0_.exit.3, !prof !5

bb.t:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.2
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 8) #12
  %.pre.i.i.3 = load i64, ptr %i.d, align 8
  br label %_ZN2v88internal4Zone3NewINS0_4wasm18CanonicalArrayTypeEJRNS3_18CanonicalValueTypeERKbEEEPT_DpOT0_.exit.3

_ZN2v88internal4Zone3NewINS0_4wasm18CanonicalArrayTypeEJRNS3_18CanonicalValueTypeERKbEEEPT_DpOT0_.exit.3: ; preds = %bb.t, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.2
  %i.dy = phi i64 [ %.pre.i.i.3, %bb.t ], [ %i.dv, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.2 ] ; 2 uses
  %i.dz = inttoptr i64 %i.dy to ptr               ; 3 uses
  %i.ea = add i64 %i.dy, 8
  store i64 %i.ea, ptr %i.d, align 8
  store i8 1, ptr %i.dz, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 2341, ptr %i.eb, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store ptr %i.dz, ptr %1, align 8
  store i32 -1, ptr %i.m, align 8
  store i32 -1, ptr %i.n, align 4
  store i32 -1, ptr %i.o, align 8
  store <4 x i8> <i8 2, i8 1, i8 0, i8 0>, ptr %i.p, align 4
  store i32 3, ptr %i.q, align 8
  %i.ec = call { ptr, i8 } @_ZNSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer23CanonicalSingletonGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRS4_EEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(28) %1)
  %.fca.0.extract.3 = extractvalue { ptr, i8 } %i.ec, 0
  %i.ed = getelementptr inbounds nuw i8, ptr %.fca.0.extract.3, i64 8
  %i.ee = load atomic ptr, ptr %i.a monotonic, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store atomic ptr %i.ed, ptr %i.ef monotonic, align 8
  %i.eg = load ptr, ptr %i.s, align 8             ; 3 uses
  %i.eh = load ptr, ptr %i.t, align 8
  %.not.i12.3 = icmp eq ptr %i.eg, %i.eh
  br i1 %.not.i12.3, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_4wasm18CanonicalArrayTypeEJRNS3_18CanonicalValueTypeERKbEEEPT_DpOT0_.exit.3
  store i32 -1, ptr %i.eg, align 4
  %i.ei = load ptr, ptr %i.s, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store ptr %i.ej, ptr %i.s, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.3

bb.v:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_4wasm18CanonicalArrayTypeEJRNS3_18CanonicalValueTypeERKbEEEPT_DpOT0_.exit.3
  %i.ek = load ptr, ptr %0, align 8               ; 4 uses
  %i.el = ptrtoint ptr %i.eg to i64
  %i.em = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.en = sub i64 %i.el, %i.em                    ; 5 uses
  %i.eo = icmp eq i64 %i.en, 9223372036854775804
  br i1 %i.eo, label %bb.g, label %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i.3

_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i.3: ; preds = %bb.v
  %i.ep = ashr exact i64 %i.en, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.3 = call i64 @llvm.umax.i64(i64 %i.ep, i64 1)
  %i.eq = add nsw i64 %.sroa.speculated.i.i.i.3, %i.ep ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ep
  %i.es = call i64 @llvm.umin.i64(i64 %i.eq, i64 2305843009213693951)
  %i.et = select i1 %i.er, i64 2305843009213693951, i64 %i.es ; 3 uses
  %.not.i.i.i.3 = icmp ne i64 %i.et, 0
  call void @llvm.assume(i1 %.not.i.i.i.3)
  %i.eu = shl nuw nsw i64 %i.et, 2
  %i.ev = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #14 ; 4 uses
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 %i.en ; 2 uses
  store i32 -1, ptr %i.ew, align 4
  %i.ex = icmp sgt i64 %i.en, 0
  br i1 %i.ex, label %bb.w, label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.3

bb.w:                                             ; preds = %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i.3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ev, ptr align 4 %i.ek, i64 %i.en, i1 false)
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.3

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.3: ; preds = %bb.w, %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i.3
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %.not.i17.i.i.3 = icmp eq ptr %i.ek, null
  br i1 %.not.i17.i.i.3, label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.3, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.3
  %i.ez = load ptr, ptr %i.t, align 8
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = sub i64 %i.fa, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.fb) #15
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.3

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.3: ; preds = %bb.x, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.3
  store ptr %i.ev, ptr %0, align 8
  store ptr %i.ey, ptr %i.s, align 8
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.et
  store ptr %i.fc, ptr %i.t, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.3

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.3: ; preds = %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.3, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm17TypeCanonicalizer17AddRecursiveGroupEPNS1_10WasmModuleEj(ptr noundef nonnull align 8 dereferenceable(8056) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::ZoneSnapshot", align 8 ; 4 uses
  %4 = alloca %"struct.v8::internal::wasm::TypeCanonicalizer::CanonicalGroup", align 8 ; 8 uses
  %5 = alloca %"struct.v8::internal::wasm::TypeCanonicalizer::CanonicalType", align 8 ; 4 uses
  switch i32 %2, label %bb.c [
    i32 0, label %bb.q
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal4wasm17TypeCanonicalizer26AddRecursiveSingletonGroupEPNS1_10WasmModuleE(ptr noundef nonnull align 8 dereferenceable(8056) %0, ptr noundef %1)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = zext i32 %2 to i64                       ; 7 uses
  %i.j = trunc i64 %i.h to i32
  %i.k = sub i32 %i.j, %2                         ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8048 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %0, align 8
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2                   ; 2 uses
  %i.t = sub nsw i64 1000000, %i.i
  %i.u = icmp ugt i64 %i.s, %i.t
  br i1 %i.u, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal2V823FatalProcessOutOfMemoryEPNS0_7IsolateEPKcRKNS_10OOMDetailsE(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(16) @_ZN2v88internal2V813kNoOOMDetailsE) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = trunc i64 %i.s to i32                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 7984 ; 4 uses
  call void @_ZNK2v88internal4Zone8SnapshotEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::ZoneSnapshot") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %i.w) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.x = mul nuw nsw i64 %i.i, 24                 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8008 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8000 ; 6 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = sub i64 %i.z, %i.ab
  %i.ad = icmp ugt i64 %i.x, %i.ac
  br i1 %i.ad, label %bb.f, label %.lr.ph.preheader, !prof !5

bb.f:                                             ; preds = %bb.e
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 noundef %i.x) #12
  %.pre.i.i.i.i = load i64, ptr %i.aa, align 8
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f, %bb.e
  %i.ae = phi i64 [ %.pre.i.i.i.i, %bb.f ], [ %i.ab, %bb.e ] ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = add i64 %i.ae, %i.x
  store i64 %i.ag, ptr %i.aa, align 8
  store ptr %i.af, ptr %4, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.i, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.v, ptr %i.ai, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = call ptr @_ZNKSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer14CanonicalGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(20) %4) ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.critedge, label %_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_14CanonicalGroupE.exit

_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_14CanonicalGroupE.exit: ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.am, align 8 ; 6 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload.i, -1
  br i1 %.not, label %.critedge, label %.lr.ph57

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.an = trunc nuw i64 %indvars.iv to i32
  call void @_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEj(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::wasm::TypeCanonicalizer::CanonicalType") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8056) %0, ptr noundef nonnull %1, i32 %i.k, i32 %i.v, i32 noundef %i.an)
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

.lr.ph57:                                         ; preds = %_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_14CanonicalGroupE.exit
  call void @_ZNK2v88internal12ZoneSnapshot7RestoreEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.w) #12
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 5 uses
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.aq = add i32 %2, -1
  %i.ar = icmp ult i32 %i.aq, 3
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph57.new

.lr.ph57.new:                                     ; preds = %.lr.ph57
  %unroll_iter = and i64 %i.i, 4294967292
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph57.new
  %indvars.iv65 = phi i64 [ 0, %.lr.ph57.new ], [ %indvars.iv.next66.3, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph57.new ], [ %niter.next.3, %bb.g ]
  %i.as = trunc nuw i64 %indvars.iv65 to i32      ; 2 uses
  %i.at = add i32 %.sroa.0.0.copyload.i, %i.as
  %i.au = add i32 %i.k, %i.as
  %i.av = zext i32 %i.au to i64
  %i.aw = load ptr, ptr %i.ap, align 8
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.av
  store i32 %i.at, ptr %i.ax, align 4
  %i.ay = trunc i64 %indvars.iv65 to i32
  %i.az = or disjoint i32 %i.ay, 1                ; 2 uses
  %i.ba = add i32 %.sroa.0.0.copyload.i, %i.az
  %i.bb = add i32 %i.k, %i.az
  %i.bc = zext i32 %i.bb to i64
  %i.bd = load ptr, ptr %i.ap, align 8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ba, ptr %i.be, align 4
  %i.bf = trunc i64 %indvars.iv65 to i32
  %i.bg = or disjoint i32 %i.bf, 2                ; 2 uses
  %i.bh = add i32 %.sroa.0.0.copyload.i, %i.bg
  %i.bi = add i32 %i.k, %i.bg
  %i.bj = zext i32 %i.bi to i64
  %i.bk = load ptr, ptr %i.ap, align 8
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bj
  store i32 %i.bh, ptr %i.bl, align 4
  %i.bm = trunc i64 %indvars.iv65 to i32
  %i.bn = or disjoint i32 %i.bm, 3                ; 2 uses
  %i.bo = add i32 %.sroa.0.0.copyload.i, %i.bn
  %i.bp = add i32 %i.k, %i.bn
  %i.bq = zext i32 %i.bp to i64
  %i.br = load ptr, ptr %i.ap, align 8
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bq
  store i32 %i.bo, ptr %i.bs, align 4
  %indvars.iv.next66.3 = add nuw nsw i64 %indvars.iv65, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !9

.critedge:                                        ; preds = %._crit_edge, %_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_14CanonicalGroupE.exit
  %i.bt = add i32 %2, %i.v                        ; 2 uses
  %i.bu = zext i32 %i.bt to i64                   ; 4 uses
  %i.bv = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.bw = load ptr, ptr %0, align 8               ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2                 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, %i.bu
  br i1 %i.cb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.cc = sub nuw nsw i64 %i.bu, %i.ca
  call void @_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.cc)
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE6resizeEm.exit

bb.i:                                             ; preds = %.critedge
  %i.cd = icmp ugt i64 %i.ca, %i.bu
  br i1 %i.cd, label %bb.j, label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, %i.ce
  br i1 %.not.i.i, label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE6resizeEm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.ce, ptr %i.m, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE6resizeEm.exit

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE6resizeEm.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cg = lshr i32 %i.bt, 10
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE6resizeEm.exit
  %.0.i = phi i32 [ %i.cg, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE6resizeEm.exit ], [ %i.cr, %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i ] ; 3 uses
  %i.ch = zext i32 %.0.i to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ch ; 2 uses
  %i.cj = load atomic ptr, ptr %i.ci monotonic, align 8
  %.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i, label %bb.m, label %.lr.ph59

bb.m:                                             ; preds = %bb.l
  %i.ck = load i64, ptr %i.y, align 8
  %i.cl = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = icmp ult i64 %i.cm, 8192
  br i1 %i.cn, label %bb.n, label %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i, !prof !5

bb.n:                                             ; preds = %bb.m
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 noundef 8192) #12
  %.pre.i.i.i = load i64, ptr %i.aa, align 8
  br label %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i: ; preds = %bb.n, %bb.m
  %i.co = phi i64 [ %.pre.i.i.i, %bb.n ], [ %i.cl, %bb.m ] ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 2 uses
  %i.cq = add i64 %i.co, 8192
  store i64 %i.cq, ptr %i.aa, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.cp, i8 0, i64 8192, i1 false)
  store atomic ptr %i.cp, ptr %i.ci monotonic, align 8
  %i.cr = add nsw i32 %.0.i, -1
  %i.cs = icmp eq i32 %.0.i, 0
  br i1 %i.cs, label %.lr.ph59, label %bb.l, !llvm.loop !6

.lr.ph59:                                         ; preds = %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i, %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 176
  br label %bb.o

._crit_edge60:                                    ; preds = %bb.o
  %i.cu = call { ptr, i8 } @_ZNSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer14CanonicalGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRS4_EEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(20) %4) ; 0 uses
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.o:                                             ; preds = %.lr.ph59, %bb.o
  %indvars.iv70 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next71, %bb.o ] ; 3 uses
  %i.cv = load ptr, ptr %4, align 8
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %indvars.iv70 ; 2 uses
  %i.cx = trunc nuw i64 %indvars.iv70 to i32      ; 2 uses
  %i.cy = add i32 %i.cx, %i.v                     ; 4 uses
  %i.cz = lshr i32 %i.cy, 10
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.da
  %i.dc = load atomic ptr, ptr %i.db monotonic, align 8
  %i.dd = and i32 %i.cy, 1023
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.de
  store atomic ptr %i.cw, ptr %i.df monotonic, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.dh = zext i32 %i.cy to i64
  %i.di = load ptr, ptr %0, align 8
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dh
  %i.dk = load i32, ptr %i.dg, align 8
  store i32 %i.dk, ptr %i.dj, align 4
  %i.dl = add i32 %i.k, %i.cx
  %i.dm = zext i32 %i.dl to i64
  %i.dn = load ptr, ptr %i.ct, align 8
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dm
  store i32 %i.cy, ptr %i.do, align 4
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %i.i
  br i1 %exitcond74.not, label %._crit_edge60, label %bb.o, !llvm.loop !10

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.loopexit.unr-lcssa, %.lr.ph57
  %indvars.iv65.epil.init = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next66.3, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod81 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod81)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %indvars.iv65.epil = phi i64 [ %indvars.iv65.epil.init, %.epil.preheader ], [ %indvars.iv.next66.epil, %bb.p ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.dp = trunc nuw i64 %indvars.iv65.epil to i32 ; 2 uses
  %i.dq = add i32 %.sroa.0.0.copyload.i, %i.dp
  %i.dr = add i32 %i.k, %i.dp
  %i.ds = zext i32 %i.dr to i64
  %i.dt = load ptr, ptr %i.ap, align 8
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.ds
  store i32 %i.dq, ptr %i.du, align 4
  %indvars.iv.next66.epil = add nuw nsw i64 %indvars.iv65.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.p, !llvm.loop !11

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.loopexit.unr-lcssa, %bb.p, %._crit_edge60
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm17TypeCanonicalizer26AddRecursiveSingletonGroupEPNS1_10WasmModuleE(ptr noundef nonnull align 8 dereferenceable(8056) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::ZoneSnapshot", align 8 ; 4 uses
  %3 = alloca %"struct.v8::internal::wasm::TypeCanonicalizer::CanonicalType", align 8 ; 5 uses
  %4 = alloca %"struct.v8::internal::wasm::TypeCanonicalizer::CanonicalSingletonGroup", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.i, -1                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8048 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %0, align 8
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 4000000
  br i1 %i.r, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal2V823FatalProcessOutOfMemoryEPNS0_7IsolateEPKcRKNS_10OOMDetailsE(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(16) @_ZN2v88internal2V813kNoOOMDetailsE) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = lshr i64 %i.q, 2                         ; 3 uses
  %i.t = trunc i64 %i.s to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 7984 ; 3 uses
  call void @_ZNK2v88internal4Zone8SnapshotEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::ZoneSnapshot") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %i.u) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEj(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::wasm::TypeCanonicalizer::CanonicalType") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8056) %0, ptr noundef nonnull %1, i32 %i.j, i32 %i.t, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.t, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.x = call ptr @_ZNKSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer23CanonicalSingletonGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(28) %4) ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.critedge, label %_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_23CanonicalSingletonGroupE.exit

_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_23CanonicalSingletonGroupE.exit: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.z, align 8 ; 2 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload.i, -1
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_23CanonicalSingletonGroupE.exit
  call void @_ZNK2v88internal12ZoneSnapshot7RestoreEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.u) #12
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

.critedge:                                        ; preds = %bb.c, %_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_23CanonicalSingletonGroupE.exit
  %i.aa = call { ptr, i8 } @_ZNSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer23CanonicalSingletonGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRS4_EEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(28) %4)
  %.fca.0.extract = extractvalue { ptr, i8 } %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.af = load i32, ptr %i.ab, align 8
  store i32 %i.af, ptr %i.ac, align 4
  %i.ag = load ptr, ptr %i.l, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store ptr %i.ah, ptr %i.l, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE9push_backERKS3_.exit

bb.f:                                             ; preds = %.critedge
  %i.ai = load ptr, ptr %0, align 8               ; 4 uses
  %i.aj = ptrtoint ptr %i.ac to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 5 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775804
  br i1 %i.am, label %bb.g, label %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #13
  unreachable

_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.an = ashr exact i64 %i.al, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ao, i64 2305843009213693951)
  %i.ar = select i1 %i.ap, i64 2305843009213693951, i64 %i.aq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ar, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #14 ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.al ; 2 uses
  %i.av = load i32, ptr %i.ab, align 8
  store i32 %i.av, ptr %i.au, align 4
  %i.aw = icmp sgt i64 %i.al, 0
  br i1 %i.aw, label %bb.h, label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.ai, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.ay = load ptr, ptr %i.ad, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.ba) #15
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.at, ptr %0, align 8
  store ptr %i.ax, ptr %i.l, align 8
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  store ptr %i.bb, ptr %i.ad, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.e, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bd = add nuw nsw i64 %i.s, 1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8008
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8000 ; 3 uses
  %i.bg = lshr i64 %i.bd, 10
  %i.bh = and i64 %i.bg, 4194303
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE9push_backERKS3_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i ], [ %i.bh, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv ; 2 uses
  %i.bj = load atomic ptr, ptr %i.bi monotonic, align 8
  %.not.i16 = icmp eq ptr %i.bj, null
  br i1 %.not.i16, label %bb.k, label %_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = load i64, ptr %i.be, align 8
  %i.bl = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = icmp ult i64 %i.bm, 8192
  br i1 %i.bn, label %bb.l, label %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i, !prof !5

bb.l:                                             ; preds = %bb.k
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 noundef 8192) #12
  %.pre.i.i.i = load i64, ptr %i.bf, align 8
  br label %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i: ; preds = %bb.l, %bb.k
  %i.bo = phi i64 [ %.pre.i.i.i, %bb.l ], [ %i.bl, %bb.k ] ; 2 uses
  %i.bp = inttoptr i64 %i.bo to ptr               ; 2 uses
  %i.bq = add i64 %i.bo, 8192
  store i64 %i.bq, ptr %i.bf, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.bp, i8 0, i64 8192, i1 false)
  store atomic ptr %i.bp, ptr %i.bi monotonic, align 8
  %i.br = icmp eq i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %i.br, label %_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit, label %bb.j, !llvm.loop !6

_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit: ; preds = %bb.j, %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 8
  %i.bt = lshr i64 %i.q, 12
  %i.bu = and i64 %i.bt, 4194303
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bu
  %i.bw = load atomic ptr, ptr %i.bv monotonic, align 8
  %i.bx = and i64 %i.s, 1023
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bx
  store atomic ptr %i.bs, ptr %i.by monotonic, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.d, %_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit
  %.sroa.0.0.copyload.i.sink = phi i32 [ %.sroa.0.0.copyload.i, %bb.d ], [ %i.t, %_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ca = zext i32 %i.j to i64
  %i.cb = load ptr, ptr %i.bz, align 8
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ca
  store i32 %.sroa.0.0.copyload.i.sink, ptr %i.cc, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: noreturn
declare void @_ZN2v88internal2V823FatalProcessOutOfMemoryEPNS0_7IsolateEPKcRKNS_10OOMDetailsE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZNK2v88internal4Zone8SnapshotEv(ptr dead_on_unwind writable sret(%"class.v8::internal::ZoneSnapshot") align 8, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.v8::internal::wasm::TypeCanonicalizer::CanonicalType") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8056) %1, ptr nofree noundef readonly captures(none) %2, i32 %3, i32 %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::wasm::CanonicalSig::Builder", align 8 ; 9 uses
  %7 = alloca %"class.v8::internal::wasm::StructTypeBase::BuilderImpl", align 8 ; 14 uses
  %i.a = add i32 %5, %3
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = zext i32 %i.a to i64                     ; 2 uses
  %i.k = icmp ugt i64 %i.i, %i.j
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.j ; 7 uses
  %.sroa.055.0.copyload = load ptr, ptr %i.l, align 8 ; 18 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 21
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 1 ; 4 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 22
  %.sroa.16.0.copyload = load i8, ptr %.sroa.16.0..sroa_idx, align 2 ; 4 uses
  %.not.i = icmp eq i32 %.sroa.8.0.copyload, -1
  br i1 %.not.i, label %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_0clES6_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ult i32 %.sroa.8.0.copyload, %3
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  %i.v = zext i32 %.sroa.8.0.copyload to i64      ; 2 uses
  %i.w = icmp ugt i64 %i.u, %i.v
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.v
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.x, align 4
  br label %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_0clES6_.exit"

bb.d:                                             ; preds = %bb.b
  %i.y = sub nuw i32 %.sroa.8.0.copyload, %3
  %i.z = add i32 %i.y, %4                         ; 2 uses
  %i.aa = icmp ugt i32 %i.z, 999999
  br i1 %i.aa, label %bb.e, label %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_0clES6_.exit", !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal2V823FatalProcessOutOfMemoryEPNS0_7IsolateEPKcRKNS_10OOMDetailsE(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(16) @_ZN2v88internal2V813kNoOOMDetailsE) #13
  unreachable

"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_0clES6_.exit": ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.05.0.i = phi i32 [ %.sroa.02.0.copyload.i.i, %bb.c ], [ %i.z, %bb.d ], [ -1, %bb.a ] ; 4 uses
  switch i8 %.sroa.11.0.copyload, label %bb.ax [
    i8 1, label %bb.f
    i8 2, label %bb.r
    i8 3, label %bb.al
    i8 4, label %bb.ar
  ]

bb.f:                                             ; preds = %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_0clES6_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.ab = load i64, ptr %.sroa.055.0.copyload, align 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.055.0.copyload, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 3 uses
  store i64 %i.ab, ptr %6, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ag = add i64 %i.ad, %i.ab
  %i.ah = shl i64 %i.ag, 2
  %i.ai = add i64 %i.ah, 44
  %i.aj = and i64 %i.ai, -8                       ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8008
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8000 ; 3 uses
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = sub i64 %i.al, %i.an
  %i.ap = icmp ugt i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.g, label %_ZN2v88internal4wasm12CanonicalSig7BuilderC2EPNS0_4ZoneEmm.exit, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 7984
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i64 noundef %i.aj) #12
  %.pre.i.i.i = load i64, ptr %i.am, align 8
  br label %_ZN2v88internal4wasm12CanonicalSig7BuilderC2EPNS0_4ZoneEmm.exit

_ZN2v88internal4wasm12CanonicalSig7BuilderC2EPNS0_4ZoneEmm.exit: ; preds = %bb.f, %bb.g
  %i.ar = phi i64 [ %.pre.i.i.i, %bb.g ], [ %i.an, %bb.f ] ; 2 uses
  %i.as = inttoptr i64 %i.ar to ptr               ; 5 uses
  %i.at = add i64 %i.ar, %i.aj
  store i64 %i.at, ptr %i.am, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.au, ptr %i.av, align 8
  store i64 %i.ab, ptr %i.as, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.ad, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.au, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.as, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.055.0.copyload, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bb = load i64, ptr %.sroa.055.0.copyload, align 8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bb, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx
  %invariant.op150 = sub i32 %4, %3               ; 2 uses
  %.not152 = icmp eq i64 %i.bb, 0
  br i1 %.not152, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %_ZN2v88internal4wasm12CanonicalSig7BuilderC2EPNS0_4ZoneEmm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 184
  br label %bb.h

._crit_edge155.loopexit:                          ; preds = %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_1clENS1_9ValueTypeE.exit"
  %.pre = load ptr, ptr %i.az, align 8
  %.pre168 = load i64, ptr %.sroa.055.0.copyload, align 8
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %._crit_edge155.loopexit, %_ZN2v88internal4wasm12CanonicalSig7BuilderC2EPNS0_4ZoneEmm.exit
  %i.bf = phi i64 [ %.pre168, %._crit_edge155.loopexit ], [ 0, %_ZN2v88internal4wasm12CanonicalSig7BuilderC2EPNS0_4ZoneEmm.exit ]
  %i.bg = phi ptr [ %.pre, %._crit_edge155.loopexit ], [ %i.ba, %_ZN2v88internal4wasm12CanonicalSig7BuilderC2EPNS0_4ZoneEmm.exit ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bf ; 2 uses
  %i.bi = load i64, ptr %i.ac, align 8            ; 2 uses
  %.idx164 = shl nuw nsw i64 %i.bi, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx164
  %.not76158 = icmp eq i64 %i.bi, 0
  br i1 %.not76158, label %._crit_edge162, label %.lr.ph161

.lr.ph161:                                        ; preds = %._crit_edge155
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bn = getelementptr [4 x i8], ptr %i.au, i64 %i.ab
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph154, %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_1clENS1_9ValueTypeE.exit"
  %i.bo = phi i64 [ 0, %.lr.ph154 ], [ %i.ch, %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_1clENS1_9ValueTypeE.exit" ] ; 2 uses
  %.0153 = phi ptr [ %i.ba, %.lr.ph154 ], [ %i.cj, %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_1clENS1_9ValueTypeE.exit" ] ; 2 uses
  %.sroa.038.0.copyload = load i32, ptr %.0153, align 4 ; 4 uses
  %i.bp = and i32 %.sroa.038.0.copyload, 3
  %i.bq = icmp eq i32 %i.bp, 3
  br i1 %i.bq, label %bb.i, label %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_1clENS1_9ValueTypeE.exit"

bb.i:                                             ; preds = %bb.h
  %i.br = lshr i32 %.sroa.038.0.copyload, 8
  %i.bs = and i32 %i.br, 1048575                  ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm17TypeCanonicalizer17AddRecursiveGroupEPKNS0_9SignatureINS1_9ValueTypeEEE:bb.a
._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v88internal4wasm12CanonicalSig7BuilderC2EPNS0_4ZoneEmm.exit
  %i.bf = phi i64 [ %.pre75, %._crit_edge.loopexit ], [ 0, %_ZN2v88internal4wasm12CanonicalSig7BuilderC2EPNS0_4ZoneEmm.exit ]
  %i.bg = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ao, %_ZN2v88internal4wasm12CanonicalSig7BuilderC2EPNS0_4ZoneEmm.exit ]
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %i.bf ; 7 uses
  %i.bi = load i64, ptr %i.r, align 8             ; 3 uses
  %.idx74 = shl i64 %i.bi, 2                      ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bh, i64 %.idx74 ; 3 uses
  %.not3369 = icmp eq i64 %i.bi, 0
  br i1 %.not3369, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.bl = getelementptr [4 x i8], ptr %i.ai, i64 %i.q ; 4 uses
  %i.bm = add i64 %.idx74, -4                     ; 2 uses
  %i.bn = lshr exact i64 %i.bm, 2
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check106 = icmp ult i64 %i.bm, 108
  br i1 %min.iters.check106, label %scalar.ph105.preheader, label %vector.memcheck91

vector.memcheck91:                                ; preds = %.lr.ph72
  %scevgep92 = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.idx74122 = add i64 %i.bi, %i.q
  %i.bp = shl i64 %.idx74122, 2
  %i.bq = getelementptr i8, ptr %i.ag, i64 %i.bp
  %scevgep93 = getelementptr i8, ptr %i.bq, i64 40 ; 2 uses
  %bound094 = icmp ult ptr %i.bk, %scevgep93
  %bound195 = icmp ult ptr %i.bl, %scevgep92
  %found.conflict96 = and i1 %bound094, %bound195
  %bound097 = icmp ult ptr %i.bk, %i.bj
  %bound198 = icmp ult ptr %i.bh, %scevgep92
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx100 = or i1 %found.conflict96, %found.conflict99
  %bound0101 = icmp ult ptr %i.bl, %i.bj
  %bound1102 = icmp ult ptr %i.bh, %scevgep93
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx104 = or i1 %conflict.rdx100, %found.conflict103
  br i1 %conflict.rdx104, label %scalar.ph105.preheader, label %vector.ph107

vector.ph107:                                     ; preds = %vector.memcheck91
  %n.vec108 = and i64 %i.bo, 9223372036854775804  ; 4 uses
  %i.br = shl i64 %n.vec108, 2
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.br
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph107
  %index110 = phi i64 [ 0, %vector.ph107 ], [ %index.next116, %vector.body109 ] ; 3 uses
  %i.bt = phi i64 [ 1, %vector.ph107 ], [ %i.by, %vector.body109 ] ; 2 uses
  %i.bu = shl i64 %index110, 2
  %next.gep113 = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep113, i64 8
  %wide.load114 = load <2 x i32>, ptr %next.gep113, align 4, !alias.scope !28
  %wide.load115 = load <2 x i32>, ptr %i.bv, align 4, !alias.scope !28
  %i.bw = getelementptr [4 x i8], ptr %i.bl, i64 %index110 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  store <2 x i32> %wide.load114, ptr %i.bw, align 4, !alias.scope !31, !noalias !28
  store <2 x i32> %wide.load115, ptr %i.bx, align 4, !alias.scope !31, !noalias !28
  %index.next116 = add nuw i64 %index110, 4       ; 2 uses
  %i.by = add i64 %i.bt, 4
  %i.bz = icmp eq i64 %index.next116, %n.vec108
  br i1 %i.bz, label %middle.block118, label %vector.body109, !llvm.loop !33

middle.block118:                                  ; preds = %vector.body109
  %i.ca = add i64 %i.bt, 3
  store i64 %i.ca, ptr %i.bk, align 8, !alias.scope !34, !noalias !36
  %cmp.n119 = icmp eq i64 %i.bo, %n.vec108
  br i1 %cmp.n119, label %._crit_edge73, label %scalar.ph105.preheader

scalar.ph105.preheader:                           ; preds = %vector.memcheck91, %.lr.ph72, %middle.block118
  %.ph = phi i64 [ 0, %vector.memcheck91 ], [ 0, %.lr.ph72 ], [ %n.vec108, %middle.block118 ]
  %.03270.ph = phi ptr [ %i.bh, %vector.memcheck91 ], [ %i.bh, %.lr.ph72 ], [ %i.bs, %middle.block118 ]
  br label %scalar.ph105

.lr.ph:                                           ; preds = %.lr.ph.preheader123, %.lr.ph
  %i.cb = phi i64 [ %i.cc, %.lr.ph ], [ %.ph124, %.lr.ph.preheader123 ] ; 2 uses
  %.068 = phi ptr [ %i.ce, %.lr.ph ], [ %.068.ph, %.lr.ph.preheader123 ] ; 2 uses
  %.sroa.012.0.copyload = load i32, ptr %.068, align 4
  %i.cc = add i64 %i.cb, 1                        ; 2 uses
  store i64 %i.cc, ptr %i.u, align 8
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.cb
  store i32 %.sroa.012.0.copyload, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %.068, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ce, %i.aq
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !37

._crit_edge73:                                    ; preds = %scalar.ph105, %middle.block118, %._crit_edge
  %i.cf = call noundef ptr @_ZNK2v88internal4wasm12CanonicalSig7Builder3GetENS1_18CanonicalTypeIndexE(ptr noundef nonnull align 8 dereferenceable(48) %3, i32 %i.j) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %i.cf, ptr %4, align 8
  %.sroa.6.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 -1, ptr %.sroa.6.0..sroa_idx51, align 8
  %.sroa.7.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 -1, ptr %.sroa.7.0..sroa_idx53, align 4
  %.sroa.8.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 -1, ptr %.sroa.8.0..sroa_idx55, align 8
  %.sroa.9.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.9.0..sroa_idx57, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.j, ptr %i.cg, align 8
  %i.ch = call { ptr, i8 } @_ZNSt10_HashtableIN2v88internal4wasm17TypeCanonicalizer23CanonicalSingletonGroupES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRS4_EEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(28) %4)
  %.fca.0.extract = extractvalue { ptr, i8 } %i.ch, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 8
  %i.cj = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %.not.i.i = icmp eq ptr %i.cj, %i.cl
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge73
  store i32 -1, ptr %i.cj, align 4
  %i.cm = load ptr, ptr %i.b, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store ptr %i.cn, ptr %i.b, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE9push_backEOS3_.exit

bb.g:                                             ; preds = %._crit_edge73
  %i.co = load ptr, ptr %0, align 8               ; 4 uses
  %i.cp = ptrtoint ptr %i.cj to i64
  %i.cq = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 5 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775804
  br i1 %i.cs, label %bb.h, label %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #13
  unreachable

_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ct = ashr exact i64 %i.cr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 2305843009213693951)
  %i.cx = select i1 %i.cv, i64 2305843009213693951, i64 %i.cw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cy = shl nuw nsw i64 %i.cx, 2
  %i.cz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #14 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.cr ; 2 uses
  store i32 -1, ptr %i.da, align 4
  %i.db = icmp sgt i64 %i.cr, 0
  br i1 %i.db, label %bb.i, label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr align 4 %i.co, i64 %i.cr, i1 false)
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.dd = load ptr, ptr %i.ck, align 8
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %i.de, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.df) #15
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.cz, ptr %0, align 8
  store ptr %i.dc, ptr %i.b, align 8
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cx
  store ptr %i.dg, ptr %i.ck, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.f, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.di = add nuw nsw i64 %i.i, 1
  %i.dj = lshr i64 %i.di, 10
  %i.dk = and i64 %i.dj, 4194303
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE9push_backEOS3_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i ], [ %i.dk, %_ZNSt6vectorIN2v88internal4wasm18CanonicalTypeIndexESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv ; 2 uses
  %i.dm = load atomic ptr, ptr %i.dl monotonic, align 8
  %.not.i = icmp eq ptr %i.dm, null
  br i1 %.not.i, label %bb.l, label %_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit

bb.l:                                             ; preds = %bb.k
  %i.dn = load i64, ptr %i.z, align 8
  %i.do = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = icmp ult i64 %i.dp, 8192
  br i1 %i.dq, label %bb.m, label %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i, !prof !5

bb.m:                                             ; preds = %bb.l
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef 8192) #12
  %.pre.i.i.i36 = load i64, ptr %i.ab, align 8
  br label %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i: ; preds = %bb.m, %bb.l
  %i.dr = phi i64 [ %.pre.i.i.i36, %bb.m ], [ %i.do, %bb.l ] ; 2 uses
  %i.ds = inttoptr i64 %i.dr to ptr               ; 2 uses
  %i.dt = add i64 %i.dr, 8192
  store i64 %i.dt, ptr %i.ab, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.ds, i8 0, i64 8192, i1 false)
  store atomic ptr %i.ds, ptr %i.dl monotonic, align 8
  %i.du = icmp eq i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %i.du, label %_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit, label %bb.k, !llvm.loop !6

_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit: ; preds = %bb.k, %_ZN2v88internal4Zone3NewINS0_4wasm17TypeCanonicalizer19CanonicalTypeVector7SegmentEJEEEPT_DpOT0_.exit.i
  %i.dv = lshr i64 %i.g, 12
  %i.dw = and i64 %i.dv, 4194303
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dw
  %i.dy = load atomic ptr, ptr %i.dx monotonic, align 8
  %i.dz = and i64 %i.i, 1023
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dz
  store atomic ptr %i.ci, ptr %i.ea monotonic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

scalar.ph105:                                     ; preds = %scalar.ph105.preheader, %scalar.ph105
  %i.eb = phi i64 [ %i.ec, %scalar.ph105 ], [ %.ph, %scalar.ph105.preheader ] ; 2 uses
  %.03270 = phi ptr [ %i.ee, %scalar.ph105 ], [ %.03270.ph, %scalar.ph105.preheader ] ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %.03270, align 4
  %i.ec = add i64 %i.eb, 1                        ; 2 uses
  store i64 %i.ec, ptr %i.bk, align 8
  %i.ed = getelementptr [4 x i8], ptr %i.bl, i64 %i.eb
  store i32 %.sroa.04.0.copyload, ptr %i.ed, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %.03270, i64 4 ; 2 uses
  %.not33 = icmp eq ptr %i.ee, %i.bj
  br i1 %.not33, label %._crit_edge73, label %scalar.ph105, !llvm.loop !38

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_23CanonicalSingletonGroupE.exit, %_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit
  %.sroa.031.0 = phi i32 [ %i.j, %_ZN2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVector7reserveEjPNS0_4ZoneE.exit ], [ %.sroa.0.0.copyload.i, %_ZNK2v88internal4wasm17TypeCanonicalizer18FindCanonicalGroupERKNS2_23CanonicalSingletonGroupE.exit ]
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #12
  ret i32 %.sroa.031.0
}

declare noundef ptr @_ZNK2v88internal4wasm12CanonicalSig7Builder3GetENS1_18CanonicalTypeIndexE(ptr noundef nonnull align 8 dereferenceable(48), i32) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal4wasm17TypeCanonicalizer23LookupFunctionSignatureENS1_18CanonicalTypeIndexE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8056) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 1000448
  br i1 %i.a, label %_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15) #13
  unreachable

_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = lshr i32 %1, 10
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load atomic ptr, ptr %i.e monotonic, align 8
  %i.g = and i32 %1, 1023
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i8, ptr %i.k, align 4
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c, !prof !39

bb.c:                                             ; preds = %_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #13
  unreachable

bb.d:                                             ; preds = %_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit
  %i.n = load ptr, ptr %i.j, align 8
  ret ptr %i.n
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal4wasm17TypeCanonicalizer12LookupStructENS1_18CanonicalTypeIndexE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8056) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 1000448
  br i1 %i.a, label %_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15) #13
  unreachable

_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = lshr i32 %1, 10
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load atomic ptr, ptr %i.e monotonic, align 8
  %i.g = and i32 %1, 1023
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i8, ptr %i.k, align 4
  %i.m = icmp eq i8 %i.l, 1
  br i1 %i.m, label %bb.d, label %bb.c, !prof !39

bb.c:                                             ; preds = %_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #13
  unreachable

bb.d:                                             ; preds = %_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit
  %i.n = load ptr, ptr %i.j, align 8
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal4wasm17TypeCanonicalizer11LookupArrayENS1_18CanonicalTypeIndexE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8056) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 1000448
  br i1 %i.a, label %_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15) #13
  unreachable

_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = lshr i32 %1, 10
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load atomic ptr, ptr %i.e monotonic, align 8
  %i.g = and i32 %1, 1023
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i8, ptr %i.k, align 4
  %i.m = icmp eq i8 %i.l, 2
  br i1 %i.m, label %bb.d, label %bb.c, !prof !39

bb.c:                                             ; preds = %_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #13
  unreachable

bb.d:                                             ; preds = %_ZNK2v88internal4wasm17TypeCanonicalizer19CanonicalTypeVectorixENS1_18CanonicalTypeIndexE.exit
  %i.n = load ptr, ptr %i.j, align 8
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal4wasm17TypeCanonicalizer18IsCanonicalSubtypeENS1_18CanonicalTypeIndexES3_(ptr noundef nonnull align 8 dereferenceable(8056) %0, i32 %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8048 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #12
  %.not = icmp eq i32 %1, -1
  br i1 %.not, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %storemerge7.i = phi i32 [ %1, %.lr.ph.i ], [ %i.f, %bb.c ]
  %i.d = zext i32 %storemerge7.i to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = icmp ne i32 %i.f, -1                     ; 2 uses
  %i.h = icmp ne i32 %i.f, %2
  %or.cond.not.i = and i1 %i.g, %i.h
  br i1 %or.cond.not.i, label %bb.c, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, !llvm.loop !40

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.c, %bb.b
  %.lcssa.i = phi i1 [ false, %bb.b ], [ %i.g, %bb.c ]
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %.0 = phi i1 [ %.lcssa.i, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal4wasm17TypeCanonicalizer25IsCanonicalSubtype_LockedENS1_18CanonicalTypeIndexES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8056) %0, i32 %1, i32 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ne i32 %1, -1                       ; 2 uses
  %i.b = icmp ne i32 %1, %2
  %or.cond.not6 = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond.not6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %storemerge7 = phi i32 [ %1, %.lr.ph ], [ %i.f, %bb.b ]
  %i.d = zext i32 %storemerge7 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = icmp ne i32 %i.f, -1                     ; 2 uses
  %i.h = icmp ne i32 %i.f, %2
  %or.cond.not = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond.not, label %bb.b, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i1 [ %i.a, %bb.a ], [ %i.g, %bb.b ]
  ret i1 %.lcssa
}
end_hunk_2
