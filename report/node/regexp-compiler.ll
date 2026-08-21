Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/regexp-compiler?download=true
inline.NumInlined: 1535
inline.NumDeleted: 508
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", [4 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", [4 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.2", [4 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.5", [2 x i8], %"class.v8::internal::FlagValue.2", [4 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", [4 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.5" = type { %"class.std::optional.6" }
%"class.std::optional.6" = type { %"struct.std::_Optional_base.7" }
%"struct.std::_Optional_base.7" = type { %"struct.std::_Optional_payload.9" }
%"struct.std::_Optional_payload.9" = type { %"struct.std::_Optional_payload_base.10" }
%"struct.std::_Optional_payload_base.10" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.4" = type { double }
%"class.v8::internal::FlagValue.3" = type { i32 }
%"class.v8::internal::FlagValue.12" = type { i64 }
%"class.v8::internal::FlagValue.2" = type { i32 }
%"class.v8::internal::FlagValue.1" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"struct.v8::OOMDetails" = type { i8, ptr }
%"struct.v8::internal::RegExpCompiler::CompilationResult" = type <{ i32, [4 x i8], %"class.v8::internal::DirectHandle.13", i32, [4 x i8] }>
%"class.v8::internal::DirectHandle.13" = type { %"class.v8::internal::Handle.14" }
%"class.v8::internal::Handle.14" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"class.v8::internal::ZoneVector" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::Label" = type { i32, i32 }
%"class.v8::internal::Trace" = type { i32, i16, i16, ptr, ptr, ptr, i32, i32, %"class.v8::internal::QuickCheckDetails", ptr }
%"class.v8::internal::QuickCheckDetails" = type <{ i32, [4 x %"struct.v8::internal::QuickCheckDetails::Position"], i32, i32, i8, [3 x i8] }>
%"struct.v8::internal::QuickCheckDetails::Position" = type <{ i32, i32, i8, [3 x i8] }>
%"class.v8::internal::DynamicBitSet" = type { i32, ptr }
%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.492, [32 x i8] }
%struct.anon.492 = type { i16, i32, i32, ptr }
%"class.icu_78::UnicodeSet" = type <{ %"class.icu_78::UnicodeFilter", ptr, i32, i32, i8, [7 x i8], ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr, [25 x i32], [4 x i8] }>
%"class.icu_78::UnicodeFilter" = type { %"class.icu_78::UnicodeFunctor", %"class.icu_78::UnicodeMatcher" }
%"class.icu_78::UnicodeFunctor" = type { %"class.icu_78::UObject" }
%"class.icu_78::UnicodeMatcher" = type { ptr }
%"struct.v8::internal::PreloadState" = type { i8, i8, i32, i32 }
%"class.v8::internal::FixedLengthLoopState" = type { %"class.v8::internal::Label", %"class.v8::internal::Label", ptr, %"class.v8::internal::Trace" }
%"class.v8::internal::AlternativeGenerationList" = type { %"class.v8::internal::ZoneList.489", [10 x %"class.v8::internal::AlternativeGeneration"] }
%"class.v8::internal::ZoneList.489" = type { ptr, i32, i32 }
%"class.v8::internal::AlternativeGeneration" = type { %"class.v8::internal::Label", i8, %"class.v8::internal::Label", %"class.v8::internal::QuickCheckDetails" }
%"class.v8::internal::Analysis" = type <{ %"class.v8::internal::NodeVisitor", ptr, i8, [3 x i8], %"class.v8::base::Flags.0", i32, [4 x i8] }>
%"class.v8::internal::NodeVisitor" = type { ptr }
%"class.v8::base::Flags.0" = type { i32 }
%"class.v8::internal::Interval" = type { i32, i32 }
%"class.v8::internal::RegExpLookaround::Builder" = type { i8, ptr, ptr, i32, i32 }

$_ZN2v88internal10RegExpText10AddElementENS0_11TextElementEPNS0_4ZoneE = comdat any

$_ZN2v88internal13DynamicBitSet3SetEjPNS0_4ZoneE = comdat any

$_ZN2v88internal14CharacterRange4ListEPNS0_4ZoneES1_ = comdat any

$_ZN2v88internal25AlternativeGenerationListC2EiPNS0_4ZoneE = comdat any

$_ZN2v88internal19BoyerMooreLookahead11SetIntervalEiRKNS0_8IntervalE = comdat any

$_ZN2v88internal4Zone3NewINS0_10ChoiceNodeEJiPS1_EEEPT_DpOT0_ = comdat any

$_ZN2v88internal10RegExpTreeD2Ev = comdat any

$_ZN2v88internal10RegExpTreeD0Ev = comdat any

$_ZN2v88internal10RegExpTree13IsTextElementEv = comdat any

$_ZN2v88internal10RegExpTree17IsAnchoredAtStartEv = comdat any

$_ZN2v88internal10RegExpTree15IsAnchoredAtEndEv = comdat any

$_ZN2v88internal10RegExpTree16CaptureRegistersEv = comdat any

$_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv = comdat any

$_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE = comdat any

$_ZN2v88internal10RegExpNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb = comdat any

$_ZN2v88internal10RegExpNode13FilterOneByteEiPNS0_14RegExpCompilerE = comdat any

$_ZN2v88internal10RegExpNode9AsEndNodeEv = comdat any

$_ZN2v88internal10RegExpNode12AsActionNodeEv = comdat any

$_ZN2v88internal10RegExpNode12AsChoiceNodeEv = comdat any

$_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv = comdat any

$_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv = comdat any

$_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv = comdat any

$_ZN2v88internal10RegExpNode15AsAssertionNodeEv = comdat any

$_ZN2v88internal10RegExpNode10AsTextNodeEv = comdat any

$_ZN2v88internal10RegExpNode15AsSeqRegExpNodeEv = comdat any

$_ZN2v88internal13SeqRegExpNodeD0Ev = comdat any

$_ZN2v88internal13SeqRegExpNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb = comdat any

$_ZN2v88internal13SeqRegExpNode15AsSeqRegExpNodeEv = comdat any

$_ZN2v88internal10ActionNodeD0Ev = comdat any

$_ZN2v88internal10ActionNode21FixedLengthLoopLengthEv = comdat any

$_ZN2v88internal10ActionNode12AsActionNodeEv = comdat any

$_ZN2v88internal8TextNodeD0Ev = comdat any

$_ZN2v88internal8TextNode10AsTextNodeEv = comdat any

$_ZN2v88internal13AssertionNodeD0Ev = comdat any

$_ZN2v88internal13AssertionNode15AsAssertionNodeEv = comdat any

$_ZN2v88internal17BackReferenceNodeD0Ev = comdat any

$_ZN2v88internal17BackReferenceNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib = comdat any

$_ZN2v88internal17BackReferenceNode19AsBackReferenceNodeEv = comdat any

$_ZN2v88internal7EndNodeD0Ev = comdat any

$_ZN2v88internal7EndNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib = comdat any

$_ZN2v88internal7EndNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb = comdat any

$_ZN2v88internal7EndNode9AsEndNodeEv = comdat any

$_ZN2v88internal23NegativeSubmatchSuccessD0Ev = comdat any

$_ZN2v88internal10ChoiceNodeD0Ev = comdat any

$_ZN2v88internal10ChoiceNode12AsChoiceNodeEv = comdat any

$_ZN2v88internal10ChoiceNode39try_to_emit_quick_check_for_alternativeEb = comdat any

$_ZN2v88internal10ChoiceNode13read_backwardEv = comdat any

$_ZN2v88internal28NegativeLookaroundChoiceNodeD0Ev = comdat any

$_ZN2v88internal28NegativeLookaroundChoiceNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb = comdat any

$_ZN2v88internal28NegativeLookaroundChoiceNode30AsNegativeLookaroundChoiceNodeEv = comdat any

$_ZN2v88internal28NegativeLookaroundChoiceNode39try_to_emit_quick_check_for_alternativeEb = comdat any

$_ZN2v88internal14LoopChoiceNodeD0Ev = comdat any

$_ZN2v88internal14LoopChoiceNode16AsLoopChoiceNodeEv = comdat any

$_ZN2v88internal14LoopChoiceNode13read_backwardEv = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_10RegExpNodeEE4GrowEm = comdat any

$_ZSt27__throw_bad_optional_accessv = comdat any

$_ZN2v88internal17RegExpClassRangesC2EPNS0_4ZoneEPNS0_8ZoneListINS0_14CharacterRangeEEENS_4base5FlagsINS1_4FlagEiiEE = comdat any

$_ZN2v88internal8TextNodeC2EPNS0_17RegExpClassRangesEbPNS0_10RegExpNodeE = comdat any

$_ZN2v88internal11NodeVisitorD2Ev = comdat any

@.str = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str.1 = private unnamed_addr constant [35 x i8] c"Aborting on excess zone allocation\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"unimplemented code\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"RegExpCompiler\00", align 1
@_ZN2v88internal2V813kNoOOMDetailsE = external global %"struct.v8::OOMDetails", align 8
@_ZTVN2v88internal10RegExpTreeE = hidden unnamed_addr constant { [41 x ptr] } { [41 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpTreeD2Ev, ptr @_ZN2v88internal10RegExpTreeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN2v88internal10RegExpTree13IsTextElementEv, ptr @_ZN2v88internal10RegExpTree17IsAnchoredAtStartEv, ptr @_ZN2v88internal10RegExpTree15IsAnchoredAtEndEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN2v88internal10RegExpTree16CaptureRegistersEv, ptr @_ZN2v88internal10RegExpTree12AppendToTextEPNS0_10RegExpTextEPNS0_4ZoneE, ptr @_ZN2v88internal10RegExpTree13AsDisjunctionEv, ptr @_ZN2v88internal10RegExpTree13IsDisjunctionEv, ptr @_ZN2v88internal10RegExpTree13AsAlternativeEv, ptr @_ZN2v88internal10RegExpTree13IsAlternativeEv, ptr @_ZN2v88internal10RegExpTree11AsAssertionEv, ptr @_ZN2v88internal10RegExpTree11IsAssertionEv, ptr @_ZN2v88internal10RegExpTree13AsClassRangesEv, ptr @_ZN2v88internal10RegExpTree13IsClassRangesEv, ptr @_ZN2v88internal10RegExpTree17AsClassSetOperandEv, ptr @_ZN2v88internal10RegExpTree17IsClassSetOperandEv, ptr @_ZN2v88internal10RegExpTree20AsClassSetExpressionEv, ptr @_ZN2v88internal10RegExpTree20IsClassSetExpressionEv, ptr @_ZN2v88internal10RegExpTree6AsAtomEv, ptr @_ZN2v88internal10RegExpTree6IsAtomEv, ptr @_ZN2v88internal10RegExpTree12AsQuantifierEv, ptr @_ZN2v88internal10RegExpTree12IsQuantifierEv, ptr @_ZN2v88internal10RegExpTree9AsCaptureEv, ptr @_ZN2v88internal10RegExpTree9IsCaptureEv, ptr @_ZN2v88internal10RegExpTree7AsGroupEv, ptr @_ZN2v88internal10RegExpTree7IsGroupEv, ptr @_ZN2v88internal10RegExpTree12AsLookaroundEv, ptr @_ZN2v88internal10RegExpTree12IsLookaroundEv, ptr @_ZN2v88internal10RegExpTree15AsBackReferenceEv, ptr @_ZN2v88internal10RegExpTree15IsBackReferenceEv, ptr @_ZN2v88internal10RegExpTree7AsEmptyEv, ptr @_ZN2v88internal10RegExpTree7IsEmptyEv, ptr @_ZN2v88internal10RegExpTree6AsTextEv, ptr @_ZN2v88internal10RegExpTree6IsTextEv] }, align 8
@_ZTVN2v88internal10RegExpNodeE = hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal10RegExpNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @__cxa_pure_virtual, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal10RegExpNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10RegExpNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal10RegExpNode15AsSeqRegExpNodeEv] }, align 8
@_ZTVN2v88internal13SeqRegExpNodeE = hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal13SeqRegExpNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @__cxa_pure_virtual, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal13SeqRegExpNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal13SeqRegExpNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10RegExpNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal13SeqRegExpNode15AsSeqRegExpNodeEv] }, align 8
@_ZTVN2v88internal10ActionNodeE = hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal10ActionNodeD0Ev, ptr @_ZN2v88internal10ActionNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal10ActionNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal10ActionNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10ActionNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10ActionNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal13SeqRegExpNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10ActionNode12AsActionNodeEv, ptr @_ZN2v88internal10RegExpNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal13SeqRegExpNode15AsSeqRegExpNodeEv] }, align 8
@_ZTVN2v88internal8TextNodeE = hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal8TextNodeD0Ev, ptr @_ZN2v88internal8TextNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal8TextNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal8TextNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal8TextNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal8TextNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal8TextNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal8TextNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10RegExpNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal8TextNode10AsTextNodeEv, ptr @_ZN2v88internal13SeqRegExpNode15AsSeqRegExpNodeEv] }, align 8
@_ZTVN2v88internal13AssertionNodeE = hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal13AssertionNodeD0Ev, ptr @_ZN2v88internal13AssertionNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal13AssertionNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal13AssertionNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal13AssertionNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal13SeqRegExpNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10RegExpNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal13AssertionNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal13SeqRegExpNode15AsSeqRegExpNodeEv] }, align 8
@_ZTVN2v88internal17BackReferenceNodeE = hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal17BackReferenceNodeD0Ev, ptr @_ZN2v88internal17BackReferenceNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal17BackReferenceNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal17BackReferenceNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal17BackReferenceNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal13SeqRegExpNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10RegExpNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal17BackReferenceNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal13SeqRegExpNode15AsSeqRegExpNodeEv] }, align 8
@_ZTVN2v88internal7EndNodeE = hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal7EndNodeD0Ev, ptr @_ZN2v88internal7EndNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal7EndNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal7EndNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal7EndNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal10RegExpNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal7EndNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10RegExpNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal10RegExpNode15AsSeqRegExpNodeEv] }, align 8
@_ZTVN2v88internal23NegativeSubmatchSuccessE = hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal23NegativeSubmatchSuccessD0Ev, ptr @_ZN2v88internal7EndNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal23NegativeSubmatchSuccess4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal7EndNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal7EndNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal10RegExpNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal7EndNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10RegExpNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal10RegExpNode15AsSeqRegExpNodeEv] }, align 8
@_ZTVN2v88internal10ChoiceNodeE = hidden unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal10ChoiceNodeD0Ev, ptr @_ZN2v88internal10ChoiceNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal10ChoiceNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal10ChoiceNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10ChoiceNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal10ChoiceNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10ChoiceNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal10RegExpNode15AsSeqRegExpNodeEv, ptr @_ZN2v88internal10ChoiceNode39try_to_emit_quick_check_for_alternativeEb, ptr @_ZN2v88internal10ChoiceNode13read_backwardEv] }, align 8
@_ZTVN2v88internal28NegativeLookaroundChoiceNodeE = hidden unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal28NegativeLookaroundChoiceNodeD0Ev, ptr @_ZN2v88internal28NegativeLookaroundChoiceNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal10ChoiceNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal28NegativeLookaroundChoiceNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal28NegativeLookaroundChoiceNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal28NegativeLookaroundChoiceNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10ChoiceNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal28NegativeLookaroundChoiceNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal10RegExpNode15AsSeqRegExpNodeEv, ptr @_ZN2v88internal28NegativeLookaroundChoiceNode39try_to_emit_quick_check_for_alternativeEb, ptr @_ZN2v88internal10ChoiceNode13read_backwardEv] }, align 8
@_ZTVN2v88internal14LoopChoiceNodeE = hidden unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal14LoopChoiceNodeD0Ev, ptr @_ZN2v88internal14LoopChoiceNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal14LoopChoiceNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal14LoopChoiceNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal14LoopChoiceNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal14LoopChoiceNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal14LoopChoiceNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal14LoopChoiceNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10ChoiceNode12AsChoiceNodeEv, ptr @_ZN2v88internal14LoopChoiceNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal10RegExpNode15AsSeqRegExpNodeEv, ptr @_ZN2v88internal10ChoiceNode39try_to_emit_quick_check_for_alternativeEb, ptr @_ZN2v88internal14LoopChoiceNode13read_backwardEv] }, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"end - start + items <= letter_length\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"ch <= 0xffff\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"one_byte\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"one_byte implies chars[0] <= String::kMaxOneByteCharCodeU\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"std::numeric_limits<int>::max() >= length_\00", align 1
@_ZTVN2v88internal17RegExpClassRangesE = external unnamed_addr constant { [41 x ptr] }, align 8
@_ZTVN2v88internal10RegExpAtomE = external unnamed_addr constant { [41 x ptr] }, align 8
@.str.13 = private unnamed_addr constant [52 x i8] c"%s: __position (which is %zu) >= _Nb (which is %zu)\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"bitset::reset\00", align 1
@_ZTVN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEEE = internal unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal11NodeVisitorD2Ev, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEED0Ev, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE8VisitEndEPNS0_7EndNodeE, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE11VisitActionEPNS0_10ActionNodeE, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE11VisitChoiceEPNS0_10ChoiceNodeE, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE15VisitLoopChoiceEPNS0_14LoopChoiceNodeE, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE29VisitNegativeLookaroundChoiceEPNS0_28NegativeLookaroundChoiceNodeE, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE18VisitBackReferenceEPNS0_17BackReferenceNodeE, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE14VisitAssertionEPNS0_13AssertionNodeE, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE9VisitTextEPNS0_8TextNodeE] }, align 8
@.str.15 = private unnamed_addr constant [37 x i8] c"Analysis: Aborting on stack overflow\00", align 1

