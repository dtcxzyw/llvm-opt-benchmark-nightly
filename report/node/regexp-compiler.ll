inline.NumInlined: 1533
inline.NumDeleted: 508
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", [4 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", [4 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.2", [4 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue.5", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.5", [2 x i8], %"class.v8::internal::FlagValue.2", [4 x i8], %"class.v8::internal::FlagValue.4", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.3", %"class.v8::internal::FlagValue.3", [4 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.12", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.2", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.1", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.5" = type { %"class.std::optional.6" }
%"class.std::optional.6" = type { %"struct.std::_Optional_base.7" }
%"struct.std::_Optional_base.7" = type { %"struct.std::_Optional_payload.9" }
%"struct.std::_Optional_payload.9" = type { %"struct.std::_Optional_payload_base.10" }
%"struct.std::_Optional_payload_base.10" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.4" = type { double }
%"class.v8::internal::FlagValue.3" = type { i32 }
%"class.v8::internal::FlagValue.12" = type { i64 }
%"class.v8::internal::FlagValue.2" = type { i32 }
%"class.v8::internal::FlagValue.1" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"struct.v8::OOMDetails" = type { i8, ptr }
%"struct.v8::internal::RegExpCompiler::CompilationResult" = type <{ i32, [4 x i8], %"class.v8::internal::DirectHandle.13", i32, [4 x i8] }>
%"class.v8::internal::DirectHandle.13" = type { %"class.v8::internal::Handle.14" }
%"class.v8::internal::Handle.14" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"class.v8::internal::ZoneVector" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::Label" = type { i32, i32 }
%"class.v8::internal::Trace" = type { i32, i16, i16, ptr, ptr, ptr, i32, i32, %"class.v8::internal::QuickCheckDetails", ptr }
%"class.v8::internal::QuickCheckDetails" = type <{ i32, [4 x %"struct.v8::internal::QuickCheckDetails::Position"], i32, i32, i8, [3 x i8] }>
%"struct.v8::internal::QuickCheckDetails::Position" = type <{ i32, i32, i8, [3 x i8] }>
%"class.v8::internal::DynamicBitSet" = type { i32, ptr }
%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.492, [32 x i8] }
%struct.anon.492 = type { i16, i32, i32, ptr }
%"class.icu_78::UnicodeSet" = type <{ %"class.icu_78::UnicodeFilter", ptr, i32, i32, i8, [7 x i8], ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr, [25 x i32], [4 x i8] }>
%"class.icu_78::UnicodeFilter" = type { %"class.icu_78::UnicodeFunctor", %"class.icu_78::UnicodeMatcher" }
%"class.icu_78::UnicodeFunctor" = type { %"class.icu_78::UObject" }
%"class.icu_78::UnicodeMatcher" = type { ptr }
%"class.v8::internal::GuardedAlternative" = type { ptr, ptr }
%"struct.v8::internal::PreloadState" = type { i8, i8, i32, i32 }
%"class.v8::internal::FixedLengthLoopState" = type { %"class.v8::internal::Label", %"class.v8::internal::Label", ptr, %"class.v8::internal::Trace" }
%"class.v8::internal::AlternativeGenerationList" = type { %"class.v8::internal::ZoneList.489", [10 x %"class.v8::internal::AlternativeGeneration"] }
%"class.v8::internal::ZoneList.489" = type { ptr, i32, i32 }
%"class.v8::internal::AlternativeGeneration" = type { %"class.v8::internal::Label", i8, %"class.v8::internal::Label", %"class.v8::internal::QuickCheckDetails" }
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { [2 x i64] }
%"class.v8::internal::Analysis" = type <{ %"class.v8::internal::NodeVisitor", ptr, i8, [3 x i8], %"class.v8::base::Flags.0", i32, [4 x i8] }>
%"class.v8::internal::NodeVisitor" = type { ptr }
%"class.v8::base::Flags.0" = type { i32 }
%"class.v8::internal::Interval" = type { i32, i32 }
%"class.v8::internal::RegExpLookaround::Builder" = type { i8, ptr, ptr, i32, i32 }

$_ZN2v88internal10RegExpText10AddElementENS0_11TextElementEPNS0_4ZoneE = comdat any

$_ZN2v88internal13DynamicBitSet3SetEjPNS0_4ZoneE = comdat any

$_ZN2v88internal14CharacterRange4ListEPNS0_4ZoneES1_ = comdat any

$_ZN2v88internal25AlternativeGenerationListC2EiPNS0_4ZoneE = comdat any

$_ZN2v88internal19BoyerMooreLookahead11SetIntervalEiRKNS0_8IntervalE = comdat any

$_ZN2v88internal4Zone3NewINS0_10ChoiceNodeEJiPS1_EEEPT_DpOT0_ = comdat any

$_ZN2v88internal10RegExpTreeD2Ev = comdat any

$_ZN2v88internal10RegExpTreeD0Ev = comdat any

$_ZN2v88internal10RegExpTree13IsTextElementEv = comdat any

$_ZN2v88internal10RegExpTree17IsAnchoredAtStartEv = comdat any

$_ZN2v88internal10RegExpTree15IsAnchoredAtEndEv = comdat any

$_ZN2v88internal10RegExpTree16CaptureRegistersEv = comdat any

$_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv = comdat any

$_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE = comdat any

$_ZN2v88internal10RegExpNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb = comdat any

$_ZN2v88internal10RegExpNode13FilterOneByteEiPNS0_14RegExpCompilerE = comdat any

$_ZN2v88internal10RegExpNode9AsEndNodeEv = comdat any

$_ZN2v88internal10RegExpNode12AsActionNodeEv = comdat any

$_ZN2v88internal10RegExpNode12AsChoiceNodeEv = comdat any

$_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv = comdat any

$_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv = comdat any

$_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv = comdat any

$_ZN2v88internal10RegExpNode15AsAssertionNodeEv = comdat any

$_ZN2v88internal10RegExpNode10AsTextNodeEv = comdat any

$_ZN2v88internal10RegExpNode15AsSeqRegExpNodeEv = comdat any

$_ZN2v88internal13SeqRegExpNodeD0Ev = comdat any

$_ZN2v88internal13SeqRegExpNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb = comdat any

$_ZN2v88internal13SeqRegExpNode15AsSeqRegExpNodeEv = comdat any

$_ZN2v88internal10ActionNodeD0Ev = comdat any

$_ZN2v88internal10ActionNode21FixedLengthLoopLengthEv = comdat any

$_ZN2v88internal10ActionNode12AsActionNodeEv = comdat any

$_ZN2v88internal8TextNodeD0Ev = comdat any

$_ZN2v88internal8TextNode10AsTextNodeEv = comdat any

$_ZN2v88internal13AssertionNodeD0Ev = comdat any

$_ZN2v88internal13AssertionNode15AsAssertionNodeEv = comdat any

$_ZN2v88internal17BackReferenceNodeD0Ev = comdat any

$_ZN2v88internal17BackReferenceNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib = comdat any

$_ZN2v88internal17BackReferenceNode19AsBackReferenceNodeEv = comdat any

$_ZN2v88internal7EndNodeD0Ev = comdat any

$_ZN2v88internal7EndNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib = comdat any

$_ZN2v88internal7EndNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb = comdat any

$_ZN2v88internal7EndNode9AsEndNodeEv = comdat any

$_ZN2v88internal23NegativeSubmatchSuccessD0Ev = comdat any

$_ZN2v88internal10ChoiceNodeD0Ev = comdat any

$_ZN2v88internal10ChoiceNode12AsChoiceNodeEv = comdat any

$_ZN2v88internal10ChoiceNode39try_to_emit_quick_check_for_alternativeEb = comdat any

$_ZN2v88internal10ChoiceNode13read_backwardEv = comdat any

$_ZN2v88internal28NegativeLookaroundChoiceNodeD0Ev = comdat any

$_ZN2v88internal28NegativeLookaroundChoiceNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb = comdat any

$_ZN2v88internal28NegativeLookaroundChoiceNode30AsNegativeLookaroundChoiceNodeEv = comdat any

$_ZN2v88internal28NegativeLookaroundChoiceNode39try_to_emit_quick_check_for_alternativeEb = comdat any

$_ZN2v88internal14LoopChoiceNodeD0Ev = comdat any

$_ZN2v88internal14LoopChoiceNode16AsLoopChoiceNodeEv = comdat any

$_ZN2v88internal14LoopChoiceNode13read_backwardEv = comdat any

$_ZN2v88internal8ZoneListIjE17ResizeAddInternalERKjPNS0_4ZoneE = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_10RegExpNodeEE4GrowEm = comdat any

$_ZSt27__throw_bad_optional_accessv = comdat any

$_ZN2v88internal17RegExpClassRangesC2EPNS0_4ZoneEPNS0_8ZoneListINS0_14CharacterRangeEEENS_4base5FlagsINS1_4FlagEiiEE = comdat any

$_ZN2v88internal8TextNodeC2EPNS0_17RegExpClassRangesEbPNS0_10RegExpNodeE = comdat any

$_ZN2v88internal11NodeVisitorD2Ev = comdat any

@.str = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str.1 = private unnamed_addr constant [35 x i8] c"Aborting on excess zone allocation\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"unimplemented code\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"RegExpCompiler\00", align 1
@_ZN2v88internal2V813kNoOOMDetailsE = external global %"struct.v8::OOMDetails", align 8
@_ZTVN2v88internal10RegExpTreeE = hidden unnamed_addr constant { [41 x ptr] } { [41 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpTreeD2Ev, ptr @_ZN2v88internal10RegExpTreeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN2v88internal10RegExpTree13IsTextElementEv, ptr @_ZN2v88internal10RegExpTree17IsAnchoredAtStartEv, ptr @_ZN2v88internal10RegExpTree15IsAnchoredAtEndEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN2v88internal10RegExpTree16CaptureRegistersEv, ptr @_ZN2v88internal10RegExpTree12AppendToTextEPNS0_10RegExpTextEPNS0_4ZoneE, ptr @_ZN2v88internal10RegExpTree13AsDisjunctionEv, ptr @_ZN2v88internal10RegExpTree13IsDisjunctionEv, ptr @_ZN2v88internal10RegExpTree13AsAlternativeEv, ptr @_ZN2v88internal10RegExpTree13IsAlternativeEv, ptr @_ZN2v88internal10RegExpTree11AsAssertionEv, ptr @_ZN2v88internal10RegExpTree11IsAssertionEv, ptr @_ZN2v88internal10RegExpTree13AsClassRangesEv, ptr @_ZN2v88internal10RegExpTree13IsClassRangesEv, ptr @_ZN2v88internal10RegExpTree17AsClassSetOperandEv, ptr @_ZN2v88internal10RegExpTree17IsClassSetOperandEv, ptr @_ZN2v88internal10RegExpTree20AsClassSetExpressionEv, ptr @_ZN2v88internal10RegExpTree20IsClassSetExpressionEv, ptr @_ZN2v88internal10RegExpTree6AsAtomEv, ptr @_ZN2v88internal10RegExpTree6IsAtomEv, ptr @_ZN2v88internal10RegExpTree12AsQuantifierEv, ptr @_ZN2v88internal10RegExpTree12IsQuantifierEv, ptr @_ZN2v88internal10RegExpTree9AsCaptureEv, ptr @_ZN2v88internal10RegExpTree9IsCaptureEv, ptr @_ZN2v88internal10RegExpTree7AsGroupEv, ptr @_ZN2v88internal10RegExpTree7IsGroupEv, ptr @_ZN2v88internal10RegExpTree12AsLookaroundEv, ptr @_ZN2v88internal10RegExpTree12IsLookaroundEv, ptr @_ZN2v88internal10RegExpTree15AsBackReferenceEv, ptr @_ZN2v88internal10RegExpTree15IsBackReferenceEv, ptr @_ZN2v88internal10RegExpTree7AsEmptyEv, ptr @_ZN2v88internal10RegExpTree7IsEmptyEv, ptr @_ZN2v88internal10RegExpTree6AsTextEv, ptr @_ZN2v88internal10RegExpTree6IsTextEv] }, align 8
@_ZTVN2v88internal10RegExpNodeE = hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal10RegExpNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @__cxa_pure_virtual, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal10RegExpNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10RegExpNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal10RegExpNode15AsSeqRegExpNodeEv] }, align 8
@_ZTVN2v88internal13SeqRegExpNodeE = hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal13SeqRegExpNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @__cxa_pure_virtual, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal13SeqRegExpNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal13SeqRegExpNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10RegExpNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal13SeqRegExpNode15AsSeqRegExpNodeEv] }, align 8
@_ZTVN2v88internal10ActionNodeE = hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal10ActionNodeD0Ev, ptr @_ZN2v88internal10ActionNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal10ActionNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal10ActionNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10ActionNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10ActionNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal13SeqRegExpNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10ActionNode12AsActionNodeEv, ptr @_ZN2v88internal10RegExpNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal13SeqRegExpNode15AsSeqRegExpNodeEv] }, align 8
@_ZTVN2v88internal8TextNodeE = hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal8TextNodeD0Ev, ptr @_ZN2v88internal8TextNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal8TextNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal8TextNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal8TextNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal8TextNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal8TextNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal8TextNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10RegExpNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal8TextNode10AsTextNodeEv, ptr @_ZN2v88internal13SeqRegExpNode15AsSeqRegExpNodeEv] }, align 8
@_ZTVN2v88internal13AssertionNodeE = hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal13AssertionNodeD0Ev, ptr @_ZN2v88internal13AssertionNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal13AssertionNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal13AssertionNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal13AssertionNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal13SeqRegExpNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10RegExpNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal13AssertionNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal13SeqRegExpNode15AsSeqRegExpNodeEv] }, align 8
@_ZTVN2v88internal17BackReferenceNodeE = hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal17BackReferenceNodeD0Ev, ptr @_ZN2v88internal17BackReferenceNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal17BackReferenceNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal17BackReferenceNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal17BackReferenceNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal13SeqRegExpNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10RegExpNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal17BackReferenceNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal13SeqRegExpNode15AsSeqRegExpNodeEv] }, align 8
@_ZTVN2v88internal7EndNodeE = hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal7EndNodeD0Ev, ptr @_ZN2v88internal7EndNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal7EndNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal7EndNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal7EndNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal10RegExpNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal7EndNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10RegExpNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal10RegExpNode15AsSeqRegExpNodeEv] }, align 8
@_ZTVN2v88internal23NegativeSubmatchSuccessE = hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal23NegativeSubmatchSuccessD0Ev, ptr @_ZN2v88internal7EndNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal23NegativeSubmatchSuccess4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal7EndNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal7EndNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal10RegExpNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal7EndNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10RegExpNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal10RegExpNode15AsSeqRegExpNodeEv] }, align 8
@_ZTVN2v88internal10ChoiceNodeE = hidden unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal10ChoiceNodeD0Ev, ptr @_ZN2v88internal10ChoiceNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal10ChoiceNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal10ChoiceNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10ChoiceNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal10ChoiceNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10ChoiceNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal10RegExpNode15AsSeqRegExpNodeEv, ptr @_ZN2v88internal10ChoiceNode39try_to_emit_quick_check_for_alternativeEb, ptr @_ZN2v88internal10ChoiceNode13read_backwardEv] }, align 8
@_ZTVN2v88internal28NegativeLookaroundChoiceNodeE = hidden unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal28NegativeLookaroundChoiceNodeD0Ev, ptr @_ZN2v88internal28NegativeLookaroundChoiceNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal10ChoiceNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal10RegExpNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal28NegativeLookaroundChoiceNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal28NegativeLookaroundChoiceNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal28NegativeLookaroundChoiceNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10ChoiceNode12AsChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal28NegativeLookaroundChoiceNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal10RegExpNode15AsSeqRegExpNodeEv, ptr @_ZN2v88internal28NegativeLookaroundChoiceNode39try_to_emit_quick_check_for_alternativeEb, ptr @_ZN2v88internal10ChoiceNode13read_backwardEv] }, align 8
@_ZTVN2v88internal14LoopChoiceNodeE = hidden unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10RegExpNodeD2Ev, ptr @_ZN2v88internal14LoopChoiceNodeD0Ev, ptr @_ZN2v88internal14LoopChoiceNode6AcceptEPNS0_11NodeVisitorE, ptr @_ZN2v88internal14LoopChoiceNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE, ptr @_ZN2v88internal14LoopChoiceNode24EatsAtLeastFromLoopEntryEv, ptr @_ZN2v88internal14LoopChoiceNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal14LoopChoiceNode33GetQuickCheckDetailsFromLoopEntryEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib, ptr @_ZN2v88internal10RegExpNode21FixedLengthLoopLengthEv, ptr @_ZN2v88internal10RegExpNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE, ptr @_ZN2v88internal14LoopChoiceNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb, ptr @_ZN2v88internal14LoopChoiceNode13FilterOneByteEiPNS0_14RegExpCompilerE, ptr @_ZN2v88internal10RegExpNode9AsEndNodeEv, ptr @_ZN2v88internal10RegExpNode12AsActionNodeEv, ptr @_ZN2v88internal10ChoiceNode12AsChoiceNodeEv, ptr @_ZN2v88internal14LoopChoiceNode16AsLoopChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode30AsNegativeLookaroundChoiceNodeEv, ptr @_ZN2v88internal10RegExpNode19AsBackReferenceNodeEv, ptr @_ZN2v88internal10RegExpNode15AsAssertionNodeEv, ptr @_ZN2v88internal10RegExpNode10AsTextNodeEv, ptr @_ZN2v88internal10RegExpNode15AsSeqRegExpNodeEv, ptr @_ZN2v88internal10ChoiceNode39try_to_emit_quick_check_for_alternativeEb, ptr @_ZN2v88internal14LoopChoiceNode13read_backwardEv] }, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"end - start + items <= letter_length\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"ch <= 0xffff\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"one_byte\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"one_byte implies chars[0] <= String::kMaxOneByteCharCodeU\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"std::numeric_limits<int>::max() >= length_\00", align 1
@_ZTVN2v88internal17RegExpClassRangesE = external unnamed_addr constant { [41 x ptr] }, align 8
@_ZTVN2v88internal10RegExpAtomE = external unnamed_addr constant { [41 x ptr] }, align 8
@.str.13 = private unnamed_addr constant [52 x i8] c"%s: __position (which is %zu) >= _Nb (which is %zu)\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"bitset::reset\00", align 1
@_ZTVN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEEE = internal unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal11NodeVisitorD2Ev, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEED0Ev, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE8VisitEndEPNS0_7EndNodeE, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE11VisitActionEPNS0_10ActionNodeE, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE11VisitChoiceEPNS0_10ChoiceNodeE, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE15VisitLoopChoiceEPNS0_14LoopChoiceNodeE, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE29VisitNegativeLookaroundChoiceEPNS0_28NegativeLookaroundChoiceNodeE, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE18VisitBackReferenceEPNS0_17BackReferenceNodeE, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE14VisitAssertionEPNS0_13AssertionNodeE, ptr @_ZN2v88internal8AnalysisIJNS0_12_GLOBAL__N_119AssertionPropagatorENS2_21EatsAtLeastPropagatorEEE9VisitTextEPNS0_8TextNodeE] }, align 8
@.str.15 = private unnamed_addr constant [37 x i8] c"Analysis: Aborting on stack overflow\00", align 1

