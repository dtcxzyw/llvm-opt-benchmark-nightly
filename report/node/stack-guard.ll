inline.NumInlined: 243
inline.NumDeleted: 94
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.444", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", [4 x i8], %"class.v8::internal::FlagValue.445", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.444", %"class.v8::internal::FlagValue.444", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.444", %"class.v8::internal::FlagValue.446", %"class.v8::internal::FlagValue.446", %"class.v8::internal::FlagValue.446", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.444", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.444", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.445", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.444", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.444", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.445", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", [4 x i8], %"class.v8::internal::FlagValue.445", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.444", %"class.v8::internal::FlagValue.444", %"class.v8::internal::FlagValue.444", %"class.v8::internal::FlagValue.444", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue.443", [4 x i8], %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.444", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.445", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.445", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.446", %"class.v8::internal::FlagValue.446", %"class.v8::internal::FlagValue.446", %"class.v8::internal::FlagValue.446", %"class.v8::internal::FlagValue.446", %"class.v8::internal::FlagValue.446", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.444", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.444", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.445", %"class.v8::internal::FlagValue.445", %"class.v8::internal::FlagValue.445", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.444", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.446", [2 x i8], %"class.v8::internal::FlagValue.443", [4 x i8], %"class.v8::internal::FlagValue.445", %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.444", %"class.v8::internal::FlagValue.444", [4 x i8], %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.453", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.443", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.442", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.446" = type { %"class.std::optional.447" }
%"class.std::optional.447" = type { %"struct.std::_Optional_base.448" }
%"struct.std::_Optional_base.448" = type { %"struct.std::_Optional_payload.450" }
%"struct.std::_Optional_payload.450" = type { %"struct.std::_Optional_payload_base.451" }
%"struct.std::_Optional_payload_base.451" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.445" = type { double }
%"class.v8::internal::FlagValue.444" = type { i32 }
%"class.v8::internal::FlagValue.453" = type { i64 }
%"class.v8::internal::FlagValue.443" = type { i32 }
%"class.v8::internal::FlagValue.442" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.std::unique_ptr.746" = type { %"struct.std::__uniq_ptr_data.747" }
%"struct.std::__uniq_ptr_data.747" = type { %"class.std::__uniq_ptr_impl.748" }
%"class.std::__uniq_ptr_impl.748" = type { %"class.std::tuple.749" }
%"class.std::tuple.749" = type { %"struct.std::_Tuple_impl.750" }
%"struct.std::_Tuple_impl.750" = type { %"struct.std::_Head_base.753" }
%"struct.std::_Head_base.753" = type { ptr }
%"class.v8::internal::tracing::ScopedTracer" = type { ptr, %"struct.v8::internal::tracing::ScopedTracer::Data" }
%"struct.v8::internal::tracing::ScopedTracer::Data" = type { ptr, ptr, i64 }

@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic299 = internal global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"v8.execute\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"V8.HandleInterrupts\00", align 1
@_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic318 = internal global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"V8.TerminateExecution\00", align 1
@_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic323 = internal global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"disabled-by-default-v8.gc\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"V8.GCHandleGCRequest\00", align 1
@_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic332 = internal global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"V8.GlobalSafepoint\00", align 1
@_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic338 = internal global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"v8.wasm\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"V8.WasmGrowSharedMemory\00", align 1
@_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic343 = internal global i64 0, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"V8.LogCode\00", align 1
@_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic348 = internal global i64 0, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"V8.WasmCodeGC\00", align 1
@_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic355 = internal global i64 0, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"V8.GCDeoptMarkedAllocationSites\00", align 1
@_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic361 = internal global i64 0, align 8
@.str.11 = private unnamed_addr constant [31 x i8] c"disabled-by-default-v8.compile\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"V8.InstallOptimizedFunctions\00", align 1
@_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic369 = internal global i64 0, align 8
@.str.13 = private unnamed_addr constant [41 x i8] c"V8.FinalizeBaselineConcurrentCompilation\00", align 1
@_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic377 = internal global i64 0, align 8
@.str.14 = private unnamed_addr constant [39 x i8] c"V8.FinalizeMaglevConcurrentCompilation\00", align 1
@_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic383 = internal global i64 0, align 8
@.str.15 = private unnamed_addr constant [31 x i8] c"V8.InvokeApiInterruptCallbacks\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10StackGuard13SetStackLimitEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = load i64, ptr %i.c, align 8
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZN2v88internal10StackGuard21SetStackLimitInternalERKNS0_15ExecutionAccessEmm.exit