@_ZN2v88internal14RegExpCompilerC1EPNS0_7IsolateEPNS0_4ZoneEiNS_4base5FlagsINS0_10RegExpFlagEiiEEb = hidden unnamed_addr alias void (ptr, ptr, ptr, i32, i32, i1), ptr @_ZN2v88internal14RegExpCompilerC2EPNS0_7IsolateEPNS0_4ZoneEiNS_4base5FlagsINS0_10RegExpFlagEiiEEb
@_ZN2v88internal10RegExpNodeD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2v88internal10RegExpNodeD2Ev
@_ZN2v88internal19BoyerMooreLookaheadC1EiPNS0_14RegExpCompilerEPNS0_4ZoneE = hidden unnamed_addr alias void (ptr, i32, ptr, ptr), ptr @_ZN2v88internal19BoyerMooreLookaheadC2EiPNS0_14RegExpCompilerEPNS0_4ZoneE
@_ZN2v88internal20FixedLengthLoopStateC1EbPNS0_10ChoiceNodeE = hidden unnamed_addr alias void (ptr, i1, ptr), ptr @_ZN2v88internal20FixedLengthLoopStateC2EbPNS0_10ChoiceNodeE

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal10RegExpTree12AppendToTextEPNS0_10RegExpTextEPNS0_4ZoneE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10RegExpAtom12AppendToTextEPNS0_10RegExpTextEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN2v88internal10RegExpText10AddElementENS0_11TextElementEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 4294967295, ptr nonnull %0, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10RegExpText10AddElementENS0_11TextElementEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0.sroa.3.0.extract.shift = lshr i64 %1, 32
  %.sroa.0.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.3.0.extract.shift to i32 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal8ZoneListINS0_11TextElementEE3AddERKS2_PNS0_4ZoneE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = shl nsw i32 %i.e, 1
  %i.i = or disjoint i32 %i.h, 1                  ; 2 uses
  %i.j = icmp sgt i32 %i.e, -1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !5
