inline.NumInlined: 323
inline.NumDeleted: 175
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", [4 x i8], %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", [4 x i8], %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue.472", [4 x i8], %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.475", [2 x i8], %"class.v8::internal::FlagValue.472", [4 x i8], %"class.v8::internal::FlagValue.474", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", [4 x i8], %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.482", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.475" = type { %"class.std::optional.476" }
%"class.std::optional.476" = type { %"struct.std::_Optional_base.477" }
%"struct.std::_Optional_base.477" = type { %"struct.std::_Optional_payload.479" }
%"struct.std::_Optional_payload.479" = type { %"struct.std::_Optional_payload_base.480" }
%"struct.std::_Optional_payload_base.480" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.474" = type { double }
%"class.v8::internal::FlagValue.473" = type { i32 }
%"class.v8::internal::FlagValue.482" = type { i64 }
%"class.v8::internal::FlagValue.472" = type { i32 }
%"class.v8::internal::FlagValue.471" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }

$_ZN2v88internal25StringBuilderConcatHelperIhEEvNS0_6TaggedINS0_6StringEEEPT_NS2_INS0_10FixedArrayEEEi = comdat any

$_ZN2v88internal25StringBuilderConcatHelperItEEvNS0_6TaggedINS0_6StringEEEPT_NS2_INS0_10FixedArrayEEEi = comdat any

$_ZSt27__throw_bad_optional_accessv = comdat any

@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"!is_null()\00", align 1

@_ZN2v88internal17FixedArrayBuilderC1EPNS0_7IsolateEi = hidden unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN2v88internal17FixedArrayBuilderC2EPNS0_7IsolateEi
@_ZN2v88internal17FixedArrayBuilderC1ENS0_12DirectHandleINS0_10FixedArrayEEE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2v88internal17FixedArrayBuilderC2ENS0_12DirectHandleINS0_10FixedArrayEEE
@_ZN2v88internal17FixedArrayBuilderC1EPNS0_7IsolateE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2v88internal17FixedArrayBuilderC2EPNS0_7IsolateE
@_ZN2v88internal24ReplacementStringBuilderC1EPNS0_4HeapENS0_12DirectHandleINS0_6StringEEEi = hidden unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN2v88internal24ReplacementStringBuilderC2EPNS0_4HeapENS0_12DirectHandleINS0_6StringEEEi
@_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2v88internal24IncrementalStringBuilderC2EPNS0_7IsolateE

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal25StringBuilderConcatHelperIhEEvNS0_6TaggedINS0_6StringEEEPT_NS2_INS0_10FixedArrayEEEi(i64 %0, ptr noundef %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add i64 %2, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.042 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.h ]  ; 3 uses
  %.03041 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %bb.h ] ; 4 uses
  %i.e = sext i32 %.03041 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8 ; 4 uses
  %i.h = and i64 %i.g, 1
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i64 %i.g, 32
  %i.k = trunc nuw i64 %i.j to i32                ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i32 %i.k, 11
  %i.n = and i32 %i.m, 524287
  %i.o = and i32 %i.k, 2047
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = add nsw i32 %.03041, 1                   ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.q
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = lshr i64 %i.s, 32
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = sub nsw i32 0, %i.k
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.033 = phi i32 [ %i.o, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %.032 = phi i32 [ %i.n, %bb.d ], [ %i.u, %bb.e ]
  %.131 = phi i32 [ %.03041, %bb.d ], [ %i.p, %bb.e ]
  %i.w = sext i32 %.042 to i64
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  tail call void @_ZN2v88internal6String11WriteToFlatIhEEvNS0_6TaggedIS1_EEPT_jj(i64 %0, ptr noundef %i.x, i32 noundef %.032, i32 noundef %.033) #13
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.y = add nsw i64 %i.g, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = sext i32 %.042 to i64
  %i.ad = getelementptr inbounds i8, ptr %1, i64 %i.ac
  tail call void @_ZN2v88internal6String11WriteToFlatIhEEvNS0_6TaggedIS1_EEPT_jj(i64 %i.g, ptr noundef %i.ad, i32 noundef 0, i32 noundef %i.ab) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ %.131, %bb.f ], [ %.03041, %bb.g ]
  %.033.pn = phi i32 [ %.033, %bb.f ], [ %i.ab, %bb.g ]
  %.1 = add nsw i32 %.033.pn, %.042
  %i.ae = add nsw i32 %.2, 1                      ; 2 uses
  %i.af = icmp slt i32 %i.ae, %3
  br i1 %i.af, label %bb.b, label %._crit_edge, !llvm.loop !5
}

declare void @_ZN2v88internal6String11WriteToFlatIhEEvNS0_6TaggedIS1_EEPT_jj(i64, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal25StringBuilderConcatHelperItEEvNS0_6TaggedINS0_6StringEEEPT_NS2_INS0_10FixedArrayEEEi(i64 %0, ptr noundef %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add i64 %2, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.042 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.h ]  ; 3 uses
  %.03041 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %bb.h ] ; 4 uses
  %i.e = sext i32 %.03041 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8 ; 4 uses
  %i.h = and i64 %i.g, 1
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i64 %i.g, 32
  %i.k = trunc nuw i64 %i.j to i32                ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i32 %i.k, 11
  %i.n = and i32 %i.m, 524287
  %i.o = and i32 %i.k, 2047
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = add nsw i32 %.03041, 1                   ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.q
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = lshr i64 %i.s, 32
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = sub nsw i32 0, %i.k
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.033 = phi i32 [ %i.o, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %.032 = phi i32 [ %i.n, %bb.d ], [ %i.u, %bb.e ]
  %.131 = phi i32 [ %.03041, %bb.d ], [ %i.p, %bb.e ]
  %i.w = sext i32 %.042 to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %1, i64 %i.w
  tail call void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jj(i64 %0, ptr noundef %i.x, i32 noundef %.032, i32 noundef %.033) #13
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.y = add nsw i64 %i.g, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = sext i32 %.042 to i64
  %i.ad = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ac
  tail call void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jj(i64 %i.g, ptr noundef %i.ad, i32 noundef 0, i32 noundef %i.ab) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ %.131, %bb.f ], [ %.03041, %bb.g ]
  %.033.pn = phi i32 [ %.033, %bb.f ], [ %i.ab, %bb.g ]
  %.1 = add nsw i32 %.033.pn, %.042
  %i.ae = add nsw i32 %.2, 1                      ; 2 uses
  %i.af = icmp slt i32 %i.ae, %3
  br i1 %i.af, label %bb.b, label %._crit_edge, !llvm.loop !7
}

