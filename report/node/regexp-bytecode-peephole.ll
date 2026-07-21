inline.NumInlined: 918
inline.NumDeleted: 500
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", [4 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", [4 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.468", [4 x i8], %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue.471", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.471", [2 x i8], %"class.v8::internal::FlagValue.468", [4 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.469", %"class.v8::internal::FlagValue.469", [4 x i8], %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.468", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.467", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.471" = type { %"class.std::optional.472" }
%"class.std::optional.472" = type { %"struct.std::_Optional_base.473" }
%"struct.std::_Optional_base.473" = type { %"struct.std::_Optional_payload.475" }
%"struct.std::_Optional_payload.475" = type { %"struct.std::_Optional_payload_base.476" }
%"struct.std::_Optional_payload_base.476" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.470" = type { double }
%"class.v8::internal::FlagValue.469" = type { i32 }
%"class.v8::internal::FlagValue.478" = type { i64 }
%"class.v8::internal::FlagValue.468" = type { i32 }
%"class.v8::internal::FlagValue.467" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.v8::internal::ZoneLinkedList.541" = type { %"class.std::__cxx11::list.542" }
%"class.std::__cxx11::list.542" = type { %"class.std::__cxx11::_List_base.543" }
%"class.std::__cxx11::_List_base.543" = type { %"struct.std::__cxx11::_List_base<int, v8::internal::ZoneAllocator<int>>::_List_impl" }
%"struct.std::__cxx11::_List_base<int, v8::internal::ZoneAllocator<int>>::_List_impl" = type { %"class.v8::internal::ZoneAllocator.544", %"struct.std::__detail::_List_node_header" }
%"class.v8::internal::ZoneAllocator.544" = type { ptr }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"class.v8::internal::(anonymous namespace)::RegExpBytecodePeephole" = type { %"class.v8::internal::ZoneVector", ptr, %"class.v8::internal::ZoneMap", %"class.v8::internal::ZoneMap", %"class.v8::internal::ZoneMap", %"class.v8::internal::ZoneMap", %"class.v8::internal::ZoneMap", ptr }
%"class.v8::internal::ZoneVector" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneMap" = type { %"class.std::map" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<int, std::pair<const int, int>, std::_Select1st<std::pair<const int, int>>, std::less<int>, v8::internal::ZoneAllocator<std::pair<const int, int>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<int, std::pair<const int, int>, std::_Select1st<std::pair<const int, int>>, std::less<int>, v8::internal::ZoneAllocator<std::pair<const int, int>>>::_Rb_tree_impl" = type { %"class.v8::internal::ZoneAllocator", [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.v8::internal::ZoneAllocator" = type { ptr }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::unique_ptr.479" = type { %"struct.std::__uniq_ptr_data.480" }
%"struct.std::__uniq_ptr_data.480" = type { %"class.std::__uniq_ptr_impl.481" }
%"class.std::__uniq_ptr_impl.481" = type { %"class.std::tuple.482" }
%"class.std::tuple.482" = type { %"struct.std::_Tuple_impl.483" }
%"struct.std::_Tuple_impl.483" = type { %"struct.std::_Head_base.486" }
%"struct.std::_Head_base.486" = type { ptr }

$_ZN2v88internal10ZoneVectorIhE4GrowEm = comdat any

$_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEEixERS6_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE17_M_emplace_uniqueIJRiSD_EEES0_ISt17_Rb_tree_iteratorIS2_EbEDpOT_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE17_M_emplace_uniqueIJRiiEEES0_ISt17_Rb_tree_iteratorIS2_EbEDpOT_ = comdat any

$_ZN2v88internal10ZoneVectorIhE19PrepareForInsertionEPKhmPm = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE17_M_emplace_uniqueIJiRiEEES0_ISt17_Rb_tree_iteratorIS2_EbEDpOT_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE8_M_eraseEPSt13_Rb_tree_nodeIS2_E = comdat any

@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str = private unnamed_addr constant [20 x i8] c"Original Bytecode:\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Optimized Bytecode:\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@_ZN2v88internalL22kRegExpBytecodeLengthsE = internal unnamed_addr constant [60 x i32] [i32 4, i32 4, i32 8, i32 8, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 4, i32 8, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12, i32 12, i32 8, i32 8, i32 12, i32 12, i32 8, i32 8, i32 8, i32 8, i32 4, i32 4, i32 4, i32 24, i32 8, i32 4, i32 8, i32 4, i32 12, i32 12, i32 16, i32 16, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 12, i32 32, i32 24, i32 16, i32 20, i32 20, i32 32], align 16
@.str.4 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"std::numeric_limits<size_t>::max() - size() >= count\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal34RegExpBytecodePeepholeOptimization16OptimizeBytecodeEPNS0_7IsolateEPNS0_4ZoneENS0_12DirectHandleINS0_6StringEEEPKhiRKNS0_16ZoneUnorderedMapIiiNS_4base4hashIiEESt8equal_toIiEEE(ptr noundef %0, ptr noundef %1, ptr nofree readonly captures(none) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 3 uses
  %i.m = alloca i64, align 8                      ; 3 uses
  %i.n = alloca i64, align 8                      ; 3 uses
  %i.o = alloca i64, align 8                      ; 3 uses
  %i.p = alloca i64, align 8                      ; 3 uses
  %i.q = alloca i64, align 8                      ; 3 uses
  %i.r = alloca i64, align 8                      ; 3 uses
  %i.s = alloca i64, align 8                      ; 3 uses
  %6 = alloca %"class.v8::internal::ZoneLinkedList.541", align 8 ; 7 uses
  %i.t = alloca i32, align 4                      ; 5 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 5 uses
  %i.w = alloca i32, align 4                      ; 4 uses
  %i.x = alloca i32, align 4                      ; 4 uses
  %i.y = alloca i32, align 4                      ; 5 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %i.aa = alloca i32, align 4                     ; 4 uses
  %i.ab = alloca i32, align 4                     ; 4 uses
  %i.ac = alloca i32, align 4                     ; 5 uses
  %7 = alloca %"class.v8::internal::(anonymous namespace)::RegExpBytecodePeephole", align 8 ; 50 uses
  %8 = alloca %"class.std::unique_ptr.479", align 8 ; 5 uses
  %9 = alloca %"class.std::unique_ptr.479", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.ad = sext i32 %4 to i64
  store ptr %1, ptr %7, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 18 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = sub i64 %i.ah, %i.aj
  %i.al = icmp ult i64 %i.ak, 120
  br i1 %i.al, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_12_GLOBAL__N_120BytecodeSequenceNodeEJRKiRPS1_EEEPT_DpOT0_.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 120) #11
  %.pre.i.i.i = load i64, ptr %i.ai, align 8
  br label %_ZN2v88internal4Zone3NewINS0_12_GLOBAL__N_120BytecodeSequenceNodeEJRKiRPS1_EEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_12_GLOBAL__N_120BytecodeSequenceNodeEJRKiRPS1_EEEPT_DpOT0_.exit.i: ; preds = %bb.b, %bb.a
  %i.am = phi i64 [ %.pre.i.i.i, %bb.b ], [ %i.aj, %bb.a ] ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = add i64 %i.am, 120
  store i64 %i.ao, ptr %i.ai, align 8
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNodeC2EiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(120) %i.an, i32 noundef -1, ptr noundef nonnull %1)
  store ptr %i.an, ptr %i.af, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %i.aq = ptrtoint ptr %1 to i64                  ; 5 uses
  store i64 %i.aq, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 18 uses
  store i32 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 8 uses
  store ptr null, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 4 uses
  store ptr %i.ar, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.ar, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 4 uses
  store i64 0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 3 uses
  store i64 %i.aq, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 5 uses
  store i32 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  store ptr null, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 2 uses
  store ptr %i.ax, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 136
  store ptr %i.ax, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 144
  store i64 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 152 ; 3 uses
  store i64 %i.aq, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 16 uses
  store i32 0, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 176 ; 5 uses
  store ptr null, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 184
  store ptr %i.bd, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 192
  store ptr %i.bd, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 200
  store i64 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 6 uses
  store i64 %i.aq, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 224 ; 9 uses
  store i32 0, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 232 ; 5 uses
  store ptr null, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 240
  store ptr %i.bj, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 248
  store ptr %i.bj, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 256
  store i64 0, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 264 ; 8 uses
  store i64 %i.aq, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 280 ; 13 uses
  store i32 0, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 288 ; 7 uses
  store ptr null, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 296
  store ptr %i.bp, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 304
  store ptr %i.bp, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 312
  store i64 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 320 ; 2 uses
  store ptr %1, ptr %i.bu, align 8
  %.not.i.i.i.not = icmp eq i32 %4, 0
  br i1 %.not.i.i.i.not, label %_ZN2v88internal10ZoneVectorIhE7reserveEm.exit.i, label %bb.c, !prof !6

bb.c:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_12_GLOBAL__N_120BytecodeSequenceNodeEJRKiRPS1_EEEPT_DpOT0_.exit.i
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %7, i64 noundef range(i64 -2147483648, 2147483648) %i.ad)
  br label %_ZN2v88internal10ZoneVectorIhE7reserveEm.exit.i

_ZN2v88internal10ZoneVectorIhE7reserveEm.exit.i:  ; preds = %bb.c, %_ZN2v88internal4Zone3NewINS0_12_GLOBAL__N_120BytecodeSequenceNodeEJRKiRPS1_EEEPT_DpOT0_.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.val3.i = load ptr, ptr %i.bv, align 8         ; 2 uses
  %i.bw = icmp eq ptr %.val3.i, null
  br i1 %i.bw, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole21PrepareJumpStructuresERKNS0_16ZoneUnorderedMapIiiNS_4base4hashIiEESt8equal_toIiEEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal10ZoneVectorIhE7reserveEm.exit.i, %.lr.ph.i.i
  %.sroa.01.04.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.val3.i, %_ZN2v88internal10ZoneVectorIhE7reserveEm.exit.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 8
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.bx, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 12
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #11
  store i32 %.sroa.01.0.copyload.i.i, ptr %i.ab, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #11
  store i32 %.sroa.4.0.copyload.i.i, ptr %i.ac, align 4
  %i.by = call { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE17_M_emplace_uniqueIJRiSD_EEES0_ISt17_Rb_tree_iteratorIS2_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %i.ac) ; 0 uses
  %i.bz = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.ac) ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #11
  %i.cc = load ptr, ptr %.sroa.01.04.i.i, align 8 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole21PrepareJumpStructuresERKNS0_16ZoneUnorderedMapIiiNS_4base4hashIiEESt8equal_toIiEEE.exit.i, label %.lr.ph.i.i

_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole21PrepareJumpStructuresERKNS0_16ZoneUnorderedMapIiiNS_4base4hashIiEESt8equal_toIiEEE.exit.i: ; preds = %.lr.ph.i.i, %_ZN2v88internal10ZoneVectorIhE7reserveEm.exit.i
  %.val5.i.i = load ptr, ptr %i.af, align 8
  %i.ce = call fastcc noundef nonnull align 8 dereferenceable(120) ptr @_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode10FollowedByEi(ptr noundef nonnull align 8 dereferenceable(120) %.val5.i.i, i32 noundef 17)
  %i.cf = call fastcc noundef nonnull align 8 dereferenceable(120) ptr @_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode10FollowedByEi(ptr noundef nonnull align 8 dereferenceable(120) %i.ce, i32 noundef 37)
  %i.cg = call fastcc noundef nonnull align 8 dereferenceable(120) ptr @_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode10FollowedByEi(ptr noundef nonnull align 8 dereferenceable(120) %i.cf, i32 noundef 46) ; 18 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ck, align 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 24
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.co = load i64, ptr %i.cn, align 8            ; 2 uses
  %i.cp = sub i64 %i.cm, %i.co
  %i.cq = icmp ult i64 %i.cp, 40
  br i1 %i.cq, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode22IfArgumentEqualsOffsetEiii.exit.i.i, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole21PrepareJumpStructuresERKNS0_16ZoneUnorderedMapIiiNS_4base4hashIiEESt8equal_toIiEEE.exit.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val.i.i.i.i.i.i, i64 noundef 40) #11
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cn, align 8
  br label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode22IfArgumentEqualsOffsetEiii.exit.i.i

_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode22IfArgumentEqualsOffsetEiii.exit.i.i: ; preds = %bb.d, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole21PrepareJumpStructuresERKNS0_16ZoneUnorderedMapIiiNS_4base4hashIiEESt8equal_toIiEEE.exit.i
  %i.cr = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.d ], [ %i.co, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole21PrepareJumpStructuresERKNS0_16ZoneUnorderedMapIiiNS_4base4hashIiEESt8equal_toIiEEE.exit.i ] ; 2 uses
  %i.cs = add nsw i32 %i.ci, 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cu = inttoptr i64 %i.cr to ptr               ; 5 uses
  %i.cv = add i64 %i.cr, 40
  store i64 %i.cv, ptr %i.cn, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i32 %i.cs, ptr %i.cw, align 4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 20
  store i32 4, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 28
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull %i.ct) #11
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = add i64 %i.cy, 1
  store i64 %i.cz, ptr %i.cx, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 54, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 6 uses
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %tailrecurse.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i.i.i

