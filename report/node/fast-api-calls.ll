inline.NumInlined: 478
inline.NumDeleted: 139
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.19", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", [4 x i8], %"class.v8::internal::FlagValue.20", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.19", %"class.v8::internal::FlagValue.19", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.19", %"class.v8::internal::FlagValue.21", %"class.v8::internal::FlagValue.21", %"class.v8::internal::FlagValue.21", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.19", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.19", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.20", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.19", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.19", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.20", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", [4 x i8], %"class.v8::internal::FlagValue.20", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.19", %"class.v8::internal::FlagValue.19", %"class.v8::internal::FlagValue.19", %"class.v8::internal::FlagValue.19", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue.18", [4 x i8], %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.19", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.20", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.20", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.21", %"class.v8::internal::FlagValue.21", %"class.v8::internal::FlagValue.21", %"class.v8::internal::FlagValue.21", %"class.v8::internal::FlagValue.21", %"class.v8::internal::FlagValue.21", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.19", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.19", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.20", %"class.v8::internal::FlagValue.20", %"class.v8::internal::FlagValue.20", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.19", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.21", [2 x i8], %"class.v8::internal::FlagValue.18", [4 x i8], %"class.v8::internal::FlagValue.20", %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.19", %"class.v8::internal::FlagValue.19", [4 x i8], %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.28", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.18", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.17", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.21" = type { %"class.std::optional.22" }
%"class.std::optional.22" = type { %"struct.std::_Optional_base.23" }
%"struct.std::_Optional_base.23" = type { %"struct.std::_Optional_payload.25" }
%"struct.std::_Optional_payload.25" = type { %"struct.std::_Optional_payload_base.26" }
%"struct.std::_Optional_payload_base.26" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.20" = type { double }
%"class.v8::internal::FlagValue.19" = type { i32 }
%"class.v8::internal::FlagValue.28" = type { i64 }
%"class.v8::internal::FlagValue.18" = type { i32 }
%"class.v8::internal::FlagValue.17" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.v8::internal::TNode" = type { ptr }
%"struct.std::array" = type { [1 x ptr] }
%"class.v8::internal::compiler::GraphAssemblerLabel" = type <{ i8, [3 x i8], i32, i32, [4 x i8], i64, ptr, ptr, [8 x i8] }>
%"class.v8::internal::TNode.8" = type { ptr }
%"class.v8::internal::compiler::GraphAssemblerLabel.12" = type <{ i8, [3 x i8], i32, i32, [4 x i8], i64, ptr, ptr, %"struct.std::array", %"struct.std::array.13", [7 x i8] }>
%"struct.std::array.13" = type { [1 x i8] }
%"class.v8::internal::compiler::fast_api_call::FastApiCallBuilder" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::FunctionTemplateInfoRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::internal::compiler::HeapObjectRef" = type { %"class.v8::internal::compiler::ObjectRef" }
%"class.v8::internal::compiler::ObjectRef" = type { ptr }
%"class.v8::internal::ZoneVector.29" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.30" = type { ptr, ptr, ptr, ptr }
%"struct.std::array.111" = type { [2 x ptr] }
%"struct.std::array.112" = type { [3 x ptr] }

$_ZN2v88internal8compiler14GraphAssembler4BindILm1EEEvPNS1_19GraphAssemblerLabelIXT_EEE = comdat any

$_ZN2v88internal8compiler14GraphAssembler9GotoIfNotIJEEEvPNS1_4NodeEPNS1_6detail29GraphAssemblerLabelForXHelperIS5_vJDpT_EE4TypeENS0_10BranchHintES9_ = comdat any

$_ZN2v88internal8compiler14GraphAssembler10MergeStateIJEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIPNS1_4NodeEvJDpT_EE4TypeES9_ = comdat any

$_ZN2v88internal8compiler14GraphAssembler10MergeStateIJPNS1_4NodeEEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIS5_vJDpT_EE4TypeES9_ = comdat any

