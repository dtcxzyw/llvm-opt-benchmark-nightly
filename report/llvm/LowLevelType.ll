Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LowLevelType?download=true
inline.NumInlined: 169
inline.NumDeleted: 73
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::LLT" = type { i64 }

$_ZN4llvm11raw_ostreamlsEPKc = comdat any

$_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable = comdat any

$_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable = comdat any

$_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN4llvm3LLT11ExtendedLLTE = local_unnamed_addr global i8 0, align 1
@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"bf16\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ppcf128\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"LLT_invalid\00", align 1
@_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable = linkonce_odr local_unnamed_addr constant <{ [215 x i16], [57 x i16] }> <{ [215 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 128, i16 256, i16 64, i16 128, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 4096, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 16, i16 24, i16 32, i16 48, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 1, i16 2, i16 3, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 1, i16 2, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 4096, i16 1, i16 2, i16 3, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 2048, i16 4096, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 1, i16 2, i16 3, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 1, i16 2, i16 4, i16 8, i16 16, i16 1, i16 2, i16 4, i16 8], [57 x i16] zeroinitializer }>, comdat, align 16
@_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable = linkonce_odr local_unnamed_addr constant <{ [215 x i16], [57 x i16] }> <{ [215 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 3, i16 3, i16 4, i16 4, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 9, i16 9, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 14, i16 14, i16 14, i16 14, i16 14, i16 15, i16 15, i16 15, i16 15], [57 x i16] zeroinitializer }>, comdat, align 16
@_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable = linkonce_odr local_unnamed_addr constant <{ [263 x { i64, i8 }], [9 x { i64, i8 }] }> <{ [263 x { i64, i8 }] [{ i64, i8 } zeroinitializer, { i64, i8 } { i64 1, i8 0 }, { i64, i8 } { i64 2, i8 0 }, { i64, i8 } { i64 4, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 1, i8 0 }, { i64, i8 } { i64 2, i8 0 }, { i64, i8 } { i64 3, i8 0 }, { i64, i8 } { i64 4, i8 0 }, { i64, i8 } { i64 5, i8 0 }, { i64, i8 } { i64 6, i8 0 }, { i64, i8 } { i64 7, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 24, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 40, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 56, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 112, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 224, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 288, i8 0 }, { i64, i8 } { i64 320, i8 0 }, { i64, i8 } { i64 352, i8 0 }, { i64, i8 } { i64 384, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 768, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 1536, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 131072, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 112, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 224, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 288, i8 0 }, { i64, i8 } { i64 320, i8 0 }, { i64, i8 } { i64 352, i8 0 }, { i64, i8 } { i64 384, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 1, i8 1 }, { i64, i8 } { i64 2, i8 1 }, { i64, i8 } { i64 4, i8 1 }, { i64, i8 } { i64 8, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 8, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 1024, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 1024, i8 1 }, { i64, i8 } { i64 2048, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 24, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 40, i8 1 }, { i64, i8 } { i64 48, i8 1 }, { i64, i8 } { i64 56, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 48, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 80, i8 1 }, { i64, i8 } { i64 96, i8 1 }, { i64, i8 } { i64 112, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 96, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 160, i8 1 }, { i64, i8 } { i64 192, i8 1 }, { i64, i8 } { i64 224, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 192, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 320, i8 1 }, { i64, i8 } { i64 384, i8 1 }, { i64, i8 } { i64 448, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 384, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } zeroinitializer, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }], [9 x { i64, i8 }] zeroinitializer }>, comdat, align 16
@.str.10 = private unnamed_addr constant [99 x i8] c"Cannot implicitly convert a scalable size to a fixed-width size in `TypeSize::operator ScalarTy()`\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"vscale x \00", align 1
@switch.table._ZN4llvm3LLTC2ENS_3MVTE.1 = private unnamed_addr constant [7 x i32] [i32 1048576, i32 0, i32 2097152, i32 3145728, i32 19922944, i32 4194304, i32 5242880], align 8