tailrecurse.i.i.i.i:                              ; preds = %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode22IfArgumentEqualsOffsetEiii.exit.i.i, %tailrecurse.i.i.i.i
  %.tr5.i.i.i.i = phi ptr [ %i.df, %tailrecurse.i.i.i.i ], [ %i.cg, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode22IfArgumentEqualsOffsetEiii.exit.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.tr5.i.i.i.i, i64 16
  %i.df = load ptr, ptr %i.de, align 8            ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %tailrecurse.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i.i.i

_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i.i.i: ; preds = %tailrecurse.i.i.i.i, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode22IfArgumentEqualsOffsetEiii.exit.i.i
  %.tr.lcssa.i.i.i.i = phi ptr [ %i.cg, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode22IfArgumentEqualsOffsetEiii.exit.i.i ], [ %i.df, %tailrecurse.i.i.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i.i.i, i64 12
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cg, i64 88 ; 5 uses
  %i.dm = load ptr, ptr %i.dl, align 8            ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
  %i.dr = icmp ult ptr %i.do, %i.dq
  br i1 %i.dr, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode11MapArgumentEiiii.exit.i.i, label %bb.e, !prof !6

bb.e:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.ds, align 8
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = sdiv exact i64 %i.dv, 12
  %i.dx = add nsw i64 %i.dw, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_12_GLOBAL__N_123BytecodeArgumentMappingEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, i64 noundef %i.dx)
  %.pre.i.i.i.i.i = load ptr, ptr %i.dn, align 8
  br label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode11MapArgumentEiiii.exit.i.i

_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode11MapArgumentEiiii.exit.i.i: ; preds = %bb.e, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i.i.i
  %i.dy = phi ptr [ %i.do, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i.i.i ], [ %.pre.i.i.i.i.i, %bb.e ] ; 4 uses
  %i.dz = add nsw i32 %i.dk, 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store ptr %i.ea, ptr %i.dn, align 8
  store i32 %i.dz, ptr %i.dy, align 4
  %.sroa.4.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i32 3, ptr %.sroa.4.0..sroa_idx.i6.i.i, align 4
  %.sroa.5.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i32 3, ptr %.sroa.5.0..sroa_idx.i7.i.i, align 4
  %i.eb = load i32, ptr %i.db, align 8
  %i.ec = icmp sgt i32 %i.eb, 2
  br i1 %i.ec, label %tailrecurse.i.i14.i.i, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i8.i.i

tailrecurse.i.i14.i.i:                            ; preds = %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode11MapArgumentEiiii.exit.i.i, %tailrecurse.i.i14.i.i
  %.tr5.i.i15.i.i = phi ptr [ %i.ee, %tailrecurse.i.i14.i.i ], [ %i.cg, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode11MapArgumentEiiii.exit.i.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.tr5.i.i15.i.i, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8            ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i32, ptr %i.ef, align 8
  %i.eh = icmp sgt i32 %i.eg, 2
  br i1 %i.eh, label %tailrecurse.i.i14.i.i, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i8.i.i

_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i8.i.i: ; preds = %tailrecurse.i.i14.i.i, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode11MapArgumentEiiii.exit.i.i
  %.tr.lcssa.i.i9.i.i = phi ptr [ %i.cg, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode11MapArgumentEiiii.exit.i.i ], [ %i.ee, %tailrecurse.i.i14.i.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i9.i.i, i64 12
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = load ptr, ptr %i.dl, align 8            ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal34RegExpBytecodePeepholeOptimization16OptimizeBytecodeEPNS0_7IsolateEPNS0_4ZoneENS0_12DirectHandleINS0_6StringEEEPKhiRKNS0_16ZoneUnorderedMapIiiNS_4base4hashIiEESt8equal_toIiEEE:bb.a
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axp, i64 16 ; 3 uses
  %i.axr = load ptr, ptr %i.axq, align 8          ; 2 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axp, i64 24
  %i.axt = load ptr, ptr %i.axs, align 8          ; 2 uses
  %i.axu = icmp ult ptr %i.axr, %i.axt
  br i1 %i.axu, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode11MapArgumentEiiii.exit426.i.i, label %bb.bb, !prof !6

bb.bb:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i418.i.i
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axp, i64 8
  %.val.i.i.i420.i.i = load ptr, ptr %i.axv, align 8
  %i.axw = ptrtoint ptr %i.axt to i64
  %i.axx = ptrtoint ptr %.val.i.i.i420.i.i to i64
  %i.axy = sub i64 %i.axw, %i.axx
  %i.axz = sdiv exact i64 %i.axy, 12
  %i.aya = add nsw i64 %i.axz, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_12_GLOBAL__N_123BytecodeArgumentMappingEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.axp, i64 noundef %i.aya)
  %.pre.i.i.i421.i.i = load ptr, ptr %i.axq, align 8
  br label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode11MapArgumentEiiii.exit426.i.i

_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode11MapArgumentEiiii.exit426.i.i: ; preds = %bb.bb, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i418.i.i
  %i.ayb = phi ptr [ %i.axr, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i418.i.i ], [ %.pre.i.i.i421.i.i, %bb.bb ] ; 4 uses
  %i.ayc = add nsw i32 %i.axo, 4
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayb, i64 12
  store ptr %i.ayd, ptr %i.axq, align 8
  store i32 %i.ayc, ptr %i.ayb, align 4
  %.sroa.4.0..sroa_idx.i422.i.i = getelementptr inbounds nuw i8, ptr %i.ayb, i64 4
  store i32 4, ptr %.sroa.4.0..sroa_idx.i422.i.i, align 4
  %.sroa.5.0..sroa_idx.i423.i.i = getelementptr inbounds nuw i8, ptr %i.ayb, i64 8
  store i32 4, ptr %.sroa.5.0..sroa_idx.i423.i.i, align 4
  %i.aye = load i32, ptr %i.aso, align 8
  %i.ayf = icmp sgt i32 %i.aye, 2
  br i1 %i.ayf, label %tailrecurse.i.i433.i.i, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i427.i.i

tailrecurse.i.i433.i.i:                           ; preds = %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode11MapArgumentEiiii.exit426.i.i, %tailrecurse.i.i433.i.i
  %.tr5.i.i434.i.i = phi ptr [ %i.ayh, %tailrecurse.i.i433.i.i ], [ %i.art, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode11MapArgumentEiiii.exit426.i.i ]
  %i.ayg = getelementptr inbounds nuw i8, ptr %.tr5.i.i434.i.i, i64 16
  %i.ayh = load ptr, ptr %i.ayg, align 8          ; 3 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 8
  %i.ayj = load i32, ptr %i.ayi, align 8
  %i.ayk = icmp sgt i32 %i.ayj, 2
  br i1 %i.ayk, label %tailrecurse.i.i433.i.i, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i427.i.i

_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i427.i.i: ; preds = %tailrecurse.i.i433.i.i, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode11MapArgumentEiiii.exit426.i.i
  %.tr.lcssa.i.i428.i.i = phi ptr [ %i.art, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode11MapArgumentEiiii.exit426.i.i ], [ %i.ayh, %tailrecurse.i.i433.i.i ]
  %i.ayl = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i428.i.i, i64 12
  %i.aym = load i32, ptr %i.ayl, align 4
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.art, i64 104 ; 3 uses
  %i.ayo = load ptr, ptr %i.ayn, align 8          ; 3 uses
  %.val.i.i.i.i429.i.i = load ptr, ptr %i.ayo, align 8 ; 3 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i429.i.i, i64 24
  %i.ayq = load i64, ptr %i.ayp, align 8
  %i.ayr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i429.i.i, i64 16 ; 3 uses
  %i.ays = load i64, ptr %i.ayr, align 8          ; 2 uses
  %i.ayt = sub i64 %i.ayq, %i.ays
  %i.ayu = icmp ult i64 %i.ayt, 24
  br i1 %i.ayu, label %bb.bc, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14IgnoreArgumentEiii.exit435.i.i, !prof !5

bb.bc:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i427.i.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val.i.i.i.i429.i.i, i64 noundef 24) #11
  %.pre.i.i.i.i.i.i.i.i.i432.i.i = load i64, ptr %i.ayr, align 8
  br label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14IgnoreArgumentEiii.exit435.i.i

_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14IgnoreArgumentEiii.exit435.i.i: ; preds = %bb.bc, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i427.i.i
  %i.ayv = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i432.i.i, %bb.bc ], [ %i.ays, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i427.i.i ] ; 2 uses
  %i.ayw = add nsw i32 %i.aym, 4
  %.sroa.0.0.insert.ext.i430.i.i = zext i32 %i.ayw to i64
  %.sroa.0.0.insert.insert.i431.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i430.i.i, 17179869184
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayo, i64 8
  %i.ayy = inttoptr i64 %i.ayv to ptr             ; 2 uses
  %i.ayz = add i64 %i.ayv, 24
  store i64 %i.ayz, ptr %i.ayr, align 8
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayy, i64 16
  store i64 %.sroa.0.0.insert.insert.i431.i.i, ptr %i.aza, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ayy, ptr noundef nonnull %i.ayx) #11
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayo, i64 24 ; 2 uses
  %i.azc = load i64, ptr %i.azb, align 8
  %i.azd = add i64 %i.azc, 1
  store i64 %i.azd, ptr %i.azb, align 8
  %i.aze = load i32, ptr %i.aso, align 8
  %i.azf = icmp sgt i32 %i.aze, 3
  br i1 %i.azf, label %tailrecurse.i.i442.i.i, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i436.i.i

tailrecurse.i.i442.i.i:                           ; preds = %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14IgnoreArgumentEiii.exit435.i.i, %tailrecurse.i.i442.i.i
  %.tr5.i.i443.i.i = phi ptr [ %i.azh, %tailrecurse.i.i442.i.i ], [ %i.art, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14IgnoreArgumentEiii.exit435.i.i ]
  %i.azg = getelementptr inbounds nuw i8, ptr %.tr5.i.i443.i.i, i64 16
  %i.azh = load ptr, ptr %i.azg, align 8          ; 3 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 8
  %i.azj = load i32, ptr %i.azi, align 8
  %i.azk = icmp sgt i32 %i.azj, 3
  br i1 %i.azk, label %tailrecurse.i.i442.i.i, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i436.i.i

_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i436.i.i: ; preds = %tailrecurse.i.i442.i.i, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14IgnoreArgumentEiii.exit435.i.i
  %.tr.lcssa.i.i437.i.i = phi ptr [ %i.art, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14IgnoreArgumentEiii.exit435.i.i ], [ %i.azh, %tailrecurse.i.i442.i.i ]
  %i.azl = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i437.i.i, i64 12
  %i.azm = load i32, ptr %i.azl, align 4
  %i.azn = load ptr, ptr %i.ayn, align 8          ; 3 uses
  %.val.i.i.i.i438.i.i = load ptr, ptr %i.azn, align 8 ; 3 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i438.i.i, i64 24
  %i.azp = load i64, ptr %i.azo, align 8
  %i.azq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i438.i.i, i64 16 ; 3 uses
  %i.azr = load i64, ptr %i.azq, align 8          ; 2 uses
  %i.azs = sub i64 %i.azp, %i.azr
  %i.azt = icmp ult i64 %i.azs, 24
  br i1 %i.azt, label %bb.bd, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14IgnoreArgumentEiii.exit444.i.i, !prof !5

bb.bd:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i436.i.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val.i.i.i.i438.i.i, i64 noundef 24) #11
  %.pre.i.i.i.i.i.i.i.i.i441.i.i = load i64, ptr %i.azq, align 8
  br label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14IgnoreArgumentEiii.exit444.i.i

_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14IgnoreArgumentEiii.exit444.i.i: ; preds = %bb.bd, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i436.i.i
  %i.azu = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i441.i.i, %bb.bd ], [ %i.azr, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i436.i.i ] ; 2 uses
  %i.azv = add nsw i32 %i.azm, 4
  %.sroa.0.0.insert.ext.i439.i.i = zext i32 %i.azv to i64
  %.sroa.0.0.insert.insert.i440.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i439.i.i, 17179869184
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azn, i64 8
  %i.azx = inttoptr i64 %i.azu to ptr             ; 2 uses
  %i.azy = add i64 %i.azu, 24
  store i64 %i.azy, ptr %i.azq, align 8
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azx, i64 16
  store i64 %.sroa.0.0.insert.insert.i440.i.i, ptr %i.azz, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.azx, ptr noundef nonnull %i.azw) #11
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azn, i64 24 ; 2 uses
  %i.bab = load i64, ptr %i.baa, align 8
  %i.bac = add i64 %i.bab, 1
  store i64 %i.bac, ptr %i.baa, align 8
  %i.bad = load i32, ptr %i.aso, align 8
  %i.bae = icmp sgt i32 %i.bad, 4
  br i1 %i.bae, label %tailrecurse.i.i451.i.i, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i445.i.i

tailrecurse.i.i451.i.i:                           ; preds = %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14IgnoreArgumentEiii.exit444.i.i, %tailrecurse.i.i451.i.i
  %.tr5.i.i452.i.i = phi ptr [ %i.bag, %tailrecurse.i.i451.i.i ], [ %i.art, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14IgnoreArgumentEiii.exit444.i.i ]
  %i.baf = getelementptr inbounds nuw i8, ptr %.tr5.i.i452.i.i, i64 16
  %i.bag = load ptr, ptr %i.baf, align 8          ; 3 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 8
  %i.bai = load i32, ptr %i.bah, align 8
  %i.baj = icmp sgt i32 %i.bai, 4
  br i1 %i.baj, label %tailrecurse.i.i451.i.i, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i445.i.i

_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i445.i.i: ; preds = %tailrecurse.i.i451.i.i, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14IgnoreArgumentEiii.exit444.i.i
  %.tr.lcssa.i.i446.i.i = phi ptr [ %i.art, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14IgnoreArgumentEiii.exit444.i.i ], [ %i.bag, %tailrecurse.i.i451.i.i ]
  %i.bak = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i446.i.i, i64 12
  %i.bal = load i32, ptr %i.bak, align 4
  %i.bam = load ptr, ptr %i.ayn, align 8          ; 3 uses
  %.val.i.i.i.i447.i.i = load ptr, ptr %i.bam, align 8 ; 3 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i447.i.i, i64 24
  %i.bao = load i64, ptr %i.ban, align 8
  %i.bap = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i447.i.i, i64 16 ; 3 uses
  %i.baq = load i64, ptr %i.bap, align 8          ; 2 uses
  %i.bar = sub i64 %i.bao, %i.baq
  %i.bas = icmp ult i64 %i.bar, 24
  br i1 %i.bas, label %bb.be, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeepholeC2EPNS0_4ZoneEmRKNS0_16ZoneUnorderedMapIiiNS_4base4hashIiEESt8equal_toIiEEE.exit, !prof !5

bb.be:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i445.i.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val.i.i.i.i447.i.i, i64 noundef 24) #11
  %.pre.i.i.i.i.i.i.i.i.i450.i.i = load i64, ptr %i.bap, align 8
  br label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeepholeC2EPNS0_4ZoneEmRKNS0_16ZoneUnorderedMapIiiNS_4base4hashIiEESt8equal_toIiEEE.exit

