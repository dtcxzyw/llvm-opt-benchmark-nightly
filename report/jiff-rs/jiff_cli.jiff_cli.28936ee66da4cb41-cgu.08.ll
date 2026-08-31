Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.08?download=true
inline.NumInlined: 129
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [80 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/str/pattern.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00A\06\00\00\14\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt5ErrorECs3tZ2SXJA1qv_8jiff_cli, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_CsgWT32ugvpwR_6lexoptNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt5ErrorECs3tZ2SXJA1qv_8jiff_cli, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_CsgWT32ugvpwR_6lexoptNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr @_RNvXs3_CsgWT32ugvpwR_6lexoptNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr @2, ptr @_RNvXs5_CsgWT32ugvpwR_6lexoptNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source, ptr @_RNvYNtCsgWT32ugvpwR_6lexopt5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli, ptr @_RNvYNtCsgWT32ugvpwR_6lexopt5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli, ptr @_RNvYNtCsgWT32ugvpwR_6lexopt5ErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCs3tZ2SXJA1qv_8jiff_cli, ptr @_RNvYNtCsgWT32ugvpwR_6lexopt5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCs3tZ2SXJA1qv_8jiff_cli }>, align 8
@4 = private unnamed_addr constant [2 x i8] c", ", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00|\04\00\00$\00\00\00" }>, align 8
@6 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@7 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -3981449375128067082 to ptr), ptr inttoptr (i64 928893967493149623 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsm_NtCs3oUPovFnLWP_4core5arrayAlj1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitReENCINvMBN_BK_10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB22_8Captures7extractKBz_E0E0ECs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %1, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.c, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.g, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8
  store ptr %i.b, ptr %i.a, align 8, !noalias !10
  %i.h = invoke { ptr, i64 } @_RNvXs0_NtNtCs3oUPovFnLWP_4core5array5drainQINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBY_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB27_8Captures7extractKj1_E0E0EINtNtB10_8function5FnMutTjEE8call_mutCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtNtCs3oUPovFnLWP_4core5array5drainINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB26_8Captures7extractKj1_E0E0ENtNtBZ_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainlNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB2k_8Captures7extractKj1_E0E0EECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, i64 } %i.h, 0
  %i.k = extractvalue { ptr, i64 } %i.h, 1
  %3 = ptrtoint ptr %i.j to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8
  store i64 %3, ptr %0, align 8, !alias.scope !14, !noalias !18
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !14, !noalias !18
  call void @_RNvXs1_NtNtCs3oUPovFnLWP_4core5array5drainINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB26_8Captures7extractKj1_E0E0ENtNtBZ_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainlNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB2k_8Captures7extractKj1_E0E0EECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsm_NtCs3oUPovFnLWP_4core5arrayAlj2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitReENCINvMBN_BK_10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB22_8Captures7extractKBz_E0E0ECs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.g, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22
  store ptr %i.b, ptr %i.a, align 8, !noalias !24
  %i.h = invoke { ptr, i64 } @_RNvXs0_NtNtCs3oUPovFnLWP_4core5array5drainQINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBY_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB27_8Captures7extractKj2_E0E0EINtNtB10_8function5FnMutTjEE8call_mutCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.i = invoke { ptr, i64 } @_RNvXs0_NtNtCs3oUPovFnLWP_4core5array5drainQINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBY_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB27_8Captures7extractKj2_E0E0EINtNtB10_8function5FnMutTjEE8call_mutCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtNtCs3oUPovFnLWP_4core5array5drainINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB26_8Captures7extractKj2_E0E0ENtNtBZ_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainlNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB2k_8Captures7extractKj2_E0E0EECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %3 = extractvalue { ptr, i64 } %i.h, 0
  %4 = ptrtoint ptr %3 to i64
  %5 = extractvalue { ptr, i64 } %i.h, 1
  %i.k = extractvalue { ptr, i64 } %i.i, 0
  %i.l = extractvalue { ptr, i64 } %i.i, 1
  %6 = ptrtoint ptr %i.k to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22
  store i64 %4, ptr %0, align 8, !alias.scope !28, !noalias !32
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !28, !noalias !32
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %6, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !28, !noalias !32
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %.sroa.68.0..sroa_idx.i, align 8, !alias.scope !28, !noalias !32
  call void @_RNvXs1_NtNtCs3oUPovFnLWP_4core5array5drainINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB26_8Captures7extractKj2_E0E0ENtNtBZ_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainlNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB2k_8Captures7extractKj2_E0E0EECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !33, !alias.scope !34, !noundef !37 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1j_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !37, !noundef !37
  %i.d = mul nuw i64 %.val2, 48
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1j_.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !33, !alias.scope !34, !noundef !37 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1j_.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !37, !noundef !37
  %i.g = mul nuw i64 %.val, 48
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !41
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1j_.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1j_.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1j_.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !33, !alias.scope !44, !noundef !37 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !37, !noundef !37
  %i.d = mul nuw i64 %.val2, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !47
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !33, !alias.scope !44, !noundef !37 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !37, !noundef !37
  %i.g = mul nuw i64 %.val, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !50
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !37 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !33, !invariant.load !37 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !53, !invariant.load !37
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #24
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !33, !invariant.load !37 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit5, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !53, !invariant.load !37
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #24
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit5

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit5: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !54, !noundef !37 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775805
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 3
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.f
    i64 1, label %bb.l
    i64 2, label %bb.q
    i64 3, label %bb.v
    i64 4, label %bb.aa
    i64 5, label %bb.af
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.f, align 8            ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.g, align 8, !nonnull !37, !align !55, !noundef !37 ; 5 uses
  %i.h = load ptr, ptr %.val6, align 8, !invariant.load !37 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.h(ptr noundef nonnull %.val5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !33, !invariant.load !37 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !53, !invariant.load !37
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !33, !invariant.load !37 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %common.resume, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !53, !invariant.load !37
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #24
  br label %common.resume
end_hunk_0
begin_hunk_1_@_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_:bb.a
.split.us.i10.i.i:                                ; preds = %.preheader36.i.i.i.preheader, %.preheader36.i.i.i
  %i.em = add i64 %.sink71.i.i22.i, %i.co
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6

.lr.ph86.a:                                       ; preds = %.preheader36.i.i.i.preheader, %.preheader36.i.i.i
  %.sroa.2.0.i.i.i85 = phi i64 [ %i.en, %.preheader36.i.i.i ], [ %i.dn, %.preheader36.i.i.i.preheader ]
  %i.en = add i64 %.sroa.2.0.i.i.i85, -1          ; 6 uses
  %i.eo = icmp ult i64 %i.en, %i.co
  br i1 %i.eo, label %bb.y, label %.split32.us.i.i.i

bb.y:                                             ; preds = %.lr.ph86.a
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.en
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !289, !noalias !295, !noundef !37
  %i.er = add i64 %i.en, %.sink71.i.i22.i         ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.ck
  tail call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.er
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !287, !noalias !294, !noundef !37
  %.not20.i.i.i = icmp eq i8 %i.eq, %i.eu
  br i1 %.not20.i.i.i, label %.preheader36.i.i.i, label %bb.z

.split32.us.i.i.i:                                ; preds = %.lr.ph86.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.en, i64 noundef range(i64 0, -9223372036854775808) %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #28, !noalias !296
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.ev = add i64 %.sink71.i.i22.i, %i.dp
  br label %bb.w

bb.aa:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i22.i, %invariant.op
  %i.ew = add i64 %.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i84
  br label %bb.w

bb.ab:                                            ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %.promoted.i11.i.i = load i64, ptr %i.cp, align 8, !alias.scope !304, !noalias !305 ; 3 uses
  %i.ex = add i64 %.promoted.i11.i.i, %i.cq       ; 3 uses
  %i.ey = icmp ult i64 %i.ex, %i.ck
  br i1 %i.ey, label %.lr.ph.i14.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.lr.ph.i14.i.i:                                   ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !304, !noalias !305, !noundef !37 ; 2 uses
  %i.fb = load i64, ptr %i.cd, align 8, !alias.scope !304, !noalias !305
  %.fr214.i.i = freeze i64 %i.fb                  ; 10 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !304, !noalias !305
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr214.i.i, i64 range(i64 0, -9223372036854775808) %i.co) ; 2 uses
  %i.fe = add i64 %.fr214.i.i, -1                 ; 2 uses
  %.first_iter.i15.i.i = icmp ult i64 %i.fe, %i.co
  %reass.sub95.i = sub i64 1, %.fr214.i.i         ; 2 uses
  br i1 %.first_iter.i15.i.i, label %.lr.ph.split.us.i.i.i.us.preheader, label %.lr.ph.split.us.i.i.i.preheader

