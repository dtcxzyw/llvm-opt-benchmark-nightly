inline.NumInlined: 3627
inline.NumDeleted: 1327
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.103", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", [4 x i8], %"class.v8::internal::FlagValue.104", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.103", %"class.v8::internal::FlagValue.103", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.103", %"class.v8::internal::FlagValue.105", %"class.v8::internal::FlagValue.105", %"class.v8::internal::FlagValue.105", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.103", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.103", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.104", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.103", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.103", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.104", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", [4 x i8], %"class.v8::internal::FlagValue.104", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.103", %"class.v8::internal::FlagValue.103", %"class.v8::internal::FlagValue.103", %"class.v8::internal::FlagValue.103", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue.102", [4 x i8], %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.103", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.104", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.104", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.105", %"class.v8::internal::FlagValue.105", %"class.v8::internal::FlagValue.105", %"class.v8::internal::FlagValue.105", %"class.v8::internal::FlagValue.105", %"class.v8::internal::FlagValue.105", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.103", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.103", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.104", %"class.v8::internal::FlagValue.104", %"class.v8::internal::FlagValue.104", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.103", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.105", [2 x i8], %"class.v8::internal::FlagValue.102", [4 x i8], %"class.v8::internal::FlagValue.104", %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.103", %"class.v8::internal::FlagValue.103", [4 x i8], %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.112", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.102", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.101", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.105" = type { %"class.std::optional.106" }
%"class.std::optional.106" = type { %"struct.std::_Optional_base.107" }
%"struct.std::_Optional_base.107" = type { %"struct.std::_Optional_payload.109" }
%"struct.std::_Optional_payload.109" = type { %"struct.std::_Optional_payload_base.110" }
%"struct.std::_Optional_payload_base.110" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.104" = type { double }
%"class.v8::internal::FlagValue.103" = type { i32 }
%"class.v8::internal::FlagValue.112" = type { i64 }
%"class.v8::internal::FlagValue.102" = type { i32 }
%"class.v8::internal::FlagValue.101" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.v8::internal::maglev::ProcessingState" = type <{ ptr, ptr, i32, [4 x i8] }>
%"class.v8::base::SmallVector" = type { ptr, ptr, ptr, [128 x i8] }
%"class.v8::internal::maglev::DeoptInfoVisitor" = type { ptr, %"class.v8::internal::maglev::VirtualObjectList" }
%"class.v8::internal::maglev::VirtualObjectList" = type { ptr }
%class.anon.213 = type { ptr, ptr }
%"struct.std::pair.220" = type { ptr, %"class.v8::internal::maglev::InputLocation" }
%"class.v8::internal::maglev::InputLocation" = type <{ %"class.v8::internal::maglev::ValueLocation", i32, [4 x i8] }>
%"class.v8::internal::maglev::ValueLocation" = type { %"class.v8::internal::compiler::InstructionOperand" }
%"class.v8::internal::compiler::InstructionOperand" = type { i64 }
%class.anon.333 = type { ptr, ptr }
%"class.v8::internal::maglev::DeoptInfoVisitor.329" = type { ptr, %"class.v8::internal::maglev::VirtualObjectList" }
%class.anon.214 = type { ptr, ptr }
%"class.v8::internal::maglev::DeoptInfoVisitor.335" = type { ptr, %"class.v8::internal::maglev::VirtualObjectList" }
%"struct.v8::internal::maglev::RegisterSnapshot" = type { %"class.v8::internal::RegListBase", %"class.v8::internal::RegListBase", %"class.v8::internal::RegListBase.1" }
%"class.v8::internal::RegListBase" = type { i16 }
%"class.v8::internal::RegListBase.1" = type { i16 }
%class.anon.239 = type { ptr, ptr }
%"struct.v8::internal::maglev::MaglevGraphLabeller::NodeInfo" = type { i32, %"struct.v8::internal::maglev::MaglevGraphLabeller::Provenance" }
%"struct.v8::internal::maglev::MaglevGraphLabeller::Provenance" = type { ptr, %"class.v8::internal::BytecodeOffset", %"class.v8::internal::SourcePosition" }
%"class.v8::internal::BytecodeOffset" = type { i32 }
%"class.v8::internal::SourcePosition" = type { i64 }
%class.anon.310 = type { ptr, ptr }
%class.anon.327 = type { ptr, ptr }
%class.anon.330 = type { ptr, ptr }
%class.anon.332 = type { ptr, ptr }
%class.anon.336 = type { ptr, ptr }
%class.anon.338 = type { ptr, ptr }

