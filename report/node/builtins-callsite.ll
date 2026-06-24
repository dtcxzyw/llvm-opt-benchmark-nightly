inline.NumInlined: 1078
inline.NumDeleted: 263
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", [4 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", [4 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue.470", [4 x i8], %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue.473", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.473", [2 x i8], %"class.v8::internal::FlagValue.470", [4 x i8], %"class.v8::internal::FlagValue.472", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", [4 x i8], %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.480", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.473" = type { %"class.std::optional.474" }
%"class.std::optional.474" = type { %"struct.std::_Optional_base.475" }
%"struct.std::_Optional_base.475" = type { %"struct.std::_Optional_payload.477" }
%"struct.std::_Optional_payload.477" = type { %"struct.std::_Optional_payload_base.478" }
%"struct.std::_Optional_payload_base.478" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.472" = type { double }
%"class.v8::internal::FlagValue.471" = type { i32 }
%"class.v8::internal::FlagValue.480" = type { i64 }
%"class.v8::internal::FlagValue.470" = type { i32 }
%"class.v8::internal::FlagValue.469" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.v8::internal::DirectHandle.460" = type { %"class.v8::internal::Handle.454" }
%"class.v8::internal::Handle.454" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"class.v8::internal::LookupIterator" = type { i32, i32, i8, i32, %"class.v8::internal::PropertyDetails", ptr, %"class.v8::internal::DirectHandle", %"class.v8::internal::DirectHandle.447", %"class.v8::internal::DirectHandle.449", %"class.v8::internal::DirectHandle.450", %"class.v8::internal::DirectHandle.449", i64, %"class.v8::internal::InternalIndex" }
%"class.v8::internal::PropertyDetails" = type { i32 }
%"class.v8::internal::DirectHandle" = type { %"class.v8::internal::Handle.446" }
%"class.v8::internal::Handle.446" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::DirectHandle.447" = type { %"class.v8::internal::Handle.448" }
%"class.v8::internal::Handle.448" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::DirectHandle.450" = type { %"class.v8::internal::Handle.451" }
%"class.v8::internal::Handle.451" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::DirectHandle.449" = type { %"class.v8::internal::Handle" }
%"class.v8::internal::Handle" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::InternalIndex" = type { i64 }
%"class.v8::internal::detail::TaggedOperatorArrowRef.490" = type { %"class.v8::internal::CallSiteInfo" }
%"class.v8::internal::CallSiteInfo" = type { %"class.v8::internal::TorqueGeneratedCallSiteInfo" }
%"class.v8::internal::TorqueGeneratedCallSiteInfo" = type { %"class.v8::internal::Struct" }
%"class.v8::internal::Struct" = type { %"class.v8::internal::TorqueGeneratedStruct" }
%"class.v8::internal::TorqueGeneratedStruct" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::HeapObject" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::TaggedImpl" = type { i64 }
%"class.v8::internal::detail::TaggedOperatorArrowRef.499" = type { %"class.v8::internal::ScopeInfo" }
%"class.v8::internal::ScopeInfo" = type { %"class.v8::internal::TorqueGeneratedScopeInfo" }
%"class.v8::internal::TorqueGeneratedScopeInfo" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::detail::TaggedOperatorArrowRef.502" = type { %"class.v8::internal::Context" }
%"class.v8::internal::Context" = type { %"class.v8::internal::TorqueGeneratedContext" }
%"class.v8::internal::TorqueGeneratedContext" = type { %"class.v8::internal::HeapObject" }

$_ZSt27__throw_bad_optional_accessv = comdat any

@.str = private unnamed_addr constant [16 x i8] c"getColumnNumber\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"static_cast<uint32_t>(index) <= static_cast<uint32_t>(length_)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"!is_null()\00", align 1
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str.4 = private unnamed_addr constant [25 x i8] c"getEnclosingColumnNumber\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"getEnclosingLineNumber\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"getEvalOrigin\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"getFileName\00", align 1
@_ZZN2v88internalL41Builtin_Impl_CallSitePrototypeGetFunctionENS0_16BuiltinArgumentsEPNS0_7IsolateEE11method_name = internal constant [12 x i8] c"getFunction\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"getFunctionName\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"getLineNumber\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"getMethodName\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"getPosition\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"getPromiseIndex\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"getScriptHash\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"getScriptNameOrSourceUrl\00", align 1
@_ZZN2v88internalL37Builtin_Impl_CallSitePrototypeGetThisENS0_16BuiltinArgumentsEPNS0_7IsolateEE11method_name = internal constant [8 x i8] c"getThis\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"getTypeName\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"isAsync\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"isConstructor\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"isEval\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"isNative\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"isPromiseAll\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"isToplevel\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"toString\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal40Builtin_CallSitePrototypeGetColumnNumberEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i30.i = icmp ult i32 %0, 4
  br i1 %.not.i30.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str, i64 15, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.m

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str, i64 15, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  %i.bs = call noundef i32 @_ZN2v88internal12CallSiteInfo15GetColumnNumberENS0_12DirectHandleIS1_EE(ptr %i.br) #8 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bu = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bv = load ptr, ptr %i.c, align 8
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.k, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.bx = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %2) #8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi ptr [ %i.bx, %bb.k ], [ %i.bu, %bb.j ]
  %i.by = zext nneg i32 %i.bs to i64
  %i.bz = shl nuw nsw i64 %i.by, 32               ; 2 uses
  store i64 %i.bz, ptr %.0.i.i.i.i, align 8
  br label %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i

bb.l:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.cb = load i64, ptr %i.ca, align 8
  br label %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i