.lr.ph.split.us.i.i.i.preheader:                  ; preds = %.lr.ph.i14.i.i
  %exitcond.not.i16.i.i88.not = icmp ult i64 %.fr214.i.i, %i.co
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i.us.preheader:               ; preds = %.lr.ph.i14.i.i
  %exitcond.not.i16.i.i.us93.not = icmp ult i64 %.fr214.i.i, %i.co
  %.not34.i.us.i.i.us96 = icmp eq i64 %.fr214.i.i, 0
  br label %.lr.ph.split.us.i.i.i.us

.lr.ph.split.us.i.i.i.us:                         ; preds = %.lr.ph.split.us.i.i.i.us.preheader, %bb.ae
  %.sink.i17.i28.i.us = phi i64 [ %.sink.i17.i.i.us, %bb.ae ], [ %.promoted.i11.i.i, %.lr.ph.split.us.i.i.i.us.preheader ] ; 7 uses
  %i.ff = phi i64 [ %i.gd, %bb.ae ], [ %i.ex, %.lr.ph.split.us.i.i.i.us.preheader ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !300, !noalias !307, !noundef !37
  %i.fi = and i8 %i.fh, 63
  %i.fj = zext nneg i8 %i.fi to i64
  %i.fk = shl nuw i64 1, %i.fj
  %i.fl = and i64 %i.fk, %i.fa
  %.not.us.i.i.i.us = icmp eq i64 %i.fl, 0
  br i1 %.not.us.i.i.i.us, label %bb.ad, label %.preheader35.i.i.i.us.preheader

.preheader35.i.i.i.us.preheader:                  ; preds = %.lr.ph.split.us.i.i.i.us
  br i1 %exitcond.not.i16.i.i.us93.not, label %.lr.ph95, label %.preheader.i18.us.i.i.us.preheader

.preheader35.i.i.i.us:                            ; preds = %.lr.ph95
  %i.fm = add i64 %.sroa.04.0.us.i.i.i.us94, 1    ; 2 uses
  %exitcond.not.i16.i.i.us = icmp eq i64 %i.fm, %umax.i.i.i
  br i1 %exitcond.not.i16.i.i.us, label %.preheader.i18.us.i.i.us.preheader, label %.lr.ph95

.preheader.i18.us.i.i.us.preheader:               ; preds = %.preheader35.i.i.i.us, %.preheader35.i.i.i.us.preheader
  br i1 %.not34.i.us.i.i.us96, label %.split.us.i20.i.i, label %.lr.ph98

.lr.ph95:                                         ; preds = %.preheader35.i.i.i.us.preheader, %.preheader35.i.i.i.us
  %.sroa.04.0.us.i.i.i.us94 = phi i64 [ %i.fm, %.preheader35.i.i.i.us ], [ %.fr214.i.i, %.preheader35.i.i.i.us.preheader ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sroa.04.0.us.i.i.i.us94
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !302, !noalias !308, !noundef !37
  %i.fp = add i64 %.sroa.04.0.us.i.i.i.us94, %.sink.i17.i28.i.us ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.ck
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.fp
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !300, !noalias !307, !noundef !37
  %.not21.us.i.i.i.us = icmp eq i8 %i.fo, %i.fs
  br i1 %.not21.us.i.i.i.us, label %.preheader35.i.i.i.us, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph95
  %.reass281.i.reass.i.us = add i64 %reass.sub95.i, %.sink.i17.i28.i.us
  %i.ft = add i64 %.reass281.i.reass.i.us, %.sroa.04.0.us.i.i.i.us94
  br label %bb.ae

.preheader.i18.us.i.i.us:                         ; preds = %.lr.ph98
  %.not34.i.us.i.i.us = icmp eq i64 %i.fu, 0
  br i1 %.not34.i.us.i.i.us, label %.split.us.i20.i.i, label %.lr.ph98

.lr.ph98:                                         ; preds = %.preheader.i18.us.i.i.us.preheader, %.preheader.i18.us.i.i.us
  %.sroa.2.0.us.i.us.i.i.us97 = phi i64 [ %i.fu, %.preheader.i18.us.i.i.us ], [ %.fr214.i.i, %.preheader.i18.us.i.i.us.preheader ]
  %i.fu = add i64 %.sroa.2.0.us.i.us.i.i.us97, -1 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !302, !noalias !308, !noundef !37
  %i.fx = add i64 %i.fu, %.sink.i17.i28.i.us      ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.ck
  tail call void @llvm.assume(i1 %i.fy)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.fx
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !300, !noalias !307, !noundef !37
  %.not20.us.i.us.i.i.us = icmp eq i8 %i.fw, %i.ga
  br i1 %.not20.us.i.us.i.i.us, label %.preheader.i18.us.i.i.us, label %.split.us.i.i.us

.split.us.i.i.us:                                 ; preds = %.lr.ph98
  %i.gb = add i64 %.sink.i17.i28.i.us, %i.fd
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split.us.i.i.i.us
  %i.gc = add i64 %.sink.i17.i28.i.us, %i.co
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.split.us.i.i.us, %bb.ac
  %.sink.i17.i.i.us = phi i64 [ %i.gc, %bb.ad ], [ %i.ft, %bb.ac ], [ %i.gb, %.split.us.i.i.us ] ; 2 uses
  %i.gd = add i64 %.sink.i17.i.i.us, %i.cq        ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.ck
  br i1 %i.ge, label %.lr.ph.split.us.i.i.i.us, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.split.us.i.i.i.preheader, %bb.ah
  %.sink.i17.i28.i = phi i64 [ %.sink.i17.i.i, %bb.ah ], [ %.promoted.i11.i.i, %.lr.ph.split.us.i.i.i.preheader ] ; 4 uses
  %i.gf = phi i64 [ %i.gv, %bb.ah ], [ %i.ex, %.lr.ph.split.us.i.i.i.preheader ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !300, !noalias !307, !noundef !37
  %i.gi = and i8 %i.gh, 63
  %i.gj = zext nneg i8 %i.gi to i64
  %i.gk = shl nuw i64 1, %i.gj
  %i.gl = and i64 %i.gk, %i.fa
  %.not.us.i.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not.us.i.i.i, label %bb.ag, label %.preheader35.i.i.i.preheader

.preheader35.i.i.i.preheader:                     ; preds = %.lr.ph.split.us.i.i.i
  br i1 %exitcond.not.i16.i.i88.not, label %.lr.ph90, label %.preheader.i18.i.i

.preheader35.i.i.i:                               ; preds = %.lr.ph90
  %i.gm = add i64 %.sroa.04.0.us.i.i.i89, 1       ; 2 uses
  %exitcond.not.i16.i.i = icmp eq i64 %i.gm, %umax.i.i.i
  br i1 %exitcond.not.i16.i.i, label %.preheader.i18.i.i, label %.lr.ph90

.lr.ph90:                                         ; preds = %.preheader35.i.i.i.preheader, %.preheader35.i.i.i
  %.sroa.04.0.us.i.i.i89 = phi i64 [ %i.gm, %.preheader35.i.i.i ], [ %.fr214.i.i, %.preheader35.i.i.i.preheader ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sroa.04.0.us.i.i.i89
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !302, !noalias !308, !noundef !37
  %i.gp = add i64 %.sroa.04.0.us.i.i.i89, %.sink.i17.i28.i ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %i.ck
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.gp
  %i.gs = load i8, ptr %i.gr, align 1, !alias.scope !300, !noalias !307, !noundef !37
  %.not21.us.i.i.i = icmp eq i8 %i.go, %i.gs
  br i1 %.not21.us.i.i.i, label %.preheader35.i.i.i, label %bb.af

.preheader.i18.i.i:                               ; preds = %.preheader35.i.i.i.preheader, %.preheader35.i.i.i
  %.not34.i.i.i = icmp eq i64 %.fr214.i.i, 0
  br i1 %.not34.i.i.i, label %.split.us.i20.i.i, label %.split32.us.i19.i.i

.split32.us.i19.i.i:                              ; preds = %.preheader.i18.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.fe, i64 noundef range(i64 0, -9223372036854775808) %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #28, !noalias !309
  unreachable

bb.af:                                            ; preds = %.lr.ph90
  %.reass281.i.reass.i = add i64 %reass.sub95.i, %.sink.i17.i28.i
  %i.gt = add i64 %.reass281.i.reass.i, %.sroa.04.0.us.i.i.i89
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.gu = add i64 %.sink.i17.i28.i, %i.co
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i17.i.i = phi i64 [ %i.gu, %bb.ag ], [ %i.gt, %bb.af ] ; 2 uses
  %i.gv = add i64 %.sink.i17.i.i, %i.cq           ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %i.ck
  br i1 %i.gw, label %.lr.ph.split.us.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.split.us.i20.i.i:                                ; preds = %.preheader.i18.us.i.i.us.preheader, %.preheader.i18.us.i.i.us, %.preheader.i18.i.i
  %.sink.i17.i28.i16 = phi i64 [ %.sink.i17.i28.i, %.preheader.i18.i.i ], [ %.sink.i17.i28.i.us, %.preheader.i18.us.i.i.us ], [ %.sink.i17.i28.i.us, %.preheader.i18.us.i.i.us.preheader ]
  %i.gx = add i64 %.sink.i17.i28.i16, %i.co
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread: ; preds = %bb.w, %bb.ah, %bb.ae, %bb.s, %.preheader.i.i, %.split165.us.i.i, %bb.o, %bb.r, %bb.t, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !255
  br label %bb.ai

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.i, %bb.n, %bb.g, %bb.m, %.split165.us.i.i, %.loopexit42.i.i, %.split.us.i10.i.i, %.split.us.i20.i.i
  %.sroa.10.0.i.ph.pn = phi i64 [ %i.i, %.split165.us.i.i ], [ %i.em, %.split.us.i10.i.i ], [ %i.i, %bb.m ], [ %i.di, %.loopexit42.i.i ], [ %i.gx, %.split.us.i20.i.i ], [ %.promoted156.i.i, %bb.g ], [ %i.bh, %bb.n ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.i ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !255
  %0 = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.10.0.i.ph.pn
  %1 = sub nuw i64 %.8.val, %.sroa.10.0.i.ph.pn
  br label %bb.ai

bb.ai:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6
  %.sroa.3.0 = phi i64 [ %1, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6 ], [ %.8.val, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread ]
  %.sroa.0.0 = phi ptr [ %0, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6 ], [ %.0.val, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread ]
  %i.gy = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.gz = insertvalue { ptr, i64 } %i.gy, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.gz
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !310
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !310

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #24
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.k = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #24
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !310
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !310

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  br i1 %2, label %bb.g, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtB1c_2io5error5ErrorENtNtB1c_6marker4SendNtB2O_4SyncEL_EENtNtB1a_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !33, !noundef !37 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !37, !noundef !37
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !33, !noundef !37 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !37, !noundef !37
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !33, !noundef !37 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !37, !noundef !37
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslhCKBzvegwQ_10regex_lite3int11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !33, !noundef !37 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !37, !noundef !37
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
end_hunk_1
