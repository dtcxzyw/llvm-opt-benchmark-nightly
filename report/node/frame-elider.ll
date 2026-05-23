inline.NumInlined: 146
inline.NumDeleted: 72
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
%"class.v8::internal::compiler::Constant" = type { i32, i8, i64 }

@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096

@_ZN2v88internal8compiler11FrameEliderC1EPNS1_19InstructionSequenceEbb = hidden unnamed_addr alias void (ptr, ptr, i1, i1), ptr @_ZN2v88internal8compiler11FrameEliderC2EPNS1_19InstructionSequenceEbb

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal8compiler11FrameEliderC2EPNS1_19InstructionSequenceEbb(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(10) initializes((0, 10)) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = zext i1 %3 to i8
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.b, ptr %i.d, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler11FrameElider3RunEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(10) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 557), align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal8compiler11FrameElider10MarkBlocksEv(ptr noundef nonnull align 8 dereferenceable(10) %0)
  tail call void @_ZN2v88internal8compiler11FrameElider14PropagateMarksEv(ptr noundef nonnull align 8 dereferenceable(10) %0)
  tail call void @_ZN2v88internal8compiler11FrameElider18MarkDeConstructionEv(ptr noundef nonnull align 8 dereferenceable(10) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler11FrameElider10MarkBlocksEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(10) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::compiler::Constant", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not36 = icmp eq ptr %i.e, %i.g
  br i1 %.not36, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %bb.a
  %.old = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge27, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph38, %.critedge27
  %.037 = phi ptr [ %i.e, %.lr.ph38 ], [ %i.au, %.critedge27 ] ; 2 uses
  %i.h = load ptr, ptr %.037, align 8             ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 124 ; 3 uses
  %i.j = load i16, ptr %i.i, align 4
  %i.k = and i16 %i.j, 64
  %.not32 = icmp eq i16 %i.k, 0
  br i1 %.not32, label %bb.c, label %.critedge27

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 120 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %.lr.ph.preheader, label %.critedge27

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.q = sext i32 %i.m to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %i.r = phi i32 [ %i.o, %.lr.ph.preheader ], [ %i.ap, %.critedge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.s = load ptr, ptr %0, align 8                ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 208
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = and i32 %i.y, 1073741824
  %.not33 = icmp eq i32 %i.z, 0
  br i1 %.not33, label %bb.d, label %.critedge27.sink.split

bb.d:                                             ; preds = %.lr.ph
  %i.aa = load i32, ptr %i.w, align 8
  %.fr34 = freeze i32 %i.aa                       ; 2 uses
  %i.ab = and i32 %.fr34, 114688
  %i.ac = icmp eq i32 %i.ab, 32768
  br i1 %i.ac, label %.critedge27.sink.split, label %switch.early.test

switch.early.test:                                ; preds = %bb.d
  %i.ad = and i32 %.fr34, 511
  switch i32 %i.ad, label %.critedge [
    i32 32, label %.critedge27.sink.split
    i32 25, label %.critedge27.sink.split
    i32 23, label %.critedge27.sink.split
    i32 31, label %bb.e
  ]

bb.e:                                             ; preds = %switch.early.test
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.af = and i32 %i.y, 255
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr [8 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8            ; 6 uses
  %i.aj = and i64 %i.ai, 7
  %i.ak = icmp eq i64 %i.aj, 3
  br i1 %i.ak, label %4, label %bb.f

4:                                                ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %5 = trunc i64 %i.ai to i32
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 3
  switch i32 %7, label %default.unreachable [
    i32 0, label %8
    i32 1, label %11
    i32 2, label %13
    i32 3, label %19
  ]

8:                                                ; preds = %4
  %9 = lshr i64 %i.ai, 32
  %10 = trunc nuw i64 %9 to i32
  call void @_ZN2v88internal8compiler8ConstantC1Ei(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %10) #7
  br label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit

11:                                               ; preds = %4
  %12 = ashr i64 %i.ai, 32
  store i32 1, ptr %1, align 8
  store i8 0, ptr %2, align 4
  store i64 %12, ptr %3, align 8
  br label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit

13:                                               ; preds = %4
  %14 = ashr i64 %i.ai, 32
  %15 = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %14
  %.sroa.0.0.copyload.i = load i32, ptr %17, align 4
  store i32 7, ptr %1, align 8
  store i8 0, ptr %2, align 4
  %18 = sext i32 %.sroa.0.0.copyload.i to i64
  store i64 %18, ptr %3, align 8
  br label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit

19:                                               ; preds = %4
  %20 = ashr i64 %i.ai, 32
  %21 = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds nuw [16 x i8], ptr %22, i64 %20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false)
  br label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit

default.unreachable:                              ; preds = %4
  unreachable

_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit: ; preds = %8, %11, %13, %19
  %.fca.1.load.i = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.al = trunc i64 %.fca.1.load.i to i32
  %i.am = icmp sgt i32 %i.al, 0
  %i.an = load i8, ptr %.old, align 1, !range !5
  %i.ao = trunc nuw i8 %i.an to i1
  %or.cond31 = select i1 %i.am, i1 true, i1 %i.ao
  br i1 %or.cond31, label %.critedge27.sink.split, label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit..critedge_crit_edge

_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit..critedge_crit_edge: ; preds = %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit
  %.pre = load i32, ptr %i.n, align 8
  br label %.critedge

bb.f:                                             ; preds = %bb.e
  %.old29 = load i8, ptr %.old, align 1, !range !5, !noundef !6
  %.old30 = trunc nuw i8 %.old29 to i1
  br i1 %.old30, label %.critedge27.sink.split, label %.critedge

.critedge:                                        ; preds = %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit..critedge_crit_edge, %switch.early.test, %bb.f
  %i.ap = phi i32 [ %.pre, %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit..critedge_crit_edge ], [ %i.r, %switch.early.test ], [ %i.r, %bb.f ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %.lr.ph, label %.critedge27, !llvm.loop !7

.critedge27.sink.split:                           ; preds = %bb.f, %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit, %.lr.ph, %bb.d, %switch.early.test, %switch.early.test, %switch.early.test
  %i.as = load i16, ptr %i.i, align 4
  %i.at = or i16 %i.as, 64
  store i16 %i.at, ptr %i.i, align 4
  br label %.critedge27

.critedge27:                                      ; preds = %.critedge, %.critedge27.sink.split, %bb.c, %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %.037, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.au, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler11FrameElider14PropagateMarksEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(10) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not10.i = icmp eq ptr %i.f, %i.h
  br i1 %.not10.i, label %_ZN2v88internal8compiler11FrameElider16PropagateInOrderEv.exit.thread, label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %.critedge, %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit.i.thread
  %.012.i.ph = phi i1 [ true, %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit.i.thread ], [ false, %.critedge ]
  %.0911.i.ph = phi ptr [ %i.bv, %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit.i.thread ], [ %i.f, %.critedge ]
  %i.i = load i8, ptr %i.a, align 8, !range !5
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load ptr, ptr %0, align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit.i
  %.0911.i = phi ptr [ %i.bs, %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit.i ], [ %.0911.i.ph, %.lr.ph.i.outer ] ; 3 uses
  %i.o = load ptr, ptr %.0911.i, align 8          ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 124
  %i.q = load i16, ptr %i.p, align 4              ; 3 uses
  %i.r = and i16 %i.q, 64
  %.not64.i.i = icmp eq i16 %i.r, 0
  br i1 %.not64.i.i, label %bb.b, label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not67.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not67.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = trunc i16 %i.q to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.03968.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.aa
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.03968.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.af, %bb.e ] ; 2 uses
  %.sroa.014.0.copyload.i.i = load i32, ptr %.03968.i.i, align 4
  %i.ag = sext i32 %.sroa.014.0.copyload.i.i to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 124
  %i.ak = load i16, ptr %i.aj, align 4            ; 2 uses
  %i.al = and i16 %i.ak, 64
  %i.am = icmp ne i16 %i.al, 0
  %i.an = trunc i16 %i.ak to i1
  %.not61.i.i = xor i1 %i.an, true
  %or.cond.i.i = or i1 %i.ae, %.not61.i.i
  %or.cond63.i.i = and i1 %i.am, %or.cond.i.i
  br i1 %or.cond63.i.i, label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit.i.thread, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp eq i64 %i.au, 4
  br i1 %i.av, label %bb.g, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i
  %.not5069.i.i = icmp eq ptr %i.ar, %i.ap
  br i1 %.not5069.i.i, label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit.i, label %.lr.ph72.i.i

.lr.ph72.i.i:                                     ; preds = %.preheader.i.i
  %i.aw = load ptr, ptr %i.m, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  %.sroa.012.0.copyload.i.i = load i32, ptr %i.ar, align 4
  %i.az = load ptr, ptr %i.n, align 8
  %i.ba = sext i32 %.sroa.012.0.copyload.i.i to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ba
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 124
  %i.bg = load i16, ptr %i.bf, align 4
  %i.bh = trunc i16 %i.bg to i8
  %i.bi = lshr i8 %i.bh, 6
  br label %.thread58.i.i

bb.h:                                             ; preds = %bb.j, %.lr.ph72.i.i
  %.04471.i.i = phi i8 [ 0, %.lr.ph72.i.i ], [ %.246.ph.i.i, %bb.j ]
  %.04970.i.i = phi ptr [ %i.ar, %.lr.ph72.i.i ], [ %i.bq, %bb.j ] ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %.04970.i.i, align 4
  %i.bj = sext i32 %.sroa.0.0.copyload.i.i to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 124
  %i.bn = load i16, ptr %i.bm, align 4            ; 2 uses
  %i.bo = trunc i16 %i.bn to i1
  br i1 %i.bo, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = and i16 %i.bn, 64
  %.not65.i.i = icmp eq i16 %i.bp, 0
  br i1 %.not65.i.i, label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.246.ph.i.i = phi i8 [ %.04471.i.i, %bb.h ], [ 1, %bb.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.04970.i.i, i64 4 ; 2 uses
  %.not50.i.i = icmp eq ptr %i.bq, %i.ap
  br i1 %.not50.i.i, label %.thread58.i.i, label %bb.h

.thread58.i.i:                                    ; preds = %bb.j, %bb.g
  %.448.i.i = phi i8 [ %i.bi, %bb.g ], [ %.246.ph.i.i, %bb.j ]
  %i.br = trunc i8 %.448.i.i to i1
  br i1 %i.br, label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit.i.thread, label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit.i

_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit.i: ; preds = %bb.i, %.thread58.i.i, %.preheader.i.i, %bb.c, %.lr.ph.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bs, %i.h
  br i1 %.not.i, label %_ZN2v88internal8compiler11FrameElider16PropagateInOrderEv.exit, label %.lr.ph.i

_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit.i.thread: ; preds = %.thread58.i.i, %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 124
  %i.bu = or disjoint i16 %i.q, 64
  store i16 %i.bu, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i, i64 8 ; 2 uses
  %.not.i11 = icmp eq ptr %i.bv, %i.h
  br i1 %.not.i11, label %.critedge.backedge, label %.lr.ph.i.outer, !llvm.loop !9

_ZN2v88internal8compiler11FrameElider16PropagateInOrderEv.exit: ; preds = %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit.i
  br i1 %.012.i.ph, label %.critedge.backedge, label %_ZN2v88internal8compiler11FrameElider16PropagateInOrderEv.exit.thread

.critedge.backedge:                               ; preds = %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit.i.thread, %_ZN2v88internal8compiler11FrameElider16PropagateInOrderEv.exit, %_ZN2v88internal8compiler11FrameElider16PropagateInOrderEv.exit.thread
  br label %.critedge, !llvm.loop !9

end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler11FrameElider18MarkDeConstructionEv:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not57 = icmp eq ptr %i.e, %i.g
  br i1 %.not57, label %._crit_edge61, label %.lr.ph60

._crit_edge61:                                    ; preds = %.loopexit, %bb.a
  ret void

.lr.ph60:                                         ; preds = %bb.a, %.loopexit
  %.058 = phi ptr [ %i.cx, %.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.058, align 8             ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 124 ; 5 uses
  %i.j = load i16, ptr %i.i, align 4              ; 4 uses
  %i.k = and i16 %i.j, 64
  %.not48 = icmp eq i16 %i.k, 0
  br i1 %.not48, label %bb.m, label %bb.b

bb.b:                                             ; preds = %.lr.ph60
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.p, label %bb.c, label %._crit_edge62

._crit_edge62:                                    ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.pre64 = load ptr, ptr %i.q, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = or i16 %i.j, 128                         ; 3 uses
  store i16 %i.r, ptr %i.i, align 4
  %i.s = load ptr, ptr %i.q, align 8              ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 4 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.x = load i32, ptr %i.w, align 8
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 208
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = sext i32 %i.x to i64
  %i.ac = getelementptr [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = and i32 %i.af, 511
  switch i32 %i.ag, label %bb.f [
    i32 24, label %bb.e
    i32 15, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.ah = or i16 %i.j, 384                        ; 2 uses
  store i16 %i.ah, ptr %i.i, align 4
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge62, %bb.d, %bb.e, %bb.c
  %i.ai = phi i16 [ %i.j, %._crit_edge62 ], [ %i.r, %bb.d ], [ %i.ah, %bb.e ], [ %i.r, %bb.c ] ; 2 uses
  %i.aj = phi ptr [ %.pre64, %._crit_edge62 ], [ %i.s, %bb.d ], [ %i.s, %bb.e ], [ %i.s, %bb.c ] ; 2 uses
  %i.ak = phi ptr [ %.pre, %._crit_edge62 ], [ %i.u, %bb.d ], [ %i.u, %bb.e ], [ %i.u, %bb.c ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.not4751 = icmp eq ptr %i.ak, %i.aj
  br i1 %.not4751, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  br label %bb.g

._crit_edge:                                      ; preds = %bb.j, %bb.f
  %i.an = phi i16 [ %i.ai, %bb.f ], [ %i.bs, %bb.j ]
  %i.ao = load ptr, ptr %i.al, align 8
  %i.ap = icmp eq ptr %i.ao, %i.ak
  br i1 %i.ap, label %bb.k, label %.loopexit

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %i.aq = phi i16 [ %i.ai, %.lr.ph ], [ %i.bs, %bb.j ] ; 4 uses
  %.04452 = phi ptr [ %i.ak, %.lr.ph ], [ %i.bt, %bb.j ] ; 2 uses
  %.sroa.013.0.copyload = load i32, ptr %.04452, align 4
  %i.ar = load ptr, ptr %0, align 8               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = sext i32 %.sroa.013.0.copyload to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 124
  %i.ba = load i16, ptr %i.az, align 4
  %i.bb = and i16 %i.ba, 64
  %.not50 = icmp eq i16 %i.bb, 0
  br i1 %.not50, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bc = load i32, ptr %i.am, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 208
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = sext i32 %i.bc to i64
  %i.bg = getelementptr [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = load i32, ptr %i.bi, align 8            ; 3 uses
  %i.bk = and i32 %i.bj, 508
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = and i32 %i.bj, 511
  %i.bn = icmp eq i32 %i.bm, 23
  %i.bo = and i32 %i.bj, 114688
  %i.bp = icmp eq i32 %i.bo, 32768
  %i.bq = or i1 %i.bn, %i.bp
  br i1 %i.bq, label %bb.j, label %.critedge

.critedge:                                        ; preds = %bb.i
  %i.br = or i16 %i.aq, 256                       ; 2 uses
  store i16 %i.br, ptr %i.i, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %.critedge, %bb.i, %bb.h
  %i.bs = phi i16 [ %i.aq, %bb.g ], [ %i.br, %.critedge ], [ %i.aq, %bb.i ], [ %i.aq, %bb.h ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.04452, i64 4 ; 2 uses
  %.not47 = icmp eq ptr %i.bt, %i.aj
  br i1 %.not47, label %._crit_edge, label %bb.g

bb.k:                                             ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %0, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 208
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = sext i32 %i.bv to i64
  %i.ca = getelementptr [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = and i32 %i.cd, 511
  switch i32 %i.ce, label %.loopexit [
    i32 24, label %bb.l
    i32 15, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.cf = or i16 %i.an, 256
  store i16 %i.cf, ptr %i.i, align 4
  br label %.loopexit

bb.m:                                             ; preds = %.lr.ph60
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %.not4653 = icmp eq ptr %i.ch, %i.cj
  br i1 %.not4653, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.m, %bb.o
  %.04554 = phi ptr [ %i.cw, %bb.o ], [ %i.ch, %bb.m ] ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %.04554, align 4
  %i.ck = load ptr, ptr %0, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = sext i32 %.sroa.01.0.copyload to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cn
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 124 ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 4            ; 2 uses
  %i.cu = and i16 %i.ct, 64
  %.not49 = icmp eq i16 %i.cu, 0
  br i1 %.not49, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph56
  %i.cv = or i16 %i.ct, 128
  store i16 %i.cv, ptr %i.cs, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph56
  %i.cw = getelementptr inbounds nuw i8, ptr %.04554, i64 4 ; 2 uses
  %.not46 = icmp eq ptr %i.cw, %i.cj
  br i1 %.not46, label %.loopexit, label %.lr.ph56

.loopexit:                                        ; preds = %bb.o, %bb.m, %bb.k, %bb.l, %._crit_edge
  %i.cx = getelementptr inbounds nuw i8, ptr %.058, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cx, %i.g
  br i1 %.not, label %._crit_edge61, label %.lr.ph60
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK2v88internal8compiler11FrameElider18instruction_blocksEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(10) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler11FrameElider13InstructionAtEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(10) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.b
  %i.f = load ptr, ptr %i.e, align 8
  ret ptr %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler11FrameElider16PropagateInOrderEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(10) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.e, %i.g
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.7.i, %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit ]
  ret i1 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit
  %.012 = phi i1 [ false, %.lr.ph ], [ %.7.i, %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit ] ; 5 uses
  %.0911 = phi ptr [ %i.e, %.lr.ph ], [ %i.bv, %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit ] ; 2 uses
  %i.i = load ptr, ptr %.0911, align 8            ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 124 ; 2 uses
  %i.k = load i16, ptr %i.j, align 4              ; 3 uses
  %i.l = and i16 %i.k, 64
  %.not64.i = icmp eq i16 %i.l, 0
  br i1 %.not64.i, label %bb.c, label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.h, align 8, !range !5, !noundef !6
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not67.i = icmp eq ptr %i.u, %i.w
  br i1 %.not67.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = trunc i16 %i.k to i1
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.03968.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %i.w
  br i1 %.not.i, label %._crit_edge.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %.03968.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.ad, %bb.f ] ; 2 uses
  %.sroa.014.0.copyload.i = load i32, ptr %.03968.i, align 4
  %i.ae = sext i32 %.sroa.014.0.copyload.i to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 124
  %i.ai = load i16, ptr %i.ah, align 4            ; 2 uses
  %i.aj = and i16 %i.ai, 64
  %i.ak = icmp ne i16 %i.aj, 0
  %i.al = trunc i16 %i.ai to i1
  %.not61.i = xor i1 %i.al, true
  %or.cond.i = or i1 %i.ac, %.not61.i
  %or.cond63.i = and i1 %i.ak, %or.cond.i
  br i1 %or.cond63.i, label %.loopexit.sink.split.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp eq i64 %i.as, 4
  br i1 %i.at, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %.not5069.i = icmp eq ptr %i.ap, %i.an
  br i1 %.not5069.i, label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit, label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %.preheader.i
  %i.au = load ptr, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  %.sroa.012.0.copyload.i = load i32, ptr %i.ap, align 4
  %i.az = load ptr, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = sext i32 %.sroa.012.0.copyload.i to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 124
  %i.bi = load i16, ptr %i.bh, align 4
  %i.bj = trunc i16 %i.bi to i8
  %i.bk = lshr i8 %i.bj, 6
  br label %.thread58.i

bb.i:                                             ; preds = %bb.k, %.lr.ph72.i
  %.04471.i = phi i8 [ 0, %.lr.ph72.i ], [ %.246.ph.i, %bb.k ]
  %.04970.i = phi ptr [ %i.ap, %.lr.ph72.i ], [ %i.bs, %bb.k ] ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.04970.i, align 4
  %i.bl = sext i32 %.sroa.0.0.copyload.i to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 124
  %i.bp = load i16, ptr %i.bo, align 4            ; 2 uses
  %i.bq = trunc i16 %i.bp to i1
  br i1 %i.bq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = and i16 %i.bp, 64
  %.not65.i = icmp eq i16 %i.br, 0
  br i1 %.not65.i, label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.246.ph.i = phi i8 [ %.04471.i, %bb.i ], [ 1, %bb.j ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.04970.i, i64 4 ; 2 uses
  %.not50.i = icmp eq ptr %i.bs, %i.an
  br i1 %.not50.i, label %.thread58.i, label %bb.i

.thread58.i:                                      ; preds = %bb.k, %bb.h
  %.448.i = phi i8 [ %i.bk, %bb.h ], [ %.246.ph.i, %bb.k ]
  %i.bt = trunc i8 %.448.i to i1
  br i1 %i.bt, label %.loopexit.sink.split.i, label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit

.loopexit.sink.split.i:                           ; preds = %bb.g, %.thread58.i
  %i.bu = or disjoint i16 %i.k, 64
  store i16 %i.bu, ptr %i.j, align 4
  br label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit

_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit: ; preds = %bb.j, %bb.b, %bb.d, %.preheader.i, %.thread58.i, %.loopexit.sink.split.i
  %.7.i = phi i1 [ %.012, %.preheader.i ], [ %.012, %bb.b ], [ %.012, %bb.d ], [ true, %.loopexit.sink.split.i ], [ %.012, %.thread58.i ], [ %.012, %bb.j ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bv, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler11FrameElider17PropagateReversedEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(10) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !15 ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.7.i, %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit ]
  ret i1 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit
  %.010 = phi i1 [ false, %.lr.ph ], [ %.7.i, %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit ] ; 5 uses
  %.sroa.05.09 = phi ptr [ %i.e, %.lr.ph ], [ %i.j, %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit ]
  %i.j = getelementptr inbounds i8, ptr %.sroa.05.09, i64 -8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 124 ; 2 uses
  %i.m = load i16, ptr %i.l, align 4              ; 3 uses
  %i.n = and i16 %i.m, 64
  %.not64.i = icmp eq i16 %i.n, 0
  br i1 %.not64.i, label %bb.c, label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.i, align 8, !range !5, !noundef !6
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not67.i = icmp eq ptr %i.w, %i.y
  br i1 %.not67.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = trunc i16 %i.m to i1
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.03968.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.af, %i.y
  br i1 %.not.i, label %._crit_edge.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %.03968.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.af, %bb.f ] ; 2 uses
  %.sroa.014.0.copyload.i = load i32, ptr %.03968.i, align 4
  %i.ag = sext i32 %.sroa.014.0.copyload.i to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 124
  %i.ak = load i16, ptr %i.aj, align 4            ; 2 uses
  %i.al = and i16 %i.ak, 64
  %i.am = icmp ne i16 %i.al, 0
  %i.an = trunc i16 %i.ak to i1
  %.not61.i = xor i1 %i.an, true
  %or.cond.i = or i1 %i.ae, %.not61.i
  %or.cond63.i = and i1 %i.am, %or.cond.i
  br i1 %or.cond63.i, label %.loopexit.sink.split.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp eq i64 %i.au, 4
  br i1 %i.av, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %.not5069.i = icmp eq ptr %i.ar, %i.ap
  br i1 %.not5069.i, label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit, label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %.preheader.i
  %i.aw = load ptr, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  %.sroa.012.0.copyload.i = load i32, ptr %i.ar, align 4
  %i.bb = load ptr, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = sext i32 %.sroa.012.0.copyload.i to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 124
  %i.bk = load i16, ptr %i.bj, align 4
  %i.bl = trunc i16 %i.bk to i8
  %i.bm = lshr i8 %i.bl, 6
  br label %.thread58.i

bb.i:                                             ; preds = %bb.k, %.lr.ph72.i
  %.04471.i = phi i8 [ 0, %.lr.ph72.i ], [ %.246.ph.i, %bb.k ]
  %.04970.i = phi ptr [ %i.ar, %.lr.ph72.i ], [ %i.bu, %bb.k ] ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.04970.i, align 4
  %i.bn = sext i32 %.sroa.0.0.copyload.i to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 124
  %i.br = load i16, ptr %i.bq, align 4            ; 2 uses
  %i.bs = trunc i16 %i.br to i1
  br i1 %i.bs, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = and i16 %i.br, 64
  %.not65.i = icmp eq i16 %i.bt, 0
  br i1 %.not65.i, label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.246.ph.i = phi i8 [ %.04471.i, %bb.i ], [ 1, %bb.j ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.04970.i, i64 4 ; 2 uses
  %.not50.i = icmp eq ptr %i.bu, %i.ap
  br i1 %.not50.i, label %.thread58.i, label %bb.i

.thread58.i:                                      ; preds = %bb.k, %bb.h
  %.448.i = phi i8 [ %i.bm, %bb.h ], [ %.246.ph.i, %bb.k ]
  %i.bv = trunc i8 %.448.i to i1
  br i1 %i.bv, label %.loopexit.sink.split.i, label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit

.loopexit.sink.split.i:                           ; preds = %bb.g, %.thread58.i
  %i.bw = or disjoint i16 %i.m, 64
  store i16 %i.bw, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit

_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE.exit: ; preds = %bb.j, %bb.b, %bb.d, %.preheader.i, %.thread58.i, %.loopexit.sink.split.i
  %.7.i = phi i1 [ %.010, %.preheader.i ], [ %.010, %bb.b ], [ %.010, %bb.d ], [ true, %.loopexit.sink.split.i ], [ %.010, %.thread58.i ], [ %.010, %bb.j ] ; 2 uses
  %i.bx = icmp eq ptr %i.j, %i.g
  br i1 %i.bx, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler11FrameElider18InstructionBlockAtENS1_9RpoNumberE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(10) %0, i32 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8
  ret ptr %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler11FrameElider18PropagateIntoBlockEPNS1_16InstructionBlockE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(10) %0, ptr noundef captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.b = load i16, ptr %i.a, align 4              ; 3 uses
  %i.c = and i16 %i.b, 64
  %.not64 = icmp eq i16 %i.c, 0
  br i1 %.not64, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !5, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not67 = icmp eq ptr %i.m, %i.o
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = trunc i16 %i.b to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.03968, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.o
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.03968 = phi ptr [ %i.m, %.lr.ph ], [ %i.v, %bb.e ] ; 2 uses
  %.sroa.014.0.copyload = load i32, ptr %.03968, align 4
  %i.w = sext i32 %.sroa.014.0.copyload to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 124
  %i.aa = load i16, ptr %i.z, align 4             ; 2 uses
  %i.ab = and i16 %i.aa, 64
  %i.ac = icmp ne i16 %i.ab, 0
  %i.ad = trunc i16 %i.aa to i1
  %.not61 = xor i1 %i.ad, true
  %or.cond = or i1 %i.u, %.not61
  %or.cond63 = and i1 %i.ac, %or.cond
  br i1 %or.cond63, label %.loopexit.sink.split, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp eq i64 %i.ak, 4
  br i1 %i.al, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %.not5069 = icmp eq ptr %i.ah, %i.af
  br i1 %.not5069, label %.loopexit, label %.lr.ph72

.lr.ph72:                                         ; preds = %.preheader
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %.sroa.012.0.copyload = load i32, ptr %i.ah, align 4
  %i.ar = load ptr, ptr %0, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = sext i32 %.sroa.012.0.copyload to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 124
  %i.ba = load i16, ptr %i.az, align 4
  %i.bb = trunc i16 %i.ba to i8
  %i.bc = lshr i8 %i.bb, 6
  br label %.thread58

bb.h:                                             ; preds = %.lr.ph72, %bb.j
  %.04471 = phi i8 [ 0, %.lr.ph72 ], [ %.246.ph, %bb.j ]
  %.04970 = phi ptr [ %i.ah, %.lr.ph72 ], [ %i.bk, %bb.j ] ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %.04970, align 4
  %i.bd = sext i32 %.sroa.0.0.copyload to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 124
  %i.bh = load i16, ptr %i.bg, align 4            ; 2 uses
  %i.bi = trunc i16 %i.bh to i1
  br i1 %i.bi, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = and i16 %i.bh, 64
  %.not65 = icmp eq i16 %i.bj, 0
  br i1 %.not65, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.246.ph = phi i8 [ %.04471, %bb.h ], [ 1, %bb.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.04970, i64 4 ; 2 uses
  %.not50 = icmp eq ptr %i.bk, %i.af
  br i1 %.not50, label %.thread58, label %bb.h

.thread58:                                        ; preds = %bb.j, %bb.g
  %.448 = phi i8 [ %i.bc, %bb.g ], [ %.246.ph, %bb.j ]
  %i.bl = trunc i8 %.448 to i1
  br i1 %i.bl, label %.loopexit.sink.split, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.f, %.thread58
  %i.bm = or disjoint i16 %i.b, 64
  store i16 %i.bm, ptr %i.a, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.loopexit.sink.split, %.preheader, %.thread58, %bb.c, %bb.a
  %.7 = phi i1 [ false, %.preheader ], [ false, %bb.a ], [ false, %bb.c ], [ true, %.loopexit.sink.split ], [ false, %.thread58 ], [ false, %bb.i ]
  ret i1 %.7
}

declare void @_ZN2v88internal8compiler8ConstantC1Ei(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = !{!11, !13}
!11 = distinct !{!11, !12, !"_ZNK2v88internal10ZoneVectorIPNS0_8compiler16InstructionBlockEE6rbeginEv: argument 0"}
!12 = distinct !{!12, !"_ZNK2v88internal10ZoneVectorIPNS0_8compiler16InstructionBlockEE6rbeginEv"}
!13 = distinct !{!13, !14, !"_ZN2v84base8ReversedIKNS_8internal10ZoneVectorIPNS2_8compiler16InstructionBlockEEEEEDaRT_: argument 0"}
!14 = distinct !{!14, !"_ZN2v84base8ReversedIKNS_8internal10ZoneVectorIPNS2_8compiler16InstructionBlockEEEEEDaRT_"}
!15 = !{!16, !13}
!16 = distinct !{!16, !17, !"_ZNK2v88internal10ZoneVectorIPNS0_8compiler16InstructionBlockEE4rendEv: argument 0"}
!17 = distinct !{!17, !"_ZNK2v88internal10ZoneVectorIPNS0_8compiler16InstructionBlockEE4rendEv"}
end_hunk_1