bb.b:                                             ; preds = %bb.a
  store atomic volatile i64 %1, ptr %i.d monotonic, align 8
  br label %_ZN2v88internal10StackGuard21SetStackLimitInternalERKNS0_15ExecutionAccessEmm.exit

_ZN2v88internal10StackGuard21SetStackLimitInternalERKNS0_15ExecutionAccessEmm.exit: ; preds = %bb.a, %bb.b
  store i64 %1, ptr %i.c, align 8
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress norecurse nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_ZN2v88internal10StackGuard21SetStackLimitInternalERKNS0_15ExecutionAccessEmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = load i64, ptr %i.a, align 8
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store atomic volatile i64 %3, ptr %i.b monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 %3, ptr %i.a, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress norecurse nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_ZN2v88internal10StackGuard30SetStackLimitForStackSwitchingEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.a, align 8
  %i.d = cmpxchg volatile ptr %i.b, i64 %i.c, i64 %1 monotonic monotonic, align 8 ; 0 uses
  store i64 %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10StackGuard19PushInterruptsScopeEPNS0_15InterruptsScopeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %i.j = and i32 %i.i, %i.g                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.j, ptr %i.k, align 4
  %i.l = xor i32 %i.j, -1
  %i.m = load i32, ptr %i.f, align 8
  %i.n = and i32 %i.m, %i.l                       ; 2 uses
  store i32 %i.n, ptr %i.f, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.016 = load ptr, ptr %i.o, align 8             ; 2 uses
  %.not17 = icmp eq ptr %.016, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.015.lcssa = phi i32 [ 0, %bb.c ], [ %i.x, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = or i32 %i.r, %.015.lcssa                 ; 2 uses
  store i32 %i.s, ptr %i.q, align 8
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.019 = phi ptr [ %.016, %.lr.ph ], [ %.0, %bb.d ] ; 2 uses
  %.01518 = phi i32 [ 0, %.lr.ph ], [ %i.x, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %.019, i64 20 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = load i32, ptr %i.p, align 8              ; 2 uses
  %i.w = and i32 %i.v, %i.u
  %i.x = or i32 %i.w, %.01518                     ; 2 uses
  %i.y = xor i32 %i.v, -1
  %i.z = and i32 %i.u, %i.y
  store i32 %i.z, ptr %i.t, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.019, i64 8
  %.0 = load ptr, ptr %i.aa, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !5

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %i.ab = phi i32 [ %i.s, %._crit_edge ], [ %i.n, %bb.b ] ; 4 uses
  %.not9.i = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %.sink.i = select i1 %.not9.i, i64 %i.ad, i64 -2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 %.sink.i, ptr %i.ae monotonic, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = trunc i32 %i.ab to i8
  %i.ah = and i8 %i.ag, 1
  store atomic volatile i8 %i.ah, ptr %i.af monotonic, align 8
  %i.ai = and i32 %i.ab, 3379
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 41
  store atomic volatile i8 %i.ak, ptr %i.al monotonic, align 1
  %i.am = and i32 %i.ab, 4095
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = zext i1 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 42
  store atomic volatile i8 %i.ao, ptr %i.ap monotonic, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  store ptr %1, ptr %i.aq, align 8
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10StackGuard18PopInterruptsScopeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i8, ptr %i.e, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = or i32 %i.k, %i.i
  store i32 %i.l, ptr %i.j, align 8
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 12 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 25 uses
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = and i32 %i.p, 1
  %.not11 = icmp eq i32 %i.q, 0
  br i1 %.not11, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.r = tail call noundef zeroext i1 @_ZN2v88internal15InterruptsScope9InterceptENS0_10StackGuard13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(25) %i.n, i32 noundef 1) #5
  %.pre = load i32, ptr %i.o, align 8             ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = and i32 %.pre, -2                        ; 2 uses
  store i32 %i.s, ptr %i.o, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.preheader
  %i.t = phi i32 [ %i.s, %bb.e ], [ %.pre, %bb.d ], [ %i.p, %.preheader ] ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not11.1 = icmp eq i32 %i.u, 0
  br i1 %.not11.1, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = tail call noundef zeroext i1 @_ZN2v88internal15InterruptsScope9InterceptENS0_10StackGuard13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(25) %i.v, i32 noundef 2) #5
  %.pre13 = load i32, ptr %i.o, align 8           ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = and i32 %.pre13, -3                      ; 2 uses
  store i32 %i.x, ptr %i.o, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.y = phi i32 [ %i.x, %bb.h ], [ %.pre13, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %i.z = and i32 %i.y, 4
  %.not11.2 = icmp eq i32 %i.z, 0
  br i1 %.not11.2, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.m, align 8
  %i.ab = tail call noundef zeroext i1 @_ZN2v88internal15InterruptsScope9InterceptENS0_10StackGuard13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(25) %i.aa, i32 noundef 4) #5
  %.pre14 = load i32, ptr %i.o, align 8           ; 2 uses
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = and i32 %.pre14, -5                     ; 2 uses
  store i32 %i.ac, ptr %i.o, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ad = phi i32 [ %i.ac, %bb.k ], [ %.pre14, %bb.j ], [ %i.y, %bb.i ] ; 2 uses
  %i.ae = and i32 %i.ad, 8
  %.not11.3 = icmp eq i32 %i.ae, 0
  br i1 %.not11.3, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.m, align 8
  %i.ag = tail call noundef zeroext i1 @_ZN2v88internal15InterruptsScope9InterceptENS0_10StackGuard13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(25) %i.af, i32 noundef 8) #5
  %.pre15 = load i32, ptr %i.o, align 8           ; 2 uses
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = and i32 %.pre15, -9                     ; 2 uses
  store i32 %i.ah, ptr %i.o, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.ai = phi i32 [ %i.ah, %bb.n ], [ %.pre15, %bb.m ], [ %i.ad, %bb.l ] ; 2 uses
  %i.aj = and i32 %i.ai, 16
  %.not11.4 = icmp eq i32 %i.aj, 0
  br i1 %.not11.4, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.m, align 8
  %i.al = tail call noundef zeroext i1 @_ZN2v88internal15InterruptsScope9InterceptENS0_10StackGuard13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(25) %i.ak, i32 noundef 16) #5
  %.pre16 = load i32, ptr %i.o, align 8           ; 2 uses
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.am = and i32 %.pre16, -17                    ; 2 uses
  store i32 %i.am, ptr %i.o, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.an = phi i32 [ %i.am, %bb.q ], [ %.pre16, %bb.p ], [ %i.ai, %bb.o ] ; 2 uses
  %i.ao = and i32 %i.an, 32
  %.not11.5 = icmp eq i32 %i.ao, 0
  br i1 %.not11.5, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = load ptr, ptr %i.m, align 8
  %i.aq = tail call noundef zeroext i1 @_ZN2v88internal15InterruptsScope9InterceptENS0_10StackGuard13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(25) %i.ap, i32 noundef 32) #5
  %.pre17 = load i32, ptr %i.o, align 8           ; 2 uses
  br i1 %i.aq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ar = and i32 %.pre17, -33                    ; 2 uses
  store i32 %i.ar, ptr %i.o, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.as = phi i32 [ %i.ar, %bb.t ], [ %.pre17, %bb.s ], [ %i.an, %bb.r ] ; 2 uses
  %i.at = and i32 %i.as, 64
  %.not11.6 = icmp eq i32 %i.at, 0
  br i1 %.not11.6, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = load ptr, ptr %i.m, align 8
  %i.av = tail call noundef zeroext i1 @_ZN2v88internal15InterruptsScope9InterceptENS0_10StackGuard13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(25) %i.au, i32 noundef 64) #5
  %.pre18 = load i32, ptr %i.o, align 8           ; 2 uses
  br i1 %i.av, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.aw = and i32 %.pre18, -65                    ; 2 uses
  store i32 %i.aw, ptr %i.o, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.ax = phi i32 [ %i.aw, %bb.w ], [ %.pre18, %bb.v ], [ %i.as, %bb.u ] ; 2 uses
  %i.ay = and i32 %i.ax, 128
  %.not11.7 = icmp eq i32 %i.ay, 0
  br i1 %.not11.7, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.az = load ptr, ptr %i.m, align 8
  %i.ba = tail call noundef zeroext i1 @_ZN2v88internal15InterruptsScope9InterceptENS0_10StackGuard13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(25) %i.az, i32 noundef 128) #5
  %.pre19 = load i32, ptr %i.o, align 8           ; 2 uses
  br i1 %i.ba, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bb = and i32 %.pre19, -129                   ; 2 uses
  store i32 %i.bb, ptr %i.o, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.bc = phi i32 [ %i.bb, %bb.z ], [ %.pre19, %bb.y ], [ %i.ax, %bb.x ] ; 2 uses
  %i.bd = and i32 %i.bc, 256
  %.not11.8 = icmp eq i32 %i.bd, 0
  br i1 %.not11.8, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.be = load ptr, ptr %i.m, align 8
  %i.bf = tail call noundef zeroext i1 @_ZN2v88internal15InterruptsScope9InterceptENS0_10StackGuard13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(25) %i.be, i32 noundef 256) #5
  %.pre20 = load i32, ptr %i.o, align 8           ; 2 uses
  br i1 %i.bf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bg = and i32 %.pre20, -257                   ; 2 uses
  store i32 %i.bg, ptr %i.o, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.bh = phi i32 [ %i.bg, %bb.ac ], [ %.pre20, %bb.ab ], [ %i.bc, %bb.aa ] ; 2 uses
  %i.bi = and i32 %i.bh, 512
  %.not11.9 = icmp eq i32 %i.bi, 0
  br i1 %.not11.9, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bj = load ptr, ptr %i.m, align 8
  %i.bk = tail call noundef zeroext i1 @_ZN2v88internal15InterruptsScope9InterceptENS0_10StackGuard13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(25) %i.bj, i32 noundef 512) #5
  %.pre21 = load i32, ptr %i.o, align 8           ; 2 uses
  br i1 %i.bk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bl = and i32 %.pre21, -513                   ; 2 uses
  store i32 %i.bl, ptr %i.o, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bm = phi i32 [ %i.bl, %bb.af ], [ %.pre21, %bb.ae ], [ %i.bh, %bb.ad ] ; 2 uses
  %i.bn = and i32 %i.bm, 1024
  %.not11.10 = icmp eq i32 %i.bn, 0
  br i1 %.not11.10, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bo = load ptr, ptr %i.m, align 8
  %i.bp = tail call noundef zeroext i1 @_ZN2v88internal15InterruptsScope9InterceptENS0_10StackGuard13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(25) %i.bo, i32 noundef 1024) #5
  %.pre22 = load i32, ptr %i.o, align 8           ; 2 uses
  br i1 %i.bp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bq = and i32 %.pre22, -1025                  ; 2 uses
  store i32 %i.bq, ptr %i.o, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.br = phi i32 [ %i.bq, %bb.ai ], [ %.pre22, %bb.ah ], [ %i.bm, %bb.ag ]
  %i.bs = and i32 %i.br, 2048
  %.not11.11 = icmp eq i32 %i.bs, 0
  br i1 %.not11.11, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bt = load ptr, ptr %i.m, align 8
  %i.bu = tail call noundef zeroext i1 @_ZN2v88internal15InterruptsScope9InterceptENS0_10StackGuard13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(25) %i.bt, i32 noundef 2048) #5
  br i1 %i.bu, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.bv = load i32, ptr %i.o, align 8
  %i.bw = and i32 %i.bv, -2049
  store i32 %i.bw, ptr %i.o, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aj, %bb.ak, %bb.al, %bb.c, %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = load i32, ptr %i.bx, align 8            ; 4 uses
  %.not9.i = icmp eq i32 %i.by, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load i64, ptr %i.bz, align 8
  %.sink.i = select i1 %.not9.i, i64 %i.ca, i64 -2
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 %.sink.i, ptr %i.cb monotonic, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cd = trunc i32 %i.by to i8
  %i.ce = and i8 %i.cd, 1
  store atomic volatile i8 %i.ce, ptr %i.cc monotonic, align 8
  %i.cf = and i32 %i.by, 3379
  %i.cg = icmp ne i32 %i.cf, 0
  %i.ch = zext i1 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 41
  store atomic volatile i8 %i.ch, ptr %i.ci monotonic, align 1
  %i.cj = and i32 %i.by, 4095
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 42
  store atomic volatile i8 %i.cl, ptr %i.cm monotonic, align 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  store ptr %i.co, ptr %i.c, align 8
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal15InterruptsScope9InterceptENS0_10StackGuard13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(25), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal10StackGuard14CheckInterruptENS1_13InterruptFlagE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, %1
  %i.f = icmp ne i32 %i.e, 0
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10StackGuard16RequestInterruptENS1_13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN2v88internal15InterruptsScope9InterceptENS0_10StackGuard13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(25) %i.d, i32 noundef %1) #5
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, %1                          ; 5 uses
  store i32 %i.h, ptr %i.f, align 8
  %.not9.i = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %.sink.i = select i1 %.not9.i, i64 %i.j, i64 -2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 %.sink.i, ptr %i.k monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = trunc i32 %i.h to i8
  %i.n = and i8 %i.m, 1
  store atomic volatile i8 %i.n, ptr %i.l monotonic, align 8
  %i.o = and i32 %i.h, 3379
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 41
  store atomic volatile i8 %i.q, ptr %i.r monotonic, align 1
  %i.s = and i32 %i.h, 4095
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 42
  store atomic volatile i8 %i.u, ptr %i.v monotonic, align 2
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 63856
  tail call void @_ZN2v88internal17FutexWaitListNode10NotifyWakeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.x) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  ret void
}

