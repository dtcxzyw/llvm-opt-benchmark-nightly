inline.NumInlined: 1540
inline.NumDeleted: 621
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.589", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", [4 x i8], %"class.v8::internal::FlagValue.590", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.589", %"class.v8::internal::FlagValue.589", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.589", %"class.v8::internal::FlagValue.591", %"class.v8::internal::FlagValue.591", %"class.v8::internal::FlagValue.591", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.589", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.589", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.590", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.589", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.589", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.590", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", [4 x i8], %"class.v8::internal::FlagValue.590", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.589", %"class.v8::internal::FlagValue.589", %"class.v8::internal::FlagValue.589", %"class.v8::internal::FlagValue.589", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue.588", [4 x i8], %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.589", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.590", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.590", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.591", %"class.v8::internal::FlagValue.591", %"class.v8::internal::FlagValue.591", %"class.v8::internal::FlagValue.591", %"class.v8::internal::FlagValue.591", %"class.v8::internal::FlagValue.591", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.589", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.589", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.590", %"class.v8::internal::FlagValue.590", %"class.v8::internal::FlagValue.590", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.589", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.591", [2 x i8], %"class.v8::internal::FlagValue.588", [4 x i8], %"class.v8::internal::FlagValue.590", %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.589", %"class.v8::internal::FlagValue.589", [4 x i8], %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.598", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.588", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.587", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.591" = type { %"class.std::optional.592" }
%"class.std::optional.592" = type { %"struct.std::_Optional_base.593" }
%"struct.std::_Optional_base.593" = type { %"struct.std::_Optional_payload.595" }
%"struct.std::_Optional_payload.595" = type { %"struct.std::_Optional_payload_base.596" }
%"struct.std::_Optional_payload_base.596" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.590" = type { double }
%"class.v8::internal::FlagValue.589" = type { i32 }
%"class.v8::internal::FlagValue.598" = type { i64 }
%"class.v8::internal::FlagValue.588" = type { i32 }
%"class.v8::internal::FlagValue.587" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.v8::internal::InternalIndex" = type { i64 }
%"class.v8::internal::ObjectDescriptor" = type { i32, i32, i32, i32, i32, i32, %"class.v8::internal::Handle.447", %"class.v8::internal::Handle.448", %"class.v8::internal::Handle.2", %"class.v8::internal::Handle.449", %"class.v8::internal::Handle.450" }
%"class.v8::internal::Handle.447" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"class.v8::internal::Handle.448" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::Handle.2" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::Handle.449" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::Handle.450" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::Descriptor" = type <{ %"class.v8::internal::DirectHandle", %"class.v8::internal::MaybeObjectDirectHandle", %"class.v8::internal::PropertyDetails", [4 x i8] }>
%"class.v8::internal::DirectHandle" = type { %"class.v8::internal::Handle.0" }
%"class.v8::internal::Handle.0" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::MaybeObjectDirectHandle" = type { i32, %"class.v8::internal::MaybeDirectHandle" }
%"class.v8::internal::MaybeDirectHandle" = type { %"class.v8::internal::MaybeHandle" }
%"class.v8::internal::MaybeHandle" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::PropertyDetails" = type { i32 }
%"class.v8::internal::detail::TaggedOperatorArrowRef.648" = type { %"class.v8::internal::DescriptorArray" }
%"class.v8::internal::DescriptorArray" = type { %"class.v8::internal::TorqueGeneratedDescriptorArray" }
%"class.v8::internal::TorqueGeneratedDescriptorArray" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::HeapObject" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::TaggedImpl" = type { i64 }
%"class.v8::internal::LocalHandleScope" = type { ptr, ptr, ptr }
%"class.v8::internal::ObjectDescriptor.580" = type { i32, i32, i32, i32, i32, i32, %"class.v8::internal::Handle.447", %"class.v8::internal::Handle.448", %"class.v8::internal::Handle.2", %"class.v8::internal::Handle.449", %"class.v8::internal::Handle.450" }
%"struct.v8::internal::Brief" = type { i64 }
%"class.v8::internal::detail::TaggedOperatorArrowRef.634" = type { %"class.v8::internal::SwissNameDictionary" }
%"class.v8::internal::SwissNameDictionary" = type { %"class.v8::internal::HeapObject" }

$_ZN2v88internal16ClassBoilerplate23AddToPropertiesTemplateINS0_7IsolateENS0_14NameDictionaryEEEvPT_NS0_6HandleIT0_EENS7_INS0_4NameEEEiNS1_9ValueKindENS0_6TaggedINS0_3SmiEEE = comdat any

$_ZN2v88internal16ClassBoilerplate23AddToPropertiesTemplateINS0_12LocalIsolateENS0_14NameDictionaryEEEvPT_NS0_6HandleIT0_EENS7_INS0_4NameEEEiNS1_9ValueKindENS0_6TaggedINS0_3SmiEEE = comdat any

$_ZN2v88internal16ClassBoilerplate23AddToPropertiesTemplateINS0_7IsolateENS0_19SwissNameDictionaryEEEvPT_NS0_6HandleIT0_EENS7_INS0_4NameEEEiNS1_9ValueKindENS0_6TaggedINS0_3SmiEEE = comdat any

$_ZN2v88internal16ClassBoilerplate21AddToElementsTemplateINS0_7IsolateEEEvPT_NS0_6HandleINS0_16NumberDictionaryEEEjiNS1_9ValueKindENS0_6TaggedINS0_3SmiEEE = comdat any

$_ZN2v88internal16ClassBoilerplate21AddToElementsTemplateINS0_12LocalIsolateEEEvPT_NS0_6HandleINS0_16NumberDictionaryEEEjiNS1_9ValueKindENS0_6TaggedINS0_3SmiEEE = comdat any

$_ZN2v88internal16ClassBoilerplate3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_PNS0_12ClassLiteralENS0_14AllocationTypeE = comdat any

$_ZN2v88internal16ObjectDescriptorINS0_7IsolateEE15CreateTemplatesEPS2_ = comdat any

$_ZN2v88internal16ObjectDescriptorINS0_7IsolateEE11AddConstantEPS2_NS0_12DirectHandleINS0_4NameEEENS5_INS0_6ObjectEEENS0_18PropertyAttributesE = comdat any

$_ZN2v88internal16ObjectDescriptorINS0_7IsolateEE16AddNamedPropertyEPS2_NS0_6HandleINS0_4NameEEENS0_16ClassBoilerplate9ValueKindEi = comdat any

$_ZN2v88internal16ClassBoilerplate3NewINS0_12LocalIsolateEEENS0_6HandleIS1_EEPT_PNS0_12ClassLiteralENS0_14AllocationTypeE = comdat any

$_ZN2v88internal16ObjectDescriptorINS0_12LocalIsolateEE15CreateTemplatesEPS2_ = comdat any

$_ZN2v88internal16ObjectDescriptorINS0_12LocalIsolateEE11AddConstantEPS2_NS0_12DirectHandleINS0_4NameEEENS5_INS0_6ObjectEEENS0_18PropertyAttributesE = comdat any

$_ZN2v88internal16ObjectDescriptorINS0_12LocalIsolateEE16AddNamedPropertyEPS2_NS0_6HandleINS0_4NameEEENS0_16ClassBoilerplate9ValueKindEi = comdat any

$_ZN2v88internal16LocalHandleScope14CloseAndEscapeINS0_16ClassBoilerplateENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_ = comdat any

$_ZN2v88internal12AccessorPair10set_setterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE = comdat any

$_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj = comdat any

$_ZSt27__throw_bad_optional_accessv = comdat any

$_ZN2v88internal19SwissNameDictionary3AddINS0_7IsolateENS0_6HandleEQsr3stdE16is_convertible_vIT0_IS1_ENS0_12DirectHandleIS1_EEEEES6_PT_S6_NS7_INS0_4NameEEENS7_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE = comdat any

$_ZN2v88internal19SwissNameDictionary11AddInternalENS0_6TaggedINS0_4NameEEENS2_INS0_6ObjectEEENS0_15PropertyDetailsE = comdat any

$_ZN2v88internal15DescriptorArray6AppendEPNS0_10DescriptorE = comdat any

$_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexENS0_6TaggedINS0_4NameEEENS3_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_15PropertyDetailsE = comdat any

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str.2 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"*dict == *dictionary\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@_ZN2v88internal18g_current_isolate_E = external thread_local(localexec) local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"!is_null()\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"descriptor_number.as_int() < number_of_descriptors()\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal16ClassBoilerplate23AddToPropertiesTemplateINS0_7IsolateENS0_14NameDictionaryEEEvPT_NS0_6HandleIT0_EENS7_INS0_4NameEEEiNS1_9ValueKindENS0_6TaggedINS0_3SmiEEE(ptr noundef %0, ptr %1, ptr %2, i32 noundef %3, i32 noundef %4, i64 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_7IsolateENS0_14NameDictionaryENS0_6HandleINS0_4NameEEEEEvPT_NS5_IT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE(ptr noundef %0, ptr %1, ptr %2, i32 noundef %3, i32 noundef %4, i64 %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_7IsolateENS0_14NameDictionaryENS0_6HandleINS0_4NameEEEEEvPT_NS5_IT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE(ptr noundef %0, ptr %1, ptr %2, i32 noundef %3, i32 noundef %4, i64 %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.v8::internal::InternalIndex", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.e = load i64, ptr %2, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic i32, ptr %i.h acquire, align 4 ; 3 uses
  %i.j = and i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.g, i32 noundef %i.i)
  br label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i

_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i: ; preds = %bb.b, %bb.a
  %.0.in.i.i.i = phi i32 [ %i.l, %bb.b ], [ %i.i, %bb.a ]
  %.0.i.i.i = lshr i32 %.0.in.i.i.i, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = lshr i64 %i.n, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = load i64, ptr %i.d, align 8              ; 2 uses
  %i.r = add i32 %i.p, -1                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.06.0.in32.i.i = and i32 %i.r, %.0.i.i.i  ; 2 uses
  %.sroa.06.033.i.i = zext nneg i32 %.sroa.06.0.in32.i.i to i64 ; 2 uses
  %i.t = mul nuw i64 %.sroa.06.033.i.i, 12884901888 ; 2 uses
  %sext.i34.i.i = add nuw i64 %i.t, 25769803776
  %i.u = ashr exact i64 %sext.i34.i.i, 29
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.q
  br i1 %i.x, label %bb.d, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i
  %i.y = load i64, ptr %2, align 8                ; 2 uses
  %.not.i9.i = icmp eq i64 %i.y, %i.w
  br i1 %.not.i9.i, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add i32 %.035.i11.i, 1
  %.not.i.i = icmp eq i64 %i.y, %i.ae
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !6

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.c
  %.035.i11.i = phi i32 [ %i.z, %bb.c ], [ 1, %.lr.ph.i.i ] ; 2 uses
  %.sroa.06.0.in37.i10.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.c ], [ %.sroa.06.0.in32.i.i, %.lr.ph.i.i ]
  %i.aa = add i32 %.sroa.06.0.in37.i10.i, %.035.i11.i
  %.sroa.06.0.in.i.i = and i32 %i.aa, %i.r        ; 2 uses
  %.sroa.06.0.i.i = zext i32 %.sroa.06.0.in.i.i to i64 ; 2 uses
  %i.ab = mul i64 %.sroa.06.0.i.i, 12884901888    ; 2 uses
  %sext.i.i.i = add i64 %i.ab, 25769803776
  %i.ac = ashr exact i64 %sext.i.i.i, 29
  %i.ad = getelementptr inbounds i8, ptr %i.s, i64 %i.ac
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.q
  br i1 %i.af, label %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i, label %bb.c, !llvm.loop !6