@_ZN4llvm3LLTC1ENS_3MVTE = unnamed_addr alias void (ptr, i16), ptr @_ZN4llvm3LLTC2ENS_3MVTE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3LLTC2ENS_3MVTE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, i16 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i16 %1, -19
  %spec.select.i = icmp ult i16 %i.c, 197
  br i1 %spec.select.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i16 %1 to i64                  ; 2 uses
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !20
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.h ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.i, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.j = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.j, label %bb.d, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.10) #5
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.c
  %i.k = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.d
  %i.l = getelementptr i8, ptr %i.k, i64 -2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !22   ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i64
  %i.n = add nsw i16 %1, -163
  %spec.select.i.i = icmp ult i16 %i.n, 53        ; 2 uses
  %.sroa.2.0.insert.shift.i.i = zext i1 %spec.select.i.i to i64
  %i.o = icmp ugt i16 %i.m, 1
  %i.p = select i1 %i.o, i1 true, i1 %spec.select.i.i ; 2 uses
  %i.q = getelementptr i8, ptr %i.i, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 16
  %i.r = shl i64 %.sroa.0.0.copyload.i, 28
  %i.s = and i64 %i.r, 1152921504338411520
  %i.t = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i, 4
  %i.u = or disjoint i64 %i.t, %.sroa.2.0.insert.shift.i.i
  %i.v = select i1 %i.p, i64 5764607523034234880, i64 1152921504606846976
  %i.w = select i1 %i.p, i64 %i.u, i64 0
  %.pn.i = or disjoint i64 %i.s, %i.w
  %storemerge.i = or disjoint i64 %.pn.i, %i.v
  br label %bb.u

bb.e:                                             ; preds = %bb.b
  %i.x = add i16 %1, -1
  %spec.select.i42 = icmp ult i16 %i.x, 263
  br i1 %spec.select.i42, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.y = icmp eq i16 %1, 257
  %i.z = add nsw i16 %1, -216
  %spec.select.i.i43 = icmp ult i16 %i.z, 32
  %i.aa = or i1 %i.y, %spec.select.i.i43
  br i1 %i.aa, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = zext nneg i16 %1 to i64
  %i.ac = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ab ; 2 uses
  %.sroa.2.0..sroa_idx.i45 = getelementptr i8, ptr %i.ac, i64 -8
  %.sroa.2.0.copyload.i46 = load i8, ptr %.sroa.2.0..sroa_idx.i45, align 8
  %i.ad = trunc nuw i8 %.sroa.2.0.copyload.i46 to i1
  br i1 %i.ad, label %bb.h, label %_ZNK4llvm8TypeSizecvmEv.exit49

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.10) #5
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit49:                   ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %i.ac, i64 -16
  %.sroa.0.0.copyload.i44 = load i64, ptr %i.ae, align 16
  %i.af = shl i64 %.sroa.0.0.copyload.i44, 28
  %i.ag = and i64 %i.af, 1152921504338411520
  %storemerge.i51 = or disjoint i64 %i.ag, 1152921504606846976
  br label %bb.u

bb.i:                                             ; preds = %bb.a
  %i.ah = add i16 %1, -12
  %or.cond.i52 = icmp ult i16 %i.ah, 7
  %i.ai = add i16 %1, -105
  %or.cond3.i = icmp ult i16 %i.ai, 58
  %or.cond4.i = or i1 %or.cond.i52, %or.cond3.i
  %i.aj = add i16 %1, -195
  %spec.select.i53 = icmp ult i16 %i.aj, 21
  %i.ak = or i1 %spec.select.i53, %or.cond4.i     ; 2 uses
  %i.al = add i16 %1, -19
  %spec.select.i54 = icmp ult i16 %i.al, 197      ; 2 uses
  br i1 %spec.select.i54, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.am = zext nneg i16 %1 to i64                 ; 3 uses
  %i.an = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !22 ; 3 uses
  %i.aq = icmp ugt i16 %i.ap, 1
  %i.ar = add nsw i16 %1, -163
  %spec.select.i55 = icmp ult i16 %i.ar, 53       ; 3 uses
  %or.cond = select i1 %i.aq, i1 true, i1 %spec.select.i55
  br i1 %or.cond, label %.critedge40, label %.critedge.thread