@_ZN2v88internal14RegExpCompilerC1EPNS0_7IsolateEPNS0_4ZoneEiNS_4base5FlagsINS0_10RegExpFlagEiiEEb = hidden unnamed_addr alias void (ptr, ptr, ptr, i32, i32, i1), ptr @_ZN2v88internal14RegExpCompilerC2EPNS0_7IsolateEPNS0_4ZoneEiNS_4base5FlagsINS0_10RegExpFlagEiiEEb
@_ZN2v88internal10RegExpNodeD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2v88internal10RegExpNodeD2Ev
@_ZN2v88internal19BoyerMooreLookaheadC1EiPNS0_14RegExpCompilerEPNS0_4ZoneE = hidden unnamed_addr alias void (ptr, i32, ptr, ptr), ptr @_ZN2v88internal19BoyerMooreLookaheadC2EiPNS0_14RegExpCompilerEPNS0_4ZoneE
@_ZN2v88internal20FixedLengthLoopStateC1EbPNS0_10ChoiceNodeE = hidden unnamed_addr alias void (ptr, i1, ptr), ptr @_ZN2v88internal20FixedLengthLoopStateC2EbPNS0_10ChoiceNodeE

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal10RegExpTree12AppendToTextEPNS0_10RegExpTextEPNS0_4ZoneE(ptr nonnull readnone align 8 captures(none) %0, ptr readnone captures(none) %1, ptr readnone captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10RegExpAtom12AppendToTextEPNS0_10RegExpTextEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN2v88internal10RegExpText10AddElementENS0_11TextElementEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 4294967295, ptr nonnull %0, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10RegExpText10AddElementENS0_11TextElementEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0.sroa.3.0.extract.shift = lshr i64 %1, 32
  %.sroa.0.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.3.0.extract.shift to i32 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal8ZoneListINS0_11TextElementEE3AddERKS2_PNS0_4ZoneE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = shl nsw i32 %i.e, 1
  %i.i = or disjoint i32 %i.h, 1                  ; 2 uses
  %i.j = icmp sgt i32 %i.e, -1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = shl nuw nsw i64 %i.k, 4                  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = sub i64 %i.n, %i.p
  %i.r = icmp ugt i64 %i.l, %i.q
  br i1 %i.r, label %bb.f, label %_ZN2v88internal4Zone13AllocateArrayINS0_11TextElementEA_S3_EEPT_m.exit.i.i.i.i, !prof !6

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef %i.l) #26
  %.pre.i.i.i.i.i.i = load i64, ptr %i.o, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_11TextElementEA_S3_EEPT_m.exit.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_11TextElementEA_S3_EEPT_m.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.s = phi i64 [ %.pre.i.i.i.i.i.i, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = add i64 %i.s, %i.l
  store i64 %i.u, ptr %i.o, align 8
  %i.v = load i32, ptr %i.b, align 4              ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i, label %_ZN2v88internal8ZoneListINS0_11TextElementEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_11TextElementEA_S3_EEPT_m.exit.i.i.i.i
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = zext nneg i32 %i.v to i64
  %i.z = shl nuw nsw i64 %i.y, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.x, i64 %i.z, i1 false)
  %.pre.i.i.i = load i32, ptr %i.b, align 4
  br label %_ZN2v88internal8ZoneListINS0_11TextElementEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListINS0_11TextElementEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i: ; preds = %_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i, %_ZN2v88internal4Zone13AllocateArrayINS0_11TextElementEA_S3_EEPT_m.exit.i.i.i.i
  %i.aa = phi i32 [ %i.v, %_ZN2v88internal4Zone13AllocateArrayINS0_11TextElementEA_S3_EEPT_m.exit.i.i.i.i ], [ %.pre.i.i.i, %_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i ]
  store ptr %i.t, ptr %i.a, align 8
  store i32 %i.i, ptr %i.d, align 8
  br label %_ZN2v88internal8ZoneListINS0_11TextElementEE3AddERKS2_PNS0_4ZoneE.exit

_ZN2v88internal8ZoneListINS0_11TextElementEE3AddERKS2_PNS0_4ZoneE.exit: ; preds = %bb.b, %_ZN2v88internal8ZoneListINS0_11TextElementEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i
  %.sink21 = phi i32 [ %i.c, %bb.b ], [ %i.aa, %_ZN2v88internal8ZoneListINS0_11TextElementEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i ] ; 2 uses
  %.sink18 = phi ptr [ %i.g, %bb.b ], [ %i.t, %_ZN2v88internal8ZoneListINS0_11TextElementEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i ]
  %i.ab = add nsw i32 %.sink21, 1
  store i32 %i.ab, ptr %i.b, align 4
  %i.ac = sext i32 %.sink21 to i64
  %i.ad = getelementptr inbounds [16 x i8], ptr %.sink18, i64 %i.ac ; 2 uses
  store i64 %1, ptr %i.ad, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx3, align 8
  switch i32 %.sroa.0.sroa.3.0.extract.trunc, label %bb.i [
    i32 0, label %bb.g
    i32 1, label %_ZNK2v88internal11TextElement6lengthEv.exit
  ]

bb.g:                                             ; preds = %_ZN2v88internal8ZoneListINS0_11TextElementEE3AddERKS2_PNS0_4ZoneE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp ult i64 %i.af, 2147483648
  br i1 %i.ag, label %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #25
  unreachable

_ZNK2v88internal10RegExpAtom6lengthEv.exit.i:     ; preds = %bb.g
  %i.ah = trunc nuw nsw i64 %i.af to i32
  br label %_ZNK2v88internal11TextElement6lengthEv.exit

bb.i:                                             ; preds = %_ZN2v88internal8ZoneListINS0_11TextElementEE3AddERKS2_PNS0_4ZoneE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

_ZNK2v88internal11TextElement6lengthEv.exit:      ; preds = %_ZN2v88internal8ZoneListINS0_11TextElementEE3AddERKS2_PNS0_4ZoneE.exit, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i
  %.0.i = phi i32 [ %i.ah, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i ], [ %.sroa.0.sroa.3.0.extract.trunc, %_ZN2v88internal8ZoneListINS0_11TextElementEE3AddERKS2_PNS0_4ZoneE.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = add nsw i32 %i.aj, %.0.i
  store i32 %i.ak, ptr %i.ai, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i64, ptr } @_ZN2v88internal11TextElement4AtomEPNS0_10RegExpAtomE(ptr noundef %0) local_unnamed_addr #3 align 2 {
bb.a:
  %.fca.1.insert = insertvalue { i64, ptr } { i64 4294967295, ptr poison }, ptr %0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17RegExpClassRanges12AppendToTextEPNS0_10RegExpTextEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN2v88internal10RegExpText10AddElementENS0_11TextElementEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 8589934591, ptr nonnull %0, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i64, ptr } @_ZN2v88internal11TextElement11ClassRangesEPNS0_17RegExpClassRangesE(ptr noundef %0) local_unnamed_addr #3 align 2 {
bb.a:
  %.fca.1.insert = insertvalue { i64, ptr } { i64 8589934591, ptr poison }, ptr %0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10RegExpText12AppendToTextEPS1_PNS0_4ZoneE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge
end_hunk_0
begin_hunk_1_@_ZN2v88internal14RegExpCompiler8AssembleEPNS0_7IsolateEPNS0_20RegExpMacroAssemblerEPNS0_10RegExpNodeEiNS0_12DirectHandleINS0_6StringEEE:bb.a
  store i32 0, ptr %9, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i16 100, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 6
  store i16 255, ptr %i.l, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %9, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.1.i.i, i8 0, i64 9, i1 false)
  %.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %9, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.2.i.i, i8 0, i64 9, i1 false)
  %.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.3.i.i, i8 0, i64 9, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.n, i8 0, i64 9, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 104
  store ptr null, ptr %i.o, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.m, i8 0, i64 45, i1 false)
  %i.p = load ptr, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull %1, ptr noundef nonnull %9) #26
  %i.s = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 248
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull %8) #26
  %i.w = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 256
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.ae = phi ptr [ %i.ap, %bb.c ], [ %i.ac, %bb.a ]
  %i.af = phi ptr [ %i.aq, %bb.c ], [ %i.ab, %bb.a ]
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 4 uses
  store ptr %i.ag, ptr %i.aa, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i8 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.am = load ptr, ptr %i.ah, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull %1, ptr noundef nonnull %9) #26
  %.pre = load ptr, ptr %i.aa, align 8
  %.pre12 = load ptr, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.ap = phi ptr [ %.pre12, %bb.b ], [ %i.ae, %.lr.ph ] ; 2 uses
  %i.aq = phi ptr [ %.pre, %bb.b ], [ %i.ag, %.lr.ph ] ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ap
  br i1 %i.ar, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.at = load i8, ptr %i.as, align 1, !range !9, !noundef !10
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.d, label %bb.g

bb.d:                                             ; preds = %._crit_edge
  %i.av = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !9, !noundef !10
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1) #25
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ax = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(40) %i.ax) #26
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.bb = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.02.0.copyload = load i32, ptr %i.bc, align 4
  %i.bd = load ptr, ptr %i.bb, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr %i.a, i32 %.sroa.02.0.copyload) #26 ; 2 uses
  call void @_ZN2v88internal7Isolate32IncreaseTotalRegexpCodeGeneratedENS0_12DirectHandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320) %2, ptr %i.bg) #26
  store ptr null, ptr %i.f, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load i32, ptr %i.bh, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink19 = phi i32 [ 0, %bb.g ], [ 3, %bb.f ]
  %.sink17 = phi ptr [ %i.bg, %bb.g ], [ null, %bb.f ]
  %.sink = phi i32 [ %i.bi, %bb.g ], [ 0, %bb.f ]
  store i32 %.sink19, ptr %0, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink17, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.bk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void
}