_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeepholeC2EPNS0_4ZoneEmRKNS0_16ZoneUnorderedMapIiiNS_4base4hashIiEESt8equal_toIiEEE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i445.i.i, %bb.be
  %i.bat = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i450.i.i, %bb.be ], [ %i.baq, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode24GetNodeByIndexInSequenceEi.exit.i445.i.i ] ; 2 uses
  %i.bau = add nsw i32 %i.bal, 4
  %.sroa.0.0.insert.ext.i448.i.i = zext i32 %i.bau to i64
  %.sroa.0.0.insert.insert.i449.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i448.i.i, 17179869184
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bam, i64 8
  %i.baw = inttoptr i64 %i.bat to ptr             ; 2 uses
  %i.bax = add i64 %i.bat, 24
  store i64 %i.bax, ptr %i.bap, align 8
  %i.bay = getelementptr inbounds nuw i8, ptr %i.baw, i64 16
  store i64 %.sroa.0.0.insert.insert.i449.i.i, ptr %i.bay, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.baw, ptr noundef nonnull %i.bav) #11
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bam, i64 24 ; 2 uses
  %i.bba = load i64, ptr %i.baz, align 8
  %i.bbb = add i64 %i.bba, 1
  store i64 %i.bbb, ptr %i.baz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i32 -1, ptr %i.y, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #11
  store i32 0, ptr %i.z, align 4
  %i.bbc = call { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE17_M_emplace_uniqueIJRiiEEES0_ISt17_Rb_tree_iteratorIS2_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.z) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #11
  store i32 0, ptr %i.aa, align 4
  %i.bbd = call { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE17_M_emplace_uniqueIJRiiEEES0_ISt17_Rb_tree_iteratorIS2_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.aa) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i32 %4, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #11
  store i32 0, ptr %i.w, align 4
  %i.bbe = call { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE17_M_emplace_uniqueIJRiiEEES0_ISt17_Rb_tree_iteratorIS2_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #11
  store i32 0, ptr %i.x, align 4
  %i.bbf = call { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE17_M_emplace_uniqueIJRiiEEES0_ISt17_Rb_tree_iteratorIS2_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.x) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.bbg = icmp sgt i32 %4, 0
  br i1 %i.bbg, label %.lr.ph.preheader.i.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole16OptimizeBytecodeEPKhi.exit

.lr.ph.preheader.i.lr.ph.i:                       ; preds = %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeepholeC2EPNS0_4ZoneEmRKNS0_16ZoneUnorderedMapIiiNS_4base4hashIiEESt8equal_toIiEEE.exit
  %i.bbh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 14 uses
  %10 = insertelement <2 x ptr> poison, ptr %i.bbh, i64 0
  %11 = shufflevector <2 x ptr> %10, <2 x ptr> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x ptr> poison, ptr %i.ar, i64 0
  %13 = shufflevector <2 x ptr> %12, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.preheader.i.i.outer

.lr.ph.preheader.i.i.outer:                       ; preds = %.thread, %.lr.ph.preheader.i.lr.ph.i
  %.068.i.ph = phi i32 [ %.1.i47, %.thread ], [ 0, %.lr.ph.preheader.i.lr.ph.i ]
  %.01867.i.ph = phi i1 [ true, %.thread ], [ false, %.lr.ph.preheader.i.lr.ph.i ]
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.outer, %bb.db
  %.068.i = phi i32 [ %.1.i, %bb.db ], [ %.068.i.ph, %.lr.ph.preheader.i.i.outer ] ; 18 uses
  %i.bbk = load ptr, ptr %i.af, align 8
  br label %.lr.ph.i.i16

.lr.ph.i.i16:                                     ; preds = %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14CheckArgumentsEPKhi.exit.thread.i.i, %.lr.ph.preheader.i.i
  %.051.i.i = phi i32 [ %i.bes, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14CheckArgumentsEPKhi.exit.thread.i.i ], [ %.068.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02150.i.i = phi ptr [ %spec.select.i.i, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14CheckArgumentsEPKhi.exit.thread.i.i ], [ null, %.lr.ph.preheader.i.i ] ; 7 uses
  %.02249.i.i = phi ptr [ %i.bcx, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14CheckArgumentsEPKhi.exit.thread.i.i ], [ %i.bbk, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.bbl = sext i32 %.051.i.i to i64
  %i.bbm = getelementptr inbounds i8, ptr %3, i64 %i.bbl
  %i.bbn = load i8, ptr %i.bbm, align 1           ; 2 uses
  %i.bbo = zext i8 %i.bbn to i32                  ; 5 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %.02249.i.i, i64 56
  %.val.i.i.i.i.i17 = load i64, ptr %i.bbp, align 8
  %.not.not.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i17, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %.lr.ph.i.i16
  %i.bbq = getelementptr inbounds nuw i8, ptr %.02249.i.i, i64 48
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bh, %bb.bf
  %.sroa.01.0.in.i.i.i.i.i = phi ptr [ %i.bbq, %bb.bf ], [ %.sroa.01.0.i.i.i.i.i, %bb.bh ]
  %.sroa.01.0.i.i.i.i.i = load ptr, ptr %.sroa.01.0.in.i.i.i.i.i, align 8 ; 4 uses
  %i.bbr = icmp eq ptr %.sroa.01.0.i.i.i.i.i, null
  br i1 %i.bbr, label %_ZNK2v88internal12_GLOBAL__N_120BytecodeSequenceNode4FindEi.exit.thread.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.bbs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 8
  %.val9.i.i.i.i.i = load i32, ptr %i.bbs, align 4
  %i.bbt = icmp eq i32 %.val9.i.i.i.i.i, %i.bbo
  br i1 %i.bbt, label %_ZNK2v88internal12_GLOBAL__N_120BytecodeSequenceNode4FindEi.exit.i.i, label %bb.bg, !llvm.loop !7

bb.bi:                                            ; preds = %.lr.ph.i.i16
  %i.bbu = xor i32 %i.bbo, -1
  %i.bbv = shl nuw nsw i32 %i.bbo, 15
  %i.bbw = add nsw i32 %i.bbv, %i.bbu             ; 2 uses
  %i.bbx = lshr i32 %i.bbw, 12
  %i.bby = xor i32 %i.bbx, %i.bbw
  %i.bbz = mul nsw i32 %i.bby, 5                  ; 2 uses
  %i.bca = lshr i32 %i.bbz, 4
  %i.bcb = xor i32 %i.bca, %i.bbz
  %i.bcc = mul i32 %i.bcb, 2057                   ; 2 uses
  %i.bcd = lshr i32 %i.bcc, 16
  %i.bce = xor i32 %i.bcd, %i.bcc
  %i.bcf = zext i32 %i.bce to i64                 ; 3 uses
  %i.bcg = getelementptr inbounds nuw i8, ptr %.02249.i.i, i64 40
  %.val11.i.i.i.i.i = load i64, ptr %i.bcg, align 8 ; 2 uses
  %i.bch = urem i64 %i.bcf, %.val11.i.i.i.i.i     ; 2 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %.02249.i.i, i64 32
  %.val12.i.i.i.i.i = load ptr, ptr %i.bci, align 8
  %i.bcj = getelementptr inbounds nuw [8 x i8], ptr %.val12.i.i.i.i.i, i64 %i.bch
  %i.bck = load ptr, ptr %i.bcj, align 8          ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bck, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK2v88internal12_GLOBAL__N_120BytecodeSequenceNode4FindEi.exit.thread.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.bcl = load ptr, ptr %i.bck, align 8          ; 4 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcl, i64 8
  %.val212.i.i.i.i.i.i.i = load i32, ptr %i.bcm, align 4
  %i.bcn = getelementptr i8, ptr %i.bcl, i64 24
  %.val223.i.i.i.i.i.i.i = load i64, ptr %i.bcn, align 8
  %i.bco = icmp eq i64 %.val223.i.i.i.i.i.i.i, %i.bcf
  %i.bcp = icmp eq i32 %.val212.i.i.i.i.i.i.i, %i.bbo
  %spec.select.i4.i.i.i.i.i.i.i = select i1 %i.bco, i1 %i.bcp, i1 false
  br i1 %spec.select.i4.i.i.i.i.i.i.i, label %_ZNK2v88internal12_GLOBAL__N_120BytecodeSequenceNode4FindEi.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.bk:                                            ; preds = %bb.bl
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bct, i64 8
  %.val21.i.i.i.i.i.i.i = load i32, ptr %i.bcq, align 8
  %i.bcr = icmp eq i64 %.val24.i.i.i.i.i.i.i, %i.bcf
  %i.bcs = icmp eq i32 %.val21.i.i.i.i.i.i.i, %i.bbo
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.bcr, i1 %i.bcs, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %_ZNK2v88internal12_GLOBAL__N_120BytecodeSequenceNode4FindEi.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bj, %bb.bk
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.bct, %bb.bk ], [ %i.bcl, %bb.bj ]
  %i.bct = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8 ; 5 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.bct, null
  br i1 %.not18.i.i.i.i.i.i.i, label %_ZNK2v88internal12_GLOBAL__N_120BytecodeSequenceNode4FindEi.exit.thread.i.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bcu = getelementptr i8, ptr %i.bct, i64 24
  %.val24.i.i.i.i.i.i.i = load i64, ptr %i.bcu, align 8 ; 2 uses
  %i.bcv = urem i64 %.val24.i.i.i.i.i.i.i, %.val11.i.i.i.i.i
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.bcv, %i.bch
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.bk, label %..loopexit_crit_edge6.i.i.i.i.i.i.i, !llvm.loop !9

..loopexit_crit_edge6.i.i.i.i.i.i.i:              ; preds = %bb.bl
  br label %_ZNK2v88internal12_GLOBAL__N_120BytecodeSequenceNode4FindEi.exit.thread.i.i, !llvm.loop !9

_ZNK2v88internal12_GLOBAL__N_120BytecodeSequenceNode4FindEi.exit.i.i: ; preds = %bb.bk, %bb.bh, %bb.bj
  %.sroa.01.1.i.i.i.i.i = phi ptr [ %.sroa.01.0.i.i.i.i.i, %bb.bh ], [ %i.bcl, %bb.bj ], [ %i.bct, %bb.bk ]
  %i.bcw = getelementptr inbounds nuw i8, ptr %.sroa.01.1.i.i.i.i.i, i64 16
  %i.bcx = load ptr, ptr %i.bcw, align 8          ; 5 uses
  %i.bcy = icmp eq ptr %i.bcx, null
  br i1 %i.bcy, label %_ZNK2v88internal12_GLOBAL__N_120BytecodeSequenceNode4FindEi.exit.thread.i.i, label %bb.bm

bb.bm:                                            ; preds = %_ZNK2v88internal12_GLOBAL__N_120BytecodeSequenceNode4FindEi.exit.i.i
  %i.bcz = getelementptr i8, ptr %i.bcx, i64 96
  %.val.i.i21 = load ptr, ptr %i.bcz, align 8
  %i.bda = getelementptr i8, ptr %.val.i.i21, i64 8 ; 3 uses
  %.sroa.01.05.i.i.i = load ptr, ptr %i.bda, align 8 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %.sroa.01.05.i.i.i, %i.bda
  br i1 %.not.i.i.i22, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14CheckArgumentsEPKhi.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bm, %_ZN2v88internal12_GLOBAL__N_116GetArgumentValueEPKhii.exit23.i.i.i
  %.sroa.01.06.i.i.i = phi ptr [ %.sroa.01.0.i.i.i, %_ZN2v88internal12_GLOBAL__N_116GetArgumentValueEPKhii.exit23.i.i.i ], [ %.sroa.01.05.i.i.i, %bb.bm ] ; 7 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i.i, i64 16
  %i.bdc = load i32, ptr %i.bdb, align 4
  %i.bdd = add nsw i32 %i.bdc, %.068.i            ; 3 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i.i, i64 20
  %i.bdf = load i32, ptr %i.bde, align 4
  switch i32 %i.bdf, label %bb.bq [
    i32 1, label %bb.bn
    i32 2, label %bb.bo
    i32 4, label %bb.bp
  ]

bb.bn:                                            ; preds = %.lr.ph.i.i.i
  %i.bdg = sext i32 %i.bdd to i64
  %i.bdh = getelementptr inbounds i8, ptr %3, i64 %i.bdg
  %i.bdi = load i8, ptr %i.bdh, align 1
  %i.bdj = zext i8 %i.bdi to i32
  br label %_ZN2v88internal12_GLOBAL__N_116GetArgumentValueEPKhii.exit.i.i.i

bb.bo:                                            ; preds = %.lr.ph.i.i.i
  %i.bdk = sext i32 %i.bdd to i64
  %i.bdl = getelementptr inbounds i8, ptr %3, i64 %i.bdk
  %i.bdm = load i16, ptr %i.bdl, align 2
  %i.bdn = sext i16 %i.bdm to i32
  br label %_ZN2v88internal12_GLOBAL__N_116GetArgumentValueEPKhii.exit.i.i.i

bb.bp:                                            ; preds = %.lr.ph.i.i.i
  %i.bdo = sext i32 %i.bdd to i64
  %i.bdp = getelementptr inbounds i8, ptr %3, i64 %i.bdo
  %i.bdq = load i32, ptr %i.bdp, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116GetArgumentValueEPKhii.exit.i.i.i

bb.bq:                                            ; preds = %.lr.ph.i.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #12
  unreachable

_ZN2v88internal12_GLOBAL__N_116GetArgumentValueEPKhii.exit.i.i.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  %.0.i.i.i.i = phi i32 [ %i.bdj, %bb.bn ], [ %i.bdn, %bb.bo ], [ %i.bdq, %bb.bp ]
  %i.bdr = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i.i, i64 24
  %i.bds = load i32, ptr %i.bdr, align 4
  switch i32 %i.bds, label %bb.bx [
    i32 0, label %bb.br
    i32 1, label %bb.bs
  ]

bb.br:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116GetArgumentValueEPKhii.exit.i.i.i
  %i.bdt = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i.i, i64 28
  %i.bdu = load i32, ptr %i.bdt, align 4
  %i.bdv = add nsw i32 %i.bdu, %.068.i
  br label %_ZN2v88internal12_GLOBAL__N_116GetArgumentValueEPKhii.exit23.i.i.i

bb.bs:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116GetArgumentValueEPKhii.exit.i.i.i
  %i.bdw = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i.i, i64 28
  %i.bdx = load i32, ptr %i.bdw, align 4
  %i.bdy = add nsw i32 %i.bdx, %.068.i            ; 3 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i.i, i64 32
  %i.bea = load i32, ptr %i.bdz, align 4
  switch i32 %i.bea, label %bb.bw [
    i32 1, label %bb.bt
    i32 2, label %bb.bu
    i32 4, label %bb.bv
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.beb = sext i32 %i.bdy to i64
  %i.bec = getelementptr inbounds i8, ptr %3, i64 %i.beb
  %i.bed = load i8, ptr %i.bec, align 1
  %i.bee = zext i8 %i.bed to i32
  br label %_ZN2v88internal12_GLOBAL__N_116GetArgumentValueEPKhii.exit23.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.bef = sext i32 %i.bdy to i64
  %i.beg = getelementptr inbounds i8, ptr %3, i64 %i.bef
  %i.beh = load i16, ptr %i.beg, align 2
  %i.bei = sext i16 %i.beh to i32
  br label %_ZN2v88internal12_GLOBAL__N_116GetArgumentValueEPKhii.exit23.i.i.i

bb.bv:                                            ; preds = %bb.bs
  %i.bej = sext i32 %i.bdy to i64
  %i.bek = getelementptr inbounds i8, ptr %3, i64 %i.bej
  %i.bel = load i32, ptr %i.bek, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116GetArgumentValueEPKhii.exit23.i.i.i

bb.bw:                                            ; preds = %bb.bs
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #12
  unreachable

bb.bx:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116GetArgumentValueEPKhii.exit.i.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #12
  unreachable

_ZN2v88internal12_GLOBAL__N_116GetArgumentValueEPKhii.exit23.i.i.i: ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.br
  %.pn12.i.i.i = phi i32 [ %i.bdv, %bb.br ], [ %i.bee, %bb.bt ], [ %i.bei, %bb.bu ], [ %i.bel, %bb.bv ]
  %.pn.in.i.i.i = icmp eq i32 %.0.i.i.i.i, %.pn12.i.i.i ; 2 uses
  %.sroa.01.0.i.i.i = load ptr, ptr %.sroa.01.06.i.i.i, align 8 ; 2 uses
  %i.bem = icmp ne ptr %.sroa.01.0.i.i.i, %i.bda
  %i.ben = select i1 %i.bem, i1 %.pn.in.i.i.i, i1 false
  br i1 %i.ben, label %.lr.ph.i.i.i, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14CheckArgumentsEPKhi.exit.i.i, !llvm.loop !10

_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14CheckArgumentsEPKhi.exit.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_116GetArgumentValueEPKhii.exit23.i.i.i
  br i1 %.pn.in.i.i.i, label %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14CheckArgumentsEPKhi.exit.thread.i.i, label %_ZNK2v88internal12_GLOBAL__N_120BytecodeSequenceNode4FindEi.exit.thread.i.i

_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14CheckArgumentsEPKhi.exit.thread.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14CheckArgumentsEPKhi.exit.i.i, %bb.bm
  %i.beo = getelementptr i8, ptr %i.bcx, i64 4
  %.val25.i.i = load i32, ptr %i.beo, align 4
  %.not33.i.i = icmp eq i32 %.val25.i.i, -1
  %spec.select.i.i = select i1 %.not33.i.i, ptr %.02150.i.i, ptr %i.bcx ; 2 uses
  %i.bep = zext i8 %i.bbn to i64
  %i.beq = getelementptr inbounds nuw [4 x i8], ptr @_ZN2v88internalL22kRegExpBytecodeLengthsE, i64 %i.bep
  %i.ber = load i32, ptr %i.beq, align 4
  %i.bes = add nsw i32 %i.ber, %.051.i.i          ; 2 uses
  %i.bet = icmp slt i32 %i.bes, %4
  br i1 %i.bet, label %.lr.ph.i.i16, label %_ZNK2v88internal12_GLOBAL__N_120BytecodeSequenceNode4FindEi.exit.thread.i.i, !llvm.loop !11

_ZNK2v88internal12_GLOBAL__N_120BytecodeSequenceNode4FindEi.exit.thread.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14CheckArgumentsEPKhi.exit.thread.i.i, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14CheckArgumentsEPKhi.exit.i.i, %_ZNK2v88internal12_GLOBAL__N_120BytecodeSequenceNode4FindEi.exit.i.i, %bb.bi, %.lr.ph.i.i.i.i.i.i.i, %bb.bg, %..loopexit_crit_edge6.i.i.i.i.i.i.i
  %.02148.i.i = phi ptr [ %.02150.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.02150.i.i, %bb.bg ], [ %.02150.i.i, %..loopexit_crit_edge6.i.i.i.i.i.i.i ], [ %.02150.i.i, %_ZNK2v88internal12_GLOBAL__N_120BytecodeSequenceNode4FindEi.exit.i.i ], [ %.02150.i.i, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14CheckArgumentsEPKhi.exit.i.i ], [ %.02150.i.i, %bb.bi ], [ %spec.select.i.i, %_ZN2v88internal12_GLOBAL__N_120BytecodeSequenceNode14CheckArgumentsEPKhi.exit.thread.i.i ] ; 8 uses
  %.not.i.i = icmp eq ptr %.02148.i.i, null
  br i1 %.not.i.i, label %bb.db, label %bb.by

bb.by:                                            ; preds = %_ZNK2v88internal12_GLOBAL__N_120BytecodeSequenceNode4FindEi.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %.val.i.i.i = load ptr, ptr %i.bu, align 8
  %i.beu = ptrtoint ptr %.val.i.i.i to i64
  store i64 %i.beu, ptr %6, align 8
  store <2 x ptr> %11, ptr %i.bbh, align 8
  store i64 0, ptr %i.bbi, align 8
  %i.bev = getelementptr inbounds nuw i8, ptr %.02148.i.i, i64 4
  %.val53.i.i.i = load i32, ptr %i.bev, align 4   ; 2 uses
  %i.bew = load ptr, ptr %i.bbj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #11
  %i.bex = call noundef ptr @_ZN2v88internal10ZoneVectorIhE19PrepareForInsertionEPKhmPm(ptr noundef nonnull align 8 dereferenceable(328) %7, ptr noundef %i.bew, i64 noundef 4, ptr noundef nonnull %i.s)
  store i32 %.val53.i.i.i, ptr %i.bex, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #11
  %i.bey = getelementptr inbounds nuw i8, ptr %.02148.i.i, i64 88 ; 2 uses
  %.val54243.i.i.i = load ptr, ptr %i.bey, align 8 ; 2 uses
  %i.bez = getelementptr i8, ptr %.val54243.i.i.i, i64 8
  %.val54.val244.i.i.i = load ptr, ptr %i.bez, align 8 ; 2 uses
  %i.bfa = getelementptr i8, ptr %.val54243.i.i.i, i64 16
  %.val54.val55245.i.i.i = load ptr, ptr %i.bfa, align 8
  %.not270.i.i.i = icmp eq ptr %.val54.val55245.i.i.i, %.val54.val244.i.i.i
  br i1 %.not270.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i27.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole12EmitArgumentEiPKhNS1_23BytecodeArgumentMappingE.exit.i.i.i, %bb.by
  %i.bfb = getelementptr inbounds nuw i8, ptr %.02148.i.i, i64 104 ; 2 uses
  %.val56.i.i.i = load ptr, ptr %i.bfb, align 8   ; 3 uses
  %.not240.i.i.i = icmp eq ptr %.val56.i.i.i, null
  br i1 %.not240.i.i.i, label %.loopexit.i.i.i, label %bb.co

.lr.ph.i27.i.i:                                   ; preds = %bb.by, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole12EmitArgumentEiPKhNS1_23BytecodeArgumentMappingE.exit.i.i.i
  %.val54.val247.i.i.i = phi ptr [ %.val54.val.i.i.i, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole12EmitArgumentEiPKhNS1_23BytecodeArgumentMappingE.exit.i.i.i ], [ %.val54.val244.i.i.i, %bb.by ]
  %.0246.i.i.i = phi i64 [ %i.bjd, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole12EmitArgumentEiPKhNS1_23BytecodeArgumentMappingE.exit.i.i.i ], [ 0, %bb.by ] ; 2 uses
  %i.bfc = getelementptr inbounds nuw [12 x i8], ptr %.val54.val247.i.i.i, i64 %.0246.i.i.i ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %i.bfc, align 4 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bfc, i64 8
  %.sroa.22.0.copyload.i.i.i.i = load i32, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 4 ; 4 uses
  %.sroa.025.0.extract.trunc.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.i.i to i32
  %i.bfd = add nsw i32 %.068.i, %.sroa.025.0.extract.trunc.i.i.i ; 8 uses
  %i.bfe = load ptr, ptr %i.as, align 8           ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bfe, null
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i27.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.bfe, %.lr.ph.i27.i.i ] ; 5 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ar, %.lr.ph.i27.i.i ] ; 3 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.bfg = load i32, ptr %i.bff, align 4
  %i.bfh = icmp slt i32 %i.bfg, %i.bfd            ; 4 uses
  %.19.i.i.i.i.i.i = select i1 %i.bfh, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.bfh, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !12

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bfi = icmp eq ptr %.19.i.i.i.i.i.i, %i.ar
  br i1 %i.bfi, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit.thread.i.i.i, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit.i.i.i

_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit.i.i.i: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i
  %.19.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bfh, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i
  %.19.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bfj = load i32, ptr %.19.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4 ; 2 uses
  %i.bfk = icmp slt i32 %i.bfd, %i.bfj
  br i1 %i.bfk, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit.thread.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #11
  %.19.i.i.i.i.i.i.sroa.sel35.v.sroa.sel.v.sroa.sel.v = select i1 %i.bfh, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i
  %.19.i.i.i.i.i.i.sroa.sel35.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.sroa.sel35.v.sroa.sel.v.sroa.sel.v, i64 36
  %i.bfl = load i32, ptr %.19.i.i.i.i.i.i.sroa.sel35.v.sroa.sel.v.sroa.sel, align 4
  store i32 %i.bfl, ptr %i.t, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #11
  %.val60.i.i.i = load ptr, ptr %i.ae, align 8
  %.val61.i.i.i = load ptr, ptr %i.bbj, align 8
  %i.bfm = ptrtoint ptr %.val61.i.i.i to i64
  %i.bfn = ptrtoint ptr %.val60.i.i.i to i64
  %i.bfo = sub i64 %i.bfm, %i.bfn
  %i.bfp = trunc i64 %i.bfo to i32
  store i32 %i.bfp, ptr %i.u, align 4
  %i.bfq = call { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE17_M_emplace_uniqueIJiRiEEES0_ISt17_Rb_tree_iteratorIS2_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.t) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #11
  %i.bfr = load ptr, ptr %6, align 8              ; 3 uses
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfr, i64 24
  %i.bft = load i64, ptr %i.bfs, align 8
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfr, i64 16 ; 3 uses
  %i.bfv = load i64, ptr %i.bfu, align 8          ; 2 uses
  %i.bfw = sub i64 %i.bft, %i.bfv
  %i.bfx = icmp ult i64 %i.bfw, 24
  br i1 %i.bfx, label %bb.ca, label %_ZNSt7__cxx114listIiN2v88internal13ZoneAllocatorIiEEE9push_backERKi.exit.i.i.i, !prof !5

bb.ca:                                            ; preds = %bb.bz
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bfr, i64 noundef 24) #11
  %.pre.i.i.i.i.i.i.i.i.i.i.i20 = load i64, ptr %i.bfu, align 8
  br label %_ZNSt7__cxx114listIiN2v88internal13ZoneAllocatorIiEEE9push_backERKi.exit.i.i.i

