Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.14?download=true
inline.NumInlined: 191
inline.NumDeleted: 106
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [17 x i8] c"capacity overflow", align 1
@1 = private unnamed_addr constant [77 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/vec/mod.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\005\10\00\00\0D\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startINtNtCs3oUPovFnLWP_4core6result6ResultuNtCs8WPnInWCYsb_6anyhow5ErrorEE0INtNtNtBN_3ops8function6FnOnceuE9call_once6vtableCs3tZ2SXJA1qv_8jiff_cli, ptr @_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startINtNtCs3oUPovFnLWP_4core6result6ResultuNtCs8WPnInWCYsb_6anyhow5ErrorEE0Cs3tZ2SXJA1qv_8jiff_cli, ptr @_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startINtNtCs3oUPovFnLWP_4core6result6ResultuNtCs8WPnInWCYsb_6anyhow5ErrorEE0Cs3tZ2SXJA1qv_8jiff_cli }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir5error5ErrorECs3tZ2SXJA1qv_8jiff_cli, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCs35zZu0fmp16_7walkdir5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir5error5ErrorECs3tZ2SXJA1qv_8jiff_cli, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs35zZu0fmp16_7walkdir5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr @_RNvXs0_NtCs35zZu0fmp16_7walkdir5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr @4, ptr @_RNvXs_NtCs35zZu0fmp16_7walkdir5errorNtB4_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source, ptr @_RNvYNtNtCs35zZu0fmp16_7walkdir5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli, ptr @_RNvXs_NtCs35zZu0fmp16_7walkdir5errorNtB4_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11description, ptr @_RNvXs_NtCs35zZu0fmp16_7walkdir5errorNtB4_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error5cause, ptr @_RNvYNtNtCs35zZu0fmp16_7walkdir5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCs3tZ2SXJA1qv_8jiff_cli }>, align 8
@6 = private unnamed_addr constant [8 x i8] c"RUST_LOG", align 1
@7 = private unnamed_addr constant [29 x i8] c"\18unrecognized log level '\C0\01'\00", align 1
@_RNvCs609xDM2Krl3_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@8 = private unnamed_addr constant [14 x i8] c"RUST_BACKTRACE", align 1
@_RNvNvNtNtCsaL1QbXo9JQH_3std2io5stdio6stderr8INSTANCE = external global { { { { { i64 } } } }, { { { { i32 } } } }, i32, i64 }
@9 = private unnamed_addr constant [8 x i8] c"\C1 \00\80`\01\0A\00", align 1
@10 = private unnamed_addr constant [24 x i8] c"crates/jiff-cli/main.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"\17\00\00\00\00\00\00\00\19\00\00\00;\00\00\00" }>, align 8
@12 = private unnamed_addr constant [4 x i8] c"\C0\01\0A\00", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"\17\00\00\00\00\00\00\00\17\00\00\00;\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCs3oUPovFnLWP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt }>, align 8
@15 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@16 = private unnamed_addr constant [60 x i8] c"internal error: entered unreachable code: invalid Once state", align 1
@17 = private unnamed_addr constant [87 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/std/src/sys/sync/once/futex.rs\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"V\00\00\00\00\00\00\00`\00\00\00\12\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@20 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs35zZu0fmp16_7walkdir5error10ErrorInnerNtB6_5Debug3fmtCs3tZ2SXJA1qv_8jiff_cli }>, align 8
@21 = private unnamed_addr constant [5 x i8] c"Error", align 1
@22 = private unnamed_addr constant [5 x i8] c"depth", align 1
@23 = private unnamed_addr constant [5 x i8] c"inner", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs3tZ2SXJA1qv_8jiff_cli, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB7_3fmt5Debug3fmtCs3tZ2SXJA1qv_8jiff_cli }>, align 8
@25 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCs3tZ2SXJA1qv_8jiff_cli }>, align 8
@26 = private unnamed_addr constant [2 x i8] c"Io", align 1
@27 = private unnamed_addr constant [4 x i8] c"path", align 1
@28 = private unnamed_addr constant [3 x i8] c"err", align 1
@29 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3tZ2SXJA1qv_8jiff_cli, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsG_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@30 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsaL1QbXo9JQH_3std4path7PathBufNtB6_5Debug3fmtCs3tZ2SXJA1qv_8jiff_cli }>, align 8
@31 = private unnamed_addr constant [4 x i8] c"Loop", align 1
@32 = private unnamed_addr constant [8 x i8] c"ancestor", align 1
@33 = private unnamed_addr constant [5 x i8] c"child", align 1
@34 = private unnamed_addr constant [4 x i8] c"None", align 1
@35 = private unnamed_addr constant [4 x i8] c"Some", align 1
@36 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@37 = private unnamed_addr constant [22 x i8] c"file system loop found", align 1
@38 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCs3oUPovFnLWP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt, ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr @38, ptr @_RNvXs4_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source, ptr @_RNvYNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli, ptr @_RNvYNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli, ptr @_RNvXs4_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause, ptr @_RNvYNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtNtB8_5error5Error7provideCs3tZ2SXJA1qv_8jiff_cli }>, align 8
@40 = private unnamed_addr constant [95 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/vec/spec_from_iter_nested.rs\00", align 1
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @40, [16 x i8] c"^\00\00\00\00\00\00\009\00\00\00\12\00\00\00" }>, align 8
@42 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 50070578415524238 to ptr), ptr inttoptr (i64 -2624307061620345241 to ptr) }>, align 8
@43 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@44 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @43, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@45 = private unnamed_addr constant [77 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/io/write.rs\00", align 1
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"L\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8
@47 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6336722583290301682 to ptr), ptr inttoptr (i64 -4483810605392225024 to ptr) }>, align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorE6map_orbNCNvCs3tZ2SXJA1qv_8jiff_cli4mains_0EB26_(ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !7, !noundef !6
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !7, !nonnull !6, !noundef !6
  %lhsc.i = load i8, ptr %i.i, align 1, !noalias !7
  %i.j = icmp eq i8 %lhsc.i, 49
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.j, %bb.c ], [ false, %bb.b ] ; 2 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i64, ptr %0, align 8, !range !5, !noundef !6
  %1 = trunc nuw i64 %i.l to i1
  %i.m = load i64, ptr %i.d, align 8, !range !10
  %2 = icmp ne i64 %i.m, -1
  %or.cond = select i1 %1, i1 %2, i1 false
  br i1 %or.cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs3tZ2SXJA1qv_8jiff_cli.exit.sink.split.i4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs3tZ2SXJA1qv_8jiff_cli.exit5

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i64, ptr %0, align 8, !range !5
  %i.n = trunc nuw i64 %.pre to i1
  br i1 %i.n, label %.thread, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs3tZ2SXJA1qv_8jiff_cli.exit

