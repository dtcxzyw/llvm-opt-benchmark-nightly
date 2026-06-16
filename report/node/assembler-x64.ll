inline.NumInlined: 3306
inline.NumDeleted: 586
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

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
%"struct.v8::OOMDetails" = type { i8, ptr }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.v8::internal::Operand" = type { %union.anon }
%union.anon = type { %"struct.v8::internal::Operand::LabelOperand" }
%"struct.v8::internal::Operand::LabelOperand" = type { i8, i8, i8, ptr }
%"class.v8::base::CPU" = type { [13 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::tuple.577" = type { %"struct.std::_Tuple_impl.578" }
%"struct.std::_Tuple_impl.578" = type { %"struct.std::_Head_base.579" }
%"struct.std::_Head_base.579" = type { ptr }
%"class.std::tuple.560" = type { i8 }
%"class.v8::internal::RelocInfo" = type { i64, i8, i64, i64 }
%"struct.v8::internal::JumpOptimizationInfo::JumpInfo" = type { i32, i32, i32 }
%"class.v8::internal::ExternalReference" = type { i64 }
%"class.v8::internal::Label" = type { i32, i32 }
%"class.v8::internal::HeapNumberRequest" = type <{ double, i32, [4 x i8] }>

$_ZN2v88internal9Assembler9fma_instrINS0_11XMMRegisterES3_S3_EEvhT_T0_T1_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE = comdat any

$_ZN2v88internal9Assembler9fma_instrINS0_11YMMRegisterES3_S3_EEvhT_T0_T1_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE = comdat any

$_ZN2v88internal9Assembler9fma_instrINS0_11XMMRegisterES3_NS0_7OperandEEEvhT_T0_T1_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE = comdat any

$_ZN2v88internal9Assembler9fma_instrINS0_11YMMRegisterES3_NS0_7OperandEEEvhT_T0_T1_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE = comdat any

$_ZN2v88internal9Assembler6vinstrINS0_11YMMRegisterES3_S3_EEvhT_T0_T1_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE = comdat any

$_ZN2v88internal9Assembler6vinstrINS0_11YMMRegisterENS0_11XMMRegisterES4_EEvhT_T0_T1_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE = comdat any

$_ZN2v88internal9Assembler6vinstrINS0_11YMMRegisterES3_NS0_7OperandEEEvhT_T0_T1_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE = comdat any

$_ZN2v88internal9Assembler6vinstrINS0_11YMMRegisterES3_NS0_11XMMRegisterEEEvhT_T0_T1_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE = comdat any

$_ZN2v88internal9Assembler6vinstrINS0_11YMMRegisterENS0_11XMMRegisterENS0_7OperandEEEvhT_T0_T1_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE = comdat any

$_ZN2v88internal9Assembler6vinstrINS0_11YMMRegisterENS0_11XMMRegisterES3_EEvhT_T0_T1_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE = comdat any

$_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEEixERS7_ = comdat any

$_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixEOi = comdat any

$_ZNSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE9push_backEOS3_ = comdat any

$_ZN2v88internal9AssemblerD2Ev = comdat any

$_ZN2v88internal9AssemblerD0Ev = comdat any

$_ZN2v88internal13AssemblerBase21AbortedCodeGenerationEv = comdat any

$_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal20JumpOptimizationInfo8JumpInfoEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_ = comdat any

$_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJiEEEvDpOT_ = comdat any

$_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb = comdat any

$_ZNSt8_Rb_treeIPN2v88internal5LabelESt4pairIKS3_St6vectorIiSaIiEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIPN2v88internal5LabelESt4pairIKS3_St6vectorIiSaIiEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS5_ = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"cpu.has_sse2()\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"cpu.has_cmov()\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"atom\00", align 1
@_ZN2v88internal11CpuFeatures23supports_wasm_simd_128_E = external local_unnamed_addr global i8, align 1
@_ZN2v88internal11CpuFeatures15supports_cetss_E = external local_unnamed_addr global i8, align 1
@.str.5 = private unnamed_addr constant [149 x i8] c"SSE3=%d SSSE3=%d SSE4_1=%d SSE4_2=%d SAHF=%d AVX=%d AVX2=%d AVX_VNNI=%d AVX_VNNI_INT8=%d FMA3=%d F16C=%d BMI1=%d BMI2=%d LZCNT=%d POPCNT=%d ATOM=%d\0A\00", align 1
@_ZTVN2v88internal9AssemblerE = hidden unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal9AssemblerD2Ev, ptr @_ZN2v88internal9AssemblerD0Ev, ptr @_ZN2v88internal13AssemblerBase21AbortedCodeGenerationEv, ptr @_ZN2v88internal9Assembler24PatchInHeapNumberRequestEmNS0_6HandleINS0_10HeapNumberEEE] }, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"is_int8(disp)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"jump_opt->is_optimizing()\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Assembler::GrowBuffer\00", align 1
@_ZN2v88internal2V813kNoOOMDetailsE = external global %"struct.v8::OOMDetails", align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"f\90\0F\1F\00\0F\1F@\00f\0F\1FD\00\00\0F\1F\80\00\00\00\00f\0F\1F\84\00\00\00\00\00\00", align 1
@__const._ZN2v88internal9Assembler3NopEi.kNopOffsets = private unnamed_addr constant [10 x i8] c"\00\01\00\02\05\0A\09\0F\17\16", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"cpuid\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"label->is_bound()\00", align 1
@_ZN2v88internal9RelocInfo10kApplyMaskE = hidden local_unnamed_addr constant i32 17506, align 4
@_ZN2v88internal11CpuFeatures10supported_E = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1