_ZNSt7__cxx114listIiN2v88internal13ZoneAllocatorIiEEE9push_backERKi.exit.i.i.i: ; preds = %bb.ca, %bb.bz
  %i.bfy = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i.i20, %bb.ca ], [ %i.bfv, %bb.bz ] ; 2 uses
  %i.bfz = inttoptr i64 %i.bfy to ptr             ; 2 uses
  %i.bga = add i64 %i.bfy, 24
  store i64 %i.bga, ptr %i.bfu, align 8
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bfz, i64 16
  store i32 %i.bfj, ptr %i.bgb, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bfz, ptr noundef nonnull %i.bbh) #11
  %i.bgc = load i64, ptr %i.bbi, align 8
  %i.bgd = add i64 %i.bgc, 1
  store i64 %i.bgd, ptr %i.bbi, align 8
  %i.bge = load ptr, ptr %i.be, align 8           ; 2 uses
  %.not10.i.i.i81.i.i.i = icmp eq ptr %i.bge, null
  br i1 %.not10.i.i.i81.i.i.i, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit93.i.i.i, label %.lr.ph.i.i.i82.i.i.i

.lr.ph.i.i.i82.i.i.i:                             ; preds = %_ZNSt7__cxx114listIiN2v88internal13ZoneAllocatorIiEEE9push_backERKi.exit.i.i.i
  %i.bgf = load i32, ptr %i.t, align 4            ; 2 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.lr.ph.i.i.i82.i.i.i
  %.012.i.i.i83.i.i.i = phi ptr [ %i.bge, %.lr.ph.i.i.i82.i.i.i ], [ %.1.i.i.i88.i.i.i, %bb.cb ] ; 4 uses
  %.0811.i.i.i84.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i82.i.i.i ], [ %.19.i.i.i85.i.i.i, %bb.cb ] ; 2 uses
  %i.bgg = getelementptr inbounds nuw i8, ptr %.012.i.i.i83.i.i.i, i64 32
  %i.bgh = load i32, ptr %i.bgg, align 4
  %i.bgi = icmp slt i32 %i.bgh, %i.bgf            ; 3 uses
  %.19.i.i.i85.i.i.i = select i1 %i.bgi, ptr %.0811.i.i.i84.i.i.i, ptr %.012.i.i.i83.i.i.i ; 3 uses
  %.1.in.v.i.i.i86.i.i.i = select i1 %i.bgi, i64 24, i64 16
  %.1.in.i.i.i87.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i83.i.i.i, i64 %.1.in.v.i.i.i86.i.i.i
  %.1.i.i.i88.i.i.i = load ptr, ptr %.1.in.i.i.i87.i.i.i, align 8 ; 2 uses
  %.not.i.i.i89.i.i.i = icmp eq ptr %.1.i.i.i88.i.i.i, null
  br i1 %.not.i.i.i89.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i90.i.i.i, label %bb.cb, !llvm.loop !12

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i90.i.i.i: ; preds = %bb.cb
  %i.bgj = icmp eq ptr %.19.i.i.i85.i.i.i, %i.bd
  br i1 %i.bgj, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit93.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i90.i.i.i
  %.19.i.i.i85.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bgi, ptr %.0811.i.i.i84.i.i.i, ptr %.012.i.i.i83.i.i.i
  %.19.i.i.i85.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i85.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bgk = load i32, ptr %.19.i.i.i85.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.bgl = icmp slt i32 %i.bgf, %i.bgk
  %spec.select.i.i91.i.i.i = select i1 %i.bgl, ptr %i.bd, ptr %.19.i.i.i85.i.i.i
  br label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit93.i.i.i

_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit93.i.i.i: ; preds = %bb.cc, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i90.i.i.i, %_ZNSt7__cxx114listIiN2v88internal13ZoneAllocatorIiEEE9push_backERKi.exit.i.i.i
  %.sroa.0.0.i.i92.i.i.i = phi ptr [ %i.bd, %_ZNSt7__cxx114listIiN2v88internal13ZoneAllocatorIiEEE9push_backERKi.exit.i.i.i ], [ %i.bd, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i90.i.i.i ], [ %spec.select.i.i91.i.i.i, %bb.cc ]
  %i.bgm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i92.i.i.i, i64 36 ; 2 uses
  %i.bgn = load i32, ptr %i.bgm, align 4
  %i.bgo = add nsw i32 %i.bgn, -1
  store i32 %i.bgo, ptr %i.bgm, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #11
  br label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit.thread.i.i.i

_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit.thread.i.i.i: ; preds = %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit93.i.i.i, %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit.i.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i, %.lr.ph.i27.i.i
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.01.0.copyload.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32 ; 4 uses
  switch i32 %.sroa.2.0.extract.trunc.i.i.i.i, label %bb.cl [
    i32 1, label %bb.cd
    i32 2, label %bb.ce
    i32 3, label %bb.cf
    i32 4, label %bb.cj
    i32 8, label %bb.ck
  ]

bb.cd:                                            ; preds = %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit.thread.i.i.i
  %i.bgp = sext i32 %i.bfd to i64
  %i.bgq = getelementptr inbounds i8, ptr %3, i64 %i.bgp
  %i.bgr = load i8, ptr %i.bgq, align 1
  %i.bgs = load ptr, ptr %i.bbj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #11
  %i.bgt = call noundef ptr @_ZN2v88internal10ZoneVectorIhE19PrepareForInsertionEPKhmPm(ptr noundef nonnull align 8 dereferenceable(328) %7, ptr noundef %i.bgs, i64 noundef 1, ptr noundef nonnull %i.r)
  store i8 %i.bgr, ptr %i.bgt, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #11
  br label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole12EmitArgumentEiPKhNS1_23BytecodeArgumentMappingE.exit.i.i.i

bb.ce:                                            ; preds = %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit.thread.i.i.i
  %i.bgu = sext i32 %i.bfd to i64
  %i.bgv = getelementptr inbounds i8, ptr %3, i64 %i.bgu
  %i.bgw = load i16, ptr %i.bgv, align 2
  %i.bgx = load ptr, ptr %i.bbj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #11
  %i.bgy = call noundef ptr @_ZN2v88internal10ZoneVectorIhE19PrepareForInsertionEPKhmPm(ptr noundef nonnull align 8 dereferenceable(328) %7, ptr noundef %i.bgx, i64 noundef 2, ptr noundef nonnull %i.q)
  store i16 %i.bgw, ptr %i.bgy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #11
  br label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole12EmitArgumentEiPKhNS1_23BytecodeArgumentMappingE.exit.i.i.i

bb.cf:                                            ; preds = %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit.thread.i.i.i
  %i.bgz = sext i32 %i.bfd to i64
  %i.bha = getelementptr i8, ptr %3, i64 %i.bgz
  %i.bhb = getelementptr i8, ptr %i.bha, i64 -1
  %i.bhc = load i32, ptr %i.bhb, align 4          ; 4 uses
  %i.bhd = ashr i32 %i.bhc, 8                     ; 2 uses
  switch i32 %.sroa.22.0.copyload.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole12EmitArgumentEiPKhNS1_23BytecodeArgumentMappingE.exit.i.i.i [
    i32 2, label %bb.cg
    i32 3, label %bb.ch
    i32 4, label %bb.ci
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.bhe = trunc i32 %i.bhd to i16
  %i.bhf = load ptr, ptr %i.bbj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #11
  %i.bhg = call noundef ptr @_ZN2v88internal10ZoneVectorIhE19PrepareForInsertionEPKhmPm(ptr noundef nonnull align 8 dereferenceable(328) %7, ptr noundef %i.bhf, i64 noundef 2, ptr noundef nonnull %i.p)
  store i16 %i.bhe, ptr %i.bhg, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #11
  br label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole12EmitArgumentEiPKhNS1_23BytecodeArgumentMappingE.exit.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.bhh = load ptr, ptr %i.ae, align 8           ; 2 uses
  %.val20.i.i.i.i = load ptr, ptr %i.bbj, align 8
  %i.bhi = ptrtoint ptr %.val20.i.i.i.i to i64
  %i.bhj = ptrtoint ptr %i.bhh to i64
  %i.bhk = sub i64 %i.bhi, %i.bhj
  %i.bhl = shl i64 %i.bhk, 32
  %sext.i.i.i.i = add i64 %i.bhl, -17179869184
  %i.bhm = ashr exact i64 %sext.i.i.i.i, 32       ; 4 uses
  %i.bhn = getelementptr inbounds i8, ptr %i.bhh, i64 %i.bhm ; 2 uses
  %i.bho = load i32, ptr %i.bhn, align 4
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i32 %i.bho to i8
  %.sroa.2.0.extract.shift.i.i.i.i.i = lshr i32 %i.bhc, 8
  %.sroa.2.0.extract.trunc.i.i.i.i.i = trunc i32 %.sroa.2.0.extract.shift.i.i.i.i.i to i8
  %.sroa.3.0.extract.shift.i.i.i.i.i = lshr i32 %i.bhc, 16
  %.sroa.3.0.extract.trunc.i.i.i.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i.i.i.i to i8
  %.sroa.4.0.extract.shift.i.i.i.i.i = lshr i32 %i.bhc, 24
  %.sroa.4.0.extract.trunc.i.i.i.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i.i.i.i to i8
  store i8 %.sroa.0.0.extract.trunc.i.i.i.i.i, ptr %i.bhn, align 4
  %i.bhp = load ptr, ptr %i.ae, align 8
  %i.bhq = getelementptr i8, ptr %i.bhp, i64 %i.bhm
  %i.bhr = getelementptr i8, ptr %i.bhq, i64 1
  store i8 %.sroa.2.0.extract.trunc.i.i.i.i.i, ptr %i.bhr, align 1
  %i.bhs = load ptr, ptr %i.ae, align 8
  %i.bht = getelementptr i8, ptr %i.bhs, i64 %i.bhm
  %i.bhu = getelementptr i8, ptr %i.bht, i64 2
  store i8 %.sroa.3.0.extract.trunc.i.i.i.i.i, ptr %i.bhu, align 1
  %i.bhv = load ptr, ptr %i.ae, align 8
  %i.bhw = getelementptr i8, ptr %i.bhv, i64 %i.bhm
  %i.bhx = getelementptr i8, ptr %i.bhw, i64 3
  store i8 %.sroa.4.0.extract.trunc.i.i.i.i.i, ptr %i.bhx, align 1
  br label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole12EmitArgumentEiPKhNS1_23BytecodeArgumentMappingE.exit.i.i.i

bb.ci:                                            ; preds = %bb.cf
  %i.bhy = load ptr, ptr %i.bbj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #11
  %i.bhz = call noundef ptr @_ZN2v88internal10ZoneVectorIhE19PrepareForInsertionEPKhmPm(ptr noundef nonnull align 8 dereferenceable(328) %7, ptr noundef %i.bhy, i64 noundef 4, ptr noundef nonnull %i.o)
  store i32 %i.bhd, ptr %i.bhz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #11
  br label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole12EmitArgumentEiPKhNS1_23BytecodeArgumentMappingE.exit.i.i.i

bb.cj:                                            ; preds = %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit.thread.i.i.i
  %i.bia = sext i32 %i.bfd to i64
  %i.bib = getelementptr inbounds i8, ptr %3, i64 %i.bia
  %i.bic = load i32, ptr %i.bib, align 4
  %i.bid = load ptr, ptr %i.bbj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #11
  %i.bie = call noundef ptr @_ZN2v88internal10ZoneVectorIhE19PrepareForInsertionEPKhmPm(ptr noundef nonnull align 8 dereferenceable(328) %7, ptr noundef %i.bid, i64 noundef 4, ptr noundef nonnull %i.n)
  store i32 %i.bic, ptr %i.bie, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #11
  br label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole12EmitArgumentEiPKhNS1_23BytecodeArgumentMappingE.exit.i.i.i

bb.ck:                                            ; preds = %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit.thread.i.i.i
  %i.bif = sext i32 %i.bfd to i64
  %i.big = getelementptr inbounds i8, ptr %3, i64 %i.bif
  %i.bih = load i64, ptr %i.big, align 8
  %i.bii = load ptr, ptr %i.bbj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #11
  %i.bij = call noundef ptr @_ZN2v88internal10ZoneVectorIhE19PrepareForInsertionEPKhmPm(ptr noundef nonnull align 8 dereferenceable(328) %7, ptr noundef %i.bii, i64 noundef 8, ptr noundef nonnull %i.m)
  store i64 %i.bih, ptr %i.bij, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #11
  br label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole12EmitArgumentEiPKhNS1_23BytecodeArgumentMappingE.exit.i.i.i

bb.cl:                                            ; preds = %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit.thread.i.i.i
  %.sroa.speculated.i.i.i.i = call i32 @llvm.smin.i32(i32 %.sroa.22.0.copyload.i.i.i.i, i32 %.sroa.2.0.extract.trunc.i.i.i.i) ; 2 uses
  %i.bik = load ptr, ptr %i.bbj, align 8
  %i.bil = sext i32 %.sroa.speculated.i.i.i.i to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  %i.bim = call noundef ptr @_ZN2v88internal10ZoneVectorIhE19PrepareForInsertionEPKhmPm(ptr noundef nonnull align 8 dereferenceable(328) %7, ptr noundef %i.bik, i64 noundef %i.bil, ptr noundef nonnull %i.l)
  %.not.i.i.i94.i.i.i = icmp eq i32 %.sroa.speculated.i.i.i.i, 0
  br i1 %.not.i.i.i94.i.i.i, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole17CopyRangeToOutputEPKhii.exit.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.bin = sext i32 %i.bfd to i64
  %i.bio = getelementptr inbounds i8, ptr %3, i64 %i.bin
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bim, ptr readonly align 1 %i.bio, i64 %i.bil, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole17CopyRangeToOutputEPKhii.exit.i.i.i.i

_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole17CopyRangeToOutputEPKhii.exit.i.i.i.i: ; preds = %bb.cm, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  %i.bip = icmp sgt i32 %.sroa.22.0.copyload.i.i.i.i, %.sroa.2.0.extract.trunc.i.i.i.i
  br i1 %i.bip, label %bb.cn, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole12EmitArgumentEiPKhNS1_23BytecodeArgumentMappingE.exit.i.i.i

bb.cn:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole17CopyRangeToOutputEPKhii.exit.i.i.i.i
  %i.biq = sub nsw i32 %.sroa.22.0.copyload.i.i.i.i, %.sroa.2.0.extract.trunc.i.i.i.i
  %i.bir = load ptr, ptr %i.bbj, align 8
  %i.bis = zext nneg i32 %i.biq to i64            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  %i.bit = call noundef ptr @_ZN2v88internal10ZoneVectorIhE19PrepareForInsertionEPKhmPm(ptr noundef nonnull align 8 dereferenceable(328) %7, ptr noundef %i.bir, i64 noundef %i.bis, ptr noundef nonnull %i.k) ; 5 uses
  %i.biu = ptrtoint ptr %i.bit to i64             ; 5 uses
  %i.biv = load i64, ptr %i.k, align 8            ; 2 uses
  %.not.i.i21.i.i.i.i = icmp eq i64 %i.biv, 0
  br i1 %.not.i.i21.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.cn
  %i.biw = add i64 %i.biv, %i.biu
  %i.bix = add i64 %i.biu, 1
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.biw, i64 %i.bix) ; 2 uses
  %i.biy = sub i64 %umax.i.i.i.i.i, %i.biu        ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.bit, i8 0, i64 %i.biy, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.bit, i64 %i.biy
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.preheader.i.i.i.i.i, %bb.cn
  %.0.lcssa20.pre-phi.i.i.i.i.i.i = phi i64 [ %umax.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ], [ %i.biu, %bb.cn ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ], [ %i.bit, %bb.cn ] ; 2 uses
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bit, i64 %i.bis
  %i.bja = icmp ult ptr %.0.lcssa.i.i.i.i.i.i, %i.biz
  br i1 %i.bja, label %.lr.ph18.preheader.i.i.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole8SetRangeEhi.exit.i.i.i.i