end_hunk_0
begin_hunk_1_@_ZN2v88internal22BoyerMoorePositionInfo6SetAllEv:bb.a
  %.not = icmp eq i32 %i.c, 128
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 128, ptr %i.b, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19BoyerMooreLookaheadC2EiPNS0_14RegExpCompilerEPNS0_4ZoneE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 4), (8, 20), (24, 32)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 {
bb.a:
  store i32 %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !9, !noundef !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = select i1 %i.e, i32 255, i32 65535
  store i32 %i.f, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %i.h, %i.j
  %i.l = icmp ult i64 %i.k, 16
  br i1 %i.l, label %bb.b, label %_ZN2v88internal4Zone8AllocateINS0_8ZoneListIPNS0_22BoyerMoorePositionInfoEEEEEPvm.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef 16) #26
  %.pre.i.i = load i64, ptr %i.i, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8ZoneListIPNS0_22BoyerMoorePositionInfoEEEEEPvm.exit.i

_ZN2v88internal4Zone8AllocateINS0_8ZoneListIPNS0_22BoyerMoorePositionInfoEEEEEPvm.exit.i: ; preds = %bb.b, %bb.a
  %i.m = phi i64 [ %.pre.i.i, %bb.b ], [ %i.j, %bb.a ] ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr                 ; 6 uses
  %i.o = add i64 %i.m, 16
  store i64 %i.o, ptr %i.i, align 8
  store ptr null, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.q, align 4
  %i.r = icmp sgt i32 %1, 0
  br i1 %i.r, label %bb.c, label %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_22BoyerMoorePositionInfoEEEJRiRPS1_EEEPT_DpOT0_.exit

