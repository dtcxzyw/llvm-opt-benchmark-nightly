inline.NumInlined: 2039
inline.NumDeleted: 1017
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.461", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", [4 x i8], %"class.v8::internal::FlagValue.462", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.461", %"class.v8::internal::FlagValue.461", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.461", %"class.v8::internal::FlagValue.463", %"class.v8::internal::FlagValue.463", %"class.v8::internal::FlagValue.463", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.461", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.461", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.462", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.461", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.461", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.462", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", [4 x i8], %"class.v8::internal::FlagValue.462", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.461", %"class.v8::internal::FlagValue.461", %"class.v8::internal::FlagValue.461", %"class.v8::internal::FlagValue.461", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.460", [4 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.461", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.462", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.462", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.463", %"class.v8::internal::FlagValue.463", %"class.v8::internal::FlagValue.463", %"class.v8::internal::FlagValue.463", %"class.v8::internal::FlagValue.463", %"class.v8::internal::FlagValue.463", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.461", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.461", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.462", %"class.v8::internal::FlagValue.462", %"class.v8::internal::FlagValue.462", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.461", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.463", [2 x i8], %"class.v8::internal::FlagValue.460", [4 x i8], %"class.v8::internal::FlagValue.462", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.461", %"class.v8::internal::FlagValue.461", [4 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.470", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.460", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.459", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.463" = type { %"class.std::optional.464" }
%"class.std::optional.464" = type { %"struct.std::_Optional_base.465" }
%"struct.std::_Optional_base.465" = type { %"struct.std::_Optional_payload.467" }
%"struct.std::_Optional_payload.467" = type { %"struct.std::_Optional_payload_base.468" }
%"struct.std::_Optional_payload_base.468" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.462" = type { double }
%"class.v8::internal::FlagValue.461" = type { i32 }
%"class.v8::internal::FlagValue.470" = type { i64 }
%"class.v8::internal::FlagValue.460" = type { i32 }
%"class.v8::internal::FlagValue.459" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.v8::base::LeakyObject" = type { [48 x i8] }
%"struct.std::atomic.11" = type { %"struct.std::__atomic_base.12" }
%"struct.std::__atomic_base.12" = type { i8 }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.v8::internal::DebuggableStackFrameIterator" = type { %"class.v8::internal::StackFrameIterator" }
%"class.v8::internal::StackFrameIterator" = type { %"class.v8::internal::StackFrameIteratorBase" }
%"class.v8::internal::StackFrameIteratorBase" = type { ptr, ptr, %union.anon.566, ptr, ptr, i8, ptr }
%union.anon.566 = type { %"class.v8::internal::EntryFrame" }
%"class.v8::internal::EntryFrame" = type { %"class.v8::internal::TypedFrame" }
%"class.v8::internal::TypedFrame" = type { %"class.v8::internal::CommonFrame" }
%"class.v8::internal::CommonFrame" = type { %"class.v8::internal::StackFrame" }
%"class.v8::internal::StackFrame" = type { ptr, ptr, ptr, %"struct.v8::internal::StackFrame::State" }
%"struct.v8::internal::StackFrame::State" = type <{ i64, i64, ptr, i64, i64, ptr, i8, i8, [6 x i8] }>
%"class.v8::internal::wasm::WasmCodeRefScope" = type { ptr, %"class.std::vector.561" }
%"class.std::vector.561" = type { %"struct.std::_Vector_base.562" }
%"struct.std::_Vector_base.562" = type { %"struct.std::_Vector_base<v8::internal::wasm::WasmCode *, std::allocator<v8::internal::wasm::WasmCode *>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::wasm::WasmCode *, std::allocator<v8::internal::wasm::WasmCode *>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::wasm::WasmCode *, std::allocator<v8::internal::wasm::WasmCode *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::wasm::WasmCode *, std::allocator<v8::internal::wasm::WasmCode *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.v8::internal::wasm::ModuleWireBytes" = type { %"class.v8::base::Vector" }
%"class.v8::base::Vector" = type { ptr, i64 }
%"class.v8::internal::wasm::WasmValue" = type { %"class.v8::internal::wasm::CanonicalValueType", [16 x i8], ptr }
%"class.v8::internal::wasm::CanonicalValueType" = type { %"class.v8::internal::wasm::ValueTypeBase" }
%"class.v8::internal::wasm::ValueTypeBase" = type { i32 }
%"class.v8::internal::detail::TaggedOperatorArrowRef.497" = type { %"class.v8::internal::WasmTrustedInstanceData" }
%"class.v8::internal::WasmTrustedInstanceData" = type { %"class.v8::internal::ExposedTrustedObject" }
%"class.v8::internal::ExposedTrustedObject" = type { %"class.v8::internal::TrustedObject" }
%"class.v8::internal::TrustedObject" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::HeapObject" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::TaggedImpl" = type { i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.v8::CompiledWasmModule" = type { %"class.std::shared_ptr.490", %"class.std::__cxx11::basic_string" }
%"class.std::shared_ptr.490" = type { %"class.std::__shared_ptr.491" }
%"class.std::__shared_ptr.491" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"struct.std::_Sp_locker" = type { i8, i8 }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"class.v8::internal::Zone" = type <{ %"struct.std::atomic.9", %"struct.std::atomic.9", i64, i64, ptr, ptr, ptr, i8, [7 x i8] }>
%"struct.std::atomic.9" = type { %"struct.std::__atomic_base.10" }
%"struct.std::__atomic_base.10" = type { i64 }
%"class.v8::internal::wasm::WasmDetectedFeatures" = type { %"class.v8::base::EnumSet.919" }
%"class.v8::base::EnumSet.919" = type { i64 }
%"struct.v8::internal::wasm::FunctionBody" = type <{ ptr, i32, [4 x i8], ptr, ptr, i8, [7 x i8] }>
%"class.v8::internal::wasm::Result" = type { ptr, %"class.v8::internal::wasm::WasmError" }
%"class.v8::internal::wasm::WasmError" = type { i32, %"class.std::__cxx11::basic_string" }
%"class.v8::internal::wasm::ErrorThrower" = type { ptr, ptr, i32, %"class.std::__cxx11::basic_string" }
%"class.v8::internal::wasm::CompileTimeImports" = type { %"class.v8::base::EnumSet.578", %"class.std::__cxx11::basic_string" }
%"class.v8::base::EnumSet.578" = type { i32 }
%"class.v8::base::OwnedVector" = type { %"class.std::unique_ptr.841", i64 }
%"class.std::unique_ptr.841" = type { %"struct.std::__uniq_ptr_data.842" }
%"struct.std::__uniq_ptr_data.842" = type { %"class.std::__uniq_ptr_impl.843" }
%"class.std::__uniq_ptr_impl.843" = type { %"class.std::tuple.844" }
%"class.std::tuple.844" = type { %"struct.std::_Tuple_impl.845" }
%"struct.std::_Tuple_impl.845" = type { %"struct.std::_Head_base.848" }
%"struct.std::_Head_base.848" = type { ptr }

$_ZN2v84base16LazyInstanceImplINS0_5MutexENS0_32StaticallyAllocatedInstanceTraitIS2_EENS0_21DefaultConstructTraitIS2_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS2_EEE12InitInstanceEPv = comdat any

$_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPvEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESA_Qsr3stdE13conjunction_vIDpSt9is_scalarIS9_EEEUlvE_E9_M_invokeERKSt9_Any_data = comdat any

$_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPvEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESA_Qsr3stdE13conjunction_vIDpSt9is_scalarIS9_EEEUlvE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNK2v88internal4wasm12NativeModule10wire_bytesEv = comdat any

$_ZNK2v88internal4wasm9WasmValue9to_stringB5cxx11Ev = comdat any

$_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str.2 = private unnamed_addr constant [17 x i8] c"v8_flags.fuzzing\00", align 1
@_ZN2v88internal12_GLOBAL__N_129g_PerIsolateWasmControlsMutexE = internal global { { i8 }, [7 x i8], [8 x i8] } { { i8 } zeroinitializer, [7 x i8] undef, [8 x i8] zeroinitializer }, align 8
@_ZZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object = internal global %"class.v8::base::LeakyObject" zeroinitializer, align 8
@_ZGVZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object = internal global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"Sync compile not allowed\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"map::at\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Sync instantiate not allowed\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"NullOrIs<To>(value)\00", align 1
@_ZN2v88internal12IsolateGroup22default_isolate_group_E = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"!IsFreelistEntry()\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"wasm-function[%d] {\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"wasm-function[%d] \22%.*s\22 {\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%4d:%*s\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"std::numeric_limits<int>::max() >= length_\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c" -> %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c" -> %ld\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c" -> %f\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c" -> Unsupported type\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"Builtins::IsBuiltinId(id)\00", align 1
@_ZN2v88internal12trap_handler25g_can_enable_trap_handlerE = external local_unnamed_addr global %"struct.std::atomic.11", align 1
@_ZN2v88internal12trap_handler25g_is_trap_handler_enabledE = external local_unnamed_addr global i8, align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"IsWasmExceptionTag(*tag)\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"v8_flags.trace_wasm_globals\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"%-11s func:%6d:0x%-4x global.%s %d val: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"turbofan\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"liftoff\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"DirectHandle [\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.38 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [5 x ptr], [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.41 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"%-11s func:%6d:0x%-4x mem:%d %s %016lu val: \00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c" store to\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"load from\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"i16\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"f32\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"f64\00", align 1
@.str.53 = private unnamed_addr constant [40 x i8] c"s128:%u %u %u %u / %08x %08x %08x %08x\0A\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"%4s:\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c" / %0*x\0A\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c" / %016lx\0A\00", align 1
@__func__._ZN2v88internal12_GLOBAL__N_127ValidateFunctionNowIfNeededEPNS0_7IsolateEPNS0_4wasm12NativeModuleEi = private unnamed_addr constant [28 x i8] c"ValidateFunctionNowIfNeeded\00", align 1
@_ZZN2v88internalL28__RT_impl_Runtime_WasmStructENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateEE17wasm_module_bytes = internal constant [17 x i8] c"\00asm\01\00\00\00\01\07\01P\00_\01~\00", align 16
@.str.60 = private unnamed_addr constant [19 x i8] c"IsJSReceiver(*obj)\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"CreateWasmObject\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"!thrower.error()\00", align 1
@_ZZN2v88internalL27__RT_impl_Runtime_WasmArrayENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateEE17wasm_module_bytes = internal constant [16 x i8] c"\00asm\01\00\00\00\01\06\01P\00^~\00", align 16
@.str.64 = private unnamed_addr constant [28 x i8] c"isolate->IsOnCentralStack()\00", align 1
@switch.table._ZN2v88internal23Runtime_WasmTraceMemoryEiPmPNS0_7IsolateE = private unnamed_addr constant [3 x ptr] [ptr @.str.33, ptr @.str.32, ptr @.str.31], align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal30Runtime_SetWasmCompileControlsEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i = icmp eq i32 %0, 2
  br i1 %.not.i, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8                ; 2 uses
  %i.i = and i64 %i.h, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.k = ptrtoint ptr %1 to i64
  %i.l = add i64 %i.k, -8
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 131
  br i1 %i.v, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.x = load i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, 1090921693184
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit4, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.b, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3, %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, %bb.a
  %i.aa = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1670), align 2, !range !5, !noundef !6
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN2v88internalL40__RT_impl_Runtime_SetWasmCompileControlsENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread, label %bb.c, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #25
  unreachable

_ZN2v88internalL40__RT_impl_Runtime_SetWasmCompileControlsENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread: ; preds = %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.ad = load i64, ptr %i.ac, align 8
  store ptr %i.b, ptr %i.a, align 8
  store i32 %i.f, ptr %i.e, align 8
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit4: ; preds = %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ae = lshr i64 %i.h, 32
  %i.af = trunc nuw i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp eq i64 %i.n, %i.ai
  %i.ak = zext i1 %i.aj to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.al = load atomic i8, ptr @_ZN2v88internal12_GLOBAL__N_129g_PerIsolateWasmControlsMutexE acquire, align 8
  %.not.i.i.i.i = icmp eq i8 %i.al, 2
  br i1 %.not.i.i.i.i, label %_ZN2v84base16LazyInstanceImplINS0_5MutexENS0_32StaticallyAllocatedInstanceTraitIS2_EENS0_21DefaultConstructTraitIS2_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS2_EEE7PointerEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit4
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @_ZN2v84base16LazyInstanceImplINS0_5MutexENS0_32StaticallyAllocatedInstanceTraitIS2_EENS0_21DefaultConstructTraitIS2_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS2_EEE12InitInstanceEPv, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal12_GLOBAL__N_129g_PerIsolateWasmControlsMutexE, i64 8), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  store ptr @_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPvEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESA_Qsr3stdE13conjunction_vIDpSt9is_scalarIS9_EEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.an, align 8
  store ptr @_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPvEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESA_Qsr3stdE13conjunction_vIDpSt9is_scalarIS9_EEEUlvE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.am, align 8
  call void @_ZN2v84base12CallOnceImplEPSt6atomicIhESt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN2v88internal12_GLOBAL__N_129g_PerIsolateWasmControlsMutexE, ptr noundef nonnull %3) #26
  %i.ao = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v84base16LazyInstanceImplINS0_5MutexENS0_32StaticallyAllocatedInstanceTraitIS2_EENS0_21DefaultConstructTraitIS2_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS2_EEE7PointerEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = call noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #26, !inline_history !8 ; 0 uses
  br label %_ZN2v84base16LazyInstanceImplINS0_5MutexENS0_32StaticallyAllocatedInstanceTraitIS2_EENS0_21DefaultConstructTraitIS2_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS2_EEE7PointerEv.exit

_ZN2v84base16LazyInstanceImplINS0_5MutexENS0_32StaticallyAllocatedInstanceTraitIS2_EENS0_21DefaultConstructTraitIS2_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS2_EEE7PointerEv.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit4, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZN2v88internal12_GLOBAL__N_129g_PerIsolateWasmControlsMutexE, i64 8)) #26
  %i.aq = load atomic i8, ptr @_ZGVZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object acquire, align 8
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEv.exit, !prof !9