@.str = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@_ZN2v88internal11CpuFeatures10supported_E = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"!NodeProperties::IsTyped(var_array[i])\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"NodeProperties::IsTyped(var_array[i])\00", align 1
@switch.table._ZN2v88internal8compiler13fast_api_call18FastApiCallBuilder5BuildENS1_19FastApiCallFunctionEPNS1_4NodeE.1 = private unnamed_addr constant [14 x i16] [i16 2569, i16 257, i16 770, i16 516, i16 772, i16 1029, i16 1285, i16 2065, i16 2066, i16 5, i16 2569, i16 2569, i16 2569, i16 1029], align 2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext range(i8 18, 29) i8 @_ZN2v88internal8compiler13fast_api_call25GetTypedArrayElementsKindENS_9CTypeInfo4TypeE(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  switch i8 %0, label %bb.i [
    i8 2, label %bb.j
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 6, label %bb.e
    i8 7, label %bb.f
    i8 8, label %bb.g
    i8 0, label %bb.h
    i8 11, label %bb.h
    i8 1, label %bb.h
    i8 9, label %bb.h
    i8 10, label %bb.h
    i8 12, label %bb.h
    i8 13, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  br label %bb.j

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #6
  unreachable

bb.i:                                             ; preds = %bb.a
  unreachable

bb.j:                                             ; preds = %bb.a, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i8 [ 28, %bb.g ], [ 23, %bb.b ], [ 22, %bb.c ], [ 25, %bb.d ], [ 24, %bb.e ], [ 27, %bb.f ], [ 18, %bb.a ]
  ret i8 %.0
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %storemerge = phi i32 [ 0, %bb.a ], [ %i.p, %bb.c ] ; 3 uses
  %i.c = load i32, ptr %i.a, align 4              ; 3 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %.loopexit, label %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit

_ZNK2v813CFunctionInfo13ArgumentCountEv.exit:     ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = add i32 %i.c, -1
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  %.fr.i = freeze i8 %i.h
  %i.i = icmp eq i8 %.fr.i, -1
  %i.j = sext i1 %i.i to i32
  %spec.select.i = add i32 %i.c, %i.j
  %i.k = icmp ult i32 %storemerge, %spec.select.i
  br i1 %i.k, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit
  %i.l = tail call noundef nonnull align 1 dereferenceable(2) ptr @_ZNK2v813CFunctionInfo12ArgumentInfoEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %storemerge) #7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %i.o = and i8 %i.n, 4
  %.not = icmp eq i8 %i.o, 0
  %i.p = add nuw i32 %storemerge, 1
  br i1 %.not, label %bb.b, label %bb.d, !llvm.loop !5

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.r = trunc i32 %i.q to i1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit, %bb.d
  %spec.select = phi i1 [ %i.r, %bb.d ], [ true, %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit ], [ true, %bb.b ]
  ret i1 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef nonnull align 1 dereferenceable(2) ptr @_ZNK2v813CFunctionInfo12ArgumentInfoEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler13fast_api_call18FastApiCallBuilder12WrapFastCallEPKNS1_14CallDescriptorEiPPNS1_4NodeES8_PKNS_13CFunctionInfoEiS8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree readnone captures(none) %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler12IsolateFieldENS0_14IsolateFieldIdE(ptr noundef nonnull align 8 dereferenceable(161) %i.b, i8 noundef zeroext 22) #7 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.e = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler19BitcastTaggedToWordEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %i.d, ptr noundef %4) #7
  %i.f = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler5StoreENS1_19StoreRepresentationEPNS1_4NodeEiS5_(ptr noundef nonnull align 8 dereferenceable(161) %i.d, i16 5, ptr noundef %i.c, i32 noundef 0, ptr noundef %i.e) #7 ; 0 uses
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %6 to i64
  %i.h = getelementptr [8 x i8], ptr %3, i64 %i.g ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  store ptr %7, ptr %i.i, align 8
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.h, i64 16
  store ptr %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.h, i64 24
  store ptr %i.p, ptr %i.q, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = sext i32 %6 to i64
  %i.v = getelementptr [8 x i8], ptr %3, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  store ptr %i.t, ptr %i.w, align 8
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.v, i64 16
  store ptr %i.z, ptr %i.aa, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.ab = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal8compiler14GraphAssembler4CallEPKNS1_14CallDescriptorEiPPNS1_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %8, ptr noundef nonnull align 8 dereferenceable(161) %i.ab, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3) #7
  %i.ac = load ptr, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  %i.ad = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ae = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler14IntPtrConstantEl(ptr noundef nonnull align 8 dereferenceable(161) %i.ad, i64 noundef 0) #7
  %i.af = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler5StoreENS1_19StoreRepresentationEPNS1_4NodeEiS5_(ptr noundef nonnull align 8 dereferenceable(161) %i.ad, i16 5, ptr noundef %i.c, i32 noundef 0, ptr noundef %i.ae) #7 ; 0 uses
  ret ptr %i.ac
}

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler12IsolateFieldENS0_14IsolateFieldIdE(ptr noundef nonnull align 8 dereferenceable(161), i8 noundef zeroext) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler5StoreENS1_19StoreRepresentationEPNS1_4NodeEiS5_(ptr noundef nonnull align 8 dereferenceable(161), i16, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler19BitcastTaggedToWordEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal8compiler14GraphAssembler4CallEPKNS1_14CallDescriptorEiPPNS1_4NodeE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode") align 8, ptr noundef nonnull align 8 dereferenceable(161), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler14IntPtrConstantEl(ptr noundef nonnull align 8 dereferenceable(161), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13fast_api_call18FastApiCallBuilder18PropagateExceptionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [6 x ptr], align 16               ; 8 uses
  %1 = alloca %"class.v8::internal::TNode", align 8 ; 3 uses
  %i.b = tail call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 207) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = sext i8 %i.g to i32
  %i.i = tail call noundef ptr @_ZN2v88internal8compiler7Linkage24GetRuntimeCallDescriptorEPNS0_4ZoneENS0_7Runtime10FunctionIdEiNS_4base5FlagsINS1_8Operator8PropertyEhhEENS8_INS1_14CallDescriptor4FlagEiiEENS1_16LazyDeoptOnThrowE(ptr noundef %i.e, i32 noundef 207, i32 noundef %i.h, i8 0, i32 0, i8 noundef zeroext 0) #7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler16LoadRootRegisterEv(ptr noundef nonnull align 8 dereferenceable(161) %i.k) #7
  %i.m = load ptr, ptr %i.j, align 8
  %i.n = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler4LoadENS0_11MachineTypeEPNS1_4NodeEi(ptr noundef nonnull align 8 dereferenceable(161) %i.m, i16 5, ptr noundef %i.l, i32 noundef 44240) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr %i.n, ptr %i.a, align 16
  %i.o = load ptr, ptr %i.j, align 8
  %i.p = tail call i64 @_ZN2v88internal17ExternalReference6CreateENS0_7Runtime10FunctionIdE(i32 noundef 207) #7
  %i.q = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler16ExternalConstantENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(161) %i.o, i64 %i.p) #7
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.q, ptr %i.r, align 8
  %i.s = load ptr, ptr %i.j, align 8
  %i.t = load i8, ptr %i.f, align 8
  %i.u = sext i8 %i.t to i32
  %i.v = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler13Int32ConstantEi(ptr noundef nonnull align 8 dereferenceable(161) %i.s, i32 noundef %i.u) #7
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.v, ptr %i.w, align 16
  %i.x = load ptr, ptr %i.j, align 8
  %i.y = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler14IntPtrConstantEl(ptr noundef nonnull align 8 dereferenceable(161) %i.x, i64 noundef 0) #7
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8
  store <2 x ptr> %i.ad, ptr %i.ac, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @_ZN2v88internal8compiler14GraphAssembler4CallEPKNS1_14CallDescriptorEiPPNS1_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %1, ptr noundef nonnull align 8 dereferenceable(161) %i.aa, ptr noundef %i.i, i32 noundef 6, ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler7Linkage24GetRuntimeCallDescriptorEPNS0_4ZoneENS0_7Runtime10FunctionIdEiNS_4base5FlagsINS1_8Operator8PropertyEhhEENS8_INS1_14CallDescriptor4FlagEiiEENS1_16LazyDeoptOnThrowE(ptr noundef, i32 noundef, i32 noundef, i8, i32, i8 noundef zeroext) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler16LoadRootRegisterEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler4LoadENS0_11MachineTypeEPNS1_4NodeEi(ptr noundef nonnull align 8 dereferenceable(161), i16, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler16ExternalConstantENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(161), i64) local_unnamed_addr #3

