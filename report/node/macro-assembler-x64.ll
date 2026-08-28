Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/macro-assembler-x64?download=true
inline.NumInlined: 3362
inline.NumDeleted: 638
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", [4 x i8], %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", [4 x i8], %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.32", [4 x i8], %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue.35", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.35", [2 x i8], %"class.v8::internal::FlagValue.32", [4 x i8], %"class.v8::internal::FlagValue.34", %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.33", %"class.v8::internal::FlagValue.33", [4 x i8], %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.36", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.32", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.31", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.35" = type { %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base" }
%"struct.std::_Optional_payload_base" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.34" = type { double }
%"class.v8::internal::FlagValue.33" = type { i32 }
%"class.v8::internal::FlagValue.36" = type { i64 }
%"class.v8::internal::FlagValue.32" = type { i32 }
%"class.v8::internal::FlagValue.31" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.v8::internal::ExternalReference" = type { i64 }
%"class.v8::internal::Operand" = type { %union.anon }
%union.anon = type { %"struct.v8::internal::Operand::LabelOperand" }
%"struct.v8::internal::Operand::LabelOperand" = type { i8, i8, i8, ptr }
%"class.v8::internal::Label" = type { i32, i32 }

$_ZN2v88internal9AssemblerD2Ev = comdat any

$_ZN2v88internal14MacroAssemblerD0Ev = comdat any

$_ZN2v88internal13AssemblerBase21AbortedCodeGenerationEv = comdat any

$_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"is_int32(offset)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"COMPRESS_POINTERS_BOOL\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str.4 = private unnamed_addr constant [23 x i8] c"root_array_available()\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"f->nargs < 0 || f->nargs == num_arguments\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"!ext.IsIsolateFieldId()\00", align 1
@.str.8 = private unnamed_addr constant [100 x i8] c"argument_count == IsolateGroup::current()->js_dispatch_table()->GetParameterCount( dispatch_handle)\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"isolate()->IsGeneratingEmbeddedBuiltins()\00", align 1
@.str.10 = private unnamed_addr constant [81 x i8] c"cc == Condition::kUnsignedLessThan || cc == Condition::kUnsignedGreaterThanEqual\00", align 1
@_ZTVN2v88internal14MacroAssemblerE = hidden unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal9AssemblerD2Ev, ptr @_ZN2v88internal14MacroAssemblerD0Ev, ptr @_ZN2v88internal13AssemblerBase21AbortedCodeGenerationEv, ptr @_ZN2v88internal9Assembler24PatchInHeapNumberRequestEmNS0_6HandleINS0_10HeapNumberEEE, ptr @_ZN2v88internal14MacroAssembler22LoadFromConstantsTableENS0_8RegisterEi, ptr @_ZN2v88internal14MacroAssembler22LoadRootRegisterOffsetENS0_8RegisterEl, ptr @_ZN2v88internal14MacroAssembler16LoadRootRelativeENS0_8RegisterEi, ptr @_ZN2v88internal14MacroAssembler17StoreRootRelativeEiNS0_8RegisterE, ptr @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE] }, align 8
@_ZN2v88internal11CpuFeatures10supported_E = external local_unnamed_addr global i32, align 4
@_ZN2v88internal12IsolateGroup22default_isolate_group_E = external local_unnamed_addr global ptr, align 8
@.str.50 = private unnamed_addr constant [19 x i8] c"!IsFreelistEntry()\00", align 1
@_ZTVN2v88internal9AssemblerE = external unnamed_addr constant { [6 x ptr] }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i64, ptr } @_ZNK2v88internal22StackArgumentsAccessor18GetArgumentOperandEi(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = shl nsw i32 %1, 3                        ; 2 uses
  %i.b = add nsw i32 %i.a, 8                      ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %i.a to i64
  %i.e = add nsw i64 %i.d, 136
  %i.f = icmp ult i64 %i.e, 256
  br i1 %i.f, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.6.sroa.4.0.extract.shift = and i32 %i.b, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.6.sroa.0.0 = phi i32 [ %i.b, %bb.c ], [ 0, %bb.a ], [ %i.b, %bb.b ]
  %.sroa.2.0 = phi i64 [ 8650752, %bb.c ], [ 262144, %bb.a ], [ 4456448, %bb.b ]
  %.sroa.6.sroa.4.sroa.0.0 = phi i32 [ %.sroa.6.sroa.4.0.extract.shift, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.fca.1.load = phi ptr [ inttoptr (i64 6 to ptr), %bb.c ], [ inttoptr (i64 2 to ptr), %bb.a ], [ inttoptr (i64 3 to ptr), %bb.b ]
  %.sroa.6.sroa.0.0.insert.ext = and i32 %.sroa.6.sroa.0.0, 255
  %.sroa.6.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.sroa.4.sroa.0.0, %.sroa.6.sroa.0.0.insert.ext
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.sroa.0.0.insert.insert to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.2.0
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, 603979776
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.2.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler9CodeEntryEv(ptr noundef nonnull align 8 dereferenceable(436) %0) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN2v88internal9Assembler7endbr64Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) #15
  ret void
}