.lr.ph18.preheader.i.i.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bjb = add i64 %i.biu, %i.bis
  %i.bjc = sub i64 %i.bjb, %.0.lcssa20.pre-phi.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i.i.i.i.i.i, i8 0, i64 %i.bjc, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole8SetRangeEhi.exit.i.i.i.i

_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole8SetRangeEhi.exit.i.i.i.i: ; preds = %.lr.ph18.preheader.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  br label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole12EmitArgumentEiPKhNS1_23BytecodeArgumentMappingE.exit.i.i.i

_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole12EmitArgumentEiPKhNS1_23BytecodeArgumentMappingE.exit.i.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole8SetRangeEhi.exit.i.i.i.i, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole17CopyRangeToOutputEPKhii.exit.i.i.i.i, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd
  %i.bjd = add nuw i64 %.0246.i.i.i, 1            ; 2 uses
  %.val54.i.i.i = load ptr, ptr %i.bey, align 8   ; 2 uses
  %i.bje = getelementptr i8, ptr %.val54.i.i.i, i64 8
  %.val54.val.i.i.i = load ptr, ptr %i.bje, align 8 ; 2 uses
  %i.bjf = getelementptr i8, ptr %.val54.i.i.i, i64 16
  %.val54.val55.i.i.i = load ptr, ptr %i.bjf, align 8
  %i.bjg = ptrtoint ptr %.val54.val55.i.i.i to i64
  %i.bjh = ptrtoint ptr %.val54.val.i.i.i to i64
  %i.bji = sub i64 %i.bjg, %i.bjh
  %i.bjj = sdiv exact i64 %i.bji, 12
  %i.bjk = icmp ult i64 %i.bjd, %i.bjj
  br i1 %i.bjk, label %.lr.ph.i27.i.i, label %._crit_edge.i.i.i, !llvm.loop !13

bb.co:                                            ; preds = %._crit_edge.i.i.i
  %i.bjl = getelementptr i8, ptr %.val56.i.i.i, i64 8 ; 2 uses
  %.sroa.0215.0248.i.i.i = load ptr, ptr %i.bjl, align 8 ; 2 uses
  %i.bjm = icmp eq ptr %.sroa.0215.0248.i.i.i, %i.bjl
  %i.bjn = load ptr, ptr %i.as, align 8           ; 2 uses
  %i.bjo = icmp eq ptr %i.bjn, null
  %or.cond = select i1 %i.bjm, i1 true, i1 %i.bjo
  br i1 %or.cond, label %.loopexit.i.i.i, label %.lr.ph252.i.split.i.i

.lr.ph252.i.splitthread-pre-split.i.i:            ; preds = %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit107.thread.i.i.i
  %.pr.i.i = load ptr, ptr %i.as, align 8
  br label %.lr.ph252.i.split.i.i

.lr.ph252.i.split.i.i:                            ; preds = %bb.co, %.lr.ph252.i.splitthread-pre-split.i.i
  %i.bjp = phi ptr [ %.pr.i.i, %.lr.ph252.i.splitthread-pre-split.i.i ], [ %i.bjn, %bb.co ] ; 2 uses
  %.val63273.i.i.i = phi ptr [ %.val63.i.i.i, %.lr.ph252.i.splitthread-pre-split.i.i ], [ %.val56.i.i.i, %bb.co ] ; 3 uses
  %.sroa.0215.0250.i.i.i = phi ptr [ %.sroa.0215.0.i.i.i, %.lr.ph252.i.splitthread-pre-split.i.i ], [ %.sroa.0215.0248.i.i.i, %bb.co ] ; 2 uses
  %i.bjq = getelementptr inbounds nuw i8, ptr %.sroa.0215.0250.i.i.i, i64 16
  %i.bjr = load i32, ptr %i.bjq, align 4
  %i.bjs = add nsw i32 %i.bjr, %.068.i            ; 2 uses
  %.not10.i.i.i95.i.i.i = icmp eq ptr %i.bjp, null
  br i1 %.not10.i.i.i95.i.i.i, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit107.thread.i.i.i, label %.lr.ph.i.i.i96.i.i.i

.lr.ph.i.i.i96.i.i.i:                             ; preds = %.lr.ph252.i.split.i.i, %.lr.ph.i.i.i96.i.i.i
  %.012.i.i.i97.i.i.i = phi ptr [ %.1.i.i.i102.i.i.i, %.lr.ph.i.i.i96.i.i.i ], [ %i.bjp, %.lr.ph252.i.split.i.i ] ; 5 uses
  %.0811.i.i.i98.i.i.i = phi ptr [ %.19.i.i.i99.i.i.i, %.lr.ph.i.i.i96.i.i.i ], [ %i.ar, %.lr.ph252.i.split.i.i ] ; 3 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %.012.i.i.i97.i.i.i, i64 32
  %i.bju = load i32, ptr %i.bjt, align 4
  %i.bjv = icmp slt i32 %i.bju, %i.bjs            ; 4 uses
  %.19.i.i.i99.i.i.i = select i1 %i.bjv, ptr %.0811.i.i.i98.i.i.i, ptr %.012.i.i.i97.i.i.i ; 2 uses
  %.1.in.v.i.i.i100.i.i.i = select i1 %i.bjv, i64 24, i64 16
  %.1.in.i.i.i101.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i97.i.i.i, i64 %.1.in.v.i.i.i100.i.i.i
  %.1.i.i.i102.i.i.i = load ptr, ptr %.1.in.i.i.i101.i.i.i, align 8 ; 2 uses
  %.not.i.i.i103.i.i.i = icmp eq ptr %.1.i.i.i102.i.i.i, null
  br i1 %.not.i.i.i103.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i104.i.i.i, label %.lr.ph.i.i.i96.i.i.i, !llvm.loop !12

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i104.i.i.i: ; preds = %.lr.ph.i.i.i96.i.i.i
  %i.bjw = icmp eq ptr %.19.i.i.i99.i.i.i, %i.ar
  br i1 %i.bjw, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit107.thread.i.i.i, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit107.i.i.i

_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit107.i.i.i: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i104.i.i.i
  %.19.i.i.i99.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bjv, ptr %.0811.i.i.i98.i.i.i, ptr %.012.i.i.i97.i.i.i
  %.19.i.i.i99.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i99.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bjx = load i32, ptr %.19.i.i.i99.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4 ; 2 uses
  %i.bjy = icmp slt i32 %i.bjs, %i.bjx
  br i1 %i.bjy, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit107.thread.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit107.i.i.i
  %.19.i.i.i99.i.i.i.sroa.sel38.v.sroa.sel.v.sroa.sel.v = select i1 %i.bjv, ptr %.0811.i.i.i98.i.i.i, ptr %.012.i.i.i97.i.i.i
  %.19.i.i.i99.i.i.i.sroa.sel38.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i99.i.i.i.sroa.sel38.v.sroa.sel.v.sroa.sel.v, i64 36
  %i.bjz = load i32, ptr %.19.i.i.i99.i.i.i.sroa.sel38.v.sroa.sel.v.sroa.sel, align 4 ; 2 uses
  %i.bka = load ptr, ptr %6, align 8              ; 3 uses
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bka, i64 24
  %i.bkc = load i64, ptr %i.bkb, align 8
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bka, i64 16 ; 3 uses
  %i.bke = load i64, ptr %i.bkd, align 8          ; 2 uses
  %i.bkf = sub i64 %i.bkc, %i.bke
  %i.bkg = icmp ult i64 %i.bkf, 24
  br i1 %i.bkg, label %bb.cq, label %_ZNSt7__cxx114listIiN2v88internal13ZoneAllocatorIiEEE9push_backERKi.exit109.i.i.i, !prof !5

bb.cq:                                            ; preds = %bb.cp
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bka, i64 noundef 24) #11
  %.pre.i.i.i.i.i.i.i.i108.i.i.i = load i64, ptr %i.bkd, align 8
  br label %_ZNSt7__cxx114listIiN2v88internal13ZoneAllocatorIiEEE9push_backERKi.exit109.i.i.i

_ZNSt7__cxx114listIiN2v88internal13ZoneAllocatorIiEEE9push_backERKi.exit109.i.i.i: ; preds = %bb.cq, %bb.cp
  %i.bkh = phi i64 [ %.pre.i.i.i.i.i.i.i.i108.i.i.i, %bb.cq ], [ %i.bke, %bb.cp ] ; 2 uses
  %i.bki = inttoptr i64 %i.bkh to ptr             ; 2 uses
  %i.bkj = add i64 %i.bkh, 24
  store i64 %i.bkj, ptr %i.bkd, align 8
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bki, i64 16
  store i32 %i.bjx, ptr %i.bkk, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bki, ptr noundef nonnull %i.bbh) #11
  %i.bkl = load i64, ptr %i.bbi, align 8
  %i.bkm = add i64 %i.bkl, 1
  store i64 %i.bkm, ptr %i.bbi, align 8
  %i.bkn = load ptr, ptr %i.be, align 8           ; 2 uses
  %.not10.i.i.i110.i.i.i = icmp eq ptr %i.bkn, null
  br i1 %.not10.i.i.i110.i.i.i, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit122.i.i.i, label %.lr.ph.i.i.i111.i.i.i

.lr.ph.i.i.i111.i.i.i:                            ; preds = %_ZNSt7__cxx114listIiN2v88internal13ZoneAllocatorIiEEE9push_backERKi.exit109.i.i.i, %.lr.ph.i.i.i111.i.i.i
  %.012.i.i.i112.i.i.i = phi ptr [ %.1.i.i.i117.i.i.i, %.lr.ph.i.i.i111.i.i.i ], [ %i.bkn, %_ZNSt7__cxx114listIiN2v88internal13ZoneAllocatorIiEEE9push_backERKi.exit109.i.i.i ] ; 4 uses
  %.0811.i.i.i113.i.i.i = phi ptr [ %.19.i.i.i114.i.i.i, %.lr.ph.i.i.i111.i.i.i ], [ %i.bd, %_ZNSt7__cxx114listIiN2v88internal13ZoneAllocatorIiEEE9push_backERKi.exit109.i.i.i ] ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %.012.i.i.i112.i.i.i, i64 32
  %i.bkp = load i32, ptr %i.bko, align 4
  %i.bkq = icmp slt i32 %i.bkp, %i.bjz            ; 3 uses
  %.19.i.i.i114.i.i.i = select i1 %i.bkq, ptr %.0811.i.i.i113.i.i.i, ptr %.012.i.i.i112.i.i.i ; 3 uses
  %.1.in.v.i.i.i115.i.i.i = select i1 %i.bkq, i64 24, i64 16
  %.1.in.i.i.i116.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i112.i.i.i, i64 %.1.in.v.i.i.i115.i.i.i
  %.1.i.i.i117.i.i.i = load ptr, ptr %.1.in.i.i.i116.i.i.i, align 8 ; 2 uses
  %.not.i.i.i118.i.i.i = icmp eq ptr %.1.i.i.i117.i.i.i, null
  br i1 %.not.i.i.i118.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i119.i.i.i, label %.lr.ph.i.i.i111.i.i.i, !llvm.loop !12

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i119.i.i.i: ; preds = %.lr.ph.i.i.i111.i.i.i
  %i.bkr = icmp eq ptr %.19.i.i.i114.i.i.i, %i.bd
  br i1 %i.bkr, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit122.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i119.i.i.i
  %.19.i.i.i114.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bkq, ptr %.0811.i.i.i113.i.i.i, ptr %.012.i.i.i112.i.i.i
  %.19.i.i.i114.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i114.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bks = load i32, ptr %.19.i.i.i114.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.bkt = icmp slt i32 %i.bjz, %i.bks
  %spec.select.i.i120.i.i.i = select i1 %i.bkt, ptr %i.bd, ptr %.19.i.i.i114.i.i.i
  br label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit122.i.i.i

_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit122.i.i.i: ; preds = %bb.cr, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i119.i.i.i, %_ZNSt7__cxx114listIiN2v88internal13ZoneAllocatorIiEEE9push_backERKi.exit109.i.i.i
  %.sroa.0.0.i.i121.i.i.i = phi ptr [ %i.bd, %_ZNSt7__cxx114listIiN2v88internal13ZoneAllocatorIiEEE9push_backERKi.exit109.i.i.i ], [ %i.bd, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i119.i.i.i ], [ %spec.select.i.i120.i.i.i, %bb.cr ]
  %i.bku = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i121.i.i.i, i64 36 ; 2 uses
  %i.bkv = load i32, ptr %i.bku, align 4
  %i.bkw = add nsw i32 %i.bkv, -1
  store i32 %i.bkw, ptr %i.bku, align 4
  %.val63.pre.i.i.i = load ptr, ptr %i.bfb, align 8
  br label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit107.thread.i.i.i

_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit107.thread.i.i.i: ; preds = %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit122.i.i.i, %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit107.i.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i104.i.i.i, %.lr.ph252.i.split.i.i
  %.val63.i.i.i = phi ptr [ %.val63273.i.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i104.i.i.i ], [ %.val63273.i.i.i, %.lr.ph252.i.split.i.i ], [ %.val63.pre.i.i.i, %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit122.i.i.i ], [ %.val63273.i.i.i, %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit107.i.i.i ] ; 2 uses
  %.sroa.0215.0.i.i.i = load ptr, ptr %.sroa.0215.0250.i.i.i, align 8 ; 2 uses
  %i.bkx = getelementptr inbounds nuw i8, ptr %.val63.i.i.i, i64 8
  %i.bky = icmp eq ptr %.sroa.0215.0.i.i.i, %i.bkx
  br i1 %i.bky, label %.loopexit.i.i.i, label %.lr.ph252.i.splitthread-pre-split.i.i, !llvm.loop !14

.loopexit.i.i.i:                                  ; preds = %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE4findERS6_.exit107.thread.i.i.i, %bb.co, %._crit_edge.i.i.i
  %i.bkz = sext i32 %.val53.i.i.i to i64
  %i.bla = getelementptr inbounds [4 x i8], ptr @_ZN2v88internalL22kRegExpBytecodeLengthsE, i64 %i.bkz
  %i.blb = load i32, ptr %i.bla, align 4
  %.val79.i.i.i = load i32, ptr %.02148.i.i, align 8
  %i.blc = getelementptr inbounds nuw i8, ptr %.02148.i.i, i64 12 ; 3 uses
  %.val80.i.i.i = load i32, ptr %i.blc, align 4
  %i.bld = sext i32 %.val79.i.i.i to i64
  %i.ble = getelementptr inbounds [4 x i8], ptr @_ZN2v88internalL22kRegExpBytecodeLengthsE, i64 %i.bld
  %i.blf = load i32, ptr %i.ble, align 4
  %i.blg = add nsw i32 %i.blf, %.val80.i.i.i      ; 3 uses
  %i.blh = sub nsw i32 %i.blb, %i.blg             ; 3 uses
  %i.bli = load ptr, ptr %i.be, align 8           ; 2 uses
  %.not10.i.i.i123.i.i.i = icmp eq ptr %i.bli, null
  br i1 %.not10.i.i.i123.i.i.i, label %._crit_edge258.thread.i.i.i, label %.lr.ph.i.i.i124.i.i.i

._crit_edge258.thread.i.i.i:                      ; preds = %.loopexit.i.i.i
  %i.blj = add nsw i32 %i.blg, %.068.i
  br label %.critedge.i.i.i

.lr.ph.i.i.i124.i.i.i:                            ; preds = %.loopexit.i.i.i, %.lr.ph.i.i.i124.i.i.i
  %.012.i.i.i125.i.i.i = phi ptr [ %.1.i.i.i130.i.i.i, %.lr.ph.i.i.i124.i.i.i ], [ %i.bli, %.loopexit.i.i.i ] ; 4 uses
  %.0811.i.i.i126.i.i.i = phi ptr [ %.19.i.i.i127.i.i.i, %.lr.ph.i.i.i124.i.i.i ], [ %i.bd, %.loopexit.i.i.i ] ; 2 uses
  %i.blk = getelementptr inbounds nuw i8, ptr %.012.i.i.i125.i.i.i, i64 32
  %i.bll = load i32, ptr %i.blk, align 4
  %i.blm = icmp slt i32 %.068.i, %i.bll           ; 3 uses
  %.19.i.i.i127.i.i.i = select i1 %i.blm, ptr %.012.i.i.i125.i.i.i, ptr %.0811.i.i.i126.i.i.i ; 4 uses
  %.1.in.v.i.i.i128.i.i.i = select i1 %i.blm, i64 16, i64 24
  %.1.in.i.i.i129.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i125.i.i.i, i64 %.1.in.v.i.i.i128.i.i.i
  %.1.i.i.i130.i.i.i = load ptr, ptr %.1.in.i.i.i129.i.i.i, align 8 ; 2 uses
  %.not.i.i.i131.i.i.i = icmp eq ptr %.1.i.i.i130.i.i.i, null
  br i1 %.not.i.i.i131.i.i.i, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11upper_boundERS6_.exit.i.i.i, label %.lr.ph.i.i.i124.i.i.i, !llvm.loop !16

