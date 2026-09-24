Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-string?download=true
inline.NumInlined: 617
inline.NumDeleted: 317
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.498", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", [4 x i8], %"class.v8::internal::FlagValue.499", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.498", %"class.v8::internal::FlagValue.498", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.498", %"class.v8::internal::FlagValue.500", %"class.v8::internal::FlagValue.500", %"class.v8::internal::FlagValue.500", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.498", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.498", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.499", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.498", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.498", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.499", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", [4 x i8], %"class.v8::internal::FlagValue.499", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.498", %"class.v8::internal::FlagValue.498", %"class.v8::internal::FlagValue.498", %"class.v8::internal::FlagValue.498", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue.497", [4 x i8], %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.498", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.499", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.499", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.500", %"class.v8::internal::FlagValue.500", %"class.v8::internal::FlagValue.500", %"class.v8::internal::FlagValue.500", %"class.v8::internal::FlagValue.500", %"class.v8::internal::FlagValue.500", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.498", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.498", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.499", %"class.v8::internal::FlagValue.499", %"class.v8::internal::FlagValue.499", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.498", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.500", [2 x i8], %"class.v8::internal::FlagValue.497", [4 x i8], %"class.v8::internal::FlagValue.499", %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.498", %"class.v8::internal::FlagValue.498", [4 x i8], %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.507", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.497", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.496", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.500" = type { %"class.std::optional.501" }
%"class.std::optional.501" = type { %"struct.std::_Optional_base.502" }
%"struct.std::_Optional_base.502" = type { %"struct.std::_Optional_payload.504" }
%"struct.std::_Optional_payload.504" = type { %"struct.std::_Optional_payload_base.505" }
%"struct.std::_Optional_payload_base.505" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.499" = type { double }
%"class.v8::internal::FlagValue.498" = type { i32 }
%"class.v8::internal::FlagValue.507" = type { i64 }
%"class.v8::internal::FlagValue.497" = type { i32 }
%"class.v8::internal::FlagValue.496" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.v8::internal::LookupIterator" = type { i32, i32, i8, i32, %"class.v8::internal::PropertyDetails", ptr, %"class.v8::internal::DirectHandle.485", %"class.v8::internal::DirectHandle.488", %"class.v8::internal::DirectHandle.482", %"class.v8::internal::DirectHandle.478", %"class.v8::internal::DirectHandle.482", i64, %"class.v8::internal::InternalIndex" }
%"class.v8::internal::PropertyDetails" = type { i32 }
%"class.v8::internal::DirectHandle.485" = type { %"class.v8::internal::Handle.486" }
%"class.v8::internal::Handle.486" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"class.v8::internal::DirectHandle.488" = type { %"class.v8::internal::Handle.489" }
%"class.v8::internal::Handle.489" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::DirectHandle.478" = type { %"class.v8::internal::Handle.479" }
%"class.v8::internal::Handle.479" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::DirectHandle.482" = type { %"class.v8::internal::Handle.475" }
%"class.v8::internal::Handle.475" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::InternalIndex" = type { i64 }
%"class.v8::internal::IncrementalStringBuilder" = type { ptr, i32, i8, i32, i32, %"class.v8::internal::DirectHandle.477", %"class.v8::internal::DirectHandle.477" }
%"class.v8::internal::DirectHandle.477" = type { %"class.v8::internal::Handle" }
%"class.v8::internal::Handle" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::DirectHandle.459" = type { %"class.v8::internal::Handle.460" }
%"class.v8::internal::Handle.460" = type { %"class.v8::internal::HandleBase" }

$_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m = comdat any

$_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE = comdat any

$_ZSt27__throw_bad_optional_accessv = comdat any

@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"static_cast<uint32_t>(index) <= static_cast<uint32_t>(length_)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"!is_null()\00", align 1
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal27Builtin_StringFromCodePointEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 5 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  %i.i = add nsw i32 %0, -5                       ; 6 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.thread, label %bb.b