declare void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jj(i64, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef i32 @_ZN2v88internal25StringBuilderConcatLengthEiNS0_6TaggedINS0_10FixedArrayEEEiPb(i32 noundef %0, i64 %1, i32 noundef %2, ptr noundef captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %.not75109 = icmp sgt i32 %2, 0
  br i1 %.not75109, label %.lr.ph, label %.thread102

.lr.ph:                                           ; preds = %bb.a
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.046111 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %bb.l ] ; 2 uses
  %.049110 = phi i32 [ 0, %.lr.ph ], [ %i.as, %bb.l ] ; 6 uses
  %i.d = sext i32 %.049110 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 3 uses
  %i.g = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i64 %i.f, 32
  %i.j = trunc nuw i64 %i.i to i32                ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i32 %i.j, 11
  %i.m = and i32 %i.l, 524287
  %i.n = and i32 %i.j, 2047
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.o = add nsw i32 %.049110, 1                  ; 3 uses
  %.not = icmp slt i32 %i.o, %2
  br i1 %.not, label %bb.f, label %.thread102

bb.f:                                             ; preds = %bb.e
  %i.p = sub nsw i32 0, %i.j
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.q
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.t = lshr i64 %i.s, 32
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = and i64 %i.s, -9223372036854775807
  %or.cond129 = icmp eq i64 %i.v, 0
  br i1 %or.cond129, label %bb.g, label %.thread102

bb.g:                                             ; preds = %bb.f, %bb.d
  %.066 = phi i32 [ %i.n, %bb.d ], [ %i.p, %bb.f ] ; 2 uses
  %.262 = phi i32 [ %i.m, %bb.d ], [ %i.u, %bb.f ] ; 2 uses
  %.150 = phi i32 [ %.049110, %bb.d ], [ %i.o, %bb.f ]
  %i.w = icmp sgt i32 %.262, %0
  %i.x = sub nsw i32 %0, %.262
  %i.y = icmp sgt i32 %.066, %i.x
  %or.cond = select i1 %i.w, i1 true, i1 %i.y
  br i1 %or.cond, label %.thread102, label %bb.k

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b
  %i.z = add nsw i64 %i.f, -1
  %i.aa = inttoptr i64 %i.z to ptr                ; 3 uses
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.ac = add i64 %i.ab, 11
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i16, ptr %i.ad monotonic, align 2
  %i.af = icmp ult i16 %i.ae, 128
  br i1 %i.af, label %bb.h, label %.thread102

bb.h:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ah = load i32, ptr %i.ag, align 4            ; 3 uses
  %i.ai = load i8, ptr %3, align 1, !range !8, !noundef !9
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ak = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.al = add i64 %i.ak, 11
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i16, ptr %i.am monotonic, align 2
  %i.ao = and i16 %i.an, 8
  %.not108 = icmp eq i16 %i.ao, 0
  br i1 %.not108, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %3, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.g
  %.159 = phi i32 [ %.066, %bb.g ], [ %i.ah, %bb.j ], [ %i.ah, %bb.i ], [ %i.ah, %bb.h ] ; 2 uses
  %.352 = phi i32 [ %.150, %bb.g ], [ %.049110, %bb.j ], [ %.049110, %bb.i ], [ %.049110, %bb.h ]
  %i.ap = sub i32 536870888, %.046111
  %i.aq = icmp ugt i32 %.159, %i.ap
  br i1 %i.aq, label %.thread102, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = add i32 %.159, %.046111                 ; 2 uses
  %i.as = add nsw i32 %.352, 1                    ; 2 uses
  %.not75 = icmp slt i32 %i.as, %2
  br i1 %.not75, label %bb.b, label %.thread102, !llvm.loop !10

.thread102:                                       ; preds = %bb.l, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, %bb.k, %bb.e, %bb.g, %bb.f, %bb.a
  %spec.select = phi i32 [ 0, %bb.a ], [ -1, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit ], [ -1, %bb.e ], [ 2147483647, %bb.k ], [ %i.ar, %bb.l ], [ -1, %bb.f ], [ -1, %bb.g ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17FixedArrayBuilderC2EPNS0_7IsolateEi(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(13) initializes((0, 13)) %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i8 noundef zeroext 0) #13
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.c, align 4
  ret void
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal17FixedArrayBuilderC2ENS0_12DirectHandleINS0_10FixedArrayEEE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(13) initializes((0, 13)) %0, ptr %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal17FixedArrayBuilderC2EPNS0_7IsolateE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(13) initializes((0, 13)) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 864
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_ZN2v88internal17FixedArrayBuilder4LazyEPNS0_7IsolateE(ptr noundef %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal17FixedArrayBuilder11HasCapacityEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(13) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8
  %i.a = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add nsw i32 %i.i, %1
  %i.k = icmp sle i32 %i.j, %i.g
  ret i1 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17FixedArrayBuilder14EnsureCapacityEPNS0_7IsolateEi(ptr noundef nonnull align 8 captures(none) dereferenceable(13) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8
  %i.a = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = lshr i64 %i.e, 32                        ; 2 uses
  %i.g = trunc nuw i64 %i.f to i32                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add nsw i32 %i.i, %2                     ; 2 uses
  %i.k = icmp sgt i32 %i.j, %i.g
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 0
  br i1 %i.l, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %2, i32 16)
  %i.m = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.sroa.speculated, i8 noundef zeroext 0) #13
  br label %.sink.split

.preheader:                                       ; preds = %bb.b, %.preheader
  %.0 = phi i32 [ %i.n, %.preheader ], [ %i.g, %bb.b ]
  %i.n = shl nsw i32 %.0, 1                       ; 3 uses
  %i.o = icmp slt i32 %i.n, %i.j
  br i1 %i.o, label %.preheader, label %bb.d, !llvm.loop !11

bb.d:                                             ; preds = %.preheader
  %i.p = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.n, i8 noundef zeroext 0) #13 ; 3 uses
  %i.q = load i32, ptr %i.h, align 8              ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %0, align 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = load i64, ptr %i.p, align 8              ; 2 uses
  %i.v = add i64 %i.u, 15
  %i.w = add i64 %i.t, 15
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.x, i64 %i.u, i64 %i.v, i64 %i.w, i32 noundef %i.q, i32 noundef 4) #13
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d, %bb.c
  %.sink31 = phi ptr [ %i.m, %bb.c ], [ %i.p, %bb.d ], [ %i.p, %bb.e ]
  %i.y = ptrtoint ptr %.sink31 to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17FixedArrayBuilder3AddENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(13) initializes((12, 13)) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8
  %i.a = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.b = add i64 %i.a, -1                         ; 3 uses
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g ; 2 uses
  store atomic volatile i64 %1, ptr %i.h monotonic, align 8
  %i.i = trunc i64 %1 to i1
  br i1 %i.i, label %bb.b, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.j = or disjoint i64 %i.b, 1                  ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = and i64 %i.b, -262144
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 262144         ; 2 uses
  %i.o = and i64 %i.n, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.o, 0
  %i.p = and i64 %i.n, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not38.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %1, -262144
  %i.r = inttoptr i64 %i.q to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.r, align 262144
  %i.s = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not39.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.j, i64 noundef %i.k, i64 %1) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.j, i64 %i.k, i64 %1) #13
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.t = load i32, ptr %i.d, align 8
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.v, align 4
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal17FixedArrayBuilder3AddENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(13) %0, i64 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8
  %i.a = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  store atomic volatile i64 %1, ptr %i.h monotonic, align 8
  %i.i = load i32, ptr %i.d, align 8
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN2v88internal17FixedArrayBuilder8capacityEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(13) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8
  %i.a = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32
  ret i32 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24ReplacementStringBuilderC2EPNS0_4HeapENS0_12DirectHandleINS0_6StringEEEi(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(37) initializes((0, 21), (24, 37)) %0, ptr noundef %1, ptr %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  %i.c = add i64 %i.b, -55464
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i32 noundef %3, i8 noundef zeroext 0) #13
  store ptr %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = ptrtoint ptr %2 to i64
  store i64 %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load i64, ptr %2, align 8
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = trunc i16 %i.r to i8
  %i.t = lshr i8 %i.s, 3
  %i.u = and i8 %i.t, 1
  store i8 %i.u, ptr %i.k, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24ReplacementStringBuilder14EnsureCapacityEi(ptr noundef nonnull align 8 captures(none) dereferenceable(37) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, -55464
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8
  %i.f = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, 32                        ; 2 uses
  %i.l = trunc nuw i64 %i.k to i32                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add nsw i32 %i.n, %1                     ; 2 uses
  %i.p = icmp sgt i32 %i.o, %i.l
  br i1 %i.p, label %bb.b, label %_ZN2v88internal17FixedArrayBuilder14EnsureCapacityEPNS0_7IsolateEi.exit

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %i.k, 0
  br i1 %i.q, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %1, i32 16)
  %i.r = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i32 noundef %.sroa.speculated.i, i8 noundef zeroext 0) #13
  br label %.sink.split.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.0.i = phi i32 [ %i.s, %.preheader.i ], [ %i.l, %bb.b ]
  %i.s = shl nsw i32 %.0.i, 1                     ; 3 uses
  %i.t = icmp slt i32 %i.s, %i.o
  br i1 %i.t, label %.preheader.i, label %bb.d, !llvm.loop !11