declare void @_ZN2v88internal7Isolate32IncreaseTotalRegexpCodeGeneratedENS0_12DirectHandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320), ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal5Trace12mentions_regEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge
  %.sroa.010.015 = phi ptr [ %0, %bb.a ], [ %i.j, %.critedge ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4
  %i.g = sub i32 %1, %i.d
  %i.h = sub i32 %i.f, %i.d
  %.not14 = icmp ugt i32 %i.g, %i.h
  br i1 %.not14, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 104
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.j, null
  br i1 %.not16, label %bb.d, label %bb.b

bb.d:                                             ; preds = %.critedge, %bb.c
  %.lcssa = phi i1 [ false, %.critedge ], [ true, %bb.c ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal5Trace17GetStoredPositionEiPi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #7 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %.sroa.014.026 = phi ptr [ %0, %bb.a ], [ %i.p, %bb.f ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.014.026, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4
  %i.g = sub i32 %1, %i.d
  %i.h = sub i32 %i.f, %i.d
  %.not24 = icmp ugt i32 %i.g, %i.h
  br i1 %.not24, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, -2
  %switch = icmp eq i32 %i.k, 2
  br i1 %switch, label %bb.e, label %.thread21

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.014.026, i64 104
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load i32, ptr %i.m, align 8
  store i32 %i.n, ptr %2, align 4
  br label %.thread21

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.014.026, i64 104
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.thread21, label %bb.b

.thread21:                                        ; preds = %bb.f, %bb.d, %bb.e
  %i.r = phi i1 [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.f ]
  ret i1 %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -1, -2147483648) i32 @_ZN2v88internal5Trace21FindAffectedRegistersEPNS0_13DynamicBitSetEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.f
  ret i32 %.2

bb.c:                                             ; preds = %bb.a, %bb.f
  %.01627 = phi i32 [ -1, %bb.a ], [ %.2, %bb.f ] ; 2 uses
  %.sroa.020.026 = phi ptr [ %0, %bb.a ], [ %i.i, %bb.f ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.020.026, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %.not1924 = icmp sgt i32 %i.f, %i.d
  br i1 %.not1924, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal13DynamicBitSet3SetEjPNS0_4ZoneE.exit, %bb.d
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %.01627)
  br label %bb.f

.lr.ph:                                           ; preds = %bb.d, %_ZN2v88internal13DynamicBitSet3SetEjPNS0_4ZoneE.exit
  %.025 = phi i32 [ %87, %_ZN2v88internal13DynamicBitSet3SetEjPNS0_4ZoneE.exit ], [ %i.f, %bb.d ] ; 7 uses
  %6 = icmp ult i32 %.025, 32
  br i1 %6, label %7, label %11

7:                                                ; preds = %.lr.ph
  %8 = shl nuw i32 1, %.025
  %9 = load i32, ptr %1, align 8
  %10 = or i32 %9, %8
  store i32 %10, ptr %1, align 8
  br label %_ZN2v88internal13DynamicBitSet3SetEjPNS0_4ZoneE.exit

11:                                               ; preds = %.lr.ph
  %12 = load ptr, ptr %3, align 8                 ; 2 uses
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load i64, ptr %4, align 8
  %16 = load i64, ptr %5, align 8                 ; 2 uses
  %17 = sub i64 %15, %16
  %18 = icmp ult i64 %17, 16
  br i1 %18, label %19, label %20, !prof !6

19:                                               ; preds = %14
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 16) #26
  %.pre.i.i.i = load i64, ptr %5, align 8
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi i64 [ %.pre.i.i.i, %19 ], [ %16, %14 ] ; 2 uses
  %22 = inttoptr i64 %21 to ptr                   ; 6 uses
  %23 = add i64 %21, 16
  store i64 %23, ptr %5, align 8
  store ptr null, ptr %22, align 8
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 1, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 12
  store i32 0, ptr %25, align 4
  %26 = load i64, ptr %4, align 8
  %27 = load i64, ptr %5, align 8                 ; 2 uses
  %28 = sub i64 %26, %27
  %29 = icmp ult i64 %28, 8
  br i1 %29, label %30, label %_ZN2v88internal4Zone3NewINS0_8ZoneListIjEEJiRPS1_EEEPT_DpOT0_.exit.i, !prof !6

30:                                               ; preds = %20
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 8) #26
  %.pre.i.i.i.i.i = load i64, ptr %5, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8ZoneListIjEEJiRPS1_EEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_8ZoneListIjEEJiRPS1_EEEPT_DpOT0_.exit.i: ; preds = %30, %20
  %31 = phi i64 [ %.pre.i.i.i.i.i, %30 ], [ %27, %20 ] ; 2 uses
  %32 = inttoptr i64 %31 to ptr
  %33 = add i64 %31, 8
  store i64 %33, ptr %5, align 8
  store ptr %32, ptr %22, align 8
  store ptr %22, ptr %3, align 8
  br label %34

34:                                               ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListIjEEJiRPS1_EEEPT_DpOT0_.exit.i, %11
  %35 = phi ptr [ %22, %_ZN2v88internal4Zone3NewINS0_8ZoneListIjEEJiRPS1_EEEPT_DpOT0_.exit.i ], [ %12, %11 ] ; 6 uses
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 12 ; 5 uses
  %37 = load i32, ptr %36, align 4                ; 5 uses
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %.lr.ph.i.i, label %_ZNK2v88internal8ZoneListIjE8ContainsERKj.exit.thread.i

.lr.ph.i.i:                                       ; preds = %34
  %39 = load ptr, ptr %35, align 8
  %wide.trip.count.i.i = zext nneg i32 %37 to i64
  br label %bb.e

40:                                               ; preds = %bb.e
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK2v88internal8ZoneListIjE8ContainsERKj.exit.thread.i, label %bb.e, !llvm.loop !12

bb.e:                                             ; preds = %40, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %40 ] ; 2 uses
  %41 = getelementptr inbounds nuw [4 x i8], ptr %39, i64 %indvars.iv.i.i
  %42 = load i32, ptr %41, align 4
  %i.g = icmp eq i32 %42, %.025
  br i1 %i.g, label %_ZN2v88internal13DynamicBitSet3SetEjPNS0_4ZoneE.exit, label %40

_ZNK2v88internal8ZoneListIjE8ContainsERKj.exit.thread.i: ; preds = %40, %34
  %43 = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %44 = load i32, ptr %43, align 8                ; 3 uses
  %45 = icmp slt i32 %37, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %_ZNK2v88internal8ZoneListIjE8ContainsERKj.exit.thread.i
  %47 = load ptr, ptr %35, align 8
  %48 = add nsw i32 %37, 1
  store i32 %48, ptr %36, align 4
  %49 = sext i32 %37 to i64
  %50 = getelementptr inbounds [4 x i8], ptr %47, i64 %49
  store i32 %.025, ptr %50, align 4
  br label %_ZN2v88internal13DynamicBitSet3SetEjPNS0_4ZoneE.exit

51:                                               ; preds = %_ZNK2v88internal8ZoneListIjE8ContainsERKj.exit.thread.i
  %52 = shl nsw i32 %44, 1
  %53 = or disjoint i32 %52, 1                    ; 2 uses
  %54 = icmp sgt i32 %44, -1
  br i1 %54, label %56, label %55, !prof !5

55:                                               ; preds = %51
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #25
  unreachable

56:                                               ; preds = %51
  %57 = zext nneg i32 %53 to i64
  %58 = shl nuw nsw i64 %57, 2
  %59 = add nuw nsw i64 %58, 4                    ; 3 uses
  %60 = load i64, ptr %4, align 8
  %61 = load i64, ptr %5, align 8                 ; 2 uses
  %62 = sub i64 %60, %61
  %63 = icmp ugt i64 %59, %62
  br i1 %63, label %64, label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i, !prof !6

64:                                               ; preds = %56
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %59) #26
  %.pre.i.i.i.i = load i64, ptr %5, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i: ; preds = %64, %56
  %65 = phi i64 [ %.pre.i.i.i.i, %64 ], [ %61, %56 ] ; 2 uses
  %66 = inttoptr i64 %65 to ptr                   ; 7 uses
  %67 = add i64 %65, %59
  store i64 %67, ptr %5, align 8
  %68 = load i32, ptr %36, align 4                ; 2 uses
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %_ZN2v88internal8ZoneListIjE17ResizeAddInternalERKjPNS0_4ZoneE.exit

70:                                               ; preds = %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i
  %71 = load ptr, ptr %35, align 8                ; 5 uses
  %72 = zext nneg i32 %68 to i64
  %73 = shl nuw nsw i64 %72, 2                    ; 2 uses
  %74 = add nsw i64 %73, -4
  %75 = lshr exact i64 %74, 2
  switch i64 %75, label %82 [
    i64 3, label %81
    i64 1, label %78
    i64 2, label %80
    i64 0, label %76
  ]

76:                                               ; preds = %70
  %77 = load i32, ptr %71, align 1
  store i32 %77, ptr %66, align 1
  br label %_ZN2v88internal8ZoneListIjE17ResizeAddInternalERKjPNS0_4ZoneE.exit

78:                                               ; preds = %70
  %79 = load i64, ptr %71, align 1
  store i64 %79, ptr %66, align 1
  br label %_ZN2v88internal8ZoneListIjE17ResizeAddInternalERKjPNS0_4ZoneE.exit

80:                                               ; preds = %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %66, ptr noundef nonnull align 1 dereferenceable(12) %71, i64 12, i1 false)
  br label %_ZN2v88internal8ZoneListIjE17ResizeAddInternalERKjPNS0_4ZoneE.exit

81:                                               ; preds = %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %66, ptr noundef nonnull align 1 dereferenceable(16) %71, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIjE17ResizeAddInternalERKjPNS0_4ZoneE.exit

82:                                               ; preds = %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr align 1 %71, i64 %73, i1 false)
  br label %_ZN2v88internal8ZoneListIjE17ResizeAddInternalERKjPNS0_4ZoneE.exit

_ZN2v88internal8ZoneListIjE17ResizeAddInternalERKjPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i, %76, %78, %80, %81, %82
  store ptr %66, ptr %35, align 8
  store i32 %53, ptr %43, align 8
  %83 = load i32, ptr %36, align 4                ; 2 uses
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %36, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds [4 x i8], ptr %66, i64 %85
  store i32 %.025, ptr %86, align 4
  br label %_ZN2v88internal13DynamicBitSet3SetEjPNS0_4ZoneE.exit

_ZN2v88internal13DynamicBitSet3SetEjPNS0_4ZoneE.exit: ; preds = %bb.e, %7, %46, %_ZN2v88internal8ZoneListIjE17ResizeAddInternalERKjPNS0_4ZoneE.exit
  %87 = add i32 %.025, 1
  %exitcond.not = icmp eq i32 %.025, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

