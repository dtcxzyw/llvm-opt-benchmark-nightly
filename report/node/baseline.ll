Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/baseline?download=true
inline.NumInlined: 344
inline.NumDeleted: 209
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", [4 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", [4 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.2", [4 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.5", [2 x i8], %"class.v8::internal::FlagValue.2", [4 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", [4 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.5" = type { %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base" }
%"struct.std::_Optional_payload_base" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.4" = type { double }
%"class.v8::internal::FlagValue.3" = type { i32 }
%"class.v8::internal::FlagValue.6" = type { i64 }
%"class.v8::internal::FlagValue.2" = type { i32 }
%"class.v8::internal::FlagValue.1" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.v8::internal::detail::TaggedOperatorArrowRef" = type { %"class.v8::internal::SharedFunctionInfo" }
%"class.v8::internal::SharedFunctionInfo" = type { %"class.v8::internal::TorqueGeneratedSharedFunctionInfo" }
%"class.v8::internal::TorqueGeneratedSharedFunctionInfo" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::HeapObject" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::TaggedImpl" = type { i64 }
%"class.v8::internal::detail::TaggedOperatorArrowRef.499" = type { %"class.v8::internal::DebugInfo" }
%"class.v8::internal::DebugInfo" = type { %"class.v8::internal::TorqueGeneratedDebugInfo" }
%"class.v8::internal::TorqueGeneratedDebugInfo" = type { %"class.v8::internal::Struct" }
%"class.v8::internal::Struct" = type { %"class.v8::internal::TorqueGeneratedStruct" }
%"class.v8::internal::TorqueGeneratedStruct" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::baseline::BaselineCompiler" = type { ptr, ptr, %"class.v8::internal::Handle.500", %"class.v8::internal::Handle.503", %"class.v8::internal::Handle.501", %"class.v8::internal::Zone", %"class.v8::internal::MacroAssembler", %"class.v8::internal::baseline::BaselineAssembler", %"class.v8::internal::interpreter::BytecodeArrayIterator", %"class.v8::internal::baseline::BytecodeOffsetTableBuilder", ptr, %"class.v8::internal::BitVector" }
%"class.v8::internal::Handle.500" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"class.v8::internal::Handle.503" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::Handle.501" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::Zone" = type <{ %"struct.std::atomic.10", %"struct.std::atomic.10", i64, i64, ptr, ptr, ptr, i8, [7 x i8] }>
%"struct.std::atomic.10" = type { %"struct.std::__atomic_base.11" }
%"struct.std::__atomic_base.11" = type { i64 }
%"class.v8::internal::MacroAssembler" = type { %"class.v8::internal::SharedMacroAssembler.base", [4 x i8] }
%"class.v8::internal::SharedMacroAssembler.base" = type { %"class.v8::internal::SharedMacroAssemblerBase.base" }
%"class.v8::internal::SharedMacroAssemblerBase.base" = type { %"class.v8::internal::MacroAssemblerBase.base" }
%"class.v8::internal::MacroAssemblerBase.base" = type <{ %"class.v8::internal::Assembler", ptr, %"class.v8::internal::Handle.503", i8, i8, i8, i8, i32, i32 }>
%"class.v8::internal::Assembler" = type { %"class.v8::internal::AssemblerBase", %"class.v8::internal::RelocInfoWriter", %"class.std::deque.546", %"class.v8::internal::ConstPool", %"class.v8::internal::JumpTableInfoWriter" }
%"class.v8::internal::AssemblerBase" = type { ptr, %"class.std::unique_ptr.504", ptr, %"class.std::forward_list", ptr, %"class.v8::internal::CodeCommentsWriter", %"class.std::vector.520", %"class.std::vector.525", %"class.std::unordered_map.530", %"struct.v8::internal::AssemblerOptions", i64, i8, i8, ptr }
%"class.std::unique_ptr.504" = type { %"struct.std::__uniq_ptr_data.505" }
%"struct.std::__uniq_ptr_data.505" = type { %"class.std::__uniq_ptr_impl.506" }
%"class.std::__uniq_ptr_impl.506" = type { %"class.std::tuple.507" }
%"class.std::tuple.507" = type { %"struct.std::_Tuple_impl.508" }
%"struct.std::_Tuple_impl.508" = type { %"struct.std::_Head_base.511" }
%"struct.std::_Head_base.511" = type { ptr }
%"class.std::forward_list" = type { %"struct.std::_Fwd_list_base" }
%"struct.std::_Fwd_list_base" = type { %"struct.std::_Fwd_list_base<v8::internal::HeapNumberRequest, std::allocator<v8::internal::HeapNumberRequest>>::_Fwd_list_impl" }
%"struct.std::_Fwd_list_base<v8::internal::HeapNumberRequest, std::allocator<v8::internal::HeapNumberRequest>>::_Fwd_list_impl" = type { %"struct.std::_Fwd_list_node_base" }
%"struct.std::_Fwd_list_node_base" = type { ptr }
%"class.v8::internal::CodeCommentsWriter" = type { i32, %"class.std::vector.515" }
%"class.std::vector.515" = type { %"struct.std::_Vector_base.516" }
%"struct.std::_Vector_base.516" = type { %"struct.std::_Vector_base<v8::internal::CodeCommentEntry, std::allocator<v8::internal::CodeCommentEntry>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::CodeCommentEntry, std::allocator<v8::internal::CodeCommentEntry>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::CodeCommentEntry, std::allocator<v8::internal::CodeCommentEntry>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::CodeCommentEntry, std::allocator<v8::internal::CodeCommentEntry>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.520" = type { %"struct.std::_Vector_base.521" }
%"struct.std::_Vector_base.521" = type { %"struct.std::_Vector_base<v8::internal::Handle<v8::internal::Code>, std::allocator<v8::internal::Handle<v8::internal::Code>>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::Handle<v8::internal::Code>, std::allocator<v8::internal::Handle<v8::internal::Code>>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::Handle<v8::internal::Code>, std::allocator<v8::internal::Handle<v8::internal::Code>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::Handle<v8::internal::Code>, std::allocator<v8::internal::Handle<v8::internal::Code>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.525" = type { %"struct.std::_Vector_base.526" }
%"struct.std::_Vector_base.526" = type { %"struct.std::_Vector_base<v8::internal::Handle<v8::internal::HeapObject>, std::allocator<v8::internal::Handle<v8::internal::HeapObject>>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::Handle<v8::internal::HeapObject>, std::allocator<v8::internal::Handle<v8::internal::HeapObject>>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::Handle<v8::internal::HeapObject>, std::allocator<v8::internal::Handle<v8::internal::HeapObject>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::Handle<v8::internal::HeapObject>, std::allocator<v8::internal::Handle<v8::internal::HeapObject>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unordered_map.530" = type { %"class.std::_Hashtable.531" }
%"class.std::_Hashtable.531" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"struct.v8::internal::AssemblerOptions" = type <{ i8, i8, i8, i8, i32, i8, [7 x i8], i64, i8, i8, i8, [5 x i8] }>
%"class.v8::internal::RelocInfoWriter" = type { ptr, ptr }
%"class.std::deque.546" = type { %"class.std::_Deque_base.547" }
%"class.std::_Deque_base.547" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.548", %"struct.std::_Deque_iterator.548" }
%"struct.std::_Deque_iterator.548" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ConstPool" = type { ptr, %"class.std::multimap" }
%"class.std::multimap" = type { %"class.std::_Rb_tree.549" }
%"class.std::_Rb_tree.549" = type { %"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, int>, std::_Select1st<std::pair<const unsigned long, int>>, std::less<unsigned long>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, int>, std::_Select1st<std::pair<const unsigned long, int>>, std::less<unsigned long>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.v8::internal::JumpTableInfoWriter" = type { %"class.std::vector.554" }
%"class.std::vector.554" = type { %"struct.std::_Vector_base.555" }
%"struct.std::_Vector_base.555" = type { %"struct.std::_Vector_base<v8::internal::JumpTableInfoEntry, std::allocator<v8::internal::JumpTableInfoEntry>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::JumpTableInfoEntry, std::allocator<v8::internal::JumpTableInfoEntry>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::JumpTableInfoEntry, std::allocator<v8::internal::JumpTableInfoEntry>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::JumpTableInfoEntry, std::allocator<v8::internal::JumpTableInfoEntry>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.v8::internal::baseline::BaselineAssembler" = type { ptr, ptr }
%"class.v8::internal::interpreter::BytecodeArrayIterator" = type { %"class.v8::internal::Handle.501", ptr, ptr, ptr, i8, i32, ptr }
%"class.v8::internal::baseline::BytecodeOffsetTableBuilder" = type { i64, %"class.std::vector.559" }
%"class.std::vector.559" = type { %"struct.std::_Vector_base.560" }
%"struct.std::_Vector_base.560" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.v8::internal::BitVector" = type { i32, %"union.v8::internal::BitVector::DataStorage", ptr, ptr }
%"union.v8::internal::BitVector::DataStorage" = type { ptr }
%"class.v8::internal::baseline::BaselineAssembler::ScratchRegisterScope" = type <{ ptr, ptr, i32, [4 x i8] }>
%"class.v8::internal::Label" = type { i32, i32 }

$_ZN2v88internal8baseline17BaselineAssembler10EmitReturnEPNS0_14MacroAssemblerE = comdat any

$_ZN2v88internal9AssemblerD2Ev = comdat any

$_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E = comdat any

@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@_ZTVN2v88internal9AssemblerE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZN2v88internal8baseline6detailL17kScratchRegistersE = internal unnamed_addr constant [5 x { i8 }] [{ i8 } { i8 8 }, { i8 } { i8 9 }, { i8 } { i8 11 }, { i8 } { i8 12 }, { i8 } { i8 15 }], align 1
@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"kind() == CodeKind::BASELINE\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"NullOrIs<To>(value)\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal22CanCompileWithBaselineEPNS0_7IsolateENS0_6TaggedINS0_18SharedFunctionInfoEEE(ptr noundef %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.499", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 356), align 4, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 376), align 8, !range !5, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 59475
  %i.f = load i8, ptr %i.e, align 1, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = add i64 %1, 7
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = and i64 %i.j, 1
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.a

_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.a: ; preds = %bb.d
  %i.m = add nsw i64 %i.j, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %.off.i.i = add i16 %i.r, -184
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  br i1 %switch.i.i, label %bb.e, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread

bb.e:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 59496
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 9
  %i.v = load i8, ptr %i.u, align 1, !range !5, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 %1, ptr %2, align 8
  %i.x = call { i64, i8 } @_ZNK2v88internal18SharedFunctionInfo15TryGetDebugInfoEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %0) #7 ; 2 uses
  %i.y = extractvalue { i64, i8 } %i.x, 0         ; 2 uses
  %i.z = extractvalue { i64, i8 } %i.x, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit, label %.critedge

_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store i64 %i.y, ptr %3, align 8
  %i.ab = call noundef zeroext i1 @_ZNK2v88internal9DebugInfo12HasBreakInfoEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br i1 %i.ab, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit5

_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit5: ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit
  %i.ac = add i64 %i.y, 55
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i64, ptr %i.ad acquire, align 8
  %i.af = trunc i64 %i.ae to i1
  br i1 %i.af, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread, label %.critedge

.critedge:                                        ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit5, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store i64 %1, ptr %4, align 8
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 368), align 16
  %i.ah = call noundef zeroext i1 @_ZN2v88internal18SharedFunctionInfo12PassesFilterEPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.ag) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread

_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread: ; preds = %bb.d, %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit, %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit5, %.critedge, %bb.e, %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.a, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.c ], [ false, %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.a ], [ false, %bb.e ], [ %i.ah, %.critedge ], [ false, %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit ], [ false, %bb.a ], [ false, %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit5 ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { i64, i8 } @_ZNK2v88internal18SharedFunctionInfo15TryGetDebugInfoEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal9DebugInfo12HasBreakInfoEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal18SharedFunctionInfo12PassesFilterEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal20GenerateBaselineCodeEPNS0_7IsolateENS0_6HandleINS0_18SharedFunctionInfoEEE(ptr noundef %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 5 uses
  %3 = alloca %"class.v8::internal::baseline::BaselineCompiler", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %2, align 8
  %i.b = call { i64, i8 } @_ZNK2v88internal18SharedFunctionInfo15TryGetDebugInfoEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %0) #7 ; 2 uses
  %i.c = extractvalue { i64, i8 } %i.b, 0         ; 2 uses
  %i.d = extractvalue { i64, i8 } %i.b, 1
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit.i, label %.critedge.i

_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit.i: ; preds = %bb.a
  %i.f = add i64 %i.c, 55
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i64, ptr %i.g acquire, align 8
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7.i, label %.critedge.i

_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7.i: ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit.i
  %i.j = add i64 %i.c, 47
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k acquire, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit

.critedge.i:                                      ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit.i, %bb.a
  %.sroa.0.0.copyload.i.i.i8.i = load i64, ptr %2, align 8
  %i.m = add i64 %.sroa.0.0.copyload.i.i.i8.i, 7
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n acquire, align 8 ; 6 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i

_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i: ; preds = %.critedge.i
  %i.q = add nsw i64 %i.o, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2
  %i.w = icmp eq i16 %i.v, 185
  br i1 %i.w, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i

_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i: ; preds = %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i
  %i.x = add i64 %i.o, 51
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i32, ptr %i.y monotonic, align 4
  %i.aa = and i32 %i.z, 15
  %i.ab = icmp eq i32 %i.aa, 10
  br i1 %i.ab, label %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i.i, label %bb.b, !prof !7

bb.b:                                             ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #8
  unreachable

_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i.i: ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i
  %i.ac = add i64 %i.o, 7
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i64, ptr %i.ad, align 8
  br label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i

_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i: ; preds = %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i.i, %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i, %.critedge.i
  %.sroa.08.0.i.i = phi i64 [ %i.ae, %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i.i ], [ %i.o, %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i ], [ %i.o, %.critedge.i ] ; 3 uses
  %i.af = trunc i64 %.sroa.08.0.i.i to i1
  br i1 %i.af, label %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i, label %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i.i.i

_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i: ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i
  %i.ag = add nsw i64 %.sroa.08.0.i.i, -1
  %i.ah = inttoptr i64 %i.ag to ptr               ; 3 uses
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.aj = add i64 %i.ai, 11
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i16, ptr %i.ak monotonic, align 2
  %i.am = icmp eq i16 %i.al, 184
  br i1 %i.am, label %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit, label %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i

_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i: ; preds = %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i
  %i.an = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.ao = add i64 %i.an, 11
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i16, ptr %i.ap monotonic, align 2
  %i.ar = icmp eq i16 %i.aq, 186
  br i1 %i.ar, label %_ZN2v88internal7SbxCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit.i.i, label %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i.i.i, !prof !8

_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i.i.i: ; preds = %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i, %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #8
  unreachable

_ZN2v88internal7SbxCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit.i.i: ; preds = %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.at = load i64, ptr %i.as, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit

_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit: ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7.i, %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i, %_ZN2v88internal7SbxCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit.i.i
  %.sroa.0.0.i = phi i64 [ %i.l, %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7.i ], [ %i.at, %_ZN2v88internal7SbxCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit.i.i ], [ %.sroa.08.0.i.i, %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !9

bb.c:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit
  %i.az = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #7
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit, %bb.c
  %.0.i = phi ptr [ %i.az, %bb.c ], [ %i.av, %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit ] ; 3 uses
  %i.ba = ptrtoint ptr %.0.i to i64
  %i.bb = add i64 %i.ba, 8
  %i.bc = inttoptr i64 %i.bb to ptr
  store ptr %i.bc, ptr %i.au, align 8
  store i64 %.sroa.0.0.i, ptr %.0.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 63936
  %i.be = load ptr, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN2v88internal8baseline16BaselineCompilerC1EPNS0_12LocalIsolateENS0_6HandleINS0_18SharedFunctionInfoEEENS5_INS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(680) %3, ptr noundef %i.be, ptr nonnull %1, ptr nonnull %.0.i) #7
  call void @_ZN2v88internal8baseline16BaselineCompiler12GenerateCodeEv(ptr noundef nonnull align 8 dereferenceable(680) %3) #7
  %i.bf = call ptr @_ZN2v88internal8baseline16BaselineCompiler5BuildEv(ptr noundef nonnull align 8 dereferenceable(680) %3) #7 ; 3 uses
  %i.bg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1927), align 1, !range !5, !noundef !6
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = icmp ne ptr %i.bf, null
  %or.cond.not = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond.not, label %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit, label %bb.d

_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.bj = load i64, ptr %i.bf, align 8
  call void @_ZN2v88internal5PrintILNS0_23HeapObjectReferenceTypeE1EmEEvNS0_10TaggedImplIXT_ET0_EE(i64 %i.bj) #7
  br label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_4CodeEE5CheckEv.exit, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 616
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8baseline16BaselineCompilerD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 632
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #9
  br label %_ZN2v88internal8baseline16BaselineCompilerD2Ev.exit

_ZN2v88internal8baseline16BaselineCompilerD2Ev.exit: ; preds = %bb.d, %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 560
  call void @_ZN2v88internal11interpreter21BytecodeArrayIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.br) #7
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZN2v88internal9AssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(436) %i.bs) #7
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64) %i.bt) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret ptr %i.bf
}

