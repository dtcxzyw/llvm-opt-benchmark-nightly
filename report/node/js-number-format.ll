inline.NumInlined: 3488
inline.NumDeleted: 1452
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_string_view" = type { i64, ptr }
%"struct.std::piecewise_construct_t" = type { i8 }
%"struct.v8::internal::FlagValues" = type <{ %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.709", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", [4 x i8], %"class.v8::internal::FlagValue.710", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.709", %"class.v8::internal::FlagValue.709", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.709", %"class.v8::internal::FlagValue.711", %"class.v8::internal::FlagValue.711", %"class.v8::internal::FlagValue.711", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.709", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.709", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.710", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.709", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.709", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.710", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", [4 x i8], %"class.v8::internal::FlagValue.710", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.709", %"class.v8::internal::FlagValue.709", %"class.v8::internal::FlagValue.709", %"class.v8::internal::FlagValue.709", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue.708", [4 x i8], %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.709", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.710", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.710", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.711", %"class.v8::internal::FlagValue.711", %"class.v8::internal::FlagValue.711", %"class.v8::internal::FlagValue.711", %"class.v8::internal::FlagValue.711", %"class.v8::internal::FlagValue.711", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.709", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", i8, %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.709", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.710", %"class.v8::internal::FlagValue.710", %"class.v8::internal::FlagValue.710", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.709", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.711", [2 x i8], %"class.v8::internal::FlagValue.708", [4 x i8], %"class.v8::internal::FlagValue.710", %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue.709", %"class.v8::internal::FlagValue.709", [4 x i8], %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [3 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.718", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [4 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2 x i8], %"class.v8::internal::FlagValue.708", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [5 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [7 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [6 x i8], %"class.v8::internal::FlagValue.707", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", %"class.v8::internal::FlagValue", [2123 x i8] }>
%"class.v8::internal::FlagValue.711" = type { %"class.std::optional.712" }
%"class.std::optional.712" = type { %"struct.std::_Optional_base.713" }
%"struct.std::_Optional_base.713" = type { %"struct.std::_Optional_payload.715" }
%"struct.std::_Optional_payload.715" = type { %"struct.std::_Optional_payload_base.716" }
%"struct.std::_Optional_payload_base.716" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.v8::internal::FlagValue.710" = type { double }
%"class.v8::internal::FlagValue.709" = type { i32 }
%"class.v8::internal::FlagValue.718" = type { i64 }
%"class.v8::internal::FlagValue.708" = type { i32 }
%"class.v8::internal::FlagValue.707" = type { ptr }
%"class.v8::internal::FlagValue" = type { i8 }
%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }
%"class.icu_78::number::UnlocalizedNumberFormatter" = type <{ %"class.icu_78::number::NumberFormatterSettings", [8 x i8] }>
%"class.icu_78::number::NumberFormatterSettings" = type { %"struct.icu_78::number::impl::MacroProps" }
%"struct.icu_78::number::impl::MacroProps" = type { [4 x i8], %"class.icu_78::number::Notation", %"class.icu_78::MeasureUnit", %"class.icu_78::MeasureUnit", %"class.icu_78::number::Precision", i32, %"class.icu_78::number::impl::Grouper", %"class.icu_78::number::impl::Padder", %"class.icu_78::number::IntegerWidth", %"class.icu_78::number::impl::SymbolsWrapper", i32, i32, i8, i32, %"class.icu_78::number::Scale", %"class.icu_78::number::impl::StringProp", %"class.icu_78::number::impl::StringProp", ptr, ptr, i32, %"class.icu_78::Locale" }
%"class.icu_78::number::Notation" = type { i32, %"union.icu_78::number::Notation::NotationUnion" }
%"union.icu_78::number::Notation::NotationUnion" = type { %"struct.icu_78::number::Notation::NotationUnion::ScientificSettings" }
%"struct.icu_78::number::Notation::NotationUnion::ScientificSettings" = type { i8, i8, i16, i32 }
%"class.icu_78::MeasureUnit" = type <{ %"class.icu_78::UObject", ptr, i16, i8, [5 x i8] }>
%"class.icu_78::number::Precision" = type <{ i32, [4 x i8], %"union.icu_78::number::Precision::PrecisionUnion", i32, [4 x i8] }>
%"union.icu_78::number::Precision::PrecisionUnion" = type { %"struct.icu_78::number::Precision::PrecisionUnion::IncrementSettings" }
%"struct.icu_78::number::Precision::PrecisionUnion::IncrementSettings" = type { i64, i16, i16 }
%"class.icu_78::number::impl::Grouper" = type { i16, i16, i16, i32 }
%"class.icu_78::number::impl::Padder" = type { i32, %union.anon.447 }
%union.anon.447 = type { %struct.anon.448 }
%struct.anon.448 = type { i32, i32 }
%"class.icu_78::number::IntegerWidth" = type <{ %union.anon.449, i8, [3 x i8] }>
%union.anon.449 = type { i32, [4 x i8] }
%"class.icu_78::number::impl::SymbolsWrapper" = type { i32, %union.anon.451 }
%union.anon.451 = type { ptr }
%"class.icu_78::number::Scale" = type <{ i32, [4 x i8], ptr, i32, [4 x i8] }>
%"class.icu_78::number::impl::StringProp" = type { ptr, i16, i32 }
%"class.icu_78::Locale" = type { %"class.icu_78::UObject", %"union.icu_78::Locale::Payload" }
%"union.icu_78::Locale::Payload" = type { %"struct.icu_78::Locale::Heap" }
%"struct.icu_78::Locale::Heap" = type { i8, [12 x i8], [6 x i8], [4 x i8], ptr }
%"class.icu_78::number::FractionPrecision" = type { %"class.icu_78::number::Precision.base", [4 x i8] }
%"class.icu_78::number::Precision.base" = type <{ i32, [4 x i8], %"union.icu_78::number::Precision::PrecisionUnion", i32 }>
%"class.icu_78::number::IncrementPrecision" = type { %"class.icu_78::number::Precision.base", [4 x i8] }
%"class.icu_78::StringByteSink" = type { %"class.icu_78::ByteSink", ptr }
%"class.icu_78::ByteSink" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.v8::internal::DirectHandle.444" = type { %"class.v8::internal::Handle.445" }
%"class.v8::internal::Handle.445" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Reuse_or_alloc_node" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node" = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.v8::Maybe.481" = type { i8, %"class.std::vector.483" }
%"class.std::vector.483" = type { %"struct.std::_Vector_base.484" }
%"struct.std::_Vector_base.484" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.v8::internal::Intl::ResolvedLocale" = type { %"class.std::__cxx11::basic_string", %"class.icu_78::Locale", %"class.std::map" }
%"class.std::map" = type { %"class.std::_Rb_tree.492" }
%"class.std::_Rb_tree.492" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.v8::Maybe.497" = type { i8, %"struct.v8::internal::Intl::ResolvedLocale" }
%"class.std::set.499" = type { %"class.std::_Rb_tree.500" }
%"class.std::_Rb_tree.500" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.std::allocator.296" = type { i8 }
%"class.icu_78::StringPiece" = type <{ ptr, i32, [4 x i8] }>
%"class.v8::Maybe.505" = type { i8, %"class.std::__cxx11::basic_string" }
%"struct.std::array" = type { [4 x %"class.std::basic_string_view"] }
%"struct.std::array.518" = type { [4 x i32] }
%"class.v8::internal::DirectHandle" = type { %"class.v8::internal::Handle" }
%"class.v8::internal::Handle" = type { %"class.v8::internal::HandleBase" }
%"struct.std::array.531" = type { [4 x i32] }
%"struct.std::array.543" = type { [2 x %"class.std::basic_string_view"] }
%"struct.std::array.544" = type { [2 x i32] }
%"struct.std::pair.545" = type { %"class.icu_78::MeasureUnit", %"class.icu_78::MeasureUnit" }
%"class.v8::Maybe.547" = type { i8, [7 x i8], %"struct.std::pair.545" }
%"struct.std::array.560" = type { [3 x %"class.std::basic_string_view"] }
%"struct.std::array.561" = type { [3 x i32] }
%"class.icu_78::CurrencyUnit" = type { %"class.icu_78::MeasureUnit.base", [4 x i16], [4 x i8] }
%"class.icu_78::MeasureUnit.base" = type <{ %"class.icu_78::UObject", ptr, i16, i8 }>
%"class.icu_78::ConstChar16Ptr" = type { ptr }
%"struct.std::array.573" = type { [4 x i32] }
%"class.v8::Maybe.574" = type { i8, %"struct.v8::internal::Intl::NumberFormatDigitOptions" }
%"struct.v8::internal::Intl::NumberFormatDigitOptions" = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%"struct.std::array.587" = type { [2 x i32] }
%"struct.std::array.591" = type { [3 x i32] }
%"struct.std::array.603" = type { [5 x %"class.std::basic_string_view"] }
%"class.icu_78::number::LocalizedNumberFormatter" = type { %"class.icu_78::number::NumberFormatterSettings.459", ptr, [8 x i8], ptr }
%"class.icu_78::number::NumberFormatterSettings.459" = type { %"struct.icu_78::number::impl::MacroProps" }
%"class.std::shared_ptr.607" = type { %"class.std::__shared_ptr.608" }
%"class.std::__shared_ptr.608" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.v8::internal::detail::TaggedOperatorArrowRef.457" = type { %"class.v8::internal::JSNumberFormat" }
%"class.v8::internal::JSNumberFormat" = type { %"class.v8::internal::TorqueGeneratedJSNumberFormat" }
%"class.v8::internal::TorqueGeneratedJSNumberFormat" = type { %"class.v8::internal::JSObject" }
%"class.v8::internal::JSObject" = type { %"class.v8::internal::TorqueGeneratedJSObject" }
%"class.v8::internal::TorqueGeneratedJSObject" = type { %"class.v8::internal::JSReceiver" }
%"class.v8::internal::JSReceiver" = type { %"class.v8::internal::TorqueGeneratedJSReceiver" }
%"class.v8::internal::TorqueGeneratedJSReceiver" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::HeapObject" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::TaggedImpl" = type { i64 }
%"class.v8::internal::LookupIterator" = type { i32, i32, i8, i32, %"class.v8::internal::PropertyDetails", ptr, %"class.v8::internal::DirectHandle.465", %"class.v8::internal::DirectHandle.808", %"class.v8::internal::DirectHandle.806", %"class.v8::internal::DirectHandle.463", %"class.v8::internal::DirectHandle.806", i64, %"class.v8::internal::InternalIndex" }
%"class.v8::internal::PropertyDetails" = type { i32 }
%"class.v8::internal::DirectHandle.465" = type { %"class.v8::internal::Handle.466" }
%"class.v8::internal::Handle.466" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::DirectHandle.808" = type { %"class.v8::internal::Handle.809" }
%"class.v8::internal::Handle.809" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::DirectHandle.463" = type { %"class.v8::internal::Handle.464" }
%"class.v8::internal::Handle.464" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::DirectHandle.806" = type { %"class.v8::internal::Handle.807" }
%"class.v8::internal::Handle.807" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::InternalIndex" = type { i64 }
%"class.v8::internal::PropertyKey" = type { %"class.v8::internal::DirectHandle.465", i64 }
%"class.v8::Maybe.615" = type { i8, [7 x i8], %"class.icu_78::number::FormattedNumber" }
%"class.icu_78::number::FormattedNumber" = type <{ %"class.icu_78::FormattedValue", ptr, i32, [4 x i8] }>
%"class.icu_78::FormattedValue" = type { ptr }
%"class.v8::internal::SharedStringAccessGuardIfNeeded" = type { %"class.std::optional.733" }
%"class.std::optional.733" = type { %"struct.std::_Optional_base.734" }
%"struct.std::_Optional_base.734" = type { %"struct.std::_Optional_payload.736" }
%"struct.std::_Optional_payload.736" = type { %"struct.std::_Optional_payload.base.740", [7 x i8] }
%"struct.std::_Optional_payload.base.740" = type { %"struct.std::_Optional_payload_base.base.739" }
%"struct.std::_Optional_payload_base.base.739" = type <{ %"union.std::_Optional_payload_base<v8::base::LockGuard<v8::base::Mutex>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::base::LockGuard<v8::base::Mutex>>::_Storage" = type { %"class.v8::base::LockGuard" }
%"class.v8::base::LockGuard" = type { ptr }
%"class.v8::internal::PerThreadAssertScopeEmpty" = type { i8 }
%"class.v8::internal::String::FlatContent" = type { %union.anon.635, i32, i32, ptr }
%union.anon.635 = type { ptr }
%"class.v8::Maybe.617" = type { i8, [7 x i8], %"class.icu_78::number::FormattedNumberRange" }
%"class.icu_78::number::FormattedNumberRange" = type <{ %"class.icu_78::FormattedValue", ptr, i32, [4 x i8] }>
%"class.icu_78::Formattable" = type { %"class.icu_78::UObject", %union.anon.619, ptr, ptr, i32, %"class.icu_78::UnicodeString" }
%union.anon.619 = type { %struct.anon.620 }
%struct.anon.620 = type { ptr, i32 }
%"class.v8::Maybe.621" = type { i8, %"class.icu_78::Formattable" }
%"class.v8::Maybe.625" = type { i8, %"class.v8::internal::IntlMathematicalValue" }
%"class.v8::internal::IntlMathematicalValue" = type { double, %"class.v8::internal::Handle.445" }
%"class.std::vector.636" = type { %"struct.std::_Vector_base.637" }
%"struct.std::_Vector_base.637" = type { %"struct.std::_Vector_base<v8::internal::NumberFormatSpan, std::allocator<v8::internal::NumberFormatSpan>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::NumberFormatSpan, std::allocator<v8::internal::NumberFormatSpan>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::NumberFormatSpan, std::allocator<v8::internal::NumberFormatSpan>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::NumberFormatSpan, std::allocator<v8::internal::NumberFormatSpan>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.v8::internal::Intl::FormatRangeSourceTracker" = type { [2 x i32], [2 x i32] }
%"class.icu_78::ConstrainedFieldPosition" = type <{ i64, i32, i32, i32, i32, i8, [7 x i8] }>
%"struct.v8::internal::NumberFormatSpan" = type { i32, i32, i32 }
%"class.v8::Maybe.651" = type { i8, %"class.icu_78::number::LocalizedNumberRangeFormatter" }
%"class.icu_78::number::LocalizedNumberRangeFormatter" = type { %"class.icu_78::number::NumberRangeFormatterSettings", %"struct.std::atomic.623" }
%"class.icu_78::number::NumberRangeFormatterSettings" = type { %"struct.icu_78::number::impl::RangeMacroProps" }
%"struct.icu_78::number::impl::RangeMacroProps" = type { [8 x i8], %"class.icu_78::number::UnlocalizedNumberFormatter", %"class.icu_78::number::UnlocalizedNumberFormatter", i8, i32, i32, %"class.icu_78::Locale" }
%"struct.std::atomic.623" = type { %"struct.std::__atomic_base.624" }
%"struct.std::__atomic_base.624" = type { ptr }
%struct.UParseError = type { i32, i32, [16 x i16], [16 x i16] }
%"class.icu_78::number::UnlocalizedNumberRangeFormatter" = type <{ %"class.icu_78::number::NumberRangeFormatterSettings.653", [8 x i8] }>
%"class.icu_78::number::NumberRangeFormatterSettings.653" = type { %"struct.icu_78::number::impl::RangeMacroProps" }
%"class.std::tuple.685" = type { %"struct.std::_Tuple_impl.686" }
%"struct.std::_Tuple_impl.686" = type { %"struct.std::_Head_base.687" }
%"struct.std::_Head_base.687" = type { ptr }
%"class.std::tuple.688" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { ptr }
%"class.v8::internal::ConsStringIterator" = type <{ [32 x %"class.v8::internal::Tagged.723"], %"class.v8::internal::Tagged.723", i32, i32, i32, [4 x i8] }>
%"class.v8::internal::Tagged.723" = type { %"class.v8::internal::Tagged.2" }
%"class.v8::internal::Tagged.2" = type { %"class.v8::internal::TaggedImpl" }

$_ZNK6icu_7813UnicodeString10startsWithERKS0_ = comdat any

$_ZN6icu_786number23NumberFormatterSettingsINS0_26UnlocalizedNumberFormatterEED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_ = comdat any

$_ZN6icu_786number26UnlocalizedNumberFormatterC2Ev = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_ = comdat any

$_ZN2v88internal7Factory24NewStringFromStaticCharsILm14EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE = comdat any

$_ZN2v88internal7ManagedIN6icu_786number24LocalizedNumberFormatterEE4FromEPNS0_7IsolateEmSt10shared_ptrIS4_ENS0_14AllocationTypeE = comdat any

$_ZSt11make_sharedIN6icu_786number24LocalizedNumberFormatterEJRS2_EESt10shared_ptrIT_EDpOT0_ = comdat any

$_ZNSt12__shared_ptrIN6icu_786number24LocalizedNumberFormatterELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN2v88internal7Factory28NewFastOrSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEE = comdat any

$_ZN2v88internal29TorqueGeneratedJSNumberFormatINS0_14JSNumberFormatENS0_8JSObjectEE10set_localeENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE = comdat any

$_ZN2v88internal14JSNumberFormat24set_icu_number_formatterENS0_6TaggedINS0_7ManagedIN6icu_786number24LocalizedNumberFormatterEEEEENS0_16WriteBarrierModeE = comdat any

$_ZN2v88internal29TorqueGeneratedJSNumberFormatINS0_14JSNumberFormatENS0_8JSObjectEE16set_bound_formatENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE = comdat any

$_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd = comdat any

$_ZN6icu_7814StringByteSinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev = comdat any

$_ZN6icu_7814StringByteSinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6AppendEPKci = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPvEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESA_Qsr3stdE13conjunction_vIDpSt9is_scalarIS9_EEEUlvE_E9_M_invokeERKSt9_Any_data = comdat any

$_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPvEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESA_Qsr3stdE13conjunction_vIDpSt9is_scalarIS9_EEEUlvE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation = comdat any

$_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6icu_7811MeasureUnitESt4lessIvESaISt4pairIS6_S8_EEEixEOS6_ = comdat any

$_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N6icu_7811MeasureUnitEESt10_Select1stISA_ESt4lessIvESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS6_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N6icu_7811MeasureUnitEESt10_Select1stISA_ESt4lessIvESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS6_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_ = comdat any

$_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N6icu_7811MeasureUnitEESt10_Select1stISA_ESt4lessIvESaISA_EE24_M_get_insert_unique_posERS6_ = comdat any

$_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N6icu_7811MeasureUnitEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZN2v88internal6String11SlowFlattenINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE = comdat any

$_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE = comdat any

$_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE = comdat any

$_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE = comdat any

$_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE = comdat any

$_ZSt27__throw_bad_optional_accessv = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_T1_ = comdat any

$_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_ = comdat any

$_ZN6icu_786number28NumberRangeFormatterSettingsINS0_31UnlocalizedNumberRangeFormatterEEC2Ev = comdat any

$_ZN6icu_786number4impl15RangeMacroPropsD2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeclIRKS8_EEPSt13_Rb_tree_nodeIS8_EOT_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_ = comdat any

$_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE = comdat any

$_ZN2v88internal6String23IsConsStringEqualToImplIcEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE = comdat any

$_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_ = comdat any

$_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6icu_786number24LocalizedNumberFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6icu_786number24LocalizedNumberFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6icu_786number24LocalizedNumberFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6icu_786number24LocalizedNumberFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN6icu_786number28NumberRangeFormatterSettingsINS0_29LocalizedNumberRangeFormatterEEC2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZTVN6icu_7814StringByteSinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN6icu_786number24LocalizedNumberFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@__const._ZN2v88internal14JSNumberFormat27NumberingSystemFromSkeletonERKN6icu_7813UnicodeStringE.numbering_system = private unnamed_addr constant [18 x i8] c"numbering-system/\00", align 16
@.str = private unnamed_addr constant [5 x i8] c"latn\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"rounding-mode-\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ceiling\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"half-ceiling\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"half-down\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"half-floor\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"half-up\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.11 = private unnamed_addr constant [21 x i16] [i16 112, i16 114, i16 101, i16 99, i16 105, i16 115, i16 105, i16 111, i16 110, i16 45, i16 105, i16 110, i16 99, i16 114, i16 101, i16 109, i16 101, i16 110, i16 116, i16 47, i16 0], align 2
@.str.12 = private unnamed_addr constant [3 x i8] c"#r\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"@r\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"#s\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"@s\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"/w\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"integer-width/*\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"precision-integer\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"precision-increment/\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.23 = private unnamed_addr constant [113 x i8] c"JSReceiver::CreateDataProperty(isolate, options, factory->locale_string(), locale, Just(kDontThrow)) .FromJust()\00", align 1
@.str.24 = private unnamed_addr constant [81 x i8] c"Intl::ToString(isolate, numberingSystem_ustr) .ToHandle(&numberingSystem_string)\00", align 1
@.str.25 = private unnamed_addr constant [138 x i8] c"JSReceiver::CreateDataProperty(isolate, options, factory->numberingSystem_string(), numberingSystem_string, Just(kDontThrow)) .FromJust()\00", align 1
@.str.26 = private unnamed_addr constant [136 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->style_string(), StyleAsString(isolate, style), Just(kDontThrow)) .FromJust()\00", align 1
@.str.27 = private unnamed_addr constant [66 x i8] c"Intl::ToString(isolate, currency_ustr).ToHandle(&currency_string)\00", align 1
@.str.28 = private unnamed_addr constant [124 x i8] c"JSReceiver::CreateDataProperty(isolate, options, factory->currency_string(), currency_string, Just(kDontThrow)) .FromJust()\00", align 1
@.str.29 = private unnamed_addr constant [157 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->currencyDisplay_string(), CurrencyDisplayString(isolate, skeleton), Just(kDontThrow)) .FromJust()\00", align 1
@.str.30 = private unnamed_addr constant [151 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->currencySign_string(), CurrencySignString(isolate, skeleton), Just(kDontThrow)) .FromJust()\00", align 1
@.str.31 = private unnamed_addr constant [165 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->unit_string(), isolate->factory()->NewStringFromAsciiChecked(unit.c_str()), Just(kDontThrow)) .FromJust()\00", align 1
@.str.32 = private unnamed_addr constant [149 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->unitDisplay_string(), UnitDisplayString(isolate, skeleton), Just(kDontThrow)) .FromJust()\00", align 1
@.str.33 = private unnamed_addr constant [191 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->minimumIntegerDigits_string(), factory->NewNumberFromInt(MinimumIntegerDigitsFromSkeleton(skeleton)), Just(kDontThrow)) .FromJust()\00", align 1
@.str.34 = private unnamed_addr constant [154 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->minimumFractionDigits_string(), factory->NewNumberFromInt(mnfd), Just(kDontThrow)) .FromJust()\00", align 1
@.str.35 = private unnamed_addr constant [154 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->maximumFractionDigits_string(), factory->NewNumberFromInt(mxfd), Just(kDontThrow)) .FromJust()\00", align 1
@.str.36 = private unnamed_addr constant [157 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->minimumSignificantDigits_string(), factory->NewNumberFromInt(mnsd), Just(kDontThrow)) .FromJust()\00", align 1
@.str.37 = private unnamed_addr constant [157 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->maximumSignificantDigits_string(), factory->NewNumberFromInt(mxsd), Just(kDontThrow)) .FromJust()\00", align 1
@.str.38 = private unnamed_addr constant [155 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->useGrouping_string(), UseGroupingFromSkeleton(isolate, skeleton), Just(kDontThrow)) .FromJust()\00", align 1
@.str.39 = private unnamed_addr constant [145 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->notation_string(), NotationAsString(isolate, notation), Just(kDontThrow)) .FromJust()\00", align 1
@.str.40 = private unnamed_addr constant [155 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->compactDisplay_string(), CompactDisplayString(isolate, skeleton), Just(kDontThrow)) .FromJust()\00", align 1
@.str.41 = private unnamed_addr constant [149 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->signDisplay_string(), SignDisplayString(isolate, skeleton), Just(kDontThrow)) .FromJust()\00", align 1
@.str.42 = private unnamed_addr constant [155 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->roundingIncrement_string(), RoundingIncrement(isolate, skeleton), Just(kDontThrow)) .FromJust()\00", align 1
@.str.43 = private unnamed_addr constant [151 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->roundingMode_string(), RoundingModeString(isolate, skeleton), Just(kDontThrow)) .FromJust()\00", align 1
@.str.44 = private unnamed_addr constant [159 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->roundingPriority_string(), RoundingPriorityString(isolate, skeleton), Just(kDontThrow)) .FromJust()\00", align 1
@.str.45 = private unnamed_addr constant [165 x i8] c"JSReceiver::CreateDataProperty( isolate, options, factory->trailingZeroDisplay_string(), TrailingZeroDisplayString(isolate, skeleton), Just(kDontThrow)) .FromJust()\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"UnwrapNumberFormat\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"nu\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"decimal\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"currency\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@constinit = private unnamed_addr constant [4 x %"class.std::basic_string_view"] [%"class.std::basic_string_view" { i64 7, ptr @.str.48 }, %"class.std::basic_string_view" { i64 7, ptr @.str.49 }, %"class.std::basic_string_view" { i64 8, ptr @.str.50 }, %"class.std::basic_string_view" { i64 4, ptr @.str.51 }], align 8
@.str.52 = private unnamed_addr constant [14 x i8] c"currency code\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"name\00", align 1
end_hunk_0
begin_hunk_1_@_ZN2v88internal21IntlMathematicalValue4FromEPNS0_7IsolateENS0_6HandleINS0_6ObjectEEE:bb.a
bb.bj:                                            ; preds = %bb.bd, %bb.bd
  %i.jr = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.jc, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit71

bb.bk:                                            ; preds = %bb.bd, %bb.bd
  %i.js = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %i.jc, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit71

bb.bl:                                            ; preds = %bb.bd
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.87) #23
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit71: ; preds = %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk
  %.0.i70 = phi i16 [ %i.jk, %bb.be ], [ %i.jm, %bb.bf ], [ %i.jn, %bb.bg ], [ %i.jp, %bb.bh ], [ %i.jq, %bb.bi ], [ %i.jr, %bb.bj ], [ %i.js, %bb.bk ] ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 8, !range !25, !noundef !26
  %i.jv = trunc nuw i8 %i.ju to i1
  store i8 0, ptr %i.jt, align 8
  br i1 %i.jv, label %bb.bm, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit83

bb.bm:                                            ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit71
  %i.jw = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i.i.i.i82 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i.i.i.i82, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit83, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jw) #22
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit83

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit83: ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit71, %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  switch i16 %.0.i70, label %.critedge [
    i16 120, label %bb.bo
    i16 111, label %bb.bo
    i16 98, label %bb.bo
    i16 88, label %bb.bo
    i16 79, label %bb.bo
    i16 66, label %bb.bo
  ]

bb.bo:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit83, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit83, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit83, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit83, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit83, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit83
  %i.jx = call noundef double @_ZN2v88internal14StringToDoubleEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS0_14ConversionFlagEd(ptr noundef nonnull %1, ptr nonnull %.sroa.07.0.i80, i32 noundef 1, double noundef 0.000000e+00) #22 ; 3 uses
  %i.jy = fcmp olt double %i.jx, f0x433FFFFFFFFFFFFF
  br i1 %i.jy, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jz = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd(ptr noundef nonnull align 1 dereferenceable(1) %1, double noundef %i.jx)
  br label %_ZNK2v88internal11MaybeHandleINS0_6BigIntEE5CheckEv.exit

bb.bq:                                            ; preds = %bb.bo
  %i.ka = call ptr @_ZN2v88internal14StringToBigIntEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull %1, ptr nonnull %.sroa.07.0.i80) #22 ; 2 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.br, label %_ZNK2v88internal11MaybeHandleINS0_6BigIntEE5CheckEv.exit

bb.br:                                            ; preds = %bb.bq
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.kd = load i64, ptr %i.kc, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i64 %i.kd, ptr %i.ke, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.kg = load ptr, ptr %i.kf, align 8            ; 2 uses
  %.not.i84 = icmp eq ptr %i.kg, null
  br i1 %.not.i84, label %_ZN2v88internal7Isolate15clear_exceptionEv.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZN2v88TryCatch5ResetEv(ptr noundef nonnull align 8 dereferenceable(41) %i.kg) #22
  br label %_ZN2v88internal7Isolate15clear_exceptionEv.exit

_ZN2v88internal7Isolate15clear_exceptionEv.exit:  ; preds = %bb.br, %bb.bs
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 1936
  br label %_ZNK2v88internal11MaybeHandleINS0_6BigIntEE5CheckEv.exit

_ZNK2v88internal11MaybeHandleINS0_6BigIntEE5CheckEv.exit: ; preds = %bb.bq, %_ZN2v88internal7Isolate15clear_exceptionEv.exit, %bb.bp
  %.sink = phi ptr [ %i.kh, %_ZN2v88internal7Isolate15clear_exceptionEv.exit ], [ %i.jz, %bb.bp ], [ %i.ka, %bb.bq ]
  store i8 1, ptr %0, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.jx, ptr %i.ki, align 8
  %.sroa.22.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %.sroa.22.0..sroa_idx132, align 8
  switch i16 %.0.i70, label %.critedge [
    i16 120, label %bb.bx
    i16 111, label %bb.bx
    i16 98, label %bb.bx
    i16 88, label %bb.bx
    i16 79, label %bb.bx
    i16 66, label %bb.bx
  ]

.critedge:                                        ; preds = %bb.ar, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit83, %_ZNK2v88internal11MaybeHandleINS0_6BigIntEE5CheckEv.exit, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.kj = call noundef double @_ZN2v88internal14StringToDoubleEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS0_14ConversionFlagEd(ptr noundef nonnull %1, ptr nonnull %.sroa.07.0.i80, i32 noundef 0, double noundef 0.000000e+00) #22 ; 6 uses
  %i.kk = fcmp uno double %i.kj, 0.000000e+00
  br i1 %i.kk, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.critedge
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 1936
  store i8 1, ptr %0, align 8, !alias.scope !220
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.kj, ptr %i.km, align 8
  %.sroa.22.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.kl, ptr %.sroa.22.0..sroa_idx136, align 8
  br label %bb.bx

bb.bu:                                            ; preds = %.critedge
  %i.kn = call double @llvm.fabs.f64(double %i.kj)
  %i.ko = fcmp ueq double %i.kn, +inf
  br i1 %i.ko, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.kp = fcmp olt double %i.kj, 0.000000e+00
  %.sroa.22.0.v = select i1 %i.kp, i64 1976, i64 1960
  %.sroa.22.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.22.0.v
  store i8 1, ptr %0, align 8, !alias.scope !223
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.kj, ptr %i.kq, align 8
  %.sroa.22.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.22.0, ptr %.sroa.22.0..sroa_idx138, align 8
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  store i8 1, ptr %0, align 8, !alias.scope !226
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.kj, ptr %i.kr, align 8
  %.sroa.22.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.07.0.i80, ptr %.sroa.22.0..sroa_idx140, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.c, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit, %bb.h, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit79, %_ZNK2v88internal11MaybeHandleINS0_6BigIntEE5CheckEv.exit, %_ZNK2v88internal11MaybeHandleINS0_6BigIntEE5CheckEv.exit, %_ZNK2v88internal11MaybeHandleINS0_6BigIntEE5CheckEv.exit, %_ZNK2v88internal11MaybeHandleINS0_6BigIntEE5CheckEv.exit, %_ZNK2v88internal11MaybeHandleINS0_6BigIntEE5CheckEv.exit, %_ZNK2v88internal11MaybeHandleINS0_6BigIntEE5CheckEv.exit, %bb.bw, %bb.bv, %bb.bt, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit
  ret void
}

declare ptr @_ZN2v88internal10JSReceiver11ToPrimitiveINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6ObjectEE9MaybeTypeEPNS0_7IsolateES5_NS0_15ToPrimitiveHintE(ptr noundef, ptr, i32 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN2v88internal6BigInt7AsInt64EPb(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare noundef double @_ZN2v88internal14StringToDoubleEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS0_14ConversionFlagEd(ptr noundef, ptr, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = fcmp oge double %1, f0xC1E0000000000000
  %i.b = fcmp ole double %1, f0x41DFFFFFFFC00000
  %or.cond.i.i = and i1 %i.a, %i.b
  br i1 %or.cond.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i1 @llvm.is.fpclass.f64(double %1, i32 32)
  br i1 %i.c, label %bb.d, label %_ZN2v88internal11IsSmiDoubleEd.exit.i

_ZN2v88internal11IsSmiDoubleEd.exit.i:            ; preds = %bb.b
  %i.d = fptosi double %1 to i32                  ; 2 uses
  %i.e = sitofp i32 %i.d to double
  %i.f = fcmp oeq double %1, %i.e
  br i1 %i.f, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit, label %bb.d

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit:     ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i
  %i.g = sext i32 %i.d to i64
  %i.h = shl nsw i64 %i.g, 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit
  %i.n = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.n, %bb.c ], [ %i.j, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit ] ; 3 uses
  %i.o = ptrtoint ptr %.0.i.i to i64
  %i.p = add i64 %i.o, 8
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr %i.i, align 8
  store i64 %i.h, ptr %.0.i.i, align 8
  br label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i, %bb.b, %bb.a
  %i.r = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #22 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %1, ptr %i.v, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.0.0 = phi ptr [ %.0.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.r, %bb.d ]
  ret ptr %.sroa.0.0
}

declare ptr @_ZN2v88internal14StringToBigIntEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef, ptr) local_unnamed_addr #2

declare void @_ZN6icu_7811FormattableC1Ed(ptr noundef nonnull align 8 dereferenceable(112), double noundef) unnamed_addr #2

declare void @_ZN6icu_7811FormattableC1ENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112), ptr, i32, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21FlattenRegionsToPartsEPSt6vectorINS0_16NumberFormatSpanESaIS2_EE(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector.636") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.k, ptr nonnull @_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_)
  %i.l = icmp sgt i64 %i.g, 192
  %scevgep.i = getelementptr i8, ptr %i.a, i64 12 ; 3 uses
  br i1 %i.l, label %.lr.ph.i.i, label %bb.z

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.q, %.lr.ph.i.i
  %.sroa.0.020.i.idx.i = phi i64 [ 12, %.lr.ph.i.i ], [ %.sroa.0.020.i.add.i, %bb.q ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.a, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr.i, %bb.q ] ; 5 uses
  %.sroa.0.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.020.i.idx.i ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.ptr.i, i64 4
  %i.p = load i32, ptr %i.o, align 4              ; 7 uses
  %i.q = load i32, ptr %i.m, align 4              ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp sgt i32 %i.p, %i.q
  %.sroa.8121.0..sroa.0.020.i.ptr.i.sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.ptr.i, i64 8
  %.sroa.8121.0.copyload.pre = load i32, ptr %.sroa.8121.0..sroa.0.020.i.ptr.i.sroa_idx.phi.trans.insert, align 4 ; 7 uses
  br i1 %i.s, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread144, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.n, align 4              ; 2 uses
  %i.u = icmp slt i32 %.sroa.8121.0.copyload.pre, %i.t
  br i1 %i.u, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread144, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp sgt i32 %.sroa.8121.0.copyload.pre, %i.t
  br i1 %i.v, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86

_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86: ; preds = %bb.f
  %i.w = load i32, ptr %.sroa.0.020.i.ptr.i, align 4
  %i.x = load i32, ptr %i.a, align 4
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread144

_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread: ; preds = %bb.f, %bb.c, %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86
  %.sroa.0.0.copyload281 = load <3 x i32>, ptr %.sroa.0.020.i.ptr.i, align 4
  %i.z = icmp samesign ugt i64 %.sroa.0.020.i.idx.i, 12
  br i1 %i.z, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 %.sroa.0.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aa, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i: ; preds = %bb.h, %bb.g
  store <3 x i32> %.sroa.0.0.copyload281, ptr %i.a, align 4
  br label %bb.q

_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread144: ; preds = %bb.d, %bb.e, %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86
  %.sroa.0115.0.copyload = load i32, ptr %.sroa.0.020.i.ptr.i, align 4 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 4
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.ad = icmp slt i32 %i.p, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i.i.preheader, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread144
  %i.ae = icmp sgt i32 %i.p, %i.ac
  br i1 %i.ae, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = icmp slt i32 %.sroa.8121.0.copyload.pre, %i.ag
  br i1 %i.ah, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp sgt i32 %.sroa.8121.0.copyload.pre, %i.ag
  br i1 %i.ai, label %.lr.ph.i.i.i.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr %.pn19.i.i, align 4
  %i.ak = icmp slt i32 %.sroa.0115.0.copyload, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread144, %bb.l
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.backedge, %.lr.ph.i.i.i.preheader
  %.sroa.0.09.i.i.i = phi ptr [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.backedge ] ; 8 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i, %.lr.ph.i.i.i.preheader ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i.backedge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.09.i.i.i, i64 12, i1 false)
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -12 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -8
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %.lr.ph.i.i.i.backedge, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  %i.ar = icmp slt i32 %.sroa.8121.0.copyload.pre, %i.aq
  br i1 %i.ar, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = icmp sgt i32 %.sroa.8121.0.copyload.pre, %i.aq
  br i1 %i.as, label %.lr.ph.i.i.i.backedge, label %bb.p

.lr.ph.i.i.i.backedge:                            ; preds = %bb.o, %.lr.ph.i.i.i, %bb.p
  br label %.lr.ph.i.i.i, !llvm.loop !229

bb.p:                                             ; preds = %bb.o
  %i.at = load i32, ptr %.sroa.0.0.i.i.i, align 4
  %i.au = icmp slt i32 %.sroa.0115.0.copyload, %i.at
  br i1 %i.au, label %.lr.ph.i.i.i.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i: ; preds = %bb.n, %bb.m, %bb.p, %bb.j, %bb.i, %bb.l
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i, %bb.l ], [ %.sroa.0.020.i.ptr.i, %bb.i ], [ %.sroa.0.020.i.ptr.i, %bb.j ], [ %.sroa.0.09.i.i.i, %bb.p ], [ %.sroa.0.09.i.i.i, %bb.m ], [ %.sroa.0.09.i.i.i, %bb.n ] ; 3 uses
  store i32 %.sroa.0115.0.copyload, ptr %.sroa.04.0.lcssa.i.i.i, align 4
  %.sroa.6118.0..sroa.04.0.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i, i64 4
  store i32 %i.p, ptr %.sroa.6118.0..sroa.04.0.lcssa.i.i.i.sroa_idx, align 4
  %.sroa.8121.0..sroa.04.0.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i, i64 8
  store i32 %.sroa.8121.0.copyload.pre, ptr %.sroa.8121.0..sroa.04.0.lcssa.i.i.i.sroa_idx, align 4
  br label %bb.q

bb.q:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i
  %.sroa.0.020.i.add.i = add nuw nsw i64 %.sroa.0.020.i.idx.i, 12 ; 2 uses
  %i.av = icmp eq i64 %.sroa.0.020.i.add.i, 192
  br i1 %i.av, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, label %bb.c, !llvm.loop !230

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i: ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.c
  br i1 %i.ax, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i
  %.sroa.0.07.i.i = phi ptr [ %i.bs, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i ], [ %i.aw, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i ] ; 11 uses
  %.sroa.0124.0.copyload = load i32, ptr %.sroa.0.07.i.i, align 4 ; 3 uses
  %.sroa.6127.0..sroa.0.07.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 4
  %.sroa.6127.0.copyload = load i32, ptr %.sroa.6127.0..sroa.0.07.i.i.sroa_idx, align 4 ; 5 uses
  %.sroa.8130.0..sroa.0.07.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8
  %.sroa.8130.0.copyload = load i32, ptr %.sroa.8130.0..sroa.0.07.i.i.sroa_idx, align 4 ; 5 uses
  %.sroa.0.07.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -12 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -8
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.ba = icmp slt i32 %.sroa.6127.0.copyload, %i.az
  br i1 %i.ba, label %.lr.ph.i.i13.i.preheader, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i10.i
  %i.bb = icmp sgt i32 %.sroa.6127.0.copyload, %i.az
  br i1 %i.bb, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = icmp slt i32 %.sroa.8130.0.copyload, %i.bd
  br i1 %i.be, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = icmp sgt i32 %.sroa.8130.0.copyload, %i.bd
  br i1 %i.bf, label %.lr.ph.i.i13.i.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = load i32, ptr %.sroa.0.07.i.i.i, align 4
  %i.bh = icmp slt i32 %.sroa.0124.0.copyload, %i.bg
  br i1 %i.bh, label %.lr.ph.i.i13.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i13.i.preheader:                         ; preds = %bb.t, %.lr.ph.i10.i, %bb.u
  br label %.lr.ph.i.i13.i

.lr.ph.i.i13.i:                                   ; preds = %.lr.ph.i.i13.i.backedge, %.lr.ph.i.i13.i.preheader
  %.sroa.0.09.i.i14.i = phi ptr [ %.sroa.0.07.i.i.i, %.lr.ph.i.i13.i.preheader ], [ %.sroa.0.0.i.i16.i, %.lr.ph.i.i13.i.backedge ] ; 8 uses
  %.sroa.04.08.i.i15.i = phi ptr [ %.sroa.0.07.i.i, %.lr.ph.i.i13.i.preheader ], [ %.sroa.0.09.i.i14.i, %.lr.ph.i.i13.i.backedge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i15.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.09.i.i14.i, i64 12, i1 false)
  %.sroa.0.0.i.i16.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i14.i, i64 -12 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.sroa.0.09.i.i14.i, i64 -8
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = icmp slt i32 %.sroa.6127.0.copyload, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i13.i.backedge, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i13.i
  %i.bl = icmp sgt i32 %.sroa.6127.0.copyload, %i.bj
  br i1 %i.bl, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr inbounds i8, ptr %.sroa.0.09.i.i14.i, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = icmp slt i32 %.sroa.8130.0.copyload, %i.bn
  br i1 %i.bo, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = icmp sgt i32 %.sroa.8130.0.copyload, %i.bn
  br i1 %i.bp, label %.lr.ph.i.i13.i.backedge, label %bb.y

.lr.ph.i.i13.i.backedge:                          ; preds = %bb.x, %.lr.ph.i.i13.i, %bb.y
  br label %.lr.ph.i.i13.i, !llvm.loop !229

bb.y:                                             ; preds = %bb.x
  %i.bq = load i32, ptr %.sroa.0.0.i.i16.i, align 4
  %i.br = icmp slt i32 %.sroa.0124.0.copyload, %i.bq
  br i1 %i.br, label %.lr.ph.i.i13.i.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i: ; preds = %bb.w, %bb.v, %bb.y, %bb.s, %bb.r, %bb.u
  %.sroa.04.0.lcssa.i.i12.i = phi ptr [ %.sroa.0.07.i.i, %bb.u ], [ %.sroa.0.07.i.i, %bb.r ], [ %.sroa.0.07.i.i, %bb.s ], [ %.sroa.0.09.i.i14.i, %bb.y ], [ %.sroa.0.09.i.i14.i, %bb.v ], [ %.sroa.0.09.i.i14.i, %bb.w ] ; 3 uses
  store i32 %.sroa.0124.0.copyload, ptr %.sroa.04.0.lcssa.i.i12.i, align 4
  %.sroa.6127.0..sroa.04.0.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i12.i, i64 4
  store i32 %.sroa.6127.0.copyload, ptr %.sroa.6127.0..sroa.04.0.lcssa.i.i12.i.sroa_idx, align 4
  %.sroa.8130.0..sroa.04.0.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i12.i, i64 8
  store i32 %.sroa.8130.0.copyload, ptr %.sroa.8130.0..sroa.04.0.lcssa.i.i12.i.sroa_idx, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 12 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.c
  br i1 %i.bt, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.lr.ph.i10.i, !llvm.loop !231

bb.z:                                             ; preds = %bb.b
  %i.bu = icmp eq ptr %scevgep.i, %i.c
  br i1 %i.bu, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.ao
  %.sroa.0.020.i20.i = phi ptr [ %.sroa.0.0.i24.i, %bb.ao ], [ %scevgep.i, %.lr.ph.i19.i.preheader ] ; 12 uses
  %.pn19.i21.i = phi ptr [ %.sroa.0.020.i20.i, %bb.ao ], [ %i.a, %.lr.ph.i19.i.preheader ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i20.i, i64 4
  %i.by = load i32, ptr %i.bx, align 4            ; 7 uses
  %i.bz = load i32, ptr %i.bv, align 4            ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i19.i
  %i.cb = icmp sgt i32 %i.by, %i.bz
  %.sroa.8139.0..sroa.0.020.i20.i.sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i20.i, i64 8
  %.sroa.8139.0.copyload.pre = load i32, ptr %.sroa.8139.0..sroa.0.020.i20.i.sroa_idx.phi.trans.insert, align 4 ; 7 uses
  br i1 %i.cb, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread152, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cc = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.cd = icmp slt i32 %.sroa.8139.0.copyload.pre, %i.cc
  br i1 %i.cd, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread152, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = icmp sgt i32 %.sroa.8139.0.copyload.pre, %i.cc
  br i1 %i.ce, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76

_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76: ; preds = %bb.ac
  %i.cf = load i32, ptr %.sroa.0.020.i20.i, align 4
  %i.cg = load i32, ptr %i.a, align 4
  %i.ch = icmp slt i32 %i.cf, %i.cg
  br i1 %i.ch, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread152

_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread: ; preds = %bb.ac, %.lr.ph.i19.i, %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76
  %.sroa.0283.0.copyload = load <3 x i32>, ptr %.sroa.0.020.i20.i, align 4
  %i.ci = ptrtoint ptr %.sroa.0.020.i20.i to i64
  %i.cj = sub i64 %i.ci, %i.f                     ; 4 uses
  %i.ck = icmp sgt i64 %i.cj, 12
  br i1 %i.ck, label %bb.ad, label %bb.ae, !prof !13

bb.ad:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  %.neg24.i30.i = udiv exact i64 %i.cj, 12
  %.neg24.neg.i31.i = sub nsw i64 0, %.neg24.i30.i
  %i.cm = getelementptr inbounds [12 x i8], ptr %i.cl, i64 %.neg24.neg.i31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cm, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 %i.cj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29.i

bb.ae:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread
  %i.cn = icmp eq i64 %i.cj, 12
  br i1 %i.cn, label %bb.af, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29.i

bb.af:                                            ; preds = %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.co, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29.i: ; preds = %bb.af, %bb.ae, %bb.ad
  store <3 x i32> %.sroa.0283.0.copyload, ptr %i.a, align 4
  br label %bb.ao

_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread152: ; preds = %bb.aa, %bb.ab, %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76
  %.sroa.0133.0.copyload = load i32, ptr %.sroa.0.020.i20.i, align 4 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 4
  %i.cq = load i32, ptr %i.cp, align 4            ; 2 uses
  %i.cr = icmp slt i32 %i.by, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i25.i.preheader, label %bb.ag

bb.ag:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread152
  %i.cs = icmp sgt i32 %i.by, %i.cq
  br i1 %i.cs, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %i.cu = load i32, ptr %i.ct, align 4            ; 2 uses
  %i.cv = icmp slt i32 %.sroa.8139.0.copyload.pre, %i.cu
  br i1 %i.cv, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cw = icmp sgt i32 %.sroa.8139.0.copyload.pre, %i.cu
  br i1 %i.cw, label %.lr.ph.i.i25.i.preheader, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cx = load i32, ptr %.pn19.i21.i, align 4
  %i.cy = icmp slt i32 %.sroa.0133.0.copyload, %i.cx
  br i1 %i.cy, label %.lr.ph.i.i25.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i25.i.preheader:                         ; preds = %bb.ai, %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread152, %bb.aj
  br label %.lr.ph.i.i25.i

.lr.ph.i.i25.i:                                   ; preds = %.lr.ph.i.i25.i.backedge, %.lr.ph.i.i25.i.preheader
  %.sroa.0.09.i.i26.i = phi ptr [ %.pn19.i21.i, %.lr.ph.i.i25.i.preheader ], [ %.sroa.0.0.i.i28.i, %.lr.ph.i.i25.i.backedge ] ; 8 uses
  %.sroa.04.08.i.i27.i = phi ptr [ %.sroa.0.020.i20.i, %.lr.ph.i.i25.i.preheader ], [ %.sroa.0.09.i.i26.i, %.lr.ph.i.i25.i.backedge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i27.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.09.i.i26.i, i64 12, i1 false)
  %.sroa.0.0.i.i28.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i26.i, i64 -12 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.0.09.i.i26.i, i64 -8
  %i.da = load i32, ptr %i.cz, align 4            ; 2 uses
  %i.db = icmp slt i32 %i.by, %i.da
  br i1 %i.db, label %.lr.ph.i.i25.i.backedge, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i25.i
  %i.dc = icmp sgt i32 %i.by, %i.da
  br i1 %i.dc, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dd = getelementptr inbounds i8, ptr %.sroa.0.09.i.i26.i, i64 -4
  %i.de = load i32, ptr %i.dd, align 4            ; 2 uses
  %i.df = icmp slt i32 %.sroa.8139.0.copyload.pre, %i.de
  br i1 %i.df, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dg = icmp sgt i32 %.sroa.8139.0.copyload.pre, %i.de
  br i1 %i.dg, label %.lr.ph.i.i25.i.backedge, label %bb.an

.lr.ph.i.i25.i.backedge:                          ; preds = %bb.am, %.lr.ph.i.i25.i, %bb.an
  br label %.lr.ph.i.i25.i, !llvm.loop !229

bb.an:                                            ; preds = %bb.am
  %i.dh = load i32, ptr %.sroa.0.0.i.i28.i, align 4
  %i.di = icmp slt i32 %.sroa.0133.0.copyload, %i.dh
  br i1 %i.di, label %.lr.ph.i.i25.i.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i: ; preds = %bb.al, %bb.ak, %bb.an, %bb.ah, %bb.ag, %bb.aj
  %.sroa.04.0.lcssa.i.i23.i = phi ptr [ %.sroa.0.020.i20.i, %bb.aj ], [ %.sroa.0.020.i20.i, %bb.ag ], [ %.sroa.0.020.i20.i, %bb.ah ], [ %.sroa.0.09.i.i26.i, %bb.an ], [ %.sroa.0.09.i.i26.i, %bb.ak ], [ %.sroa.0.09.i.i26.i, %bb.al ] ; 3 uses
  store i32 %.sroa.0133.0.copyload, ptr %.sroa.04.0.lcssa.i.i23.i, align 4
  %.sroa.6136.0..sroa.04.0.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i23.i, i64 4
  store i32 %i.by, ptr %.sroa.6136.0..sroa.04.0.lcssa.i.i23.i.sroa_idx, align 4
  %.sroa.8139.0..sroa.04.0.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i23.i, i64 8
  store i32 %.sroa.8139.0.copyload.pre, ptr %.sroa.8139.0..sroa.04.0.lcssa.i.i23.i.sroa_idx, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29.i
  %.sroa.0.0.i24.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i20.i, i64 12 ; 2 uses
  %i.dj = icmp eq ptr %.sroa.0.0.i24.i, %i.c
  br i1 %i.dj, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.lr.ph.i19.i, !llvm.loop !230

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.ao, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, %bb.a, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, %bb.z
  %i.dk = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #24 ; 4 uses
  store i64 0, ptr %i.dk, align 8
  %i.dl = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dm = load ptr, ptr %1, align 8               ; 4 uses
  %.not.i.i46.not = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i.i46.not, label %bb.ap, label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit

bb.ap:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.119, i64 noundef 0, i64 noundef 0) #23
  unreachable

_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit: ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %i.dm, align 4
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.724.0.copyload = load i32, ptr %.sroa.724.0..sroa_idx, align 4 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.do = icmp sgt i32 %.sroa.724.0.copyload, 0
  br i1 %i.do, label %.lr.ph192, label %_ZNSt6vectorImSaImEED2Ev.exit

.lr.ph192:                                        ; preds = %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph192, %bb.bl
  %i.dr = phi ptr [ %i.dm, %.lr.ph192 ], [ %i.hh, %bb.bl ] ; 2 uses
  %i.ds = phi ptr [ %i.dl, %.lr.ph192 ], [ %i.hi, %bb.bl ]
  %.043191 = phi i32 [ 0, %.lr.ph192 ], [ %.3, %bb.bl ] ; 4 uses
  %.sroa.724.0190 = phi i32 [ %.sroa.724.0.copyload, %.lr.ph192 ], [ %.sroa.724.3, %bb.bl ] ; 4 uses
  %.044189 = phi i64 [ 1, %.lr.ph192 ], [ %.145, %bb.bl ] ; 8 uses
  %.sroa.0.0188 = phi i32 [ %.sroa.0.0.copyload, %.lr.ph192 ], [ %.sroa.0.3, %bb.bl ] ; 3 uses
  %.sroa.0104.0187 = phi ptr [ %i.dk, %.lr.ph192 ], [ %.sroa.0104.1, %bb.bl ] ; 5 uses
  %.sroa.8.0186 = phi ptr [ %i.dn, %.lr.ph192 ], [ %.sroa.8.3, %bb.bl ] ; 3 uses
  %.sroa.20.0185 = phi ptr [ %i.dn, %.lr.ph192 ], [ %.sroa.20.1, %bb.bl ] ; 4 uses
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = sdiv exact i64 %i.dv, 12
  %i.dx = icmp ult i64 %.044189, %i.dw
  br i1 %i.dx, label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit48, label %bb.ar

_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit48: ; preds = %bb.aq
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %i.dr, i64 %.044189
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit48
  %.0 = phi i32 [ %i.ea, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit48 ], [ %.sroa.724.0.copyload, %bb.aq ] ; 8 uses
  %i.eb = icmp slt i32 %.043191, %.0
  br i1 %i.eb, label %.preheader, label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit62

.preheader:                                       ; preds = %bb.ar
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %i.ec = icmp slt i32 %.sroa.724.0190, %.0
  br i1 %i.ec, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit54
  %.1181 = phi i32 [ %.2, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit54 ], [ %.043191, %.preheader ] ; 4 uses
  %.sroa.724.1180 = phi i32 [ %.sroa.724.0.copyload26, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit54 ], [ %.sroa.724.0190, %.preheader ] ; 5 uses
  %.sroa.0.1179 = phi i32 [ %.sroa.0.0.copyload18, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit54 ], [ %.sroa.0.0188, %.preheader ] ; 2 uses
  %.sroa.8.1178 = phi ptr [ %i.fg, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit54 ], [ %.sroa.8.0186, %.preheader ] ; 2 uses
  %i.ed = phi ptr [ %i.ex, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit54 ], [ %.promoted, %.preheader ] ; 6 uses
  %i.ee = icmp slt i32 %.1181, %.sroa.724.1180
  br i1 %i.ee, label %bb.as, label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit

bb.as:                                            ; preds = %.lr.ph
  %i.ef = load ptr, ptr %i.dp, align 8            ; 6 uses
  %i.eg = load ptr, ptr %i.dq, align 8
  %.not.i.i49 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not.i.i49, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 %.sroa.0.1179, ptr %i.ef, align 4
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i32 %.1181, ptr %.sroa.596.0..sroa_idx, align 4
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i32 %.sroa.724.1180, ptr %.sroa.699.0..sroa_idx, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store ptr %i.eh, ptr %i.dp, align 8
  br label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit

bb.au:                                            ; preds = %bb.as
  %i.ei = ptrtoint ptr %i.ef to i64
  %i.ej = ptrtoint ptr %i.ed to i64
  %i.ek = sub i64 %i.ei, %i.ej                    ; 6 uses
  %i.el = icmp eq i64 %i.ek, 9223372036854775800
  br i1 %i.el, label %bb.av, label %_ZNKSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #23
  unreachable

_ZNKSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.au
  %i.em = sdiv exact i64 %i.ek, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i50 = tail call i64 @llvm.umax.i64(i64 %i.em, i64 1)
  %i.en = add nsw i64 %.sroa.speculated.i.i.i.i50, %i.em ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.em
  %i.ep = tail call i64 @llvm.umin.i64(i64 %i.en, i64 768614336404564650)
  %i.eq = select i1 %i.eo, i64 768614336404564650, i64 %i.ep ; 3 uses
  %.not.i.i.i.i51 = icmp ne i64 %i.eq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i51)
  %i.er = mul nuw nsw i64 %i.eq, 12
  %i.es = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #24 ; 5 uses
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 %i.ek ; 4 uses
  store i32 %.sroa.0.1179, ptr %i.et, align 4
  %.sroa.596.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  store i32 %.1181, ptr %.sroa.596.0..sroa_idx97, align 4
  %.sroa.699.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i32 %.sroa.724.1180, ptr %.sroa.699.0..sroa_idx100, align 4
  %i.eu = icmp sgt i64 %i.ek, 0
  br i1 %i.eu, label %bb.aw, label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.aw:                                            ; preds = %_ZNKSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.es, ptr align 4 %i.ed, i64 %i.ek, i1 false)
  br label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.aw, %_ZNKSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %.not.i17.i.i.i52 = icmp eq ptr %i.ed, null
  br i1 %.not.i17.i.i.i52, label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ax
end_hunk_1
begin_hunk_2_@_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE:bb.a
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.m, align 262144
  %i.n = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not39.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.e, i64 noundef %i.f, i64 %1) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !13

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.e, i64 %i.f, i64 %1) #22
  br label %_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(32) %0, i64 %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store atomic volatile i64 %1, ptr %i.a monotonic, align 8
  %i.b = icmp sgt i32 %2, 1
  %i.c = trunc i64 %1 to i1
  %or.cond.i.i.i = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.g = and i64 %i.d, -262144
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 262144         ; 2 uses
  %i.j = and i64 %i.i, 32
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = and i64 %i.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not38.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %1, -262144
  %i.m = inttoptr i64 %i.l to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.m, align 262144
  %i.n = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not39.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.e, i64 noundef %i.f, i64 %1) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !13

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.e, i64 %i.f, i64 %1) #22
  br label %_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

declare void @_ZN2v88internal6String12WriteToFlat2IhEEvPT_NS0_6TaggedINS0_10ConsStringEEEjjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSC_2EEEE(ptr noundef, i64, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

declare void @_ZN2v88internal6String12WriteToFlat2ItEEvPT_NS0_6TaggedINS0_10ConsStringEEEjjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSC_2EEEE(ptr noundef, i64, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(20) ptr @_ZN6icu_786number15FormattedNumberaSEOS1_(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #3

declare void @_ZNK6icu_786number24LocalizedNumberFormatter12formatDoubleEdR10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::number::FormattedNumber") align 8, ptr noundef nonnull align 8 dereferenceable(312), double noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal16IsWhiteSpaceSlowEj(i32 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i16 @_ZNK2v88internal10ConsString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = and i16 %i.g, 16
  %.not.i = icmp eq i16 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #22, !inline_history !112
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #22
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #22, !inline_history !112
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.r, %bb.d ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  ret i8 %i.u
}

declare void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i16 @_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = and i16 %i.g, 16
  %.not.i = icmp eq i16 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #22, !inline_history !116
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #22
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #22, !inline_history !116
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.r, %bb.d ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.0.i, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  ret i16 %i.u
}

declare void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN2v88TryCatch5ResetEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #14

declare void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind writable sret(%"class.v8::internal::String::FlatContent") align 8, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #15 comdat {
bb.a:
  tail call void @abort() #23
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.v8::internal::NumberFormatSpan", align 8 ; 6 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 192
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 8 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph34

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEET_SH_SH_T0_.exit
  %i.g = icmp eq i64 %i.al, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph34, !llvm.loop !270

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa30 = phi i64 [ %i.c, %.lr.ph ], [ %i.ay, %bb.b ]
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
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

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i, %._crit_edge
  %.012.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.aj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i ] ; 8 uses
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
  %i.y = call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.v, ptr noundef nonnull align 4 dereferenceable(12) %i.x) #22, !inline_history !271
  %spec.select.i.i.i = select i1 %i.y, i64 %i.w, i64 %i.u ; 4 uses
  %i.z = getelementptr inbounds [12 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.aa = getelementptr inbounds [12 x i8], ptr %0, i64 %.043.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aa, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false)
  %i.ab = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ab, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !272

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
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.019.i.i.i.i = phi i64 [ %.01020.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.01020.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.01020.i.i.i.i = sdiv i64 %.01020.in.i.i.i.i, 2 ; 4 uses
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.01020.i.i.i.i ; 2 uses
  %i.af = call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %4) #22, !inline_history !273
  br i1 %i.af, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.019.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %i.ae, i64 12, i1 false)
  %i.ah = icmp sgt i64 %.01020.i.i.i.i, %.012.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i, !llvm.loop !274

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.e ], [ %.01020.i.i.i.i, %bb.f ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ai, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i.i14 = icmp eq i64 %.012.i.i, 0
  %i.aj = add nsw i64 %.012.i.i, -1
  br i1 %.not.i.i14, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit, label %bb.c, !llvm.loop !275

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_(ptr nonnull %0, ptr %storemerge19.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph34:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1933 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02032 = phi i64 [ %i.al, %bb.b ], [ %2, %.lr.ph ]
  %i.ak = phi i64 [ %i.ay, %bb.b ], [ %i.c, %.lr.ph ]
  %i.al = add nsw i64 %.02032, -1                 ; 3 uses
  %i.am = udiv i64 %i.ak, 24
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.am ; 7 uses
  %i.ao = getelementptr inbounds i8, ptr %storemerge1933, i64 -12 ; 8 uses
  %i.ap = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.an) #22, !inline_history !276
  br i1 %i.ap, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph34
  %i.aq = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.an, ptr noundef nonnull align 4 dereferenceable(12) %i.ao) #22, !inline_history !276
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload = load <3 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.an, i64 12, i1 false)
  store <3 x i32> %.sroa.0.0.copyload, ptr %i.an, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.ar = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.ao) #22, !inline_history !276
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.040.0.copyload = load <3 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.ao, i64 12, i1 false)
  store <3 x i32> %.sroa.040.0.copyload, ptr %i.ao, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %.sroa.042.0.copyload = load <3 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false)
  store <3 x i32> %.sroa.042.0.copyload, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.l:                                             ; preds = %.lr.ph34
  %i.as = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.ao) #22, !inline_history !276
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.044.0.copyload = load <3 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false)
  store <3 x i32> %.sroa.044.0.copyload, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.at = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %i.an, ptr noundef nonnull align 4 dereferenceable(12) %i.ao) #22, !inline_history !276
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.046.0.copyload = load <3 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.ao, i64 12, i1 false)
  store <3 x i32> %.sroa.046.0.copyload, ptr %i.ao, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %.sroa.048.0.copyload = load <3 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.an, i64 12, i1 false)
  store <3 x i32> %.sroa.048.0.copyload, ptr %i.an, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader, %bb.s
  %.sroa.011.0.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.s ], [ %storemerge1933, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.014.0.i.i = phi ptr [ %i.av, %bb.s ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i ], [ %i.av, %bb.q ] ; 9 uses
  %i.au = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.014.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %0) #22, !inline_history !277
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 12 ; 2 uses
  br i1 %i.au, label %bb.q, label %.preheader.i.i, !llvm.loop !278

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.i
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.1.i.i, %.preheader.i.i ], [ %.sroa.011.0.i.i, %bb.q ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -12 ; 6 uses
  %i.aw = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.011.1.i.i) #22, !inline_history !277
  br i1 %i.aw, label %.preheader.i.i, label %bb.r, !llvm.loop !279

bb.r:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %.not.i.i, label %bb.s, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEET_SH_SH_T0_.exit

bb.s:                                             ; preds = %bb.r
  %.sroa.050.0.copyload = load <3 x i32>, ptr %.sroa.014.1.i.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.014.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.011.1.i.i, i64 12, i1 false)
  store <3 x i32> %.sroa.050.0.copyload, ptr %.sroa.011.1.i.i, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_SH_T0_.exit.i, !llvm.loop !280

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEET_SH_SH_T0_.exit: ; preds = %bb.r
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge1933, i64 noundef %i.al, ptr %3)
  %i.ax = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.ay = sub i64 %i.ax, %i.a                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 192
  br i1 %i.az, label %bb.b, label %.loopexit, !llvm.loop !270

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEET_SH_SH_T0_.exit, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.v8::internal::NumberFormatSpan", align 8 ; 8 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 12
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -12 ; 4 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.e, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false)
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.a                       ; 3 uses
  %i.h = sdiv exact i64 %i.g, 12                  ; 3 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %2, align 8 ; 2 uses
  %i.i = add nsw i64 %i.h, -1
  %i.j = sdiv i64 %i.i, 2
  %i.k = icmp sgt i64 %i.g, 24
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.043.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.l = shl i64 %.043.i.i, 1                     ; 2 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr inbounds [12 x i8], ptr %0, i64 %i.m
  %i.o = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.p = getelementptr inbounds [12 x i8], ptr %0, i64 %i.o
  %i.q = call noundef zeroext i1 %.sroa.01.0.copyload.i(ptr noundef nonnull align 4 dereferenceable(12) %i.n, ptr noundef nonnull align 4 dereferenceable(12) %i.p) #22, !inline_history !281
  %spec.select.i.i = select i1 %i.q, i64 %i.o, i64 %i.m ; 4 uses
  %i.r = getelementptr inbounds [12 x i8], ptr %0, i64 %spec.select.i.i
  %i.s = getelementptr inbounds [12 x i8], ptr %0, i64 %.043.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false)
  %i.t = icmp slt i64 %spec.select.i.i, %i.j
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !272

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.u = and i64 %i.h, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.w = add nsw i64 %i.h, -2
  %i.x = ashr exact i64 %i.w, 1
  %i.y = icmp eq i64 %.0.lcssa.i.i, %i.x
  br i1 %i.y, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.z = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aa = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds [12 x i8], ptr %0, i64 %.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %i.ab, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.05.0.copyload.i, ptr %3, align 8
  store i32 %.sroa.4.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.05.0.copyload.i, ptr %3, align 8
  store i32 %.sroa.4.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.019.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.aa, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.019.i.i.i = phi i64 [ %.01020.i.i1011.i, %bb.e ], [ %.019.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.01020.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.01020.i.i1011.i = lshr i64 %.01020.in.i.i.i, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.01020.i.i1011.i ; 2 uses
  %i.ae = call noundef zeroext i1 %.sroa.01.0.copyload.i(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %3) #22, !inline_history !282
  br i1 %i.ae, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds [12 x i8], ptr %0, i64 %.019.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.af, ptr noundef nonnull align 4 dereferenceable(12) %i.ad, i64 12, i1 false)
  %.not12.i = icmp eq i64 %.01020.i.i1011.i, 0
  br i1 %.not12.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !274

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.ag = getelementptr inbounds [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ah = icmp sgt i64 %i.g, 12
  br i1 %i.ah, label %bb.b, label %._crit_edge, !llvm.loop !283

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN2v88internal4Intl24FormatRangeSourceTrackerC1Ev(ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

declare void @_ZN6icu_7824ConstrainedFieldPositionC1Ev(ptr noundef nonnull align 8 dereferenceable(25)) unnamed_addr #2

declare void @_ZN2v88internal4Intl24FormatRangeSourceTracker3AddEiii(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7824ConstrainedFieldPositionD1Ev(ptr noundef nonnull align 8 dereferenceable(25)) unnamed_addr #3

declare ptr @_ZN2v88internal4Intl17NumberFieldToTypeEPNS0_7IsolateERKNS0_16NumberFormatSpanERKN6icu_7813UnicodeStringEb(ptr noundef, ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(64), i1 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal4Intl8ToStringEPNS0_7IsolateERKN6icu_7813UnicodeStringEii(ptr noundef, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal4Intl10AddElementEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEjNS4_INS0_6StringEEES8_S8_S8_(ptr noundef, ptr, i32 noundef, ptr, ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal4Intl12SourceStringEPNS0_7IsolateENS1_17FormatRangeSourceE(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal4Intl24FormatRangeSourceTracker9GetSourceEii(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal4Intl10AddElementEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEjNS4_INS0_6StringEEES8_(ptr noundef, ptr, i32 noundef, ptr, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal8JSObject16ValidateElementsEPNS0_7IsolateENS0_6TaggedIS1_EE(ptr noundef, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6icu_786number28NumberRangeFormatterSettingsINS0_31UnlocalizedNumberRangeFormatterEEC2Ev(ptr noundef nonnull align 8 dereferenceable(656) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.c) #22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.d) #22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 4, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i16 -3, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 -2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 0, ptr %i.k, align 4
  store i16 -1, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 7, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 9, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 2, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i16 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i16 0, ptr %i.y, align 8
end_hunk_2