_ZNSt6vectorIhSaIhEED2Ev.exit.i.thread:           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 688
  %i.l = load i64, ptr %i.k, align 8
  store i32 %i.g, ptr %i.f, align 8
  br label %_ZN2v88internalL32Builtin_Impl_StringFromCodePointENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp slt i32 %0, 5
  br i1 %i.m, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.n = zext nneg i32 %i.i to i64                ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #13 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i, %.lr.ph.preheader.i
  %.052210.i = phi i32 [ %i.ai, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 5 uses
  %.sroa.0131.0209.i = phi ptr [ %.sroa.0131.2.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ], [ %i.o, %.lr.ph.preheader.i ] ; 9 uses
  %.sroa.15.0208.i = phi ptr [ %.sroa.15.2.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ], [ %i.o, %.lr.ph.preheader.i ] ; 6 uses
  %.sroa.26.0207.i = phi ptr [ %.sroa.26.2.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ], [ %i.p, %.lr.ph.preheader.i ] ; 5 uses
  %i.q = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_113NextCodePointEPNS0_7IsolateENS0_16BuiltinArgumentsEi(ptr noundef %2, i64 %i.a, ptr %1, i32 noundef %.052210.i) ; 4 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.t = load i64, ptr %i.s, align 8
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.u = icmp ugt i32 %i.q, 255
  br i1 %i.u, label %._crit_edge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = trunc nuw i32 %i.q to i8                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.15.0208.i, %.sroa.26.0207.i
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 %i.v, ptr %.sroa.15.0208.i, align 1
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i

bb.h:                                             ; preds = %bb.f
  %i.w = ptrtoint ptr %.sroa.15.0208.i to i64
  %i.x = ptrtoint ptr %.sroa.0131.0209.i to i64
  %i.y = sub i64 %i.w, %i.x                       ; 8 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775807
  br i1 %i.z, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.aa = add i64 %.sroa.speculated.i.i.i.i.i, %i.y ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.y
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 9223372036854775807)
  %i.ad = select i1 %i.ab, i64 9223372036854775807, i64 %i.ac ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #13 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.y ; 2 uses
  store i8 %i.v, ptr %i.af, align 1
  %i.ag = icmp sgt i64 %i.y, 0
  br i1 %i.ag, label %bb.j, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr align 1 %.sroa.0131.0209.i, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0131.0209.i, i64 noundef %i.y) #14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i:         ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i, %bb.g
  %.sroa.26.2.i = phi ptr [ %i.ah, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %.sroa.26.0207.i, %bb.g ] ; 2 uses
  %.pn.i = phi ptr [ %i.af, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %.sroa.15.0208.i, %bb.g ]
  %.sroa.0131.2.i = phi ptr [ %i.ae, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0131.0209.i, %bb.g ] ; 2 uses
  %.sroa.15.2.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %i.ai = add nuw nsw i32 %.052210.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ai, %i.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.e
  %i.aj = icmp eq i32 %.052210.i, %i.i
  br i1 %i.aj, label %._crit_edge.thread.i, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i

._crit_edge.thread.i:                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i, %._crit_edge.i
  %.sroa.0131.0.lcssa.ph252.i = phi ptr [ %.sroa.0131.0209.i, %._crit_edge.i ], [ %.sroa.0131.2.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ] ; 4 uses
  %.sroa.15.0.lcssa.ph251.i = phi ptr [ %.sroa.15.0208.i, %._crit_edge.i ], [ %.sroa.15.2.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ]
  %.sroa.26.0.lcssa.ph250.i = phi ptr [ %.sroa.26.0207.i, %._crit_edge.i ], [ %.sroa.26.2.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ] ; 2 uses
  %i.ak = ptrtoint ptr %.sroa.15.0.lcssa.ph251.i to i64
  %i.al = ptrtoint ptr %.sroa.0131.0.lcssa.ph252.i to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr %.sroa.0131.0.lcssa.ph252.i, i64 %i.am, i8 noundef zeroext 0) #15 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, label %bb.k

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i: ; preds = %._crit_edge.thread.i
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.aq = load i64, ptr %i.ap, align 8
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

bb.k:                                             ; preds = %._crit_edge.thread.i
  %i.ar = load i64, ptr %i.an, align 8
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i: ; preds = %._crit_edge.i
  %3 = sub nuw nsw i32 %i.i, %.052210.i
  %4 = sext i32 %3 to i64                         ; 2 uses
  %i.as = shl nuw nsw i64 %4, 1
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #13 ; 3 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %4
  br label %bb.l