declare void @_ZN2v88internal8baseline16BaselineCompilerC1EPNS0_12LocalIsolateENS0_6HandleINS0_18SharedFunctionInfoEEENS5_INS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(680), ptr noundef, ptr, ptr) unnamed_addr #2

declare void @_ZN2v88internal8baseline16BaselineCompiler12GenerateCodeEv(ptr noundef nonnull align 8 dereferenceable(680)) local_unnamed_addr #2

declare ptr @_ZN2v88internal8baseline16BaselineCompiler5BuildEv(ptr noundef nonnull align 8 dereferenceable(680)) local_unnamed_addr #2

declare void @_ZN2v88internal5PrintILNS0_23HeapObjectReferenceTypeE1EmEEvNS0_10TaggedImplIXT_ET0_EE(i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18EmitReturnBaselineEPNS0_14MacroAssemblerE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN2v88internal8baseline17BaselineAssembler10EmitReturnEPNS0_14MacroAssemblerE(ptr noundef %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8baseline17BaselineAssembler10EmitReturnEPNS0_14MacroAssemblerE(ptr noundef %0) local_unnamed_addr #3 comdat align 2 {
_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit.i:
  %1 = alloca %"class.v8::internal::baseline::BaselineAssembler::ScratchRegisterScope", align 8 ; 7 uses
  %2 = alloca %"class.v8::internal::baseline::BaselineAssembler", align 8 ; 24 uses
  %3 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %4 = alloca %"class.v8::internal::baseline::BaselineAssembler::ScratchRegisterScope", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
end_hunk_0
