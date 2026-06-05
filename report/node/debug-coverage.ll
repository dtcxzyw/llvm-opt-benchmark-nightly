inline.NumInlined: 1792
inline.NumDeleted: 970
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.817", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", [4 x i8], %"class.v8::internal::FlagValue.818", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.817", %"class.v8::internal::FlagValue.817", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.817", %"class.v8::internal::FlagValue.819", %"class.v8::internal::FlagValue.819", %"class.v8::internal::FlagValue.819", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.817", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.817", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.818", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.817", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.817", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.818", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", [4 x i8], %"class.v8::internal::FlagValue.818", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.817", %"class.v8::internal::FlagValue.817", %"class.v8::internal::FlagValue.817", %"class.v8::internal::FlagValue.817", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue.816", [4 x i8], %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.817", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.818", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.818", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.819", %"class.v8::internal::FlagValue.819", %"class.v8::internal::FlagValue.819", %"class.v8::internal::FlagValue.819", %"class.v8::internal::FlagValue.819", %"class.v8::internal::FlagValue.819", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.817", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.817", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.818", %"class.v8::internal::FlagValue.818", %"class.v8::internal::FlagValue.818", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.817", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.819", [2 x i8], %"class.v8::internal::FlagValue.816", [4 x i8], %"class.v8::internal::FlagValue.818", %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.817", %"class.v8::internal::FlagValue.817", [4 x i8], %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.826", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.816", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.815", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.819" = type { %"class.std::optional.820" }
%"class.std::optional.820" = type { %"struct.std::_Optional_base.821" }
%"struct.std::_Optional_base.821" = type { %"struct.std::_Optional_payload.823" }
%"struct.std::_Optional_payload.823" = type { %"struct.std::_Optional_payload_base.824" }
%"struct.std::_Optional_payload_base.824" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.818" = type { double }
%"class.v8::internal::FlagValue.817" = type { i32 }
%"class.v8::internal::FlagValue.826" = type { i64 }
%"class.v8::internal::FlagValue.816" = type { i32 }
%"class.v8::internal::FlagValue.815" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.v8::internal::(anonymous namespace)::CoverageBlockIterator" = type <{ ptr, %"class.std::vector.768", i8, i8, [2 x i8], i32, i32, [4 x i8] }>
%"class.std::vector.768" = type { %"struct.std::_Vector_base.769" }
%"struct.std::_Vector_base.769" = type { %"struct.std::_Vector_base<v8::internal::CoverageBlock, std::allocator<v8::internal::CoverageBlock>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::CoverageBlock, std::allocator<v8::internal::CoverageBlock>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::CoverageBlock, std::allocator<v8::internal::CoverageBlock>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::CoverageBlock, std::allocator<v8::internal::CoverageBlock>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr.979" = type { %"struct.std::__uniq_ptr_data.980" }
%"struct.std::__uniq_ptr_data.980" = type { %"class.std::__uniq_ptr_impl.981" }
%"class.std::__uniq_ptr_impl.981" = type { %"class.std::tuple.982" }
%"class.std::tuple.982" = type { %"struct.std::_Tuple_impl.983" }
%"struct.std::_Tuple_impl.983" = type { %"struct.std::_Head_base.986" }
%"struct.std::_Head_base.986" = type { ptr }
%"class.v8::internal::detail::TaggedOperatorArrowRef.814" = type { %"class.v8::internal::SharedFunctionInfo" }
%"class.v8::internal::SharedFunctionInfo" = type { %"class.v8::internal::TorqueGeneratedSharedFunctionInfo" }
%"class.v8::internal::TorqueGeneratedSharedFunctionInfo" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::HeapObject" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::TaggedImpl" = type { i64 }
%"class.v8::internal::detail::TaggedOperatorArrowRef.978" = type { %"class.v8::internal::CoverageInfo" }
%"class.v8::internal::CoverageInfo" = type { %"class.v8::internal::TorqueGeneratedCoverageInfo" }
%"class.v8::internal::TorqueGeneratedCoverageInfo" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::detail::TaggedOperatorArrowRef" = type { %"class.v8::internal::Script" }
%"class.v8::internal::Script" = type { %"class.v8::internal::TorqueGeneratedScript" }
%"class.v8::internal::TorqueGeneratedScript" = type { %"class.v8::internal::Struct" }
%"class.v8::internal::Struct" = type { %"class.v8::internal::TorqueGeneratedStruct" }
%"class.v8::internal::TorqueGeneratedStruct" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::HeapObjectIterator" = type { ptr, %"class.std::unique_ptr.863", %"class.std::unique_ptr.871", %"class.v8::internal::SpaceIterator", %"class.std::unique_ptr.879" }
%"class.std::unique_ptr.863" = type { %"struct.std::__uniq_ptr_data.864" }
%"struct.std::__uniq_ptr_data.864" = type { %"class.std::__uniq_ptr_impl.865" }
%"class.std::__uniq_ptr_impl.865" = type { %"class.std::tuple.866" }
%"class.std::tuple.866" = type { %"struct.std::_Tuple_impl.867" }
%"struct.std::_Tuple_impl.867" = type { %"struct.std::_Head_base.870" }
%"struct.std::_Head_base.870" = type { ptr }
%"class.std::unique_ptr.871" = type { %"struct.std::__uniq_ptr_data.872" }
%"struct.std::__uniq_ptr_data.872" = type { %"class.std::__uniq_ptr_impl.873" }
%"class.std::__uniq_ptr_impl.873" = type { %"class.std::tuple.874" }
%"class.std::tuple.874" = type { %"struct.std::_Tuple_impl.875" }
%"struct.std::_Tuple_impl.875" = type { %"struct.std::_Head_base.878" }
%"struct.std::_Head_base.878" = type { ptr }
%"class.v8::internal::SpaceIterator" = type <{ ptr, ptr, i32, [4 x i8] }>
%"class.std::unique_ptr.879" = type { %"struct.std::__uniq_ptr_data.880" }
%"struct.std::__uniq_ptr_data.880" = type { %"class.std::__uniq_ptr_impl.881" }
%"class.std::__uniq_ptr_impl.881" = type { %"class.std::tuple.882" }
%"class.std::tuple.882" = type { %"struct.std::_Tuple_impl.883" }
%"struct.std::_Tuple_impl.883" = type { %"struct.std::_Head_base.886" }
%"struct.std::_Head_base.886" = type { ptr }
%"class.v8::internal::JavaScriptStackFrameIterator" = type { %"class.v8::internal::StackFrameIterator" }
%"class.v8::internal::StackFrameIterator" = type { %"class.v8::internal::StackFrameIteratorBase" }
%"class.v8::internal::StackFrameIteratorBase" = type { ptr, ptr, %union.anon.935, ptr, ptr, i8, ptr }
%union.anon.935 = type { %"class.v8::internal::EntryFrame" }
%"class.v8::internal::EntryFrame" = type { %"class.v8::internal::TypedFrame" }
%"class.v8::internal::TypedFrame" = type { %"class.v8::internal::CommonFrame" }
%"class.v8::internal::CommonFrame" = type { %"class.v8::internal::StackFrame" }
%"class.v8::internal::StackFrame" = type { ptr, ptr, ptr, %"struct.v8::internal::StackFrame::State" }
%"struct.v8::internal::StackFrame::State" = type <{ i64, i64, ptr, i64, i64, ptr, i8, i8, [6 x i8] }>
%"class.v8::internal::SharedToCounterMap" = type { %"class.v8::base::TemplateHashMapImpl" }
%"class.v8::base::TemplateHashMapImpl" = type { %"struct.v8::base::TemplateHashMapImpl<v8::internal::Tagged<v8::internal::SharedFunctionInfo>, unsigned int, v8::base::KeyEqualityMatcher<v8::internal::Tagged<v8::internal::Object>>, v8::base::DefaultAllocationPolicy>::Impl" }
%"struct.v8::base::TemplateHashMapImpl<v8::internal::Tagged<v8::internal::SharedFunctionInfo>, unsigned int, v8::base::KeyEqualityMatcher<v8::internal::Tagged<v8::internal::Object>>, v8::base::DefaultAllocationPolicy>::Impl" = type { ptr, i32, i32 }
%"class.v8::internal::Script::Iterator" = type { %"class.v8::internal::WeakArrayList::Iterator" }
%"class.v8::internal::WeakArrayList::Iterator" = type { i32, %"class.v8::internal::Tagged.461" }
%"class.v8::internal::Tagged.461" = type { %"class.v8::internal::Tagged.2" }
%"class.v8::internal::Tagged.2" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::Handle" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"class.v8::internal::SharedFunctionInfo::ScriptIterator" = type <{ %"class.v8::internal::Handle.805", i32, [4 x i8] }>
%"class.v8::internal::Handle.805" = type { %"class.v8::internal::HandleBase" }
%"struct.v8::internal::CoverageFunction" = type <{ i32, i32, i32, [4 x i8], %"class.v8::internal::Handle.767", %"class.std::vector.768", i8, [7 x i8] }>
%"class.v8::internal::Handle.767" = type { %"class.v8::internal::HandleBase" }
%"struct.std::_Sp_locker" = type { i8, i8 }
%"class.std::vector.456" = type { %"struct.std::_Vector_base.457" }
%"struct.std::_Vector_base.457" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.v8::internal::wasm::StringBuilder" = type <{ [256 x i8], %"class.std::vector.748", ptr, ptr, i64, i8, [7 x i8] }>
%"class.std::vector.748" = type { %"struct.std::_Vector_base.749" }
%"struct.std::_Vector_base.749" = type { %"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl" }
%"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl" = type { %"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.v8::internal::wasm::NamesProvider" = type { %"class.v8::base::Mutex", i8, i8, i8, ptr, %"class.v8::base::Vector", %"class.std::unique_ptr.753", %"class.std::map.761", %"class.std::map.761", %"class.std::map.761", %"class.std::map.761", %"class.std::map.761" }
%"class.v8::base::Mutex" = type { %"class.absl::Mutex" }
%"class.absl::Mutex" = type { %"struct.std::atomic.22" }
%"struct.std::atomic.22" = type { %"struct.std::__atomic_base.23" }
%"struct.std::__atomic_base.23" = type { i64 }
%"class.v8::base::Vector" = type { ptr, i64 }
%"class.std::unique_ptr.753" = type { %"struct.std::__uniq_ptr_data.754" }
%"struct.std::__uniq_ptr_data.754" = type { %"class.std::__uniq_ptr_impl.755" }
%"class.std::__uniq_ptr_impl.755" = type { %"class.std::tuple.756" }
%"class.std::tuple.756" = type { %"struct.std::_Tuple_impl.757" }
%"struct.std::_Tuple_impl.757" = type { %"struct.std::_Head_base.760" }
%"struct.std::_Head_base.760" = type { ptr }
%"class.std::map.761" = type { %"class.std::_Rb_tree.762" }
%"class.std::_Rb_tree.762" = type { %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const unsigned int, std::__cxx11::basic_string<char>>>, std::less<unsigned int>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const unsigned int, std::__cxx11::basic_string<char>>>, std::less<unsigned int>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.v8::internal::IsCompiledScope" = type <{ %"class.v8::internal::MaybeHandle", i8, [7 x i8] }>
%"class.v8::internal::MaybeHandle" = type { %"class.v8::internal::HandleBase" }
%"struct.v8::internal::(anonymous namespace)::SharedFunctionInfoAndCount" = type <{ %"class.v8::internal::Handle.807", i32, i32, i32, [4 x i8] }>
%"class.v8::internal::Handle.807" = type { %"class.v8::internal::HandleBase" }
%"struct.v8::internal::CoverageBlock" = type { i32, i32, i32 }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { ptr }

$_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12emplace_backIJRiS6_RjEEERS2_DpOT_ = comdat any

$_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE17_M_realloc_insertIJNS1_6HandleINS1_6ScriptEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE6ResizeEv = comdat any

$_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE17_M_realloc_insertIJRNS1_6HandleINS1_6ScriptEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE17_M_default_appendEm = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_T1_ = comdat any

$_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_ = comdat any

$_ZN2v88internal15IsCompiledScopeC2ENS0_6TaggedINS0_18SharedFunctionInfoEEEPNS0_7IsolateE = comdat any

@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"is_compiled_scope.is_compiled()\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Out of memory: HashMap::Initialize\00", align 1
@_ZN2v88internal12IsolateGroup22default_isolate_group_E = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.8 = private unnamed_addr constant [91 x i8] c"Coverage for function='%s', SFI=%p, has_nonempty_source_range=%d, function_is_relevant=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"{start: %d, end: %d, count: %d}\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"kind() == CodeKind::BASELINE\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Coverage14CollectPreciseEPNS0_7IsolateE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 59176 ; 3 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  tail call void @_ZN2v88internal8Coverage7CollectEPNS0_7IsolateENS_5debug12CoverageModeE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull %1, i32 noundef %i.b)
  %i.c = load atomic i32, ptr %i.a monotonic, align 4
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i32, ptr %i.a monotonic, align 4
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1920
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_ZN2v88internal7Isolate35SetFeedbackVectorsForProfilingToolsENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.h) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Coverage7CollectEPNS0_7IsolateENS_5debug12CoverageModeE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::(anonymous namespace)::CoverageBlockIterator", align 8 ; 14 uses
  %4 = alloca %"class.v8::internal::(anonymous namespace)::CoverageBlockIterator", align 8 ; 14 uses
  %5 = alloca %"class.std::unique_ptr.979", align 8 ; 5 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.814", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.978", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::(anonymous namespace)::CoverageBlockIterator", align 8 ; 13 uses
  %9 = alloca %"class.v8::internal::(anonymous namespace)::CoverageBlockIterator", align 8 ; 14 uses
  %10 = alloca %"class.v8::internal::(anonymous namespace)::CoverageBlockIterator", align 8 ; 14 uses
  %11 = alloca %"class.v8::internal::(anonymous namespace)::CoverageBlockIterator", align 8 ; 13 uses
  %12 = alloca %"class.v8::internal::(anonymous namespace)::CoverageBlockIterator", align 8 ; 14 uses
  %13 = alloca %"class.v8::internal::(anonymous namespace)::CoverageBlockIterator", align 8 ; 14 uses
  %14 = alloca %"class.v8::internal::(anonymous namespace)::CoverageBlockIterator", align 8 ; 12 uses
  %15 = alloca %"class.v8::internal::(anonymous namespace)::CoverageBlockIterator", align 8 ; 12 uses
  %16 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.814", align 8 ; 4 uses
  %17 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.814", align 8 ; 5 uses
  %18 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.814", align 8 ; 4 uses
  %19 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.814", align 8 ; 4 uses
  %20 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.814", align 8 ; 5 uses
  %21 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.814", align 8 ; 4 uses
  %22 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.814", align 8 ; 4 uses
  %23 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %24 = alloca %"class.v8::internal::HeapObjectIterator", align 8 ; 6 uses
  %25 = alloca %"class.v8::internal::JavaScriptStackFrameIterator", align 8 ; 6 uses
  %26 = alloca %"class.v8::internal::SharedToCounterMap", align 8 ; 16 uses
  %27 = alloca %"class.v8::internal::Script::Iterator", align 8 ; 6 uses
  %28 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %29 = alloca %"class.v8::internal::Handle", align 8 ; 5 uses
  %30 = alloca %"class.v8::internal::SharedFunctionInfo::ScriptIterator", align 8 ; 6 uses
  %31 = alloca %"struct.v8::internal::CoverageFunction", align 8 ; 25 uses
  %32 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.814", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.a = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 11 uses
  store i64 8, ptr %i.a, align 8
  %calloc.i.i.i = tail call dereferenceable_or_null(128) ptr @calloc(i64 1, i64 128) ; 2 uses
  store ptr %calloc.i.i.i, ptr %26, align 8
  %i.b = icmp eq ptr %calloc.i.i.i, null
  br i1 %i.b, label %bb.b, label %_ZN2v88internal18SharedToCounterMapC2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #21
  unreachable

_ZN2v88internal18SharedToCounterMapC2Ev.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %26, i64 12 ; 6 uses
  %.not.i = icmp eq i32 %2, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 59176
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  switch i32 %i.e, label %_ZN2v88internal12_GLOBAL__N_126CollectAndMaybeResetCountsEPNS0_7IsolateEPNS0_18SharedToCounterMapENS_5debug12CoverageModeE.exit [
    i32 4, label %bb.c
    i32 3, label %bb.c
    i32 2, label %bb.c
    i32 1, label %bb.c
    i32 0, label %bb.k
  ]

bb.c:                                             ; preds = %_ZN2v88internal18SharedToCounterMapC2Ev.exit, %_ZN2v88internal18SharedToCounterMapC2Ev.exit, %_ZN2v88internal18SharedToCounterMapC2Ev.exit, %_ZN2v88internal18SharedToCounterMapC2Ev.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 9672 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph186.i, label %_ZN2v88internal12_GLOBAL__N_126CollectAndMaybeResetCountsEPNS0_7IsolateEPNS0_18SharedToCounterMapENS_5debug12CoverageModeE.exit

.lr.ph186.i:                                      ; preds = %bb.c, %_ZN2v88internal18SharedToCounterMap3AddENS0_6TaggedINS0_18SharedFunctionInfoEEEj.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN2v88internal18SharedToCounterMap3AddENS0_6TaggedINS0_18SharedFunctionInfoEEEj.exit.i ], [ 0, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %i.bw, %_ZN2v88internal18SharedToCounterMap3AddENS0_6TaggedINS0_18SharedFunctionInfoEEEj.exit.i ], [ %i.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8 ; 2 uses
  %i.s = add i64 %i.r, 23
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 8              ; 4 uses
  %i.v = add i64 %i.r, 11
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph186.i
  store atomic volatile i32 0, ptr %i.w monotonic, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph186.i
  %i.y = trunc i64 %i.u to i32                    ; 2 uses
  %i.z = and i32 %i.y, 2147483647                 ; 2 uses
  %i.aa = load i32, ptr %i.a, align 8
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  %i.ac = and i32 %i.ab, %i.z
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = load ptr, ptr %26, align 8              ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ad ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.aj = zext i32 %i.ab to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %i.ak = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.g ] ; 2 uses
  %.017.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.g ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ak, align 8
  %i.al = icmp eq i64 %i.u, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.al, label %_ZN2v88internal18SharedToCounterMap3AddENS0_6TaggedINS0_18SharedFunctionInfoEEEj.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = add nsw i64 %.017.i.i.i.i.i, 1
  %i.an = and i64 %i.am, %i.aj                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %.loopexit.i.i.i.i, !llvm.loop !5

.loopexit.i.i.i.i:                                ; preds = %bb.g, %bb.e
  %.lcssa.i.ph.i.i.i.i = phi ptr [ %i.af, %bb.e ], [ %i.ao, %bb.g ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph.i.i.i.i, i64 12
  store i64 %i.u, ptr %.lcssa.i.ph.i.i.i.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph.i.i.i.i, i64 8
  store i32 0, ptr %i.at, align 8
  %i.au = or i32 %i.y, -2147483648
  store i32 %i.au, ptr %i.as, align 4
  %i.av = load i32, ptr %i.c, align 4
  %i.aw = add i32 %i.av, 1                        ; 3 uses
  store i32 %i.aw, ptr %i.c, align 4
  %i.ax = lshr i32 %i.aw, 2
  %i.ay = add i32 %i.ax, %i.aw
  %i.az = load i32, ptr %i.a, align 8
  %.not.i.i.i.i.i = icmp ult i32 %i.ay, %i.az
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal18SharedToCounterMap3AddENS0_6TaggedINS0_18SharedFunctionInfoEEEj.exit.i, label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i.i.i
  call void @_ZN2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE6ResizeEv(ptr noundef nonnull align 8 dereferenceable(16) %26), !inline_history !7
  %i.ba = load i32, ptr %i.a, align 8
  %i.bb = add i32 %i.ba, -1                       ; 2 uses
  %i.bc = and i32 %i.bb, %i.z
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = load ptr, ptr %26, align 8              ; 2 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bd ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i, label %_ZN2v88internal18SharedToCounterMap3AddENS0_6TaggedINS0_18SharedFunctionInfoEEEj.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h
  %i.bj = zext i32 %i.bb to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %i.bk = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %i.bo, %bb.j ] ; 2 uses
  %.017.i.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %i.bn, %bb.j ]
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bk, align 8
  %i.bl = icmp eq i64 %i.u, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.bl, label %_ZN2v88internal18SharedToCounterMap3AddENS0_6TaggedINS0_18SharedFunctionInfoEEEj.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = add nsw i64 %.017.i.i.i.i.i.i, 1
  %i.bn = and i64 %i.bm, %i.bj                    ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.i, label %_ZN2v88internal18SharedToCounterMap3AddENS0_6TaggedINS0_18SharedFunctionInfoEEEj.exit.i, !llvm.loop !5