_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i: ; preds = %bb.l, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i
  %.sroa.029.0.i = phi i64 [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i ], [ %i.bz, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i ], [ %i.cb, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i
  %.sroa.029.1.i = phi i64 [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i ], [ %.sroa.029.0.i, %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.cc = load i32, ptr %i.e, align 8
  %i.cd = add nsw i32 %i.cc, -1
  store i32 %i.cd, ptr %i.e, align 8
  %i.ce = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ce, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL45Builtin_Impl_CallSitePrototypeGetColumnNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL45Builtin_Impl_CallSitePrototypeGetColumnNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL45Builtin_Impl_CallSitePrototypeGetColumnNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.m, %bb.n
  ret i64 %.sroa.029.1.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal49Builtin_CallSitePrototypeGetEnclosingColumnNumberEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i30.i = icmp ult i32 %0, 4
  br i1 %.not.i30.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.4, i64 24, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.m

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.4, i64 24, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  %i.bs = call noundef i32 @_ZN2v88internal12CallSiteInfo24GetEnclosingColumnNumberENS0_12DirectHandleIS1_EE(ptr %i.br) #8 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bu = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bv = load ptr, ptr %i.c, align 8
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.k, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.bx = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %2) #8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi ptr [ %i.bx, %bb.k ], [ %i.bu, %bb.j ]
  %i.by = zext nneg i32 %i.bs to i64
  %i.bz = shl nuw nsw i64 %i.by, 32               ; 2 uses
  store i64 %i.bz, ptr %.0.i.i.i.i, align 8
  br label %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i

bb.l:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.cb = load i64, ptr %i.ca, align 8
  br label %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i

_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i: ; preds = %bb.l, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i
  %.sroa.029.0.i = phi i64 [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i ], [ %i.bz, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i ], [ %i.cb, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i
  %.sroa.029.1.i = phi i64 [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i ], [ %.sroa.029.0.i, %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.cc = load i32, ptr %i.e, align 8
  %i.cd = add nsw i32 %i.cc, -1
  store i32 %i.cd, ptr %i.e, align 8
  %i.ce = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ce, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL54Builtin_Impl_CallSitePrototypeGetEnclosingColumnNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL54Builtin_Impl_CallSitePrototypeGetEnclosingColumnNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL54Builtin_Impl_CallSitePrototypeGetEnclosingColumnNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.m, %bb.n
  ret i64 %.sroa.029.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal47Builtin_CallSitePrototypeGetEnclosingLineNumberEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i30.i = icmp ult i32 %0, 4
  br i1 %.not.i30.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.5, i64 22, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.m

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.5, i64 22, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  %i.bs = call noundef i32 @_ZN2v88internal12CallSiteInfo22GetEnclosingLineNumberENS0_12DirectHandleIS1_EE(ptr %i.br) #8 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bu = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bv = load ptr, ptr %i.c, align 8
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.k, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.bx = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %2) #8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi ptr [ %i.bx, %bb.k ], [ %i.bu, %bb.j ]
  %i.by = zext nneg i32 %i.bs to i64
  %i.bz = shl nuw nsw i64 %i.by, 32               ; 2 uses
  store i64 %i.bz, ptr %.0.i.i.i.i, align 8
  br label %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i

bb.l:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.cb = load i64, ptr %i.ca, align 8
  br label %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i

_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i: ; preds = %bb.l, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i
  %.sroa.029.0.i = phi i64 [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i ], [ %i.bz, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i ], [ %i.cb, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i
  %.sroa.029.1.i = phi i64 [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i ], [ %.sroa.029.0.i, %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.cc = load i32, ptr %i.e, align 8
  %i.cd = add nsw i32 %i.cc, -1
  store i32 %i.cd, ptr %i.e, align 8
  %i.ce = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ce, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL52Builtin_Impl_CallSitePrototypeGetEnclosingLineNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL52Builtin_Impl_CallSitePrototypeGetEnclosingLineNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL52Builtin_Impl_CallSitePrototypeGetEnclosingLineNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.m, %bb.n
  ret i64 %.sroa.029.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal38Builtin_CallSitePrototypeGetEvalOriginEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i30.i = icmp ult i32 %0, 4
  br i1 %.not.i30.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.6, i64 13, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.k

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.6, i64 13, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  %i.bs = call ptr @_ZN2v88internal12CallSiteInfo13GetEvalOriginENS0_12DirectHandleIS1_EE(ptr %i.br) #8
  %i.bt = load i64, ptr %i.bs, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i
  %.sroa.053.0.i = phi i64 [ %i.bt, %bb.i ], [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i
  %.sroa.053.1.i = phi i64 [ %.sroa.053.0.i, %bb.j ], [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bu = load i32, ptr %i.e, align 8
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.e, align 8
  %i.bw = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.bw, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL43Builtin_Impl_CallSitePrototypeGetEvalOriginENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL43Builtin_Impl_CallSitePrototypeGetEvalOriginENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL43Builtin_Impl_CallSitePrototypeGetEvalOriginENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.053.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal36Builtin_CallSitePrototypeGetFileNameEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.490", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i27.i = icmp ult i32 %0, 4
  br i1 %.not.i27.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.7, i64 11, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit30.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit30.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.k

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.7, i64 11, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit34.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit34.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.bs = load i64, ptr %i.br, align 8
  store i64 %i.bs, ptr %6, align 8
  %i.bt = call i64 @_ZNK2v88internal12CallSiteInfo13GetScriptNameEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit34.i
  %.sroa.026.0.i = phi i64 [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit34.i ], [ %i.bt, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit30.i
  %.sroa.026.1.i = phi i64 [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit30.i ], [ %.sroa.026.0.i, %bb.j ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bu = load i32, ptr %i.e, align 8
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.e, align 8
  %i.bw = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.bw, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL41Builtin_Impl_CallSitePrototypeGetFileNameENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL41Builtin_Impl_CallSitePrototypeGetFileNameENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL41Builtin_Impl_CallSitePrototypeGetFileNameENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.026.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal36Builtin_CallSitePrototypeGetFunctionEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.499", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.499", align 8 ; 4 uses
  %6 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %7 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i56.i = icmp ult i32 %0, 4
  br i1 %.not.i56.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @_ZZN2v88internalL41Builtin_Impl_CallSitePrototypeGetFunctionENS0_16BuiltinArgumentsEPNS0_7IsolateEE11method_name, i64 11, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit59.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit59.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  store ptr %i.v, ptr %7, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %7, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.p

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %8, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %8) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @_ZZN2v88internalL41Builtin_Impl_CallSitePrototypeGetFunctionENS0_16BuiltinArgumentsEPNS0_7IsolateEE11method_name, i64 11, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit63.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit63.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store ptr %i.bm, ptr %6, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %6, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.o

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %8, i32 noundef 0) #8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i64.i = load i64, ptr %i.bs, align 8
  %i.bt = add i64 %.sroa.0.0.copyload.i.i64.i, -1
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load atomic volatile i64, ptr %i.bu monotonic, align 8
  %i.bw = add i64 %i.bv, 31
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load i64, ptr %i.bx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.bz = add i64 %i.by, 15
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load i64, ptr %i.ca, align 8
  store i64 %i.cb, ptr %5, align 8
  %i.cc = call noundef zeroext i8 @_ZNK2v88internal9ScopeInfo10scope_typeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  %i.cd = icmp eq i8 %i.cc, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br i1 %i.cd, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = load i64, ptr %i.br, align 8            ; 3 uses
  %i.cf = add i64 %i.ce, 23
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load i64, ptr %i.cg, align 8            ; 3 uses
  %i.ci = trunc i64 %i.ch to i1
  br i1 %i.ci, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit55.i, label %.critedge2.i

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit55.i: ; preds = %bb.j
  %i.cj = add nsw i64 %i.ch, -1
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  %i.cm = add i64 %i.cl, 11
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i16, ptr %i.cn monotonic, align 2
  %i.cp = add i16 %i.co, -2065
  %i.cq = icmp ult i16 %i.cp, 17
  br i1 %i.cq, label %bb.k, label %.critedge2.i

bb.k:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit55.i
  %i.cr = add i64 %i.ch, 39
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = add i64 %i.ct, -1
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load atomic volatile i64, ptr %i.cv monotonic, align 8
  %i.cx = add i64 %i.cw, 31
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = load i64, ptr %i.cy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.da = add i64 %i.cz, 15
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load i64, ptr %i.db, align 8
  store i64 %i.dc, ptr %4, align 8
  %i.dd = call noundef zeroext i8 @_ZNK2v88internal9ScopeInfo10scope_typeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %i.de = icmp eq i8 %i.dd, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br i1 %i.de, label %.critedge.i, label %..critedge2_crit_edge.i

..critedge2_crit_edge.i:                          ; preds = %bb.k
  %.pre.i = load i64, ptr %i.br, align 8
  br label %.critedge2.i

.critedge.i:                                      ; preds = %bb.k, %bb.i
  %i.df = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @_ZZN2v88internalL41Builtin_Impl_CallSitePrototypeGetFunctionENS0_16BuiltinArgumentsEPNS0_7IsolateEE11method_name, i64 11, i8 noundef zeroext 0) #8 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.l, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit69.i, !prof !5

bb.l:                                             ; preds = %.critedge.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit69.i: ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.df, ptr %3, align 8
  %i.dh = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 38, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.di, ptr noundef null) #8
  br label %bb.o

.critedge2.i:                                     ; preds = %..critedge2_crit_edge.i, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit55.i, %bb.j
  %i.dk = phi i64 [ %.pre.i, %..critedge2_crit_edge.i ], [ %i.ce, %bb.j ], [ %i.ce, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit55.i ] ; 2 uses
  %i.dl = add i64 %i.dk, 39
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = and i64 %i.dn, 17179869184
  %.not178.i = icmp eq i64 %i.do, 0
  br i1 %.not178.i, label %bb.m, label %.critedge52.i

bb.m:                                             ; preds = %.critedge2.i
  %i.dp = add i64 %i.dk, 23
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = load i64, ptr %i.dq, align 8            ; 3 uses
  %i.ds = trunc i64 %i.dr to i1
  br i1 %i.ds, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, label %.critedge54.i

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.m
  %i.dt = add nsw i64 %i.dr, -1
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load atomic volatile i64, ptr %i.du monotonic, align 8
  %i.dw = add i64 %i.dv, 11
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load atomic volatile i16, ptr %i.dx monotonic, align 2
  %i.dz = add i16 %i.dy, -2065
  %i.ea = icmp ult i16 %i.dz, 17
  br i1 %i.ea, label %bb.n, label %.critedge54.i

bb.n:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.eb = add i64 %i.dr, 31
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = load atomic volatile i64, ptr %i.ec monotonic, align 8
  %i.ee = add i64 %i.ed, 55
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load atomic volatile i32, ptr %i.ef monotonic, align 4
  %i.eh = and i32 %i.eg, 134217728
  %.not179.i = icmp eq i32 %i.eh, 0
  br i1 %.not179.i, label %.critedge54.i, label %.critedge52.i

.critedge52.i:                                    ; preds = %bb.n, %.critedge2.i
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.ej = load i64, ptr %i.ei, align 8
  br label %bb.o

.critedge54.i:                                    ; preds = %bb.n, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.m
  call void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i32 noundef 76) #8
  %i.ek = load i64, ptr %i.br, align 8
  %i.el = add i64 %i.ek, 23
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = load i64, ptr %i.em, align 8
  br label %bb.o

bb.o:                                             ; preds = %.critedge54.i, %.critedge52.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit69.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit63.i
  %.sroa.0115.1.i = phi i64 [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit63.i ], [ %i.dj, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit69.i ], [ %i.ej, %.critedge52.i ], [ %i.en, %.critedge54.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit59.i
  %.sroa.0115.2.i = phi i64 [ %.sroa.0115.1.i, %bb.o ], [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit59.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.eo = load i32, ptr %i.e, align 8
  %i.ep = add nsw i32 %i.eo, -1
  store i32 %i.ep, ptr %i.e, align 8
  %i.eq = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.eq, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL41Builtin_Impl_CallSitePrototypeGetFunctionENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.q, !prof !8

bb.q:                                             ; preds = %bb.p
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL41Builtin_Impl_CallSitePrototypeGetFunctionENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL41Builtin_Impl_CallSitePrototypeGetFunctionENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.p, %bb.q
  ret i64 %.sroa.0115.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal40Builtin_CallSitePrototypeGetFunctionNameEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i30.i = icmp ult i32 %0, 4
  br i1 %.not.i30.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.8, i64 15, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.k

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.8, i64 15, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  %i.bs = call ptr @_ZN2v88internal12CallSiteInfo15GetFunctionNameENS0_12DirectHandleIS1_EE(ptr %i.br) #8
  %i.bt = load i64, ptr %i.bs, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i
  %.sroa.053.0.i = phi i64 [ %i.bt, %bb.i ], [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i
  %.sroa.053.1.i = phi i64 [ %.sroa.053.0.i, %bb.j ], [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bu = load i32, ptr %i.e, align 8
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.e, align 8
  %i.bw = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.bw, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL45Builtin_Impl_CallSitePrototypeGetFunctionNameENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL45Builtin_Impl_CallSitePrototypeGetFunctionNameENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL45Builtin_Impl_CallSitePrototypeGetFunctionNameENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.053.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal38Builtin_CallSitePrototypeGetLineNumberEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i30.i = icmp ult i32 %0, 4
  br i1 %.not.i30.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.9, i64 13, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.m

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.9, i64 13, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  %i.bs = call noundef i32 @_ZN2v88internal12CallSiteInfo13GetLineNumberENS0_12DirectHandleIS1_EE(ptr %i.br) #8 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bu = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bv = load ptr, ptr %i.c, align 8
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.k, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.bx = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %2) #8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi ptr [ %i.bx, %bb.k ], [ %i.bu, %bb.j ]
  %i.by = zext nneg i32 %i.bs to i64
  %i.bz = shl nuw nsw i64 %i.by, 32               ; 2 uses
  store i64 %i.bz, ptr %.0.i.i.i.i, align 8
  br label %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i

bb.l:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.cb = load i64, ptr %i.ca, align 8
  br label %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i

_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i: ; preds = %bb.l, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i
  %.sroa.029.0.i = phi i64 [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i ], [ %i.bz, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit.i.i ], [ %i.cb, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i
  %.sroa.029.1.i = phi i64 [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i ], [ %.sroa.029.0.i, %_ZN2v88internal12_GLOBAL__N_120PositiveNumberOrNullEiPNS0_7IsolateE.exit.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.cc = load i32, ptr %i.e, align 8
  %i.cd = add nsw i32 %i.cc, -1
  store i32 %i.cd, ptr %i.e, align 8
  %i.ce = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ce, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL43Builtin_Impl_CallSitePrototypeGetLineNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL43Builtin_Impl_CallSitePrototypeGetLineNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL43Builtin_Impl_CallSitePrototypeGetLineNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.m, %bb.n
  ret i64 %.sroa.029.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal38Builtin_CallSitePrototypeGetMethodNameEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i29.i = icmp ult i32 %0, 4
  br i1 %.not.i29.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.10, i64 13, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.k

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.10, i64 13, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  %i.bs = call ptr @_ZN2v88internal12CallSiteInfo13GetMethodNameENS0_12DirectHandleIS1_EE(ptr %i.br) #8
  %i.bt = load i64, ptr %i.bs, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i
  %.sroa.028.0.i = phi i64 [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i ], [ %i.bt, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i
  %.sroa.028.1.i = phi i64 [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i ], [ %.sroa.028.0.i, %bb.j ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bu = load i32, ptr %i.e, align 8
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.e, align 8
  %i.bw = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.bw, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL43Builtin_Impl_CallSitePrototypeGetMethodNameENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL43Builtin_Impl_CallSitePrototypeGetMethodNameENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL43Builtin_Impl_CallSitePrototypeGetMethodNameENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.028.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal36Builtin_CallSitePrototypeGetPositionEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i30.i = icmp ult i32 %0, 4
  br i1 %.not.i30.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.11, i64 11, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.k

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.11, i64 11, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  %i.bs = call noundef i32 @_ZN2v88internal12CallSiteInfo17GetSourcePositionENS0_12DirectHandleIS1_EE(ptr %i.br) #8
  %i.bt = sext i32 %i.bs to i64
  %i.bu = shl nsw i64 %i.bt, 32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i
  %.sroa.052.0.i = phi i64 [ %i.bu, %bb.i ], [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i
  %.sroa.052.1.i = phi i64 [ %.sroa.052.0.i, %bb.j ], [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bv = load i32, ptr %i.e, align 8
  %i.bw = add nsw i32 %i.bv, -1
  store i32 %i.bw, ptr %i.e, align 8
  %i.bx = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.bx, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL41Builtin_Impl_CallSitePrototypeGetPositionENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL41Builtin_Impl_CallSitePrototypeGetPositionENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL41Builtin_Impl_CallSitePrototypeGetPositionENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.052.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal40Builtin_CallSitePrototypeGetPromiseIndexEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.490", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.490", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.490", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i32.i = icmp ult i32 %0, 4
  br i1 %.not.i32.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.12, i64 15, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit35.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit35.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.o

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.12, i64 15, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit39.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit39.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.n

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.bs = load i64, ptr %i.br, align 8
  store i64 %i.bs, ptr %6, align 8
  %i.bt = call noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo12IsPromiseAllEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  br i1 %i.bt, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = load i64, ptr %i.br, align 8
  store i64 %i.bu, ptr %7, align 8
  %i.bv = call noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo12IsPromiseAnyEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  br i1 %i.bv, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = load i64, ptr %i.br, align 8
  store i64 %i.bw, ptr %8, align 8
  %i.bx = call noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo19IsPromiseAllSettledEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br i1 %i.bx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.bz = load i64, ptr %i.by, align 8
  br label %bb.n

.critedge.i:                                      ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.m

bb.m:                                             ; preds = %.critedge.i, %bb.k
  %i.ca = call noundef i32 @_ZN2v88internal12CallSiteInfo17GetSourcePositionENS0_12DirectHandleIS1_EE(ptr nonnull %i.br) #8
  %i.cb = sext i32 %i.ca to i64
  %i.cc = shl nsw i64 %i.cb, 32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit39.i
  %.sroa.061.1.i = phi i64 [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit39.i ], [ %i.cc, %bb.m ], [ %i.bz, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit35.i
  %.sroa.061.2.i = phi i64 [ %.sroa.061.1.i, %bb.n ], [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit35.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.cd = load i32, ptr %i.e, align 8
  %i.ce = add nsw i32 %i.cd, -1
  store i32 %i.ce, ptr %i.e, align 8
  %i.cf = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.cf, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL45Builtin_Impl_CallSitePrototypeGetPromiseIndexENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.p, !prof !8

bb.p:                                             ; preds = %bb.o
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL45Builtin_Impl_CallSitePrototypeGetPromiseIndexENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL45Builtin_Impl_CallSitePrototypeGetPromiseIndexENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.o, %bb.p
  ret i64 %.sroa.061.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal38Builtin_CallSitePrototypeGetScriptHashEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i30.i = icmp ult i32 %0, 4
  br i1 %.not.i30.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.13, i64 13, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.k

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.13, i64 13, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  %i.bs = call ptr @_ZN2v88internal12CallSiteInfo13GetScriptHashENS0_12DirectHandleIS1_EE(ptr %i.br) #8
  %i.bt = load i64, ptr %i.bs, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i
  %.sroa.053.0.i = phi i64 [ %i.bt, %bb.i ], [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit37.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i
  %.sroa.053.1.i = phi i64 [ %.sroa.053.0.i, %bb.j ], [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bu = load i32, ptr %i.e, align 8
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.e, align 8
  %i.bw = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.bw, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL43Builtin_Impl_CallSitePrototypeGetScriptHashENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL43Builtin_Impl_CallSitePrototypeGetScriptHashENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL43Builtin_Impl_CallSitePrototypeGetScriptHashENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.053.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal49Builtin_CallSitePrototypeGetScriptNameOrSourceURLEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.490", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i27.i = icmp ult i32 %0, 4
  br i1 %.not.i27.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.14, i64 24, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit30.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit30.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.k

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.14, i64 24, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit34.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit34.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.bs = load i64, ptr %i.br, align 8
  store i64 %i.bs, ptr %6, align 8
  %i.bt = call i64 @_ZNK2v88internal12CallSiteInfo24GetScriptNameOrSourceURLEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit34.i
  %.sroa.026.0.i = phi i64 [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit34.i ], [ %i.bt, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit30.i
  %.sroa.026.1.i = phi i64 [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit30.i ], [ %.sroa.026.0.i, %bb.j ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bu = load i32, ptr %i.e, align 8
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.e, align 8
  %i.bw = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.bw, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL54Builtin_Impl_CallSitePrototypeGetScriptNameOrSourceURLENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL54Builtin_Impl_CallSitePrototypeGetScriptNameOrSourceURLENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL54Builtin_Impl_CallSitePrototypeGetScriptNameOrSourceURLENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.026.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal32Builtin_CallSitePrototypeGetThisEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.499", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.499", align 8 ; 4 uses
  %6 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %7 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %9 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.502", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.490", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i50.i = icmp ult i32 %0, 4
  br i1 %.not.i50.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @_ZZN2v88internalL37Builtin_Impl_CallSitePrototypeGetThisENS0_16BuiltinArgumentsEPNS0_7IsolateEE11method_name, i64 7, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit53.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit53.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  store ptr %i.v, ptr %7, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %7, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.r

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %8, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %8) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @_ZZN2v88internalL37Builtin_Impl_CallSitePrototypeGetThisENS0_16BuiltinArgumentsEPNS0_7IsolateEE11method_name, i64 7, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit57.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit57.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store ptr %i.bm, ptr %6, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %6, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.q

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %8, i32 noundef 0) #8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i58.i = load i64, ptr %i.bs, align 8
  %i.bt = add i64 %.sroa.0.0.copyload.i.i58.i, -1
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load atomic volatile i64, ptr %i.bu monotonic, align 8
  %i.bw = add i64 %i.bv, 31
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load i64, ptr %i.bx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.bz = add i64 %i.by, 15
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load i64, ptr %i.ca, align 8
  store i64 %i.cb, ptr %5, align 8
  %i.cc = call noundef zeroext i8 @_ZNK2v88internal9ScopeInfo10scope_typeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  %i.cd = icmp eq i8 %i.cc, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br i1 %i.cd, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = load i64, ptr %i.br, align 8            ; 3 uses
  %i.cf = add i64 %i.ce, 23
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load i64, ptr %i.cg, align 8            ; 3 uses
  %i.ci = trunc i64 %i.ch to i1
  br i1 %i.ci, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, label %.critedge2.i

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.j
  %i.cj = add nsw i64 %i.ch, -1
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  %i.cm = add i64 %i.cl, 11
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i16, ptr %i.cn monotonic, align 2
  %i.cp = add i16 %i.co, -2065
  %i.cq = icmp ult i16 %i.cp, 17
  br i1 %i.cq, label %bb.k, label %.critedge2.i

bb.k:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.cr = add i64 %i.ch, 39
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = add i64 %i.ct, -1
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load atomic volatile i64, ptr %i.cv monotonic, align 8
  %i.cx = add i64 %i.cw, 31
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = load i64, ptr %i.cy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.da = add i64 %i.cz, 15
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load i64, ptr %i.db, align 8
  store i64 %i.dc, ptr %4, align 8
  %i.dd = call noundef zeroext i8 @_ZNK2v88internal9ScopeInfo10scope_typeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %i.de = icmp eq i8 %i.dd, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br i1 %i.de, label %.critedge.i, label %..critedge2_crit_edge.i

..critedge2_crit_edge.i:                          ; preds = %bb.k
  %.pre.i = load i64, ptr %i.br, align 8
  br label %.critedge2.i

.critedge.i:                                      ; preds = %bb.k, %bb.i
  %i.df = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @_ZZN2v88internalL37Builtin_Impl_CallSitePrototypeGetThisENS0_16BuiltinArgumentsEPNS0_7IsolateEE11method_name, i64 7, i8 noundef zeroext 0) #8 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.l, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit63.i, !prof !5

bb.l:                                             ; preds = %.critedge.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit63.i: ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.df, ptr %3, align 8
  %i.dh = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 38, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.di, ptr noundef null) #8
  br label %bb.q

.critedge2.i:                                     ; preds = %..critedge2_crit_edge.i, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.j
  %i.dk = phi i64 [ %.pre.i, %..critedge2_crit_edge.i ], [ %i.ce, %bb.j ], [ %i.ce, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %i.dl = add i64 %i.dk, 39
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = and i64 %i.dn, 17179869184
  %.not165.i = icmp eq i64 %i.do, 0
  br i1 %.not165.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge2.i
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.dq = load i64, ptr %i.dp, align 8
  br label %bb.q

bb.n:                                             ; preds = %.critedge2.i
  call void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i32 noundef 77) #8
  %i.dr = load i64, ptr %i.br, align 8            ; 3 uses
  %i.ds = add i64 %i.dr, 39
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = and i64 %i.du, 8589934592
  %.not166.i = icmp eq i64 %i.dv, 0
  br i1 %.not166.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  store i64 %i.dr, ptr %10, align 8
  %i.dw = call i64 @_ZNK2v88internal12CallSiteInfo15GetWasmInstanceEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #8
  %i.dx = add i64 %i.dw, 23
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load atomic volatile i64, ptr %i.dy acquire, align 8
  %i.ea = add i64 %i.dz, 159
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = load i64, ptr %i.eb, align 8
  store i64 %i.ec, ptr %9, align 8
  %i.ed = call i64 @_ZNK2v88internal7Context12global_proxyEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ee = add i64 %i.dr, 15
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load i64, ptr %i.ef, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit63.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit57.i
  %.sroa.0108.1.i = phi i64 [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit57.i ], [ %i.dj, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit63.i ], [ %i.dq, %bb.m ], [ %i.ed, %bb.o ], [ %i.eg, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit53.i
  %.sroa.0108.2.i = phi i64 [ %.sroa.0108.1.i, %bb.q ], [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit53.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.eh = load i32, ptr %i.e, align 8
  %i.ei = add nsw i32 %i.eh, -1
  store i32 %i.ei, ptr %i.e, align 8
  %i.ej = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ej, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL37Builtin_Impl_CallSitePrototypeGetThisENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.r
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL37Builtin_Impl_CallSitePrototypeGetThisENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL37Builtin_Impl_CallSitePrototypeGetThisENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.r, %bb.s
  ret i64 %.sroa.0108.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal36Builtin_CallSitePrototypeGetTypeNameEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i29.i = icmp ult i32 %0, 4
  br i1 %.not.i29.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.15, i64 11, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.k

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.15, i64 11, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  %i.bs = call ptr @_ZN2v88internal12CallSiteInfo11GetTypeNameENS0_12DirectHandleIS1_EE(ptr %i.br) #8
  %i.bt = load i64, ptr %i.bs, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i
  %.sroa.028.0.i = phi i64 [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i ], [ %i.bt, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i
  %.sroa.028.1.i = phi i64 [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i ], [ %.sroa.028.0.i, %bb.j ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bu = load i32, ptr %i.e, align 8
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.e, align 8
  %i.bw = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.bw, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL41Builtin_Impl_CallSitePrototypeGetTypeNameENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL41Builtin_Impl_CallSitePrototypeGetTypeNameENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL41Builtin_Impl_CallSitePrototypeGetTypeNameENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.028.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal32Builtin_CallSitePrototypeIsAsyncEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i29.i = icmp ult i32 %0, 4
  br i1 %.not.i29.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.16, i64 7, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.k

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.16, i64 7, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.bt = load i64, ptr %i.br, align 8
  %i.bu = add i64 %i.bt, 39
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = and i64 %i.bw, 137438953472
  %.not74.i = icmp eq i64 %i.bx, 0
  %i.by = ptrtoint ptr %i.bs to i64
  %i.bz = add i64 %i.by, -55464
  %i.ca = inttoptr i64 %i.bz to ptr
  %.sroa.03.0.in.v.i.i = select i1 %.not74.i, i64 680, i64 672
  %.sroa.03.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.03.0.in.v.i.i
  %.sroa.03.0.i.i = load i64, ptr %.sroa.03.0.in.i.i, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i
  %.sroa.054.0.i = phi i64 [ %.sroa.03.0.i.i, %bb.i ], [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i
  %.sroa.054.1.i = phi i64 [ %.sroa.054.0.i, %bb.j ], [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.cb = load i32, ptr %i.e, align 8
  %i.cc = add nsw i32 %i.cb, -1
  store i32 %i.cc, ptr %i.e, align 8
  %i.cd = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.cd, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL37Builtin_Impl_CallSitePrototypeIsAsyncENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL37Builtin_Impl_CallSitePrototypeIsAsyncENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL37Builtin_Impl_CallSitePrototypeIsAsyncENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.054.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal38Builtin_CallSitePrototypeIsConstructorEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i29.i = icmp ult i32 %0, 4
  br i1 %.not.i29.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.17, i64 13, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.k

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.17, i64 13, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.bt = load i64, ptr %i.br, align 8
  %i.bu = add i64 %i.bt, 39
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = and i64 %i.bw, 34359738368
  %.not74.i = icmp eq i64 %i.bx, 0
  %i.by = ptrtoint ptr %i.bs to i64
  %i.bz = add i64 %i.by, -55464
  %i.ca = inttoptr i64 %i.bz to ptr
  %.sroa.03.0.in.v.i.i = select i1 %.not74.i, i64 680, i64 672
  %.sroa.03.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.03.0.in.v.i.i
  %.sroa.03.0.i.i = load i64, ptr %.sroa.03.0.in.i.i, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i
  %.sroa.054.0.i = phi i64 [ %.sroa.03.0.i.i, %bb.i ], [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i
  %.sroa.054.1.i = phi i64 [ %.sroa.054.0.i, %bb.j ], [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.cb = load i32, ptr %i.e, align 8
  %i.cc = add nsw i32 %i.cb, -1
  store i32 %i.cc, ptr %i.e, align 8
  %i.cd = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.cd, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL43Builtin_Impl_CallSitePrototypeIsConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL43Builtin_Impl_CallSitePrototypeIsConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL43Builtin_Impl_CallSitePrototypeIsConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.054.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal31Builtin_CallSitePrototypeIsEvalEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.490", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i29.i = icmp ult i32 %0, 4
  br i1 %.not.i29.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.18, i64 6, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.k

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.18, i64 6, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 55464
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.bt = load i64, ptr %i.br, align 8
  store i64 %i.bt, ptr %6, align 8
  %i.bu = call noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo6IsEvalEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = add i64 %i.bv, -55464
  %i.bx = inttoptr i64 %i.bw to ptr
  %.sroa.03.0.in.v.i.i = select i1 %i.bu, i64 672, i64 680
  %.sroa.03.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.03.0.in.v.i.i
  %.sroa.03.0.i.i = load i64, ptr %.sroa.03.0.in.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i
  %.sroa.052.0.i = phi i64 [ %.sroa.03.0.i.i, %bb.i ], [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i
  %.sroa.052.1.i = phi i64 [ %.sroa.052.0.i, %bb.j ], [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.by = load i32, ptr %i.e, align 8
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.e, align 8
  %i.ca = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ca, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL36Builtin_Impl_CallSitePrototypeIsEvalENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL36Builtin_Impl_CallSitePrototypeIsEvalENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL36Builtin_Impl_CallSitePrototypeIsEvalENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.052.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal33Builtin_CallSitePrototypeIsNativeEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.490", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i29.i = icmp ult i32 %0, 4
  br i1 %.not.i29.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.19, i64 8, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.k

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.19, i64 8, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 55464
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.bt = load i64, ptr %i.br, align 8
  store i64 %i.bt, ptr %6, align 8
  %i.bu = call noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo8IsNativeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = add i64 %i.bv, -55464
  %i.bx = inttoptr i64 %i.bw to ptr
  %.sroa.03.0.in.v.i.i = select i1 %i.bu, i64 672, i64 680
  %.sroa.03.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.03.0.in.v.i.i
  %.sroa.03.0.i.i = load i64, ptr %.sroa.03.0.in.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i
  %.sroa.052.0.i = phi i64 [ %.sroa.03.0.i.i, %bb.i ], [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i
  %.sroa.052.1.i = phi i64 [ %.sroa.052.0.i, %bb.j ], [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.by = load i32, ptr %i.e, align 8
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.e, align 8
  %i.ca = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ca, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL38Builtin_Impl_CallSitePrototypeIsNativeENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL38Builtin_Impl_CallSitePrototypeIsNativeENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL38Builtin_Impl_CallSitePrototypeIsNativeENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.052.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal37Builtin_CallSitePrototypeIsPromiseAllEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.490", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i29.i = icmp ult i32 %0, 4
  br i1 %.not.i29.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.20, i64 12, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.k

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.20, i64 12, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 55464
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.bt = load i64, ptr %i.br, align 8
  store i64 %i.bt, ptr %6, align 8
  %i.bu = call noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo12IsPromiseAllEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = add i64 %i.bv, -55464
  %i.bx = inttoptr i64 %i.bw to ptr
  %.sroa.03.0.in.v.i.i = select i1 %i.bu, i64 672, i64 680
  %.sroa.03.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.03.0.in.v.i.i
  %.sroa.03.0.i.i = load i64, ptr %.sroa.03.0.in.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i
  %.sroa.052.0.i = phi i64 [ %.sroa.03.0.i.i, %bb.i ], [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i
  %.sroa.052.1.i = phi i64 [ %.sroa.052.0.i, %bb.j ], [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.by = load i32, ptr %i.e, align 8
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.e, align 8
  %i.ca = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ca, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL42Builtin_Impl_CallSitePrototypeIsPromiseAllENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL42Builtin_Impl_CallSitePrototypeIsPromiseAllENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL42Builtin_Impl_CallSitePrototypeIsPromiseAllENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.052.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal35Builtin_CallSitePrototypeIsToplevelEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.490", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i29.i = icmp ult i32 %0, 4
  br i1 %.not.i29.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.21, i64 10, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.k

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.21, i64 10, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 55464
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.bt = load i64, ptr %i.br, align 8
  store i64 %i.bt, ptr %6, align 8
  %i.bu = call noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo10IsToplevelEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = add i64 %i.bv, -55464
  %i.bx = inttoptr i64 %i.bw to ptr
  %.sroa.03.0.in.v.i.i = select i1 %i.bu, i64 672, i64 680
  %.sroa.03.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.03.0.in.v.i.i
  %.sroa.03.0.i.i = load i64, ptr %.sroa.03.0.in.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i
  %.sroa.052.0.i = phi i64 [ %.sroa.03.0.i.i, %bb.i ], [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit36.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i
  %.sroa.052.1.i = phi i64 [ %.sroa.052.0.i, %bb.j ], [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit32.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.by = load i32, ptr %i.e, align 8
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.e, align 8
  %i.ca = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ca, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL40Builtin_Impl_CallSitePrototypeIsToplevelENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL40Builtin_Impl_CallSitePrototypeIsToplevelENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL40Builtin_Impl_CallSitePrototypeIsToplevelENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.052.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal33Builtin_CallSitePrototypeToStringEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.460"], align 8 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::DirectHandle.460"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i35.i = icmp ult i32 %0, 4
  br i1 %.not.i35.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i.i = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub.i.i, 40               ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 302
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.22, i64 8, i8 noundef zeroext 0) #8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit38.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit38.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %4, i64 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #8
  br label %bb.l

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7904 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %5, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.k, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !6
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #9
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ab) #8
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.ab, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #8
  %i.bl = load i32, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %i.bl, 7
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.22, i64 8, i8 noundef zeroext 0) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit42.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #7
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit42.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.bm, ptr %3, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 37, ptr nonnull %3, i64 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bp, ptr noundef null) #8
  br label %bb.k

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit.i
  %i.br = call ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef 0) #8
  %i.bs = call ptr @_ZN2v88internal21SerializeCallSiteInfoEPNS0_7IsolateENS0_12DirectHandleINS0_12CallSiteInfoEEE(ptr noundef nonnull %2, ptr %i.br) #8 ; 2 uses
  %.not87.i = icmp eq ptr %i.bs, null
  br i1 %.not87.i, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %bb.j

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.bu = load i64, ptr %i.bt, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = load i64, ptr %i.bs, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit42.i
  %.sroa.061.1.i = phi i64 [ %i.bq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit42.i ], [ %i.bv, %bb.j ], [ %i.bu, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit38.i
  %.sroa.061.2.i = phi i64 [ %.sroa.061.1.i, %bb.k ], [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit38.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bw = load i32, ptr %i.e, align 8
  %i.bx = add nsw i32 %i.bw, -1
  store i32 %i.bx, ptr %i.e, align 8
  %i.by = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.by, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL38Builtin_Impl_CallSitePrototypeToStringENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.m, !prof !8

bb.m:                                             ; preds = %bb.l
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL38Builtin_Impl_CallSitePrototypeToStringENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL38Builtin_Impl_CallSitePrototypeToStringENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.l, %bb.m
  ret i64 %.sroa.061.2.i
}

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #2

declare ptr @_ZNK2v88internal14LookupIterator12GetDataValueENS0_16AllocationPolicyE(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal12CallSiteInfo15GetColumnNumberENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

declare ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #5 comdat {
bb.a:
  tail call void @abort() #7
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal12CallSiteInfo24GetEnclosingColumnNumberENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal12CallSiteInfo22GetEnclosingLineNumberENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal12CallSiteInfo13GetEvalOriginENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #2

declare i64 @_ZNK2v88internal12CallSiteInfo13GetScriptNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i8 @_ZNK2v88internal9ScopeInfo10scope_typeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN2v88internal12CallSiteInfo15GetFunctionNameENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal12CallSiteInfo13GetLineNumberENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal12CallSiteInfo13GetMethodNameENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal12CallSiteInfo17GetSourcePositionENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo12IsPromiseAllEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo12IsPromiseAnyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo19IsPromiseAllSettledEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN2v88internal12CallSiteInfo13GetScriptHashENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #2

declare i64 @_ZNK2v88internal12CallSiteInfo24GetScriptNameOrSourceURLEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZNK2v88internal12CallSiteInfo15GetWasmInstanceEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZNK2v88internal7Context12global_proxyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN2v88internal12CallSiteInfo11GetTypeNameENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo6IsEvalEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo8IsNativeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal12CallSiteInfo10IsToplevelEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN2v88internal21SerializeCallSiteInfoEPNS0_7IsolateENS0_12DirectHandleINS0_12CallSiteInfoEEE(ptr noundef, ptr) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