bb.l:                                             ; preds = %bb.aa, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i
  %.sroa.097.0.i = phi ptr [ %i.at, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i ], [ %.sroa.097.1.i, %bb.aa ] ; 8 uses
  %.sroa.16.0.i = phi ptr [ %i.at, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i ], [ %.sroa.16.1.i, %bb.aa ] ; 8 uses
  %.sroa.33.0.i = phi ptr [ %i.au, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i ], [ %.sroa.33.1.i, %bb.aa ] ; 4 uses
  %.153.i = phi i32 [ %.052210.i, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i ], [ %i.cz, %bb.aa ]
  %.2.i = phi i32 [ %i.q, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i ], [ %i.db, %bb.aa ] ; 4 uses
  %i.av = icmp ult i32 %.2.i, 65536
  br i1 %i.av, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.aw = trunc nuw i32 %.2.i to i16              ; 2 uses
  %.not.i.i61.i = icmp eq ptr %.sroa.16.0.i, %.sroa.33.0.i
  br i1 %.not.i.i61.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i16 %i.aw, ptr %.sroa.16.0.i, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.16.0.i, i64 2
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ay = ptrtoint ptr %.sroa.16.0.i to i64
  %i.az = ptrtoint ptr %.sroa.097.0.i to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 6 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775806
  br i1 %i.bb, label %bb.p, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.bc = ashr exact i64 %i.ba, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i62.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add i64 %.sroa.speculated.i.i.i.i62.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 4611686018427387903)
  %i.bg = select i1 %i.be, i64 4611686018427387903, i64 %i.bf ; 3 uses
  %.not.i.i.i.i63.i = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i63.i)
  %i.bh = shl nuw nsw i64 %i.bg, 1
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #13 ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.ba ; 2 uses
  store i16 %i.aw, ptr %i.bj, align 2
  %i.bk = icmp sgt i64 %i.ba, 0
  br i1 %i.bk, label %bb.q, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bi, ptr align 2 %.sroa.097.0.i, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.0.i, i64 noundef %i.ba) #14
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.bg
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit.i

bb.r:                                             ; preds = %bb.l
  %i.bn = add i32 %.2.i, 983040
  %i.bo = lshr i32 %i.bn, 10
  %i.bp = trunc i32 %i.bo to i16
  %i.bq = and i16 %i.bp, 1023
  %i.br = or disjoint i16 %i.bq, -10240           ; 2 uses
  %.not.i.i65.i = icmp eq ptr %.sroa.16.0.i, %.sroa.33.0.i
  br i1 %.not.i.i65.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i16 %i.br, ptr %.sroa.16.0.i, align 2
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit72.i

bb.t:                                             ; preds = %bb.r
  %i.bs = ptrtoint ptr %.sroa.16.0.i to i64
  %i.bt = ptrtoint ptr %.sroa.097.0.i to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 6 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775806
  br i1 %i.bv, label %bb.u, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i66.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i66.i: ; preds = %bb.t
  %i.bw = ashr exact i64 %i.bu, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i67.i = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add i64 %.sroa.speculated.i.i.i.i67.i, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 4611686018427387903)
  %i.ca = select i1 %i.by, i64 4611686018427387903, i64 %i.bz ; 3 uses
  %.not.i.i.i.i68.i = icmp ne i64 %i.ca, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i68.i)
  %i.cb = shl nuw nsw i64 %i.ca, 1
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #13 ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %i.bu ; 2 uses
  store i16 %i.br, ptr %i.cd, align 2
  %i.ce = icmp sgt i64 %i.bu, 0
  br i1 %i.ce, label %bb.v, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i71.i

bb.v:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i66.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cc, ptr align 2 %.sroa.097.0.i, i64 %i.bu, i1 false)
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i71.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i71.i: ; preds = %bb.v, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i66.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.0.i, i64 noundef %i.bu) #14
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.ca
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit72.i

_ZNSt6vectorItSaItEE9push_backEOt.exit72.i:       ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i71.i, %bb.s
  %.sroa.097.4.i = phi ptr [ %i.cc, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i71.i ], [ %.sroa.097.0.i, %bb.s ] ; 4 uses
  %.pn191.i = phi ptr [ %i.cd, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i71.i ], [ %.sroa.16.0.i, %bb.s ] ; 2 uses
  %.sroa.33.4.i = phi ptr [ %i.cf, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i71.i ], [ %.sroa.33.0.i, %bb.s ] ; 3 uses
  %.sroa.16.4.i = getelementptr inbounds nuw i8, ptr %.pn191.i, i64 2 ; 2 uses
  %i.cg = trunc i32 %.2.i to i16
  %i.ch = and i16 %i.cg, 1023
  %i.ci = or disjoint i16 %i.ch, -9216            ; 2 uses
  %.not.i.i73.i = icmp eq ptr %.sroa.16.4.i, %.sroa.33.4.i
  br i1 %.not.i.i73.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit72.i
  store i16 %i.ci, ptr %.sroa.16.4.i, align 2
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn191.i, i64 4
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit.i