.thread:                                          ; preds = %bb.a, %bb.f
  %.sroa.0.09.a = phi i1 [ %.sroa.0.0.i, %bb.f ], [ false, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !10, !alias.scope !11
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs3tZ2SXJA1qv_8jiff_cli.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs3tZ2SXJA1qv_8jiff_cli.exit.sink.split.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs3tZ2SXJA1qv_8jiff_cli.exit.sink.split.i: ; preds = %.thread
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs3tZ2SXJA1qv_8jiff_cli.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs3tZ2SXJA1qv_8jiff_cli.exit.sink.split.i, %.thread, %bb.f
  %.sroa.0.08 = phi i1 [ %.sroa.0.09.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs3tZ2SXJA1qv_8jiff_cli.exit.sink.split.i ], [ %.sroa.0.09.a, %.thread ], [ %.sroa.0.0.i, %bb.f ]
  ret i1 %.sroa.0.08

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs3tZ2SXJA1qv_8jiff_cli.exit5: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs3tZ2SXJA1qv_8jiff_cli.exit.sink.split.i4, %bb.e
  resume { ptr, i32 } %i.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs3tZ2SXJA1qv_8jiff_cli.exit.sink.split.i4: ; preds = %bb.e
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECs3tZ2SXJA1qv_8jiff_cli.exit5 unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs3tZ2SXJA1qv_8jiff_cli.exit.sink.split.i4
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsaL1QbXo9JQH_3std2fsNtB6_4File4openRNtNtB8_4path4PathECs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i128 18446745954905227264, ptr %i.a, align 16
  call void @_RNvMsj_NtCsaL1QbXo9JQH_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsaL1QbXo9JQH_3std2fsNtB6_4File6createRNtNtB8_4path4PathECs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i128 79537652246452167413109620736, ptr %i.a, align 16
  call void @_RNvMsj_NtCsaL1QbXo9JQH_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsaL1QbXo9JQH_3std2fsNtB6_4File6createRNtNtB8_4path7PathBufECs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i128 79537652246452167413109620736, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !noundef !6
  call void @_RNvMsj_NtCsaL1QbXo9JQH_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std9backtrace11BytesOrWideEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std9backtrace11BytesOrWideECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std9backtrace11BytesOrWideECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %1 = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std9backtrace11BytesOrWideECs3tZ2SXJA1qv_8jiff_cli.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVectENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std9backtrace11BytesOrWideECs3tZ2SXJA1qv_8jiff_cli.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !6 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !15, !invariant.load !6 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !16, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #20
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !15, !invariant.load !6 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !16, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #20
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheEECs3tZ2SXJA1qv_8jiff_cli(ptr nonnull %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslhCKBzvegwQ_10regex_lite6pikevm13FollowEpsilonENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %.0.val)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslhCKBzvegwQ_10regex_lite6pikevm13FollowEpsilonEECs3tZ2SXJA1qv_8jiff_cli.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm12ActiveStatesECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(96) %i.b) #21
          to label %.body.i unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslhCKBzvegwQ_10regex_lite6pikevm13FollowEpsilonEECs3tZ2SXJA1qv_8jiff_cli.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslhCKBzvegwQ_10regex_lite6pikevm13FollowEpsilonEECs3tZ2SXJA1qv_8jiff_cli.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i.i unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslhCKBzvegwQ_10regex_lite6pikevm13FollowEpsilonEECs3tZ2SXJA1qv_8jiff_cli.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm9SparseSetECs3tZ2SXJA1qv_8jiff_cli.exit.i.i unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.d, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslhCKBzvegwQ_10regex_lite3int11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %.body.i unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm9SparseSetECs3tZ2SXJA1qv_8jiff_cli.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslhCKBzvegwQ_10regex_lite3int11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm12ActiveStatesECs3tZ2SXJA1qv_8jiff_cli.exit.i unwind label %bb.g