$_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE16AllocateRegisterEPNS1_9ValueNodeERKNS0_8compiler18InstructionOperandE = comdat any

$_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE16AllocateRegisterEPNS1_9ValueNodeERKNS0_8compiler18InstructionOperandE = comdat any

$_ZN2v88internal6maglev32StraightForwardRegisterAllocator17DropRegisterValueINS0_8RegisterEEEvRNS1_18RegisterFrameStateIT_EES6_b = comdat any

$_ZN2v88internal6maglev32StraightForwardRegisterAllocator17DropRegisterValueINS0_11XMMRegisterEEEvRNS1_18RegisterFrameStateIT_EES6_b = comdat any

$_ZN2v88internal6maglev32StraightForwardRegisterAllocator21FreeUnblockedRegisterINS0_11XMMRegisterEEET_NS0_11RegListBaseIS5_EE = comdat any

$_ZN2v88internal6maglev32StraightForwardRegisterAllocator21FreeUnblockedRegisterINS0_8RegisterEEET_NS0_11RegListBaseIS5_EE = comdat any

$_ZN2v88internal6maglev32StraightForwardRegisterAllocator23EnsureFreeRegisterAtEndINS0_11XMMRegisterEEEvRKNS0_8compiler18InstructionOperandE = comdat any

$_ZN2v88internal6maglev32StraightForwardRegisterAllocator23EnsureFreeRegisterAtEndINS0_8RegisterEEEvRKNS0_8compiler18InstructionOperandE = comdat any

$_ZN2v88internal6maglev32StraightForwardRegisterAllocator13ForceAllocateINS0_8RegisterEEENS0_8compiler16AllocatedOperandERNS1_18RegisterFrameStateIT_EES8_PNS1_9ValueNodeE = comdat any

$_ZN2v88internal6maglev32StraightForwardRegisterAllocator13ForceAllocateINS0_11XMMRegisterEEENS0_8compiler16AllocatedOperandERNS1_18RegisterFrameStateIT_EES8_PNS1_9ValueNodeE = comdat any

$_ZN2v88internal6maglev32StraightForwardRegisterAllocator26AssignArbitraryTemporariesINS0_8RegisterEEEvRNS1_18RegisterFrameStateIT_EEPNS1_8NodeBaseE = comdat any

$_ZN2v88internal6maglev32StraightForwardRegisterAllocator16HoistLoopReloadsINS0_8RegisterEEEvPNS1_10BasicBlockERNS1_18RegisterFrameStateIT_EE = comdat any

$_ZN2v88internal6maglev32StraightForwardRegisterAllocator16HoistLoopReloadsINS0_11XMMRegisterEEEvPNS1_10BasicBlockERNS1_18RegisterFrameStateIT_EE = comdat any

$_ZNSt3mapIPKN2v88internal6maglev8NodeBaseENS2_19MaglevGraphLabeller8NodeInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE7emplaceIJRS5_S7_EEESA_ISt17_Rb_tree_iteratorISC_EbEDpOT_ = comdat any

$_ZNSt8_Rb_treeIPKN2v88internal6maglev8NodeBaseESt4pairIKS5_NS2_19MaglevGraphLabeller8NodeInfoEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_ = comdat any

$_ZN2v88internal6maglev18RegisterFrameStateINS0_11XMMRegisterEE22TryChooseInputRegisterEPNS1_9ValueNodeERKNS0_8compiler18InstructionOperandE = comdat any

$_ZN2v88internal6maglev18RegisterFrameStateINS0_8RegisterEE22TryChooseInputRegisterEPNS1_9ValueNodeERKNS0_8compiler18InstructionOperandE = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE4GrowEm = comdat any

$_ZN2v88internal10ZoneVectorINS0_6maglev32StraightForwardRegisterAllocator10BlockPatchEE4GrowEm = comdat any

$_ZN2v84base11SmallVectorIPNS_8internal6maglev11ControlNodeELm16ESaIS5_EE4GrowEm = comdat any

$_ZN2v84base11SmallVectorIPNS_8internal6maglev11ControlNodeELm16ESaIS5_EE11FreeStorageEv = comdat any

$_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names = comdat any

$_ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names = comdat any