declare i64 @_ZN2v88internal17ExternalReference6CreateENS0_7Runtime10FunctionIdE(i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler13Int32ConstantEi(ptr noundef nonnull align 8 dereferenceable(161), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler13fast_api_call18FastApiCallBuilder5BuildENS1_19FastApiCallFunctionEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 %1, ptr %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.std::array", align 8       ; 4 uses
  %5 = alloca %"struct.std::array", align 8       ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"struct.std::array", align 8       ; 4 uses
  %7 = alloca %"struct.std::array", align 8       ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel", align 8 ; 10 uses
  %9 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel", align 8 ; 10 uses
  %10 = alloca %"class.v8::internal::TNode.8", align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel", align 8 ; 10 uses
  %12 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel", align 8 ; 10 uses
  %13 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel.12", align 8 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4              ; 4 uses
  %.not.i.i = icmp eq i32 %i.g, 0                 ; 2 uses
  br i1 %.not.i.i, label %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit, label %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.i

_ZNK2v813CFunctionInfo10HasOptionsEv.exit.i:      ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = add i32 %i.g, -1
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1
  %.fr.i = freeze i8 %i.m
  %i.n = icmp eq i8 %.fr.i, -1
  %i.o = sext i1 %i.n to i32
  %spec.select.i = add i32 %i.g, %i.o
  br label %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit

_ZNK2v813CFunctionInfo13ArgumentCountEv.exit:     ; preds = %bb.a, %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.i
  %i.p = phi i32 [ 0, %bb.a ], [ %spec.select.i, %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 19 uses
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 124
  %i.t = load i32, ptr %i.s, align 4, !noalias !13 ; 2 uses
  store i8 0, ptr %8, align 8, !alias.scope !13
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  store i32 1, ptr %i.u, align 4, !alias.scope !13
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.t, ptr %i.v, align 8, !alias.scope !13
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 0, ptr %i.w, align 8, !alias.scope !13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  store i8 0, ptr %9, align 8, !alias.scope !14
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store i32 0, ptr %i.x, align 4, !alias.scope !14
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.t, ptr %i.y, align 8, !alias.scope !14
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i64 0, ptr %i.z, align 8, !alias.scope !14
  br i1 %.not.i.i, label %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.thread, label %_ZNK2v813CFunctionInfo10HasOptionsEv.exit

_ZNK2v813CFunctionInfo10HasOptionsEv.exit:        ; preds = %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = add i32 %i.g, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %.fr = freeze i8 %i.af
  %i.ag = icmp eq i8 %.fr, -1
  %spec.select = select i1 %i.ag, i32 3, i32 2
  br label %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.thread

_ZNK2v813CFunctionInfo10HasOptionsEv.exit.thread: ; preds = %_ZNK2v813CFunctionInfo10HasOptionsEv.exit, %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit
  %i.ah = phi i32 [ 2, %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit ], [ %spec.select, %_ZNK2v813CFunctionInfo10HasOptionsEv.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = add i32 %i.p, 1
  %i.am = add i32 %i.al, %i.ah                    ; 3 uses
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #6
  unreachable

bb.c:                                             ; preds = %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.thread
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3                ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = sub i64 %i.ar, %i.at
  %i.av = icmp ugt i64 %i.ap, %i.au
  br i1 %i.av, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit, !prof !20

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ak, i64 noundef %i.ap) #7
  %.pre.i.i = load i64, ptr %i.as, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.aw = phi i64 [ %.pre.i.i, %bb.d ], [ %i.at, %bb.c ] ; 2 uses
  %i.ax = inttoptr i64 %i.aw to ptr               ; 4 uses
  %i.ay = add i64 %i.aw, %i.ap
  store i64 %i.ay, ptr %i.as, align 8
  %i.az = load ptr, ptr %i.q, align 8
  %i.ba = tail call i64 @_ZN2v88internal17ExternalReference6CreateEmNS1_4TypeE(i64 noundef %1, i32 noundef 10) #7
  %i.bb = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler16ExternalConstantENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(161) %i.az, i64 %i.ba) #7
  store ptr %i.bb, ptr %i.ax, align 8
  %i.bc = icmp sgt i32 %i.p, 0                    ; 2 uses
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNKSt8functionIFPN2v88internal8compiler4NodeEiPNS2_19GraphAssemblerLabelILm0EEEEEclEiS7_.exit, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit
  %i.be = load ptr, ptr %i.ai, align 8
  %i.bf = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.bg = load i32, ptr %i.f, align 4             ; 2 uses
  %.not.i53 = icmp eq i32 %i.bg, 0
  br i1 %.not.i53, label %_ZNK2v813CFunctionInfo10HasOptionsEv.exit54, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = add i32 %i.bg, -1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = icmp eq i8 %i.bm, -1
  %i.bo = zext i1 %i.bn to i32
  br label %_ZNK2v813CFunctionInfo10HasOptionsEv.exit54

_ZNK2v813CFunctionInfo10HasOptionsEv.exit54:      ; preds = %._crit_edge, %bb.e
  %i.bp = phi i32 [ 0, %._crit_edge ], [ %i.bo, %bb.e ]
  %i.bq = add nsw i32 %i.bp, %i.p
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = shl nsw i64 %i.br, 1
  %i.bt = and i64 %i.bs, -8
  %i.bu = add nsw i64 %i.bt, 32                   ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %i.bz = sub i64 %i.bw, %i.by
  %i.ca = icmp ugt i64 %i.bu, %i.bz
  br i1 %i.ca, label %bb.f, label %_ZN2v88internal16SignatureBuilderINS0_9SignatureINS0_11MachineTypeEEES3_EC2EPNS0_4ZoneEmm.exit, !prof !20

bb.f:                                             ; preds = %_ZNK2v813CFunctionInfo10HasOptionsEv.exit54
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, i64 noundef %i.bu) #7
  %.pre.i.i55 = load i64, ptr %i.bx, align 8
  br label %_ZN2v88internal16SignatureBuilderINS0_9SignatureINS0_11MachineTypeEEES3_EC2EPNS0_4ZoneEmm.exit

_ZN2v88internal16SignatureBuilderINS0_9SignatureINS0_11MachineTypeEEES3_EC2EPNS0_4ZoneEmm.exit: ; preds = %_ZNK2v813CFunctionInfo10HasOptionsEv.exit54, %bb.f
  %i.cb = phi i64 [ %.pre.i.i55, %bb.f ], [ %i.by, %_ZNK2v813CFunctionInfo10HasOptionsEv.exit54 ] ; 2 uses
  %i.cc = inttoptr i64 %i.cb to ptr               ; 7 uses
  %i.cd = add i64 %i.cb, %i.bu
  store i64 %i.cd, ptr %i.bx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 2 uses
  store i64 1, ptr %i.cc, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %i.br, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %i.ce, ptr %i.cg, align 8
  %i.ch = load i8, ptr %2, align 4
  %i.ci = zext nneg i8 %i.ch to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN2v88internal8compiler13fast_api_call18FastApiCallBuilder5BuildENS1_19FastApiCallFunctionEPNS1_4NodeE.1, i64 %i.ci
  %switch.load = load i16, ptr %switch.gep, align 2
  store i16 %switch.load, ptr %i.ce, align 8
  br i1 %i.bc, label %.lr.ph89, label %._crit_edge90

.lr.ph89:                                         ; preds = %_ZN2v88internal16SignatureBuilderINS0_9SignatureINS0_11MachineTypeEEES3_EC2EPNS0_4ZoneEmm.exit
  %i.cj = getelementptr i8, ptr %i.cc, i64 26
  %wide.trip.count93 = zext nneg i32 %i.p to i64  ; 2 uses
  br label %switch.lookup

bb.g:                                             ; preds = %.lr.ph, %_ZNKSt8functionIFPN2v88internal8compiler4NodeEiPNS2_19GraphAssemblerLabelILm0EEEEEclEiS7_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNKSt8functionIFPN2v88internal8compiler4NodeEiPNS2_19GraphAssemblerLabelILm0EEEEEclEiS7_.exit ] ; 2 uses
  %i.ck = load ptr, ptr %i.bd, align 8, !nonnull !21, !align !22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cl = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.cl, ptr %i.d, align 4
  store ptr %9, ptr %i.e, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %.not.i.i56 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i56, label %bb.h, label %_ZNKSt8functionIFPN2v88internal8compiler4NodeEiPNS2_19GraphAssemblerLabelILm0EEEEEclEiS7_.exit