bb.f:                                             ; preds = %._crit_edge, %bb.c
  %.2 = phi i32 [ %spec.select, %._crit_edge ], [ %.01627, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.020.026, i64 104
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13DynamicBitSet3SetEjPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca i32, align 4                        ; 2 uses
  store i32 %1, ptr %3, align 4
  %i.a = icmp ult i32 %1, 32
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw i32 1, %1
  %i.c = load i32, ptr %0, align 8
  %i.d = or i32 %i.c, %i.b
  store i32 %i.d, ptr %0, align 8
  br label %_ZNK2v88internal8ZoneListIjE8ContainsERKj.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ult i64 %i.l, 16
  br i1 %i.m, label %bb.e, label %bb.f, !prof !6

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 16) #26
  %.pre.i.i = load i64, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.n = phi i64 [ %.pre.i.i, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 6 uses
  %i.p = add i64 %i.n, 16
  store i64 %i.p, ptr %i.j, align 8
  store ptr null, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.r, align 4
  %i.s = load i64, ptr %i.h, align 8
  %i.t = load i64, ptr %i.j, align 8              ; 2 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ult i64 %i.u, 8
  br i1 %i.v, label %bb.g, label %_ZN2v88internal4Zone3NewINS0_8ZoneListIjEEJiRPS1_EEEPT_DpOT0_.exit, !prof !6

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 8) #26
  %.pre.i.i.i.i = load i64, ptr %i.j, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8ZoneListIjEEJiRPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8ZoneListIjEEJiRPS1_EEEPT_DpOT0_.exit: ; preds = %bb.f, %bb.g
  %i.w = phi i64 [ %.pre.i.i.i.i, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = add i64 %i.w, 8
  store i64 %i.y, ptr %i.j, align 8
  store ptr %i.x, ptr %i.o, align 8
  store ptr %i.o, ptr %i.e, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListIjEEJiRPS1_EEEPT_DpOT0_.exit, %bb.c
  %i.z = phi ptr [ %i.o, %_ZN2v88internal4Zone3NewINS0_8ZoneListIjEEJiRPS1_EEEPT_DpOT0_.exit ], [ %i.f, %bb.c ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4            ; 5 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i, label %_ZNK2v88internal8ZoneListIjE8ContainsERKj.exit.thread

.lr.ph.i:                                         ; preds = %bb.h
  %i.ad = load ptr, ptr %i.z, align 8
  %wide.trip.count.i = zext nneg i32 %i.ab to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2v88internal8ZoneListIjE8ContainsERKj.exit.thread, label %bb.j, !llvm.loop !12

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp eq i32 %i.af, %1
  br i1 %i.ag, label %_ZNK2v88internal8ZoneListIjE8ContainsERKj.exit, label %bb.i

_ZNK2v88internal8ZoneListIjE8ContainsERKj.exit.thread: ; preds = %bb.i, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp slt i32 %i.ab, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK2v88internal8ZoneListIjE8ContainsERKj.exit.thread
  %i.ak = load ptr, ptr %i.z, align 8
  %i.al = add nsw i32 %i.ab, 1
  store i32 %i.al, ptr %i.aa, align 4
  %i.am = sext i32 %i.ab to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.am
  store i32 %1, ptr %i.an, align 4
  br label %_ZNK2v88internal8ZoneListIjE8ContainsERKj.exit

bb.l:                                             ; preds = %_ZNK2v88internal8ZoneListIjE8ContainsERKj.exit.thread
  call void @_ZN2v88internal8ZoneListIjE17ResizeAddInternalERKjPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef %2)
  br label %_ZNK2v88internal8ZoneListIjE8ContainsERKj.exit

_ZNK2v88internal8ZoneListIjE8ContainsERKj.exit:   ; preds = %bb.j, %bb.l, %bb.k, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal5Trace24RestoreAffectedRegistersEPNS0_20RegExpMacroAssemblerEiRKNS0_13DynamicBitSetES6_(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, -1
  br i1 %i.a, label %.lr.ph55, label %._crit_edge

.lr.ph55:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK2v88internal13DynamicBitSet3GetEj.exit22.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph55, %_ZNK2v88internal13DynamicBitSet3GetEj.exit22.thread
  %.052 = phi i32 [ %2, %.lr.ph55 ], [ %i.bc, %_ZNK2v88internal13DynamicBitSet3GetEj.exit22.thread ] ; 16 uses
  %i.d = icmp samesign ult i32 %.052, 32
  br i1 %i.d, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i, label %.thread33

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.j = load ptr, ptr %i.e, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.h to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.thread33, label %bb.f, !llvm.loop !12

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, %.052
  br i1 %i.m, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread31, label %bb.e

_ZNK2v88internal13DynamicBitSet3GetEj.exit:       ; preds = %bb.b
  %i.n = load i32, ptr %3, align 8
  %i.o = shl nuw i32 1, %.052                     ; 2 uses
  %i.p = and i32 %i.n, %i.o
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.thread, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread31

_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread31: ; preds = %bb.f, %_ZNK2v88internal13DynamicBitSet3GetEj.exit
  %i.q = load ptr, ptr %1, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 312
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %.052) #26
  br label %_ZNK2v88internal13DynamicBitSet3GetEj.exit22.thread

.thread:                                          ; preds = %_ZNK2v88internal13DynamicBitSet3GetEj.exit
  %i.t = load i32, ptr %4, align 8
  %i.u = and i32 %i.t, %i.o
  %.not38 = icmp eq i32 %i.u, 0
  br i1 %.not38, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit22.thread, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit22.preheader

.thread33:                                        ; preds = %bb.e, %bb.d, %bb.c
  %i.v = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit22.thread, label %bb.g

bb.g:                                             ; preds = %.thread33
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.i17, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit22.thread

.lr.ph.i.i17:                                     ; preds = %bb.g
  %i.aa = load ptr, ptr %i.v, align 8
  %wide.trip.count.i.i18 = zext nneg i32 %i.y to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i.i20 = add nuw nsw i64 %indvars.iv.i.i19, 1 ; 2 uses
  %exitcond.not.i.i21 = icmp eq i64 %indvars.iv.next.i.i20, %wide.trip.count.i.i18
  br i1 %exitcond.not.i.i21, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit22.thread, label %bb.i, !llvm.loop !12

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i17
  %indvars.iv.i.i19 = phi i64 [ 0, %.lr.ph.i.i17 ], [ %indvars.iv.next.i.i20, %bb.h ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i.i19
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp eq i32 %i.ac, %.052
  br i1 %i.ad, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit22.preheader, label %bb.h

_ZNK2v88internal13DynamicBitSet3GetEj.exit22.preheader: ; preds = %bb.i, %.thread
  %i.ae = icmp sgt i32 %.052, 0
  br i1 %i.ae, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNK2v88internal13DynamicBitSet3GetEj.exit22.preheader
  %i.af = load ptr, ptr %i.c, align 8
  %.fr56 = freeze ptr %i.af                       ; 3 uses
  %i.ag = icmp eq ptr %.fr56, null
  %i.ah = getelementptr inbounds nuw i8, ptr %.fr56, i64 12
  %i.ai = load i32, ptr %4, align 8               ; 2 uses
  br i1 %i.ag, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.aj = icmp slt i32 %.052, 33
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_ZNK2v88internal13DynamicBitSet3GetEj.exit29.thread36.us
  %.143.us = phi i32 [ %i.ak, %_ZNK2v88internal13DynamicBitSet3GetEj.exit29.thread36.us ], [ %.052, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.ak = add nsw i32 %.143.us, -1                ; 2 uses
  br i1 %i.aj, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit29.us, label %.critedge

_ZNK2v88internal13DynamicBitSet3GetEj.exit29.us:  ; preds = %.lr.ph.split.us
  %i.al = shl nuw i32 1, %i.ak
  %i.am = and i32 %i.ai, %i.al
  %.not39.us = icmp eq i32 %i.am, 0
  br i1 %.not39.us, label %.critedge, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit29.thread36.us

_ZNK2v88internal13DynamicBitSet3GetEj.exit29.thread36.us: ; preds = %_ZNK2v88internal13DynamicBitSet3GetEj.exit29.us
  %i.an = icmp samesign ugt i32 %.143.us, 1
  br i1 %i.an, label %.lr.ph.split.us, label %.critedge, !llvm.loop !14

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK2v88internal13DynamicBitSet3GetEj.exit29.thread36
  %.143 = phi i32 [ %i.ao, %_ZNK2v88internal13DynamicBitSet3GetEj.exit29.thread36 ], [ %.052, %.lr.ph ] ; 6 uses
  %i.ao = add nsw i32 %.143, -1                   ; 3 uses
  %i.ap = icmp samesign ult i32 %.143, 33
  br i1 %i.ap, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit29, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split
  %i.aq = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.i24, label %.critedge

.lr.ph.i.i24:                                     ; preds = %bb.j
  %i.as = load ptr, ptr %.fr56, align 8
  %wide.trip.count.i.i25 = zext nneg i32 %i.aq to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next.i.i27 = add nuw nsw i64 %indvars.iv.i.i26, 1 ; 2 uses
  %exitcond.not.i.i28 = icmp eq i64 %indvars.iv.next.i.i27, %wide.trip.count.i.i25
  br i1 %exitcond.not.i.i28, label %.critedge, label %bb.l, !llvm.loop !12

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i24
  %indvars.iv.i.i26 = phi i64 [ 0, %.lr.ph.i.i24 ], [ %indvars.iv.next.i.i27, %bb.k ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i.i26
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp eq i32 %i.au, %i.ao
  br i1 %i.av, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit29.thread36, label %bb.k

_ZNK2v88internal13DynamicBitSet3GetEj.exit29:     ; preds = %.lr.ph.split
  %i.aw = shl nuw i32 1, %i.ao
  %i.ax = and i32 %i.ai, %i.aw
  %.not39 = icmp eq i32 %i.ax, 0
  br i1 %.not39, label %.critedge, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit29.thread36

_ZNK2v88internal13DynamicBitSet3GetEj.exit29.thread36: ; preds = %bb.l, %_ZNK2v88internal13DynamicBitSet3GetEj.exit29
  %i.ay = icmp sgt i32 %.143, 1
  br i1 %i.ay, label %.lr.ph.split, label %.critedge, !llvm.loop !14

.critedge:                                        ; preds = %_ZNK2v88internal13DynamicBitSet3GetEj.exit29, %_ZNK2v88internal13DynamicBitSet3GetEj.exit29.thread36, %bb.j, %.lr.ph.split.us, %_ZNK2v88internal13DynamicBitSet3GetEj.exit29.us, %_ZNK2v88internal13DynamicBitSet3GetEj.exit29.thread36.us, %bb.k, %_ZNK2v88internal13DynamicBitSet3GetEj.exit22.preheader
  %.142 = phi i32 [ %.052, %_ZNK2v88internal13DynamicBitSet3GetEj.exit22.preheader ], [ %.143, %bb.k ], [ %.143.us, %.lr.ph.split.us ], [ %.143.us, %_ZNK2v88internal13DynamicBitSet3GetEj.exit29.us ], [ 0, %_ZNK2v88internal13DynamicBitSet3GetEj.exit29.thread36.us ], [ %.143, %_ZNK2v88internal13DynamicBitSet3GetEj.exit29 ], [ %.143, %bb.j ], [ 0, %_ZNK2v88internal13DynamicBitSet3GetEj.exit29.thread36 ] ; 2 uses
  %i.az = load ptr, ptr %1, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 392
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %.142, i32 noundef %.052) #26
  br label %_ZNK2v88internal13DynamicBitSet3GetEj.exit22.thread

_ZNK2v88internal13DynamicBitSet3GetEj.exit22.thread: ; preds = %bb.h, %bb.g, %.thread33, %.thread, %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread31, %.critedge
  %.2 = phi i32 [ %.052, %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread31 ], [ %.142, %.critedge ], [ %.052, %.thread ], [ %.052, %.thread33 ], [ %.052, %bb.g ], [ %.052, %bb.h ] ; 2 uses
  %i.bc = add nsw i32 %.2, -1
  %i.bd = icmp sgt i32 %.2, 0
  br i1 %i.bd, label %bb.b, label %._crit_edge, !llvm.loop !15
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal5Trace22PerformDeferredActionsEPNS0_20RegExpMacroAssemblerEiRKNS0_13DynamicBitSetEPS4_S7_PNS0_4ZoneE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #2 align 2 {
bb.a:
  %.not79105 = icmp slt i32 %2, 0
  br i1 %.not79105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread
  %.055107 = phi i32 [ 0, %.lr.ph ], [ %.3, %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread ] ; 7 uses
  %.056106 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread ] ; 11 uses
  %i.b = icmp samesign ult i32 %.056106, 32
  br i1 %i.b, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.h = load ptr, ptr %i.c, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.f to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread, label %bb.f, !llvm.loop !12

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.i
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, %.056106
  br i1 %i.k, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread91, label %bb.e

_ZNK2v88internal13DynamicBitSet3GetEj.exit:       ; preds = %bb.b
  %i.l = load i32, ptr %3, align 8
  %i.m = shl nuw i32 1, %.056106
  %i.n = and i32 %i.l, %i.m
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread91

_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread91: ; preds = %bb.f, %_ZNK2v88internal13DynamicBitSet3GetEj.exit
  %i.o = icmp samesign ult i32 %.056106, 2
  br label %bb.h

bb.g:                                             ; preds = %bb.t
  switch i32 %.276, label %bb.v [
    i32 1, label %bb.u
    i32 2, label %.sink.split
  ]

bb.h:                                             ; preds = %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread91, %bb.t
  %.058104 = phi i32 [ -2147483648, %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread91 ], [ %.361, %bb.t ] ; 9 uses
  %.062103 = phi i8 [ 0, %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread91 ], [ %.365, %bb.t ] ; 9 uses
  %.066102 = phi i8 [ 0, %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread91 ], [ %.369, %bb.t ] ; 8 uses
  %.070101 = phi i32 [ 0, %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread91 ], [ %.4, %bb.t ] ; 8 uses
  %.074100 = phi i32 [ 0, %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread91 ], [ %.276, %bb.t ] ; 2 uses
  %.sroa.087.099 = phi ptr [ %0, %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread91 ], [ %i.an, %bb.t ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.087.099, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 5 uses
  %.not82 = icmp eq ptr %i.q, null
  br i1 %.not82, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 68
  %i.u = load i32, ptr %i.t, align 4
  %i.v = sub i32 %.056106, %i.s
  %i.w = sub i32 %i.u, %i.s
  %.not93 = icmp ugt i32 %i.v, %i.w
  br i1 %.not93, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  switch i32 %i.y, label %bb.s [
    i32 0, label %bb.k
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.n
    i32 8, label %bb.r
  ]

bb.k:                                             ; preds = %bb.j
  %i.z = trunc nuw i8 %.066102 to i1
  br i1 %i.z, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = add nsw i32 %i.ab, %.070101
  br label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.ad = xor i8 %.066102, 1
  %i.ae = zext nneg i8 %i.ad to i32
  %spec.select = add nsw i32 %.070101, %i.ae
  br label %bb.t

bb.n:                                             ; preds = %bb.j, %bb.j
  %i.af = trunc nuw i8 %.062103 to i1
  %i.ag = icmp ne i32 %.058104, -2147483648
  %or.cond.not = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.087.099, i64 104
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load i32, ptr %i.ai, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.159 = phi i32 [ %i.aj, %bb.o ], [ %.058104, %bb.n ] ; 2 uses
  br i1 %i.o, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = icmp eq i32 %i.y, 2
  %. = select i1 %i.ak, i32 2, i32 1
  br label %bb.t

bb.r:                                             ; preds = %bb.j
  %i.al = icmp eq i32 %.058104, -2147483648
  %spec.select84 = select i1 %i.al, i8 1, i8 %.062103
  br label %bb.t

bb.s:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

bb.t:                                             ; preds = %bb.i, %bb.r, %bb.m, %bb.l, %bb.k, %bb.p, %bb.q, %bb.h
  %.276 = phi i32 [ %.074100, %bb.h ], [ %.074100, %bb.i ], [ 1, %bb.m ], [ 1, %bb.k ], [ %., %bb.q ], [ 0, %bb.p ], [ 1, %bb.r ], [ 1, %bb.l ] ; 2 uses
  %.4 = phi i32 [ %.070101, %bb.h ], [ %.070101, %bb.i ], [ %spec.select, %bb.m ], [ %.070101, %bb.k ], [ %.070101, %bb.q ], [ %.070101, %bb.p ], [ %.070101, %bb.r ], [ %i.ac, %bb.l ] ; 4 uses
  %.369 = phi i8 [ %.066102, %bb.h ], [ %.066102, %bb.i ], [ %.066102, %bb.m ], [ 1, %bb.k ], [ %.066102, %bb.q ], [ %.066102, %bb.p ], [ %.066102, %bb.r ], [ 1, %bb.l ] ; 2 uses
  %.365 = phi i8 [ %.062103, %bb.h ], [ %.062103, %bb.i ], [ %.062103, %bb.m ], [ %.062103, %bb.k ], [ %.062103, %bb.q ], [ %.062103, %bb.p ], [ %spec.select84, %bb.r ], [ %.062103, %bb.l ] ; 2 uses
  %.361 = phi i32 [ %.058104, %bb.h ], [ %.058104, %bb.i ], [ %.058104, %bb.m ], [ %.058104, %bb.k ], [ %.159, %bb.q ], [ %.159, %bb.p ], [ %.058104, %bb.r ], [ %.058104, %bb.l ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.087.099, i64 104
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.g, label %bb.h

bb.u:                                             ; preds = %bb.g
  %i.ap = add nsw i32 %.055107, 1                 ; 2 uses
  %i.aq = load ptr, ptr %1, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(40) %1) #26
  %i.au = icmp eq i32 %i.ap, %i.at                ; 2 uses
  %spec.select85 = select i1 %i.au, i32 0, i32 %i.ap
  %spec.select86 = zext i1 %i.au to i8
  %i.av = load ptr, ptr %1, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 336
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %.056106, i8 noundef zeroext %spec.select86) #26
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.u
  %.sink = phi ptr [ %4, %bb.u ], [ %5, %bb.g ]
  %.2.ph = phi i32 [ %spec.select85, %bb.u ], [ %.055107, %bb.g ]
  tail call void @_ZN2v88internal13DynamicBitSet3SetEjPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %.sink, i32 noundef %.056106, ptr noundef %6)
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.g
  %.2 = phi i32 [ %.055107, %bb.g ], [ %.2.ph, %.sink.split ] ; 2 uses
  %.not80 = icmp eq i32 %.361, -2147483648
  br i1 %.not80, label %bb.w, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread.sink.split

bb.w:                                             ; preds = %bb.v
  %i.ay = trunc nuw i8 %.365 to i1
  br i1 %i.ay, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = trunc nuw i8 %.369 to i1
  br i1 %i.az, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not81 = icmp eq i32 %.4, 0
  br i1 %.not81, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread, label %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread.sink.split

_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread.sink.split: ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.sink116 = phi i64 [ 384, %bb.v ], [ 392, %bb.w ], [ 368, %bb.x ], [ 56, %bb.y ]
  %.361.lcssa.sink = phi i32 [ %.361, %bb.v ], [ %.056106, %bb.w ], [ %.4, %bb.x ], [ %.4, %bb.y ]
  %i.ba = load ptr, ptr %1, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sink116
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %.056106, i32 noundef %.361.lcssa.sink) #26
  br label %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread

_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread: ; preds = %bb.e, %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread.sink.split, %bb.d, %bb.c, %bb.y, %_ZNK2v88internal13DynamicBitSet3GetEj.exit
  %.3 = phi i32 [ %.055107, %_ZNK2v88internal13DynamicBitSet3GetEj.exit ], [ %.2, %_ZNK2v88internal13DynamicBitSet3GetEj.exit.thread.sink.split ], [ %.2, %bb.y ], [ %.055107, %bb.c ], [ %.055107, %bb.d ], [ %.055107, %bb.e ]
  %i.bd = add nuw i32 %.056106, 1
  %exitcond.not = icmp eq i32 %.056106, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !16
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal5Trace5FlushEPNS0_14RegExpCompilerEPNS0_10RegExpNodeENS1_9FlushModeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Trace", align 8 ; 12 uses
  %5 = alloca %"class.v8::internal::DynamicBitSet", align 8 ; 6 uses
  %6 = alloca %"class.v8::internal::DynamicBitSet", align 8 ; 6 uses
  %7 = alloca %"class.v8::internal::DynamicBitSet", align 8 ; 6 uses
  %8 = alloca %"class.v8::internal::Trace", align 8 ; 12 uses
  %9 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %10 = alloca %"class.v8::internal::Trace", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 20 uses
  %i.c = load i32, ptr %0, align 8                ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not37 = icmp eq i32 %3, 1
  br i1 %.not37, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp ne i32 %i.e, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.i = load i16, ptr %i.h, align 2
  %i.j = and i16 %i.i, 256
  %.not44 = icmp eq i16 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  br i1 %.not44, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %i.m = icmp ne ptr %i.l, null
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq ptr %i.l, null
  %i.o = icmp eq i32 %3, 1
  %or.cond = or i1 %i.o, %i.n
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.c) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 0, ptr %4, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 100, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 255, ptr %i.t, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.1.i.i, i8 0, i64 9, i1 false)
  %.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %4, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.2.i.i, i8 0, i64 9, i1 false)
  %.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.3.i.i, i8 0, i64 9, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.v, i8 0, i64 9, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr null, ptr %i.w, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.u, i8 0, i64 45, i1 false)
  %i.x = load ptr, ptr %2, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %1, ptr noundef nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.y