bb.f:                                             ; preds = %.body.i.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

.body.i:                                          ; preds = %bb.g, %.body.i.i, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.m, %bb.g ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 120
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm12ActiveStatesECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(96) %i.l) #21
          to label %bb.n unwind label %bb.l

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm9SparseSetECs3tZ2SXJA1qv_8jiff_cli.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm12ActiveStatesECs3tZ2SXJA1qv_8jiff_cli.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm9SparseSetECs3tZ2SXJA1qv_8jiff_cli.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 120
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i5.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm12ActiveStatesECs3tZ2SXJA1qv_8jiff_cli.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 144
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body.i2.i unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i5.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm12ActiveStatesECs3tZ2SXJA1qv_8jiff_cli.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 144
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm12ActiveStatesECs3tZ2SXJA1qv_8jiff_cli.exit7.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i5.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i2.i

.body.i2.i:                                       ; preds = %bb.j, %bb.h
  %eh.lpad-body.i3.i = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.o, %bb.h ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 176
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslhCKBzvegwQ_10regex_lite3int11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %.body.i2.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm12ActiveStatesECs3tZ2SXJA1qv_8jiff_cli.exit7.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i5.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 176
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslhCKBzvegwQ_10regex_lite3int11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.m

bb.l:                                             ; preds = %.body.i, %bb.b
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm12ActiveStatesECs3tZ2SXJA1qv_8jiff_cli.exit7.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm12ActiveStatesECs3tZ2SXJA1qv_8jiff_cli.exit7.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 216, i64 noundef 8) #20
  ret void

bb.n:                                             ; preds = %bb.m, %.body.i2.i, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.m ], [ %eh.lpad-body.i3.i, %.body.i2.i ], [ %.pn.i, %.body.i ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 216, i64 noundef 8) #20
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs35zZu0fmp16_7walkdir7DirListECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.a, -4
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt6ParserECs3tZ2SXJA1qv_8jiff_cli:bb.a
  %.pn = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.b, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !38, !alias.scope !39, !noundef !6
  %switch1.i = icmp slt i64 %i.l, -9223372036854775806
  br i1 %switch1.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt10LastOptionECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt10LastOptionECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.k

