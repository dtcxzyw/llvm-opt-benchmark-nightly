Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/turbolev-graph-builder?download=true
inline.NumInlined: 65942
inline.NumDeleted: 17507
loop-unroll.NumCompletelyUnrolled: 517
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 591
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.133", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", [4 x i8], %"class.v8::internal::FlagValue.134", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.133", %"class.v8::internal::FlagValue.133", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.133", %"class.v8::internal::FlagValue.135", %"class.v8::internal::FlagValue.135", %"class.v8::internal::FlagValue.135", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.133", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.133", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.134", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.133", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.133", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.134", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", [4 x i8], %"class.v8::internal::FlagValue.134", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.133", %"class.v8::internal::FlagValue.133", %"class.v8::internal::FlagValue.133", %"class.v8::internal::FlagValue.133", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue.132", [4 x i8], %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.133", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.134", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.134", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.135", %"class.v8::internal::FlagValue.135", %"class.v8::internal::FlagValue.135", %"class.v8::internal::FlagValue.135", %"class.v8::internal::FlagValue.135", %"class.v8::internal::FlagValue.135", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.133", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.133", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.134", %"class.v8::internal::FlagValue.134", %"class.v8::internal::FlagValue.134", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.133", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.135", [2 x i8], %"class.v8::internal::FlagValue.132", [4 x i8], %"class.v8::internal::FlagValue.134", %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.133", %"class.v8::internal::FlagValue.133", [4 x i8], %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.142", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.132", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.131", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.135" = type { %"class.std::optional.136" }
%"class.std::optional.136" = type { %"struct.std::_Optional_base.137" }
%"struct.std::_Optional_base.137" = type { %"struct.std::_Optional_payload.139" }
%"struct.std::_Optional_payload.139" = type { %"struct.std::_Optional_payload_base.140" }
%"struct.std::_Optional_payload_base.140" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.134" = type { double }
%"class.v8::internal::FlagValue.133" = type { i32 }
%"class.v8::internal::FlagValue.142" = type { i64 }
%"class.v8::internal::FlagValue.132" = type { i32 }
%"class.v8::internal::FlagValue.131" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.v8::base::tmp::StringLiteral" = type { %"struct.std::array" }
%"struct.std::array" = type { [11 x i8] }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.absl::container_internal::PolicyFunctions" = type { i32, i32, i32, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::turboshaft::SupportedOperations" = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%"struct.std::array.4627" = type { [2 x %"class.v8::internal::compiler::turboshaft::RegisterRepresentation"] }
%"class.v8::internal::compiler::turboshaft::RegisterRepresentation" = type { %"class.v8::internal::compiler::turboshaft::MaybeRegisterRepresentation" }
%"class.v8::internal::compiler::turboshaft::MaybeRegisterRepresentation" = type { i8 }
%"class.v8::base::Vector.3912" = type { ptr, i64 }
%"class.v8::internal::compiler::FeedbackCellRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::internal::compiler::HeapObjectRef" = type { %"class.v8::internal::compiler::ObjectRef" }
%"class.v8::internal::compiler::ObjectRef" = type { ptr }
%"class.v8::internal::CodeTracer::StreamScope" = type { %"class.v8::internal::CodeTracer::Scope", %"class.std::optional.99", %"class.std::optional.109" }
%"class.v8::internal::CodeTracer::Scope" = type { ptr }
%"class.std::optional.99" = type { %"struct.std::_Optional_base.100" }
%"struct.std::_Optional_base.100" = type { %"struct.std::_Optional_payload.102" }
%"struct.std::_Optional_payload.102" = type { %"struct.std::_Optional_payload.base.106", [7 x i8] }
%"struct.std::_Optional_payload.base.106" = type { %"struct.std::_Optional_payload_base.base.105" }
%"struct.std::_Optional_payload_base.base.105" = type <{ %"union.std::_Optional_payload_base<v8::internal::StdoutStream>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::internal::StdoutStream>::_Storage" = type { %"class.v8::internal::StdoutStream" }
%"class.v8::internal::StdoutStream" = type { %"class.v8::internal::OFStream.base", %"class.v8::base::LockGuard", %"class.std::basic_ios" }
%"class.v8::internal::OFStream.base" = type { %"class.std::basic_ostream.base", %"class.v8::internal::OFStreamBase" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.v8::internal::OFStreamBase" = type { %"class.std::basic_streambuf", ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.v8::base::LockGuard" = type { ptr }
%"class.std::optional.109" = type { %"struct.std::_Optional_base.110" }
%"struct.std::_Optional_base.110" = type { %"struct.std::_Optional_payload.112" }
%"struct.std::_Optional_payload.112" = type { %"struct.std::_Optional_payload.base.116", [7 x i8] }
%"struct.std::_Optional_payload.base.116" = type { %"struct.std::_Optional_payload_base.base.115" }
%"struct.std::_Optional_payload_base.base.115" = type <{ %"union.std::_Optional_payload_base<v8::internal::OFStream>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::internal::OFStream>::_Storage" = type { %"class.v8::internal::OFStream" }
%"class.v8::internal::OFStream" = type { %"class.std::basic_ostream.base", %"class.v8::internal::OFStreamBase", %"class.std::basic_ios" }
%"struct.v8::internal::Brief" = type { i64 }
%"class.v8::internal::compiler::BytecodeArrayRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::internal::compiler::FeedbackVectorRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::internal::maglev::MaglevInliner" = type { ptr }
%"class.v8::internal::maglev::GraphBackwardProcessor" = type { i8 }
%"class.v8::internal::maglev::GraphProcessor" = type { %"class.v8::internal::maglev::TruncationProcessor", ptr, ptr, ptr }
%"class.v8::internal::maglev::TruncationProcessor" = type <{ %"class.v8::internal::maglev::MaglevReducer", i32, [4 x i8] }>
%"class.v8::internal::maglev::MaglevReducer" = type { ptr, ptr, ptr, ptr, %"struct.v8::internal::maglev::MaglevGraphLabeller::Provenance", ptr, %"class.v8::internal::maglev::BasicBlockPosition", i32, %"class.v8::internal::ZoneVector.195", %"class.v8::internal::ZoneVector.196", %"struct.v8::internal::compiler::FeedbackSource" }
%"struct.v8::internal::maglev::MaglevGraphLabeller::Provenance" = type { ptr, %"class.v8::internal::BytecodeOffset", %"class.v8::internal::SourcePosition" }
%"class.v8::internal::BytecodeOffset" = type { i32 }
%"class.v8::internal::SourcePosition" = type { i64 }
%"class.v8::internal::maglev::BasicBlockPosition" = type { i32 }
%"class.v8::internal::ZoneVector.195" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.196" = type { ptr, ptr, ptr, ptr }
%"struct.v8::internal::compiler::FeedbackSource" = type <{ %"class.v8::internal::Handle.124", %"class.v8::internal::FeedbackSlot", [4 x i8] }>
%"class.v8::internal::Handle.124" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"class.v8::internal::FeedbackSlot" = type { i32 }
%"class.v8::internal::maglev::GraphProcessor.197" = type { %"class.v8::internal::maglev::MaglevPhiRepresentationSelector", ptr, ptr, ptr }
%"class.v8::internal::maglev::MaglevPhiRepresentationSelector" = type { ptr, %"class.v8::internal::maglev::MaglevReducer.198", %"class.v8::internal::compiler::turboshaft::SnapshotTable", %"class.v8::internal::ZoneVector.210", %"class.absl::flat_hash_map", ptr }
%"class.v8::internal::maglev::MaglevReducer.198" = type { ptr, ptr, ptr, ptr, %"struct.v8::internal::maglev::MaglevGraphLabeller::Provenance", ptr, %"class.v8::internal::maglev::BasicBlockPosition", i32, %"class.v8::internal::ZoneVector.195", %"class.v8::internal::ZoneVector.196", %"struct.v8::internal::compiler::FeedbackSource" }
%"class.v8::internal::compiler::turboshaft::SnapshotTable" = type { ptr, %"class.v8::internal::ZoneDeque", %"class.v8::internal::ZoneDeque.200", %"class.v8::internal::ZoneVector.206", ptr, ptr, %"class.v8::internal::ZoneVector.207", %"class.v8::internal::ZoneVector.208", %"class.v8::internal::ZoneVector.209" }
%"class.v8::internal::ZoneDeque" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::maglev::ValueNode *, v8::internal::compiler::turboshaft::NoKeyData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::maglev::ValueNode *, v8::internal::compiler::turboshaft::NoKeyData>>>::_Deque_impl" }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::maglev::ValueNode *, v8::internal::compiler::turboshaft::NoKeyData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::maglev::ValueNode *, v8::internal::compiler::turboshaft::NoKeyData>>>::_Deque_impl" = type { %"class.v8::internal::RecyclingZoneAllocator", %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::maglev::ValueNode *, v8::internal::compiler::turboshaft::NoKeyData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::maglev::ValueNode *, v8::internal::compiler::turboshaft::NoKeyData>>>::_Deque_impl_data" }
%"class.v8::internal::RecyclingZoneAllocator" = type { %"class.v8::internal::ZoneAllocator.199", ptr }
%"class.v8::internal::ZoneAllocator.199" = type { ptr }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::maglev::ValueNode *, v8::internal::compiler::turboshaft::NoKeyData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::maglev::ValueNode *, v8::internal::compiler::turboshaft::NoKeyData>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneDeque.200" = type { %"class.std::deque.201" }
%"class.std::deque.201" = type { %"class.std::_Deque_base.202" }
%"class.std::_Deque_base.202" = type { %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::maglev::ValueNode *>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::maglev::ValueNode *>::SnapshotData>>::_Deque_impl" }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::maglev::ValueNode *>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::maglev::ValueNode *>::SnapshotData>>::_Deque_impl" = type { %"class.v8::internal::RecyclingZoneAllocator.203", %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::maglev::ValueNode *>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::maglev::ValueNode *>::SnapshotData>>::_Deque_impl_data" }
%"class.v8::internal::RecyclingZoneAllocator.203" = type { %"class.v8::internal::ZoneAllocator.204", ptr }
%"class.v8::internal::ZoneAllocator.204" = type { ptr }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::maglev::ValueNode *>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::maglev::ValueNode *>::SnapshotData>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.205", %"struct.std::_Deque_iterator.205" }
%"struct.std::_Deque_iterator.205" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.206" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.207" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.208" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.209" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.210" = type { ptr, ptr, ptr, ptr }
%"class.absl::flat_hash_map" = type { %"class.absl::container_internal::raw_hash_map" }
%"class.absl::container_internal::raw_hash_map" = type { %"class.absl::container_internal::raw_hash_set" }
%"class.absl::container_internal::raw_hash_set" = type { %"class.absl::container_internal::CompressedTuple" }
%"class.absl::container_internal::CompressedTuple" = type { %"struct.absl::container_internal::internal_compressed_tuple::CompressedTupleImpl" }
%"struct.absl::container_internal::internal_compressed_tuple::CompressedTupleImpl" = type { %"struct.absl::container_internal::internal_compressed_tuple::Storage" }
%"struct.absl::container_internal::internal_compressed_tuple::Storage" = type { %"class.absl::container_internal::CommonFields" }
%"class.absl::container_internal::CommonFields" = type { i64, %"class.absl::container_internal::HashtableSize", %"union.absl::container_internal::HeapOrSoo" }
%"class.absl::container_internal::HashtableSize" = type { i64 }
%"union.absl::container_internal::HeapOrSoo" = type { %"struct.absl::container_internal::HeapPtrs" }
%"struct.absl::container_internal::HeapPtrs" = type { %"union.absl::container_internal::MaybeInitializedPtr", %"union.absl::container_internal::MaybeInitializedPtr.211" }
%"union.absl::container_internal::MaybeInitializedPtr" = type { ptr }
%"union.absl::container_internal::MaybeInitializedPtr.211" = type { ptr }
%"class.v8::internal::maglev::GraphProcessor.217" = type { %"class.v8::internal::maglev::NodeMultiProcessor", ptr, ptr, ptr }
%"class.v8::internal::maglev::NodeMultiProcessor" = type <{ %"class.v8::internal::maglev::NodeMultiProcessor.218", [8 x i8] }>
%"class.v8::internal::maglev::NodeMultiProcessor.218" = type { %"class.v8::internal::maglev::AnyUseMarkingProcessor" }
%"class.v8::internal::maglev::AnyUseMarkingProcessor" = type { %"class.std::vector.220" }
%"class.std::vector.220" = type { %"struct.std::_Vector_base.221" }
%"struct.std::_Vector_base.221" = type { %"struct.std::_Vector_base<v8::internal::maglev::Node *, std::allocator<v8::internal::maglev::Node *>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::maglev::Node *, std::allocator<v8::internal::maglev::Node *>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::maglev::Node *, std::allocator<v8::internal::maglev::Node *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::maglev::Node *, std::allocator<v8::internal::maglev::Node *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.v8::internal::maglev::GraphProcessor.225" = type { %"class.v8::internal::maglev::NodeMultiProcessor.226", ptr, ptr, ptr }
%"class.v8::internal::maglev::NodeMultiProcessor.226" = type { %"class.v8::internal::maglev::DeadNodeSweepingProcessor" }
%"class.v8::internal::maglev::DeadNodeSweepingProcessor" = type { ptr }
%"class.v8::internal::maglev::ProcessingState" = type <{ ptr, ptr, i32, [4 x i8] }>
%"class.std::optional.227" = type { %"struct.std::_Optional_base.228" }
%"struct.std::_Optional_base.228" = type { %"struct.std::_Optional_payload.230" }
%"struct.std::_Optional_payload.230" = type { %"struct.std::_Optional_payload_base.231" }
%"struct.std::_Optional_payload_base.231" = type { %"union.std::_Optional_payload_base<v8::internal::BailoutReason>::_Storage", i8 }
%"union.std::_Optional_payload_base<v8::internal::BailoutReason>::_Storage" = type { %"struct.std::_Optional_payload_base<v8::internal::BailoutReason>::_Empty_byte" }
%"struct.std::_Optional_payload_base<v8::internal::BailoutReason>::_Empty_byte" = type { i8 }
%"class.v8::internal::maglev::MaglevGraphLabellerScope" = type { i8 }
%"class.v8::internal::maglev::MaglevGraphBuilder" = type <{ %"class.v8::internal::maglev::MaglevReducer.318", ptr, ptr, ptr, ptr, ptr, %"class.v8::internal::compiler::BytecodeAnalysis", %"class.v8::internal::interpreter::BytecodeArrayIterator", %"class.v8::internal::SourcePositionTableIterator", ptr, i32, i8, i8, [2 x i8], ptr, %"class.v8::internal::ZoneDeque.335", %"class.v8::internal::ZoneVector.341", %"class.v8::internal::BitVector", i8, [7 x i8], ptr, ptr, %"struct.v8::internal::maglev::MaglevGraphBuilder::ForInState", ptr, ptr, ptr, %"class.v8::internal::maglev::InterpreterFrameState", i32, [4 x i8], ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, %"class.v8::internal::ZoneStack", %"class.v8::internal::ZoneUnorderedMap.348", i8, [7 x i8] }>
%"class.v8::internal::maglev::MaglevReducer.318" = type { ptr, ptr, ptr, ptr, %"struct.v8::internal::maglev::MaglevGraphLabeller::Provenance", ptr, %"class.v8::internal::maglev::BasicBlockPosition", i32, %"class.v8::internal::ZoneVector.195", %"class.v8::internal::ZoneVector.196", %"struct.v8::internal::compiler::FeedbackSource" }
%"class.v8::internal::compiler::BytecodeAnalysis" = type <{ %"class.v8::internal::BytecodeOffset", i8, [3 x i8], %"class.v8::internal::ZoneVector.319", %"class.v8::internal::ZoneMap.320", %"class.v8::base::Vector.324", i32, [4 x i8], %"class.std::optional.325", i32, [4 x i8] }>
%"class.v8::internal::ZoneVector.319" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneMap.320" = type { %"class.std::map.321" }
%"class.std::map.321" = type { %"class.std::_Rb_tree.322" }
%"class.std::_Rb_tree.322" = type { %"struct.std::_Rb_tree<int, std::pair<const int, int>, std::_Select1st<std::pair<const int, int>>, std::less<int>, v8::internal::ZoneAllocator<std::pair<const int, int>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<int, std::pair<const int, int>, std::_Select1st<std::pair<const int, int>>, std::less<int>, v8::internal::ZoneAllocator<std::pair<const int, int>>>::_Rb_tree_impl" = type { %"class.v8::internal::ZoneAllocator.323", [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.v8::internal::ZoneAllocator.323" = type { ptr }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.v8::base::Vector.324" = type { ptr, i64 }
%"class.std::optional.325" = type { %"struct.std::_Optional_base.326" }
%"struct.std::_Optional_base.326" = type { %"struct.std::_Optional_payload.328" }
%"struct.std::_Optional_payload.328" = type { %"struct.std::_Optional_payload_base.base.330", [7 x i8] }
%"struct.std::_Optional_payload_base.base.330" = type <{ %"union.std::_Optional_payload_base<v8::internal::compiler::BytecodeLivenessMap>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::internal::compiler::BytecodeLivenessMap>::_Storage" = type { %"class.v8::internal::compiler::BytecodeLivenessMap" }
%"class.v8::internal::compiler::BytecodeLivenessMap" = type { ptr }
%"class.v8::internal::interpreter::BytecodeArrayIterator" = type { %"class.v8::internal::Handle.120", ptr, ptr, ptr, i8, i32, ptr }
%"class.v8::internal::Handle.120" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::SourcePositionTableIterator" = type { %"class.v8::base::Vector.333", %"class.v8::internal::Handle.334", i32, [4 x i8], %"struct.v8::internal::PositionTableEntry", i32, i32 }
%"class.v8::base::Vector.333" = type { ptr, i64 }
%"class.v8::internal::Handle.334" = type { %"class.v8::internal::HandleBase" }
%"struct.v8::internal::PositionTableEntry" = type <{ i64, i32, i8, i8, [2 x i8] }>
%"class.v8::internal::ZoneDeque.335" = type { %"class.std::deque.336" }
%"class.std::deque.336" = type { %"class.std::_Deque_base.337" }
%"class.std::_Deque_base.337" = type { %"struct.std::_Deque_base<v8::internal::maglev::LoopEffects *, v8::internal::RecyclingZoneAllocator<v8::internal::maglev::LoopEffects *>>::_Deque_impl" }
%"struct.std::_Deque_base<v8::internal::maglev::LoopEffects *, v8::internal::RecyclingZoneAllocator<v8::internal::maglev::LoopEffects *>>::_Deque_impl" = type { %"class.v8::internal::RecyclingZoneAllocator.338", %"struct.std::_Deque_base<v8::internal::maglev::LoopEffects *, v8::internal::RecyclingZoneAllocator<v8::internal::maglev::LoopEffects *>>::_Deque_impl_data" }
%"class.v8::internal::RecyclingZoneAllocator.338" = type { %"class.v8::internal::ZoneAllocator.339", ptr }
%"class.v8::internal::ZoneAllocator.339" = type { ptr }
%"struct.std::_Deque_base<v8::internal::maglev::LoopEffects *, v8::internal::RecyclingZoneAllocator<v8::internal::maglev::LoopEffects *>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.340", %"struct.std::_Deque_iterator.340" }
%"struct.std::_Deque_iterator.340" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.341" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::BitVector" = type { i32, %"union.v8::internal::BitVector::DataStorage", ptr, ptr }
%"union.v8::internal::BitVector::DataStorage" = type { ptr }
%"struct.v8::internal::maglev::MaglevGraphBuilder::ForInState" = type <{ ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.v8::internal::maglev::InterpreterFrameState" = type { %"class.v8::internal::maglev::RegisterFrameArray", ptr }
%"class.v8::internal::maglev::RegisterFrameArray" = type { ptr }
%"class.v8::internal::ZoneStack" = type { %"class.std::stack" }
%"class.std::stack" = type { %"class.v8::internal::ZoneDeque.342" }
%"class.v8::internal::ZoneDeque.342" = type { %"class.std::deque.343" }
%"class.std::deque.343" = type { %"class.std::_Deque_base.344" }
%"class.std::_Deque_base.344" = type { %"struct.std::_Deque_base<v8::internal::maglev::MaglevGraphBuilder::HandlerTableEntry, v8::internal::RecyclingZoneAllocator<v8::internal::maglev::MaglevGraphBuilder::HandlerTableEntry>>::_Deque_impl" }
%"struct.std::_Deque_base<v8::internal::maglev::MaglevGraphBuilder::HandlerTableEntry, v8::internal::RecyclingZoneAllocator<v8::internal::maglev::MaglevGraphBuilder::HandlerTableEntry>>::_Deque_impl" = type { %"class.v8::internal::RecyclingZoneAllocator.345", %"struct.std::_Deque_base<v8::internal::maglev::MaglevGraphBuilder::HandlerTableEntry, v8::internal::RecyclingZoneAllocator<v8::internal::maglev::MaglevGraphBuilder::HandlerTableEntry>>::_Deque_impl_data" }
%"class.v8::internal::RecyclingZoneAllocator.345" = type { %"class.v8::internal::ZoneAllocator.346", ptr }
%"class.v8::internal::ZoneAllocator.346" = type { ptr }
%"struct.std::_Deque_base<v8::internal::maglev::MaglevGraphBuilder::HandlerTableEntry, v8::internal::RecyclingZoneAllocator<v8::internal::maglev::MaglevGraphBuilder::HandlerTableEntry>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.347", %"struct.std::_Deque_iterator.347" }
%"struct.std::_Deque_iterator.347" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneUnorderedMap.348" = type { %"class.std::unordered_map.349" }
%"class.std::unordered_map.349" = type { %"class.std::_Hashtable.350" }
%"class.std::_Hashtable.350" = type { %"struct.std::__detail::_Hashtable_alloc.363", ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hashtable_alloc.363" = type { %"struct.std::__detail::_Hashtable_ebo_helper.364" }
%"struct.std::__detail::_Hashtable_ebo_helper.364" = type { %"class.v8::internal::ZoneAllocator.365" }
%"class.v8::internal::ZoneAllocator.365" = type { ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.v8::internal::maglev::GraphProcessor.366" = type { %"class.v8::internal::compiler::turboshaft::NodeProcessorBase", ptr, ptr, ptr }
%"class.v8::internal::compiler::turboshaft::NodeProcessorBase" = type { %"class.v8::internal::compiler::turboshaft::GraphBuildingNodeProcessor", ptr }
%"class.v8::internal::compiler::turboshaft::GraphBuildingNodeProcessor" = type { ptr, ptr, ptr, ptr, ptr, ptr, %"class.v8::internal::compiler::turboshaft::TSAssembler", ptr, %"class.v8::internal::ZoneUnorderedMap.410", %"class.v8::internal::ZoneUnorderedMap.428", %"class.v8::internal::ZoneUnorderedMap.446", %"class.v8::internal::compiler::turboshaft::V.464", %"class.v8::internal::compiler::turboshaft::GraphBuildingNodeProcessor::Deduplicator", %"class.v8::internal::compiler::turboshaft::V.470", %"class.v8::internal::ZoneUnorderedMap.428", %"class.v8::base::SmallVector", i32, %"class.v8::internal::compiler::turboshaft::V.470", %"class.v8::internal::ZoneAbslFlatHashMap.471", %"class.v8::internal::compiler::turboshaft::GeneratorAnalyzer", i8, i8, %"class.v8::internal::compiler::turboshaft::SnapshotTableKey", %"class.v8::internal::compiler::turboshaft::V.525", %"class.v8::internal::compiler::turboshaft::V.470", %"class.v8::internal::compiler::turboshaft::V.525", %"class.v8::internal::compiler::turboshaft::V.526", ptr, %"class.v8::internal::compiler::turboshaft::SnapshotTableKey", %"class.std::unordered_map.527", %"class.v8::internal::compiler::turboshaft::V.541", %"class.v8::internal::compiler::turboshaft::V.470", %"class.v8::base::SmallVector.542", ptr }
%"class.v8::internal::compiler::turboshaft::TSAssembler" = type { %"class.v8::internal::compiler::turboshaft::Assembler" }
%"class.v8::internal::compiler::turboshaft::Assembler" = type { %"struct.v8::internal::compiler::turboshaft::AssemblerData", %"class.v8::internal::compiler::turboshaft::BlockOriginTrackingReducer", %"class.v8::internal::compiler::turboshaft::TurboshaftAssemblerOpInterface", ptr, ptr, i8, %"class.v8::internal::compiler::turboshaft::V" }
%"struct.v8::internal::compiler::turboshaft::AssemblerData" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::turboshaft::BlockOriginTrackingReducer" = type { %"class.v8::internal::compiler::turboshaft::TurbolevEarlyLoweringReducer", ptr, %"class.v8::internal::compiler::turboshaft::GrowingBlockSidetable.407" }
%"class.v8::internal::compiler::turboshaft::TurbolevEarlyLoweringReducer" = type { %"class.v8::internal::compiler::turboshaft::MachineOptimizationReducer.base", ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::turboshaft::MachineOptimizationReducer.base" = type <{ %"class.v8::internal::compiler::turboshaft::VariableReducer", ptr, ptr, i8, i8 }>
%"class.v8::internal::compiler::turboshaft::VariableReducer" = type { %"class.v8::internal::compiler::turboshaft::RequiredOptimizationReducer", %"struct.v8::internal::compiler::turboshaft::VariableReducer<v8::internal::compiler::turboshaft::RequiredOptimizationReducer<v8::internal::compiler::turboshaft::EmitProjectionReducer<v8::internal::compiler::turboshaft::ValueNumberingReducer<v8::internal::compiler::turboshaft::GenericReducerBase<v8::internal::compiler::turboshaft::TSReducerBase<v8::internal::compiler::turboshaft::StackBottom<v8::base::tmp::list1<v8::internal::compiler::turboshaft::BlockOriginTrackingReducer, v8::internal::compiler::turboshaft::TurbolevEarlyLoweringReducer, v8::internal::compiler::turboshaft::MachineOptimizationReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::RequiredOptimizationReducer, v8::internal::compiler::turboshaft::ValueNumberingReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>>>>>>::VariableTable", ptr, %"class.v8::internal::compiler::turboshaft::GrowingBlockSidetable.389", i8, %"class.v8::internal::ZoneVector.392", %"class.v8::internal::ZoneAbslFlatHashMap" }
%"class.v8::internal::compiler::turboshaft::RequiredOptimizationReducer" = type { %"class.v8::internal::compiler::turboshaft::RequiredOptimizationReducer.367" }
%"class.v8::internal::compiler::turboshaft::RequiredOptimizationReducer.367" = type { %"class.v8::internal::compiler::turboshaft::EmitProjectionReducer" }
%"class.v8::internal::compiler::turboshaft::EmitProjectionReducer" = type { %"class.v8::internal::compiler::turboshaft::UniformReducerAdapter" }
%"class.v8::internal::compiler::turboshaft::UniformReducerAdapter" = type { %"class.v8::internal::compiler::turboshaft::ValueNumberingReducer" }
%"class.v8::internal::compiler::turboshaft::ValueNumberingReducer" = type { %"class.v8::internal::ZoneVector.368", %"class.v8::base::Vector.369", i64, i64, %"class.v8::internal::ZoneVector.370", %"class.v8::internal::compiler::turboshaft::ScopeCounter", i32, ptr, %"class.v8::internal::compiler::turboshaft::GrowingBlockSidetable" }
%"class.v8::internal::ZoneVector.368" = type { ptr, ptr, ptr, ptr }
%"class.v8::base::Vector.369" = type { ptr, i64 }
%"class.v8::internal::ZoneVector.370" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::turboshaft::ScopeCounter" = type { i32 }
%"class.v8::internal::compiler::turboshaft::GrowingBlockSidetable" = type { %"class.v8::internal::compiler::turboshaft::detail::GrowingSidetable" }
%"class.v8::internal::compiler::turboshaft::detail::GrowingSidetable" = type { %"class.v8::internal::ZoneVector.341" }
%"struct.v8::internal::compiler::turboshaft::VariableReducer<v8::internal::compiler::turboshaft::RequiredOptimizationReducer<v8::internal::compiler::turboshaft::EmitProjectionReducer<v8::internal::compiler::turboshaft::ValueNumberingReducer<v8::internal::compiler::turboshaft::GenericReducerBase<v8::internal::compiler::turboshaft::TSReducerBase<v8::internal::compiler::turboshaft::StackBottom<v8::base::tmp::list1<v8::internal::compiler::turboshaft::BlockOriginTrackingReducer, v8::internal::compiler::turboshaft::TurbolevEarlyLoweringReducer, v8::internal::compiler::turboshaft::MachineOptimizationReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::RequiredOptimizationReducer, v8::internal::compiler::turboshaft::ValueNumberingReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>>>>>>::VariableTable" = type { %"class.v8::internal::compiler::turboshaft::ChangeTrackingSnapshotTable", %"class.v8::internal::ZoneIntrusiveSet" }
%"class.v8::internal::compiler::turboshaft::ChangeTrackingSnapshotTable" = type { %"class.v8::internal::compiler::turboshaft::SnapshotTable.371" }
%"class.v8::internal::compiler::turboshaft::SnapshotTable.371" = type { ptr, %"class.v8::internal::ZoneDeque.372", %"class.v8::internal::ZoneDeque.378", %"class.v8::internal::ZoneVector.384", ptr, ptr, %"class.v8::internal::ZoneVector.385", %"class.v8::internal::ZoneVector.386", %"class.v8::internal::ZoneVector.387" }
%"class.v8::internal::ZoneDeque.372" = type { %"class.std::deque.373" }
%"class.std::deque.373" = type { %"class.std::_Deque_base.374" }
%"class.std::_Deque_base.374" = type { %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>>>::_Deque_impl" }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>>>::_Deque_impl" = type { %"class.v8::internal::RecyclingZoneAllocator.375", %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>>>::_Deque_impl_data" }
%"class.v8::internal::RecyclingZoneAllocator.375" = type { %"class.v8::internal::ZoneAllocator.376", ptr }
%"class.v8::internal::ZoneAllocator.376" = type { ptr }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTableEntry<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.377", %"struct.std::_Deque_iterator.377" }
%"struct.std::_Deque_iterator.377" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneDeque.378" = type { %"class.std::deque.379" }
%"class.std::deque.379" = type { %"class.std::_Deque_base.380" }
%"class.std::_Deque_base.380" = type { %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData>>::_Deque_impl" }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData>>::_Deque_impl" = type { %"class.v8::internal::RecyclingZoneAllocator.381", %"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData>>::_Deque_impl_data" }
%"class.v8::internal::RecyclingZoneAllocator.381" = type { %"class.v8::internal::ZoneAllocator.382", ptr }
%"class.v8::internal::ZoneAllocator.382" = type { ptr }
%"struct.std::_Deque_base<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::VariableData>::SnapshotData>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.383", %"struct.std::_Deque_iterator.383" }
%"struct.std::_Deque_iterator.383" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.384" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.385" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.386" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.387" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneIntrusiveSet" = type { %"class.v8::base::IntrusiveSet.base", [7 x i8] }
end_hunk_0
begin_hunk_1
%class.anon.2717 = type { ptr, ptr }
%class.anon.2718 = type { ptr }
%class.anon.2719 = type { ptr, ptr }
%class.anon.2733 = type { ptr, ptr }
%class.anon.2734 = type { ptr }
%class.anon.2735 = type { ptr, ptr }
%class.anon.2743 = type { ptr, ptr }
%class.anon.2744 = type { ptr }
%class.anon.2745 = type { ptr, ptr }
%class.anon.2786 = type { ptr, ptr }
%class.anon.2787 = type { ptr, ptr }
%class.anon.2783 = type { ptr, ptr }
%class.anon.2784 = type { ptr, ptr }
%class.anon.2785 = type { ptr, ptr }
%class.anon.2804 = type { ptr, ptr }
%class.anon.2805 = type { ptr, ptr }
%class.anon.2801 = type { ptr, ptr }
%class.anon.2802 = type { ptr, ptr }
%class.anon.2803 = type { ptr, ptr }
%class.anon.2843 = type { ptr, ptr }
%class.anon.2844 = type { ptr }
%class.anon.2845 = type { ptr, ptr }
%class.anon.2868 = type { ptr, ptr }
%class.anon.2869 = type { ptr, ptr }
%class.anon.2865 = type { ptr, ptr }
%class.anon.2866 = type { ptr, ptr }
%class.anon.2867 = type { ptr, ptr }
%class.anon.2892 = type { ptr, ptr }
%class.anon.2893 = type { ptr, ptr }
%class.anon.2889 = type { ptr, ptr }
%class.anon.2890 = type { ptr, ptr }
%class.anon.2891 = type { ptr, ptr }
%class.anon.2904 = type { ptr, ptr }
%class.anon.2905 = type { ptr, ptr }
%class.anon.2901 = type { ptr, ptr }
%class.anon.2902 = type { ptr, ptr }
%class.anon.2903 = type { ptr, ptr }
%class.anon.2916 = type { ptr, ptr }
%class.anon.2917 = type { ptr, ptr }
%class.anon.2913 = type { ptr, ptr }
%class.anon.2914 = type { ptr, ptr }
%class.anon.2915 = type { ptr, ptr }
%class.anon.2928 = type { ptr, ptr }
%class.anon.2929 = type { ptr, ptr }
%class.anon.2925 = type { ptr, ptr }
%class.anon.2926 = type { ptr, ptr }
%class.anon.2927 = type { ptr, ptr }
%class.anon.2946 = type { ptr, ptr }
%class.anon.2947 = type { ptr, ptr }
%class.anon.2943 = type { ptr, ptr }
%class.anon.2944 = type { ptr, ptr }
%class.anon.2945 = type { ptr, ptr }
%class.anon.3025 = type { ptr, ptr }
%class.anon.3026 = type { ptr }
%class.anon.3027 = type { ptr, ptr }
%class.anon.3071 = type { ptr, ptr }
%class.anon.3072 = type { ptr }
%class.anon.3073 = type { ptr, ptr }
%class.anon.3083 = type { ptr, ptr }
%class.anon.3084 = type { ptr }
%class.anon.3085 = type { ptr, ptr }
%class.anon.3095 = type { ptr, ptr }
%class.anon.3096 = type { ptr }
%class.anon.3097 = type { ptr, ptr }
%class.anon.3107 = type { ptr, ptr }
%class.anon.3108 = type { ptr }
%class.anon.3109 = type { ptr, ptr }
%class.anon.3119 = type { ptr, ptr }
%class.anon.3120 = type { ptr }
%class.anon.3121 = type { ptr, ptr }
%class.anon.3181 = type { ptr, ptr }
%class.anon.3182 = type { ptr }
%class.anon.3183 = type { ptr, ptr }
%class.anon.3193 = type { ptr, ptr }
%class.anon.3194 = type { ptr }
%class.anon.3195 = type { ptr, ptr }
%class.anon.3205 = type { ptr, ptr }
%class.anon.3206 = type { ptr }
%class.anon.3207 = type { ptr, ptr }
%class.anon.3315 = type { ptr, ptr }
%class.anon.3316 = type { ptr }
%class.anon.3317 = type { ptr, ptr }
%class.anon.3325 = type { ptr, ptr }
%class.anon.3326 = type { ptr }
%class.anon.3327 = type { ptr, ptr }
%class.anon.3338 = type { ptr, ptr }
%class.anon.3339 = type { ptr, ptr }
%class.anon.3335 = type { ptr, ptr }
%class.anon.3336 = type { ptr, ptr }
%class.anon.3337 = type { ptr, ptr }
%class.anon.3351 = type { ptr, ptr }
%class.anon.3352 = type { ptr, ptr }
%class.anon.3348 = type { ptr, ptr }
%class.anon.3349 = type { ptr, ptr }
%class.anon.3350 = type { ptr, ptr }
%class.anon.3364 = type { ptr, ptr }
%class.anon.3365 = type { ptr, ptr }
%class.anon.3361 = type { ptr, ptr }
%class.anon.3362 = type { ptr, ptr }
%class.anon.3363 = type { ptr, ptr }
%class.anon.3377 = type { ptr, ptr }
%class.anon.3378 = type { ptr, ptr }
%class.anon.3374 = type { ptr, ptr }
%class.anon.3375 = type { ptr, ptr }
%class.anon.3376 = type { ptr, ptr }
%class.anon.3390 = type { ptr, ptr }
%class.anon.3391 = type { ptr, ptr }
%class.anon.3387 = type { ptr, ptr }
%class.anon.3388 = type { ptr, ptr }
%class.anon.3389 = type { ptr, ptr }
%class.anon.3403 = type { ptr, ptr }
%class.anon.3404 = type { ptr, ptr }
%class.anon.3400 = type { ptr, ptr }
%class.anon.3401 = type { ptr, ptr }
%class.anon.3402 = type { ptr, ptr }
%class.anon.3416 = type { ptr, ptr }
%class.anon.3417 = type { ptr, ptr }
%class.anon.3413 = type { ptr, ptr }
%class.anon.3414 = type { ptr, ptr }
%class.anon.3415 = type { ptr, ptr }
%class.anon.3429 = type { ptr, ptr }
%class.anon.3430 = type { ptr, ptr }
%class.anon.3426 = type { ptr, ptr }
%class.anon.3427 = type { ptr, ptr }
%class.anon.3428 = type { ptr, ptr }
%class.anon.3442 = type { ptr, ptr }
%class.anon.3443 = type { ptr, ptr }
%class.anon.3439 = type { ptr, ptr }
%class.anon.3440 = type { ptr, ptr }
%class.anon.3441 = type { ptr, ptr }
%class.anon.3455 = type { ptr, ptr }
%class.anon.3456 = type { ptr, ptr }
%class.anon.3452 = type { ptr, ptr }
%class.anon.3453 = type { ptr, ptr }
%class.anon.3454 = type { ptr, ptr }
%class.anon.3468 = type { ptr, ptr }
%class.anon.3469 = type { ptr, ptr }
%class.anon.3465 = type { ptr, ptr }
%class.anon.3466 = type { ptr, ptr }
%class.anon.3467 = type { ptr, ptr }
%class.anon.3481 = type { ptr, ptr }
%class.anon.3482 = type { ptr, ptr }
%class.anon.3478 = type { ptr, ptr }
%class.anon.3479 = type { ptr, ptr }
%class.anon.3480 = type { ptr, ptr }
%class.anon.3493 = type { ptr, ptr }
%class.anon.3494 = type { ptr, ptr }
%class.anon.3490 = type { ptr, ptr }
%class.anon.3491 = type { ptr, ptr }
%class.anon.3492 = type { ptr, ptr }
%class.anon.3506 = type { ptr, ptr }
%class.anon.3507 = type { ptr, ptr }
%class.anon.3503 = type { ptr, ptr }
%class.anon.3504 = type { ptr, ptr }
%class.anon.3505 = type { ptr, ptr }
%class.anon.3519 = type { ptr, ptr }
%class.anon.3520 = type { ptr, ptr }
%class.anon.3516 = type { ptr, ptr }
%class.anon.3517 = type { ptr, ptr }
%class.anon.3518 = type { ptr, ptr }
%class.anon.3532 = type { ptr, ptr }
%class.anon.3533 = type { ptr, ptr }
%class.anon.3529 = type { ptr, ptr }
%class.anon.3530 = type { ptr, ptr }
%class.anon.3531 = type { ptr, ptr }
%class.anon.3545 = type { ptr, ptr }
%class.anon.3546 = type { ptr, ptr }
%class.anon.3542 = type { ptr, ptr }
%class.anon.3543 = type { ptr, ptr }
%class.anon.3544 = type { ptr, ptr }
%class.anon.3558 = type { ptr, ptr }
%class.anon.3559 = type { ptr, ptr }
%class.anon.3555 = type { ptr, ptr }
%class.anon.3556 = type { ptr, ptr }
%class.anon.3557 = type { ptr, ptr }
%class.anon.3571 = type { ptr, ptr }
%class.anon.3572 = type { ptr, ptr }
%class.anon.3568 = type { ptr, ptr }
%class.anon.3569 = type { ptr, ptr }
%class.anon.3570 = type { ptr, ptr }
%class.anon.3584 = type { ptr, ptr }
%class.anon.3585 = type { ptr, ptr }
%class.anon.3581 = type { ptr, ptr }
%class.anon.3582 = type { ptr, ptr }
%class.anon.3583 = type { ptr, ptr }
%class.anon.3597 = type { ptr, ptr }
%class.anon.3598 = type { ptr, ptr }
%class.anon.3594 = type { ptr, ptr }
%class.anon.3595 = type { ptr, ptr }
%class.anon.3596 = type { ptr, ptr }
%class.anon.3610 = type { ptr, ptr }
%class.anon.3611 = type { ptr, ptr }
%class.anon.3607 = type { ptr, ptr }
%class.anon.3608 = type { ptr, ptr }
%class.anon.3609 = type { ptr, ptr }
%class.anon.3669 = type { ptr, ptr }
%class.anon.3670 = type { ptr }
%class.anon.3671 = type { ptr, ptr }
%"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry.1306" = type <{ %"struct.v8::internal::compiler::turboshaft::VariableData", %"class.v8::internal::compiler::turboshaft::OpIndex", i32, i32, [4 x i8] }>
%"struct.v8::internal::compiler::turboshaft::VariableData" = type { %"class.v8::internal::compiler::turboshaft::MaybeRegisterRepresentation", i8, %"class.v8::base::IntrusiveSetIndex" }
%"class.v8::base::IntrusiveSetIndex" = type { i64 }
%"class.v8::internal::compiler::NativeContextRef" = type { %"class.v8::internal::compiler::ContextRef" }
%"class.v8::internal::compiler::ContextRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::base::SmallVector.4019" = type { ptr, ptr, ptr, [16 x i8] }
%"class.std::reverse_iterator.4009" = type { ptr }
%class.anon.3888 = type { ptr }
%class.anon.3880 = type { ptr }
%"class.v8::internal::ZoneVector.1285" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::turboshaft::BlockIndex" = type { i32 }
%"struct.absl::container_internal::HashKey" = type { ptr, ptr }
%"class.v8::base::SmallVector.3884" = type { ptr, ptr, ptr, [64 x i8] }
%"class.v8::base::SmallVector.3957" = type { ptr, ptr, ptr, [256 x i8] }
%"class.v8::base::SmallVector.3959" = type { ptr, ptr, ptr, [128 x i8] }
%"struct.absl::container_internal::HashKey.4016" = type { ptr, ptr }
%"struct.std::__detail::_AllocNode" = type { ptr }
%"class.v8::internal::compiler::turboshaft::ConstOrV.4043" = type { %"class.std::optional.261", %"class.v8::internal::compiler::turboshaft::V.4042", [4 x i8] }
%"class.std::optional.261" = type { %"struct.std::_Optional_base.262" }
%"struct.std::_Optional_base.262" = type { %"struct.std::_Optional_payload.264" }
%"struct.std::_Optional_payload.264" = type { %"struct.std::_Optional_payload_base.base.266", [7 x i8] }
%"struct.std::_Optional_payload_base.base.266" = type <{ %"union.std::_Optional_payload_base<unsigned long>::_Storage", i8 }>
%"union.std::_Optional_payload_base<unsigned long>::_Storage" = type { i64 }
%"class.v8::internal::compiler::turboshaft::V.4042" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.v8::internal::compiler::turboshaft::WordRepresentation" = type { %"class.v8::internal::compiler::turboshaft::RegisterRepresentation" }
%"class.v8::internal::compiler::turboshaft::V.4059" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.std::optional.4103" = type { %"struct.std::_Optional_base.4104" }
%"struct.std::_Optional_base.4104" = type { %"struct.std::_Optional_payload.4106" }
%"struct.std::_Optional_payload.4106" = type { %"struct.std::_Optional_payload_base.base.4108", [3 x i8] }
%"struct.std::_Optional_payload_base.base.4108" = type { %"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::detail::BitfieldCheck>::_Storage", i8 }
%"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::detail::BitfieldCheck>::_Storage" = type { %"struct.v8::internal::compiler::turboshaft::detail::BitfieldCheck" }
%"struct.v8::internal::compiler::turboshaft::detail::BitfieldCheck" = type <{ %"class.v8::internal::compiler::turboshaft::V.4059", i32, i32, i8, [3 x i8] }>
%class.anon.4353 = type <{ ptr, %"class.v8::internal::compiler::turboshaft::V.4059", [4 x i8] }>
%class.anon.4361 = type { ptr, %"class.v8::internal::compiler::turboshaft::V.4059", i32 }
%"class.v8::base::SmallVector.4234" = type { ptr, ptr, ptr, [256 x i8] }
%"class.v8::internal::compiler::UnparkedScopeIfNeeded" = type { %"class.std::optional.233" }
%"class.std::optional.233" = type { %"struct.std::_Optional_base.234" }
%"struct.std::_Optional_base.234" = type { %"struct.std::_Optional_payload.236" }
%"struct.std::_Optional_payload.236" = type { %"struct.std::_Optional_payload.base.240", [7 x i8] }
%"struct.std::_Optional_payload.base.240" = type { %"struct.std::_Optional_payload_base.base.239" }
%"struct.std::_Optional_payload_base.base.239" = type <{ %"union.std::_Optional_payload_base<v8::internal::UnparkedScope>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::internal::UnparkedScope>::_Storage" = type { %"class.v8::internal::UnparkedScope" }
%"class.v8::internal::UnparkedScope" = type { ptr }
%"struct.v8::internal::compiler::turboshaft::detail::OptionMatch" = type { %"class.std::variant.4119" }
%"class.std::variant.4119" = type { %"struct.std::__detail::__variant::_Variant_base.base.4137", [7 x i8] }
%"struct.std::__detail::__variant::_Variant_base.base.4137" = type { %"struct.std::__detail::__variant::_Move_assign_base.base.4136" }
%"struct.std::__detail::__variant::_Move_assign_base.base.4136" = type { %"struct.std::__detail::__variant::_Copy_assign_base.base.4135" }
%"struct.std::__detail::__variant::_Copy_assign_base.base.4135" = type { %"struct.std::__detail::__variant::_Move_ctor_base.base.4134" }
%"struct.std::__detail::__variant::_Move_ctor_base.base.4134" = type { %"struct.std::__detail::__variant::_Copy_ctor_base.base.4133" }
%"struct.std::__detail::__variant::_Copy_ctor_base.base.4133" = type { %"struct.std::__detail::__variant::_Variant_storage.base.4132" }
%"struct.std::__detail::__variant::_Variant_storage.base.4132" = type <{ %"union.std::__detail::__variant::_Variadic_union.4126", i8 }>
%"union.std::__detail::__variant::_Variadic_union.4126" = type { %"union.std::__detail::__variant::_Variadic_union.4128" }
%"union.std::__detail::__variant::_Variadic_union.4128" = type { %"union.std::__detail::__variant::_Variadic_union.4130" }
%"union.std::__detail::__variant::_Variadic_union.4130" = type { %"struct.std::__detail::__variant::_Uninitialized.4131" }
%"struct.std::__detail::__variant::_Uninitialized.4131" = type { ptr }
%"struct.v8::internal::compiler::turboshaft::detail::OptionMatch.4142" = type { %"class.std::variant.4143" }
%"class.std::variant.4143" = type { %"struct.std::__detail::__variant::_Variant_base.base.4161", [7 x i8] }
%"struct.std::__detail::__variant::_Variant_base.base.4161" = type { %"struct.std::__detail::__variant::_Move_assign_base.base.4160" }
%"struct.std::__detail::__variant::_Move_assign_base.base.4160" = type { %"struct.std::__detail::__variant::_Copy_assign_base.base.4159" }
%"struct.std::__detail::__variant::_Copy_assign_base.base.4159" = type { %"struct.std::__detail::__variant::_Move_ctor_base.base.4158" }
%"struct.std::__detail::__variant::_Move_ctor_base.base.4158" = type { %"struct.std::__detail::__variant::_Copy_ctor_base.base.4157" }
%"struct.std::__detail::__variant::_Copy_ctor_base.base.4157" = type { %"struct.std::__detail::__variant::_Variant_storage.base.4156" }
%"struct.std::__detail::__variant::_Variant_storage.base.4156" = type <{ %"union.std::__detail::__variant::_Variadic_union.4150", i8 }>
%"union.std::__detail::__variant::_Variadic_union.4150" = type { %"union.std::__detail::__variant::_Variadic_union.4152" }
%"union.std::__detail::__variant::_Variadic_union.4152" = type { %"union.std::__detail::__variant::_Variadic_union.4154" }
%"union.std::__detail::__variant::_Variadic_union.4154" = type { %"struct.std::__detail::__variant::_Uninitialized.4155" }
%"struct.std::__detail::__variant::_Uninitialized.4155" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.v8::base::SmallVector.4545" = type { ptr, ptr, ptr, [128 x i8] }
%class.anon.4440 = type { ptr }
%"class.v8::base::SmallVector.4535" = type { ptr, ptr, ptr, [64 x i8] }
%"struct.std::pair.1265" = type { i32, %"class.v8::internal::compiler::turboshaft::SnapshotTableKey" }
%"struct.std::pair.4449" = type <{ %"class.absl::container_internal::raw_hash_set<absl::container_internal::FlatHashMapPolicy<v8::internal::compiler::turboshaft::OpIndex, v8::internal::maglev::ValueRepresentation>, absl::hash_internal::Hash<v8::internal::compiler::turboshaft::OpIndex>, std::equal_to<v8::internal::compiler::turboshaft::OpIndex>, v8::internal::ZoneAllocator<std::pair<const v8::internal::compiler::turboshaft::OpIndex, v8::internal::maglev::ValueRepresentation>>>::iterator", i8, [7 x i8] }>
%"class.absl::container_internal::raw_hash_set<absl::container_internal::FlatHashMapPolicy<v8::internal::compiler::turboshaft::OpIndex, v8::internal::maglev::ValueRepresentation>, absl::hash_internal::Hash<v8::internal::compiler::turboshaft::OpIndex>, std::equal_to<v8::internal::compiler::turboshaft::OpIndex>, v8::internal::ZoneAllocator<std::pair<const v8::internal::compiler::turboshaft::OpIndex, v8::internal::maglev::ValueRepresentation>>>::iterator" = type { ptr, %union.anon.4448 }
%union.anon.4448 = type { ptr }
%"class.v8::internal::compiler::turboshaft::V.3883" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.v8::internal::compiler::turboshaft::Label" = type { %"class.v8::internal::compiler::turboshaft::LabelBase.base", [7 x i8] }
%"class.v8::internal::compiler::turboshaft::LabelBase.base" = type <{ %"struct.v8::internal::compiler::turboshaft::LabelBase<false, v8::internal::Union<v8::internal::Smi, v8::internal::HeapNumber, v8::internal::Undefined>>::BlockData", i8 }>
%"struct.v8::internal::compiler::turboshaft::LabelBase<false, v8::internal::Union<v8::internal::Smi, v8::internal::HeapNumber, v8::internal::Undefined>>::BlockData" = type { ptr, %"class.v8::base::SmallVector.4471", %"class.std::tuple.4472", %"class.v8::SourceLocation" }
%"class.v8::base::SmallVector.4471" = type { ptr, ptr, ptr, [32 x i8] }
%"class.std::tuple.4472" = type { %"struct.std::_Tuple_impl.4473" }
%"struct.std::_Tuple_impl.4473" = type { %"struct.std::_Head_base.4474" }
%"struct.std::_Head_base.4474" = type { %"class.v8::base::SmallVector.4475" }
%"class.v8::base::SmallVector.4475" = type { ptr, ptr, ptr, [8 x i8] }
%"class.v8::SourceLocation" = type { %"struct.std::source_location" }
%"struct.std::source_location" = type { ptr }
%"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::compiler::turboshaft::BlockOriginTrackingReducer, v8::internal::compiler::turboshaft::TurbolevEarlyLoweringReducer, v8::internal::compiler::turboshaft::MachineOptimizationReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::RequiredOptimizationReducer, v8::internal::compiler::turboshaft::ValueNumberingReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState" = type { ptr, ptr }
%"class.std::tuple.4489" = type { %"struct.std::_Tuple_impl.base.4493", [3 x i8] }
%"struct.std::_Tuple_impl.base.4493" = type <{ %"struct.std::_Tuple_impl.4491", %"struct.std::_Head_base.3979" }>
%"struct.std::_Tuple_impl.4491" = type { %"struct.std::_Head_base.4492" }
%"struct.std::_Head_base.4492" = type { %"class.v8::internal::compiler::turboshaft::V.4447" }
%"class.v8::internal::compiler::turboshaft::V.4447" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"struct.std::_Head_base.3979" = type { i8 }
%"struct.absl::container_internal::HashKey.4453" = type { ptr, ptr }
%"class.v8::base::SmallVector.4542" = type { ptr, ptr, ptr, [32 x i8] }
%"class.std::tuple.5266" = type { %"struct.std::_Tuple_impl.5267" }
%"struct.std::_Tuple_impl.5267" = type { %"struct.std::_Head_base.5268" }
%"struct.std::_Head_base.5268" = type { %"class.v8::internal::compiler::turboshaft::V.4446" }
%"class.v8::internal::compiler::turboshaft::V.4446" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.std::tuple.3873" = type { i8 }
%"class.v8::internal::compiler::turboshaft::Label.4559" = type { %"class.v8::internal::compiler::turboshaft::LabelBase.base.4561", [7 x i8] }
%"class.v8::internal::compiler::turboshaft::LabelBase.base.4561" = type <{ %"struct.v8::internal::compiler::turboshaft::LabelBase<false>::BlockData", i8 }>
%"struct.v8::internal::compiler::turboshaft::LabelBase<false>::BlockData" = type { ptr, %"class.v8::base::SmallVector.4471", [8 x i8], %"class.v8::SourceLocation" }
%"class.std::tuple.4532" = type { %"struct.std::_Tuple_impl.4533" }
%"struct.std::_Tuple_impl.4533" = type { %"struct.std::_Head_base.3979" }
%"class.v8::internal::interpreter::Register" = type { i32 }
%"class.v8::internal::compiler::turboshaft::FrameStateData::Builder" = type <{ %"class.v8::base::SmallVector.4572", %"class.v8::base::SmallVector.4573", %"class.v8::base::SmallVector.4574", %"class.v8::base::SmallVector.3959", i8, [7 x i8] }>
%"class.v8::base::SmallVector.4572" = type { ptr, ptr, ptr, [32 x i8] }
%"class.v8::base::SmallVector.4573" = type { ptr, ptr, ptr, [64 x i8] }
%"class.v8::base::SmallVector.4574" = type { ptr, ptr, ptr, [64 x i8] }
%class.anon.4576 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::JSFunctionRef" = type { %"class.v8::internal::compiler::JSObjectRef" }
%"class.v8::internal::compiler::JSObjectRef" = type { %"class.v8::internal::compiler::JSReceiverRef" }
%"class.v8::internal::compiler::JSReceiverRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::internal::compiler::SharedFunctionInfoRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::internal::compiler::FixedDoubleArrayRef" = type { %"class.v8::internal::compiler::FixedArrayBaseRef" }
%"class.v8::internal::compiler::FixedArrayBaseRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::internal::compiler::MapRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::base::SmallVector.3913" = type { ptr, ptr, ptr, [32 x i8] }
%"struct.v8::internal::compiler::FieldAccess" = type { i8, i32, %"class.v8::internal::MaybeHandle.4657", %"class.v8::internal::compiler::OptionalRef.302", %"class.v8::internal::compiler::Type", %"class.v8::internal::MachineType", i8, ptr, %"struct.v8::internal::compiler::ConstFieldInfo", i8, i16, i8, i8, i8, i64 }
%"class.v8::internal::MaybeHandle.4657" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::compiler::OptionalRef.302" = type { ptr }
%"class.v8::internal::compiler::Type" = type { i64 }
%"class.v8::internal::MachineType" = type { i8, i8 }
%"struct.v8::internal::compiler::ConstFieldInfo" = type { %"class.v8::internal::compiler::OptionalRef.302" }
%"class.v8::internal::compiler::OptionalRef<v8::internal::compiler::MapRef>::ArrowOperatorHelper" = type { %"class.v8::internal::compiler::MapRef" }
%"class.std::tuple.4658" = type { %"struct.std::_Tuple_impl.base.4670", i8 }
%"struct.std::_Tuple_impl.base.4670" = type { %"struct.std::_Tuple_impl.base.4668", %"struct.std::_Head_base.4669" }
%"struct.std::_Tuple_impl.base.4668" = type { %"struct.std::_Tuple_impl.base.4666", %"struct.std::_Head_base.4667" }
%"struct.std::_Tuple_impl.base.4666" = type <{ %"struct.std::_Tuple_impl.4662", %"struct.std::_Head_base.4069" }>
%"struct.std::_Tuple_impl.4662" = type { %"struct.std::_Tuple_impl.4663", %"struct.std::_Head_base.4665" }
%"struct.std::_Tuple_impl.4663" = type { %"struct.std::_Head_base.4664" }
%"struct.std::_Head_base.4664" = type { i8 }
%"struct.std::_Head_base.4665" = type { i32 }
%"struct.std::_Head_base.4069" = type { %"class.v8::internal::compiler::turboshaft::RegisterRepresentation" }
%"struct.std::_Head_base.4667" = type { %"class.v8::internal::compiler::turboshaft::MemoryRepresentation" }
%"class.v8::internal::compiler::turboshaft::MemoryRepresentation" = type { i8 }
%"struct.std::_Head_base.4669" = type { %"struct.v8::internal::compiler::turboshaft::LoadOp::Kind" }
%"struct.v8::internal::compiler::turboshaft::LoadOp::Kind" = type { i8 }
%"class.v8::internal::ZoneCompactSet" = type { %"class.v8::base::PointerWithPayload" }
%"class.v8::base::PointerWithPayload" = type { i64 }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"class.v8::internal::compiler::InternalizedStringRef" = type { %"class.v8::internal::compiler::StringRef" }
%"class.v8::internal::compiler::StringRef" = type { %"class.v8::internal::compiler::NameRef" }
%"class.v8::internal::compiler::NameRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::internal::compiler::JSTypedArrayRef" = type { %"class.v8::internal::compiler::JSObjectRef" }
%"class.std::tuple.4794" = type { %"struct.std::_Tuple_impl.4795" }
%"struct.std::_Tuple_impl.4795" = type { %"struct.std::_Tuple_impl.4796", %"struct.std::_Head_base.4800" }
%"struct.std::_Tuple_impl.4796" = type { %"struct.std::_Tuple_impl.4797", %"struct.std::_Head_base.4799" }
%"struct.std::_Tuple_impl.4797" = type { %"struct.std::_Head_base.4798" }
%"struct.std::_Head_base.4798" = type { %"class.v8::internal::compiler::turboshaft::V.4042" }
%"struct.std::_Head_base.4799" = type { %"class.v8::internal::compiler::turboshaft::V.470" }
%"struct.std::_Head_base.4800" = type { %"class.v8::internal::compiler::turboshaft::V.3870" }
%"class.v8::internal::compiler::turboshaft::V.3870" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.v8::internal::CallInterfaceDescriptor" = type { ptr }
%"class.v8::base::SmallVector.4801" = type <{ ptr, ptr, ptr, [12 x i8], [4 x i8] }>
%class.anon.4823 = type { ptr }
%"class.std::tuple.4816" = type { %"struct.std::_Tuple_impl.4817" }
%"struct.std::_Tuple_impl.4817" = type { %"struct.std::_Head_base.4818" }
%"struct.std::_Head_base.4818" = type { %"class.v8::internal::compiler::turboshaft::V.470" }
%"class.v8::internal::compiler::turboshaft::GraphBuildingNodeProcessor::ThrowingScope" = type { ptr, ptr }
%class.anon.4815 = type { ptr, ptr, %"class.v8::internal::maglev::MaglevCompilationUnit" }
%"class.v8::internal::maglev::MaglevCompilationUnit" = type <{ ptr, ptr, %"class.v8::internal::compiler::OptionalRef", %"class.v8::internal::compiler::OptionalRef.121", %"class.v8::internal::compiler::OptionalRef.122", i32, i16, i16, i32, [4 x i8] }>
%"class.v8::internal::compiler::OptionalRef" = type { ptr }
%"class.v8::internal::compiler::OptionalRef.121" = type { ptr }
%"class.v8::internal::compiler::OptionalRef.122" = type { ptr }
%"class.v8::base::SmallVector.4819" = type <{ ptr, ptr, ptr, [20 x i8], [4 x i8] }>
%"class.v8::base::SmallVector.4824" = type { ptr, ptr, ptr, [16 x i8] }
%"class.std::tuple.4827" = type { %"struct.std::_Tuple_impl.4828" }
%"struct.std::_Tuple_impl.4828" = type { %"struct.std::_Tuple_impl.4829", %"struct.std::_Head_base.4818" }
%"struct.std::_Tuple_impl.4829" = type { %"struct.std::_Head_base.4799" }
%"class.v8::base::SmallVector.4830" = type { ptr, ptr, ptr, [24 x i8] }
%"class.v8::internal::compiler::ElementsTransitionWithMultipleSources" = type { %"class.v8::internal::ZoneCompactSet", %"class.v8::internal::compiler::MapRef", %"struct.v8::internal::compiler::FeedbackSource" }
%"class.v8::base::Vector.4536" = type { ptr, i64 }
%"class.v8::base::Vector.3877" = type { ptr, i64 }
%"class.v8::internal::compiler::FunctionTemplateInfoRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::ApiFunction" = type { i64 }
%"class.v8::internal::compiler::turboshaft::Label.4912" = type { %"class.v8::internal::compiler::turboshaft::LabelBase.base.4918", [7 x i8] }
%"class.v8::internal::compiler::turboshaft::LabelBase.base.4918" = type <{ %"struct.v8::internal::compiler::turboshaft::LabelBase<false, v8::internal::Object>::BlockData", i8 }>
%"struct.v8::internal::compiler::turboshaft::LabelBase<false, v8::internal::Object>::BlockData" = type { ptr, %"class.v8::base::SmallVector.4471", %"class.std::tuple.4914", %"class.v8::SourceLocation" }
%"class.std::tuple.4914" = type { %"struct.std::_Tuple_impl.4915" }
%"struct.std::_Tuple_impl.4915" = type { %"struct.std::_Head_base.4916" }
%"struct.std::_Head_base.4916" = type { %"class.v8::base::SmallVector.4917" }
%"class.v8::base::SmallVector.4917" = type { ptr, ptr, ptr, [8 x i8] }
%"class.std::tuple.4920" = type { %"struct.std::_Tuple_impl.base.4922", [3 x i8] }
%"struct.std::_Tuple_impl.base.4922" = type <{ %"struct.std::_Tuple_impl.4829", %"struct.std::_Head_base.3979" }>
%"class.std::tuple.4932" = type { %"struct.std::_Tuple_impl.4933" }
%"struct.std::_Tuple_impl.4933" = type { %"struct.std::_Head_base.4934" }
%"struct.std::_Head_base.4934" = type { %"class.v8::internal::compiler::turboshaft::V.4456" }
%"class.v8::internal::compiler::turboshaft::V.4456" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.v8::internal::compiler::JSGlobalProxyRef" = type { %"class.v8::internal::compiler::JSObjectRef" }
%"class.v8::base::SmallVector.4935" = type { ptr, ptr, ptr, [8 x i8] }
%"class.v8::internal::compiler::ObjectBoilerplateDescriptionRef" = type { %"class.v8::internal::compiler::FixedArrayRef" }
%"class.v8::internal::compiler::FixedArrayRef" = type { %"class.v8::internal::compiler::FixedArrayBaseRef" }
%"class.std::tuple.4950" = type { %"struct.std::_Tuple_impl.4951" }
%"struct.std::_Tuple_impl.4951" = type { %"struct.std::_Tuple_impl.4952", %"struct.std::_Head_base.4954" }
%"struct.std::_Tuple_impl.4952" = type { %"struct.std::_Head_base.4953" }
%"struct.std::_Head_base.4953" = type { %"class.v8::internal::compiler::turboshaft::V.525" }
%"struct.std::_Head_base.4954" = type { %"class.v8::internal::compiler::turboshaft::V.4948" }
%"class.v8::internal::compiler::turboshaft::V.4948" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.v8::internal::compiler::ScopeInfoRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.std::tuple.4960" = type { %"struct.std::_Tuple_impl.4961" }
%"struct.std::_Tuple_impl.4961" = type { %"struct.std::_Tuple_impl.4962", %"struct.std::_Head_base.4964" }
%"struct.std::_Tuple_impl.4962" = type { %"struct.std::_Head_base.4963" }
%"struct.std::_Head_base.4963" = type { %"class.v8::internal::compiler::turboshaft::V.4958" }
%"class.v8::internal::compiler::turboshaft::V.4958" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"struct.std::_Head_base.4964" = type { %"class.v8::internal::compiler::turboshaft::V.4957" }
%"class.v8::internal::compiler::turboshaft::V.4957" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.std::tuple.5037" = type { %"struct.std::_Tuple_impl.5038" }
%"struct.std::_Tuple_impl.5038" = type { %"struct.std::_Tuple_impl.5039", %"struct.std::_Head_base.4818" }
%"struct.std::_Tuple_impl.5039" = type { %"struct.std::_Head_base.5040" }
%"struct.std::_Head_base.5040" = type { %"class.v8::internal::compiler::turboshaft::V.464" }
%"class.std::tuple.5007" = type { %"struct.std::_Tuple_impl.5008" }
%"struct.std::_Tuple_impl.5008" = type { %"struct.std::_Head_base.5009" }
%"struct.std::_Head_base.5009" = type { %"class.v8::internal::compiler::turboshaft::V.4591" }
%"class.v8::internal::compiler::turboshaft::V.4591" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.std::tuple.4993" = type { %"struct.std::_Tuple_impl.4994" }
%"struct.std::_Tuple_impl.4994" = type { %"struct.std::_Head_base.4995" }
%"struct.std::_Head_base.4995" = type { %"class.v8::internal::compiler::turboshaft::V.4731" }
%"class.v8::internal::compiler::turboshaft::V.4731" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"class.v8::internal::compiler::turboshaft::Label.4981" = type { %"class.v8::internal::compiler::turboshaft::LabelBase.base.4987", [7 x i8] }
%"class.v8::internal::compiler::turboshaft::LabelBase.base.4987" = type <{ %"struct.v8::internal::compiler::turboshaft::LabelBase<false, v8::internal::Boolean>::BlockData", i8 }>
%"struct.v8::internal::compiler::turboshaft::LabelBase<false, v8::internal::Boolean>::BlockData" = type { ptr, %"class.v8::base::SmallVector.4471", %"class.std::tuple.4983", %"class.v8::SourceLocation" }
end_hunk_1
begin_hunk_2
$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev25Int32SubtractWithOverflowERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE30Word32SignedSubDeoptOnOverflowENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESL_NS2_1VINS2_10FrameStateEEENS1_14FeedbackSourceENS1_21CheckForMinusZeroModeE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev25Int32MultiplyWithOverflowERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE30Word32SignedMulDeoptOnOverflowENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESL_NS2_1VINS2_10FrameStateEEENS1_14FeedbackSourceENS1_21CheckForMinusZeroModeE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev23Int32DivideWithOverflowERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE30Word32SignedDivDeoptOnOverflowENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESL_NS2_1VINS2_10FrameStateEEENS1_14FeedbackSourceENS1_21CheckForMinusZeroModeE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev24Int32ModulusWithOverflowERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE30Word32SignedModDeoptOnOverflowENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESL_NS2_1VINS2_10FrameStateEEENS1_14FeedbackSourceENS1_21CheckForMinusZeroModeE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev15Int32BitwiseAndERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev14Int32BitwiseOrERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev15Int32BitwiseXorERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseXorENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESL_ = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev14Int32ShiftLeftERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev15Int32ShiftRightERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE26Word32ShiftRightArithmeticENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESL_ = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev22Int32ShiftRightLogicalERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev15Int32BitwiseNotERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev23Int32NegateWithOverflowERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev26Int32IncrementWithOverflowERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev26Int32DecrementWithOverflowERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor14ConvertCompareINS2_12WordWithBitsILm32EEEEENS2_1VIS6_EENS0_6maglev5InputESA_9OperationNS3_4SignE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev10Float64AddERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE16ReduceFloatBinopENS2_1VINS2_13UntaggedUnionIJNS2_13FloatWithBitsILm32EEENSR_ILm64EEEEEEEESV_NS2_12FloatBinopOp4KindENS2_19FloatRepresentationE = comdat any

$_ZNK2v88internal8compiler10turboshaft16OperationMatcher10MatchFloatENS2_1VINS2_3AnyEEEd = comdat any

$_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8FloatAddENS2_1VINS2_13UntaggedUnionIJNS2_13FloatWithBitsILm32EEENSK_ILm64EEEEEEEESO_NS2_19FloatRepresentationE = comdat any

$_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8FloatMulENS2_1VINS2_13UntaggedUnionIJNS2_13FloatWithBitsILm32EEENSK_ILm64EEEEEEEESO_NS2_19FloatRepresentationE = comdat any

$_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13FloatConstantEdNS2_19FloatRepresentationE = comdat any

$_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_12FloatBinopOpEEENS2_7OpIndexESM_ = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_12FloatBinopOpEJNS2_14ShadowyOpIndexESJ_NSI_4KindENS2_19FloatRepresentationEEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_12FloatBinopOpEEEPNSJ_5EntryERKT_Pm = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev15Float64SubtractERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev15Float64MultiplyERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev13Float64DivideERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev19Float64ExponentiateERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev14Float64ModulusERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev12Float64RoundERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor14ConvertCompareINS2_13FloatWithBitsILm64EEEEENS2_1VINS2_12WordWithBitsILm32EEEEENS0_6maglev5InputESC_9OperationNS3_4SignE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev16Float64ToBooleanERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev19Float64Ieee754UnaryERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev20Float64Ieee754BinaryERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev19CheckedSmiIncrementERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev19CheckedSmiDecrementERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev10GenericAddERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_14GenericBinopOpEJNS2_14ShadowyOpIndexESJ_SJ_SJ_NSI_4KindENS1_16LazyDeoptOnThrowEEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev15GenericSubtractERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev15GenericMultiplyERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev13GenericDivideERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev14GenericModulusERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev19GenericExponentiateERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev17GenericBitwiseAndERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev16GenericBitwiseOrERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev17GenericBitwiseXorERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev16GenericShiftLeftERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev17GenericShiftRightERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev24GenericShiftRightLogicalERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev17GenericBitwiseNotERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_13GenericUnopOpEJNS2_14ShadowyOpIndexESJ_SJ_NSI_4KindENS1_16LazyDeoptOnThrowEEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev13GenericNegateERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev16GenericIncrementERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev16GenericDecrementERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev12GenericEqualERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev18GenericStrictEqualERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev15GenericLessThanERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev22GenericLessThanOrEqualERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev18GenericGreaterThanERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev25GenericGreaterThanOrEqualERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev43BuiltinStringPrototypeCharCodeOrCodePointAtERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev33BuiltinSeqOneByteStringCharCodeAtERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev23CreateFastArrayElementsERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev13NewConsStringERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_15NewConsStringOpEEENS2_7OpIndexESM_ = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_15NewConsStringOpEJNS2_14ShadowyOpIndexESJ_SJ_EEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_15NewConsStringOpEEEPNSJ_5EntryERKT_Pm = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev15MapPrototypeGetERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_22FindOrderedHashEntryOpEJNS2_14ShadowyOpIndexESJ_NSI_4KindEEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11LoadElementINS0_6ObjectESJ_EENS2_1VIT_EENSK_IT0_EERKNS1_13ElementAccessENSK_INS2_12WordWithBitsILm64EEEEEb = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev23MapPrototypeGetInt32KeyERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev15SetPrototypeHasERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_8ReturnOpEJNS2_14ShadowyOpIndexENS2_27ShadowyOpIndexVectorWrapperEbEEENS2_7OpIndexEDpT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev5DeoptERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev6SwitchERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev11BranchIfSmiERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev21BranchIfToBooleanTrueERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev27BranchIfIntPtrToBooleanTrueERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev28BranchIfFloat64ToBooleanTrueERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev21BranchIfFloat64IsHoleERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev22BranchIfReferenceEqualERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev23BranchIfUndefinedOrNullERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev20BranchIfUndetectableERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev18BranchIfJSReceiverERKNS4_15ProcessingStateE = comdat any

$_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor11FixLoopPhisEPNS0_6maglev10BasicBlockE = comdat any

$_ZTVN2v88internal12StdoutStreamE = comdat any

$_ZTTN2v88internal12StdoutStreamE = comdat any

$_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE = comdat any

$_ZTCN2v88internal12StdoutStreamE0_So = comdat any

$_ZTVN2v88internal8OFStreamE = comdat any

$_ZTAXtlN2v84base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEE = comdat any

$_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE18GetPolicyFunctionsEvE5value = comdat any

$_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE18GetPolicyFunctionsEvE5value = comdat any

$_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE18GetPolicyFunctionsEvE5value = comdat any

$_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array = comdat any

$_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE1ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array = comdat any

$_ZN2v88internal8compiler10turboshaft19ToNumberOrNumericOp8kOutRepsE = comdat any

$_ZN2v88internal8compiler10turboshaft19ToNumberOrNumericOp18kOutputRepsStorageE = comdat any

$_ZN2v88internal8compiler10turboshaft14GenericBinopOp8kOutRepsE = comdat any

$_ZN2v88internal8compiler10turboshaft14GenericBinopOp18kOutputRepsStorageE = comdat any

$_ZN2v88internal8compiler10turboshaft13GenericUnopOp8kOutRepsE = comdat any

$_ZN2v88internal8compiler10turboshaft13GenericUnopOp18kOutputRepsStorageE = comdat any

@.str = private unnamed_addr constant [50 x i8] c"\0A----- Bytecode before MaglevGraphBuilding -----\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Function: \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\0A----- \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" -----\00", align 1
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str.4 = private unnamed_addr constant [17 x i8] c"After truncation\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"After phi untagging\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"After escape analysis and dead node sweeping\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.8 = private unnamed_addr constant [123 x i8] c"compilation_info->toplevel_compilation_unit()->parameter_count() == linkage->GetIncomingDescriptor()->ParameterSlotCount()\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"After graph building\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.11 = private unnamed_addr constant [103 x i8] c"could not open file. If on Android, try passing --redirect-code-traces-to=/sdcard/Download/<file-name>\00", align 1
@_ZTVN2v88internal12StdoutStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZN2v88internal12StdoutStreamD1Ev, ptr @_ZN2v88internal12StdoutStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal12StdoutStreamD1Ev, ptr @_ZTv0_n24_N2v88internal12StdoutStreamD0Ev] }, comdat, align 8
@_ZTTN2v88internal12StdoutStreamE = linkonce_odr hidden unnamed_addr constant [6 x ptr] [ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVN2v88internal12StdoutStreamE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_So, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_So, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVN2v88internal12StdoutStreamE, i32 0, i32 1, i32 3)], comdat, align 8
@_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZN2v88internal8OFStreamD1Ev, ptr @_ZN2v88internal8OFStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal8OFStreamD1Ev, ptr @_ZTv0_n24_N2v88internal8OFStreamD0Ev] }, comdat, align 8
@_ZTCN2v88internal12StdoutStreamE0_So = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZNSoD1Ev, ptr @_ZNSoD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_NSoD1Ev, ptr @_ZTv0_n24_NSoD0Ev] }, comdat, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVN2v88internal8OFStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 80 to ptr), ptr null, ptr null, ptr @_ZN2v88internal8OFStreamD1Ev, ptr @_ZN2v88internal8OFStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -80 to ptr), ptr inttoptr (i64 -80 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal8OFStreamD1Ev, ptr @_ZTv0_n24_N2v88internal8OFStreamD0Ev] }, comdat, align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@.str.14 = private unnamed_addr constant [19 x i8] c"(data_) != nullptr\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@_ZTAXtlN2v84base3tmp13StringLiteralILm11EEEtlSt5arrayIcLm11EEtlA11_cLc103ELc114ELc97ELc112ELc104ELc45ELc122ELc111ELc110ELc101EEEEE = linkonce_odr hidden constant %"class.v8::base::tmp::StringLiteral" { %"struct.std::array" { [11 x i8] c"graph-zone\00" } }, comdat
@.str.18 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.22 = private unnamed_addr constant [23 x i8] c"* Removing store node \00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c" to allocation \00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"* Removing allocation node \00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::container_internal::PolicyFunctions" { i32 4, i32 48, i32 48, i16 8, i8 0, i8 0, ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft10BlockIndexEEES8_Lb1EEEmPKvPvm, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE19transfer_n_slots_fnEPvST_ST_m, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m, ptr @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSY_PFvSY_hmmE }, comdat, align 8
@_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::container_internal::PolicyFunctions" { i32 4, i32 8, i32 8, i16 4, i8 1, i8 0, ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEES8_Lb1EEEmPKvPvm, ptr @_ZN4absl18container_internal20TransferNRelocatableILm8EEEvPvS2_S2_m, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m, ptr @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSR_PFvSR_hmmE }, comdat, align 8
@_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::container_internal::PolicyFunctions" { i32 8, i32 16, i32 16, i16 8, i8 1, i8 0, ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS0_6HashEqIPKN2v88internal6maglev10BasicBlockEvE4HashES8_Lb0EEEmPKvPvm, ptr @_ZN4absl18container_internal20TransferNRelocatableILm16EEEvPvS2_S2_m, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE, ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m, ptr @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb, ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSP_PFvSP_hmmE }, comdat, align 8
@_ZN4absl13hash_internal15MixingHashState5kSeedE = external constant ptr, align 8
@.str.26 = private unnamed_addr constant [12 x i8] c"%new.target\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"std::numeric_limits<int>::max() >= length_\00", align 1
@.str.28 = private unnamed_addr constant [83 x i8] c"new_capacity < std::numeric_limits<uint32_t>::max() / sizeof(OperationStorageSlot)\00", align 1
@.str.30 = private unnamed_addr constant [60 x i8] c"predecessors.size() <= std::numeric_limits<uint32_t>::max()\00", align 1
@.str.31 = private unnamed_addr constant [81 x i8] c"merge_values_.size() + predecessor_count <= std::numeric_limits<uint32_t>::max()\00", align 1
@.str.32 = private unnamed_addr constant [53 x i8] c"std::numeric_limits<size_t>::max() - size() >= count\00", align 1
@_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE = internal unnamed_addr constant [172 x i64] [i64 24, i64 16, i64 16, i64 4, i64 8, i64 24, i64 32, i64 16, i64 8, i64 16, i64 16, i64 16, i64 8, i64 8, i64 8, i64 8, i64 12, i64 8, i64 16, i64 16, i64 8, i64 4, i64 8, i64 32, i64 32, i64 32, i64 24, i64 12, i64 16, i64 8, i64 24, i64 24, i64 8, i64 4, i64 4, i64 20, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 12, i64 12, i64 24, i64 36, i64 8, i64 12, i64 8, i64 8, i64 8, i64 8, i64 8, i64 4, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 4, i64 8, i64 8, i64 8, i64 16, i64 4, i64 12, i64 16, i64 4, i64 24, i64 8, i64 8, i64 16, i64 8, i64 16, i64 12, i64 4, i64 4, i64 4, i64 4, i64 8, i64 16, i64 24, i64 4, i64 24, i64 4, i64 8, i64 4, i64 16, i64 12, i64 12, i64 8, i64 16, i64 4, i64 4, i64 4, i64 8, i64 4, i64 4, i64 12, i64 8, i64 8, i64 8, i64 16, i64 32, i64 4, i64 32, i64 16, i64 8, i64 8, i64 8, i64 4, i64 8, i64 24, i64 8, i64 8, i64 8, i64 24, i64 8, i64 24, i64 8, i64 24, i64 8, i64 4, i64 40, i64 8, i64 8, i64 4, i64 4, i64 4, i64 8, i64 8, i64 4, i64 8, i64 24, i64 12, i64 8, i64 8, i64 16, i64 8, i64 8, i64 4, i64 4, i64 4, i64 4, i64 4, i64 8, i64 4, i64 4, i64 24, i64 32, i64 40, i64 8, i64 40, i64 8, i64 8, i64 8, i64 12, i64 8, i64 8, i64 8], align 16
@_ZN4absl18container_internal11kSooControlE = external constant [2 x i8], align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"masked_value & ~mask == 0\00", align 1
@_ZN2v88internal8compiler10turboshaft19SupportedOperations9instance_E = external local_unnamed_addr global %"class.v8::internal::compiler::turboshaft::SupportedOperations", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"Missing \00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"ObjectData for \00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"../../deps/v8/src/compiler/js-heap-broker.h\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"unimplemented code\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"!IsAnyHole(*value)\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"IsMap()\00", align 1
@_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array = linkonce_odr hidden local_unnamed_addr constant %"struct.std::array.4627" zeroinitializer, comdat, align 1
@_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE1ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array = linkonce_odr hidden local_unnamed_addr constant { [2 x { i8 }] } { [2 x { i8 }] [{ i8 } { i8 1 }, { i8 } zeroinitializer] }, comdat, align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"!is_null()\00", align 1
@_ZN2v88internal8compiler10turboshaft19ToNumberOrNumericOp8kOutRepsE = linkonce_odr hidden constant %"class.v8::base::Vector.3912" { ptr @_ZN2v88internal8compiler10turboshaft19ToNumberOrNumericOp18kOutputRepsStorageE, i64 1 }, comdat, align 8
@_ZN2v88internal8compiler10turboshaft19ToNumberOrNumericOp18kOutputRepsStorageE = linkonce_odr hidden constant [1 x { i8 }] [{ i8 } { i8 4 }], comdat, align 1
@_ZN2v88internal8compiler10turboshaft14GenericBinopOp8kOutRepsE = linkonce_odr hidden constant %"class.v8::base::Vector.3912" { ptr @_ZN2v88internal8compiler10turboshaft14GenericBinopOp18kOutputRepsStorageE, i64 1 }, comdat, align 8
@_ZN2v88internal8compiler10turboshaft14GenericBinopOp18kOutputRepsStorageE = linkonce_odr hidden constant [1 x { i8 }] [{ i8 } { i8 4 }], comdat, align 1
@_ZN2v88internal8compiler10turboshaft13GenericUnopOp8kOutRepsE = linkonce_odr hidden constant %"class.v8::base::Vector.3912" { ptr @_ZN2v88internal8compiler10turboshaft13GenericUnopOp18kOutputRepsStorageE, i64 1 }, comdat, align 8
@_ZN2v88internal8compiler10turboshaft13GenericUnopOp18kOutputRepsStorageE = linkonce_odr hidden constant [1 x { i8 }] [{ i8 } { i8 4 }], comdat, align 1
@switch.table._ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE11ReduceStoreENS2_7OpIndexENS2_15OptionalOpIndexESP_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE = private unnamed_addr constant [6 x i32] [i32 255, i32 255, i32 65535, i32 65535, i32 -1, i32 -1], align 8
@switch.table._ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE20ReduceWithTruncationENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEEEEmNS2_18WordRepresentationE = private unnamed_addr constant [8 x i16] [i16 32, i16 64, i16 32, i16 64, i16 8, i16 8, i16 128, i16 256], align 4
@switch.table._ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_ = private unnamed_addr constant [15 x i8] c"\00\01\02\03\04\04\01\01\04\05\01\01\01\00\00", align 1
@switch.table._ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor27BuildConstantTypedArrayLoadENS1_15JSTypedArrayRefENS2_1VINS2_12WordWithBitsILm32EEEEENS0_12ElementsKindE = private unnamed_addr constant [24 x i8] c"\02\01\04\03\06\05\0C\0B\0A\08\09\07\02\01\04\03\06\05\0C\0B\0A\08\09\07", align 4
@switch.table._ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev19Float64Ieee754UnaryERKNS4_15ProcessingStateE = private unnamed_addr constant [18 x i8] c"\16\14\15\19\1A\0C\10\12\0D\0E\07\0A\09\08\0F\11\17\18", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft13PrintBytecodeERNS2_12PipelineDataEPNS0_6maglev21MaglevCompilationInfoE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::FeedbackCellRef", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::CodeTracer::StreamScope", align 8 ; 21 uses
  %4 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::BytecodeArrayRef", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::FeedbackVectorRef", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = tail call noundef ptr @_ZNK2v88internal8compiler10turboshaft12PipelineData13GetCodeTracerEv(ptr noundef nonnull align 8 dereferenceable(536) %0) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.c, ptr %3, align 8
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1904), align 16, !range !343, !noundef !344
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  br i1 %i.e, label %bb.b, label %_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = tail call noundef ptr @_ZN2v84base2OS5FOpenEPKcS3_(ptr noundef %i.i, ptr noundef nonnull @.str.10) #27 ; 3 uses
  store ptr %i.j, ptr %i.f, align 8
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.e, !prof !345

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11) #28
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %i.j, %bb.c ], [ %i.g, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8
  br label %_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit.i

_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit.i:  ; preds = %bb.a, %bb.e
  %i.o = phi ptr [ %i.k, %bb.e ], [ %i.g, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 360 ; 7 uses
  store i8 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 712 ; 8 uses
  store i8 0, ptr %i.q, align 8
  %i.r = load ptr, ptr @stdout, align 8
  %i.s = icmp eq ptr %i.o, %i.r
  br i1 %i.s, label %bb.f, label %_ZNSt8optionalIN2v88internal8OFStreamEE7emplaceIJRP8_IO_FILEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS9_.exit.i

bb.f:                                             ; preds = %_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt8optionalIN2v88internal12StdoutStreamEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_(ptr noundef nonnull align 8 dereferenceable(360) %i.t) ; 0 uses
  br label %_ZN2v88internal10CodeTracer11StreamScopeC2EPS1_.exit

_ZNSt8optionalIN2v88internal8OFStreamEE7emplaceIJRP8_IO_FILEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS9_.exit.i: ; preds = %_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 368
  call void @_ZN2v88internal8OFStreamC1EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(352) %i.v, ptr noundef %i.o) #27
  store i8 1, ptr %i.q, align 8
  br label %_ZN2v88internal10CodeTracer11StreamScopeC2EPS1_.exit

_ZN2v88internal10CodeTracer11StreamScopeC2EPS1_.exit: ; preds = %bb.f, %_ZNSt8optionalIN2v88internal8OFStreamEE7emplaceIJRP8_IO_FILEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS9_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.x = load i8, ptr %i.p, align 8, !range !343, !noundef !344
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN2v88internal10CodeTracer11StreamScope6streamEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal10CodeTracer11StreamScopeC2EPS1_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.aa = load i8, ptr %i.q, align 8, !range !343, !noundef !344
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN2v88internal10CodeTracer11StreamScope6streamEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZSt27__throw_bad_optional_accessv() #29
  unreachable

_ZN2v88internal10CodeTracer11StreamScope6streamEv.exit: ; preds = %_ZN2v88internal10CodeTracer11StreamScopeC2EPS1_.exit, %bb.g
  %.0.i = phi ptr [ %i.w, %_ZN2v88internal10CodeTracer11StreamScopeC2EPS1_.exit ], [ %i.z, %bb.g ] ; 4 uses
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull @.str, i64 noundef 49) #27 ; 0 uses
  %i.ad = load ptr, ptr %.0.i, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %.0.i, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8            ; 6 uses
  %.not.i.i.i17 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i17, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.i:                                             ; preds = %_ZN2v88internal10CodeTracer11StreamScope6streamEv.exit
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZN2v88internal10CodeTracer11StreamScope6streamEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i8, ptr %i.aj, align 8
  %.not.i1.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i1.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 67
  %i.am = load i8, ptr %i.al, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ai) #27
  %i.an = load ptr, ptr %i.ai, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef signext i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(570) %i.ai, i8 noundef signext 10) #27, !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i = phi i8 [ %i.am, %bb.j ], [ %i.aq, %bb.k ]
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, i8 noundef signext %.0.i.i.i) #27
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #27 ; 0 uses
  %i.at = load i8, ptr %i.p, align 8, !range !343, !noundef !344
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN2v88internal10CodeTracer11StreamScope6streamEv.exit11, label %bb.l