bb.f:                                             ; preds = %_ZN2v84base16LazyInstanceImplINS0_5MutexENS0_32StaticallyAllocatedInstanceTraitIS2_EENS0_21DefaultConstructTraitIS2_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS2_EEE7PointerEv.exit
  %i.as = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object) #26
  %.not.i6 = icmp eq i32 %i.as, 0
  br i1 %.not.i6, label %_ZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object, i64 24), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object, i64 32), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object, i64 40), align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object) #26
  br label %_ZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEv.exit

_ZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEv.exit: ; preds = %_ZN2v84base16LazyInstanceImplINS0_5MutexENS0_32StaticallyAllocatedInstanceTraitIS2_EENS0_21DefaultConstructTraitIS2_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS2_EEE7PointerEv.exit, %bb.f, %bb.g
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object, i64 16), align 8 ; 5 uses
  %.not2.i.i.i.i = icmp eq ptr %i.at, null        ; 2 uses
  br i1 %.not2.i.i.i.i, label %_ZNSt3mapIPN2v87IsolateENS0_8internal12_GLOBAL__N_119WasmCompileControlsESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEv.exit, %.lr.ph.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.at, %_ZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEv.exit ] ; 3 uses
  %.083.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object, i64 8), %_ZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEv.exit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = icmp ult ptr %i.av, %2                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.aw, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i ; 13 uses
  %.1.in.v.i.i.i.i = select i1 %i.aw, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i7, label %_ZNSt3mapIPN2v87IsolateENS0_8internal12_GLOBAL__N_119WasmCompileControlsESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !10