@.str = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str.22 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"node->is_tagged()\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"idx >= tagged_.top\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"start > it->freed_at_position\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"is_loadable()\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"!is_empty()\00", align 1
@.str.46 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"=v\00", align 1
@_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names = linkonce_odr hidden local_unnamed_addr constant [16 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], comdat, align 16
@.str.50 = private unnamed_addr constant [4 x i8] c"rax\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"rcx\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"rdx\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"rbx\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"rsp\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"rbp\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"rsi\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"rdi\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"r8\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"r9\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"r10\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"r11\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"r12\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"r13\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"r14\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"r15\00", align 1
@_ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names = linkonce_odr hidden local_unnamed_addr constant [16 x ptr] [ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], comdat, align 16
@.str.67 = private unnamed_addr constant [5 x i8] c"xmm0\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"xmm1\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"xmm2\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"xmm3\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"xmm4\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"xmm5\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"xmm6\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"xmm7\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"xmm8\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"xmm9\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"xmm10\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"xmm11\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"xmm12\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"xmm13\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"xmm14\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"xmm15\00", align 1
@_ZN4absl18container_internal11kSooControlE = external constant [2 x i8], align 1
@_ZN4absl18container_internal19kDefaultIterControlE = external global i8, align 1
@.str.98 = private unnamed_addr constant [100 x i8] c"Comparing default-constructed hashtable iterator with a non-default-constructed hashtable iterator.\00", align 1
@.str.100 = private unnamed_addr constant [76 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/container/internal/raw_hash_set.h\00", align 1
@.str.101 = private unnamed_addr constant [32 x i8] c"Invalid iterator comparison. %s\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"operator->\00", align 1
@.str.105 = private unnamed_addr constant [166 x i8] c"%s called on invalid iterator. The element might have been erased or the table might have rehashed. Consider running with --config=asan to diagnose rehashing issues.\00", align 1
@.str.113 = private unnamed_addr constant [25 x i8] c"!control->Is<JumpLoop>()\00", align 1

@_ZN2v88internal6maglev32StraightForwardRegisterAllocatorC1EPNS1_21MaglevCompilationInfoEPNS1_5GraphEPNS1_17RegallocBlockInfoE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN2v88internal6maglev32StraightForwardRegisterAllocatorC2EPNS1_21MaglevCompilationInfoEPNS1_5GraphEPNS1_17RegallocBlockInfoE
@_ZN2v88internal6maglev32StraightForwardRegisterAllocatorD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2v88internal6maglev32StraightForwardRegisterAllocatorD2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator12ApplyPatchesEPNS1_10BasicBlockE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(424) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 3 uses
  %i.i = icmp eq ptr %i.b, %i.d
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = add nsw i64 %i.q, %i.h                   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.o
  %i.w = ashr exact i64 %i.v, 3
  %.not.i.i = icmp ugt i64 %i.r, %i.w
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef %i.r)
  %.pre.i = load ptr, ptr %i.l, align 8
  %.pre = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i: ; preds = %bb.c, %bb.b
  %i.y = phi ptr [ %i.k, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.z = phi ptr [ %i.m, %bb.b ], [ %.pre.i, %bb.c ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.r ; 3 uses
  %i.ab = icmp ult ptr %i.y, %i.aa
  br i1 %i.ab, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i
  %2 = ptrtoaddr ptr %i.y to i64                  ; 2 uses
  %3 = ptrtoaddr ptr %i.z to i64
  %i.ac = shl nuw nsw i64 %i.r, 3
  %i.ad = add nuw i64 %i.ac, %3
  %i.ae = add i64 %2, 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ae)
  %i.af = xor i64 %2, -1
  %i.ag = add i64 %umax.i, %i.af
  %i.ah = and i64 %i.ag, -8
  %i.ai = add i64 %i.ah, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.ai, i1 false)
  %.pre46 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit

_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  %i.aj = phi ptr [ %i.z, %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i ], [ %.pre46, %.lr.ph.preheader.i ]
  store ptr %i.aa, ptr %i.j, align 8
  %i.ak = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.al = sub nsw i64 0, %i.h
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %.not39 = icmp ult ptr %i.am, %i.aj
  br i1 %.not39, label %.critedge, label %.lr.ph43.preheader