._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %bb.d, !llvm.loop !6

bb.d:                                             ; preds = %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i
  store i64 -1, ptr %6, align 8
  %.not146 = icmp ne i32 %4, 0
  %i.ag = zext i1 %.not146 to i32
  %i.ah = shl i32 %3, 8
  %i.ai = add i32 %i.ah, 1536
  %i.aj = or disjoint i32 %i.ai, %i.ag
  %i.ak = or disjoint i32 %i.aj, 8
  %i.al = icmp eq i32 %4, 0
  br i1 %i.al, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = icmp eq ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.f, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.ar = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #12
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.ar, %bb.f ], [ %i.an, %bb.e ] ; 3 uses
  %i.as = ptrtoint ptr %.0.i to i64
  %i.at = add i64 %i.as, 8
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %i.am, align 8
  store i64 %5, ptr %.0.i, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.av = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE15NewAccessorPairEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #12 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEE(i64 %i.aw, i32 noundef %4, i64 %5)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.0233.0 = phi ptr [ %.0.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %i.av, %bb.g ]
  %i.ax = call ptr @_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE31AddNoUpdateNextEnumerationIndexINS0_7IsolateENS0_6HandleEQsr3stdE16is_convertible_vITL0_0_IT_ENS0_12DirectHandleIS9_EEEEET0_IS2_EPS9_SE_NSB_INS0_4NameEEENSB_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef nonnull %0, ptr nonnull %1, ptr nonnull %2, ptr nonnull %.sroa.0233.0, i32 %i.ak, ptr noundef nonnull %6) #12
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = load i64, ptr %1, align 8
  %i.ba = icmp eq i64 %i.ay, %i.az
  br i1 %i.ba, label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #13
  unreachable

.loopexit:                                        ; preds = %bb.c, %.lr.ph.i.i
  %.pre-phi = phi i64 [ %i.t, %.lr.ph.i.i ], [ %i.ab, %bb.c ] ; 2 uses
  %.sroa.052.0.copyload = phi i64 [ %.sroa.06.033.i.i, %.lr.ph.i.i ], [ %.sroa.06.0.i.i, %bb.c ]
  store i64 %.sroa.052.0.copyload, ptr %6, align 8
  %i.bb = load i64, ptr %1, align 8
  %i.bc = add i64 %i.bb, -1
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %sext.i.i = add i64 %.pre-phi, 34359738368
  %i.bf = ashr exact i64 %sext.i.i, 29            ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.bf ; 8 uses
  %i.bh = load atomic volatile i64, ptr %i.bg monotonic, align 8
  %sum.shift = lshr i64 %i.bh, 40
  %i.bi = trunc nuw nsw i64 %sum.shift to i32     ; 3 uses
  %i.bj = add nsw i32 %3, 6                       ; 4 uses
  %sext.i.i155 = add i64 %.pre-phi, 30064771072
  %i.bk = ashr exact i64 %sext.i.i155, 29         ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %i.be, i64 %i.bk
  %i.bm = load atomic volatile i64, ptr %i.bl monotonic, align 8 ; 9 uses
  %i.bn = icmp eq i32 %4, 0
  %i.bo = trunc i64 %i.bm to i1                   ; 2 uses
  br i1 %i.bn, label %bb.j, label %bb.ah

bb.j:                                             ; preds = %.loopexit
  br i1 %i.bo, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154.thread

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154: ; preds = %bb.j
  %i.bp = add nsw i64 %i.bm, -1                   ; 3 uses
  %i.bq = inttoptr i64 %i.bp to ptr               ; 4 uses
  %i.br = load atomic volatile i64, ptr %i.bq monotonic, align 8
  %i.bs = add i64 %i.br, 11
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load atomic volatile i16, ptr %i.bt monotonic, align 2
  %i.bv = icmp eq i16 %i.bu, 140
  br i1 %i.bv, label %bb.k, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154.thread.thread

bb.k:                                             ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.by = and i64 %i.bx, 1
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = lshr i64 %i.bx, 32
  %i.cb = trunc nuw i64 %i.ca to i32
  %i.cc = select i1 %i.bz, i32 %i.cb, i32 -1      ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = and i64 %i.ce, 1
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = lshr i64 %i.ce, 32
  %i.ci = trunc nuw i64 %i.ch to i32
  %i.cj = select i1 %i.cg, i32 %i.ci, i32 -1      ; 2 uses
  %i.ck = icmp slt i32 %i.cc, %3                  ; 2 uses
  %i.cl = icmp slt i32 %i.cj, %3                  ; 2 uses
  %or.cond = and i1 %i.ck, %i.cl
  br i1 %or.cond, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.cm = shl i32 %i.bi, 9
  %i.cn = ashr exact i32 %i.cm, 1
  %i.co = or disjoint i32 %i.cn, 8
  %i.cp = sext i32 %i.co to i64
  %i.cq = shl nsw i64 %i.cp, 32
  store atomic volatile i64 %i.cq, ptr %i.bg monotonic, align 8
  %i.cr = load i64, ptr %1, align 8
  %i.cs = add i64 %i.cr, -1                       ; 3 uses
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %i.bk ; 2 uses
  store atomic volatile i64 %5, ptr %i.cv monotonic, align 8
  %i.cw = trunc i64 %5 to i1
  br i1 %i.cw, label %bb.m, label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.m:                                             ; preds = %bb.l
  %i.cx = or disjoint i64 %i.cs, 1                ; 2 uses
  %i.cy = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cz = and i64 %i.cs, -262144
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = load i64, ptr %i.da, align 262144       ; 2 uses
  %i.dc = and i64 %i.db, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dc, 0
  %i.dd = and i64 %i.db, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.de = and i64 %5, -262144
  %i.df = inttoptr i64 %i.de to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i = load i64, ptr %i.df, align 262144
  %i.dg = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i, 25
  %.not39.i.i.i.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not39.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cx, i64 noundef %i.cy, i64 %5) #12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.q, !prof !5

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cx, i64 %i.cy, i64 %5) #12
  br label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.r:                                             ; preds = %bb.k
  %.not = icmp ne i32 %i.cc, -1
  %brmerge.not = and i1 %.not, %i.ck
  br i1 %brmerge.not, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.di = load i64, ptr %i.dh, align 8            ; 5 uses
  store atomic volatile i64 %i.di, ptr %i.bw monotonic, align 8
  %i.dj = trunc i64 %i.di to i1
  br i1 %i.dj, label %bb.t, label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.t:                                             ; preds = %bb.s
  %i.dk = or disjoint i64 %i.bp, 1                ; 2 uses
  %i.dl = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.dm = and i64 %i.bp, -262144
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load i64, ptr %i.dn, align 262144       ; 2 uses
  %i.dp = and i64 %i.do, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.dp, 0
  %i.dq = and i64 %i.do, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not38.i.i.i.i.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dr = and i64 %i.di, -262144
  %i.ds = inttoptr i64 %i.dr to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.ds, align 262144
  %i.dt = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not39.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dk, i64 noundef %i.dl, i64 %i.di) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.x, !prof !5

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dk, i64 %i.dl, i64 %i.di) #12
  br label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.y:                                             ; preds = %bb.r
  %.not145 = icmp ne i32 %i.cj, -1
  %or.cond148 = and i1 %.not145, %i.cl
  br i1 %or.cond148, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.dv = load i64, ptr %i.du, align 8
  tail call void @_ZN2v88internal12AccessorPair10set_setterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(24) %i.bq, i64 %i.dv, i32 noundef 4)
  br label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.aa:                                            ; preds = %bb.y
  %i.dw = load atomic volatile i64, ptr %i.bg monotonic, align 8
  %i.dx = shl i32 %i.bj, 9
  %sh.diff = lshr i64 %i.dw, 31
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.dy = and i32 %tr.sh.diff, 510
  %i.dz = or disjoint i32 %i.dy, %i.dx
  %i.ea = ashr exact i32 %i.dz, 1
  %i.eb = sext i32 %i.ea to i64
  %i.ec = shl nsw i64 %i.eb, 32
  store atomic volatile i64 %i.ec, ptr %i.bg monotonic, align 8
  br label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154.thread: ; preds = %bb.j
  %i.ed = lshr i64 %i.bm, 32
  %i.ee = trunc nuw i64 %i.ed to i32
  %i.ef = icmp sgt i32 %3, %i.ee
  br i1 %i.ef, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154.thread.thread, label %bb.ag

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154.thread.thread: ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154.thread
  %i.eg = shl i32 %i.bi, 9
  %i.eh = ashr exact i32 %i.eg, 1
  %i.ei = or disjoint i32 %i.eh, 8
  %i.ej = sext i32 %i.ei to i64
  %i.ek = shl nsw i64 %i.ej, 32
  store atomic volatile i64 %i.ek, ptr %i.bg monotonic, align 8
  %i.el = load i64, ptr %1, align 8
  %i.em = add i64 %i.el, -1                       ; 3 uses
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 %i.bk ; 2 uses
  store atomic volatile i64 %5, ptr %i.ep monotonic, align 8
  %i.eq = trunc i64 %5 to i1
  br i1 %i.eq, label %bb.ab, label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.ab:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154.thread.thread
  %i.er = or disjoint i64 %i.em, 1                ; 2 uses
  %i.es = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.et = and i64 %i.em, -262144
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = load i64, ptr %i.eu, align 262144       ; 2 uses
  %i.ew = and i64 %i.ev, 32
  %.not.i.i.i.i.i.i162 = icmp eq i64 %i.ew, 0
  %i.ex = and i64 %i.ev, 25
  %.not38.i.i.i.i.i.i163 = icmp eq i64 %i.ex, 0
  br i1 %.not38.i.i.i.i.i.i163, label %bb.ac, label %bb.ae