bb.l:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.aw = load i8, ptr %i.q, align 8, !range !343, !noundef !344
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZN2v88internal10CodeTracer11StreamScope6streamEv.exit11, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZSt27__throw_bad_optional_accessv() #29
  unreachable

_ZN2v88internal10CodeTracer11StreamScope6streamEv.exit11: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.l
  %.0.i10 = phi ptr [ %i.w, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %i.av, %bb.l ] ; 2 uses
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i10, ptr noundef nonnull @.str.1, i64 noundef 10) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0.0.copyload.i = load ptr, ptr %i.az, align 8
  %i.ba = load i64, ptr %.sroa.0.0.copyload.i, align 8
  store i64 %i.ba, ptr %4, align 8
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %.0.i10, ptr noundef nonnull align 8 dereferenceable(8) %4) #27 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 240
  %i.bh = load ptr, ptr %i.bg, align 8            ; 6 uses
  %.not.i.i.i18 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i18, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19

bb.n:                                             ; preds = %_ZN2v88internal10CodeTracer11StreamScope6streamEv.exit11
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19: ; preds = %_ZN2v88internal10CodeTracer11StreamScope6streamEv.exit11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load i8, ptr %i.bi, align 8
  %.not.i1.i.i20 = icmp eq i8 %i.bj, 0
  br i1 %.not.i1.i.i20, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 67
  %i.bl = load i8, ptr %i.bk, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit22

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bh) #27
  %i.bm = load ptr, ptr %i.bh, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef signext i8 %i.bo(ptr noundef nonnull align 8 dereferenceable(570) %i.bh, i8 noundef signext 10) #27, !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit22

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit22: ; preds = %bb.o, %bb.p
  %.0.i.i.i21 = phi i8 [ %i.bl, %bb.o ], [ %i.bp, %bb.p ]
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i8 noundef signext %.0.i.i.i21) #27
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_ZNK2v88internal6maglev21MaglevCompilationUnit8bytecodeEv.exit, !prof !345

