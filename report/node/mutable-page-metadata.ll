inline.NumInlined: 282
inline.NumDeleted: 158
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.287", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", [4 x i8], %"class.v8::internal::FlagValue.288", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.287", %"class.v8::internal::FlagValue.287", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.287", %"class.v8::internal::FlagValue.289", %"class.v8::internal::FlagValue.289", %"class.v8::internal::FlagValue.289", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.287", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.287", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.288", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.287", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.287", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.288", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", [4 x i8], %"class.v8::internal::FlagValue.288", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.287", %"class.v8::internal::FlagValue.287", %"class.v8::internal::FlagValue.287", %"class.v8::internal::FlagValue.287", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue.286", [4 x i8], %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.287", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.288", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.288", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.289", %"class.v8::internal::FlagValue.289", %"class.v8::internal::FlagValue.289", %"class.v8::internal::FlagValue.289", %"class.v8::internal::FlagValue.289", %"class.v8::internal::FlagValue.289", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.287", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.287", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.288", %"class.v8::internal::FlagValue.288", %"class.v8::internal::FlagValue.288", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.287", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.289", [2 x i8], %"class.v8::internal::FlagValue.286", [4 x i8], %"class.v8::internal::FlagValue.288", %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.287", %"class.v8::internal::FlagValue.287", [4 x i8], %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.296", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.286", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.285", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.289" = type { %"class.std::optional.290" }
%"class.std::optional.290" = type { %"struct.std::_Optional_base.291" }
%"struct.std::_Optional_base.291" = type { %"struct.std::_Optional_payload.293" }
%"struct.std::_Optional_payload.293" = type { %"struct.std::_Optional_payload_base.294" }
%"struct.std::_Optional_payload_base.294" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.288" = type { double }
%"class.v8::internal::FlagValue.287" = type { i32 }
%"class.v8::internal::FlagValue.296" = type { i64 }
%"class.v8::internal::FlagValue.286" = type { i32 }
%"class.v8::internal::FlagValue.285" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"struct.v8::internal::ThreadIsolation::TrustedData" = type { ptr, i32, ptr, ptr, [4064 x i8] }
%"class.v8::internal::VirtualMemory" = type { ptr, %"class.v8::base::AddressRegion" }
%"class.v8::base::AddressRegion" = type { i64, i64 }

$_ZN2v88internal12TypedSlotSetD0Ev = comdat any

$_ZTVN2v88internal12TypedSlotSetE = comdat any

@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"marking_bitmap()->IsClean() implies live_bytes() == 0\00", align 1
@_ZN2v88internal15MemoryAllocator22commit_page_size_bits_E = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"allocation\00", align 1
@_ZTVN2v88internal12TypedSlotSetE = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal10TypedSlotsD2Ev, ptr @_ZN2v88internal12TypedSlotSetD0Ev] }, comdat, align 8
@_ZN2v88internal15ThreadIsolation13trusted_data_E = external local_unnamed_addr global %"struct.v8::internal::ThreadIsolation::TrustedData", align 4096

@_ZN2v88internal19MutablePageMetadataC1EPNS0_4HeapEPNS0_9BaseSpaceEmmmNS0_13VirtualMemoryENS0_8PageSizeENS0_13ExecutabilityE = hidden unnamed_addr alias void (ptr, ptr, ptr, i64, i64, i64, ptr, i32, i32), ptr @_ZN2v88internal19MutablePageMetadataC2EPNS0_4HeapEPNS0_9BaseSpaceEmmmNS0_13VirtualMemoryENS0_8PageSizeENS0_13ExecutabilityE

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19MutablePageMetadataC2EPNS0_4HeapEPNS0_9BaseSpaceEmmmNS0_13VirtualMemoryENS0_8PageSizeENS0_13ExecutabilityE(ptr noundef nonnull align 8 dereferenceable(4448) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"class.v8::internal::VirtualMemory", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.b = load ptr, ptr %6, align 8
  store ptr %i.b, ptr %9, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  tail call void @_ZN2v88internal13VirtualMemory5ResetEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #16
  call void @_ZN2v88internal19MemoryChunkMetadataC2EPNS0_4HeapEPNS0_9BaseSpaceEmmmNS0_13VirtualMemoryENS0_13ExecutabilityE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull %9, i32 noundef %8) #16
  call void @_ZN2v88internal13VirtualMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4336) %i.d, i8 0, i64 4336, i1 false)
  call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4440
  call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #16
  %i.h = icmp eq i32 %7, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17, !noalias !5 ; 3 uses
  store i64 0, ptr %i.i, align 8, !noalias !5
  %i.j = load ptr, ptr %i.e, align 8              ; 2 uses
  store ptr %i.i, ptr %i.e, align 8
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4heap4base17ActiveSystemPagesESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4heap4base17ActiveSystemPagesEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4heap4base17ActiveSystemPagesEEclEPS2_.exit.i.i.i.i: ; preds = %bb.b
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 8) #18
  %.pre = load ptr, ptr %i.e, align 8
  br label %_ZNSt10unique_ptrIN4heap4base17ActiveSystemPagesESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4heap4base17ActiveSystemPagesESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4heap4base17ActiveSystemPagesEEclEPS2_.exit.i.i.i.i, %bb.b
  %i.k = phi ptr [ %.pre, %_ZNKSt14default_deleteIN4heap4base17ActiveSystemPagesEEclEPS2_.exit.i.i.i.i ], [ %i.i, %bb.b ]
  %i.l = load i64, ptr @_ZN2v88internal15MemoryAllocator22commit_page_size_bits_E, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i64, ptr %i.m, align 8
  %i.o = call noundef i64 @_ZN4heap4base17ActiveSystemPages4InitEmmm(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 16, i64 noundef %i.l, i64 noundef %i.n) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4heap4base17ActiveSystemPagesESt14default_deleteIS2_EED2Ev.exit, %bb.a
  ret void
}

