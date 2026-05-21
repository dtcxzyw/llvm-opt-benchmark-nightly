inline.NumInlined: 99
inline.NumDeleted: 38
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

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

@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 262144) i32 @_ZN2v88internal4wasm19WasmEnabledFeatures9FromFlagsEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 832), align 64
  %i.b = shl <8 x i8> %i.a, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  %i.c = tail call i8 @llvm.vector.reduce.or.v8i8(<8 x i8> %i.b)
  %.sroa.0.7 = zext i8 %i.c to i32
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 840), align 8, !range !5, !noundef !6
  %i.e = zext nneg i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  %.sroa.0.8 = or disjoint i32 %i.f, %.sroa.0.7
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 841), align 1, !range !5, !noundef !6
  %i.h = zext nneg i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 9
  %.sroa.0.9 = or disjoint i32 %.sroa.0.8, %i.i
  %i.j = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 842), align 2, !range !5, !noundef !6
  %i.k = zext nneg i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 10
  %.sroa.0.10 = or disjoint i32 %.sroa.0.9, %i.l
  %i.m = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 843), align 1, !range !5, !noundef !6
  %i.n = zext nneg i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 11
  %.sroa.0.11 = or i32 %.sroa.0.10, %i.o
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 844), align 4, !range !5, !noundef !6
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 12
  %.sroa.0.12 = or i32 %.sroa.0.11, %i.r
  %i.s = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 845), align 1, !range !5, !noundef !6
  %i.t = zext nneg i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 13
  %.sroa.0.13 = or i32 %.sroa.0.12, %i.u
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 846), align 2, !range !5, !noundef !6
  %i.w = zext nneg i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 14
  %.sroa.0.14 = or i32 %.sroa.0.13, %i.x
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 847), align 1, !range !5, !noundef !6
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 15
  %.sroa.0.15 = or i32 %.sroa.0.14, %i.aa
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 848), align 16, !range !5, !noundef !6
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 16
  %.sroa.0.16 = or i32 %.sroa.0.15, %i.ad
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 849), align 1, !range !5, !noundef !6
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 17
  %.sroa.0.17 = or i32 %.sroa.0.16, %i.ag
  ret i32 %.sroa.0.17
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 262144) i32 @_ZN2v88internal4wasm19WasmEnabledFeatures11FromIsolateEPNS0_7IsolateE(ptr noundef %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_ZN2v88internal7Isolate14native_contextEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #4
  br label %_ZN2v88internal7Isolate14native_contextEv.exit

_ZN2v88internal7Isolate14native_contextEv.exit:   ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.m, %bb.b ], [ %i.i, %bb.a ] ; 3 uses
  %i.n = ptrtoint ptr %.0.i.i to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8
  store i64 %i.g, ptr %.0.i.i, align 8
  %i.q = tail call i32 @_ZN2v88internal4wasm19WasmEnabledFeatures11FromContextEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull %0, ptr nonnull %.0.i.i)
  ret i32 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 262144) i32 @_ZN2v88internal4wasm19WasmEnabledFeatures11FromContextEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull %0, ptr %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 832), align 64, !range !5, !noundef !6
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 833), align 1, !range !5, !noundef !6
  %i.c = shl nuw nsw i8 %i.b, 1
  %.sroa.0.119.i = or disjoint i8 %i.c, %i.a
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 834), align 2, !range !5, !noundef !6
  %i.e = shl nuw nsw i8 %i.d, 2
  %.sroa.0.220.i = or disjoint i8 %.sroa.0.119.i, %i.e
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 835), align 1, !range !5, !noundef !6
  %i.g = shl nuw nsw i8 %i.f, 3
  %.sroa.0.321.i = or disjoint i8 %.sroa.0.220.i, %i.g
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 836), align 4, !range !5, !noundef !6
  %i.i = shl nuw nsw i8 %i.h, 4
  %.sroa.0.422.i = or disjoint i8 %.sroa.0.321.i, %i.i
  %i.j = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 837), align 1, !range !5, !noundef !6
  %i.k = shl nuw nsw i8 %i.j, 5
  %.sroa.0.523.i = or i8 %.sroa.0.422.i, %i.k
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 838), align 2, !range !5, !noundef !6
  %i.m = shl nuw nsw i8 %i.l, 6
  %.sroa.0.624.i = or i8 %.sroa.0.523.i, %i.m
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 839), align 1, !range !5, !noundef !6
  %i.o = shl nuw i8 %i.n, 7
  %.sroa.0.725.i = or i8 %.sroa.0.624.i, %i.o
  %.sroa.0.7.i = zext i8 %.sroa.0.725.i to i32
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 840), align 8, !range !5, !noundef !6
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %.sroa.0.8.i = or disjoint i32 %i.r, %.sroa.0.7.i
  %i.s = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 841), align 1, !range !5, !noundef !6
  %i.t = zext nneg i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 9
  %.sroa.0.9.i = or disjoint i32 %.sroa.0.8.i, %i.u
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 842), align 2, !range !5, !noundef !6
  %i.w = zext nneg i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 10
  %.sroa.0.10.i = or disjoint i32 %.sroa.0.9.i, %i.x
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 843), align 1, !range !5, !noundef !6
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 11
  %.sroa.0.11.i = or i32 %.sroa.0.10.i, %i.aa
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 844), align 4, !range !5, !noundef !6
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 12
  %.sroa.0.12.i = or i32 %.sroa.0.11.i, %i.ad
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 845), align 1, !range !5, !noundef !6
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 13
  %.sroa.0.13.i = or i32 %.sroa.0.12.i, %i.ag
  %i.ah = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 846), align 2, !range !5, !noundef !6
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 14
  %.sroa.0.14.i = or i32 %.sroa.0.13.i, %i.aj
  %i.ak = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 847), align 1, !range !5, !noundef !6
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 15
  %.sroa.0.15.i = or i32 %.sroa.0.14.i, %i.am
  %i.an = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 848), align 16, !range !5, !noundef !6
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 16
  %.sroa.0.16.i = or i32 %.sroa.0.15.i, %i.ap
  %i.aq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 849), align 1, !range !5, !noundef !6
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 17
  %.sroa.0.17.i = or i32 %.sroa.0.16.i, %i.as     ; 2 uses
  %i.at = tail call noundef zeroext i1 @_ZN2v88internal7Isolate22IsWasmStringRefEnabledENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr %1) #4
  %i.au = or i32 %.sroa.0.17.i, 1024
  %spec.select = select i1 %i.at, i32 %i.au, i32 %.sroa.0.17.i ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZN2v88internal7Isolate28IsWasmImportedStringsEnabledENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr %1) #4
  %i.aw = or i32 %spec.select, 32768
  %.sroa.0.1 = select i1 %i.av, i32 %i.aw, i32 %spec.select ; 2 uses
  %i.ax = tail call noundef zeroext i1 @_ZN2v88internal7Isolate17IsWasmJSPIEnabledENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr %1) #4
  %i.ay = or i32 %.sroa.0.1, 131072
  %.sroa.0.2 = select i1 %i.ax, i32 %i.ay, i32 %.sroa.0.1 ; 2 uses
  %i.az = tail call noundef zeroext i1 @_ZN2v88internal7Isolate30IsWasmCustomDescriptorsEnabledENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr %1) #4
  %i.ba = or i32 %.sroa.0.2, 8
  %.sroa.0.3 = select i1 %i.az, i32 %i.ba, i32 %.sroa.0.2
  ret i32 %.sroa.0.3
}

declare noundef zeroext i1 @_ZN2v88internal7Isolate22IsWasmStringRefEnabledENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull align 8 dereferenceable(64320), ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal7Isolate28IsWasmImportedStringsEnabledENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull align 8 dereferenceable(64320), ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal7Isolate17IsWasmJSPIEnabledENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull align 8 dereferenceable(64320), ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal7Isolate30IsWasmCustomDescriptorsEnabledENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull align 8 dereferenceable(64320), ptr) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v8i8(<8 x i8>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