bb.q:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit22
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.14) #28
  unreachable
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE26ReduceOverflowCheckedBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEEEESV_NS2_22OverflowCheckedBinopOp4KindENS2_18WordRepresentationE:bb.a
  %i.ho = inttoptr i64 %i.hn to ptr
  %i.hp = call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES4_S6_EEEEEEEEEEEE19WrapInTupleIfNeededINS2_22OverflowCheckedBinopOpEEENS2_1VINS2_3AnyEEERKT_SQ_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(6) %i.ho, i32 %i.hg)
  br label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPl.exit

_ZNK2v88internal8compiler10turboshaft16OperationMatcher25MatchIntegralWordConstantENS2_1VINS2_3AnyEEENS2_18WordRepresentationEPl.exit: ; preds = %bb.bn, %.thread259, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord64ConstantENS2_1VINS2_3AnyEEEPl.exit, %bb.x, %.thread258, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleIJNS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSK_ILm64EEEEEESL_EEENS2_1VINS2_5TupleIJDpT_EEEEEDpNSO_ISQ_EE.exit
  %.sroa.0199.7 = phi i32 [ %i.ge, %.thread259 ], [ %.sroa.03.0.i.i.i140, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleIJNS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSK_ILm64EEEEEESL_EEENS2_1VINS2_5TupleIJDpT_EEEEEDpNSO_ISQ_EE.exit ], [ %i.hp, %.thread258 ], [ %i.he, %bb.bn ], [ %.sroa.03.0.i.i.i136, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord64ConstantENS2_1VINS2_3AnyEEEPl.exit ], [ %.sroa.03.0.i.i.i, %bb.x ], [ %i.fx, %bb.bd ], [ %i.fp, %bb.ba ], [ %i.fs, %bb.bb ], [ %i.fv, %bb.bc ]
  ret i32 %.sroa.0199.7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleIJNS2_12WordWithBitsILm32EEESK_EEENS2_1VINS2_5TupleIJDpT_EEEEEDpNSL_ISN_EE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca [2 x %"class.v8::internal::compiler::turboshaft::V.3883"], align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i32 %1, ptr %3, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit, label %bb.b, !prof !345

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.f = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_11MakeTupleOpEJNS2_27ShadowyOpIndexVectorWrapperEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr nonnull %3, i64 2), !inline_history !334
  %i.g = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_11MakeTupleOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.e, i32 %i.f), !inline_history !334
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit: ; preds = %bb.a, %bb.b
  %.sroa.03.0.i.i = phi i32 [ %i.g, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i32 %.sroa.03.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleIJNS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSK_ILm64EEEEEESL_EEENS2_1VINS2_5TupleIJDpT_EEEEEDpNSO_ISQ_EE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca [2 x %"class.v8::internal::compiler::turboshaft::V.3883"], align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i32 %1, ptr %3, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit, label %bb.b, !prof !345

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.f = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_11MakeTupleOpEJNS2_27ShadowyOpIndexVectorWrapperEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr nonnull %3, i64 2), !inline_history !334
  %i.g = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_11MakeTupleOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.e, i32 %i.f), !inline_history !334
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit: ; preds = %bb.a, %bb.b
  %.sroa.03.0.i.i = phi i32 [ %i.g, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i32 %.sroa.03.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE19IntSubCheckOverflowENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSK_ILm64EEEEEEEESO_NS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1, i32 %2, i8 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE37ReduceIfReachableOverflowCheckedBinopIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_22OverflowCheckedBinopOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit, label %bb.b, !prof !345

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -744
  %i.e = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE26ReduceOverflowCheckedBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEEEESV_NS2_22OverflowCheckedBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(666) %i.d, i32 %1, i32 %2, i8 noundef zeroext 2, i8 %3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE37ReduceIfReachableOverflowCheckedBinopIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_22OverflowCheckedBinopOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE37ReduceIfReachableOverflowCheckedBinopIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_22OverflowCheckedBinopOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit: ; preds = %bb.a, %bb.b
  %.sroa.07.0.i = phi i32 [ %i.e, %bb.b ], [ -1, %bb.a ]
  ret i32 %.sroa.07.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE19IntAddCheckOverflowENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSK_ILm64EEEEEEEESO_NS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1, i32 %2, i8 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE37ReduceIfReachableOverflowCheckedBinopIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_22OverflowCheckedBinopOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit, label %bb.b, !prof !345

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -744
  %i.e = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE26ReduceOverflowCheckedBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEEEESV_NS2_22OverflowCheckedBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(666) %i.d, i32 %1, i32 %2, i8 noundef zeroext 0, i8 %3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE37ReduceIfReachableOverflowCheckedBinopIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_22OverflowCheckedBinopOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE37ReduceIfReachableOverflowCheckedBinopIJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSL_ILm64EEEEEEEESP_NS2_22OverflowCheckedBinopOp4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT_.exit: ; preds = %bb.a, %bb.b
  %.sroa.07.0.i = phi i32 [ %i.e, %bb.b ], [ -1, %bb.a ]
  ret i32 %.sroa.07.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft16OperationMatcher46MatchConstantShiftRightArithmeticShiftOutZerosINS2_12WordWithBitsILm32EEEQcl6IsWordIT_EEEEbNS2_1VINS2_3AnyEEEPNS8_IS7_EENS2_18WordRepresentationEPt(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1, ptr noundef %2, i8 %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !344, !align !355
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = zext i32 %1 to i64
  %i.f = add i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.f to ptr                 ; 5 uses
  %i.h = load i8, ptr %i.g, align 4
  %.not = icmp eq i8 %i.h, 67
  br i1 %.not, label %bb.b, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEPj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i8, ptr %i.i, align 4
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEPj.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %.sroa.03.0.copyload = load i8, ptr %i.l, align 1
  %i.m = icmp eq i8 %.sroa.03.0.copyload, %3
  br i1 %i.m, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEPj.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.n, align 4
  %i.o = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.p = add i64 %i.o, %i.d
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = load i8, ptr %i.q, align 4
  %.not.i.i = icmp eq i8 %i.r, 75
  br i1 %.not.i.i, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEPj.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load i8, ptr %i.s, align 4
  switch i8 %i.t, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEPj.exit.thread [
    i8 0, label %bb.f
    i8 1, label %bb.f
    i8 11, label %bb.f
    i8 12, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = trunc i64 %i.v to i32
  switch i8 %3, label %bb.l [
    i8 0, label %_ZNK2v88internal8compiler10turboshaft27MaybeRegisterRepresentation9bit_widthEv.exit
    i8 1, label %bb.g
    i8 2, label %_ZNK2v88internal8compiler10turboshaft27MaybeRegisterRepresentation9bit_widthEv.exit
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  br label %_ZNK2v88internal8compiler10turboshaft27MaybeRegisterRepresentation9bit_widthEv.exit

bb.h:                                             ; preds = %bb.f, %bb.f
  br label %_ZNK2v88internal8compiler10turboshaft27MaybeRegisterRepresentation9bit_widthEv.exit

bb.i:                                             ; preds = %bb.f
  br label %_ZNK2v88internal8compiler10turboshaft27MaybeRegisterRepresentation9bit_widthEv.exit

bb.j:                                             ; preds = %bb.f
  br label %_ZNK2v88internal8compiler10turboshaft27MaybeRegisterRepresentation9bit_widthEv.exit

bb.k:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #28
  unreachable

bb.l:                                             ; preds = %bb.f
  unreachable

_ZNK2v88internal8compiler10turboshaft27MaybeRegisterRepresentation9bit_widthEv.exit: ; preds = %bb.f, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i32 [ 256, %bb.j ], [ 64, %bb.g ], [ 32, %bb.f ], [ 32, %bb.f ], [ 8, %bb.h ], [ 128, %bb.i ]
  %i.x = icmp ugt i32 %.0.i, %i.w
  br i1 %i.x, label %bb.m, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEPj.exit.thread

bb.m:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft27MaybeRegisterRepresentation9bit_widthEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i16 = load i32, ptr %i.y, align 4
  store i32 %.sroa.0.0.copyload.i.i16, ptr %2, align 4
  %i.z = trunc i64 %i.v to i16
  store i16 %i.z, ptr %4, align 2
  br label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEPj.exit.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchIntegralWord32ConstantENS2_1VINS2_3AnyEEEPj.exit.thread: ; preds = %bb.d, %bb.e, %bb.a, %bb.b, %bb.c, %_ZNK2v88internal8compiler10turboshaft27MaybeRegisterRepresentation9bit_widthEv.exit, %bb.m
  %.1 = phi i1 [ true, %bb.m ], [ false, %_ZNK2v88internal8compiler10turboshaft27MaybeRegisterRepresentation9bit_widthEv.exit ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES4_S6_EEEEEEEEEEEE19WrapInTupleIfNeededINS2_22OverflowCheckedBinopOpEEENS2_1VINS2_3AnyEEERKT_SQ_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(6) %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::base::SmallVector.3913", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.b = load i8, ptr %i.a, align 1
  %4 = icmp eq i8 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.f, ptr %i.e, align 8
  %5 = select i1 %4, ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array, ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE1ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.i = zext i32 %2 to i64                       ; 2 uses
  %.sroa.01.0.copyload = load i8, ptr %5, align 1
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit, label %bb.c, !prof !345

bb.b:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = load ptr, ptr %3, align 8                ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.m, %i.o
  %i.q = ashr exact i64 %i.p, 2
  %i.r = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_11MakeTupleOpEJNS2_27ShadowyOpIndexVectorWrapperEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %i.n, i64 %i.q), !inline_history !334
  %i.s = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_11MakeTupleOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.r), !inline_history !334
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1, %bb.b
  %.sroa.03.0.i.i = phi i32 [ %i.s, %bb.b ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1 ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i32 %.sroa.03.0.i.i

bb.c:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.h, align 8, !nonnull !344, !align !355
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %i.w, %i.i
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = icmp eq i8 %i.z, 96
  br i1 %i.aa, label %bb.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ab, align 4
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit: ; preds = %bb.c
  %i.ac = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_12ProjectionOpEJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %2, i16 noundef zeroext 0, i8 %.sroa.01.0.copyload), !inline_history !333
  %i.ad = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_12ProjectionOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.ac), !inline_history !333 ; 2 uses
  %.pre = load ptr, ptr %i.d, align 8             ; 2 uses
  %.pre17 = load ptr, ptr %i.e, align 8
  %i.ae = icmp eq ptr %.pre, %.pre17
  br i1 %i.ae, label %bb.e, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit, !prof !3159

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %.pre.i.i = load ptr, ptr %i.d, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit: ; preds = %bb.d, %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit, %bb.e
  %.sroa.05.0.i.i21 = phi i32 [ %i.ad, %bb.e ], [ %i.ad, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ -1, %bb.a ]
  %i.af = phi ptr [ %.pre.i.i, %bb.e ], [ %.pre, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit ], [ %i.c, %bb.d ], [ %i.c, %bb.a ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store ptr %i.ag, ptr %i.d, align 8
  store i32 %.sroa.05.0.i.i21, ptr %i.af, align 4
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %.sroa.01.0.copyload.1 = load i8, ptr %6, align 1
  %i.ah = load ptr, ptr %i.g, align 8
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1, label %bb.f, !prof !345

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit
  %i.aj = load ptr, ptr %i.h, align 8, !nonnull !344, !align !355
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = add i64 %i.am, %i.i
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = icmp eq i8 %i.ap, 96
  br i1 %i.aq, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_12ProjectionOpEJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %2, i16 noundef zeroext 1, i8 %.sroa.01.0.copyload.1), !inline_history !333
  %i.as = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_12ProjectionOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.ar), !inline_history !333
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1

bb.h:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.0.0.copyload.i.i.i.1 = load i32, ptr %i.at, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1: ; preds = %bb.h, %bb.g, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit
  %.sroa.05.0.i.i.1 = phi i32 [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit ], [ %i.as, %bb.g ], [ %.sroa.0.0.copyload.i.i.i.1, %bb.h ]
  %i.au = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.av = load ptr, ptr %i.e, align 8
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1, !prof !345

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %.pre.i.i.1 = load ptr, ptr %i.d, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1: ; preds = %bb.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1
  %i.ax = phi ptr [ %.pre.i.i.1, %bb.i ], [ %i.au, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store ptr %i.ay, ptr %i.d, align 8
  store i32 %.sroa.05.0.i.i.1, ptr %i.ax, align 4
  %i.az = load ptr, ptr %i.g, align 8
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit, label %bb.b, !prof !345
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_22OverflowCheckedBinopOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !344, !align !355
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = zext i32 %1 to i64
  %i.k = add i64 %i.i, %i.j
  %i.l = inttoptr i64 %i.k to ptr
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.m = call noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_22OverflowCheckedBinopOpEEEPNSJ_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(6) %i.l, ptr noundef nonnull %i.a) ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.s, align 4
  %i.t = load i64, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.z = load i32, ptr %i.y, align 4
  store i32 %1, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %.sroa.0.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 4
  store i64 %i.t, ptr %i.n, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.x, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i32 %i.z, ptr %.sroa.7.0..sroa_idx, align 8
  %i.aa = load ptr, ptr %i.u, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  store ptr %i.m, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %i.e, align 8, !nonnull !344, !align !355 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !3162 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !3162 ; 4 uses
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = sub i64 %i.ai, %i.al                    ; 2 uses
  %i.an = trunc i64 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = lshr i32 %i.an, 4
  %i.ar = add nsw i32 %i.aq, -1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2
  %i.av = zext i16 %i.au to i64                   ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = sub i64 %i.am, %i.aw
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = add i64 %i.ay, %i.al
  %i.ba = inttoptr i64 %i.az to ptr               ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 4
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bh = load i16, ptr %i.bg, align 2            ; 2 uses
  %i.bi = zext i16 %i.bh to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.bi, 2          ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx.i.i.i
  %.not10.i.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not10.i.i.i, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %i.bk = add nsw i64 %.idx.i.i.i, -4             ; 2 uses
  %i.bl = and i64 %i.bk, 4
  %lcmp.mod.not.not = icmp eq i64 %i.bl, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %.sroa.01.0.copyload.i.i.i.prol = load i32, ptr %i.bf, align 4
  %i.bm = ptrtoint ptr %i.ak to i64
  %i.bn = zext i32 %.sroa.01.0.copyload.i.i.i.prol to i64
  %i.bo = add i64 %i.bn, %i.bm
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = add i8 %i.br, -1                        ; 2 uses
  %spec.select.i.i.i.i.prol = icmp ult i8 %i.bs, -2
  br i1 %spec.select.i.i.i.i.prol, label %bb.e, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol, !prof !348

bb.e:                                             ; preds = %.lr.ph.i.i.i.prol
  store i8 %i.bs, ptr %i.bq, align 1
  %.pre.i.i.i.prol = load ptr, ptr %i.aj, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol: ; preds = %bb.e, %.lr.ph.i.i.i.prol
  %i.bt = phi ptr [ %i.ak, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i.prol, %bb.e ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.bt, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol ]
  %.unr = phi ptr [ %i.ak, %.lr.ph.i.i.i.preheader ], [ %i.bt, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol ]
  %.011.i.i.i.unr = phi ptr [ %i.bf, %.lr.ph.i.i.i.preheader ], [ %i.bu, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol ]
  %i.bv = icmp eq i64 %i.bk, 0
  br i1 %i.bv, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1
  %i.bw = phi ptr [ %i.cn, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1 ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %.011.i.i.i = phi ptr [ %i.co, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1 ], [ %.011.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %.011.i.i.i, align 4
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = zext i32 %.sroa.01.0.copyload.i.i.i to i64
  %i.bz = add i64 %i.by, %i.bx
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = add i8 %i.cc, -1                        ; 2 uses
  %spec.select.i.i.i.i = icmp ult i8 %i.cd, -2
  br i1 %spec.select.i.i.i.i, label %bb.f, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i, !prof !348

bb.f:                                             ; preds = %.lr.ph.i.i.i
  store i8 %i.cd, ptr %i.cb, align 1
  %.pre.i.i.i = load ptr, ptr %i.aj, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i
  %i.ce = phi ptr [ %i.bw, %.lr.ph.i.i.i ], [ %.pre.i.i.i, %bb.f ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %.sroa.01.0.copyload.i.i.i.1 = load i32, ptr %i.cf, align 4
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = zext i32 %.sroa.01.0.copyload.i.i.i.1 to i64
  %i.ci = add i64 %i.ch, %i.cg
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = add i8 %i.cl, -1                        ; 2 uses
  %spec.select.i.i.i.i.1 = icmp ult i8 %i.cm, -2
  br i1 %spec.select.i.i.i.i.1, label %bb.g, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1, !prof !348

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i
  store i8 %i.cm, ptr %i.ck, align 1
  %.pre.i.i.i.1 = load ptr, ptr %i.aj, align 8
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i
  %i.cn = phi ptr [ %i.ce, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i ], [ %.pre.i.i.i.1, %bb.g ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %i.co, %i.bj
  br i1 %.not.i.i.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i, label %.lr.ph.i.i.i

end_hunk_3