_ZNSt3mapIPN2v87IsolateENS0_8internal12_GLOBAL__N_119WasmCompileControlsESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ax = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object, i64 8)
  br i1 %i.ax, label %_ZNSt3mapIPN2v87IsolateENS0_8internal12_GLOBAL__N_119WasmCompileControlsESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIPN2v87IsolateENS0_8internal12_GLOBAL__N_119WasmCompileControlsESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp ult ptr %2, %i.az
  br i1 %i.ba, label %bb.m, label %_ZN2v88internalL40__RT_impl_Runtime_SetWasmCompileControlsENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZNSt3mapIPN2v87IsolateENS0_8internal12_GLOBAL__N_119WasmCompileControlsESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.thread.i: ; preds = %_ZNSt3mapIPN2v87IsolateENS0_8internal12_GLOBAL__N_119WasmCompileControlsESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i, %_ZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEv.exit
  %i.bb = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %2, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i64 8589934591, ptr %i.bd, align 8
  %i.be = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object, i64 40), align 8
  %.not.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt3mapIPN2v87IsolateENS0_8internal12_GLOBAL__N_119WasmCompileControlsESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.thread.i
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object, i64 32), align 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = icmp ult ptr %i.bh, %2
  br i1 %i.bi, label %_ZNSt8_Rb_treeIPN2v87IsolateESt4pairIKS2_NS0_8internal12_GLOBAL__N_119WasmCompileControlsEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS4_.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt3mapIPN2v87IsolateENS0_8internal12_GLOBAL__N_119WasmCompileControlsESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.thread.i
  br i1 %.not2.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i10.i