bb.i:                                             ; preds = %._crit_edge, %bb.e
  %i.aa = phi i1 [ %i.m, %._crit_edge ], [ true, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 0, ptr %5, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = icmp ne i32 %3, 1
  %or.cond3 = and i1 %i.ad, %i.aa
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.b, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 328
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %12 = load ptr, ptr %11, align 8
  %13 = call noundef i32 @_ZN2v88internal5Trace21FindAffectedRegistersEPNS0_13DynamicBitSetEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %5, ptr noundef %12) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 0, ptr %6, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i32 0, ptr %7, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %11, align 8
  call void @_ZN2v88internal5Trace22PerformDeferredActionsEPNS0_20RegExpMacroAssemblerEiRKNS0_13DynamicBitSetEPS4_S7_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.b, i32 noundef %13, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %i.aj)
  br i1 %i.g, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = load i32, ptr %0, align 8
  %i.al = load ptr, ptr %i.b, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.ak) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ao = icmp eq i32 %3, 1
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 0, ptr %8, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i16 100, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 6
  store i16 255, ptr %i.aq, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.ptr.1.i.i38 = getelementptr inbounds nuw i8, ptr %8, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.1.i.i38, i8 0, i64 9, i1 false)
  %.ptr.2.i.i39 = getelementptr inbounds nuw i8, ptr %8, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.2.i.i39, i8 0, i64 9, i1 false)
  %.ptr.3.i.i40 = getelementptr inbounds nuw i8, ptr %8, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.3.i.i40, i8 0, i64 9, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.as, i8 0, i64 9, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 104
  store ptr null, ptr %i.at, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.ar, i8 0, i64 45, i1 false)
  %i.au = load ptr, ptr %2, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %1, ptr noundef nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 0, ptr %9, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.ax, align 4
  %i.ay = load ptr, ptr %i.b, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 320
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %9) #26
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.bc = load i8, ptr %i.bb, align 2, !range !9, !noundef !10
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZN2v88internal10RegExpNode13KeepRecursingEPNS0_14RegExpCompilerE.exit.thread, label %_ZN2v88internal10RegExpNode13KeepRecursingEPNS0_14RegExpCompilerE.exit

_ZN2v88internal10RegExpNode13KeepRecursingEPNS0_14RegExpCompilerE.exit: ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = icmp slt i32 %i.bf, 101
  br i1 %i.bg, label %bb.p, label %_ZN2v88internal10RegExpNode13KeepRecursingEPNS0_14RegExpCompilerE.exit.thread

bb.p:                                             ; preds = %_ZN2v88internal10RegExpNode13KeepRecursingEPNS0_14RegExpCompilerE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i32 0, ptr %10, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i16 100, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 6
  store i16 255, ptr %i.bi, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.ptr.1.i.i41 = getelementptr inbounds nuw i8, ptr %10, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.1.i.i41, i8 0, i64 9, i1 false)
  %.ptr.2.i.i42 = getelementptr inbounds nuw i8, ptr %10, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.ptr.2.i.i42, i8 0, i64 9, i1 false)
  %.ptr.3.i.i43 = getelementptr inbounds nuw i8, ptr %10, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.3.i.i43, i8 0, i64 9, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bk, i8 0, i64 9, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 104
  store ptr null, ptr %i.bl, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.bj, i8 0, i64 45, i1 false)
  %i.bm = load ptr, ptr %2, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %1, ptr noundef nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.t

_ZN2v88internal10RegExpNode13KeepRecursingEPNS0_14RegExpCompilerE.exit.thread: ; preds = %bb.o, %_ZN2v88internal10RegExpNode13KeepRecursingEPNS0_14RegExpCompilerE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8, !range !9, !noundef !10
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %_ZN2v88internal14RegExpCompiler7AddWorkEPNS0_10RegExpNodeE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal10RegExpNode13KeepRecursingEPNS0_14RegExpCompilerE.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %_ZN2v88internal14RegExpCompiler7AddWorkEPNS0_10RegExpNodeE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.bp, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8            ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = icmp ult ptr %i.by, %i.ca
  br i1 %i.cb, label %_ZN2v88internal10ZoneVectorIPNS0_10RegExpNodeEE9push_backERKS3_.exit.i, label %bb.s, !prof !5

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  %i.ci = add nsw i64 %i.ch, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_10RegExpNodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i64 noundef %i.ci)
  %.pre.i.i = load ptr, ptr %i.bx, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_10RegExpNodeEE9push_backERKS3_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_10RegExpNodeEE9push_backERKS3_.exit.i: ; preds = %bb.s, %bb.r
  %i.cj = phi ptr [ %i.by, %bb.r ], [ %.pre.i.i, %bb.s ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.ck, ptr %i.bx, align 8
  store ptr %2, ptr %i.cj, align 8
  br label %_ZN2v88internal14RegExpCompiler7AddWorkEPNS0_10RegExpNodeE.exit

_ZN2v88internal14RegExpCompiler7AddWorkEPNS0_10RegExpNodeE.exit: ; preds = %_ZN2v88internal10RegExpNode13KeepRecursingEPNS0_14RegExpCompilerE.exit.thread, %bb.q, %_ZN2v88internal10ZoneVectorIPNS0_10RegExpNodeEE9push_backERKS3_.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cm = load ptr, ptr %i.b, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 264
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %i.cl) #26
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal14RegExpCompiler7AddWorkEPNS0_10RegExpNodeE.exit, %bb.p
  %i.cp = load ptr, ptr %i.b, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 248
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %9) #26
  call void @_ZN2v88internal5Trace24RestoreAffectedRegistersEPNS0_20RegExpMacroAssemblerEiRKNS0_13DynamicBitSetES6_(ptr nonnull align 8 poison, ptr noundef nonnull %i.b, i32 noundef %13, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.cs = load ptr, ptr %i.ac, align 8
  %i.ct = icmp eq ptr %i.cs, null
  %i.cu = load ptr, ptr %i.b, align 8             ; 2 uses
  br i1 %i.ct, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 304
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26
  %i.cz = load ptr, ptr %i.ac, align 8
  %i.da = load ptr, ptr %i.b, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 264
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef %i.cz) #26
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal10RegExpNode13KeepRecursingEPNS0_14RegExpCompilerE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(56) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.b = load i8, ptr %i.a, align 2, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp slt i32 %i.e, 101
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23NegativeSubmatchSuccess4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef readonly captures(none) %1, ptr readnone captures(none) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %i.c) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i32, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 344
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.j) #26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.o = load i32, ptr %i.n, align 4
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 352
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.o) #26
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %i.x = add nsw i32 %i.t, -1
  %i.y = add i32 %i.x, %i.w
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 392
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.w, i32 noundef %i.y) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7EndNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef readonly captures(none) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZNK2v88internal5Trace10is_trivialEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.e = load i16, ptr %i.d, align 2              ; 2 uses
  %i.f = and i16 %i.e, 256
  %.not.i = icmp eq i16 %i.f, 0
  %i.g = load i32, ptr %2, align 8
  %i.h = icmp eq i32 %i.g, 0
  %or.cond.i = select i1 %.not.i, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 0
  %or.cond4.i = select i1 %or.cond.i, i1 %i.k, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 0
  %or.cond7.i = select i1 %or.cond4.i, i1 %i.n, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp eq i32 %i.p, 0
  %or.cond10.i = select i1 %or.cond7.i, i1 %i.q, i1 false
  %.mask.i = and i16 %i.e, 255
  %i.r = icmp eq i16 %.mask.i, 255
  %or.cond = and i1 %i.r, %or.cond10.i
  br i1 %or.cond, label %bb.c, label %_ZNK2v88internal5Trace10is_trivialEv.exit.thread

_ZNK2v88internal5Trace10is_trivialEv.exit.thread: ; preds = %bb.a, %bb.b
  tail call void @_ZN2v88internal5Trace5FlushEPNS0_14RegExpCompilerEPNS0_10RegExpNodeENS1_9FlushModeE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef %1, ptr noundef nonnull %0, i32 noundef 1)
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8              ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.t, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull %i.u) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load i32, ptr %i.aa, align 8
  switch i32 %i.ab, label %bb.i [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.t, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 376
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #26 ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = load ptr, ptr %i.t, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 264
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef %i.ag) #26
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

bb.i:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2) #25
  unreachable

bb.j:                                             ; preds = %bb.f, %bb.g, %_ZNK2v88internal5Trace10is_trivialEv.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18GuardedAlternative8AddGuardEPNS0_5GuardEPNS0_4ZoneE(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZN2v88internal13AssertionNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE:bb.a
    i32 1, label %bb.c
    i32 4, label %bb.f
    i32 2, label %bb.l
    i32 3, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 0, ptr %5, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.e, align 4
  %i.f = load i32, ptr %2, align 8
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.f, ptr noundef nonnull %5) #26
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef %i.k) #26
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.s = load i16, ptr %i.r, align 2
  %i.t = shl i16 %i.s, 8
  %i.u = ashr exact i16 %i.t, 8
  switch i16 %i.u, label %bb.m [
    i16 0, label %bb.d
    i16 -1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 264
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef %i.w) #26
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %2, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.aa, ptr noundef %i.ac) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ag = load i32, ptr %2, align 8
  store i32 %i.ag, ptr %6, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aj = load i16, ptr %i.ai, align 4
  store i16 %i.aj, ptr %i.ah, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 6
  %i.al = load i16, ptr %i.r, align 2
  %.lobit.i = and i16 %i.al, 256
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = load <2 x ptr>, ptr %i.ab, align 8
  store <2 x ptr> %i.ao, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ar = load <2 x i32>, ptr %i.aq, align 8
  store <2 x i32> %i.ar, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull align 8 dereferenceable(64) %i.at, i64 64, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 104
  store ptr %2, ptr %i.au, align 8
  %i.av = or disjoint i16 %.lobit.i, 1
  store i16 %i.av, ptr %i.ak, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull %1, ptr noundef nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bd = load i32, ptr %2, align 8               ; 4 uses
  store i32 %i.bd, ptr %3, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bg = load <2 x i16>, ptr %i.bf, align 4
  %i.bh = and <2 x i16> %i.bg, <i16 -1, i16 511>
  store <2 x i16> %i.bh, ptr %i.be, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bl = load <2 x ptr>, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %i.bk, align 8            ; 3 uses
  store <2 x ptr> %i.bl, ptr %i.bj, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bq = load i32, ptr %i.bp, align 4
  store i32 %i.bq, ptr %i.bo, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr noundef nonnull align 8 dereferenceable(64) %i.bs, i64 64, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr %2, ptr %i.bt, align 8
  store i32 0, ptr %i.bn, align 8
  %i.bu = icmp sgt i32 %i.bd, 0                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 0, ptr %4, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.bv, align 4
  br i1 %i.bu, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = load ptr, ptr %i.b, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 120
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.bd, ptr noundef nonnull %4) #26, !inline_history !49
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bz = add nsw i32 %i.bd, -1
  call void @_ZN2v88internal20RegExpMacroAssembler20LoadCurrentCharacterEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.bz, ptr noundef %i.bm, i1 noundef zeroext %i.bu, i32 noundef 1, i32 noundef -1) #26
  %i.ca = load ptr, ptr %i.b, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 240
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call noundef zeroext i1 %i.cc(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 noundef signext 110, ptr noundef %i.bm) #26, !inline_history !49
  br i1 %i.cd, label %_ZN2v88internal12_GLOBAL__N_17EmitHatEPNS0_14RegExpCompilerEPNS0_10RegExpNodeEPNS0_5TraceE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cf = load i8, ptr %i.ce, align 8, !range !9, !noundef !10
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = load ptr, ptr %i.b, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 88
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef 8232, i32 noundef 65534, ptr noundef nonnull %4) #26, !inline_history !49
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ck = load ptr, ptr %i.b, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 80
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef 10, ptr noundef nonnull %4) #26, !inline_history !49
  %i.cn = load ptr, ptr %i.b, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 152
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef 13, ptr noundef %i.bm) #26, !inline_history !49
  br label %_ZN2v88internal12_GLOBAL__N_17EmitHatEPNS0_14RegExpCompilerEPNS0_10RegExpNodeEPNS0_5TraceE.exit

_ZN2v88internal12_GLOBAL__N_17EmitHatEPNS0_14RegExpCompilerEPNS0_10RegExpNodeEPNS0_5TraceE.exit: ; preds = %bb.h, %bb.k
  %i.cq = load ptr, ptr %i.b, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %4) #26, !inline_history !49
  %i.ct = load ptr, ptr %i.bc, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(56) %i.bc, ptr noundef nonnull %1, ptr noundef nonnull %3) #26, !inline_history !49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.n

bb.l:                                             ; preds = %bb.a, %bb.a
  tail call void @_ZN2v88internal13AssertionNode17EmitBoundaryCheckEPNS0_14RegExpCompilerEPNS0_5TraceE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.n

bb.m:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(56) %i.cx, ptr noundef nonnull %1, ptr noundef %2) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %_ZN2v88internal12_GLOBAL__N_17EmitHatEPNS0_14RegExpCompilerEPNS0_10RegExpNodeEPNS0_5TraceE.exit, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8TextNode12TextEmitPassEPNS0_14RegExpCompilerENS1_16TextEmitPassTypeEbPNS0_5TraceEbPi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef readonly captures(none) %4, i1 noundef zeroext %5, ptr noundef captures(none) %6) local_unnamed_addr #2 align 2 {
bb.a:
  %7 = alloca i32, align 4                        ; 4 uses
  %8 = alloca i32, align 4                        ; 4 uses
  %9 = alloca %"class.v8::internal::Label", align 4 ; 8 uses
  %i.a = alloca [4 x i32], align 16               ; 9 uses
  %10 = alloca %"class.v8::internal::Label", align 4 ; 10 uses
  %i.b = alloca [4 x i32], align 16               ; 6 uses
  %i.c = alloca [4 x i32], align 16               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 21 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.g = load i8, ptr %i.f, align 8, !range !9, !noundef !10
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 23 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.q = load i8, ptr %i.p, align 8, !range !9, !noundef !10
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = sext i32 %i.o to i64
  %i.u = getelementptr [16 x i8], ptr %i.s, i64 %i.t ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -16
  %.sroa.0.0.copyload.i = load i32, ptr %i.v, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -12
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4 ; 2 uses
  switch i32 %.sroa.4.0.copyload.i, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %_ZN2v88internal8TextNode6LengthEv.exit
  ]

bb.c:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 16
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp ult i64 %i.x, 2147483648
  br i1 %i.y, label %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #25
  unreachable

_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i:   ; preds = %bb.c
  %i.z = trunc nuw nsw i64 %i.x to i32
  br label %_ZN2v88internal8TextNode6LengthEv.exit

bb.e:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

_ZN2v88internal8TextNode6LengthEv.exit:           ; preds = %bb.b, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i
  %.0.i.i = phi i32 [ %i.z, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i ], [ %.sroa.4.0.copyload.i, %bb.b ]
  %i.aa = add nsw i32 %.sroa.0.0.copyload.i, %.0.i.i
  %i.ab = sub nsw i32 0, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN2v88internal8TextNode6LengthEv.exit
  %i.ac = phi i32 [ %i.ab, %_ZN2v88internal8TextNode6LengthEv.exit ], [ 0, %bb.a ]
  %i.ad = add nsw i32 %i.o, -1
  %spec.select = select i1 %3, i32 0, i32 %i.ad   ; 2 uses
  %i.ae = icmp sgt i32 %spec.select, -1
  br i1 %i.ae, label %.lr.ph128, label %_ZN2v88internal12_GLOBAL__N_117UpdateBoundsCheckEiPi.exit111