bb.x:                                             ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit72.i
  %i.ck = ptrtoint ptr %.sroa.33.4.i to i64
  %i.cl = ptrtoint ptr %.sroa.097.4.i to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 6 uses
  %i.cn = icmp eq i64 %i.cm, 9223372036854775806
  br i1 %i.cn, label %bb.y, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i74.i

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i74.i: ; preds = %bb.x
  %i.co = ashr exact i64 %i.cm, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i75.i = tail call i64 @llvm.umax.i64(i64 %i.co, i64 1)
  %i.cp = add i64 %.sroa.speculated.i.i.i.i75.i, %i.co ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.co
  %i.cr = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 4611686018427387903)
  %i.cs = select i1 %i.cq, i64 4611686018427387903, i64 %i.cr ; 3 uses
  %.not.i.i.i.i76.i = icmp ne i64 %i.cs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i76.i)
  %i.ct = shl nuw nsw i64 %i.cs, 1
  %i.cu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #13 ; 4 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %i.cm ; 2 uses
  store i16 %i.ci, ptr %i.cv, align 2
  %i.cw = icmp sgt i64 %i.cm, 0
  br i1 %i.cw, label %bb.z, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i79.i

bb.z:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i74.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cu, ptr align 2 %.sroa.097.4.i, i64 %i.cm, i1 false)
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i79.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i79.i: ; preds = %bb.z, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i74.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.4.i, i64 noundef %i.cm) #14
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.cs
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit.i

_ZNSt6vectorItSaItEE9push_backEOt.exit.i:         ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i79.i, %bb.w, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i.i, %bb.n
  %.sroa.097.1.i = phi ptr [ %.sroa.097.0.i, %bb.n ], [ %i.bi, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i.i ], [ %i.cu, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i79.i ], [ %.sroa.097.4.i, %bb.w ] ; 21 uses
  %.sroa.16.1.i = phi ptr [ %i.ax, %bb.n ], [ %i.bl, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i.i ], [ %i.cx, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i79.i ], [ %i.cj, %bb.w ] ; 2 uses
  %.sroa.33.1.i = phi ptr [ %.sroa.33.0.i, %bb.n ], [ %i.bm, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i.i ], [ %i.cy, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i79.i ], [ %.sroa.33.4.i, %bb.w ] ; 2 uses
  %i.cz = add nuw nsw i32 %.153.i, 1              ; 3 uses
  %i.da = icmp eq i32 %i.cz, %i.i
  br i1 %i.da, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit.i
  %i.db = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_113NextCodePointEPNS0_7IsolateENS0_16BuiltinArgumentsEi(ptr noundef %2, i64 %i.a, ptr %1, i32 noundef %i.cz) ; 2 uses
  %i.dc = icmp eq i32 %i.db, -1
  br i1 %i.dc, label %bb.ab, label %bb.l, !llvm.loop !11

bb.ab:                                            ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 912
  %.pre44 = ptrtoint ptr %.sroa.097.1.i to i64
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.ac:                                            ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit.i
  %i.de = ptrtoint ptr %.sroa.15.0208.i to i64
  %i.df = ptrtoint ptr %.sroa.0131.0209.i to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 3 uses
  %i.dh = ptrtoint ptr %.sroa.16.1.i to i64
  %i.di = ptrtoint ptr %.sroa.097.1.i to i64      ; 20 uses
  %i.dj = sub i64 %i.dh, %i.di                    ; 2 uses
  %i.dk = ashr exact i64 %i.dj, 1                 ; 2 uses
  %i.dl = add i64 %i.dk, %i.dg
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.dm, i8 noundef zeroext 0, i8 0) #15 ; 21 uses
  %.not.i = icmp eq ptr %i.dn, null
  br i1 %.not.i, label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge.i

_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %bb.ac
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

.critedge.i:                                      ; preds = %bb.ac
  %i.dp = load i64, ptr %i.dn, align 8
  %i.dq = add i64 %i.dp, -1
  %i.dr = inttoptr i64 %i.dq to ptr
end_hunk_0
begin_hunk_1_@_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE:bb.a
  %.sroa.03.0.copyload = phi ptr [ %i.ap, %bb.e ], [ %3, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread ] ; 3 uses
  %i.ar = load i64, ptr %.sroa.03.0.copyload, align 8
  %i.as = add i64 %i.ar, -1
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8
  %i.av = add i64 %i.au, 11
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load atomic volatile i16, ptr %i.aw monotonic, align 2
  %i.ay = and i16 %i.ax, -96
  %.not.i = icmp eq i16 %i.ay, 32
  br i1 %.not.i, label %bb.g, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