bb.h:                                             ; preds = %bb.g
  call void @_ZSt25__throw_bad_function_callv() #6
  unreachable

_ZNKSt8functionIFPN2v88internal8compiler4NodeEiPNS2_19GraphAssemblerLabelILm0EEEEEclEiS7_.exit: ; preds = %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #7, !inline_history !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next
  store ptr %i.cq, ptr %i.cr, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !24

._crit_edge90:                                    ; preds = %switch.lookup, %_ZN2v88internal16SignatureBuilderINS0_9SignatureINS0_11MachineTypeEEES3_EC2EPNS0_4ZoneEmm.exit
  %.sroa.9.0.lcssa = phi i64 [ 0, %_ZN2v88internal16SignatureBuilderINS0_9SignatureINS0_11MachineTypeEEES3_EC2EPNS0_4ZoneEmm.exit ], [ %wide.trip.count93, %switch.lookup ]
  %i.cs = load i32, ptr %i.f, align 4             ; 2 uses
  %.not.i57 = icmp eq i32 %i.cs, 0
  br i1 %.not.i57, label %_ZNK2v813CFunctionInfo10HasOptionsEv.exit58.thread, label %_ZNK2v813CFunctionInfo10HasOptionsEv.exit58

_ZNK2v813CFunctionInfo10HasOptionsEv.exit58:      ; preds = %._crit_edge90
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = add i32 %i.cs, -1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = icmp eq i8 %i.cy, -1
  br i1 %i.cz, label %bb.i, label %_ZNK2v813CFunctionInfo10HasOptionsEv.exit58.thread