bb.f:                                             ; preds = %.sink.split.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt5StateECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs3tZ2SXJA1qv_8jiff_cli.exit, %.sink.split.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !38, !alias.scope !42, !noundef !6
  %switch1.i5 = icmp slt i64 %i.o, -9223372036854775806
  br i1 %switch1.i5, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt10LastOptionECs3tZ2SXJA1qv_8jiff_cli.exit7, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt5StateECs3tZ2SXJA1qv_8jiff_cli.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt10LastOptionECs3tZ2SXJA1qv_8jiff_cli.exit7 unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt10LastOptionECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.d, %bb.e, %bb.i
  %.pn2 = phi { ptr, i32 } [ %i.r, %bb.i ], [ %.pn, %bb.e ], [ %.pn, %bb.d ]
  %i.p = load i64, ptr %0, align 8, !range !10, !alias.scope !45, !noundef !6
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt10LastOptionECs3tZ2SXJA1qv_8jiff_cli.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt10LastOptionECs3tZ2SXJA1qv_8jiff_cli.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt10LastOptionECs3tZ2SXJA1qv_8jiff_cli.exit7: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt5StateECs3tZ2SXJA1qv_8jiff_cli.exit, %bb.g
  %i.s = load i64, ptr %0, align 8, !range !10, !alias.scope !48, !noundef !6
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit9, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt10LastOptionECs3tZ2SXJA1qv_8jiff_cli.exit7
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit9

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit9: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt10LastOptionECs3tZ2SXJA1qv_8jiff_cli.exit7, %bb.j
  ret void

bb.k:                                             ; preds = %bb.h, %bb.e, %bb.b
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt10LastOptionECs3tZ2SXJA1qv_8jiff_cli.exit, %bb.h
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.b = load i64, ptr %0, align 8, !range !10, !alias.scope !51, !noundef !6
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !10, !alias.scope !54, !noundef !6
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs3tZ2SXJA1qv_8jiff_cli.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs3tZ2SXJA1qv_8jiff_cli.exit.i unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3tZ2SXJA1qv_8jiff_cli.exit.i unwind label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3tZ2SXJA1qv_8jiff_cli.exit4.i unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs3tZ2SXJA1qv_8jiff_cli.exit.i: ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !60, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60
  %i.j = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit.i
    i64 3, label %bb.f
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit.i
    i64 1, label %bb.g
  ], !prof !61

default.unreachable:                              ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs3tZ2SXJA1qv_8jiff_cli.exit.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs3tZ2SXJA1qv_8jiff_cli.exit.i
  %i.l = icmp ult ptr %.val.i.i, inttoptr (i64 188978561024 to ptr)
  %i.m = and i64 %i.j, 1095216660480
  %i.n = icmp ne i64 %i.m, 1095216660480
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.assume(i1 %i.n)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit.i

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs3tZ2SXJA1qv_8jiff_cli.exit.i
  %i.o = getelementptr i8, ptr %.val.i.i, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !62, !noalias !60
  store i8 3, ptr %i.a, align 8, !alias.scope !62, !noalias !60
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p), !noalias !57
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit.i: ; preds = %bb.g, %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs3tZ2SXJA1qv_8jiff_cli.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs3tZ2SXJA1qv_8jiff_cli.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir5error10ErrorInnerECs3tZ2SXJA1qv_8jiff_cli.exit

bb.h:                                             ; preds = %bb.i, %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3tZ2SXJA1qv_8jiff_cli.exit4.i: ; preds = %bb.i, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.r, %bb.i ]
  resume { ptr, i32 } %.pn.i

bb.i:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3tZ2SXJA1qv_8jiff_cli.exit4.i unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3tZ2SXJA1qv_8jiff_cli.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir5error10ErrorInnerECs3tZ2SXJA1qv_8jiff_cli.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir5error10ErrorInnerECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3tZ2SXJA1qv_8jiff_cli.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std9backtrace14BacktraceFrameECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !65, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !65, !noundef !6 ; 4 uses
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std9backtrace15BacktraceSymbolEECs3tZ2SXJA1qv_8jiff_cli.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std9backtrace15BacktraceSymbolECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std9backtrace15BacktraceSymbolECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i ; 4 uses
  %i.f = add nuw nsw i64 %.sroa.0.011.i.i.i, 1    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !10, !alias.scope !68, !noalias !65, !noundef !6
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i.i unwind label %bb.c, !noalias !65

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std9backtrace11BytesOrWideEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e) #21
          to label %.body.i.i.i unwind label %bb.g, !noalias !65

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !range !14, !alias.scope !75, !noalias !65, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std9backtrace15BacktraceSymbolECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i.i
  %1 = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std9backtrace15BacktraceSymbolECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i unwind label %bb.i, !noalias !65

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVectENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std9backtrace15BacktraceSymbolECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i unwind label %bb.i, !noalias !65

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !65
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std9backtrace15BacktraceSymbolECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i: ; preds = %bb.f, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i.i
  %i.o = icmp eq i64 %i.f, %.val1.i
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std9backtrace15BacktraceSymbolEECs3tZ2SXJA1qv_8jiff_cli.exit, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %.lr.ph
  %i.p = add i64 %.sroa.0.1.i.i.i22, 1            ; 2 uses
  %i.q = icmp eq i64 %i.p, %.val1.i
  br i1 %i.q, label %.body.i, label %.lr.ph

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.j, %bb.c ]
  %i.s = icmp eq i64 %i.f, %.val1.i
  br i1 %i.s, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i, %bb.h
  %.sroa.0.1.i.i.i22 = phi i64 [ %i.p, %bb.h ], [ %i.f, %.body.i.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i22
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std9backtrace15BacktraceSymbolECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(72) %i.t) #21
          to label %bb.h unwind label %bb.j, !noalias !65