end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_7IsolateENS0_14NameDictionaryENS0_6HandleINS0_4NameEEEEEvPT_NS5_IT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE:bb.a

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.er, i64 noundef %i.es, i64 %5) #12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  br i1 %.not.i.i.i.i.i.i162, label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.af, !prof !5

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.er, i64 %i.es, i64 %5) #12
  br label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.ag:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154.thread
  %i.fb = shl i32 %i.bj, 9
  %i.fc = ashr exact i32 %i.fb, 1
  %i.fd = or disjoint i32 %i.fc, 8
  %i.fe = sext i32 %i.fd to i64
  %i.ff = shl nsw i64 %i.fe, 32
  store atomic volatile i64 %i.ff, ptr %i.bg monotonic, align 8
  br label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.ah:                                            ; preds = %.loopexit
  br i1 %i.bo, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.ah
  %i.fg = add nsw i64 %i.bm, -1
  %i.fh = inttoptr i64 %i.fg to ptr               ; 4 uses
  %i.fi = load atomic volatile i64, ptr %i.fh monotonic, align 8
  %i.fj = add i64 %i.fi, 11
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = load atomic volatile i16, ptr %i.fk monotonic, align 2
  %i.fm = icmp eq i16 %i.fl, 140
  br i1 %i.fm, label %bb.ai, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread

bb.ai:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit
  switch i32 %4, label %bb.ar [
    i32 3, label %bb.aj
    i32 1, label %bb.ap
    i32 2, label %bb.ap
  ]

bb.aj:                                            ; preds = %bb.ai
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8 ; 2 uses
  %i.fn = and i64 %.sroa.0.0.i, 1
  %i.fo = icmp eq i64 %i.fn, 0
  %i.fp = lshr i64 %.sroa.0.0.i, 32
  %i.fq = trunc nuw i64 %i.fp to i32
  %i.fr = select i1 %i.fo, i32 %i.fq, i32 -1
  %.sroa.0.0.in.i169 = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %.sroa.0.0.i170 = load i64, ptr %.sroa.0.0.in.i169, align 8 ; 2 uses
  %i.fs = and i64 %.sroa.0.0.i170, 1
  %i.ft = icmp eq i64 %i.fs, 0
  %i.fu = lshr i64 %.sroa.0.0.i170, 32
  %i.fv = trunc nuw i64 %i.fu to i32
  %i.fw = select i1 %i.ft, i32 %i.fv, i32 -1
  %i.fx = icmp slt i32 %i.fr, %3                  ; 2 uses
  %i.fy = icmp slt i32 %i.fw, %3                  ; 2 uses
  %or.cond149 = and i1 %i.fx, %i.fy
  br i1 %or.cond149, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEENS_15ReleaseStoreTagE(i64 %i.bm, i32 noundef 3, i64 %5)
  br label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.al:                                            ; preds = %bb.aj
  br i1 %i.fx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEENS_15ReleaseStoreTagE(i64 %i.bm, i32 noundef 1, i64 %5)
  br label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.an:                                            ; preds = %bb.al
  br i1 %i.fy, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %bb.an
  %i.fz = and i64 %5, -4294967296
  %i.ga = add i64 %i.fz, 4294967296
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEENS_15ReleaseStoreTagE(i64 %i.bm, i32 noundef 2, i64 %i.ga)
  br label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.ap:                                            ; preds = %bb.ai, %bb.ai
  %.not307 = icmp eq i32 %4, 1
  %.sroa.0.0.in.v.i = select i1 %.not307, i64 8, i64 16
  %.sroa.0.0.in.i171 = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i172 = load i64, ptr %.sroa.0.0.in.i171, align 8 ; 2 uses
  %i.gb = and i64 %.sroa.0.0.i172, 1
  %i.gc = icmp eq i64 %i.gb, 0
  %i.gd = lshr i64 %.sroa.0.0.i172, 32
  %i.ge = trunc nuw i64 %i.gd to i32
  %i.gf = select i1 %i.gc, i32 %i.ge, i32 -1
  %i.gg = icmp slt i32 %i.gf, %3
  br i1 %i.gg, label %bb.aq, label %.critedge

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEENS_15ReleaseStoreTagE(i64 %i.bm, i32 noundef %4, i64 %5)
  br label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.ar:                                            ; preds = %bb.ai
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #13
  unreachable

.critedge:                                        ; preds = %bb.ap, %bb.an
  %i.gh = shl i32 %i.bj, 9
  %i.gi = ashr exact i32 %i.gh, 1
  %i.gj = or disjoint i32 %i.gi, 9
  %i.gk = sext i32 %i.gj to i64
  %i.gl = shl nsw i64 %i.gk, 32
  store atomic volatile i64 %i.gl, ptr %i.bg monotonic, align 8
  br label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.ah
  %i.gm = lshr i64 %i.bm, 32
  %i.gn = trunc nuw i64 %i.gm to i32
  %i.go = icmp sgt i32 %3, %i.gn
  br i1 %i.go, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread, label %bb.ax

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread: ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.gp = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE15NewAccessorPairEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #12 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEE(i64 %i.gq, i32 noundef %4, i64 %5)
  %i.gr = shl i32 %i.bi, 9
  %i.gs = load i64, ptr %1, align 8
  %i.gt = add i64 %i.gs, -1
  %i.gu = inttoptr i64 %i.gt to ptr
  %i.gv = ashr exact i32 %i.gr, 1
  %i.gw = or disjoint i32 %i.gv, 9
  %i.gx = sext i32 %i.gw to i64
  %i.gy = shl nsw i64 %i.gx, 32
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 %i.bf
  store atomic volatile i64 %i.gy, ptr %i.ha monotonic, align 8
  %i.hb = load i64, ptr %1, align 8
  %i.hc = add i64 %i.hb, -1                       ; 3 uses
  %i.hd = inttoptr i64 %i.hc to ptr
  %i.he = load i64, ptr %i.gp, align 8            ; 5 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 %i.bk ; 2 uses
  store atomic volatile i64 %i.he, ptr %i.hg monotonic, align 8
  %i.hh = trunc i64 %i.he to i1
  br i1 %i.hh, label %bb.as, label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.as:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread
  %i.hi = or disjoint i64 %i.hc, 1                ; 2 uses
  %i.hj = ptrtoint ptr %i.hg to i64               ; 2 uses
  %i.hk = and i64 %i.hc, -262144
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = load i64, ptr %i.hl, align 262144       ; 2 uses
  %i.hn = and i64 %i.hm, 32
  %.not.i.i.i.i.i.i176 = icmp eq i64 %i.hn, 0
  %i.ho = and i64 %i.hm, 25
  %.not38.i.i.i.i.i.i177 = icmp eq i64 %i.ho, 0
  br i1 %.not38.i.i.i.i.i.i177, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.hp = and i64 %i.he, -262144
  %i.hq = inttoptr i64 %i.hp to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i178 = load i64, ptr %i.hq, align 262144
  %i.hr = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i178, 25
  %.not39.i.i.i.i.i.i179 = icmp eq i64 %i.hr, 0
  br i1 %.not39.i.i.i.i.i.i179, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.hi, i64 noundef %i.hj, i64 %i.he) #12
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  br i1 %.not.i.i.i.i.i.i176, label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.aw, !prof !5

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.hi, i64 %i.hj, i64 %i.he) #12
  br label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.ax:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.hs = shl i32 %i.bj, 9
  %i.ht = ashr exact i32 %i.hs, 1
  %i.hu = or disjoint i32 %i.ht, 8
  %i.hv = sext i32 %i.hu to i64
  %i.hw = shl nsw i64 %i.hv, 32
  store atomic volatile i64 %i.hw, ptr %i.bg monotonic, align 8
  br label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.aw, %bb.av, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread, %.critedge, %bb.ao, %bb.am, %bb.ak, %bb.aq, %bb.af, %bb.ae, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154.thread.thread, %bb.z, %bb.aa, %bb.l, %bb.p, %bb.q, %bb.s, %bb.w, %bb.x, %bb.h, %bb.ag, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal16ClassBoilerplate23AddToPropertiesTemplateINS0_12LocalIsolateENS0_14NameDictionaryEEEvPT_NS0_6HandleIT0_EENS7_INS0_4NameEEEiNS1_9ValueKindENS0_6TaggedINS0_3SmiEEE(ptr noundef %0, ptr %1, ptr %2, i32 noundef %3, i32 noundef %4, i64 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_12LocalIsolateENS0_14NameDictionaryENS0_6HandleINS0_4NameEEEEEvPT_NS5_IT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE(ptr noundef %0, ptr %1, ptr %2, i32 noundef %3, i32 noundef %4, i64 %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_12LocalIsolateENS0_14NameDictionaryENS0_6HandleINS0_4NameEEEEEvPT_NS5_IT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE(ptr noundef %0, ptr %1, ptr %2, i32 noundef %3, i32 noundef %4, i64 %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.v8::internal::InternalIndex", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.d = load i64, ptr %2, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load atomic i32, ptr %i.g acquire, align 4 ; 3 uses
  %i.i = and i32 %i.h, 1
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.f, i32 noundef %i.h)
  br label %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i

_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i: ; preds = %bb.b, %bb.a
  %.0.in.i.i.i = phi i32 [ %i.k, %bb.b ], [ %i.h, %bb.a ]
  %.0.i.i.i = lshr i32 %.0.in.i.i.i, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = lshr i64 %i.m, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = load i64, ptr %.sroa.0.0.copyload.i.i, align 8 ; 2 uses
  %i.q = add i32 %i.o, -1                         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.06.0.in32.i.i = and i32 %i.q, %.0.i.i.i  ; 2 uses
  %.sroa.06.033.i.i = zext nneg i32 %.sroa.06.0.in32.i.i to i64 ; 2 uses
  %i.s = mul nuw i64 %.sroa.06.033.i.i, 12884901888 ; 2 uses
  %sext.i34.i.i = add nuw i64 %i.s, 25769803776
  %i.t = ashr exact i64 %sext.i34.i.i, 29
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.p
  br i1 %i.w, label %bb.d, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i
  %i.x = load i64, ptr %2, align 8                ; 2 uses
  %.not.i8.i = icmp eq i64 %i.x, %i.v
  br i1 %.not.i8.i, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = add i32 %.035.i10.i, 1
  %.not.i.i = icmp eq i64 %i.x, %i.ad
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !6

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.c
  %.035.i10.i = phi i32 [ %i.y, %bb.c ], [ 1, %.lr.ph.i.i ] ; 2 uses
  %.sroa.06.0.in37.i9.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.c ], [ %.sroa.06.0.in32.i.i, %.lr.ph.i.i ]
  %i.z = add i32 %.sroa.06.0.in37.i9.i, %.035.i10.i
  %.sroa.06.0.in.i.i = and i32 %i.z, %i.q         ; 2 uses
  %.sroa.06.0.i.i = zext i32 %.sroa.06.0.in.i.i to i64 ; 2 uses
  %i.aa = mul i64 %.sroa.06.0.i.i, 12884901888    ; 2 uses
  %sext.i.i.i = add i64 %i.aa, 25769803776
  %i.ab = ashr exact i64 %sext.i.i.i, 29
  %i.ac = getelementptr inbounds i8, ptr %i.r, i64 %i.ab
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.p
  br i1 %i.ae, label %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i, label %bb.c, !llvm.loop !6

._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %bb.d, !llvm.loop !6

bb.d:                                             ; preds = %_ZN2v88internal23BaseNameDictionaryShape4HashENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEE.exit.i, %._ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_4NameEEEi.exit.loopexit_crit_edge.i
  store i64 -1, ptr %6, align 8
  %.not146 = icmp ne i32 %4, 0
  %i.af = zext i1 %.not146 to i32
  %i.ag = shl i32 %3, 8
  %i.ah = add i32 %i.ag, 1536
  %i.ai = or disjoint i32 %i.ah, %i.af
  %i.aj = or disjoint i32 %i.ai, 8
  %i.ak = icmp eq i32 %4, 0
  br i1 %i.ak, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i8, ptr %i.al, align 8, !range !9, !noundef !10
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.ao, i64 noundef %5) #12
  br label %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8            ; 5 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ar) #12
  %.pre = load ptr, ptr %i.ar, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = phi ptr [ %.pre, %bb.h ], [ %i.as, %bb.g ]
  %.0.i = phi ptr [ %i.aw, %bb.h ], [ %i.as, %bb.g ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ay, ptr %i.ar, align 8
  store i64 %5, ptr %.0.i, align 8
  br label %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit

bb.j:                                             ; preds = %bb.d
  %i.az = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE15NewAccessorPairEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #12 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEE(i64 %i.ba, i32 noundef %4, i64 %5)
  br label %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit

_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit: ; preds = %bb.i, %bb.f, %bb.j
  %.sroa.0234.0 = phi ptr [ %i.az, %bb.j ], [ %i.ap, %bb.f ], [ %.0.i, %bb.i ]
  %i.bb = call ptr @_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE31AddNoUpdateNextEnumerationIndexINS0_12LocalIsolateENS0_6HandleEQsr3stdE16is_convertible_vITL0_0_IT_ENS0_12DirectHandleIS9_EEEEET0_IS2_EPS9_SE_NSB_INS0_4NameEEENSB_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef nonnull %0, ptr nonnull %1, ptr nonnull %2, ptr %.sroa.0234.0, i32 %i.aj, ptr noundef nonnull %6) #12
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = load i64, ptr %1, align 8
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.k, !prof !5