bb.c:                                             ; preds = %_ZN2v88internal4Zone8AllocateINS0_8ZoneListIPNS0_22BoyerMoorePositionInfoEEEEEPvm.exit.i
  %i.s = zext nneg i32 %1 to i64
  %i.t = shl nuw nsw i64 %i.s, 3                  ; 3 uses
  %i.u = load i64, ptr %i.g, align 8
  %i.v = load i64, ptr %i.i, align 8              ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ugt i64 %i.t, %i.w
  br i1 %i.x, label %bb.d, label %.lr.ph.preheader, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef %i.t) #26
  %.pre.i.i.i.i = load i64, ptr %i.i, align 8
  br label %.lr.ph.preheader

_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_22BoyerMoorePositionInfoEEEJRiRPS1_EEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal4Zone8AllocateINS0_8ZoneListIPNS0_22BoyerMoorePositionInfoEEEEEPvm.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.n, ptr %i.y, align 8
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.d
  %i.z = phi i64 [ %.pre.i.i.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = add i64 %i.z, %i.t
  store i64 %i.ab, ptr %i.i, align 8
  store ptr %i.aa, ptr %i.n, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.n, ptr %i.ac, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal8ZoneListIPNS0_22BoyerMoorePositionInfoEE3AddERKS3_PNS0_4ZoneE.exit, %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_22BoyerMoorePositionInfoEEEJRiRPS1_EEEPT_DpOT0_.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8ZoneListIPNS0_22BoyerMoorePositionInfoEE3AddERKS3_PNS0_4ZoneE.exit
  %.011 = phi i32 [ %i.bn, %_ZN2v88internal8ZoneListIPNS0_22BoyerMoorePositionInfoEE3AddERKS3_PNS0_4ZoneE.exit ], [ 0, %.lr.ph.preheader ]
  %i.ad = load ptr, ptr %i.ac, align 8            ; 5 uses
  %i.ae = load i64, ptr %i.g, align 8
  %i.af = load i64, ptr %i.i, align 8             ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ult i64 %i.ag, 24
  br i1 %i.ah, label %bb.e, label %_ZN2v88internal4Zone3NewINS0_22BoyerMoorePositionInfoEJEEEPT_DpOT0_.exit, !prof !6

bb.e:                                             ; preds = %.lr.ph
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef 24) #26
  %.pre.i.i4 = load i64, ptr %i.i, align 8
  br label %_ZN2v88internal4Zone3NewINS0_22BoyerMoorePositionInfoEJEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_22BoyerMoorePositionInfoEJEEEPT_DpOT0_.exit: ; preds = %.lr.ph, %bb.e
  %i.ai = phi i64 [ %.pre.i.i4, %bb.e ], [ %i.af, %.lr.ph ] ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = add i64 %i.ai, 24
  store i64 %i.ak, ptr %i.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 4 uses
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8            ; 3 uses
  %i.ap = icmp slt i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_22BoyerMoorePositionInfoEJEEEPT_DpOT0_.exit
  %i.aq = load ptr, ptr %i.ad, align 8
  br label %_ZN2v88internal8ZoneListIPNS0_22BoyerMoorePositionInfoEE3AddERKS3_PNS0_4ZoneE.exit

bb.g:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_22BoyerMoorePositionInfoEJEEEPT_DpOT0_.exit
  %i.ar = shl nsw i32 %i.ao, 1
  %i.as = or disjoint i32 %i.ar, 1                ; 2 uses
  %i.at = icmp sgt i32 %i.ao, -1
  br i1 %i.at, label %bb.i, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.au = zext nneg i32 %i.as to i64
  %i.av = shl nuw nsw i64 %i.au, 3                ; 3 uses
  %i.aw = load i64, ptr %i.g, align 8
  %i.ax = load i64, ptr %i.i, align 8             ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = icmp ugt i64 %i.av, %i.ay
  br i1 %i.az, label %bb.j, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_22BoyerMoorePositionInfoEA_S4_EEPT_m.exit.i.i.i.i, !prof !6

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef %i.av) #26
  %.pre.i.i.i.i.i.i = load i64, ptr %i.i, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_22BoyerMoorePositionInfoEA_S4_EEPT_m.exit.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayIPNS0_22BoyerMoorePositionInfoEA_S4_EEPT_m.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.ba = phi i64 [ %.pre.i.i.i.i.i.i, %bb.j ], [ %i.ax, %bb.i ] ; 2 uses
  %i.bb = inttoptr i64 %i.ba to ptr               ; 5 uses
  %i.bc = add i64 %i.ba, %i.av
  store i64 %i.bc, ptr %i.i, align 8
  %i.bd = load i32, ptr %i.al, align 4            ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %bb.k, label %_ZN2v88internal8ZoneListIPNS0_22BoyerMoorePositionInfoEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