@_ZN2v88internal7OperandC1ES1_i = hidden unnamed_addr alias void (ptr, i64, ptr, i32), ptr @_ZN2v88internal7OperandC2ES1_i
@_ZN2v88internal9AssemblerC1ERKNS0_16AssemblerOptionsESt10unique_ptrINS0_15AssemblerBufferESt14default_deleteIS6_EE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN2v88internal9AssemblerC2ERKNS0_16AssemblerOptionsESt10unique_ptrINS0_15AssemblerBufferESt14default_deleteIS6_EE

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9Assembler9fma_instrINS0_11XMMRegisterES3_S3_EEvhT_T0_T1_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i8 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %4, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = lshr i8 %4, 3
  %i.m = zext nneg i8 %i.l to i32
  %i.n = icmp ne i32 %7, 1
  %i.o = or i32 %8, %i.m
  %i.p = icmp ne i32 %i.o, 0
  %or.cond3.i = or i1 %i.n, %i.p
  %i.q = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.q)
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.r = shl nuw i8 %2, 4
  %i.s = and i8 %i.r, -128
  %i.t = shl nuw nsw i8 %4, 2
  %i.u = and i8 %i.t, 32
  %i.v = or disjoint i8 %i.u, %i.s
  %i.w = xor i8 %i.v, -32
  %i.x = trunc i32 %7 to i8
  %i.y = or i8 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.aa = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = shl nuw nsw i8 %3, 3
  %i.ac = xor i8 %i.ab, 120
  %i.ad = or i32 %6, %5
  %i.ae = or i32 %i.ad, %8
  %i.af = trunc i32 %i.ae to i8
  %i.ag = or i8 %i.ac, %i.af
  store i8 %i.ag, ptr %i.z, align 1, !alias.scope !6
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.ah = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = shl nuw nsw i8 %2, 1
  %i.aj = and i8 %i.ai, 16
  %i.ak = or disjoint i8 %i.aj, %3
  %i.al = xor i8 %i.ak, -1
  %i.am = shl i8 %i.al, 3
  %i.an = or i32 %6, %5
  %i.ao = trunc i32 %i.an to i8
  %i.ap = or i8 %i.am, %i.ao
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink14 = phi i8 [ -60, %bb.c ], [ -59, %bb.d ]
  %.sink = phi i8 [ %i.y, %bb.c ], [ %i.ap, %bb.d ]
  %.sink20.i = phi i64 [ 3, %bb.c ], [ 2, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink14, ptr %i.j, align 1
  store i8 %.sink, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 %1, ptr %i.ar, align 1, !alias.scope !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  tail call void @llvm.assume(i1 %i.q)
  %i.at = shl nuw nsw i8 %2, 3
  %i.au = and i8 %4, 7
  %i.av = or disjoint i8 %i.au, %i.at
  %i.aw = or i8 %i.av, -64
  store i8 %i.aw, ptr %i.as, align 1, !alias.scope !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store ptr %i.ax, ptr %i.c, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterES2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = shl nuw nsw i8 %1, 3
  %i.c = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.c)
  %i.d = and i8 %2, 7
  %i.e = or disjoint i8 %i.d, %i.b
  %i.f = or i8 %i.e, -64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store i8 %i.f, ptr %i.h, align 1, !alias.scope !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.i, ptr %i.g, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9Assembler9fma_instrINS0_11YMMRegisterES3_S3_EEvhT_T0_T1_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i8 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %4, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = lshr i8 %4, 3
  %i.m = zext nneg i8 %i.l to i32
  %i.n = icmp ne i32 %7, 1
  %i.o = or i32 %8, %i.m
  %i.p = icmp ne i32 %i.o, 0
  %or.cond3.i = or i1 %i.n, %i.p
  %i.q = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.q)
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.r = shl nuw i8 %2, 4
  %i.s = and i8 %i.r, -128
  %i.t = shl nuw nsw i8 %4, 2
  %i.u = and i8 %i.t, 32
  %i.v = or disjoint i8 %i.u, %i.s
  %i.w = xor i8 %i.v, -32
  %i.x = trunc i32 %7 to i8
  %i.y = or i8 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.aa = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = shl nuw nsw i8 %3, 3
  %i.ac = xor i8 %i.ab, 120
  %i.ad = or i32 %6, %5
  %i.ae = or i32 %i.ad, %8
  %i.af = trunc i32 %i.ae to i8
  %i.ag = or i8 %i.ac, %i.af
  store i8 %i.ag, ptr %i.z, align 1, !alias.scope !18
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.ah = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = shl nuw nsw i8 %2, 1
  %i.aj = and i8 %i.ai, 16
  %i.ak = or disjoint i8 %i.aj, %3
  %i.al = xor i8 %i.ak, -1
  %i.am = shl i8 %i.al, 3
  %i.an = or i32 %6, %5
  %i.ao = trunc i32 %i.an to i8
  %i.ap = or i8 %i.am, %i.ao
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink14 = phi i8 [ -60, %bb.c ], [ -59, %bb.d ]
  %.sink = phi i8 [ %i.y, %bb.c ], [ %i.ap, %bb.d ]
  %.sink20.i = phi i64 [ 3, %bb.c ], [ 2, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink14, ptr %i.j, align 1
  store i8 %.sink, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 %1, ptr %i.ar, align 1, !alias.scope !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  tail call void @llvm.assume(i1 %i.q)
  %i.at = shl nuw nsw i8 %2, 3
  %i.au = and i8 %4, 7
  %i.av = or disjoint i8 %i.au, %i.at
  %i.aw = or i8 %i.av, -64
  store i8 %i.aw, ptr %i.as, align 1, !alias.scope !24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store ptr %i.ax, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9Assembler9fma_instrINS0_11XMMRegisterES3_NS0_7OperandEEEvhT_T0_T1_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i64 %4, ptr %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %10 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %4, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %4 to i1
  %i.l = icmp ne i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = icmp ne i32 %8, 1
  %or.cond.i = or i1 %i.l, %i.m
  %i.n = icmp ne i32 %9, 0
  %or.cond3.i = or i1 %or.cond.i, %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.p = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.p)
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.q = lshr i8 %2, 1
  %i.r = and i8 %i.q, 4
  %i.s = or i8 %i.r, %.sroa.3.0.extract.trunc.i
  %i.t = xor i8 %i.s, -1
  %i.u = shl i8 %i.t, 5
  %i.v = trunc i32 %8 to i8
  %i.w = or i8 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.y = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = shl nuw nsw i8 %3, 3
  %i.aa = xor i8 %i.z, 120
  %i.ab = or i32 %7, %6
  %i.ac = or i32 %i.ab, %9
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = or i8 %i.aa, %i.ad
  store i8 %i.ae, ptr %i.x, align 1, !alias.scope !27
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.af = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = shl nuw nsw i8 %2, 1
  %i.ah = and i8 %i.ag, 16
  %i.ai = or disjoint i8 %i.ah, %3
  %i.aj = xor i8 %i.ai, -1
  %i.ak = shl i8 %i.aj, 3
  %i.al = or i32 %7, %6
  %i.am = trunc i32 %i.al to i8
  %i.an = or i8 %i.ak, %i.am
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink15 = phi i8 [ -60, %bb.c ], [ -59, %bb.d ]
  %.sink = phi i8 [ %i.w, %bb.c ], [ %i.an, %bb.d ]
  %.sink21.i = phi i64 [ 3, %bb.c ], [ 2, %bb.d ]
  store i8 %.sink15, ptr %i.j, align 1
  store i8 %.sink, ptr %i.o, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 %1, ptr %i.ao, align 1, !alias.scope !30
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 4 uses
  store ptr %i.ap, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.p)
  %i.aq = and i8 %2, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i64 %4, ptr %10, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.ar, align 8
  %i.as = ptrtoint ptr %5 to i64                  ; 3 uses
  %i.at = lshr i64 %4, 16                         ; 2 uses
  %i.au = trunc i64 %i.at to i8                   ; 2 uses
  %i.av = trunc i64 %i.at to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.aw = zext nneg i8 %i.aq to i32
  %i.ax = sext i8 %i.au to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.aw, ptr noundef %5, i32 noundef %i.ax)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %i.ay = icmp ult ptr %5, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = shl nuw nsw i8 %i.aq, 3                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 2
  %i.bb = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bc = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.bd = icmp ugt ptr %5, inttoptr (i64 4 to ptr)
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = zext nneg i8 %i.az to i32
  %i.bf = or i32 %i.av, %i.be
  %i.bg = add nsw i64 %i.as, -2                   ; 2 uses
  %i.bh = add i64 %i.bg, %i.bb
  %i.bi = inttoptr i64 %i.bh to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.bi, align 1
  %i.bj = add i64 %i.bg, %i.bc
  %i.bk = inttoptr i64 %i.bj to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.bk, align 1
  store i32 %i.bf, ptr %i.ap, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bl = or i8 %i.az, %i.au
  %.not.i.i.i = icmp eq ptr %5, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = add nsw i64 %i.as, -2                   ; 2 uses
  %i.bn = add i64 %i.bm, %i.bb
  %i.bo = inttoptr i64 %i.bn to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.bo, align 1
  %i.bp = add i64 %i.bm, %i.bc
  %i.bq = inttoptr i64 %i.bp to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.bq, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.bl, ptr %i.ap, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.br = load ptr, ptr %i.c, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.as
  store ptr %i.bs, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i64 %2, ptr %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = and i8 %1, 7                             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %2, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.c, align 8
  %i.d = trunc i64 %2 to i1
  %i.e = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.f = lshr i64 %2, 16                          ; 2 uses
  %i.g = trunc i64 %i.f to i8                     ; 2 uses
  %i.h = trunc i64 %i.f to i32
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i8 %i.b to i32
  %i.j = sext i8 %i.g to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.i, ptr noundef %3, i32 noundef %i.j)
  br label %_ZN2v88internal9Assembler12emit_operandENS0_8RegisterENS0_7OperandE.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.k = icmp ult ptr %3, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.k)
  %i.l = shl nuw nsw i8 %i.b, 3                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = icmp ugt ptr %3, inttoptr (i64 4 to ptr)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = zext nneg i8 %i.l to i32
  %i.t = or i32 %i.h, %i.s
  %i.u = add nsw i64 %i.e, -2                     ; 2 uses
  %i.v = add i64 %i.u, %i.n
  %i.w = inttoptr i64 %i.v to ptr
  %.0.copyload.i29.i.i = load i16, ptr %i.w, align 1
  %i.x = add i64 %i.u, %i.q
  %i.y = inttoptr i64 %i.x to ptr
  store i16 %.0.copyload.i29.i.i, ptr %i.y, align 1
  store i32 %i.t, ptr %i.p, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.z = or i8 %i.l, %i.g
  %.not.i.i = icmp eq ptr %3, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add nsw i64 %i.e, -2                    ; 2 uses
  %i.ab = add i64 %i.aa, %i.n
  %i.ac = inttoptr i64 %i.ab to ptr
  %.0.copyload.i31.i.i = load i16, ptr %i.ac, align 1
  %i.ad = add i64 %i.aa, %i.q
  %i.ae = inttoptr i64 %i.ad to ptr
  store i16 %.0.copyload.i31.i.i, ptr %i.ae, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i8 %i.z, ptr %i.p, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.af = load ptr, ptr %i.o, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.e
  store ptr %i.ag, ptr %i.o, align 8
  br label %_ZN2v88internal9Assembler12emit_operandENS0_8RegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler12emit_operandENS0_8RegisterENS0_7OperandE.exit: ; preds = %bb.b, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9Assembler9fma_instrINS0_11YMMRegisterES3_NS0_7OperandEEEvhT_T0_T1_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i64 %4, ptr %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %10 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %4, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %4 to i1
  %i.l = icmp ne i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = icmp ne i32 %8, 1
  %or.cond.i = or i1 %i.l, %i.m
  %i.n = icmp ne i32 %9, 0
  %or.cond3.i = or i1 %or.cond.i, %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.p = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.p)
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.q = lshr i8 %2, 1
  %i.r = and i8 %i.q, 4
  %i.s = or i8 %i.r, %.sroa.3.0.extract.trunc.i
  %i.t = xor i8 %i.s, -1
  %i.u = shl i8 %i.t, 5
  %i.v = trunc i32 %8 to i8
  %i.w = or i8 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.y = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = shl nuw nsw i8 %3, 3
  %i.aa = xor i8 %i.z, 120
  %i.ab = or i32 %7, %6
  %i.ac = or i32 %i.ab, %9
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = or i8 %i.aa, %i.ad
  store i8 %i.ae, ptr %i.x, align 1, !alias.scope !33
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.af = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = shl nuw nsw i8 %2, 1
  %i.ah = and i8 %i.ag, 16
  %i.ai = or disjoint i8 %i.ah, %3
  %i.aj = xor i8 %i.ai, -1
  %i.ak = shl i8 %i.aj, 3
  %i.al = or i32 %7, %6
  %i.am = trunc i32 %i.al to i8
  %i.an = or i8 %i.ak, %i.am
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink15 = phi i8 [ -60, %bb.c ], [ -59, %bb.d ]
  %.sink = phi i8 [ %i.w, %bb.c ], [ %i.an, %bb.d ]
  %.sink21.i = phi i64 [ 3, %bb.c ], [ 2, %bb.d ]
  store i8 %.sink15, ptr %i.j, align 1
  store i8 %.sink, ptr %i.o, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 %1, ptr %i.ao, align 1, !alias.scope !36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 4 uses
  store ptr %i.ap, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.p)
  %i.aq = and i8 %2, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i64 %4, ptr %10, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.ar, align 8
  %i.as = ptrtoint ptr %5 to i64                  ; 3 uses
  %i.at = lshr i64 %4, 16                         ; 2 uses
  %i.au = trunc i64 %i.at to i8                   ; 2 uses
  %i.av = trunc i64 %i.at to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.aw = zext nneg i8 %i.aq to i32
  %i.ax = sext i8 %i.au to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.aw, ptr noundef %5, i32 noundef %i.ax)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %i.ay = icmp ult ptr %5, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = shl nuw nsw i8 %i.aq, 3                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 2
  %i.bb = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bc = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.bd = icmp ugt ptr %5, inttoptr (i64 4 to ptr)
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = zext nneg i8 %i.az to i32
  %i.bf = or i32 %i.av, %i.be
  %i.bg = add nsw i64 %i.as, -2                   ; 2 uses
  %i.bh = add i64 %i.bg, %i.bb
  %i.bi = inttoptr i64 %i.bh to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.bi, align 1
  %i.bj = add i64 %i.bg, %i.bc
  %i.bk = inttoptr i64 %i.bj to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.bk, align 1
  store i32 %i.bf, ptr %i.ap, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bl = or i8 %i.az, %i.au
  %.not.i.i.i = icmp eq ptr %5, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = add nsw i64 %i.as, -2                   ; 2 uses
  %i.bn = add i64 %i.bm, %i.bb
  %i.bo = inttoptr i64 %i.bn to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.bo, align 1
  %i.bp = add i64 %i.bm, %i.bc
  %i.bq = inttoptr i64 %i.bp to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.bq, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.bl, ptr %i.ap, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.br = load ptr, ptr %i.c, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.as
  store ptr %i.bs, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9Assembler6vinstrINS0_11YMMRegisterES3_S3_EEvhT_T0_T1_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i8 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %4, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = lshr i8 %4, 3
  %i.m = zext nneg i8 %i.l to i32
  %i.n = icmp ne i32 %6, 1
  %i.o = or i32 %7, %i.m
  %i.p = icmp ne i32 %i.o, 0
  %or.cond3.i = or i1 %i.n, %i.p
  %i.q = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.q)
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.r = shl nuw i8 %2, 4
  %i.s = and i8 %i.r, -128
  %i.t = shl nuw nsw i8 %4, 2
  %i.u = and i8 %i.t, 32
  %i.v = or disjoint i8 %i.u, %i.s
  %i.w = xor i8 %i.v, -32
  %i.x = trunc i32 %6 to i8
  %i.y = or i8 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.aa = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = shl nuw nsw i8 %3, 3
  %i.ac = or i32 %7, %5
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = xor i8 %i.ab, 124
  %i.af = or i8 %i.ae, %i.ad
  store i8 %i.af, ptr %i.z, align 1, !alias.scope !39
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.ag = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = shl nuw nsw i8 %2, 1
  %i.ai = and i8 %i.ah, 16
  %i.aj = or disjoint i8 %i.ai, %3
  %i.ak = xor i8 %i.aj, -1
  %i.al = shl i8 %i.ak, 3
  %i.am = trunc i32 %5 to i8
  %i.an = or i8 %i.al, %i.am
  %i.ao = or i8 %i.an, 4
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink13 = phi i8 [ -60, %bb.c ], [ -59, %bb.d ]
  %.sink = phi i8 [ %i.y, %bb.c ], [ %i.ao, %bb.d ]
  %.sink20.i = phi i64 [ 3, %bb.c ], [ 2, %bb.d ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink13, ptr %i.j, align 1
  store i8 %.sink, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 %1, ptr %i.aq, align 1, !alias.scope !42
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  tail call void @llvm.assume(i1 %i.q)
  %i.as = shl nuw nsw i8 %2, 3
  %i.at = and i8 %4, 7
  %i.au = or disjoint i8 %i.at, %i.as
  %i.av = or i8 %i.au, -64
  store i8 %i.av, ptr %i.ar, align 1, !alias.scope !45
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store ptr %i.aw, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9Assembler6vinstrINS0_11YMMRegisterENS0_11XMMRegisterES4_EEvhT_T0_T1_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i8 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %4, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = lshr i8 %4, 3
  %i.m = zext nneg i8 %i.l to i32
  %i.n = icmp ne i32 %6, 1
  %i.o = or i32 %7, %i.m
  %i.p = icmp ne i32 %i.o, 0
  %or.cond3.i = or i1 %i.n, %i.p
  %i.q = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.q)
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.r = shl nuw i8 %2, 4
  %i.s = and i8 %i.r, -128
  %i.t = shl nuw nsw i8 %4, 2
  %i.u = and i8 %i.t, 32
  %i.v = or disjoint i8 %i.u, %i.s
  %i.w = xor i8 %i.v, -32
  %i.x = trunc i32 %6 to i8
  %i.y = or i8 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.aa = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = shl nuw nsw i8 %3, 3
  %i.ac = or i32 %7, %5
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = xor i8 %i.ab, 124
  %i.af = or i8 %i.ae, %i.ad
  store i8 %i.af, ptr %i.z, align 1, !alias.scope !48
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.ag = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = shl nuw nsw i8 %2, 1
  %i.ai = and i8 %i.ah, 16
  %i.aj = or disjoint i8 %i.ai, %3
  %i.ak = xor i8 %i.aj, -1
  %i.al = shl i8 %i.ak, 3
  %i.am = trunc i32 %5 to i8
  %i.an = or i8 %i.al, %i.am
  %i.ao = or i8 %i.an, 4
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink13 = phi i8 [ -60, %bb.c ], [ -59, %bb.d ]
  %.sink = phi i8 [ %i.y, %bb.c ], [ %i.ao, %bb.d ]
  %.sink20.i = phi i64 [ 3, %bb.c ], [ 2, %bb.d ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink13, ptr %i.j, align 1
  store i8 %.sink, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 %1, ptr %i.aq, align 1, !alias.scope !51
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  tail call void @llvm.assume(i1 %i.q)
  %i.as = shl nuw nsw i8 %2, 3
  %i.at = and i8 %4, 7
  %i.au = or disjoint i8 %i.at, %i.as
  %i.av = or i8 %i.au, -64
  store i8 %i.av, ptr %i.ar, align 1, !alias.scope !54
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store ptr %i.aw, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9Assembler6vinstrINS0_11YMMRegisterES3_NS0_7OperandEEEvhT_T0_T1_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i64 %4, ptr %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %10 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %4, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %4 to i1
  %i.l = icmp ne i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = icmp ne i32 %7, 1
  %or.cond.i = or i1 %i.l, %i.m
  %i.n = icmp ne i32 %8, 0
  %or.cond3.i = or i1 %or.cond.i, %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.p = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.p)
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.q = lshr i8 %2, 1
  %i.r = and i8 %i.q, 4
  %i.s = or i8 %i.r, %.sroa.3.0.extract.trunc.i
  %i.t = xor i8 %i.s, -1
  %i.u = shl i8 %i.t, 5
  %i.v = trunc i32 %7 to i8
  %i.w = or i8 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.y = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = shl nuw nsw i8 %3, 3
  %i.aa = or i32 %8, %6
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = xor i8 %i.z, 124
  %i.ad = or i8 %i.ac, %i.ab
  store i8 %i.ad, ptr %i.x, align 1, !alias.scope !57
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.ae = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = shl nuw nsw i8 %2, 1
  %i.ag = and i8 %i.af, 16
  %i.ah = or disjoint i8 %i.ag, %3
  %i.ai = xor i8 %i.ah, -1
  %i.aj = shl i8 %i.ai, 3
  %i.ak = trunc i32 %6 to i8
  %i.al = or i8 %i.aj, %i.ak
  %i.am = or i8 %i.al, 4
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink14 = phi i8 [ -60, %bb.c ], [ -59, %bb.d ]
  %.sink = phi i8 [ %i.w, %bb.c ], [ %i.am, %bb.d ]
  %.sink21.i = phi i64 [ 3, %bb.c ], [ 2, %bb.d ]
  store i8 %.sink14, ptr %i.j, align 1
  store i8 %.sink, ptr %i.o, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 %1, ptr %i.an, align 1, !alias.scope !60
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 4 uses
  store ptr %i.ao, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.p)
  %i.ap = and i8 %2, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i64 %4, ptr %10, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.aq, align 8
  %i.ar = ptrtoint ptr %5 to i64                  ; 3 uses
  %i.as = lshr i64 %4, 16                         ; 2 uses
  %i.at = trunc i64 %i.as to i8                   ; 2 uses
  %i.au = trunc i64 %i.as to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.av = zext nneg i8 %i.ap to i32
  %i.aw = sext i8 %i.at to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.av, ptr noundef %5, i32 noundef %i.aw)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %i.ax = icmp ult ptr %5, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = shl nuw nsw i8 %i.ap, 3                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 2
  %i.ba = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bb = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.bc = icmp ugt ptr %5, inttoptr (i64 4 to ptr)
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = zext nneg i8 %i.ay to i32
  %i.be = or i32 %i.au, %i.bd
  %i.bf = add nsw i64 %i.ar, -2                   ; 2 uses
  %i.bg = add i64 %i.bf, %i.ba
  %i.bh = inttoptr i64 %i.bg to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.bh, align 1
  %i.bi = add i64 %i.bf, %i.bb
  %i.bj = inttoptr i64 %i.bi to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.bj, align 1
  store i32 %i.be, ptr %i.ao, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bk = or i8 %i.ay, %i.at
  %.not.i.i.i = icmp eq ptr %5, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = add nsw i64 %i.ar, -2                   ; 2 uses
  %i.bm = add i64 %i.bl, %i.ba
  %i.bn = inttoptr i64 %i.bm to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.bn, align 1
  %i.bo = add i64 %i.bl, %i.bb
  %i.bp = inttoptr i64 %i.bo to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.bp, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.bk, ptr %i.ao, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bq = load ptr, ptr %i.c, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ar
  store ptr %i.br, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9Assembler6vinstrINS0_11YMMRegisterES3_NS0_11XMMRegisterEEEvhT_T0_T1_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i8 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %4, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = lshr i8 %4, 3
  %i.m = zext nneg i8 %i.l to i32
  %i.n = icmp ne i32 %6, 1
  %i.o = or i32 %7, %i.m
  %i.p = icmp ne i32 %i.o, 0
  %or.cond3.i = or i1 %i.n, %i.p
  %i.q = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.q)
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.r = shl nuw i8 %2, 4
  %i.s = and i8 %i.r, -128
  %i.t = shl nuw nsw i8 %4, 2
  %i.u = and i8 %i.t, 32
  %i.v = or disjoint i8 %i.u, %i.s
  %i.w = xor i8 %i.v, -32
  %i.x = trunc i32 %6 to i8
  %i.y = or i8 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.aa = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = shl nuw nsw i8 %3, 3
  %i.ac = or i32 %7, %5
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = xor i8 %i.ab, 124
  %i.af = or i8 %i.ae, %i.ad
  store i8 %i.af, ptr %i.z, align 1, !alias.scope !63
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.ag = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = shl nuw nsw i8 %2, 1
  %i.ai = and i8 %i.ah, 16
  %i.aj = or disjoint i8 %i.ai, %3
  %i.ak = xor i8 %i.aj, -1
  %i.al = shl i8 %i.ak, 3
  %i.am = trunc i32 %5 to i8
  %i.an = or i8 %i.al, %i.am
  %i.ao = or i8 %i.an, 4
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink13 = phi i8 [ -60, %bb.c ], [ -59, %bb.d ]
  %.sink = phi i8 [ %i.y, %bb.c ], [ %i.ao, %bb.d ]
  %.sink20.i = phi i64 [ 3, %bb.c ], [ 2, %bb.d ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink13, ptr %i.j, align 1
  store i8 %.sink, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 %1, ptr %i.aq, align 1, !alias.scope !66
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  tail call void @llvm.assume(i1 %i.q)
  %i.as = shl nuw nsw i8 %2, 3
  %i.at = and i8 %4, 7
  %i.au = or disjoint i8 %i.at, %i.as
  %i.av = or i8 %i.au, -64
  store i8 %i.av, ptr %i.ar, align 1, !alias.scope !69
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store ptr %i.aw, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9Assembler6vinstrINS0_11YMMRegisterENS0_11XMMRegisterENS0_7OperandEEEvhT_T0_T1_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i64 %4, ptr %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %10 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %4, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %4 to i1
  %i.l = icmp ne i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = icmp ne i32 %7, 1
  %or.cond.i = or i1 %i.l, %i.m
  %i.n = icmp ne i32 %8, 0
  %or.cond3.i = or i1 %or.cond.i, %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.p = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.p)
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.q = lshr i8 %2, 1
  %i.r = and i8 %i.q, 4
  %i.s = or i8 %i.r, %.sroa.3.0.extract.trunc.i
  %i.t = xor i8 %i.s, -1
  %i.u = shl i8 %i.t, 5
  %i.v = trunc i32 %7 to i8
  %i.w = or i8 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.y = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = shl nuw nsw i8 %3, 3
  %i.aa = or i32 %8, %6
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = xor i8 %i.z, 124
  %i.ad = or i8 %i.ac, %i.ab
  store i8 %i.ad, ptr %i.x, align 1, !alias.scope !72
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.ae = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = shl nuw nsw i8 %2, 1
  %i.ag = and i8 %i.af, 16
  %i.ah = or disjoint i8 %i.ag, %3
  %i.ai = xor i8 %i.ah, -1
  %i.aj = shl i8 %i.ai, 3
  %i.ak = trunc i32 %6 to i8
  %i.al = or i8 %i.aj, %i.ak
  %i.am = or i8 %i.al, 4
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink14 = phi i8 [ -60, %bb.c ], [ -59, %bb.d ]
  %.sink = phi i8 [ %i.w, %bb.c ], [ %i.am, %bb.d ]
  %.sink21.i = phi i64 [ 3, %bb.c ], [ 2, %bb.d ]
  store i8 %.sink14, ptr %i.j, align 1
  store i8 %.sink, ptr %i.o, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 %1, ptr %i.an, align 1, !alias.scope !75
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 4 uses
  store ptr %i.ao, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.p)
  %i.ap = and i8 %2, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i64 %4, ptr %10, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.aq, align 8
  %i.ar = ptrtoint ptr %5 to i64                  ; 3 uses
  %i.as = lshr i64 %4, 16                         ; 2 uses
  %i.at = trunc i64 %i.as to i8                   ; 2 uses
  %i.au = trunc i64 %i.as to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.av = zext nneg i8 %i.ap to i32
  %i.aw = sext i8 %i.at to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.av, ptr noundef %5, i32 noundef %i.aw)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %i.ax = icmp ult ptr %5, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = shl nuw nsw i8 %i.ap, 3                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 2
  %i.ba = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bb = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.bc = icmp ugt ptr %5, inttoptr (i64 4 to ptr)
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = zext nneg i8 %i.ay to i32
  %i.be = or i32 %i.au, %i.bd
  %i.bf = add nsw i64 %i.ar, -2                   ; 2 uses
  %i.bg = add i64 %i.bf, %i.ba
  %i.bh = inttoptr i64 %i.bg to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.bh, align 1
  %i.bi = add i64 %i.bf, %i.bb
  %i.bj = inttoptr i64 %i.bi to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.bj, align 1
  store i32 %i.be, ptr %i.ao, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bk = or i8 %i.ay, %i.at
  %.not.i.i.i = icmp eq ptr %5, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = add nsw i64 %i.ar, -2                   ; 2 uses
  %i.bm = add i64 %i.bl, %i.ba
  %i.bn = inttoptr i64 %i.bm to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.bn, align 1
  %i.bo = add i64 %i.bl, %i.bb
  %i.bp = inttoptr i64 %i.bo to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.bp, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.bk, ptr %i.ao, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bq = load ptr, ptr %i.c, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ar
  store ptr %i.br, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9Assembler6vinstrINS0_11YMMRegisterENS0_11XMMRegisterES3_EEvhT_T0_T1_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i8 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %4, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = lshr i8 %4, 3
  %i.m = zext nneg i8 %i.l to i32
  %i.n = icmp ne i32 %6, 1
  %i.o = or i32 %7, %i.m
  %i.p = icmp ne i32 %i.o, 0
  %or.cond3.i = or i1 %i.n, %i.p
  %i.q = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.q)
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.r = shl nuw i8 %2, 4
  %i.s = and i8 %i.r, -128
  %i.t = shl nuw nsw i8 %4, 2
  %i.u = and i8 %i.t, 32
  %i.v = or disjoint i8 %i.u, %i.s
  %i.w = xor i8 %i.v, -32
  %i.x = trunc i32 %6 to i8
  %i.y = or i8 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.aa = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = shl nuw nsw i8 %3, 3
  %i.ac = or i32 %7, %5
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = xor i8 %i.ab, 124
  %i.af = or i8 %i.ae, %i.ad
  store i8 %i.af, ptr %i.z, align 1, !alias.scope !78
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.ag = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = shl nuw nsw i8 %2, 1
  %i.ai = and i8 %i.ah, 16
  %i.aj = or disjoint i8 %i.ai, %3
  %i.ak = xor i8 %i.aj, -1
  %i.al = shl i8 %i.ak, 3
  %i.am = trunc i32 %5 to i8
  %i.an = or i8 %i.al, %i.am
  %i.ao = or i8 %i.an, 4
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink13 = phi i8 [ -60, %bb.c ], [ -59, %bb.d ]
  %.sink = phi i8 [ %i.y, %bb.c ], [ %i.ao, %bb.d ]
  %.sink20.i = phi i64 [ 3, %bb.c ], [ 2, %bb.d ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink13, ptr %i.j, align 1
  store i8 %.sink, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 %1, ptr %i.aq, align 1, !alias.scope !81
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  tail call void @llvm.assume(i1 %i.q)
  %i.as = shl nuw nsw i8 %2, 3
  %i.at = and i8 %4, 7
  %i.au = or disjoint i8 %i.at, %i.as
  %i.av = or i8 %i.au, -64
  store i8 %i.av, ptr %i.ar, align 1, !alias.scope !84
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store ptr %i.aw, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal11CpuFeatures19SupportsWasmSimd128Ev() local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4 ; 2 uses
  %i.b = and i32 %i.a, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 924), align 4, !range !87, !noundef !88
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = and i32 %i.a, 4
  %i.f = icmp ne i32 %i.e, 0
  %or.cond = and i1 %i.f, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %or.cond, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CpuFeatures9ProbeImplEb(i1 noundef zeroext %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::base::CPU", align 4     ; 24 uses
  br i1 %0, label %bb.bo, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN2v84base3CPUC1Ev(ptr noundef nonnull align 4 dereferenceable(120) %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.b = load i8, ptr %i.a, align 1, !range !87, !noundef !88
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.c, !prof !89

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 69
  %i.e = load i8, ptr %i.d, align 1, !range !87, !noundef !88
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.e, !prof !89

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 77
  %i.h = load i8, ptr %i.g, align 1, !range !87, !noundef !88
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.k = or i32 %i.j, 1
  store i32 %i.k, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.m = load i8, ptr %i.l, align 4, !range !87, !noundef !88
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.p = or i32 %i.o, 2
  store i32 %i.p, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 75
  %i.r = load i8, ptr %i.q, align 1, !range !87, !noundef !88
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.u = or i32 %i.t, 4
  store i32 %i.u, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.w = load i8, ptr %i.v, align 2, !range !87, !noundef !88
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.y = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.z = or i32 %i.y, 8
  store i32 %i.z, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 87
  %i.ab = load i8, ptr %i.aa, align 1, !range !87, !noundef !88
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.ae = or i32 %i.ad, 131072
  store i32 %i.ae, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.ag = load i8, ptr %i.af, align 2, !range !87, !noundef !88
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.aj = load i8, ptr %i.ai, align 1, !range !87
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.al = call { i32, i32 } asm sideeffect ".byte 0x0F, 0x01, 0xD0", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #26, !srcloc !90
  %i.am = extractvalue { i32, i32 } %i.al, 0
  %i.an = and i32 %i.am, 6
  %i.ao = icmp eq i32 %i.an, 6
  br i1 %i.ao, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.ap = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4 ; 2 uses
  %i.aq = or i32 %i.ap, 32                        ; 2 uses
  store i32 %i.aq, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 83
  %i.as = load i8, ptr %i.ar, align 1, !range !87, !noundef !88
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.au = or i32 %i.ap, 96                        ; 2 uses
  store i32 %i.au, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.av = phi i32 [ %i.au, %bb.s ], [ %i.aq, %bb.r ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ax = load i8, ptr %i.aw, align 4, !range !87, !noundef !88
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.az = or i32 %i.av, 128                       ; 2 uses
  store i32 %i.az, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ba = phi i32 [ %i.az, %bb.u ], [ %i.av, %bb.t ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 85
  %i.bc = load i8, ptr %i.bb, align 1, !range !87, !noundef !88
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.be = or i32 %i.ba, 256                       ; 2 uses
  store i32 %i.be, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bf = phi i32 [ %i.be, %bb.w ], [ %i.ba, %bb.v ]
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 86
  %i.bh = load i8, ptr %i.bg, align 2, !range !87, !noundef !88
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bj = or i32 %i.bf, 512
  store i32 %i.bj, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.q, %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 70
  %i.bl = load i8, ptr %i.bk, align 2, !range !87, !noundef !88
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1294), align 2, !range !87
  %i.bo = trunc nuw i8 %i.bn to i1
  %or.cond4 = select i1 %i.bm, i1 %i.bo, i1 false
  br i1 %or.cond4, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bp = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.bq = or i32 %i.bp, 16
  store i32 %i.bq, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.ab
end_hunk_0
begin_hunk_1_@_ZN2v88internal9Assembler7roundpdENS0_11XMMRegisterES2_NS0_12RoundingModeE:bb.a
  store i8 %i.aa, ptr %i.w, align 1, !alias.scope !3270
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ac = trunc i32 %3 to i8
  %i.ad = or i8 %i.ac, 8
  store i8 %i.ad, ptr %i.ab, align 1, !alias.scope !3273
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  store ptr %i.ae, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler8movmskpdENS0_8RegisterENS0_11XMMRegisterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  store i8 102, ptr %i.j, align 1, !alias.scope !3276
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.l = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = lshr i8 %1, 1
  %i.n = and i8 %i.m, 4
  %i.o = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = lshr i8 %2, 3
  %i.q = or disjoint i8 %i.n, %i.p                ; 2 uses
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterENS0_11XMMRegisterE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.r = or disjoint i8 %i.q, 64
  store i8 %i.r, ptr %i.k, align 1, !alias.scope !3279
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  br label %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterENS0_11XMMRegisterE.exit

_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterENS0_11XMMRegisterE.exit: ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, %bb.c
  %i.t = phi ptr [ %i.k, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit ], [ %i.s, %bb.c ] ; 4 uses
  store i8 15, ptr %i.t, align 1, !alias.scope !3282
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 80, ptr %i.u, align 1, !alias.scope !3285
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.w = shl nuw nsw i8 %1, 3
  %i.x = and i8 %2, 7
  %i.y = or disjoint i8 %i.x, %i.w
  %i.z = or i8 %i.y, -64
  store i8 %i.z, ptr %i.v, align 1, !alias.scope !3288
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  store ptr %i.aa, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler8movmskpsENS0_8RegisterENS0_11XMMRegisterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %.pre = phi ptr [ %i.d, %bb.a ], [ %.pre.pre, %bb.b ] ; 3 uses
  %i.j = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = lshr i8 %1, 1
  %i.l = and i8 %i.k, 4
  %i.m = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = lshr i8 %2, 3
  %i.o = or disjoint i8 %i.l, %i.n                ; 2 uses
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterENS0_11XMMRegisterE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.p = or disjoint i8 %i.o, 64
  store i8 %i.p, ptr %.pre, align 1, !alias.scope !3291
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  br label %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterENS0_11XMMRegisterE.exit

_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterENS0_11XMMRegisterE.exit: ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, %bb.c
  %i.r = phi ptr [ %.pre, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit ], [ %i.q, %bb.c ] ; 4 uses
  store i8 15, ptr %i.r, align 1, !alias.scope !3294
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 80, ptr %i.s, align 1, !alias.scope !3297
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.u = shl nuw nsw i8 %1, 3
  %i.v = and i8 %2, 7
  %i.w = or disjoint i8 %i.v, %i.u
  %i.x = or i8 %i.w, -64
  store i8 %i.x, ptr %i.t, align 1, !alias.scope !3300
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  store ptr %i.y, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler8pmovmskbENS0_8RegisterENS0_11XMMRegisterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  store i8 102, ptr %i.j, align 1, !alias.scope !3303
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.l = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = lshr i8 %1, 1
  %i.n = and i8 %i.m, 4
  %i.o = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = lshr i8 %2, 3
  %i.q = or disjoint i8 %i.n, %i.p                ; 2 uses
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterENS0_11XMMRegisterE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.r = or disjoint i8 %i.q, 64
  store i8 %i.r, ptr %i.k, align 1, !alias.scope !3306
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  br label %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterENS0_11XMMRegisterE.exit

_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterENS0_11XMMRegisterE.exit: ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, %bb.c
  %i.t = phi ptr [ %i.k, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit ], [ %i.s, %bb.c ] ; 4 uses
  store i8 15, ptr %i.t, align 1, !alias.scope !3309
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 -41, ptr %i.u, align 1, !alias.scope !3312
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.w = shl nuw nsw i8 %1, 3
  %i.x = and i8 %2, 7
  %i.y = or disjoint i8 %i.x, %i.w
  %i.z = or i8 %i.y, -64
  store i8 %i.z, ptr %i.v, align 1, !alias.scope !3315
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  store ptr %i.aa, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler8vmovddupENS0_11XMMRegisterES2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %2, 8
  %i.l = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  %i.m = shl nuw i8 %1, 4
  %i.n = and i8 %i.m, -128                        ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 123, ptr %i.p, align 1, !alias.scope !3318
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.q = xor i8 %i.n, -5
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink9 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.q, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink9, ptr %i.j, align 1
  store i8 %.sink, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 18, ptr %i.s, align 1, !alias.scope !3321
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.u = shl nuw nsw i8 %1, 3
  %i.v = and i8 %2, 7
  %i.w = or disjoint i8 %i.v, %i.u
  %i.x = or i8 %i.w, -64
  store i8 %i.x, ptr %i.t, align 1, !alias.scope !3324
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store ptr %i.y, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler8vmovddupENS0_11XMMRegisterENS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %2 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %1, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 123, ptr %i.u, align 1, !alias.scope !3327
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.v = shl nuw i8 %1, 4
  %i.w = and i8 %i.v, -128
  %i.x = xor i8 %i.w, -5
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.x, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 18, ptr %i.y, align 1, !alias.scope !3330
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 4 uses
  store ptr %i.z, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.aa = and i8 %1, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %2, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.ab, align 8
  %i.ac = ptrtoint ptr %3 to i64                  ; 3 uses
  %i.ad = lshr i64 %2, 16                         ; 2 uses
  %i.ae = trunc i64 %i.ad to i8                   ; 2 uses
  %i.af = trunc i64 %i.ad to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.ag = zext nneg i8 %i.aa to i32
  %i.ah = sext i8 %i.ae to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.ag, ptr noundef %3, i32 noundef %i.ah)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.ai = icmp ult ptr %3, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = shl nuw nsw i8 %i.aa, 3                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.an = icmp ugt ptr %3, inttoptr (i64 4 to ptr)
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = zext nneg i8 %i.aj to i32
  %i.ap = or i32 %i.af, %i.ao
  %i.aq = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ar = add i64 %i.aq, %i.al
  %i.as = inttoptr i64 %i.ar to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.as, align 1
  %i.at = add i64 %i.aq, %i.am
  %i.au = inttoptr i64 %i.at to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.au, align 1
  store i32 %i.ap, ptr %i.z, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.av = or i8 %i.aj, %i.ae
  %.not.i.i.i = icmp eq ptr %3, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ax = add i64 %i.aw, %i.al
  %i.ay = inttoptr i64 %i.ax to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.ay, align 1
  %i.az = add i64 %i.aw, %i.am
  %i.ba = inttoptr i64 %i.az to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.ba, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.av, ptr %i.z, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ac
  store ptr %i.bc, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler9vmovshdupENS0_11XMMRegisterES2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %2, 8
  %i.l = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  %i.m = shl nuw i8 %1, 4
  %i.n = and i8 %i.m, -128                        ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 122, ptr %i.p, align 1, !alias.scope !3333
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.q = xor i8 %i.n, -6
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink9 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.q, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink9, ptr %i.j, align 1
  store i8 %.sink, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 22, ptr %i.s, align 1, !alias.scope !3336
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.u = shl nuw nsw i8 %1, 3
  %i.v = and i8 %2, 7
  %i.w = or disjoint i8 %i.v, %i.u
  %i.x = or i8 %i.w, -64
  store i8 %i.x, ptr %i.t, align 1, !alias.scope !3339
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store ptr %i.y, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler8vmovddupENS0_11YMMRegisterES2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %2, 8
  %i.l = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  %i.m = shl nuw i8 %1, 4
  %i.n = and i8 %i.m, -128                        ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 127, ptr %i.p, align 1, !alias.scope !3342
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.q = xor i8 %i.n, -1
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink9 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.q, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink9, ptr %i.j, align 1
  store i8 %.sink, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 18, ptr %i.s, align 1, !alias.scope !3345
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.u = shl nuw nsw i8 %1, 3
  %i.v = and i8 %2, 7
  %i.w = or disjoint i8 %i.v, %i.u
  %i.x = or i8 %i.w, -64
  store i8 %i.x, ptr %i.t, align 1, !alias.scope !3348
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store ptr %i.y, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler8vmovddupENS0_11YMMRegisterENS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %2 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %1, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 127, ptr %i.u, align 1, !alias.scope !3351
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.v = shl nuw i8 %1, 4
  %i.w = and i8 %i.v, -128
  %i.x = xor i8 %i.w, -1
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.x, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 18, ptr %i.y, align 1, !alias.scope !3354
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 4 uses
  store ptr %i.z, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.aa = and i8 %1, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %2, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.ab, align 8
  %i.ac = ptrtoint ptr %3 to i64                  ; 3 uses
  %i.ad = lshr i64 %2, 16                         ; 2 uses
  %i.ae = trunc i64 %i.ad to i8                   ; 2 uses
  %i.af = trunc i64 %i.ad to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.ag = zext nneg i8 %i.aa to i32
  %i.ah = sext i8 %i.ae to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.ag, ptr noundef %3, i32 noundef %i.ah)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.ai = icmp ult ptr %3, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = shl nuw nsw i8 %i.aa, 3                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.an = icmp ugt ptr %3, inttoptr (i64 4 to ptr)
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = zext nneg i8 %i.aj to i32
  %i.ap = or i32 %i.af, %i.ao
  %i.aq = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ar = add i64 %i.aq, %i.al
  %i.as = inttoptr i64 %i.ar to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.as, align 1
  %i.at = add i64 %i.aq, %i.am
  %i.au = inttoptr i64 %i.at to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.au, align 1
  store i32 %i.ap, ptr %i.z, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.av = or i8 %i.aj, %i.ae
  %.not.i.i.i = icmp eq ptr %3, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ax = add i64 %i.aw, %i.al
  %i.ay = inttoptr i64 %i.ax to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.ay, align 1
  %i.az = add i64 %i.aw, %i.am
  %i.ba = inttoptr i64 %i.az to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.ba, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.av, ptr %i.z, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ac
  store ptr %i.bc, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler9vmovshdupENS0_11YMMRegisterES2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %2, 8
  %i.l = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  %i.m = shl nuw i8 %1, 4
  %i.n = and i8 %i.m, -128                        ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 126, ptr %i.p, align 1, !alias.scope !3357
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.q = xor i8 %i.n, -2
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink9 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.q, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink9, ptr %i.j, align 1
  store i8 %.sink, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 22, ptr %i.s, align 1, !alias.scope !3360
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.u = shl nuw nsw i8 %1, 3
  %i.v = and i8 %2, 7
  %i.w = or disjoint i8 %i.v, %i.u
  %i.x = or i8 %i.w, -64
  store i8 %i.x, ptr %i.t, align 1, !alias.scope !3363
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store ptr %i.y, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler12vbroadcastssENS0_11XMMRegisterENS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8
  %i.k = trunc i64 %2 to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = icmp samesign ult i8 %1, 16
  store i8 -60, ptr %i.j, align 1, !alias.scope !3366
  tail call void @llvm.assume(i1 %i.m)
  %i.n = lshr i8 %1, 1
  %i.o = and i8 %i.n, 4
  %i.p = or i8 %i.o, %.sroa.3.0.extract.trunc.i
  %i.q = xor i8 %i.p, -1
  %i.r = shl i8 %i.q, 5
  %i.s = or disjoint i8 %i.r, 2
  store i8 %i.s, ptr %i.l, align 1, !alias.scope !3369
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 121, ptr %i.t, align 1, !alias.scope !3372
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 24, ptr %i.u, align 1, !alias.scope !3375
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 4 uses
  store ptr %i.v, ptr %i.c, align 8
  %i.w = and i8 %1, 7                             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %2, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.x, align 8
  %i.y = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.z = lshr i64 %2, 16                          ; 2 uses
  %i.aa = trunc i64 %i.z to i8                    ; 2 uses
  %i.ab = trunc i64 %i.z to i32
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.ac = zext nneg i8 %i.w to i32
  %i.ad = sext i8 %i.aa to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.ac, ptr noundef %3, i32 noundef %i.ad)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.ae = icmp ult ptr %3, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = shl nuw nsw i8 %i.w, 3                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.aj = icmp ugt ptr %3, inttoptr (i64 4 to ptr)
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = zext nneg i8 %i.af to i32
  %i.al = or i32 %i.ab, %i.ak
  %i.am = add nsw i64 %i.y, -2                    ; 2 uses
  %i.an = add i64 %i.am, %i.ah
  %i.ao = inttoptr i64 %i.an to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.ao, align 1
  %i.ap = add i64 %i.am, %i.ai
  %i.aq = inttoptr i64 %i.ap to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.aq, align 1
  store i32 %i.al, ptr %i.v, align 1
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ar = or i8 %i.af, %i.aa
  %.not.i.i.i = icmp eq ptr %3, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = add nsw i64 %i.y, -2                    ; 2 uses
  %i.at = add i64 %i.as, %i.ah
  %i.au = inttoptr i64 %i.at to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.au, align 1
  %i.av = add i64 %i.as, %i.ai
  %i.aw = inttoptr i64 %i.av to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.aw, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i8 %i.ar, ptr %i.v, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.ax = load ptr, ptr %i.c, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.y
  store ptr %i.ay, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.c, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler12vbroadcastssENS0_11XMMRegisterES2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 6 uses
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = icmp samesign ult i8 %1, 16
  store i8 -60, ptr %i.j, align 1, !alias.scope !3378
  tail call void @llvm.assume(i1 %i.m)
  %i.n = shl nuw i8 %1, 4
  %i.o = and i8 %i.n, -128
  %i.p = shl nuw nsw i8 %2, 2
  %i.q = and i8 %i.p, 32
  %i.r = or disjoint i8 %i.q, %i.o
  %i.s = xor i8 %i.r, -30
  store i8 %i.s, ptr %i.l, align 1, !alias.scope !3381
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 121, ptr %i.t, align 1, !alias.scope !3384
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 24, ptr %i.u, align 1, !alias.scope !3387
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.w = shl nuw nsw i8 %1, 3
  %i.x = and i8 %2, 7
  %i.y = or disjoint i8 %i.x, %i.w
  %i.z = or i8 %i.y, -64
  store i8 %i.z, ptr %i.v, align 1, !alias.scope !3390
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store ptr %i.aa, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler12vbroadcastssENS0_11YMMRegisterENS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8
  %i.k = trunc i64 %2 to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = icmp samesign ult i8 %1, 16
  store i8 -60, ptr %i.j, align 1, !alias.scope !3393
