Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/regexp-parser?download=true
inline.NumInlined: 2670
inline.NumDeleted: 831
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.450", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", [4 x i8], %"class.v8::internal::FlagValue.451", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.450", %"class.v8::internal::FlagValue.450", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.450", %"class.v8::internal::FlagValue.452", %"class.v8::internal::FlagValue.452", %"class.v8::internal::FlagValue.452", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.450", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.450", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.451", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.450", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.450", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.451", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", [4 x i8], %"class.v8::internal::FlagValue.451", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.450", %"class.v8::internal::FlagValue.450", %"class.v8::internal::FlagValue.450", %"class.v8::internal::FlagValue.450", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.449", [4 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.450", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.451", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.451", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.452", %"class.v8::internal::FlagValue.452", %"class.v8::internal::FlagValue.452", %"class.v8::internal::FlagValue.452", %"class.v8::internal::FlagValue.452", %"class.v8::internal::FlagValue.452", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.450", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.450", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.451", %"class.v8::internal::FlagValue.451", %"class.v8::internal::FlagValue.451", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.450", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.452", [2 x i8], %"class.v8::internal::FlagValue.449", [4 x i8], %"class.v8::internal::FlagValue.451", %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.450", %"class.v8::internal::FlagValue.450", [4 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.449", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.448", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.452" = type { %"class.std::optional.453" }
%"class.std::optional.453" = type { %"struct.std::_Optional_base.454" }
%"struct.std::_Optional_base.454" = type { %"struct.std::_Optional_payload.456" }
%"struct.std::_Optional_payload.456" = type { %"struct.std::_Optional_payload_base.457" }
%"struct.std::_Optional_payload_base.457" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.451" = type { double }
%"class.v8::internal::FlagValue.450" = type { i32 }
%"class.v8::internal::FlagValue.459" = type { i64 }
%"class.v8::internal::FlagValue.449" = type { i32 }
%"class.v8::internal::FlagValue.448" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.v8::internal::(anonymous namespace)::RegExpParserImpl" = type { [8 x i8], ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %"class.v8::base::Flags", i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i64 }
%"class.v8::base::Flags" = type { i32 }
%"class.v8::internal::StdoutStream" = type { %"class.v8::internal::OFStream.base", %"class.v8::base::LockGuard", %"class.std::basic_ios" }
%"class.v8::internal::OFStream.base" = type { %"class.std::basic_ostream.base", %"class.v8::internal::OFStreamBase" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.v8::internal::OFStreamBase" = type { %"class.std::basic_streambuf", ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.v8::base::LockGuard" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.v8::internal::(anonymous namespace)::RegExpParserImpl.0" = type { [8 x i8], ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %"class.v8::base::Flags", i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i64 }
%"class.v8::internal::SharedStringAccessGuardIfNeeded" = type { %"class.std::optional.531" }
%"class.std::optional.531" = type { %"struct.std::_Optional_base.532" }
%"struct.std::_Optional_base.532" = type { %"struct.std::_Optional_payload.534" }
%"struct.std::_Optional_payload.534" = type { %"struct.std::_Optional_payload.base.539", [7 x i8] }
%"struct.std::_Optional_payload.base.539" = type { %"struct.std::_Optional_payload_base.base.538" }
%"struct.std::_Optional_payload_base.base.538" = type <{ %"union.std::_Optional_payload_base<v8::base::LockGuard<v8::base::Mutex>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::base::LockGuard<v8::base::Mutex>>::_Storage" = type { %"class.v8::base::LockGuard.537" }
%"class.v8::base::LockGuard.537" = type { ptr }
%"class.v8::internal::PerThreadAssertScopeEmpty" = type { i8 }
%"class.v8::internal::String::FlatContent" = type { %union.anon.444, i32, i32, ptr }
%union.anon.444 = type { ptr }
%"class.v8::internal::(anonymous namespace)::RegExpParserState" = type { ptr, %"class.v8::internal::(anonymous namespace)::RegExpBuilder", i32, i32, i32, ptr, %"struct.std::pair" }
%"class.v8::internal::(anonymous namespace)::RegExpBuilder" = type { ptr, i8, %"class.v8::base::Flags", %"class.v8::internal::SmallZoneVector", %"class.v8::internal::SmallZoneVector", %"class.v8::internal::(anonymous namespace)::RegExpTextBuilder" }
%"class.v8::internal::SmallZoneVector" = type { %"class.v8::base::SmallVector.462" }
%"class.v8::base::SmallVector.462" = type { %"class.v8::internal::ZoneAllocator", ptr, ptr, ptr, [64 x i8] }
%"class.v8::internal::ZoneAllocator" = type { ptr }
%"class.v8::internal::(anonymous namespace)::RegExpTextBuilder" = type { ptr, %"class.v8::base::Flags", ptr, i16, ptr, %"class.v8::internal::SmallZoneVector" }
%"struct.std::pair" = type { i32, i32 }
%"class.v8::base::Vector.463" = type { ptr, i64 }
%"class.v8::internal::ZoneVector.521" = type { ptr, ptr, ptr, ptr }
%"class.v8::base::Vector.511" = type { ptr, i64 }
%"class.icu_78::UnicodeSet" = type <{ %"class.icu_78::UnicodeFilter", ptr, i32, i32, i8, [7 x i8], ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr, [25 x i32], [4 x i8] }>
%"class.icu_78::UnicodeFilter" = type { %"class.icu_78::UnicodeFunctor", %"class.icu_78::UnicodeMatcher" }
%"class.icu_78::UnicodeFunctor" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"class.icu_78::UnicodeMatcher" = type { ptr }
%"class.icu_78::UnicodeSetIterator" = type { %"class.icu_78::UObject", i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }

$_ZN2v88internal12RegExpParser18VerifyRegExpSyntaxIhEEbPNS0_4ZoneEmPKT_iNS_4base5FlagsINS0_10RegExpFlagEiiEEPNS0_17RegExpCompileDataERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE = comdat any

$_ZN2v88internal12RegExpParser18VerifyRegExpSyntaxItEEbPNS0_4ZoneEmPKT_iNS_4base5FlagsINS0_10RegExpFlagEiiEEPNS0_17RegExpCompileDataERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE = comdat any

$_ZN2v88internal12StdoutStreamD1Ev = comdat any

$_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_ = comdat any

$_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJNS_4base6VectorIS5_EEPS1_EEEPT_DpOT0_ = comdat any

$_ZN2v88internal14CharacterRange4ListEPNS0_4ZoneES1_ = comdat any

$_ZN2v88internal17RegExpClassRangesC2EPNS0_4ZoneEPNS0_8ZoneListINS0_14CharacterRangeEEENS_4base5FlagsINS1_4FlagEiiEE = comdat any

$_ZN2v84base11SmallVectorIPNS_8internal10RegExpTreeELm8ENS2_13ZoneAllocatorIS4_EEE4GrowEv = comdat any

$_ZN2v84base11SmallVectorIPNS_8internal10RegExpTreeELm8ENS2_13ZoneAllocatorIS4_EEE4GrowEm = comdat any

$_ZN2v84base11SmallVectorIPNS_8internal10RegExpTreeELm8ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv = comdat any

$_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE6AddAllENS_4base6VectorIKS3_EEPNS0_4ZoneE = comdat any

$_ZSt27__throw_bad_optional_accessv = comdat any

$_ZN2v88internal10ZoneVectorItE4GrowEm = comdat any

$_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE17_M_emplace_uniqueIJNS2_IjEERS9_EEES5_ISt17_Rb_tree_iteratorISA_EbEDpOT_ = comdat any

$_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE24_M_get_insert_unique_posERS6_ = comdat any

$_ZN2v88internal8ZoneListItE6ResizeEiPNS0_4ZoneE = comdat any

$_ZN2v88internal8ZoneListINS0_14CharacterRangeEE6AddAllENS_4base6VectorIKS2_EEPNS0_4ZoneE = comdat any

$_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_ = comdat any

$_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE = comdat any

$_ZN2v88internal4Zone3NewINS0_24RegExpClassSetExpressionEJNS3_13OperationTypeERbRKbRPNS0_8ZoneListIPNS0_10RegExpTreeEEEEEEPT_DpOT0_ = comdat any

$_ZN2v88internal4Zone3NewINS0_24RegExpClassSetExpressionEJNS3_13OperationTypeERbS5_RPNS0_8ZoneListIPNS0_10RegExpTreeEEEEEEPT_DpOT0_ = comdat any

$_ZN2v88internal19RegExpBackReferenceC2EPNS0_13RegExpCaptureEPNS0_4ZoneE = comdat any

$_ZN2v88internal10ZoneVectorIcE4GrowEm = comdat any

$_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE17_M_emplace_uniqueIJNS2_IjEES9_EEES5_ISt17_Rb_tree_iteratorISA_EbEDpOT_ = comdat any

$_ZN2v88internal8OFStreamD1Ev = comdat any

$_ZN2v88internal8OFStreamD0Ev = comdat any

$_ZTv0_n24_N2v88internal8OFStreamD1Ev = comdat any

$_ZTv0_n24_N2v88internal8OFStreamD0Ev = comdat any

$_ZN2v88internal12StdoutStreamD0Ev = comdat any

$_ZTv0_n24_N2v88internal12StdoutStreamD1Ev = comdat any

$_ZTv0_n24_N2v88internal12StdoutStreamD0Ev = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_13RegExpCaptureEE4GrowEm = comdat any

$_ZTVN2v88internal12StdoutStreamE = comdat any

$_ZTTN2v88internal12StdoutStreamE = comdat any

$_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE = comdat any

$_ZTCN2v88internal12StdoutStreamE0_So = comdat any

$_ZTVN2v88internal8OFStreamE = comdat any

@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str = private unnamed_addr constant [27 x i8] c"Aborting on stack overflow\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"!IsUnicodeMode()\00", align 1
@_ZTVN2v88internal17RegExpClassRangesE = external unnamed_addr constant { [41 x ptr] }, align 8
@.str.4 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@_ZTVN2v88internal10RegExpAtomE = external unnamed_addr constant { [41 x ptr] }, align 8
@_ZTVN2v88internal10RegExpTextE = external unnamed_addr constant { [41 x ptr] }, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"base::SmallVector::Grow\00", align 1
@_ZTVN2v88internal11RegExpEmptyE = external unnamed_addr constant { [41 x ptr] }, align 8
@.str.6 = private unnamed_addr constant [43 x i8] c"std::numeric_limits<int>::max() >= length_\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"index >= 1 && index <= known_captures\00", align 1
@_ZTVN2v88internal13RegExpCaptureE = external unnamed_addr constant { [41 x ptr] }, align 8
@_ZTVN2v88internal11RegExpGroupE = external unnamed_addr constant { [41 x ptr] }, align 8
@_ZTVN2v88internal16RegExpLookaroundE = external unnamed_addr constant { [41 x ptr] }, align 8
@_ZTVN2v88internal15RegExpAssertionE = external unnamed_addr constant { [41 x ptr] }, align 8
@_ZN2v88internalL17kOneByteCharFlagsE = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\0C\18\0C\0C\18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0C\00\00\00\03\00\00\00\10\10\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\00\00\00\00\00\00\00\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\03\00\00\03\00\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\03\00\02\00\00\03\00\00\00\00\00\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\03\03\03\03\03\03\03\03", align 16
@_ZTVN2v88internal19RegExpBackReferenceE = external unnamed_addr constant { [41 x ptr] }, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Any\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Assigned\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Unassigned\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@_ZTVN2v88internal16RegExpQuantifierE = external unnamed_addr constant { [41 x ptr] }, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@_ZTVN2v88internal12StdoutStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZN2v88internal12StdoutStreamD1Ev, ptr @_ZN2v88internal12StdoutStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal12StdoutStreamD1Ev, ptr @_ZTv0_n24_N2v88internal12StdoutStreamD0Ev] }, comdat, align 8
@_ZTTN2v88internal12StdoutStreamE = linkonce_odr hidden unnamed_addr constant [6 x ptr] [ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVN2v88internal12StdoutStreamE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_So, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_So, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVN2v88internal12StdoutStreamE, i32 0, i32 1, i32 3)], comdat, align 8
@_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZN2v88internal8OFStreamD1Ev, ptr @_ZN2v88internal8OFStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal8OFStreamD1Ev, ptr @_ZTv0_n24_N2v88internal8OFStreamD0Ev] }, comdat, align 8
@_ZTCN2v88internal12StdoutStreamE0_So = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZNSoD1Ev, ptr @_ZNSoD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_NSoD1Ev, ptr @_ZTv0_n24_NSoD0Ev] }, comdat, align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVN2v88internal8OFStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 80 to ptr), ptr null, ptr null, ptr @_ZN2v88internal8OFStreamD1Ev, ptr @_ZN2v88internal8OFStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -80 to ptr), ptr inttoptr (i64 -80 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal8OFStreamD1Ev, ptr @_ZTv0_n24_N2v88internal8OFStreamD0Ev] }, comdat, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@switch.table._ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE12ParsePatternEv.128 = private unnamed_addr constant [11 x i8] [i8 2, i8 poison, i8 poison, i8 64, i8 4, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 32], align 4

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal12RegExpParser18VerifyRegExpSyntaxIhEEbPNS0_4ZoneEmPKT_iNS_4base5FlagsINS0_10RegExpFlagEiiEEPNS0_17RegExpCompileDataERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 %4, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::(anonymous namespace)::RegExpParserImpl", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i32 %3, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 3 uses
  store i32 2097152, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 %4, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 68
  store i8 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 92 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i8 0, i64 20, i1 false)
  store i8 1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 93
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 97
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.k, i8 0, i64 5, i1 false)
  store i64 %1, ptr %i.m, align 8
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.p = icmp ult i64 %i.o, %1
  br i1 %i.p, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !15, !noundef !16
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  store i8 1, ptr %i.l, align 1
  store i32 1, ptr %i.b, align 8
  store i32 -1, ptr %i.c, align 4
  store i32 2097152, ptr %i.f, align 4
  store i32 %3, ptr %i.i, align 8
  store i8 0, ptr %i.j, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhEC2EPKhiNS_4base5FlagsINS0_10RegExpFlagEiiEEmPNS0_4ZoneERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSD_2EEEE.exit