bb.k:                                             ; preds = %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #13
  unreachable

.loopexit:                                        ; preds = %bb.c, %.lr.ph.i.i
  %.pre-phi = phi i64 [ %i.s, %.lr.ph.i.i ], [ %i.aa, %bb.c ] ; 2 uses
  %.sroa.052.0.copyload = phi i64 [ %.sroa.06.033.i.i, %.lr.ph.i.i ], [ %.sroa.06.0.i.i, %bb.c ]
  store i64 %.sroa.052.0.copyload, ptr %6, align 8
  %i.bf = load i64, ptr %1, align 8
  %i.bg = add i64 %i.bf, -1
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %sext.i.i = add i64 %.pre-phi, 34359738368
  %i.bj = ashr exact i64 %sext.i.i, 29            ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %i.bj ; 8 uses
  %i.bl = load atomic volatile i64, ptr %i.bk monotonic, align 8
  %sum.shift = lshr i64 %i.bl, 40
  %i.bm = trunc nuw nsw i64 %sum.shift to i32     ; 3 uses
  %i.bn = add nsw i32 %3, 6                       ; 4 uses
  %sext.i.i155 = add i64 %.pre-phi, 30064771072
  %i.bo = ashr exact i64 %sext.i.i155, 29         ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bi, i64 %i.bo
  %i.bq = load atomic volatile i64, ptr %i.bp monotonic, align 8 ; 9 uses
  %i.br = icmp eq i32 %4, 0
  %i.bs = trunc i64 %i.bq to i1                   ; 2 uses
  br i1 %i.br, label %bb.l, label %bb.aj

bb.l:                                             ; preds = %.loopexit
  br i1 %i.bs, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154.thread

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154: ; preds = %bb.l
  %i.bt = add nsw i64 %i.bq, -1                   ; 3 uses
  %i.bu = inttoptr i64 %i.bt to ptr               ; 4 uses
  %i.bv = load atomic volatile i64, ptr %i.bu monotonic, align 8
  %i.bw = add i64 %i.bv, 11
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load atomic volatile i16, ptr %i.bx monotonic, align 2
  %i.bz = icmp eq i16 %i.by, 140
  br i1 %i.bz, label %bb.m, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154.thread.thread

bb.m:                                             ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8            ; 2 uses
  %i.cc = and i64 %i.cb, 1
  %i.cd = icmp eq i64 %i.cc, 0
  %i.ce = lshr i64 %i.cb, 32
  %i.cf = trunc nuw i64 %i.ce to i32
  %i.cg = select i1 %i.cd, i32 %i.cf, i32 -1      ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ci = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.cj = and i64 %i.ci, 1
  %i.ck = icmp eq i64 %i.cj, 0
  %i.cl = lshr i64 %i.ci, 32
  %i.cm = trunc nuw i64 %i.cl to i32
  %i.cn = select i1 %i.ck, i32 %i.cm, i32 -1      ; 2 uses
  %i.co = icmp slt i32 %i.cg, %3                  ; 2 uses
  %i.cp = icmp slt i32 %i.cn, %3                  ; 2 uses
  %or.cond = and i1 %i.co, %i.cp
  br i1 %or.cond, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.cq = shl i32 %i.bm, 9
  %i.cr = ashr exact i32 %i.cq, 1
  %i.cs = or disjoint i32 %i.cr, 8
  %i.ct = sext i32 %i.cs to i64
  %i.cu = shl nsw i64 %i.ct, 32
  store atomic volatile i64 %i.cu, ptr %i.bk monotonic, align 8
  %i.cv = load i64, ptr %1, align 8
  %i.cw = add i64 %i.cv, -1                       ; 3 uses
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 %i.bo ; 2 uses
  store atomic volatile i64 %5, ptr %i.cz monotonic, align 8
  %i.da = trunc i64 %5 to i1
  br i1 %i.da, label %bb.o, label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.o:                                             ; preds = %bb.n
  %i.db = or disjoint i64 %i.cw, 1                ; 2 uses
  %i.dc = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dd = and i64 %i.cw, -262144
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = load i64, ptr %i.de, align 262144       ; 2 uses
  %i.dg = and i64 %i.df, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dg, 0
  %i.dh = and i64 %i.df, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.di = and i64 %5, -262144
  %i.dj = inttoptr i64 %i.di to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i = load i64, ptr %i.dj, align 262144
  %i.dk = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i, 25
  %.not39.i.i.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not39.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.db, i64 noundef %i.dc, i64 %5) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.s, !prof !5

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.db, i64 %i.dc, i64 %5) #12
  br label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.t:                                             ; preds = %bb.m
  %.not = icmp ne i32 %i.cg, -1
  %brmerge.not = and i1 %.not, %i.co
  br i1 %brmerge.not, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 664
  %i.do = load i64, ptr %i.dn, align 8            ; 5 uses
  store atomic volatile i64 %i.do, ptr %i.ca monotonic, align 8
  %i.dp = trunc i64 %i.do to i1
  br i1 %i.dp, label %bb.v, label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.v:                                             ; preds = %bb.u
  %i.dq = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.dr = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.ds = and i64 %i.bt, -262144
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = load i64, ptr %i.dt, align 262144       ; 2 uses
  %i.dv = and i64 %i.du, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.dv, 0
  %i.dw = and i64 %i.du, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not38.i.i.i.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dx = and i64 %i.do, -262144
  %i.dy = inttoptr i64 %i.dx to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.dy, align 262144
  %i.dz = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not39.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dq, i64 noundef %i.dr, i64 %i.do) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.z, !prof !5

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dq, i64 %i.dr, i64 %i.do) #12
  br label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.aa:                                            ; preds = %bb.t
  %.not145 = icmp ne i32 %i.cn, -1
  %or.cond148 = and i1 %.not145, %i.cp
  br i1 %or.cond148, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 664
  %i.ed = load i64, ptr %i.ec, align 8
  tail call void @_ZN2v88internal12AccessorPair10set_setterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(24) %i.bu, i64 %i.ed, i32 noundef 4)
  br label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ee = load atomic volatile i64, ptr %i.bk monotonic, align 8
  %i.ef = shl i32 %i.bn, 9
  %sh.diff = lshr i64 %i.ee, 31
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.eg = and i32 %tr.sh.diff, 510
  %i.eh = or disjoint i32 %i.eg, %i.ef
  %i.ei = ashr exact i32 %i.eh, 1
  %i.ej = sext i32 %i.ei to i64
  %i.ek = shl nsw i64 %i.ej, 32
  store atomic volatile i64 %i.ek, ptr %i.bk monotonic, align 8
  br label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154.thread: ; preds = %bb.l
  %i.el = lshr i64 %i.bq, 32
  %i.em = trunc nuw i64 %i.el to i32
  %i.en = icmp sgt i32 %3, %i.em
  br i1 %i.en, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154.thread.thread, label %bb.ai

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154.thread.thread: ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154.thread
  %i.eo = shl i32 %i.bm, 9
  %i.ep = ashr exact i32 %i.eo, 1
  %i.eq = or disjoint i32 %i.ep, 8
  %i.er = sext i32 %i.eq to i64
  %i.es = shl nsw i64 %i.er, 32
  store atomic volatile i64 %i.es, ptr %i.bk monotonic, align 8
  %i.et = load i64, ptr %1, align 8
  %i.eu = add i64 %i.et, -1                       ; 3 uses
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 %i.bo ; 2 uses
  store atomic volatile i64 %5, ptr %i.ex monotonic, align 8
  %i.ey = trunc i64 %5 to i1
  br i1 %i.ey, label %bb.ad, label %_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.ad:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit154.thread.thread
  %i.ez = or disjoint i64 %i.eu, 1                ; 2 uses
  %i.fa = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.fb = and i64 %i.eu, -262144
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = load i64, ptr %i.fc, align 262144       ; 2 uses
  %i.fe = and i64 %i.fd, 32
  %.not.i.i.i.i.i.i163 = icmp eq i64 %i.fe, 0
end_hunk_1
begin_hunk_2_@_ZN2v88internal16ClassBoilerplate23AddToPropertiesTemplateINS0_7IsolateENS0_19SwissNameDictionaryEEEvPT_NS0_6HandleIT0_EENS7_INS0_4NameEEEiNS1_9ValueKindENS0_6TaggedINS0_3SmiEEE:bb.a
bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.eu, i64 %i.ev, i64 %5) #12
  br label %_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_7IsolateENS0_19SwissNameDictionaryENS0_6HandleINS0_4NameEEEEEvPT_NS5_IT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE.exit

