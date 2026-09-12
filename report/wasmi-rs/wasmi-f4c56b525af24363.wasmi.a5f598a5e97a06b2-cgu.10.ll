Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.10?download=true
inline.NumInlined: 560
inline.NumDeleted: 469
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [6 x i8] c"\C0\02: \C0\00", align 1
@1 = private unnamed_addr constant [30 x i8] c"crates/wasmi/src/store/mod.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1D\00\00\00\00\00\00\00\D0\00\00\00\05\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCsefoF4u9kbII_5wasmi5store2id6StoredINtNtBD_6handle9RawHandleNtNtBD_6memory6MemoryEENtB6_5Debug3fmtBD_ }>, align 8
@4 = private unnamed_addr constant [6 x i8] c"Memory", align 1
@5 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRmNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi }>, align 8
@6 = private unnamed_addr constant [9 x i8] c"GlobalIdx", align 1
@7 = private unnamed_addr constant [3 x i8] c"I32", align 1
@8 = private unnamed_addr constant [3 x i8] c"I64", align 1
@9 = private unnamed_addr constant [3 x i8] c"F32", align 1
@10 = private unnamed_addr constant [3 x i8] c"F64", align 1
@11 = private unnamed_addr constant [4 x i8] c"V128", align 1
@12 = private unnamed_addr constant [7 x i8] c"FuncRef", align 1
@13 = private unnamed_addr constant [9 x i8] c"ExternRef", align 1
@14 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRAhj10_NtB6_5Debug3fmtCsefoF4u9kbII_5wasmi }>, align 8
@15 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi }>, align 8
@16 = private unnamed_addr constant [10 x i8] c"ImmLaneIdx", align 1
@17 = private unnamed_addr constant [20 x i8] c"DanglingBlockComment", align 1
@18 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRcNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi }>, align 8
@19 = private unnamed_addr constant [10 x i8] c"Unexpected", align 1
@20 = private unnamed_addr constant [20 x i8] c"InvalidStringElement", align 1
@21 = private unnamed_addr constant [19 x i8] c"InvalidStringEscape", align 1
@22 = private unnamed_addr constant [15 x i8] c"InvalidHexDigit", align 1
@23 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@24 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsj_NtCskKLDkoKarTP_4core3fmtcNtB5_5Debug3fmt }>, align 8
@25 = private unnamed_addr constant [8 x i8] c"Expected", align 1
@26 = private unnamed_addr constant [6 x i8] c"wanted", align 1
@27 = private unnamed_addr constant [5 x i8] c"found", align 1
@28 = private unnamed_addr constant [13 x i8] c"UnexpectedEof", align 1
@29 = private unnamed_addr constant [12 x i8] c"NumberTooBig", align 1
@30 = private unnamed_addr constant [19 x i8] c"InvalidUnicodeValue", align 1
@31 = private unnamed_addr constant [14 x i8] c"LoneUnderscore", align 1
@32 = private unnamed_addr constant [16 x i8] c"ConfusingUnicode", align 1
@33 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi }>, align 8
@34 = private unnamed_addr constant [13 x i8] c"InvalidUtf8Id", align 1
@35 = private unnamed_addr constant [7 x i8] c"EmptyId", align 1
@36 = private unnamed_addr constant [15 x i8] c"EmptyAnnotation", align 1
@switch.table._RINvMsm_NtCskKLDkoKarTP_4core5arrayANtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypej2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control7RegKindEENCINvMB1u_B1r_10wrap_mut_1By_NvMs2_B2w_B2u_3newE0EB2G_ = private unnamed_addr constant [7 x i8] c"\00\00\01\02\FF\00\00", align 2
@switch.table._RINvMsm_NtCskKLDkoKarTP_4core5arrayANtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypej2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control7RegKindEENCINvMB1u_B1r_10wrap_mut_1By_NvMs2_B2w_B2u_3newE0EB2G_.133 = private unnamed_addr constant [7 x i16] [i16 0, i16 0, i16 256, i16 512, i16 -256, i16 0, i16 0], align 2
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi = private unnamed_addr constant [7 x i8] c"\03\03\03\03\04\07\09", align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi.134 = private unnamed_addr constant [7 x ptr] [ptr @7, ptr @8, ptr @9, ptr @10, ptr @11, ptr @12, ptr @13], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V12815pairwise_binaryasNvNvB6_31i16x8_relaxed_dot_i8x16_i7x16_s3dotECsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.02.0.copyload = load i16, ptr %1, align 1, !alias.scope !26
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.43.0.copyload = load i16, ptr %.sroa.43.0..sroa_idx, align 1, !alias.scope !26
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.54.0.copyload = load i16, ptr %.sroa.54.0..sroa_idx, align 1, !alias.scope !26
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.65.0.copyload = load i16, ptr %.sroa.65.0..sroa_idx, align 1, !alias.scope !26
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.76.0.copyload = load i16, ptr %.sroa.76.0..sroa_idx, align 1, !alias.scope !26
  %.sroa.87.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.sroa.87.0.copyload = load i16, ptr %.sroa.87.0..sroa_idx, align 1, !alias.scope !26
  %.sroa.98.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.98.0.copyload = load i16, ptr %.sroa.98.0..sroa_idx, align 1, !alias.scope !26
  %.sroa.109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 14
  %.sroa.109.0.copyload = load i16, ptr %.sroa.109.0..sroa_idx, align 1, !alias.scope !26
  %.sroa.010.0.copyload = load i16, ptr %2, align 1, !alias.scope !27
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.sroa.411.0.copyload = load i16, ptr %.sroa.411.0..sroa_idx, align 1, !alias.scope !27
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.512.0.copyload = load i16, ptr %.sroa.512.0..sroa_idx, align 1, !alias.scope !27
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sroa.613.0.copyload = load i16, ptr %.sroa.613.0..sroa_idx, align 1, !alias.scope !27
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.714.0.copyload = load i16, ptr %.sroa.714.0..sroa_idx, align 1, !alias.scope !27
  %.sroa.815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 10
  %.sroa.815.0.copyload = load i16, ptr %.sroa.815.0..sroa_idx, align 1, !alias.scope !27
  %.sroa.916.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.916.0.copyload = load i16, ptr %.sroa.916.0..sroa_idx, align 1, !alias.scope !27
  %.sroa.1017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 14
  %.sroa.1017.0.copyload = load i16, ptr %.sroa.1017.0..sroa_idx, align 1, !alias.scope !27
  %i.a = tail call noundef i16 @_RNvNvNtCs5zeGauAcNNa_10wasmi_core4simd31i16x8_relaxed_dot_i8x16_i7x16_s3dot(i16 noundef %.sroa.02.0.copyload, i16 noundef %.sroa.010.0.copyload), !noalias !28
  %i.b = tail call noundef i16 @_RNvNvNtCs5zeGauAcNNa_10wasmi_core4simd31i16x8_relaxed_dot_i8x16_i7x16_s3dot(i16 noundef %.sroa.43.0.copyload, i16 noundef %.sroa.411.0.copyload), !noalias !28
  %i.c = tail call noundef i16 @_RNvNvNtCs5zeGauAcNNa_10wasmi_core4simd31i16x8_relaxed_dot_i8x16_i7x16_s3dot(i16 noundef %.sroa.54.0.copyload, i16 noundef %.sroa.512.0.copyload), !noalias !28
  %i.d = tail call noundef i16 @_RNvNvNtCs5zeGauAcNNa_10wasmi_core4simd31i16x8_relaxed_dot_i8x16_i7x16_s3dot(i16 noundef %.sroa.65.0.copyload, i16 noundef %.sroa.613.0.copyload), !noalias !28
  %i.e = tail call noundef i16 @_RNvNvNtCs5zeGauAcNNa_10wasmi_core4simd31i16x8_relaxed_dot_i8x16_i7x16_s3dot(i16 noundef %.sroa.76.0.copyload, i16 noundef %.sroa.714.0.copyload), !noalias !28
  %i.f = tail call noundef i16 @_RNvNvNtCs5zeGauAcNNa_10wasmi_core4simd31i16x8_relaxed_dot_i8x16_i7x16_s3dot(i16 noundef %.sroa.87.0.copyload, i16 noundef %.sroa.815.0.copyload), !noalias !28
  %i.g = tail call noundef i16 @_RNvNvNtCs5zeGauAcNNa_10wasmi_core4simd31i16x8_relaxed_dot_i8x16_i7x16_s3dot(i16 noundef %.sroa.98.0.copyload, i16 noundef %.sroa.916.0.copyload), !noalias !28
  %i.h = tail call noundef i16 @_RNvNvNtCs5zeGauAcNNa_10wasmi_core4simd31i16x8_relaxed_dot_i8x16_i7x16_s3dot(i16 noundef %.sroa.109.0.copyload, i16 noundef %.sroa.1017.0.copyload), !noalias !28
  store i16 %i.a, ptr %0, align 1, !alias.scope !29
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.b, ptr %.sroa.4.0..sroa_idx, align 1, !alias.scope !29
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.c, ptr %.sroa.5.0..sroa_idx, align 1, !alias.scope !29
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.d, ptr %.sroa.6.0..sroa_idx, align 1, !alias.scope !29
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.e, ptr %.sroa.7.0..sroa_idx, align 1, !alias.scope !29
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.f, ptr %.sroa.8.0..sroa_idx, align 1, !alias.scope !29
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.g, ptr %.sroa.9.0..sroa_idx, align 1, !alias.scope !29
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %i.h, ptr %.sroa.10.0..sroa_idx, align 1, !alias.scope !29
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V12815pairwise_binaryslNvNvB6_17i32x4_dot_i16x8_s3dotECsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.02.0.copyload = load i32, ptr %1, align 1, !alias.scope !47
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.43.0.copyload = load i32, ptr %.sroa.43.0..sroa_idx, align 1, !alias.scope !47
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.54.0.copyload = load i32, ptr %.sroa.54.0..sroa_idx, align 1, !alias.scope !47
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.65.0.copyload = load i32, ptr %.sroa.65.0..sroa_idx, align 1, !alias.scope !47
  %.sroa.06.0.copyload = load i32, ptr %2, align 1, !alias.scope !48
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.47.0.copyload = load i32, ptr %.sroa.47.0..sroa_idx, align 1, !alias.scope !48
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.58.0.copyload = load i32, ptr %.sroa.58.0..sroa_idx, align 1, !alias.scope !48
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.69.0.copyload = load i32, ptr %.sroa.69.0..sroa_idx, align 1, !alias.scope !48
  %i.a = tail call noundef i32 @_RNvNvNtCs5zeGauAcNNa_10wasmi_core4simd17i32x4_dot_i16x8_s3dot(i32 noundef %.sroa.02.0.copyload, i32 noundef %.sroa.06.0.copyload), !noalias !49
  %i.b = tail call noundef i32 @_RNvNvNtCs5zeGauAcNNa_10wasmi_core4simd17i32x4_dot_i16x8_s3dot(i32 noundef %.sroa.43.0.copyload, i32 noundef %.sroa.47.0.copyload), !noalias !49
  %i.c = tail call noundef i32 @_RNvNvNtCs5zeGauAcNNa_10wasmi_core4simd17i32x4_dot_i16x8_s3dot(i32 noundef %.sroa.54.0.copyload, i32 noundef %.sroa.58.0.copyload), !noalias !49
  %i.d = tail call noundef i32 @_RNvNvNtCs5zeGauAcNNa_10wasmi_core4simd17i32x4_dot_i16x8_s3dot(i32 noundef %.sroa.65.0.copyload, i32 noundef %.sroa.69.0.copyload), !noalias !49
  store i32 %i.a, ptr %0, align 1, !alias.scope !50
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.b, ptr %.sroa.4.0..sroa_idx, align 1, !alias.scope !50
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %.sroa.5.0..sroa_idx, align 1, !alias.scope !50
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.d, ptr %.sroa.6.0..sroa_idx, align 1, !alias.scope !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMs3_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V1289widen_nxmasECsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.extract.trunc.i = trunc i64 %1 to i8
  %.sroa.2.0.extract.shift.i = lshr i64 %1, 8
  %.sroa.2.0.extract.trunc.i = trunc i64 %.sroa.2.0.extract.shift.i to i8
  %.sroa.3.0.extract.shift.i = lshr i64 %1, 16
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8
  %.sroa.4.0.extract.shift.i = lshr i64 %1, 24
  %.sroa.4.0.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i8
  %.sroa.5.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.5.0.extract.trunc.i = trunc i64 %.sroa.5.0.extract.shift.i to i8
  %.sroa.6.0.extract.shift.i = lshr i64 %1, 40
  %.sroa.6.0.extract.trunc.i = trunc i64 %.sroa.6.0.extract.shift.i to i8
  %.sroa.7.0.extract.shift.i = lshr i64 %1, 48
  %.sroa.7.0.extract.trunc.i = trunc i64 %.sroa.7.0.extract.shift.i to i8
  %i.a = sext i8 %.sroa.0.0.extract.trunc.i to i16
  %i.b = sext i8 %.sroa.2.0.extract.trunc.i to i16
  %i.c = sext i8 %.sroa.3.0.extract.trunc.i to i16
  %i.d = sext i8 %.sroa.4.0.extract.trunc.i to i16
  %i.e = sext i8 %.sroa.5.0.extract.trunc.i to i16
  %i.f = sext i8 %.sroa.6.0.extract.trunc.i to i16
  %i.g = sext i8 %.sroa.7.0.extract.trunc.i to i16
  %i.h = ashr i64 %1, 56
  %i.i = trunc nsw i64 %i.h to i16
  store i16 %i.a, ptr %0, align 1, !alias.scope !54
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.b, ptr %.sroa.45.0..sroa_idx, align 1, !alias.scope !54
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.c, ptr %.sroa.56.0..sroa_idx, align 1, !alias.scope !54
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.d, ptr %.sroa.67.0..sroa_idx, align 1, !alias.scope !54
  %.sroa.78.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.e, ptr %.sroa.78.0..sroa_idx, align 1, !alias.scope !54
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.f, ptr %.sroa.89.0..sroa_idx, align 1, !alias.scope !54
  %.sroa.910.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.g, ptr %.sroa.910.0..sroa_idx, align 1, !alias.scope !54
  %.sroa.1011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %i.i, ptr %.sroa.1011.0..sroa_idx, align 1, !alias.scope !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMs3_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V1289widen_nxmhtECsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.8.0.extract.shift.i = lshr i64 %1, 56
  %.sroa.7.0.extract.shift.i = lshr i64 %1, 48
  %.sroa.6.0.extract.shift.i = lshr i64 %1, 40
  %.sroa.5.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.4.0.extract.shift.i = lshr i64 %1, 24
  %.sroa.3.0.extract.shift.i = lshr i64 %1, 16
  %.sroa.8.0.extract.trunc.i = trunc nuw nsw i64 %.sroa.8.0.extract.shift.i to i16
  %.sroa.7.0.extract.trunc.i = trunc nuw i64 %.sroa.7.0.extract.shift.i to i16
  %.sroa.6.0.extract.trunc.i = trunc i64 %.sroa.6.0.extract.shift.i to i16
  %.sroa.5.0.extract.trunc.i = trunc i64 %.sroa.5.0.extract.shift.i to i16
  %.sroa.4.0.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i16
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i16
  %.sroa.0.0.extract.trunc.i.a = trunc i64 %1 to i16 ; 2 uses
  %2 = lshr i16 %.sroa.0.0.extract.trunc.i.a, 8
  %i.a = insertelement <8 x i16> poison, i16 %.sroa.0.0.extract.trunc.i.a, i64 0
  %i.b = insertelement <8 x i16> %i.a, i16 %2, i64 1
  %i.c = insertelement <8 x i16> %i.b, i16 %.sroa.3.0.extract.trunc.i, i64 2
  %i.d = insertelement <8 x i16> %i.c, i16 %.sroa.4.0.extract.trunc.i, i64 3
  %i.e = insertelement <8 x i16> %i.d, i16 %.sroa.5.0.extract.trunc.i, i64 4
  %i.f = insertelement <8 x i16> %i.e, i16 %.sroa.6.0.extract.trunc.i, i64 5
  %i.g = insertelement <8 x i16> %i.f, i16 %.sroa.7.0.extract.trunc.i, i64 6
  %i.h = insertelement <8 x i16> %i.g, i16 %.sroa.8.0.extract.trunc.i, i64 7
  %i.i = and <8 x i16> %i.h, <i16 255, i16 -1, i16 255, i16 255, i16 255, i16 255, i16 255, i16 -1>
  store <8 x i16> %i.i, ptr %0, align 1, !alias.scope !58
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMs3_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V1289widen_nxmlxECsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %sext.i = shl i64 %1, 32
  %i.a = ashr exact i64 %sext.i, 32
  %i.b = ashr i64 %1, 32
  store i64 %i.a, ptr %0, align 1, !alias.scope !62
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.45.0..sroa_idx, align 1, !alias.scope !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMs3_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V1289widen_nxmmyECsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.2.0.extract.shift.i = lshr i64 %1, 32
  %i.a = and i64 %1, 4294967295
  store i64 %i.a, ptr %0, align 1, !alias.scope !66
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.0.extract.shift.i, ptr %.sroa.45.0..sroa_idx, align 1, !alias.scope !66
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMs3_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V1289widen_nxmslECsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.2.0.extract.shift.i = lshr i64 %1, 16
  %.sroa.3.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i16
  %i.a = sext i16 %.sroa.3.0.extract.trunc.i to i32
  %i.b = ashr i64 %1, 48
  %i.c = trunc nsw i64 %i.b to i32
  %i.d = trunc i64 %1 to i16
  %i.e = insertelement <2 x i16> poison, i16 %i.d, i64 0
  %i.f = trunc i64 %.sroa.2.0.extract.shift.i to i16
  %i.g = insertelement <2 x i16> %i.e, i16 %i.f, i64 1
  %i.h = sext <2 x i16> %i.g to <2 x i32>
  store <2 x i32> %i.h, ptr %0, align 1, !alias.scope !70
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.a, ptr %.sroa.56.0..sroa_idx, align 1, !alias.scope !70
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %.sroa.67.0..sroa_idx, align 1, !alias.scope !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMs3_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V1289widen_nxmtmECsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.extract.trunc.i = trunc i64 %1 to i32 ; 2 uses
  %2 = lshr i32 %.sroa.0.0.extract.trunc.i, 16
  %.sroa.3.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %1, 48
  %.sroa.4.0.extract.trunc.i = trunc nuw nsw i64 %.sroa.4.0.extract.shift.i to i32
  %i.a = and i32 %.sroa.0.0.extract.trunc.i, 65535
  %i.b = and i32 %.sroa.3.0.extract.trunc.i, 65535
  store i32 %i.a, ptr %0, align 1, !alias.scope !74
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %.sroa.45.0..sroa_idx, align 1, !alias.scope !74
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %.sroa.56.0..sroa_idx, align 1, !alias.scope !74
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.4.0.extract.trunc.i, ptr %.sroa.67.0..sroa_idx, align 1, !alias.scope !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i16 -256, 768) i16 @_RINvMsm_NtCskKLDkoKarTP_4core5arrayANtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypej2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control7RegKindEENCINvMB1u_B1r_10wrap_mut_1By_NvMs2_B2w_B2u_3newE0EB2G_(i16 noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
switch.lookup:
  %.sroa.4.0.extract.shift = lshr i16 %0, 8
  %.sroa.4.0.extract.trunc = zext nneg i16 %.sroa.4.0.extract.shift to i64
  %i.a = and i16 %0, 255
  %i.b = zext nneg i16 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvMsm_NtCskKLDkoKarTP_4core5arrayANtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypej2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control7RegKindEENCINvMB1u_B1r_10wrap_mut_1By_NvMs2_B2w_B2u_3newE0EB2G_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  %switch.gep9 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._RINvMsm_NtCskKLDkoKarTP_4core5arrayANtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypej2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control7RegKindEENCINvMB1u_B1r_10wrap_mut_1By_NvMs2_B2w_B2u_3newE0EB2G_.133, i64 %.sroa.4.0.extract.trunc
  %switch.load10 = load i16, ptr %switch.gep9, align 2
  %.sroa.0.0.insert.insert.i = or disjoint i16 %switch.load10, %switch.ext
  ret i16 %.sroa.0.0.insert.insert.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsm_NtCskKLDkoKarTP_4core5arrayANtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypej3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionNtNtCs6kx5fqqPdgs_8wasmi_ir5index4SlotEENCINvMB1u_B1r_10wrap_mut_1By_NCNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB3J_12OperandStack17preserve_all_regs0E0EB3T_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 4 captures(none) dereferenceable(24) initializes((0, 24)) %0, i24 %1, ptr noalias nofree noundef align 8 dereferenceable(112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.noexc:
  %i.a = alloca [16 x i8], align 8                ; 15 uses
  %.sroa.011.0.extract.trunc = trunc i24 %1 to i8
  %.sroa.4.0.extract.shift = lshr i24 %1, 8
  %.sroa.4.0.extract.trunc = trunc i24 %.sroa.4.0.extract.shift to i8
  %.sroa.5.0.extract.shift = lshr i24 %1, 16
  %.sroa.5.0.extract.trunc = trunc nuw i24 %.sroa.5.0.extract.shift to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  call void @_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, i8 noundef range(i8 0, 7) %.sroa.011.0.extract.trunc)
  %i.c = load i32, ptr %i.a, align 8, !range !86, !noalias !85, !noundef !4
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 2
  br i1 %.not.i.i.i.i.i, label %.noexc.1.i.i, label %.noexc6.i.i

.noexc6.i.i:                                      ; preds = %.noexc
  %i.d = call { i32, i32 } @_RNvNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB7_12OperandStack17preserve_all_regs12preserve_reg(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0
  %i.f = extractvalue { i32, i32 } %i.d, 1
  br label %.noexc.1.i.i

.noexc.1.i.i:                                     ; preds = %.noexc6.i.i, %.noexc
  %.sroa.3.0.i.i.i.i.i = phi i32 [ %i.f, %.noexc6.i.i ], [ undef, %.noexc ]
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.e, %.noexc6.i.i ], [ 0, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85
  call void @_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, i8 noundef range(i8 0, 7) %.sroa.4.0.extract.trunc)
  %i.g = load i32, ptr %i.a, align 8, !range !86, !noalias !85, !noundef !4
  %.not.i.i.i.1.i.i = icmp eq i32 %i.g, 2
  br i1 %.not.i.i.i.1.i.i, label %.noexc.2.i.i, label %.noexc6.1.i.i

.noexc6.1.i.i:                                    ; preds = %.noexc.1.i.i
  %i.h = call { i32, i32 } @_RNvNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB7_12OperandStack17preserve_all_regs12preserve_reg(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a) ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = extractvalue { i32, i32 } %i.h, 1
  br label %.noexc.2.i.i

.noexc.2.i.i:                                     ; preds = %.noexc6.1.i.i, %.noexc.1.i.i
  %.sroa.3.0.i.i.i.1.i.i = phi i32 [ %i.j, %.noexc6.1.i.i ], [ undef, %.noexc.1.i.i ]
  %.sroa.0.0.i.i.i.1.i.i = phi i32 [ %i.i, %.noexc6.1.i.i ], [ 0, %.noexc.1.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85
  call void @_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap7dealloc(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, i8 noundef range(i8 0, 7) %.sroa.5.0.extract.trunc)
  %i.k = load i32, ptr %i.a, align 8, !range !86, !noalias !85, !noundef !4
  %.not.i.i.i.2.i.i = icmp eq i32 %i.k, 2
  br i1 %.not.i.i.i.2.i.i, label %bb.a, label %.noexc6.2.i.i

.noexc6.2.i.i:                                    ; preds = %.noexc.2.i.i
  %i.l = call { i32, i32 } @_RNvNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB7_12OperandStack17preserve_all_regs12preserve_reg(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a) ; 2 uses
  %i.m = extractvalue { i32, i32 } %i.l, 0
  %i.n = extractvalue { i32, i32 } %i.l, 1
  br label %bb.a

bb.a:                                             ; preds = %.noexc6.2.i.i, %.noexc.2.i.i
  %.sroa.3.0.i.i.i.2.i.i = phi i32 [ %i.n, %.noexc6.2.i.i ], [ undef, %.noexc.2.i.i ]
  %.sroa.0.0.i.i.i.2.i.i = phi i32 [ %i.m, %.noexc6.2.i.i ], [ 0, %.noexc.2.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %0, align 4, !alias.scope !87, !noalias !88
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.3.0.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i, align 4, !alias.scope !87, !noalias !88
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.i.i.i.1.i.i, ptr %.sroa.59.0..sroa_idx.i, align 4, !alias.scope !87, !noalias !88
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.3.0.i.i.i.1.i.i, ptr %.sroa.610.0..sroa_idx.i, align 4, !alias.scope !87, !noalias !88
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0.0.i.i.i.2.i.i, ptr %.sroa.711.0..sroa_idx.i, align 4, !alias.scope !87, !noalias !88
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.3.0.i.i.i.2.i.i, ptr %.sroa.812.0..sroa_idx.i, align 4, !alias.scope !87, !noalias !88
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsm_NtCskKLDkoKarTP_4core5arrayANtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypej3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionNtNtCs6kx5fqqPdgs_8wasmi_ir5index4SlotEENCINvMB1u_B1r_10wrap_mut_1By_NCNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB3J_12OperandStack22preserve_all_temp_regs0E0EB3T_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 4 captures(none) dereferenceable(24) initializes((0, 24)) %0, i24 %1, ptr noalias nofree noundef align 8 dereferenceable(112) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
.noexc:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %.sroa.011.0.extract.trunc = trunc i24 %1 to i8
  %.sroa.412.0.extract.shift = lshr i24 %1, 8
  %.sroa.412.0.extract.trunc = trunc i24 %.sroa.412.0.extract.shift to i8
  %.sroa.5.0.extract.shift = lshr i24 %1, 16
  %.sroa.5.0.extract.trunc = trunc nuw i24 %.sroa.5.0.extract.shift to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.d = load i64, ptr %3, align 8, !noalias !99, !noundef !4 ; 3 uses
  %i.e = tail call noundef i64 @_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap12dealloc_temp(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c, i8 noundef range(i8 0, 7) %.sroa.011.0.extract.trunc, i64 noundef %i.d) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %.noexc.1.i.i, label %.noexc6.i.i

.noexc6.i.i:                                      ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99
  call void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack18operand_to_temp_at(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2, i64 noundef %i.e)
  %i.f = load i32, ptr %i.b, align 4, !noalias !99, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99
  br label %.noexc.1.i.i

.noexc.1.i.i:                                     ; preds = %.noexc6.i.i, %.noexc
  %.sroa.3.0.i.i.i.i.i = phi i32 [ %i.f, %.noexc6.i.i ], [ undef, %.noexc ]
  %.sroa.0.0.i.i.i.i.i = phi i32 [ 1, %.noexc6.i.i ], [ 0, %.noexc ]
  %i.g = call noundef i64 @_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap12dealloc_temp(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c, i8 noundef range(i8 0, 7) %.sroa.412.0.extract.trunc, i64 noundef %i.d) ; 2 uses
  %.not.i.i.i.1.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.1.i.i, label %.noexc.2.i.i, label %.noexc6.1.i.i

.noexc6.1.i.i:                                    ; preds = %.noexc.1.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99
  call void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack18operand_to_temp_at(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2, i64 noundef %i.g)
  %i.h = load i32, ptr %i.b, align 4, !noalias !99, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99
  br label %.noexc.2.i.i

.noexc.2.i.i:                                     ; preds = %.noexc6.1.i.i, %.noexc.1.i.i
  %.sroa.3.0.i.i.i.1.i.i = phi i32 [ %i.h, %.noexc6.1.i.i ], [ undef, %.noexc.1.i.i ]
  %.sroa.0.0.i.i.i.1.i.i = phi i32 [ 1, %.noexc6.1.i.i ], [ 0, %.noexc.1.i.i ]
  %i.i = call noundef i64 @_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap12dealloc_temp(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c, i8 noundef range(i8 0, 7) %.sroa.5.0.extract.trunc, i64 noundef %i.d) ; 2 uses
  %.not.i.i.i.2.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.2.i.i, label %bb.a, label %.noexc6.2.i.i

.noexc6.2.i.i:                                    ; preds = %.noexc.2.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99
  call void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack18operand_to_temp_at(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2, i64 noundef %i.i)
  %i.j = load i32, ptr %i.b, align 4, !noalias !99, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99
  br label %bb.a

bb.a:                                             ; preds = %.noexc6.2.i.i, %.noexc.2.i.i
  %.sroa.3.0.i.i.i.2.i.i = phi i32 [ %i.j, %.noexc6.2.i.i ], [ undef, %.noexc.2.i.i ]
  %.sroa.0.0.i.i.i.2.i.i = phi i32 [ 1, %.noexc6.2.i.i ], [ 0, %.noexc.2.i.i ]
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %0, align 4, !alias.scope !100, !noalias !101
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.3.0.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i, align 4, !alias.scope !100, !noalias !101
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.i.i.i.1.i.i, ptr %.sroa.59.0..sroa_idx.i, align 4, !alias.scope !100, !noalias !101
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.3.0.i.i.i.1.i.i, ptr %.sroa.610.0..sroa_idx.i, align 4, !alias.scope !100, !noalias !101
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0.0.i.i.i.2.i.i, ptr %.sroa.711.0..sroa_idx.i, align 4, !alias.scope !100, !noalias !101
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.3.0.i.i.i.2.i.i, ptr %.sroa.812.0..sroa_idx.i, align 4, !alias.scope !100, !noalias !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i24 @_RINvMsm_NtCskKLDkoKarTP_4core5arrayANtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypej3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control7RegKindEENCINvMB1u_B1r_10wrap_mut_1By_NvMs2_B2w_B2u_3newE0EB2G_(i24 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
switch.lookup:
  %.sroa.0.0.extract.trunc.mask = shl i24 %0, 3
  %i.a = and i24 %.sroa.0.0.extract.trunc.mask, 2040
  %switch.shiftamt = zext nneg i24 %i.a to i56
  %switch.downshift = lshr i56 1095250280448, %switch.shiftamt
  %i.b = lshr i24 %0, 5
  %i.c = and i24 %i.b, 2040
  %switch.shiftamt16 = zext nneg i24 %i.c to i56
  %switch.downshift17 = lshr i56 1095250280448, %switch.shiftamt16
  %i.d = lshr i24 %0, 13
  %i.e = and i24 %i.d, 2040
  %switch.shiftamt11 = zext nneg i24 %i.e to i56
  %switch.downshift12 = lshr i56 1095250280448, %switch.shiftamt11
  %i.f = trunc i56 %switch.downshift12 to i24
  %.sroa.5.0.insert.ext.i = shl i24 %i.f, 16
  %i.g = trunc i56 %switch.downshift17 to i24
  %.sroa.4.0.insert.ext.i = shl i24 %i.g, 8
  %.sroa.4.0.insert.shift.i = and i24 %.sroa.4.0.insert.ext.i, 65280
  %.sroa.4.0.insert.insert.i = or disjoint i24 %.sroa.5.0.insert.ext.i, %.sroa.4.0.insert.shift.i
  %i.h = trunc i56 %switch.downshift to i24
  %.sroa.0.0.insert.ext.i = and i24 %i.h, 255
  %.sroa.0.0.insert.insert.i = or disjoint i24 %.sroa.4.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  ret i24 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef double @_RINvNtCs5zeGauAcNNa_10wasmi_core4simd11neg_mul_adddECsefoF4u9kbII_5wasmi(double noundef %0, double noundef %1, double noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = fneg double %0
  %i.b = tail call noundef double @llvm.fma.f64(double %i.a, double %1, double %2)
  ret double %i.b
}

end_hunk_0