bb.f:                                             ; preds = %bb.b
  %i.s = load i8, ptr %2, align 1
  store i32 1, ptr %i.i, align 8
  %i.t = zext i8 %i.s to i32
  store i32 %i.t, ptr %i.f, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhEC2EPKhiNS_4base5FlagsINS0_10RegExpFlagEiiEEmPNS0_4ZoneERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSD_2EEEE.exit

bb.g:                                             ; preds = %bb.a
  %i.u = add nsw i32 %3, 1
  store i32 %i.u, ptr %i.i, align 8
  store i8 0, ptr %i.j, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhEC2EPKhiNS_4base5FlagsINS0_10RegExpFlagEiiEEmPNS0_4ZoneERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSD_2EEEE.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhEC2EPKhiNS_4base5FlagsINS0_10RegExpFlagEiiEEmPNS0_4ZoneERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSD_2EEEE.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE5ParseEPNS0_17RegExpCompileDataE(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret i1 %i.v
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE5ParseEPNS0_17RegExpCompileDataE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::StdoutStream", align 8 ; 16 uses
  %i.a = tail call fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE16ParseDisjunctionEv(ptr noundef nonnull align 8 dereferenceable(112) %0) ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 5 uses
  %i.c = load i8, ptr %i.b, align 1, !range !15, !noundef !16
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE12ParsePatternEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE24PatchNamedBackReferencesEv.exit.thread25.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit.sink.split.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph34.i.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE24PatchNamedBackReferencesEv.exit.thread25.i

.lr.ph34.i.i:                                     ; preds = %.preheader.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit25.i.i, %.lr.ph34.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph34.i.i ], [ %indvars.iv.next.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit25.i.i ] ; 2 uses
  %i.o = phi ptr [ %i.f, %.lr.ph34.i.i ], [ %i.do, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit25.i.i ]
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i.i
  %i.r = load ptr, ptr %i.q, align 8              ; 4 uses
  %.val17.i.i = load ptr, ptr %i.n, align 8       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val17.i.i, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.val17.i.i, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ult i64 %i.w, 40
  br i1 %i.x, label %bb.e, label %_ZN2v88internal4Zone3NewINS0_13RegExpCaptureEJRKiEEEPT_DpOT0_.exit.i.i, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val17.i.i, i64 noundef 40) #19
  %.pre.i.i.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone3NewINS0_13RegExpCaptureEJRKiEEEPT_DpOT0_.exit.i.i

_ZN2v88internal4Zone3NewINS0_13RegExpCaptureEJRKiEEEPT_DpOT0_.exit.i.i: ; preds = %bb.e, %bb.d
  %i.y = phi i64 [ %.pre.i.i.i.i, %bb.e ], [ %i.v, %bb.d ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 3 uses
  %i.aa = add i64 %i.y, 40
  store i64 %i.aa, ptr %i.u, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 312) (i8, ptr @_ZTVN2v88internal13RegExpCaptureE, i64 16), ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  store ptr null, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ab, i8 0, i64 20, i1 false)
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  store ptr %i.ae, ptr %i.ac, align 8
  %i.af = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.ag, align 8    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3mapIPN2v88internal13RegExpCaptureEPNS1_8ZoneListIiEENS1_12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessENS1_13ZoneAllocatorISt4pairIKS3_S6_EEEE4findERSD_.exit.thread.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN2v88internal4Zone3NewINS0_13RegExpCaptureEJRKiEEEPT_DpOT0_.exit.i.i
  %i.ai = getelementptr i8, ptr %i.ae, i64 8
  %.val10.val.i.i.i.i.i = load ptr, ptr %i.ai, align 8 ; 6 uses
  %i.aj = getelementptr i8, ptr %i.ae, i64 16
  %.val10.val12.i.i.i.i.i = load ptr, ptr %i.aj, align 8 ; 3 uses
  %i.ak = ptrtoint ptr %.val10.val12.i.i.i.i.i to i64
  %i.al = ptrtoint ptr %.val10.val.i.i.i.i.i to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.thread3.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %.val.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.thread3.i.i.i.i.i ] ; 4 uses
  %.087.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.19.i.i.i.i.i, %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.thread3.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 32
  %.val.i.i.i.i.i = load ptr, ptr %i.ap, align 8  ; 2 uses
  %i.aq = getelementptr i8, ptr %.val.i.i.i.i.i, i64 8
  %.val.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8 ; 4 uses
  %i.ar = getelementptr i8, ptr %.val.i.i.i.i.i, i64 16
  %.val.val11.i.i.i.i.i = load ptr, ptr %i.ar, align 8 ; 2 uses
  %i.as = ptrtoint ptr %.val.val11.i.i.i.i.i to i64
  %i.at = ptrtoint ptr %.val.val.i.i.i.i.i to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp slt i64 %i.am, %i.au
  %i.aw = getelementptr inbounds i8, ptr %.val.val.i.i.i.i.i, i64 %i.am
  %i.ax = select i1 %i.av, ptr %i.aw, ptr %.val.val11.i.i.i.i.i ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.val.i.i.i.i.i, %i.ax
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.f, %bb.h
  %.01924.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.h ], [ %.val10.val.i.i.i.i.i, %bb.f ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bc, %bb.h ], [ %.val.val.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.ay = load i16, ptr %.02023.i.i.i.i.i.i.i.i.i.i.i.i, align 2 ; 2 uses
  %i.az = load i16, ptr %.01924.i.i.i.i.i.i.i.i.i.i.i.i, align 2 ; 2 uses
  %i.ba = icmp ult i16 %i.ay, %i.az
  br i1 %i.ba, label %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.thread.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bb = icmp ult i16 %i.az, %i.ay
  br i1 %i.bb, label %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.thread3.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.ax
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE16ParseDisjunctionEv:bb.a
  %i.yw = sub i64 %i.yu, %i.yv
  %i.yx = icmp ult i64 %i.yw, 16
  br i1 %i.yx, label %bb.ec, label %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit, !prof !17

bb.ec:                                            ; preds = %bb.eb
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val150, i64 noundef 16) #19
  %.pre.i.i.i.i = load i64, ptr %i.yl, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit: ; preds = %bb.eb, %bb.ec
  %i.yy = phi i64 [ %.pre.i.i.i.i, %bb.ec ], [ %i.yv, %bb.eb ] ; 2 uses
  %i.yz = inttoptr i64 %i.yy to ptr
  %i.za = add i64 %i.yy, 16
  store i64 %i.za, ptr %i.yl, align 8
  store ptr %i.yz, ptr %i.yq, align 8
  %.0100.val168 = load i32, ptr %i.bf, align 4
  %i.zb = and i32 %.0100.val168, 32
  %.not616 = icmp eq i32 %i.zb, 0
  %.val147 = load ptr, ptr %i.f, align 8
  %. = select i1 %.not616, i8 46, i8 42
  call void @_ZN2v88internal14CharacterRange14AddClassEscapeENS0_20StandardCharacterSetEPNS0_8ZoneListIS1_EEbPNS0_4ZoneE(i8 noundef signext %., ptr noundef nonnull %i.yq, i1 noundef zeroext false, ptr noundef %.val147) #19
  %.val146 = load ptr, ptr %i.f, align 8          ; 4 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.val146, i64 24
  %i.zd = load i64, ptr %i.zc, align 8
  %i.ze = getelementptr inbounds nuw i8, ptr %.val146, i64 16 ; 3 uses
  %i.zf = load i64, ptr %i.ze, align 8            ; 2 uses
  %i.zg = sub i64 %i.zd, %i.zf
  %i.zh = icmp ult i64 %i.zg, 32
  br i1 %i.zh, label %bb.ed, label %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEEEEEPT_DpOT0_.exit, !prof !17

bb.ed:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val146, i64 noundef 32) #19
  %.pre.i.i257 = load i64, ptr %i.ze, align 8
  br label %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEEEEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit, %bb.ed
  %i.zi = phi i64 [ %.pre.i.i257, %bb.ed ], [ %i.zf, %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit ] ; 2 uses
  %i.zj = inttoptr i64 %i.zi to ptr               ; 2 uses
  %i.zk = add i64 %i.zi, 32
  store i64 %i.zk, ptr %i.ze, align 8
  call void @_ZN2v88internal17RegExpClassRangesC2EPNS0_4ZoneEPNS0_8ZoneListINS0_14CharacterRangeEEENS_4base5FlagsINS1_4FlagEiiEE(ptr noundef nonnull align 8 dereferenceable(32) %i.zj, ptr noundef nonnull %.val146, ptr noundef nonnull %i.yq, i32 0)
  call fastcc void @_ZN2v88internal12_GLOBAL__N_113RegExpBuilder14AddClassRangesEPNS0_17RegExpClassRangesE(ptr noundef nonnull align 8 dereferenceable(344) %.0100.ph, ptr noundef nonnull %i.zj)
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit468thread-pre-split

bb.ee:                                            ; preds = %.backedge
  %i.zl = getelementptr i8, ptr %.097.ph, i64 356
  %.val34.i = load i32, ptr %i.zl, align 4        ; 9 uses
  %i.zm = getelementptr i8, ptr %.097.ph, i64 20
  %.val33.i = load i32, ptr %i.zm, align 4        ; 9 uses
  %.val1.i.i = load i32, ptr %i.aj, align 8       ; 2 uses
  %.val2.i.i258 = load i32, ptr %i.ak, align 8
  %i.zn = icmp slt i32 %.val2.i.i258, %.val1.i.i
  br i1 %i.zn, label %bb.ef, label %bb.el

