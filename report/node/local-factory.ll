inline.NumInlined: 133
inline.NumDeleted: 67
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", [4 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", [4 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.2", [4 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.5", [2 x i8], %"class.v8::internal::FlagValue.2", [4 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", [4 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.6", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.5" = type { %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base" }
%"struct.std::_Optional_payload_base" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.4" = type { double }
%"class.v8::internal::FlagValue.3" = type { i32 }
%"class.v8::internal::FlagValue.6" = type { i64 }
%"class.v8::internal::FlagValue.2" = type { i32 }
%"class.v8::internal::FlagValue.1" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }

$_ZN2v88internal9LocalHeap15AllocateRawWithILNS0_13HeapAllocator19AllocationRetryModeE1EEENS0_6TaggedINS0_10HeapObjectEEEiNS0_14AllocationTypeENS0_16AllocationOriginENS0_19AllocationAlignmentENS0_14AllocationHintE = comdat any

@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"AllowHeapAllocationInRelease::IsAllowed()\00", align 1

@_ZN2v88internal12LocalFactoryC1EPNS0_7IsolateE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2v88internal12LocalFactoryC2EPNS0_7IsolateE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal12LocalFactoryC2EPNS0_7IsolateE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 648
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12LocalFactory16ProcessNewScriptENS0_12DirectHandleINS0_6ScriptEEENS0_15ScriptEventTypeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1833), align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8
  %i.d = add i64 %i.c, 63
  %i.e = inttoptr i64 %i.d to ptr
  %3 = load i64, ptr %i.e, align 8
  %4 = lshr i64 %3, 32
  %5 = trunc nuw i64 %4 to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_ZN2v88internal11LocalLogger11ScriptEventENS0_15ScriptEventTypeEi(ptr noundef nonnull align 8 dereferenceable(10) %i.g, i32 noundef %2, i32 noundef %5) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN2v88internal11LocalLogger11ScriptEventENS0_15ScriptEventTypeEi(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal12LocalFactory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i64 @_ZN2v88internal9LocalHeap15AllocateRawWithILNS0_13HeapAllocator19AllocationRetryModeE1EEENS0_6TaggedINS0_10HeapObjectEEEiNS0_14AllocationTypeENS0_16AllocationOriginENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 8 dereferenceable(1944) %i.a, i32 noundef %1, i8 noundef zeroext %2, i32 noundef 1, i8 noundef zeroext %3, i8 %4)
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal9LocalHeap15AllocateRawWithILNS0_13HeapAllocator19AllocationRetryModeE1EEENS0_6TaggedINS0_10HeapObjectEEEiNS0_14AllocationTypeENS0_16AllocationOriginENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 8 dereferenceable(1944) %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3, i8 noundef zeroext %4, i8 %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  switch i8 %2, label %_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit23 [
    i8 0, label %bb.b
    i8 1, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN2v88internal20PerThreadAssertScopeILb1EJLNS0_19PerThreadAssertTypeE2EEE9IsAllowedEv() #4
  br i1 %i.b, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2784
  %i.f = load i8, ptr %i.e, align 8, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %_ZN2v88internal9LocalHeap9SafepointEv.exit

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load atomic i8, ptr %i.i monotonic, align 1 ; 2 uses
  %i.k = trunc i8 %i.j to i1
  %i.l = and i8 %i.j, 6
  %i.m = icmp eq i8 %i.l, 0
  %.not1.i = or i1 %i.m, %i.k
  br i1 %.not1.i, label %_ZN2v88internal9LocalHeap9SafepointEv.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9LocalHeap17SafepointSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.h) #4
  br label %_ZN2v88internal9LocalHeap9SafepointEv.exit

_ZN2v88internal9LocalHeap9SafepointEv.exit:       ; preds = %bb.f, %bb.e, %bb.d
  %i.n = icmp ugt i32 %1, 131072
  br i1 %i.n, label %bb.g, label %bb.h, !prof !8

bb.g:                                             ; preds = %_ZN2v88internal9LocalHeap9SafepointEv.exit
  %i.o = tail call i64 @_ZN2v88internal13HeapAllocator24AllocateRawLargeInternalEiNS0_14AllocationTypeENS0_16AllocationOriginENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 8 dereferenceable(1704) %i.a, i32 noundef %1, i8 noundef zeroext 0, i32 noundef %3, i8 noundef zeroext %4, i8 %5) #4
  br label %_ZN2v88internal13MainAllocator11AllocateRawEiNS0_19AllocationAlignmentENS0_16AllocationOriginENS0_14AllocationHintE.exit13