bb.d:                                             ; preds = %.preheader.i
  %i.u = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i32 noundef %i.s, i8 noundef zeroext 0) #13 ; 3 uses
  %i.v = load i32, ptr %i.m, align 8              ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = load i64, ptr %i.u, align 8              ; 2 uses
  %i.aa = add i64 %i.z, 15
  %i.ab = add i64 %i.y, 15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.ac, i64 %i.z, i64 %i.aa, i64 %i.ab, i32 noundef %i.v, i32 noundef 4) #13
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d, %bb.c
  %.sink31.i = phi ptr [ %i.r, %bb.c ], [ %i.u, %bb.d ], [ %i.u, %bb.e ]
  %i.ad = ptrtoint ptr %.sink31.i to i64
  store i64 %i.ad, ptr %i.a, align 8
  br label %_ZN2v88internal17FixedArrayBuilder14EnsureCapacityEPNS0_7IsolateEi.exit

_ZN2v88internal17FixedArrayBuilder14EnsureCapacityEPNS0_7IsolateEi.exit: ; preds = %bb.a, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24ReplacementStringBuilder9AddStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(37) %0, ptr readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  tail call void @_ZN2v88internal24ReplacementStringBuilder10AddElementENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr nonnull %1)
  %i.f = load i64, ptr %1, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = and i16 %i.l, 8
  %.not = icmp eq i16 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.n, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = sub i32 536870888, %i.e
  %i.r = icmp ugt i32 %i.p, %i.q
  %i.s = add i32 %i.p, %i.e
  %storemerge.i = select i1 %i.r, i32 2147483647, i32 %i.s
  store i32 %storemerge.i, ptr %i.o, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24ReplacementStringBuilder10AddElementENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(37) %0, ptr readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, -55464
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8
  %i.f = load i64, ptr %.sroa.0.0.copyload.i.i.i, align 8
  %i.g = add i64 %i.f, -1                         ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, 32                        ; 2 uses
  %i.l = trunc nuw i64 %i.k to i32                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.n = load i32, ptr %i.m, align 8              ; 3 uses
  %.not = icmp slt i32 %i.n, %i.l
  br i1 %.not, label %_ZN2v88internal24ReplacementStringBuilder14EnsureCapacityEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %bb.c, label %.preheader.i.i

bb.c:                                             ; preds = %bb.b
  %i.p = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i32 noundef 16, i8 noundef zeroext 0) #13
  br label %.sink.split.i.i