switch.lookup:                                    ; preds = %.lr.ph89, %switch.lookup
  %.sroa.9.087 = phi i64 [ 0, %.lr.ph89 ], [ %i.de, %switch.lookup ] ; 3 uses
  %indvars92 = trunc i64 %.sroa.9.087 to i32
  %i.da = call noundef nonnull align 1 dereferenceable(2) ptr @_ZNK2v813CFunctionInfo12ArgumentInfoEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %indvars92) #7
  %i.db = load i16, ptr %i.da, align 1
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler13fast_api_call18FastApiCallBuilder5BuildENS1_19FastApiCallFunctionEPNS1_4NodeE:bb.a
  %i.im = call noundef ptr %i.il(ptr noundef nonnull align 8 dereferenceable(32) %i.ih) #7, !inline_history !47
  %i.in = load ptr, ptr %i.q, align 8             ; 2 uses
  call void @_ZN2v88internal8compiler14GraphAssembler10MergeStateIJPNS1_4NodeEEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIS5_vJDpT_EE4TypeES9_(ptr noundef nonnull align 8 dereferenceable(161) %i.in, ptr noundef nonnull %13, ptr noundef %i.im)
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.io, i8 0, i64 16, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt8functionIFPN2v88internal8compiler4NodeEvEEclEv.exit, %_ZNKSt8functionIFPN2v88internal8compiler4NodeEPKNS0_13CFunctionInfoES4_EEclES7_S4_.exit
  %i.ip = load ptr, ptr %i.q, align 8             ; 6 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.is = load <2 x ptr>, ptr %i.iq, align 8
  store <2 x ptr> %i.is, ptr %i.ir, align 8
  store i8 1, ptr %8, align 8
  %i.it = load i64, ptr %i.w, align 8
  %i.iu = icmp ugt i64 %i.it, 1
  %i.iv = load i32, ptr %i.u, align 4
  %i.iw = icmp eq i32 %i.iv, 2
  %or.cond84 = select i1 %i.iu, i1 true, i1 %i.iw
  br i1 %or.cond84, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ix = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %i.ip, ptr noundef %i.iy) #7 ; 0 uses
  %i.ja = load ptr, ptr %i.iq, align 8
  %i.jb = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %i.ip, ptr noundef %i.ja) #7 ; 0 uses
  br label %_ZN2v88internal8compiler14GraphAssembler4BindILm0EEEvPNS1_19GraphAssemblerLabelIXT_EEE.exit66