.lr.ph43.preheader:                               ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit
  %i.an = load ptr, ptr %i.a, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -16
  br label %.lr.ph43

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %._crit_edge
  %.042 = phi ptr [ %i.bz, %._crit_edge ], [ %i.am, %.lr.ph43.preheader ] ; 6 uses
  %.02241 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.ao, %.lr.ph43.preheader ] ; 4 uses
  %.02440 = phi i64 [ %.125.lcssa, %._crit_edge ], [ %i.h, %.lr.ph43.preheader ] ; 3 uses
  %i.ap = load ptr, ptr %.042, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.042, i64 %.02440
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = ptrtoint ptr %.042 to i64               ; 2 uses
  %i.as = load i64, ptr %.02241, align 8
  %i.at = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.ar, %i.au
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = icmp eq i64 %i.as, %i.aw
  br i1 %i.ax, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph43
  %i.ay = add i64 %.02440, -1                     ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02241, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.042, i64 %i.ay
  store ptr %i.ba, ptr %i.bb, align 8
  %i.bc = icmp eq i64 %i.ay, 0
  br i1 %i.bc, label %.lr.ph.preheader._crit_edge, label %.lr.ph60

.lr.ph:                                           ; preds = %.lr.ph60
  %i.bd = add i64 %i.bq, -1                       ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %.13759, i64 -8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.042, i64 %i.bd
  store ptr %i.bf, ptr %i.bg, align 8
  %i.bh = icmp eq i64 %i.bd, 0
  br i1 %i.bh, label %.lr.ph.preheader._crit_edge, label %.lr.ph60, !llvm.loop !6

.lr.ph.preheader._crit_edge:                      ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bi = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.bj = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bk = icmp ult ptr %i.bj, %i.bi
  br i1 %i.bk, label %.lr.ph.preheader.i30, label %_ZN2v88internal10ZoneVectorINS0_6maglev32StraightForwardRegisterAllocator10BlockPatchEE6resizeEm.exit

.lr.ph.preheader.i30:                             ; preds = %.lr.ph.preheader._crit_edge
  %4 = ptrtoaddr ptr %i.bj to i64                 ; 2 uses
  %5 = ptrtoaddr ptr %i.bi to i64
  %i.bl = add i64 %4, 16
  %umax.i31 = tail call i64 @llvm.umax.i64(i64 %5, i64 %i.bl)
  %i.bm = xor i64 %4, -1
  %i.bn = add i64 %umax.i31, %i.bm
  %i.bo = and i64 %i.bn, -16
  %i.bp = add i64 %i.bo, 16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bj, i8 0, i64 %i.bp, i1 false)
  br label %_ZN2v88internal10ZoneVectorINS0_6maglev32StraightForwardRegisterAllocator10BlockPatchEE6resizeEm.exit

_ZN2v88internal10ZoneVectorINS0_6maglev32StraightForwardRegisterAllocator10BlockPatchEE6resizeEm.exit: ; preds = %.lr.ph.preheader._crit_edge, %.lr.ph.preheader.i30
  store ptr %i.bi, ptr %i.a, align 8
  br label %bb.d

.lr.ph60:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bq = phi i64 [ %i.bd, %.lr.ph ], [ %i.ay, %.lr.ph.preheader ] ; 2 uses
  %.13759 = phi ptr [ %i.br, %.lr.ph ], [ %.02241, %.lr.ph.preheader ] ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.13759, i64 -16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.ar, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3
  %i.bx = icmp eq i64 %i.bs, %i.bw
  br i1 %i.bx, label %.lr.ph, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %.lr.ph60, %.lr.ph43
  %i.by = phi ptr [ %i.at, %.lr.ph43 ], [ %i.bt, %.lr.ph60 ]
  %.125.lcssa = phi i64 [ %.02440, %.lr.ph43 ], [ %i.bq, %.lr.ph60 ]
  %.1.lcssa = phi ptr [ %.02241, %.lr.ph43 ], [ %i.br, %.lr.ph60 ]
  %i.bz = getelementptr inbounds i8, ptr %.042, i64 -8 ; 2 uses
  %.not = icmp ult ptr %i.bz, %i.by
  br i1 %.not, label %.critedge, label %.lr.ph43, !llvm.loop !8

