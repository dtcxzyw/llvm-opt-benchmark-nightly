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
  %3 = icmp eq i32 %.052210.i, %i.i
  br i1 %3, label %._crit_edge.thread.i, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i

._crit_edge.thread.i:                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i, %._crit_edge.i
  %.sroa.0131.0.lcssa.ph251.i = phi ptr [ %.sroa.0131.0209.i, %._crit_edge.i ], [ %.sroa.0131.2.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ] ; 4 uses
  %.sroa.15.0.lcssa.ph250.i = phi ptr [ %.sroa.15.0208.i, %._crit_edge.i ], [ %.sroa.15.2.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ]
  %.sroa.26.0.lcssa.ph249.i = phi ptr [ %.sroa.26.0207.i, %._crit_edge.i ], [ %.sroa.26.2.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ] ; 2 uses
  %i.aj = ptrtoint ptr %.sroa.15.0.lcssa.ph250.i to i64
  %i.ak = ptrtoint ptr %.sroa.0131.0.lcssa.ph251.i to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr %.sroa.0131.0.lcssa.ph251.i, i64 %i.al, i8 noundef zeroext 0) #15 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, label %bb.k

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i: ; preds = %._crit_edge.thread.i
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ap = load i64, ptr %i.ao, align 8
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

bb.k:                                             ; preds = %._crit_edge.thread.i
  %i.aq = load i64, ptr %i.am, align 8
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i: ; preds = %._crit_edge.i
  %i.ar = sub nuw nsw i32 %i.i, %.052210.i
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 1
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #13 ; 3 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.as
  br label %bb.l

bb.l:                                             ; preds = %bb.aa, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i
  %.sroa.097.0.i = phi ptr [ %i.au, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i ], [ %.sroa.097.1.i, %bb.aa ] ; 8 uses
  %.sroa.16.0.i = phi ptr [ %i.au, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i ], [ %.sroa.16.1.i, %bb.aa ] ; 8 uses
  %.sroa.33.0.i = phi ptr [ %i.av, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i ], [ %.sroa.33.1.i, %bb.aa ] ; 4 uses
  %.153.i = phi i32 [ %.052210.i, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i ], [ %i.da, %bb.aa ]
  %.2.i = phi i32 [ %i.q, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i ], [ %i.dc, %bb.aa ] ; 4 uses
  %i.aw = icmp ult i32 %.2.i, 65536
  br i1 %i.aw, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ax = trunc nuw i32 %.2.i to i16              ; 2 uses
  %.not.i.i61.i = icmp eq ptr %.sroa.16.0.i, %.sroa.33.0.i
  br i1 %.not.i.i61.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i16 %i.ax, ptr %.sroa.16.0.i, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.16.0.i, i64 2
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit.i

bb.o:                                             ; preds = %bb.m
  %i.az = ptrtoint ptr %.sroa.16.0.i to i64
  %i.ba = ptrtoint ptr %.sroa.097.0.i to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 6 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775806
  br i1 %i.bc, label %bb.p, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.bd = ashr exact i64 %i.bb, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i62.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add i64 %.sroa.speculated.i.i.i.i62.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 4611686018427387903)
  %i.bh = select i1 %i.bf, i64 4611686018427387903, i64 %i.bg ; 3 uses
  %.not.i.i.i.i63.i = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i63.i)
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #13 ; 4 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.bb ; 2 uses
  store i16 %i.ax, ptr %i.bk, align 2
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %bb.q, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bj, ptr align 2 %.sroa.097.0.i, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.0.i, i64 noundef %i.bb) #14
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit.i

bb.r:                                             ; preds = %bb.l
  %i.bo = add i32 %.2.i, 983040
  %i.bp = lshr i32 %i.bo, 10
  %i.bq = trunc i32 %i.bp to i16
  %i.br = and i16 %i.bq, 1023
  %i.bs = or disjoint i16 %i.br, -10240           ; 2 uses
  %.not.i.i65.i = icmp eq ptr %.sroa.16.0.i, %.sroa.33.0.i
  br i1 %.not.i.i65.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i16 %i.bs, ptr %.sroa.16.0.i, align 2
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit72.i