bb.k:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_22BoyerMoorePositionInfoEA_S4_EEPT_m.exit.i.i.i.i
  %i.bf = load ptr, ptr %i.ad, align 8            ; 3 uses
  switch i32 %i.bd, label %bb.n [
    i32 2, label %bb.m
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bg = load i64, ptr %i.bf, align 1
  store i64 %i.bg, ptr %i.bb, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_22BoyerMoorePositionInfoEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bb, ptr noundef nonnull align 1 dereferenceable(16) %i.bf, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_22BoyerMoorePositionInfoEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

bb.n:                                             ; preds = %bb.k
  %i.bh = zext nneg i32 %i.bd to i64
  %i.bi = shl nuw nsw i64 %i.bh, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.bf, i64 %i.bi, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_22BoyerMoorePositionInfoEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListIPNS0_22BoyerMoorePositionInfoEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %_ZN2v88internal4Zone13AllocateArrayIPNS0_22BoyerMoorePositionInfoEA_S4_EEPT_m.exit.i.i.i.i
  store ptr %i.bb, ptr %i.ad, align 8
  store i32 %i.as, ptr %i.an, align 8
  %i.bj = load i32, ptr %i.al, align 4
  br label %_ZN2v88internal8ZoneListIPNS0_22BoyerMoorePositionInfoEE3AddERKS3_PNS0_4ZoneE.exit

_ZN2v88internal8ZoneListIPNS0_22BoyerMoorePositionInfoEE3AddERKS3_PNS0_4ZoneE.exit: ; preds = %bb.f, %_ZN2v88internal8ZoneListIPNS0_22BoyerMoorePositionInfoEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i
  %.sink12.i = phi i32 [ %i.bj, %_ZN2v88internal8ZoneListIPNS0_22BoyerMoorePositionInfoEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i ], [ %i.am, %bb.f ] ; 2 uses
  %.sink8.i = phi ptr [ %i.bb, %_ZN2v88internal8ZoneListIPNS0_22BoyerMoorePositionInfoEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i ], [ %i.aq, %bb.f ]
  %i.bk = add nsw i32 %.sink12.i, 1
  store i32 %i.bk, ptr %i.al, align 4
  %i.bl = sext i32 %.sink12.i to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %.sink8.i, i64 %i.bl
  store ptr %i.aj, ptr %i.bm, align 8
  %i.bn = add nuw nsw i32 %.011, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bn, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal19BoyerMooreLookahead22FindWorthwhileIntervalEPiS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN2v88internal19BoyerMooreLookahead16FindBestIntervalEiiPiS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 4, i32 noundef 0, ptr noundef %1, ptr noundef %2)
  %i.b = tail call noundef i32 @_ZN2v88internal19BoyerMooreLookahead16FindBestIntervalEiiPiS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 8, i32 noundef %i.a, ptr noundef %1, ptr noundef %2)
  %i.c = tail call noundef i32 @_ZN2v88internal19BoyerMooreLookahead16FindBestIntervalEiiPiS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 16, i32 noundef %i.b, ptr noundef %1, ptr noundef %2)
  %i.d = icmp ne i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal19BoyerMooreLookahead16FindBestIntervalEiiPiS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.041 = alloca [2 x i64], align 8          ; 9 uses
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.preheader.lr.ph, label %.critedge._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.041, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.041, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.041, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.o
  %i.g = phi i32 [ %i.a, %.preheader.lr.ph ], [ %i.bq, %bb.o ] ; 7 uses
  %.057 = phi i32 [ %2, %.preheader.lr.ph ], [ %.1, %bb.o ] ; 3 uses
  %.03556 = phi i32 [ 0, %.preheader.lr.ph ], [ %.2.lcssa, %bb.o ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = sext i32 %.03556 to i64
  %i.k = sext i32 %i.g to i64
  %i.l = add nsw i32 %.03556, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %i.l)
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.j, %.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp sgt i32 %i.p, %1
  br i1 %i.q, label %bb.c, label %.critedge.split.loop.exit86

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.r = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.r, label %bb.b, label %.critedge, !llvm.loop !68

.critedge.split.loop.exit86:                      ; preds = %bb.b
  %i.s = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.split.loop.exit86
  %.136.lcssa = phi i32 [ %i.s, %.critedge.split.loop.exit86 ], [ %smax, %bb.c ] ; 7 uses
  %i.t = icmp eq i32 %.136.lcssa, %i.g
  br i1 %i.t, label %.critedge._crit_edge, label %bb.d

bb.d:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.041)
  store i64 0, ptr %i.d, align 8
  %i.u = icmp slt i32 %.136.lcssa, %i.g
  br i1 %i.u, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.d
  %i.v = sext i32 %.136.lcssa to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv70 = phi i64 [ %i.v, %.lr.ph ], [ %indvars.iv.next71, %bb.f ] ; 3 uses
  %i.w = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.f ] ; 2 uses
  %i.x = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv70
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i32, ptr %i.aa, align 8
  %.not = icmp sgt i32 %i.ab, %1
  br i1 %.not, label %..critedge2_crit_edge50, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i = load i64, ptr %i.z, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ac = or i64 %i.x, %.sroa.0.0.copyload.i      ; 2 uses
  %i.ad = or i64 %i.w, %.sroa.2.0.copyload.i      ; 2 uses
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next71 to i32
  %exitcond.not = icmp eq i32 %i.g, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge2.sink.split, label %bb.e, !llvm.loop !69

..critedge2_crit_edge50:                          ; preds = %bb.e
  %i.ae = trunc nsw i64 %indvars.iv70 to i32
  br label %.critedge2.sink.split

.critedge2.sink.split:                            ; preds = %bb.f, %..critedge2_crit_edge50
  %.lcssa80.sink = phi i64 [ %i.w, %..critedge2_crit_edge50 ], [ %i.ad, %bb.f ]
  %.lcssa47.ph = phi i64 [ %i.x, %..critedge2_crit_edge50 ], [ %i.ac, %bb.f ]
  %.2.lcssa.ph = phi i32 [ %i.ae, %..critedge2_crit_edge50 ], [ %i.g, %bb.f ]
  store i64 %.lcssa80.sink, ptr %i.e, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.sink.split, %bb.d
  %.lcssa47 = phi i64 [ 0, %bb.d ], [ %.lcssa47.ph, %.critedge2.sink.split ] ; 2 uses
  %.2.lcssa = phi i32 [ %.136.lcssa, %bb.d ], [ %.2.lcssa.ph, %.critedge2.sink.split ] ; 4 uses
  store i64 %.lcssa47, ptr %.sroa.041, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6bitsetILm128EE5resetEm.exit, %.critedge2
  %.sroa.0.0.copyload = phi i64 [ %.lcssa47, %.critedge2 ], [ %.sroa.0.0.copyload.pre, %_ZNSt6bitsetILm128EE5resetEm.exit ] ; 2 uses
  %.037 = phi i32 [ 0, %.critedge2 ], [ %i.aw, %_ZNSt6bitsetILm128EE5resetEm.exit ] ; 2 uses
  %.not.not.i = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %.not.not.i, label %_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.0.0.copyload, i1 true)
  %i.ag = trunc nuw nsw i64 %i.af to i32
  br label %bb.i