bb.v:                                             ; preds = %bb.t
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ip, i64 40 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.je = load ptr, ptr %i.jd, align 8            ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, i32 noundef 1) #7
  %i.jj = load ptr, ptr %i.jc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store ptr %i.jj, ptr %4, align 8
  %i.jk = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.jf, ptr noundef %i.ji, i32 noundef 1, ptr noundef nonnull %4, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.jl = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %i.ip, ptr noundef %i.jk) #7
  store ptr %i.jl, ptr %i.jc, align 8
  br label %_ZN2v88internal8compiler14GraphAssembler4BindILm0EEEvPNS1_19GraphAssemblerLabelIXT_EEE.exit66

_ZN2v88internal8compiler14GraphAssembler4BindILm0EEEvPNS1_19GraphAssemblerLabelIXT_EEE.exit66: ; preds = %bb.u, %bb.v
  %i.jm = load ptr, ptr %i.q, align 8             ; 2 uses
  call void @_ZN2v88internal8compiler14GraphAssembler10MergeStateIJPNS1_4NodeEEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIS5_vJDpT_EE4TypeES9_(ptr noundef nonnull align 8 dereferenceable(161) %i.jm, ptr noundef nonnull %13, ptr noundef %i.gz)
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, i8 0, i64 16, i1 false)
  %i.jo = load ptr, ptr %i.q, align 8
  call void @_ZN2v88internal8compiler14GraphAssembler4BindILm1EEEvPNS1_19GraphAssemblerLabelIXT_EEE(ptr noundef nonnull align 8 dereferenceable(161) %i.jo, ptr noundef nonnull %13)
  %i.jp = load ptr, ptr %i.hg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  ret ptr %i.jp
}

