inline.NumInlined: 54
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::HashSeed::Data" = type { i64, [3 x i64], i32, i32, i32, i32, i32, i32 }
%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", [4 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", [4 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.1", [4 x i8], %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.4", [2 x i8], %"class.v8::internal::FlagValue.1", [4 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", [4 x i8], %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.0", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.4" = type { %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base" }
%"struct.std::_Optional_payload_base" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.3" = type { double }
%"class.v8::internal::FlagValue.2" = type { i32 }
%"class.v8::internal::FlagValue.5" = type { i64 }
%"class.v8::internal::FlagValue.1" = type { i32 }
%"class.v8::internal::FlagValue.0" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }

@_ZN2v88internal12_GLOBAL__N_112kDefaultSeedE = internal constant %"struct.v8::internal::HashSeed::Data" { i64 0, [3 x i64] [i64 3257665815644502181, i64 -8378864009470890807, i64 5418857496715711651], i32 7108773, i32 12496685, i32 3058889, i32 8990073, i32 3396771, i32 2326283 }, align 8
@_ZN2v88internal8HashSeed12kDefaultDataE = hidden local_unnamed_addr constant ptr @_ZN2v88internal12_GLOBAL__N_112kDefaultSeedE, align 8
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@__const._ZL21rapidhash_make_secretmPm.c = private unnamed_addr constant [70 x i8] c"\0F\17\1B\1D\1E'+-.3569:<GKMNSUVYZ\\cefijlqrtx\87\8B\8D\8E\93\95\96\99\9A\9C\A3\A5\A6\A9\AA\AC\B1\B2\B4\B8\C3\C5\C6\C9\CA\CC\D1\D2\D4\D8\E1\E2\E4\E8\F0", align 16

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8HashSeed15InitializeRootsEPNS0_7IsolateE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1560), align 8 ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal7Isolate23random_number_generatorEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) #4
  %i.d = tail call noundef i64 @_ZN2v84base21RandomNumberGenerator9NextInt64Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.a, %bb.a ]  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %.preheader115.i