.lr.ph.i.i.i10.i:                                 ; preds = %bb.j, %.lr.ph.i.i.i10.i
  %.01115.i.i.i.i = phi ptr [ %.011.i.i.i.i, %.lr.ph.i.i.i10.i ], [ %i.at, %bb.j ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = icmp ult ptr %2, %i.bk                  ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.bl, i64 16, i64 24
  %.in.i.i.i.i = getelementptr i8, ptr %.01115.i.i.i.i, i64 %.in.v.i.i.i.i
  %.011.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i11.i = icmp eq ptr %.011.i.i.i.i, null
  br i1 %.not.i.i.i11.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i10.i, !llvm.loop !12

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i10.i
  br i1 %i.bl, label %._crit_edge.thread.i.i.i.i, label %bb.l

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %bb.j
  %.010.lcssa20.i.i.i.i = phi ptr [ %.01115.i.i.i.i, %._crit_edge.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object, i64 8), %bb.j ] ; 4 uses
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_125GetPerIsolateWasmControlsEvE6object, i64 24), align 8
  %i.bn = icmp eq ptr %.010.lcssa20.i.i.i.i, %i.bm
  br i1 %i.bn, label %_ZNSt8_Rb_treeIPN2v87IsolateESt4pairIKS2_NS0_8internal12_GLOBAL__N_119WasmCompileControlsEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS4_.exit.thread.i.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.bo = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i.i.i.i) #28 ; 2 uses
  %.phi.trans.insert31.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %.pre32.i.i.i = load ptr, ptr %.phi.trans.insert31.i.i.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i
  %i.bp = phi ptr [ %.pre32.i.i.i, %bb.k ], [ %i.bk, %._crit_edge.i.i.i.i ]
  %.010.lcssa19.i.i.i.i = phi ptr [ %.010.lcssa20.i.i.i.i, %bb.k ], [ %.01115.i.i.i.i, %._crit_edge.i.i.i.i ]
  %.sroa.01.0.i.i.i.i = phi ptr [ %i.bo, %bb.k ], [ %.01115.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.bq = icmp ult ptr %i.bp, %2
  br i1 %i.bq, label %_ZNSt8_Rb_treeIPN2v87IsolateESt4pairIKS2_NS0_8internal12_GLOBAL__N_119WasmCompileControlsEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS4_.exit.thread.i.i, label %_ZNSt8_Rb_treeIPN2v87IsolateESt4pairIKS2_NS0_8internal12_GLOBAL__N_119WasmCompileControlsEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS4_.exit.thread15.i.i

bb.m:                                             ; preds = %bb.h
  %i.br = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 13 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store ptr %2, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i64 8589934591, ptr %i.bt, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal25Runtime_WasmNumCodeSpacesEiPmPNS0_7IsolateE:bb.a
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp ugt i16 %i.o, 302
  br i1 %i.p, label %bb.c, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit, %bb.a
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1670), align 2, !range !5, !noundef !6
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #25
  unreachable