.preheader.i.i:                                   ; preds = %bb.b, %.preheader.i.i
  %.0.i.i = phi i32 [ %i.q, %.preheader.i.i ], [ %i.l, %bb.b ]
  %i.q = shl nsw i32 %.0.i.i, 1                   ; 3 uses
  %.not3 = icmp sgt i32 %i.q, %i.n
  br i1 %.not3, label %bb.d, label %.preheader.i.i, !llvm.loop !11

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i32 noundef %i.q, i8 noundef zeroext 0) #13 ; 3 uses
  %i.s = load i32, ptr %i.m, align 8              ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.sink.split.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = load i64, ptr %i.r, align 8              ; 2 uses
  %i.x = add i64 %i.w, 15
  %i.y = add i64 %i.v, 15
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.z, i64 %i.w, i64 %i.x, i64 %i.y, i32 noundef %i.s, i32 noundef 4) #13
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.e, %bb.d, %bb.c
  %.sink31.i.i = phi ptr [ %i.p, %bb.c ], [ %i.r, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = ptrtoint ptr %.sink31.i.i to i64
  store i64 %i.aa, ptr %i.a, align 8
  %.pre = load i64, ptr %.sink31.i.i, align 8
  %.pre5 = load i32, ptr %i.m, align 8
  %.pre6 = add i64 %.pre, -1                      ; 2 uses
  %.pre7 = inttoptr i64 %.pre6 to ptr
  br label %_ZN2v88internal24ReplacementStringBuilder14EnsureCapacityEi.exit

_ZN2v88internal24ReplacementStringBuilder14EnsureCapacityEi.exit: ; preds = %bb.a, %.sink.split.i.i
  %.pre-phi8 = phi ptr [ %i.h, %bb.a ], [ %.pre7, %.sink.split.i.i ]
  %.pre-phi = phi i64 [ %i.g, %bb.a ], [ %.pre6, %.sink.split.i.i ] ; 2 uses
  %i.ab = phi i32 [ %i.n, %bb.a ], [ %.pre5, %.sink.split.i.i ]
  %i.ac = load i64, ptr %1, align 8               ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre-phi8, i64 16
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  store atomic volatile i64 %i.ac, ptr %i.af monotonic, align 8
  %i.ag = trunc i64 %i.ac to i1
  br i1 %i.ag, label %bb.f, label %_ZN2v88internal17FixedArrayBuilder3AddENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal24ReplacementStringBuilder14EnsureCapacityEi.exit
  %i.ah = or disjoint i64 %.pre-phi, 1            ; 2 uses
  %i.ai = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.aj = and i64 %.pre-phi, -262144
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 262144       ; 2 uses
  %i.am = and i64 %i.al, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  %i.an = and i64 %i.al, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ao = and i64 %i.ac, -262144
  %i.ap = inttoptr i64 %i.ao to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i = load i64, ptr %i.ap, align 262144
  %i.aq = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i, 25
  %.not39.i.i.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not39.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ah, i64 noundef %i.ai, i64 %i.ac) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal17FixedArrayBuilder3AddENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.j, !prof !12

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ah, i64 %i.ai, i64 %i.ac) #13
  br label %_ZN2v88internal17FixedArrayBuilder3AddENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal17FixedArrayBuilder3AddENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal24ReplacementStringBuilder14EnsureCapacityEi.exit, %bb.i, %bb.j
  %i.ar = load i32, ptr %i.m, align 8
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.m, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %i.at, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal24ReplacementStringBuilder8ToStringEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(37) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = add i64 %i.b, -55464
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 688
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread65

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i8, ptr %i.j, align 4, !range !8, !noundef !9
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i32 noundef %i.n, i8 noundef zeroext 0, i8 0) #13 ; 4 uses
  %.not73 = icmp eq ptr %i.o, null
  br i1 %.not73, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread65, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.p, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = load i32, ptr %i.f, align 8              ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread65

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.0.0.copyload.i20 = load ptr, ptr %i.e, align 8
  %i.y = load i64, ptr %.sroa.0.0.copyload.i20, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.lr.ph.i
  %.042.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.l ] ; 3 uses
  %.03041.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bc, %bb.l ] ; 4 uses
  %i.ac = sext i32 %.03041.i to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8 ; 4 uses
  %i.af = and i64 %i.ae, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ah = lshr i64 %i.ae, 32
  %i.ai = trunc nuw i64 %i.ah to i32              ; 4 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = lshr i32 %i.ai, 11
  %i.al = and i32 %i.ak, 524287
  %i.am = and i32 %i.ai, 2047
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.an = add nsw i32 %.03041.i, 1                ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ao
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  %i.ar = lshr i64 %i.aq, 32
  %i.as = trunc nuw i64 %i.ar to i32
  %i.at = sub nsw i32 0, %i.ai
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.033.i = phi i32 [ %i.am, %bb.h ], [ %i.at, %bb.i ] ; 2 uses
  %.032.i = phi i32 [ %i.al, %bb.h ], [ %i.as, %bb.i ]
  %.131.i = phi i32 [ %.03041.i, %bb.h ], [ %i.an, %bb.i ]
  %i.au = sext i32 %.042.i to i64
  %i.av = getelementptr inbounds i8, ptr %i.s, i64 %i.au
  tail call void @_ZN2v88internal6String11WriteToFlatIhEEvNS0_6TaggedIS1_EEPT_jj(i64 %i.v, ptr noundef nonnull %i.av, i32 noundef %.032.i, i32 noundef %.033.i) #13
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.aw = add nsw i64 %i.ae, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.ba = sext i32 %.042.i to i64
  %i.bb = getelementptr inbounds i8, ptr %i.s, i64 %i.ba
  tail call void @_ZN2v88internal6String11WriteToFlatIhEEvNS0_6TaggedIS1_EEPT_jj(i64 %i.ae, ptr noundef nonnull %i.bb, i32 noundef 0, i32 noundef %i.az) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.i = phi i32 [ %.131.i, %bb.j ], [ %.03041.i, %bb.k ]
  %.033.pn.i = phi i32 [ %.033.i, %bb.j ], [ %i.az, %bb.k ]
  %.1.i = add nsw i32 %.033.pn.i, %.042.i
  %i.bc = add nsw i32 %.2.i, 1                    ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.w
  br i1 %i.bd, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread65, !llvm.loop !5

bb.m:                                             ; preds = %bb.c
  %i.be = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i32 noundef %i.n, i8 noundef zeroext 0, i8 0) #13 ; 4 uses
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread65, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = add i64 %i.bf, -1
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = load i32, ptr %i.f, align 8             ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i22, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread65