_ZN2v88internal18SharedToCounterMap3AddENS0_6TaggedINS0_18SharedFunctionInfoEEEj.exit.i: ; preds = %bb.f, %bb.j, %bb.i, %bb.h, %.loopexit.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.bk, %bb.i ], [ %.lcssa.i.ph.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.bf, %bb.h ], [ %i.bo, %bb.j ], [ %i.ak, %bb.f ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %storemerge.i.i = call i32 @llvm.uadd.sat.i32(i32 %i.x, i32 %i.bt)
  store i32 %storemerge.i.i, ptr %i.bs, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bu = load i64, ptr %i.f, align 8
  %i.bv = add i64 %i.bu, -1
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = ashr i64 %i.by, 32
  %i.ca = icmp slt i64 %indvars.iv.next.i, %i.bz
  br i1 %i.ca, label %.lr.ph186.i, label %_ZN2v88internal12_GLOBAL__N_126CollectAndMaybeResetCountsEPNS0_7IsolateEPNS0_18SharedToCounterMapENS_5debug12CoverageModeE.exit, !llvm.loop !8

bb.k:                                             ; preds = %_ZN2v88internal18SharedToCounterMapC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 55464
  call void @_ZN2v88internal18HeapObjectIteratorC1EPNS0_4HeapENS1_20HeapObjectsFilteringE(ptr noundef nonnull align 8 dereferenceable(56) %24, ptr noundef nonnull %i.cb, i32 noundef 0) #20
  %i.cc = call i64 @_ZN2v88internal18HeapObjectIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(56) %24) #20 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNK2v88internal18SharedFunctionInfo20IsSubjectToDebuggingEv.exit.thread.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @_ZN2v88internal18StackFrameIteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(128) %25, ptr noundef nonnull %1) #20
  %i.ce = getelementptr inbounds nuw i8, ptr %25, i64 96 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = icmp eq ptr %i.cf, null