bb.t:                                             ; preds = %bb.r
  %i.bt = ptrtoint ptr %.sroa.16.0.i to i64
  %i.bu = ptrtoint ptr %.sroa.097.0.i to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 6 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775806
  br i1 %i.bw, label %bb.u, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i66.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i66.i: ; preds = %bb.t
  %i.bx = ashr exact i64 %i.bv, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i67.i = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add i64 %.sroa.speculated.i.i.i.i67.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 4611686018427387903)
  %i.cb = select i1 %i.bz, i64 4611686018427387903, i64 %i.ca ; 3 uses
  %.not.i.i.i.i68.i = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i68.i)
  %i.cc = shl nuw nsw i64 %i.cb, 1
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #13 ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.bv ; 2 uses
  store i16 %i.bs, ptr %i.ce, align 2
  %i.cf = icmp sgt i64 %i.bv, 0
  br i1 %i.cf, label %bb.v, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i71.i

bb.v:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i66.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cd, ptr align 2 %.sroa.097.0.i, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i71.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i71.i: ; preds = %bb.v, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i66.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.0.i, i64 noundef %i.bv) #14
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %i.cb
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit72.i

_ZNSt6vectorItSaItEE9push_backEOt.exit72.i:       ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i71.i, %bb.s
  %.sroa.097.4.i = phi ptr [ %i.cd, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i71.i ], [ %.sroa.097.0.i, %bb.s ] ; 4 uses
  %.pn191.i = phi ptr [ %i.ce, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i71.i ], [ %.sroa.16.0.i, %bb.s ] ; 2 uses
  %.sroa.33.4.i = phi ptr [ %i.cg, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i71.i ], [ %.sroa.33.0.i, %bb.s ] ; 3 uses
  %.sroa.16.4.i = getelementptr inbounds nuw i8, ptr %.pn191.i, i64 2 ; 2 uses
  %i.ch = trunc i32 %.2.i to i16
  %i.ci = and i16 %i.ch, 1023
  %i.cj = or disjoint i16 %i.ci, -9216            ; 2 uses
  %.not.i.i73.i = icmp eq ptr %.sroa.16.4.i, %.sroa.33.4.i
  br i1 %.not.i.i73.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit72.i
  store i16 %i.cj, ptr %.sroa.16.4.i, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.pn191.i, i64 4
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit.i

bb.x:                                             ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit72.i
  %i.cl = ptrtoint ptr %.sroa.33.4.i to i64
  %i.cm = ptrtoint ptr %.sroa.097.4.i to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 6 uses
  %i.co = icmp eq i64 %i.cn, 9223372036854775806
  br i1 %i.co, label %bb.y, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i74.i

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i74.i: ; preds = %bb.x
  %i.cp = ashr exact i64 %i.cn, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i75.i = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.cq = add i64 %.sroa.speculated.i.i.i.i75.i, %i.cp ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cp
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 4611686018427387903)
  %i.ct = select i1 %i.cr, i64 4611686018427387903, i64 %i.cs ; 3 uses
  %.not.i.i.i.i76.i = icmp ne i64 %i.ct, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i76.i)
  %i.cu = shl nuw nsw i64 %i.ct, 1
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #13 ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %i.cn ; 2 uses
  store i16 %i.cj, ptr %i.cw, align 2
  %i.cx = icmp sgt i64 %i.cn, 0
  br i1 %i.cx, label %bb.z, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i79.i

bb.z:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i74.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cv, ptr align 2 %.sroa.097.4.i, i64 %i.cn, i1 false)
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i79.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i79.i: ; preds = %bb.z, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i74.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.4.i, i64 noundef %i.cn) #14
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.ct
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit.i

