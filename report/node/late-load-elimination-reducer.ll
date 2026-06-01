inline.NumInlined: 4977
inline.NumDeleted: 2626
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.168", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", [4 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.168", %"class.v8::internal::FlagValue.168", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.168", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.168", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.168", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.168", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.168", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", [4 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.168", %"class.v8::internal::FlagValue.168", %"class.v8::internal::FlagValue.168", %"class.v8::internal::FlagValue.168", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue.167", [4 x i8], %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.168", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue.170", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.168", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.168", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.168", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.170", [2 x i8], %"class.v8::internal::FlagValue.167", [4 x i8], %"class.v8::internal::FlagValue.169", %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.168", %"class.v8::internal::FlagValue.168", [4 x i8], %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.177", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.167", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.166", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.170" = type { %"class.std::optional.171" }
%"class.std::optional.171" = type { %"struct.std::_Optional_base.172" }
%"struct.std::_Optional_base.172" = type { %"struct.std::_Optional_payload.174" }
%"struct.std::_Optional_payload.174" = type { %"struct.std::_Optional_payload_base.175" }
%"struct.std::_Optional_payload_base.175" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.169" = type { double }
%"class.v8::internal::FlagValue.168" = type { i32 }
%"class.v8::internal::FlagValue.177" = type { i64 }
%"class.v8::internal::FlagValue.167" = type { i32 }
%"class.v8::internal::FlagValue.166" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"union.std::_Optional_payload_base<v8::internal::compiler::turboshaft::OpEffects>::_Storage" = type { %"struct.v8::internal::compiler::turboshaft::OpEffects" }
%"struct.v8::internal::compiler::turboshaft::OpEffects" = type { %"struct.v8::internal::compiler::turboshaft::EffectDimensions", %"struct.v8::internal::compiler::turboshaft::EffectDimensions", i8, i8 }
%"struct.v8::internal::compiler::turboshaft::EffectDimensions" = type { i8 }
%"struct.std::piecewise_construct_t" = type { i8 }
%"struct.absl::container_internal::PolicyFunctions" = type { i32, i32, i32, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.std::array" = type { [1 x %"class.v8::internal::compiler::turboshaft::RegisterRepresentation"] }
%"class.v8::internal::compiler::turboshaft::RegisterRepresentation" = type { %"class.v8::internal::compiler::turboshaft::MaybeRegisterRepresentation" }
%"class.v8::internal::compiler::turboshaft::MaybeRegisterRepresentation" = type { i8 }
%"struct.std::array.628" = type { [2 x %"class.v8::internal::compiler::turboshaft::RegisterRepresentation"] }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.anon.755 = type { ptr }
%class.anon = type { ptr }
%"struct.v8::internal::compiler::turboshaft::NoChangeCallback" = type { i8 }
%class.anon.92 = type { i8 }
%class.anon.95 = type { ptr }
%class.anon.759 = type { ptr }
%class.anon.98 = type { ptr }
%class.anon.99 = type { i8 }
%class.anon.101 = type { ptr }
%class.anon.700 = type { ptr }
%"class.v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::KeyData>::Snapshot" = type { ptr }
%"class.v8::internal::compiler::turboshaft::SnapshotTable<v8::internal::compiler::turboshaft::MapMaskAndOr>::Snapshot" = type { ptr }
%"class.v8::internal::compiler::turboshaft::SnapshotTable<bool>::Snapshot" = type { ptr }
%"class.v8::internal::compiler::turboshaft::LoopFinder" = type { ptr, ptr, %"class.v8::base::EnumSet", %"class.v8::internal::compiler::turboshaft::FixedBlockSidetable.102", %"class.v8::internal::ZoneUnorderedMap", %"class.v8::internal::ZoneVector.104" }
%"class.v8::base::EnumSet" = type { i8 }
%"class.v8::internal::compiler::turboshaft::FixedBlockSidetable.102" = type { %"class.v8::internal::compiler::turboshaft::detail::FixedSidetable.103" }
%"class.v8::internal::compiler::turboshaft::detail::FixedSidetable.103" = type { %"class.v8::internal::ZoneVector.104" }
%"class.v8::internal::ZoneUnorderedMap" = type { %"class.std::unordered_map" }
%"class.std::unordered_map" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { %"struct.std::__detail::_Hashtable_alloc", ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hashtable_alloc" = type { %"struct.std::__detail::_Hashtable_ebo_helper.108" }
%"struct.std::__detail::_Hashtable_ebo_helper.108" = type { %"class.v8::internal::ZoneAllocator.109" }
%"class.v8::internal::ZoneAllocator.109" = type { ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.v8::internal::ZoneVector.104" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::turboshaft::AnalyzerIterator" = type { ptr, ptr, i64, %"struct.v8::internal::compiler::turboshaft::AnalyzerIterator::StackNode", %"class.v8::internal::compiler::turboshaft::FixedBlockSidetable.132", %"class.v8::internal::ZoneVector.135" }
%"struct.v8::internal::compiler::turboshaft::AnalyzerIterator::StackNode" = type { ptr, i64 }
%"class.v8::internal::compiler::turboshaft::FixedBlockSidetable.132" = type { %"class.v8::internal::compiler::turboshaft::detail::FixedSidetable.133" }
%"class.v8::internal::compiler::turboshaft::detail::FixedSidetable.133" = type { %"class.v8::internal::ZoneVector.134" }
%"class.v8::internal::ZoneVector.134" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.135" = type { ptr, ptr, ptr, ptr }
%"struct.std::pair.713" = type <{ %"class.v8::base::SmallMap<std::map<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::OpIndex>>::iterator", i8, [7 x i8] }>
%"class.v8::base::SmallMap<std::map<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::OpIndex>>::iterator" = type { ptr, %"struct.std::_Rb_tree_iterator.146" }
%"struct.std::_Rb_tree_iterator.146" = type { ptr }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.723" = type { i8 }
%"class.v8::internal::compiler::turboshaft::OpIndex" = type { i32 }
%"struct.v8::internal::compiler::turboshaft::MapMaskAndOr" = type { i64, i64 }
%"class.v8::internal::compiler::MapRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::internal::compiler::HeapObjectRef" = type { %"class.v8::internal::compiler::ObjectRef" }
%"class.v8::internal::compiler::ObjectRef" = type { ptr }
%"class.v8::internal::ZoneCompactSet" = type { %"class.v8::base::PointerWithPayload" }
%"class.v8::base::PointerWithPayload" = type { i64 }
%"struct.v8::internal::compiler::turboshaft::MemoryAddress" = type <{ %"class.v8::internal::compiler::turboshaft::OpIndex", %"class.v8::internal::compiler::turboshaft::OptionalOpIndex", i32, i8, i8, [2 x i8] }>
%"class.v8::internal::compiler::turboshaft::OptionalOpIndex" = type { %"class.v8::internal::compiler::turboshaft::OpIndex" }
%"struct.absl::container_internal::HashKey.312" = type { ptr, ptr }
%"struct.absl::container_internal::HashKey" = type { ptr, ptr }
%"struct.v8::internal::compiler::turboshaft::BaseData" = type { %"class.v8::base::DoublyThreadedList.241", %"class.v8::base::DoublyThreadedList.241" }
%"class.v8::base::DoublyThreadedList.241" = type { %"class.v8::internal::compiler::turboshaft::SnapshotTableKey" }
%"class.v8::internal::compiler::turboshaft::SnapshotTableKey" = type { ptr }
%"struct.std::pair.266" = type { %"class.v8::internal::compiler::turboshaft::OpIndex", %"struct.v8::internal::compiler::turboshaft::BaseData" }
%"struct.std::pair.276" = type { i32, %"class.v8::base::DoublyThreadedList" }
%"class.v8::base::DoublyThreadedList" = type { %"class.v8::internal::compiler::turboshaft::SnapshotTableKey" }
%"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry" = type <{ %"struct.v8::internal::compiler::turboshaft::KeyData", %"class.v8::internal::compiler::turboshaft::OpIndex", i32, i32, [4 x i8] }>
%"struct.v8::internal::compiler::turboshaft::KeyData" = type { %"struct.v8::internal::compiler::turboshaft::MemoryAddress", ptr, %"class.v8::internal::compiler::turboshaft::SnapshotTableKey", ptr, %"class.v8::internal::compiler::turboshaft::SnapshotTableKey" }
%"struct.std::pair.331" = type { %"struct.v8::internal::compiler::turboshaft::MemoryAddress", %"class.v8::internal::compiler::turboshaft::SnapshotTableKey" }
%"struct.std::pair.630" = type <{ %"class.absl::container_internal::raw_hash_set<absl::container_internal::FlatHashMapPolicy<v8::internal::compiler::turboshaft::MemoryAddress, v8::internal::compiler::turboshaft::SnapshotTableKey<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::KeyData>>, absl::hash_internal::Hash<v8::internal::compiler::turboshaft::MemoryAddress>, std::equal_to<v8::internal::compiler::turboshaft::MemoryAddress>, v8::internal::ZoneAllocator<std::pair<const v8::internal::compiler::turboshaft::MemoryAddress, v8::internal::compiler::turboshaft::SnapshotTableKey<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::KeyData>>>>::iterator", i8, [7 x i8] }>
%"class.absl::container_internal::raw_hash_set<absl::container_internal::FlatHashMapPolicy<v8::internal::compiler::turboshaft::MemoryAddress, v8::internal::compiler::turboshaft::SnapshotTableKey<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::KeyData>>, absl::hash_internal::Hash<v8::internal::compiler::turboshaft::MemoryAddress>, std::equal_to<v8::internal::compiler::turboshaft::MemoryAddress>, v8::internal::ZoneAllocator<std::pair<const v8::internal::compiler::turboshaft::MemoryAddress, v8::internal::compiler::turboshaft::SnapshotTableKey<v8::internal::compiler::turboshaft::OpIndex, v8::internal::compiler::turboshaft::KeyData>>>>::iterator" = type { ptr, %union.anon.317 }
%union.anon.317 = type { ptr }
%"struct.absl::container_internal::HashKey.643" = type { ptr, ptr }
%"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry.686" = type { i8, i32, i32 }
%"struct.std::pair.251" = type { %"class.v8::internal::compiler::turboshaft::OpIndex", %"class.v8::internal::compiler::turboshaft::SnapshotTableKey.192" }
%"class.v8::internal::compiler::turboshaft::SnapshotTableKey.192" = type { ptr }
%"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry.679" = type { %"struct.v8::internal::compiler::turboshaft::MapMaskAndOr", i32, i32 }
%"struct.std::pair.649" = type { %"class.v8::internal::compiler::turboshaft::OpIndex", %"class.v8::internal::compiler::turboshaft::SnapshotTableKey.165" }
%"class.v8::internal::compiler::turboshaft::SnapshotTableKey.165" = type { ptr }

$_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockE = comdat any

$_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockE = comdat any

$_ZN2v88internal8compiler10turboshaft10LoopFinderC2EPNS0_4ZoneEPKNS2_5GraphENS_4base7EnumSetINS3_11ConfigFlagsEaEE = comdat any

$_ZN2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE6insertINSK_8iteratorEEEvT_SN_ = comdat any

$_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv = comdat any

$_ZN2v88internal8compiler10turboshaft18MemoryContentTable10InvalidateENS2_7OpIndexENS2_15OptionalOpIndexEi = comdat any

$_ZN2v88internal8compiler10turboshaft18MemoryContentTable4FindERKNS2_6LoadOpE = comdat any

$_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv = comdat any

$_ZN2v88internal8compiler10turboshaft18MemoryContentTable6InsertERKNS2_6LoadOpENS2_7OpIndexE = comdat any

$_ZN2v88internal8compiler10turboshaft18MemoryContentTable23InvalidateMaybeAliasingEv = comdat any

$_ZN2v88internal8compiler10turboshaft18MemoryContentTable6InsertERKNS2_7StoreOpE = comdat any

$_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE9HasKeyForENS2_7OpIndexE = comdat any

$_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE12TryGetKeyForENS2_7OpIndexE = comdat any

$_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3GetENS2_7OpIndexE = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEE4GrowEm = comdat any

$_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3GetENS2_7OpIndexE = comdat any

$_ZN2v88internal8compiler10turboshaft18MemoryContentTable18InvalidateAtOffsetEiNS2_15OptionalOpIndexE = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_7KeyDataEE8LogEntryEE4GrowEm = comdat any

$_ZN2v88internal8compiler10turboshaft18MemoryContentTable22AddKeyInBaseOffsetMapsENS2_16SnapshotTableKeyINS2_7OpIndexENS2_7KeyDataEEE = comdat any

$_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEES8_Lb1EEEmPKvPvm = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE19transfer_n_slots_fnEPvSL_SL_m = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE = comdat any

$_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m = comdat any

$_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSQ_PFvSQ_hmmE = comdat any

$_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE = comdat any

$_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIiEEiLb1EEEmPKvPvm = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE19transfer_n_slots_fnEPvSR_SR_m = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSW_PFvSW_hmmE = comdat any

$_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIiEEiLb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_8iteratorERSK_ = comdat any

$_ZNK2v88internal8compiler10turboshaft11StructGetOp11outputs_repEv = comdat any

$_ZNK2v88internal8compiler10turboshaft21LoadDataViewElementOp11outputs_repEv = comdat any

$_ZNK2v88internal8compiler10turboshaft18LoadTypedElementOp11outputs_repEv = comdat any

$_ZN2v88internal8compiler10turboshaft18MemoryContentTable15InsertImmutableENS2_7OpIndexENS2_15OptionalOpIndexEihhS4_ = comdat any

$_ZN2v88internal8compiler10turboshaft18MemoryContentTable6InsertENS2_7OpIndexENS2_15OptionalOpIndexEihhS4_ = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_push_back_auxIJS7_EEEvDpOT_ = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE17_M_reallocate_mapEmb = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE7emplaceIJSJ_IS7_SB_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESJ_INSN_8iteratorEbEDpOSR_ = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE28find_or_prepare_insert_largeIS7_EESJ_INSN_8iteratorEbERKT_ = comdat any

$_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft13MemoryAddressEEES8_Lb1EEEmPKvPvm = comdat any

$_ZN4absl18container_internal20TransferNRelocatableILm24EEEvPvS2_S2_m = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft13MemoryAddressENS6_16SnapshotTableKeyINS6_7OpIndexENS6_7KeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvST_PFvST_hmmE = comdat any

$_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft13MemoryAddressEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE = comdat any

$_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE2atEm = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE17MoveToNewSnapshotINS2_16NoChangeCallbackEEERNS5_12SnapshotDataENS_4base6VectorIKNS5_8SnapshotEEERKT_ = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataEE4GrowEm = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE16_M_push_back_auxIJRPS7_mEEEvDpOT_ = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE17_M_reallocate_mapEmb = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE17MoveToNewSnapshotINS2_16NoChangeCallbackEEERNS6_12SnapshotDataENS_4base6VectorIKNS6_8SnapshotEEERKT_ = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE12SnapshotDataEE4GrowEm = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_push_back_auxIJRPS8_mEEEvDpOT_ = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE17_M_reallocate_mapEmb = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE17MoveToNewSnapshotIZNS2_27ChangeTrackingSnapshotTableINS2_18MemoryContentTableES4_S5_E16StartNewSnapshotENS_4base6VectorIKNS6_8SnapshotEEEEUlNS2_16SnapshotTableKeyIS4_S5_EERKS4_SJ_E_EERNS6_12SnapshotDataESF_RKT_ = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_7KeyDataEE12SnapshotDataEE4GrowEm = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_7KeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_push_back_auxIJRPS8_mEEEvDpOT_ = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_7KeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE17_M_reallocate_mapEmb = comdat any

$_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E = comdat any

$_ZN2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE6insertERKSB_ = comdat any

$_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexES4_St4lessIS4_ESaISt4pairIKS4_S4_EEE6insertERKS9_ = comdat any

$_ZN2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE16ConvertToRealMapEv = comdat any

$_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS6_EESV_IJEEEEESt17_Rb_tree_iteratorISM_ESt23_Rb_tree_const_iteratorISM_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISM_ERS6_ = comdat any

$_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS6_EEE16_M_push_back_auxIJS6_EEEvDpOT_ = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS6_EEE17_M_reallocate_mapEmb = comdat any

$_ZN4absl18container_internal20TransferNRelocatableILm16EEEvPvS2_S2_m = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSS_PFvSS_hmmE = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE4GrowEm = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE4GrowEm = comdat any

$_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_push_back_auxIJS7_EEEvDpOT_ = comdat any

$_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE17_M_reallocate_mapEmb = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE = comdat any

$_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvST_PFvST_hmmE = comdat any

$_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexES4_St4lessIS4_ESaISt4pairIKS4_S4_EEEixERS8_ = comdat any

$_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS6_ = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8SnapshotEE4GrowEm = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_7KeyDataEE8SnapshotEE4GrowEm = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8SnapshotEE4GrowEm = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIbS4_EENS_4base6VectorIKbEEE_NS2_16NoChangeCallbackEEEvNSF_IKNS5_8SnapshotEEERKT_RKT0_ = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE4GrowEm = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_NS2_16NoChangeCallbackEEEvNSG_IKNS6_8SnapshotEEERKT_RKT0_ = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE4GrowEm = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINS2_18MemoryContentTableES4_S5_E16StartNewSnapshotISJ_EEvNSG_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSG_IKT0_EEEEUlSE_RSH_S10_E_EEvSQ_ST_RSY_ = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE17MoveToNewSnapshotIZNS2_27ChangeTrackingSnapshotTableINS2_18MemoryContentTableES4_S5_E16StartNewSnapshotIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_EEvNSK_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSK_IKT0_EEEEUlSI_RSL_S10_E_EERNS6_12SnapshotDataESQ_ST_ = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE4GrowEm = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIbS4_EENS_4base6VectorIKbEEE_NS2_16NoChangeCallbackEEEvNSF_IKNS5_8SnapshotEEERKT_RKT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_NS2_16NoChangeCallbackEEEvNSG_IKNS6_8SnapshotEEERKT_RKT0_ = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINS2_18MemoryContentTableES4_S5_E16StartNewSnapshotISJ_EEvNSG_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSG_IKT0_EEEEUlSE_RSH_S10_E_EEvSQ_ST_RSY_ = comdat any

$_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE17MoveToNewSnapshotIZNS2_27ChangeTrackingSnapshotTableINS2_18MemoryContentTableES4_S5_E16StartNewSnapshotIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_EEvNSK_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSK_IKT0_EEEEUlSI_RSL_S10_E_EERNS6_12SnapshotDataESQ_ST_ = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_8BaseDataEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE18GetPolicyFunctionsEvE5value = comdat any

$_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIiN2v84base18DoublyThreadedListINS3_8internal8compiler10turboshaft16SnapshotTableKeyINS8_7OpIndexENS8_7KeyDataEEENS8_16OffsetListTraitsEEEEENS_13hash_internal4HashIiEESt8equal_toIiENS6_13ZoneAllocatorISt4pairIKiSE_EEEE18GetPolicyFunctionsEvE5value = comdat any

$_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE4EEEENS_4base6VectorIKS4_EEvE9rep_array = comdat any

$_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0EEEENS_4base6VectorIKS4_EEvE9rep_array = comdat any
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer37StoreLoopSnapshotInForwardPredecessorERKNS2_5BlockE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.fa, ptr %2, align 8
  %i.ff = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE17MoveToNewSnapshotIZNS2_27ChangeTrackingSnapshotTableINS2_18MemoryContentTableES4_S5_E16StartNewSnapshotENS_4base6VectorIKNS6_8SnapshotEEEEUlNS2_16SnapshotTableKeyIS4_S5_EERKS4_SJ_E_EERNS6_12SnapshotDataESF_RKT_(ptr noundef nonnull align 8 dereferenceable(344) %i.fa, ptr nonnull %3, i64 1, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer11ProcessLoadENS2_7OpIndexERKNS2_6LoadOpE(ptr noundef nonnull align 8 dereferenceable(1512) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.723", align 1    ; 3 uses
  %5 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 4 uses
  store i32 %1, ptr %5, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %i.c = and i8 %i.b, 16
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i8 %i.b, 64
  %.not29 = icmp eq i8 %i.d, 0
  br i1 %.not29, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.h = load i16, ptr %i.g, align 2
  %i.i = icmp eq i16 %i.h, 2
  br i1 %i.i, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i32 = load i32, ptr %i.j, align 4
  br label %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit

_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i32 [ %.sroa.0.0.copyload.i.i32, %bb.d ], [ -1, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 4
  tail call void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable10InvalidateENS2_7OpIndexENS2_15OptionalOpIndexEi(ptr noundef nonnull align 8 dereferenceable(496) %i.e, i32 %.sroa.0.0.copyload.i.i, i32 %.sroa.01.0.i, i32 noundef %i.l)
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.o, %bb.e ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp ult i32 %i.r, %1                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE11lower_boundERSA_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE11lower_boundERSA_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.p
  br i1 %i.t, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE11lower_boundERSA_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i33 = load i32, ptr %i.u, align 4
  %i.v = icmp ult i32 %1, %.sroa.0.0.copyload.i.i33
  br i1 %i.v, label %.critedge.i, label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEEixERSA_.exit

.critedge.i:                                      ; preds = %bb.f, %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE11lower_boundERSA_.exit.i, %bb.e
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.f ], [ %.19.i.i.i.i, %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE11lower_boundERSA_.exit.i ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %5, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.w = call ptr @_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS6_EESV_IJEEEEESt17_Rb_tree_iteratorISM_ESt23_Rb_tree_const_iteratorISM_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEEixERSA_.exit

_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEEixERSA_.exit: ; preds = %bb.f, %.critedge.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.y = call i32 @_ZN2v88internal8compiler10turboshaft18MemoryContentTable4FindERKNS2_6LoadOpE(ptr noundef nonnull align 8 dereferenceable(496) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %.not42 = icmp eq i32 %i.y, -1
  br i1 %.not42, label %bb.k, label %switch.lookup

switch.lookup:                                    ; preds = %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEEixERSA_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !7, !align !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = zext i32 %i.y to i64                    ; 2 uses
  %i.af = add i64 %i.ad, %i.ae
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.ag)
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  %.sroa.012.0.copyload = load i8, ptr %i.ai, align 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sroa.011.0.copyload = load i8, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 5
  %.sroa.010.0.copyload = load i8, ptr %i.ak, align 1
  %i.al = zext nneg i8 %.sroa.010.0.copyload to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler10turboshaft18MemoryContentTable6InsertERKNS2_7StoreOpE, i64 %i.al
  %switch.load = load i8, ptr %switch.gep, align 1
  switch i8 %.sroa.012.0.copyload, label %bb.i [
    i8 0, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_115RepIsCompatibleENS2_22RegisterRepresentationES4_NS2_20MemoryRepresentationE.exit
    i8 1, label %bb.g
    i8 2, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_115RepIsCompatibleENS2_22RegisterRepresentationES4_NS2_20MemoryRepresentationE.exit
    i8 3, label %bb.g
    i8 4, label %bb.g
    i8 6, label %bb.j
    i8 7, label %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation26FromRegisterRepresentationENS2_22RegisterRepresentationEb.exit.i
    i8 5, label %bb.h
  ]

bb.g:                                             ; preds = %switch.lookup, %switch.lookup, %switch.lookup
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_115RepIsCompatibleENS2_22RegisterRepresentationES4_NS2_20MemoryRepresentationE.exit

bb.h:                                             ; preds = %switch.lookup
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9) #25
  unreachable

bb.i:                                             ; preds = %switch.lookup
  unreachable

bb.j:                                             ; preds = %switch.lookup
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_115RepIsCompatibleENS2_22RegisterRepresentationES4_NS2_20MemoryRepresentationE.exit

_ZN2v88internal8compiler10turboshaft20MemoryRepresentation26FromRegisterRepresentationENS2_22RegisterRepresentationEb.exit.i: ; preds = %switch.lookup
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_115RepIsCompatibleENS2_22RegisterRepresentationES4_NS2_20MemoryRepresentationE.exit

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_115RepIsCompatibleENS2_22RegisterRepresentationES4_NS2_20MemoryRepresentationE.exit: ; preds = %switch.lookup, %switch.lookup, %bb.g, %bb.j, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation26FromRegisterRepresentationENS2_22RegisterRepresentationEb.exit.i
  %.0.i.i6.i = phi i8 [ 5, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation26FromRegisterRepresentationENS2_22RegisterRepresentationEb.exit.i ], [ 4, %bb.j ], [ 2, %switch.lookup ], [ 2, %switch.lookup ], [ 3, %bb.g ]
  %i.am = shl nuw nsw i8 1, %switch.load
  %i.an = shl nuw nsw i8 1, %.0.i.i6.i
  %.not.i = icmp eq i8 %i.am, %i.an
  %i.ao = icmp eq i8 %.sroa.011.0.copyload, %.sroa.012.0.copyload
  %spec.select.i = select i1 %.not.i, i1 %i.ao, i1 false
  br i1 %spec.select.i, label %.critedge, label %bb.k

.critedge:                                        ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_115RepIsCompatibleENS2_22RegisterRepresentationES4_NS2_20MemoryRepresentationE.exit
  %.sroa.2.0.insert.shift.i = shl nuw i64 %i.ae, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, 1
  %.sroa.07.0.copyload = load i32, ptr %5, align 4
  %i.ap = lshr i32 %.sroa.07.0.copyload, 4
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.at, align 4
  br label %bb.n

bb.k:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_115RepIsCompatibleENS2_22RegisterRepresentationES4_NS2_20MemoryRepresentationE.exit, %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEEixERSA_.exit
  %.sroa.03.0.copyload = load i32, ptr %5, align 4 ; 2 uses
  %i.au = lshr i32 %.sroa.03.0.copyload, 4
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store i64 -4294967296, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !7, !align !8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.0.copyload.i.i34 = load i32, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = zext i32 %.sroa.0.0.copyload.i.i34 to i64
  %i.bg = add i64 %i.be, %i.bf
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 4
  %.not44 = icmp eq i8 %i.bi, 75
  br i1 %.not44, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bk = load i8, ptr %i.bj, align 4
  %i.bl = icmp eq i8 %i.bk, 7
  br i1 %i.bl, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  call void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable6InsertERKNS2_6LoadOpENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(496) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %2, i32 %.sroa.03.0.copyload)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.critedge, %bb.a, %bb.m, %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer12ProcessStoreENS2_7OpIndexERKNS2_7StoreOpE(ptr noundef nonnull align 8 dereferenceable(1512) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.4.i = alloca %"struct.v8::internal::compiler::turboshaft::MapMaskAndOr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ne i32 %i.e, 1
  %.not29 = select i1 %i.c, i1 true, i1 %i.f
  br i1 %.not29, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 888
  tail call void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable23InvalidateMaybeAliasingEv(ptr noundef nonnull align 8 dereferenceable(496) %i.g)
  %i.h = load i8, ptr %i.a, align 4
  %i.i = and i8 %i.h, 16
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %.critedge, label %bb.d

.thread:                                          ; preds = %bb.a
  %i.j = and i8 %i.b, 16
  %.not25 = icmp eq i8 %i.j, 0
  br i1 %.not25, label %.critedge, label %.thread26

.thread26:                                        ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = icmp eq i16 %i.n, 3
  br i1 %i.o, label %bb.c, label %_ZN2v88internal8compiler10turboshaft18MemoryContentTable10InvalidateERKNS2_7StoreOpE.exit

bb.c:                                             ; preds = %.thread26
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i5.i = load i32, ptr %i.p, align 4
  br label %_ZN2v88internal8compiler10turboshaft18MemoryContentTable10InvalidateERKNS2_7StoreOpE.exit

_ZN2v88internal8compiler10turboshaft18MemoryContentTable10InvalidateERKNS2_7StoreOpE.exit: ; preds = %.thread26, %bb.c
  %.sroa.01.0.i.i = phi i32 [ %.sroa.0.0.copyload.i.i5.i, %bb.c ], [ -1, %.thread26 ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i32, ptr %i.q, align 4
  tail call void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable10InvalidateENS2_7OpIndexENS2_15OptionalOpIndexEi(ptr noundef nonnull align 8 dereferenceable(496) %i.k, i32 %.sroa.0.0.copyload.i.i.i, i32 %.sroa.01.0.i.i, i32 noundef %i.r)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZN2v88internal8compiler10turboshaft18MemoryContentTable10InvalidateERKNS2_7StoreOpE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 888
  tail call void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable6InsertERKNS2_7StoreOpE(ptr noundef nonnull align 8 dereferenceable(496) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.t, align 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.v = tail call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE9HasKeyForENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.u, i32 %.sroa.0.0.copyload.i.i)
  br i1 %i.v, label %bb.e, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3SetENS2_7OpIndexEb.exit

bb.e:                                             ; preds = %bb.d
  %i.w = tail call ptr @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.u, i32 %.sroa.0.0.copyload.i.i) ; 3 uses
  %i.x = load i8, ptr %i.w, align 4, !range !5, !noundef !7
  %.not30 = icmp eq i8 %i.x, 0
  br i1 %.not30, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3SetENS2_7OpIndexEb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE9push_backEOS7_.exit.i.i, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = ptrtoint ptr %i.ab to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 4
  %i.ak = add nsw i64 %i.aj, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 noundef %i.ak)
  %.pre.i.i.i.i = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE9push_backEOS7_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE9push_backEOS7_.exit.i.i: ; preds = %bb.g, %bb.f
  %i.al = phi ptr [ %i.z, %bb.f ], [ %.pre.i.i.i.i, %bb.g ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.am, ptr %i.y, align 8
  store ptr %i.w, ptr %i.al, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i, align 1
  store i8 0, ptr %i.w, align 4
  br label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3SetENS2_7OpIndexEb.exit

_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3SetENS2_7OpIndexEb.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE9push_backEOS7_.exit.i.i, %bb.e, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3SetENS2_7OpIndexEb.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = icmp eq i16 %i.ar, 3
  br i1 %i.as, label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit, label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread

_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit: ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i18 = load i32, ptr %i.at, align 4
  %.not31 = icmp eq i32 %.sroa.0.0.copyload.i.i18, -1
  br i1 %.not31, label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread, label %.critedge

_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread: ; preds = %bb.h, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.av = load i64, ptr %i.au, align 8
  %.not.i.i.i = icmp ult i64 %i.av, 131072
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit, label %bb.i, !prof !9

bb.i:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp ult i64 %i.ax, 2
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  br i1 %i.ay, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.az, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 872
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ba, align 8 ; 2 uses
  %i.bb = load i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.bc = icmp slt i8 %i.bb, -1
  br i1 %i.bc, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.bd = phi ptr [ %i.bg, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.j ]
  %i.be = phi ptr [ %i.bf, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.j ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bh = load i8, ptr %i.bf, align 1
  %i.bi = icmp slt i8 %i.bh, -1
  br i1 %i.bi, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit, !llvm.loop !21

_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit: ; preds = %.lr.ph.i.i.i, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread, %bb.i, %bb.j
  %.sroa.6.0.i.i = phi ptr [ undef, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread ], [ %i.az, %bb.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.j ], [ %i.bg, %.lr.ph.i.i.i ]
  %.sroa.0.0.i.i = phi ptr [ null, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread ], [ @_ZN4absl18container_internal11kSooControlE, %bb.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.j ], [ %i.bf, %.lr.ph.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 712
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge, %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit
  %.sroa.019.0 = phi ptr [ %.sroa.0.0.i.i, %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit ], [ %.sroa.019.0.be, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge ] ; 6 uses
  %.sroa.9.0 = phi ptr [ %.sroa.6.0.i.i, %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit ], [ %.sroa.9.1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge ] ; 2 uses
  %i.bn = icmp eq ptr %.sroa.019.0, null          ; 2 uses
  %i.bo = icmp eq ptr %.sroa.019.0, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.bn, %i.bo
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit
  %i.bp = load i8, ptr %.sroa.019.0, align 1
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.k, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit
  br i1 %i.bo, label %bb.m, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit, !prof !9

bb.m:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #22
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.bn, label %.critedge, label %bb.n

bb.n:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit
  %i.br = load i8, ptr %.sroa.019.0, align 1
  %i.bs = icmp sgt i8 %i.br, -1
  br i1 %i.bs, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratordeEv.exit, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratordeEv.exit: ; preds = %bb.n
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %i.bt = load i64, ptr %.sroa.3.0.copyload, align 8
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = icmp ne i64 %i.bw, -1
  %.not10.i = select i1 %i.bu, i1 true, i1 %i.bx
  br i1 %.not10.i, label %bb.p, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i

bb.p:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratordeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0.copyload, i64 16, i1 false)
  %i.by = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bz = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.ca = icmp ult ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.q, !prof !6

bb.q:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr %i.bm, align 8
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 40
  %i.cg = add nsw i64 %i.cf, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 noundef %i.cg)
  %.pre.i.i.i = load ptr, ptr %i.bj, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit: ; preds = %bb.p, %bb.q
  %i.ch = phi ptr [ %i.by, %bb.p ], [ %.pre.i.i.i, %bb.q ] ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store ptr %i.ci, ptr %i.bj, align 8
  store ptr %.sroa.3.0.copyload, ptr %i.ch, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store i64 -1, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  store i64 0, ptr %.sroa.3.0.copyload, align 8
  store i64 -1, ptr %i.bv, align 8
  %.pre = load i8, ptr %.sroa.019.0, align 1
  %i.cj = icmp sgt i8 %.pre, -1
  br i1 %i.cj, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i, label %bb.r, !prof !22

bb.r:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.24) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratordeEv.exit, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.019.0, i64 1 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 16 ; 2 uses
  %i.cm = load i8, ptr %i.ck, align 1             ; 2 uses
  %i.cn = icmp slt i8 %i.cm, -1
  br i1 %i.cn, label %.lr.ph.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i:                                       ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i, %.lr.ph.i.i
  %i.co = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %i.cl, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i ]
  %i.cp = phi ptr [ %i.cq, %.lr.ph.i.i ], [ %i.ck, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %i.cs = load i8, ptr %i.cq, align 1             ; 2 uses
  %i.ct = icmp slt i8 %i.cs, -1
  br i1 %i.ct, label %.lr.ph.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !21

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i
  %.sroa.019.1 = phi ptr [ %i.ck, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i ], [ %i.cq, %.lr.ph.i.i ]
  %.sroa.9.1 = phi ptr [ %i.cl, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i ], [ %i.cr, %.lr.ph.i.i ]
  %i.cu = phi i8 [ %i.cm, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i ], [ %i.cs, %.lr.ph.i.i ]
  %i.cv = icmp eq i8 %i.cu, -1
  br i1 %i.cv, label %bb.s, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge, !prof !9

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i, %bb.s
  %.sroa.019.0.be = phi ptr [ null, %bb.s ], [ %.sroa.019.1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit

bb.s:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge

.critedge:                                        ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit, %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3SetENS2_7OpIndexEb.exit, %.thread, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer15ProcessAllocateENS2_7OpIndexERKNS2_10AllocateOpE(ptr noundef nonnull align 8 dereferenceable(1512) %0, i32 %1, ptr noundef nonnull readnone align 4 captures(none) dereferenceable(6) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = tail call ptr @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.a, i32 %1) ; 3 uses
  %i.c = load i8, ptr %i.b, align 4, !range !5, !noundef !7
  %.not.not = icmp eq i8 %i.c, 0
  br i1 %.not.not, label %bb.b, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3SetENS2_7OpIndexEb.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE9push_backEOS7_.exit.i.i, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 4
  %i.p = add nsw i64 %i.o, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.p)
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE9push_backEOS7_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE9push_backEOS7_.exit.i.i: ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.e, %bb.b ], [ %.pre.i.i.i.i, %bb.c ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.d, align 8
  store ptr %i.b, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 9
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i, align 1
  store i8 1, ptr %i.b, align 4
  br label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3SetENS2_7OpIndexEb.exit

_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3SetENS2_7OpIndexEb.exit: ; preds = %bb.a, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE9push_backEOS7_.exit.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer17InvalidateAllMapsEv(ptr noundef nonnull align 8 dereferenceable(1512) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer11ProcessCallENS2_7OpIndexERKNS2_6CallOpE(ptr noundef nonnull align 8 dereferenceable(1512) %0, i32 %1, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(20) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8
  %i.c = and i32 %.sroa.0.0.copyload.i, 12
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !align !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 8
  %i.i = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.j = add i64 %i.i, %i.h
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = icmp eq i8 %i.l, 75
  %..i = select i1 %i.m, ptr %i.k, ptr null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i64 @_ZN2v88internal8compiler10turboshaft15TryGetBuiltinIdEPKNS2_10ConstantOpEPNS1_12JSHeapBrokerE(ptr noundef %..i, ptr noundef %i.o) #22
  %i.q = and i64 %i.p, 8589934591                 ; 2 uses
  %or.cond = icmp eq i64 %i.q, 4294967428
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.v, align 8
  %i.w = trunc i32 %.sroa.0.0.copyload.i.i.i.i to i1
  %i.x = select i1 %i.w, i64 2, i64 1
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.x
  %.sroa.03.0.copyload = load i32, ptr %i.y, align 4
  tail call void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable10InvalidateENS2_7OpIndexENS2_15OptionalOpIndexEi(ptr noundef nonnull align 8 dereferenceable(496) %i.r, i32 %.sroa.03.0.copyload, i32 -1, i32 noundef 16)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.z = load i8, ptr %2, align 8
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.af = load i16, ptr %i.ae, align 2            ; 2 uses
  %i.ag = zext i16 %i.af to i64
  %.idx.i = shl nuw nsw i64 %i.ag, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.af, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer30InvalidateAllNonAliasingInputsERKNS2_9OperationE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.011.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.ad, %bb.d ] ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  tail call void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer17InvalidateIfAliasENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(1512) %0, i32 %.sroa.01.0.copyload.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %.011.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer30InvalidateAllNonAliasingInputsERKNS2_9OperationE.exit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer30InvalidateAllNonAliasingInputsERKNS2_9OperationE.exit: ; preds = %.lr.ph.i, %bb.d
  %or.cond18 = icmp eq i64 %i.q, 4294968237
  br i1 %or.cond18, label %bb.e, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3SetENS2_7OpIndexEb.exit

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer30InvalidateAllNonAliasingInputsERKNS2_9OperationE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ak = tail call ptr @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.aj, i32 %1) ; 3 uses
  %i.al = load i8, ptr %i.ak, align 4, !range !5, !noundef !7
  %.not19.not = icmp eq i8 %i.al, 0
  br i1 %.not19.not, label %bb.f, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3SetENS2_7OpIndexEb.exit

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp ult ptr %i.an, %i.ap
  br i1 %i.aq, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE9push_backEOS7_.exit.i.i, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4
  %i.ay = add nsw i64 %i.ax, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 noundef %i.ay)
  %.pre.i.i.i.i = load ptr, ptr %i.am, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE9push_backEOS7_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE9push_backEOS7_.exit.i.i: ; preds = %bb.g, %bb.f
  %i.az = phi ptr [ %i.an, %bb.f ], [ %.pre.i.i.i.i, %bb.g ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.ba, ptr %i.am, align 8
  store ptr %i.ak, ptr %i.az, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 9
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i, align 1
  store i8 1, ptr %i.ak, align 4
  br label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3SetENS2_7OpIndexEb.exit

_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3SetENS2_7OpIndexEb.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE9push_backEOS7_.exit.i.i, %bb.e, %_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer30InvalidateAllNonAliasingInputsERKNS2_9OperationE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 888
  tail call void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable23InvalidateMaybeAliasingEv(ptr noundef nonnull align 8 dereferenceable(496) %i.bb)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE3SetENS2_7OpIndexEb.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer16ProcessAssumeMapENS2_7OpIndexERKNS2_11AssumeMapOpE(ptr noundef nonnull align 8 dereferenceable(1512) %0, i32 %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.4.i.i = alloca %"struct.v8::internal::compiler::turboshaft::MapMaskAndOr", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.c = tail call { i64, i64 } @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.b, i32 %.sroa.0.0.copyload.i.i) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 3 uses
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.copyload, ptr %4, align 8
  %i.g = icmp eq i64 %.sroa.0.0.copyload, 1
  br i1 %i.g, label %_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %.sroa.0.0.copyload, 3
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader.i, label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i

_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i: ; preds = %bb.b
  %i.j = add i64 %.sroa.0.0.copyload, -2
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.not14.i = icmp eq i64 %i.m, 0
  br i1 %.not14.i, label %_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i, %bb.b
  %.0.i.i25.i = phi i64 [ %i.m, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i ], [ 1, %bb.b ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.sroa.412.017.i = phi i64 [ %i.an, %.lr.ph.i ], [ -1, %.lr.ph.preheader.i ]
  %.sroa.010.016.i = phi i64 [ %i.am, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.5.015.i = phi i64 [ %i.ao, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.n = call ptr @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE2atEm(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %.sroa.5.015.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.n, ptr %3, align 8
  %i.o = call ptr @_ZNK2v88internal8compiler9ObjectRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = xor i64 %i.p, -1
  %i.r = shl i64 %i.p, 21
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = lshr i64 %i.s, 24
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, 265                        ; 2 uses
  %i.w = lshr i64 %i.v, 14
  %i.x = xor i64 %i.w, %i.v
  %i.y = mul i64 %i.x, 21                         ; 2 uses
  %i.z = lshr i64 %i.y, 28
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = mul i64 %i.aa, 8398540807049701781      ; 2 uses
  %i.ac = lshr i64 %i.ab, 47
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = mul i64 %i.ad, 3866779316627607737      ; 2 uses
  %i.af = lshr i64 %i.ae, 12
  %i.ag = xor i64 %i.af, %i.ae                    ; 2 uses
  %i.ah = shl i64 %i.ag, 25
  %i.ai = xor i64 %i.ah, %i.ag                    ; 2 uses
  %i.aj = lshr i64 %i.ai, 27
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = mul i64 %i.ak, 2685821657736338717      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.am = or i64 %i.al, %.sroa.010.016.i          ; 2 uses
  %i.an = and i64 %i.al, %.sroa.412.017.i         ; 2 uses
  %i.ao = add nuw i64 %.sroa.5.015.i, 1           ; 2 uses
  %.not.i = icmp eq i64 %i.ao, %.0.i.i25.i
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit.loopexit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit.loopexit: ; preds = %.lr.ph.i
  %i.ap = or i64 %i.am, %i.d
  %i.aq = and i64 %i.an, %i.e
  br label %_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit

_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit.loopexit, %bb.a, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i
  %.sroa.010.0.lcssa.i = phi i64 [ %i.d, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i ], [ %i.d, %bb.a ], [ %i.ap, %_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit.loopexit ] ; 3 uses
  %.sroa.412.0.lcssa.i = phi i64 [ %i.e, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i ], [ %i.e, %bb.a ], [ %i.aq, %_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit.loopexit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ar = call ptr @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.b, i32 %.sroa.0.0.copyload.i.i) ; 5 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = icmp ne i64 %i.as, %.sroa.010.0.lcssa.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = icmp ne i64 %i.av, %.sroa.412.0.lcssa.i
  %.not10.i.i = select i1 %i.at, i1 true, i1 %i.aw
  br i1 %.not10.i.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_7OpIndexES4_.exit

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = icmp ult ptr %i.ay, %i.ba
  br i1 %i.bb, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE9push_backEOS8_.exit.i.i, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = ptrtoint ptr %i.ba to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 40
  %i.bj = add nsw i64 %i.bi, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 noundef %i.bj)
  %.pre.i.i.i.i = load ptr, ptr %i.ax, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE9push_backEOS8_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE9push_backEOS8_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.bk = phi ptr [ %i.ay, %bb.c ], [ %.pre.i.i.i.i, %bb.d ] ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store ptr %i.bl, ptr %i.ax, align 8
  store ptr %i.ar, ptr %i.bk, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i64 %.sroa.010.0.lcssa.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store i64 %.sroa.412.0.lcssa.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  store i64 %.sroa.010.0.lcssa.i, ptr %i.ar, align 8
  store i64 %.sroa.412.0.lcssa.i, ptr %i.au, align 8
  br label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_7OpIndexES4_.exit

_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_7OpIndexES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft17ComputeMinMaxHashENS0_14ZoneCompactSetINS1_6MapRefEEE.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE9push_backEOS8_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer13ProcessChangeENS2_7OpIndexERKNS2_8ChangeOpE(ptr noundef nonnull align 8 dereferenceable(1512) %0, i32 %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.723", align 1    ; 3 uses
  %5 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 3 uses
  %6 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 5 uses
  store i32 %1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 -1, ptr %6, align 4
  %.0.copyload.i.i.i = load i64, ptr %2, align 4
  %i.a = and i64 %.0.copyload.i.i.i, -4294967041
  %i.b = icmp eq i64 %i.a, 281526516318277
  br i1 %i.b, label %bb.b, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !align !8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.e, align 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.k, align 4
  %i.l = and i64 %.0.copyload.i.i.i.i, 72057589743026175
  %or.cond.i = icmp eq i64 %i.l, 285881613156680
  br i1 %or.cond.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i27.i = load i32, ptr %i.m, align 4 ; 4 uses
  %i.n = zext i32 %.sroa.0.0.copyload.i.i27.i to i64
  %i.o = add i64 %i.n, %i.h
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4
  %.not35.i = icmp eq i8 %i.q, 77
  br i1 %.not35.i, label %bb.d, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.s = load i8, ptr %i.r, align 1
  switch i8 %i.s, label %bb.e [
    i8 0, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
    i8 1, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
    i8 2, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
    i8 3, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
    i8 8, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
    i8 4, label %bb.f
    i8 5, label %bb.f
    i8 9, label %bb.f
    i8 18, label %bb.f
    i8 6, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
    i8 7, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
    i8 10, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
    i8 19, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
    i8 11, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
    i8 12, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
    i8 13, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
    i8 17, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
    i8 14, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
    i8 15, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
    i8 16, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
    i8 20, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
    i8 21, label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  store i32 %.sroa.0.0.copyload.i.i27.i, ptr %6, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.v, %bb.f ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.w, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp ult i32 %i.y, %.sroa.0.0.copyload.i.i27.i ; 2 uses
  %.19.i.i.i.i = select i1 %i.z, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.z, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE11lower_boundERSA_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE11lower_boundERSA_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.aa = icmp eq ptr %.19.i.i.i.i, %i.w
  br i1 %i.aa, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE11lower_boundERSA_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ab, align 4
  %i.ac = icmp ult i32 %.sroa.0.0.copyload.i.i27.i, %.sroa.0.0.copyload.i.i
  br i1 %i.ac, label %.critedge.i, label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEEixERSA_.exit

.critedge.i:                                      ; preds = %bb.g, %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE11lower_boundERSA_.exit.i, %bb.f
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.g ], [ %.19.i.i.i.i, %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEE11lower_boundERSA_.exit.i ], [ %i.w, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %6, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ad = call ptr @_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS0_4base8SmallMapISt3mapIS4_S4_St4lessIS4_ESaIS5_IS6_S4_EEELm4ENS7_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEEEESt10_Select1stISM_ESB_SaISM_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS6_EESV_IJEEEEESt17_Rb_tree_iteratorISM_ESt23_Rb_tree_const_iteratorISM_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEEixERSA_.exit

_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEEixERSA_.exit: ; preds = %bb.g, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.ad, %.critedge.i ], [ %.19.i.i.i.i, %bb.g ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 5 uses
  switch i64 %i.af, label %.lr.ph.i [
    i64 -1, label %bb.h
    i64 0, label %._crit_edge23.i
  ], !prof !23

.lr.ph.i:                                         ; preds = %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEEixERSA_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEEixERSA_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.ai = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexES4_St4lessIS4_ESaISt4pairIKS4_S4_EEEixERS8_(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %_ZN2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEixERSA_.exit

bb.i:                                             ; preds = %bb.j, %.lr.ph.i
  %.01321.i = phi i64 [ %i.af, %.lr.ph.i ], [ %i.am, %bb.j ] ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ag, i64 %.01321.i
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp eq i32 %1, %i.ak
  br i1 %i.al, label %.loopexit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = add i64 %.01321.i, -1                   ; 2 uses
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !24

._crit_edge.i:                                    ; preds = %bb.j
  %i.an = icmp eq i64 %i.af, 4
  br i1 %i.an, label %bb.k, label %._crit_edge23.i, !prof !9

bb.k:                                             ; preds = %._crit_edge.i
  call preserve_mostcc void @_ZN2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE16ConvertToRealMapEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ae)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.ap = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexES4_St4lessIS4_ESaISt4pairIKS4_S4_EEEixERS8_(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %_ZN2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEixERSA_.exit

._crit_edge23.i:                                  ; preds = %_ZNSt3mapIN2v88internal8compiler10turboshaft7OpIndexENS0_4base8SmallMapIS_IS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEELm4ENS5_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEES8_SaIS9_ISA_SK_EEEixERSA_.exit, %._crit_edge.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.af ; 2 uses
  store i32 %1, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  store i32 -1, ptr %i.as, align 4
  %i.at = add i64 %i.af, 1
  store i64 %i.at, ptr %i.ae, align 8
  br label %_ZN2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEixERSA_.exit

.loopexit.i:                                      ; preds = %bb.i
  %i.au = getelementptr [8 x i8], ptr %i.ag, i64 %.01321.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  br label %_ZN2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEixERSA_.exit

_ZN2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEixERSA_.exit: ; preds = %bb.h, %bb.k, %._crit_edge23.i, %.loopexit.i
  %.3.i = phi ptr [ %i.ai, %bb.h ], [ %i.ap, %bb.k ], [ %i.as, %._crit_edge23.i ], [ %i.av, %.loopexit.i ]
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %.3.i, align 4
  br label %_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread

_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_.exit.thread: ; preds = %bb.c, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.b, %bb.a, %_ZN2v84base8SmallMapISt3mapINS_8internal8compiler10turboshaft7OpIndexES6_St4lessIS6_ESaISt4pairIKS6_S6_EEELm4ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEEixERSA_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i6 = load i32, ptr %i.aw, align 4
  call void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer17InvalidateIfAliasENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(1512) %0, i32 %.sroa.0.0.copyload.i.i6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer15DcheckWordBinopENS2_7OpIndexERKNS2_11WordBinopOpE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(1512) %0, i32 %1, ptr noundef nonnull readnone align 4 captures(none) dereferenceable(6) %2) local_unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer16ProcessAtomicRMWENS2_7OpIndexERKNS2_11AtomicRMWOpE(ptr noundef nonnull align 8 dereferenceable(1512) %0, i32 %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(9) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 836), align 4, !range !5, !noundef !7
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer17InvalidateIfAliasENS2_7OpIndexE:bb.a
  %i.u = phi ptr [ %i.i, %bb.c ], [ %.pre.i.i.i, %bb.d ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.h, align 8
  store ptr %i.c, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 1
  store i8 0, ptr %i.c, align 4
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit, %bb.b, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !7, !align !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = zext i32 %1 to i64
  %i.ac = add i64 %i.aa, %i.ab
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 4
  %.not = icmp eq i8 %i.ae, 92
  br i1 %.not, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ah = load i16, ptr %i.ag, align 2            ; 2 uses
  %i.ai = zext i16 %i.ah to i64
  %.idx = shl nuw nsw i64 %i.ai, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx
  %.not1722 = icmp eq i16 %i.ah, 0
  br i1 %.not1722, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.023 = phi ptr [ %i.ak, %.lr.ph ], [ %i.af, %bb.f ] ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %.023, align 4
  tail call void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer17InvalidateIfAliasENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(1512) %0, i32 %.sroa.01.0.copyload)
  %i.ak = getelementptr inbounds nuw i8, ptr %.023, i64 4 ; 2 uses
  %.not17 = icmp eq ptr %i.ak, %i.aj
  br i1 %.not17, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableIbNS2_9NoKeyDataEE12TryGetKeyForENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
  %sext.i.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i.i, 48
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.l, %i.m
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i.i14.i.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i = phi i64 [ %i.s, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i8.i.i, %i.b    ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not46.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not46.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i = phi i16 [ %i.am, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.b                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %.thread33.i.i.i, label %bb.f, !prof !6

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ag ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.al = add i16 %.sroa.017.047.i.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.047.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i, !prof !9

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !35

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread33.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.ak, %.thread33.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.ah, %.thread33.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE10find_largeIS7_EENSM_8iteratorERSJ_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 4 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.at = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE4findIS7_EENSM_14const_iteratorERSJ_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit, !prof !9

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #22
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit
  %.sroa.06.0 = phi ptr [ %i.bb, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit ], [ undef, %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit ]
  %.sroa.2.0 = phi i8 [ 1, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorptEv.exit ], [ 0, %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyIbNS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SA_EEEE14const_iteratorESP_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.06.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer17InvalidateAllMapsEv(ptr noundef nonnull align 8 dereferenceable(1512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.4.i = alloca %"struct.v8::internal::compiler::turboshaft::MapMaskAndOr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 888
  tail call void @_ZN2v88internal8compiler10turboshaft18MemoryContentTable18InvalidateAtOffsetEiNS2_15OptionalOpIndexE(ptr noundef nonnull align 8 dereferenceable(496) %i.a, i32 noundef 0, i32 -1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.c = load i64, ptr %i.b, align 8
  %.not.i.i.i = icmp ult i64 %i.c, 131072
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ult i64 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  br i1 %i.f, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 872
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.h, align 8 ; 2 uses
  %i.i = load i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.j = icmp slt i8 %i.i, -1
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ]
  %i.l = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.o = load i8, ptr %i.m, align 1
  %i.p = icmp slt i8 %i.o, -1
  br i1 %i.p, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit, !llvm.loop !21

_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit: ; preds = %.lr.ph.i.i.i, %bb.a, %bb.b, %bb.c
  %.sroa.6.0.i.i = phi ptr [ undef, %bb.a ], [ %i.g, %bb.b ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ], [ %i.n, %.lr.ph.i.i.i ]
  %.sroa.0.0.i.i = phi ptr [ null, %bb.a ], [ @_ZN4absl18container_internal11kSooControlE, %bb.b ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.c ], [ %i.m, %.lr.ph.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 712
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge, %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit
  %.sroa.05.0 = phi ptr [ %.sroa.0.0.i.i, %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit ], [ %.sroa.05.0.be, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge ] ; 6 uses
  %.sroa.9.0 = phi ptr [ %.sroa.6.0.i.i, %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE5beginEv.exit ], [ %.sroa.9.1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge ] ; 2 uses
  %i.u = icmp eq ptr %.sroa.05.0, null            ; 2 uses
  %i.v = icmp eq ptr %.sroa.05.0, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.u, %i.v
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit
  %i.w = load i8, ptr %.sroa.05.0, align 1
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.d, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit
  br i1 %i.v, label %bb.f, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit, !prof !9

bb.f:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #22
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit
  ret void

bb.h:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorESQ_.exit
  %i.y = load i8, ptr %.sroa.05.0, align 1
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratordeEv.exit, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratordeEv.exit: ; preds = %bb.h
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %i.aa = load i64, ptr %.sroa.3.0.copyload, align 8
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp ne i64 %i.ad, -1
  %.not10.i = select i1 %i.ab, i1 true, i1 %i.ae
  br i1 %.not10.i, label %bb.j, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i

bb.j:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratordeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0.copyload, i64 16, i1 false)
  %i.af = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.ag = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ah = icmp ult ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.t, align 8
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 40
  %i.an = add nsw i64 %i.am, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.an)
  %.pre.i.i.i = load ptr, ptr %i.q, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit: ; preds = %bb.j, %bb.k
  %i.ao = phi ptr [ %i.af, %bb.j ], [ %.pre.i.i.i, %bb.k ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %i.ap, ptr %i.q, align 8
  store ptr %.sroa.3.0.copyload, ptr %i.ao, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i64 -1, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  store i64 0, ptr %.sroa.3.0.copyload, align 8
  store i64 -1, ptr %i.ac, align 8
  %.pre = load i8, ptr %.sroa.05.0, align 1
  %i.aq = icmp sgt i8 %.pre, -1
  br i1 %i.aq, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i, label %bb.l, !prof !22

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.24) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratordeEv.exit, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 1 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 16 ; 2 uses
  %i.at = load i8, ptr %i.ar, align 1             ; 2 uses
  %i.au = icmp slt i8 %i.at, -1
  br i1 %i.au, label %.lr.ph.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i:                                       ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i, %.lr.ph.i.i
  %i.av = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %i.as, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i ]
  %i.aw = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %i.ar, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.az = load i8, ptr %i.ax, align 1             ; 2 uses
  %i.ba = icmp slt i8 %i.az, -1
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !21

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i
  %.sroa.05.1 = phi ptr [ %i.ar, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i ], [ %i.ax, %.lr.ph.i.i ]
  %.sroa.9.1 = phi ptr [ %i.as, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i ], [ %i.ay, %.lr.ph.i.i ]
  %i.bb = phi i8 [ %i.at, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator14assert_is_fullEPKc.exit.i ], [ %i.az, %.lr.ph.i.i ]
  %i.bc = icmp eq i8 %i.bb, -1
  br i1 %i.bc, label %bb.m, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge, !prof !9

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i, %bb.m
  %.sroa.05.0.be = phi ptr [ null, %bb.m ], [ %.sroa.05.1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit

bb.m:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iterator21skip_empty_or_deletedEv.exit.i
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE8iteratorppEv.exit.backedge
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_14const_iteratorERSK_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_14const_iteratorERSK_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
  %sext.i.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i.i, 48
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.l, %i.m
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i.i14.i.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i = phi i64 [ %i.s, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i8.i.i, %i.b    ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not46.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not46.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i = phi i16 [ %i.am, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.b                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %.thread33.i.i.i, label %bb.f, !prof !6

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ag ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.al = add i16 %.sroa.017.047.i.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.047.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit.i.i, !prof !9

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !37

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread33.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.ak, %.thread33.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.ah, %.thread33.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_14const_iteratorERSK_.exit

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_14const_iteratorERSK_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE10find_largeIS7_EENSN_8iteratorERSK_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 4 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.at = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_14const_iteratorERSK_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE4findIS7_EENSN_14const_iteratorERSK_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorESQ_.exit, !prof !9

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #22
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorESQ_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorESQ_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorptEv.exit, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorptEv.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.az, align 8 ; 2 uses
  %.sroa.01.0.copyload = load i64, ptr %.sroa.0.0.copyload, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorESQ_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorptEv.exit
  %.sroa.01.0 = phi i64 [ %.sroa.01.0.copyload, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorptEv.exit ], [ 0, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorESQ_.exit ]
  %.sroa.3.0 = phi i64 [ %.sroa.3.0.copyload, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorptEv.exit ], [ -1, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS6_12MapMaskAndOrENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SB_EEEE14const_iteratorESQ_.exit ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.01.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27IsInt32TruncatedLoadPatternERKNS2_5GraphENS2_7OpIndexERKNS2_8ChangeOpEPS6_SA_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(328) %0, i32 %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %.0.copyload.i.i = load i64, ptr %2, align 4
  %i.a = and i64 %.0.copyload.i.i, -4294967041
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIbS4_EENS_4base6VectorIKbEEE_NS2_16NoChangeCallbackEEEvNSF_IKNS5_8SnapshotEEERKT_RKT0_:bb.a
.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.ae, %bb.ad, %.lr.ph76.split
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 %2 ; 2 uses
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.ej, i64 %i.r ; 5 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ai, %.lr.ph.preheader.i.i.i.i.i.i
  %.041.i.i.i.i.i.i = phi i64 [ %i.fd, %bb.ai ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02940.i.i.i.i.i.i = phi ptr [ %i.fc, %bb.ai ], [ %i.ej, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %i.er = load i8, ptr %.02940.i.i.i.i.i.i, align 1, !range !5, !noundef !7
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.af, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !range !5, !noundef !7
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.ag, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit

bb.ag:                                            ; preds = %bb.af
  %i.ew = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 2
  %i.ex = load i8, ptr %i.ew, align 1, !range !5, !noundef !7
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.ah, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit106

bb.ah:                                            ; preds = %bb.ag
  %i.ez = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 3
  %i.fa = load i8, ptr %i.ez, align 1, !range !5, !noundef !7
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.ai, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit108

bb.ai:                                            ; preds = %bb.ah
  %i.fc = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 4
  %i.fd = add nsw i64 %.041.i.i.i.i.i.i, -1
  %i.fe = icmp sgt i64 %.041.i.i.i.i.i.i, 1
  br i1 %i.fe, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.loopexit, !llvm.loop !226

._crit_edge.i.i.i.i.i.i.loopexit:                 ; preds = %bb.ai
  switch i64 %gepdiff, label %._crit_edge.i.i.i.i.i.i.loopexit.unreachabledefault [
    i64 3, label %bb.aj
    i64 2, label %bb.al
    i64 1, label %bb.an
    i64 0, label %bb.ao
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.i.loopexit
  %i.ff = load i8, ptr %scevgep.i.i.i.i.i.i, align 1, !range !5, !noundef !7
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.ak, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fh = getelementptr inbounds nuw i8, ptr %scevgep.i.i.i.i.i.i, i64 1
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i.i.loopexit, %bb.ak
  %.1.i.i.i.i.i.i = phi ptr [ %i.fh, %bb.ak ], [ %scevgep.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.loopexit ] ; 3 uses
  %i.fi = load i8, ptr %.1.i.i.i.i.i.i, align 1, !range !5, !noundef !7
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.am, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

bb.am:                                            ; preds = %bb.al
  %i.fk = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 1
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge.i.i.i.i.i.i.loopexit, %bb.am
  %.2.i.i.i.i.i.i = phi ptr [ %i.fk, %bb.am ], [ %scevgep.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.loopexit ] ; 2 uses
  %i.fl = load i8, ptr %.2.i.i.i.i.i.i, align 1, !range !5, !noundef !7
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.ao, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

._crit_edge.i.i.i.i.i.i.loopexit.unreachabledefault: ; preds = %._crit_edge.i.i.i.i.i.i.loopexit
  unreachable

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i.i.i.loopexit, %bb.an
  br label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit: ; preds = %bb.af
  %i.fn = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 1
  br label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit106: ; preds = %bb.ag
  %i.fo = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 2
  br label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit108: ; preds = %bb.ah
  %i.fp = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 3
  br label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit, %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit106, %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit108, %bb.aj, %bb.al, %bb.an, %bb.ao
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.al ], [ %i.eq, %bb.ao ], [ %.2.i.i.i.i.i.i, %bb.an ], [ %scevgep.i.i.i.i.i.i, %bb.aj ], [ %i.fp, %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit108 ], [ %i.fn, %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit ], [ %i.fo, %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit106 ], [ %.02940.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.fq = icmp eq ptr %i.eq, %.028.i.i.i.i.i.i
  %i.fr = load i8, ptr %i.ee, align 4, !range !5, !noundef !7 ; 2 uses
  %i.fs = zext i1 %i.fq to i8                     ; 3 uses
  %.not57 = icmp eq i8 %i.fr, %i.fs
  br i1 %.not57, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit
  %i.ft = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.fu = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.fv = icmp ult ptr %i.ft, %i.fu
  br i1 %i.fv, label %bb.ar, label %bb.aq, !prof !6

bb.aq:                                            ; preds = %bb.ap
  %i.fw = load ptr, ptr %i.f, align 8
  %i.fx = ptrtoint ptr %i.fu to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = ashr exact i64 %i.fz, 4
  %i.gb = add nsw i64 %i.ga, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %i.gb)
  %.pre.i.i.i37 = load ptr, ptr %i.s, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.gc = phi ptr [ %i.ft, %bb.ap ], [ %.pre.i.i.i37, %bb.aq ] ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store ptr %i.gd, ptr %i.s, align 8
  store ptr %i.ee, ptr %i.gc, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i8 %i.fr, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 9
  store i8 %i.fs, ptr %.sroa.5.0..sroa_idx.i, align 1
  store i8 %i.fs, ptr %i.ee, align 4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit: ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit, %bb.ar
  %i.ge = getelementptr inbounds nuw i8, ptr %.03474, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ge, %i.p
  br i1 %.not, label %.loopexit, label %.lr.ph76.split

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit.us, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS3_9NoKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS4_9NoKeyDataEEEA_S8_EEPT_m.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #22
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS4_9NoKeyDataEEEA_S8_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS4_9NoKeyDataEEEA_S8_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS4_9NoKeyDataEEEA_S8_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS4_9NoKeyDataEEEA_S8_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryIbNS4_9NoKeyDataEEEA_S8_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_NS2_16NoChangeCallbackEEEvNSG_IKNS6_8SnapshotEEERKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.4.i = alloca %"struct.v8::internal::compiler::turboshaft::MapMaskAndOr", align 8 ; 4 uses
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.28) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %.idx = shl nuw nsw i64 %2, 4                   ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not69 = icmp eq ptr %i.o, %i.p
  br i1 %.not69, label %.loopexit, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.t

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.03564 = load ptr, ptr %i.t, align 8           ; 2 uses
  %.not3865 = icmp eq ptr %.03564, %i.e
  br i1 %.not3865, label %._crit_edge, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %bb.f
  %i.u = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  br label %.lr.ph67

.loopexit62:                                      ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, %.lr.ph67
  %.035 = load ptr, ptr %.03566, align 8          ; 2 uses
  %.not38 = icmp eq ptr %.035, %i.e
  br i1 %.not38, label %._crit_edge, label %.lr.ph67, !llvm.loop !227

._crit_edge:                                      ; preds = %.loopexit62, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !228

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %.loopexit62
  %.03566 = phi ptr [ %.035, %.loopexit62 ], [ %.03564, %.lr.ph67.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.03566, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %.03566, i64 24
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp samesign eq i64 %i.aa, %i.w
  br i1 %i.ab, label %.loopexit62, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph67
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.aa
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit
  %.sroa.047.063 = phi ptr [ %i.ad, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit ], [ %i.ac, %.lr.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.047.063, i64 -40 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !7, !align !8 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.047.063, i64 -16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 20 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp eq i64 %indvars.iv, %i.ai
  br i1 %i.aj, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.h, align 8
  %i.ao = load ptr, ptr %i.i, align 8
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 4                 ; 2 uses
  %i.at = add nsw i64 %i.as, %2
  %i.au = icmp ult i64 %i.at, 4294967296
  br i1 %i.au, label %bb.j, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.29) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.av = trunc i64 %i.as to i32
  store i32 %i.av, ptr %i.ak, align 8
  %i.aw = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ax = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ay = icmp ult ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE9push_backEOS8_.exit.i, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  %i.az = load ptr, ptr %i.m, align 8
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = add nsw i64 %i.bd, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.be)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE9push_backEOS8_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE9push_backEOS8_.exit.i: ; preds = %bb.k, %bb.j
  %i.bf = phi ptr [ %i.aw, %bb.j ], [ %.pre.i.i.i, %bb.k ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.j, align 8
  store ptr %i.ae, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.bi = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 4 uses
  %i.bm = ashr exact i64 %i.bl, 4                 ; 2 uses
  %i.bn = xor i64 %i.bm, -1
  %.not.i43 = icmp ugt i64 %2, %i.bn
  br i1 %.not.i43, label %bb.l, label %bb.m, !prof !9

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE9push_backEOS8_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.30) #25
  unreachable

bb.m:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE9push_backEOS8_.exit.i
  %i.bo = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.bk                    ; 2 uses
  %i.br = ashr exact i64 %i.bq, 4
  %i.bs = add nsw i64 %i.bm, %2                   ; 2 uses
  %i.bt = icmp ult i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit

bb.n:                                             ; preds = %bb.m
  %i.bu = icmp eq ptr %i.bi, %i.bo
  %i.bv = ashr exact i64 %i.bq, 3
  %i.bw = select i1 %i.bu, i64 2, i64 %i.bv
  %i.bx = tail call noundef i64 @llvm.umax.i64(i64 %i.bw, i64 %i.bs) ; 3 uses
  %i.by = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.bz = icmp ult i64 %i.bx, 1152921504606846975
  br i1 %i.bz, label %bb.p, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #25
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ca = shl nuw i64 %i.bx, 4                    ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = sub i64 %i.cc, %i.ce
  %i.cg = icmp ugt i64 %i.ca, %i.cf
  br i1 %i.cg, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft12MapMaskAndOrEA_S5_EEPT_m.exit.i, !prof !9

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.by, i64 noundef %i.ca) #22
  %.pre.i.i.i45 = load i64, ptr %i.cd, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft12MapMaskAndOrEA_S5_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft12MapMaskAndOrEA_S5_EEPT_m.exit.i: ; preds = %bb.q, %bb.p
  %i.ch = phi i64 [ %.pre.i.i.i45, %bb.q ], [ %i.ce, %bb.p ] ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 4 uses
  %i.cj = add i64 %i.ch, %i.ca
  store i64 %i.cj, ptr %i.cd, align 8
  store ptr %i.ci, ptr %i.i, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.bl
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %2
  store ptr %i.cl, ptr %i.h, align 8
  %.not26.i = icmp eq ptr %i.bi, null
  br i1 %.not26.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft12MapMaskAndOrEA_S5_EEPT_m.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ci, ptr nonnull align 8 %i.bi, i64 %i.bl, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  %.pre.i44 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit.thread

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit.thread: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft12MapMaskAndOrEA_S5_EEPT_m.exit.i, %bb.r
  %i.cm = phi ptr [ %.pre.i44, %bb.r ], [ %i.ci, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft12MapMaskAndOrEA_S5_EEPT_m.exit.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.bx
  store ptr %i.cn, ptr %i.n, align 8
  br label %._crit_edge.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit: ; preds = %bb.m
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %2
  store ptr %i.co, ptr %i.h, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit.thread
  %.pn = phi ptr [ %i.bi, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit ], [ %i.cm, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit.thread ]
  %.0.lcssa.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.bl ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 %.idx
  br label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph18.i.i
  %.116.i.i = phi ptr [ %i.cq, %.lr.ph18.i.i ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.116.i.i, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.116.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 16, i1 false)
  %i.cr = icmp ult ptr %i.cq, %i.cp
  br i1 %i.cr, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !229

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE6insertEPKS4_mRS6_.exit.i: ; preds = %.lr.ph18.i.i
  %.pre.i = load i32, ptr %i.ak, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE6insertEPKS4_mRS6_.exit.i, %bb.g
  %i.cs = phi i32 [ %.pre.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE6insertEPKS4_mRS6_.exit.i ], [ %i.al, %bb.g ]
  %i.ct = add i32 %i.cs, %i.u
  %i.cu = zext i32 %i.ct to i64
  %i.cv = load ptr, ptr %i.i, align 8
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.cu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  store i32 %i.u, ptr %i.ag, align 4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit: ; preds = %.lr.ph, %bb.s
  %i.cx = icmp eq ptr %i.ad, %i.y
  br i1 %i.cx, label %.loopexit62, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph72, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  %.03670 = phi ptr [ %i.o, %.lr.ph72 ], [ %i.eb, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit ] ; 2 uses
  %i.cy = load ptr, ptr %.03670, align 8          ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = zext i32 %i.da to i64
  %i.dc = load ptr, ptr %i.i, align 8
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.db ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %bb.u
  %.026.i = phi ptr [ %i.dk, %bb.u ], [ %i.dd, %bb.t ] ; 3 uses
  %.sroa.0.025.i = phi i64 [ %i.di, %bb.u ], [ 0, %bb.t ]
  %.sroa.6.024.i = phi i64 [ %i.dj, %bb.u ], [ -1, %bb.t ]
  %.sroa.07.0.copyload.i = load i64, ptr %.026.i, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8 ; 2 uses
  %i.df = icmp eq i64 %.sroa.07.0.copyload.i, 0
  %i.dg = icmp eq i64 %.sroa.5.0.copyload.i, -1
  %i.dh = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %i.dh, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.di = or i64 %.sroa.07.0.copyload.i, %.sroa.0.025.i ; 2 uses
  %i.dj = and i64 %.sroa.5.0.copyload.i, %.sroa.6.024.i ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.026.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.dk, %i.de
  br i1 %.not.i, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit, label %.lr.ph.i

_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit: ; preds = %.lr.ph.i, %bb.u
  %.sroa.016.3.i = phi i64 [ 0, %.lr.ph.i ], [ %i.di, %bb.u ] ; 3 uses
  %.sroa.3.3.i = phi i64 [ -1, %.lr.ph.i ], [ %i.dj, %bb.u ] ; 3 uses
  %i.dl = load i64, ptr %i.cy, align 8
  %i.dm = icmp ne i64 %i.dl, %.sroa.016.3.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = icmp ne i64 %i.do, %.sroa.3.3.i
  %.not10.i = select i1 %i.dm, i1 true, i1 %i.dp
  br i1 %.not10.i, label %bb.v, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.v:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false)
  %i.dq = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.dr = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ds = icmp ult ptr %i.dq, %i.dr
  br i1 %i.ds, label %bb.x, label %bb.w, !prof !6

bb.w:                                             ; preds = %bb.v
  %i.dt = load ptr, ptr %i.f, align 8
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = sdiv exact i64 %i.dw, 40
  %i.dy = add nsw i64 %i.dx, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.dy)
  %.pre.i.i.i41 = load ptr, ptr %i.q, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.dz = phi ptr [ %i.dq, %bb.v ], [ %.pre.i.i.i41, %bb.w ] ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  store ptr %i.ea, ptr %i.q, align 8
  store ptr %i.cy, ptr %i.dz, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store i64 %.sroa.016.3.i, ptr %.sroa.5.0..sroa_idx.i42, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store i64 %.sroa.3.3.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  store i64 %.sroa.016.3.i, ptr %i.cy, align 8
  store i64 %.sroa.3.3.i, ptr %i.dn, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit: ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit, %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %.03670, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.eb, %i.p
  br i1 %.not, label %.loopexit, label %bb.t

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_12MapMaskAndOrENS4_9NoKeyDataEEEA_S9_EEPT_m.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #22
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_12MapMaskAndOrENS4_9NoKeyDataEEEA_S9_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_12MapMaskAndOrENS4_9NoKeyDataEEEA_S9_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_12MapMaskAndOrENS4_9NoKeyDataEEEA_S9_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_12MapMaskAndOrENS4_9NoKeyDataEEEA_S9_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS4_12MapMaskAndOrENS4_9NoKeyDataEEEA_S9_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb1EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINS2_18MemoryContentTableES4_S5_E16StartNewSnapshotISJ_EEvNSG_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSG_IKT0_EEEEUlSE_RSH_S10_E_EEvSQ_ST_RSY_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.28) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %.idx = shl nuw nsw i64 %2, 2                   ; 4 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not78 = icmp eq ptr %i.o, %i.p
  br i1 %.not78, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.e
  %i.q = icmp eq i64 %2, 1
  %gepdiff.i.i = add nsw i64 %.idx, -4            ; 4 uses
  %i.r = lshr i64 %gepdiff.i.i, 4                 ; 2 uses
  %.not61 = icmp eq i64 %i.r, 0
  %i.s = and i64 %gepdiff.i.i, -16
  %gepdiff7.i.i = and i64 %gepdiff.i.i, 12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.t

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.03465 = load ptr, ptr %i.w, align 8           ; 2 uses
  %.not3766 = icmp eq ptr %.03465, %i.e
  br i1 %.not3766, label %._crit_edge, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %bb.f
  %i.x = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  br label %.lr.ph68

.loopexit63:                                      ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, %.lr.ph68
  %.034 = load ptr, ptr %.03467, align 8          ; 2 uses
  %.not37 = icmp eq ptr %.034, %i.e
  br i1 %.not37, label %._crit_edge, label %.lr.ph68, !llvm.loop !230

._crit_edge:                                      ; preds = %.loopexit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !231

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.loopexit63
  %.03467 = phi ptr [ %.034, %.loopexit63 ], [ %.03465, %.lr.ph68.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03467, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.03467, i64 24
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp samesign eq i64 %i.ad, %i.z
  br i1 %i.ae, label %.loopexit63, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ad
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit
  %.sroa.046.064 = phi ptr [ %i.ag, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit ], [ %i.af, %.lr.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.046.064, i64 -16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !7, !align !8 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.046.064, i64 -4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp eq i64 %indvars.iv, %i.al
  br i1 %i.am, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 52 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.h, align 8
  %i.ar = load ptr, ptr %i.i, align 8
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %i.aw = add nsw i64 %i.av, %2
  %i.ax = icmp ult i64 %i.aw, 4294967296
  br i1 %i.ax, label %bb.j, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.29) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = trunc i64 %i.av to i32
  store i32 %i.ay, ptr %i.an, align 4
  %i.az = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ba = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.bb = icmp ult ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE9push_backEOS8_.exit.i, label %bb.k, !prof !6
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIbS4_EENS_4base6VectorIKbEEE_NS2_16NoChangeCallbackEEEvNSF_IKNS5_8SnapshotEEERKT_RKT0_:bb.a
bb.z:                                             ; preds = %bb.y
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.db, i64 noundef %i.dd) #22
  %.pre.i.i.i40 = load i64, ptr %i.dg, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit.i: ; preds = %bb.z, %bb.y
  %i.dk = phi i64 [ %.pre.i.i.i40, %bb.z ], [ %i.dh, %bb.y ] ; 2 uses
  %i.dl = inttoptr i64 %i.dk to ptr               ; 4 uses
  %i.dm = add i64 %i.dk, %i.dd
  store i64 %i.dm, ptr %i.dg, align 8
  store ptr %i.dl, ptr %i.i, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.cq
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %2
  store ptr %i.do, ptr %i.h, align 8
  %.not26.i = icmp eq ptr %i.cn, null
  br i1 %.not26.i, label %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr nonnull align 1 %i.cn, i64 %i.cq, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cm) ]
  %.pre.i39 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit.thread

_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit.thread: ; preds = %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit.i, %bb.aa
  %i.dp = phi ptr [ %.pre.i39, %bb.aa ], [ %i.dl, %_ZN2v88internal4Zone13AllocateArrayIbA_bEEPT_m.exit.i ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.da
  store ptr %i.dq, ptr %i.n, align 8
  br label %.lr.ph18.preheader.i.i

_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit: ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %2
  store ptr %i.dr, ptr %i.h, align 8
  br label %.lr.ph18.preheader.i.i

.lr.ph18.preheader.i.i:                           ; preds = %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit.thread, %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit
  %.pn = phi ptr [ %i.dp, %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit.thread ], [ %i.cn, %_ZN2v88internal10ZoneVectorIbE19PrepareForInsertionEPKbmPm.exit ]
  %.0.lcssa.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.cq
  %.pre21.i.i = load i8, ptr %i.bk, align 4, !range !5
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i.i, i8 %.pre21.i.i, i64 %2, i1 false)
  %.pre.i = load i32, ptr %i.bq, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph18.preheader.i.i, %bb.p
  %i.ds = phi i32 [ %.pre.i, %.lr.ph18.preheader.i.i ], [ %i.br, %bb.p ]
  %i.dt = load i8, ptr %i.bl, align 1, !range !5, !noundef !7
  %i.du = add i32 %i.ds, %i.ba
  %i.dv = zext i32 %i.du to i64
  %i.dw = load ptr, ptr %i.i, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dv
  store i8 %i.dt, ptr %i.dx, align 1
  store i32 %i.ba, ptr %i.bm, align 4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIbS4_EERKbjj.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIbS4_EERKbjj.exit: ; preds = %.lr.ph, %bb.ab
  %i.dy = icmp eq ptr %i.bj, %i.be
  br i1 %i.dy, label %.loopexit58, label %.lr.ph

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.lr.ph.preheader.i.i.i.i.i.i.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit
  %.03474 = phi ptr [ %i.ft, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.dz = load ptr, ptr %.03474, align 8          ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = zext i32 %i.eb to i64
  %i.ed = load ptr, ptr %i.i, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ec ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %2 ; 2 uses
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.ee, i64 %i.r ; 5 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.af, %.lr.ph.preheader.i.i.i.i.i.i
  %.041.i.i.i.i.i.i = phi i64 [ %i.es, %bb.af ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02940.i.i.i.i.i.i = phi ptr [ %i.er, %bb.af ], [ %i.ee, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %i.eg = load i8, ptr %.02940.i.i.i.i.i.i, align 1, !range !5, !noundef !7
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ac, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 1
  %i.ej = load i8, ptr %i.ei, align 1, !range !5, !noundef !7
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ad, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit

bb.ad:                                            ; preds = %bb.ac
  %i.el = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 2
  %i.em = load i8, ptr %i.el, align 1, !range !5, !noundef !7
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ae, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit106

bb.ae:                                            ; preds = %bb.ad
  %i.eo = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 3
  %i.ep = load i8, ptr %i.eo, align 1, !range !5, !noundef !7
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.af, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit108

bb.af:                                            ; preds = %bb.ae
  %i.er = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 4
  %i.es = add nsw i64 %.041.i.i.i.i.i.i, -1
  %i.et = icmp sgt i64 %.041.i.i.i.i.i.i, 1
  br i1 %i.et, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.loopexit, !llvm.loop !226

._crit_edge.i.i.i.i.i.i.loopexit:                 ; preds = %bb.af
  switch i64 %gepdiff, label %._crit_edge.i.i.i.i.i.i.loopexit.unreachabledefault [
    i64 3, label %bb.ag
    i64 2, label %bb.ai
    i64 1, label %bb.ak
    i64 0, label %bb.al
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i.i.i.loopexit
  %i.eu = load i8, ptr %scevgep.i.i.i.i.i.i, align 1, !range !5, !noundef !7
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.ah, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ew = getelementptr inbounds nuw i8, ptr %scevgep.i.i.i.i.i.i, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i.i.i.loopexit, %bb.ah
  %.1.i.i.i.i.i.i = phi ptr [ %i.ew, %bb.ah ], [ %scevgep.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.loopexit ] ; 3 uses
  %i.ex = load i8, ptr %.1.i.i.i.i.i.i, align 1, !range !5, !noundef !7
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.aj, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ez = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 1
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i.i.loopexit, %bb.aj
  %.2.i.i.i.i.i.i = phi ptr [ %i.ez, %bb.aj ], [ %scevgep.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.loopexit ] ; 2 uses
  %i.fa = load i8, ptr %.2.i.i.i.i.i.i, align 1, !range !5, !noundef !7
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.al, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

._crit_edge.i.i.i.i.i.i.loopexit.unreachabledefault: ; preds = %._crit_edge.i.i.i.i.i.i.loopexit
  unreachable

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i.i.loopexit, %bb.ak
  br label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit: ; preds = %bb.ac
  %i.fc = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 1
  br label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit106: ; preds = %bb.ad
  %i.fd = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 2
  br label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit108: ; preds = %bb.ae
  %i.fe = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i.i.i, i64 3
  br label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit

_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit, %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit106, %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit108, %bb.ag, %bb.ai, %bb.ak, %bb.al
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.ai ], [ %i.ef, %bb.al ], [ %.2.i.i.i.i.i.i, %bb.ak ], [ %scevgep.i.i.i.i.i.i, %bb.ag ], [ %i.fe, %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit108 ], [ %i.fc, %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit ], [ %i.fd, %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit.loopexit.split.loop.exit106 ], [ %.02940.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.ff = icmp eq ptr %i.ef, %.028.i.i.i.i.i.i
  %i.fg = load i8, ptr %i.dz, align 4, !range !5, !noundef !7 ; 2 uses
  %i.fh = zext i1 %i.ff to i8                     ; 3 uses
  %.not57 = icmp eq i8 %i.fg, %i.fh
  br i1 %.not57, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit, label %bb.am

bb.am:                                            ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit
  %i.fi = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.fj = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.fk = icmp ult ptr %i.fi, %i.fj
  br i1 %i.fk, label %bb.ao, label %bb.an, !prof !6

bb.an:                                            ; preds = %bb.am
  %i.fl = load ptr, ptr %i.f, align 8
  %i.fm = ptrtoint ptr %i.fj to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = ashr exact i64 %i.fo, 4
  %i.fq = add nsw i64 %i.fp, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %i.fq)
  %.pre.i.i.i37 = load ptr, ptr %i.s, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.fr = phi ptr [ %i.fi, %bb.am ], [ %.pre.i.i.i37, %bb.an ] ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store ptr %i.fs, ptr %i.s, align 8
  store ptr %i.dz, ptr %i.fr, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i8 %i.fg, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 9
  store i8 %i.fh, ptr %.sroa.5.0..sroa_idx.i, align 1
  store i8 %i.fh, ptr %i.dz, align 4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit: ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyIbNS2_9NoKeyDataEEENS_4base6VectorIKbEEE_clESA_SE_.exit, %bb.ao
  %i.ft = getelementptr inbounds nuw i8, ptr %.03474, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ft, %i.p
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader.i.i.i.i.i.i

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIbNS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIbS4_EEb.exit.us, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_NS2_16NoChangeCallbackEEEvNSG_IKNS6_8SnapshotEEERKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.4.i = alloca %"struct.v8::internal::compiler::turboshaft::MapMaskAndOr", align 8 ; 4 uses
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.28) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %.idx = shl nuw nsw i64 %2, 4                   ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not69 = icmp eq ptr %i.o, %i.p
  br i1 %.not69, label %.loopexit, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.t

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.03564 = load ptr, ptr %i.t, align 8           ; 2 uses
  %.not3865 = icmp eq ptr %.03564, %i.e
  br i1 %.not3865, label %._crit_edge, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %bb.f
  %i.u = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  br label %.lr.ph67

.loopexit62:                                      ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, %.lr.ph67
  %.035 = load ptr, ptr %.03566, align 8          ; 2 uses
  %.not38 = icmp eq ptr %.035, %i.e
  br i1 %.not38, label %._crit_edge, label %.lr.ph67, !llvm.loop !252

._crit_edge:                                      ; preds = %.loopexit62, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !253

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %.loopexit62
  %.03566 = phi ptr [ %.035, %.loopexit62 ], [ %.03564, %.lr.ph67.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.03566, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %.03566, i64 24
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp samesign eq i64 %i.aa, %i.w
  br i1 %i.ab, label %.loopexit62, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph67
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.aa
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit
  %.sroa.047.063 = phi ptr [ %i.ad, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit ], [ %i.ac, %.lr.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.047.063, i64 -40 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !7, !align !8 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.047.063, i64 -16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 20 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp eq i64 %indvars.iv, %i.ai
  br i1 %i.aj, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.h, align 8
  %i.ao = load ptr, ptr %i.i, align 8
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 4                 ; 2 uses
  %i.at = add nsw i64 %i.as, %2
  %i.au = icmp ult i64 %i.at, 4294967296
  br i1 %i.au, label %bb.j, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.29) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.av = trunc i64 %i.as to i32
  store i32 %i.av, ptr %i.ak, align 8
  %i.aw = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ax = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ay = icmp ult ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE9push_backEOS8_.exit.i, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  %i.az = load ptr, ptr %i.m, align 8
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = add nsw i64 %i.bd, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.be)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE9push_backEOS8_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE9push_backEOS8_.exit.i: ; preds = %bb.k, %bb.j
  %i.bf = phi ptr [ %i.aw, %bb.j ], [ %.pre.i.i.i, %bb.k ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.j, align 8
  store ptr %i.ae, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.bi = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 4 uses
  %i.bm = ashr exact i64 %i.bl, 4                 ; 2 uses
  %i.bn = xor i64 %i.bm, -1
  %.not.i43 = icmp ugt i64 %2, %i.bn
  br i1 %.not.i43, label %bb.l, label %bb.m, !prof !9

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE9push_backEOS8_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.30) #25
  unreachable

bb.m:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_12MapMaskAndOrENS3_9NoKeyDataEEEE9push_backEOS8_.exit.i
  %i.bo = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.bk                    ; 2 uses
  %i.br = ashr exact i64 %i.bq, 4
  %i.bs = add nsw i64 %i.bm, %2                   ; 2 uses
  %i.bt = icmp ult i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit

bb.n:                                             ; preds = %bb.m
  %i.bu = icmp eq ptr %i.bi, %i.bo
  %i.bv = ashr exact i64 %i.bq, 3
  %i.bw = select i1 %i.bu, i64 2, i64 %i.bv
  %i.bx = tail call noundef i64 @llvm.umax.i64(i64 %i.bw, i64 %i.bs) ; 3 uses
  %i.by = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.bz = icmp ult i64 %i.bx, 1152921504606846975
  br i1 %i.bz, label %bb.p, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #25
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ca = shl nuw i64 %i.bx, 4                    ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = sub i64 %i.cc, %i.ce
  %i.cg = icmp ugt i64 %i.ca, %i.cf
  br i1 %i.cg, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft12MapMaskAndOrEA_S5_EEPT_m.exit.i, !prof !9

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.by, i64 noundef %i.ca) #22
  %.pre.i.i.i45 = load i64, ptr %i.cd, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft12MapMaskAndOrEA_S5_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft12MapMaskAndOrEA_S5_EEPT_m.exit.i: ; preds = %bb.q, %bb.p
  %i.ch = phi i64 [ %.pre.i.i.i45, %bb.q ], [ %i.ce, %bb.p ] ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 4 uses
  %i.cj = add i64 %i.ch, %i.ca
  store i64 %i.cj, ptr %i.cd, align 8
  store ptr %i.ci, ptr %i.i, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.bl
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %2
  store ptr %i.cl, ptr %i.h, align 8
  %.not26.i = icmp eq ptr %i.bi, null
  br i1 %.not26.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft12MapMaskAndOrEA_S5_EEPT_m.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ci, ptr nonnull align 8 %i.bi, i64 %i.bl, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  %.pre.i44 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit.thread

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit.thread: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft12MapMaskAndOrEA_S5_EEPT_m.exit.i, %bb.r
  %i.cm = phi ptr [ %.pre.i44, %bb.r ], [ %i.ci, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft12MapMaskAndOrEA_S5_EEPT_m.exit.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.bx
  store ptr %i.cn, ptr %i.n, align 8
  br label %._crit_edge.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit: ; preds = %bb.m
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %2
  store ptr %i.co, ptr %i.h, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit.thread
  %.pn = phi ptr [ %i.bi, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit ], [ %i.cm, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE19PrepareForInsertionEPKS4_mPm.exit.thread ]
  %.0.lcssa.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.bl ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 %.idx
  br label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph18.i.i
  %.116.i.i = phi ptr [ %i.cq, %.lr.ph18.i.i ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.116.i.i, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.116.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 16, i1 false)
  %i.cr = icmp ult ptr %i.cq, %i.cp
  br i1 %i.cr, label %.lr.ph18.i.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE6insertEPKS4_mRS6_.exit.i, !llvm.loop !229

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE6insertEPKS4_mRS6_.exit.i: ; preds = %.lr.ph18.i.i
  %.pre.i = load i32, ptr %i.ak, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE6insertEPKS4_mRS6_.exit.i, %bb.g
  %i.cs = phi i32 [ %.pre.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft12MapMaskAndOrEE6insertEPKS4_mRS6_.exit.i ], [ %i.al, %bb.g ]
  %i.ct = add i32 %i.cs, %i.u
  %i.cu = zext i32 %i.ct to i64
  %i.cv = load ptr, ptr %i.i, align 8
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.cu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  store i32 %i.u, ptr %i.ag, align 4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit: ; preds = %.lr.ph, %bb.s
  %i.cx = icmp eq ptr %i.ad, %i.y
  br i1 %i.cx, label %.loopexit62, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph72, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit
  %.03670 = phi ptr [ %i.o, %.lr.ph72 ], [ %i.eb, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit ] ; 2 uses
  %i.cy = load ptr, ptr %.03670, align 8          ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = zext i32 %i.da to i64
  %i.dc = load ptr, ptr %i.i, align 8
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.db ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %bb.u
  %.026.i = phi ptr [ %i.dk, %bb.u ], [ %i.dd, %bb.t ] ; 3 uses
  %.sroa.0.025.i = phi i64 [ %i.di, %bb.u ], [ 0, %bb.t ]
  %.sroa.6.024.i = phi i64 [ %i.dj, %bb.u ], [ -1, %bb.t ]
  %.sroa.07.0.copyload.i = load i64, ptr %.026.i, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8 ; 2 uses
  %i.df = icmp eq i64 %.sroa.07.0.copyload.i, 0
  %i.dg = icmp eq i64 %.sroa.5.0.copyload.i, -1
  %i.dh = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %i.dh, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.di = or i64 %.sroa.07.0.copyload.i, %.sroa.0.025.i ; 2 uses
  %i.dj = and i64 %.sroa.5.0.copyload.i, %.sroa.6.024.i ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.026.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.dk, %i.de
  br i1 %.not.i, label %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit, label %.lr.ph.i

_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit: ; preds = %.lr.ph.i, %bb.u
  %.sroa.016.3.i = phi i64 [ 0, %.lr.ph.i ], [ %i.di, %bb.u ] ; 3 uses
  %.sroa.3.3.i = phi i64 [ -1, %.lr.ph.i ], [ %i.dj, %bb.u ] ; 3 uses
  %i.dl = load i64, ptr %i.cy, align 8
  %i.dm = icmp ne i64 %i.dl, %.sroa.016.3.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = icmp ne i64 %i.do, %.sroa.3.3.i
  %.not10.i = select i1 %i.dm, i1 true, i1 %i.dp
  br i1 %.not10.i, label %bb.v, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.v:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false)
  %i.dq = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.dr = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ds = icmp ult ptr %i.dq, %i.dr
  br i1 %i.ds, label %bb.x, label %bb.w, !prof !6

bb.w:                                             ; preds = %bb.v
  %i.dt = load ptr, ptr %i.f, align 8
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = sdiv exact i64 %i.dw, 40
  %i.dy = add nsw i64 %i.dx, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.dy)
  %.pre.i.i.i41 = load ptr, ptr %i.q, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.dz = phi ptr [ %i.dq, %bb.v ], [ %.pre.i.i.i41, %bb.w ] ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  store ptr %i.ea, ptr %i.q, align 8
  store ptr %i.cy, ptr %i.dz, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store i64 %.sroa.016.3.i, ptr %.sroa.5.0..sroa_idx.i42, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store i64 %.sroa.3.3.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  store i64 %.sroa.016.3.i, ptr %i.cy, align 8
  store i64 %.sroa.3.3.i, ptr %i.dn, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit: ; preds = %_ZZN2v88internal8compiler10turboshaft27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_12MapMaskAndOrENS2_9NoKeyDataEEENS_4base6VectorIKS9_EEE_clESB_SF_.exit, %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %.03670, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.eb, %i.p
  br i1 %.not, label %.loopexit, label %bb.t

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_12MapMaskAndOrENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE17MergePredecessorsIZNS2_27LateLoadEliminationAnalyzer10BeginBlockILb0EEEbPKNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINS2_18MemoryContentTableES4_S5_E16StartNewSnapshotISJ_EEvNSG_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSG_IKT0_EEEEUlSE_RSH_S10_E_EEvSQ_ST_RSY_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.28) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %.idx = shl nuw nsw i64 %2, 2                   ; 4 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not78 = icmp eq ptr %i.o, %i.p
  br i1 %.not78, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.e
  %i.q = icmp eq i64 %2, 1
  %gepdiff.i.i = add nsw i64 %.idx, -4            ; 4 uses
  %i.r = lshr i64 %gepdiff.i.i, 4                 ; 2 uses
  %.not61 = icmp eq i64 %i.r, 0
  %i.s = and i64 %gepdiff.i.i, -16
  %gepdiff7.i.i = and i64 %gepdiff.i.i, 12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.t

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.03465 = load ptr, ptr %i.w, align 8           ; 2 uses
  %.not3766 = icmp eq ptr %.03465, %i.e
  br i1 %.not3766, label %._crit_edge, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %bb.f
  %i.x = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  br label %.lr.ph68

.loopexit63:                                      ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, %.lr.ph68
  %.034 = load ptr, ptr %.03467, align 8          ; 2 uses
  %.not37 = icmp eq ptr %.034, %i.e
  br i1 %.not37, label %._crit_edge, label %.lr.ph68, !llvm.loop !254

._crit_edge:                                      ; preds = %.loopexit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !255

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.loopexit63
  %.03467 = phi ptr [ %.034, %.loopexit63 ], [ %.03465, %.lr.ph68.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03467, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.03467, i64 24
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp samesign eq i64 %i.ad, %i.z
  br i1 %i.ae, label %.loopexit63, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ad
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit
  %.sroa.046.064 = phi ptr [ %i.ag, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit ], [ %i.af, %.lr.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.046.064, i64 -16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !7, !align !8 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.046.064, i64 -4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp eq i64 %indvars.iv, %i.al
  br i1 %i.am, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_7KeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS4_S5_EERKS4_jj.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 52 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.h, align 8
  %i.ar = load ptr, ptr %i.i, align 8
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %i.aw = add nsw i64 %i.av, %2
  %i.ax = icmp ult i64 %i.aw, 4294967296
  br i1 %i.ax, label %bb.j, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.29) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = trunc i64 %i.av to i32
  store i32 %i.ay, ptr %i.an, align 4
  %i.az = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ba = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.bb = icmp ult ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE9push_backEOS8_.exit.i, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.m, align 8
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = add nsw i64 %i.bg, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.bh)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE9push_backEOS8_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE9push_backEOS8_.exit.i: ; preds = %bb.k, %bb.j
  %i.bi = phi ptr [ %i.az, %bb.j ], [ %.pre.i.i.i, %bb.k ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bj, ptr %i.j, align 8
  store ptr %i.ah, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.bm = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.bn = ptrtoint ptr %i.bk to i64               ; 4 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 5 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = ashr exact i64 %i.bp, 2                 ; 2 uses
  %i.br = xor i64 %i.bq, -1
  %.not.i = icmp ugt i64 %2, %i.br
  br i1 %.not.i, label %bb.l, label %bb.m, !prof !9

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE9push_backEOS8_.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.30) #25
  unreachable

bb.m:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_7KeyDataEEEE9push_backEOS8_.exit.i
  %i.bs = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bo                    ; 2 uses
  %i.bv = ashr exact i64 %i.bu, 2
  %i.bw = add nsw i64 %i.bq, %2                   ; 2 uses
  %i.bx = icmp ult i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE19PrepareForInsertionEPKS4_mPm.exit

bb.n:                                             ; preds = %bb.m
  %i.by = icmp eq ptr %i.bm, %i.bs
  %i.bz = ashr exact i64 %i.bu, 1
  %i.ca = select i1 %i.by, i64 2, i64 %i.bz
  %i.cb = tail call noundef i64 @llvm.umax.i64(i64 %i.ca, i64 %i.bw) ; 3 uses
  %i.cc = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.cd = icmp ult i64 %i.cb, 4611686018427387903
  br i1 %i.cd, label %bb.p, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #25
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ce = shl nuw i64 %i.cb, 2
  %i.cf = add nuw i64 %i.ce, 4
  %i.cg = and i64 %i.cf, -8                       ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = sub i64 %i.ci, %i.ck
  %i.cm = icmp ugt i64 %i.cg, %i.cl
end_hunk_4