declare void @_ZN2v88internal9Assembler7endbr64Ev(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler16ExceptionHandlerEv(ptr noundef nonnull align 8 dereferenceable(436) %0) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN2v88internal9Assembler7endbr64Ev(ptr noundef nonnull align 8 dereferenceable(436) %0) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal14MacroAssembler30AssertInSandboxedExecutionModeEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(436) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal14MacroAssembler11ExitSandboxEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(436) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler4LoadENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  store i64 %2, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.e = load i8, ptr %i.d, align 1, !range !5
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef i64 @_ZN2v88internal18MacroAssemblerBase38RootRegisterOffsetForExternalReferenceEPNS0_7IsolateERKNS0_17ExternalReferenceE(ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(8) %3) #15 ; 4 uses
  %i.j = add i64 %i.i, 2147483648
  %i.k = icmp ult i64 %i.j, 4294967296
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i64 %i.i, 128
  %i.m = icmp ult i64 %i.l, 256                   ; 3 uses
  %.sroa.5.sroa.4.0.extract.shift = and i64 %i.i, 4294967040
  %.sroa.3.0 = select i1 %i.m, i64 4521984, i64 8716288
  %.sroa.5.sroa.4.sroa.0.0 = select i1 %i.m, i64 0, i64 %.sroa.5.sroa.4.0.extract.shift
  %storemerge = select i1 %i.m, i64 2, i64 5
  %.sroa.5.sroa.0.0.insert.ext = and i64 %i.i, 255
  %.sroa.5.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.sroa.4.sroa.0.0, %.sroa.5.sroa.0.0.insert.ext
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.sroa.0.0.insert.insert, 24
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.3.0
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, 256
  %.cast = inttoptr i64 %storemerge to ptr
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %.sroa.2.0.insert.insert, ptr nonnull %.cast, i32 noundef 8) #15
  br label %bb.g

.thread:                                          ; preds = %bb.b, %bb.a
  %i.n = icmp eq i8 %1, 0
  br i1 %i.n, label %bb.d, label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread
  %.sroa.01.0.copyload.pre = load i64, ptr %3, align 8
  br label %bb.f

bb.d:                                             ; preds = %.thread
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 179
  %i.p = load i8, ptr %i.o, align 1, !range !5, !noundef !6
  %i.q = trunc nuw i8 %i.p to i1
  %.sroa.01.0.copyload.pre33 = load i64, ptr %3, align 8 ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN2v88internal9Assembler8load_raxENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.01.0.copyload.pre33) #15
  br label %bb.g

bb.f:                                             ; preds = %.thread._crit_edge, %bb.d
  %.sroa.01.0.copyload = phi i64 [ %.sroa.01.0.copyload.pre, %.thread._crit_edge ], [ %.sroa.01.0.copyload.pre33, %bb.d ]
  %i.r = call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.sroa.01.0.copyload, i8 10) ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %i.s, ptr %i.t, i32 noundef 8) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noundef i64 @_ZN2v88internal18MacroAssemblerBase38RootRegisterOffsetForExternalReferenceEPNS0_7IsolateERKNS0_17ExternalReferenceE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_ZN2v88internal9Assembler8load_raxENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(408), i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, i8 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Operand", align 8 ; 22 uses
  %4 = alloca %"class.v8::internal::ExternalReference", align 8 ; 8 uses
  store i64 %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 @_ZNK2v88internal17ExternalReference16IsIsolateFieldIdEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef i32 @_ZNK2v88internal17ExternalReference25offset_from_root_registerEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i64 0, ptr %3, align 8
  %i.h = sext i32 %i.e to i64
  %i.i = add nsw i64 %i.h, 128
  %i.j = icmp ult i64 %i.i, 256
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 69, ptr %i.g, align 2
  store i8 1, ptr %i.f, align 1
  %i.k = trunc i32 %i.e to i8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %i.k, ptr %i.l, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

bb.e:                                             ; preds = %bb.c
  store i8 -123, ptr %i.g, align 2
  store i8 1, ptr %i.f, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i32 %i.e, ptr %i.m, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.o = load i8, ptr %i.n, align 1, !range !5, !noundef !6
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef i64 @_ZN2v88internal18MacroAssemblerBase38RootRegisterOffsetForExternalReferenceEPNS0_7IsolateERKNS0_17ExternalReferenceE(ptr noundef %i.r, ptr noundef nonnull align 8 dereferenceable(8) %4) #15 ; 4 uses
  %i.t = add i64 %i.s, 2147483648
  %i.u = icmp ult i64 %i.t, 4294967296
  br i1 %i.u, label %bb.h, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i64 0, ptr %3, align 8
  %i.x = add nsw i64 %i.s, 128
  %i.y = icmp ult i64 %i.x, 256
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 69, ptr %i.w, align 2
  store i8 1, ptr %i.v, align 1
  %i.aa = trunc nsw i64 %i.s to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