bb.ah:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit151.thread.i
  %i.fg = add i64 %i.bq, 11
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = mul i32 %i.fi, 17
  %i.fk = add i32 %i.fj, 40
  %i.fl = sext i32 %i.fk to i64
  %i.fm = add i64 %i.bq, -1
  %i.fn = add i64 %i.fm, %i.fl
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 %i.aw
  store i8 8, ptr %i.fp, align 1
  br label %_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_7IsolateENS0_19SwissNameDictionaryENS0_6HandleINS0_4NameEEEEEvPT_NS5_IT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE.exit

bb.ai:                                            ; preds = %bb.k
  br i1 %i.by, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.ai
  %i.fq = add nsw i64 %i.bw, -1
  %i.fr = inttoptr i64 %i.fq to ptr               ; 4 uses
  %i.fs = load atomic volatile i64, ptr %i.fr monotonic, align 8
  %i.ft = add i64 %i.fs, 11
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = load atomic volatile i16, ptr %i.fu monotonic, align 2
  %i.fw = icmp eq i16 %i.fv, 140
  br i1 %i.fw, label %bb.aj, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread.i

bb.aj:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i
  switch i32 %4, label %bb.as [
    i32 3, label %bb.ak
    i32 1, label %bb.aq
    i32 2, label %bb.aq
  ]

bb.ak:                                            ; preds = %bb.aj
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8 ; 2 uses
  %i.fx = and i64 %.sroa.0.0.i.i, 1
  %i.fy = icmp eq i64 %i.fx, 0
  %i.fz = lshr i64 %.sroa.0.0.i.i, 32
  %i.ga = trunc nuw i64 %i.fz to i32
  %i.gb = select i1 %i.fy, i32 %i.ga, i32 -1
  %.sroa.0.0.in.i169.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %.sroa.0.0.i170.i = load i64, ptr %.sroa.0.0.in.i169.i, align 8 ; 2 uses
  %i.gc = and i64 %.sroa.0.0.i170.i, 1
  %i.gd = icmp eq i64 %i.gc, 0
  %i.ge = lshr i64 %.sroa.0.0.i170.i, 32
  %i.gf = trunc nuw i64 %i.ge to i32
  %i.gg = select i1 %i.gd, i32 %i.gf, i32 -1
  %i.gh = icmp slt i32 %i.gb, %3                  ; 2 uses
  %i.gi = icmp slt i32 %i.gg, %3                  ; 2 uses
  %or.cond146.i = and i1 %i.gh, %i.gi
  br i1 %or.cond146.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEENS_15ReleaseStoreTagE(i64 %i.bw, i32 noundef 3, i64 %5)
  br label %_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_7IsolateENS0_19SwissNameDictionaryENS0_6HandleINS0_4NameEEEEEvPT_NS5_IT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE.exit

bb.am:                                            ; preds = %bb.ak
  br i1 %i.gh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEENS_15ReleaseStoreTagE(i64 %i.bw, i32 noundef 1, i64 %5)
  br label %_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_7IsolateENS0_19SwissNameDictionaryENS0_6HandleINS0_4NameEEEEEvPT_NS5_IT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE.exit

bb.ao:                                            ; preds = %bb.am
  br i1 %i.gi, label %bb.ap, label %.critedge.i

bb.ap:                                            ; preds = %bb.ao
  %i.gj = and i64 %5, -4294967296
  %i.gk = add i64 %i.gj, 4294967296
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEENS_15ReleaseStoreTagE(i64 %i.bw, i32 noundef 2, i64 %i.gk)
  br label %_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_7IsolateENS0_19SwissNameDictionaryENS0_6HandleINS0_4NameEEEEEvPT_NS5_IT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE.exit

bb.aq:                                            ; preds = %bb.aj, %bb.aj
  %.not359.i = icmp eq i32 %4, 1
  %.sroa.0.0.in.v.i.i = select i1 %.not359.i, i64 8, i64 16
  %.sroa.0.0.in.i171.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.0.0.in.v.i.i
  %.sroa.0.0.i172.i = load i64, ptr %.sroa.0.0.in.i171.i, align 8 ; 2 uses
  %i.gl = and i64 %.sroa.0.0.i172.i, 1
  %i.gm = icmp eq i64 %i.gl, 0
  %i.gn = lshr i64 %.sroa.0.0.i172.i, 32
  %i.go = trunc nuw i64 %i.gn to i32
  %i.gp = select i1 %i.gm, i32 %i.go, i32 -1
  %i.gq = icmp slt i32 %i.gp, %3
  br i1 %i.gq, label %bb.ar, label %.critedge.i

bb.ar:                                            ; preds = %bb.aq
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEENS_15ReleaseStoreTagE(i64 %i.bw, i32 noundef %4, i64 %5)
  br label %_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_7IsolateENS0_19SwissNameDictionaryENS0_6HandleINS0_4NameEEEEEvPT_NS5_IT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE.exit

bb.as:                                            ; preds = %bb.aj
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #13
  unreachable

.critedge.i:                                      ; preds = %bb.aq, %bb.ao
  %i.gr = add i64 %i.bq, 11
  %i.gs = inttoptr i64 %i.gr to ptr
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = mul i32 %i.gt, 17
  %i.gv = add i32 %i.gu, 40
  %i.gw = sext i32 %i.gv to i64
  %i.gx = add i64 %i.bq, -1
  %i.gy = add i64 %i.gx, %i.gw
  %i.gz = inttoptr i64 %i.gy to ptr
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 %i.aw
  store i8 9, ptr %i.ha, align 1
  br label %_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_7IsolateENS0_19SwissNameDictionaryENS0_6HandleINS0_4NameEEEEEvPT_NS5_IT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE.exit

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %bb.ai
  %i.hb = lshr i64 %i.bw, 32
  %i.hc = trunc nuw i64 %i.hb to i32
  %i.hd = icmp sgt i32 %3, %i.hc
  br i1 %i.hd, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread.i, label %bb.ay

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread.i: ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.he = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE15NewAccessorPairEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #12 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEE(i64 %i.hf, i32 noundef %4, i64 %5)
  %i.hg = load i64, ptr %1, align 8               ; 2 uses
  %i.hh = add i64 %i.hg, 11
  %i.hi = inttoptr i64 %i.hh to ptr
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = mul i32 %i.hj, 17
  %i.hl = add i32 %i.hk, 40
  %i.hm = sext i32 %i.hl to i64
  %i.hn = add i64 %i.hg, -1
  %i.ho = add i64 %i.hn, %i.hm
  %i.hp = inttoptr i64 %i.ho to ptr
  %i.hq = getelementptr inbounds i8, ptr %i.hp, i64 %i.aw
  store i8 9, ptr %i.hq, align 1
  %i.hr = load i64, ptr %1, align 8               ; 4 uses
  %i.hs = load i64, ptr %i.he, align 8            ; 5 uses
  %i.ht = add i64 %i.hr, %i.bt                    ; 3 uses
  %i.hu = inttoptr i64 %i.ht to ptr
  store atomic volatile i64 %i.hs, ptr %i.hu monotonic, align 8
  %i.hv = trunc i64 %i.hs to i1
  br i1 %i.hv, label %bb.at, label %_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_7IsolateENS0_19SwissNameDictionaryENS0_6HandleINS0_4NameEEEEEvPT_NS5_IT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE.exit

bb.at:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread.i
  %i.hw = and i64 %i.hr, -262144
  %i.hx = inttoptr i64 %i.hw to ptr
  %i.hy = load i64, ptr %i.hx, align 262144       ; 2 uses
  %i.hz = and i64 %i.hy, 32
  %.not.i.i.i.i.i177.i = icmp eq i64 %i.hz, 0
  %i.ia = and i64 %i.hy, 25
  %.not38.i.i.i.i.i178.i = icmp eq i64 %i.ia, 0
  br i1 %.not38.i.i.i.i.i178.i, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ib = and i64 %i.hs, -262144
  %i.ic = inttoptr i64 %i.ib to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i179.i = load i64, ptr %i.ic, align 262144
  %i.id = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i179.i, 25
  %.not39.i.i.i.i.i180.i = icmp eq i64 %i.id, 0
  br i1 %.not39.i.i.i.i.i180.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.hr, i64 noundef %i.ht, i64 %i.hs) #12
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  br i1 %.not.i.i.i.i.i177.i, label %_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_7IsolateENS0_19SwissNameDictionaryENS0_6HandleINS0_4NameEEEEEvPT_NS5_IT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE.exit, label %bb.ax, !prof !5

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.hr, i64 %i.ht, i64 %i.hs) #12
  br label %_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_7IsolateENS0_19SwissNameDictionaryENS0_6HandleINS0_4NameEEEEEvPT_NS5_IT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE.exit

bb.ay:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  %i.ie = add i64 %i.bq, 11
  %i.if = inttoptr i64 %i.ie to ptr
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = mul i32 %i.ig, 17
  %i.ii = add i32 %i.ih, 40
  %i.ij = sext i32 %i.ii to i64
  %i.ik = add i64 %i.bq, -1
  %i.il = add i64 %i.ik, %i.ij
  %i.im = inttoptr i64 %i.il to ptr
  %i.in = getelementptr inbounds i8, ptr %i.im, i64 %i.aw
  store i8 8, ptr %i.in, align 1
  br label %_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_7IsolateENS0_19SwissNameDictionaryENS0_6HandleINS0_4NameEEEEEvPT_NS5_IT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE.exit