_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i:       ; preds = %bb.g
  %.sroa.2.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  %.not11.not.i = icmp eq i64 %.sroa.2.0.copyload, 0
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.2.0.copyload, i1 false)
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = add nuw nsw i32 %i.ai, 64
  br i1 %.not11.not.i, label %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i
  %.2.i.ph = phi i32 [ %i.aj, %_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i ], [ %i.ag, %bb.h ] ; 3 uses
  %i.ak = load ptr, ptr %5, align 8               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1088
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %._ZN2v88internal17FrequencyCollator9FrequencyEi.exit_crit_edge, label %bb.j

._ZN2v88internal17FrequencyCollator9FrequencyEi.exit_crit_edge: ; preds = %bb.i
  %.pre74 = zext nneg i32 %.2.i.ph to i64
  br label %_ZN2v88internal17FrequencyCollator9FrequencyEi.exit

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.ap = zext nneg i32 %.2.i.ph to i64           ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = shl nsw i32 %i.ar, 7
  %i.at = sdiv i32 %i.as, %i.am
  %i.au = add nsw i32 %i.at, 1
  br label %_ZN2v88internal17FrequencyCollator9FrequencyEi.exit

_ZN2v88internal17FrequencyCollator9FrequencyEi.exit: ; preds = %._ZN2v88internal17FrequencyCollator9FrequencyEi.exit_crit_edge, %bb.j
  %.pre-phi = phi i64 [ %.pre74, %._ZN2v88internal17FrequencyCollator9FrequencyEi.exit_crit_edge ], [ %i.ap, %bb.j ] ; 3 uses
  %.0.i = phi i32 [ 2, %._ZN2v88internal17FrequencyCollator9FrequencyEi.exit_crit_edge ], [ %i.au, %bb.j ]
  %i.av = icmp samesign ugt i32 %.2.i.ph, 127
  br i1 %i.av, label %bb.k, label %_ZNSt6bitsetILm128EE5resetEm.exit

bb.k:                                             ; preds = %_ZN2v88internal17FrequencyCollator9FrequencyEi.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i64 noundef %.pre-phi, i64 noundef 128) #25
  unreachable

_ZNSt6bitsetILm128EE5resetEm.exit:                ; preds = %_ZN2v88internal17FrequencyCollator9FrequencyEi.exit
  %i.aw = add nsw i32 %.0.i, %.037
  %i.ax = and i64 %.pre-phi, 63
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = xor i64 %i.ay, -1
  %i.ba = lshr i64 %.pre-phi, 3
  %.sroa.041.0..sroa_stride = and i64 %i.ba, 8    ; 2 uses
  %.sroa.041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.041, i64 %.sroa.041.0..sroa_stride
  %i.bb = load i64, ptr %.sroa.041.0..sroa_idx, align 8
  %i.bc = and i64 %i.bb, %i.az
  %.sroa.041.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %.sroa.041, i64 %.sroa.041.0..sroa_stride
  store i64 %i.bc, ptr %.sroa.041.0..sroa_idx122, align 8
  %.sroa.0.0.copyload.pre = load i64, ptr %.sroa.041, align 8
  br label %bb.g, !llvm.loop !70

_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit: ; preds = %_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i
  %i.bd = sub nsw i32 %.2.lcssa, %.136.lcssa      ; 2 uses
  %i.be = icmp slt i32 %i.bd, 4
  br i1 %i.be, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit
  %i.bf = load ptr, ptr %5, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load i8, ptr %i.bg, align 8, !range !9, !noundef !10
  %i.bi = trunc nuw i8 %i.bh to i1
  %.v = select i1 %i.bi, i32 5, i32 3
  %i.bj = icmp slt i32 %.136.lcssa, %.v
  %i.bk = select i1 %i.bj, i32 64, i32 128
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit
  %i.bl = phi i32 [ 64, %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit ], [ %i.bk, %bb.l ]
  %i.bm = sub nsw i32 %i.bl, %.037
  %i.bn = mul nsw i32 %i.bm, %i.bd                ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, %.057
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %.136.lcssa, ptr %3, align 4
  %i.bp = add nsw i32 %.2.lcssa, -1
  store i32 %i.bp, ptr %4, align 4
  %.pre = load i32, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bq = phi i32 [ %.pre, %bb.n ], [ %i.g, %bb.m ] ; 2 uses
  %.1 = phi i32 [ %i.bn, %bb.n ], [ %.057, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.041)
  %i.br = icmp slt i32 %.2.lcssa, %i.bq
  br i1 %i.br, label %.preheader, label %.critedge._crit_edge, !llvm.loop !71

.critedge._crit_edge:                             ; preds = %bb.o, %.critedge, %bb.a
  %.0.lcssa = phi i32 [ %2, %bb.a ], [ %.057, %.critedge ], [ %.1, %bb.o ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal19BoyerMooreLookahead12GetSkipTableEiiNS0_12DirectHandleINS0_9ByteArrayEEES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(address_is_null) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.034 = alloca [2 x i64], align 8          ; 16 uses
  %i.a = load i64, ptr %3, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = ashr i64 %i.f, 32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.d, i8 0, i64 %i.g, i1 false)
  %i.h = icmp eq ptr %4, null
  br i1 %i.h, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.not56 = icmp slt i32 %2, %1
  br i1 %.not56, label %._crit_edge, label %.split.us.us.preheader

.thread:                                          ; preds = %bb.a
  %i.i = load i64, ptr %4, align 8
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = ashr i64 %i.n, 32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 0, i64 %i.o, i1 false)
  %.not5668 = icmp slt i32 %2, %1
  br i1 %.not5668, label %._crit_edge, label %.split.preheader

.split.preheader:                                 ; preds = %.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = sext i32 %2 to i64
  %i.r = sext i32 %1 to i64
  %.sroa.034.8..sroa_idx107 = getelementptr inbounds nuw i8, ptr %.sroa.034, i64 8
  %.sroa.034.8..sroa_idx108 = getelementptr inbounds nuw i8, ptr %.sroa.034, i64 8
  br label %.split

.split.us.us.preheader:                           ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = sext i32 %2 to i64
  %i.u = sext i32 %1 to i64
  %.sroa.034.8..sroa_idx109 = getelementptr inbounds nuw i8, ptr %.sroa.034, i64 8
  %.sroa.034.8..sroa_idx110 = getelementptr inbounds nuw i8, ptr %.sroa.034, i64 8
  br label %.split.us.us