declare i64 @_ZN2v88internal17ExternalReference6CreateEmNS1_4TypeE(i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2v88internal8compiler14GraphAssembler9StackSlotEiib(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.8") align 8, ptr noundef nonnull align 8 dereferenceable(161), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare i64 @_ZN2v88internal17ExternalReference15isolate_addressEv() local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler18AdaptLocalArgumentEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler7Linkage24GetSimplifiedCDescriptorEPNS0_4ZoneEPKNS0_9SignatureINS0_11MachineTypeEEENS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENSB_INS1_8Operator8PropertyEhhEE(ptr noundef, ptr noundef, i32, i8) local_unnamed_addr #3

declare i64 @_ZN2v88internal17ExternalReference6CreateENS0_16IsolateAddressIdEPNS0_7IsolateE(i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler11IntPtrEqualEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler11UnreachableEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler14GraphAssembler4BindILm1EEEvPNS1_19GraphAssemblerLabelIXT_EEE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.f, align 8
  store i8 1, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 2
  br i1 %i.l, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.m) #7 ; 0 uses
  %i.o = load ptr, ptr %i.d, align 8
  %i.p = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.o) #7 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.r) #7 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i32 noundef 1) #7
  %i.z = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store ptr %i.z, ptr %2, align 8
  %i.aa = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.v, ptr noundef %i.y, i32 noundef 1, ptr noundef nonnull %2, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.ab = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.aa) #7
  store ptr %i.ab, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler13fast_api_call16BuildFastApiCallEPNS0_7IsolateEPNS1_7TFGraphEPNS1_14GraphAssemblerENS1_19FastApiCallFunctionEPNS1_4NodeERKSt8functionIFSB_iPNS1_19GraphAssemblerLabelILm0EEEEERKSC_IFSB_PKNS_13CFunctionInfoESB_EERKSC_IFvSB_EERKSC_IFSB_vEE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9) local_unnamed_addr #0 {