.lr.ph.i22:                                       ; preds = %bb.n
  %.sroa.0.0.copyload.i21 = load ptr, ptr %i.e, align 8
  %i.bo = load i64, ptr %.sroa.0.0.copyload.i21, align 8
  %i.bp = add i64 %i.bo, -1
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.i22
  %.042.i23 = phi i32 [ 0, %.lr.ph.i22 ], [ %.1.i27, %bb.u ] ; 3 uses
  %.03041.i24 = phi i32 [ 0, %.lr.ph.i22 ], [ %i.cs, %bb.u ] ; 4 uses
  %i.bs = sext i32 %.03041.i24 to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load atomic volatile i64, ptr %i.bt monotonic, align 8 ; 4 uses
  %i.bv = and i64 %i.bu, 1
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bx = lshr i64 %i.bu, 32
  %i.by = trunc nuw i64 %i.bx to i32              ; 4 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ca = lshr i32 %i.by, 11
  %i.cb = and i32 %i.ca, 524287
  %i.cc = and i32 %i.by, 2047
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cd = add nsw i32 %.03041.i24, 1              ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.ce
  %i.cg = load atomic volatile i64, ptr %i.cf monotonic, align 8
  %i.ch = lshr i64 %i.cg, 32
  %i.ci = trunc nuw i64 %i.ch to i32
  %i.cj = sub nsw i32 0, %i.by
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.033.i28 = phi i32 [ %i.cc, %bb.q ], [ %i.cj, %bb.r ] ; 2 uses
  %.032.i29 = phi i32 [ %i.cb, %bb.q ], [ %i.ci, %bb.r ]
  %.131.i30 = phi i32 [ %.03041.i24, %bb.q ], [ %i.cd, %bb.r ]
  %i.ck = sext i32 %.042.i23 to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.ck
  tail call void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jj(i64 %i.bl, ptr noundef nonnull %i.cl, i32 noundef %.032.i29, i32 noundef %.033.i28) #13
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.cm = add nsw i64 %i.bu, -1
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cp = load i32, ptr %i.co, align 4            ; 2 uses
  %i.cq = sext i32 %.042.i23 to i64
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.cq
  tail call void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jj(i64 %i.bu, ptr noundef nonnull %i.cr, i32 noundef 0, i32 noundef %i.cp) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.i25 = phi i32 [ %.131.i30, %bb.s ], [ %.03041.i24, %bb.t ]
  %.033.pn.i26 = phi i32 [ %.033.i28, %bb.s ], [ %i.cp, %bb.t ]
  %.1.i27 = add nsw i32 %.033.pn.i26, %.042.i23
  %i.cs = add nsw i32 %.2.i25, 1                  ; 2 uses
  %i.ct = icmp slt i32 %i.cs, %i.bm
  br i1 %i.ct, label %bb.o, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread65, !llvm.loop !7

_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread65: ; preds = %bb.u, %bb.l, %bb.e, %bb.n, %bb.m, %bb.d, %bb.b
  %.sroa.047.3 = phi ptr [ %i.i, %bb.b ], [ null, %bb.m ], [ null, %bb.d ], [ %i.be, %bb.n ], [ %i.o, %bb.l ], [ %i.o, %bb.e ], [ %i.be, %bb.u ]
  ret ptr %.sroa.047.3
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24IncrementalStringBuilderC2EPNS0_7IsolateE(ptr noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 13), (16, 40)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 32, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 688
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.d, i8 0, i64 20, i1 false)
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #13
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.m, %bb.b ], [ %i.i, %bb.a ] ; 3 uses
  %i.n = ptrtoint ptr %.0.i to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8
  store i64 %i.g, ptr %.0.i, align 8
  store ptr %.0.i, ptr %i.e, align 8
  %i.q = load ptr, ptr %0, align 8
  %i.r = load i32, ptr %i.c, align 8
  %i.s = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.q, i32 noundef %i.r, i8 noundef zeroext 0, i8 0) #13 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.c, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit, !prof !13

bb.c:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = ptrtoint ptr %i.s to i64
  store i64 %i.v, ptr %i.u, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK2v88internal24IncrementalStringBuilder6LengthEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add i32 %i.h, %i.f
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal24IncrementalStringBuilder20HasValidCurrentIndexEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp slt i32 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24IncrementalStringBuilder10AccumulateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i9 = load ptr, ptr %i.a, align 8 ; 3 uses
  %i.b = load i64, ptr %.sroa.0.0.copyload.i9, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = load i64, ptr %1, align 8
  %i.h = add i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add i32 %i.k, %i.f
  %i.m = icmp ugt i32 %i.l, 536870888
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 688
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.p, align 4
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit

bb.c:                                             ; preds = %bb.a
  %i.q = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringINS0_6HandleEQsr3stdE16is_convertible_vITL0__INS0_6StringEENS0_12DirectHandleIS7_EEEEENT_IS7_E9MaybeTypeESC_SC_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr nonnull %.sroa.0.0.copyload.i9, ptr nonnull %1, i8 noundef zeroext 0) #13 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge, !prof !13

._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit: ; preds = %._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge, %bb.b
  %i.s = phi ptr [ %.sroa.0.0.copyload.i9, %bb.b ], [ %.pre, %._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge ]
  %.sroa.018.0 = phi ptr [ %i.o, %bb.b ], [ %i.q, %._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge ]
  %i.t = load i64, ptr %.sroa.018.0, align 8
  store i64 %i.t, ptr %i.s, align 8
  ret void
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringINS0_6HandleEQsr3stdE16is_convertible_vITL0__INS0_6StringEENS0_12DirectHandleIS7_EEEEENT_IS7_E9MaybeTypeESC_SC_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i9.i = load ptr, ptr %i.b, align 8 ; 3 uses
  %i.c = load i64, ptr %.sroa.0.0.copyload.i9.i, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = add i32 %i.l, %i.g
  %i.n = icmp ugt i32 %i.m, 536870888
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 688
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.q, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder10AccumulateENS0_12DirectHandleINS0_6StringEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.r = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringINS0_6HandleEQsr3stdE16is_convertible_vITL0__INS0_6StringEENS0_12DirectHandleIS7_EEEEENT_IS7_E9MaybeTypeESC_SC_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr nonnull %.sroa.0.0.copyload.i9.i, ptr nonnull %.sroa.0.0.copyload.i, i8 noundef zeroext 0) #13 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i, !prof !13