_ZNSt6vectorItSaItEE9push_backEOt.exit.i:         ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i79.i, %bb.w, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i.i, %bb.n
  %.sroa.097.1.i = phi ptr [ %.sroa.097.0.i, %bb.n ], [ %i.bj, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i.i ], [ %i.cv, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i79.i ], [ %.sroa.097.4.i, %bb.w ] ; 21 uses
  %.sroa.16.1.i = phi ptr [ %i.ay, %bb.n ], [ %i.bm, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i.i ], [ %i.cy, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i79.i ], [ %i.ck, %bb.w ] ; 2 uses
  %.sroa.33.1.i = phi ptr [ %.sroa.33.0.i, %bb.n ], [ %i.bn, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i.i ], [ %i.cz, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i79.i ], [ %.sroa.33.4.i, %bb.w ] ; 2 uses
  %i.da = add nuw nsw i32 %.153.i, 1              ; 3 uses
  %i.db = icmp eq i32 %i.da, %i.i
  br i1 %i.db, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit.i
  %i.dc = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_113NextCodePointEPNS0_7IsolateENS0_16BuiltinArgumentsEi(ptr noundef %2, i64 %i.a, ptr %1, i32 noundef %i.da) ; 2 uses
  %i.dd = icmp eq i32 %i.dc, -1
  br i1 %i.dd, label %bb.ab, label %bb.l, !llvm.loop !11

bb.ab:                                            ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 912
  %.pre44 = ptrtoint ptr %.sroa.097.1.i to i64
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.ac:                                            ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit.i
  %i.df = ptrtoint ptr %.sroa.15.0208.i to i64
  %i.dg = ptrtoint ptr %.sroa.0131.0209.i to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 3 uses
  %i.di = ptrtoint ptr %.sroa.16.1.i to i64
  %i.dj = ptrtoint ptr %.sroa.097.1.i to i64      ; 20 uses
  %i.dk = sub i64 %i.di, %i.dj                    ; 2 uses
  %i.dl = ashr exact i64 %i.dk, 1                 ; 2 uses
  %i.dm = add i64 %i.dl, %i.dh
  %i.dn = trunc i64 %i.dm to i32
  %i.do = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.dn, i8 noundef zeroext 0, i8 0) #15 ; 21 uses
  %.not.i = icmp eq ptr %i.do, null
  br i1 %.not.i, label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge.i

_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %bb.ac
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

.critedge.i:                                      ; preds = %bb.ac
  %i.dq = load i64, ptr %i.do, align 8
  %i.dr = add i64 %i.dq, -1
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.dt, ptr noundef %.sroa.0131.0209.i, i64 noundef %i.dh)
  %i.du = load i64, ptr %i.do, align 8
  %i.dv = add i64 %i.du, -1
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %i.dh ; 17 uses
  switch i64 %i.dl, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i [
    i64 1, label %bb.ad
    i64 2, label %bb.ae
    i64 3, label %bb.af
    i64 4, label %bb.ag
    i64 5, label %bb.ah
    i64 6, label %bb.ai
    i64 7, label %bb.aj
    i64 8, label %bb.ak
    i64 9, label %bb.al
    i64 10, label %bb.am
    i64 11, label %bb.an
    i64 12, label %bb.ao
    i64 13, label %bb.ap
    i64 14, label %bb.aq
    i64 15, label %bb.ar
    i64 16, label %bb.as
    i64 0, label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i
  ]

bb.ad:                                            ; preds = %.critedge.i
  %i.dz = load i16, ptr %.sroa.097.1.i, align 2
  store i16 %i.dz, ptr %i.dy, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.ae:                                            ; preds = %.critedge.i
  %i.ea = load i32, ptr %.sroa.097.1.i, align 2
  store i32 %i.ea, ptr %i.dy, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.af:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.dy, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.097.1.i, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.ag:                                            ; preds = %.critedge.i
  %i.eb = load i64, ptr %.sroa.097.1.i, align 2
  store i64 %i.eb, ptr %i.dy, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.ah:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.dy, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.097.1.i, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.ai:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.dy, ptr noundef nonnull align 2 dereferenceable(12) %.sroa.097.1.i, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.aj:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.dy, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.097.1.i, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.ak:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.dy, ptr noundef nonnull align 2 dereferenceable(16) %.sroa.097.1.i, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.al:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.dy, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.097.1.i, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.am:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.dy, ptr noundef nonnull align 2 dereferenceable(20) %.sroa.097.1.i, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.an:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.dy, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.097.1.i, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.ao:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.dy, ptr noundef nonnull align 2 dereferenceable(24) %.sroa.097.1.i, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.ap:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.dy, ptr noundef nonnull align 2 dereferenceable(26) %.sroa.097.1.i, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.aq:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.dy, ptr noundef nonnull align 2 dereferenceable(28) %.sroa.097.1.i, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.ar:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.dy, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.097.1.i, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