end_hunk_0
begin_hunk_1_@_ZN2v88internal8Coverage7CollectEPNS0_7IsolateENS_5debug12CoverageModeE:bb.a
  store <2 x ptr> %i.aus, ptr %i.auq, align 8, !alias.scope !62, !noalias !65
  %i.aut = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i140, i64 40
  %i.auu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i141, i64 40
  %i.auv = load ptr, ptr %i.auu, align 8, !alias.scope !65, !noalias !62
  store ptr %i.auv, ptr %i.aut, align 8, !alias.scope !62, !noalias !65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aur, i8 0, i64 24, i1 false), !alias.scope !65, !noalias !62
  %i.auw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i140, i64 48
  %i.aux = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i141, i64 48
  %i.auy = load i8, ptr %i.aux, align 8, !range !60, !alias.scope !65, !noalias !62, !noundef !61
  store i8 %i.auy, ptr %i.auw, align 8, !alias.scope !62, !noalias !65
  %i.auz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i141, i64 56 ; 2 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i140, i64 56 ; 2 uses
  %.not.i.i.i.i142 = icmp eq ptr %i.auz, %i.asl
  br i1 %.not.i.i.i.i142, label %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i139, !llvm.loop !68

_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i: ; preds = %.lr.ph.i.i.i.i139, %_ZSt12construct_atIN2v88internal16CoverageFunctionEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i136
  %.0.lcssa.i.i.i.i = phi ptr [ %i.atv, %_ZSt12construct_atIN2v88internal16CoverageFunctionEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i136 ], [ %i.ava, %.lr.ph.i.i.i.i139 ]
  %i.avb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 56
  %.not.i23.i = icmp eq ptr %i.atk, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.gk

bb.gk:                                            ; preds = %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i
  %i.avc = load ptr, ptr %i.te, align 8
  %i.avd = ptrtoint ptr %i.avc to i64
  %i.ave = sub i64 %i.avd, %i.atm
  call void @_ZdlPvm(ptr noundef nonnull %i.atk, i64 noundef %i.ave) #23
  br label %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, %bb.gk
  store ptr %i.atv, ptr %i.ro, align 8
  store ptr %i.avb, ptr %i.td, align 8
  %i.avf = getelementptr inbounds nuw [56 x i8], ptr %i.atv, i64 %i.att
  store ptr %i.avf, ptr %i.te, align 8
  br label %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit

_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit: ; preds = %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, %_ZSt12construct_atIN2v88internal16CoverageFunctionEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i, %bb.fw
  %.sroa.18.1 = phi ptr [ %.sroa.18.0275, %bb.fw ], [ %.sroa.18.2, %_ZSt12construct_atIN2v88internal16CoverageFunctionEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i ], [ %.sroa.18.2, %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit ] ; 2 uses
  %.sroa.8.2 = phi ptr [ %.sroa.8.1, %bb.fw ], [ %.sroa.8.3, %_ZSt12construct_atIN2v88internal16CoverageFunctionEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i ], [ %.sroa.8.3, %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit ]
  %.sroa.0155.1 = phi ptr [ %.sroa.0155.0277, %bb.fw ], [ %.sroa.0155.2, %_ZSt12construct_atIN2v88internal16CoverageFunctionEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i ], [ %.sroa.0155.2, %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit ] ; 2 uses
  %i.avg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 249), align 1, !range !60, !noundef !61
  %i.avh = trunc nuw i8 %i.avg to i1
  br i1 %i.avh, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit
  %i.avi = load i64, ptr %.sroa.022.0.copyload, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.avj = load ptr, ptr %i.nd, align 8
  %i.avk = load i64, ptr %i.avj, align 8
  %i.avl = add i64 %i.avk, -1
  %i.avm = inttoptr i64 %i.avl to ptr
  call void @_ZN2v88internal6String9ToCStringEPm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.979") align 8 %5, ptr noundef nonnull align 4 dereferenceable(16) %i.avm, ptr noundef null) #20
  %i.avn = load ptr, ptr %5, align 8
  %i.avo = inttoptr i64 %i.avi to ptr
  %i.avp = zext i1 %spec.select.i94 to i32
  %i.avq = zext i1 %i.arm to i32
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.8, ptr noundef %i.avn, ptr noundef %i.avo, i32 noundef %i.avp, i32 noundef %i.avq) #20
  %i.avr = load i32, ptr %31, align 8
  %i.avs = load i32, ptr %i.nb, align 4
  %i.avt = load i32, ptr %i.nc, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.9, i32 noundef %i.avr, i32 noundef %i.avs, i32 noundef %i.avt) #20
  %i.avu = load ptr, ptr %i.ne, align 8           ; 2 uses
  %i.avv = load ptr, ptr %i.ng, align 8           ; 2 uses
  %i.avw = icmp eq ptr %i.avu, %i.avv
  br i1 %i.avw, label %._crit_edge.i104, label %.lr.ph.i103

._crit_edge.i104:                                 ; preds = %.lr.ph.i103, %bb.gl
  %i.avx = load ptr, ptr %5, align 8              ; 2 uses
  %.not.i.i105 = icmp eq ptr %i.avx, null
  br i1 %.not.i.i105, label %_ZN2v88internal12_GLOBAL__N_118PrintBlockCoverageEPKNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEEbb.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %._crit_edge.i104
  call void @_ZdaPv(ptr noundef nonnull %i.avx) #23
  br label %_ZN2v88internal12_GLOBAL__N_118PrintBlockCoverageEPKNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEEbb.exit

.lr.ph.i103:                                      ; preds = %bb.gl, %.lr.ph.i103
  %.sroa.011.017.i = phi ptr [ %i.awd, %.lr.ph.i103 ], [ %i.avu, %bb.gl ] ; 4 uses
  %i.avy = load i32, ptr %.sroa.011.017.i, align 4
  %i.avz = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i, i64 4
  %i.awa = load i32, ptr %i.avz, align 4
  %i.awb = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i, i64 8
  %i.awc = load i32, ptr %i.awb, align 4
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.9, i32 noundef %i.avy, i32 noundef %i.awa, i32 noundef %i.awc) #20
  %i.awd = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i, i64 12 ; 2 uses
  %i.awe = icmp eq ptr %i.awd, %i.avv
  br i1 %i.awe, label %._crit_edge.i104, label %.lr.ph.i103

_ZN2v88internal12_GLOBAL__N_118PrintBlockCoverageEPKNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEEbb.exit: ; preds = %._crit_edge.i104, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.gm

bb.gm:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_118PrintBlockCoverageEPKNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEEbb.exit, %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit
  %i.awf = load ptr, ptr %i.ne, align 8           ; 3 uses
  %.not.i.i.i.i106 = icmp eq ptr %i.awf, null
  br i1 %.not.i.i.i.i106, label %_ZN2v88internal16CoverageFunctionD2Ev.exit, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.awg = load ptr, ptr %i.nh, align 8
  %i.awh = ptrtoint ptr %i.awg to i64
  %i.awi = ptrtoint ptr %i.awf to i64
  %i.awj = sub i64 %i.awh, %i.awi
  call void @_ZdlPvm(ptr noundef nonnull %i.awf, i64 noundef %i.awj) #23
  br label %_ZN2v88internal16CoverageFunctionD2Ev.exit

_ZN2v88internal16CoverageFunctionD2Ev.exit:       ; preds = %bb.gm, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  %i.awk = getelementptr inbounds nuw i8, ptr %.sroa.0154.0274, i64 24
  %i.awl = icmp eq ptr %.sroa.0154.0274, %.0.lcssa.i.i.i.i.i.pn
  br i1 %i.awl, label %._crit_edge279.loopexit, label %bb.bj