.critedge:                                        ; preds = %._crit_edge, %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_6maglev32StraightForwardRegisterAllocator10BlockPatchEE6resizeEm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator15GetCurrentStateEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::maglev::ProcessingState") align 8 captures(none) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(424) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.f = load ptr, ptr %i.e, align 8
  store ptr %i.d, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev32StraightForwardRegisterAllocatorC2EPNS1_21MaglevCompilationInfoEPNS1_5GraphEPNS1_17RegallocBlockInfoE(ptr noundef nonnull align 8 dereferenceable(424) initializes((128, 132), (264, 268), (272, 276), (280, 308), (312, 392), (416, 424)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i16 -9265, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 130
  store i16 0, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i16 32767, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 266
  store i16 0, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  store ptr %2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %3, ptr %i.n, align 8
  tail call void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator26ComputePostDominatingHolesEv(ptr noundef nonnull align 8 dereferenceable(424) %0)
  tail call void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator17AllocateRegistersEv(ptr noundef nonnull align 8 dereferenceable(424) %0)
  %i.o = load i32, ptr %i.g, align 8              ; 3 uses
  %i.p = load i32, ptr %i.e, align 8              ; 3 uses
  %i.q = load ptr, ptr %i.k, align 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 @_ZNK2v88internal6maglev21MaglevCompilationUnit6is_osrEv(ptr noundef nonnull align 8 dereferenceable(52) %i.t) #25
  br i1 %i.u, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not30 = icmp eq ptr %i.x, %i.z
  br i1 %.not30, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.k, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %.pre33 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %.pre35 = load ptr, ptr %.phi.trans.insert34, align 8
  %i.aa = icmp eq ptr %.pre33, %.pre35
  br i1 %i.aa, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %.0.lcssa42 = phi i32 [ %.2, %._crit_edge ], [ %i.o, %bb.b ]
  %i.ab = tail call noundef i32 @_ZN2v88internal6maglev12InitialValue10stack_slotEj(i32 noundef 0) #25
  br label %_ZN2v88internal6maglev5Graph48min_maglev_stackslots_for_unoptimized_frame_sizeEv.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ac = getelementptr inbounds i8, ptr %.pre33, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i32 @_ZNK2v88internal6maglev12InitialValue10stack_slotEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad) #25
  %i.af = add i32 %i.ae, 1
  br label %_ZN2v88internal6maglev5Graph48min_maglev_stackslots_for_unoptimized_frame_sizeEv.exit

_ZN2v88internal6maglev5Graph48min_maglev_stackslots_for_unoptimized_frame_sizeEv.exit: ; preds = %._crit_edge.thread, %bb.c
  %.0.lcssa41 = phi i32 [ %.0.lcssa42, %._crit_edge.thread ], [ %.2, %bb.c ] ; 2 uses
  %.0.i = phi i32 [ %i.ab, %._crit_edge.thread ], [ %i.af, %bb.c ]
  %i.ag = add i32 %.0.lcssa41, %i.p
  %i.ah = tail call i32 @llvm.usub.sat.i32(i32 %.0.i, i32 %i.ag)
  %.023 = add i32 %i.ah, %i.p
  br label %bb.h

.lr.ph:                                           ; preds = %bb.b, %bb.g
  %.032 = phi i32 [ %.2, %bb.g ], [ %i.o, %bb.b ] ; 4 uses
  %.02531 = phi ptr [ %i.au, %bb.g ], [ %i.x, %bb.b ] ; 2 uses
  %i.ai = load ptr, ptr %.02531, align 8          ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, 9007199254740992
  %.not29 = icmp eq i64 %i.al, 0
  br i1 %.not29, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.am = load ptr, ptr %i.ai, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = and i64 %i.ao, 7
  %i.aq = icmp eq i64 %i.ap, 5
  br i1 %i.aq, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ar = tail call noundef i32 @_ZNK2v88internal6maglev12InitialValue10stack_slotEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #25
  %.not28 = icmp ult i32 %i.ar, %.032
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = tail call noundef i32 @_ZNK2v88internal6maglev12InitialValue10stack_slotEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #25
  %i.at = add i32 %i.as, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %.lr.ph
  %.2 = phi i32 [ %.032, %.lr.ph ], [ %i.at, %bb.f ], [ %.032, %bb.e ], [ %.032, %bb.d ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02531, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.au, %i.z
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %_ZN2v88internal6maglev5Graph48min_maglev_stackslots_for_unoptimized_frame_sizeEv.exit, %bb.a
  %.124 = phi i32 [ %.023, %_ZN2v88internal6maglev5Graph48min_maglev_stackslots_for_unoptimized_frame_sizeEv.exit ], [ %i.p, %bb.a ]
  %.3 = phi i32 [ %.0.lcssa41, %_ZN2v88internal6maglev5Graph48min_maglev_stackslots_for_unoptimized_frame_sizeEv.exit ], [ %i.o, %bb.a ]
  %i.av = load ptr, ptr %i.k, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %.3, ptr %i.aw, align 8
  %i.ax = load ptr, ptr %i.k, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 %.124, ptr %i.ay, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev32StraightForwardRegisterAllocator26ComputePostDominatingHolesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(424) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::base::SmallVector", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !noalias !9 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !16 ; 2 uses
end_hunk_0