bb.j:                                             ; preds = %.lr.ph
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !65
  unreachable

.body.i:                                          ; preds = %bb.h, %.body.i.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsaL1QbXo9JQH_3std9backtrace15BacktraceSymbolENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCsaL1QbXo9JQH_3std9backtrace15BacktraceSymbolEECs3tZ2SXJA1qv_8jiff_cli.exit.i unwind label %bb.k

bb.k:                                             ; preds = %.body.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCsaL1QbXo9JQH_3std9backtrace15BacktraceSymbolEECs3tZ2SXJA1qv_8jiff_cli.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std9backtrace15BacktraceSymbolEECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std9backtrace15BacktraceSymbolECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i, %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsaL1QbXo9JQH_3std9backtrace15BacktraceSymbolENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std9backtrace15BacktraceSymbolECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !10, !alias.scope !78, !noundef !6
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std9backtrace11BytesOrWideEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #21
          to label %bb.h unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  %i.e = load i64, ptr %0, align 8, !range !14, !alias.scope !81, !noundef !6 ; 2 uses
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std9backtrace11BytesOrWideEECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs3tZ2SXJA1qv_8jiff_cli.exit
  %1 = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std9backtrace11BytesOrWideEECs3tZ2SXJA1qv_8jiff_cli.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVectENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std9backtrace11BytesOrWideEECs3tZ2SXJA1qv_8jiff_cli.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std9backtrace11BytesOrWideEECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs3tZ2SXJA1qv_8jiff_cli.exit, %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.h:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm12ActiveStatesECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs3tZ2SXJA1qv_8jiff_cli.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs3tZ2SXJA1qv_8jiff_cli.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm9SparseSetECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs3tZ2SXJA1qv_8jiff_cli.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.a, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslhCKBzvegwQ_10regex_lite3int11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm9SlotTableECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm9SparseSetECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs3tZ2SXJA1qv_8jiff_cli.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslhCKBzvegwQ_10regex_lite3int11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
  ret void

