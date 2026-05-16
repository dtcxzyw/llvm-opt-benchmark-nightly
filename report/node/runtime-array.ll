inline.NumInlined: 745
inline.NumDeleted: 336
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.477", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", [4 x i8], %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.477", %"class.v8::internal::FlagValue.477", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.477", %"class.v8::internal::FlagValue.479", %"class.v8::internal::FlagValue.479", %"class.v8::internal::FlagValue.479", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.477", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.477", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.477", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.477", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", [4 x i8], %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.477", %"class.v8::internal::FlagValue.477", %"class.v8::internal::FlagValue.477", %"class.v8::internal::FlagValue.477", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue.476", [4 x i8], %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.477", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.479", %"class.v8::internal::FlagValue.479", %"class.v8::internal::FlagValue.479", %"class.v8::internal::FlagValue.479", %"class.v8::internal::FlagValue.479", %"class.v8::internal::FlagValue.479", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.477", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.477", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.477", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.479", [2 x i8], %"class.v8::internal::FlagValue.476", [4 x i8], %"class.v8::internal::FlagValue.478", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.477", %"class.v8::internal::FlagValue.477", [4 x i8], %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.486", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.476", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.475", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.479" = type { %"class.std::optional.480" }
%"class.std::optional.480" = type { %"struct.std::_Optional_base.481" }
%"struct.std::_Optional_base.481" = type { %"struct.std::_Optional_payload.483" }
%"struct.std::_Optional_payload.483" = type { %"struct.std::_Optional_payload_base.484" }
%"struct.std::_Optional_payload_base.484" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.478" = type { double }
%"class.v8::internal::FlagValue.477" = type { i32 }
%"class.v8::internal::FlagValue.486" = type { i64 }
%"class.v8::internal::FlagValue.476" = type { i32 }
%"class.v8::internal::FlagValue.475" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.v8::internal::Arguments.448" = type { i64, ptr }
%"class.v8::internal::LookupIterator" = type { i32, i32, i8, i32, %"class.v8::internal::PropertyDetails", ptr, %"class.v8::internal::DirectHandle.505", %"class.v8::internal::DirectHandle.511", %"class.v8::internal::DirectHandle.499", %"class.v8::internal::DirectHandle.451", %"class.v8::internal::DirectHandle.499", i64, %"class.v8::internal::InternalIndex" }
%"class.v8::internal::PropertyDetails" = type { i32 }
%"class.v8::internal::DirectHandle.505" = type { %"class.v8::internal::Handle.506" }
%"class.v8::internal::Handle.506" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"class.v8::internal::DirectHandle.511" = type { %"class.v8::internal::Handle.512" }
%"class.v8::internal::Handle.512" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::DirectHandle.451" = type { %"class.v8::internal::Handle.452" }
%"class.v8::internal::Handle.452" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::DirectHandle.499" = type { %"class.v8::internal::Handle.500" }
%"class.v8::internal::Handle.500" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::InternalIndex" = type { i64 }

$_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE = comdat any

$_ZSt27__throw_bad_optional_accessv = comdat any