.split.us.us:                                     ; preds = %.split.us.us.preheader, %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit.split.us.us
  %indvars.iv63 = phi i64 [ %i.t, %.split.us.us.preheader ], [ %indvars.iv.next64, %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit.split.us.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.034)
  %i.v = load ptr, ptr %i.s, align 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv63
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.sroa.0.0.copyload.i28.us = load i64, ptr %i.y, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.2.0.copyload.i.us = load i64, ptr %.sroa.2.0..sroa_idx.i.us, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i28.us, ptr %.sroa.034, align 8
  store i64 %.sroa.2.0.copyload.i.us, ptr %.sroa.034.8..sroa_idx109, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6bitsetILm128EE5resetEm.exit.us.us, %.split.us.us
  %.sroa.2.0.copyload.us.us = phi i64 [ %.sroa.2.0.copyload.pr.us.us, %_ZNSt6bitsetILm128EE5resetEm.exit.us.us ], [ %.sroa.2.0.copyload.i.us, %.split.us.us ] ; 2 uses
  %.sroa.0.0.copyload.us.us = phi i64 [ %.sroa.0.0.copyload.pr.us.us, %_ZNSt6bitsetILm128EE5resetEm.exit.us.us ], [ %.sroa.0.0.copyload.i28.us, %.split.us.us ] ; 2 uses
  %.not.not.i.us.us = icmp eq i64 %.sroa.0.0.copyload.us.us, 0
  br i1 %.not.not.i.us.us, label %_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i.us.us, label %.thread69

.thread69:                                        ; preds = %bb.c
  %i.z = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.0.0.copyload.us.us, i1 true)
  br label %_ZNSt6bitsetILm128EE5resetEm.exit.us.us

_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i.us.us: ; preds = %bb.c
  %.not11.not.i.us.us = icmp eq i64 %.sroa.2.0.copyload.us.us, 0
  br i1 %.not11.not.i.us.us, label %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit.split.us.us, label %bb.d

bb.d:                                             ; preds = %_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i.us.us
  %i.aa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.2.0.copyload.us.us, i1 true)
  %i.ab = or disjoint i64 %i.aa, 64
  br label %_ZNSt6bitsetILm128EE5resetEm.exit.us.us

_ZNSt6bitsetILm128EE5resetEm.exit.us.us:          ; preds = %bb.d, %.thread69
  %.sink75 = phi i64 [ %i.ab, %bb.d ], [ %i.z, %.thread69 ] ; 3 uses
  %i.ac = load i64, ptr %3, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sink75
  store i8 1, ptr %i.ag, align 1
  %i.ah = and i64 %.sink75, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = xor i64 %i.ai, -1
  %i.ak = lshr i64 %.sink75, 3
  %.sroa.034.0..sroa_stride.us.us = and i64 %i.ak, 8 ; 2 uses
  %.sroa.034.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %.sroa.034, i64 %.sroa.034.0..sroa_stride.us.us
  %i.al = load i64, ptr %.sroa.034.0..sroa_idx103, align 8
  %i.am = and i64 %i.al, %i.aj
  %.sroa.034.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %.sroa.034, i64 %.sroa.034.0..sroa_stride.us.us
  store i64 %i.am, ptr %.sroa.034.0..sroa_idx106, align 8
  %.sroa.0.0.copyload.pr.us.us = load i64, ptr %.sroa.034, align 8
  %.sroa.2.0.copyload.pr.us.us = load i64, ptr %.sroa.034.8..sroa_idx110, align 8
  br label %bb.c, !llvm.loop !72

_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit.split.us.us: ; preds = %_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.034)
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, -1
  %.not.us.not = icmp sgt i64 %indvars.iv63, %i.u
  br i1 %.not.us.not, label %.split.us.us, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit.split, %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit.split.us.us, %.thread, %bb.b
  %reass.sub = sub i32 %2, %1
  %i.an = add i32 %reass.sub, 1
  ret i32 %i.an

.split:                                           ; preds = %.split.preheader, %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit.split
  %indvars.iv = phi i64 [ %i.q, %.split.preheader ], [ %indvars.iv.next, %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit.split ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.034)
  %i.ao = load ptr, ptr %i.p, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.sroa.0.0.copyload.i28 = load i64, ptr %i.ar, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i28, ptr %.sroa.034, align 8
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.034.8..sroa_idx107, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6bitsetILm128EE5resetEm.exit, %.split
  %.sroa.2.0.copyload = phi i64 [ %.sroa.2.0.copyload.pr, %_ZNSt6bitsetILm128EE5resetEm.exit ], [ %.sroa.2.0.copyload.i, %.split ] ; 2 uses
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pr, %_ZNSt6bitsetILm128EE5resetEm.exit ], [ %.sroa.0.0.copyload.i28, %.split ] ; 2 uses
  %.not.not.i = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %.not.not.i, label %_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.0.0.copyload, i1 true)
  %i.at = trunc nuw nsw i64 %i.as to i32
  br label %bb.g

_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i:       ; preds = %bb.e
  %.not11.not.i = icmp eq i64 %.sroa.2.0.copyload, 0
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.2.0.copyload, i1 false)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = add nuw nsw i32 %i.av, 64
  br i1 %.not11.not.i, label %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit.split, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i
  %.2.i.ph = phi i32 [ %i.aw, %_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i ], [ %i.at, %bb.f ] ; 4 uses
  %i.ax = load i64, ptr %3, align 8
  %i.ay = add i64 %i.ax, -1
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = zext nneg i32 %.2.i.ph to i64           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  store i8 1, ptr %i.bc, align 1
  %i.bd = and i32 %.2.i.ph, 15
  %i.be = lshr i32 %.2.i.ph, 4
  %i.bf = and i32 %i.be, 7
  %i.bg = load i64, ptr %4, align 8
  %i.bh = add i64 %i.bg, -1
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = zext nneg i32 %i.bd to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = shl nuw nsw i32 1, %i.bf
  %i.bo = trunc nuw i32 %i.bn to i8
  %i.bp = or i8 %i.bm, %i.bo
  store i8 %i.bp, ptr %i.bl, align 1
  %i.bq = icmp samesign ugt i32 %.2.i.ph, 127
  br i1 %i.bq, label %.split55.us, label %_ZNSt6bitsetILm128EE5resetEm.exit

.split55.us:                                      ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i64 noundef 128, i64 noundef 128) #25
  unreachable