bb.j:                                             ; preds = %bb.h
  %i.ab = trunc nsw i64 %i.s to i32
  store i8 -123, ptr %i.w, align 2
  store i8 1, ptr %i.v, align 1
  store i32 %i.ab, ptr %i.z, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48: ; preds = %bb.g, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 179
  %i.ad = load i8, ptr %i.ac, align 1, !range !5, !noundef !6
  %i.ae = trunc nuw i8 %i.ad to i1
end_hunk_0
begin_hunk_1_@_ZN2v88internal14MacroAssembler13CheckPageFlagENS0_8RegisterES2_iNS0_9ConditionEPNS0_5LabelENS4_8DistanceE:bb.a
  %i.l = and i8 %2, 7
  %i.m = or disjoint i8 %i.l, 64
  store i8 %i.m, ptr %i.d, align 2
  %i.n = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.n)
  %i.o = lshr i8 %2, 3
  store i8 %i.o, ptr %i.c, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.k
  store i8 0, ptr %i.p, align 1
  %i.q = add nuw nsw i64 %i.k, 1
  %i.r = inttoptr i64 %i.q to ptr
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20: ; preds = %bb.f, %bb.g
  %i.s = phi ptr [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.t = and i32 %3, 255
  %i.u = load i64, ptr %7, align 8
  %.sroa.024.0.insert.ext = zext nneg i32 %i.t to i64
  tail call void @_ZN2v88internal9Assembler5testbENS0_7OperandENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %i.u, ptr %i.s, i64 %.sroa.024.0.insert.ext) #15
  br label %bb.l

bb.h:                                             ; preds = %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 2 ; 3 uses
  store i64 0, ptr %8, align 8
  switch i8 %2, label %._crit_edge [
    i8 4, label %bb.i
    i8 12, label %bb.i
    i8 5, label %bb.k
    i8 13, label %bb.k
  ]

._crit_edge:                                      ; preds = %bb.h
  %.pre71 = and i8 %2, 7
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.h
  %scevgep = getelementptr inbounds nuw i8, ptr %8, i64 3
  %i.x = and i8 %2, 7                             ; 2 uses
  %i.y = or disjoint i8 %i.x, 32
  store i8 %i.y, ptr %scevgep, align 1
  %i.z = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.z)
  %cond78 = icmp eq i8 %2, 5
  br i1 %cond78, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.pre-phi72 = phi i8 [ %.pre71, %._crit_edge ], [ %i.x, %bb.i ]
  %i.aa = phi ptr [ inttoptr (i64 1 to ptr), %._crit_edge ], [ inttoptr (i64 2 to ptr), %bb.i ]
  %i.ab = lshr i8 %2, 3
  store i8 %.pre-phi72, ptr %i.w, align 2
  %i.ac = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.ac)
  store i8 %i.ab, ptr %i.v, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.h
  %i.ad = phi i64 [ 1, %bb.h ], [ 1, %bb.h ], [ 2, %bb.i ] ; 2 uses
  %i.ae = and i8 %2, 7
  %i.af = or disjoint i8 %i.ae, 64
  store i8 %i.af, ptr %i.w, align 2
  %i.ag = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = lshr i8 %2, 3
  store i8 %i.ah, ptr %i.v, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ad
  store i8 0, ptr %i.ai, align 1
  %i.aj = add nuw nsw i64 %i.ad, 1
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.j, %bb.k
  %i.al = phi ptr [ %i.aa, %bb.j ], [ %i.ak, %bb.k ]
  %i.am = load i64, ptr %8, align 8
  %.sroa.0.0.insert.ext = zext nneg i32 %3 to i64
  tail call void @_ZN2v88internal9Assembler9emit_testENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %i.am, ptr %i.al, i64 %.sroa.0.0.insert.ext, i32 noundef 4) #15
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %4, ptr noundef %5, i32 noundef %6) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler5CheckENS0_9ConditionENS0_11AbortReasonE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store i32 0, ptr %3, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.a, align 4
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 0) #15
  call void @_ZN2v88internal9Assembler4int3Ev(ptr noundef nonnull align 8 dereferenceable(436) %0) #15, !inline_history !9
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler5AbortENS0_11AbortReasonE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext %1) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN2v88internal9Assembler4int3Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler8SbxCheckENS0_9ConditionENS0_11AbortReasonE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store i32 0, ptr %3, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.a, align 4
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 0) #15, !inline_history !10
  call void @_ZN2v88internal9Assembler4int3Ev(ptr noundef nonnull align 8 dereferenceable(436) %0) #15, !inline_history !11
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef nonnull %3) #15, !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler19CheckStackAlignmentEv(ptr noundef nonnull align 8 dereferenceable(436) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.a = tail call noundef i32 @_ZN2v84base2OS24ActivationFrameAlignmentEv() #15 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store i32 0, ptr %1, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.d, align 4
  %.sroa.0.0.insert.ext = zext nneg i32 %i.c to i64
  tail call void @_ZN2v88internal9Assembler9emit_testENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 4, i64 %.sroa.0.0.insert.ext, i32 noundef 8) #15
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 4, ptr noundef nonnull %1, i32 noundef 0) #15
  call void @_ZN2v88internal9Assembler4int3Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) #15
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef i32 @_ZN2v84base2OS24ActivationFrameAlignmentEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler17AlignStackPointerEv(ptr noundef nonnull align 8 dereferenceable(436) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN2v84base2OS24ActivationFrameAlignmentEv() #15 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sub nsw i32 0, %i.a
  %.sroa.0.0.insert.ext = zext i32 %i.c to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 4, i8 4, i64 %.sroa.0.0.insert.ext, i32 noundef 8) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler20PrepareCallCFunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN2v84base2OS24ActivationFrameAlignmentEv() #15
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i8 4, i32 noundef 8) #15
  %i.b = tail call i32 @llvm.smax.i32(i32 %1, i32 6)
  %.sroa.speculated.i = shl i32 %i.b, 3           ; 2 uses
  %i.c = add i32 %.sroa.speculated.i, -48         ; 5 uses
  %i.d = add i32 %.sroa.speculated.i, -40         ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.ext.i = zext i32 %i.d to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 5, i8 4, i64 %.sroa.0.0.insert.ext.i, i32 noundef 8) #15
  br label %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit

_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit: ; preds = %bb.a, %bb.b
  %i.f = sub nsw i32 0, %i.a
  %.sroa.0.0.insert.ext = zext i32 %i.f to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 4, i8 4, i64 %.sroa.0.0.insert.ext, i32 noundef 8) #15
  %i.g = icmp eq i32 %i.c, 0
  br i1 %i.g, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit
  %i.h = sext i32 %i.c to i64
  %i.i = add nsw i64 %i.h, 128
  %i.j = icmp ult i64 %i.i, 256
  br i1 %i.j, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.6.sroa.4.0.extract.shift = and i32 %i.c, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.c, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit, %bb.d
  %.sroa.6.sroa.0.0 = phi i32 [ %i.c, %bb.d ], [ 0, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit ], [ %i.c, %bb.c ]
  %.sroa.2.0 = phi i64 [ 8650752, %bb.d ], [ 262144, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit ], [ 4456448, %bb.c ]
  %.sroa.6.sroa.4.sroa.0.0 = phi i32 [ %.sroa.6.sroa.4.0.extract.shift, %bb.d ], [ 0, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit ], [ 0, %bb.c ]
  %i.k = phi ptr [ inttoptr (i64 6 to ptr), %bb.d ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit ], [ inttoptr (i64 3 to ptr), %bb.c ]
  %.sroa.6.sroa.0.0.insert.ext = and i32 %.sroa.6.sroa.0.0, 255
  %.sroa.6.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.sroa.4.sroa.0.0, %.sroa.6.sroa.0.0.insert.ext
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.sroa.0.0.insert.insert to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.2.0
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, 603979776
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.2.0.insert.insert, ptr nonnull %i.k, i8 10, i32 noundef 8) #15
  ret void
}

declare void @_ZN2v88internal9Assembler4callENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler4CallENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, ptr %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9Assembler4callENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %1, ptr %2) #15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %1, ptr %2, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler4callENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i64, ptr } @_ZN2v88internal14MacroAssembler25EntryFromBuiltinAsOperandENS0_7BuiltinE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(436) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:
  %i.a = icmp slt i32 %1, 7
  %i.b = icmp ne i32 %1, -1
  %spec.select.i.i = and i1 %i.a, %i.b
  %i.c = select i1 %spec.select.i.i, i32 -40, i32 20912
  %i.d = shl nsw i32 %1, 3
  %i.e = add nsw i32 %i.c, %i.d                   ; 3 uses
  %i.f = sext i32 %i.e to i64
  %i.g = add nsw i64 %i.f, 128
  %i.h = icmp ult i64 %i.g, 256                   ; 3 uses
  %.sroa.5.sroa.4.0.extract.shift = and i32 %i.e, -256
  %.sroa.3.0 = select i1 %i.h, i64 4521984, i64 8716288
  %.sroa.5.sroa.4.sroa.0.0 = select i1 %i.h, i32 0, i32 %.sroa.5.sroa.4.0.extract.shift
  %storemerge = select i1 %i.h, i64 2, i64 5
  %.sroa.5.sroa.0.0.insert.ext = and i32 %i.e, 248
  %.sroa.5.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.sroa.4.sroa.0.0, %.sroa.5.sroa.0.0.insert.ext
  %.sroa.5.0.insert.ext = zext i32 %.sroa.5.sroa.0.0.insert.insert to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 24
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.3.0
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, 256
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.2.0.insert.insert, 0
  %.fca.1.load.cast = inttoptr i64 %storemerge to ptr
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load.cast, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = icmp sgt i8 %i.b, -1
  %i.d = sext i8 %i.b to i32
  %i.e = icmp ne i32 %2, %i.d
  %i.f = and i1 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = sext i32 %2 to i64                       ; 2 uses
  %i.h = icmp eq i32 %2, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 51, i8 0, i8 0, i32 noundef 4) #15
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i64 %i.g, i32 noundef 4) #15
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.015.0.insert.ext.i = and i64 %i.g, 4294967295
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i64 %.sroa.015.0.insert.ext.i, i32 noundef 8) #15
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.i = tail call i64 @_ZN2v88internal17ExternalReference6CreateEPKNS0_7Runtime8FunctionE(ptr noundef nonnull %1) #15
  tail call void @_ZN2v88internal14MacroAssembler11LoadAddressENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3, i64 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 202
  %i.k = load i8, ptr %i.j, align 2, !range !5, !noundef !6
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN2v88internal8Builtins13RuntimeCEntryEib.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.n = load i8, ptr %i.m, align 1
  switch i8 %i.n, label %bb.i [
    i8 1, label %_ZN2v88internal8Builtins13RuntimeCEntryEib.exit
    i8 2, label %_ZN2v88internal8Builtins6CEntryEiNS0_8ArgvModeEbb.exit.fold.split.i
  ]

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #16
  unreachable