bb.go:                                            ; preds = %._crit_edge279
  %i.awm = load ptr, ptr %0, align 8
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 8 ; 2 uses
  %i.awo = load ptr, ptr %i.awn, align 8          ; 4 uses
  %i.awp = getelementptr inbounds i8, ptr %i.awo, i64 -32
  store ptr %i.awp, ptr %i.awn, align 8
  %i.awq = getelementptr inbounds i8, ptr %i.awo, i64 -24 ; 2 uses
  %i.awr = load ptr, ptr %i.awq, align 8          ; 3 uses
  %i.aws = getelementptr inbounds i8, ptr %i.awo, i64 -16
  %i.awt = load ptr, ptr %i.aws, align 8          ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.awr, %i.awt
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i107

.lr.ph.i.i.i.i.i.i107:                            ; preds = %bb.go, %_ZSt8_DestroyIN2v88internal16CoverageFunctionEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.axb, %_ZSt8_DestroyIN2v88internal16CoverageFunctionEEvPT_.exit.i.i.i.i.i.i ], [ %i.awr, %bb.go ] ; 3 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24
  %i.awv = load ptr, ptr %i.awu, align 8          ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.awv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2v88internal16CoverageFunctionEEvPT_.exit.i.i.i.i.i.i, label %bb.gp

bb.gp:                                            ; preds = %.lr.ph.i.i.i.i.i.i107
  %i.aww = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40
  %i.awx = load ptr, ptr %i.aww, align 8
  %i.awy = ptrtoint ptr %i.awx to i64
  %i.awz = ptrtoint ptr %i.awv to i64
  %i.axa = sub i64 %i.awy, %i.awz
  call void @_ZdlPvm(ptr noundef nonnull %i.awv, i64 noundef %i.axa) #23
  br label %_ZSt8_DestroyIN2v88internal16CoverageFunctionEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN2v88internal16CoverageFunctionEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.gp, %.lr.ph.i.i.i.i.i.i107
  %i.axb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i108 = icmp eq ptr %i.axb, %i.awt
  br i1 %.not.i.i.i.i.i.i108, label %_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i107, !llvm.loop !69

_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN2v88internal16CoverageFunctionEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.awq, align 8
  br label %_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exit.i.i.i.i

_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exitthread-pre-split.i.i.i.i, %bb.go
  %i.axc = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exitthread-pre-split.i.i.i.i ], [ %i.awr, %bb.go ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.axc, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit, label %bb.gq

bb.gq:                                            ; preds = %_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exit.i.i.i.i
  %i.axd = getelementptr inbounds i8, ptr %i.awo, i64 -8
  %i.axe = load ptr, ptr %i.axd, align 8
  %i.axf = ptrtoint ptr %i.axe to i64
  %i.axg = ptrtoint ptr %i.axc to i64
  %i.axh = sub i64 %i.axf, %i.axg
  call void @_ZdlPvm(ptr noundef nonnull %i.axc, i64 noundef %i.axh) #23
  br label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit

_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit: ; preds = %bb.gq, %_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exit.i.i.i.i, %._crit_edge279
  %.not.i.i.i109 = icmp eq ptr %.sroa.0155.0.lcssa, null
  br i1 %.not.i.i.i109, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.gr

bb.gr:                                            ; preds = %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit
  %i.axi = ptrtoint ptr %.sroa.0155.0.lcssa to i64
  %i.axj = sub i64 %.sroa.18.0.lcssa, %i.axi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0155.0.lcssa, i64 noundef %i.axj) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit, %bb.gr
  %.not.i.i.i110 = icmp eq ptr %.sroa.0171.0.lcssa451455, null
  br i1 %.not.i.i.i110, label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESaIS3_EED2Ev.exit, label %bb.gs

bb.gs:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.axk = ptrtoint ptr %.sroa.0171.0.lcssa451455 to i64
  %i.axl = sub i64 %.sroa.14.0.lcssa449456, %i.axk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0171.0.lcssa451455, i64 noundef %i.axl) #23
  br label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESaIS3_EED2Ev.exit

_ZNSt6vectorIN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  %i.axm = getelementptr inbounds nuw i8, ptr %.sroa.0176.0282, i64 8 ; 2 uses
  %i.axn = icmp eq ptr %i.axm, %.sroa.7.1
  br i1 %i.axn, label %._crit_edge284, label %bb.an
}

declare void @_ZN2v88internal7Isolate35SetFeedbackVectorsForProfilingToolsENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320), i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Coverage17CollectBestEffortEPNS0_7IsolateE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal8Coverage7CollectEPNS0_7IsolateENS_5debug12CoverageModeE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %1, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Coverage15CollectWasmDataEPNS0_7IsolateE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::_Sp_locker", align 1  ; 6 uses
  %3 = alloca %"class.std::vector.456", align 8   ; 11 uses
  %4 = alloca %"class.v8::internal::Script::Iterator", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::Handle", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::wasm::StringBuilder", align 8 ; 13 uses
  %7 = alloca %"class.v8::internal::wasm::NamesProvider", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2v88internal6Script8IteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %1) #20
  %i.d = call i64 @_ZN2v88internal6Script8Iterator4NextEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #20 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 280 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 288 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 296
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 304 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 264
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 272
  br label %bb.b

._crit_edge127.loopexit:                          ; preds = %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit
  %.pre145 = load ptr, ptr %0, align 8
  br label %._crit_edge127

._crit_edge127:                                   ; preds = %._crit_edge127.loopexit, %bb.a
  %i.r = phi ptr [ %.pre145, %._crit_edge127.loopexit ], [ %i.c, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %._crit_edge138, label %.lr.ph137

bb.b:                                             ; preds = %.lr.ph126, %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit
  %storemerge124 = phi i64 [ %i.d, %.lr.ph126 ], [ %i.jf, %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit ] ; 3 uses
  %i.w = add i64 %storemerge124, 47
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i64, ptr %i.x, align 8
  %.mask = and i64 %i.y, -4294967296
  %.not = icmp eq i64 %.mask, 12884901888
  br i1 %.not, label %bb.c, label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.aa = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.ad = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #20
  br label %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.ad, %bb.d ], [ %i.aa, %bb.c ] ; 4 uses
  %i.ae = ptrtoint ptr %.0.i.i to i64
  %i.af = add i64 %i.ae, 8
  %i.ag = inttoptr i64 %i.af to ptr
  store ptr %i.ag, ptr %i.f, align 8
  store i64 %storemerge124, ptr %.0.i.i, align 8
  store ptr %.0.i.i, ptr %5, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  store ptr %.0.i.i, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.am = load ptr, ptr %i.ah, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  store ptr %i.an, ptr %i.ah, align 8
  br label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12emplace_backIJNS1_6HandleINS1_6ScriptEEEEEERS2_DpOT_.exit

bb.f:                                             ; preds = %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call void @_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE17_M_realloc_insertIJNS1_6HandleINS1_6ScriptEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.pre = load ptr, ptr %i.ah, align 8
  br label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12emplace_backIJNS1_6HandleINS1_6ScriptEEEEEERS2_DpOT_.exit

_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12emplace_backIJNS1_6HandleINS1_6ScriptEEEEEERS2_DpOT_.exit: ; preds = %bb.e, %bb.f
  %i.ao = phi ptr [ %i.an, %bb.e ], [ %.pre, %bb.f ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -24 ; 3 uses
  %i.aq = add i64 %storemerge124, 79
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = add i64 %i.as, 7
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.ay, align 8            ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 216
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 528
  %i.bd = load ptr, ptr %i.bc, align 8            ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph123, label %._crit_edge

.lr.ph123:                                        ; preds = %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12emplace_backIJNS1_6HandleINS1_6ScriptEEEEEERS2_DpOT_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 84
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 240 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 248
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bm = getelementptr inbounds i8, ptr %i.ao, i64 -16 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 3 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN2v88internal4wasm13StringBuilderD2Ev.exit, %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12emplace_backIJNS1_6HandleINS1_6ScriptEEEEEERS2_DpOT_.exit
  %i.bo = load ptr, ptr %i.ap, align 8
  %i.bp = getelementptr inbounds i8, ptr %i.ao, i64 -16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %bb.av, label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit

bb.g:                                             ; preds = %.lr.ph123, %_ZN2v88internal4wasm13StringBuilderD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph123 ], [ %indvars.iv.next, %_ZN2v88internal4wasm13StringBuilderD2Ev.exit ] ; 3 uses
  %i.bs = load i32, ptr %i.bi, align 4
  %i.bt = trunc nuw nsw i64 %indvars.iv to i32
  %i.bu = add i32 %i.bs, %i.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store ptr %6, ptr %i.i, align 8
  store ptr %6, ptr %i.j, align 8
  store i64 256, ptr %i.k, align 8
  store i8 1, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !70
  call void @_ZNSt10_Sp_lockerC1EPKv(ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull %i.bj) #20, !noalias !70
  %i.bv = load ptr, ptr %i.bj, align 8, !noalias !70 ; 4 uses
  %i.bw = load ptr, ptr %i.bk, align 8, !noalias !70 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 7 uses
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !noalias !70
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = load i32, ptr %i.bx, align 4, !noalias !70
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bx, align 4, !noalias !70
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cb = atomicrmw volatile add ptr %i.bx, i32 1 acq_rel, align 4, !noalias !70 ; 0 uses
  br label %bb.k

_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit.i: ; preds = %bb.g
  call void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2) %2) #20, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !70
  %i.cc = load ptr, ptr %i.bv, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ce = load i64, ptr %i.cd, align 8
  br label %_ZNK2v88internal4wasm12NativeModule10wire_bytesEv.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2) %2) #20, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !70
  %i.cf = load ptr, ptr %i.bv, align 8            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ch = load i64, ptr %i.cg, align 8            ; 3 uses
  %i.ci = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 4294967297
  %i.ck = trunc i64 %i.ci to i32                  ; 2 uses
  br i1 %i.cj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bx, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.cl, align 4
  %i.cm = load ptr, ptr %i.bw, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #20, !inline_history !75