._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i: ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal24IncrementalStringBuilder10AccumulateENS0_12DirectHandleINS0_6StringEEE.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZN2v88internal24IncrementalStringBuilder10AccumulateENS0_12DirectHandleINS0_6StringEEE.exit: ; preds = %bb.b, %._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i
  %i.t = phi ptr [ %.sroa.0.0.copyload.i9.i, %bb.b ], [ %.pre.i, %._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i ]
  %.sroa.018.0.i = phi ptr [ %i.p, %bb.b ], [ %i.r, %._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i ]
  %i.u = load i64, ptr %.sroa.018.0.i, align 8
  store i64 %i.u, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8              ; 3 uses
  %i.x = icmp slt i32 %i.w, 8193
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal24IncrementalStringBuilder10AccumulateENS0_12DirectHandleINS0_6StringEEE.exit
  %i.y = shl nsw i32 %i.w, 1                      ; 2 uses
  store i32 %i.y, ptr %i.v, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal24IncrementalStringBuilder10AccumulateENS0_12DirectHandleINS0_6StringEEE.exit
  %i.z = phi i32 [ %i.y, %bb.e ], [ %i.w, %_ZN2v88internal24IncrementalStringBuilder10AccumulateENS0_12DirectHandleINS0_6StringEEE.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i32 noundef %i.z, i8 noundef zeroext 0, i8 0) #13 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit, !prof !13

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ag = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i32 noundef %i.z, i8 noundef zeroext 0, i8 0) #13 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.j, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit, !prof !13

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit: ; preds = %bb.i, %bb.g
  %.sroa.011.0 = phi ptr [ %i.ae, %bb.g ], [ %i.ag, %bb.i ]
  %i.ai = load i64, ptr %.sroa.011.0, align 8
  %i.aj = load ptr, ptr %i.a, align 8
  store i64 %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.ak, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = tail call ptr @_ZN2v88internal9SeqString8TruncateEPNS0_7IsolateENS0_6HandleIS1_EEj(ptr noundef %i.a, ptr %.sroa.0.0.copyload.i.i, i32 noundef %i.d) #13
  %i.f = load i64, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.b, align 8
  store i64 %i.f, ptr %i.g, align 8
  %.sroa.0.0.copyload.i10 = load ptr, ptr %i.b, align 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i9.i = load ptr, ptr %i.h, align 8 ; 3 uses
  %i.i = load i64, ptr %.sroa.0.0.copyload.i9.i, align 8
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = load i64, ptr %.sroa.0.0.copyload.i10, align 8
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.r, %i.m
  %i.t = icmp ugt i32 %i.s, 536870888
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 688
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.w, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder10AccumulateENS0_12DirectHandleINS0_6StringEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.x = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringINS0_6HandleEQsr3stdE16is_convertible_vITL0__INS0_6StringEENS0_12DirectHandleIS7_EEEEENT_IS7_E9MaybeTypeESC_SC_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr nonnull %.sroa.0.0.copyload.i9.i, ptr nonnull %.sroa.0.0.copyload.i10, i8 noundef zeroext 0) #13 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.d, label %._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i, !prof !13

._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i: ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal24IncrementalStringBuilder10AccumulateENS0_12DirectHandleINS0_6StringEEE.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZN2v88internal24IncrementalStringBuilder10AccumulateENS0_12DirectHandleINS0_6StringEEE.exit: ; preds = %bb.b, %._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i
  %i.z = phi ptr [ %.sroa.0.0.copyload.i9.i, %bb.b ], [ %.pre.i, %._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i ]
  %.sroa.018.0.i = phi ptr [ %i.v, %bb.b ], [ %i.x, %._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i ]
  %i.aa = load i64, ptr %.sroa.018.0.i, align 8
  store i64 %i.aa, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i8, ptr %i.ab, align 4, !range !8, !noundef !9
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load ptr, ptr %0, align 8               ; 8 uses
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal24IncrementalStringBuilder10AccumulateENS0_12DirectHandleINS0_6StringEEE.exit
  %i.af = tail call ptr @_ZN2v88internal7Factory27NewInvalidStringLengthErrorEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ae) #13
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %i.ae, i64 %i.ag, ptr noundef null) #13 ; 0 uses
  br label %_ZN2v88internal7Factory17InternalizeStringINS0_6StringEQsr3stdE16is_convertible_vINS0_6HandleIT_EENS4_IS3_EEEEES7_S6_.exit

bb.f:                                             ; preds = %_ZN2v88internal24IncrementalStringBuilder10AccumulateENS0_12DirectHandleINS0_6StringEEE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 59472
  %i.aj = load i8, ptr %i.ai, align 8, !range !8, !noundef !9
  %i.ak = trunc nuw i8 %i.aj to i1
  %.sroa.0.0.copyload.i9 = load ptr, ptr %i.h, align 8 ; 4 uses
  br i1 %i.ak, label %bb.g, label %_ZN2v88internal7Factory17InternalizeStringINS0_6StringEQsr3stdE16is_convertible_vINS0_6HandleIT_EENS4_IS3_EEEEES7_S6_.exit

bb.g:                                             ; preds = %bb.f
  %i.al = load i64, ptr %.sroa.0.0.copyload.i9, align 8
  %i.am = add i64 %i.al, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.ap = add i64 %i.ao, 11
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i16, ptr %i.aq monotonic, align 2
  %i.as = and i16 %i.ar, -96
  %i.at = icmp eq i16 %i.as, 0
  br i1 %i.at, label %_ZN2v88internal7Factory17InternalizeStringINS0_6StringEQsr3stdE16is_convertible_vINS0_6HandleIT_EENS4_IS3_EEEEES7_S6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !8, !noundef !9
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 55448
  %i.ax = load i8, ptr %i.aw, align 8, !range !8
  %i.ay = trunc nuw i8 %i.ax to i1
  %not..i.i.i = xor i1 %i.av, true
  %i.az = select i1 %not..i.i.i, i1 true, i1 %i.ay
  br i1 %i.az, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 64088
  %i.bb = load i8, ptr %i.ba, align 8, !range !8, !noundef !9
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt27__throw_bad_optional_accessv() #15
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i: ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 64080
  %i.be = load ptr, ptr %i.bd, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i:  ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, %bb.h
  %.pn.i.i = phi ptr [ %i.be, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i ], [ %i.ae, %bb.h ]
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 58464
  %i.bf = load ptr, ptr %.in.i.i, align 8
  %i.bg = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr nonnull %.sroa.0.0.copyload.i9) #13
  br label %_ZN2v88internal7Factory17InternalizeStringINS0_6StringEQsr3stdE16is_convertible_vINS0_6HandleIT_EENS4_IS3_EEEEES7_S6_.exit