.critedge40:                                      ; preds = %bb.j
  br i1 %i.ak, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.critedge40
  %i.as = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 -2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !20 ; 2 uses
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.av ; 2 uses
  %.sroa.2.0..sroa_idx.i61 = getelementptr i8, ptr %i.aw, i64 -8
  %.sroa.2.0.copyload.i62 = load i8, ptr %.sroa.2.0..sroa_idx.i61, align 8
  %i.ax = trunc nuw i8 %.sroa.2.0.copyload.i62 to i1
  br i1 %i.ax, label %bb.l, label %_ZNK4llvm3MVT13getScalarTypeEv.exit.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.10) #5
  unreachable

_ZNK4llvm3MVT13getScalarTypeEv.exit.i:            ; preds = %bb.k
  %i.ay = getelementptr i8, ptr %i.aw, i64 -16
  %.sroa.0.0.copyload.i60 = load i64, ptr %i.ay, align 16
  %.sroa.0.0.insert.ext.i.i58 = zext i16 %i.ap to i64
  %.sroa.2.0.insert.shift.i.i57 = zext i1 %spec.select.i55 to i64
  %i.az = sext i16 %i.au to i64
  %i.ba = getelementptr [4 x i8], ptr @switch.table._ZN4llvm3LLTC2ENS_3MVTE.1, i64 %i.az
  %switch.gep = getelementptr i8, ptr %i.ba, i64 -48
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.ext = zext i32 %switch.load to i64
  %i.bb = shl i64 %.sroa.0.0.copyload.i60, 28
  %i.bc = and i64 %i.bb, 1152921504338411520
  %2 = or disjoint i64 %i.bc, %switch.ext
  %3 = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i58, 4
  %i.bd = or disjoint i64 %3, %.sroa.2.0.insert.shift.i.i57
  %i.be = or disjoint i64 %2, %i.bd
  %i.bf = or disjoint i64 %i.be, 8070450532247928832
  br label %bb.u

bb.m:                                             ; preds = %.critedge40
  %i.bg = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.am
  %i.bh = getelementptr i8, ptr %i.bg, i64 -2
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !20
  %i.bj = zext i16 %i.bi to i64
  %i.bk = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bj ; 2 uses
  %.sroa.2.0..sroa_idx.i73 = getelementptr i8, ptr %i.bk, i64 -8
  %.sroa.2.0.copyload.i74 = load i8, ptr %.sroa.2.0..sroa_idx.i73, align 8
  %i.bl = trunc nuw i8 %.sroa.2.0.copyload.i74 to i1
  br i1 %i.bl, label %bb.n, label %_ZNK4llvm8TypeSizecvmEv.exit77

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.10) #5
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit77:                   ; preds = %bb.m
  %i.bm = getelementptr i8, ptr %i.bk, i64 -16
  %.sroa.0.0.copyload.i72 = load i64, ptr %i.bm, align 16
  %.sroa.2.0.insert.shift.i.i69 = zext i1 %spec.select.i55 to i64
  %.sroa.0.0.insert.ext.i.i70 = zext i16 %i.ap to i64
  %i.bn = shl i64 %.sroa.0.0.copyload.i72, 28
  %i.bo = and i64 %i.bn, 1152921504338411520
  %i.bp = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i70, 4
  %i.bq = or disjoint i64 %i.bp, %.sroa.2.0.insert.shift.i.i69
  %i.br = or disjoint i64 %i.bo, %i.bq
  %storemerge.i80 = or disjoint i64 %i.br, 6917529027641081856
  br label %bb.u