bb.h:                                             ; preds = %_ZN2v88internal9LocalHeap9SafepointEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %.not.i9 = icmp eq i8 %4, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  br i1 %.not.i9, label %bb.l, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = tail call noundef i32 @_ZN2v88internal4Heap14GetFillToAlignEmNS0_19AllocationAlignmentE(i64 noundef %i.t, i8 noundef zeroext %4) #4 ; 3 uses
  %i.v = add nsw i32 %i.u, %1
  %i.w = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = add i64 %i.z, %i.x                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ac = load i64, ptr %i.ab, align 8
  %.not106 = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not106, label %_ZN2v88internal13MainAllocator19AllocateFastAlignedEiPiNS0_19AllocationAlignmentENS0_16AllocationOriginE.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.aa, ptr %i.y, align 8
  %i.ad = add i64 %i.z, 1                         ; 2 uses
  %i.ae = icmp sgt i32 %i.u, 0
  br i1 %i.ae, label %bb.k, label %_ZN2v88internal13MainAllocator19AllocateFastAlignedEiPiNS0_19AllocationAlignmentENS0_16AllocationOriginE.exit

bb.k:                                             ; preds = %bb.j
  %i.af = tail call noundef ptr @_ZNK2v88internal13MainAllocator10space_heapEv(ptr noundef nonnull align 8 dereferenceable(248) %i.p) #4
  %i.ag = tail call i64 @_ZN2v88internal4Heap17PrecedeWithFillerENS0_6TaggedINS0_10HeapObjectEEEi(ptr noundef nonnull align 8 dereferenceable(2992) %i.af, i64 %i.ad, i32 noundef %i.u) #4
  br label %_ZN2v88internal13MainAllocator19AllocateFastAlignedEiPiNS0_19AllocationAlignmentENS0_16AllocationOriginE.exit

bb.l:                                             ; preds = %bb.h
  %i.ah = zext nneg i32 %1 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = add i64 %i.aj, %i.ah                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.am = load i64, ptr %i.al, align 8
  %.not107 = icmp ugt i64 %i.ak, %i.am
  br i1 %.not107, label %_ZN2v88internal13MainAllocator19AllocateFastAlignedEiPiNS0_19AllocationAlignmentENS0_16AllocationOriginE.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %i.ak, ptr %i.ai, align 8
  %i.an = add i64 %i.aj, 1
  br label %_ZN2v88internal13MainAllocator19AllocateFastAlignedEiPiNS0_19AllocationAlignmentENS0_16AllocationOriginE.exit

_ZN2v88internal13MainAllocator19AllocateFastAlignedEiPiNS0_19AllocationAlignmentENS0_16AllocationOriginE.exit: ; preds = %bb.m, %bb.k, %bb.j
  %storemerge.i10 = phi i64 [ %i.ad, %bb.j ], [ %i.an, %bb.m ], [ %i.ag, %bb.k ] ; 2 uses
  %i.ao = icmp eq i64 %storemerge.i10, 0
  br i1 %i.ao, label %_ZN2v88internal13MainAllocator19AllocateFastAlignedEiPiNS0_19AllocationAlignmentENS0_16AllocationOriginE.exit.thread, label %_ZN2v88internal13MainAllocator11AllocateRawEiNS0_19AllocationAlignmentENS0_16AllocationOriginENS0_14AllocationHintE.exit13.thread

_ZN2v88internal13MainAllocator19AllocateFastAlignedEiPiNS0_19AllocationAlignmentENS0_16AllocationOriginE.exit.thread: ; preds = %bb.l, %bb.i, %_ZN2v88internal13MainAllocator19AllocateFastAlignedEiPiNS0_19AllocationAlignmentENS0_16AllocationOriginE.exit
  %i.ap = tail call i64 @_ZN2v88internal13MainAllocator15AllocateRawSlowEiNS0_19AllocationAlignmentENS0_16AllocationOriginE(ptr noundef nonnull align 8 dereferenceable(248) %i.p, i32 noundef %1, i8 noundef zeroext %4, i32 noundef %3) #4
  br label %_ZN2v88internal13MainAllocator11AllocateRawEiNS0_19AllocationAlignmentENS0_16AllocationOriginENS0_14AllocationHintE.exit13

_ZN2v88internal13MainAllocator11AllocateRawEiNS0_19AllocationAlignmentENS0_16AllocationOriginENS0_14AllocationHintE.exit13: ; preds = %_ZN2v88internal13MainAllocator19AllocateFastAlignedEiPiNS0_19AllocationAlignmentENS0_16AllocationOriginE.exit.thread, %bb.g
  %storemerge.i = phi i64 [ %i.o, %bb.g ], [ %i.ap, %_ZN2v88internal13MainAllocator19AllocateFastAlignedEiPiNS0_19AllocationAlignmentENS0_16AllocationOriginE.exit.thread ] ; 2 uses
  %.not108 = icmp eq i64 %storemerge.i, 0
  br i1 %.not108, label %_ZNK2v88internal16AllocationResult2ToINS0_10HeapObjectEEEbPNS0_6TaggedIT_EE.exit23, label %_ZN2v88internal13MainAllocator11AllocateRawEiNS0_19AllocationAlignmentENS0_16AllocationOriginENS0_14AllocationHintE.exit13.thread