_ZN2v88internal7Factory17InternalizeStringINS0_6StringEQsr3stdE16is_convertible_vINS0_6HandleIT_EENS4_IS3_EEEEES7_S6_.exit: ; preds = %bb.f, %_ZNK2v88internal7Isolate12string_tableEv.exit.i, %bb.g, %bb.e
  %.sroa.011.0 = phi ptr [ null, %bb.e ], [ %.sroa.0.0.copyload.i9, %bb.g ], [ %i.bg, %_ZNK2v88internal7Isolate12string_tableEv.exit.i ], [ %.sroa.0.0.copyload.i9, %bb.f ]
  ret ptr %.sroa.011.0
}

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #1

declare ptr @_ZN2v88internal7Factory27NewInvalidStringLengthErrorEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal24IncrementalStringBuilder15CanAppendByCopyENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr readonly captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load atomic volatile i64, ptr %i.f acquire, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = and i16 %i.j, -121
  %i.l = icmp eq i16 %i.k, 1
  br i1 %i.l, label %_ZNK2v88internal6String6IsFlatEv.exit, label %_ZNK2v88internal6String6IsFlatEv.exit.thread.preheader

_ZNK2v88internal6String6IsFlatEv.exit:            ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZNK2v88internal6String6IsFlatEv.exit.thread.preheader, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit

_ZNK2v88internal6String6IsFlatEv.exit.thread.preheader: ; preds = %bb.b, %_ZNK2v88internal6String6IsFlatEv.exit
  br label %_ZNK2v88internal6String6IsFlatEv.exit.thread

_ZNK2v88internal6String6IsFlatEv.exit.thread:     ; preds = %_ZNK2v88internal6String6IsFlatEv.exit.thread.preheader, %bb.c
  %.sroa.04.0.i.in = phi ptr [ %i.aa, %bb.c ], [ %1, %_ZNK2v88internal6String6IsFlatEv.exit.thread.preheader ]
  %.sroa.04.0.i = load i64, ptr %.sroa.04.0.i.in, align 8
  %i.t = add i64 %.sroa.04.0.i, -1
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  %i.z = and i16 %i.y, 9
  switch i16 %i.z, label %bb.c [
    i16 8, label %.critedge
    i16 0, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit
  ]

bb.c:                                             ; preds = %_ZNK2v88internal6String6IsFlatEv.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %_ZNK2v88internal6String6IsFlatEv.exit.thread

.critedge:                                        ; preds = %_ZNK2v88internal6String6IsFlatEv.exit.thread, %bb.a
  %i.ab = load i64, ptr %1, align 8
  %i.ac = add i64 %i.ab, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = sub nsw i32 %i.ah, %i.aj
  %i.al = icmp sgt i32 %i.ak, %i.af
  br label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit: ; preds = %_ZNK2v88internal6String6IsFlatEv.exit.thread, %_ZNK2v88internal6String6IsFlatEv.exit, %.critedge
  %i.am = phi i1 [ false, %_ZNK2v88internal6String6IsFlatEv.exit ], [ %i.al, %.critedge ], [ false, %_ZNK2v88internal6String6IsFlatEv.exit.thread ]
  ret i1 %i.am
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24IncrementalStringBuilder18AppendStringByCopyENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load i64, ptr %1, align 8                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i11 = load ptr, ptr %i.e, align 8
  %i.f = load i64, ptr %.sroa.0.0.copyload.i11, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = add i64 %i.d, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  tail call void @_ZN2v88internal6String11WriteToFlatIhEEvNS0_6TaggedIS1_EEPT_jj(i64 %i.d, ptr noundef nonnull %i.q, i32 noundef 0, i32 noundef %i.p) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.l
  tail call void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jj(i64 %i.d, ptr noundef nonnull %i.r, i32 noundef 0, i32 noundef %i.p) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = load i64, ptr %1, align 8
  %i.t = add i64 %i.s, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add i32 %i.y, %i.w                       ; 2 uses
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %_ZN2v88internal24IncrementalStringBuilder15CanAppendByCopyENS0_12DirectHandleINS0_6StringEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load atomic volatile i64, ptr %i.f acquire, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = and i16 %i.j, -121
  %i.l = icmp eq i16 %i.k, 1
  br i1 %i.l, label %_ZNK2v88internal6String6IsFlatEv.exit.i, label %_ZNK2v88internal6String6IsFlatEv.exit.thread.i.preheader

_ZNK2v88internal6String6IsFlatEv.exit.i:          ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZNK2v88internal6String6IsFlatEv.exit.thread.i.preheader, label %_ZN2v88internal24IncrementalStringBuilder15CanAppendByCopyENS0_12DirectHandleINS0_6StringEEE.exit.thread

_ZNK2v88internal6String6IsFlatEv.exit.thread.i.preheader: ; preds = %_ZNK2v88internal6String6IsFlatEv.exit.i, %bb.b
  br label %_ZNK2v88internal6String6IsFlatEv.exit.thread.i

_ZNK2v88internal6String6IsFlatEv.exit.thread.i:   ; preds = %_ZNK2v88internal6String6IsFlatEv.exit.thread.i.preheader, %bb.c
  %.sroa.04.0.i.in.i = phi ptr [ %i.aa, %bb.c ], [ %1, %_ZNK2v88internal6String6IsFlatEv.exit.thread.i.preheader ]
  %.sroa.04.0.i.i = load i64, ptr %.sroa.04.0.i.in.i, align 8
  %i.t = add i64 %.sroa.04.0.i.i, -1
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  %i.z = and i16 %i.y, 9
  switch i16 %i.z, label %bb.c [
    i16 8, label %_ZN2v88internal24IncrementalStringBuilder15CanAppendByCopyENS0_12DirectHandleINS0_6StringEEE.exit
    i16 0, label %_ZN2v88internal24IncrementalStringBuilder15CanAppendByCopyENS0_12DirectHandleINS0_6StringEEE.exit.thread
  ]