$_ZN2v88internal11FactoryBaseINS0_7FactoryEE18NewNumberFromInt64ILNS0_14AllocationTypeE0EEENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEl = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"static_cast<uint32_t>(index) <= static_cast<uint32_t>(length_)\00", align 1
@_ZN2v88internal16ElementsAccessor19elements_accessors_E = external local_unnamed_addr global ptr, align 8
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str.2 = private unnamed_addr constant [51 x i8] c"!array->HasTypedArrayOrRabGsabTypedArrayElements()\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"!IsJSGlobalProxy(*array)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"IsFastElementsKind(kind)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"IsHeapNumber(*key)\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Array.prototype.indexOf\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal30Runtime_TransitionElementsKindEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %bb.b, !prof !5

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, 14
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i8, ptr %i.m, align 1
  %i.o = lshr i8 %i.n, 2
  %i.p = load ptr, ptr @_ZN2v88internal16ElementsAccessor19elements_accessors_E, align 8
  %i.q = zext nneg i8 %i.o to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %2, ptr %1, ptr nonnull %i.j) #11, !inline_history !6
  %i.w = load i64, ptr %1, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.x = load i32, ptr %i.e, align 8
  %i.y = add nsw i32 %i.x, -1
  store i32 %i.y, ptr %i.e, align 8
  %i.z = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.z, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.c, %bb.b
  ret i64 %i.w
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal38Runtime_TransitionElementsKindWithKindEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %bb.b, !prof !5

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr
  %3 = load i64, ptr %i.j, align 8
  %4 = lshr i64 %3, 32
  %i.k = trunc i64 %4 to i8
  tail call void @_ZN2v88internal8JSObject22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef nonnull %2, ptr %1, i8 noundef zeroext %i.k) #11
  %i.l = load i64, ptr %1, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.m = load i32, ptr %i.e, align 8
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.e, align 8
  %i.o = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.o, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.c, %bb.b
  ret i64 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal16Runtime_NewArrayEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %3 = alloca %"class.v8::internal::Arguments.448", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = add nsw i32 %0, -3                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.i = sext i32 %i.h to i64
  store i64 %i.i, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.j, align 8
  %.not = icmp ult i32 %0, 3
  br i1 %.not, label %bb.a, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_10JSFunctionEEENS0_6HandleIT_EEi.exit, !prof !5

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_10JSFunctionEEENS0_6HandleIT_EEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.k = shl nsw i32 %i.h, 3
  %i.l = sext i32 %i.k to i64
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.l
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = shl i32 %0, 3                            ; 2 uses
  %i.q = add i32 %i.p, -16
  %i.r = sext i32 %i.q to i64
  %i.s = sub i64 %i.m, %i.r
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = add i32 %i.p, -8
  %i.v = sext i32 %i.u to i64
  %i.w = sub i64 %i.m, %i.v
  %i.x = inttoptr i64 %i.w to ptr                 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.ac = add i64 %i.ab, 11
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i16, ptr %i.ad monotonic, align 2
  %i.af = icmp eq i16 %i.ae, 259                  ; 4 uses
  %i.ag = icmp eq i32 %i.h, 1
  br i1 %i.ag, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_10JSFunctionEEENS0_6HandleIT_EEi.exit
  %i.ah = load i64, ptr %1, align 8               ; 4 uses
  %i.ai = trunc i64 %i.ah to i1
  %i.aj = icmp ugt i64 %i.ah, 144115192370823167
  %or.cond = or i1 %i.aj, %i.ai
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp samesign ult i64 %i.ah, 4294967296
  %i.ak = icmp samesign ugt i64 %i.ah, 70334384439295
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_10JSFunctionEEENS0_6HandleIT_EEi.exit
  %.264.i = phi i1 [ false, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_10JSFunctionEEENS0_6HandleIT_EEi.exit ], [ %i.ak, %bb.c ] ; 2 uses
  %.2.i = phi i1 [ true, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_10JSFunctionEEENS0_6HandleIT_EEi.exit ], [ %.not.i, %bb.c ] ; 2 uses
  %i.al = tail call ptr @_ZN2v88internal10JSFunction13GetDerivedMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10JSReceiverEEE(ptr noundef nonnull %2, ptr %i.o, ptr %i.t) #11 ; 3 uses
  %.not108 = icmp eq ptr %i.al, null
  br i1 %.not108, label %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge.i

.thread:                                          ; preds = %bb.b
  %i.am = tail call ptr @_ZN2v88internal10JSFunction13GetDerivedMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10JSReceiverEEE(ptr noundef nonnull %2, ptr %i.o, ptr %i.t) #11 ; 2 uses
  %.not108115 = icmp eq ptr %i.am, null
  br i1 %.not108115, label %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge.i.thread

_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %.thread, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %bb.l