_ZN2v88internal8Builtins6CEntryEiNS0_8ArgvModeEbb.exit.fold.split.i: ; preds = %bb.h
  br label %_ZN2v88internal8Builtins13RuntimeCEntryEib.exit

_ZN2v88internal8Builtins13RuntimeCEntryEib.exit:  ; preds = %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit, %bb.h, %_ZN2v88internal8Builtins6CEntryEiNS0_8ArgvModeEbb.exit.fold.split.i
  %.0.i.i = phi i32 [ 775, %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit ], [ 771, %bb.h ], [ 774, %_ZN2v88internal8Builtins6CEntryEiNS0_8ArgvModeEbb.exit.fold.split.i ]
  tail call void @_ZN2v88internal14MacroAssembler11CallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %.0.i.i)
  ret void
}

declare i64 @_ZN2v88internal17ExternalReference6CreateEPKNS0_7Runtime8FunctionE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler15TailCallRuntimeENS0_7Runtime10FunctionIdE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef %1) #15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i8, ptr %i.b, align 8               ; 3 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.b, label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i8 %i.c, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 51, i8 0, i8 0, i32 noundef 4) #15
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.d:                                             ; preds = %bb.b
  %i.f = zext nneg i8 %i.c to i64
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i64 %i.f, i32 noundef 4) #15
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.g = tail call i64 @_ZN2v88internal17ExternalReference6CreateENS0_7Runtime10FunctionIdE(i32 noundef %1) #15
  tail call void @_ZN2v88internal14MacroAssembler11LoadAddressENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3, i64 %i.g)
  tail call void @_ZN2v88internal14MacroAssembler15TailCallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 771)
  ret void
}

declare noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler23JumpToExternalReferenceERKNS0_17ExternalReferenceEb(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 {
_ZN2v88internal8Builtins6CEntryEiNS0_8ArgvModeEbb.exit:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  tail call void @_ZN2v88internal14MacroAssembler11LoadAddressENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3, i64 %.sroa.0.0.copyload)
  %spec.select = select i1 %2, i32 770, i32 771
  tail call void @_ZN2v88internal14MacroAssembler15TailCallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %spec.select)
  ret void
}

declare i64 @_ZN2v88internal17ExternalReference6CreateENS0_7Runtime10FunctionIdE(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler15TailCallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.b = load i32, ptr %i.a, align 4
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %_ZN2v88internal14MacroAssembler25EntryFromBuiltinAsOperandENS0_7BuiltinE.exit
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZN2v88internal18MacroAssemblerBase12BuiltinEntryENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %1) #15
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, i64 %i.c, i8 13, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler3jmpENS0_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, i1 noundef zeroext false) #15
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = sext i32 %1 to i64
  tail call void @_ZN2v88internal9Assembler8near_jmpElNS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 noundef %i.d, i8 noundef signext 14) #15
  br label %bb.e

_ZN2v88internal14MacroAssembler25EntryFromBuiltinAsOperandENS0_7BuiltinE.exit: ; preds = %bb.a
  %i.e = icmp slt i32 %1, 7
  %i.f = icmp ne i32 %1, -1
  %spec.select.i.i.i = and i1 %i.e, %i.f