end_hunk_1
begin_hunk_2_@_ZN2v88internal9Assembler12vbroadcastsdENS0_11YMMRegisterENS0_11XMMRegisterE:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 125, ptr %i.t, align 1, !alias.scope !3438
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 25, ptr %i.u, align 1, !alias.scope !3441
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.w = shl nuw nsw i8 %1, 3
  %i.x = and i8 %2, 7
  %i.y = or disjoint i8 %i.x, %i.w
  %i.z = or i8 %i.y, -64
  store i8 %i.z, ptr %i.v, align 1, !alias.scope !3444
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store ptr %i.aa, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler11vinserti128ENS0_11YMMRegisterES2_NS0_11XMMRegisterEh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2, i8 %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 7 uses
  %i.k = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = icmp samesign ult i8 %1, 16
  store i8 -60, ptr %i.j, align 1, !alias.scope !3447
  tail call void @llvm.assume(i1 %i.m)
  %i.n = shl nuw i8 %1, 4
  %i.o = and i8 %i.n, -128
  %i.p = shl nuw nsw i8 %3, 2
  %i.q = and i8 %i.p, 32
  %i.r = or disjoint i8 %i.q, %i.o
  %i.s = xor i8 %i.r, -29
  store i8 %i.s, ptr %i.l, align 1, !alias.scope !3450
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.u = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = shl nuw nsw i8 %2, 3
  %i.w = xor i8 %i.v, 125
  store i8 %i.w, ptr %i.t, align 1, !alias.scope !3453
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 56, ptr %i.x, align 1, !alias.scope !3456
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.z = shl nuw nsw i8 %1, 3
  %i.aa = and i8 %3, 7
  %i.ab = or disjoint i8 %i.aa, %i.z
  %i.ac = or i8 %i.ab, -64
  store i8 %i.ac, ptr %i.y, align 1, !alias.scope !3459
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store i8 %4, ptr %i.ad, align 1, !alias.scope !3462
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  store ptr %i.ae, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler10vperm2f128ENS0_11YMMRegisterES2_S2_h(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2, i8 %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 7 uses
  %i.k = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = icmp samesign ult i8 %1, 16
  store i8 -60, ptr %i.j, align 1, !alias.scope !3465
  tail call void @llvm.assume(i1 %i.m)
  %i.n = shl nuw i8 %1, 4
  %i.o = and i8 %i.n, -128
  %i.p = shl nuw nsw i8 %3, 2
  %i.q = and i8 %i.p, 32
  %i.r = or disjoint i8 %i.q, %i.o
  %i.s = xor i8 %i.r, -29
  store i8 %i.s, ptr %i.l, align 1, !alias.scope !3468
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.u = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = shl nuw nsw i8 %2, 3
  %i.w = xor i8 %i.v, 125
  store i8 %i.w, ptr %i.t, align 1, !alias.scope !3471
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 6, ptr %i.x, align 1, !alias.scope !3474
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.z = shl nuw nsw i8 %1, 3
  %i.aa = and i8 %3, 7
  %i.ab = or disjoint i8 %i.aa, %i.z
  %i.ac = or i8 %i.ab, -64
  store i8 %i.ac, ptr %i.y, align 1, !alias.scope !3477
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store i8 %4, ptr %i.ad, align 1, !alias.scope !3480
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  store ptr %i.ae, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler12vextractf128ENS0_11XMMRegisterENS0_11YMMRegisterEh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 7 uses
  %i.k = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = icmp samesign ult i8 %2, 16
  store i8 -60, ptr %i.j, align 1, !alias.scope !3483
  tail call void @llvm.assume(i1 %i.m)
  %i.n = shl nuw i8 %2, 4
  %i.o = and i8 %i.n, -128
  %i.p = shl nuw nsw i8 %1, 2
  %i.q = and i8 %i.p, 32
  %i.r = or disjoint i8 %i.o, %i.q
  %i.s = xor i8 %i.r, -29
  store i8 %i.s, ptr %i.l, align 1, !alias.scope !3486
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 125, ptr %i.t, align 1, !alias.scope !3489
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 25, ptr %i.u, align 1, !alias.scope !3492
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.w = shl nuw nsw i8 %2, 3
  %i.x = and i8 %1, 7
  %i.y = or disjoint i8 %i.w, %i.x
  %i.z = or i8 %i.y, -64
  store i8 %i.z, ptr %i.v, align 1, !alias.scope !3495
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store i8 %3, ptr %i.aa, align 1, !alias.scope !3498
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  store ptr %i.ab, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler5vmovdENS0_11XMMRegisterENS0_8RegisterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %2, 8
  %i.l = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  %i.m = shl nuw i8 %1, 4
  %i.n = and i8 %i.m, -128                        ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 121, ptr %i.p, align 1, !alias.scope !3501
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.q = xor i8 %i.n, -7
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.q, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 110, ptr %i.s, align 1, !alias.scope !3504
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.u = shl nuw nsw i8 %1, 3
  %i.v = and i8 %2, 7
  %i.w = or disjoint i8 %i.v, %i.u
  %i.x = or i8 %i.w, -64
  store i8 %i.x, ptr %i.t, align 1, !alias.scope !3507
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store ptr %i.y, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler5vmovdENS0_11XMMRegisterENS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %2 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %1, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 121, ptr %i.u, align 1, !alias.scope !3510
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.v = shl nuw i8 %1, 4
  %i.w = and i8 %i.v, -128
  %i.x = xor i8 %i.w, -7
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.x, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 110, ptr %i.y, align 1, !alias.scope !3513
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 4 uses
  store ptr %i.z, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.aa = and i8 %1, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %2, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.ab, align 8
  %i.ac = ptrtoint ptr %3 to i64                  ; 3 uses
  %i.ad = lshr i64 %2, 16                         ; 2 uses
  %i.ae = trunc i64 %i.ad to i8                   ; 2 uses
  %i.af = trunc i64 %i.ad to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.ag = zext nneg i8 %i.aa to i32
  %i.ah = sext i8 %i.ae to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.ag, ptr noundef %3, i32 noundef %i.ah)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.ai = icmp ult ptr %3, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = shl nuw nsw i8 %i.aa, 3                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.an = icmp ugt ptr %3, inttoptr (i64 4 to ptr)
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = zext nneg i8 %i.aj to i32
  %i.ap = or i32 %i.af, %i.ao
  %i.aq = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ar = add i64 %i.aq, %i.al
  %i.as = inttoptr i64 %i.ar to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.as, align 1
  %i.at = add i64 %i.aq, %i.am
  %i.au = inttoptr i64 %i.at to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.au, align 1
  store i32 %i.ap, ptr %i.z, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.av = or i8 %i.aj, %i.ae
  %.not.i.i.i = icmp eq ptr %3, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ax = add i64 %i.aw, %i.al
  %i.ay = inttoptr i64 %i.ax to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.ay, align 1
  %i.az = add i64 %i.aw, %i.am
  %i.ba = inttoptr i64 %i.az to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.ba, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.av, ptr %i.z, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ac
  store ptr %i.bc, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler5vmovdENS0_8RegisterENS0_11XMMRegisterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %1, 8
  %i.l = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  %i.m = shl nuw i8 %2, 4
  %i.n = and i8 %i.m, -128                        ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 121, ptr %i.p, align 1, !alias.scope !3516
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.q = xor i8 %i.n, -7
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.q, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 126, ptr %i.s, align 1, !alias.scope !3519
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.u = shl nuw nsw i8 %2, 3
  %i.v = and i8 %1, 7
  %i.w = or disjoint i8 %i.u, %i.v
  %i.x = or i8 %i.w, -64
  store i8 %i.x, ptr %i.t, align 1, !alias.scope !3522
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store ptr %i.y, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler5vmovqENS0_11XMMRegisterENS0_8RegisterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 6 uses
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = icmp samesign ult i8 %1, 16
  store i8 -60, ptr %i.j, align 1, !alias.scope !3525
  tail call void @llvm.assume(i1 %i.m)
  %i.n = shl nuw i8 %1, 4
  %i.o = and i8 %i.n, -128
  %i.p = shl nuw nsw i8 %2, 2
  %i.q = and i8 %i.p, 32
  %i.r = or disjoint i8 %i.q, %i.o
  %i.s = xor i8 %i.r, -31
  store i8 %i.s, ptr %i.l, align 1, !alias.scope !3528
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 -7, ptr %i.t, align 1, !alias.scope !3531
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 110, ptr %i.u, align 1, !alias.scope !3534
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.w = shl nuw nsw i8 %1, 3
  %i.x = and i8 %2, 7
  %i.y = or disjoint i8 %i.x, %i.w
  %i.z = or i8 %i.y, -64
  store i8 %i.z, ptr %i.v, align 1, !alias.scope !3537
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store ptr %i.aa, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler5vmovqENS0_11XMMRegisterENS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8
  %i.k = trunc i64 %2 to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = icmp samesign ult i8 %1, 16
  store i8 -60, ptr %i.j, align 1, !alias.scope !3540
  tail call void @llvm.assume(i1 %i.m)
  %i.n = lshr i8 %1, 1
  %i.o = and i8 %i.n, 4
  %i.p = or i8 %i.o, %.sroa.3.0.extract.trunc.i
  %i.q = xor i8 %i.p, -1
  %i.r = shl i8 %i.q, 5
  %i.s = or disjoint i8 %i.r, 1
  store i8 %i.s, ptr %i.l, align 1, !alias.scope !3543
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 -7, ptr %i.t, align 1, !alias.scope !3546
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 110, ptr %i.u, align 1, !alias.scope !3549
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 4 uses
  store ptr %i.v, ptr %i.c, align 8
  %i.w = and i8 %1, 7                             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %2, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.x, align 8
  %i.y = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.z = lshr i64 %2, 16                          ; 2 uses
  %i.aa = trunc i64 %i.z to i8                    ; 2 uses
  %i.ab = trunc i64 %i.z to i32
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.ac = zext nneg i8 %i.w to i32
  %i.ad = sext i8 %i.aa to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.ac, ptr noundef %3, i32 noundef %i.ad)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.ae = icmp ult ptr %3, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = shl nuw nsw i8 %i.w, 3                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.aj = icmp ugt ptr %3, inttoptr (i64 4 to ptr)
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = zext nneg i8 %i.af to i32
  %i.al = or i32 %i.ab, %i.ak
  %i.am = add nsw i64 %i.y, -2                    ; 2 uses
  %i.an = add i64 %i.am, %i.ah
  %i.ao = inttoptr i64 %i.an to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.ao, align 1
  %i.ap = add i64 %i.am, %i.ai
  %i.aq = inttoptr i64 %i.ap to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.aq, align 1
  store i32 %i.al, ptr %i.v, align 1
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ar = or i8 %i.af, %i.aa
  %.not.i.i.i = icmp eq ptr %3, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = add nsw i64 %i.y, -2                    ; 2 uses
  %i.at = add i64 %i.as, %i.ah
  %i.au = inttoptr i64 %i.at to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.au, align 1
  %i.av = add i64 %i.as, %i.ai
  %i.aw = inttoptr i64 %i.av to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.aw, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i8 %i.ar, ptr %i.v, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.ax = load ptr, ptr %i.c, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.y
  store ptr %i.ay, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.c, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler5vmovqENS0_8RegisterENS0_11XMMRegisterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 6 uses
  %i.k = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = icmp samesign ult i8 %2, 16
  store i8 -60, ptr %i.j, align 1, !alias.scope !3552
  tail call void @llvm.assume(i1 %i.m)
  %i.n = shl nuw i8 %2, 4
  %i.o = and i8 %i.n, -128
  %i.p = shl nuw nsw i8 %1, 2
  %i.q = and i8 %i.p, 32
  %i.r = or disjoint i8 %i.o, %i.q
  %i.s = xor i8 %i.r, -31
  store i8 %i.s, ptr %i.l, align 1, !alias.scope !3555
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 -7, ptr %i.t, align 1, !alias.scope !3558
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 126, ptr %i.u, align 1, !alias.scope !3561
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.w = shl nuw nsw i8 %2, 3
  %i.x = and i8 %1, 7
  %i.y = or disjoint i8 %i.w, %i.x
  %i.z = or i8 %i.y, -64
  store i8 %i.z, ptr %i.v, align 1, !alias.scope !3564
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store ptr %i.aa, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7vmovdqaENS0_11XMMRegisterENS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %2 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %1, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 121, ptr %i.u, align 1, !alias.scope !3567
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.v = shl nuw i8 %1, 4
  %i.w = and i8 %i.v, -128
  %i.x = xor i8 %i.w, -7
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.x, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 111, ptr %i.y, align 1, !alias.scope !3570
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 4 uses
  store ptr %i.z, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.aa = and i8 %1, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %2, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.ab, align 8
  %i.ac = ptrtoint ptr %3 to i64                  ; 3 uses
  %i.ad = lshr i64 %2, 16                         ; 2 uses
  %i.ae = trunc i64 %i.ad to i8                   ; 2 uses
  %i.af = trunc i64 %i.ad to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.ag = zext nneg i8 %i.aa to i32
  %i.ah = sext i8 %i.ae to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.ag, ptr noundef %3, i32 noundef %i.ah)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.ai = icmp ult ptr %3, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = shl nuw nsw i8 %i.aa, 3                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.an = icmp ugt ptr %3, inttoptr (i64 4 to ptr)
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = zext nneg i8 %i.aj to i32
  %i.ap = or i32 %i.af, %i.ao
  %i.aq = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ar = add i64 %i.aq, %i.al
  %i.as = inttoptr i64 %i.ar to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.as, align 1
  %i.at = add i64 %i.aq, %i.am
  %i.au = inttoptr i64 %i.at to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.au, align 1
  store i32 %i.ap, ptr %i.z, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.av = or i8 %i.aj, %i.ae
  %.not.i.i.i = icmp eq ptr %3, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ax = add i64 %i.aw, %i.al
  %i.ay = inttoptr i64 %i.ax to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.ay, align 1
  %i.az = add i64 %i.aw, %i.am
  %i.ba = inttoptr i64 %i.az to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.ba, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.av, ptr %i.z, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ac
  store ptr %i.bc, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7vmovdqaENS0_11XMMRegisterES2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %2, 8
  %i.l = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  %i.m = shl nuw i8 %1, 4
  %i.n = and i8 %i.m, -128                        ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 121, ptr %i.p, align 1, !alias.scope !3573
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.q = xor i8 %i.n, -7
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink9 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.q, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink9, ptr %i.j, align 1
  store i8 %.sink, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 111, ptr %i.s, align 1, !alias.scope !3576
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.u = shl nuw nsw i8 %1, 3
  %i.v = and i8 %2, 7
  %i.w = or disjoint i8 %i.v, %i.u
  %i.x = or i8 %i.w, -64
  store i8 %i.x, ptr %i.t, align 1, !alias.scope !3579
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store ptr %i.y, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7vmovdqaENS0_11YMMRegisterENS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %2 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %1, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 125, ptr %i.u, align 1, !alias.scope !3582
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.v = shl nuw i8 %1, 4
  %i.w = and i8 %i.v, -128
  %i.x = xor i8 %i.w, -3
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.x, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 111, ptr %i.y, align 1, !alias.scope !3585
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 4 uses
  store ptr %i.z, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.aa = and i8 %1, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %2, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.ab, align 8
  %i.ac = ptrtoint ptr %3 to i64                  ; 3 uses
  %i.ad = lshr i64 %2, 16                         ; 2 uses
  %i.ae = trunc i64 %i.ad to i8                   ; 2 uses
  %i.af = trunc i64 %i.ad to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.ag = zext nneg i8 %i.aa to i32
  %i.ah = sext i8 %i.ae to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.ag, ptr noundef %3, i32 noundef %i.ah)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.ai = icmp ult ptr %3, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = shl nuw nsw i8 %i.aa, 3                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.an = icmp ugt ptr %3, inttoptr (i64 4 to ptr)
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = zext nneg i8 %i.aj to i32
  %i.ap = or i32 %i.af, %i.ao
  %i.aq = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ar = add i64 %i.aq, %i.al
  %i.as = inttoptr i64 %i.ar to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.as, align 1
  %i.at = add i64 %i.aq, %i.am
  %i.au = inttoptr i64 %i.at to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.au, align 1
  store i32 %i.ap, ptr %i.z, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.av = or i8 %i.aj, %i.ae
  %.not.i.i.i = icmp eq ptr %3, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ax = add i64 %i.aw, %i.al
  %i.ay = inttoptr i64 %i.ax to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.ay, align 1
  %i.az = add i64 %i.aw, %i.am
  %i.ba = inttoptr i64 %i.az to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.ba, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.av, ptr %i.z, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ac
  store ptr %i.bc, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7vmovdqaENS0_11YMMRegisterES2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %2, 8
  %i.l = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  %i.m = shl nuw i8 %1, 4
  %i.n = and i8 %i.m, -128                        ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 125, ptr %i.p, align 1, !alias.scope !3588
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.q = xor i8 %i.n, -3
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink9 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.q, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink9, ptr %i.j, align 1
  store i8 %.sink, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 111, ptr %i.s, align 1, !alias.scope !3591
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.u = shl nuw nsw i8 %1, 3
  %i.v = and i8 %2, 7
  %i.w = or disjoint i8 %i.v, %i.u
  %i.x = or i8 %i.w, -64
  store i8 %i.x, ptr %i.t, align 1, !alias.scope !3594
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store ptr %i.y, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7vmovdquENS0_11XMMRegisterENS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %2 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %1, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 122, ptr %i.u, align 1, !alias.scope !3597
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.v = shl nuw i8 %1, 4
  %i.w = and i8 %i.v, -128
  %i.x = xor i8 %i.w, -6
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.x, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 111, ptr %i.y, align 1, !alias.scope !3600
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 4 uses
  store ptr %i.z, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.aa = and i8 %1, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %2, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.ab, align 8
  %i.ac = ptrtoint ptr %3 to i64                  ; 3 uses
  %i.ad = lshr i64 %2, 16                         ; 2 uses
  %i.ae = trunc i64 %i.ad to i8                   ; 2 uses
  %i.af = trunc i64 %i.ad to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.ag = zext nneg i8 %i.aa to i32
  %i.ah = sext i8 %i.ae to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.ag, ptr noundef %3, i32 noundef %i.ah)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.ai = icmp ult ptr %3, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = shl nuw nsw i8 %i.aa, 3                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.an = icmp ugt ptr %3, inttoptr (i64 4 to ptr)
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = zext nneg i8 %i.aj to i32
  %i.ap = or i32 %i.af, %i.ao
  %i.aq = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ar = add i64 %i.aq, %i.al
  %i.as = inttoptr i64 %i.ar to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.as, align 1
  %i.at = add i64 %i.aq, %i.am
  %i.au = inttoptr i64 %i.at to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.au, align 1
  store i32 %i.ap, ptr %i.z, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.av = or i8 %i.aj, %i.ae
  %.not.i.i.i = icmp eq ptr %3, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ax = add i64 %i.aw, %i.al
  %i.ay = inttoptr i64 %i.ax to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.ay, align 1
  %i.az = add i64 %i.aw, %i.am
  %i.ba = inttoptr i64 %i.az to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.ba, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.av, ptr %i.z, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ac
  store ptr %i.bc, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i64 %1, ptr %2, i8 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %1, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %1 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %3, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %3, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 122, ptr %i.u, align 1, !alias.scope !3603
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.v = shl nuw i8 %3, 4
  %i.w = and i8 %i.v, -128
  %i.x = xor i8 %i.w, -6
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.x, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 127, ptr %i.y, align 1, !alias.scope !3606
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 4 uses
  store ptr %i.z, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.aa = and i8 %3, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %1, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.ab, align 8
  %i.ac = ptrtoint ptr %2 to i64                  ; 3 uses
  %i.ad = lshr i64 %1, 16                         ; 2 uses
  %i.ae = trunc i64 %i.ad to i8                   ; 2 uses
  %i.af = trunc i64 %i.ad to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.ag = zext nneg i8 %i.aa to i32
  %i.ah = sext i8 %i.ae to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.ag, ptr noundef %2, i32 noundef %i.ah)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.ai = icmp ult ptr %2, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = shl nuw nsw i8 %i.aa, 3                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.an = icmp ugt ptr %2, inttoptr (i64 4 to ptr)
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = zext nneg i8 %i.aj to i32
  %i.ap = or i32 %i.ao, %i.af
  %i.aq = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ar = add i64 %i.aq, %i.al
  %i.as = inttoptr i64 %i.ar to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.as, align 1
  %i.at = add i64 %i.aq, %i.am
  %i.au = inttoptr i64 %i.at to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.au, align 1
  store i32 %i.ap, ptr %i.z, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.av = or i8 %i.aj, %i.ae
  %.not.i.i.i = icmp eq ptr %2, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ax = add i64 %i.aw, %i.al
  %i.ay = inttoptr i64 %i.ax to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.ay, align 1
  %i.az = add i64 %i.aw, %i.am
  %i.ba = inttoptr i64 %i.az to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.ba, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.av, ptr %i.z, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ac
  store ptr %i.bc, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7vmovdquENS0_11XMMRegisterES2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %1, 8
  %i.l = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  %i.m = shl nuw i8 %2, 4
  %i.n = and i8 %i.m, -128                        ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 122, ptr %i.p, align 1, !alias.scope !3609
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.q = xor i8 %i.n, -6
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink9 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.q, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink9, ptr %i.j, align 1
  store i8 %.sink, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 127, ptr %i.s, align 1, !alias.scope !3612
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.u = shl nuw nsw i8 %2, 3
  %i.v = and i8 %1, 7
  %i.w = or disjoint i8 %i.u, %i.v
  %i.x = or i8 %i.w, -64
  store i8 %i.x, ptr %i.t, align 1, !alias.scope !3615
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store ptr %i.y, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7vmovdquENS0_11YMMRegisterENS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %2 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %1, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 126, ptr %i.u, align 1, !alias.scope !3618
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.v = shl nuw i8 %1, 4
  %i.w = and i8 %i.v, -128
  %i.x = xor i8 %i.w, -2
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.x, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 111, ptr %i.y, align 1, !alias.scope !3621
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 4 uses
  store ptr %i.z, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.aa = and i8 %1, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %2, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.ab, align 8
  %i.ac = ptrtoint ptr %3 to i64                  ; 3 uses
  %i.ad = lshr i64 %2, 16                         ; 2 uses
  %i.ae = trunc i64 %i.ad to i8                   ; 2 uses
  %i.af = trunc i64 %i.ad to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.ag = zext nneg i8 %i.aa to i32
  %i.ah = sext i8 %i.ae to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.ag, ptr noundef %3, i32 noundef %i.ah)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.ai = icmp ult ptr %3, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = shl nuw nsw i8 %i.aa, 3                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.an = icmp ugt ptr %3, inttoptr (i64 4 to ptr)
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = zext nneg i8 %i.aj to i32
  %i.ap = or i32 %i.af, %i.ao
  %i.aq = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ar = add i64 %i.aq, %i.al
  %i.as = inttoptr i64 %i.ar to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.as, align 1
  %i.at = add i64 %i.aq, %i.am
  %i.au = inttoptr i64 %i.at to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.au, align 1
  store i32 %i.ap, ptr %i.z, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.av = or i8 %i.aj, %i.ae
  %.not.i.i.i = icmp eq ptr %3, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ax = add i64 %i.aw, %i.al
  %i.ay = inttoptr i64 %i.ax to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.ay, align 1
  %i.az = add i64 %i.aw, %i.am
  %i.ba = inttoptr i64 %i.az to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.ba, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.av, ptr %i.z, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ac
  store ptr %i.bc, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11YMMRegisterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i64 %1, ptr %2, i8 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %1, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %1 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %3, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %3, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 126, ptr %i.u, align 1, !alias.scope !3624
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.v = shl nuw i8 %3, 4
  %i.w = and i8 %i.v, -128
  %i.x = xor i8 %i.w, -2
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.x, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 127, ptr %i.y, align 1, !alias.scope !3627
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 4 uses
  store ptr %i.z, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.aa = and i8 %3, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %1, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.ab, align 8
  %i.ac = ptrtoint ptr %2 to i64                  ; 3 uses
  %i.ad = lshr i64 %1, 16                         ; 2 uses
  %i.ae = trunc i64 %i.ad to i8                   ; 2 uses
  %i.af = trunc i64 %i.ad to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.ag = zext nneg i8 %i.aa to i32
  %i.ah = sext i8 %i.ae to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.ag, ptr noundef %2, i32 noundef %i.ah)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.ai = icmp ult ptr %2, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = shl nuw nsw i8 %i.aa, 3                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.an = icmp ugt ptr %2, inttoptr (i64 4 to ptr)
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = zext nneg i8 %i.aj to i32
  %i.ap = or i32 %i.ao, %i.af
  %i.aq = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ar = add i64 %i.aq, %i.al
  %i.as = inttoptr i64 %i.ar to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.as, align 1
  %i.at = add i64 %i.aq, %i.am
  %i.au = inttoptr i64 %i.at to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.au, align 1
  store i32 %i.ap, ptr %i.z, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.av = or i8 %i.aj, %i.ae
  %.not.i.i.i = icmp eq ptr %2, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ax = add i64 %i.aw, %i.al
  %i.ay = inttoptr i64 %i.ax to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.ay, align 1
  %i.az = add i64 %i.aw, %i.am
  %i.ba = inttoptr i64 %i.az to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.ba, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.av, ptr %i.z, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ac
  store ptr %i.bc, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7vmovdquENS0_11YMMRegisterES2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %1, 8
  %i.l = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  %i.m = shl nuw i8 %2, 4
  %i.n = and i8 %i.m, -128                        ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 126, ptr %i.p, align 1, !alias.scope !3630
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.q = xor i8 %i.n, -2
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink9 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.q, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink9, ptr %i.j, align 1
  store i8 %.sink, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 127, ptr %i.s, align 1, !alias.scope !3633
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.u = shl nuw nsw i8 %2, 3
  %i.v = and i8 %1, 7
  %i.w = or disjoint i8 %i.u, %i.v
  %i.x = or i8 %i.w, -64
  store i8 %i.x, ptr %i.t, align 1, !alias.scope !3636
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store ptr %i.y, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7vmovlpsENS0_11XMMRegisterES2_NS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2, i64 %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %3, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %3 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %1, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.v = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = shl nuw nsw i8 %2, 3
  %i.x = xor i8 %i.w, 120
  store i8 %i.x, ptr %i.u, align 1, !alias.scope !3639
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.y = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = shl nuw nsw i8 %1, 1
  %i.aa = and i8 %i.z, 16
  %i.ab = or disjoint i8 %i.aa, %2
  %i.ac = xor i8 %i.ab, -1
  %i.ad = shl i8 %i.ac, 3
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink11 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.ad, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink11, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 18, ptr %i.ae, align 1, !alias.scope !3642
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 4 uses
  store ptr %i.af, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.ag = and i8 %1, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %3, ptr %5, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.ah, align 8
  %i.ai = ptrtoint ptr %4 to i64                  ; 3 uses
  %i.aj = lshr i64 %3, 16                         ; 2 uses
  %i.ak = trunc i64 %i.aj to i8                   ; 2 uses
  %i.al = trunc i64 %i.aj to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.am = zext nneg i8 %i.ag to i32
  %i.an = sext i8 %i.ak to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.am, ptr noundef %4, i32 noundef %i.an)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.ao = icmp ult ptr %4, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = shl nuw nsw i8 %i.ag, 3                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.ar = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.as = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.at = icmp ugt ptr %4, inttoptr (i64 4 to ptr)
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = zext nneg i8 %i.ap to i32
  %i.av = or i32 %i.al, %i.au
  %i.aw = add nsw i64 %i.ai, -2                   ; 2 uses
  %i.ax = add i64 %i.aw, %i.ar
  %i.ay = inttoptr i64 %i.ax to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.ay, align 1
  %i.az = add i64 %i.aw, %i.as
  %i.ba = inttoptr i64 %i.az to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.ba, align 1
  store i32 %i.av, ptr %i.af, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bb = or i8 %i.ap, %i.ak
  %.not.i.i.i = icmp eq ptr %4, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = add nsw i64 %i.ai, -2                   ; 2 uses
  %i.bd = add i64 %i.bc, %i.ar
  %i.be = inttoptr i64 %i.bd to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.be, align 1
  %i.bf = add i64 %i.bc, %i.as
  %i.bg = inttoptr i64 %i.bf to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.bg, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.bb, ptr %i.af, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bh = load ptr, ptr %i.c, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ai
  store ptr %i.bi, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7vmovlpsENS0_7OperandENS0_11XMMRegisterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i64 %1, ptr %2, i8 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %1, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %1 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %3, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %3, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 120, ptr %i.u, align 1, !alias.scope !3645
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.v = shl nuw i8 %3, 4
  %i.w = and i8 %i.v, -128
  %i.x = xor i8 %i.w, -8
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.x, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 19, ptr %i.y, align 1, !alias.scope !3648
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 4 uses
  store ptr %i.z, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.aa = and i8 %3, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %1, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.ab, align 8
  %i.ac = ptrtoint ptr %2 to i64                  ; 3 uses
  %i.ad = lshr i64 %1, 16                         ; 2 uses
  %i.ae = trunc i64 %i.ad to i8                   ; 2 uses
  %i.af = trunc i64 %i.ad to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.ag = zext nneg i8 %i.aa to i32
  %i.ah = sext i8 %i.ae to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.ag, ptr noundef %2, i32 noundef %i.ah)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.ai = icmp ult ptr %2, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = shl nuw nsw i8 %i.aa, 3                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.an = icmp ugt ptr %2, inttoptr (i64 4 to ptr)
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = zext nneg i8 %i.aj to i32
  %i.ap = or i32 %i.ao, %i.af
  %i.aq = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ar = add i64 %i.aq, %i.al
  %i.as = inttoptr i64 %i.ar to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.as, align 1
  %i.at = add i64 %i.aq, %i.am
  %i.au = inttoptr i64 %i.at to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.au, align 1
  store i32 %i.ap, ptr %i.z, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.av = or i8 %i.aj, %i.ae
  %.not.i.i.i = icmp eq ptr %2, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ax = add i64 %i.aw, %i.al
  %i.ay = inttoptr i64 %i.ax to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.ay, align 1
  %i.az = add i64 %i.aw, %i.am
  %i.ba = inttoptr i64 %i.az to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.ba, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.av, ptr %i.z, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ac
  store ptr %i.bc, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7vmovhpsENS0_11XMMRegisterES2_NS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2, i64 %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %3, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %3 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %1, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.v = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = shl nuw nsw i8 %2, 3
  %i.x = xor i8 %i.w, 120
  store i8 %i.x, ptr %i.u, align 1, !alias.scope !3651
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.y = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = shl nuw nsw i8 %1, 1
  %i.aa = and i8 %i.z, 16
  %i.ab = or disjoint i8 %i.aa, %2
  %i.ac = xor i8 %i.ab, -1
  %i.ad = shl i8 %i.ac, 3
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink11 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.ad, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink11, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 22, ptr %i.ae, align 1, !alias.scope !3654
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 4 uses
  store ptr %i.af, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.ag = and i8 %1, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %3, ptr %5, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.ah, align 8
  %i.ai = ptrtoint ptr %4 to i64                  ; 3 uses
  %i.aj = lshr i64 %3, 16                         ; 2 uses
  %i.ak = trunc i64 %i.aj to i8                   ; 2 uses
  %i.al = trunc i64 %i.aj to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.am = zext nneg i8 %i.ag to i32
  %i.an = sext i8 %i.ak to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.am, ptr noundef %4, i32 noundef %i.an)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.ao = icmp ult ptr %4, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = shl nuw nsw i8 %i.ag, 3                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.ar = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.as = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.at = icmp ugt ptr %4, inttoptr (i64 4 to ptr)
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = zext nneg i8 %i.ap to i32
  %i.av = or i32 %i.al, %i.au
  %i.aw = add nsw i64 %i.ai, -2                   ; 2 uses
  %i.ax = add i64 %i.aw, %i.ar
  %i.ay = inttoptr i64 %i.ax to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.ay, align 1
  %i.az = add i64 %i.aw, %i.as
  %i.ba = inttoptr i64 %i.az to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.ba, align 1
  store i32 %i.av, ptr %i.af, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bb = or i8 %i.ap, %i.ak
  %.not.i.i.i = icmp eq ptr %4, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = add nsw i64 %i.ai, -2                   ; 2 uses
  %i.bd = add i64 %i.bc, %i.ar
  %i.be = inttoptr i64 %i.bd to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.be, align 1
  %i.bf = add i64 %i.bc, %i.as
  %i.bg = inttoptr i64 %i.bf to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.bg, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.bb, ptr %i.af, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bh = load ptr, ptr %i.c, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ai
  store ptr %i.bi, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7vmovhpsENS0_7OperandENS0_11XMMRegisterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i64 %1, ptr %2, i8 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %1, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %1 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %3, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %3, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 120, ptr %i.u, align 1, !alias.scope !3657
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.v = shl nuw i8 %3, 4
  %i.w = and i8 %i.v, -128
  %i.x = xor i8 %i.w, -8
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.x, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 23, ptr %i.y, align 1, !alias.scope !3660
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 4 uses
  store ptr %i.z, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.aa = and i8 %3, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %1, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.ab, align 8
  %i.ac = ptrtoint ptr %2 to i64                  ; 3 uses
  %i.ad = lshr i64 %1, 16                         ; 2 uses
  %i.ae = trunc i64 %i.ad to i8                   ; 2 uses
  %i.af = trunc i64 %i.ad to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.ag = zext nneg i8 %i.aa to i32
  %i.ah = sext i8 %i.ae to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.ag, ptr noundef %2, i32 noundef %i.ah)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.ai = icmp ult ptr %2, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = shl nuw nsw i8 %i.aa, 3                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.an = icmp ugt ptr %2, inttoptr (i64 4 to ptr)
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = zext nneg i8 %i.aj to i32
  %i.ap = or i32 %i.ao, %i.af
  %i.aq = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ar = add i64 %i.aq, %i.al
  %i.as = inttoptr i64 %i.ar to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.as, align 1
  %i.at = add i64 %i.aq, %i.am
  %i.au = inttoptr i64 %i.at to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.au, align 1
  store i32 %i.ap, ptr %i.z, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.av = or i8 %i.aj, %i.ae
  %.not.i.i.i = icmp eq ptr %2, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ax = add i64 %i.aw, %i.al
  %i.ay = inttoptr i64 %i.ax to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.ay, align 1
  %i.az = add i64 %i.aw, %i.am
  %i.ba = inttoptr i64 %i.az to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.ba, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.av, ptr %i.z, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ac
  store ptr %i.bc, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_S2_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i8 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %4, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = lshr i8 %4, 3
  %i.m = zext nneg i8 %i.l to i32
  %i.n = icmp ne i32 %6, 1
  %i.o = or i32 %7, %i.m
  %i.p = icmp ne i32 %i.o, 0
  %or.cond3.i = or i1 %i.n, %i.p
  %i.q = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.q)
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.r = shl nuw i8 %2, 4
  %i.s = and i8 %i.r, -128
  %i.t = shl nuw nsw i8 %4, 2
  %i.u = and i8 %i.t, 32
  %i.v = or disjoint i8 %i.u, %i.s
  %i.w = xor i8 %i.v, -32
  %i.x = trunc i32 %6 to i8
  %i.y = or i8 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.aa = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = shl nuw nsw i8 %3, 3
  %i.ac = xor i8 %i.ab, 120
  %i.ad = or i32 %7, %5
  %i.ae = trunc i32 %i.ad to i8
  %i.af = or i8 %i.ac, %i.ae
  store i8 %i.af, ptr %i.z, align 1, !alias.scope !3663
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.ag = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = shl nuw nsw i8 %2, 1
  %i.ai = and i8 %i.ah, 16
  %i.aj = or disjoint i8 %i.ai, %3
  %i.ak = xor i8 %i.aj, -1
  %i.al = shl i8 %i.ak, 3
  %i.am = trunc i32 %5 to i8
  %i.an = or i8 %i.al, %i.am
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink13 = phi i8 [ -60, %bb.c ], [ -59, %bb.d ]
  %.sink = phi i8 [ %i.y, %bb.c ], [ %i.an, %bb.d ]
  %.sink20.i = phi i64 [ 3, %bb.c ], [ 2, %bb.d ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink13, ptr %i.j, align 1
  store i8 %.sink, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 %1, ptr %i.ap, align 1, !alias.scope !3666
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  tail call void @llvm.assume(i1 %i.q)
  %i.ar = shl nuw nsw i8 %2, 3
  %i.as = and i8 %4, 7
  %i.at = or disjoint i8 %i.as, %i.ar
  %i.au = or i8 %i.at, -64
  store i8 %i.au, ptr %i.aq, align 1, !alias.scope !3669
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store ptr %i.av, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i64 %4, ptr %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 align 2 {
bb.a:
  %10 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %4, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %4 to i1
  %i.l = icmp ne i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = icmp ne i32 %7, 1
  %or.cond.i = or i1 %i.l, %i.m
  %i.n = icmp ne i32 %8, 0
  %or.cond3.i = or i1 %or.cond.i, %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.p = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.p)
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.q = lshr i8 %2, 1
  %i.r = and i8 %i.q, 4
  %i.s = or i8 %i.r, %.sroa.3.0.extract.trunc.i
  %i.t = xor i8 %i.s, -1
  %i.u = shl i8 %i.t, 5
  %i.v = trunc i32 %7 to i8
  %i.w = or i8 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.y = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = shl nuw nsw i8 %3, 3
  %i.aa = xor i8 %i.z, 120
  %i.ab = or i32 %8, %6
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = or i8 %i.aa, %i.ac
  store i8 %i.ad, ptr %i.x, align 1, !alias.scope !3672
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.ae = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = shl nuw nsw i8 %2, 1
  %i.ag = and i8 %i.af, 16
  %i.ah = or disjoint i8 %i.ag, %3
  %i.ai = xor i8 %i.ah, -1
  %i.aj = shl i8 %i.ai, 3
  %i.ak = trunc i32 %6 to i8
  %i.al = or i8 %i.aj, %i.ak
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink14 = phi i8 [ -60, %bb.c ], [ -59, %bb.d ]
  %.sink = phi i8 [ %i.w, %bb.c ], [ %i.al, %bb.d ]
  %.sink21.i = phi i64 [ 3, %bb.c ], [ 2, %bb.d ]
  store i8 %.sink14, ptr %i.j, align 1
  store i8 %.sink, ptr %i.o, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 %1, ptr %i.am, align 1, !alias.scope !3675
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 4 uses
  store ptr %i.an, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.p)
  %i.ao = and i8 %2, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i64 %4, ptr %10, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.ap, align 8
  %i.aq = ptrtoint ptr %5 to i64                  ; 3 uses
  %i.ar = lshr i64 %4, 16                         ; 2 uses
  %i.as = trunc i64 %i.ar to i8                   ; 2 uses
  %i.at = trunc i64 %i.ar to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.au = zext nneg i8 %i.ao to i32
  %i.av = sext i8 %i.as to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.au, ptr noundef %5, i32 noundef %i.av)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %i.aw = icmp ult ptr %5, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = shl nuw nsw i8 %i.ao, 3                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 2
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.bb = icmp ugt ptr %5, inttoptr (i64 4 to ptr)
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = zext nneg i8 %i.ax to i32
  %i.bd = or i32 %i.at, %i.bc
  %i.be = add nsw i64 %i.aq, -2                   ; 2 uses
  %i.bf = add i64 %i.be, %i.az
  %i.bg = inttoptr i64 %i.bf to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.bg, align 1
  %i.bh = add i64 %i.be, %i.ba
  %i.bi = inttoptr i64 %i.bh to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.bi, align 1
  store i32 %i.bd, ptr %i.an, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bj = or i8 %i.ax, %i.as
  %.not.i.i.i = icmp eq ptr %5, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = add nsw i64 %i.aq, -2                   ; 2 uses
  %i.bl = add i64 %i.bk, %i.az
  %i.bm = inttoptr i64 %i.bl to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.bm, align 1
  %i.bn = add i64 %i.bk, %i.ba
  %i.bo = inttoptr i64 %i.bn to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.bo, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.bj, ptr %i.an, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bp = load ptr, ptr %i.c, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.aq
  store ptr %i.bq, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler3vpsEhNS0_11XMMRegisterES2_S2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i8 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %4, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %4, 8
  %i.l = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.m = shl nuw i8 %2, 4
  %i.n = and i8 %i.m, -128
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.q = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = shl nuw nsw i8 %3, 3
  %i.s = xor i8 %i.r, 120
  store i8 %i.s, ptr %i.p, align 1, !alias.scope !3678
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.t = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = shl nuw nsw i8 %2, 1
  %i.v = and i8 %i.u, 16
  %i.w = or disjoint i8 %i.v, %3
  %i.x = xor i8 %i.w, -1
  %i.y = shl i8 %i.x, 3
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.y, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 %1, ptr %i.aa, align 1, !alias.scope !3681
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.ac = shl nuw nsw i8 %2, 3
  %i.ad = and i8 %4, 7
  %i.ae = or disjoint i8 %i.ad, %i.ac
  %i.af = or i8 %i.ae, -64
  store i8 %i.af, ptr %i.ab, align 1, !alias.scope !3684
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store ptr %i.ag, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler3vpsEhNS0_11YMMRegisterES2_S2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i8 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %4, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %4, 8
  %i.l = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.m = shl nuw i8 %2, 4
  %i.n = and i8 %i.m, -128
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.q = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = shl nuw nsw i8 %3, 3
  %i.s = xor i8 %i.r, 124
  store i8 %i.s, ptr %i.p, align 1, !alias.scope !3687
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.t = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = shl nuw nsw i8 %2, 1
  %i.v = and i8 %i.u, 16
  %i.w = or disjoint i8 %i.v, %3
  %i.x = xor i8 %i.w, -1
  %i.y = shl i8 %i.x, 3
  %i.z = or disjoint i8 %i.y, 4
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.z, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 %1, ptr %i.ab, align 1, !alias.scope !3690
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.ad = shl nuw nsw i8 %2, 3
  %i.ae = and i8 %4, 7
  %i.af = or disjoint i8 %i.ae, %i.ad
  %i.ag = or i8 %i.af, -64
  store i8 %i.ag, ptr %i.ac, align 1, !alias.scope !3693
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store ptr %i.ah, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler3vpsEhNS0_11XMMRegisterES2_NS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i64 %4, ptr %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %4, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %4 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %2, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.v = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = shl nuw nsw i8 %3, 3
  %i.x = xor i8 %i.w, 120
  store i8 %i.x, ptr %i.u, align 1, !alias.scope !3696
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.y = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = shl nuw nsw i8 %2, 1
  %i.aa = and i8 %i.z, 16
  %i.ab = or disjoint i8 %i.aa, %3
  %i.ac = xor i8 %i.ab, -1
  %i.ad = shl i8 %i.ac, 3
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink11 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.ad, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink11, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 %1, ptr %i.ae, align 1, !alias.scope !3699
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 4 uses
  store ptr %i.af, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.ag = and i8 %2, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %4, ptr %6, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.ah, align 8
  %i.ai = ptrtoint ptr %5 to i64                  ; 3 uses
  %i.aj = lshr i64 %4, 16                         ; 2 uses
  %i.ak = trunc i64 %i.aj to i8                   ; 2 uses
  %i.al = trunc i64 %i.aj to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.am = zext nneg i8 %i.ag to i32
  %i.an = sext i8 %i.ak to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.am, ptr noundef %5, i32 noundef %i.an)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %i.ao = icmp ult ptr %5, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = shl nuw nsw i8 %i.ag, 3                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.ar = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.as = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.at = icmp ugt ptr %5, inttoptr (i64 4 to ptr)
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = zext nneg i8 %i.ap to i32
  %i.av = or i32 %i.al, %i.au
  %i.aw = add nsw i64 %i.ai, -2                   ; 2 uses
  %i.ax = add i64 %i.aw, %i.ar
  %i.ay = inttoptr i64 %i.ax to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.ay, align 1
  %i.az = add i64 %i.aw, %i.as
  %i.ba = inttoptr i64 %i.az to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.ba, align 1
  store i32 %i.av, ptr %i.af, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bb = or i8 %i.ap, %i.ak
  %.not.i.i.i = icmp eq ptr %5, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = add nsw i64 %i.ai, -2                   ; 2 uses
  %i.bd = add i64 %i.bc, %i.ar
  %i.be = inttoptr i64 %i.bd to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.be, align 1
  %i.bf = add i64 %i.bc, %i.as
  %i.bg = inttoptr i64 %i.bf to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.bg, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.bb, ptr %i.af, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bh = load ptr, ptr %i.c, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ai
  store ptr %i.bi, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler3vpsEhNS0_11YMMRegisterES2_NS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i64 %4, ptr %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %4, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %4 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %2, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.v = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = shl nuw nsw i8 %3, 3
  %i.x = xor i8 %i.w, 124
  store i8 %i.x, ptr %i.u, align 1, !alias.scope !3702
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.y = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = shl nuw nsw i8 %2, 1
  %i.aa = and i8 %i.z, 16
  %i.ab = or disjoint i8 %i.aa, %3
  %i.ac = xor i8 %i.ab, -1
  %i.ad = shl i8 %i.ac, 3
  %i.ae = or disjoint i8 %i.ad, 4
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink11 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.ae, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink11, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 %1, ptr %i.af, align 1, !alias.scope !3705
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 4 uses
  store ptr %i.ag, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.ah = and i8 %2, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %4, ptr %6, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.ai, align 8
  %i.aj = ptrtoint ptr %5 to i64                  ; 3 uses
  %i.ak = lshr i64 %4, 16                         ; 2 uses
  %i.al = trunc i64 %i.ak to i8                   ; 2 uses
  %i.am = trunc i64 %i.ak to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.an = zext nneg i8 %i.ah to i32
  %i.ao = sext i8 %i.al to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.an, ptr noundef %5, i32 noundef %i.ao)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %i.ap = icmp ult ptr %5, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = shl nuw nsw i8 %i.ah, 3                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.at = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.au = icmp ugt ptr %5, inttoptr (i64 4 to ptr)
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = zext nneg i8 %i.aq to i32
  %i.aw = or i32 %i.am, %i.av
  %i.ax = add nsw i64 %i.aj, -2                   ; 2 uses
  %i.ay = add i64 %i.ax, %i.as
  %i.az = inttoptr i64 %i.ay to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.az, align 1
  %i.ba = add i64 %i.ax, %i.at
  %i.bb = inttoptr i64 %i.ba to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.bb, align 1
  store i32 %i.aw, ptr %i.ag, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bc = or i8 %i.aq, %i.al
  %.not.i.i.i = icmp eq ptr %5, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = add nsw i64 %i.aj, -2                   ; 2 uses
  %i.be = add i64 %i.bd, %i.as
  %i.bf = inttoptr i64 %i.be to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.bf, align 1
  %i.bg = add i64 %i.bd, %i.at
  %i.bh = inttoptr i64 %i.bg to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.bh, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.bc, ptr %i.ag, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bi = load ptr, ptr %i.c, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.aj
  store ptr %i.bj, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler3vpsEhNS0_11XMMRegisterES2_S2_h(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i8 %4, i8 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %4, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %4, 8
  %i.l = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.m = shl nuw i8 %2, 4
  %i.n = and i8 %i.m, -128
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.q = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = shl nuw nsw i8 %3, 3
  %i.s = xor i8 %i.r, 120
  store i8 %i.s, ptr %i.p, align 1, !alias.scope !3708
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.t = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = shl nuw nsw i8 %2, 1
  %i.v = and i8 %i.u, 16
  %i.w = or disjoint i8 %i.v, %3
  %i.x = xor i8 %i.w, -1
  %i.y = shl i8 %i.x, 3
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink11 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.y, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink11, ptr %i.j, align 1
  store i8 %.sink, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 4 uses
  store i8 %1, ptr %i.aa, align 1, !alias.scope !3711
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.ac = shl nuw nsw i8 %2, 3
  %i.ad = and i8 %4, 7
  %i.ae = or disjoint i8 %i.ad, %i.ac
  %i.af = or i8 %i.ae, -64
  store i8 %i.af, ptr %i.ab, align 1, !alias.scope !3714
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i8 %5, ptr %i.ag, align 1, !alias.scope !3717
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  store ptr %i.ah, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler3vpsEhNS0_11YMMRegisterES2_S2_h(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i8 %4, i8 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %4, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %4, 8
  %i.l = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.m = shl nuw i8 %2, 4
  %i.n = and i8 %i.m, -128
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.q = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = shl nuw nsw i8 %3, 3
  %i.s = xor i8 %i.r, 124
  store i8 %i.s, ptr %i.p, align 1, !alias.scope !3720
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.t = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = shl nuw nsw i8 %2, 1
  %i.v = and i8 %i.u, 16
  %i.w = or disjoint i8 %i.v, %3
  %i.x = xor i8 %i.w, -1
  %i.y = shl i8 %i.x, 3
  %i.z = or disjoint i8 %i.y, 4
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink11 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.z, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink11, ptr %i.j, align 1
  store i8 %.sink, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 4 uses
  store i8 %1, ptr %i.ab, align 1, !alias.scope !3723
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.ad = shl nuw nsw i8 %2, 3
  %i.ae = and i8 %4, 7
  %i.af = or disjoint i8 %i.ae, %i.ad
  %i.ag = or i8 %i.af, -64
  store i8 %i.ag, ptr %i.ac, align 1, !alias.scope !3726
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i8 %5, ptr %i.ah, align 1, !alias.scope !3729
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  store ptr %i.ai, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler3vpdEhNS0_11XMMRegisterES2_S2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i8 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %4, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %4, 8
  %i.l = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.m = shl nuw i8 %2, 4
  %i.n = and i8 %i.m, -128
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.q = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = shl nuw nsw i8 %3, 3
  %i.s = xor i8 %i.r, 121
  store i8 %i.s, ptr %i.p, align 1, !alias.scope !3732
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.t = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = shl nuw nsw i8 %2, 1
  %i.v = and i8 %i.u, 16
  %i.w = or disjoint i8 %i.v, %3
  %i.x = xor i8 %i.w, -1
  %i.y = shl i8 %i.x, 3
  %i.z = or disjoint i8 %i.y, 1
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.z, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 %1, ptr %i.ab, align 1, !alias.scope !3735
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.ad = shl nuw nsw i8 %2, 3
  %i.ae = and i8 %4, 7
  %i.af = or disjoint i8 %i.ae, %i.ad
  %i.ag = or i8 %i.af, -64
  store i8 %i.ag, ptr %i.ac, align 1, !alias.scope !3738
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store ptr %i.ah, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler3vpdEhNS0_11XMMRegisterES2_NS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i64 %4, ptr %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %4, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %4 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %2, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.u = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = shl nuw nsw i8 %3, 3
  %i.w = xor i8 %i.v, 121
  store i8 %i.w, ptr %i.t, align 1, !alias.scope !3741
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.x = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = shl nuw nsw i8 %2, 1
  %i.z = and i8 %i.y, 16
  %i.aa = or disjoint i8 %i.z, %3
  %i.ab = xor i8 %i.aa, -1
  %i.ac = shl i8 %i.ab, 3
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink11 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink.in = phi i8 [ %i.ac, %bb.d ], [ %i.s, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %.sink = or disjoint i8 %.sink.in, 1
  store i8 %.sink11, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 %1, ptr %i.ad, align 1, !alias.scope !3744
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 4 uses
  store ptr %i.ae, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.af = and i8 %2, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %4, ptr %6, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.ag, align 8
  %i.ah = ptrtoint ptr %5 to i64                  ; 3 uses
  %i.ai = lshr i64 %4, 16                         ; 2 uses
  %i.aj = trunc i64 %i.ai to i8                   ; 2 uses
  %i.ak = trunc i64 %i.ai to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.al = zext nneg i8 %i.af to i32
  %i.am = sext i8 %i.aj to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.al, ptr noundef %5, i32 noundef %i.am)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %i.an = icmp ult ptr %5, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = shl nuw nsw i8 %i.af, 3                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.as = icmp ugt ptr %5, inttoptr (i64 4 to ptr)
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = zext nneg i8 %i.ao to i32
  %i.au = or i32 %i.ak, %i.at
  %i.av = add nsw i64 %i.ah, -2                   ; 2 uses
  %i.aw = add i64 %i.av, %i.aq
  %i.ax = inttoptr i64 %i.aw to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.ax, align 1
  %i.ay = add i64 %i.av, %i.ar
  %i.az = inttoptr i64 %i.ay to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.az, align 1
  store i32 %i.au, ptr %i.ae, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ba = or i8 %i.ao, %i.aj
  %.not.i.i.i = icmp eq ptr %5, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = add nsw i64 %i.ah, -2                   ; 2 uses
  %i.bc = add i64 %i.bb, %i.aq
  %i.bd = inttoptr i64 %i.bc to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.bd, align 1
  %i.be = add i64 %i.bb, %i.ar
  %i.bf = inttoptr i64 %i.be to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.bf, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.ba, ptr %i.ae, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bg = load ptr, ptr %i.c, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ah
  store ptr %i.bh, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler3vpdEhNS0_11XMMRegisterENS0_11YMMRegisterES3_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i8 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %4, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %4, 8
  %i.l = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.m = shl nuw i8 %2, 4
  %i.n = and i8 %i.m, -128
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.q = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = shl nuw nsw i8 %3, 3
  %i.s = xor i8 %i.r, 125
  store i8 %i.s, ptr %i.p, align 1, !alias.scope !3747
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.t = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = shl nuw nsw i8 %2, 1
  %i.v = and i8 %i.u, 16
  %i.w = or disjoint i8 %i.v, %3
  %i.x = xor i8 %i.w, -1
  %i.y = shl i8 %i.x, 3
  %i.z = or disjoint i8 %i.y, 5
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.z, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 %1, ptr %i.ab, align 1, !alias.scope !3750
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.ad = shl nuw nsw i8 %2, 3
  %i.ae = and i8 %4, 7
  %i.af = or disjoint i8 %i.ae, %i.ad
  %i.ag = or i8 %i.af, -64
  store i8 %i.ag, ptr %i.ac, align 1, !alias.scope !3753
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store ptr %i.ah, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler3vpdEhNS0_11XMMRegisterENS0_11YMMRegisterENS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i64 %4, ptr %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %4, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %4 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %2, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.v = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = shl nuw nsw i8 %3, 3
  %i.x = xor i8 %i.w, 125
  store i8 %i.x, ptr %i.u, align 1, !alias.scope !3756
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.y = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = shl nuw nsw i8 %2, 1
  %i.aa = and i8 %i.z, 16
  %i.ab = or disjoint i8 %i.aa, %3
  %i.ac = xor i8 %i.ab, -1
  %i.ad = shl i8 %i.ac, 3
  %i.ae = or disjoint i8 %i.ad, 5
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink11 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.ae, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink11, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 %1, ptr %i.af, align 1, !alias.scope !3759
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 4 uses
  store ptr %i.ag, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.ah = and i8 %2, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %4, ptr %6, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.ai, align 8
  %i.aj = ptrtoint ptr %5 to i64                  ; 3 uses
  %i.ak = lshr i64 %4, 16                         ; 2 uses
  %i.al = trunc i64 %i.ak to i8                   ; 2 uses
  %i.am = trunc i64 %i.ak to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.an = zext nneg i8 %i.ah to i32
  %i.ao = sext i8 %i.al to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.an, ptr noundef %5, i32 noundef %i.ao)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %i.ap = icmp ult ptr %5, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = shl nuw nsw i8 %i.ah, 3                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.at = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.au = icmp ugt ptr %5, inttoptr (i64 4 to ptr)
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = zext nneg i8 %i.aq to i32
  %i.aw = or i32 %i.am, %i.av
  %i.ax = add nsw i64 %i.aj, -2                   ; 2 uses
  %i.ay = add i64 %i.ax, %i.as
  %i.az = inttoptr i64 %i.ay to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.az, align 1
  %i.ba = add i64 %i.ax, %i.at
  %i.bb = inttoptr i64 %i.ba to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.bb, align 1
  store i32 %i.aw, ptr %i.ag, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bc = or i8 %i.aq, %i.al
  %.not.i.i.i = icmp eq ptr %5, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = add nsw i64 %i.aj, -2                   ; 2 uses
  %i.be = add i64 %i.bd, %i.as
  %i.bf = inttoptr i64 %i.be to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.bf, align 1
  %i.bg = add i64 %i.bd, %i.at
  %i.bh = inttoptr i64 %i.bg to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.bh, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.bc, ptr %i.ag, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bi = load ptr, ptr %i.c, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.aj
  store ptr %i.bj, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler3vpdEhNS0_11YMMRegisterES2_S2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i8 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %4, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %4, 8
  %i.l = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.m = shl nuw i8 %2, 4
  %i.n = and i8 %i.m, -128
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.q = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = shl nuw nsw i8 %3, 3
  %i.s = xor i8 %i.r, 125
  store i8 %i.s, ptr %i.p, align 1, !alias.scope !3762
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.t = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = shl nuw nsw i8 %2, 1
  %i.v = and i8 %i.u, 16
  %i.w = or disjoint i8 %i.v, %3
  %i.x = xor i8 %i.w, -1
  %i.y = shl i8 %i.x, 3
  %i.z = or disjoint i8 %i.y, 5
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.z, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 %1, ptr %i.ab, align 1, !alias.scope !3765
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.ad = shl nuw nsw i8 %2, 3
  %i.ae = and i8 %4, 7
  %i.af = or disjoint i8 %i.ae, %i.ad
  %i.ag = or i8 %i.af, -64
  store i8 %i.ag, ptr %i.ac, align 1, !alias.scope !3768
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store ptr %i.ah, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler3vpdEhNS0_11YMMRegisterES2_NS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i64 %4, ptr %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %4, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %4 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %2, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.v = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = shl nuw nsw i8 %3, 3
  %i.x = xor i8 %i.w, 125
  store i8 %i.x, ptr %i.u, align 1, !alias.scope !3771
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.y = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = shl nuw nsw i8 %2, 1
  %i.aa = and i8 %i.z, 16
  %i.ab = or disjoint i8 %i.aa, %3
  %i.ac = xor i8 %i.ab, -1
  %i.ad = shl i8 %i.ac, 3
  %i.ae = or disjoint i8 %i.ad, 5
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink11 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.ae, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink11, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 %1, ptr %i.af, align 1, !alias.scope !3774
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 4 uses
  store ptr %i.ag, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.ah = and i8 %2, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %4, ptr %6, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.ai, align 8
  %i.aj = ptrtoint ptr %5 to i64                  ; 3 uses
  %i.ak = lshr i64 %4, 16                         ; 2 uses
  %i.al = trunc i64 %i.ak to i8                   ; 2 uses
  %i.am = trunc i64 %i.ak to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.an = zext nneg i8 %i.ah to i32
  %i.ao = sext i8 %i.al to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.an, ptr noundef %5, i32 noundef %i.ao)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %i.ap = icmp ult ptr %5, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = shl nuw nsw i8 %i.ah, 3                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.at = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.au = icmp ugt ptr %5, inttoptr (i64 4 to ptr)
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = zext nneg i8 %i.aq to i32
  %i.aw = or i32 %i.am, %i.av
  %i.ax = add nsw i64 %i.aj, -2                   ; 2 uses
  %i.ay = add i64 %i.ax, %i.as
  %i.az = inttoptr i64 %i.ay to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.az, align 1
  %i.ba = add i64 %i.ax, %i.at
  %i.bb = inttoptr i64 %i.ba to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.bb, align 1
  store i32 %i.aw, ptr %i.ag, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bc = or i8 %i.aq, %i.al
  %.not.i.i.i = icmp eq ptr %5, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = add nsw i64 %i.aj, -2                   ; 2 uses
  %i.be = add i64 %i.bd, %i.as
  %i.bf = inttoptr i64 %i.be to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.bf, align 1
  %i.bg = add i64 %i.bd, %i.at
  %i.bh = inttoptr i64 %i.bg to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.bh, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.bc, ptr %i.ag, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bi = load ptr, ptr %i.c, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.aj
  store ptr %i.bj, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler9vcvtph2psENS0_11XMMRegisterES2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 6 uses
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = icmp samesign ult i8 %1, 16
  store i8 -60, ptr %i.j, align 1, !alias.scope !3777
  tail call void @llvm.assume(i1 %i.m)
  %i.n = shl nuw i8 %1, 4
  %i.o = and i8 %i.n, -128
  %i.p = shl nuw nsw i8 %2, 2
  %i.q = and i8 %i.p, 32
  %i.r = or disjoint i8 %i.q, %i.o
  %i.s = xor i8 %i.r, -30
  store i8 %i.s, ptr %i.l, align 1, !alias.scope !3780
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 121, ptr %i.t, align 1, !alias.scope !3783
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 19, ptr %i.u, align 1, !alias.scope !3786
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.w = shl nuw nsw i8 %1, 3
  %i.x = and i8 %2, 7
  %i.y = or disjoint i8 %i.x, %i.w
  %i.z = or i8 %i.y, -64
  store i8 %i.z, ptr %i.v, align 1, !alias.scope !3789
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store ptr %i.aa, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler9vcvtph2psENS0_11YMMRegisterENS0_11XMMRegisterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 6 uses
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = icmp samesign ult i8 %1, 16
  store i8 -60, ptr %i.j, align 1, !alias.scope !3792
  tail call void @llvm.assume(i1 %i.m)
  %i.n = shl nuw i8 %1, 4
  %i.o = and i8 %i.n, -128
  %i.p = shl nuw nsw i8 %2, 2
  %i.q = and i8 %i.p, 32
  %i.r = or disjoint i8 %i.q, %i.o
  %i.s = xor i8 %i.r, -30
  store i8 %i.s, ptr %i.l, align 1, !alias.scope !3795
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 125, ptr %i.t, align 1, !alias.scope !3798
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 19, ptr %i.u, align 1, !alias.scope !3801
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.w = shl nuw nsw i8 %1, 3
  %i.x = and i8 %2, 7
  %i.y = or disjoint i8 %i.x, %i.w
  %i.z = or i8 %i.y, -64
  store i8 %i.z, ptr %i.v, align 1, !alias.scope !3804
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store ptr %i.aa, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler9vcvtps2phENS0_11XMMRegisterENS0_11YMMRegisterEh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 7 uses
  %i.k = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = icmp samesign ult i8 %2, 16
  store i8 -60, ptr %i.j, align 1, !alias.scope !3807
  tail call void @llvm.assume(i1 %i.m)
  %i.n = shl nuw i8 %2, 4
  %i.o = and i8 %i.n, -128
  %i.p = shl nuw nsw i8 %1, 2
  %i.q = and i8 %i.p, 32
  %i.r = or disjoint i8 %i.o, %i.q
  %i.s = xor i8 %i.r, -29
  store i8 %i.s, ptr %i.l, align 1, !alias.scope !3810
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 125, ptr %i.t, align 1, !alias.scope !3813
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 29, ptr %i.u, align 1, !alias.scope !3816
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.w = shl nuw nsw i8 %2, 3
  %i.x = and i8 %1, 7
  %i.y = or disjoint i8 %i.w, %i.x
  %i.z = or i8 %i.y, -64
  store i8 %i.z, ptr %i.v, align 1, !alias.scope !3819
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store i8 %3, ptr %i.aa, align 1, !alias.scope !3822
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  store ptr %i.ab, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler9vcvtps2phENS0_11XMMRegisterES2_h(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 7 uses
  %i.k = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = icmp samesign ult i8 %2, 16
  store i8 -60, ptr %i.j, align 1, !alias.scope !3825
  tail call void @llvm.assume(i1 %i.m)
  %i.n = shl nuw i8 %2, 4
  %i.o = and i8 %i.n, -128
  %i.p = shl nuw nsw i8 %1, 2
  %i.q = and i8 %i.p, 32
  %i.r = or disjoint i8 %i.o, %i.q
  %i.s = xor i8 %i.r, -29
  store i8 %i.s, ptr %i.l, align 1, !alias.scope !3828
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 121, ptr %i.t, align 1, !alias.scope !3831
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 29, ptr %i.u, align 1, !alias.scope !3834
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.w = shl nuw nsw i8 %2, 3
  %i.x = and i8 %1, 7
  %i.y = or disjoint i8 %i.w, %i.x
  %i.z = or i8 %i.y, -64
  store i8 %i.z, ptr %i.v, align 1, !alias.scope !3837
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store i8 %3, ptr %i.aa, align 1, !alias.scope !3840
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  store ptr %i.ab, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler8vucomissENS0_11XMMRegisterES2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %2, 8
  %i.l = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  %i.m = shl nuw i8 %1, 4
  %i.n = and i8 %i.m, -128                        ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 120, ptr %i.p, align 1, !alias.scope !3843
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.q = xor i8 %i.n, -8
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink9 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.q, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink9, ptr %i.j, align 1
  store i8 %.sink, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 46, ptr %i.s, align 1, !alias.scope !3846
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.u = shl nuw nsw i8 %1, 3
  %i.v = and i8 %2, 7
  %i.w = or disjoint i8 %i.v, %i.u
  %i.x = or i8 %i.w, -64
  store i8 %i.x, ptr %i.t, align 1, !alias.scope !3849
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store ptr %i.y, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler8vucomissENS0_11XMMRegisterENS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %2 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %1, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %1, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 120, ptr %i.u, align 1, !alias.scope !3852
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.v = shl nuw i8 %1, 4
  %i.w = and i8 %i.v, -128
  %i.x = xor i8 %i.w, -8
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.x, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 46, ptr %i.y, align 1, !alias.scope !3855
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 4 uses
  store ptr %i.z, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.aa = and i8 %1, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %2, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.ab, align 8
  %i.ac = ptrtoint ptr %3 to i64                  ; 3 uses
  %i.ad = lshr i64 %2, 16                         ; 2 uses
  %i.ae = trunc i64 %i.ad to i8                   ; 2 uses
  %i.af = trunc i64 %i.ad to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.ag = zext nneg i8 %i.aa to i32
  %i.ah = sext i8 %i.ae to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.ag, ptr noundef %3, i32 noundef %i.ah)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.ai = icmp ult ptr %3, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = shl nuw nsw i8 %i.aa, 3                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.an = icmp ugt ptr %3, inttoptr (i64 4 to ptr)
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = zext nneg i8 %i.aj to i32
  %i.ap = or i32 %i.af, %i.ao
  %i.aq = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ar = add i64 %i.aq, %i.al
  %i.as = inttoptr i64 %i.ar to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.as, align 1
  %i.at = add i64 %i.aq, %i.am
  %i.au = inttoptr i64 %i.at to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.au, align 1
  store i32 %i.ap, ptr %i.z, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.av = or i8 %i.aj, %i.ae
  %.not.i.i.i = icmp eq ptr %3, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ax = add i64 %i.aw, %i.al
  %i.ay = inttoptr i64 %i.ax to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.ay, align 1
  %i.az = add i64 %i.aw, %i.am
  %i.ba = inttoptr i64 %i.az to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.ba, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.av, ptr %i.z, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ac
  store ptr %i.bc, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler9vpmovmskbENS0_8RegisterENS0_11XMMRegisterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp slt i32 %i.i, 32
  br i1 %i.j, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.l = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.l)
  %.not = icmp samesign ult i8 %2, 8
  %i.m = shl nuw i8 %1, 4
  %i.n = and i8 %i.m, -128                        ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 121, ptr %i.p, align 1, !alias.scope !3858
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.q = xor i8 %i.n, -7
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.q, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %.sink10, ptr %i.k, align 1
  store i8 %.sink, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink20.i ; 3 uses
  store i8 -41, ptr %i.s, align 1, !alias.scope !3861
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = shl nuw nsw i8 %1, 3
  %i.v = and i8 %2, 7
  %i.w = or disjoint i8 %i.v, %i.u
  %i.x = or i8 %i.w, -64
  store i8 %i.x, ptr %i.t, align 1, !alias.scope !3864
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store ptr %i.y, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler3vssEhNS0_11XMMRegisterES2_S2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i8 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %i.k = icmp samesign ult i8 %4, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp samesign ult i8 %4, 8
  %i.l = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.l)
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.m = shl nuw i8 %2, 4
  %i.n = and i8 %i.m, -128
  %i.o = xor i8 %i.n, -63
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.q = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = shl nuw nsw i8 %3, 3
  %i.s = xor i8 %i.r, 122
  store i8 %i.s, ptr %i.p, align 1, !alias.scope !3867
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.t = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = shl nuw nsw i8 %2, 1
  %i.v = and i8 %i.u, 16
  %i.w = or disjoint i8 %i.v, %3
  %i.x = xor i8 %i.w, -1
  %i.y = shl i8 %i.x, 3
  %i.z = or disjoint i8 %i.y, 2
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_S2_NS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink10 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.z, %bb.d ], [ %i.o, %bb.c ]
  %.sink20.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sink10, ptr %i.j, align 1
  store i8 %.sink, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink20.i ; 3 uses
  store i8 %1, ptr %i.ab, align 1, !alias.scope !3870
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  tail call void @llvm.assume(i1 %i.l)
  %i.ad = shl nuw nsw i8 %2, 3
  %i.ae = and i8 %4, 7
  %i.af = or disjoint i8 %i.ae, %i.ad
  %i.ag = or i8 %i.af, -64
  store i8 %i.ag, ptr %i.ac, align 1, !alias.scope !3873
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store ptr %i.ah, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler3vssEhNS0_11XMMRegisterES2_NS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i64 %4, ptr %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %4, 8
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %i.k = trunc i64 %4 to i1
  %i.l = icmp eq i8 %.sroa.3.0.extract.trunc.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = icmp samesign ult i8 %2, 16              ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.o = lshr i8 %2, 1
  %i.p = and i8 %i.o, 4
  %i.q = or i8 %i.p, %.sroa.3.0.extract.trunc.i
  %i.r = xor i8 %i.q, -1
  %i.s = shl i8 %i.r, 5
  %i.t = or disjoint i8 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.v = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = shl nuw nsw i8 %3, 3
  %i.x = xor i8 %i.w, 122
  store i8 %i.x, ptr %i.u, align 1, !alias.scope !3876
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.y = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = shl nuw nsw i8 %2, 1
  %i.aa = and i8 %i.z, 16
  %i.ab = or disjoint i8 %i.aa, %3
  %i.ac = xor i8 %i.ab, -1
  %i.ad = shl i8 %i.ac, 3
  %i.ae = or disjoint i8 %i.ad, 2
  br label %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit

_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit: ; preds = %bb.c, %bb.d
  %.sink11 = phi i8 [ -59, %bb.d ], [ -60, %bb.c ]
  %.sink = phi i8 [ %i.ae, %bb.d ], [ %i.t, %bb.c ]
  %.sink21.i = phi i64 [ 2, %bb.d ], [ 3, %bb.c ]
  store i8 %.sink11, ptr %i.j, align 1
  store i8 %.sink, ptr %i.m, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink21.i ; 2 uses
  store i8 %1, ptr %i.af, align 1, !alias.scope !3879
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 4 uses
  store ptr %i.ag, ptr %i.c, align 8
  tail call void @llvm.assume(i1 %i.n)
  %i.ah = and i8 %2, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %4, ptr %6, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.ai, align 8
  %i.aj = ptrtoint ptr %5 to i64                  ; 3 uses
  %i.ak = lshr i64 %4, 16                         ; 2 uses
  %i.al = trunc i64 %i.ak to i8                   ; 2 uses
  %i.am = trunc i64 %i.ak to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  %i.an = zext nneg i8 %i.ah to i32
  %i.ao = sext i8 %i.al to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.an, ptr noundef %5, i32 noundef %i.ao)
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler15emit_vex_prefixENS0_11XMMRegisterES2_NS0_7OperandENS1_12VectorLengthENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %i.ap = icmp ult ptr %5, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = shl nuw nsw i8 %i.ah, 3                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.at = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.au = icmp ugt ptr %5, inttoptr (i64 4 to ptr)
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = zext nneg i8 %i.aq to i32
  %i.aw = or i32 %i.am, %i.av
  %i.ax = add nsw i64 %i.aj, -2                   ; 2 uses
  %i.ay = add i64 %i.ax, %i.as
  %i.az = inttoptr i64 %i.ay to ptr
  %.0.copyload.i29.i.i.i = load i16, ptr %i.az, align 1
  %i.ba = add i64 %i.ax, %i.at
  %i.bb = inttoptr i64 %i.ba to ptr
  store i16 %.0.copyload.i29.i.i.i, ptr %i.bb, align 1
  store i32 %i.aw, ptr %i.ag, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bc = or i8 %i.aq, %i.al
  %.not.i.i.i = icmp eq ptr %5, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = add nsw i64 %i.aj, -2                   ; 2 uses
  %i.be = add i64 %i.bd, %i.as
  %i.bf = inttoptr i64 %i.be to ptr
  %.0.copyload.i31.i.i.i = load i16, ptr %i.bf, align 1
  %i.bg = add i64 %i.bd, %i.at
  %i.bh = inttoptr i64 %i.bg to ptr
  store i16 %.0.copyload.i31.i.i.i, ptr %i.bh, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.bc, ptr %i.ag, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bi = load ptr, ptr %i.c, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.aj
  store ptr %i.bj, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit

_ZN2v88internal9Assembler16emit_sse_operandENS0_11XMMRegisterENS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler5bmi1qEhNS0_8RegisterES2_S2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i8 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 6 uses
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp samesign ult i8 %4, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = shl nuw i8 %2, 4
  %i.o = and i8 %i.n, -128
  %i.p = shl nuw nsw i8 %4, 2
  %i.q = and i8 %i.p, 32
  %i.r = or disjoint i8 %i.q, %i.o
  %i.s = xor i8 %i.r, -30
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.u = xor i8 %3, -1
  %i.v = shl nsw i8 %i.u, 3
  store i8 %i.v, ptr %i.t, align 1, !alias.scope !3882
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 -60, ptr %i.j, align 1
  store i8 %i.s, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 %1, ptr %i.x, align 1, !alias.scope !3885
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.z = shl nuw nsw i8 %2, 3
  %i.aa = and i8 %4, 7
  %i.ab = or disjoint i8 %i.aa, %i.z
  %i.ac = or i8 %i.ab, -64
  store i8 %i.ac, ptr %i.y, align 1, !alias.scope !3888
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store ptr %i.ad, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler5bmi1qEhNS0_8RegisterES2_NS0_7OperandE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i8 noundef zeroext %1, i8 %2, i8 %3, i64 %4, ptr %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.l)
  %.sroa.3.0.extract.shift.i.i = lshr i64 %4, 8
  %.sroa.3.0.extract.trunc.i.i = trunc i64 %.sroa.3.0.extract.shift.i.i to i8
  %i.m = trunc i64 %4 to i1
  %i.n = lshr i8 %2, 1
  %i.o = and i8 %i.n, 4
  %i.p = or i8 %i.o, %.sroa.3.0.extract.trunc.i.i
  %i.q = xor i8 %i.p, -1
  %i.r = shl i8 %i.q, 5
  %i.s = or disjoint i8 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.u = xor i8 %3, -1
  %i.v = shl nsw i8 %i.u, 3
  store i8 %i.v, ptr %i.t, align 1, !alias.scope !3891
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 -60, ptr %i.j, align 1
  store i8 %i.s, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 %1, ptr %i.x, align 1, !alias.scope !3894
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 4 uses
  store ptr %i.y, ptr %i.c, align 8
  %i.z = and i8 %2, 7                             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %4, ptr %6, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.aa, align 8
  %i.ab = ptrtoint ptr %5 to i64                  ; 3 uses
  %i.ac = lshr i64 %4, 16                         ; 2 uses
  %i.ad = trunc i64 %i.ac to i8                   ; 2 uses
  %i.ae = trunc i64 %i.ac to i32
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.af = zext nneg i8 %i.z to i32
  %i.ag = sext i8 %i.ad to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.af, ptr noundef %5, i32 noundef %i.ag)
  br label %_ZN2v88internal9Assembler12emit_operandENS0_8RegisterENS0_7OperandE.exit

bb.d:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %i.ah = icmp ult ptr %5, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = shl nuw nsw i8 %i.z, 3                  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.al = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.am = icmp ugt ptr %5, inttoptr (i64 4 to ptr)
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = zext nneg i8 %i.ai to i32
end_hunk_2