end_hunk_1
begin_hunk_2_@_ZN2v88internal8Coverage10SelectModeEPNS0_7IsolateENS_5debug12CoverageModeE:bb.a
  %i.dw = icmp eq ptr %i.dv, %.sroa.7.2
  br i1 %i.dw, label %._crit_edge126, label %bb.v

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %_ZNSt6vectorIN2v88internal6HandleINS1_10JSFunctionEEESaIS4_EED2Ev.exit, %bb.u, %bb.d, %bb.c
  store atomic i32 %1, ptr %i.a monotonic, align 4
  ret void
}

declare void @_ZN2v88internal7Isolate42CollectSourcePositionsForAllBytecodeArraysEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #1

declare void @_ZN2v88internal5Debug22RemoveAllCoverageInfosEv(ptr noundef nonnull align 8 dereferenceable(256)) local_unnamed_addr #1

declare void @_ZN2v88internal11Deoptimizer13DeoptimizeAllEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #1

declare void @_ZN2v88internal18HeapObjectIteratorC1EPNS0_4HeapENS1_20HeapObjectsFilteringE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef) unnamed_addr #1

declare i64 @_ZN2v88internal18HeapObjectIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v88internal18HeapObjectIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #5

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #6

declare void @_ZN2v88internal10JSFunction20EnsureFeedbackVectorEPNS0_7IsolateENS0_12DirectHandleIS1_EEPNS0_15IsCompiledScopeE(ptr noundef, ptr, ptr noundef) local_unnamed_addr #1

declare void @_ZN2v88internal7Isolate33MaybeInitializeVectorListFromHeapEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE17_M_realloc_insertIJNS1_6HandleINS1_6ScriptEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
  unreachable

_ZNKSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.s = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !106, !noalias !103
  store i64 %i.s, ptr %.012.i.i.i, align 8, !alias.scope !103, !noalias !106
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !alias.scope !106, !noalias !103
  store <2 x ptr> %i.v, ptr %i.t, align 8, !alias.scope !103, !noalias !106
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !106, !noalias !103
  store ptr %i.y, ptr %i.w, align 8, !alias.scope !103, !noalias !106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false), !alias.scope !106, !noalias !103
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !108