end_hunk_1
begin_hunk_2_@_ZN2v88internal14MacroAssembler23TryLoadOptimizedOsrCodeENS0_8RegisterENS0_8CodeKindES2_NS0_12FeedbackSlotEPNS0_5LabelENS5_8DistanceE:bb.a
  store i8 %i.ap, ptr %i.an, align 2
  store i8 %.pre-phi53, ptr %i.ao, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store i8 51, ptr %i.aq, align 1
  %i.ar = add nuw nsw i64 %i.am, 1
  %i.as = inttoptr i64 %i.ar to ptr
  %.fca.0.load.i.i = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @_ZN2v88internal9Assembler5testbENS0_7OperandENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.fca.0.load.i.i, ptr nonnull %i.as, i64 64) #15
  %i.at = icmp eq i8 %2, 12
  br i1 %i.at, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN2v88internal14MacroAssembler33TestCodeIsMarkedForDeoptimizationENS0_8RegisterE.exit
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 5, ptr noundef nonnull %13, i32 noundef 0) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 0, ptr %8, align 8
  switch i8 %1, label %_ZN2v88internal14MacroAssembler21TestCodeIsTurbofannedENS0_8RegisterE.exit [
    i8 4, label %bb.h
    i8 12, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %scevgep.i.i37 = getelementptr inbounds nuw i8, ptr %8, i64 3
  %i.au = or disjoint i8 %.pre-phi, 32
  store i8 %i.au, ptr %scevgep.i.i37, align 1
  br label %_ZN2v88internal14MacroAssembler21TestCodeIsTurbofannedENS0_8RegisterE.exit

_ZN2v88internal14MacroAssembler21TestCodeIsTurbofannedENS0_8RegisterE.exit: ; preds = %bb.g, %bb.h
  %.pre-phi.i38 = phi i8 [ 4, %bb.h ], [ %.pre-phi, %bb.g ]
  %i.av = phi i64 [ 2, %bb.h ], [ 1, %bb.g ]      ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.ay = or disjoint i8 %.pre-phi.i38, 64
  store i8 %i.ay, ptr %i.aw, align 2
  store i8 %.pre-phi53, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 51, ptr %i.az, align 1
  %i.ba = add nuw nsw i64 %i.av, 1
  %i.bb = inttoptr i64 %i.ba to ptr
  %.fca.0.load.i.i39 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @_ZN2v88internal9Assembler9emit_testENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.fca.0.load.i.i39, ptr nonnull %i.bb, i64 16, i32 noundef 4) #15
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 5, ptr noundef %5, i32 noundef %6) #15
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %12, i32 noundef 1) #15
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal14MacroAssembler33TestCodeIsMarkedForDeoptimizationENS0_8RegisterE.exit
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 4, ptr noundef %5, i32 noundef %6) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal14MacroAssembler21TestCodeIsTurbofannedENS0_8RegisterE.exit
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %13) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %7, align 8
  store i64 1, ptr %i.bd, align 8
  switch i8 %3, label %bb.l [
    i8 4, label %bb.k
    i8 12, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %scevgep.i42 = getelementptr inbounds nuw i8, ptr %7, i64 3
  %i.be = and i8 %3, 7
  %i.bf = or disjoint i8 %i.be, 32
  store i8 %i.bf, ptr %scevgep.i42, align 1
  %i.bg = icmp samesign ult i8 %3, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = lshr i8 %3, 3
  store i64 2, ptr %i.bd, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bi = phi i64 [ 1, %bb.j ], [ 2, %bb.k ]      ; 3 uses
  %i.bj = phi i8 [ 0, %bb.j ], [ %i.bh, %bb.k ]
  %i.bk = and i8 %3, 7                            ; 2 uses
  %i.bl = icmp samesign ult i8 %3, 16             ; 2 uses
  br i1 %i.p, label %.thread.i48, label %bb.m

.thread.i48:                                      ; preds = %bb.l
  %i.bm = or disjoint i8 %i.bk, 64
  store i8 %i.bm, ptr %i.bc, align 2
  call void @llvm.assume(i1 %i.bl)
  %i.bn = trunc i32 %i.f to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bi
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = add nuw nsw i64 %i.bi, 1
  br label %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit49

bb.m:                                             ; preds = %bb.l
  %i.bq = or disjoint i8 %i.bk, -128
  store i8 %i.bq, ptr %i.bc, align 2
  call void @llvm.assume(i1 %i.bl)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bi
  store i32 %i.f, ptr %i.br, align 1
  %i.bs = load i64, ptr %i.bd, align 8
  %i.bt = add i64 %i.bs, 4
  br label %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit49

_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit49: ; preds = %.thread.i48, %bb.m
  %.fca.1.load.i44.in = phi i64 [ %i.bt, %bb.m ], [ %i.bp, %.thread.i48 ]
  %.pn54 = lshr i8 %3, 3
  %.sink51 = or i8 %i.bj, %.pn54
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %.sink51, ptr %i.bu, align 1
  %.fca.1.load.i44 = inttoptr i64 %.fca.1.load.i44.in to ptr
  %.fca.0.load.i45 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.fca.0.load.i45, ptr %.fca.1.load.i44, i64 3, i32 noundef 8) #15
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %12) #15
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 51, i8 %1, i8 %1, i32 noundef 4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2147483642) i32 @_ZN2v88internal14MacroAssembler34ArgumentStackSlotsForCFunctionCallEi(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %0, i32 6)
  %.sroa.speculated = add nsw i32 %i.a, -6
  ret i32 %.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal14MacroAssembler13CallCFunctionENS0_17ExternalReferenceEi19SetIsolateDataSlotsPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN2v88internal14MacroAssembler11LoadAddressENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i64 %1)
  %i.a = tail call noundef i32 @_ZN2v88internal14MacroAssembler13CallCFunctionENS0_8RegisterEi19SetIsolateDataSlotsPNS0_5LabelENS0_18CodeSandboxingModeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i32 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext 1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal14MacroAssembler13CallCFunctionENS0_8RegisterEi19SetIsolateDataSlotsPNS0_5LabelENS0_18CodeSandboxingModeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 427 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1               ; 3 uses
  %.not.i = icmp eq i8 %i.b, %5
  br i1 %.not.i, label %_ZN2v88internal14MacroAssembler38SwitchSandboxingModeBeforeCallIfNeededENS0_18CodeSandboxingModeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %5, ptr %i.a, align 1
  br label %_ZN2v88internal14MacroAssembler38SwitchSandboxingModeBeforeCallIfNeededENS0_18CodeSandboxingModeE.exit