.lr.ph128:                                        ; preds = %bb.f
  %i.af = icmp ne i32 %2, 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = select i1 %i.h, i32 255, i32 65535      ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.aj = getelementptr i8, ptr %1, i64 36        ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ao = zext nneg i32 %spec.select to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph128, %select.unfold
  %indvars.iv130 = phi i64 [ %i.ao, %.lr.ph128 ], [ %indvars.iv.next131, %select.unfold ] ; 5 uses
  %i.ap = load ptr, ptr %i.l, align 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %indvars.iv130 ; 3 uses
  %.sroa.0112.0.copyload = load i32, ptr %i.ar, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 10 uses
  %i.as = load i32, ptr %4, align 8
  %i.at = add i32 %.sroa.0112.0.copyload, %i.ac
  %i.au = add i32 %i.at, %i.as                    ; 7 uses
  %i.av = icmp eq i32 %.sroa.6.0.copyload, 0
  br i1 %i.av, label %bb.h, label %bb.an

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %.sroa.0.0.copyload.i103 = load ptr, ptr %i.aw, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  br i1 %3, label %.lr.ph.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = icmp ult i64 %.sroa.2.0.copyload.i, 2147483648
  br i1 %i.ax, label %bb.k, label %bb.j, !prof !5

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #25
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ay = add nuw nsw i64 %.sroa.2.0.copyload.i, 4294967295
  %i.az = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %i.az, label %select.unfold, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h, %bb.k
  %i.ba = phi i64 [ %i.ay, %bb.k ], [ 0, %bb.h ]
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = sext i32 %.sroa.0112.0.copyload to i64
  %i.bd = sext i32 %i.au to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge98
  %indvars.iv = phi i64 [ %i.bb, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge98 ] ; 6 uses
  %i.be = or i64 %indvars.iv, %indvars.iv130
  %i.bf = and i64 %i.be, 4294967295
  %i.bg = icmp eq i64 %i.bf, 0
  %or.cond7 = and i1 %5, %i.bg
  br i1 %or.cond7, label %.critedge98, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.bh = add nsw i64 %indvars.iv, %i.bc          ; 2 uses
  %i.bi = load i32, ptr %i.k, align 4
  %i.bj = sext i32 %i.bi to i64
  %.not.i = icmp slt i64 %i.bh, %i.bj
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit, label %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit.thread

_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit: ; preds = %bb.l
  %i.bk = getelementptr [12 x i8], ptr %i.k, i64 %i.bh
  %i.bl = getelementptr i8, ptr %i.bk, i64 12
  %i.bm = load i8, ptr %i.bl, align 4, !range !9, !noundef !10
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %.critedge98, label %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit.thread

_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit.thread: ; preds = %bb.l, %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i103, i64 %indvars.iv
  %i.bp = load i16, ptr %i.bo, align 2            ; 6 uses
  %i.bq = load i32, ptr %6, align 4
  %i.br = add nsw i64 %indvars.iv, %i.bd          ; 6 uses
  %i.bs = sext i32 %i.bq to i64
  %i.bt = icmp sgt i64 %i.br, %i.bs
  %i.bu = load i8, ptr %i.p, align 8, !range !9
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = select i1 %i.bt, i1 true, i1 %i.bv      ; 4 uses
  switch i32 %2, label %.critedge98 [
    i32 0, label %bb.m
    i32 2, label %bb.r
    i32 1, label %bb.y
    i32 3, label %bb.aa
  ]

bb.m:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit.thread
  %.sroa.0.0.copyload.i104 = load i32, ptr %i.aj, align 4 ; 2 uses
  %i.bx = and i32 %.sroa.0.0.copyload.i104, 2
  %.not123 = icmp eq i32 %i.bx, 0
  br i1 %.not123, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %.val101 = load i8, ptr %i.f, align 8, !range !9, !noundef !10
  %i.by = call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_125GetCaseIndependentLettersEPNS0_7IsolateEtPNS0_14RegExpCompilerEPji(i16 noundef zeroext %i.bp, i32 %.sroa.0.0.copyload.i104, i8 %.val101, ptr noundef %i.c)
  %.not = icmp eq i32 %i.by, 0
  br i1 %.not, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bz = load ptr, ptr %i.e, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 264
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %_ZN2v88internal12_GLOBAL__N_117UpdateBoundsCheckEiPi.exit111

bb.p:                                             ; preds = %bb.m
  %i.cc = icmp ugt i16 %i.bp, 255
  br i1 %i.cc, label %bb.q, label %.critedge98

bb.q:                                             ; preds = %bb.p
  %i.cd = load ptr, ptr %i.e, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 264
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef %i.j) #26
  br label %_ZN2v88internal12_GLOBAL__N_117UpdateBoundsCheckEiPi.exit111

bb.r:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit.thread
  %i.cg = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.ch = load i8, ptr %i.f, align 8, !range !9, !noundef !10 ; 2 uses
  %i.ci = trunc nuw i8 %i.ch to i1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %.val.i = load i32, ptr %i.aj, align 4
  %i.cj = call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_125GetCaseIndependentLettersEPNS0_7IsolateEtPNS0_14RegExpCompilerEPji(i16 noundef zeroext %i.bp, i32 %.val.i, i8 %i.ch, ptr noundef %i.b) ; 2 uses
  %i.ck = icmp slt i32 %i.cj, 1
  br i1 %i.ck, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  br i1 %i.ci, label %_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread, label %bb.t, !prof !5

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8) #25
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.cl = icmp eq i32 %i.cj, 1
  br i1 %i.cl, label %bb.v, label %_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cm = load i32, ptr %i.b, align 16            ; 3 uses
  %i.cn = icmp ugt i32 %i.cm, 255
  %.not20.i = select i1 %i.ci, i1 %i.cn, i1 false
  br i1 %.not20.i, label %bb.w, label %bb.x, !prof !6

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9) #25
  unreachable

bb.x:                                             ; preds = %bb.v
  br i1 %3, label %_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread121, label %_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit

_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread121: ; preds = %bb.x
  %i.co = load ptr, ptr %i.cg, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 152
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, i32 noundef %i.cm, ptr noundef %i.j) #26, !inline_history !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.critedge98

_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread: ; preds = %bb.s, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.critedge98

_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit: ; preds = %bb.x
  %i.cr = trunc nsw i64 %i.br to i32
  call void @_ZN2v88internal20RegExpMacroAssembler20LoadCurrentCharacterEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, i32 noundef %i.cr, ptr noundef %i.j, i1 noundef zeroext %i.bw, i32 noundef 1, i32 noundef -1) #26
  %i.cs = load ptr, ptr %i.cg, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 152
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, i32 noundef %i.cm, ptr noundef %i.j) #26, !inline_history !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br i1 %i.bw, label %bb.al, label %.critedge98

bb.y:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit.thread
  %.val102 = load ptr, ptr %i.d, align 8          ; 5 uses
  br i1 %3, label %.critedge98.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = trunc nsw i64 %i.br to i32
  call void @_ZN2v88internal20RegExpMacroAssembler20LoadCurrentCharacterEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(40) %.val102, i32 noundef %i.cv, ptr noundef %i.j, i1 noundef zeroext %i.bw, i32 noundef 1, i32 noundef -1) #26
  %i.cw = zext i16 %i.bp to i32
  %i.cx = load ptr, ptr %.val102, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 152
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(40) %.val102, i32 noundef %i.cw, ptr noundef %i.j) #26, !inline_history !51
  br label %bb.al

bb.aa:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit.thread
  %i.da = load ptr, ptr %i.d, align 8             ; 21 uses
  %i.db = load i8, ptr %i.f, align 8, !range !9, !noundef !10 ; 2 uses
  %i.dc = trunc nuw i8 %i.db to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %.val.i107 = load i32, ptr %i.aj, align 4
  %i.dd = call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_125GetCaseIndependentLettersEPNS0_7IsolateEtPNS0_14RegExpCompilerEPji(i16 noundef zeroext %i.bp, i32 %.val.i107, i8 %i.db, ptr noundef %i.a) ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %bb.ab, label %_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit

bb.ab:                                            ; preds = %bb.aa
  br i1 %3, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = trunc nsw i64 %i.br to i32
  call void @_ZN2v88internal20RegExpMacroAssembler20LoadCurrentCharacterEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i32 noundef %i.df, ptr noundef %i.j, i1 noundef zeroext %i.bw, i32 noundef 1, i32 noundef -1) #26
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i32 0, ptr %10, align 4
  store i32 0, ptr %i.ak, align 4
  switch i32 %i.dd, label %bb.ak [
    i32 2, label %bb.ae
    i32 4, label %bb.ai
    i32 3, label %bb.aj
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.dg = load i32, ptr %i.a, align 16            ; 3 uses
  %i.dh = trunc i32 %i.dg to i16                  ; 4 uses
  %i.di = load i32, ptr %i.am, align 4            ; 2 uses
  %i.dj = trunc i32 %i.di to i16                  ; 2 uses
  %i.dk = select i1 %i.dc, i32 255, i32 65535     ; 2 uses
  %i.dl = xor i16 %i.dj, %i.dh                    ; 2 uses
  %i.dm = call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.dl)
  %i.dn = icmp samesign ult i16 %i.dm, 2
  br i1 %i.dn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.do = and i32 %i.dg, 65535
  %i.dp = trunc nuw i32 %i.dk to i16
  %i.dq = xor i16 %i.dl, %i.dp
  %i.dr = zext i16 %i.dq to i32
  %i.ds = load ptr, ptr %i.da, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 160
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i32 noundef %i.do, i32 noundef %i.dr, ptr noundef %i.j) #26, !inline_history !52
  br label %_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread

bb.ag:                                            ; preds = %bb.ae
  %i.dv = sub i16 %i.dj, %i.dh                    ; 5 uses
  %i.dw = call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.dv)
  %i.dx = icmp samesign ugt i16 %i.dw, 1
  %.not.i.i = icmp ugt i16 %i.dv, %i.dh
  %or.cond.i.i = or i1 %.not.i.i, %i.dx
  br i1 %or.cond.i.i, label %_ZN2v88internal12_GLOBAL__N_125ShortCutEmitCharacterPairEPNS0_20RegExpMacroAssemblerEbttPNS0_5LabelE.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dy = trunc nuw i32 %i.dk to i16
  %i.dz = xor i16 %i.dv, %i.dy
  %i.ea = sub nuw i16 %i.dh, %i.dv
  %i.eb = load ptr, ptr %i.da, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 168
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i16 noundef zeroext %i.ea, i16 noundef zeroext %i.dv, i16 noundef zeroext %i.dz, ptr noundef %i.j) #26, !inline_history !52
  br label %_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread

_ZN2v88internal12_GLOBAL__N_125ShortCutEmitCharacterPairEPNS0_20RegExpMacroAssemblerEbttPNS0_5LabelE.exit.i: ; preds = %bb.ag
  %i.ee = load ptr, ptr %i.da, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i32 noundef %i.dg, ptr noundef nonnull %10) #26, !inline_history !53
  %i.eh = load ptr, ptr %i.da, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 152
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i32 noundef %i.di, ptr noundef %i.j) #26, !inline_history !53
  %i.ek = load ptr, ptr %i.da, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(40) %i.da, ptr noundef nonnull %10) #26, !inline_history !53
  br label %_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread

bb.ai:                                            ; preds = %bb.ad
  %i.en = load i32, ptr %i.al, align 4
  %i.eo = load ptr, ptr %i.da, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i32 noundef %i.en, ptr noundef nonnull %10) #26, !inline_history !53
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ad
  %i.er = load i32, ptr %i.a, align 16
  %i.es = load ptr, ptr %i.da, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i32 noundef %i.er, ptr noundef nonnull %10) #26, !inline_history !53
  %i.ev = load i32, ptr %i.am, align 4
  %i.ew = load ptr, ptr %i.da, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i32 noundef %i.ev, ptr noundef nonnull %10) #26, !inline_history !53
  %i.ez = load i32, ptr %i.an, align 8
  %i.fa = load ptr, ptr %i.da, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 152
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i32 noundef %i.ez, ptr noundef %i.j) #26, !inline_history !53
  %i.fd = load ptr, ptr %i.da, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 72
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(40) %i.da, ptr noundef nonnull %10) #26, !inline_history !53
  br label %_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread

bb.ak:                                            ; preds = %bb.ad
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread: ; preds = %bb.af, %bb.ah, %_ZN2v88internal12_GLOBAL__N_125ShortCutEmitCharacterPairEPNS0_20RegExpMacroAssemblerEbttPNS0_5LabelE.exit.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.al

_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.critedge98

.critedge:                                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.critedge98

bb.al:                                            ; preds = %bb.z, %_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread, %_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit
  %i.fg = load i32, ptr %6, align 4
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp sgt i64 %i.br, %i.fh
  br i1 %i.fi, label %bb.am, label %.critedge98

bb.am:                                            ; preds = %bb.al
  %i.fj = trunc nsw i64 %i.br to i32
  store i32 %i.fj, ptr %6, align 4
  br label %.critedge98

.critedge98.critedge:                             ; preds = %bb.y
  %i.fk = zext i16 %i.bp to i32
  %i.fl = load ptr, ptr %.val102, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 152
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(40) %.val102, i32 noundef %i.fk, ptr noundef %i.j) #26, !inline_history !51
  br label %.critedge98

.critedge98:                                      ; preds = %.critedge98.critedge, %_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit, %_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread121, %_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread, %bb.am, %bb.al, %_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit, %.critedge, %bb.p, %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit.thread, %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit, %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fo = icmp slt i64 %indvars.iv, 1
  br i1 %i.fo, label %select.unfold, label %.lr.ph, !llvm.loop !54

bb.an:                                            ; preds = %bb.g
  %i.fp = icmp eq i64 %indvars.iv130, 0
  %or.cond9 = and i1 %5, %i.fp
  %or.cond = or i1 %i.af, %or.cond9
  br i1 %or.cond, label %select.unfold, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fq = load i32, ptr %i.k, align 4
  %.not.i108 = icmp slt i32 %.sroa.0112.0.copyload, %i.fq
  br i1 %.not.i108, label %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit110, label %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit110.thread

_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit110: ; preds = %bb.ao
  %i.fr = sext i32 %.sroa.0112.0.copyload to i64
  %i.fs = getelementptr [12 x i8], ptr %i.k, i64 %i.fr
  %i.ft = getelementptr i8, ptr %i.fs, i64 12
  %i.fu = load i8, ptr %i.ft, align 4, !range !9, !noundef !10
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %select.unfold, label %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit110.thread

_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit110.thread: ; preds = %bb.ao, %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit110
  %i.fw = load i32, ptr %6, align 4
  %i.fx = icmp slt i32 %i.fw, %i.au
  %i.fy = load i8, ptr %i.p, align 8, !range !9
  %i.fz = trunc nuw i8 %i.fy to i1
  %i.ga = select i1 %i.fx, i1 true, i1 %i.fz      ; 3 uses
  %i.gb = load ptr, ptr %i.ag, align 8            ; 8 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.gd = call noundef ptr @_ZN2v88internal12CharacterSet6rangesEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, ptr noundef %i.gb) #26 ; 7 uses
  call void @_ZN2v88internal14CharacterRange12CanonicalizeEPNS0_8ZoneListIS1_EE(ptr noundef %i.gd) #26
  br i1 %i.h, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit110.thread
  call void @_ZN2v88internal14CharacterRange14ClampToOneByteEPNS0_8ZoneListIS1_EE(ptr noundef %i.gd) #26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit110.thread
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  %i.gf = load i32, ptr %i.ge, align 4            ; 5 uses
  switch i32 %i.gf, label %bb.ba [
    i32 0, label %bb.ar
    i32 1, label %bb.av
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 24
  %i.gh = load i32, ptr %i.gg, align 4
  %i.gi = trunc i32 %i.gh to i1
  br i1 %i.gi, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gj = load ptr, ptr %i.e, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 264
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef %i.j) #26, !inline_history !55
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %i.ga, label %bb.au, label %_ZN2v88internal12_GLOBAL__N_115EmitClassRangesEPNS0_20RegExpMacroAssemblerEPNS0_17RegExpClassRangesEbPNS0_5LabelEibbPNS0_4ZoneE.exit