.critedge.i:                                      ; preds = %bb.d
  br i1 %i.af, label %bb.e, label %.critedge.i.thread

bb.e:                                             ; preds = %.critedge.i
  %i.ao = load i64, ptr %i.x, align 8
  %i.ap = add i64 %i.ao, -1
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load atomic volatile i64, ptr %i.ar acquire, align 8
  %i.at = lshr i64 %i.as, 32
  %i.au = trunc i64 %i.at to i8
  %i.av = and i8 %i.au, 63
  br label %bb.f

.critedge.i.thread:                               ; preds = %.thread, %.critedge.i
  %.264.i116127 = phi i1 [ %.264.i, %.critedge.i ], [ false, %.thread ]
  %.2.i118123 = phi i1 [ %.2.i, %.critedge.i ], [ true, %.thread ]
  %i.aw = phi ptr [ %i.al, %.critedge.i ], [ %i.am, %.thread ] ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = add i64 %i.ax, 14
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = lshr i8 %i.ba, 2
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i.thread, %bb.e
  %.264.i116126 = phi i1 [ %.264.i, %bb.e ], [ %.264.i116127, %.critedge.i.thread ]
  %.261.i117124.not = phi i1 [ false, %bb.e ], [ true, %.critedge.i.thread ]
  %.2.i118122 = phi i1 [ %.2.i, %bb.e ], [ %.2.i118123, %.critedge.i.thread ]
  %i.bc = phi ptr [ %i.al, %bb.e ], [ %i.aw, %.critedge.i.thread ]
  %i.bd = phi i8 [ %i.av, %bb.e ], [ %i.bb, %.critedge.i.thread ] ; 7 uses
  %i.be = trunc i8 %i.bd to i1
  %i.bf = icmp samesign ult i8 %i.bd, 6
  %i.bg = and i1 %i.bf, %i.be
  %or.cond104 = select i1 %.2.i118122, i1 true, i1 %i.bg
  br i1 %or.cond104, label %bb.h, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit: ; preds = %bb.f
  %i.bh = icmp samesign ult i8 %i.bd, 7
  %switch.shifted = lshr i8 85, %i.bd
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond129 = select i1 %i.bh, i1 %switch.lobit, i1 false
  %switch.cast = zext nneg i8 %i.bd to i56
  %switch.shiftamt = shl nuw nsw i56 %switch.cast, 3
  %switch.downshift = lshr i56 1970346312007681, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  %.0.i11 = select i1 %or.cond129, i8 %switch.masked, i8 %i.bd ; 3 uses
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit
  %i.bi = load i64, ptr %i.x, align 8
  %i.bj = add i64 %i.bi, -1
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load atomic volatile i64, ptr %i.bl acquire, align 8
  %i.bn = zext nneg i8 %.0.i11 to i64
  %i.bo = shl nuw nsw i64 %i.bn, 32
  %.mask.i = and i64 %i.bm, -274877906944
  %sext.i = or i64 %.mask.i, %i.bo
  store atomic volatile i64 %sext.i, ptr %i.bl release, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit, %bb.f
  %.067.i = phi i8 [ %i.bd, %bb.f ], [ %.0.i11, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit ], [ %.0.i11, %bb.g ] ; 2 uses
  %i.bp = tail call ptr @_ZN2v88internal3Map14AsElementsKindEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef nonnull %2, ptr nonnull %i.bc, i8 noundef zeroext %.067.i) #11
  %i.bq = icmp samesign ult i8 %.067.i, 2
  %i.br = select i1 %i.bq, i1 %i.af, i1 false
  %spec.select105 = select i1 %i.br, ptr %i.x, ptr null
  %i.bs = tail call ptr @_ZN2v88internal7Factory18NewJSObjectFromMapENS0_12DirectHandleINS0_3MapEEENS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr %i.bp, i8 noundef zeroext 0, ptr %spec.select105, i8 noundef zeroext 0) #11 ; 7 uses
  tail call void @_ZN2v88internal7Factory17NewJSArrayStorageENS0_12DirectHandleINS0_7JSArrayEEEiiNS0_26ArrayStorageAllocationModeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr %i.bs, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = add i64 %i.bt, -1
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load atomic volatile i64, ptr %i.bv monotonic, align 8
  %i.bx = add i64 %i.bw, 14
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = call ptr @_ZN2v88internal32ArrayConstructInitializeElementsEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_9ArgumentsILNS0_13ArgumentsTypeE1EEE(ptr noundef nonnull %2, ptr nonnull %i.bs, ptr noundef nonnull %3) #11
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.i, label %.critedge70.i