_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 648
  br label %_ZN2v88internalL35__RT_impl_Runtime_WasmNumCodeSpacesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %i.t = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 2151
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = add i64 %i.h, 23
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i64, ptr %i.z acquire, align 8
  %i.ab = add i64 %i.aa, 263
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.ac = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.ad = add i64 %i.ac, 11
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i16, ptr %i.ae monotonic, align 2
  %i.ag = icmp eq i16 %i.af, 2154
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = add i64 %i.h, 23
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1670), align 2, !range !5, !noundef !6
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit7, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #25
  unreachable

_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit7: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 648
  br label %_ZN2v88internalL35__RT_impl_Runtime_WasmNumCodeSpacesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.i:                                             ; preds = %bb.f, %bb.d
  %.pn.in.in.in.in.in.in = phi i64 [ %i.ab, %bb.d ], [ %i.ah, %bb.f ]
  %.pn.in.in.in.in.in = inttoptr i64 %.pn.in.in.in.in.in.in to ptr
  %.pn.in.in.in.in = load i64, ptr %.pn.in.in.in.in.in, align 8
  %.pn.in.in.in = add i64 %.pn.in.in.in.in, 7
  %.pn.in.in = inttoptr i64 %.pn.in.in.in to ptr
  %.pn.in = load i64, ptr %.pn.in.in, align 8
  %.pn = inttoptr i64 %.pn.in to ptr
  %.0.i.in.in = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %.0.i.in = load ptr, ptr %.0.i.in.in, align 8
  %.0.i = load ptr, ptr %.0.i.in, align 8
  %i.al = tail call noundef i64 @_ZNK2v88internal4wasm12NativeModule31GetNumberOfCodeSpacesForTestingEv(ptr noundef nonnull align 8 dereferenceable(552) %.0.i) #26 ; 3 uses
  %i.am = icmp ult i64 %i.al, 2147483648
  br i1 %i.am, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.an = shl nuw nsw i64 %i.al, 32
  %i.ao = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ap = load ptr, ptr %i.c, align 8
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.k, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !17

