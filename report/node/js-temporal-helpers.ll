Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/js-temporal-helpers?download=true
inline.NumInlined: 320
inline.NumDeleted: 176
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", [4 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", [4 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue.473", [4 x i8], %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.476", [2 x i8], %"class.v8::internal::FlagValue.473", [4 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue.474", [4 x i8], %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.483", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.476" = type { %"class.std::optional.477" }
%"class.std::optional.477" = type { %"struct.std::_Optional_base.478" }
%"struct.std::_Optional_base.478" = type { %"struct.std::_Optional_payload.480" }
%"struct.std::_Optional_payload.480" = type { %"struct.std::_Optional_payload_base.481" }
%"struct.std::_Optional_payload_base.481" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.475" = type { double }
%"class.v8::internal::FlagValue.474" = type { i32 }
%"class.v8::internal::FlagValue.483" = type { i64 }
%"class.v8::internal::FlagValue.473" = type { i32 }
%"class.v8::internal::FlagValue.472" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.v8::Maybe" = type { i8, %"struct.v8::internal::temporal::TimeDurationRecord" }
%"struct.v8::internal::temporal::TimeDurationRecord" = type { double, double, double, double, double, double, double }
%"class.v8::internal::DirectHandle" = type { %"class.v8::internal::Handle.446" }
%"class.v8::internal::Handle.446" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"struct.v8::internal::temporal::DurationRecord" = type { double, double, double, %"struct.v8::internal::temporal::TimeDurationRecord" }
%"class.v8::Maybe.444" = type { i8, %"struct.v8::internal::temporal::DurationRecord" }
%"class.v8::internal::LookupIterator" = type { i32, i32, i8, i32, %"class.v8::internal::PropertyDetails", ptr, %"class.v8::internal::DirectHandle.456", %"class.v8::internal::DirectHandle.460", %"class.v8::internal::DirectHandle.462", %"class.v8::internal::DirectHandle.447", %"class.v8::internal::DirectHandle.462", i64, %"class.v8::internal::InternalIndex" }
%"class.v8::internal::PropertyDetails" = type { i32 }
%"class.v8::internal::DirectHandle.456" = type { %"class.v8::internal::Handle.457" }
%"class.v8::internal::Handle.457" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::DirectHandle.460" = type { %"class.v8::internal::Handle.461" }
%"class.v8::internal::Handle.461" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::DirectHandle.447" = type { %"class.v8::internal::Handle.448" }
%"class.v8::internal::Handle.448" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::DirectHandle.462" = type { %"class.v8::internal::Handle.463" }
%"class.v8::internal::Handle.463" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::InternalIndex" = type { i64 }
%"struct.std::array" = type { [10 x %"struct.std::pair"] }
%"struct.std::pair" = type { %"class.v8::internal::DirectHandle.455", ptr }
%"class.v8::internal::DirectHandle.455" = type { %"class.v8::internal::Handle.443" }
%"class.v8::internal::Handle.443" = type { %"class.v8::internal::HandleBase" }

$_ZSt27__throw_bad_optional_accessv = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Invalid duration.\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Duration argument must be an object.\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Duration argument must contain at least one date/time field.\00", align 1
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@_ZN2v88internal12IsolateGroup22default_isolate_group_E = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Number not integral.\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"!is_null()\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8temporal15IsValidDurationEPNS0_7IsolateERKNS1_14DurationRecordE(ptr nofree readnone captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %1, align 8
  %.fr128 = freeze double %i.a                    ; 4 uses
  %i.b = fcmp uge double %.fr128, 0.000000e+00    ; 2 uses
  br i1 %i.b, label %bb.b, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp ogt double %.fr128, 0.000000e+00
  br i1 %i.c, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8           ; 2 uses
  %i.f = fcmp olt double %i.e, 0.000000e+00
  br i1 %i.f, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = fcmp ogt double %i.e, 0.000000e+00
  br i1 %i.g, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %i.h, align 8           ; 2 uses
  %i.j = fcmp olt double %i.i, 0.000000e+00
  br i1 %i.j, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = fcmp ogt double %i.i, 0.000000e+00
  br i1 %i.k, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load double, ptr %i.l, align 8           ; 2 uses
  %i.n = fcmp olt double %i.m, 0.000000e+00
  br i1 %i.n, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = fcmp ogt double %i.m, 0.000000e+00
  br i1 %i.o, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load double, ptr %i.p, align 8           ; 2 uses
  %i.r = fcmp olt double %i.q, 0.000000e+00
  br i1 %i.r, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = fcmp ogt double %i.q, 0.000000e+00
  br i1 %i.s, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load double, ptr %i.t, align 8           ; 2 uses
  %i.v = fcmp olt double %i.u, 0.000000e+00
  br i1 %i.v, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = fcmp ogt double %i.u, 0.000000e+00
  br i1 %i.w, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load double, ptr %i.x, align 8           ; 2 uses
  %i.z = fcmp olt double %i.y, 0.000000e+00
  br i1 %i.z, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = fcmp ogt double %i.y, 0.000000e+00
  br i1 %i.aa, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load double, ptr %i.ab, align 8         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 0.000000e+00
  br i1 %i.ad, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = fcmp ogt double %i.ac, 0.000000e+00
  br i1 %i.ae, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = load double, ptr %i.af, align 8         ; 2 uses
  %i.ah = fcmp olt double %i.ag, 0.000000e+00
  br i1 %i.ah, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = fcmp ogt double %i.ag, 0.000000e+00
  br i1 %i.ai, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ak = load double, ptr %i.aj, align 8         ; 2 uses
  %i.al = fcmp olt double %i.ak, 0.000000e+00
  br i1 %i.al, label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = fcmp ogt double %i.ak, 0.000000e+00
  %..i = zext i1 %i.am to i32
  br label %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit

_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.1.i = phi i32 [ 1, %bb.f ], [ -1, %bb.a ], [ 1, %bb.b ], [ -1, %bb.c ], [ 1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.s ], [ -1, %bb.g ], [ 1, %bb.h ], [ -1, %bb.i ], [ 1, %bb.j ], [ -1, %bb.k ], [ 1, %bb.l ], [ -1, %bb.m ], [ 1, %bb.n ], [ -1, %bb.o ], [ 1, %bb.p ], [ -1, %bb.q ], [ 1, %bb.r ], [ %..i, %bb.t ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = tail call double @llvm.fabs.f64(double %.fr128) ; 4 uses
  %i.ap = fcmp ueq double %i.ao, +inf
  br i1 %i.ap, label %bb.al, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load double, ptr %i.aq, align 8
  %.fr133 = freeze double %i.ar                   ; 3 uses
  %i.as = tail call double @llvm.fabs.f64(double %.fr133) ; 4 uses
  %i.at = fcmp ueq double %i.as, +inf
  br i1 %i.at, label %bb.al, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load double, ptr %i.au, align 8         ; 3 uses
  %i.aw = tail call double @llvm.fabs.f64(double %i.av) ; 4 uses
  %i.ax = fcmp ueq double %i.aw, +inf
  br i1 %i.ax, label %bb.al, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = load double, ptr %i.an, align 8         ; 4 uses
  %i.az = tail call double @llvm.fabs.f64(double %i.ay)
  %i.ba = fcmp ueq double %i.az, +inf
  br i1 %i.ba, label %bb.al, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = load double, ptr %i.bb, align 8         ; 4 uses
  %i.bd = tail call double @llvm.fabs.f64(double %i.bc)
  %i.be = fcmp ueq double %i.bd, +inf
  br i1 %i.be, label %bb.al, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = load double, ptr %i.bf, align 8         ; 4 uses
  %i.bh = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ueq double %i.bh, +inf
  br i1 %i.bi, label %bb.al, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load double, ptr %i.bj, align 8         ; 4 uses
  %i.bl = tail call double @llvm.fabs.f64(double %i.bk)
  %i.bm = fcmp ueq double %i.bl, +inf
  br i1 %i.bm, label %bb.al, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bo = load double, ptr %i.bn, align 8         ; 5 uses
  %i.bp = tail call double @llvm.fabs.f64(double %i.bo)
  %i.bq = fcmp ueq double %i.bp, +inf
  br i1 %i.bq, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bs = load double, ptr %i.br, align 8         ; 5 uses
  %i.bt = tail call double @llvm.fabs.f64(double %i.bs)
  %i.bu = fcmp ueq double %i.bt, +inf
  br i1 %i.bu, label %bb.al, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bw = load double, ptr %i.bv, align 8
  %.fr130 = freeze double %i.bw                   ; 5 uses
  %i.bx = tail call double @llvm.fabs.f64(double %.fr130)
  %i.by = fcmp ueq double %i.bx, +inf
  br i1 %i.by, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bz = icmp sgt i32 %.1.i, 0
  br i1 %i.bz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ca = insertelement <8 x double> poison, double %.fr133, i64 0
  %i.cb = insertelement <8 x double> %i.ca, double %i.av, i64 1
  %i.cc = insertelement <8 x double> %i.cb, double %i.ay, i64 2
  %i.cd = insertelement <8 x double> %i.cc, double %i.bc, i64 3
  %i.ce = insertelement <8 x double> %i.cd, double %i.bg, i64 4
  %i.cf = insertelement <8 x double> %i.ce, double %i.bk, i64 5
  %i.cg = insertelement <8 x double> %i.cf, double %i.bo, i64 6
  %i.ch = insertelement <8 x double> %i.cg, double %i.bs, i64 7
  %.fr126 = freeze <8 x double> %i.ch
  %i.ci = fcmp uge double %.fr130, 0.000000e+00
  %.old = fcmp ult double %i.ao, f0x41F0000000000000
  %i.cj = fcmp ult double %i.as, f0x41F0000000000000
  %.old86.old = fcmp ult double %i.aw, f0x41F0000000000000
  %i.ck = fcmp olt <8 x double> %.fr126, zeroinitializer
  %i.cl = bitcast <8 x i1> %i.ck to i8
  %i.cm = icmp eq i8 %i.cl, 0
  %op.rdx = and i1 %i.cm, %i.ci
  %op.rdx120 = and i1 %.old, %i.cj
  %op.rdx121 = and i1 %i.b, %.old86.old
  %op.rdx122 = and i1 %op.rdx, %op.rdx120
  %op.rdx123 = and i1 %op.rdx122, %op.rdx121
  br i1 %op.rdx123, label %bb.ah, label %bb.al

bb.af:                                            ; preds = %bb.ad
  %i.cn = icmp slt i32 %.1.i, 0
  br i1 %i.cn, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.co = insertelement <8 x double> poison, double %.fr128, i64 0
  %i.cp = insertelement <8 x double> %i.co, double %.fr133, i64 1
  %i.cq = insertelement <8 x double> %i.cp, double %i.av, i64 2
  %i.cr = insertelement <8 x double> %i.cq, double %i.ay, i64 3
  %i.cs = insertelement <8 x double> %i.cr, double %i.bc, i64 4
  %i.ct = insertelement <8 x double> %i.cs, double %i.bg, i64 5
  %i.cu = insertelement <8 x double> %i.ct, double %i.bk, i64 6
  %i.cv = insertelement <8 x double> %i.cu, double %i.bo, i64 7
  %.fr = freeze <8 x double> %i.cv
  %i.cw = fcmp ule <8 x double> %.fr, zeroinitializer ; 2 uses
  %i.cx = insertelement <4 x double> poison, double %i.bs, i64 0
  %i.cy = insertelement <4 x double> %i.cx, double %.fr130, i64 1
  %i.cz = insertelement <4 x double> %i.cy, double %i.ao, i64 2
  %i.da = insertelement <4 x double> %i.cz, double %i.as, i64 3 ; 2 uses
  %i.db = fcmp ule <4 x double> %i.da, <double 0.000000e+00, double 0.000000e+00, double f0x41F0000000000000, double f0x41F0000000000000>
  %i.dc = fcmp ult <4 x double> %i.da, <double 0.000000e+00, double 0.000000e+00, double f0x41F0000000000000, double f0x41F0000000000000>
  %i.dd = shufflevector <4 x i1> %i.db, <4 x i1> %i.dc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %.old86 = fcmp ult double %i.aw, f0x41F0000000000000
  %i.de = freeze <4 x i1> %i.dd
  %i.df = shufflevector <8 x i1> %i.cw, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.df, %i.de
  %i.dg = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dh = shufflevector <8 x i1> %i.dg, <8 x i1> %i.cw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.di = bitcast <8 x i1> %i.dh to i8
  %i.dj = icmp eq i8 %i.di, -1
  %op.rdx124 = and i1 %i.dj, %.old86
  br i1 %op.rdx124, label %bb.ah, label %bb.al

.thread:                                          ; preds = %bb.af
  %.old.old = fcmp ult double %i.ao, f0x41F0000000000000
  %.old82.old = fcmp ult double %i.as, f0x41F0000000000000
  %or.cond85 = and i1 %.old.old, %.old82.old
  %i.dk = fcmp ult double %i.aw, f0x41F0000000000000
  %or.cond87 = and i1 %or.cond85, %i.dk
  br i1 %or.cond87, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ae, %bb.ag, %.thread
  %i.dl = fmul nnan double %i.bc, 3.600000e+03
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.ay, double 8.640000e+04, double %i.dl)
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.bg, double 6.000000e+01, double %i.dm)
  %i.do = fadd double %i.dn, %i.bk
  %i.dp = tail call noundef double @llvm.fabs.f64(double %i.do) ; 2 uses
  %i.dq = fcmp ult double %i.dp, f0x4340000000000000
  br i1 %i.dq, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.dr = fsub double f0x4340000000000000, %i.dp
  %i.ds = fptosi double %i.dr to i64
  %i.dt = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.du = insertelement <2 x double> %i.dt, double %i.bs, i64 1
  %i.dv = fdiv <2 x double> %i.du, <double 1.000000e+03, double 1.000000e+06>
  %i.dw = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dv)
  %i.dx = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.dw) ; 2 uses
  %shift = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.dx, %shift
  %i.dy = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dz = fdiv double %.fr130, 1.000000e+09
  %i.ea = tail call noundef double @llvm.fabs.f64(double %i.dz)
  %i.eb = tail call double @llvm.floor.f64(double %i.ea)
  %i.ec = fadd double %i.dy, %i.eb                ; 2 uses
  %i.ed = sitofp i64 %i.ds to double              ; 2 uses
  %i.ee = fcmp ult double %i.ec, %i.ed
  br i1 %i.ee, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ef = fsub double %i.ed, %i.ec
  %i.eg = fptosi double %i.ef to i64              ; 2 uses
  %i.eh = icmp sgt i64 %i.eg, 3
  br i1 %i.eh, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ei = mul nsw i64 %i.eg, 1000000000
  %i.ej = frem double %i.bo, 1.000000e+03
  %i.ek = tail call noundef double @llvm.fabs.f64(double %i.ej)
  %i.el = frem double %i.bs, 1.000000e+06
  %i.em = tail call noundef double @llvm.fabs.f64(double %i.el)
  %i.en = fmul nnan double %i.em, 1.000000e+03
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.ek, double 1.000000e+06, double %i.en)
  %i.ep = frem double %.fr130, 1.000000e+09
  %i.eq = tail call noundef double @llvm.fabs.f64(double %i.ep)
  %i.er = fadd double %i.eo, %i.eq
  %i.es = fptosi double %i.er to i64
  %.not = icmp sgt i64 %i.ei, %i.es
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah, %bb.ai, %bb.aj, %.thread, %bb.ae, %bb.ag, %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.2 = phi i1 [ false, %_ZN2v88internal8temporal14DurationRecord4SignERKS2_.exit ], [ false, %bb.ae ], [ false, %.thread ], [ false, %bb.ag ], [ false, %bb.ai ], [ false, %bb.ac ], [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.y ], [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.u ], [ true, %bb.aj ], [ %.not, %bb.ak ], [ false, %bb.ah ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN2v88internal8temporal14DurationRecord4SignERKS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8             ; 2 uses
  %i.b = fcmp olt double %i.a, 0.000000e+00
  br i1 %i.b, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp ogt double %i.a, 0.000000e+00
  br i1 %i.c, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8           ; 2 uses
  %i.f = fcmp olt double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = fcmp ogt double %i.e, 0.000000e+00
  br i1 %i.g, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load double, ptr %i.h, align 8           ; 2 uses
  %i.j = fcmp olt double %i.i, 0.000000e+00
  br i1 %i.j, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = fcmp ogt double %i.i, 0.000000e+00
  br i1 %i.k, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load double, ptr %i.l, align 8           ; 2 uses
  %i.n = fcmp olt double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = fcmp ogt double %i.m, 0.000000e+00
  br i1 %i.o, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load double, ptr %i.p, align 8           ; 2 uses
  %i.r = fcmp olt double %i.q, 0.000000e+00
  br i1 %i.r, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = fcmp ogt double %i.q, 0.000000e+00
  br i1 %i.s, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load double, ptr %i.t, align 8           ; 2 uses
  %i.v = fcmp olt double %i.u, 0.000000e+00
  br i1 %i.v, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = fcmp ogt double %i.u, 0.000000e+00
  br i1 %i.w, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load double, ptr %i.x, align 8           ; 2 uses
  %i.z = fcmp olt double %i.y, 0.000000e+00
  br i1 %i.z, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = fcmp ogt double %i.y, 0.000000e+00
  br i1 %i.aa, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load double, ptr %i.ab, align 8         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = fcmp ogt double %i.ac, 0.000000e+00
  br i1 %i.ae, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load double, ptr %i.af, align 8         ; 2 uses
  %i.ah = fcmp olt double %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = fcmp ogt double %i.ag, 0.000000e+00
  br i1 %i.ai, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load double, ptr %i.aj, align 8         ; 2 uses
  %i.al = fcmp olt double %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = fcmp ogt double %i.ak, 0.000000e+00
  %. = zext i1 %i.am to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 1, %bb.f ], [ -1, %bb.a ], [ 1, %bb.b ], [ -1, %bb.c ], [ 1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.s ], [ -1, %bb.g ], [ 1, %bb.h ], [ -1, %bb.i ], [ 1, %bb.j ], [ -1, %bb.k ], [ 1, %bb.l ], [ -1, %bb.m ], [ 1, %bb.n ], [ -1, %bb.o ], [ 1, %bb.p ], [ -1, %bb.q ], [ 1, %bb.r ], [ %., %bb.t ]
  ret i32 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8temporal18TimeDurationRecord6CreateEPNS0_7IsolateEddddddd(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::Maybe") align 8 captures(none) %0, ptr noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8) local_unnamed_addr #3 align 2 {
bb.a:
  %9 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %10 = alloca %"struct.v8::internal::temporal::DurationRecord", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  store double %2, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store double %3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 40
  store double %4, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 48
  store double %5, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 56
  store double %6, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 64
  store double %7, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 72
  store double %8, ptr %.sroa.10.0..sroa_idx, align 8
  %i.b = call noundef zeroext i1 @_ZN2v88internal8temporal15IsValidDurationEPNS0_7IsolateERKNS1_14DurationRecordE(ptr poison, ptr noundef nonnull align 8 dereferenceable(80) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull @.str, i64 17, i8 noundef zeroext 0) #9 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %_ZN2v88internal7Factory24NewStringFromStaticCharsILm18EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  unreachable

_ZN2v88internal7Factory24NewStringFromStaticCharsILm18EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  store ptr %i.c, ptr %9, align 8
  %i.e = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 211, ptr nonnull %9, i64 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %i.f = load i64, ptr %i.e, align 8
  %i.g = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.f, ptr noundef null) #9 ; 0 uses
  store i8 0, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8, !alias.scope !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.h, align 8
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %.sroa.5.0..sroa_idx18, align 8
  %.sroa.6.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %.sroa.6.0..sroa_idx20, align 8
  %.sroa.7.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %5, ptr %.sroa.7.0..sroa_idx22, align 8
  %.sroa.8.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %6, ptr %.sroa.8.0..sroa_idx24, align 8
  %.sroa.9.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %7, ptr %.sroa.9.0..sroa_idx26, align 8
  %.sroa.10.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %8, ptr %.sroa.10.0..sroa_idx28, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal7Factory24NewStringFromStaticCharsILm18EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #4
end_hunk_0