bb.ef:                                            ; preds = %bb.ee
  %i.zo = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.zp = load i64, ptr %i.an, align 8
  %i.zq = icmp ult i64 %i.zo, %i.zp
  br i1 %i.zq, label %bb.eg, label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  %i.zr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !15, !noundef !16
  %i.zs = trunc nuw i8 %i.zr to i1
  br i1 %i.zs, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.ei:                                            ; preds = %bb.eg
  %i.zt = load i8, ptr %i.ao, align 1, !range !15, !noundef !16
  %i.zu = trunc nuw i8 %i.zt to i1
  br i1 %i.zu, label %._ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit_crit_edge.i, label %bb.ej

._ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit_crit_edge.i: ; preds = %bb.ei
  %.val.pre.i = load i32, ptr %i.ai, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit.i

bb.ej:                                            ; preds = %bb.ei
  store i8 1, ptr %i.ao, align 1
  store i32 1, ptr %i.ap, align 8
  %.val2.i.i.i = load i32, ptr %i.ai, align 4     ; 2 uses
  %.val3.i.i.i = load i32, ptr %i.ak, align 8
  %.not.i.i.i.i269 = icmp eq i32 %.val2.i.i.i, 2097152
  %i.zv = icmp ult i32 %.val2.i.i.i, 65536
  %i.zw = or i1 %.not.i.i.i.i269, %i.zv
  %.neg2.i.i.i.i = select i1 %i.zw, i32 -1, i32 -2
  %i.zx = add i32 %.neg2.i.i.i.i, %.val3.i.i.i
  store i32 %i.zx, ptr %i.aq, align 4
  store i32 2097152, ptr %i.ai, align 4
  %.val.i.i.i270 = load i32, ptr %i.aj, align 8
  br label %.thread221.thread.i

bb.ek:                                            ; preds = %bb.ef
  %i.zy = load i32, ptr %i.ak, align 8            ; 2 uses
  %.val.i3.i.i = load ptr, ptr %i.al, align 8
  %i.zz = sext i32 %i.zy to i64
  %i.aaa = getelementptr inbounds i8, ptr %.val.i3.i.i, i64 %i.zz
  %i.aab = load i8, ptr %i.aaa, align 1
  %i.aac = add nsw i32 %i.zy, 1
  store i32 %i.aac, ptr %i.ak, align 8
  %i.aad = zext i8 %i.aab to i32                  ; 2 uses
  store i32 %i.aad, ptr %i.ai, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit.i

bb.el:                                            ; preds = %bb.ee
  store i32 2097152, ptr %i.ai, align 4
  %i.aae = add nsw i32 %.val1.i.i, 1
  br label %.thread221.thread.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit.i: ; preds = %bb.ek, %._ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit_crit_edge.i
  %.val.i261 = phi i32 [ %.val.pre.i, %._ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit_crit_edge.i ], [ %i.aad, %bb.ek ]
  %i.aaf = icmp eq i32 %.val.i261, 63
  br i1 %i.aaf, label %.preheader.i, label %.thread221.i.thread

.preheader.i:                                     ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit.i
  %.val.i302.i = load i32, ptr %i.aj, align 8     ; 8 uses
  %.val1.i40303.i = load i32, ptr %i.ak, align 8  ; 9 uses
  %i.aag = icmp slt i32 %.val1.i40303.i, %.val.i302.i
  br i1 %i.aag, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.thread.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i: ; preds = %.preheader.i
  %.val2.i41.peel.i = load ptr, ptr %i.al, align 8
  %i.aah = sext i32 %.val1.i40303.i to i64
  %i.aai = getelementptr inbounds i8, ptr %.val2.i41.peel.i, i64 %i.aah
  %i.aaj = load i8, ptr %i.aai, align 1           ; 2 uses
  switch i8 %i.aaj, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.thread.i [
    i8 45, label %bb.es
    i8 109, label %bb.em
    i8 105, label %bb.em
    i8 115, label %bb.em
    i8 58, label %.loopexit.i
    i8 61, label %.loopexit383.i.a
    i8 33, label %.loopexit384.i
    i8 60, label %.loopexit385.i
  ]

bb.em:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i
  %i.aak = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 19), align 1, !range !15, !noundef !16
  %i.aal = trunc nuw i8 %i.aak to i1
  br i1 %i.aal, label %bb.en, label %.loopexit386.i.a

bb.en:                                            ; preds = %bb.em
  %i.aam = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.aan = load i64, ptr %i.an, align 8
  %i.aao = icmp ult i64 %i.aam, %i.aan
  br i1 %i.aao, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.aap = load i32, ptr %i.ak, align 8           ; 2 uses
  %.val.i3.i67.peel.i = load ptr, ptr %i.al, align 8
  %i.aaq = sext i32 %i.aap to i64
  %i.aar = getelementptr inbounds i8, ptr %.val.i3.i67.peel.i, i64 %i.aaq
  %i.aas = load i8, ptr %i.aar, align 1
  %i.aat = add nsw i32 %i.aap, 1
  store i32 %i.aat, ptr %i.ak, align 8
  %i.aau = zext i8 %i.aas to i32
  store i32 %i.aau, ptr %i.ai, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit73.peel.i

bb.ep:                                            ; preds = %bb.en
  %i.aav = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !15, !noundef !16
  %i.aaw = trunc nuw i8 %i.aav to i1
  br i1 %i.aaw, label %.loopexit387.i.a, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.aax = load i8, ptr %i.ao, align 1, !range !15, !noundef !16
  %i.aay = trunc nuw i8 %i.aax to i1
  br i1 %i.aay, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit73.peel.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  store i8 1, ptr %i.ao, align 1
  store i32 1, ptr %i.ap, align 8
  %.val2.i.i68.peel.i = load i32, ptr %i.ai, align 4 ; 2 uses
  %.val3.i.i69.peel.i = load i32, ptr %i.ak, align 8
  %.not.i.i.i70.peel.i = icmp eq i32 %.val2.i.i68.peel.i, 2097152
  %i.aaz = icmp ult i32 %.val2.i.i68.peel.i, 65536
  %i.aba = or i1 %.not.i.i.i70.peel.i, %i.aaz
  %.neg2.i.i.i71.peel.i = select i1 %i.aba, i32 -1, i32 -2
  %i.abb = add i32 %.neg2.i.i.i71.peel.i, %.val3.i.i69.peel.i
  store i32 %i.abb, ptr %i.aq, align 4
  store i32 2097152, ptr %i.ai, align 4
  %.val.i.i72.peel.i = load i32, ptr %i.aj, align 8
  store i32 %.val.i.i72.peel.i, ptr %i.ak, align 8
  store i8 0, ptr %i.am, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit73.peel.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit73.peel.i: ; preds = %bb.er, %bb.eq, %bb.eo
  %switch.tableidx = add i8 %i.aaj, -105          ; 3 uses
  %i.abc = icmp ult i8 %switch.tableidx, 11
  br i1 %i.abc, label %switch.hole_check, label %.loopexit388.i

switch.hole_check:                                ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit73.peel.i
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 1049, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.loopexit388.i

switch.lookup:                                    ; preds = %switch.hole_check
  %i.abd = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE12ParsePatternEv.128, i64 %i.abd
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  %i.abe = or i32 %.val33.i, %switch.ext
  %.val1.i40.peel.i.pre = load i32, ptr %i.ak, align 8
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.peel.i

bb.es:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i
  %i.abf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 19), align 1, !range !15, !noundef !16
  %i.abg = trunc nuw i8 %i.abf to i1
  br i1 %i.abg, label %bb.et, label %.loopexit390.i.a

bb.et:                                            ; preds = %bb.es
  %i.abh = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.abi = load i64, ptr %i.an, align 8
  %i.abj = icmp ult i64 %i.abh, %i.abi
  br i1 %i.abj, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.abk = load i32, ptr %i.ak, align 8           ; 2 uses
  %.val.i3.i46.peel.i = load ptr, ptr %i.al, align 8
  %i.abl = sext i32 %i.abk to i64
  %i.abm = getelementptr inbounds i8, ptr %.val.i3.i46.peel.i, i64 %i.abl
  %i.abn = load i8, ptr %i.abm, align 1
  %i.abo = add nsw i32 %i.abk, 1                  ; 2 uses
  store i32 %i.abo, ptr %i.ak, align 8
  %i.abp = zext i8 %i.abn to i32
  store i32 %i.abp, ptr %i.ai, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.peel.i

bb.ev:                                            ; preds = %bb.et
  %i.abq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !15, !noundef !16
  %i.abr = trunc nuw i8 %i.abq to i1
  br i1 %i.abr, label %.loopexit391.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.abs = load i8, ptr %i.ao, align 1, !range !15, !noundef !16
  %i.abt = trunc nuw i8 %i.abs to i1
  %.val1.i40.peel.i.pre1105 = load i32, ptr %i.ak, align 8 ; 2 uses
  br i1 %i.abt, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.peel.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  store i8 1, ptr %i.ao, align 1
  store i32 1, ptr %i.ap, align 8
  %.val2.i.i47.peel.i = load i32, ptr %i.ai, align 4 ; 2 uses
  %.not.i.i.i49.peel.i = icmp eq i32 %.val2.i.i47.peel.i, 2097152
  %i.abu = icmp ult i32 %.val2.i.i47.peel.i, 65536
  %i.abv = or i1 %.not.i.i.i49.peel.i, %i.abu
  %.neg2.i.i.i50.peel.i = select i1 %i.abv, i32 -1, i32 -2
  %i.abw = add i32 %.neg2.i.i.i50.peel.i, %.val1.i40.peel.i.pre1105
  store i32 %i.abw, ptr %i.aq, align 4
  store i32 2097152, ptr %i.ai, align 4
  %.val.i.i51.peel.i = load i32, ptr %i.aj, align 8 ; 2 uses
  store i32 %.val.i.i51.peel.i, ptr %i.ak, align 8
  store i8 0, ptr %i.am, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.peel.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.peel.i: ; preds = %bb.ex, %bb.ew, %bb.eu, %switch.lookup
  %.val1.i40.peel.i = phi i32 [ %.val1.i40.peel.i.pre, %switch.lookup ], [ %.val.i.i51.peel.i, %bb.ex ], [ %.val1.i40.peel.i.pre1105, %bb.ew ], [ %i.abo, %bb.eu ] ; 3 uses
  %.sroa.0182.2.peel.i = phi i32 [ %i.abe, %switch.lookup ], [ %.val33.i, %bb.ex ], [ %.val33.i, %bb.ew ], [ %.val33.i, %bb.eu ]
  %.sroa.0179.2.peel.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.ex ], [ 0, %bb.ew ], [ 0, %bb.eu ]
  %.2.peel.i = phi i8 [ 1, %switch.lookup ], [ 0, %bb.ex ], [ 0, %bb.ew ], [ 0, %bb.eu ]
  %.val.i.peel.i = load i32, ptr %i.aj, align 8   ; 3 uses
  %i.abx = icmp slt i32 %.val1.i40.peel.i, %.val.i.peel.i
  br i1 %i.abx, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.thread.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i: ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.peel.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.i
  %.val1.i40309.i = phi i32 [ %.val1.i40.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.i ], [ %.val1.i40.peel.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.peel.i ] ; 7 uses
  %.val.i308.i = phi i32 [ %.val.i.i266, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.i ], [ %.val.i.peel.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.peel.i ] ; 6 uses
  %.017307.i = phi i8 [ %.2.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.i ], [ %.2.peel.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.peel.i ] ; 6 uses
  %.sroa.0179.0305.i = phi i32 [ %.sroa.0179.2.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.i ], [ %.sroa.0179.2.peel.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.peel.i ] ; 7 uses
  %.sroa.0182.0304.i = phi i32 [ %.sroa.0182.2.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.i ], [ %.sroa.0182.2.peel.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.peel.i ] ; 7 uses
  %.val2.i41.i = load ptr, ptr %i.al, align 8
  %i.aby = sext i32 %.val1.i40309.i to i64
  %i.abz = getelementptr inbounds i8, ptr %.val2.i41.i, i64 %i.aby
  %i.aca = load i8, ptr %i.abz, align 1           ; 2 uses
  switch i8 %i.aca, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.thread.i [
    i8 45, label %bb.ey
    i8 109, label %bb.fg
    i8 105, label %bb.fg
    i8 115, label %bb.fg
    i8 58, label %.loopexit.i
    i8 61, label %.loopexit383.i.a
    i8 33, label %.loopexit384.i
    i8 60, label %.loopexit385.i
  ]