bb.e:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslhCKBzvegwQ_10regex_lite6pikevm9SlotTableECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs3tZ2SXJA1qv_8jiff_cli.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs3tZ2SXJA1qv_8jiff_cli.exit
    i64 1, label %bb.c
  ], !prof !61

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs3tZ2SXJA1qv_8jiff_cli.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !84
  store i8 3, ptr %i.a, align 8, !alias.scope !84
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs3tZ2SXJA1qv_8jiff_cli.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCsaL1QbXo9JQH_3std2fs14create_dir_allRNtNtB4_4path4PathECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 511, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 1, ptr %i.b, align 4
  %i.c = call noundef ptr @_RNvMsD_NtCsaL1QbXo9JQH_3std2fsNtB5_10DirBuilder7__create(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaL1QbXo9JQH_3std2fs14read_to_stringRNtNtB4_4path4PathECs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNvNtCsaL1QbXo9JQH_3std2fs14read_to_string5inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaL1QbXo9JQH_3std2fs14read_to_stringRNtNtB4_4path7PathBufECs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !6
  tail call void @_RNvNvNtCsaL1QbXo9JQH_3std2fs14read_to_string5inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsaL1QbXo9JQH_3std2fs4copyRNtNtB4_4path7PathBufBu_ECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i2 = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i3 = load i64, ptr %i.d, align 8, !noundef !6
  %i.e = tail call { i64, ptr } @_RNvNtNtCsaL1QbXo9JQH_3std3sys2fs4copy(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i2, i64 noundef %.val1.i3)
  ret { i64, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsaL1QbXo9JQH_3std2rt10lang_startINtNtCs3oUPovFnLWP_4core6result6ResultuNtCs8WPnInWCYsb_6anyhow5ErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvNtCsaL1QbXo9JQH_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @3, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs3tZ2SXJA1qv_8jiff_cli(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #2 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep5 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep5
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !92, !noalias !95
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !92, !noalias !95
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !95, !noalias !87
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !95, !noalias !87
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !92, !noalias !95
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !92, !noalias !95
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !95, !noalias !87
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !95, !noalias !87
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %lcmp.mod.not = trunc i64 %2 to i1
  br i1 %lcmp.mod.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !87, !noalias !90
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !90, !noalias !87
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !87, !noalias !90
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !90, !noalias !87
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.g, %scalar.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg
  br i1 %i.j, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !87, !noalias !90
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !90, !noalias !87
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !87, !noalias !90
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !90, !noalias !87
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !100, !noalias !102
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !102, !noalias !100
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !100, !noalias !102
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !102, !noalias !100
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !104
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtNtCs35zZu0fmp16_7walkdir5error5ErrorNtB3_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = invoke noundef align 8 ptr @_RNvNtCs8WPnInWCYsb_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !105

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.c, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs2_NtCsaL1QbXo9JQH_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.e = call noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error22construct_from_contextNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs35zZu0fmp16_7walkdir5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.i
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

.critedge:                                        ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm

bb.i:                                             ; preds = %bb.g
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #21
          to label %.critedge unwind label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i32 0, 256) i32 @_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startINtNtCs3oUPovFnLWP_4core6result6ResultuNtCs8WPnInWCYsb_6anyhow5ErrorEE0Cs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = tail call noundef ptr @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceFEINtNtCs3oUPovFnLWP_4core6result6ResultuNtCs8WPnInWCYsb_6anyhow5ErrorEB19_ECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %i.a) #22
  %i.c = tail call noundef i8 @_RNvXsX_NtCsaL1QbXo9JQH_3std7processINtNtCs3oUPovFnLWP_4core6result6ResultuNtCs8WPnInWCYsb_6anyhow5ErrorENtB5_11Termination6reportCs3tZ2SXJA1qv_8jiff_cli(ptr noundef %i.b)
  %i.d = zext i8 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i32 0, 256) i32 @_RNSNvYNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startINtNtCs3oUPovFnLWP_4core6result6ResultuNtCs8WPnInWCYsb_6anyhow5ErrorEE0INtNtNtBN_3ops8function6FnOnceuE9call_once6vtableCs3tZ2SXJA1qv_8jiff_cli(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = tail call noundef ptr @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceFEINtNtCs3oUPovFnLWP_4core6result6ResultuNtCs8WPnInWCYsb_6anyhow5ErrorEB19_ECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %i.a) #22, !noalias !106
  %i.c = tail call noundef i8 @_RNvXsX_NtCsaL1QbXo9JQH_3std7processINtNtCs3oUPovFnLWP_4core6result6ResultuNtCs8WPnInWCYsb_6anyhow5ErrorENtB5_11Termination6reportCs3tZ2SXJA1qv_8jiff_cli(ptr noundef %i.b), !noalias !106
  %i.d = zext i8 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvCs3tZ2SXJA1qv_8jiff_cli4main() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [120 x i8], align 8               ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RINvNtCsaL1QbXo9JQH_3std3env3varReECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 8)
  %i.p = load i64, ptr %i.n, align 8, !range !5, !noundef !6
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  store i64 0, ptr %i.o, align 8, !alias.scope !109, !noalias !112
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !109, !noalias !112
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !109, !noalias !112
  %i.s = load i64, ptr %i.c, align 8, !range !10, !alias.scope !114, !noalias !109, !noundef !6
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_RNCNvCs3tZ2SXJA1qv_8jiff_cli4main0B3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !109
  br label %_RNCNvCs3tZ2SXJA1qv_8jiff_cli4main0B3_.exit

_RNCNvCs3tZ2SXJA1qv_8jiff_cli4main0B3_.exit:      ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNCNvCs3tZ2SXJA1qv_8jiff_cli4main0B3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !6, !noundef !6 ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !6 ; 3 uses
  switch i64 %i.x, label %bb.l [
    i64 0, label %bb.p
    i64 3, label %bb.f
    i64 5, label %bb.g
    i64 4, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = load i16, ptr %i.v, align 1
  %i.z = xor i16 %i.y, 26223
  %i.aa = getelementptr i8, ptr %i.v, i64 2
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i16
  %i.ad = xor i16 %i.ac, 102
  %i.ae = or i16 %i.z, %i.ad
  %i.af = icmp ne i16 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.p, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.ai = load i32, ptr %i.v, align 1
  %i.aj = xor i32 %i.ai, 1869771365
end_hunk_1