declare void @_ZN2v88internal19MemoryChunkMetadataC2EPNS0_4HeapEPNS0_9BaseSpaceEmmmNS0_13VirtualMemoryENS0_13ExecutabilityE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v88internal13VirtualMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare noundef i64 @_ZN4heap4base17ActiveSystemPages4InitEmmm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i64 2, 39) i64 @_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i32 %0, 2
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %1, -4               ; 2 uses
  %i.b = icmp ult i32 %switch.tableidx, 8
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -59, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.b, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit

_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit: ; preds = %bb.b
  %i.c = icmp eq i32 %0, 1
  %spec.select = select i1 %i.c, i64 36, i64 4
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.b, %_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit, %bb.a
  %.sroa.04.0 = phi i64 [ %spec.select, %_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit ], [ 38, %bb.a ], [ 2, %bb.b ]
  ret i64 %.sroa.04.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i64 2, 39) i64 @_ZN2v88internal19MutablePageMetadata24YoungGenerationPageFlagsENS0_11MarkingModeE(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq i32 %0, 0
  %spec.select = select i1 %.not, i64 2, i64 38
  ret i64 %spec.select
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden range(i64 2, 40) i64 @_ZNK2v88internal19MutablePageMetadata19ComputeInitialFlagsENS0_13ExecutabilityE(ptr noundef nonnull align 8 captures(none) dereferenceable(4448) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load atomic ptr, ptr %i.a seq_cst, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1920
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  switch i32 %i.d, label %bb.c [
    i32 7, label %bb.b
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %.not.i = icmp eq i32 %i.j, 0
  %spec.select.i = select i1 %.not.i, i64 2, i64 38
  br label %_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %switch.tableidx = add i32 %i.d, -4             ; 2 uses
  %i.l = icmp ult i32 %switch.tableidx, 8
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -59, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.l, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit, label %_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit.i

_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit.i: ; preds = %bb.d
  %i.m = icmp eq i32 %i.j, 1
  %spec.select.i5 = select i1 %i.m, i64 36, i64 4
  br label %_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit

_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit: ; preds = %bb.d, %_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit.i, %bb.c, %bb.b
  %.sroa.010.1 = phi i64 [ %spec.select.i, %bb.b ], [ %spec.select.i5, %_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit.i ], [ 38, %bb.c ], [ 2, %bb.d ] ; 2 uses
  switch i32 %i.d, label %_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit7 [
    i32 10, label %bb.e
    i32 6, label %bb.e
    i32 4, label %bb.e
    i32 11, label %bb.e
  ]

bb.e:                                             ; preds = %_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit, %_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit, %_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit, %_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit
  %i.n = or disjoint i64 %.sroa.010.1, 1
  br label %_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit7

_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit7: ; preds = %_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit, %bb.e
  %.sroa.010.2 = phi i64 [ %i.n, %bb.e ], [ %.sroa.010.1, %_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit ]
  ret i64 %.sroa.010.2
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden void @_ZN2v88internal19MutablePageMetadata25SetOldGenerationPageFlagsENS0_11MarkingModeE(ptr noundef nonnull align 8 captures(none) dereferenceable(4448) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a seq_cst, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK2v88internal19MemoryChunkMetadata14owner_identityEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic ptr, ptr %i.a seq_cst, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8
  br label %_ZNK2v88internal19MemoryChunkMetadata14owner_identityEv.exit

_ZNK2v88internal19MemoryChunkMetadata14owner_identityEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.f = icmp eq i32 %1, 2
  br i1 %i.f, label %_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit, label %switch.lookup

switch.lookup:                                    ; preds = %_ZNK2v88internal19MemoryChunkMetadata14owner_identityEv.exit
  %switch.tableidx = add i32 %.0.i, -4            ; 2 uses
  %i.g = icmp ult i32 %switch.tableidx, 8
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -59, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.g, i1 %switch.lobit, i1 false
  %i.h = icmp eq i32 %1, 1
  %spec.select.i = select i1 %i.h, i64 36, i64 4
  %.sroa.04.0.i.ph = select i1 %or.cond, i64 2, i64 %spec.select.i ; 5 uses
  switch i32 %.0.i, label %_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit [
    i32 10, label %_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit
    i32 6, label %_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit
    i32 4, label %_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit
    i32 11, label %_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit
  ]

_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit: ; preds = %switch.lookup
  %.not9 = icmp eq i32 %1, 1
  %i.i = select i1 %.not9, i64 -3, i64 -35
  br label %_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit

_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit: ; preds = %_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit, %switch.lookup, %switch.lookup, %switch.lookup, %switch.lookup, %_ZNK2v88internal19MemoryChunkMetadata14owner_identityEv.exit
  %.sroa.04.0.i24 = phi i64 [ %.sroa.04.0.i.ph, %switch.lookup ], [ 38, %_ZNK2v88internal19MemoryChunkMetadata14owner_identityEv.exit ], [ %.sroa.04.0.i.ph, %_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit ], [ %.sroa.04.0.i.ph, %switch.lookup ], [ %.sroa.04.0.i.ph, %switch.lookup ], [ %.sroa.04.0.i.ph, %switch.lookup ]
  %.sroa.010.0 = phi i64 [ -37, %switch.lookup ], [ -1, %_ZNK2v88internal19MemoryChunkMetadata14owner_identityEv.exit ], [ %i.i, %_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit ], [ -37, %switch.lookup ], [ -37, %switch.lookup ], [ -37, %switch.lookup ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = or i64 %i.k, %.sroa.04.0.i24             ; 2 uses
  store i64 %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, -262144
  %i.p = inttoptr i64 %i.o to ptr
  store i64 %i.l, ptr %i.p, align 262144
  %i.q = load i64, ptr %i.j, align 8
  %i.r = and i64 %i.q, %.sroa.010.0               ; 2 uses
  store i64 %i.r, ptr %i.j, align 8
  %i.s = load i64, ptr %i.m, align 8
  %i.t = and i64 %i.s, -262144
  %i.u = inttoptr i64 %i.t to ptr
  store i64 %i.r, ptr %i.u, align 262144
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal19MutablePageMetadata27SetYoungGenerationPageFlagsENS0_11MarkingModeE(ptr noundef nonnull align 8 captures(none) dereferenceable(4448) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %.not.i = icmp eq i32 %1, 0                     ; 2 uses
  %spec.select.i = select i1 %.not.i, i64 2, i64 38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = or i64 %i.b, %spec.select.i              ; 2 uses
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, -262144
  %i.g = inttoptr i64 %i.f to ptr
  store i64 %i.c, ptr %i.g, align 262144
  %i.h = select i1 %.not.i, i64 -37, i64 -1
  %i.i = load i64, ptr %i.a, align 8
  %i.j = and i64 %i.i, %i.h                       ; 2 uses
  store i64 %i.j, ptr %i.a, align 8
  %i.k = load i64, ptr %i.d, align 8
  %i.l = and i64 %i.k, -262144
  %i.m = inttoptr i64 %i.l to ptr
  store i64 %i.j, ptr %i.m, align 262144
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK2v88internal19MutablePageMetadata23CommittedPhysicalMemoryEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(4448) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN2v84base2OS14HasLazyCommitsEv() #16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i64, ptr @_ZN2v88internal15MemoryAllocator22commit_page_size_bits_E, align 8
  %i.j = tail call noundef i64 @_ZNK4heap4base17ActiveSystemPages4SizeEm(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.i) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.f, %bb.c ], [ %i.j, %bb.d ]
  ret i64 %.0
}

declare noundef zeroext i1 @_ZN2v84base2OS14HasLazyCommitsEv() local_unnamed_addr #1

declare noundef i64 @_ZNK4heap4base17ActiveSystemPages4SizeEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19MutablePageMetadata44ReleaseAllocatedMemoryNeededForWritableChunkEv(ptr noundef nonnull align 8 dereferenceable(4448) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4heap4base17ActiveSystemPagesESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN4heap4base17ActiveSystemPagesEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4heap4base17ActiveSystemPagesEEclEPS2_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #18
  br label %_ZNSt10unique_ptrIN4heap4base17ActiveSystemPagesESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN4heap4base17ActiveSystemPagesESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4heap4base17ActiveSystemPagesEEclEPS2_.exit.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN2v88internal20PossiblyEmptyBuckets7ReleaseEv.exit

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4heap4base17ActiveSystemPagesESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.f = and i64 %i.d, -2
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @_ZN2v88internal11AlignedFreeEPv(ptr noundef %i.g) #16
  br label %_ZN2v88internal20PossiblyEmptyBuckets7ReleaseEv.exit

_ZN2v88internal20PossiblyEmptyBuckets7ReleaseEv.exit: ; preds = %_ZNSt10unique_ptrIN4heap4base17ActiveSystemPagesESt14default_deleteIS2_EE5resetEPS2_.exit, %bb.b
  store i64 0, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN2v88internal20PossiblyEmptyBuckets7ReleaseEv.exit
  store ptr null, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8
  %.not.i.i2 = icmp eq i64 %i.k, 0
  br i1 %.not.i.i2, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i
  %.07.i.i = phi i64 [ %i.p, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.07.i.i ; 2 uses
  %i.m = load atomic volatile i64, ptr %i.l acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.l release, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.o = inttoptr i64 %i.m to ptr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 128) #18
  br label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i

_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %i.p = add nuw i64 %.07.i.i, 1                  ; 2 uses
  %i.q = load i64, ptr %i.j, align 8
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %.lr.ph.i.i, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i, !llvm.loop !8

_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i: ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i, %.preheader.i.i
  tail call void @free(ptr noundef nonnull %i.j) #16
  br label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit

_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit: ; preds = %_ZN2v88internal20PossiblyEmptyBuckets7ReleaseEv.exit, %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not.i3 = icmp eq ptr %i.t, null
  br i1 %.not.i3, label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit10, label %.preheader.i.i4

.preheader.i.i4:                                  ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit
  store ptr null, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8
  %.not.i.i5 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i5, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i9, label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %.preheader.i.i4, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i8
  %.07.i.i7 = phi i64 [ %i.aa, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i8 ], [ 0, %.preheader.i.i4 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.07.i.i7 ; 2 uses
  %i.x = load atomic volatile i64, ptr %i.w acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.w release, align 8
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i8, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i6
  %i.z = inttoptr i64 %i.x to ptr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 128) #18
  br label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i8

_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i8: ; preds = %bb.d, %.lr.ph.i.i6
  %i.aa = add nuw i64 %.07.i.i7, 1                ; 2 uses
  %i.ab = load i64, ptr %i.u, align 8
  %i.ac = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i6, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i9, !llvm.loop !8

_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i9: ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i8, %.preheader.i.i4
  tail call void @free(ptr noundef nonnull %i.u) #16
  br label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit10

_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit10: ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit, %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %.not.i11 = icmp eq ptr %i.ae, null
  br i1 %.not.i11, label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit18, label %.preheader.i.i12

.preheader.i.i12:                                 ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit10
  store ptr null, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8
  %.not.i.i13 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i13, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i17, label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %.preheader.i.i12, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i16
  %.07.i.i15 = phi i64 [ %i.al, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i16 ], [ 0, %.preheader.i.i12 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.07.i.i15 ; 2 uses
  %i.ai = load atomic volatile i64, ptr %i.ah acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.ah release, align 8
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i16, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i14
  %i.ak = inttoptr i64 %i.ai to ptr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 128) #18
  br label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i16

_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i16: ; preds = %bb.e, %.lr.ph.i.i14
  %i.al = add nuw i64 %.07.i.i15, 1               ; 2 uses
  %i.am = load i64, ptr %i.af, align 8
  %i.an = icmp ult i64 %i.al, %i.am
  br i1 %i.an, label %.lr.ph.i.i14, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i17, !llvm.loop !8

_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i17: ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i16, %.preheader.i.i12
  tail call void @free(ptr noundef nonnull %i.af) #16
  br label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit18

_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit18: ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit10, %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i17
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %.not.i19 = icmp eq ptr %i.ap, null
  br i1 %.not.i19, label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit26, label %.preheader.i.i20

.preheader.i.i20:                                 ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit18
  store ptr null, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %.not.i.i21 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i21, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i25, label %.lr.ph.i.i22

.lr.ph.i.i22:                                     ; preds = %.preheader.i.i20, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i24
  %.07.i.i23 = phi i64 [ %i.aw, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i24 ], [ 0, %.preheader.i.i20 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.07.i.i23 ; 2 uses
  %i.at = load atomic volatile i64, ptr %i.as acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.as release, align 8
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i24, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i22
  %i.av = inttoptr i64 %i.at to ptr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 128) #18
  br label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i24

_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i24: ; preds = %bb.f, %.lr.ph.i.i22
  %i.aw = add nuw i64 %.07.i.i23, 1               ; 2 uses
  %i.ax = load i64, ptr %i.aq, align 8
  %i.ay = icmp ult i64 %i.aw, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i22, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i25, !llvm.loop !8

_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i25: ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i24, %.preheader.i.i20
  tail call void @free(ptr noundef nonnull %i.aq) #16
  br label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit26

_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit26: ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit18, %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i25
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  %.not.i27 = icmp eq ptr %i.ba, null
  br i1 %.not.i27, label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit34, label %.preheader.i.i28

.preheader.i.i28:                                 ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit26
  store ptr null, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %.not.i.i29 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i29, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i33, label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %.preheader.i.i28, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i32
  %.07.i.i31 = phi i64 [ %i.bh, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i32 ], [ 0, %.preheader.i.i28 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.07.i.i31 ; 2 uses
  %i.be = load atomic volatile i64, ptr %i.bd acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.bd release, align 8
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i32, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i30
  %i.bg = inttoptr i64 %i.be to ptr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 128) #18
  br label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i32

_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i32: ; preds = %bb.g, %.lr.ph.i.i30
  %i.bh = add nuw i64 %.07.i.i31, 1               ; 2 uses
  %i.bi = load i64, ptr %i.bb, align 8
  %i.bj = icmp ult i64 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph.i.i30, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i33, !llvm.loop !8

_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i33: ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i32, %.preheader.i.i28
  tail call void @free(ptr noundef nonnull %i.bb) #16
  br label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit34

_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit34: ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit26, %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i33
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %.not.i35 = icmp eq ptr %i.bl, null
  br i1 %.not.i35, label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit42, label %.preheader.i.i36

.preheader.i.i36:                                 ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit34
  store ptr null, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8
  %.not.i.i37 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i37, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i41, label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.preheader.i.i36, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i40
  %.07.i.i39 = phi i64 [ %i.bs, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i40 ], [ 0, %.preheader.i.i36 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.07.i.i39 ; 2 uses
  %i.bp = load atomic volatile i64, ptr %i.bo acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.bo release, align 8
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i40, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i38
  %i.br = inttoptr i64 %i.bp to ptr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 128) #18
  br label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i40

_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i40: ; preds = %bb.h, %.lr.ph.i.i38
  %i.bs = add nuw i64 %.07.i.i39, 1               ; 2 uses
  %i.bt = load i64, ptr %i.bm, align 8
  %i.bu = icmp ult i64 %i.bs, %i.bt
  br i1 %i.bu, label %.lr.ph.i.i38, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i41, !llvm.loop !8

_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i41: ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i40, %.preheader.i.i36
  tail call void @free(ptr noundef nonnull %i.bm) #16
  br label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit42

_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit42: ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit34, %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i41
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 3 uses
  %.not.i43 = icmp eq ptr %i.bw, null
  br i1 %.not.i43, label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit50, label %.preheader.i.i44

.preheader.i.i44:                                 ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit42
  store ptr null, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -8 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8
  %.not.i.i45 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i45, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i49, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %.preheader.i.i44, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i48
  %.07.i.i47 = phi i64 [ %i.cd, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i48 ], [ 0, %.preheader.i.i44 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.07.i.i47 ; 2 uses
  %i.ca = load atomic volatile i64, ptr %i.bz acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.bz release, align 8
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i48, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i46
  %i.cc = inttoptr i64 %i.ca to ptr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 128) #18
  br label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i48

_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i48: ; preds = %bb.i, %.lr.ph.i.i46
  %i.cd = add nuw i64 %.07.i.i47, 1               ; 2 uses
  %i.ce = load i64, ptr %i.bx, align 8
  %i.cf = icmp ult i64 %i.cd, %i.ce
  br i1 %i.cf, label %.lr.ph.i.i46, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i49, !llvm.loop !8

_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i49: ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i48, %.preheader.i.i44
  tail call void @free(ptr noundef nonnull %i.bx) #16
  br label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit50

_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit50: ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit42, %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i49
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8            ; 3 uses
  %.not.i51 = icmp eq ptr %i.ch, null
  br i1 %.not.i51, label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit58, label %.preheader.i.i52

.preheader.i.i52:                                 ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit50
  store ptr null, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -8 ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8
  %.not.i.i53 = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i53, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i57, label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %.preheader.i.i52, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i56
  %.07.i.i55 = phi i64 [ %i.co, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i56 ], [ 0, %.preheader.i.i52 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.07.i.i55 ; 2 uses
  %i.cl = load atomic volatile i64, ptr %i.ck acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.ck release, align 8
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i56, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i54
  %i.cn = inttoptr i64 %i.cl to ptr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef 128) #18
  br label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i56

_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i56: ; preds = %bb.j, %.lr.ph.i.i54
  %i.co = add nuw i64 %.07.i.i55, 1               ; 2 uses
  %i.cp = load i64, ptr %i.ci, align 8
  %i.cq = icmp ult i64 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph.i.i54, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i57, !llvm.loop !8

_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i57: ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i.i56, %.preheader.i.i52
  tail call void @free(ptr noundef nonnull %i.ci) #16
  br label %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit58

_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit58: ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit50, %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit.i57
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 3 uses
  %.not.i59 = icmp eq ptr %i.cs, null
  br i1 %.not.i59, label %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit58
  store ptr null, ptr %i.cr, align 8
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %i.cs) #16, !inline_history !10
  br label %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit

_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit: ; preds = %_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE.exit58, %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8            ; 3 uses
  %.not.i60 = icmp eq ptr %i.cx, null
  br i1 %.not.i60, label %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit61, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit
  store ptr null, ptr %i.cw, align 8
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  tail call void %i.da(ptr noundef nonnull align 8 dereferenceable(32) %i.cx) #16, !inline_history !10
  br label %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit61

_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit61: ; preds = %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit, %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 3 uses
  %.not.i62 = icmp eq ptr %i.dc, null
  br i1 %.not.i62, label %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit63, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit61
  store ptr null, ptr %i.db, align 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  tail call void %i.df(ptr noundef nonnull align 8 dereferenceable(32) %i.dc) #16, !inline_history !10
  br label %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit63

_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit63: ; preds = %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit61, %bb.m
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = and i32 %i.dh, 8
  %.not = icmp eq i32 %i.di, 0
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit63
  tail call void @_ZN2v88internal12PageMetadata25ReleaseFreeListCategoriesEv(ptr noundef nonnull align 8 dereferenceable(4448) %0) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE.exit63
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 captures(none) dereferenceable(4448) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  store ptr null, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i
  %.07.i = phi i64 [ %i.k, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.07.i ; 2 uses
  %i.h = load atomic volatile i64, ptr %i.g acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.g release, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = inttoptr i64 %i.h to ptr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 128) #18
  br label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i

_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.k = add nuw i64 %.07.i, 1                    ; 2 uses
  %i.l = load i64, ptr %i.e, align 8
  %i.m = icmp ult i64 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.i, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit, !llvm.loop !8

_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit: ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i, %.preheader.i
  tail call void @free(ptr noundef nonnull %i.e) #16
  br label %bb.c

bb.c:                                             ; preds = %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 captures(none) dereferenceable(4448) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.d) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN2v88internal12PageMetadata25ReleaseFreeListCategoriesEv(ptr noundef nonnull align 8 dereferenceable(4448)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19MutablePageMetadata25ReleaseAllAllocatedMemoryEv(ptr noundef nonnull align 8 dereferenceable(4448) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal19MutablePageMetadata44ReleaseAllocatedMemoryNeededForWritableChunkEv(ptr noundef nonnull align 8 dereferenceable(4448) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal19MutablePageMetadata15AllocateSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, 8191
  %i.e = lshr i64 %i.d, 13                        ; 3 uses
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.h = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef %i.g) #16
  %.not.i.i.i = icmp ne i32 %i.h, 0
  %.pre.i.i.i = load ptr, ptr %i.a, align 8       ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.not12.i.i = icmp eq ptr %.pre.i.i.i, null
  %.not.i.i = select i1 %.not.i.i.i, i1 true, i1 %.not12.i.i
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.pre.i.i.i, i64 8 ; 5 uses
  store i64 %i.e, ptr %.pre.i.i.i, align 8
  %.not14.i.i = icmp eq i64 %i.e, 0
  br i1 %.not14.i.i, label %_ZN2v88internal7SlotSet8AllocateEm.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.f, i1 false)
  br label %_ZN2v88internal7SlotSet8AllocateEm.exit

_ZN2v88internal7SlotSet8AllocateEm.exit:          ; preds = %bb.c, %.lr.ph.preheader.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = zext i32 %1 to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = cmpxchg volatile ptr %i.l, i64 0, i64 %i.m acq_rel acquire, align 8 ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 0
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %.not = extractvalue { i64, i1 } %i.n, 1
  br i1 %.not, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal7SlotSet8AllocateEm.exit
  %i.q = icmp eq ptr %i.i, null
  br i1 %i.q, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.r = load i64, ptr %.pre.i.i.i, align 8
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i, %.preheader.i
  call void @free(ptr noundef nonnull %.pre.i.i.i) #16
  br label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i
  %.07.i = phi i64 [ %i.w, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.07.i ; 2 uses
  %i.t = load atomic volatile i64, ptr %i.s acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.s release, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.v = inttoptr i64 %i.t to ptr
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 128) #18
  br label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i

_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i: ; preds = %bb.e, %.lr.ph.i
  %i.w = add nuw i64 %.07.i, 1                    ; 2 uses
  %i.x = load i64, ptr %.pre.i.i.i, align 8
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8

_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit: ; preds = %._crit_edge.i, %bb.d, %_ZN2v88internal7SlotSet8AllocateEm.exit
  %.0 = phi ptr [ %i.i, %_ZN2v88internal7SlotSet8AllocateEm.exit ], [ %i.p, %bb.d ], [ %i.p, %._crit_edge.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal19MutablePageMetadata20AllocateTypedSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, -262144
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2v88internal12TypedSlotSetE, i64 16), ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = cmpxchg volatile ptr %i.i, i64 0, i64 %i.j release monotonic, align 8 ; 2 uses
  %.not = extractvalue { i64, i1 } %i.k, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = extractvalue { i64, i1 } %i.k, 0
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.m, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal19MutablePageMetadata16ContainsAnySlotsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(4448) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load <2 x ptr>, ptr %i.c, align 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8
  %i.g = shufflevector <2 x ptr> %i.e, <2 x ptr> %i.f, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %.fr = freeze <4 x ptr> %i.g
  %i.h = icmp ne <4 x ptr> %.fr, splat (ptr null)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load <2 x ptr>, ptr %i.i, align 8
  %i.l = load <2 x ptr>, ptr %i.j, align 8
  %i.m = shufflevector <2 x ptr> %i.k, <2 x ptr> %i.l, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %.fr47 = freeze <4 x ptr> %i.m
  %i.n = icmp ne <4 x ptr> %.fr47, splat (ptr null)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = load <2 x ptr>, ptr %i.o, align 8
  %i.r = load <2 x ptr>, ptr %i.p, align 8
  %i.s = shufflevector <2 x ptr> %i.q, <2 x ptr> %i.r, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %.fr48 = freeze <4 x ptr> %i.s
  %i.t = icmp ne <4 x ptr> %.fr48, splat (ptr null)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.v = load ptr, ptr %i.u, align 8
  %.fr50 = freeze ptr %i.v
  %.not8.6 = icmp ne ptr %.fr50, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = load ptr, ptr %i.w, align 8
  %.fr49 = freeze ptr %i.x
  %.not.7 = icmp ne ptr %.fr49, null
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.z = load ptr, ptr %i.y, align 8
  %.not8.7 = icmp ne ptr %i.z, null
  %rdx.op = or <4 x i1> %i.h, %i.n
  %rdx.op44 = or <4 x i1> %rdx.op, %i.t
  %i.aa = bitcast <4 x i1> %rdx.op44 to i4
  %i.ab = icmp ne i4 %i.aa, 0
  %op.rdx = or i1 %i.ab, %.not8.6
  %i.ac = or i1 %op.rdx, %.not.7
  %op.rdx46 = select i1 %i.ac, i1 true, i1 %.not8.7
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %op.rdx46, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal19MutablePageMetadata22ComputeFreeListsLengthEv(ptr noundef nonnull align 8 captures(none) dereferenceable(4448) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a seq_cst, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %.not9 = icmp slt i32 %i.f, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.06.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.d ]
  ret i32 %.06.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.0610 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.j, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef i32 @_ZN2v88internal16FreeListCategory14FreeListLengthEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j) #16
  %i.l = add nsw i32 %i.k, %.0610
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.l, %bb.c ], [ %.0610, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.m = load atomic ptr, ptr %i.a seq_cst, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = sext i32 %i.q to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.r
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !12
}

declare noundef i32 @_ZN2v88internal16FreeListCategory14FreeListLengthEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal19MutablePageMetadata15IsLivenessClearEv(ptr noundef nonnull align 8 dereferenceable(4448) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_ZNK2v88internal13MarkingBitmap7IsCleanEv(ptr noundef nonnull align 8 dereferenceable(4096) %i.a) #16
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.critedge, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.e = tail call noundef zeroext i1 @_ZNK2v88internal13MarkingBitmap7IsCleanEv(ptr noundef nonnull align 8 dereferenceable(4096) %i.a) #16
  ret i1 %i.e
}

declare noundef zeroext i1 @_ZNK2v88internal13MarkingBitmap7IsCleanEv(ptr noundef nonnull align 8 dereferenceable(4096)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19MutablePageMetadata22SetFlagMaybeExecutableENS0_11MemoryChunk4FlagE(ptr noundef nonnull align 8 captures(none) dereferenceable(4448) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 16
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !14, !noundef !15
  %i.e = trunc nuw i8 %i.d to i1
  %.not = xor i1 %i.e, true
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !14
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.c, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not7 = icmp eq i32 %i.h, -1
  br i1 %.not7, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.h, i32 noundef 0) #16
  br label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit:  ; preds = %bb.b, %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = or i64 %i.j, %1                          ; 2 uses
  store i64 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, -262144
  %i.o = inttoptr i64 %i.n to ptr
  store i64 %i.k, ptr %i.o, align 262144
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !14, !noundef !15
  %i.q = trunc nuw i8 %i.p to i1
  %.not3 = xor i1 %i.q, true
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !14
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond5 = select i1 %.not3, i1 true, i1 %i.s
  br i1 %or.cond5, label %bb.e, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

bb.e:                                             ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not8 = icmp eq i32 %i.t, -1
  br i1 %.not8, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.t, i32 noundef 2) #16
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = or i64 %i.v, %1                          ; 2 uses
  store i64 %i.w, ptr %i.u, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, -262144
  %i.aa = inttoptr i64 %i.z to ptr
  store i64 %i.w, ptr %i.aa, align 262144
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit:    ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19MutablePageMetadata24ClearFlagMaybeExecutableENS0_11MemoryChunk4FlagE(ptr noundef nonnull align 8 captures(none) dereferenceable(4448) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 16
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !14, !noundef !15
  %i.e = trunc nuw i8 %i.d to i1
  %.not = xor i1 %i.e, true
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !14
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.c, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not7 = icmp eq i32 %i.h, -1
  br i1 %.not7, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.h, i32 noundef 0) #16
  br label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit:  ; preds = %bb.b, %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.j = xor i64 %1, -1
  %i.k = load i64, ptr %i.i, align 8
  %i.l = and i64 %i.k, %i.j                       ; 2 uses
  store i64 %i.l, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, -262144
  %i.p = inttoptr i64 %i.o to ptr
  store i64 %i.l, ptr %i.p, align 262144
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !14, !noundef !15
  %i.r = trunc nuw i8 %i.q to i1
  %.not3 = xor i1 %i.r, true
  %i.s = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !14
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond5 = select i1 %.not3, i1 true, i1 %i.t
  br i1 %or.cond5, label %bb.e, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

bb.e:                                             ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not8 = icmp eq i32 %i.u, -1
  br i1 %.not8, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.u, i32 noundef 2) #16
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.w = xor i64 %1, -1
  %i.x = load i64, ptr %i.v, align 8
  %i.y = and i64 %i.x, %i.w                       ; 2 uses
  store i64 %i.y, ptr %i.v, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, -262144
  %i.ac = inttoptr i64 %i.ab to ptr
  store i64 %i.y, ptr %i.ac, align 262144
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit:    ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal19MutablePageMetadata17MarkNeverEvacuateEv(ptr noundef nonnull align 8 captures(none) dereferenceable(4448) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = or i32 %i.b, 512
  store i32 %i.c, ptr %i.a, align 8
  ret void
}

declare void @_ZN2v88internal13VirtualMemory5ResetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN2v88internal11AlignedFreeEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN2v88internal10TypedSlotsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12TypedSlotSetD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal10TypedSlotsD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

declare void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZSt11make_uniqueIN4heap4base17ActiveSystemPagesEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!7 = distinct !{!7, !"_ZSt11make_uniqueIN4heap4base17ActiveSystemPagesEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{ptr @_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = distinct !{!12, !9}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{i8 0, i8 2}
!15 = !{}
end_hunk_0