bb.k:                                             ; preds = %bb.j
  %i.ar = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %2) #26
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %i.ar, %bb.k ], [ %i.ao, %bb.j ] ; 3 uses
  %i.as = ptrtoint ptr %.0.i.i.i to i64
  %i.at = add i64 %i.as, 8
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %i.a, align 8
  store i64 %i.an, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internalL35__RT_impl_Runtime_WasmNumCodeSpacesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.l:                                             ; preds = %bb.i
  %i.av = uitofp i64 %i.al to double
  %i.aw = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #26 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = add i64 %i.ax, -1
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store double %i.av, ptr %i.ba, align 1
  br label %_ZN2v88internalL35__RT_impl_Runtime_WasmNumCodeSpacesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL35__RT_impl_Runtime_WasmNumCodeSpacesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %bb.l, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit, %_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit7
  %.sroa.014.1.i.in = phi ptr [ %i.s, %_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit ], [ %i.ak, %_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit7 ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.aw, %bb.l ]
  %.sroa.014.1.i = load i64, ptr %.sroa.014.1.i.in, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.bb = load i32, ptr %i.e, align 8
  %i.bc = add nsw i32 %i.bb, -1
  store i32 %i.bc, ptr %i.e, align 8
  %i.bd = load ptr, ptr %i.c, align 8
  %.not.i2 = icmp eq ptr %i.bd, %i.d
  br i1 %.not.i2, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.m, !prof !7

bb.m:                                             ; preds = %_ZN2v88internalL35__RT_impl_Runtime_WasmNumCodeSpacesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #26
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.m, %_ZN2v88internalL35__RT_impl_Runtime_WasmNumCodeSpacesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.014.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal23Runtime_WasmTraceGlobalEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::wasm::WasmCodeRefScope", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::DebuggableStackFrameIterator", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.497", align 8 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 787), align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.27) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %0, 1
  br i1 %.not.i, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, label %bb.d

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %bb.c
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = and i64 %i.c, 1
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %bb.c
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1670), align 2, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #25
  unreachable

_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.i = load i64, ptr %i.h, align 8
  br label %_ZN2v88internalL33__RT_impl_Runtime_WasmTraceGlobalENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.j = inttoptr i64 %i.c to ptr                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN2v88internal4wasm16WasmCodeRefScopeC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN2v88internal28DebuggableStackFrameIteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef %2) #26
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.l = load ptr, ptr %i.k, align 8              ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call i64 %i.o(ptr noundef nonnull align 8 dereferenceable(80) %i.l) #26, !inline_history !27 ; 2 uses
  %i.q = add i64 %i.p, 31
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, 23
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.v, 7
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i64, ptr %i.x, align 8
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 216
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 224
  %i.ag = load i32, ptr %i.j, align 4
  %i.ah = zext i32 %i.ag to i64
  %i.ai = load ptr, ptr %i.af, align 8
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load ptr, ptr %i.l, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(80) %i.l) #26, !inline_history !27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 100
  %i.ap = load i8, ptr %i.ao, align 4
  %8 = lshr i8 %i.ap, 3
  %i.aq = and i8 %8, 3
  %9 = zext nneg i8 %i.aq to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal23Runtime_WasmTraceMemoryEiPmPNS0_7IsolateE, i64 %9
  %switch.load = load ptr, ptr %switch.gep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %10 = add i64 %i.p, 23
  %11 = inttoptr i64 %10 to ptr
  %12 = load atomic volatile i64, ptr %11 acquire, align 8
  store i64 %12, ptr %6, align 8
  call void @_ZN2v88internal23WasmTrustedInstanceData14GetGlobalValueEPNS0_7IsolateERKNS0_4wasm10WasmGlobalE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::wasm::WasmValue") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %13 = call noundef i32 @_ZNK2v88internal9WasmFrame14function_indexEv(ptr noundef nonnull align 8 dereferenceable(80) %i.l) #26
  %14 = load ptr, ptr %i.l, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %16 = load ptr, ptr %15, align 8
  %17 = call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(80) %i.l) #26, !inline_history !27
  %18 = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %19 = load i8, ptr %18, align 4
  %.not19.i = icmp eq i8 %19, 0
  %.str.29..str.30.i = select i1 %.not19.i, ptr @.str.30, ptr @.str.29
  %20 = load i32, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZNK2v88internal4wasm9WasmValue9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %21 = load ptr, ptr %7, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull %switch.load, i32 noundef %13, i32 noundef %17, ptr noundef nonnull %.str.29..str.30.i, i32 noundef %20, ptr noundef %21) #26
  %22 = load ptr, ptr %7, align 8                 ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2
  %i.ar = load i64, ptr %23, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %22, i64 noundef %i.as) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.au = load i64, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN2v88internal4wasm16WasmCodeRefScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN2v88internalL33__RT_impl_Runtime_WasmTraceGlobalENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL33__RT_impl_Runtime_WasmTraceGlobalENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.018.0 = phi i64 [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit ]
  ret i64 %.sroa.018.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal23Runtime_WasmTraceMemoryEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::wasm::WasmCodeRefScope", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::DebuggableStackFrameIterator", align 8 ; 4 uses
  %.not.i = icmp eq i32 %0, 1
  br i1 %.not.i, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, label %bb.b

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2.a, label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %bb.a
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1670), align 2, !range !5, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #25
  unreachable