.preheader115.i:                                  ; preds = %_ZN6detailL8is_primeEy.exit.thread.i, %bb.c
  %.023125.i = phi i64 [ 0, %bb.c ], [ %i.qr, %_ZN6detailL8is_primeEy.exit.thread.i ] ; 4 uses
  %.0106124.i = phi i64 [ %.0, %bb.c ], [ %1, %_ZN6detailL8is_primeEy.exit.thread.i ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.023125.i
  %.not126.i = icmp eq i64 %.023125.i, 0
  %exitcond.not.i = icmp eq i64 %.023125.i, 1
  br label %bb.d

bb.d:                                             ; preds = %.backedge.i, %.preheader115.i
  %.1.i.a = phi i64 [ %.0106124.i, %.preheader115.i ], [ %1, %.backedge.i ] ; 8 uses
  %i.m = add i64 %.1.i.a, 3257665815644502181     ; 2 uses
  %i.n = xor i64 %i.m, -8378864009470890807
  %i.o = zext i64 %i.m to i128
  %i.p = zext i64 %i.n to i128
  %i.q = mul nuw i128 %i.p, %i.o                  ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64
  %i.u = urem i64 %i.t, 70
  %i.v = getelementptr inbounds nuw i8, ptr @__const._ZL21rapidhash_make_secretmPm.c, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = add i64 %.1.i.a, 6515331631289004362     ; 2 uses
  %i.z = xor i64 %i.y, -8378864009470890807
  %i.aa = zext i64 %i.y to i128
  %i.ab = zext i64 %i.z to i128
  %i.ac = mul nuw i128 %i.ab, %i.aa               ; 2 uses
  %i.ad = lshr i128 %i.ac, 64
  %i.ae = xor i128 %i.ad, %i.ac
  %i.af = trunc i128 %i.ae to i64
  %i.ag = urem i64 %i.af, 70
  %i.ah = getelementptr inbounds nuw i8, ptr @__const._ZL21rapidhash_make_secretmPm.c, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 8
  %i.al = add i64 %.1.i.a, -8673746626776045073   ; 2 uses
  %i.am = xor i64 %i.al, -8378864009470890807
  %i.an = zext i64 %i.al to i128
  %i.ao = zext i64 %i.am to i128
  %i.ap = mul nuw i128 %i.ao, %i.an               ; 2 uses
  %i.aq = lshr i128 %i.ap, 64
  %i.ar = xor i128 %i.aq, %i.ap
  %i.as = trunc i128 %i.ar to i64
  %i.at = urem i64 %i.as, 70
  %i.au = getelementptr inbounds nuw i8, ptr @__const._ZL21rapidhash_make_secretmPm.c, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 16
  %i.ay = add i64 %.1.i.a, -5416080811131542892   ; 2 uses
  %i.az = xor i64 %i.ay, -8378864009470890807
  %i.ba = zext i64 %i.ay to i128
  %i.bb = zext i64 %i.az to i128
  %i.bc = mul nuw i128 %i.bb, %i.ba               ; 2 uses
  %i.bd = lshr i128 %i.bc, 64
  %i.be = xor i128 %i.bd, %i.bc
  %i.bf = trunc i128 %i.be to i64
  %i.bg = urem i64 %i.bf, 70
  %i.bh = getelementptr inbounds nuw i8, ptr @__const._ZL21rapidhash_make_secretmPm.c, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 24
  %i.bl = add i64 %.1.i.a, -2158414995487040711   ; 2 uses
  %i.bm = xor i64 %i.bl, -8378864009470890807
  %i.bn = zext i64 %i.bl to i128
  %i.bo = zext i64 %i.bm to i128
  %i.bp = mul nuw i128 %i.bo, %i.bn               ; 2 uses
  %i.bq = lshr i128 %i.bp, 64
  %i.br = xor i128 %i.bq, %i.bp
  %i.bs = trunc i128 %i.br to i64
  %i.bt = urem i64 %i.bs, 70
  %i.bu = getelementptr inbounds nuw i8, ptr @__const._ZL21rapidhash_make_secretmPm.c, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 32
  %i.by = add i64 %.1.i.a, 1099250820157461470    ; 2 uses
  %i.bz = xor i64 %i.by, -8378864009470890807
  %i.ca = zext i64 %i.by to i128
  %i.cb = zext i64 %i.bz to i128
  %i.cc = mul nuw i128 %i.cb, %i.ca               ; 2 uses
  %i.cd = lshr i128 %i.cc, 64
  %i.ce = xor i128 %i.cd, %i.cc
  %i.cf = trunc i128 %i.ce to i64
  %i.cg = urem i64 %i.cf, 70
  %i.ch = getelementptr inbounds nuw i8, ptr @__const._ZL21rapidhash_make_secretmPm.c, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 40
  %i.cl = add i64 %.1.i.a, 4356916635801963651    ; 2 uses
  %i.cm = xor i64 %i.cl, -8378864009470890807
  %i.cn = zext i64 %i.cl to i128
  %i.co = zext i64 %i.cm to i128
  %i.cp = mul nuw i128 %i.co, %i.cn               ; 2 uses
  %i.cq = lshr i128 %i.cp, 64
  %i.cr = xor i128 %i.cq, %i.cp
  %i.cs = trunc i128 %i.cr to i64
  %i.ct = urem i64 %i.cs, 70
  %i.cu = getelementptr inbounds nuw i8, ptr @__const._ZL21rapidhash_make_secretmPm.c, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 48
  %1 = add i64 %.1.i.a, 7614582451446465832       ; 4 uses
  %i.cy = xor i64 %1, -8378864009470890807
  %i.cz = zext i64 %1 to i128
  %i.da = zext i64 %i.cy to i128
  %i.db = mul nuw i128 %i.da, %i.cz               ; 2 uses
  %i.dc = lshr i128 %i.db, 64
  %i.dd = xor i128 %i.dc, %i.db
  %i.de = trunc i128 %i.dd to i64
  %i.df = urem i64 %i.de, 70
  %i.dg = getelementptr inbounds nuw i8, ptr @__const._ZL21rapidhash_make_secretmPm.c, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = zext i8 %i.dh to i64
  %i.dj = shl nuw i64 %i.di, 56
  %i.dk = or disjoint i64 %i.ak, %i.ax
  %i.dl = or disjoint i64 %i.dk, %i.bk
  %i.dm = or disjoint i64 %i.dl, %i.bx
  %i.dn = or disjoint i64 %i.dm, %i.ck
  %i.do = or i64 %i.dn, %i.cx
  %i.dp = or i64 %i.do, %i.dj
  %i.dq = or i64 %i.dp, %i.x                      ; 86 uses
  store i64 %i.dq, ptr %i.l, align 8
  %i.dr = and i64 %i.x, 1
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %.backedge.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  br i1 %.not126.i, label %.critedge.i, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e
  %i.dt = load i64, ptr %i.k, align 8
  %i.du = xor i64 %i.dt, %i.dq
  %i.dv = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.du)
  %.not.i.1 = icmp ne i64 %i.dv, 32
  %i.dw = icmp ult i64 %i.dq, 2
  %or.cond = select i1 %.not.i.1, i1 true, i1 %i.dw
  br i1 %or.cond, label %.backedge.i, label %bb.f

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.dx = load i64, ptr %i.j, align 8
  %i.dy = xor i64 %i.dx, %i.dq
  %i.dz = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dy)
  %.not.i = icmp eq i64 %i.dz, 32
  br i1 %.not.i, label %bb.e, label %.backedge.i