bb.a:
  %10 = alloca %"class.v8::internal::compiler::fast_api_call::FastApiCallBuilder", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  store ptr %0, ptr %10, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %6, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %7, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %8, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %9, ptr %i.f, align 8
  %i.g = call noundef ptr @_ZN2v88internal8compiler13fast_api_call18FastApiCallBuilder5BuildENS1_19FastApiCallFunctionEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(56) %10, i64 %3, ptr %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, ptr } @_ZN2v88internal8compiler13fast_api_call20GetFastApiCallTargetEPNS1_12JSHeapBrokerENS1_23FunctionTemplateInfoRefEm(ptr noundef %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::FunctionTemplateInfoRef", align 8 ; 3 uses
  %4 = alloca %"class.v8::internal::ZoneVector.29", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::ZoneVector.30", align 8 ; 4 uses
  store ptr %1, ptr %3, align 8
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 671), align 1, !range !48, !noundef !21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @_ZNK2v88internal8compiler23FunctionTemplateInfoRef12c_signaturesEPNS1_12JSHeapBrokerE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::ZoneVector.29") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0) #7
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not30.not = icmp eq ptr %i.d, %i.f
  br i1 %.not30.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit.thread20
  %.031 = phi i64 [ %i.aw, %_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit.thread20 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.031
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit, label %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.i

_ZNK2v813CFunctionInfo10HasOptionsEv.exit.i:      ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = add i32 %i.o, -1                         ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %.fr.i = freeze i8 %i.u
  %i.v = icmp eq i8 %.fr.i, -1
  %i.w = sext i1 %i.v to i32
  %i.x = add i32 %i.r, %i.w
  %i.y = zext i32 %i.x to i64
  br label %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit

_ZNK2v813CFunctionInfo13ArgumentCountEv.exit:     ; preds = %.lr.ph, %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.i
  %i.z = phi i64 [ 4294967295, %.lr.ph ], [ %i.y, %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.i ]
  %i.aa = icmp eq i64 %2, %i.z
  br i1 %i.aa, label %bb.c, label %_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit.thread20

bb.c:                                             ; preds = %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %storemerge.i = phi i32 [ 0, %bb.c ], [ %i.ap, %bb.e ] ; 3 uses
  %i.ac = load i32, ptr %i.n, align 4             ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit.thread, label %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit.i

_ZNK2v813CFunctionInfo13ArgumentCountEv.exit.i:   ; preds = %bb.d
  %i.ad = load ptr, ptr %i.ab, align 8
  %i.ae = add i32 %i.ac, -1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %.fr.i.i = freeze i8 %i.ah
  %i.ai = icmp eq i8 %.fr.i.i, -1
  %i.aj = sext i1 %i.ai to i32
  %spec.select.i.i = add i32 %i.ac, %i.aj
  %i.ak = icmp ult i32 %storemerge.i, %spec.select.i.i
  br i1 %i.ak, label %bb.e, label %_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit.thread

bb.e:                                             ; preds = %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit.i
  %i.al = call noundef nonnull align 1 dereferenceable(2) ptr @_ZNK2v813CFunctionInfo12ArgumentInfoEj(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i32 noundef %storemerge.i) #7
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = and i8 %i.an, 4
  %.not.i = icmp eq i8 %i.ao, 0
  %i.ap = add nuw i32 %storemerge.i, 1
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit, !llvm.loop !5

_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit: ; preds = %bb.e
  %i.aq = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit.thread, label %_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit.thread20

_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit.thread: ; preds = %_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit, %bb.d, %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @_ZNK2v88internal8compiler23FunctionTemplateInfoRef11c_functionsEPNS1_12JSHeapBrokerE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::ZoneVector.30") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0) #7
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.031
  %i.av = load i64, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %.loopexit

_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit.thread20: ; preds = %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit, %_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit
  %i.aw = add nuw i64 %.031, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.j
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !49

.loopexit:                                        ; preds = %_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit.thread20, %bb.b, %_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit.thread
  %spec.select18 = phi ptr [ %i.m, %_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit.thread ], [ null, %bb.b ], [ null, %_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit.thread20 ]
  %spec.select = phi i64 [ %i.av, %_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit.thread ], [ 0, %bb.b ], [ 0, %_ZN2v88internal8compiler13fast_api_call24CanOptimizeFastSignatureEPKNS_13CFunctionInfoE.exit.thread20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit
  %.sroa.0.4 = phi i64 [ %spec.select, %.loopexit ], [ 0, %bb.a ]
  %.sroa.4.4 = phi ptr [ %spec.select18, %.loopexit ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.4, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.4.4, 1
  ret { i64, ptr } %.fca.1.insert
}

declare void @_ZNK2v88internal8compiler23FunctionTemplateInfoRef12c_signaturesEPNS1_12JSHeapBrokerE(ptr dead_on_unwind writable sret(%"class.v8::internal::ZoneVector.29") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare void @_ZNK2v88internal8compiler23FunctionTemplateInfoRef11c_functionsEPNS1_12JSHeapBrokerE(ptr dead_on_unwind writable sret(%"class.v8::internal::ZoneVector.30") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler14GraphAssembler9GotoIfNotIJEEEvPNS1_4NodeEPNS1_6detail29GraphAssemblerLabelForXHelperIS5_vJDpT_EE4TypeENS0_10BranchHintES9_(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.std::array", align 8       ; 4 uses
  %5 = alloca %"struct.std::array", align 8       ; 4 uses
  %6 = alloca %"struct.std::array.111", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6BranchENS0_10BranchHintENS1_15BranchSemanticsE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 noundef zeroext %3, i32 noundef %i.g) #7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  store ptr %1, ptr %6, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.k, align 8
  %i.l = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef %i.h, i32 noundef 2, ptr noundef nonnull %6, i1 noundef zeroext false) #7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  %i.m = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder7IfFalseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  store ptr %i.l, ptr %5, align 8
  %i.r = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.n, ptr noundef %i.q, i32 noundef 1, ptr noundef nonnull %5, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  store ptr %i.r, ptr %i.i, align 8
  call void @_ZN2v88internal8compiler14GraphAssembler10MergeStateIJEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIPNS1_4NodeEvJDpT_EE4TypeES9_(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %2)
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6IfTrueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store ptr %i.l, ptr %4, align 8
  %i.x = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.t, ptr noundef %i.w, i32 noundef 1, ptr noundef nonnull %4, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.y = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.x) #7
  store ptr %i.y, ptr %i.i, align 8
  ret void
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6BranchENS0_10BranchHintENS1_15BranchSemanticsE(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder7IfFalseEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler14GraphAssembler10MergeStateIJEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIPNS1_4NodeEvJDpT_EE4TypeES9_(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.112", align 8   ; 6 uses
  %3 = alloca %"struct.std::array.111", align 8   ; 5 uses
  %4 = alloca %"struct.std::array.111", align 16  ; 4 uses
  %5 = alloca %"struct.std::array.112", align 8   ; 6 uses
  %6 = alloca %"struct.std::array.111", align 8   ; 5 uses
  %7 = alloca %"struct.std::array.111", align 16  ; 4 uses
  %8 = alloca %"struct.std::array.111", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load <2 x ptr>, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.j = load i32, ptr %i.i, align 4
  %.not = icmp eq i32 %i.h, %i.j
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder8LoopExitEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #7
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  store ptr %i.q, ptr %8, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.v, ptr %i.w, align 8
  %i.x = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.m, ptr noundef %i.p, i32 noundef 2, ptr noundef nonnull %8, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  %i.y = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.x) #7 ; 0 uses
  %i.z = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder14LoopExitEffectEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.ae = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.ae, ptr %7, align 16
  %i.af = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, ptr noundef %i.ad, i32 noundef 2, ptr noundef nonnull %7, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  %i.ag = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.af) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.ak = icmp eq i32 %i.f, 0
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4LoopEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i32 noundef 2) #7
  %i.ar = load ptr, ptr %i.b, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  store ptr %i.ar, ptr %6, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.an, ptr noundef %i.aq, i32 noundef 2, ptr noundef nonnull %6, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i32 noundef 2) #7
  %i.ba = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bb = load ptr, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  store ptr %i.ba, ptr %5, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_1