bb.as:                                            ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.dy, ptr noundef nonnull align 2 dereferenceable(32) %.sroa.097.1.i, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i: ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.dy, ptr nonnull align 2 %.sroa.097.1.i, i64 %i.dk, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i

_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i:  ; preds = %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %.critedge.i, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, %bb.ab
  %.pre-phi = phi i64 [ %i.dj, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i ], [ %i.dj, %bb.as ], [ %i.dj, %bb.ar ], [ %i.dj, %bb.aq ], [ %i.dj, %bb.ap ], [ %i.dj, %bb.ao ], [ %i.dj, %bb.an ], [ %i.dj, %bb.am ], [ %i.dj, %bb.al ], [ %i.dj, %bb.ak ], [ %i.dj, %bb.aj ], [ %i.dj, %bb.ai ], [ %i.dj, %bb.ah ], [ %i.dj, %bb.ag ], [ %i.dj, %bb.af ], [ %i.dj, %bb.ae ], [ %i.dj, %bb.ad ], [ %i.dj, %.critedge.i ], [ %i.dj, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %.pre44, %bb.ab ]
  %.sroa.0159.2.in.i = phi ptr [ %i.do, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i ], [ %i.do, %bb.as ], [ %i.do, %bb.ar ], [ %i.do, %bb.aq ], [ %i.do, %bb.ap ], [ %i.do, %bb.ao ], [ %i.do, %bb.an ], [ %i.do, %bb.am ], [ %i.do, %bb.al ], [ %i.do, %bb.ak ], [ %i.do, %bb.aj ], [ %i.do, %bb.ai ], [ %i.do, %bb.ah ], [ %i.do, %bb.ag ], [ %i.do, %bb.af ], [ %i.do, %bb.ae ], [ %i.do, %bb.ad ], [ %i.do, %.critedge.i ], [ %i.dp, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %i.de, %bb.ab ]
  %.sroa.0159.2.i = load i64, ptr %.sroa.0159.2.in.i, align 8
  %i.ec = ptrtoint ptr %.sroa.33.1.i to i64
  %i.ed = sub i64 %i.ec, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.1.i, i64 noundef %i.ed) #14
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.d, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, %bb.k, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i
  %.sroa.26.0206.i = phi ptr [ %.sroa.26.0207.i, %bb.d ], [ %.sroa.26.0.lcssa.ph249.i, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i ], [ %.sroa.26.0.lcssa.ph249.i, %bb.k ], [ %.sroa.26.0207.i, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i ]
  %.sroa.0131.0201.i = phi ptr [ %.sroa.0131.0209.i, %bb.d ], [ %.sroa.0131.0.lcssa.ph251.i, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i ], [ %.sroa.0131.0.lcssa.ph251.i, %bb.k ], [ %.sroa.0131.0209.i, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i ] ; 2 uses
  %.sroa.0159.3.i = phi i64 [ %i.t, %bb.d ], [ %i.ap, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i ], [ %i.aq, %bb.k ], [ %.sroa.0159.2.i, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit.i ] ; 2 uses
  %i.ee = ptrtoint ptr %.sroa.26.0206.i to i64
  %i.ef = ptrtoint ptr %.sroa.0131.0201.i to i64
  %i.eg = sub i64 %i.ee, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0131.0201.i, i64 noundef %i.eg) #14
  %.pre = load i32, ptr %i.f, align 8
  %.pre43 = load ptr, ptr %i.d, align 8
  %i.eh = add nsw i32 %.pre, -1
  %i.ei = icmp eq ptr %.pre43, %i.e
  store ptr %i.c, ptr %i.b, align 8
  store i32 %i.eh, ptr %i.f, align 8
  br i1 %i.ei, label %_ZN2v88internalL32Builtin_Impl_StringFromCodePointENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.at, !prof !12