bb.i:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %bb.l

.critedge70.i:                                    ; preds = %bb.h
  br i1 %i.af, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.critedge70.i
  %i.cd = load i64, ptr %i.bs, align 8
  %i.ce = add i64 %i.cd, -1
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load atomic volatile i64, ptr %i.cf monotonic, align 8
  %i.ch = add i64 %i.cg, 14
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load i8, ptr %i.ci, align 1
  %.unshifted = xor i8 %i.cj, %i.bz
  %i.ck = icmp ugt i8 %.unshifted, 3
  %or.cond.i.not = or i1 %.261.i117124.not, %i.ck
  %i.cl = or i1 %.264.i116126, %or.cond.i.not
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cm = load i64, ptr %i.x, align 8
  %i.cn = add i64 %i.cm, -1
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load atomic volatile i64, ptr %i.cp acquire, align 8
  %i.cr = and i64 %i.cq, -279172874240
  %i.cs = or disjoint i64 %i.cr, 274877906944
  store atomic volatile i64 %i.cs, ptr %i.cp release, align 8
  br label %bb.l

bb.l:                                             ; preds = %.critedge70.i, %bb.j, %bb.k, %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.i
  %.sroa.057.1.in = phi ptr [ %i.an, %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.cc, %bb.i ], [ %i.bs, %bb.k ], [ %i.bs, %bb.j ], [ %i.bs, %.critedge70.i ]
  %.sroa.057.1 = load i64, ptr %.sroa.057.1.in, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  store ptr %i.b, ptr %i.a, align 8
  %i.ct = load i32, ptr %i.e, align 8
  %i.cu = add nsw i32 %i.ct, -1
  store i32 %i.cu, ptr %i.e, align 8
  %i.cv = load ptr, ptr %i.c, align 8
  %.not.i2 = icmp eq ptr %i.cv, %i.d
  br i1 %.not.i2, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.m, %bb.l
  ret i64 %.sroa.057.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal25Runtime_NormalizeElementsEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 14
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i8, ptr %i.m, align 1
  %i.o = lshr i8 %i.n, 2
  %i.p = add nsw i8 %i.o, -18
  %i.q = icmp ult i8 %i.p, 24
  br i1 %i.q, label %bb.a, label %bb.b, !prof !5

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #10
  unreachable

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.r = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 304
  br i1 %i.v, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.w = tail call ptr @_ZN2v88internal8JSObject17NormalizeElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %1) #11 ; 0 uses
  %i.x = load i64, ptr %1, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.y = load i32, ptr %i.e, align 8
  %i.z = add nsw i32 %i.y, -1
  store i32 %i.z, ptr %i.e, align 8
  %i.aa = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.aa, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.e, %bb.d
  ret i64 %i.x
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal25Runtime_GrowArrayElementsEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, !prof !5

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.h = load i64, ptr %1, align 8                ; 2 uses
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 14
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp ult i8 %i.n, 24
  br i1 %i.o, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #10
  unreachable

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.p = ptrtoint ptr %1 to i64
  %i.q = add i64 %i.p, -8
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.r, align 8              ; 4 uses
  %i.t = and i64 %i.s, 1
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit

bb.d:                                             ; preds = %bb.c
  %i.v = lshr i64 %i.s, 32
  %i.w = trunc nuw i64 %i.v to i32
  %i.x = icmp sgt i64 %i.s, -1
  br i1 %i.x, label %.critedge.i, label %_ZN2v88internalL35__RT_impl_Runtime_GrowArrayElementsENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.c
  %i.y = add nsw i64 %i.s, -1
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %i.ab = add i64 %i.aa, 11
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i16, ptr %i.ac monotonic, align 2
  %i.ae = icmp eq i16 %i.ad, 130
  br i1 %i.ae, label %bb.e, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, !prof !8

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.af, align 1 ; 3 uses
  %i.ag = fcmp olt double %.0.copyload.i.i.i.i, 0.000000e+00
  %i.ah = fcmp ogt double %.0.copyload.i.i.i.i, f0x41EFFFFFFFE00000
  %or.cond = or i1 %i.ag, %i.ah
  br i1 %or.cond, label %_ZN2v88internalL35__RT_impl_Runtime_GrowArrayElementsENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = fptoui double %.0.copyload.i.i.i.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %bb.d
  %.2.i = phi i32 [ %i.w, %bb.d ], [ %i.ai, %bb.f ] ; 2 uses
  %i.aj = add i64 %i.h, 15
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.al, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %3 = load i64, ptr %i.ao, align 8
  %4 = lshr i64 %3, 32
  %5 = trunc nuw i64 %4 to i32
  %.not.i = icmp ult i32 %.2.i, %5
  br i1 %.not.i, label %bb.h, label %_ZNK2v85MaybeIbE2ToEPb.exit

_ZNK2v85MaybeIbE2ToEPb.exit:                      ; preds = %.critedge.i
  %i.ap = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.aq = add i64 %i.ap, 14
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = lshr i8 %i.as, 2
  %i.au = load ptr, ptr @_ZN2v88internal16ElementsAccessor19elements_accessors_E, align 8
  %i.av = zext nneg i8 %i.at to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call i16 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull %2, ptr nonnull %1, i32 noundef %.2.i) #11, !inline_history !9 ; 2 uses
  %i.bc = trunc i16 %i.bb to i1
  br i1 %i.bc, label %.critedge40.i, label %bb.g

bb.g:                                             ; preds = %_ZNK2v85MaybeIbE2ToEPb.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.be = load i64, ptr %i.bd, align 8
  br label %_ZN2v88internalL35__RT_impl_Runtime_GrowArrayElementsENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge40.i:                                    ; preds = %_ZNK2v85MaybeIbE2ToEPb.exit
  %i.bf = and i16 %i.bb, 256
  %.not77 = icmp eq i16 %i.bf, 0
  br i1 %.not77, label %_ZN2v88internalL35__RT_impl_Runtime_GrowArrayElementsENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %.critedge40.i._crit_edge

.critedge40.i._crit_edge:                         ; preds = %.critedge40.i
  %.pre = load i64, ptr %1, align 8
  %.pre78 = add i64 %.pre, 15
  %.pre79 = inttoptr i64 %.pre78 to ptr
  br label %bb.h