_ZN2v88internal13MainAllocator11AllocateRawEiNS0_19AllocationAlignmentENS0_16AllocationOriginENS0_14AllocationHintE.exit13.thread: ; preds = %_ZN2v88internal13MainAllocator11AllocateRawEiNS0_19AllocationAlignmentENS0_16AllocationOriginENS0_14AllocationHintE.exit13, %_ZN2v88internal13MainAllocator19AllocateFastAlignedEiPiNS0_19AllocationAlignmentENS0_16AllocationOriginE.exit
  %storemerge.i72.ph = phi i64 [ %storemerge.i10, %_ZN2v88internal13MainAllocator19AllocateFastAlignedEiPiNS0_19AllocationAlignmentENS0_16AllocationOriginE.exit ], [ %storemerge.i, %_ZN2v88internal13MainAllocator11AllocateRawEiNS0_19AllocationAlignmentENS0_16AllocationOriginENS0_14AllocationHintE.exit13 ] ; 4 uses
  %i.aq = load ptr, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !range !5, !noundef !6
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.n, label %_ZN2v88internal13HeapAllocator15AllocateRawWithILNS1_19AllocationRetryModeE1EEENS0_6TaggedINS0_10HeapObjectEEEiNS0_14AllocationTypeENS0_16AllocationOriginENS0_19AllocationAlignmentENS0_14AllocationHintE.exit

bb.n:                                             ; preds = %_ZN2v88internal13MainAllocator11AllocateRawEiNS0_19AllocationAlignmentENS0_16AllocationOriginENS0_14AllocationHintE.exit13.thread
  %i.au = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2808
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 2816
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %_ZN2v88internal13HeapAllocator15AllocateRawWithILNS1_19AllocationRetryModeE1EEENS0_6TaggedINS0_10HeapObjectEEEiNS0_14AllocationTypeENS0_16AllocationOriginENS0_19AllocationAlignmentENS0_14AllocationHintE.exit, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.n
  %i.ba = add i64 %storemerge.i72.ph, -1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph113, %bb.o
  %.sroa.037.0112 = phi ptr [ %i.aw, %.lr.ph113 ], [ %i.be, %bb.o ] ; 2 uses
  %i.bb = load ptr, ptr %.sroa.037.0112, align 8  ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i64 noundef %i.ba, i32 noundef %1) #4, !inline_history !9
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.037.0112, i64 8 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ay
  br i1 %i.bf, label %_ZN2v88internal13HeapAllocator15AllocateRawWithILNS1_19AllocationRetryModeE1EEENS0_6TaggedINS0_10HeapObjectEEEiNS0_14AllocationTypeENS0_16AllocationOriginENS0_19AllocationAlignmentENS0_14AllocationHintE.exit, label %bb.o

bb.p:                                             ; preds = %bb.a
  %i.bg = tail call noundef zeroext i1 @_ZN2v88internal20PerThreadAssertScopeILb1EJLNS0_19PerThreadAssertTypeE2EEE9IsAllowedEv() #4
  br i1 %i.bg, label %bb.r, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2784
  %i.bk = load i8, ptr %i.bj, align 8, !range !5, !noundef !6
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.s, label %_ZN2v88internal9LocalHeap9SafepointEv.exit25

bb.s:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  %i.bo = load atomic i8, ptr %i.bn monotonic, align 1 ; 2 uses
  %i.bp = trunc i8 %i.bo to i1
  %i.bq = and i8 %i.bo, 6
  %i.br = icmp eq i8 %i.bq, 0
  %.not1.i24 = or i1 %i.br, %i.bp
  br i1 %.not1.i24, label %_ZN2v88internal9LocalHeap9SafepointEv.exit25, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN2v88internal9LocalHeap17SafepointSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.bm) #4
  br label %_ZN2v88internal9LocalHeap9SafepointEv.exit25

_ZN2v88internal9LocalHeap9SafepointEv.exit25:     ; preds = %bb.t, %bb.s, %bb.r
  %i.bs = icmp ugt i32 %1, 131072
  br i1 %i.bs, label %bb.u, label %bb.v, !prof !8

bb.u:                                             ; preds = %_ZN2v88internal9LocalHeap9SafepointEv.exit25
  %i.bt = tail call i64 @_ZN2v88internal13HeapAllocator24AllocateRawLargeInternalEiNS0_14AllocationTypeENS0_16AllocationOriginENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 8 dereferenceable(1704) %i.a, i32 noundef %1, i8 noundef zeroext 1, i32 noundef %3, i8 noundef zeroext %4, i8 %5) #4
  br label %_ZN2v88internal13MainAllocator11AllocateRawEiNS0_19AllocationAlignmentENS0_16AllocationOriginENS0_14AllocationHintE.exit

bb.v:                                             ; preds = %_ZN2v88internal9LocalHeap9SafepointEv.exit25
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %.not.i = icmp eq i8 %4, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 3 uses
  br i1 %.not.i, label %bb.z, label %bb.w, !prof !7
end_hunk_0