_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11upper_boundERS6_.exit.i.i.i: ; preds = %.lr.ph.i.i.i124.i.i.i
  %.19.i.i.i127.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.blm, ptr %.012.i.i.i125.i.i.i, ptr %.0811.i.i.i126.i.i.i
  %.19.i.i.i127.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i127.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 36
  %.049254.i.i.i = load i32, ptr %.19.i.i.i127.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.bln = icmp eq ptr %.19.i.i.i127.i.i.i, %i.bd ; 2 uses
  %i.blo = icmp ne i32 %.049254.i.i.i, 0
  %.not51255.i.i.i = select i1 %i.bln, i1 true, i1 %i.blo
  br i1 %.not51255.i.i.i, label %._crit_edge258.i.i.i, label %.lr.ph257.i.i.i

.lr.ph257.i.i.i:                                  ; preds = %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11upper_boundERS6_.exit.i.i.i, %.lr.ph257.i.i.i
  %.sroa.0199.0256.i.i.i = phi ptr [ %i.blp, %.lr.ph257.i.i.i ], [ %.19.i.i.i127.i.i.i, %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11upper_boundERS6_.exit.i.i.i ]
  %i.blp = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0199.0256.i.i.i) #13 ; 4 uses
  %.049.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.blp, i64 36
  %.049.i.i.i = load i32, ptr %.049.in.i.i.i, align 4
  %i.blq = icmp eq ptr %i.blp, %i.bd              ; 2 uses
  %i.blr = icmp ne i32 %.049.i.i.i, 0
  %.not51.i.i.i = select i1 %i.blq, i1 true, i1 %i.blr
  br i1 %.not51.i.i.i, label %._crit_edge258.i.i.i, label %.lr.ph257.i.i.i, !llvm.loop !17

._crit_edge258.i.i.i:                             ; preds = %.lr.ph257.i.i.i, %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11upper_boundERS6_.exit.i.i.i
  %.sroa.0199.0.lcssa.i.i.i = phi ptr [ %.19.i.i.i127.i.i.i, %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11upper_boundERS6_.exit.i.i.i ], [ %i.blp, %.lr.ph257.i.i.i ]
  %.lcssa.i.i.i = phi i1 [ %i.bln, %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11upper_boundERS6_.exit.i.i.i ], [ %i.blq, %.lr.ph257.i.i.i ]
  %.pn.le.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0199.0.lcssa.i.i.i, i64 32
  %.048.le.i.i.i = load i32, ptr %.pn.le.i.i.i, align 4 ; 5 uses
  %i.bls = add nsw i32 %i.blg, %.068.i            ; 5 uses
  %i.blt = icmp sge i32 %.048.le.i.i.i, %i.bls
  %or.cond239.not.i.i.i = select i1 %.lcssa.i.i.i, i1 true, i1 %i.blt
  br i1 %or.cond239.not.i.i.i, label %.critedge.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge258.i.i.i
  %i.blu = load ptr, ptr %i.as, align 8           ; 2 uses
  %.not10.i.i.i132.i.i.i = icmp eq ptr %i.blu, null
  br i1 %.not10.i.i.i132.i.i.i, label %.critedge2.i.i.i, label %.lr.ph.i.i.i133.i.i.i

.lr.ph.i.i.i133.i.i.i:                            ; preds = %bb.cs, %.lr.ph.i.i.i133.i.i.i
  %.012.i.i.i134.i.i.i = phi ptr [ %.1.i.i.i139.i.i.i, %.lr.ph.i.i.i133.i.i.i ], [ %i.blu, %bb.cs ] ; 3 uses
  %.0811.i.i.i135.i.i.i = phi ptr [ %.19.i.i.i136.i.i.i, %.lr.ph.i.i.i133.i.i.i ], [ %i.ar, %bb.cs ]
  %i.blv = getelementptr inbounds nuw i8, ptr %.012.i.i.i134.i.i.i, i64 32
  %i.blw = load i32, ptr %i.blv, align 4
  %i.blx = icmp slt i32 %i.blw, %.048.le.i.i.i    ; 2 uses
  %.19.i.i.i136.i.i.i = select i1 %i.blx, ptr %.0811.i.i.i135.i.i.i, ptr %.012.i.i.i134.i.i.i ; 3 uses
  %.1.in.v.i.i.i137.i.i.i = select i1 %i.blx, i64 24, i64 16
  %.1.in.i.i.i138.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i134.i.i.i, i64 %.1.in.v.i.i.i137.i.i.i
  %.1.i.i.i139.i.i.i = load ptr, ptr %.1.in.i.i.i138.i.i.i, align 8 ; 2 uses
  %.not.i.i.i140.i.i.i = icmp eq ptr %.1.i.i.i139.i.i.i, null
  br i1 %.not.i.i.i140.i.i.i, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11lower_boundERS6_.exit.i.i.i, label %.lr.ph.i.i.i133.i.i.i, !llvm.loop !12

_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11lower_boundERS6_.exit.i.i.i: ; preds = %.lr.ph.i.i.i133.i.i.i
  %i.bly = icmp eq ptr %.19.i.i.i136.i.i.i, %i.ar
  br i1 %i.bly, label %.critedge2.i.i.i, label %.lr.ph262.i.i.i

.lr.ph262.i.i.i:                                  ; preds = %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11lower_boundERS6_.exit.i.i.i, %bb.cu
  %.sroa.0188.0261.i.i.i = phi ptr [ %i.bnv, %bb.cu ], [ %.19.i.i.i136.i.i.i, %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11lower_boundERS6_.exit.i.i.i ] ; 3 uses
  %.0236260.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.cu ], [ %.048.le.i.i.i, %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11lower_boundERS6_.exit.i.i.i ] ; 3 uses
  %i.blz = getelementptr inbounds nuw i8, ptr %.sroa.0188.0261.i.i.i, i64 32
  %i.bma = load i32, ptr %i.blz, align 4
  %i.bmb = icmp slt i32 %i.bma, %i.bls
  br i1 %i.bmb, label %bb.cu, label %.critedge2.i.i.i

.critedge2.i.i.i:                                 ; preds = %bb.cu, %.lr.ph262.i.i.i, %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11lower_boundERS6_.exit.i.i.i, %bb.cs
  %.0236.lcssa.i.i.i = phi i32 [ %.048.le.i.i.i, %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11lower_boundERS6_.exit.i.i.i ], [ %.048.le.i.i.i, %bb.cs ], [ %spec.select.i.i.i, %bb.cu ], [ %.0236260.i.i.i, %.lr.ph262.i.i.i ] ; 9 uses
  %i.bmc = sub nsw i32 %i.bls, %.0236.lcssa.i.i.i ; 2 uses
  %i.bmd = add nsw i32 %i.bmc, %i.blh             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 %.0236.lcssa.i.i.i, ptr %i.j, align 4
  %i.bme = load ptr, ptr %i.bk, align 8           ; 2 uses
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bme, null
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole18AddJumpSourceFixupEii.exit.i.i.i, label %.lr.ph.i.i.i.i.i28.i.i

.lr.ph.i.i.i.i.i28.i.i:                           ; preds = %.critedge2.i.i.i, %.lr.ph.i.i.i.i.i28.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i28.i.i ], [ %i.bme, %.critedge2.i.i.i ] ; 3 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i28.i.i ], [ %i.bj, %.critedge2.i.i.i ]
  %i.bmf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 32
  %i.bmg = load i32, ptr %i.bmf, align 4
  %i.bmh = icmp slt i32 %i.bmg, %.0236.lcssa.i.i.i ; 2 uses
  %.19.i.i.i.i.i.i.i = select i1 %i.bmh, ptr %.0811.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i.i.i.i = select i1 %i.bmh, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i29.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i29.i.i, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole18AddJumpSourceFixupEii.exit.i.i.i, label %.lr.ph.i.i.i.i.i28.i.i, !llvm.loop !12

_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole18AddJumpSourceFixupEii.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i28.i.i, %.critedge2.i.i.i
  %.08.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bj, %.critedge2.i.i.i ], [ %.19.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i28.i.i ]
  %i.bmi = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i.i.i.i.i) #13
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmi, i64 36
  %i.bmk = load i32, ptr %i.bmj, align 4
  %i.bml = add nsw i32 %i.bmk, %i.bmd
  %i.bmm = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  store i32 %i.bml, ptr %i.bmm, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bmn = add nsw i32 %.068.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 %i.bmn, ptr %i.i, align 4
  %i.bmo = load ptr, ptr %i.bq, align 8           ; 2 uses
  %.not10.i.i.i.i142.i.i.i = icmp eq ptr %i.bmo, null
  br i1 %.not10.i.i.i.i142.i.i.i, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23AddJumpDestinationFixupEii.exit.i.i.i, label %.lr.ph.i.i.i.i143.i.i.i

.lr.ph.i.i.i.i143.i.i.i:                          ; preds = %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole18AddJumpSourceFixupEii.exit.i.i.i, %.lr.ph.i.i.i.i143.i.i.i
  %.012.i.i.i.i144.i.i.i = phi ptr [ %.1.i.i.i.i149.i.i.i, %.lr.ph.i.i.i.i143.i.i.i ], [ %i.bmo, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole18AddJumpSourceFixupEii.exit.i.i.i ] ; 3 uses
  %.0811.i.i.i.i145.i.i.i = phi ptr [ %.19.i.i.i.i146.i.i.i, %.lr.ph.i.i.i.i143.i.i.i ], [ %i.bp, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole18AddJumpSourceFixupEii.exit.i.i.i ]
  %i.bmp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i144.i.i.i, i64 32
  %i.bmq = load i32, ptr %i.bmp, align 4
  %.not242.i.i.i = icmp sgt i32 %i.bmq, %.068.i   ; 2 uses
  %.19.i.i.i.i146.i.i.i = select i1 %.not242.i.i.i, ptr %.012.i.i.i.i144.i.i.i, ptr %.0811.i.i.i.i145.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i147.i.i.i = select i1 %.not242.i.i.i, i64 16, i64 24
  %.1.in.i.i.i.i148.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i144.i.i.i, i64 %.1.in.v.i.i.i.i147.i.i.i
  %.1.i.i.i.i149.i.i.i = load ptr, ptr %.1.in.i.i.i.i148.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i150.i.i.i = icmp eq ptr %.1.i.i.i.i149.i.i.i, null
  br i1 %.not.i.i.i.i150.i.i.i, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23AddJumpDestinationFixupEii.exit.i.i.i, label %.lr.ph.i.i.i.i143.i.i.i, !llvm.loop !12

_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23AddJumpDestinationFixupEii.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i143.i.i.i, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole18AddJumpSourceFixupEii.exit.i.i.i
  %.08.lcssa.i.i.i.i151.i.i.i = phi ptr [ %i.bp, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole18AddJumpSourceFixupEii.exit.i.i.i ], [ %.19.i.i.i.i146.i.i.i, %.lr.ph.i.i.i.i143.i.i.i ]
  %i.bmr = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i.i151.i.i.i) #13
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 36
  %i.bmt = load i32, ptr %i.bms, align 4
  %i.bmu = add nsw i32 %i.bmt, %i.bmd
  %i.bmv = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  store i32 %i.bmu, ptr %i.bmv, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val58.i.i.i = load ptr, ptr %i.ae, align 8
  %.val59.i.i.i = load ptr, ptr %i.bbj, align 8
  %i.bmw = ptrtoint ptr %.val59.i.i.i to i64
  %i.bmx = ptrtoint ptr %.val58.i.i.i to i64
  %i.bmy = sub i64 %i.bmw, %i.bmx
  %i.bmz = trunc i64 %i.bmy to i32
  %i.bna = sub nsw i32 %i.bmz, %.0236.lcssa.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.bna, ptr %i.e, align 4
  store i32 %.0236.lcssa.i.i.i, ptr %i.f, align 4
  %i.bnb = load ptr, ptr %i.bq, align 8           ; 2 uses
  %.not10.i.i.i.i152.i.i.i = icmp eq ptr %i.bnb, null
  br i1 %.not10.i.i.i.i152.i.i.i, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23SetJumpDestinationFixupEii.exit.i.i.i, label %.lr.ph.i.i.i.i153.i.i.i

.lr.ph.i.i.i.i153.i.i.i:                          ; preds = %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23AddJumpDestinationFixupEii.exit.i.i.i, %.lr.ph.i.i.i.i153.i.i.i
  %.012.i.i.i.i154.i.i.i = phi ptr [ %.1.i.i.i.i159.i.i.i, %.lr.ph.i.i.i.i153.i.i.i ], [ %i.bnb, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23AddJumpDestinationFixupEii.exit.i.i.i ] ; 3 uses
  %.0811.i.i.i.i155.i.i.i = phi ptr [ %.19.i.i.i.i156.i.i.i, %.lr.ph.i.i.i.i153.i.i.i ], [ %i.bp, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23AddJumpDestinationFixupEii.exit.i.i.i ]
  %i.bnc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i154.i.i.i, i64 32
  %i.bnd = load i32, ptr %i.bnc, align 4
  %i.bne = icmp slt i32 %i.bnd, %.0236.lcssa.i.i.i ; 2 uses
  %.19.i.i.i.i156.i.i.i = select i1 %i.bne, ptr %.0811.i.i.i.i155.i.i.i, ptr %.012.i.i.i.i154.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i157.i.i.i = select i1 %i.bne, i64 24, i64 16
  %.1.in.i.i.i.i158.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i154.i.i.i, i64 %.1.in.v.i.i.i.i157.i.i.i
  %.1.i.i.i.i159.i.i.i = load ptr, ptr %.1.in.i.i.i.i158.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i160.i.i.i = icmp eq ptr %.1.i.i.i.i159.i.i.i, null
  br i1 %.not.i.i.i.i160.i.i.i, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23SetJumpDestinationFixupEii.exit.i.i.i, label %.lr.ph.i.i.i.i153.i.i.i, !llvm.loop !12

_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23SetJumpDestinationFixupEii.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i153.i.i.i, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23AddJumpDestinationFixupEii.exit.i.i.i
  %.08.lcssa.i.i.i.i161.i.i.i = phi ptr [ %i.bp, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23AddJumpDestinationFixupEii.exit.i.i.i ], [ %.19.i.i.i.i156.i.i.i, %.lr.ph.i.i.i.i153.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.bnf = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i.i161.i.i.i) #13
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 36
  %i.bnh = load i32, ptr %i.bng, align 4
  store i32 %i.bnh, ptr %i.g, align 4
  %i.bni = call { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE17_M_emplace_uniqueIJRiSD_EEES0_ISt17_Rb_tree_iteratorIS2_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.e) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %i.bnj = load i32, ptr %i.f, align 4
  %i.bnk = add nsw i32 %i.bnj, 1
  store i32 %i.bnk, ptr %i.h, align 4
  %i.bnl = call { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE17_M_emplace_uniqueIJiRiEEES0_ISt17_Rb_tree_iteratorIS2_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bnm = load ptr, ptr %i.bbj, align 8
  %i.bnn = sext i32 %i.bmc to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.bno = call noundef ptr @_ZN2v88internal10ZoneVectorIhE19PrepareForInsertionEPKhmPm(ptr noundef nonnull align 8 dereferenceable(328) %7, ptr noundef %i.bnm, i64 noundef %i.bnn, ptr noundef nonnull %i.d)
  %.not.i.i.i.i.i = icmp eq i32 %i.bls, %.0236.lcssa.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole17CopyRangeToOutputEPKhii.exit.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23SetJumpDestinationFixupEii.exit.i.i.i
  %i.bnp = sext i32 %.0236.lcssa.i.i.i to i64
  %i.bnq = getelementptr inbounds i8, ptr %3, i64 %i.bnp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bno, ptr readonly align 1 %i.bnq, i64 %i.bnn, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole17CopyRangeToOutputEPKhii.exit.i.i.i

_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole17CopyRangeToOutputEPKhii.exit.i.i.i: ; preds = %bb.ct, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23SetJumpDestinationFixupEii.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.cv

bb.cu:                                            ; preds = %.lr.ph262.i.i.i
  %i.bnr = getelementptr inbounds nuw i8, ptr %.sroa.0188.0261.i.i.i, i64 36
  %i.bns = load i32, ptr %i.bnr, align 4          ; 2 uses
  %i.bnt = icmp sgt i32 %i.bns, %.068.i
  %i.bnu = call i32 @llvm.smin.i32(i32 %i.bns, i32 %.0236260.i.i.i)
  %spec.select.i.i.i = select i1 %i.bnt, i32 %i.bnu, i32 %.0236260.i.i.i ; 2 uses
  %i.bnv = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0188.0261.i.i.i) #13 ; 2 uses
  %i.bnw = icmp eq ptr %i.bnv, %i.ar
  br i1 %i.bnw, label %.critedge2.i.i.i, label %.lr.ph262.i.i.i, !llvm.loop !18