bb.h:                                             ; preds = %.critedge40.i._crit_edge, %.critedge.i
  %.pre-phi80 = phi ptr [ %.pre79, %.critedge40.i._crit_edge ], [ %i.ak, %.critedge.i ]
  %i.bg = load i64, ptr %.pre-phi80, align 8
  br label %_ZN2v88internalL35__RT_impl_Runtime_GrowArrayElementsENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL35__RT_impl_Runtime_GrowArrayElementsENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.h, %bb.d, %.critedge40.i, %bb.g
  %.sroa.038.2 = phi i64 [ %i.bg, %bb.h ], [ 0, %bb.d ], [ 0, %.critedge40.i ], [ %i.be, %bb.g ], [ 0, %bb.e ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bh = load i32, ptr %i.e, align 8
  %i.bi = add nsw i32 %i.bh, -1
  store i32 %i.bi, ptr %i.e, align 8
  %i.bj = load ptr, ptr %i.c, align 8
  %.not.i2 = icmp eq ptr %i.bj, %i.d
  br i1 %.not.i2, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.i, !prof !7

bb.i:                                             ; preds = %_ZN2v88internalL35__RT_impl_Runtime_GrowArrayElementsENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.i, %_ZN2v88internalL35__RT_impl_Runtime_GrowArrayElementsENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.038.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal20Runtime_ArrayIsArrayEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8                ; 2 uses
  %i.i = and i64 %i.h, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i64 %i.h, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2
  %i.q = icmp eq i16 %i.p, 2119
  br i1 %i.q, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 302
  br i1 %i.v, label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit, label %_ZNKR2v85MaybeIbE8FromJustEv.exit

_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit: ; preds = %bb.c
  %i.w = tail call i16 @_ZN2v88internal7JSProxy7IsArrayENS0_12DirectHandleIS1_EE(ptr nonnull %1) #11 ; 2 uses
  %i.x = trunc i16 %i.w to i1
  br i1 %i.x, label %.thread, label %bb.d

.thread:                                          ; preds = %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit
  %i.y = and i16 %i.w, 256
  %.sroa.5.0.extract.trunc.not = icmp eq i16 %i.y, 0
  %i.z = select i1 %.sroa.5.0.extract.trunc.not, i64 680, i64 672
  br label %_ZNKR2v85MaybeIbE8FromJustEv.exit

bb.d:                                             ; preds = %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIsArrayENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %bb.c, %bb.b, %bb.a, %.thread
  %.sroa.5.0.extract.trunc5557 = phi i64 [ %i.z, %.thread ], [ 680, %bb.c ], [ 672, %bb.b ], [ 680, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = add i64 %i.ac, -55464
  %i.ae = inttoptr i64 %i.ad to ptr
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.5.0.extract.trunc5557
  br label %_ZN2v88internalL30__RT_impl_Runtime_ArrayIsArrayENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL30__RT_impl_Runtime_ArrayIsArrayENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit, %bb.d
  %.sroa.019.0.in = phi ptr [ %i.aa, %bb.d ], [ %.sroa.03.0.in.i, %_ZNKR2v85MaybeIbE8FromJustEv.exit ]
  %.sroa.019.0 = load i64, ptr %.sroa.019.0.in, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.af = load i32, ptr %i.e, align 8
  %i.ag = add nsw i32 %i.af, -1
  store i32 %i.ag, ptr %i.e, align 8
  %i.ah = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ah, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN2v88internalL30__RT_impl_Runtime_ArrayIsArrayENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.e, %_ZN2v88internalL30__RT_impl_Runtime_ArrayIsArrayENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.019.0
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v88internal15Runtime_IsArrayEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %.fr = freeze i16 %i.h
  %i.i = icmp eq i16 %.fr, 2119
  %spec.select = select i1 %i.i, i64 672, i64 680
  br label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %i.j = phi i64 [ %spec.select, %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit ], [ 680, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %.in.in = ptrtoint ptr %i.k to i64
  %.in = add i64 %.in.in, -55464
  %i.l = inttoptr i64 %.in to ptr
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8
  ret i64 %.sroa.03.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal31Runtime_ArraySpeciesConstructorEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZN2v88internalL41__RT_impl_Runtime_ArraySpeciesConstructorENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = tail call ptr @_ZN2v88internal6Object23ArraySpeciesConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE(ptr noundef %2, ptr %1) #11 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 912
  %.sroa.012.0.in = select i1 %.not, ptr %i.i, ptr %i.h
  %.sroa.012.0 = load i64, ptr %.sroa.012.0.in, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.j = load i32, ptr %i.e, align 8
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %i.e, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.a, !prof !7

bb.a:                                             ; preds = %_ZN2v88internalL41__RT_impl_Runtime_ArraySpeciesConstructorENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.a, %_ZN2v88internalL41__RT_impl_Runtime_ArraySpeciesConstructorENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.012.0
}

end_hunk_0