bb.ey:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i
  %i.acb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 19), align 1, !range !15, !noundef !16
  %i.acc = trunc nuw i8 %i.acb to i1
  br i1 %i.acc, label %bb.fa, label %.loopexit390.i.a

.loopexit390.i.a:                                 ; preds = %bb.ey, %bb.es
  %.val1.i40309.lcssa379.i = phi i32 [ %.val1.i40303.i, %bb.es ], [ %.val1.i40309.i, %bb.ey ]
  %.val.i308.lcssa368.i = phi i32 [ %.val.i302.i, %bb.es ], [ %.val.i308.i, %bb.ey ]
  %i.acd = load i8, ptr %i.ao, align 1, !range !15, !noundef !16
  %i.ace = trunc nuw i8 %i.acd to i1
  br i1 %i.ace, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit, label %bb.ez

bb.ez:                                            ; preds = %.loopexit390.i.a
  store i8 1, ptr %i.ao, align 1
  store i32 16, ptr %i.ap, align 8
  %.val2.i42.i = load i32, ptr %i.ai, align 4     ; 2 uses
  %.not.i.i.i267 = icmp eq i32 %.val2.i42.i, 2097152
  %i.acf = icmp ult i32 %.val2.i42.i, 65536
  %i.acg = or i1 %.not.i.i.i267, %i.acf
  %.neg2.i.i.i268 = select i1 %i.acg, i32 -1, i32 -2
  %i.ach = add i32 %.neg2.i.i.i268, %.val1.i40309.lcssa379.i
  store i32 %i.ach, ptr %i.aq, align 4
  store i32 2097152, ptr %i.ai, align 4
  store i32 %.val.i308.lcssa368.i, ptr %i.ak, align 8
  store i8 0, ptr %i.am, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit

bb.fa:                                            ; preds = %bb.ey
  %i.aci = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.acj = load i64, ptr %i.an, align 8
  %i.ack = icmp ult i64 %i.aci, %i.acj
  br i1 %i.ack, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  %i.acl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !15, !noundef !16
  %i.acm = trunc nuw i8 %i.acl to i1
  br i1 %i.acm, label %.loopexit391.i, label %bb.fc

.loopexit391.i:                                   ; preds = %bb.ev, %bb.fb
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.fc:                                            ; preds = %bb.fb
  %i.acn = load i8, ptr %i.ao, align 1, !range !15, !noundef !16
  %i.aco = trunc nuw i8 %i.acn to i1
  br i1 %i.aco, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit52.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  store i8 1, ptr %i.ao, align 1
  store i32 1, ptr %i.ap, align 8
  %.val2.i.i47.i = load i32, ptr %i.ai, align 4   ; 2 uses
  %.val3.i.i48.i = load i32, ptr %i.ak, align 8
  %.not.i.i.i49.i = icmp eq i32 %.val2.i.i47.i, 2097152
  %i.acp = icmp ult i32 %.val2.i.i47.i, 65536
  %i.acq = or i1 %.not.i.i.i49.i, %i.acp
  %.neg2.i.i.i50.i = select i1 %i.acq, i32 -1, i32 -2
  %i.acr = add i32 %.neg2.i.i.i50.i, %.val3.i.i48.i
  store i32 %i.acr, ptr %i.aq, align 4
  store i32 2097152, ptr %i.ai, align 4
  %.val.i.i51.i = load i32, ptr %i.aj, align 8
  store i32 %.val.i.i51.i, ptr %i.ak, align 8
  store i8 0, ptr %i.am, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit52.i

bb.fe:                                            ; preds = %bb.fa
  %i.acs = load i32, ptr %i.ak, align 8           ; 2 uses
  %.val.i3.i46.i = load ptr, ptr %i.al, align 8
  %i.act = sext i32 %i.acs to i64
  %i.acu = getelementptr inbounds i8, ptr %.val.i3.i46.i, i64 %i.act
  %i.acv = load i8, ptr %i.acu, align 1
  %i.acw = add nsw i32 %i.acs, 1
  store i32 %i.acw, ptr %i.ak, align 8
  %i.acx = zext i8 %i.acv to i32
  store i32 %i.acx, ptr %i.ai, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit52.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit52.i: ; preds = %bb.fe, %bb.fd, %bb.fc
  %i.acy = icmp eq i8 %.017307.i, 0
  br i1 %i.acy, label %.loopexit392.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.i

.loopexit392.i:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit52.i
  %i.acz = load i8, ptr %i.ao, align 1, !range !15, !noundef !16
  %i.ada = trunc nuw i8 %i.acz to i1
  br i1 %i.ada, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit, label %bb.ff

bb.ff:                                            ; preds = %.loopexit392.i
  store i8 1, ptr %i.ao, align 1
  store i32 17, ptr %i.ap, align 8
  %.val2.i53.i = load i32, ptr %i.ai, align 4     ; 2 uses
  %.val3.i54.i = load i32, ptr %i.ak, align 8
  %.not.i.i55.i = icmp eq i32 %.val2.i53.i, 2097152
  %i.adb = icmp ult i32 %.val2.i53.i, 65536
  %i.adc = or i1 %.not.i.i55.i, %i.adb
  %.neg2.i.i56.i = select i1 %i.adc, i32 -1, i32 -2
  %i.add = add i32 %.neg2.i.i56.i, %.val3.i54.i
  store i32 %i.add, ptr %i.aq, align 4
  store i32 2097152, ptr %i.ai, align 4
  %.val.i57.i = load i32, ptr %i.aj, align 8
  store i32 %.val.i57.i, ptr %i.ak, align 8
  store i8 0, ptr %i.am, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit

bb.fg:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i
  %i.ade = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 19), align 1, !range !15, !noundef !16
  %i.adf = trunc nuw i8 %i.ade to i1
  br i1 %i.adf, label %bb.fi, label %.loopexit386.i.a

.loopexit386.i.a:                                 ; preds = %bb.fg, %bb.em
  %.val1.i40309.lcssa375.i = phi i32 [ %.val1.i40303.i, %bb.em ], [ %.val1.i40309.i, %bb.fg ]
  %.val.i308.lcssa364.i = phi i32 [ %.val.i302.i, %bb.em ], [ %.val.i308.i, %bb.fg ]
  %i.adg = load i8, ptr %i.ao, align 1, !range !15, !noundef !16
  %i.adh = trunc nuw i8 %i.adg to i1
  br i1 %i.adh, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit, label %bb.fh

bb.fh:                                            ; preds = %.loopexit386.i.a
  store i8 1, ptr %i.ao, align 1
  store i32 16, ptr %i.ap, align 8
  %.val2.i59.i = load i32, ptr %i.ai, align 4     ; 2 uses
  %.not.i.i61.i = icmp eq i32 %.val2.i59.i, 2097152
  %i.adi = icmp ult i32 %.val2.i59.i, 65536
  %i.adj = or i1 %.not.i.i61.i, %i.adi
  %.neg2.i.i62.i = select i1 %i.adj, i32 -1, i32 -2
  %i.adk = add i32 %.neg2.i.i62.i, %.val1.i40309.lcssa375.i
  store i32 %i.adk, ptr %i.aq, align 4
  store i32 2097152, ptr %i.ai, align 4
  store i32 %.val.i308.lcssa364.i, ptr %i.ak, align 8
  store i8 0, ptr %i.am, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit

bb.fi:                                            ; preds = %bb.fg
  %i.adl = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.adm = load i64, ptr %i.an, align 8
  %i.adn = icmp ult i64 %i.adl, %i.adm
  br i1 %i.adn, label %bb.fj, label %bb.fm

bb.fj:                                            ; preds = %bb.fi
  %i.ado = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !15, !noundef !16
  %i.adp = trunc nuw i8 %i.ado to i1
  br i1 %i.adp, label %.loopexit387.i.a, label %bb.fk

.loopexit387.i.a:                                 ; preds = %bb.ep, %bb.fj
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.fk:                                            ; preds = %bb.fj
  %i.adq = load i8, ptr %i.ao, align 1, !range !15, !noundef !16
  %i.adr = trunc nuw i8 %i.adq to i1
  br i1 %i.adr, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit73.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  store i8 1, ptr %i.ao, align 1
  store i32 1, ptr %i.ap, align 8
  %.val2.i.i68.i = load i32, ptr %i.ai, align 4   ; 2 uses
  %.val3.i.i69.i = load i32, ptr %i.ak, align 8
  %.not.i.i.i70.i = icmp eq i32 %.val2.i.i68.i, 2097152
  %i.ads = icmp ult i32 %.val2.i.i68.i, 65536
  %i.adt = or i1 %.not.i.i.i70.i, %i.ads
  %.neg2.i.i.i71.i = select i1 %i.adt, i32 -1, i32 -2
  %i.adu = add i32 %.neg2.i.i.i71.i, %.val3.i.i69.i
  store i32 %i.adu, ptr %i.aq, align 4
  store i32 2097152, ptr %i.ai, align 4
  %.val.i.i72.i = load i32, ptr %i.aj, align 8
  store i32 %.val.i.i72.i, ptr %i.ak, align 8
  store i8 0, ptr %i.am, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit73.i

bb.fm:                                            ; preds = %bb.fi
  %i.adv = load i32, ptr %i.ak, align 8           ; 2 uses
  %.val.i3.i67.i = load ptr, ptr %i.al, align 8
  %i.adw = sext i32 %i.adv to i64
  %i.adx = getelementptr inbounds i8, ptr %.val.i3.i67.i, i64 %i.adw
  %i.ady = load i8, ptr %i.adx, align 1
  %i.adz = add nsw i32 %i.adv, 1
  store i32 %i.adz, ptr %i.ak, align 8
  %i.aea = zext i8 %i.ady to i32
  store i32 %i.aea, ptr %i.ai, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit73.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit73.i: ; preds = %bb.fm, %bb.fl, %bb.fk
  %switch.tableidx1659 = add i8 %i.aca, -105      ; 3 uses
  %i.aeb = icmp ult i8 %switch.tableidx1659, 11
  br i1 %i.aeb, label %switch.hole_check1661, label %.loopexit388.i

.loopexit388.i:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit73.peel.i, %switch.hole_check, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit73.i, %switch.hole_check1661
  call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

switch.hole_check1661:                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit73.i
  %switch.maskindex1663 = zext nneg i8 %switch.tableidx1659 to i16
  %switch.shifted1664 = lshr i16 1049, %switch.maskindex1663
  %switch.lobit1665 = trunc i16 %switch.shifted1664 to i1
  br i1 %switch.lobit1665, label %switch.lookup1662, label %.loopexit388.i

switch.lookup1662:                                ; preds = %switch.hole_check1661
  %i.aec = zext nneg i8 %switch.tableidx1659 to i64
  %switch.gep1666 = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE12ParsePatternEv.128, i64 %i.aec
  %switch.load1667 = load i8, ptr %switch.gep1666, align 1
  %switch.ext1668 = zext i8 %switch.load1667 to i32 ; 4 uses
  %i.aed = and i32 %.sroa.0179.0305.i, %switch.ext1668
  %.not.i265 = icmp eq i32 %i.aed, 0
  br i1 %.not.i265, label %bb.fo, label %.loopexit389.i