_ZN2v88internal14MacroAssembler38SwitchSandboxingModeBeforeCallIfNeededENS0_18CodeSandboxingModeE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i32 0, ptr %6, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.c, align 4
  %i.d = icmp eq i32 %3, 1                        ; 2 uses
  br i1 %i.d, label %_ZN2v88internal7OperandC2EPNS0_5LabelEi.exit, label %bb.e

_ZN2v88internal7OperandC2EPNS0_5LabelEi.exit:     ; preds = %_ZN2v88internal14MacroAssembler38SwitchSandboxingModeBeforeCallIfNeededENS0_18CodeSandboxingModeE.exit
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 1, ptr nonnull %6, i32 noundef 8) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.f = load i8, ptr %i.e, align 8, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal7OperandC2EPNS0_5LabelEi.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #16
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal7OperandC2EPNS0_5LabelEi.exit
  %i.h = call i64 @_ZN2v88internal17ExternalReference6CreateENS0_14IsolateFieldIdE(i8 noundef zeroext 20) #15
  %i.i = call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %i.h, i8 -1) ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = extractvalue { i64, ptr } %i.i, 1
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %i.j, ptr %i.k, i8 10, i32 noundef 8) #15
  %i.l = call i64 @_ZN2v88internal17ExternalReference6CreateENS0_14IsolateFieldIdE(i8 noundef zeroext 21) #15
  %i.m = call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %i.l, i8 -1) ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = extractvalue { i64, ptr } %i.m, 1
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %i.n, ptr %i.o, i8 5, i32 noundef 8) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal14MacroAssembler38SwitchSandboxingModeBeforeCallIfNeededENS0_18CodeSandboxingModeE.exit
  call void @_ZN2v88internal9Assembler4callENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1) #15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %6) #15
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %4) #15
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.f, %bb.e
  %i.t = call i32 @llvm.smax.i32(i32 %2, i32 6)
  %.sroa.speculated.i = shl i32 %i.t, 3
  %i.u = add i32 %.sroa.speculated.i, -48         ; 3 uses
  %i.v = icmp eq i32 %i.u, 0                      ; 3 uses
  %i.w = icmp ult i32 %i.u, 128                   ; 2 uses
  %. = select i1 %i.w, i64 4456448, i64 8650752
  %.47 = select i1 %i.w, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 6 to ptr)
  %.sroa.2.0 = select i1 %i.v, i64 262144, i64 %.
  %.sroa.6.sroa.4.sroa.0.0 = select i1 %i.v, i32 0, i32 %i.u
  %i.x = select i1 %i.v, ptr inttoptr (i64 2 to ptr), ptr %.47
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.sroa.4.sroa.0.0 to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.2.0
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, 603979776
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 4, i64 %.sroa.2.0.insert.insert, ptr nonnull %i.x, i32 noundef 8) #15
  br i1 %i.d, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  %i.y = call i64 @_ZN2v88internal17ExternalReference6CreateENS0_14IsolateFieldIdE(i8 noundef zeroext 21) #15
  %i.z = call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %i.y, i8 -1) ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = extractvalue { i64, ptr } %i.z, 1
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %i.aa, ptr %i.ab, i64 0, i32 noundef 8) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  %i.ac = load i8, ptr %i.a, align 1
  %.not.i24 = icmp eq i8 %i.ac, %i.b
  br i1 %.not.i24, label %_ZN2v88internal14MacroAssembler37SwitchSandboxingModeAfterCallIfNeededENS0_18CodeSandboxingModeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 %i.b, ptr %i.a, align 1
  br label %_ZN2v88internal14MacroAssembler37SwitchSandboxingModeAfterCallIfNeededENS0_18CodeSandboxingModeE.exit

_ZN2v88internal14MacroAssembler37SwitchSandboxingModeAfterCallIfNeededENS0_18CodeSandboxingModeE.exit: ; preds = %bb.h, %bb.i
  %i.ad = ptrtoint ptr %i.q to i64
  %i.ae = ptrtoint ptr %i.s to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret i32 %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i8 %2, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 4, i8 %2, i64 4294705152, i32 noundef 8) #15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %2, i64 4294705152, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 35, i8 %2, i8 %1, i32 noundef 8) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler13JumpIfMarkingEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:
  tail call void @_ZN2v88internal9Assembler5testbENS0_7OperandENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 3359965440, ptr nonnull inttoptr (i64 2 to ptr), i64 1) #15
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 5, ptr noundef %1, i32 noundef %2) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler12CheckMarkBitENS0_8RegisterES2_S2_NS0_9ConditionEPNS0_5LabelENS4_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %2, i8 %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = icmp eq i8 %2, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 4, i8 %2, i64 4294705152, i32 noundef 8) #15
  br label %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %2, i64 4294705152, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 35, i8 %2, i8 %1, i32 noundef 8) #15
  br label %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit

_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit: ; preds = %bb.b, %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 2 uses
  store i64 0, ptr %7, align 8
  %.pre = and i8 %2, 7                            ; 4 uses
  switch i8 %2, label %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge [
    i8 12, label %bb.d
    i8 4, label %bb.d
  ]

bb.d:                                             ; preds = %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit
  %scevgep = getelementptr inbounds nuw i8, ptr %7, i64 3
  %i.d = or disjoint i8 %.pre, 32
  store i8 %i.d, ptr %scevgep, align 1
  %i.e = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.e)
  br label %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge

_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge: ; preds = %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit, %bb.d
  %i.f = phi i64 [ 2, %bb.d ], [ 1, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit ] ; 2 uses
  %.pre179 = lshr i8 %2, 3                        ; 3 uses
  %i.g = or disjoint i8 %.pre, 64                 ; 2 uses
  store i8 %i.g, ptr %i.c, align 2
  %i.h = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.h)
  store i8 %.pre179, ptr %i.b, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  store i8 8, ptr %i.i, align 1
  %i.j = add nuw nsw i64 %i.f, 1
  %i.k = load i64, ptr %7, align 8
  %.cast = inttoptr i64 %i.j to ptr
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %2, i64 %i.k, ptr nonnull %.cast, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 0, i8 %2, i64 336, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %3, i8 %1, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 4, i8 %3, i64 262143, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %3, i64 9, i32 noundef 5, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %3, i64 3, i32 noundef 4, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 3, i8 %2, i8 %3, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %3, i8 %1, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 4, i8 %3, i64 262143, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %3, i64 3, i32 noundef 5, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 4, i8 %3, i64 63, i32 noundef 8) #15
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 2 ; 3 uses
  store i64 0, ptr %8, align 8
  switch i8 %2, label %bb.f [
    i8 12, label %bb.e
    i8 4, label %bb.e
    i8 5, label %bb.g
    i8 13, label %bb.g
  ]

bb.e:                                             ; preds = %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge
  %scevgep178 = getelementptr inbounds nuw i8, ptr %8, i64 3
  %i.n = or disjoint i8 %.pre, 32
  store i8 %i.n, ptr %scevgep178, align 1
  %cond = icmp eq i8 %2, 5
  br i1 %cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge
  %i.o = phi ptr [ inttoptr (i64 1 to ptr), %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge ], [ inttoptr (i64 2 to ptr), %bb.e ]
  store i8 %.pre, ptr %i.m, align 2
  store i8 %.pre179, ptr %i.l, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

bb.g:                                             ; preds = %bb.e, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge
  %i.p = phi i64 [ 1, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge ], [ 1, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge ], [ 2, %bb.e ] ; 2 uses
  store i8 %i.g, ptr %i.m, align 2
  store i8 %.pre179, ptr %i.l, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  store i8 0, ptr %i.q, align 1
  %i.r = add nuw nsw i64 %i.p, 1
  %i.s = inttoptr i64 %i.r to ptr
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.f, %bb.g
  %i.t = phi ptr [ %i.o, %bb.f ], [ %i.s, %bb.g ]
  %i.u = load i64, ptr %8, align 8
  tail call void @_ZN2v88internal9Assembler3btqENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %i.u, ptr %i.t, i8 %3) #15
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %4, ptr noundef %5, i32 noundef %6) #15
  ret void
}

declare void @_ZN2v88internal9Assembler3btqENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr, i8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler23ComputeCodeStartAddressENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1) local_unnamed_addr #1 align 2 {
_ZN2v88internal7OperandC2EPNS0_5LabelEi.exit:
  %2 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i32 0, ptr %2, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.a, align 4
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %2) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %.neg = sub i64 %i.f, %i.g
  %.sroa.5.0.insert.ext = shl i64 %.neg, 16
  %.sroa.5.0.insert.shift = and i64 %.sroa.5.0.insert.ext, 16711680
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, 1
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %.sroa.0.0.insert.insert, ptr nonnull %2, i32 noundef 8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal14MacroAssembler20BailoutIfDeoptimizedENS0_8RegisterE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(436) %0, i8 %1) local_unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler21CallForDeoptimizationENS0_7BuiltinEiPNS0_5LabelENS0_14DeoptimizeKindES4_S4_(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, i8 noundef zeroext %4, ptr nofree noundef readnone captures(none) %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #1 align 2 {
_ZN2v88internal14MacroAssembler25EntryFromBuiltinAsOperandENS0_7BuiltinE.exit:
  %i.a = icmp slt i32 %1, 7
  %i.b = icmp ne i32 %1, -1
  %spec.select.i.i.i = and i1 %i.a, %i.b
  %i.c = select i1 %spec.select.i.i.i, i32 -40, i32 20912
end_hunk_2