bb.au:                                            ; preds = %bb.at
  %i.gm = load ptr, ptr %i.e, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 232
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i32 noundef %i.au, ptr noundef %i.j) #26, !inline_history !55
  br label %_ZN2v88internal12_GLOBAL__N_115EmitClassRangesEPNS0_20RegExpMacroAssemblerEPNS0_17RegExpClassRangesEbPNS0_5LabelEibbPNS0_4ZoneE.exit

bb.av:                                            ; preds = %bb.aq
  %i.gp = load ptr, ptr %i.gd, align 8            ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = icmp eq i32 %i.gq, 0
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = icmp uge i32 %i.gt, %i.ah
  %i.gv = select i1 %i.gr, i1 %i.gu, i1 false
  br i1 %i.gv, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 24
  %i.gx = load i32, ptr %i.gw, align 4
  %i.gy = trunc i32 %i.gx to i1
  br i1 %i.gy, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gz = load ptr, ptr %i.e, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 264
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef %i.j) #26, !inline_history !55
  br label %_ZN2v88internal12_GLOBAL__N_115EmitClassRangesEPNS0_20RegExpMacroAssemblerEPNS0_17RegExpClassRangesEbPNS0_5LabelEibbPNS0_4ZoneE.exit

bb.ay:                                            ; preds = %bb.aw
  br i1 %i.ga, label %bb.az, label %_ZN2v88internal12_GLOBAL__N_115EmitClassRangesEPNS0_20RegExpMacroAssemblerEPNS0_17RegExpClassRangesEbPNS0_5LabelEibbPNS0_4ZoneE.exit

bb.az:                                            ; preds = %bb.ay
  %i.hc = load ptr, ptr %i.e, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 232
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i32 noundef %i.au, ptr noundef %i.j) #26, !inline_history !55
  br label %_ZN2v88internal12_GLOBAL__N_115EmitClassRangesEPNS0_20RegExpMacroAssemblerEPNS0_17RegExpClassRangesEbPNS0_5LabelEibbPNS0_4ZoneE.exit

bb.ba:                                            ; preds = %bb.aq, %bb.av
  br i1 %3, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN2v88internal20RegExpMacroAssembler20LoadCurrentCharacterEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i32 noundef %i.au, ptr noundef %i.j, i1 noundef zeroext %i.ga, i32 noundef 1, i32 noundef -1) #26
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.hf = call noundef zeroext i1 @_ZN2v88internal17RegExpClassRanges11is_standardEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0.copyload, ptr noundef %i.gb) #26
  br i1 %i.hf, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 17
  %i.hh = load i8, ptr %i.hg, align 1, !range !9, !noundef !10
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %_ZNK2v88internal17RegExpClassRanges13standard_typeEv.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNK2v88internal17RegExpClassRanges13standard_typeEv.exit.i: ; preds = %bb.bd
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  %i.hk = load i8, ptr %i.hj, align 1
  %i.hl = load ptr, ptr %i.e, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 240
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = call noundef zeroext i1 %i.hn(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 noundef signext %i.hk, ptr noundef %i.j) #26, !inline_history !55
  br i1 %i.ho, label %_ZN2v88internal12_GLOBAL__N_115EmitClassRangesEPNS0_20RegExpMacroAssemblerEPNS0_17RegExpClassRangesEbPNS0_5LabelEibbPNS0_4ZoneE.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNK2v88internal17RegExpClassRanges13standard_typeEv.exit.i, %bb.bc
  %i.hp = icmp sgt i32 %i.gf, 16
  br i1 %i.hp, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 24
  %i.hr = load i32, ptr %i.hq, align 4
  %i.hs = trunc i32 %i.hr to i1
  %i.ht = load ptr, ptr %i.e, align 8             ; 2 uses
  br i1 %i.hs, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 192
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = call noundef zeroext i1 %i.hv(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull %i.gd, ptr noundef %i.j) #26, !inline_history !55
  br i1 %i.hw, label %_ZN2v88internal12_GLOBAL__N_115EmitClassRangesEPNS0_20RegExpMacroAssemblerEPNS0_17RegExpClassRangesEbPNS0_5LabelEibbPNS0_4ZoneE.exit, label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 200
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = call noundef zeroext i1 %i.hy(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull %i.gd, ptr noundef %i.j) #26, !inline_history !55
  br i1 %i.hz, label %_ZN2v88internal12_GLOBAL__N_115EmitClassRangesEPNS0_20RegExpMacroAssemblerEPNS0_17RegExpClassRangesEbPNS0_5LabelEibbPNS0_4ZoneE.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bf
  %i.ia = shl nsw i32 %i.gf, 1                    ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gb, i64 24 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 6 uses
  %i.ie = load i64, ptr %i.id, align 8            ; 2 uses
  %i.if = sub i64 %i.ic, %i.ie
  %i.ig = icmp ult i64 %i.if, 16
  br i1 %i.ig, label %bb.bk, label %_ZN2v88internal4Zone8AllocateINS0_8ZoneListIjEEEEPvm.exit.i.i, !prof !6

bb.bk:                                            ; preds = %bb.bj
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.gb, i64 noundef 16) #26
  %.pre.i.i.i = load i64, ptr %i.id, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8ZoneListIjEEEEPvm.exit.i.i

_ZN2v88internal4Zone8AllocateINS0_8ZoneListIjEEEEPvm.exit.i.i: ; preds = %bb.bk, %bb.bj
  %i.ih = phi i64 [ %.pre.i.i.i, %bb.bk ], [ %i.ie, %bb.bj ] ; 2 uses
  %i.ii = inttoptr i64 %i.ih to ptr               ; 10 uses
  %i.ij = add i64 %i.ih, 16
  store i64 %i.ij, ptr %i.id, align 8
  store ptr null, ptr %i.ii, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 3 uses
  store i32 %i.ia, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 12 ; 6 uses
  store i32 0, ptr %i.il, align 4
  %i.im = icmp sgt i32 %i.gf, 0
  call void @llvm.assume(i1 %i.im)
  %i.in = zext nneg i32 %i.ia to i64
  %i.io = shl nuw nsw i64 %i.in, 2                ; 3 uses
  %i.ip = load i64, ptr %i.ib, align 8
  %i.iq = load i64, ptr %i.id, align 8            ; 2 uses
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = icmp ugt i64 %i.io, %i.ir
  br i1 %i.is, label %bb.bl, label %.lr.ph.preheader.i, !prof !6

bb.bl:                                            ; preds = %_ZN2v88internal4Zone8AllocateINS0_8ZoneListIjEEEEPvm.exit.i.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.gb, i64 noundef %i.io) #26
  %.pre.i.i.i.i.i = load i64, ptr %i.id, align 8
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bl, %_ZN2v88internal4Zone8AllocateINS0_8ZoneListIjEEEEPvm.exit.i.i
  %i.it = phi i64 [ %.pre.i.i.i.i.i, %bb.bl ], [ %i.iq, %_ZN2v88internal4Zone8AllocateINS0_8ZoneListIjEEEEPvm.exit.i.i ] ; 2 uses
  %i.iu = inttoptr i64 %i.it to ptr
  %i.iv = add i64 %i.it, %i.io
  store i64 %i.iv, ptr %i.id, align 8
  store ptr %i.iu, ptr %i.ii, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 24
  %i.ix = load i32, ptr %i.iw, align 4
  %i.iy = trunc i32 %i.ix to i1
  %i.iz = xor i1 %i.iy, true
  %wide.trip.count.i = zext nneg i32 %i.gf to i64
  br label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %_ZN2v88internal8ZoneListIjE3AddERKjPNS0_4ZoneE.exit70.i
  %.pre.i = load ptr, ptr %i.ii, align 8
  %i.ja = load i32, ptr %i.il, align 4            ; 2 uses
  %i.jb = add nsw i32 %i.ja, -1                   ; 2 uses
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = icmp ugt i32 %i.je, %i.ah
  %i.jg = add nsw i32 %i.ja, -2
  %spec.select.i = select i1 %i.jf, i32 %i.jg, i32 %i.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 0, ptr %9, align 4
  store i32 0, ptr %i.ai, align 4
  %i.jh = select i1 %.1.i, ptr %9, ptr %i.j
  %i.ji = select i1 %.1.i, ptr %i.j, ptr %9
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116GenerateBranchesEPNS0_20RegExpMacroAssemblerEPNS0_8ZoneListIjEEjjjjPNS0_5LabelES8_S8_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.ii, i32 noundef 0, i32 noundef %spec.select.i, i32 noundef 0, i32 noundef %i.ah, ptr noundef %9, ptr noundef %i.jh, ptr noundef %i.ji)
  %i.jj = load ptr, ptr %i.e, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 72
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull %9) #26, !inline_history !55
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZN2v88internal12_GLOBAL__N_115EmitClassRangesEPNS0_20RegExpMacroAssemblerEPNS0_17RegExpClassRangesEbPNS0_5LabelEibbPNS0_4ZoneE.exit

.lr.ph.i:                                         ; preds = %_ZN2v88internal8ZoneListIjE3AddERKjPNS0_4ZoneE.exit70.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZN2v88internal8ZoneListIjE3AddERKjPNS0_4ZoneE.exit70.i ] ; 2 uses
  %.06875.i = phi i1 [ %i.iz, %.lr.ph.preheader.i ], [ %.1.i, %_ZN2v88internal8ZoneListIjE3AddERKjPNS0_4ZoneE.exit70.i ] ; 2 uses
  %i.jm = load ptr, ptr %i.gd, align 8
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv.i ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4            ; 3 uses
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i
  %i.jq = xor i1 %.06875.i, true
  br label %bb.bq

bb.bn:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i32 %i.jo, ptr %7, align 4
  %i.jr = load i32, ptr %i.il, align 4            ; 3 uses
  %i.js = load i32, ptr %i.ik, align 8
  %i.jt = icmp slt i32 %i.jr, %i.js
  br i1 %i.jt, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ju = load ptr, ptr %i.ii, align 8
  %i.jv = add nsw i32 %i.jr, 1
  store i32 %i.jv, ptr %i.il, align 4
  %i.jw = sext i32 %i.jr to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.ju, i64 %i.jw
  store i32 %i.jo, ptr %i.jx, align 4
  br label %_ZN2v88internal8ZoneListIjE3AddERKjPNS0_4ZoneE.exit.i.a

bb.bp:                                            ; preds = %bb.bn
  call void @_ZN2v88internal8ZoneListIjE17ResizeAddInternalERKjPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.ii, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef %i.gb)
  br label %_ZN2v88internal8ZoneListIjE3AddERKjPNS0_4ZoneE.exit.i.a

_ZN2v88internal8ZoneListIjE3AddERKjPNS0_4ZoneE.exit.i.a: ; preds = %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN2v88internal8ZoneListIjE3AddERKjPNS0_4ZoneE.exit.i.a, %bb.bm
  %.1.i = phi i1 [ %i.jq, %bb.bm ], [ %.06875.i, %_ZN2v88internal8ZoneListIjE3AddERKjPNS0_4ZoneE.exit.i.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.jz = load i32, ptr %i.jy, align 4
  %i.ka = add i32 %i.jz, 1                        ; 2 uses
  store i32 %i.ka, ptr %8, align 4
  %i.kb = load i32, ptr %i.il, align 4            ; 3 uses
  %i.kc = load i32, ptr %i.ik, align 8
  %i.kd = icmp slt i32 %i.kb, %i.kc
  br i1 %i.kd, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %11 = load ptr, ptr %i.ii, align 8
  %12 = add nsw i32 %i.kb, 1
  store i32 %12, ptr %i.il, align 4
  %13 = sext i32 %i.kb to i64
  %14 = getelementptr inbounds [4 x i8], ptr %11, i64 %13
  store i32 %i.ka, ptr %14, align 4
  br label %_ZN2v88internal8ZoneListIjE3AddERKjPNS0_4ZoneE.exit70.i

bb.bs:                                            ; preds = %bb.bq
  call void @_ZN2v88internal8ZoneListIjE17ResizeAddInternalERKjPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.ii, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef %i.gb)
  br label %_ZN2v88internal8ZoneListIjE3AddERKjPNS0_4ZoneE.exit70.i

_ZN2v88internal8ZoneListIjE3AddERKjPNS0_4ZoneE.exit70.i: ; preds = %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !56

_ZN2v88internal12_GLOBAL__N_115EmitClassRangesEPNS0_20RegExpMacroAssemblerEPNS0_17RegExpClassRangesEbPNS0_5LabelEibbPNS0_4ZoneE.exit: ; preds = %bb.at, %bb.au, %bb.ax, %bb.ay, %bb.az, %_ZNK2v88internal17RegExpClassRanges13standard_typeEv.exit.i, %bb.bh, %bb.bi, %._crit_edge.loopexit.i
  %i.ke = load i32, ptr %6, align 4
  %i.kf = icmp sgt i32 %i.au, %i.ke
  br i1 %i.kf, label %bb.bt, label %select.unfold

bb.bt:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_115EmitClassRangesEPNS0_20RegExpMacroAssemblerEPNS0_17RegExpClassRangesEbPNS0_5LabelEibbPNS0_4ZoneE.exit
  store i32 %i.au, ptr %6, align 4
  br label %select.unfold

select.unfold:                                    ; preds = %.critedge98, %bb.k, %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit110, %bb.bt, %_ZN2v88internal12_GLOBAL__N_115EmitClassRangesEPNS0_20RegExpMacroAssemblerEPNS0_17RegExpClassRangesEbPNS0_5LabelEibbPNS0_4ZoneE.exit, %bb.an
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, -1
  %i.kg = icmp sgt i64 %indvars.iv130, 0
  br i1 %i.kg, label %bb.g, label %_ZN2v88internal12_GLOBAL__N_117UpdateBoundsCheckEiPi.exit111, !llvm.loop !57