bb.c:                                             ; preds = %_ZNK2v88internal6String6IsFlatEv.exit.thread.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %_ZNK2v88internal6String6IsFlatEv.exit.thread.i

_ZN2v88internal24IncrementalStringBuilder15CanAppendByCopyENS0_12DirectHandleINS0_6StringEEE.exit: ; preds = %_ZNK2v88internal6String6IsFlatEv.exit.thread.i, %bb.a
  %i.ab = load i64, ptr %1, align 8               ; 3 uses
  %i.ac = add i64 %i.ab, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = sub nsw i32 %i.ah, %i.aj
  %i.al = icmp sgt i32 %i.ak, %i.af
  br i1 %i.al, label %bb.d, label %_ZN2v88internal24IncrementalStringBuilder15CanAppendByCopyENS0_12DirectHandleINS0_6StringEEE.exit.thread

bb.d:                                             ; preds = %_ZN2v88internal24IncrementalStringBuilder15CanAppendByCopyENS0_12DirectHandleINS0_6StringEEE.exit
  %i.am = load i32, ptr %i.a, align 8
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i11.i = load ptr, ptr %i.ao, align 8
  %i.ap = load i64, ptr %.sroa.0.0.copyload.i11.i, align 8
  %i.aq = add i64 %i.ap, -1
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.at = sext i32 %i.aj to i64                   ; 2 uses
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  tail call void @_ZN2v88internal6String11WriteToFlatIhEEvNS0_6TaggedIS1_EEPT_jj(i64 %i.ab, ptr noundef nonnull %i.au, i32 noundef 0, i32 noundef %i.af) #13
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds [2 x i8], ptr %i.as, i64 %i.at
  tail call void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jj(i64 %i.ab, ptr noundef nonnull %i.av, i32 noundef 0, i32 noundef %i.af) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aw = load i64, ptr %1, align 8
  %i.ax = add i64 %i.aw, -1
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = load i32, ptr %i.ai, align 4
  %i.bc = add i32 %i.bb, %i.ba                    ; 2 uses
  store i32 %i.bc, ptr %i.ai, align 4
  %i.bd = load i32, ptr %i.ag, align 8
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.h, label %_ZN2v88internal24IncrementalStringBuilder18AppendStringByCopyENS0_12DirectHandleINS0_6StringEEE.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %_ZN2v88internal24IncrementalStringBuilder18AppendStringByCopyENS0_12DirectHandleINS0_6StringEEE.exit

_ZN2v88internal24IncrementalStringBuilder15CanAppendByCopyENS0_12DirectHandleINS0_6StringEEE.exit.thread: ; preds = %_ZNK2v88internal6String6IsFlatEv.exit.thread.i, %_ZNK2v88internal6String6IsFlatEv.exit.i, %_ZN2v88internal24IncrementalStringBuilder15CanAppendByCopyENS0_12DirectHandleINS0_6StringEEE.exit
  %i.bf = load ptr, ptr %0, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = tail call ptr @_ZN2v88internal9SeqString8TruncateEPNS0_7IsolateENS0_6HandleIS1_EEj(ptr noundef %i.bf, ptr %.sroa.0.0.copyload.i.i, i32 noundef %i.bi) #13
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.bg, align 8
  store i64 %i.bk, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 32, ptr %i.bm, align 8
  tail call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i9.i = load ptr, ptr %i.bn, align 8 ; 3 uses
  %i.bo = load i64, ptr %.sroa.0.0.copyload.i9.i, align 8
  %i.bp = add i64 %i.bo, -1
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = load i64, ptr %1, align 8
  %i.bu = add i64 %i.bt, -1
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = add i32 %i.bx, %i.bs
  %i.bz = icmp ugt i32 %i.by, 536870888
  %i.ca = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.bz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal24IncrementalStringBuilder15CanAppendByCopyENS0_12DirectHandleINS0_6StringEEE.exit.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 688
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.cc, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder10AccumulateENS0_12DirectHandleINS0_6StringEEE.exit

bb.j:                                             ; preds = %_ZN2v88internal24IncrementalStringBuilder15CanAppendByCopyENS0_12DirectHandleINS0_6StringEEE.exit.thread
  %i.cd = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringINS0_6HandleEQsr3stdE16is_convertible_vITL0__INS0_6StringEENS0_12DirectHandleIS7_EEEEENT_IS7_E9MaybeTypeESC_SC_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.ca, ptr nonnull %.sroa.0.0.copyload.i9.i, ptr nonnull %1, i8 noundef zeroext 0) #13 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.k, label %._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i, !prof !13

._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i: ; preds = %bb.j
  %.pre.i = load ptr, ptr %i.bn, align 8
  br label %_ZN2v88internal24IncrementalStringBuilder10AccumulateENS0_12DirectHandleINS0_6StringEEE.exit

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZN2v88internal24IncrementalStringBuilder10AccumulateENS0_12DirectHandleINS0_6StringEEE.exit: ; preds = %bb.i, %._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i
  %i.cf = phi ptr [ %.sroa.0.0.copyload.i9.i, %bb.i ], [ %.pre.i, %._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i ]
  %.sroa.018.0.i = phi ptr [ %i.cb, %bb.i ], [ %i.cd, %._ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit_crit_edge.i ]
  %i.cg = load i64, ptr %.sroa.018.0.i, align 8
  store i64 %i.cg, ptr %i.cf, align 8
  br label %_ZN2v88internal24IncrementalStringBuilder18AppendStringByCopyENS0_12DirectHandleINS0_6StringEEE.exit

_ZN2v88internal24IncrementalStringBuilder18AppendStringByCopyENS0_12DirectHandleINS0_6StringEEE.exit: ; preds = %bb.h, %bb.g, %_ZN2v88internal24IncrementalStringBuilder10AccumulateENS0_12DirectHandleINS0_6StringEEE.exit
  ret void
}

declare ptr @_ZN2v88internal9SeqString8TruncateEPNS0_7IsolateENS0_6HandleIS1_EEj(ptr noundef, ptr, i32 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #1

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #1

declare void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992), i64, i64, i64, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #9

declare ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #10 comdat {
bb.a:
  tail call void @abort() #14
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