.loopexit389.i:                                   ; preds = %switch.lookup1662
  %i.aee = load i8, ptr %i.ao, align 1, !range !15, !noundef !16
  %i.aef = trunc nuw i8 %i.aee to i1
  br i1 %i.aef, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit, label %bb.fn

bb.fn:                                            ; preds = %.loopexit389.i
  store i8 1, ptr %i.ao, align 1
  store i32 19, ptr %i.ap, align 8
  %.val2.i74.i = load i32, ptr %i.ai, align 4     ; 2 uses
  %.val3.i75.i = load i32, ptr %i.ak, align 8
  %.not.i.i76.i = icmp eq i32 %.val2.i74.i, 2097152
  %i.aeg = icmp ult i32 %.val2.i74.i, 65536
  %i.aeh = or i1 %.not.i.i76.i, %i.aeg
  %.neg2.i.i77.i = select i1 %i.aeh, i32 -1, i32 -2
  %i.aei = add i32 %.neg2.i.i77.i, %.val3.i75.i
  store i32 %i.aei, ptr %i.aq, align 4
  store i32 2097152, ptr %i.ai, align 4
  %.val.i78.i = load i32, ptr %i.aj, align 8
  store i32 %.val.i78.i, ptr %i.ak, align 8
  store i8 0, ptr %i.am, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit

bb.fo:                                            ; preds = %switch.lookup1662
  %i.aej = or i32 %.sroa.0179.0305.i, %switch.ext1668 ; 2 uses
  %i.aek = trunc nuw i8 %.017307.i to i1
  br i1 %i.aek, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.ael = or i32 %.sroa.0182.0304.i, %switch.ext1668
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.i

bb.fq:                                            ; preds = %bb.fo
  %i.aem = xor i32 %switch.ext1668, -1
  %i.aen = and i32 %.sroa.0182.0304.i, %i.aem
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit.i

.loopexit.i:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i
  %.val1.i40309.lcssa371.i = phi i32 [ %.val1.i40303.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i ], [ %.val1.i40309.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i ]
  %.val.i308.lcssa360.i = phi i32 [ %.val.i302.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i ], [ %.val.i308.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i ] ; 2 uses
  %.017307.lcssa348.i = phi i8 [ 1, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i ], [ %.017307.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i ] ; 4 uses
  %.sroa.0179.0305.lcssa325.i = phi i32 [ 0, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i ], [ %.sroa.0179.0305.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i ] ; 4 uses
  %.sroa.0182.0304.lcssa313.i = phi i32 [ %.val33.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i ], [ %.sroa.0182.0304.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i ] ; 4 uses
  %i.aeo = add nsw i32 %.val1.i40309.lcssa371.i, 1 ; 2 uses
  store i32 %i.aeo, ptr %i.ak, align 8
  %i.aep = icmp slt i32 %i.aeo, %.val.i308.lcssa360.i
  br i1 %i.aep, label %bb.fr, label %bb.fx

bb.fr:                                            ; preds = %.loopexit.i
  %i.aeq = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.aer = load i64, ptr %i.an, align 8
  %i.aes = icmp ult i64 %i.aeq, %i.aer
  br i1 %i.aes, label %bb.fs, label %bb.fw

bb.fs:                                            ; preds = %bb.fr
  %i.aet = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !15, !noundef !16
  %i.aeu = trunc nuw i8 %i.aet to i1
  br i1 %i.aeu, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.fu:                                            ; preds = %bb.fs
  %i.aev = load i8, ptr %i.ao, align 1, !range !15, !noundef !16
  %i.aew = trunc nuw i8 %i.aev to i1
  br i1 %i.aew, label %bb.hw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  store i8 1, ptr %i.ao, align 1
  store i32 1, ptr %i.ap, align 8
  %.val2.i.i.i.i = load i32, ptr %i.ai, align 4   ; 2 uses
  %.val3.i.i.i.i = load i32, ptr %i.ak, align 8
  %.not.i.i.i.i.i263 = icmp eq i32 %.val2.i.i.i.i, 2097152
  %i.aex = icmp ult i32 %.val2.i.i.i.i, 65536
  %i.aey = or i1 %.not.i.i.i.i.i263, %i.aex
  %.neg2.i.i.i.i.i = select i1 %i.aey, i32 -1, i32 -2
  %i.aez = add i32 %.neg2.i.i.i.i.i, %.val3.i.i.i.i
  store i32 %i.aez, ptr %i.aq, align 4
  store i32 2097152, ptr %i.ai, align 4
  %.val.i.i.i.i264 = load i32, ptr %i.aj, align 8
  store i32 %.val.i.i.i.i264, ptr %i.ak, align 8
  store i8 0, ptr %i.am, align 4
  br label %bb.hw

bb.fw:                                            ; preds = %bb.fr
  %i.afa = load i32, ptr %i.ak, align 8           ; 2 uses
  %.val.i3.i.i.i = load ptr, ptr %i.al, align 8
  %i.afb = sext i32 %i.afa to i64
  %i.afc = getelementptr inbounds i8, ptr %.val.i3.i.i.i, i64 %i.afb
  %i.afd = load i8, ptr %i.afc, align 1
  %i.afe = add nsw i32 %i.afa, 1
  store i32 %i.afe, ptr %i.ak, align 8
  %i.aff = zext i8 %i.afd to i32
  store i32 %i.aff, ptr %i.ai, align 4
  br label %bb.hw

bb.fx:                                            ; preds = %.loopexit.i
  store i32 2097152, ptr %i.ai, align 4
  %i.afg = add nsw i32 %.val.i308.lcssa360.i, 1
  store i32 %i.afg, ptr %i.ak, align 8
  store i8 0, ptr %i.am, align 4
  br label %bb.hw

.loopexit383.i.a:                                 ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i
  %.val1.i40309.lcssa372.i = phi i32 [ %.val1.i40303.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i ], [ %.val1.i40309.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i ]
  %.val.i308.lcssa361.i = phi i32 [ %.val.i302.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i ], [ %.val.i308.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i ] ; 2 uses
  %.017307.lcssa349.i = phi i8 [ 1, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i ], [ %.017307.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i ]
  %.019306.lcssa338.i = phi i1 [ false, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i ], [ true, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i ]
  %.sroa.0179.0305.lcssa326.i = phi i32 [ 0, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i ], [ %.sroa.0179.0305.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i ]
  %.sroa.0182.0304.lcssa314.i = phi i32 [ %.val33.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.lr.ph.i ], [ %.sroa.0182.0304.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.i ]
  %i.afh = add nsw i32 %.val1.i40309.lcssa372.i, 1 ; 2 uses
  store i32 %i.afh, ptr %i.ak, align 8
  %i.afi = icmp slt i32 %i.afh, %.val.i308.lcssa361.i
  br i1 %i.afi, label %bb.fy, label %bb.ge

bb.fy:                                            ; preds = %.loopexit383.i.a
  %i.afj = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.afk = load i64, ptr %i.an, align 8
  %i.afl = icmp ult i64 %i.afj, %i.afk
  br i1 %i.afl, label %bb.fz, label %bb.gd

bb.fz:                                            ; preds = %bb.fy
  %i.afm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !15, !noundef !16
  %i.afn = trunc nuw i8 %i.afm to i1
  br i1 %i.afn, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.gb:                                            ; preds = %bb.fz
  %i.afo = load i8, ptr %i.ao, align 1, !range !15, !noundef !16
  %i.afp = trunc nuw i8 %i.afo to i1
  br i1 %i.afp, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit87.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  store i8 1, ptr %i.ao, align 1
  store i32 1, ptr %i.ap, align 8
  %.val2.i.i.i82.i = load i32, ptr %i.ai, align 4 ; 2 uses
  %.val3.i.i.i83.i = load i32, ptr %i.ak, align 8
  %.not.i.i.i.i84.i = icmp eq i32 %.val2.i.i.i82.i, 2097152
  %i.afq = icmp ult i32 %.val2.i.i.i82.i, 65536
  %i.afr = or i1 %.not.i.i.i.i84.i, %i.afq
  %.neg2.i.i.i.i85.i = select i1 %i.afr, i32 -1, i32 -2
  %i.afs = add i32 %.neg2.i.i.i.i85.i, %.val3.i.i.i83.i
  store i32 %i.afs, ptr %i.aq, align 4
  store i32 2097152, ptr %i.ai, align 4
  %.val.i.i.i86.i = load i32, ptr %i.aj, align 8
  store i32 %.val.i.i.i86.i, ptr %i.ak, align 8
  store i8 0, ptr %i.am, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit87.i

bb.gd:                                            ; preds = %bb.fy
  %i.aft = load i32, ptr %i.ak, align 8           ; 2 uses
  %.val.i3.i.i81.i = load ptr, ptr %i.al, align 8
  %i.afu = sext i32 %i.aft to i64
  %i.afv = getelementptr inbounds i8, ptr %.val.i3.i.i81.i, i64 %i.afu
  %i.afw = load i8, ptr %i.afv, align 1
  %i.afx = add nsw i32 %i.aft, 1
  store i32 %i.afx, ptr %i.ak, align 8
  %i.afy = zext i8 %i.afw to i32
  store i32 %i.afy, ptr %i.ai, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit87.i

bb.ge:                                            ; preds = %.loopexit383.i.a
  store i32 2097152, ptr %i.ai, align 4
  %i.afz = add nsw i32 %.val.i308.lcssa361.i, 1
  store i32 %i.afz, ptr %i.ak, align 8
  store i8 0, ptr %i.am, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit87.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit87.i: ; preds = %bb.ge, %bb.gd, %bb.gc, %bb.gb
  br i1 %.019306.lcssa338.i, label %bb.gf, label %bb.hw

bb.gf:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit87.i
  %i.aga = load i8, ptr %i.ao, align 1, !range !15, !noundef !16
  %i.agb = trunc nuw i8 %i.aga to i1
  br i1 %i.agb, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  store i8 1, ptr %i.ao, align 1
  store i32 16, ptr %i.ap, align 8
  %.val2.i88.i = load i32, ptr %i.ai, align 4     ; 2 uses
  %.val3.i89.i = load i32, ptr %i.ak, align 8
  %.not.i.i90.i = icmp eq i32 %.val2.i88.i, 2097152
  %i.agc = icmp ult i32 %.val2.i88.i, 65536
  %i.agd = or i1 %.not.i.i90.i, %i.agc
  %.neg2.i.i91.i = select i1 %i.agd, i32 -1, i32 -2
  %i.age = add i32 %.neg2.i.i91.i, %.val3.i89.i
  store i32 %i.age, ptr %i.aq, align 4
  store i32 2097152, ptr %i.ai, align 4
  %.val.i92.i = load i32, ptr %i.aj, align 8
  store i32 %.val.i92.i, ptr %i.ak, align 8
  store i8 0, ptr %i.am, align 4
end_hunk_1
begin_hunk_2_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE12ParsePatternEv:bb.a
  %i.ul = load i64, ptr %i.uk, align 8            ; 2 uses
  %i.um = sub i64 %i.uj, %i.ul
  %i.un = icmp ult i64 %i.um, 16
  br i1 %i.un, label %bb.co, label %_ZN2v88internal4Zone3NewINS0_15RegExpAssertionEJRNS3_4TypeEEEEPT_DpOT0_.exit.i, !prof !17