.critedge:                                        ; preds = %bb.i
  %i.bs = add i16 %1, -1
  %spec.select.i81 = icmp ult i16 %i.bs, 263
  br i1 %spec.select.i81, label %.critedge.thread, label %bb.u

.critedge.thread:                                 ; preds = %bb.j, %.critedge
  %i.bt = icmp eq i16 %1, 257
  %i.bu = add nsw i16 %1, -216
  %spec.select.i.i82 = icmp ult i16 %i.bu, 32
  %i.bv = or i1 %i.bt, %spec.select.i.i82
  br i1 %i.bv, label %bb.u, label %bb.o

bb.o:                                             ; preds = %.critedge.thread
  %i.bw = zext nneg i16 %1 to i64                 ; 2 uses
  %i.bx = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bw ; 4 uses
  br i1 %i.ak, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr i8, ptr %i.bx, i64 -16
  %.sroa.0.0.copyload.i83 = load i64, ptr %i.by, align 16
  %.sroa.2.0..sroa_idx.i84 = getelementptr i8, ptr %i.bx, i64 -8
  %.sroa.2.0.copyload.i85 = load i8, ptr %.sroa.2.0..sroa_idx.i84, align 8
  %i.bz = trunc nuw i8 %.sroa.2.0.copyload.i85 to i1
  br i1 %i.bz, label %bb.q, label %_ZNK4llvm8TypeSizecvmEv.exit88

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.10) #5
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit88:                   ; preds = %bb.p
  br i1 %spec.select.i54, label %bb.r, label %_ZNK4llvm3MVT13getScalarTypeEv.exit.i90

bb.r:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit88
  %i.ca = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bw
  %i.cb = getelementptr i8, ptr %i.ca, i64 -2
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !20
  br label %_ZNK4llvm3MVT13getScalarTypeEv.exit.i90

_ZNK4llvm3MVT13getScalarTypeEv.exit.i90:          ; preds = %bb.r, %_ZNK4llvm8TypeSizecvmEv.exit88
  %.sroa.0.0.i.i91 = phi i16 [ %i.cc, %bb.r ], [ %1, %_ZNK4llvm8TypeSizecvmEv.exit88 ]
  %i.cd = sext i16 %.sroa.0.0.i.i91 to i64
  %i.ce = getelementptr [4 x i8], ptr @switch.table._ZN4llvm3LLTC2ENS_3MVTE.1, i64 %i.cd
  %switch.gep145 = getelementptr i8, ptr %i.ce, i64 -48
  %switch.load146 = load i32, ptr %switch.gep145, align 4
  %switch.ext147 = zext i32 %switch.load146 to i64
  %i.cf = shl i64 %.sroa.0.0.copyload.i83, 28
  %i.cg = and i64 %i.cf, 1152921504338411520
  %i.ch = or disjoint i64 %i.cg, %switch.ext147
  %i.ci = or disjoint i64 %i.ch, 3458764513820540928
  br label %bb.u

bb.s:                                             ; preds = %bb.o
  %.sroa.2.0..sroa_idx.i96 = getelementptr i8, ptr %i.bx, i64 -8
  %.sroa.2.0.copyload.i97 = load i8, ptr %.sroa.2.0..sroa_idx.i96, align 8
  %i.cj = trunc nuw i8 %.sroa.2.0.copyload.i97 to i1
  br i1 %i.cj, label %bb.t, label %_ZNK4llvm8TypeSizecvmEv.exit100

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.10) #5
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit100:                  ; preds = %bb.s
  %i.ck = getelementptr i8, ptr %i.bx, i64 -16
  %.sroa.0.0.copyload.i95 = load i64, ptr %i.ck, align 16
  %i.cl = shl i64 %.sroa.0.0.copyload.i95, 28
  %i.cm = and i64 %i.cl, 1152921504338411520
  %storemerge.i102 = or disjoint i64 %i.cm, 2305843009213693952
  br label %bb.u