_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.g = load i64, ptr %i.f, align 8
  br label %_ZN2v88internalL33__RT_impl_Runtime_WasmTraceMemoryENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2.a: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %5 = inttoptr i64 %i.a to ptr                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN2v88internal4wasm16WasmCodeRefScopeC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN2v88internal28DebuggableStackFrameIteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef %2) #26
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %7 = load ptr, ptr %6, align 8                  ; 7 uses
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 104
  %10 = load ptr, ptr %9, align 8
  %11 = call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(80) %7) #26, !inline_history !28
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 100
  %13 = load i8, ptr %12, align 4
  %14 = lshr i8 %13, 3
  %15 = and i8 %14, 3
  %16 = zext nneg i8 %15 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal23Runtime_WasmTraceMemoryEiPmPNS0_7IsolateE, i64 %16
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.h = call noundef i32 @_ZNK2v88internal9WasmFrame14function_indexEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #26
  %i.i = load ptr, ptr %7, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(80) %7) #26, !inline_history !28
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.p = load i8, ptr %i.o, align 4
  %.not36.i = icmp eq i8 %i.p, 0
  %.str.45..str.46.i = select i1 %.not36.i, ptr @.str.46, ptr @.str.45
  %i.q = load i64, ptr %5, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.44, ptr noundef nonnull %switch.load, i32 noundef %i.h, i32 noundef %i.l, i32 noundef %i.n, ptr noundef nonnull %.str.45..str.46.i, i64 noundef %i.q) #26
  %i.r = load ptr, ptr %7, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call i64 %i.t(ptr noundef nonnull align 8 dereferenceable(80) %7) #26, !inline_history !28
  %i.v = load i32, ptr %i.m, align 8
  %i.w = add i64 %i.u, 175
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = sext i32 %i.v to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = add i64 %i.ae, 23
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = add i64 %i.ah, 55
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = load i64, ptr %5, align 8
  %i.am = add i64 %i.al, %i.ak                    ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 13
  %i.ao = load i8, ptr %i.an, align 1
  switch i8 %i.ao, label %bb.k [
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 17, label %bb.h
    i8 18, label %bb.i
    i8 19, label %bb.j
  ]

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2.a
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.47) #26
  %i.ap = inttoptr i64 %i.am to ptr               ; 2 uses
  %.0.copyload.i.i.i = load i8, ptr %i.ap, align 1
  %i.aq = zext i8 %.0.copyload.i.i.i to i32
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.56, i32 noundef %i.aq) #26
  %.0.copyload.i.i4.i = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %.0.copyload.i.i4.i to i32
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.57, i32 noundef 2, i32 noundef %i.ar) #26
  br label %bb.l

bb.e:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2.a
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.48) #26
  %i.as = inttoptr i64 %i.am to ptr               ; 2 uses
  %.0.copyload.i.i.i3 = load i16, ptr %i.as, align 1
  %i.at = zext i16 %.0.copyload.i.i.i3 to i32
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.56, i32 noundef %i.at) #26
  %.0.copyload.i.i4.i4 = load i16, ptr %i.as, align 1
  %i.au = zext i16 %.0.copyload.i.i4.i4 to i32
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.57, i32 noundef 4, i32 noundef %i.au) #26
  br label %bb.l

bb.f:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2.a
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.49) #26
  %i.av = inttoptr i64 %i.am to ptr               ; 2 uses
  %.0.copyload.i.i.i5 = load i32, ptr %i.av, align 1
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.56, i32 noundef %.0.copyload.i.i.i5) #26
  %.0.copyload.i.i4.i6 = load i32, ptr %i.av, align 1
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.57, i32 noundef 8, i32 noundef %.0.copyload.i.i4.i6) #26
  br label %bb.l