.critedge.i.i.i:                                  ; preds = %._crit_edge258.i.i.i, %._crit_edge258.thread.i.i.i
  %i.bnx = phi i32 [ %i.blj, %._crit_edge258.thread.i.i.i ], [ %i.bls, %._crit_edge258.i.i.i ]
  %i.bny = add nsw i32 %.068.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.bny, ptr %i.c, align 4
  %i.bnz = load ptr, ptr %i.bq, align 8           ; 2 uses
  %.not10.i.i.i.i162.i.i.i = icmp eq ptr %i.bnz, null
  br i1 %.not10.i.i.i.i162.i.i.i, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23AddJumpDestinationFixupEii.exit172.i.i.i, label %.lr.ph.i.i.i.i163.i.i.i

.lr.ph.i.i.i.i163.i.i.i:                          ; preds = %.critedge.i.i.i, %.lr.ph.i.i.i.i163.i.i.i
  %.012.i.i.i.i164.i.i.i = phi ptr [ %.1.i.i.i.i169.i.i.i, %.lr.ph.i.i.i.i163.i.i.i ], [ %i.bnz, %.critedge.i.i.i ] ; 3 uses
  %.0811.i.i.i.i165.i.i.i = phi ptr [ %.19.i.i.i.i166.i.i.i, %.lr.ph.i.i.i.i163.i.i.i ], [ %i.bp, %.critedge.i.i.i ]
  %i.boa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i164.i.i.i, i64 32
  %i.bob = load i32, ptr %i.boa, align 4
  %.not.i30.i.i = icmp sgt i32 %i.bob, %.068.i    ; 2 uses
  %.19.i.i.i.i166.i.i.i = select i1 %.not.i30.i.i, ptr %.012.i.i.i.i164.i.i.i, ptr %.0811.i.i.i.i165.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i167.i.i.i = select i1 %.not.i30.i.i, i64 16, i64 24
  %.1.in.i.i.i.i168.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i164.i.i.i, i64 %.1.in.v.i.i.i.i167.i.i.i
  %.1.i.i.i.i169.i.i.i = load ptr, ptr %.1.in.i.i.i.i168.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i170.i.i.i = icmp eq ptr %.1.i.i.i.i169.i.i.i, null
  br i1 %.not.i.i.i.i170.i.i.i, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23AddJumpDestinationFixupEii.exit172.i.i.i, label %.lr.ph.i.i.i.i163.i.i.i, !llvm.loop !12

_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23AddJumpDestinationFixupEii.exit172.i.i.i: ; preds = %.lr.ph.i.i.i.i163.i.i.i, %.critedge.i.i.i
  %.08.lcssa.i.i.i.i171.i.i.i = phi ptr [ %i.bp, %.critedge.i.i.i ], [ %.19.i.i.i.i166.i.i.i, %.lr.ph.i.i.i.i163.i.i.i ]
  %i.boc = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i.i171.i.i.i) #13
  %i.bod = getelementptr inbounds nuw i8, ptr %i.boc, i64 36
  %i.boe = load i32, ptr %i.bod, align 4
  %i.bof = add nsw i32 %i.boe, %i.blh
  %i.bog = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  store i32 %i.bof, ptr %i.bog, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val67.i.i.i = load i32, ptr %.02148.i.i, align 8
  %.val68.i.i.i = load i32, ptr %i.blc, align 4
  %i.boh = sext i32 %.val67.i.i.i to i64
  %i.boi = getelementptr inbounds [4 x i8], ptr @_ZN2v88internalL22kRegExpBytecodeLengthsE, i64 %i.boh
  %i.boj = load i32, ptr %i.boi, align 4
  %i.bok = add i32 %.val68.i.i.i, %.068.i
  %i.bol = add i32 %i.bok, %i.boj                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.bol, ptr %i.b, align 4
  %i.bom = load ptr, ptr %i.bk, align 8           ; 2 uses
  %.not10.i.i.i.i173.i.i.i = icmp eq ptr %i.bom, null
  br i1 %.not10.i.i.i.i173.i.i.i, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole18AddJumpSourceFixupEii.exit183.i.i.i, label %.lr.ph.i.i.i.i174.i.i.i

.lr.ph.i.i.i.i174.i.i.i:                          ; preds = %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23AddJumpDestinationFixupEii.exit172.i.i.i, %.lr.ph.i.i.i.i174.i.i.i
  %.012.i.i.i.i175.i.i.i = phi ptr [ %.1.i.i.i.i180.i.i.i, %.lr.ph.i.i.i.i174.i.i.i ], [ %i.bom, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23AddJumpDestinationFixupEii.exit172.i.i.i ] ; 3 uses
  %.0811.i.i.i.i176.i.i.i = phi ptr [ %.19.i.i.i.i177.i.i.i, %.lr.ph.i.i.i.i174.i.i.i ], [ %i.bj, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23AddJumpDestinationFixupEii.exit172.i.i.i ]
  %i.bon = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i175.i.i.i, i64 32
  %i.boo = load i32, ptr %i.bon, align 4
  %i.bop = icmp slt i32 %i.boo, %i.bol            ; 2 uses
  %.19.i.i.i.i177.i.i.i = select i1 %i.bop, ptr %.0811.i.i.i.i176.i.i.i, ptr %.012.i.i.i.i175.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i178.i.i.i = select i1 %i.bop, i64 24, i64 16
  %.1.in.i.i.i.i179.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i175.i.i.i, i64 %.1.in.v.i.i.i.i178.i.i.i
  %.1.i.i.i.i180.i.i.i = load ptr, ptr %.1.in.i.i.i.i179.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i181.i.i.i = icmp eq ptr %.1.i.i.i.i180.i.i.i, null
  br i1 %.not.i.i.i.i181.i.i.i, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole18AddJumpSourceFixupEii.exit183.i.i.i, label %.lr.ph.i.i.i.i174.i.i.i, !llvm.loop !12

_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole18AddJumpSourceFixupEii.exit183.i.i.i: ; preds = %.lr.ph.i.i.i.i174.i.i.i, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23AddJumpDestinationFixupEii.exit172.i.i.i
  %.08.lcssa.i.i.i.i182.i.i.i = phi ptr [ %i.bj, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole23AddJumpDestinationFixupEii.exit172.i.i.i ], [ %.19.i.i.i.i177.i.i.i, %.lr.ph.i.i.i.i174.i.i.i ]
  %i.boq = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i.i182.i.i.i) #13
  %i.bor = getelementptr inbounds nuw i8, ptr %i.boq, i64 36
  %i.bos = load i32, ptr %i.bor, align 4
  %i.bot = add nsw i32 %i.bos, %i.blh
  %i.bou = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  store i32 %i.bot, ptr %i.bou, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.cv

bb.cv:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole18AddJumpSourceFixupEii.exit183.i.i.i, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole17CopyRangeToOutputEPKhii.exit.i.i.i
  %.2.i.i.i = phi i32 [ %i.bnx, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole18AddJumpSourceFixupEii.exit183.i.i.i ], [ %.0236.lcssa.i.i.i, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole17CopyRangeToOutputEPKhii.exit.i.i.i ]
  %i.bov = load ptr, ptr %i.bbh, align 8          ; 2 uses
  %i.bow = icmp eq ptr %i.bov, %i.bbh
  br i1 %i.bow, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole19TryOptimizeSequenceEPKhii.exit.i, label %.lr.ph268.i.i.i

.lr.ph268.i.i.i:                                  ; preds = %bb.cv, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE5eraseERS1_.exit.i
  %.sroa.0184.0266.i.i.i = phi ptr [ %i.bpy, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE5eraseERS1_.exit.i ], [ %i.bov, %bb.cv ] ; 2 uses
  %i.box = getelementptr inbounds nuw i8, ptr %.sroa.0184.0266.i.i.i, i64 16
  %i.boy = load i32, ptr %i.box, align 4          ; 5 uses
  %i.boz = icmp slt i32 %i.boy, %.2.i.i.i
  br i1 %i.boz, label %bb.cw, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE5eraseERS1_.exit.i

bb.cw:                                            ; preds = %.lr.ph268.i.i.i
  %.041.i.i.i = load ptr, ptr %i.as, align 8      ; 3 uses
  %.not42.i.i.i = icmp eq ptr %.041.i.i.i, null
  br i1 %.not42.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE11equal_rangeERS1_.exit.i.i, label %.lr.ph.i.i40.i

.lr.ph.i.i40.i:                                   ; preds = %bb.cw, %bb.cz
  %.044.i.i.i = phi ptr [ %.0.i.i.i, %bb.cz ], [ %.041.i.i.i, %bb.cw ] ; 7 uses
  %.02243.i.i.i = phi ptr [ %.123.i.i.i, %bb.cz ], [ %i.ar, %bb.cw ] ; 3 uses
  %i.bpa = getelementptr inbounds nuw i8, ptr %.044.i.i.i, i64 32
  %i.bpb = load i32, ptr %i.bpa, align 4          ; 2 uses
  %i.bpc = icmp slt i32 %i.bpb, %i.boy
  br i1 %i.bpc, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.i.i40.i
  %i.bpd = icmp slt i32 %i.boy, %i.bpb
  br i1 %i.bpd, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.bpe = getelementptr inbounds nuw i8, ptr %.044.i.i.i, i64 16
  %i.bpf = load ptr, ptr %i.bpe, align 8          ; 2 uses
  %i.bpg = getelementptr inbounds nuw i8, ptr %.044.i.i.i, i64 24
  %i.bph = load ptr, ptr %i.bpg, align 8          ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bpf, null
  br i1 %.not10.i.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cy, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bpf, %bb.cy ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.044.i.i.i, %bb.cy ]
  %i.bpi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bpj = load i32, ptr %i.bpi, align 4
  %i.bpk = icmp slt i32 %i.bpj, %i.boy            ; 2 uses
  %.19.i.i.i.i = select i1 %i.bpk, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.bpk, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !12

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.cy
  %.08.lcssa.i.i.i.i = phi ptr [ %.044.i.i.i, %bb.cy ], [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not10.i24.i.i.i = icmp eq ptr %i.bph, null
  br i1 %.not10.i24.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE11equal_rangeERS1_.exit.i.i, label %.lr.ph.i25.i.i.i

.lr.ph.i25.i.i.i:                                 ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %.lr.ph.i25.i.i.i
  %.012.i26.i.i.i = phi ptr [ %.1.i31.i.i.i, %.lr.ph.i25.i.i.i ], [ %i.bph, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i ] ; 3 uses
  %.0811.i27.i.i.i = phi ptr [ %.19.i28.i.i.i, %.lr.ph.i25.i.i.i ], [ %.02243.i.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i ]
  %i.bpl = getelementptr inbounds nuw i8, ptr %.012.i26.i.i.i, i64 32
  %i.bpm = load i32, ptr %i.bpl, align 4
  %i.bpn = icmp slt i32 %i.boy, %i.bpm            ; 2 uses
  %.19.i28.i.i.i = select i1 %i.bpn, ptr %.012.i26.i.i.i, ptr %.0811.i27.i.i.i ; 2 uses
  %.1.in.v.i29.i.i.i = select i1 %i.bpn, i64 16, i64 24
  %.1.in.i30.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i26.i.i.i, i64 %.1.in.v.i29.i.i.i
  %.1.i31.i.i.i = load ptr, ptr %.1.in.i30.i.i.i, align 8 ; 2 uses
  %.not.i32.i.i.i = icmp eq ptr %.1.i31.i.i.i, null
  br i1 %.not.i32.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE11equal_rangeERS1_.exit.i.i, label %.lr.ph.i25.i.i.i, !llvm.loop !16

bb.cz:                                            ; preds = %bb.cx, %.lr.ph.i.i40.i
  %.sink.i.i.i = phi i64 [ 24, %.lr.ph.i.i40.i ], [ 16, %bb.cx ]
  %.123.i.i.i = phi ptr [ %.02243.i.i.i, %.lr.ph.i.i40.i ], [ %.044.i.i.i, %bb.cx ] ; 3 uses
  %i.bpo = getelementptr inbounds nuw i8, ptr %.044.i.i.i, i64 %.sink.i.i.i
  %.0.i.i.i = load ptr, ptr %i.bpo, align 8       ; 2 uses
  %.not.i.i42.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i42.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE11equal_rangeERS1_.exit.i.i, label %.lr.ph.i.i40.i, !llvm.loop !19

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE11equal_rangeERS1_.exit.i.i: ; preds = %bb.cz, %.lr.ph.i25.i.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %bb.cw
  %.sroa.037.0.i.i.i = phi ptr [ %.08.lcssa.i.i.i.i, %.lr.ph.i25.i.i.i ], [ %.08.lcssa.i.i.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i ], [ %i.ar, %bb.cw ], [ %.123.i.i.i, %bb.cz ] ; 3 uses
  %.sroa.3.0.i.i.i = phi ptr [ %.19.i28.i.i.i, %.lr.ph.i25.i.i.i ], [ %.02243.i.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i ], [ %i.ar, %bb.cw ], [ %.123.i.i.i, %bb.cz ] ; 3 uses
  %i.bpp = load ptr, ptr %i.at, align 8
  %i.bpq = icmp eq ptr %.sroa.037.0.i.i.i, %i.bpp
  %i.bpr = icmp eq ptr %.sroa.3.0.i.i.i, %i.ar
  %or.cond.i.i = select i1 %i.bpq, i1 %i.bpr, i1 false
  br i1 %or.cond.i.i, label %bb.da, label %.critedge.i.i41.i

bb.da:                                            ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE11equal_rangeERS1_.exit.i.i
  call void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef %.041.i.i.i)
  store ptr null, ptr %i.as, align 8
  store <2 x ptr> %13, ptr %i.at, align 8
  store i64 0, ptr %i.av, align 8
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE5eraseERS1_.exit.i

.critedge.i.i41.i:                                ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE11equal_rangeERS1_.exit.i.i
  %i.bps = icmp eq ptr %.sroa.037.0.i.i.i, %.sroa.3.0.i.i.i
  br i1 %i.bps, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE5eraseERS1_.exit.i, label %.lr.ph.i2.i.i

.lr.ph.i2.i.i:                                    ; preds = %.critedge.i.i41.i, %.lr.ph.i2.i.i
  %.sroa.06.08.i.i.i = phi ptr [ %i.bpt, %.lr.ph.i2.i.i ], [ %.sroa.037.0.i.i.i, %.critedge.i.i41.i ] ; 2 uses
  %i.bpt = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.08.i.i.i) #13 ; 2 uses
  %i.bpu = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.08.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ar) #11 ; 0 uses
  %i.bpv = load i64, ptr %i.av, align 8
  %i.bpw = add i64 %i.bpv, -1
  store i64 %i.bpw, ptr %i.av, align 8
  %i.bpx = icmp eq ptr %i.bpt, %.sroa.3.0.i.i.i
  br i1 %i.bpx, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE5eraseERS1_.exit.i, label %.lr.ph.i2.i.i, !llvm.loop !20

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE5eraseERS1_.exit.i: ; preds = %.lr.ph.i2.i.i, %.critedge.i.i41.i, %bb.da, %.lr.ph268.i.i.i
  %i.bpy = load ptr, ptr %.sroa.0184.0266.i.i.i, align 8 ; 2 uses
  %i.bpz = icmp eq ptr %i.bpy, %i.bbh
  br i1 %i.bpz, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole19TryOptimizeSequenceEPKhii.exit.i, label %.lr.ph268.i.i.i

_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole19TryOptimizeSequenceEPKhii.exit.i: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiEN2v88internal13ZoneAllocatorIS2_EEE5eraseERS1_.exit.i, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %.021.val.i.i = load i32, ptr %.02148.i.i, align 8
  %.021.val26.i.i = load i32, ptr %i.blc, align 4
  %i.bqa = sext i32 %.021.val.i.i to i64
  %i.bqb = getelementptr inbounds [4 x i8], ptr @_ZN2v88internalL22kRegExpBytecodeLengthsE, i64 %i.bqa
  %i.bqc = load i32, ptr %i.bqb, align 4
  %i.bqd = add nsw i32 %i.bqc, %.021.val26.i.i    ; 2 uses
  %i.bqe = icmp sgt i32 %i.bqd, 0
  br i1 %i.bqe, label %.thread, label %bb.db