bb.u:                                             ; preds = %.critedge, %.critedge.thread, %bb.e, %bb.f, %_ZNK4llvm8TypeSizecvmEv.exit77, %_ZNK4llvm3MVT13getScalarTypeEv.exit.i, %_ZNK4llvm3MVT13getScalarTypeEv.exit.i90, %_ZNK4llvm8TypeSizecvmEv.exit100, %_ZNK4llvm8TypeSizecvmEv.exit, %_ZNK4llvm8TypeSizecvmEv.exit49
  %storemerge.i80.sink = phi i64 [ %storemerge.i80, %_ZNK4llvm8TypeSizecvmEv.exit77 ], [ %i.bf, %_ZNK4llvm3MVT13getScalarTypeEv.exit.i ], [ %i.ci, %_ZNK4llvm3MVT13getScalarTypeEv.exit.i90 ], [ %storemerge.i102, %_ZNK4llvm8TypeSizecvmEv.exit100 ], [ 0, %bb.e ], [ %storemerge.i, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %storemerge.i51, %_ZNK4llvm8TypeSizecvmEv.exit49 ], [ 0, %bb.f ], [ 0, %.critedge.thread ], [ 0, %.critedge ]
  store i64 %storemerge.i80.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm3LLT5printERNS_11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::LLT", align 8         ; 4 uses
  %i.a = load i64, ptr %0, align 8                ; 7 uses
  %i.b = lshr i64 %i.a, 60
  %i.c = add nsw i64 %i.b, -5
  %switch.selectcmp.i = icmp ult i64 %i.c, 4
  br i1 %switch.selectcmp.i, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str, i64 noundef 1) #6 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  store i8 60, ptr %i.g, align 1
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.k, ptr %i.f, align 8, !tbaa !18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %i.l = load i64, ptr %0, align 8                ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %bb.e, label %_ZN4llvmlsINS_12ElementCountEjEERNS_11raw_ostreamES3_RKNS_7details23FixedOrScalableQuantityIT_T0_EE.exit

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ult i64 %i.r, 9
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.11, i64 noundef 9) #6 ; 0 uses
  br label %_ZN4llvmlsINS_12ElementCountEjEERNS_11raw_ostreamES3_RKNS_7details23FixedOrScalableQuantityIT_T0_EE.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.o, ptr noundef nonnull align 1 dereferenceable(9) @.str.11, i64 9, i1 false)
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  store ptr %i.v, ptr %i.f, align 8, !tbaa !18
  br label %_ZN4llvmlsINS_12ElementCountEjEERNS_11raw_ostreamES3_RKNS_7details23FixedOrScalableQuantityIT_T0_EE.exit

_ZN4llvmlsINS_12ElementCountEjEERNS_11raw_ostreamES3_RKNS_7details23FixedOrScalableQuantityIT_T0_EE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit, %bb.f, %bb.g
  %i.w = lshr i64 %i.l, 4
  %.sroa.0.0.extract.trunc = and i64 %i.w, 65535
  %i.x = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %.sroa.0.0.extract.trunc) #6 ; 0 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ult i64 %i.ac, 3
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvmlsINS_12ElementCountEjEERNS_11raw_ostreamES3_RKNS_7details23FixedOrScalableQuantityIT_T0_EE.exit
  %i.ae = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.1, i64 noundef 3) #6
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

bb.i:                                             ; preds = %_ZN4llvmlsINS_12ElementCountEjEERNS_11raw_ostreamES3_RKNS_7details23FixedOrScalableQuantityIT_T0_EE.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.z, ptr noundef nonnull align 1 dereferenceable(3) @.str.1, i64 3, i1 false)
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

_ZN4llvm11raw_ostreamlsEPKc.exit12:               ; preds = %bb.h, %bb.i
  %.0.i.i11 = phi ptr [ %i.ae, %bb.h ], [ %1, %bb.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.ah = load i64, ptr %0, align 8               ; 7 uses
  %i.ai = icmp slt i64 %i.ah, -8070450532247928832
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12
  %i.aj = and i64 %i.ah, 1152921504605798400
end_hunk_0