bb.g:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2.a
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.50) #26
  %i.aw = inttoptr i64 %i.am to ptr               ; 2 uses
  %.0.copyload.i.i.i7 = load i64, ptr %i.aw, align 1
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.58, i64 noundef %.0.copyload.i.i.i7) #26
  %.0.copyload.i.i4.i8 = load i64, ptr %i.aw, align 1
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.59, i64 noundef %.0.copyload.i.i4.i8) #26
  br label %bb.l

bb.h:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2.a
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.51) #26
  %i.ax = inttoptr i64 %i.am to ptr               ; 2 uses
  %.0.copyload.i.i.i9 = load float, ptr %i.ax, align 1
  %i.ay = fpext float %.0.copyload.i.i.i9 to double
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.38, double noundef %i.ay) #26
  %.0.copyload.i.i4.i10 = load i32, ptr %i.ax, align 1
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.57, i32 noundef 8, i32 noundef %.0.copyload.i.i4.i10) #26
  br label %bb.l

bb.i:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2.a
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.52) #26
  %i.az = inttoptr i64 %i.am to ptr               ; 2 uses
  %.0.copyload.i.i.i11 = load double, ptr %i.az, align 1
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.38, double noundef %.0.copyload.i.i.i11) #26
  %.0.copyload.i.i4.i12 = load i64, ptr %i.az, align 1
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.59, i64 noundef %.0.copyload.i.i4.i12) #26
  br label %bb.l

bb.j:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2.a
  %i.ba = inttoptr i64 %i.am to ptr
  %.0.copyload.i.i = load i32, ptr %i.ba, align 1 ; 2 uses
  %i.bb = add i64 %i.am, 4
  %i.bc = inttoptr i64 %i.bb to ptr
  %.0.copyload.i.i13 = load i32, ptr %i.bc, align 1 ; 2 uses
  %i.bd = add i64 %i.am, 8
  %i.be = inttoptr i64 %i.bd to ptr
  %.0.copyload.i.i14 = load i32, ptr %i.be, align 1 ; 2 uses
  %i.bf = add i64 %i.am, 12
  %i.bg = inttoptr i64 %i.bf to ptr
  %.0.copyload.i.i15 = load i32, ptr %i.bg, align 1 ; 2 uses
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.53, i32 noundef %.0.copyload.i.i, i32 noundef %.0.copyload.i.i13, i32 noundef %.0.copyload.i.i14, i32 noundef %.0.copyload.i.i15, i32 noundef %.0.copyload.i.i, i32 noundef %.0.copyload.i.i13, i32 noundef %.0.copyload.i.i14, i32 noundef %.0.copyload.i.i15) #26
  br label %bb.l

bb.k:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit2.a
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.54) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.bi = load i64, ptr %i.bh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN2v88internal4wasm16WasmCodeRefScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN2v88internalL33__RT_impl_Runtime_WasmTraceMemoryENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL33__RT_impl_Runtime_WasmTraceMemoryENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit, %bb.l
  %.sroa.031.0 = phi i64 [ %i.bi, %bb.l ], [ %i.g, %_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit ]
  ret i64 %.sroa.031.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal26Runtime_WasmTierUpFunctionEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i = icmp eq i32 %0, 1
  br i1 %.not.i, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, label %bb.b

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8
  %i.i = tail call noundef zeroext i1 @_ZN2v88internal20WasmExportedFunction22IsWasmExportedFunctionENS0_6TaggedINS0_6ObjectEEE(i64 %i.h) #26
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %bb.a
  %i.j = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1670), align 2, !range !5, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN2v88internalL36__RT_impl_Runtime_WasmTierUpFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #25
  unreachable

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.l = load i64, ptr %1, align 8
  %i.m = add i64 %i.l, 31
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 7
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q acquire, align 8 ; 3 uses
  %i.s = add i64 %i.r, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = add i64 %i.u, 11
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i16, ptr %i.w monotonic, align 2
  %i.y = icmp eq i16 %i.x, 179
  br i1 %i.y, label %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #25
  unreachable

_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit: ; preds = %bb.d
  %i.z = add i64 %i.r, 39
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = add i64 %i.r, 47
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = lshr i64 %i.ae, 32
  %i.ag = trunc nuw i64 %i.af to i32              ; 3 uses
  %i.ah = add i64 %i.ab, 263
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, 7
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 216
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 84
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp ugt i32 %i.au, %i.ag
  br i1 %i.av, label %bb.f, label %bb.h

end_hunk_1