bb.co:                                            ; preds = %bb.cn
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val177.i, i64 noundef 16) #19
  %.pre.i.i210.i = load i64, ptr %i.uk, align 8
  br label %_ZN2v88internal4Zone3NewINS0_15RegExpAssertionEJRNS3_4TypeEEEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_15RegExpAssertionEJRNS3_4TypeEEEEPT_DpOT0_.exit.i: ; preds = %bb.co, %bb.cn
  %i.uo = phi i64 [ %.pre.i.i210.i, %bb.co ], [ %i.ul, %bb.cn ] ; 2 uses
  %i.up = inttoptr i64 %i.uo to ptr               ; 3 uses
  %i.uq = add i64 %i.uo, 16
  store i64 %i.uq, ptr %i.uk, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 312) (i8, ptr @_ZTVN2v88internal15RegExpAssertionE, i64 16), ptr %i.up, align 8
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  store i32 %i.uh, ptr %i.ur, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_117RegExpTextBuilder9FlushTextEv(ptr noundef nonnull align 8 dereferenceable(136) %i.ba)
  store i8 0, ptr %i.bb, align 8
  %i.us = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.ut = load ptr, ptr %i.bd, align 8
  %i.uu = icmp eq ptr %i.us, %i.ut
  br i1 %i.uu, label %bb.cp, label %_ZN2v88internal12_GLOBAL__N_113RegExpBuilder12AddAssertionEPNS0_10RegExpTreeE.exit213.i, !prof !17

bb.cp:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_15RegExpAssertionEJRNS3_4TypeEEEEPT_DpOT0_.exit.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal10RegExpTreeELm8ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(96) %i.be)
  %.pre.i.i212.i = load ptr, ptr %i.bc, align 8
  br label %_ZN2v88internal12_GLOBAL__N_113RegExpBuilder12AddAssertionEPNS0_10RegExpTreeE.exit213.i

_ZN2v88internal12_GLOBAL__N_113RegExpBuilder12AddAssertionEPNS0_10RegExpTreeE.exit213.i: ; preds = %bb.cp, %_ZN2v88internal4Zone3NewINS0_15RegExpAssertionEJRNS3_4TypeEEEEPT_DpOT0_.exit.i
  %i.uv = phi ptr [ %.pre.i.i212.i, %bb.cp ], [ %i.us, %_ZN2v88internal4Zone3NewINS0_15RegExpAssertionEJRNS3_4TypeEEEEPT_DpOT0_.exit.i ] ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  store ptr %i.uw, ptr %i.bc, align 8
  store ptr %i.up, ptr %i.uv, align 8
  br label %.backedge.i.backedge

bb.cq:                                            ; preds = %.backedge.i
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %.val176.i = load ptr, ptr %i.f, align 8        ; 4 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.val176.i, i64 24 ; 2 uses
  %i.uy = load i64, ptr %i.ux, align 8
  %i.uz = getelementptr inbounds nuw i8, ptr %.val176.i, i64 16 ; 6 uses
  %i.va = load i64, ptr %i.uz, align 8            ; 2 uses
  %i.vb = sub i64 %i.uy, %i.va
  %i.vc = icmp ult i64 %i.vb, 16
  br i1 %i.vc, label %bb.cr, label %bb.cs, !prof !17

bb.cr:                                            ; preds = %bb.cq
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val176.i, i64 noundef 16) #19
  %.pre.i.i214.i = load i64, ptr %i.uz, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.vd = phi i64 [ %.pre.i.i214.i, %bb.cr ], [ %i.va, %bb.cq ] ; 2 uses
  %i.ve = inttoptr i64 %i.vd to ptr               ; 6 uses
  %i.vf = add i64 %i.vd, 16
  store i64 %i.vf, ptr %i.uz, align 8
  store ptr null, ptr %i.ve, align 8
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  store i32 2, ptr %i.vg, align 8
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 12
  store i32 0, ptr %i.vh, align 4
  %i.vi = load i64, ptr %i.ux, align 8
  %i.vj = load i64, ptr %i.uz, align 8            ; 2 uses
  %i.vk = sub i64 %i.vi, %i.vj
  %i.vl = icmp ult i64 %i.vk, 16
  br i1 %i.vl, label %bb.ct, label %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit.i, !prof !17

bb.ct:                                            ; preds = %bb.cs
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val176.i, i64 noundef 16) #19
  %.pre.i.i.i.i.i = load i64, ptr %i.uz, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit.i: ; preds = %bb.ct, %bb.cs
  %i.vm = phi i64 [ %.pre.i.i.i.i.i, %bb.ct ], [ %i.vj, %bb.cs ] ; 2 uses
  %i.vn = inttoptr i64 %i.vm to ptr
  %i.vo = add i64 %i.vm, 16
  store i64 %i.vo, ptr %i.uz, align 8
  store ptr %i.vn, ptr %i.ve, align 8
  %.0100.val131.i = load i32, ptr %i.bf, align 4
  %i.vp = and i32 %.0100.val131.i, 32
  %.not484.i = icmp eq i32 %i.vp, 0
  %.val173.i = load ptr, ptr %i.f, align 8
  %..i = select i1 %.not484.i, i8 46, i8 42
  call void @_ZN2v88internal14CharacterRange14AddClassEscapeENS0_20StandardCharacterSetEPNS0_8ZoneListIS1_EEbPNS0_4ZoneE(i8 noundef signext %..i, ptr noundef nonnull %i.ve, i1 noundef zeroext false, ptr noundef %.val173.i) #19
  %.val172.i = load ptr, ptr %i.f, align 8        ; 4 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.val172.i, i64 24
  %i.vr = load i64, ptr %i.vq, align 8
  %i.vs = getelementptr inbounds nuw i8, ptr %.val172.i, i64 16 ; 3 uses
  %i.vt = load i64, ptr %i.vs, align 8            ; 2 uses
  %i.vu = sub i64 %i.vr, %i.vt
  %i.vv = icmp ult i64 %i.vu, 32
  br i1 %i.vv, label %bb.cu, label %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEEEEEPT_DpOT0_.exit.i, !prof !17

bb.cu:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val172.i, i64 noundef 32) #19
  %.pre.i.i215.i = load i64, ptr %i.vs, align 8
  br label %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEEEEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEEEEEPT_DpOT0_.exit.i: ; preds = %bb.cu, %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit.i
  %i.vw = phi i64 [ %.pre.i.i215.i, %bb.cu ], [ %i.vt, %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit.i ] ; 2 uses
  %i.vx = inttoptr i64 %i.vw to ptr               ; 2 uses
  %i.vy = add i64 %i.vw, 32
  store i64 %i.vy, ptr %i.vs, align 8
  call void @_ZN2v88internal17RegExpClassRangesC2EPNS0_4ZoneEPNS0_8ZoneListINS0_14CharacterRangeEEENS_4base5FlagsINS1_4FlagEiiEE(ptr noundef nonnull align 8 dereferenceable(32) %i.vx, ptr noundef nonnull %.val172.i, ptr noundef nonnull %i.ve, i32 0)
  call fastcc void @_ZN2v88internal12_GLOBAL__N_113RegExpBuilder14AddClassRangesEPNS0_17RegExpClassRangesE(ptr noundef nonnull align 8 dereferenceable(344) %.0100.ph.i, ptr noundef nonnull %i.vx)
  br label %_ZN2v88internal12_GLOBAL__N_113RegExpBuilder7AddAtomEPNS0_10RegExpTreeE.exit.thread.i

bb.cv:                                            ; preds = %.backedge.i
  %i.vz = getelementptr i8, ptr %.097.ph.i, i64 356
  %.val31.i.i = load i32, ptr %i.vz, align 4      ; 4 uses
  %i.wa = getelementptr i8, ptr %.097.ph.i, i64 20
  %.val.i216.i = load i32, ptr %i.wa, align 4     ; 9 uses
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %.val37.i.i = load i32, ptr %i.ai, align 4
  %i.wb = icmp eq i32 %.val37.i.i, 63
  br i1 %i.wb, label %.preheader.i.i, label %.thread163.thread.i.i

.preheader.i.i:                                   ; preds = %bb.cv
  %.val.i253.i.i = load i32, ptr %i.aj, align 8   ; 6 uses
  %.val1.i254.i.i = load i32, ptr %i.ak, align 8  ; 7 uses
  %i.wc = icmp slt i32 %.val1.i254.i.i, %.val.i253.i.i
  br i1 %i.wc, label %.lr.ph.i220.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread.i.i

.lr.ph.i220.i:                                    ; preds = %.preheader.i.i
  %.val13.i.i.peel.i.i = load ptr, ptr %i.al, align 8 ; 2 uses
  %i.wd = sext i32 %.val1.i254.i.i to i64
  %i.we = getelementptr inbounds [2 x i8], ptr %.val13.i.i.peel.i.i, i64 %i.wd
  %i.wf = load i16, ptr %i.we, align 2
  %i.wg = zext i16 %i.wf to i32                   ; 4 uses
  %i.wh = add nsw i32 %.val1.i254.i.i, 1          ; 5 uses
  %.val14.i.i.peel.i.i = load i32, ptr %i.e, align 8
  %.val15.i.i.peel.i.i = load i8, ptr %i.am, align 4
  %i.wi = and i32 %.val14.i.i.peel.i.i, 272
  %or.cond.i.i.i.peel.i.i = icmp ne i32 %i.wi, 0
  %i.wj = trunc nuw i8 %.val15.i.i.peel.i.i to i1
  %spec.select.i.i.i.peel.i.i = select i1 %or.cond.i.i.i.peel.i.i, i1 true, i1 %i.wj
  %i.wk = icmp slt i32 %i.wh, %.val.i253.i.i
  %or.cond.i.i.peel.i.i = select i1 %spec.select.i.i.i.peel.i.i, i1 %i.wk, i1 false
  %i.wl = and i32 %i.wg, 64512
  %i.wm = icmp eq i32 %i.wl, 55296
  %or.cond18.i.i.peel.i.i = select i1 %or.cond.i.i.peel.i.i, i1 %i.wm, i1 false
  br i1 %or.cond18.i.i.peel.i.i, label %bb.cw, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.peel.i.i

bb.cw:                                            ; preds = %.lr.ph.i220.i
  %i.wn = sext i32 %i.wh to i64
  %i.wo = getelementptr inbounds [2 x i8], ptr %.val13.i.i.peel.i.i, i64 %i.wn
  %i.wp = load i16, ptr %i.wo, align 2
  %i.wq = zext i16 %i.wp to i32                   ; 2 uses
  %i.wr = and i32 %i.wq, 64512
  %i.ws = icmp eq i32 %i.wr, 56320
  br i1 %i.ws, label %bb.cx, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.peel.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.wt = shl nuw nsw i32 %i.wg, 10
  %i.wu = and i32 %i.wt, 1047552
  %i.wv = add nuw nsw i32 %i.wu, 65536
  %i.ww = and i32 %i.wq, 1023
  %i.wx = or disjoint i32 %i.ww, %i.wv
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.peel.i.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.peel.i.i: ; preds = %bb.cx, %bb.cw, %.lr.ph.i220.i
  %.0.i.peel.i.i = phi i32 [ %i.wg, %bb.cw ], [ %i.wg, %.lr.ph.i220.i ], [ %i.wx, %bb.cx ] ; 2 uses
  switch i32 %.0.i.peel.i.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread.i.i [
    i32 45, label %bb.da
    i32 109, label %bb.cy
    i32 105, label %bb.cy
    i32 115, label %bb.cy
    i32 58, label %.loopexit.i.thread.i
    i32 61, label %.loopexit322.i.i
    i32 33, label %.loopexit323.i.i
    i32 60, label %bb.dv
  ]

.loopexit.i.thread.i:                             ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.peel.i.i
  store i32 %i.wh, ptr %i.ak, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %.thread359.i.i

bb.cy:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.peel.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.peel.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.peel.i.i
  %i.wy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 19), align 1, !range !15, !noundef !16
  %i.wz = trunc nuw i8 %i.wy to i1
  br i1 %i.wz, label %bb.cz, label %.loopexit325.i.i.a