_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_7IsolateENS0_19SwissNameDictionaryENS0_6HandleINS0_4NameEEEEEvPT_NS5_IT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE.exit: ; preds = %bb.i, %bb.n, %bb.r, %bb.s, %bb.u, %bb.y, %bb.z, %bb.aa, %bb.ab, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit151.thread.thread.i, %bb.af, %bb.ag, %bb.ah, %bb.al, %bb.an, %bb.ap, %bb.ar, %.critedge.i, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread.i, %bb.aw, %bb.ax, %bb.ay
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal16ClassBoilerplate21AddToElementsTemplateINS0_7IsolateEEEvPT_NS0_6HandleINS0_16NumberDictionaryEEEjiNS1_9ValueKindENS0_6TaggedINS0_3SmiEEE(ptr noundef %0, ptr %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_7IsolateENS0_16NumberDictionaryEjEEvPT_NS0_6HandleIT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE(ptr noundef %0, ptr %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_7IsolateENS0_16NumberDictionaryEjEEvPT_NS0_6HandleIT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE(ptr noundef %0, ptr %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.v8::internal::InternalIndex", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = tail call noundef i32 @_Z11halfsiphashjm(i32 noundef %2, i64 noundef %i.j) #12
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = lshr i64 %i.m, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = load i64, ptr %i.d, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i32 %i.o, -1                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.06.0.in33.i.i = and i32 %i.s, %i.k       ; 2 uses
  %.sroa.06.034.i.i = zext i32 %.sroa.06.0.in33.i.i to i64 ; 2 uses
  %i.u = mul i64 %.sroa.06.034.i.i, 12884901888
  %sext.i35.i.i = add i64 %i.u, 17179869184
  %i.v = ashr exact i64 %sext.i35.i.i, 29
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.p
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.e
  %i.z = phi i64 [ %i.ar, %bb.e ], [ %i.x, %bb.a ] ; 4 uses
  %.sroa.042.0.copyload = phi i64 [ %.sroa.06.0.i.i, %bb.e ], [ %.sroa.06.034.i.i, %bb.a ] ; 2 uses
  %.sroa.06.0.in37.i.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.e ], [ %.sroa.06.0.in33.i.i, %bb.a ]
  %.036.i.i = phi i32 [ %i.am, %bb.e ], [ 1, %bb.a ] ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.r
  br i1 %i.aa, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.ab = and i64 %i.z, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = lshr i64 %i.z, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = sitofp i32 %i.ae to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ag = add nsw i64 %i.z, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %i.ai, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.d, %bb.c
  %i.aj = phi double [ %i.af, %bb.c ], [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.d ]
  %i.ak = fptoui double %i.aj to i32
  %i.al = icmp eq i32 %2, %i.ak
  br i1 %i.al, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i, %.lr.ph.i.i
  %i.am = add i32 %.036.i.i, 1
  %i.an = add i32 %.036.i.i, %.sroa.06.0.in37.i.i
  %.sroa.06.0.in.i.i = and i32 %i.an, %i.s        ; 2 uses
  %.sroa.06.0.i.i = zext i32 %.sroa.06.0.in.i.i to i64 ; 2 uses
  %i.ao = mul i64 %.sroa.06.0.i.i, 12884901888
  %sext.i.i.i = add i64 %i.ao, 17179869184
  %i.ap = ashr exact i64 %sext.i.i.i, 29
  %i.aq = getelementptr inbounds i8, ptr %i.t, i64 %i.ap
  %i.ar = load atomic volatile i64, ptr %i.aq monotonic, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.p
  br i1 %i.as, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !12

.loopexit:                                        ; preds = %bb.e, %bb.a
  store i64 -1, ptr %6, align 8
  %.not128 = icmp ne i32 %4, 0
  %i.at = zext i1 %.not128 to i32
  %i.au = or disjoint i32 %i.at, 8
  %i.av = icmp eq i32 %4, 0
  br i1 %i.av, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.loopexit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.g, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.bb = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #12
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.bb, %bb.g ], [ %i.ax, %bb.f ] ; 3 uses
  %i.bc = ptrtoint ptr %.0.i to i64
  %i.bd = add i64 %i.bc, 8
  %i.be = inttoptr i64 %i.bd to ptr
  store ptr %i.be, ptr %i.aw, align 8
  store i64 %5, ptr %.0.i, align 8
  br label %bb.i

bb.h:                                             ; preds = %.loopexit
  %i.bf = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE15NewAccessorPairEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #12 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEE(i64 %i.bg, i32 noundef %4, i64 %5)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.0194.0 = phi ptr [ %.0.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %i.bf, %bb.h ]
  %i.bh = call ptr @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE3AddINS0_7IsolateENS0_6HandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS0_12DirectHandleISA_EEEEET0_IS2_EPSA_SF_jNSC_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef nonnull %0, ptr nonnull %1, i32 noundef %2, ptr nonnull %.sroa.0194.0, i32 %i.au, ptr noundef nonnull %6) #12
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = load i64, ptr %1, align 8
  %i.bk = icmp eq i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.k, label %bb.j, !prof !5

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #13
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bl = add i64 %i.bi, -1
  %i.bm = inttoptr i64 %i.bl to ptr
  call void @_ZN2v88internal16NumberDictionary18UpdateMaxNumberKeyEjNS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.bm, i32 noundef %2, ptr null) #12
  %i.bn = load i64, ptr %1, align 8
  %i.bo = add i64 %i.bn, -1
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store atomic volatile i64 4294967296, ptr %i.bq monotonic, align 8
  br label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.l:                                             ; preds = %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i
  store i64 %.sroa.042.0.copyload, ptr %6, align 8
  %i.br = load i64, ptr %1, align 8
  %i.bs = add i64 %i.br, -1
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.bv = mul i64 %.sroa.042.0.copyload, 12884901888 ; 2 uses
  %sext.i.i = add i64 %i.bv, 25769803776
  %i.bw = ashr exact i64 %sext.i.i, 29            ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bu, i64 %i.bw ; 3 uses
  %i.by = load atomic volatile i64, ptr %i.bx monotonic, align 8
  %sum.shift = lshr i64 %i.by, 40
  %i.bz = trunc nuw nsw i64 %sum.shift to i32     ; 3 uses
  %sext.i.i133 = add i64 %i.bv, 21474836480
  %i.ca = ashr exact i64 %sext.i.i133, 29         ; 4 uses
  %i.cb = getelementptr inbounds i8, ptr %i.bu, i64 %i.ca
  %i.cc = load atomic volatile i64, ptr %i.cb monotonic, align 8 ; 9 uses
  %i.cd = icmp eq i32 %4, 0
  %i.ce = trunc i64 %i.cc to i1                   ; 2 uses
  br i1 %i.cd, label %bb.m, label %bb.ai

bb.m:                                             ; preds = %bb.l
  br i1 %i.ce, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132.thread

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132: ; preds = %bb.m
  %i.cf = add nsw i64 %i.cc, -1                   ; 3 uses
  %i.cg = inttoptr i64 %i.cf to ptr               ; 4 uses
  %i.ch = load atomic volatile i64, ptr %i.cg monotonic, align 8
  %i.ci = add i64 %i.ch, 11
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load atomic volatile i16, ptr %i.cj monotonic, align 2
  %i.cl = icmp eq i16 %i.ck, 140
  br i1 %i.cl, label %bb.n, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132.thread.thread

bb.n:                                             ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8            ; 2 uses
  %i.co = and i64 %i.cn, 1
  %i.cp = icmp eq i64 %i.co, 0
  %i.cq = lshr i64 %i.cn, 32
  %i.cr = trunc nuw i64 %i.cq to i32
  %i.cs = select i1 %i.cp, i32 %i.cr, i32 -1      ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cu = load i64, ptr %i.ct, align 8            ; 2 uses
  %i.cv = and i64 %i.cu, 1
  %i.cw = icmp eq i64 %i.cv, 0
  %i.cx = lshr i64 %i.cu, 32
  %i.cy = trunc nuw i64 %i.cx to i32
  %i.cz = select i1 %i.cw, i32 %i.cy, i32 -1      ; 2 uses
  %i.da = icmp slt i32 %i.cs, %3                  ; 2 uses
  %i.db = icmp slt i32 %i.cz, %3                  ; 2 uses
  %or.cond = and i1 %i.da, %i.db
  br i1 %or.cond, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.dc = shl i32 %i.bz, 9
  %i.dd = ashr exact i32 %i.dc, 1
  %i.de = or disjoint i32 %i.dd, 8
  %i.df = sext i32 %i.de to i64
  %i.dg = shl nsw i64 %i.df, 32
  store atomic volatile i64 %i.dg, ptr %i.bx monotonic, align 8
  %i.dh = load i64, ptr %1, align 8
  %i.di = add i64 %i.dh, -1                       ; 3 uses
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.ca ; 2 uses
  store atomic volatile i64 %5, ptr %i.dl monotonic, align 8
  %i.dm = trunc i64 %5 to i1
  br i1 %i.dm, label %bb.p, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.p:                                             ; preds = %bb.o
  %i.dn = or disjoint i64 %i.di, 1                ; 2 uses
  %i.do = ptrtoint ptr %i.dl to i64               ; 2 uses
  %i.dp = and i64 %i.di, -262144
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = load i64, ptr %i.dq, align 262144       ; 2 uses
  %i.ds = and i64 %i.dr, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ds, 0
  %i.dt = and i64 %i.dr, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.du = and i64 %5, -262144
  %i.dv = inttoptr i64 %i.du to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i = load i64, ptr %i.dv, align 262144
  %i.dw = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i, 25
  %.not39.i.i.i.i.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not39.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dn, i64 noundef %i.do, i64 %5) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.t, !prof !5

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dn, i64 %i.do, i64 %5) #12
  br label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.u:                                             ; preds = %bb.n
  %.not = icmp ne i32 %i.cs, -1
  %brmerge.not = and i1 %.not, %i.da
  br i1 %brmerge.not, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.dy = load i64, ptr %i.dx, align 8            ; 5 uses
  store atomic volatile i64 %i.dy, ptr %i.cm monotonic, align 8
  %i.dz = trunc i64 %i.dy to i1
  br i1 %i.dz, label %bb.w, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.w:                                             ; preds = %bb.v
  %i.ea = or disjoint i64 %i.cf, 1                ; 2 uses
  %i.eb = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.ec = and i64 %i.cf, -262144
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = load i64, ptr %i.ed, align 262144       ; 2 uses
  %i.ef = and i64 %i.ee, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ef, 0
  %i.eg = and i64 %i.ee, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.eg, 0
  br i1 %.not38.i.i.i.i.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.eh = and i64 %i.dy, -262144
  %i.ei = inttoptr i64 %i.eh to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.ei, align 262144
  %i.ej = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not39.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ea, i64 noundef %i.eb, i64 %i.dy) #12
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.aa, !prof !5

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ea, i64 %i.eb, i64 %i.dy) #12
  br label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.ab:                                            ; preds = %bb.u
  %.not127 = icmp ne i32 %i.cz, -1
  %or.cond130 = and i1 %.not127, %i.db
  br i1 %or.cond130, label %bb.ac, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.el = load i64, ptr %i.ek, align 8
  tail call void @_ZN2v88internal12AccessorPair10set_setterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(24) %i.cg, i64 %i.el, i32 noundef 4)
  br label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132.thread: ; preds = %bb.m
  %i.em = lshr i64 %i.cc, 32
  %i.en = trunc nuw i64 %i.em to i32
  %i.eo = icmp sgt i32 %3, %i.en
  br i1 %i.eo, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132.thread.thread, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132.thread.thread: ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132.thread
  %i.ep = shl i32 %i.bz, 9
  %i.eq = ashr exact i32 %i.ep, 1
  %i.er = or disjoint i32 %i.eq, 8
  %i.es = sext i32 %i.er to i64
  %i.et = shl nsw i64 %i.es, 32
  store atomic volatile i64 %i.et, ptr %i.bx monotonic, align 8
  %i.eu = load i64, ptr %1, align 8
  %i.ev = add i64 %i.eu, -1                       ; 3 uses
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 %i.ca ; 2 uses
  store atomic volatile i64 %5, ptr %i.ey monotonic, align 8
  %i.ez = trunc i64 %5 to i1
  br i1 %i.ez, label %bb.ad, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.ad:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132.thread.thread
  %i.fa = or disjoint i64 %i.ev, 1                ; 2 uses
  %i.fb = ptrtoint ptr %i.ey to i64               ; 2 uses
  %i.fc = and i64 %i.ev, -262144
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = load i64, ptr %i.fd, align 262144       ; 2 uses
  %i.ff = and i64 %i.fe, 32
  %.not.i.i.i.i.i.i137 = icmp eq i64 %i.ff, 0
  %i.fg = and i64 %i.fe, 25
  %.not38.i.i.i.i.i.i138 = icmp eq i64 %i.fg, 0
  br i1 %.not38.i.i.i.i.i.i138, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.fh = and i64 %5, -262144
  %i.fi = inttoptr i64 %i.fh to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i139 = load i64, ptr %i.fi, align 262144
  %i.fj = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i139, 25
  %.not39.i.i.i.i.i.i140 = icmp eq i64 %i.fj, 0
  br i1 %.not39.i.i.i.i.i.i140, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fa, i64 noundef %i.fb, i64 %5) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  br i1 %.not.i.i.i.i.i.i137, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.ah, !prof !5

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fa, i64 %i.fb, i64 %5) #12
  br label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.ai:                                            ; preds = %bb.l
  br i1 %i.ce, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.ai
  %i.fk = add nsw i64 %i.cc, -1
  %i.fl = inttoptr i64 %i.fk to ptr               ; 4 uses
  %i.fm = load atomic volatile i64, ptr %i.fl monotonic, align 8
  %i.fn = add i64 %i.fm, 11
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = load atomic volatile i16, ptr %i.fo monotonic, align 2
  %i.fq = icmp eq i16 %i.fp, 140
  br i1 %i.fq, label %bb.aj, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread

bb.aj:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit
  switch i32 %4, label %bb.as [
    i32 3, label %bb.ak
    i32 1, label %bb.aq
    i32 2, label %bb.aq
  ]

bb.ak:                                            ; preds = %bb.aj
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8 ; 2 uses
  %i.fr = and i64 %.sroa.0.0.i, 1
  %i.fs = icmp eq i64 %i.fr, 0
  %i.ft = lshr i64 %.sroa.0.0.i, 32
  %i.fu = trunc nuw i64 %i.ft to i32
  %i.fv = select i1 %i.fs, i32 %i.fu, i32 -1
  %.sroa.0.0.in.i143 = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %.sroa.0.0.i144 = load i64, ptr %.sroa.0.0.in.i143, align 8 ; 2 uses
  %i.fw = and i64 %.sroa.0.0.i144, 1
  %i.fx = icmp eq i64 %i.fw, 0
  %i.fy = lshr i64 %.sroa.0.0.i144, 32
  %i.fz = trunc nuw i64 %i.fy to i32
  %i.ga = select i1 %i.fx, i32 %i.fz, i32 -1
  %i.gb = icmp slt i32 %i.fv, %3                  ; 2 uses
  %i.gc = icmp slt i32 %i.ga, %3                  ; 2 uses
  %or.cond131 = and i1 %i.gb, %i.gc
  br i1 %or.cond131, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEENS_15ReleaseStoreTagE(i64 %i.cc, i32 noundef 3, i64 %5)
  br label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.am:                                            ; preds = %bb.ak
  br i1 %i.gb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEENS_15ReleaseStoreTagE(i64 %i.cc, i32 noundef 1, i64 %5)
  br label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.ao:                                            ; preds = %bb.am
  br i1 %i.gc, label %bb.ap, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.ap:                                            ; preds = %bb.ao
  %i.gd = and i64 %5, -4294967296
  %i.ge = add i64 %i.gd, 4294967296
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEENS_15ReleaseStoreTagE(i64 %i.cc, i32 noundef 2, i64 %i.ge)
  br label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.aq:                                            ; preds = %bb.aj, %bb.aj
  %.not257 = icmp eq i32 %4, 1
  %.sroa.0.0.in.v.i = select i1 %.not257, i64 8, i64 16
  %.sroa.0.0.in.i145 = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i146 = load i64, ptr %.sroa.0.0.in.i145, align 8 ; 2 uses
  %i.gf = and i64 %.sroa.0.0.i146, 1
  %i.gg = icmp eq i64 %i.gf, 0
  %i.gh = lshr i64 %.sroa.0.0.i146, 32
  %i.gi = trunc nuw i64 %i.gh to i32
  %i.gj = select i1 %i.gg, i32 %i.gi, i32 -1
  %i.gk = icmp slt i32 %i.gj, %3
  br i1 %i.gk, label %bb.ar, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.ar:                                            ; preds = %bb.aq
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEENS_15ReleaseStoreTagE(i64 %i.cc, i32 noundef %4, i64 %5)
  br label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.as:                                            ; preds = %bb.aj
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #13
  unreachable

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.ai
  %i.gl = lshr i64 %i.cc, 32
  %i.gm = trunc nuw i64 %i.gl to i32
  %i.gn = icmp sgt i32 %3, %i.gm
  br i1 %i.gn, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread: ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.go = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE15NewAccessorPairEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #12 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEE(i64 %i.gp, i32 noundef %4, i64 %5)
  %i.gq = shl i32 %i.bz, 9
  %i.gr = load i64, ptr %1, align 8
  %i.gs = add i64 %i.gr, -1
  %i.gt = inttoptr i64 %i.gs to ptr
  %i.gu = ashr exact i32 %i.gq, 1
  %i.gv = or disjoint i32 %i.gu, 9
  %i.gw = sext i32 %i.gv to i64
  %i.gx = shl nsw i64 %i.gw, 32
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 %i.bw
  store atomic volatile i64 %i.gx, ptr %i.gz monotonic, align 8
  %i.ha = load i64, ptr %1, align 8
  %i.hb = add i64 %i.ha, -1                       ; 3 uses
  %i.hc = inttoptr i64 %i.hb to ptr
  %i.hd = load i64, ptr %i.go, align 8            ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 %i.ca ; 2 uses
  store atomic volatile i64 %i.hd, ptr %i.hf monotonic, align 8
  %i.hg = trunc i64 %i.hd to i1
  br i1 %i.hg, label %bb.at, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.at:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread
  %i.hh = or disjoint i64 %i.hb, 1                ; 2 uses
  %i.hi = ptrtoint ptr %i.hf to i64               ; 2 uses
  %i.hj = and i64 %i.hb, -262144
  %i.hk = inttoptr i64 %i.hj to ptr
  %i.hl = load i64, ptr %i.hk, align 262144       ; 2 uses
  %i.hm = and i64 %i.hl, 32
  %.not.i.i.i.i.i.i149 = icmp eq i64 %i.hm, 0
  %i.hn = and i64 %i.hl, 25
  %.not38.i.i.i.i.i.i150 = icmp eq i64 %i.hn, 0
  br i1 %.not38.i.i.i.i.i.i150, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ho = and i64 %i.hd, -262144
  %i.hp = inttoptr i64 %i.ho to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i151 = load i64, ptr %i.hp, align 262144
  %i.hq = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i151, 25
  %.not39.i.i.i.i.i.i152 = icmp eq i64 %i.hq, 0
  br i1 %.not39.i.i.i.i.i.i152, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.hh, i64 noundef %i.hi, i64 %i.hd) #12
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  br i1 %.not.i.i.i.i.i.i149, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.ax, !prof !5

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.hh, i64 %i.hi, i64 %i.hd) #12
  br label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132.thread, %bb.ax, %bb.aw, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread, %bb.an, %bb.ap, %bb.ao, %bb.al, %bb.ar, %bb.aq, %bb.ah, %bb.ag, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132.thread.thread, %bb.ac, %bb.ab, %bb.o, %bb.s, %bb.t, %bb.v, %bb.z, %bb.aa, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal16ClassBoilerplate21AddToElementsTemplateINS0_12LocalIsolateEEEvPT_NS0_6HandleINS0_16NumberDictionaryEEEjiNS1_9ValueKindENS0_6TaggedINS0_3SmiEEE(ptr noundef %0, ptr %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_12LocalIsolateENS0_16NumberDictionaryEjEEvPT_NS0_6HandleIT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE(ptr noundef %0, ptr %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_123AddToDictionaryTemplateINS0_12LocalIsolateENS0_16NumberDictionaryEjEEvPT_NS0_6HandleIT0_EET1_iNS0_16ClassBoilerplate9ValueKindENS0_6TaggedINS0_3SmiEEE(ptr noundef %0, ptr %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.v8::internal::InternalIndex", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 1432
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call noundef i32 @_Z11halfsiphashjm(i32 noundef %2, i64 noundef %i.i) #12
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = load i64, ptr %.sroa.0.0.copyload.i.i, align 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i32 %i.n, -1                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.06.0.in33.i.i = and i32 %i.r, %i.j       ; 2 uses
  %.sroa.06.034.i.i = zext i32 %.sroa.06.0.in33.i.i to i64 ; 2 uses
  %i.t = mul i64 %.sroa.06.034.i.i, 12884901888
  %sext.i35.i.i = add i64 %i.t, 17179869184
  %i.u = ashr exact i64 %sext.i35.i.i, 29
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.o
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.e
  %i.y = phi i64 [ %i.aq, %bb.e ], [ %i.w, %bb.a ] ; 4 uses
  %.sroa.042.0.copyload = phi i64 [ %.sroa.06.0.i.i, %bb.e ], [ %.sroa.06.034.i.i, %bb.a ] ; 2 uses
  %.sroa.06.0.in37.i.i = phi i32 [ %.sroa.06.0.in.i.i, %bb.e ], [ %.sroa.06.0.in33.i.i, %bb.a ]
  %.036.i.i = phi i32 [ %i.al, %bb.e ], [ 1, %bb.a ] ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.q
  br i1 %i.z, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.aa = and i64 %i.y, 1
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = lshr i64 %i.y, 32
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = sitofp i32 %i.ad to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.af = add nsw i64 %i.y, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %i.ah, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.d, %bb.c
  %i.ai = phi double [ %i.ae, %bb.c ], [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.d ]
  %i.aj = fptoui double %i.ai to i32
  %i.ak = icmp eq i32 %2, %i.aj
  br i1 %i.ak, label %bb.n, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i, %.lr.ph.i.i
  %i.al = add i32 %.036.i.i, 1
  %i.am = add i32 %.036.i.i, %.sroa.06.0.in37.i.i
  %.sroa.06.0.in.i.i = and i32 %i.am, %i.r        ; 2 uses
  %.sroa.06.0.i.i = zext i32 %.sroa.06.0.in.i.i to i64 ; 2 uses
  %i.an = mul i64 %.sroa.06.0.i.i, 12884901888
  %sext.i.i.i = add i64 %i.an, 17179869184
  %i.ao = ashr exact i64 %sext.i.i.i, 29
  %i.ap = getelementptr inbounds i8, ptr %i.s, i64 %i.ao
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.o
  br i1 %i.ar, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !12

.loopexit:                                        ; preds = %bb.e, %bb.a
  store i64 -1, ptr %6, align 8
  %.not128 = icmp ne i32 %4, 0
  %i.as = zext i1 %.not128 to i32
  %i.at = or disjoint i32 %i.as, 8
  %i.au = icmp eq i32 %4, 0
  br i1 %i.au, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.loopexit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load i8, ptr %i.av, align 8, !range !9, !noundef !10
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.ay, i64 noundef %5) #12
  br label %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit

bb.h:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8            ; 5 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp eq ptr %i.bc, %i.be
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bb) #12
  %.pre = load ptr, ptr %i.bb, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bh = phi ptr [ %.pre, %bb.i ], [ %i.bc, %bb.h ]
  %.0.i = phi ptr [ %i.bg, %bb.i ], [ %i.bc, %bb.h ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bi, ptr %i.bb, align 8
  store i64 %5, ptr %.0.i, align 8
  br label %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit

bb.k:                                             ; preds = %.loopexit
  %i.bj = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE15NewAccessorPairEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #12 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEE(i64 %i.bk, i32 noundef %4, i64 %5)
  br label %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit

_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit: ; preds = %bb.j, %bb.g, %bb.k
  %.sroa.0195.0 = phi ptr [ %i.bj, %bb.k ], [ %i.az, %bb.g ], [ %.0.i, %bb.j ]
  %i.bl = call ptr @_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE3AddINS0_12LocalIsolateENS0_6HandleELNS0_14AllocationTypeE1EQsr3stdE16is_convertible_vITL0_0_IT_ENS0_12DirectHandleISA_EEEEET0_IS2_EPSA_SF_jNSC_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE(ptr noundef nonnull %0, ptr nonnull %1, i32 noundef %2, ptr %.sroa.0195.0, i32 %i.at, ptr noundef nonnull %6) #12
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bn = load i64, ptr %1, align 8
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.m, label %bb.l, !prof !5

bb.l:                                             ; preds = %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #13
  unreachable

bb.m:                                             ; preds = %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit
  %i.bp = add i64 %i.bm, -1
  %i.bq = inttoptr i64 %i.bp to ptr
  call void @_ZN2v88internal16NumberDictionary18UpdateMaxNumberKeyEjNS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.bq, i32 noundef %2, ptr null) #12
  %i.br = load i64, ptr %1, align 8
  %i.bs = add i64 %i.br, -1
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store atomic volatile i64 4294967296, ptr %i.bu monotonic, align 8
  br label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.n:                                             ; preds = %_ZN2v88internal25NumberDictionaryBaseShape7IsMatchEjNS0_6TaggedINS0_6ObjectEEE.exit.i.i
  store i64 %.sroa.042.0.copyload, ptr %6, align 8
  %i.bv = load i64, ptr %1, align 8
  %i.bw = add i64 %i.bv, -1
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.bz = mul i64 %.sroa.042.0.copyload, 12884901888 ; 2 uses
  %sext.i.i = add i64 %i.bz, 25769803776
  %i.ca = ashr exact i64 %sext.i.i, 29            ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 %i.ca ; 3 uses
  %i.cc = load atomic volatile i64, ptr %i.cb monotonic, align 8
  %sum.shift = lshr i64 %i.cc, 40
  %i.cd = trunc nuw nsw i64 %sum.shift to i32     ; 3 uses
  %sext.i.i133 = add i64 %i.bz, 21474836480
  %i.ce = ashr exact i64 %sext.i.i133, 29         ; 4 uses
  %i.cf = getelementptr inbounds i8, ptr %i.by, i64 %i.ce
  %i.cg = load atomic volatile i64, ptr %i.cf monotonic, align 8 ; 9 uses
  %i.ch = icmp eq i32 %4, 0
  %i.ci = trunc i64 %i.cg to i1                   ; 2 uses
  br i1 %i.ch, label %bb.o, label %bb.ak

bb.o:                                             ; preds = %bb.n
  br i1 %i.ci, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132.thread

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132: ; preds = %bb.o
  %i.cj = add nsw i64 %i.cg, -1                   ; 3 uses
  %i.ck = inttoptr i64 %i.cj to ptr               ; 4 uses
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  %i.cm = add i64 %i.cl, 11
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i16, ptr %i.cn monotonic, align 2
  %i.cp = icmp eq i16 %i.co, 140
  br i1 %i.cp, label %bb.p, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132.thread.thread

bb.p:                                             ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = and i64 %i.cr, 1
  %i.ct = icmp eq i64 %i.cs, 0
  %i.cu = lshr i64 %i.cr, 32
  %i.cv = trunc nuw i64 %i.cu to i32
  %i.cw = select i1 %i.ct, i32 %i.cv, i32 -1      ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cy = load i64, ptr %i.cx, align 8            ; 2 uses
  %i.cz = and i64 %i.cy, 1
  %i.da = icmp eq i64 %i.cz, 0
  %i.db = lshr i64 %i.cy, 32
  %i.dc = trunc nuw i64 %i.db to i32
  %i.dd = select i1 %i.da, i32 %i.dc, i32 -1      ; 2 uses
  %i.de = icmp slt i32 %i.cw, %3                  ; 2 uses
  %i.df = icmp slt i32 %i.dd, %3                  ; 2 uses
  %or.cond = and i1 %i.de, %i.df
  br i1 %or.cond, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.dg = shl i32 %i.cd, 9
  %i.dh = ashr exact i32 %i.dg, 1
  %i.di = or disjoint i32 %i.dh, 8
  %i.dj = sext i32 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 32
  store atomic volatile i64 %i.dk, ptr %i.cb monotonic, align 8
  %i.dl = load i64, ptr %1, align 8
  %i.dm = add i64 %i.dl, -1                       ; 3 uses
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 %i.ce ; 2 uses
  store atomic volatile i64 %5, ptr %i.dp monotonic, align 8
  %i.dq = trunc i64 %5 to i1
  br i1 %i.dq, label %bb.r, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.r:                                             ; preds = %bb.q
  %i.dr = or disjoint i64 %i.dm, 1                ; 2 uses
  %i.ds = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.dt = and i64 %i.dm, -262144
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load i64, ptr %i.du, align 262144       ; 2 uses
  %i.dw = and i64 %i.dv, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dw, 0
  %i.dx = and i64 %i.dv, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dy = and i64 %5, -262144
  %i.dz = inttoptr i64 %i.dy to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i = load i64, ptr %i.dz, align 262144
  %i.ea = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i, 25
  %.not39.i.i.i.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not39.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dr, i64 noundef %i.ds, i64 %5) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.v, !prof !5

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dr, i64 %i.ds, i64 %5) #12
  br label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.w:                                             ; preds = %bb.p
  %.not = icmp ne i32 %i.cw, -1
  %brmerge.not = and i1 %.not, %i.de
  br i1 %brmerge.not, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 664
  %i.ee = load i64, ptr %i.ed, align 8            ; 5 uses
  store atomic volatile i64 %i.ee, ptr %i.cq monotonic, align 8
  %i.ef = trunc i64 %i.ee to i1
  br i1 %i.ef, label %bb.y, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.y:                                             ; preds = %bb.x
  %i.eg = or disjoint i64 %i.cj, 1                ; 2 uses
  %i.eh = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ei = and i64 %i.cj, -262144
  %i.ej = inttoptr i64 %i.ei to ptr
  %i.ek = load i64, ptr %i.ej, align 262144       ; 2 uses
  %i.el = and i64 %i.ek, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.el, 0
  %i.em = and i64 %i.ek, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.em, 0
  br i1 %.not38.i.i.i.i.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.en = and i64 %i.ee, -262144
  %i.eo = inttoptr i64 %i.en to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.eo, align 262144
  %i.ep = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not39.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.eg, i64 noundef %i.eh, i64 %i.ee) #12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.ac, !prof !5

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.eg, i64 %i.eh, i64 %i.ee) #12
  br label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.ad:                                            ; preds = %bb.w
  %.not127 = icmp ne i32 %i.dd, -1
  %or.cond130 = and i1 %.not127, %i.df
  br i1 %or.cond130, label %bb.ae, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.ae:                                            ; preds = %bb.ad
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 664
  %i.et = load i64, ptr %i.es, align 8
  tail call void @_ZN2v88internal12AccessorPair10set_setterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(24) %i.ck, i64 %i.et, i32 noundef 4)
  br label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132.thread: ; preds = %bb.o
  %i.eu = lshr i64 %i.cg, 32
  %i.ev = trunc nuw i64 %i.eu to i32
  %i.ew = icmp sgt i32 %3, %i.ev
  br i1 %i.ew, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132.thread.thread, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132.thread.thread: ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132.thread
  %i.ex = shl i32 %i.cd, 9
  %i.ey = ashr exact i32 %i.ex, 1
  %i.ez = or disjoint i32 %i.ey, 8
  %i.fa = sext i32 %i.ez to i64
  %i.fb = shl nsw i64 %i.fa, 32
  store atomic volatile i64 %i.fb, ptr %i.cb monotonic, align 8
  %i.fc = load i64, ptr %1, align 8
  %i.fd = add i64 %i.fc, -1                       ; 3 uses
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 %i.ce ; 2 uses
  store atomic volatile i64 %5, ptr %i.fg monotonic, align 8
  %i.fh = trunc i64 %5 to i1
  br i1 %i.fh, label %bb.af, label %_ZN2v88internal10DictionaryINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.af:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit132.thread.thread
  %i.fi = or disjoint i64 %i.fd, 1                ; 2 uses
  %i.fj = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fk = and i64 %i.fd, -262144
  %i.fl = inttoptr i64 %i.fk to ptr
  %i.fm = load i64, ptr %i.fl, align 262144       ; 2 uses
  %i.fn = and i64 %i.fm, 32
  %.not.i.i.i.i.i.i138 = icmp eq i64 %i.fn, 0
  %i.fo = and i64 %i.fm, 25
  %.not38.i.i.i.i.i.i139 = icmp eq i64 %i.fo, 0
  br i1 %.not38.i.i.i.i.i.i139, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.fp = and i64 %5, -262144
  %i.fq = inttoptr i64 %i.fp to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i140 = load i64, ptr %i.fq, align 262144
  %i.fr = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i140, 25
  %.not39.i.i.i.i.i.i141 = icmp eq i64 %i.fr, 0
  br i1 %.not39.i.i.i.i.i.i141, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
end_hunk_2