bb.db:                                            ; preds = %_ZNK2v88internal12_GLOBAL__N_120BytecodeSequenceNode4FindEi.exit.thread.i.i, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole19TryOptimizeSequenceEPKhii.exit.i
  %i.bqf = sext i32 %.068.i to i64
  %i.bqg = getelementptr inbounds i8, ptr %3, i64 %i.bqf ; 2 uses
  %i.bqh = load i8, ptr %i.bqg, align 1
  %i.bqi = zext i8 %i.bqh to i64
  %i.bqj = getelementptr inbounds nuw [4 x i8], ptr @_ZN2v88internalL22kRegExpBytecodeLengthsE, i64 %i.bqi
  %i.bqk = load i32, ptr %i.bqj, align 4          ; 2 uses
  %i.bql = load ptr, ptr %i.bbj, align 8
  %i.bqm = sext i32 %i.bqk to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.bqn = call noundef ptr @_ZN2v88internal10ZoneVectorIhE19PrepareForInsertionEPKhmPm(ptr noundef nonnull align 8 dereferenceable(328) %7, ptr noundef %i.bql, i64 noundef %i.bqm, ptr noundef nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bqn, ptr nonnull readonly align 1 %i.bqg, i64 %i.bqm, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.1.i = add nsw i32 %i.bqk, %.068.i             ; 2 uses
  %i.bqo = icmp slt i32 %.1.i, %4
  br i1 %i.bqo, label %.lr.ph.preheader.i.i, label %._crit_edge.i, !llvm.loop !21

.thread:                                          ; preds = %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole19TryOptimizeSequenceEPKhii.exit.i
  %.1.i47 = add nsw i32 %i.bqd, %.068.i           ; 2 uses
  %i.bqp = icmp slt i32 %.1.i47, %4
  br i1 %i.bqp, label %.lr.ph.preheader.i.i.outer, label %._crit_edge.i.thread, !llvm.loop !21

._crit_edge.i:                                    ; preds = %bb.db
  br i1 %.01867.i.ph, label %._crit_edge.i.thread, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole16OptimizeBytecodeEPKhi.exit

._crit_edge.i.thread:                             ; preds = %.thread, %._crit_edge.i
  %i.bqq = load ptr, ptr %i.bk, align 8           ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.bqq, null
  br i1 %.not10.i.i.i.i.i, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11lower_boundERS6_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i.thread, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.bqq, %._crit_edge.i.thread ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.bj, %._crit_edge.i.thread ]
  %i.bqr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.bqs = load i32, ptr %i.bqr, align 4
  %i.bqt = icmp slt i32 %i.bqs, 0                 ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.bqt, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.bqt, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i23.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i23.i, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11lower_boundERS6_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !12

_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11lower_boundERS6_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge.i.thread
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.bj, %._crit_edge.i.thread ], [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.bqu = load ptr, ptr %i.at, align 8           ; 2 uses
  %i.bqv = icmp eq ptr %i.bqu, %i.ar
  br i1 %i.bqv, label %._crit_edge63.i.i, label %.lr.ph62.i.i

.lr.ph62.i.i:                                     ; preds = %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11lower_boundERS6_.exit.i.i
  %i.bqw = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i.i, i64 36
  %i.bqx = load i32, ptr %i.bqw, align 4
  %i.bqy = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i.i, i64 32
  %i.bqz = load i32, ptr %i.bqy, align 4
  br label %bb.dc

._crit_edge63.i.i:                                ; preds = %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole7FixJumpEii.exit.i.i, %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11lower_boundERS6_.exit.i.i
  %i.bra = load ptr, ptr %i.az, align 8           ; 2 uses
  %i.brb = icmp eq ptr %i.bra, %i.ax
  br i1 %i.brb, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole16OptimizeBytecodeEPKhi.exit, label %.lr.ph66.i.i

bb.dc:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole7FixJumpEii.exit.i.i, %.lr.ph62.i.i
  %.061.i.i = phi i32 [ 0, %.lr.ph62.i.i ], [ %.1.lcssa.i.i, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole7FixJumpEii.exit.i.i ]
  %.01560.i.i = phi i32 [ %i.bqz, %.lr.ph62.i.i ], [ %.116.lcssa.i.i, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole7FixJumpEii.exit.i.i ] ; 2 uses
  %.01759.i.i = phi i32 [ %i.bqx, %.lr.ph62.i.i ], [ %.118.lcssa.i.i, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole7FixJumpEii.exit.i.i ] ; 2 uses
  %.sroa.046.058.i.i = phi ptr [ %.08.lcssa.i.i.i.i.i, %.lr.ph62.i.i ], [ %.sroa.046.1.lcssa.i.i, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole7FixJumpEii.exit.i.i ] ; 2 uses
  %.sroa.043.057.i.i = phi ptr [ %i.bqu, %.lr.ph62.i.i ], [ %i.bsd, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole7FixJumpEii.exit.i.i ] ; 3 uses
  %i.brc = getelementptr inbounds nuw i8, ptr %.sroa.043.057.i.i, i64 32
  %.sroa.07.0.copyload.i.i = load i32, ptr %i.brc, align 4 ; 3 uses
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.043.057.i.i, i64 36
  %.sroa.48.0.copyload.i.i = load i32, ptr %.sroa.48.0..sroa_idx.i.i, align 4 ; 2 uses
  %.not51.i.i = icmp slt i32 %.sroa.07.0.copyload.i.i, %.01560.i.i
  br i1 %.not51.i.i, label %._crit_edge.i.i, label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %bb.dc, %.lr.ph.i24.i
  %.11853.i.i = phi i32 [ %i.brh, %.lr.ph.i24.i ], [ %.01759.i.i, %bb.dc ]
  %.sroa.046.152.i.i = phi ptr [ %i.brd, %.lr.ph.i24.i ], [ %.sroa.046.058.i.i, %bb.dc ]
  %i.brd = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.046.152.i.i) #13 ; 4 uses
  %i.bre = getelementptr inbounds nuw i8, ptr %i.brd, i64 32
  %i.brf = load i32, ptr %i.bre, align 4          ; 2 uses
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brd, i64 36
  %i.brh = load i32, ptr %i.brg, align 4          ; 2 uses
  %.not.i25.i = icmp slt i32 %.sroa.07.0.copyload.i.i, %i.brf
  br i1 %.not.i25.i, label %._crit_edge.i.i, label %.lr.ph.i24.i, !llvm.loop !22

._crit_edge.i.i:                                  ; preds = %.lr.ph.i24.i, %bb.dc
  %.sroa.046.1.lcssa.i.i = phi ptr [ %.sroa.046.058.i.i, %bb.dc ], [ %i.brd, %.lr.ph.i24.i ]
  %.118.lcssa.i.i = phi i32 [ %.01759.i.i, %bb.dc ], [ %i.brh, %.lr.ph.i24.i ]
  %.116.lcssa.i.i = phi i32 [ %.01560.i.i, %bb.dc ], [ %i.brf, %.lr.ph.i24.i ]
  %.1.lcssa.i.i = phi i32 [ %.061.i.i, %bb.dc ], [ %.11853.i.i, %.lr.ph.i24.i ] ; 2 uses
  %i.bri = add nsw i32 %.1.lcssa.i.i, %.sroa.07.0.copyload.i.i
  %i.brj = load ptr, ptr %i.bq, align 8           ; 2 uses
  %.not10.i.i.i.i.i26.i = icmp eq ptr %i.brj, null
  br i1 %.not10.i.i.i.i.i26.i, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11upper_boundERS6_.exit.i.i35.i, label %.lr.ph.i.i.i.i.i27.i

.lr.ph.i.i.i.i.i27.i:                             ; preds = %._crit_edge.i.i, %.lr.ph.i.i.i.i.i27.i
  %.012.i.i.i.i.i28.i = phi ptr [ %.1.i.i.i.i.i33.i, %.lr.ph.i.i.i.i.i27.i ], [ %i.brj, %._crit_edge.i.i ] ; 3 uses
  %.0811.i.i.i.i.i29.i = phi ptr [ %.19.i.i.i.i.i30.i, %.lr.ph.i.i.i.i.i27.i ], [ %i.bp, %._crit_edge.i.i ]
  %i.brk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i28.i, i64 32
  %i.brl = load i32, ptr %i.brk, align 4
  %i.brm = icmp slt i32 %.sroa.48.0.copyload.i.i, %i.brl ; 2 uses
  %.19.i.i.i.i.i30.i = select i1 %i.brm, ptr %.012.i.i.i.i.i28.i, ptr %.0811.i.i.i.i.i29.i ; 2 uses
  %.1.in.v.i.i.i.i.i31.i = select i1 %i.brm, i64 16, i64 24
  %.1.in.i.i.i.i.i32.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i28.i, i64 %.1.in.v.i.i.i.i.i31.i
  %.1.i.i.i.i.i33.i = load ptr, ptr %.1.in.i.i.i.i.i32.i, align 8 ; 2 uses
  %.not.i.i.i.i.i34.i = icmp eq ptr %.1.i.i.i.i.i33.i, null
  br i1 %.not.i.i.i.i.i34.i, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11upper_boundERS6_.exit.i.i35.i, label %.lr.ph.i.i.i.i.i27.i, !llvm.loop !16

_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11upper_boundERS6_.exit.i.i35.i: ; preds = %.lr.ph.i.i.i.i.i27.i, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %i.bp, %._crit_edge.i.i ], [ %.19.i.i.i.i.i30.i, %.lr.ph.i.i.i.i.i27.i ]
  %i.brn = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i.i.i.i) #13
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brn, i64 36
  %i.brp = load i32, ptr %i.bro, align 4          ; 2 uses
  %.not.i.i36.i = icmp eq i32 %i.brp, 0
  br i1 %.not.i.i36.i, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole7FixJumpEii.exit.i.i, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11upper_boundERS6_.exit.i.i35.i
  %i.brq = add nsw i32 %i.brp, %.sroa.48.0.copyload.i.i ; 4 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.brq to i8
  %.sroa.2.0.extract.shift.i.i.i37.i = lshr i32 %i.brq, 8
  %.sroa.2.0.extract.trunc.i.i.i38.i = trunc i32 %.sroa.2.0.extract.shift.i.i.i37.i to i8
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i32 %i.brq, 16
  %.sroa.3.0.extract.trunc.i.i.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i.i.i to i8
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i32 %i.brq, 24
  %.sroa.4.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i.i.i to i8
  %i.brr = sext i32 %i.bri to i64                 ; 4 uses
  %i.brs = load ptr, ptr %i.ae, align 8
  %i.brt = getelementptr inbounds nuw i8, ptr %i.brs, i64 %i.brr
  store i8 %.sroa.0.0.extract.trunc.i.i.i.i, ptr %i.brt, align 1
  %i.bru = load ptr, ptr %i.ae, align 8
  %i.brv = getelementptr i8, ptr %i.bru, i64 %i.brr
  %i.brw = getelementptr i8, ptr %i.brv, i64 1
  store i8 %.sroa.2.0.extract.trunc.i.i.i38.i, ptr %i.brw, align 1
  %i.brx = load ptr, ptr %i.ae, align 8
  %i.bry = getelementptr i8, ptr %i.brx, i64 %i.brr
  %i.brz = getelementptr i8, ptr %i.bry, i64 2
  store i8 %.sroa.3.0.extract.trunc.i.i.i.i, ptr %i.brz, align 1
  %i.bsa = load ptr, ptr %i.ae, align 8
  %i.bsb = getelementptr i8, ptr %i.bsa, i64 %i.brr
  %i.bsc = getelementptr i8, ptr %i.bsb, i64 3
  store i8 %.sroa.4.0.extract.trunc.i.i.i.i, ptr %i.bsc, align 1
  br label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole7FixJumpEii.exit.i.i

_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole7FixJumpEii.exit.i.i: ; preds = %bb.dd, %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11upper_boundERS6_.exit.i.i35.i
  %i.bsd = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.043.057.i.i) #13 ; 2 uses
  %i.bse = icmp eq ptr %i.bsd, %i.ar
  br i1 %i.bse, label %._crit_edge63.i.i, label %bb.dc

.lr.ph66.i.i:                                     ; preds = %._crit_edge63.i.i, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole7FixJumpEii.exit38.i.i
  %.sroa.039.064.i.i = phi ptr [ %i.bta, %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole7FixJumpEii.exit38.i.i ], [ %i.bra, %._crit_edge63.i.i ] ; 3 uses
  %i.bsf = getelementptr inbounds nuw i8, ptr %.sroa.039.064.i.i, i64 32
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bsf, align 4
  %.sroa.4.0..sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %.sroa.039.064.i.i, i64 36
  %.sroa.4.0.copyload.i.i19 = load i32, ptr %.sroa.4.0..sroa_idx.i.i18, align 4 ; 2 uses
  %i.bsg = load ptr, ptr %i.bq, align 8           ; 2 uses
  %.not10.i.i.i.i19.i.i = icmp eq ptr %i.bsg, null
  br i1 %.not10.i.i.i.i19.i.i, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11upper_boundERS6_.exit.i28.i.i, label %.lr.ph.i.i.i.i20.i.i

.lr.ph.i.i.i.i20.i.i:                             ; preds = %.lr.ph66.i.i, %.lr.ph.i.i.i.i20.i.i
  %.012.i.i.i.i21.i.i = phi ptr [ %.1.i.i.i.i26.i.i, %.lr.ph.i.i.i.i20.i.i ], [ %i.bsg, %.lr.ph66.i.i ] ; 3 uses
  %.0811.i.i.i.i22.i.i = phi ptr [ %.19.i.i.i.i23.i.i, %.lr.ph.i.i.i.i20.i.i ], [ %i.bp, %.lr.ph66.i.i ]
  %i.bsh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i21.i.i, i64 32
  %i.bsi = load i32, ptr %i.bsh, align 4
  %i.bsj = icmp slt i32 %.sroa.4.0.copyload.i.i19, %i.bsi ; 2 uses
  %.19.i.i.i.i23.i.i = select i1 %i.bsj, ptr %.012.i.i.i.i21.i.i, ptr %.0811.i.i.i.i22.i.i ; 2 uses
  %.1.in.v.i.i.i.i24.i.i = select i1 %i.bsj, i64 16, i64 24
  %.1.in.i.i.i.i25.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i21.i.i, i64 %.1.in.v.i.i.i.i24.i.i
  %.1.i.i.i.i26.i.i = load ptr, ptr %.1.in.i.i.i.i25.i.i, align 8 ; 2 uses
  %.not.i.i.i.i27.i.i = icmp eq ptr %.1.i.i.i.i26.i.i, null
  br i1 %.not.i.i.i.i27.i.i, label %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11upper_boundERS6_.exit.i28.i.i, label %.lr.ph.i.i.i.i20.i.i, !llvm.loop !16

_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11upper_boundERS6_.exit.i28.i.i: ; preds = %.lr.ph.i.i.i.i20.i.i, %.lr.ph66.i.i
  %.08.lcssa.i.i.i.i29.i.i = phi ptr [ %i.bp, %.lr.ph66.i.i ], [ %.19.i.i.i.i23.i.i, %.lr.ph.i.i.i.i20.i.i ]
  %i.bsk = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i.i29.i.i) #13
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsk, i64 36
  %i.bsm = load i32, ptr %i.bsl, align 4          ; 2 uses
  %.not.i30.i39.i = icmp eq i32 %i.bsm, 0
  br i1 %.not.i30.i39.i, label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole7FixJumpEii.exit38.i.i, label %bb.de

bb.de:                                            ; preds = %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11upper_boundERS6_.exit.i28.i.i
  %i.bsn = add nsw i32 %i.bsm, %.sroa.4.0.copyload.i.i19 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i31.i.i = trunc i32 %i.bsn to i8
  %.sroa.2.0.extract.shift.i.i32.i.i = lshr i32 %i.bsn, 8
  %.sroa.2.0.extract.trunc.i.i33.i.i = trunc i32 %.sroa.2.0.extract.shift.i.i32.i.i to i8
  %.sroa.3.0.extract.shift.i.i34.i.i = lshr i32 %i.bsn, 16
  %.sroa.3.0.extract.trunc.i.i35.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i34.i.i to i8
  %.sroa.4.0.extract.shift.i.i36.i.i = lshr i32 %i.bsn, 24
  %.sroa.4.0.extract.trunc.i.i37.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i36.i.i to i8
  %i.bso = sext i32 %.sroa.0.0.copyload.i.i to i64 ; 4 uses
  %i.bsp = load ptr, ptr %i.ae, align 8
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.bsp, i64 %i.bso
  store i8 %.sroa.0.0.extract.trunc.i.i31.i.i, ptr %i.bsq, align 1
  %i.bsr = load ptr, ptr %i.ae, align 8
  %i.bss = getelementptr i8, ptr %i.bsr, i64 %i.bso
  %i.bst = getelementptr i8, ptr %i.bss, i64 1
  store i8 %.sroa.2.0.extract.trunc.i.i33.i.i, ptr %i.bst, align 1
  %i.bsu = load ptr, ptr %i.ae, align 8
  %i.bsv = getelementptr i8, ptr %i.bsu, i64 %i.bso
  %i.bsw = getelementptr i8, ptr %i.bsv, i64 2
  store i8 %.sroa.3.0.extract.trunc.i.i35.i.i, ptr %i.bsw, align 1
  %i.bsx = load ptr, ptr %i.ae, align 8
  %i.bsy = getelementptr i8, ptr %i.bsx, i64 %i.bso
  %i.bsz = getelementptr i8, ptr %i.bsy, i64 3
  store i8 %.sroa.4.0.extract.trunc.i.i37.i.i, ptr %i.bsz, align 1
  br label %_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole7FixJumpEii.exit38.i.i

_ZN2v88internal12_GLOBAL__N_122RegExpBytecodePeephole7FixJumpEii.exit38.i.i: ; preds = %bb.de, %_ZNSt3mapIiiSt4lessIiEN2v88internal13ZoneAllocatorISt4pairIKiiEEEE11upper_boundERS6_.exit.i28.i.i
  %i.bta = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.039.064.i.i) #13 ; 2 uses
end_hunk_1