.critedge.i:                                      ; preds = %bb.e, %.preheader.i
  %.old = icmp ult i64 %i.dq, 2
  br i1 %.old, label %.backedge.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1, %.critedge.i
  %i.ea = icmp ult i64 %i.dq, 4
  br i1 %i.ea, label %_ZN6detailL8is_primeEy.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eb = add nsw i64 %i.dq, -1                   ; 25 uses
  %i.ec = and i64 %i.eb, 254
  %.not49.i31.i = icmp eq i64 %i.ec, 0            ; 6 uses
  br i1 %.not49.i31.i, label %.lr.ph.i101.i, label %._crit_edge.i32.i

.lr.ph.i101.i:                                    ; preds = %bb.g, %.lr.ph.i101.i
  %.03051.i102.i = phi i8 [ %i.ee, %.lr.ph.i101.i ], [ 0, %bb.g ]
  %.03150.i103.i = phi i64 [ %i.ed, %.lr.ph.i101.i ], [ %i.eb, %bb.g ] ; 2 uses
  %i.ed = lshr exact i64 %.03150.i103.i, 8        ; 2 uses
  %i.ee = add i8 %.03051.i102.i, 8                ; 2 uses
  %i.ef = and i64 %.03150.i103.i, 65280
  %.not.i104.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i104.i, label %.lr.ph.i101.i, label %._crit_edge.i32.i, !llvm.loop !5

._crit_edge.i32.i:                                ; preds = %.lr.ph.i101.i, %bb.g
  %.031.lcssa.i33.i = phi i64 [ %i.eb, %bb.g ], [ %i.ed, %.lr.ph.i101.i ] ; 3 uses
  %.030.lcssa.i34.i = phi i8 [ 0, %bb.g ], [ %i.ee, %.lr.ph.i101.i ] ; 2 uses
  %i.eg = and i64 %.031.lcssa.i33.i, 15
  %.not40.i35.i = icmp eq i64 %i.eg, 0            ; 2 uses
  %i.eh = lshr exact i64 %.031.lcssa.i33.i, 4
  %i.ei = or disjoint i8 %.030.lcssa.i34.i, 4
  %.132.i36.i = select i1 %.not40.i35.i, i64 %i.eh, i64 %.031.lcssa.i33.i ; 3 uses
  %.1.i37.i = select i1 %.not40.i35.i, i8 %i.ei, i8 %.030.lcssa.i34.i ; 2 uses
  %i.ej = and i64 %.132.i36.i, 3
  %.not41.i38.i = icmp eq i64 %i.ej, 0            ; 2 uses
  %i.ek = lshr exact i64 %.132.i36.i, 2
  %i.el = or disjoint i8 %.1.i37.i, 2
  %.233.i39.i = select i1 %.not41.i38.i, i64 %i.ek, i64 %.132.i36.i ; 3 uses
  %.2.i40.i = select i1 %.not41.i38.i, i8 %i.el, i8 %.1.i37.i ; 2 uses
  %i.em = and i64 %.233.i39.i, 1                  ; 2 uses
  %i.en = trunc nuw nsw i64 %i.em to i8
  %i.eo = or disjoint i8 %.2.i40.i, %i.en
  %.3.i41.i = xor i8 %i.eo, 1
  %.not35.i.i42.i = icmp eq i64 %.233.i39.i, 0
  br i1 %.not35.i.i42.i, label %_ZN6detailL4sprpEyy.exit105.i, label %.lr.ph.i.preheader.i43.i

.lr.ph.i.preheader.i43.i:                         ; preds = %._crit_edge.i32.i
  %i.ep = xor i64 %i.em, 1
  %.334.i44.i = lshr exact i64 %.233.i39.i, %i.ep
  br label %.lr.ph.i.i45.i