declare void @_ZN2v88internal17FutexWaitListNode10NotifyWakeEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10StackGuard14ClearInterruptENS1_13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.05 = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not6 = icmp eq ptr %.05, null
  %.pre = xor i32 %1, -1                          ; 2 uses
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, %.pre                      ; 5 uses
  store i32 %i.f, ptr %i.d, align 8
  %.not9.i = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %.sink.i = select i1 %.not9.i, i64 %i.h, i64 -2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 %.sink.i, ptr %i.i monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = trunc i32 %i.f to i8
  %i.l = and i8 %i.k, 1
  store atomic volatile i8 %i.l, ptr %i.j monotonic, align 8
  %i.m = and i32 %i.f, 3379
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 41
  store atomic volatile i8 %i.o, ptr %i.p monotonic, align 1
  %i.q = and i32 %i.f, 4095
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 42
  store atomic volatile i8 %i.s, ptr %i.t monotonic, align 2
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %.0, %.lr.ph ], [ %.05, %bb.a ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.07, i64 20 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, %.pre
  store i32 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.07, i64 8
  %.0 = load ptr, ptr %i.x, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal10StackGuard21HasTerminationRequestEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load atomic volatile i8, ptr %i.b monotonic, align 8
  %.not2 = icmp eq i8 %i.c, 0
  br i1 %.not2, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 4 uses
  %.not = trunc i32 %i.g to i1                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.g, -2                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 8
  %.not9.i = icmp eq i32 %i.h, 0
  %i.i = load i64, ptr %i.a, align 8
  %.sink.i = select i1 %.not9.i, i64 %i.i, i64 -2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 %.sink.i, ptr %i.j monotonic, align 8
  store atomic volatile i8 0, ptr %i.b monotonic, align 8
  %i.k = and i32 %i.g, 3378
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 41
  store atomic volatile i8 %i.m, ptr %i.n monotonic, align 1
  %i.o = and i32 %i.g, 4094
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 42
  store atomic volatile i8 %i.q, ptr %i.r monotonic, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.1 = phi i1 [ %.not, %bb.d ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 4096) i32 @_ZN2v88internal10StackGuard23FetchAndClearInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  %i.c = insertelement <12 x i32> poison, i32 %1, i64 0
  %i.d = shufflevector <12 x i32> %i.c, <12 x i32> poison, <12 x i32> zeroinitializer
  %i.e = icmp sgt <12 x i32> %i.d, <i32 -1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0>
  %i.f = bitcast <12 x i1> %i.e to i12
  %i.g = zext i12 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = and i32 %i.i, 1
  %.not = icmp eq i32 %i.j, 0
  %spec.store.select = select i1 %.not, i32 %i.g, i32 1 ; 2 uses
  %i.k = and i32 %spec.store.select, %i.i
  %i.l = xor i32 %spec.store.select, -1
  %i.m = and i32 %i.i, %i.l                       ; 5 uses
  store i32 %i.m, ptr %i.h, align 8
  %.not9.i = icmp eq i32 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %.sink.i = select i1 %.not9.i, i64 %i.o, i64 -2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 %.sink.i, ptr %i.p monotonic, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = trunc i32 %i.m to i8
  %i.s = and i8 %i.r, 1
  store atomic volatile i8 %i.s, ptr %i.q monotonic, align 8
  %i.t = and i32 %i.m, 3379
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 41
  store atomic volatile i8 %i.v, ptr %i.w monotonic, align 1
  %i.x = and i32 %i.m, 4095
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 42
  store atomic volatile i8 %i.z, ptr %i.aa monotonic, align 2
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  ret i32 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal10StackGuard17ArchiveStackGuardEPc(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef writeonly captures(ret: address, provenance) initializes((0, 56)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  store i64 -8, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -8, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.85.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.85.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal10StackGuard17RestoreStackGuardEPc(ptr noundef nonnull align 8 captures(none) dereferenceable(64) initializes((8, 64)) %0, ptr noundef readonly captures(ret: address, provenance) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 1 dereferenceable(56) %1, i64 56, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10StackGuard19FreeThreadResourcesEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call noundef ptr @_ZN2v88internal7Isolate40FindOrAllocatePerThreadDataForThisThreadEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.a) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.e, align 8
  ret void
}

declare noundef ptr @_ZN2v88internal7Isolate40FindOrAllocatePerThreadDataForThisThreadEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10StackGuard11ThreadLocal10InitializeEPNS0_7IsolateERKNS0_15ExecutionAccessE(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0, ptr noundef readnone captures(none) %1, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1464), align 8
  %i.b = shl nsw i32 %i.a, 10
  %i.c = sext i32 %i.b to i64
  %i.d = tail call i64 @_ZN2v84base5Stack13GetStackStartEv() #5
  %i.e = sub i64 %i.d, %i.c                       ; 2 uses
  store i64 %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic volatile i64 %i.e, ptr %i.f monotonic, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.h, align 8
  ret void
}

declare i64 @_ZN2v84base5Stack13GetStackStartEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10StackGuard10InitThreadERKNS0_15ExecutionAccessE(ptr noundef nonnull align 8 dereferenceable(64) initializes((8, 16)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1464), align 8
  %i.c = shl nsw i32 %i.b, 10
  %i.d = sext i32 %i.c to i64
  %i.e = tail call i64 @_ZN2v84base5Stack13GetStackStartEv() #5
  %i.f = sub i64 %i.e, %i.d                       ; 2 uses
  store i64 %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store atomic volatile i64 %i.f, ptr %i.g monotonic, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.i, align 8
  %i.j = load ptr, ptr %0, align 8
  %i.k = tail call noundef ptr @_ZN2v88internal7Isolate40FindOrAllocatePerThreadDataForThisThreadEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.j) #5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #5
  %i.p = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.q = load i64, ptr %i.a, align 8
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZN2v88internal10StackGuard13SetStackLimitEm.exit

bb.c:                                             ; preds = %bb.b
  store atomic volatile i64 %i.m, ptr %i.g monotonic, align 8
  br label %_ZN2v88internal10StackGuard13SetStackLimitEm.exit

_ZN2v88internal10StackGuard13SetStackLimitEm.exit: ; preds = %bb.b, %bb.c
  store i64 %i.m, ptr %i.a, align 8
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #5
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal10StackGuard13SetStackLimitEm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %3 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %4 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %5 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %6 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %7 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %8 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %9 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %10 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %11 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %12 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %13 = alloca [2 x %"class.std::unique_ptr.746"], align 16 ; 6 uses
  %14 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %15 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %16 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %17 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %18 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %19 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %20 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %21 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %22 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %23 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %24 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %25 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %i.a = load atomic volatile i64, ptr @_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic299 acquire, align 8 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str) #5 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  store atomic volatile i64 %i.h, ptr @_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic299 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.b ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5
  store ptr null, ptr %14, align 8
  %i.i = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.j = and i8 %i.i, 5
  %.not97 = icmp eq i8 %i.j, 0
  br i1 %.not97, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.k = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %13, i32 noundef 0) #5, !inline_history !8
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.u = load ptr, ptr %13, align 16              ; 3 uses
  %.not.i.1 = icmp eq ptr %i.u, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #5
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %.0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr @.str.1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 %i.o, ptr %i.aa, align 8
  store ptr %i.y, ptr %14, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 58672 ; 2 uses
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #5
  %i.ad = insertelement <12 x i32> poison, i32 %1, i64 0
  %i.ae = shufflevector <12 x i32> %i.ad, <12 x i32> poison, <12 x i32> zeroinitializer
  %i.af = icmp sgt <12 x i32> %i.ae, <i32 -1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0>
  %i.ag = bitcast <12 x i1> %i.af to i12
  %i.ah = zext i12 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8            ; 3 uses
  %i.ak = and i32 %i.aj, 1
  %.not.i164 = icmp eq i32 %i.ak, 0
  %spec.store.select.i = select i1 %.not.i164, i32 %i.ah, i32 1 ; 2 uses
  %i.al = and i32 %spec.store.select.i, %i.aj     ; 12 uses
  %i.am = xor i32 %spec.store.select.i, -1
  %i.an = and i32 %i.aj, %i.am                    ; 5 uses
  store i32 %i.an, ptr %i.ai, align 8
  %.not9.i.i = icmp eq i32 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %.sink.i.i = select i1 %.not9.i.i, i64 %i.ap, i64 -2
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 %.sink.i.i, ptr %i.aq monotonic, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = trunc i32 %i.an to i8
  %i.at = and i8 %i.as, 1
  store atomic volatile i8 %i.at, ptr %i.ar monotonic, align 8
  %i.au = and i32 %i.an, 3379
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = zext i1 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 41
  store atomic volatile i8 %i.aw, ptr %i.ax monotonic, align 1
  %i.ay = and i32 %i.an, 4095
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 42
  store atomic volatile i8 %i.ba, ptr %i.bb monotonic, align 2
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #5
  %i.bc = and i32 %i.al, 1
  %.not249 = icmp eq i32 %i.bc, 0
  br i1 %.not249, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load atomic volatile i64, ptr @_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic318 acquire, align 8 ; 2 uses
  %i.be = inttoptr i64 %i.bd to ptr
  %.not118 = icmp eq i64 %i.bd, 0
  br i1 %.not118, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str) #5 ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  store atomic volatile i64 %i.bk, ptr @_ZZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelEE28trace_event_unique_atomic318 release, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.074 = phi ptr [ %i.be, %bb.f ], [ %i.bj, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  store ptr null, ptr %15, align 8
  %i.bl = load atomic volatile i8, ptr %.074 monotonic, align 1
  %i.bm = and i8 %i.bl, 5
  %.not119 = icmp eq i8 %i.bm, 0
  br i1 %.not119, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.bn = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #5 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, i8 noundef signext 88, ptr noundef nonnull %.074, ptr noundef nonnull @.str.2, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %12, i32 noundef 0) #5, !inline_history !8
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  %.not.i165 = icmp eq ptr %i.bt, null
  br i1 %.not.i165, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit167, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i166

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i166: ; preds = %bb.i
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bt) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit167

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit167: ; preds = %bb.i, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i166
  %i.bx = load ptr, ptr %12, align 16             ; 3 uses
  %.not.i165.1 = icmp eq ptr %i.bx, null
  br i1 %.not.i165.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit167.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i166.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i166.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit167
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bx) #5, !inline_history !9
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit167.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit167.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i166.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit167
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.074, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @.str.2, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i64 %i.br, ptr %i.cd, align 8
end_hunk_0