bb.cz:                                            ; preds = %bb.cy
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.xa = trunc nuw nsw i32 %.0.i.peel.i.i to i8
  %switch.tableidx = add i8 %i.xa, -105           ; 3 uses
  %i.xb = icmp ult i8 %switch.tableidx, 11
  br i1 %i.xb, label %switch.hole_check, label %.loopexit326.i.i

switch.hole_check:                                ; preds = %bb.cz
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 1049, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.loopexit326.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  %i.xc = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE12ParsePatternEv.128, i64 %i.xc
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  %i.xd = or i32 %.val.i216.i, %switch.ext
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.peel.i.i

bb.da:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.peel.i.i
  %i.xe = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 19), align 1, !range !15, !noundef !16
  %i.xf = trunc nuw i8 %i.xe to i1
  br i1 %i.xf, label %bb.db, label %.loopexit328.i.i

bb.db:                                            ; preds = %bb.da
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.peel.i.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.peel.i.i: ; preds = %bb.db, %switch.lookup
  %.sroa.0122.2.peel.i.i = phi i32 [ %.val.i216.i, %bb.db ], [ %i.xd, %switch.lookup ]
  %.sroa.0119.2.peel.i.i = phi i32 [ 0, %bb.db ], [ %switch.ext, %switch.lookup ]
  %.2.peel.i.i = phi i8 [ 0, %bb.db ], [ 1, %switch.lookup ]
  %.val.i.peel.i.i = load i32, ptr %i.aj, align 8 ; 3 uses
  %.val1.i.peel.i.i = load i32, ptr %i.ak, align 8 ; 3 uses
  %i.xg = icmp slt i32 %.val1.i.peel.i.i, %.val.i.peel.i.i
  br i1 %i.xg, label %.peel.next.i.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread.i.i

.peel.next.i.i:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.peel.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.i.i
  %.val1.i260.i.i = phi i32 [ %.val1.i.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.i.i ], [ %.val1.i.peel.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.peel.i.i ] ; 5 uses
  %.val.i259.i.i = phi i32 [ %.val.i.i223.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.i.i ], [ %.val.i.peel.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.peel.i.i ] ; 4 uses
  %.017258.i.i = phi i8 [ %.2.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.i.i ], [ %.2.peel.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.peel.i.i ] ; 3 uses
  %.sroa.0119.0256.i.i = phi i32 [ %.sroa.0119.2.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.i.i ], [ %.sroa.0119.2.peel.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.peel.i.i ] ; 4 uses
  %.sroa.0122.0255.i.i = phi i32 [ %.sroa.0122.2.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.i.i ], [ %.sroa.0122.2.peel.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.peel.i.i ] ; 4 uses
  %.val13.i.i.i.i = load ptr, ptr %i.al, align 8  ; 2 uses
  %i.xh = sext i32 %.val1.i260.i.i to i64
  %i.xi = getelementptr inbounds [2 x i8], ptr %.val13.i.i.i.i, i64 %i.xh
  %i.xj = load i16, ptr %i.xi, align 2
  %i.xk = zext i16 %i.xj to i32                   ; 4 uses
  %i.xl = add nsw i32 %.val1.i260.i.i, 1          ; 5 uses
  %.val14.i.i.i.i = load i32, ptr %i.e, align 8
  %.val15.i.i.i.i = load i8, ptr %i.am, align 4
  %i.xm = and i32 %.val14.i.i.i.i, 272
  %or.cond.i.i.i.i.i = icmp ne i32 %i.xm, 0
  %i.xn = trunc nuw i8 %.val15.i.i.i.i to i1
  %spec.select.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i1 true, i1 %i.xn
  %i.xo = icmp slt i32 %i.xl, %.val.i259.i.i
  %or.cond.i.i.i.i = select i1 %spec.select.i.i.i.i.i, i1 %i.xo, i1 false
  %i.xp = and i32 %i.xk, 64512
  %i.xq = icmp eq i32 %i.xp, 55296
  %or.cond18.i.i.i.i = select i1 %or.cond.i.i.i.i, i1 %i.xq, i1 false
  br i1 %or.cond18.i.i.i.i, label %bb.dc, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.i.i

bb.dc:                                            ; preds = %.peel.next.i.i
  %i.xr = sext i32 %i.xl to i64
  %i.xs = getelementptr inbounds [2 x i8], ptr %.val13.i.i.i.i, i64 %i.xr
  %i.xt = load i16, ptr %i.xs, align 2
  %i.xu = zext i16 %i.xt to i32                   ; 2 uses
  %i.xv = and i32 %i.xu, 64512
  %i.xw = icmp eq i32 %i.xv, 56320
  br i1 %i.xw, label %bb.dd, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.i.i

bb.dd:                                            ; preds = %bb.dc
  %i.xx = shl nuw nsw i32 %i.xk, 10
  %i.xy = and i32 %i.xx, 1047552
  %i.xz = add nuw nsw i32 %i.xy, 65536
  %i.ya = and i32 %i.xu, 1023
  %i.yb = or disjoint i32 %i.ya, %i.xz
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.i.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.i.i: ; preds = %bb.dd, %bb.dc, %.peel.next.i.i
  %.0.i.i.i = phi i32 [ %i.xk, %bb.dc ], [ %i.xk, %.peel.next.i.i ], [ %i.yb, %bb.dd ] ; 2 uses
  switch i32 %.0.i.i.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread.i.i [
    i32 45, label %bb.de
    i32 109, label %bb.di
    i32 105, label %bb.di
    i32 115, label %bb.di
    i32 58, label %.loopexit.i.i
    i32 61, label %bb.dp
    i32 33, label %bb.dr
    i32 60, label %bb.dt
  ]

bb.de:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.i.i
  %i.yc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 19), align 1, !range !15, !noundef !16
  %i.yd = trunc nuw i8 %i.yc to i1
  br i1 %i.yd, label %bb.dg, label %.loopexit328.i.i

.loopexit328.i.i:                                 ; preds = %bb.de, %bb.da
  %.val1.i260.lcssa319.i.i = phi i32 [ %.val1.i254.i.i, %bb.da ], [ %.val1.i260.i.i, %bb.de ]
  %.val.i259.lcssa310.i.i = phi i32 [ %.val.i253.i.i, %bb.da ], [ %.val.i259.i.i, %bb.de ]
  %i.ye = load i8, ptr %i.ap, align 1, !range !15, !noundef !16
  %i.yf = trunc nuw i8 %i.ye to i1
  br i1 %i.yf, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit.i, label %bb.df

bb.df:                                            ; preds = %.loopexit328.i.i
  store i8 1, ptr %i.ap, align 1
  store i32 16, ptr %i.au, align 8
  %.val2.i.i224.i = load i32, ptr %i.ai, align 4  ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.val2.i.i224.i, 2097152
  %i.yg = icmp ult i32 %.val2.i.i224.i, 65536
  %i.yh = or i1 %.not.i.i.i.i, %i.yg
  %.neg2.i.i.i225.i = select i1 %i.yh, i32 -1, i32 -2
  %i.yi = add i32 %.neg2.i.i.i225.i, %.val1.i260.lcssa319.i.i
  store i32 %i.yi, ptr %i.av, align 4
  store i32 2097152, ptr %i.ai, align 4
  store i32 %.val.i259.lcssa310.i.i, ptr %i.ak, align 8
  store i8 0, ptr %i.as, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit.i

bb.dg:                                            ; preds = %bb.de
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.yj = icmp eq i8 %.017258.i.i, 0
  br i1 %i.yj, label %.loopexit329.i.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.i.i

.loopexit329.i.i:                                 ; preds = %bb.dg
  %i.yk = load i8, ptr %i.ap, align 1, !range !15, !noundef !16
  %i.yl = trunc nuw i8 %i.yk to i1
  br i1 %i.yl, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit.i, label %bb.dh

bb.dh:                                            ; preds = %.loopexit329.i.i
  store i8 1, ptr %i.ap, align 1
  store i32 17, ptr %i.au, align 8
  %.val2.i41.i.i = load i32, ptr %i.ai, align 4   ; 2 uses
  %.val3.i42.i.i = load i32, ptr %i.ak, align 8
  %.not.i.i43.i.i = icmp eq i32 %.val2.i41.i.i, 2097152
  %i.ym = icmp ult i32 %.val2.i41.i.i, 65536
  %i.yn = or i1 %.not.i.i43.i.i, %i.ym
  %.neg2.i.i44.i.i = select i1 %i.yn, i32 -1, i32 -2
  %i.yo = add i32 %.neg2.i.i44.i.i, %.val3.i42.i.i
  store i32 %i.yo, ptr %i.av, align 4
  store i32 2097152, ptr %i.ai, align 4
  %.val.i45.i.i = load i32, ptr %i.aj, align 8
  store i32 %.val.i45.i.i, ptr %i.ak, align 8
  store i8 0, ptr %i.as, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit.i

bb.di:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.i.i
  %i.yp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 19), align 1, !range !15, !noundef !16
  %i.yq = trunc nuw i8 %i.yp to i1
  br i1 %i.yq, label %bb.dk, label %.loopexit325.i.i.a

.loopexit325.i.i.a:                               ; preds = %bb.di, %bb.cy
  %.val1.i260.lcssa316.i.i = phi i32 [ %.val1.i254.i.i, %bb.cy ], [ %.val1.i260.i.i, %bb.di ]
  %.val.i259.lcssa307.i.i = phi i32 [ %.val.i253.i.i, %bb.cy ], [ %.val.i259.i.i, %bb.di ]
  %i.yr = load i8, ptr %i.ap, align 1, !range !15, !noundef !16
  %i.ys = trunc nuw i8 %i.yr to i1
  br i1 %i.ys, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit.i, label %bb.dj

bb.dj:                                            ; preds = %.loopexit325.i.i.a
  store i8 1, ptr %i.ap, align 1
  store i32 16, ptr %i.au, align 8
  %.val2.i47.i.i = load i32, ptr %i.ai, align 4   ; 2 uses
  %.not.i.i49.i.i = icmp eq i32 %.val2.i47.i.i, 2097152
  %i.yt = icmp ult i32 %.val2.i47.i.i, 65536
  %i.yu = or i1 %.not.i.i49.i.i, %i.yt
  %.neg2.i.i50.i.i = select i1 %i.yu, i32 -1, i32 -2
  %i.yv = add i32 %.neg2.i.i50.i.i, %.val1.i260.lcssa316.i.i
  store i32 %i.yv, ptr %i.av, align 4
  store i32 2097152, ptr %i.ai, align 4
  store i32 %.val.i259.lcssa307.i.i, ptr %i.ak, align 8
  store i8 0, ptr %i.as, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit.i

bb.dk:                                            ; preds = %bb.di
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.yw = trunc nuw nsw i32 %.0.i.i.i to i8
  %switch.tableidx826 = add i8 %i.yw, -105        ; 3 uses
  %i.yx = icmp ult i8 %switch.tableidx826, 11
  br i1 %i.yx, label %switch.hole_check828, label %.loopexit326.i.i

.loopexit326.i.i:                                 ; preds = %bb.cz, %switch.hole_check, %bb.dk, %switch.hole_check828
  call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

switch.hole_check828:                             ; preds = %bb.dk
  %switch.maskindex830 = zext nneg i8 %switch.tableidx826 to i16
  %switch.shifted831 = lshr i16 1049, %switch.maskindex830
  %switch.lobit832 = trunc i16 %switch.shifted831 to i1
  br i1 %switch.lobit832, label %switch.lookup829, label %.loopexit326.i.i

switch.lookup829:                                 ; preds = %switch.hole_check828
  %i.yy = zext nneg i8 %switch.tableidx826 to i64
  %switch.gep833 = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE12ParsePatternEv.128, i64 %i.yy
  %switch.load834 = load i8, ptr %switch.gep833, align 1
  %switch.ext835 = zext i8 %switch.load834 to i32 ; 4 uses
  %i.yz = and i32 %.sroa.0119.0256.i.i, %switch.ext835
  %.not.i222.i = icmp eq i32 %i.yz, 0
  br i1 %.not.i222.i, label %bb.dm, label %.loopexit327.i.i