_ZN2v88internal12_GLOBAL__N_117UpdateBoundsCheckEiPi.exit111: ; preds = %select.unfold, %bb.f, %bb.q, %bb.o
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal8TextNode6LengthEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr [16 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.sroa.0.0.copyload = load i32, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %i.g, i64 -12
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  switch i32 %.sroa.4.0.copyload, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %_ZNK2v88internal11TextElement6lengthEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.g, i64 -8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp ult i64 %i.j, 2147483648
  br i1 %i.k, label %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #25
  unreachable

_ZNK2v88internal10RegExpAtom6lengthEv.exit.i:     ; preds = %bb.b
  %i.l = trunc nuw nsw i64 %i.j to i32
  br label %_ZNK2v88internal11TextElement6lengthEv.exit

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

_ZNK2v88internal11TextElement6lengthEv.exit:      ; preds = %bb.a, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i
  %.0.i = phi i32 [ %i.l, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i ], [ %.sroa.4.0.copyload, %bb.a ]
  %i.m = add nsw i32 %.0.i, %.sroa.0.0.copyload
  ret i32 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8TextNode24CreateForCharacterRangesEPNS0_4ZoneEPNS0_8ZoneListINS0_14CharacterRangeEEEbPNS0_10RegExpNodeE(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 32
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJRPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEEEEEPT_DpOT0_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 32) #26
  %.pre.i.i = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJRPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJRPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEEEEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = add i64 %i.g, 32
  store i64 %i.i, ptr %i.c, align 8
  tail call void @_ZN2v88internal17RegExpClassRangesC2EPNS0_4ZoneEPNS0_8ZoneListINS0_14CharacterRangeEEENS_4base5FlagsINS1_4FlagEiiEE(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull %0, ptr noundef %1, i32 0)
  %i.j = load i64, ptr %i.a, align 8
  %i.k = load i64, ptr %i.c, align 8              ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, 80
  br i1 %i.m, label %bb.c, label %_ZN2v88internal4Zone3NewINS0_8TextNodeEJPNS0_17RegExpClassRangesERbRPNS0_10RegExpNodeEEEEPT_DpOT0_.exit, !prof !6

bb.c:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJRPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEEEEEPT_DpOT0_.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 80) #26
  %.pre.i.i1 = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8TextNodeEJPNS0_17RegExpClassRangesERbRPNS0_10RegExpNodeEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8TextNodeEJPNS0_17RegExpClassRangesERbRPNS0_10RegExpNodeEEEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJRPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEEEEEPT_DpOT0_.exit, %bb.c
  %i.n = phi i64 [ %.pre.i.i1, %bb.c ], [ %i.k, %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJRPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEEEEEPT_DpOT0_.exit ] ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = add i64 %i.n, 80
  store i64 %i.p, ptr %i.c, align 8
  tail call void @_ZN2v88internal8TextNodeC2EPNS0_17RegExpClassRangesEbPNS0_10RegExpNodeE(ptr noundef nonnull align 8 dereferenceable(73) %i.o, ptr noundef nonnull %i.h, i1 noundef zeroext %2, ptr noundef %3)
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8TextNode22CreateForSurrogatePairEPNS0_4ZoneENS0_14CharacterRangeEPNS0_8ZoneListIS4_EEbPNS0_10RegExpNodeE(ptr noundef %0, i64 %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.065.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.467.0.extract.shift = lshr i64 %1, 32
  %.sroa.467.0.extract.trunc = trunc nuw i64 %.sroa.467.0.extract.shift to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 30 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 16
  br i1 %i.f, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 16) #26
  %.pre.i.i = load i64, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 14 uses
  %i.i = add i64 %i.g, 16
  store i64 %i.i, ptr %i.c, align 8
  store ptr null, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 7 uses
  store i32 2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 12 uses
  store i32 0, ptr %i.k, align 4
  %i.l = load i64, ptr %i.a, align 8
  %i.m = load i64, ptr %i.c, align 8              ; 2 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, 32
  br i1 %i.o, label %bb.d, label %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_11TextElementEEEJiRPS1_EEEPT_DpOT0_.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 32) #26
  %.pre.i.i.i.i = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_11TextElementEEEJiRPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_11TextElementEEEJiRPS1_EEEPT_DpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.p = phi i64 [ %.pre.i.i.i.i, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = add i64 %i.p, 32
  store i64 %i.r, ptr %i.c, align 8
  store ptr %i.q, ptr %i.h, align 8
  %i.s = icmp eq i32 %.sroa.065.0.extract.trunc, %.sroa.467.0.extract.trunc
  br i1 %i.s, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_11TextElementEEEJiRPS1_EEEPT_DpOT0_.exit
  %i.t = load i64, ptr %i.a, align 8
  %i.u = load i64, ptr %i.c, align 8              ; 2 uses
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ult i64 %i.v, 8
  br i1 %i.w, label %bb.f, label %_ZN2v88internal8ZoneListItE3AddERKtPNS0_4ZoneE.exit, !prof !6

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 8) #26
  %.pre.i.i.i = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal8ZoneListItE3AddERKtPNS0_4ZoneE.exit

_ZN2v88internal8ZoneListItE3AddERKtPNS0_4ZoneE.exit: ; preds = %bb.e, %bb.f
  %i.x = phi i64 [ %.pre.i.i.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = add i64 %i.x, 8
  store i64 %i.z, ptr %i.c, align 8
  %i.aa = trunc i64 %1 to i16
  store i16 %i.aa, ptr %i.y, align 2
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ult i64 %i.ad, 24
  br i1 %i.ae, label %bb.g, label %_ZN2v88internal4Zone3NewINS0_10RegExpAtomEJNS_4base6VectorIKtEEEEEPT_DpOT0_.exit, !prof !6

bb.g:                                             ; preds = %_ZN2v88internal8ZoneListItE3AddERKtPNS0_4ZoneE.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 24) #26
  %.pre.i.i1 = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal4Zone3NewINS0_10RegExpAtomEJNS_4base6VectorIKtEEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_10RegExpAtomEJNS_4base6VectorIKtEEEEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal8ZoneListItE3AddERKtPNS0_4ZoneE.exit, %bb.g
  %i.af = phi i64 [ %.pre.i.i1, %bb.g ], [ %i.ac, %_ZN2v88internal8ZoneListItE3AddERKtPNS0_4ZoneE.exit ] ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr               ; 5 uses
  %i.ah = add i64 %i.af, 24
  store i64 %i.ah, ptr %i.c, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 312) (i8, ptr @_ZTVN2v88internal10RegExpAtomE, i64 16), ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.y, ptr %i.ai, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.aj = load i32, ptr %i.k, align 4             ; 2 uses
  %i.ak = load i32, ptr %i.j, align 8             ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal13SeqRegExpNode15AsSeqRegExpNodeEv:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ActionNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal10ActionNode21FixedLengthLoopLengthEv(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 -2147483648
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal10ActionNode12AsActionNodeEv(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8TextNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(73) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8TextNode10AsTextNodeEv(ptr noundef nonnull align 8 dereferenceable(73) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13AssertionNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal13AssertionNode15AsAssertionNodeEv(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17BackReferenceNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(73) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17BackReferenceNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal17BackReferenceNode19AsBackReferenceNodeEv(ptr noundef nonnull align 8 dereferenceable(73) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal7EndNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal7EndNode20GetQuickCheckDetailsEPNS0_17QuickCheckDetailsEPNS0_14RegExpCompilerEib(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal7EndNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal7EndNode9AsEndNodeEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal23NegativeSubmatchSuccessD0Ev(ptr noundef nonnull align 8 dereferenceable(76) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ChoiceNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(66) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal10ChoiceNode12AsChoiceNodeEv(ptr noundef nonnull align 8 dereferenceable(66) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal10ChoiceNode39try_to_emit_quick_check_for_alternativeEb(ptr noundef nonnull align 8 dereferenceable(66) %0, i1 noundef zeroext %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal10ChoiceNode13read_backwardEv(ptr noundef nonnull align 8 dereferenceable(66) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal28NegativeLookaroundChoiceNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(66) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal28NegativeLookaroundChoiceNode12FillInBMInfoEPNS0_7IsolateEiiPNS0_19BoyerMooreLookaheadEb(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = add nsw i32 %3, -1
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef %1, i32 noundef %2, i32 noundef %i.f, ptr noundef %4, i1 noundef zeroext %5) #26
  %i.j = icmp eq i32 %2, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = zext i1 %5 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  store ptr %4, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal28NegativeLookaroundChoiceNode30AsNegativeLookaroundChoiceNodeEv(ptr noundef nonnull align 8 dereferenceable(66) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal28NegativeLookaroundChoiceNode39try_to_emit_quick_check_for_alternativeEb(ptr noundef nonnull align 8 dereferenceable(66) %0, i1 noundef zeroext %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = xor i1 %1, true
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal10RegExpNodeD2Ev(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14LoopChoiceNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal14LoopChoiceNode16AsLoopChoiceNodeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal14LoopChoiceNode13read_backwardEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.b = load i8, ptr %i.a, align 1, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8ZoneListIjE17ResizeAddInternalERKjPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %5 = load i32, ptr %4, align 8                  ; 2 uses
  %6 = shl nsw i32 %5, 1
  %7 = or disjoint i32 %6, 1                      ; 2 uses
  %8 = load i32, ptr %1, align 4
  %9 = icmp sgt i32 %5, -1
  br i1 %9, label %11, label %10, !prof !5

10:                                               ; preds = %3
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #25
  unreachable

11:                                               ; preds = %3
  %12 = zext nneg i32 %7 to i64
  %13 = shl nuw nsw i64 %12, 2
  %14 = add nuw nsw i64 %13, 4                    ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %18 = load i64, ptr %17, align 8                ; 2 uses
  %19 = sub i64 %16, %18
  %20 = icmp ugt i64 %14, %19
  br i1 %20, label %21, label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i, !prof !6

21:                                               ; preds = %11
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %14) #26
  %.pre.i.i.i = load i64, ptr %17, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i: ; preds = %21, %11
  %22 = phi i64 [ %.pre.i.i.i, %21 ], [ %18, %11 ] ; 2 uses
  %23 = inttoptr i64 %22 to ptr                   ; 7 uses
  %24 = add i64 %22, %14
  store i64 %24, ptr %17, align 8
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %26 = load i32, ptr %25, align 4                ; 2 uses
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %_ZN2v88internal8ZoneListIjE6ResizeEiPNS0_4ZoneE.exit

28:                                               ; preds = %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i
  %29 = load ptr, ptr %0, align 8                 ; 5 uses
  %30 = zext nneg i32 %26 to i64
  %31 = shl nuw nsw i64 %30, 2                    ; 2 uses
  %32 = add nsw i64 %31, -4
  %33 = lshr exact i64 %32, 2
  switch i64 %33, label %40 [
    i64 3, label %39
    i64 1, label %36
    i64 2, label %38
    i64 0, label %34
  ]

34:                                               ; preds = %28
  %35 = load i32, ptr %29, align 1
  store i32 %35, ptr %23, align 1
  br label %_ZN2v88internal8ZoneListIjE6ResizeEiPNS0_4ZoneE.exit

36:                                               ; preds = %28
  %37 = load i64, ptr %29, align 1
  store i64 %37, ptr %23, align 1
  br label %_ZN2v88internal8ZoneListIjE6ResizeEiPNS0_4ZoneE.exit

38:                                               ; preds = %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %23, ptr noundef nonnull align 1 dereferenceable(12) %29, i64 12, i1 false)
  br label %_ZN2v88internal8ZoneListIjE6ResizeEiPNS0_4ZoneE.exit

39:                                               ; preds = %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %23, ptr noundef nonnull align 1 dereferenceable(16) %29, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIjE6ResizeEiPNS0_4ZoneE.exit

40:                                               ; preds = %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %29, i64 %31, i1 false)
  br label %_ZN2v88internal8ZoneListIjE6ResizeEiPNS0_4ZoneE.exit

_ZN2v88internal8ZoneListIjE6ResizeEiPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i, %34, %36, %38, %39, %40
  store ptr %23, ptr %0, align 8
  store i32 %7, ptr %4, align 8
  %41 = load i32, ptr %25, align 4                ; 2 uses
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %25, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds [4 x i8], ptr %23, i64 %43
  store i32 %8, ptr %44, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_10RegExpNodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpNodeEA_S4_EEPT_m.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #26
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpNodeEA_S4_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpNodeEA_S4_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpNodeEA_S4_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpNodeEA_S4_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpNodeEA_S4_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN2v88internal17RegExpCaseFolding9IgnoreSetEv() local_unnamed_addr #5

declare noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN2v88internal17RegExpCaseFolding13SpecialAddSetEv() local_unnamed_addr #5

declare void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9closeOverEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7810UnicodeSet13getRangeCountEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7810UnicodeSet13getRangeStartEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7810UnicodeSet11getRangeEndEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #19

declare void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7toUpperEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #19

declare noundef ptr @_ZN2v88internal12CharacterSet6rangesEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #5

declare void @_ZN2v88internal14CharacterRange14ClampToOneByteEPNS0_8ZoneListIS1_EE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_116GenerateBranchesEPNS0_20RegExpMacroAssemblerEPNS0_8ZoneListIjEEjjjjPNS0_5LabelES8_S8_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull readnone captures(address) %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 11 uses
  %9 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %10 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %11 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.b = sext i32 %3 to i64                       ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 3 uses
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = icmp eq i32 %2, %3
  br i1 %i.g, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = lshr i32 %5, 7
  %.in343 = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.b
  %i.i = load i32, ptr %.in343, align 4           ; 2 uses
  %i.j = add i32 %2, 1                            ; 2 uses
  %i.k = icmp eq i32 %i.j, %3
  br i1 %i.k, label %._crit_edge350, label %.lr.ph349

tailrecurse._crit_edge:                           ; preds = %bb.a
  %.not.i = icmp eq ptr %8, %6
  %i.l = trunc i32 %i.f to i16                    ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %i.l, ptr noundef %8) #26, !inline_history !94
  %.not13.i = icmp eq ptr %7, %6
  br i1 %.not13.i, label %_ZN2v88internal12_GLOBAL__N_116EmitBoundaryTestEPNS0_20RegExpMacroAssemblerEiPNS0_5LabelES5_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %7) #26, !inline_history !94
  br label %_ZN2v88internal12_GLOBAL__N_116EmitBoundaryTestEPNS0_20RegExpMacroAssemblerEiPNS0_5LabelES5_S5_.exit

bb.d:                                             ; preds = %tailrecurse._crit_edge
  %i.s = add i16 %i.l, -1
  %i.t = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %i.s, ptr noundef %7) #26, !inline_history !94
  br label %_ZN2v88internal12_GLOBAL__N_116EmitBoundaryTestEPNS0_20RegExpMacroAssemblerEiPNS0_5LabelES5_S5_.exit

._crit_edge350:                                   ; preds = %tailrecurse, %.lr.ph
  %.pre.lcssa = phi i32 [ %i.f, %.lr.ph ], [ %i.hu, %tailrecurse ] ; 5 uses
  %.tr144193.lcssa = phi ptr [ %8, %.lr.ph ], [ %.tr143192346, %tailrecurse ] ; 4 uses
  %.tr143192.lcssa = phi ptr [ %7, %.lr.ph ], [ %.tr144193345, %tailrecurse ] ; 3 uses
  %.lcssa317 = phi i32 [ %i.i, %.lr.ph ], [ %i.hv, %tailrecurse ]
  %i.w = add i32 %.lcssa317, -1                   ; 3 uses
  %i.x = icmp eq ptr %.tr143192.lcssa, %6
  %i.y = icmp eq i32 %.pre.lcssa, %i.w            ; 2 uses
  br i1 %i.x, label %bb.e, label %bb.h

bb.e:                                             ; preds = %._crit_edge350
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %.pre.lcssa, ptr noundef %.tr144193.lcssa) #26, !inline_history !95
  br label %_ZN2v88internal12_GLOBAL__N_116EmitBoundaryTestEPNS0_20RegExpMacroAssemblerEiPNS0_5LabelES5_S5_.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = trunc i32 %.pre.lcssa to i16
  %i.ad = trunc i32 %i.w to i16
  %i.ae = load ptr, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 184
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %i.ac, i16 noundef zeroext %i.ad, ptr noundef %.tr144193.lcssa) #26, !inline_history !95
  br label %_ZN2v88internal12_GLOBAL__N_116EmitBoundaryTestEPNS0_20RegExpMacroAssemblerEiPNS0_5LabelES5_S5_.exit

bb.h:                                             ; preds = %._crit_edge350
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %.pre.lcssa, ptr noundef %.tr143192.lcssa) #26, !inline_history !95
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ak = trunc i32 %.pre.lcssa to i16
  %i.al = trunc i32 %i.w to i16
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 176
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %i.ak, i16 noundef zeroext %i.al, ptr noundef %.tr143192.lcssa) #26, !inline_history !95
end_hunk_3