_ZNSt6bitsetILm128EE5resetEm.exit:                ; preds = %bb.g
  %i.br = and i64 %i.bb, 63
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = xor i64 %i.bs, -1
  %i.bu = lshr i64 %i.bb, 3
  %.sroa.034.0..sroa_stride = and i64 %i.bu, 8    ; 2 uses
  %.sroa.034.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.034, i64 %.sroa.034.0..sroa_stride
  %i.bv = load i64, ptr %.sroa.034.0..sroa_idx, align 8
  %i.bw = and i64 %i.bv, %i.bt
  %.sroa.034.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %.sroa.034, i64 %.sroa.034.0..sroa_stride
  store i64 %i.bw, ptr %.sroa.034.0..sroa_idx100, align 8
  %.sroa.0.0.copyload.pr = load i64, ptr %.sroa.034, align 8
  %.sroa.2.0.copyload.pr = load i64, ptr %.sroa.034.8..sroa_idx108, align 8
  br label %bb.e, !llvm.loop !72

_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit.split: ; preds = %_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.034)
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.r
  br i1 %.not.not, label %.split, label %._crit_edge, !llvm.loop !73
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19BoyerMooreLookahead20EmitSkipInstructionsEPNS0_20RegExpMacroAssemblerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %2 = alloca %"class.v8::internal::Label", align 4 ; 8 uses
  %3 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4
  %i.c = call noundef i32 @_ZN2v88internal19BoyerMooreLookahead16FindBestIntervalEiiPiS2_(ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.d = call noundef i32 @_ZN2v88internal19BoyerMooreLookahead16FindBestIntervalEiiPiS2_(ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef 8, i32 noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.e = call noundef i32 @_ZN2v88internal19BoyerMooreLookahead16FindBestIntervalEiiPiS2_(ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef 16, i32 noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not58 = icmp eq i32 %i.e, 0
  br i1 %.not58, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 4              ; 9 uses
  %i.g = load i32, ptr %i.a, align 4              ; 6 uses
  %.not66 = icmp slt i32 %i.f, %i.g
  br i1 %.not66, label %.thread81, label %.lr.ph

.thread81:                                        ; preds = %bb.b
  %i.h = add nsw i32 %i.f, 1
  %i.i = sub i32 %i.h, %i.g
  br label %bb.m

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %i.f to i64
  %i.n = sext i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.m, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.03769 = phi i8 [ 0, %.lr.ph ], [ %.1.ph, %bb.g ] ; 2 uses
  %.03868 = phi i32 [ 0, %.lr.ph ], [ %.139.ph, %bb.g ]
  %i.o = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = trunc nuw i8 %.03769 to i1
  %i.u = icmp sgt i32 %i.r, 1
  %or.cond57 = or i1 %i.u, %i.t
  br i1 %or.cond57, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i = load i64, ptr %i.p, align 8 ; 2 uses
  %.not.not.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not.not.i, label %_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.0.0.copyload.i, i1 true)
  %i.w = trunc nuw nsw i64 %i.v to i32
  br label %bb.g

_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i:       ; preds = %bb.e
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %.not11.not.i = icmp eq i64 %.sroa.2.0.copyload.i, 0
  %i.x = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.2.0.copyload.i, i1 false)
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, 64
  %spec.select.i = select i1 %.not11.not.i, i32 -1, i32 %i.z
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i
  %.139.ph = phi i32 [ %spec.select.i, %_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i ], [ %i.w, %bb.f ], [ %.03868, %bb.c ] ; 3 uses
  %.1.ph = phi i8 [ 1, %_ZNKSt6bitsetILm128EE9to_ullongEv.exit18.i ], [ 1, %bb.f ], [ %.03769, %bb.c ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.n
  br i1 %.not.not, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit, !llvm.loop !74

.thread:                                          ; preds = %bb.d
  %i.aa = add nsw i32 %i.f, 1
  %i.ab = sub i32 %i.aa, %i.g
  br label %bb.m

_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit: ; preds = %bb.g
  %i.ac = trunc nuw i8 %.1.ph to i1               ; 2 uses
  %i.ad = add nsw i32 %i.f, 1
  %i.ae = sub i32 %i.ad, %i.g                     ; 3 uses
  %i.af = icmp eq i32 %i.ae, 1
  %or.cond = select i1 %i.ac, i1 %i.af, i1 false
  %i.ag = icmp slt i32 %i.f, 3
  %or.cond3 = and i1 %or.cond, %i.ag
  br i1 %or.cond3, label %bb.p, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit
  br i1 %i.ac, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 0, ptr %2, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.ah, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 0, ptr %3, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %1, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %3) #26
  call void @_ZN2v88internal20RegExpMacroAssembler20LoadCurrentCharacterEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.f, ptr noundef nonnull %2, i1 noundef zeroext true, i32 noundef 1, i32 noundef -1) #26
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp sgt i32 %i.an, 128
  %i.ap = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %.139.ph, i32 noundef 127, ptr noundef nonnull %2) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %.139.ph, ptr noundef nonnull %2) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.au = load ptr, ptr %1, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.ae) #26
  %i.ax = load ptr, ptr %1, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 264
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %3) #26
  %i.ba = load ptr, ptr %1, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.p

bb.m:                                             ; preds = %.thread81, %.thread, %bb.h
  %i.bd = phi i32 [ %i.ab, %.thread ], [ %i.ae, %bb.h ], [ %i.i, %.thread81 ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewByteArrayEiNS0_14AllocationTypeENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1) %i.bf, i32 noundef 128, i8 noundef zeroext 1, i8 noundef zeroext 0) #26 ; 2 uses
  %i.bh = load ptr, ptr %1, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 224
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.bd) #26
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewByteArrayEiNS0_14AllocationTypeENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1) %i.bf, i32 noundef 16, i8 noundef zeroext 1, i8 noundef zeroext 0) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.043.0 = phi ptr [ %i.bl, %bb.n ], [ null, %bb.m ] ; 2 uses
  %i.bm = tail call noundef i32 @_ZN2v88internal19BoyerMooreLookahead12GetSkipTableEiiNS0_12DirectHandleINS0_9ByteArrayEEES4_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.g, i32 noundef %i.f, ptr %i.bg, ptr %.sroa.043.0) ; 0 uses
  %i.bn = load ptr, ptr %1, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 216
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.f, ptr %i.bg, ptr %.sroa.043.0, i32 noundef %i.bd) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o, %_ZN2v88internal12_GLOBAL__N_117BitsetFirstSetBitESt6bitsetILm128EE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewByteArrayEiNS0_14AllocationTypeENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal20FixedLengthLoopStateC2EbPNS0_10ChoiceNodeE(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 77), (80, 89), (92, 101), (104, 113), (116, 125), (128, 136)) %0, i1 noundef zeroext %1, ptr noundef %2) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 100, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  store i16 255, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_1