.lr.ph.i.i45.i:                                   ; preds = %_ZN6detailL7mul_modEyyy.exit27.i.i73.i, %.lr.ph.i.preheader.i43.i
  %.038.i.i46.i = phi i64 [ %.131.i.i74.i, %_ZN6detailL7mul_modEyyy.exit27.i.i73.i ], [ 1, %.lr.ph.i.preheader.i43.i ] ; 2 uses
  %.01137.i.i47.i = phi i64 [ %.112.i.i75.i, %_ZN6detailL7mul_modEyyy.exit27.i.i73.i ], [ 2, %.lr.ph.i.preheader.i43.i ] ; 5 uses
  %.01336.i.i48.i = phi i64 [ %i.fn, %_ZN6detailL7mul_modEyyy.exit27.i.i73.i ], [ %.334.i44.i, %.lr.ph.i.preheader.i43.i ] ; 3 uses
  %i.eq = and i64 %.01336.i.i48.i, 1
  %.not14.i.i49.i = icmp eq i64 %i.eq, 0
  br i1 %.not14.i.i49.i, label %_ZN6detailL7mul_modEyyy.exit.i.i60.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i45.i
  %.not33.i.i.i50.i = icmp eq i64 %.01137.i.i47.i, 0
  br i1 %.not33.i.i.i50.i, label %_ZN6detailL7mul_modEyyy.exit.thread.i.i100.i, label %.lr.ph.i.i.i51.i

.lr.ph.i.i.i51.i:                                 ; preds = %bb.h, %bb.k
  %.02236.i.i.i52.i = phi i64 [ %.1.i.i.i57.i, %bb.k ], [ 0, %bb.h ] ; 3 uses
  %.02335.i.i.i53.i = phi i64 [ %i.fa, %bb.k ], [ %.038.i.i46.i, %bb.h ] ; 3 uses
  %.02534.i.i.i54.i = phi i64 [ %i.ew, %bb.k ], [ %.01137.i.i47.i, %bb.h ] ; 2 uses
  %i.er = and i64 %.02534.i.i.i54.i, 1
  %.not30.i.i.i55.i = icmp eq i64 %i.er, 0
  br i1 %.not30.i.i.i55.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i51.i
  %i.es = add i64 %.02335.i.i.i53.i, %.02236.i.i.i52.i ; 2 uses
  %i.et = icmp ult i64 %i.es, %.02236.i.i.i52.i
  %i.eu = select i1 %i.et, i64 %i.dq, i64 0
  %spec.select.i.i.i56.i = sub i64 %i.es, %i.eu
  %i.ev = urem i64 %spec.select.i.i.i56.i, %i.dq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i51.i
  %.1.i.i.i57.i = phi i64 [ %i.ev, %bb.i ], [ %.02236.i.i.i52.i, %.lr.ph.i.i.i51.i ] ; 2 uses
  %i.ew = lshr i64 %.02534.i.i.i54.i, 1           ; 2 uses
  %.not31.i.i.i58.i = icmp eq i64 %i.ew, 0
  br i1 %.not31.i.i.i58.i, label %_ZN6detailL7mul_modEyyy.exit.i.i60.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ex = shl i64 %.02335.i.i.i53.i, 1
  %i.ey = icmp slt i64 %.02335.i.i.i53.i, 0
  %i.ez = select i1 %i.ey, i64 %i.dq, i64 0
  %spec.select32.i.i.i59.i = sub i64 %i.ex, %i.ez
  %i.fa = urem i64 %spec.select32.i.i.i59.i, %i.dq
  br label %.lr.ph.i.i.i51.i, !llvm.loop !7

_ZN6detailL7mul_modEyyy.exit.i.i60.i:             ; preds = %bb.j, %.lr.ph.i.i45.i
  %.1.i.i61.i = phi i64 [ %.038.i.i46.i, %.lr.ph.i.i45.i ], [ %.1.i.i.i57.i, %bb.j ] ; 3 uses
  %i.fb = lshr i64 %.01336.i.i48.i, 1             ; 3 uses
  %.not15.i.i62.i = icmp eq i64 %i.fb, 0
  br i1 %.not15.i.i62.i, label %_ZN6detailL7pow_modEyyy.exit.i77.i, label %bb.l

_ZN6detailL7mul_modEyyy.exit.thread.i.i100.i:     ; preds = %bb.h
  %i.fc = lshr i64 %.01336.i.i48.i, 1
  br label %_ZN6detailL7mul_modEyyy.exit27.i.i73.i

bb.l:                                             ; preds = %_ZN6detailL7mul_modEyyy.exit.i.i60.i
  %.not33.i16.i.i63.i = icmp eq i64 %.01137.i.i47.i, 0
  br i1 %.not33.i16.i.i63.i, label %_ZN6detailL7mul_modEyyy.exit27.i.i73.i, label %.lr.ph.i17.i.i64.i