_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ak, %.lr.ph.i.i.i17 ], [ %i.ab, %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i19 = phi ptr [ %i.aj, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.ac = load i64, ptr %.0911.i.i.i19, align 8, !alias.scope !112, !noalias !109
  store i64 %i.ac, ptr %.012.i.i.i18, align 8, !alias.scope !109, !noalias !112
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !alias.scope !112, !noalias !109
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !alias.scope !109, !noalias !112
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !112, !noalias !109
  store ptr %i.ai, ptr %i.ag, align 8, !alias.scope !109, !noalias !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false), !alias.scope !112, !noalias !109
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !108

_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ak, %.lr.ph.i.i.i17 ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN2v88internal14CoverageScriptESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ao) #23
  br label %_ZNSt12_Vector_baseIN2v88internal14CoverageScriptESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2v88internal14CoverageScriptESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ap, ptr %i.al, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt10_Sp_lockerC1EPKv(ptr noundef nonnull align 1 dereferenceable(2), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !114
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %4 = ashr exact i64 %i.f, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %4, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i, %4        ; 2 uses
  %6 = icmp ult i64 %5, %4
  %7 = tail call i64 @llvm.umin.i64(i64 %5, i64 288230376151711743)
  %8 = select i1 %6, i64 288230376151711743, i64 %7 ; 3 uses
  %9 = ptrtoint ptr %1 to i64
  %10 = sub i64 %9, %i.e
  %.not.i = icmp eq i64 %8, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %11

11:                                               ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %12 = shl nuw nsw i64 %8, 5
  %13 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %11
  %14 = phi ptr [ %13, %11 ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 %10 ; 4 uses
  %i.i = load ptr, ptr %2, align 8                ; 3 uses
  %i.j = load i64, ptr %3, align 8                ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.k, ptr %i.h, align 8
  %i.l = icmp eq ptr %i.i, null
  %i.m = icmp ne i64 %i.j, 0
  %or.cond.i.i = and i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #21
  unreachable

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.n = icmp ugt i64 %i.j, 15
  br i1 %i.n, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = icmp slt i64 %i.j, 0
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = add nuw i64 %i.j, 1                      ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !12

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.g
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #22 ; 2 uses
  store ptr %i.r, ptr %i.h, align 8
  store i64 %i.j, ptr %i.k, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.d
  %i.s = phi ptr [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.k, %bb.d ] ; 3 uses
  switch i64 %i.j, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %i.i, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.i, i64 %i.j, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit: ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.j, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.j
  store i8 0, ptr %i.v, align 1
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %14, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !alias.scope !115, !noalias !118
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !118, !noalias !115 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !118, !noalias !115 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !120
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !alias.scope !115, !noalias !118
  %i.ae = load i64, ptr %i.y, align 8, !alias.scope !118, !noalias !115
  store i64 %i.ae, ptr %i.w, align 8, !alias.scope !115, !noalias !118
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !118, !noalias !115
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.k
  %i.af = phi i64 [ %i.ab, %bb.k ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !alias.scope !115, !noalias !118
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !alias.scope !118, !noalias !115
  store i64 0, ptr %i.ag, align 8, !alias.scope !118, !noalias !115
  store i8 0, ptr %i.y, align 8, !alias.scope !118, !noalias !115
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !121

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit
  %.0.lcssa.i.i.i = phi ptr [ %14, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24
  %.012.i.i.i19 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i20 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i19, align 8, !alias.scope !122, !noalias !125
  %i.am = load ptr, ptr %.0911.i.i.i20, align 8, !alias.scope !125, !noalias !122 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i21

bb.l:                                             ; preds = %.lr.ph.i.i.i18
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !125, !noalias !122 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !127
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i21: ; preds = %.lr.ph.i.i.i18
  store ptr %i.am, ptr %.012.i.i.i19, align 8, !alias.scope !122, !noalias !125
  %i.at = load i64, ptr %i.an, align 8, !alias.scope !125, !noalias !122
  store i64 %i.at, ptr %i.al, align 8, !alias.scope !122, !noalias !125
  %.phi.trans.insert.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %.pre.i.i.i.i23 = load i64, ptr %.phi.trans.insert.i.i.i.i22, align 8, !alias.scope !125, !noalias !122
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i21, %bb.l
  %i.au = phi i64 [ %i.aq, %bb.l ], [ %.pre.i.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i21 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !alias.scope !122, !noalias !125
  store ptr %i.an, ptr %.0911.i.i.i20, align 8, !alias.scope !125, !noalias !122
  store i64 0, ptr %i.av, align 8, !alias.scope !125, !noalias !122
  store i8 0, ptr %i.an, align 8, !alias.scope !125, !noalias !122
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 32 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i25, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27, label %.lr.ph.i.i.i18, !llvm.loop !121

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i26 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i24 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  br i1 %.not.i28, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27, %bb.m
  store ptr %14, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i26, ptr %i.a, align 8
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %14, i64 %8
  store ptr %i.bd, ptr %i.az, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKhEEb(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef i32 @_ZN2v88internal14TieringManager18InterruptBudgetForEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEESt8optionalINS0_8CodeKindEE(ptr noundef, i64, i16) local_unnamed_addr #1

declare void @_ZN2v88internal28JavaScriptStackFrameIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE6ResizeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = shl i32 %i.c, 1                          ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 4
  %calloc.i = tail call ptr @calloc(i64 1, i64 %i.h) ; 2 uses
  store ptr %calloc.i, ptr %0, align 8
  %i.i = icmp eq ptr %calloc.i, null
  br i1 %i.i, label %bb.b, label %_ZN2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE10InitializeEj.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #21
  unreachable

_ZN2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE10InitializeEj.exit: ; preds = %bb.a
  store i32 %i.f, ptr %i.b, align 8
  store i32 0, ptr %i.d, align 4
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %_ZN2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE10InitializeEj.exit
  tail call void @free(ptr noundef %i.a) #20
  ret void

.lr.ph:                                           ; preds = %_ZN2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE10InitializeEj.exit, %bb.g
  %i.j = phi i32 [ %i.ar, %bb.g ], [ %i.f, %_ZN2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE10InitializeEj.exit ] ; 2 uses
  %.018 = phi i32 [ %.1, %bb.g ], [ %i.e, %_ZN2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE10InitializeEj.exit ] ; 2 uses
  %.01316 = phi ptr [ %i.as, %bb.g ], [ %i.a, %_ZN2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE10InitializeEj.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01316, i64 12
  %i.l = load i32, ptr %i.k, align 4              ; 3 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %i.n = and i32 %i.l, 2147483647
  %i.o = add i32 %i.j, -1                         ; 2 uses
  %i.p = and i32 %i.o, %i.n
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = load ptr, ptr %0, align 8                ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp slt i32 %i.u, 0
  %.sroa.0.0.copyload.i14.pre = load i64, ptr %.01316, align 8 ; 2 uses
  br i1 %i.v, label %.lr.ph.i, label %_ZNK2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_jEERKT_j.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.w = zext i32 %i.o to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %i.x = phi ptr [ %i.s, %.lr.ph.i ], [ %i.ab, %bb.e ] ; 2 uses
  %.017.i = phi i64 [ %i.q, %.lr.ph.i ], [ %i.aa, %bb.e ]
  %.sroa.0.0.copyload.i = load i64, ptr %i.x, align 8
  %i.y = icmp eq i64 %.sroa.0.0.copyload.i14.pre, %.sroa.0.0.copyload.i
  br i1 %i.y, label %_ZNK2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_jEERKT_j.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = add nsw i64 %.017.i, 1
  %i.aa = and i64 %i.z, %i.w                      ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %_ZNK2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_jEERKT_j.exit, !llvm.loop !5

_ZNK2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_jEERKT_j.exit: ; preds = %bb.d, %bb.e, %bb.c
  %.lcssa.i = phi ptr [ %i.s, %bb.c ], [ %i.x, %bb.d ], [ %i.ab, %bb.e ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01316, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  store i64 %.sroa.0.0.copyload.i14.pre, ptr %.lcssa.i, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  store i32 %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 12
  store i32 %i.l, ptr %i.ai, align 4
  %i.aj = load i32, ptr %i.d, align 4
  %i.ak = add i32 %i.aj, 1                        ; 3 uses
  store i32 %i.ak, ptr %i.d, align 4
  %i.al = lshr i32 %i.ak, 2
  %i.am = add i32 %i.al, %i.ak
  %i.an = load i32, ptr %i.b, align 8             ; 2 uses
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_jEERKS5_RKjj.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_jEERKT_j.exit
  tail call void @_ZN2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE6ResizeEv(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !7
  %i.ao = load i32, ptr %i.b, align 8
  br label %_ZN2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_jEERKS5_RKjj.exit

_ZN2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_jEERKS5_RKjj.exit: ; preds = %bb.f, %_ZNK2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_jEERKT_j.exit
  %i.ap = phi i32 [ %i.an, %_ZNK2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_jEERKT_j.exit ], [ %i.ao, %bb.f ]
  %i.aq = add i32 %.018, -1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_jEERKS5_RKjj.exit
  %i.ar = phi i32 [ %i.ap, %_ZN2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_jEERKS5_RKjj.exit ], [ %i.j, %.lr.ph ]
  %.1 = phi i32 [ %i.aq, %_ZN2v84base19TemplateHashMapImplINS_8internal6TaggedINS2_18SharedFunctionInfoEEEjNS0_18KeyEqualityMatcherINS3_INS2_6ObjectEEEEENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_jEERKS5_RKjj.exit ], [ %.018, %.lr.ph ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01316, i64 16
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !128
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare void @_ZN2v88internal18StackFrameIteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE17_M_realloc_insertIJRNS1_6HandleINS1_6ScriptEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
  unreachable

_ZNKSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.s = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !132, !noalias !129
  store i64 %i.s, ptr %.012.i.i.i, align 8, !alias.scope !129, !noalias !132
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !alias.scope !132, !noalias !129
  store <2 x ptr> %i.v, ptr %i.t, align 8, !alias.scope !129, !noalias !132
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !132, !noalias !129
  store ptr %i.y, ptr %i.w, align 8, !alias.scope !129, !noalias !132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false), !alias.scope !132, !noalias !129
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !108

_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

end_hunk_2
begin_hunk_3_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_:bb.a
  %.not12.i.i43.i.i = icmp eq i32 %i.eb, %i.ed
  br i1 %.not12.i.i43.i.i, label %bb.ah, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit45.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ee = load ptr, ptr %i.aa, align 8
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = add i64 %i.ef, 55
  %i.eh = inttoptr i64 %i.eg to ptr               ; 2 uses
  %i.ei = load atomic volatile i32, ptr %i.eh monotonic, align 4
  %i.ej = load ptr, ptr %i.ab, align 8
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = add i64 %i.ek, 55
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = load atomic volatile i32, ptr %i.em monotonic, align 4
  %i.eo = xor i32 %i.en, %i.ei
  %i.ep = and i32 %i.eo, 134217728
  %.not28.i.i44.i.i = icmp eq i32 %i.ep, 0
  br i1 %.not28.i.i44.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eq = load atomic volatile i32, ptr %i.eh monotonic, align 4
  %i.er = and i32 %i.eq, 134217728
  %.not47.i.i = icmp eq i32 %i.er, 0
  br i1 %.not47.i.i, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.es = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = getelementptr inbounds i8, ptr %storemerge1756, i64 -16
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = icmp ugt i32 %i.et, %i.ev
  br i1 %i.ew, label %bb.ak, label %bb.al

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit45.i.i: ; preds = %bb.ag
  %i.ex = icmp sgt i32 %i.eb, %i.ed
  br i1 %i.ex, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit45.i.i, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.ab, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ab, ptr noundef nonnull align 8 dereferenceable(20) %5, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.al:                                            ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit45.i.i, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.aa, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aa, ptr noundef nonnull align 8 dereferenceable(20) %4, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader: ; preds = %bb.al, %bb.ak, %bb.ad, %bb.w, %bb.v, %bb.o
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader, %bb.ba
  %.sroa.017.0.i.i = phi ptr [ %i.gy, %bb.ba ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.ba ], [ %storemerge1756, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %i.ey = load i32, ptr %i.i, align 4             ; 4 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.as, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i
  %.sroa.017.1.i.i = phi ptr [ %.sroa.017.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i ], [ %i.fy, %bb.as ] ; 13 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i.i, i64 12
  %i.fa = load i32, ptr %i.ez, align 4            ; 2 uses
  %.not.i.i.i14.i = icmp eq i32 %i.fa, %i.ey
  br i1 %.not.i.i.i14.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = icmp slt i32 %i.fa, %i.ey
  br i1 %i.fb, label %bb.as, label %.preheader

.preheader:                                       ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i16.i, %bb.ar, %bb.aq, %bb.an
  br label %bb.at

bb.ao:                                            ; preds = %bb.am
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i.i, i64 16
  %i.fd = load i32, ptr %i.fc, align 8            ; 2 uses
  %i.fe = load i32, ptr %i.j, align 8             ; 2 uses
  %.not12.i.i.i15.i = icmp eq i32 %i.fd, %i.fe
  br i1 %.not12.i.i.i15.i, label %bb.ap, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i16.i

bb.ap:                                            ; preds = %bb.ao
  %i.ff = load ptr, ptr %.sroa.017.1.i.i, align 8
  %i.fg = load i64, ptr %i.ff, align 8
  %i.fh = add i64 %i.fg, 55
  %i.fi = inttoptr i64 %i.fh to ptr               ; 2 uses
  %i.fj = load atomic volatile i32, ptr %i.fi monotonic, align 4
  %i.fk = load ptr, ptr %0, align 8
  %i.fl = load i64, ptr %i.fk, align 8
  %i.fm = add i64 %i.fl, 55
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = load atomic volatile i32, ptr %i.fn monotonic, align 4
  %i.fp = xor i32 %i.fo, %i.fj
  %i.fq = and i32 %i.fp, 134217728
  %.not28.i.i.i17.i = icmp eq i32 %i.fq, 0
  br i1 %.not28.i.i.i17.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fr = load atomic volatile i32, ptr %i.fi monotonic, align 4
  %i.fs = and i32 %i.fr, 134217728
  %.not.i18.i = icmp eq i32 %i.fs, 0
  br i1 %.not.i18.i, label %.preheader, label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i.i, i64 8
  %i.fu = load i32, ptr %i.ft, align 8
  %i.fv = load i32, ptr %i.k, align 8
  %i.fw = icmp ugt i32 %i.fu, %i.fv
  br i1 %i.fw, label %bb.as, label %.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i16.i: ; preds = %bb.ao
  %i.fx = icmp sgt i32 %i.fd, %i.fe
  br i1 %i.fx, label %bb.as, label %.preheader

bb.as:                                            ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i16.i, %bb.ar, %bb.aq, %bb.an
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i.i, i64 24
  br label %bb.am, !llvm.loop !142

bb.at:                                            ; preds = %.backedge, %.preheader
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %.preheader ], [ %.sroa.0.1.i.i, %.backedge ] ; 4 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 6 uses
  %i.fz = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -12
  %i.ga = load i32, ptr %i.fz, align 4            ; 2 uses
  %.not.i.i11.i.i = icmp eq i32 %i.ey, %i.ga
  br i1 %.not.i.i11.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gb = icmp slt i32 %i.ey, %i.ga
  br i1 %i.gb, label %.backedge, label %bb.az

bb.av:                                            ; preds = %bb.at
  %i.gc = load i32, ptr %i.j, align 8             ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.ge = load i32, ptr %i.gd, align 8            ; 2 uses
  %.not12.i.i13.i.i = icmp eq i32 %i.gc, %i.ge
  br i1 %.not12.i.i13.i.i, label %bb.aw, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit15.i.i

bb.aw:                                            ; preds = %bb.av
  %i.gf = load ptr, ptr %0, align 8
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = add i64 %i.gg, 55
  %i.gi = inttoptr i64 %i.gh to ptr               ; 2 uses
  %i.gj = load atomic volatile i32, ptr %i.gi monotonic, align 4
  %i.gk = load ptr, ptr %.sroa.0.1.i.i, align 8
  %i.gl = load i64, ptr %i.gk, align 8
  %i.gm = add i64 %i.gl, 55
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = load atomic volatile i32, ptr %i.gn monotonic, align 4
  %i.gp = xor i32 %i.go, %i.gj
  %i.gq = and i32 %i.gp, 134217728
  %.not28.i.i14.i.i = icmp eq i32 %i.gq, 0
  br i1 %.not28.i.i14.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gr = load atomic volatile i32, ptr %i.gi monotonic, align 4
  %i.gs = and i32 %i.gr, 134217728
  %.not19.i.i = icmp eq i32 %i.gs, 0
  br i1 %.not19.i.i, label %bb.az, label %.backedge

bb.ay:                                            ; preds = %bb.aw
  %i.gt = load i32, ptr %i.k, align 8
  %i.gu = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %i.gv = load i32, ptr %i.gu, align 8
  %i.gw = icmp ugt i32 %i.gt, %i.gv
  br i1 %i.gw, label %.backedge, label %bb.az

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit15.i.i: ; preds = %bb.av
  %i.gx = icmp sgt i32 %i.gc, %i.ge
  br i1 %i.gx, label %.backedge, label %bb.az

.backedge:                                        ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit15.i.i, %bb.ay, %bb.ax, %bb.au
  br label %bb.at, !llvm.loop !143

bb.az:                                            ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit15.i.i, %bb.ay, %bb.ax, %bb.au
  %.not20.i.i = icmp ult ptr %.sroa.017.1.i.i, %.sroa.0.1.i.i
  br i1 %.not20.i.i, label %bb.ba, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.017.1.i.i, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.017.1.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.1.i.i, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i.i, i64 24
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i, !llvm.loop !144

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit: ; preds = %bb.az
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %.sroa.017.1.i.i, ptr %storemerge1756, i64 noundef %i.y)
  %i.gz = ptrtoint ptr %.sroa.017.1.i.i to i64
  %i.ha = sub i64 %i.gz, %i.a                     ; 3 uses
  %i.hb = icmp sgt i64 %i.ha, 384
  br i1 %i.hb, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, !llvm.loop !139

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit, %.lr.ph.i8.i, %bb.a
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr captures(none) %0, i64 noundef %1, i64 noundef range(i64 -384307168202282325, 384307168202282326) %2, ptr noundef readonly byval(%"struct.v8::internal::(anonymous namespace)::SharedFunctionInfoAndCount") align 8 captures(none) %3) unnamed_addr #12 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %.048 = phi i64 [ %spec.select, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.048, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, %i.l
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = icmp slt i32 %i.j, %i.l
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %.not12.i.i = icmp eq i32 %i.o, %i.q
  br i1 %.not12.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp sgt i32 %i.o, %i.q
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.f, align 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, 55
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = load atomic volatile i32, ptr %i.v monotonic, align 4
  %i.x = load ptr, ptr %i.h, align 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %i.y, 55
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i32, ptr %i.aa monotonic, align 4
  %i.ac = xor i32 %i.ab, %i.w
  %i.ad = and i32 %i.ac, 134217728
  %.not28.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not28.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load atomic volatile i32, ptr %i.v monotonic, align 4
  %i.af = and i32 %i.ae, 134217728
  %i.ag = icmp ne i32 %i.af, 0
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = icmp ugt i32 %i.ai, %i.ak
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.0.i.i = phi i1 [ %i.m, %bb.b ], [ %i.r, %bb.d ], [ %i.ag, %bb.f ], [ %i.al, %bb.g ]
  %spec.select = select i1 %.0.i.i, i64 %i.g, i64 %i.e ; 4 uses
  %i.am = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select
  %i.an = getelementptr inbounds [24 x i8], ptr %0, i64 %.048
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.an, ptr noundef nonnull align 8 dereferenceable(20) %i.am, i64 20, i1 false)
  %i.ao = icmp slt i64 %spec.select, %i.b
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !145

._crit_edge:                                      ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit ] ; 5 uses
  %i.ap = and i64 %2, 1
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.h, label %bb.j

bb.h:                                             ; preds = %._crit_edge
  %i.ar = add nsw i64 %2, -2
  %i.as = ashr exact i64 %i.ar, 1
  %i.at = icmp eq i64 %.0.lcssa, %i.as
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = shl nsw i64 %.0.lcssa, 1
  %i.av = or disjoint i64 %i.au, 1                ; 2 uses
  %i.aw = getelementptr inbounds [24 x i8], ptr %0, i64 %i.av
  %i.ax = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ax, ptr noundef nonnull align 8 dereferenceable(20) %i.aw, i64 20, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge
  %.1 = phi i64 [ %i.av, %bb.i ], [ %.0.lcssa, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.046.0.copyload = load ptr, ptr %3, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %i.ay = icmp sgt i64 %.1, %1
  br i1 %i.ay, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.j, %bb.p
  %.06.i = phi i64 [ %.097.i, %bb.p ], [ %.1, %bb.j ] ; 6 uses
  %.097.in.i = add nsw i64 %.06.i, -1
  %.097.i = sdiv i64 %.097.in.i, 2                ; 4 uses
  %i.az = getelementptr inbounds [24 x i8], ptr %0, i64 %.097.i ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bb, %.sroa.3.0.copyload
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.bc = icmp slt i32 %i.bb, %.sroa.3.0.copyload
  br i1 %i.bc, label %bb.p, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_.exit

bb.l:                                             ; preds = %.lr.ph.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.be = load i32, ptr %i.bd, align 8            ; 2 uses
  %.not12.i.i.i = icmp eq i32 %i.be, %.sroa.4.0.copyload
  br i1 %.not12.i.i.i, label %bb.m, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %i.az, align 8
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = add i64 %i.bg, 55
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %i.bj = load atomic volatile i32, ptr %i.bi monotonic, align 4
  %i.bk = load i64, ptr %.sroa.046.0.copyload, align 8
  %i.bl = add i64 %i.bk, 55
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i32, ptr %i.bm monotonic, align 4
  %i.bo = xor i32 %i.bn, %i.bj
  %i.bp = and i32 %i.bo, 134217728
  %.not28.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not28.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = load atomic volatile i32, ptr %i.bi monotonic, align 4
  %i.br = and i32 %i.bq, 134217728
  %.not.i = icmp eq i32 %i.br, 0
  br i1 %.not.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_.exit, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = icmp ugt i32 %i.bt, %.sroa.2.0.copyload
  br i1 %i.bu, label %bb.p, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i: ; preds = %bb.l
  %i.bv = icmp sgt i32 %i.be, %.sroa.4.0.copyload
  br i1 %i.bv, label %bb.p, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_.exit

bb.p:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i, %bb.o, %bb.n, %bb.k
  %i.bw = getelementptr inbounds [24 x i8], ptr %0, i64 %.06.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bw, ptr noundef nonnull align 8 dereferenceable(20) %i.az, i64 20, i1 false)
  %i.bx = icmp sgt i64 %.097.i, %1
  br i1 %i.bx, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_.exit, !llvm.loop !146

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_.exit: ; preds = %bb.k, %bb.n, %bb.o, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i, %bb.p, %bb.j
  %.0.lcssa.i = phi i64 [ %.1, %bb.j ], [ %.06.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i ], [ %.097.i, %bb.p ], [ %.06.i, %bb.k ], [ %.06.i, %bb.o ], [ %.06.i, %bb.n ]
  %i.by = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i ; 4 uses
  store ptr %.sroa.046.0.copyload, ptr %i.by, align 8
  %.sroa.5.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %.sroa.2.0.copyload, ptr %.sroa.5.0..sroa_idx40, align 8
  %.sroa.6.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 %.sroa.3.0.copyload, ptr %.sroa.6.0..sroa_idx42, align 4
  %.sroa.7.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i32 %.sroa.4.0.copyload, ptr %.sroa.7.0..sroa_idx44, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %0, ptr readnone captures(address) %1) unnamed_addr #12 {
bb.a:
  %2 = alloca %"struct.v8::internal::(anonymous namespace)::SharedFunctionInfoAndCount", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.016 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.016, %1
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.0.018 = phi ptr [ %.sroa.0.016, %.lr.ph ], [ %.sroa.0.0, %bb.t ] ; 7 uses
  %.pn17 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.018, %bb.t ] ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn17, i64 36
  %i.h = load i32, ptr %i.g, align 4              ; 5 uses
  %i.i = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.sroa.7.0..val3.sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pn17, i64 40
  %.sroa.7.0.copyload.i.pre = load i32, ptr %.sroa.7.0..val3.sroa_idx.i.phi.trans.insert, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.pn17, i64 40
  %i.l = load i32, ptr %i.k, align 8              ; 5 uses
  %i.m = load i32, ptr %i.d, align 8              ; 2 uses
  %.not12.i.i = icmp eq i32 %i.l, %i.m
  br i1 %.not12.i.i, label %bb.e, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %.sroa.0.018, align 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 55
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = load atomic volatile i32, ptr %i.q monotonic, align 4
  %i.s = load ptr, ptr %0, align 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, 55
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i32, ptr %i.v monotonic, align 4
  %i.x = xor i32 %i.w, %i.r
  %i.y = and i32 %i.x, 134217728
  %.not28.i.i = icmp eq i32 %i.y, 0
  br i1 %.not28.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load atomic volatile i32, ptr %i.q monotonic, align 4
  %i.aa = and i32 %i.z, 134217728
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.l, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn17, i64 32
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = load i32, ptr %i.e, align 8
  %i.ae = icmp ugt i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.l

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit: ; preds = %bb.d
  %i.af = icmp sgt i32 %i.l, %i.m
  br i1 %i.af, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018, i64 24, i1 false)
  %i.ag = ptrtoint ptr %.sroa.0.018 to i64
  %i.ah = sub i64 %i.ag, %i.f                     ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 24
  br i1 %i.ai, label %bb.i, label %bb.j, !prof !102

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn17, i64 48
  %.neg30 = udiv exact i64 %i.ah, 24
  %.neg30.neg = sub nsw i64 0, %.neg30
  %i.ak = getelementptr inbounds [24 x i8], ptr %i.aj, i64 %.neg30.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ah, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.j:                                             ; preds = %bb.h
  %i.al = icmp eq i64 %i.ah, 24
  br i1 %i.al, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.pn17, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(20) %0, i64 20, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.t

bb.l:                                             ; preds = %._crit_edge, %bb.f, %bb.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %.sroa.7.0.copyload.i = phi i32 [ %.sroa.7.0.copyload.i.pre, %._crit_edge ], [ %i.l, %bb.f ], [ %i.l, %bb.g ], [ %i.l, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit ] ; 3 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %.sroa.0.018, align 8 ; 2 uses
  %.sroa.5.0..val3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn17, i64 32
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i, align 8 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.s, %bb.l
  %.sroa.010.0.i = phi ptr [ %.sroa.0.018, %bb.l ], [ %.sroa.0.0.i, %bb.s ] ; 9 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.010.0.i, i64 -24 ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %.sroa.010.0.i, i64 -12
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, %i.ao
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.h, %i.ao
  br i1 %i.ap, label %bb.s, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

bb.o:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds i8, ptr %.sroa.010.0.i, i64 -8
  %i.ar = load i32, ptr %i.aq, align 8            ; 2 uses
  %.not12.i.i.i = icmp eq i32 %.sroa.7.0.copyload.i, %i.ar
  br i1 %.not12.i.i.i, label %bb.p, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i

bb.p:                                             ; preds = %bb.o
  %i.as = load i64, ptr %.sroa.05.0.copyload.i, align 8
  %i.at = add i64 %i.as, 55
  %i.au = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.av = load atomic volatile i32, ptr %i.au monotonic, align 4
  %i.aw = load ptr, ptr %.sroa.0.0.i, align 8
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = add i64 %i.ax, 55
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i32, ptr %i.az monotonic, align 4
  %i.bb = xor i32 %i.ba, %i.av
  %i.bc = and i32 %i.bb, 134217728
  %.not28.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not28.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = load atomic volatile i32, ptr %i.au monotonic, align 4
  %i.be = and i32 %i.bd, 134217728
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit, label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds i8, ptr %.sroa.010.0.i, i64 -16
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = icmp ugt i32 %.sroa.5.0.copyload.i, %i.bg
  br i1 %i.bh, label %bb.s, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i: ; preds = %bb.o
  %i.bi = icmp sgt i32 %.sroa.7.0.copyload.i, %i.ar
  br i1 %i.bi, label %bb.s, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

bb.s:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i, %bb.r, %bb.q, %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.010.0.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.0.i, i64 20, i1 false)
  br label %bb.m, !llvm.loop !23

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit: ; preds = %bb.n, %bb.q, %bb.r, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i
  store ptr %.sroa.05.0.copyload.i, ptr %.sroa.010.0.i, align 8
  %.sroa.5.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 8
  store i32 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..val.sroa_idx.i, align 8
  %.sroa.6.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 12
  store i32 %i.h, ptr %.sroa.6.0..val.sroa_idx.i, align 4
  %.sroa.7.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 16
  store i32 %.sroa.7.0.copyload.i, ptr %.sroa.7.0..val.sroa_idx.i, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 24 ; 2 uses
  %i.bj = icmp eq ptr %.sroa.0.0, %1
  br i1 %i.bj, label %.loopexit, label %bb.b, !llvm.loop !147

.loopexit:                                        ; preds = %bb.t, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_113SortBlockDataERSt6vectorINS0_13CoverageBlockESaIS3_EE(ptr %.0.val, ptr %.8.val) unnamed_addr #0 {
bb.a:
  %0 = alloca %"struct.v8::internal::CoverageBlock", align 4 ; 4 uses
  %1 = alloca %"struct.v8::internal::CoverageBlock", align 4 ; 4 uses
  %i.a = icmp eq ptr %.0.val, %.8.val
  br i1 %i.a, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %.8.val to i64
end_hunk_3
begin_hunk_4_@_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv:bb.a
.critedge:                                        ; preds = %bb.s, %.lr.ph, %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit, %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17MaybeWriteCurrentEv.exit
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store i32 -1, ptr %.08.i.i.i.prol, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 4
  store i32 -1, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  store i32 0, ptr %i.q, align 4
  %i.r = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !156

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.t = icmp ult i64 %1, 4
  br i1 %i.t, label %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 4
  store i32 -1, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i32 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 12
  store i32 -1, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  store i32 -1, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 20
  store i32 0, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  store i32 -1, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 28
  store i32 -1, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  store i32 0, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 36
  store i32 -1, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  store i32 -1, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 44
  store i32 0, ptr %i.ae, align 4
  %i.af = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !45

_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ag, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp ult i64 %i.n, %1
  br i1 %i.ah, label %bb.d, label %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ai = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 768614336404564650) ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 12
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #22 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f ; 3 uses
  %xtraiter37 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol

.lr.ph.i.i.i25.prol:                              ; preds = %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i25.prol
  %.08.i.i.i26.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i25.prol ], [ %i.am, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.057.i.i.i27.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i25.prol ], [ %1, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter39 = phi i64 [ %prol.iter39.next, %.lr.ph.i.i.i25.prol ], [ 0, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit ]
  store i32 -1, ptr %.08.i.i.i26.prol, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 4
  store i32 -1, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 8
  store i32 0, ptr %i.ao, align 4
  %i.ap = add i64 %.057.i.i.i27.prol, -1          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 12 ; 2 uses
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol, !llvm.loop !157

.lr.ph.i.i.i25.prol.loopexit:                     ; preds = %.lr.ph.i.i.i25.prol, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i26.unr = phi ptr [ %i.am, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aq, %.lr.ph.i.i.i25.prol ]
  %.057.i.i.i27.unr = phi i64 [ %1, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ap, %.lr.ph.i.i.i25.prol ]
  %i.ar = icmp ult i64 %1, 4
  br i1 %i.ar, label %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %.lr.ph.i.i.i25.prol.loopexit, %.lr.ph.i.i.i25
  %.08.i.i.i26 = phi ptr [ %i.be, %.lr.ph.i.i.i25 ], [ %.08.i.i.i26.unr, %.lr.ph.i.i.i25.prol.loopexit ] ; 13 uses
  %.057.i.i.i27 = phi i64 [ %i.bd, %.lr.ph.i.i.i25 ], [ %.057.i.i.i27.unr, %.lr.ph.i.i.i25.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i26, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 4
  store i32 -1, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 8
  store i32 0, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 12
  store i32 -1, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 16
  store i32 -1, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 20
  store i32 0, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 24
  store i32 -1, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 28
  store i32 -1, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 32
  store i32 0, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 36
  store i32 -1, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 40
  store i32 -1, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 44
  store i32 0, ptr %i.bc, align 4
  %i.bd = add i64 %.057.i.i.i27, -4               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 48
  %.not.i.i.i28.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i28.3, label %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25, !llvm.loop !45

_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i25, %.lr.ph.i.i.i25.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30, %.lr.ph.i.i.i31
  %.012.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i31 ], [ %i.al, %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i31 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !alias.scope !158
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i32 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i31, !llvm.loop !39

_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i31, %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN2v88internal13CoverageBlockESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bh = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bh) #23
  br label %_ZNSt12_Vector_baseIN2v88internal13CoverageBlockESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2v88internal13CoverageBlockESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.al, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %1
  store ptr %i.bi, ptr %i.a, align 8
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bj, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2v88internal13CoverageBlockESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120CompareCoverageBlockERKNS0_13CoverageBlockES4_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) #14 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = load i32, ptr %1, align 4                ; 2 uses
  %i.c = icmp eq i32 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp sgt i32 %i.e, %i.g
  %i.i = icmp slt i32 %i.a, %i.b
  %.0 = select i1 %i.c, i1 %i.h, i1 %i.i
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.v8::internal::CoverageBlock", align 8 ; 6 uses
  %5 = alloca %"struct.v8::internal::CoverageBlock", align 4 ; 4 uses
  %6 = alloca %"struct.v8::internal::CoverageBlock", align 4 ; 4 uses
  %7 = alloca %"struct.v8::internal::CoverageBlock", align 4 ; 4 uses
  %8 = alloca %"struct.v8::internal::CoverageBlock", align 4 ; 4 uses
  %9 = alloca %"struct.v8::internal::CoverageBlock", align 4 ; 4 uses
  %10 = alloca %"struct.v8::internal::CoverageBlock", align 4 ; 4 uses
  %11 = alloca %"struct.v8::internal::CoverageBlock", align 4 ; 4 uses
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 192
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 8 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph34

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEET_SH_SH_T0_.exit
  %i.g = icmp eq i64 %i.al, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph34, !llvm.loop !162

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa30 = phi i64 [ %i.c, %.lr.ph ], [ %i.ay, %bb.b ]
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %3, ptr %12, align 8
  %i.h = udiv exact i64 %.lcssa30, 12             ; 3 uses
  %i.i = add nsw i64 %i.h, -2                     ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i, %._crit_edge
  %.012.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.aj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i ] ; 8 uses
  %i.r = getelementptr inbounds [12 x i8], ptr %0, i64 %.012.i.i ; 2 uses
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.r, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4
  %i.s = icmp slt i64 %.012.i.i, %i.l
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.043.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i, %bb.c ] ; 2 uses
  %i.t = shl i64 %.043.i.i.i, 1                   ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [12 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [12 x i8], ptr %0, i64 %i.w
  %i.y = call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.v, ptr noundef nonnull align 4 dereferenceable(12) %i.x) #20, !inline_history !163
  %spec.select.i.i.i = select i1 %i.y, i64 %i.w, i64 %i.u ; 4 uses
  %i.z = getelementptr inbounds [12 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.aa = getelementptr inbounds [12 x i8], ptr %0, i64 %.043.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aa, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false)
  %i.ab = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ab, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !164

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.012.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ac = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ac, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, ptr noundef nonnull align 4 dereferenceable(12) %i.p, i64 12, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.o, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.05.0.copyload.i.i, ptr %4, align 8
  store i32 %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.ad = icmp sgt i64 %.1.i.i.i, %.012.i.i
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.019.i.i.i.i = phi i64 [ %.01020.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.01020.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.01020.i.i.i.i = sdiv i64 %.01020.in.i.i.i.i, 2 ; 4 uses
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.01020.i.i.i.i ; 2 uses
  %i.af = call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %4) #20, !inline_history !165
  br i1 %i.af, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.019.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %i.ae, i64 12, i1 false)
  %i.ah = icmp sgt i64 %.01020.i.i.i.i, %.012.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i, !llvm.loop !166

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.e ], [ %.01020.i.i.i.i, %bb.f ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ai, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i.i14 = icmp eq i64 %.012.i.i, 0
  %i.aj = add nsw i64 %.012.i.i, -1
  br i1 %.not.i.i14, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit, label %bb.c, !llvm.loop !167

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_(ptr nonnull %0, ptr %storemerge19.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %.loopexit

.lr.ph34:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1933 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02032 = phi i64 [ %i.al, %bb.b ], [ %2, %.lr.ph ]
  %i.ak = phi i64 [ %i.ay, %bb.b ], [ %i.c, %.lr.ph ]
  %i.al = add nsw i64 %.02032, -1                 ; 3 uses
  %i.am = udiv i64 %i.ak, 24
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.am ; 7 uses
  %i.ao = getelementptr inbounds i8, ptr %storemerge1933, i64 -12 ; 8 uses
  %i.ap = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.an) #20, !inline_history !168
  br i1 %i.ap, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph34
  %i.aq = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.an, ptr noundef nonnull align 4 dereferenceable(12) %i.ao) #20, !inline_history !168
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.an, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.an, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.ar = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.ao) #20, !inline_history !168
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.ao, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ao, ptr noundef nonnull align 4 dereferenceable(12) %10, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.l:                                             ; preds = %.lr.ph34
  %i.as = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.ao) #20, !inline_history !168
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.at = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.an, ptr noundef nonnull align 4 dereferenceable(12) %i.ao) #20, !inline_history !168
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.ao, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ao, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.an, i64 12, i1 false)
end_hunk_4