bb.at:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #15
  br label %_ZN2v88internalL32Builtin_Impl_StringFromCodePointENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL32Builtin_Impl_StringFromCodePointENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.thread, %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %bb.at
  %.sroa.0159.4.i58 = phi i64 [ %i.l, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.thread ], [ %.sroa.0159.3.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ], [ %.sroa.0159.3.i, %bb.at ]
  ret i64 %.sroa.0159.4.i58
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal34Builtin_StringPrototypeLastIndexOfEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i7.i = icmp ult i32 %0, 4
  br i1 %.not.i7.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #12
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i = sub i64 %i.i, %i.j               ; 3 uses
  %i.k = add i64 %reass.sub.i, 40
  %i.l = inttoptr i64 %i.k to ptr
  %.not.i8.i = icmp sgt i32 %0, 5
  %i.m = add i64 %reass.sub.i, 48
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 2 uses
  %.sroa.0.0.i.i = select i1 %.not.i8.i, ptr %i.n, ptr %i.o
  %.not.i9.i = icmp sgt i32 %0, 6
  %i.p = add i64 %reass.sub.i, 56
  %i.q = inttoptr i64 %i.p to ptr
  %.sroa.0.0.i10.i = select i1 %.not.i9.i, ptr %i.q, ptr %i.o
  %i.r = tail call i64 @_ZN2v88internal6String11LastIndexOfEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_S6_(ptr noundef nonnull %2, ptr %i.l, ptr %.sroa.0.0.i.i, ptr %.sroa.0.0.i10.i) #15
  store ptr %i.b, ptr %i.a, align 8
  %i.s = load i32, ptr %i.e, align 8
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.e, align 8
  %i.u = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL39Builtin_Impl_StringPrototypeLastIndexOfENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #15
  br label %_ZN2v88internalL39Builtin_Impl_StringPrototypeLastIndexOfENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL39Builtin_Impl_StringPrototypeLastIndexOfENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, %bb.c
  ret i64 %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal17Builtin_StringRawEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 7 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %6 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %7 = alloca %"class.v8::internal::IncrementalStringBuilder", align 8 ; 7 uses
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  %i.i = add nsw i32 %0, -4
  %.not.i156.i = icmp sgt i32 %0, 5
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.k = shl nsw i64 %i.a, 3
  %reass.sub = sub i64 %i.j, %i.k
  %i.l = add i64 %reass.sub, 48
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i156.i, ptr %i.m, ptr %i.n ; 3 uses
  %i.o = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.4, i64 3, i8 noundef zeroext 0) #15 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #12
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i: ; preds = %bb.a
  %i.q = load i64, ptr %.sroa.0.0.i.i, align 8    ; 2 uses
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i, !prof !14

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  %i.s = add nsw i64 %i.q, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = add i64 %i.u, 11
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i16, ptr %i.w monotonic, align 2
  %i.y = icmp ugt i16 %i.x, 299
  br i1 %i.y, label %.critedge.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i, !prof !15

_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  %i.z = tail call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i, ptr noundef null) #15 ; 2 uses
  %.not367.i = icmp eq ptr %i.z, null
  br i1 %.not367.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ab = load i64, ptr %i.aa, align 8
  br label %bb.u

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %.sroa.07.0.i316320.i = phi ptr [ %i.z, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i ], [ %.sroa.0.0.i.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.pre.pre.i.i = load i64, ptr %i.o, align 8
  %i.ac = add i64 %.pre.pre.i.i, -1
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i16, ptr %i.ag monotonic, align 2
  %i.ai = icmp eq i16 %i.ah, 128
  br i1 %i.ai, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i:  ; preds = %.critedge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i, %.critedge.i
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i
  %i.am = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i.i ]
  store i32 %i.am, ptr %6, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 0, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %2, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %.sroa.07.0.i316320.i, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr null, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ax = ptrtoint ptr %.sroa.07.0.i316320.i to i64
  store i64 %i.ax, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 -1, i64 16, i1 false)
  %i.az = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.ba = add i64 %i.az, 11
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i16, ptr %i.bb monotonic, align 2
  %i.bd = and i16 %i.bc, -96
  %.not.i21.i.i.i.i = icmp eq i16 %i.bd, 32
  br i1 %.not.i21.i.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i.i
  %i.be = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !8, !noundef !9
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bh = load i8, ptr %i.bg, align 8, !range !8
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
!16 = distinct !{!16, i1 false, !"LVerDomain"}
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