.lr.ph.i17.i.i64.i:                               ; preds = %bb.l, %bb.o
  %.02236.i18.i.i65.i = phi i64 [ %.1.i23.i.i70.i, %bb.o ], [ 0, %bb.l ] ; 3 uses
  %.02335.i19.i.i66.i = phi i64 [ %i.fm, %bb.o ], [ %.01137.i.i47.i, %bb.l ] ; 3 uses
  %.02534.i20.i.i67.i = phi i64 [ %i.fi, %bb.o ], [ %.01137.i.i47.i, %bb.l ] ; 2 uses
  %i.fd = and i64 %.02534.i20.i.i67.i, 1
  %.not30.i21.i.i68.i = icmp eq i64 %i.fd, 0
  br i1 %.not30.i21.i.i68.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i17.i.i64.i
  %i.fe = add i64 %.02335.i19.i.i66.i, %.02236.i18.i.i65.i ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %.02236.i18.i.i65.i
  %i.fg = select i1 %i.ff, i64 %i.dq, i64 0
  %spec.select.i22.i.i69.i = sub i64 %i.fe, %i.fg
  %i.fh = urem i64 %spec.select.i22.i.i69.i, %i.dq
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i17.i.i64.i
  %.1.i23.i.i70.i = phi i64 [ %i.fh, %bb.m ], [ %.02236.i18.i.i65.i, %.lr.ph.i17.i.i64.i ] ; 2 uses
  %i.fi = lshr i64 %.02534.i20.i.i67.i, 1         ; 2 uses
  %.not31.i24.i.i71.i = icmp eq i64 %i.fi, 0
  br i1 %.not31.i24.i.i71.i, label %_ZN6detailL7mul_modEyyy.exit27.i.i73.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fj = shl i64 %.02335.i19.i.i66.i, 1
  %i.fk = icmp slt i64 %.02335.i19.i.i66.i, 0
  %i.fl = select i1 %i.fk, i64 %i.dq, i64 0
  %spec.select32.i25.i.i72.i = sub i64 %i.fj, %i.fl
  %i.fm = urem i64 %spec.select32.i25.i.i72.i, %i.dq
  br label %.lr.ph.i17.i.i64.i, !llvm.loop !7

_ZN6detailL7mul_modEyyy.exit27.i.i73.i:           ; preds = %bb.n, %bb.l, %_ZN6detailL7mul_modEyyy.exit.thread.i.i100.i
  %i.fn = phi i64 [ %i.fc, %_ZN6detailL7mul_modEyyy.exit.thread.i.i100.i ], [ %i.fb, %bb.l ], [ %i.fb, %bb.n ] ; 2 uses
  %.131.i.i74.i = phi i64 [ 0, %_ZN6detailL7mul_modEyyy.exit.thread.i.i100.i ], [ %.1.i.i61.i, %bb.l ], [ %.1.i.i61.i, %bb.n ] ; 2 uses
  %.112.i.i75.i = phi i64 [ 0, %_ZN6detailL7mul_modEyyy.exit.thread.i.i100.i ], [ 0, %bb.l ], [ %.1.i23.i.i70.i, %bb.n ]
  %.not.i.i76.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i.i76.i, label %_ZN6detailL7pow_modEyyy.exit.i77.i, label %.lr.ph.i.i45.i, !llvm.loop !8

_ZN6detailL7pow_modEyyy.exit.i77.i:               ; preds = %_ZN6detailL7mul_modEyyy.exit27.i.i73.i, %_ZN6detailL7mul_modEyyy.exit.i.i60.i
  %.0.lcssa.i.i78.i = phi i64 [ %.131.i.i74.i, %_ZN6detailL7mul_modEyyy.exit27.i.i73.i ], [ %.1.i.i61.i, %_ZN6detailL7mul_modEyyy.exit.i.i60.i ] ; 4 uses
  %i.fo = icmp eq i64 %.0.lcssa.i.i78.i, 1
  %i.fp = icmp eq i64 %.0.lcssa.i.i78.i, %i.eb
  %or.cond.i79.i = or i1 %i.fo, %i.fp
  br i1 %or.cond.i79.i, label %_ZN6detailL4sprpEyy.exit105.i, label %.preheader.i80.i

.preheader.i80.i:                                 ; preds = %_ZN6detailL7pow_modEyyy.exit.i77.i
  %i.fq = icmp ult i8 %.2.i40.i, 2
  %.not33.i53.i81.i = icmp eq i64 %.0.lcssa.i.i78.i, 0
  %or.cond4854.i82.i = or i1 %i.fq, %.not33.i53.i81.i
  br i1 %or.cond4854.i82.i, label %.backedge.i, label %.lr.ph.i43.preheader.preheader.i83.i

end_hunk_0