bb.g:                                             ; preds = %bb.f
  %i.az = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !8, !noundef !9
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.bc = load i8, ptr %i.bb, align 8, !range !8
  %i.bd = trunc nuw i8 %i.bc to i1
  %not..i.i.i = xor i1 %i.ba, true
  %i.be = select i1 %not..i.i.i, i1 true, i1 %i.bd
  br i1 %i.be, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.bg = load i8, ptr %i.bf, align 8, !range !8, !noundef !9
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i:  ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, %bb.g
  %.pn.i.i = phi ptr [ %i.bj, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i ], [ %1, %bb.g ]
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 58464
  %i.bk = load ptr, ptr %.in.i.i, align 8
  %i.bl = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %.sroa.03.0.copyload) #15
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit: ; preds = %bb.f, %_ZNK2v88internal7Isolate12string_tableEv.exit.i
  %.sroa.05.0.i = phi ptr [ %i.bl, %_ZNK2v88internal7Isolate12string_tableEv.exit.i ], [ %.sroa.03.0.copyload, %bb.f ]
  store ptr %.sroa.05.0.i, ptr %i.s, align 8
  br label %bb.l

.critedge:                                        ; preds = %_ZN2v88internal14IsJSTypedArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit, %bb.c, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit
  br i1 %i.a, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.bm = load i64, ptr %3, align 8
  %i.bn = add i64 %i.bm, -1
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load atomic volatile i64, ptr %i.bo monotonic, align 8
  %i.bq = add i64 %i.bp, 11
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i16, ptr %i.br monotonic, align 2
  %i.bt = and i16 %i.bs, -96
  %i.bu = icmp eq i16 %i.bt, 0
  br i1 %i.bu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.s, align 8
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.j, %bb.k, %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit
  tail call void @_ZN2v88internal14LookupIterator5StartILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %0) #15
  br label %bb.q

bb.m:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit
  %i.bv = load i64, ptr %3, align 8
  %i.bw = add i64 %i.bv, -1
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load atomic volatile i64, ptr %i.bx monotonic, align 8
  %i.bz = add i64 %i.by, 11
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i16, ptr %i.ca monotonic, align 2
  %i.cc = and i16 %i.cb, -96
  %.not.i21 = icmp eq i16 %i.cc, 32
  br i1 %.not.i21, label %bb.n, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28

bb.n:                                             ; preds = %bb.m
  %i.cd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !8, !noundef !9
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.cg = load i8, ptr %i.cf, align 8, !range !8
  %i.ch = trunc nuw i8 %i.cg to i1
  %not..i.i.i23 = xor i1 %i.ce, true
  %i.ci = select i1 %not..i.i.i23, i1 true, i1 %i.ch
  br i1 %i.ci, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.ck = load i8, ptr %i.cj, align 8, !range !8, !noundef !9
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24: ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.cn = load ptr, ptr %i.cm, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25

_ZNK2v88internal7Isolate12string_tableEv.exit.i25: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24, %bb.n
  %.pn.i.i26 = phi ptr [ %i.cn, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24 ], [ %1, %bb.n ]
  %.in.i.i27 = getelementptr inbounds nuw i8, ptr %.pn.i.i26, i64 58464
  %i.co = load ptr, ptr %.in.i.i27, align 8
  %i.cp = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %3) #15
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28

_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28: ; preds = %bb.m, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25
  %.sroa.05.0.i22 = phi ptr [ %i.cp, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25 ], [ %3, %bb.m ]
  store ptr %.sroa.05.0.i22, ptr %i.s, align 8
  tail call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %0) #15
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28, %bb.l
  ret void
}

declare ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator5StartILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #9 comdat {
bb.a:
  tail call void @abort() #12
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

declare ptr @_ZN2v88internal6Object15ConvertToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = !{!"branch_weights", !"expected", i32 2145766517, i32 1717131}
!13 = distinct !{!13, !5}
!14 = !{!"branch_weights", i32 2146410443, i32 1073205}
!15 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!16 = distinct !{!16, !"LVerDomain"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !5, !25, !26}
!20 = distinct !{!20, !5, !25, !26}
!21 = distinct !{!21, !5, !25}
!22 = !{!"branch_weights", i32 1, i32 1048575}
!23 = !{!17}
!24 = !{!18}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"branch_weights", i32 4, i32 12}
end_hunk_1