.loopexit327.i.i:                                 ; preds = %switch.lookup829
  %i.za = load i8, ptr %i.ap, align 1, !range !15, !noundef !16
  %i.zb = trunc nuw i8 %i.za to i1
  br i1 %i.zb, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit.i, label %bb.dl

bb.dl:                                            ; preds = %.loopexit327.i.i
  store i8 1, ptr %i.ap, align 1
  store i32 19, ptr %i.au, align 8
  %.val2.i53.i.i = load i32, ptr %i.ai, align 4   ; 2 uses
  %.val3.i54.i.i = load i32, ptr %i.ak, align 8
  %.not.i.i55.i.i = icmp eq i32 %.val2.i53.i.i, 2097152
  %i.zc = icmp ult i32 %.val2.i53.i.i, 65536
  %i.zd = or i1 %.not.i.i55.i.i, %i.zc
  %.neg2.i.i56.i.i = select i1 %i.zd, i32 -1, i32 -2
  %i.ze = add i32 %.neg2.i.i56.i.i, %.val3.i54.i.i
  store i32 %i.ze, ptr %i.av, align 4
  store i32 2097152, ptr %i.ai, align 4
  %.val.i57.i.i = load i32, ptr %i.aj, align 8
  store i32 %.val.i57.i.i, ptr %i.ak, align 8
  store i8 0, ptr %i.as, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit.i

bb.dm:                                            ; preds = %switch.lookup829
  %i.zf = or i32 %.sroa.0119.0256.i.i, %switch.ext835 ; 2 uses
  %i.zg = trunc nuw i8 %.017258.i.i to i1
  br i1 %i.zg, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.zh = or i32 %.sroa.0122.0255.i.i, %switch.ext835
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.i.i

bb.do:                                            ; preds = %bb.dm
  %i.zi = xor i32 %switch.ext835, -1
  %i.zj = and i32 %.sroa.0122.0255.i.i, %i.zi
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.i.i

.loopexit322.i.i:                                 ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.peel.i.i
  store i32 %i.wh, ptr %i.ak, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %.thread359.i.i

bb.dp:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.i.i
  store i32 %i.xl, ptr %i.ak, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.zk = load i8, ptr %i.ap, align 1, !range !15, !noundef !16
  %i.zl = trunc nuw i8 %i.zk to i1
  br i1 %i.zl, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  store i8 1, ptr %i.ap, align 1
  store i32 16, ptr %i.au, align 8
  %.val2.i59.i.i = load i32, ptr %i.ai, align 4   ; 2 uses
  %.val3.i60.i.i = load i32, ptr %i.ak, align 8
  %.not.i.i61.i.i = icmp eq i32 %.val2.i59.i.i, 2097152
  %i.zm = icmp ult i32 %.val2.i59.i.i, 65536
  %i.zn = or i1 %.not.i.i61.i.i, %i.zm
  %.neg2.i.i62.i.i = select i1 %i.zn, i32 -1, i32 -2
  %i.zo = add i32 %.neg2.i.i62.i.i, %.val3.i60.i.i
  store i32 %i.zo, ptr %i.av, align 4
  store i32 2097152, ptr %i.ai, align 4
  %.val.i63.i.i = load i32, ptr %i.aj, align 8
  store i32 %.val.i63.i.i, ptr %i.ak, align 8
  store i8 0, ptr %i.as, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit.i

.loopexit323.i.i:                                 ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.peel.i.i
  store i32 %i.wh, ptr %i.ak, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %.thread359.i.i

bb.dr:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.i.i
  store i32 %i.xl, ptr %i.ak, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.zp = load i8, ptr %i.ap, align 1, !range !15, !noundef !16
  %i.zq = trunc nuw i8 %i.zp to i1
  br i1 %i.zq, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  store i8 1, ptr %i.ap, align 1
  store i32 16, ptr %i.au, align 8
  %.val2.i65.i.i = load i32, ptr %i.ai, align 4   ; 2 uses
  %.val3.i66.i.i = load i32, ptr %i.ak, align 8
  %.not.i.i67.i.i = icmp eq i32 %.val2.i65.i.i, 2097152
  %i.zr = icmp ult i32 %.val2.i65.i.i, 65536
  %i.zs = or i1 %.not.i.i67.i.i, %i.zr
  %.neg2.i.i68.i.i = select i1 %i.zs, i32 -1, i32 -2
  %i.zt = add i32 %.neg2.i.i68.i.i, %.val3.i66.i.i
  store i32 %i.zt, ptr %i.av, align 4
  store i32 2097152, ptr %i.ai, align 4
  %.val.i69.i.i = load i32, ptr %i.aj, align 8
  store i32 %.val.i69.i.i, ptr %i.ak, align 8
  store i8 0, ptr %i.as, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit.i

bb.dt:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.i.i
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.zu = load i8, ptr %i.ap, align 1, !range !15, !noundef !16
  %i.zv = trunc nuw i8 %i.zu to i1
  br i1 %i.zv, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store i8 1, ptr %i.ap, align 1
  store i32 16, ptr %i.au, align 8
  %.val2.i71.i.i = load i32, ptr %i.ai, align 4   ; 2 uses
  %.val3.i72.i.i = load i32, ptr %i.ak, align 8
  %.not.i.i73.i.i = icmp eq i32 %.val2.i71.i.i, 2097152
  %i.zw = icmp ult i32 %.val2.i71.i.i, 65536
  %i.zx = or i1 %.not.i.i73.i.i, %i.zw
  %.neg2.i.i74.i.i = select i1 %i.zx, i32 -1, i32 -2
  %i.zy = add i32 %.neg2.i.i74.i.i, %.val3.i72.i.i
  store i32 %i.zy, ptr %i.av, align 4
  store i32 2097152, ptr %i.ai, align 4
  %.val.i75.i.i = load i32, ptr %i.aj, align 8
  store i32 %.val.i75.i.i, ptr %i.ak, align 8
  store i8 0, ptr %i.as, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit.i

bb.dv:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.peel.i.i
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %.val.i77.i.i = load i32, ptr %i.aj, align 8    ; 2 uses
  %.val1.i78.i.i = load i32, ptr %i.ak, align 8   ; 3 uses
  %i.zz = icmp slt i32 %.val1.i78.i.i, %.val.i77.i.i
  br i1 %i.zz, label %bb.dw, label %.thread163.i.i

bb.dw:                                            ; preds = %bb.dv
  %.val13.i.i80.i.i = load ptr, ptr %i.al, align 8
  %i.aaa = sext i32 %.val1.i78.i.i to i64
  %i.aab = getelementptr inbounds [2 x i8], ptr %.val13.i.i80.i.i, i64 %i.aaa
  %i.aac = load i16, ptr %i.aab, align 2          ; 3 uses
  %i.aad = add nsw i32 %.val1.i78.i.i, 1          ; 3 uses
  %.val14.i.i81.i.i = load i32, ptr %i.e, align 8
  %.val15.i.i82.i.i = load i8, ptr %i.am, align 4
  %i.aae = and i32 %.val14.i.i81.i.i, 272
  %or.cond.i.i.i83.i.i = icmp ne i32 %i.aae, 0
  %i.aaf = trunc nuw i8 %.val15.i.i82.i.i to i1
  %spec.select.i.i.i84.i.i = select i1 %or.cond.i.i.i83.i.i, i1 true, i1 %i.aaf
  %i.aag = icmp sge i32 %i.aad, %.val.i77.i.i
  %not.spec.select.i.i.i84.i.i = xor i1 %spec.select.i.i.i84.i.i, true
  %or.cond.i.i85.i.i = select i1 %not.spec.select.i.i.i84.i.i, i1 true, i1 %i.aag
  %i.aah = and i16 %i.aac, -1024
  %i.aai = icmp ne i16 %i.aah, -10240
  %or.cond18.i.i86.i.i = select i1 %or.cond.i.i85.i.i, i1 true, i1 %i.aai ; 2 uses
  %i.aaj = icmp eq i16 %i.aac, 61
  %or.cond.i221.i = select i1 %or.cond18.i.i86.i.i, i1 %i.aaj, i1 false
  br i1 %or.cond.i221.i, label %bb.dx, label %.thread.i.i

bb.dx:                                            ; preds = %bb.dw
  store i32 %i.aad, ptr %i.ak, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %.thread359.i.i

.thread.i.i:                                      ; preds = %bb.dw
  %i.aak = icmp eq i16 %i.aac, 33
  %or.cond175.i.i = select i1 %or.cond18.i.i86.i.i, i1 %i.aak, i1 false
  br i1 %or.cond175.i.i, label %bb.dy, label %.thread163.i.i

bb.dy:                                            ; preds = %.thread.i.i
  store i32 %i.aad, ptr %i.ak, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %.thread359.i.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.peel.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.peel.i.i, %.preheader.i.i
  %.val.i.lcssa.i.i = phi i32 [ %.val.i253.i.i, %.preheader.i.i ], [ %.val.i253.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.peel.i.i ], [ %.val.i.peel.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.peel.i.i ], [ %.val.i259.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.i.i ], [ %.val.i.i223.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.i.i ]
  %.val1.i.lcssa.i.i = phi i32 [ %.val1.i254.i.i, %.preheader.i.i ], [ %.val1.i254.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.peel.i.i ], [ %.val1.i.peel.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.peel.i.i ], [ %.val1.i260.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.i.i ], [ %.val1.i.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.i.i ]
  %i.aal = load i8, ptr %i.ap, align 1, !range !15, !noundef !16
  %i.aam = trunc nuw i8 %i.aal to i1
  br i1 %i.aam, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit.i, label %bb.dz

bb.dz:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread.i.i
  store i8 1, ptr %i.ap, align 1
  store i32 16, ptr %i.au, align 8
  %.val2.i99.i.i = load i32, ptr %i.ai, align 4   ; 2 uses
  %.not.i.i101.i.i = icmp eq i32 %.val2.i99.i.i, 2097152
  %i.aan = icmp ult i32 %.val2.i99.i.i, 65536
  %i.aao = or i1 %.not.i.i101.i.i, %i.aan
  %.neg2.i.i102.i.i = select i1 %i.aao, i32 -1, i32 -2
  %i.aap = add i32 %.neg2.i.i102.i.i, %.val1.i.lcssa.i.i
  store i32 %i.aap, ptr %i.av, align 4
  store i32 2097152, ptr %i.ai, align 4
  store i32 %.val.i.lcssa.i.i, ptr %i.ak, align 8
  store i8 0, ptr %i.as, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseOpenParenthesisEPNS1_17RegExpParserStateE.exit.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit58.thread.i.i: ; preds = %bb.do, %bb.dn, %bb.dg
  %.sroa.0122.2.i.i = phi i32 [ %.sroa.0122.0255.i.i, %bb.dg ], [ %i.zh, %bb.dn ], [ %i.zj, %bb.do ]
  %.sroa.0119.2.i.i = phi i32 [ %.sroa.0119.0256.i.i, %bb.dg ], [ %i.zf, %bb.dn ], [ %i.zf, %bb.do ]
  %.2.i.i = phi i8 [ 0, %bb.dg ], [ 1, %bb.dn ], [ 0, %bb.do ]
  %.val.i.i223.i = load i32, ptr %i.aj, align 8   ; 3 uses
  %.val1.i.i.i = load i32, ptr %i.ak, align 8     ; 3 uses
  %i.aaq = icmp slt i32 %.val1.i.i.i, %.val.i.i223.i
  br i1 %i.aaq, label %.peel.next.i.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread.i.i, !llvm.loop !96

.loopexit.i.i:                                    ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.i.i
  %i.aar = icmp eq i8 %.017258.i.i, 0
end_hunk_2
