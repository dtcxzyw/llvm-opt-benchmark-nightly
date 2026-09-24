Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/ufo2fontir-46da0edc7bce67f1.ufo2fontir.1df759023741b243-cgu.05?download=true
inline.NumInlined: 1000
inline.NumDeleted: 535
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [17 x i8] c"capacity overflow", align 1
@1 = private unnamed_addr constant [118 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"u\00\00\00\00\00\00\00`\10\00\00\0D\00\00\00" }>, align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_11DesignSpaceEEE8dedup_byNCNvXs7_B1l_INtB1l_8LocationB20_EINtNtCsf3Ta7LF998c_4core7convert4FromBv_E4froms_0ECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit
  %.sroa.0.023 = phi i64 [ 1, %bb.b ], [ %i.k, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit ] ; 5 uses
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.0.023 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.val11 = load i32, ptr %i.g, align 8, !noundef !8
  %i.i = load i32, ptr %i.h, align 8, !alias.scope !28, !noundef !8
  %i.j = icmp eq i32 %.val11, %i.i
  br i1 %i.j, label %bb.d, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.c
  %i.k = add nuw nsw i64 %.sroa.0.023, 1          ; 2 uses
  %.not = icmp eq i64 %i.k, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val12 = load double, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.g, i64 -8
  store double %.val12, ptr %i.m, align 8, !alias.scope !28
  %.sroa.5.024 = add nuw nsw i64 %.sroa.0.023, 1  ; 2 uses
  %i.n = icmp samesign ult i64 %.sroa.5.024, %i.b
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.023, %bb.d ], [ %.sroa.11.1, %bb.f ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.5.026 = phi i64 [ %.sroa.5.0, %bb.f ], [ %.sroa.5.024, %bb.d ] ; 2 uses
  %.sroa.11.025 = phi i64 [ %.sroa.11.1, %bb.f ], [ %.sroa.0.023, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.5.026 ; 3 uses
  %i.p = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.11.025 ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  %.val = load i32, ptr %i.o, align 8, !noundef !8
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !29, !noundef !8
  %i.s = icmp eq i32 %.val, %i.r
  br i1 %i.s, label %bb.e, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit13

.thread:                                          ; preds = %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit, %bb.a, %._crit_edge
  ret void

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit13: ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.t = add i64 %.sroa.11.025, 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %i.o, i64 8
  %.val10 = load double, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.p, i64 -8
  store double %.val10, ptr %i.v, align 8, !alias.scope !29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit13
  %.sroa.11.1 = phi i64 [ %.sroa.11.025, %bb.e ], [ %i.t, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_11DesignSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit13 ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.026, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEE8dedup_byNCNvXs7_B1l_INtB1l_8LocationB20_EINtNtCsf3Ta7LF998c_4core7convert4FromBv_E4froms_0ECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit
  %.sroa.0.023 = phi i64 [ 1, %bb.b ], [ %i.k, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit ] ; 5 uses
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.0.023 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.val11 = load i32, ptr %i.g, align 8, !noundef !8
  %i.i = load i32, ptr %i.h, align 8, !alias.scope !34, !noundef !8
  %i.j = icmp eq i32 %.val11, %i.i
  br i1 %i.j, label %bb.d, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.c
  %i.k = add nuw nsw i64 %.sroa.0.023, 1          ; 2 uses
  %.not = icmp eq i64 %i.k, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val12 = load double, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.g, i64 -8
  store double %.val12, ptr %i.m, align 8, !alias.scope !34
  %.sroa.5.024 = add nuw nsw i64 %.sroa.0.023, 1  ; 2 uses
  %i.n = icmp samesign ult i64 %.sroa.5.024, %i.b
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.023, %bb.d ], [ %.sroa.11.1, %bb.f ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.5.026 = phi i64 [ %.sroa.5.0, %bb.f ], [ %.sroa.5.024, %bb.d ] ; 2 uses
  %.sroa.11.025 = phi i64 [ %.sroa.11.1, %bb.f ], [ %.sroa.0.023, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.5.026 ; 3 uses
  %i.p = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.11.025 ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  %.val = load i32, ptr %i.o, align 8, !noundef !8
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !35, !noundef !8
  %i.s = icmp eq i32 %.val, %i.r
  br i1 %i.s, label %bb.e, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit13

.thread:                                          ; preds = %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit, %bb.a, %._crit_edge
  ret void

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit13: ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.t = add i64 %.sroa.11.025, 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %i.o, i64 8
  %.val10 = load double, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.p, i64 -8
  store double %.val10, ptr %i.v, align 8, !alias.scope !35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit13
  %.sroa.11.1 = phi i64 [ %.sroa.11.025, %bb.e ], [ %i.t, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit13 ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.026, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_9UserSpaceEEE8dedup_byNCNvXs7_B1l_INtB1l_8LocationB20_EINtNtCsf3Ta7LF998c_4core7convert4FromBv_E4froms_0ECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit
  %.sroa.0.023 = phi i64 [ 1, %bb.b ], [ %i.k, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit ] ; 5 uses
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.0.023 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.val11 = load i32, ptr %i.g, align 8, !noundef !8
  %i.i = load i32, ptr %i.h, align 8, !alias.scope !40, !noundef !8
  %i.j = icmp eq i32 %.val11, %i.i
  br i1 %i.j, label %bb.d, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.c
  %i.k = add nuw nsw i64 %.sroa.0.023, 1          ; 2 uses
  %.not = icmp eq i64 %i.k, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val12 = load double, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.g, i64 -8
  store double %.val12, ptr %i.m, align 8, !alias.scope !40
  %.sroa.5.024 = add nuw nsw i64 %.sroa.0.023, 1  ; 2 uses
  %i.n = icmp samesign ult i64 %.sroa.5.024, %i.b
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.023, %bb.d ], [ %.sroa.11.1, %bb.f ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.5.026 = phi i64 [ %.sroa.5.0, %bb.f ], [ %.sroa.5.024, %bb.d ] ; 2 uses
  %.sroa.11.025 = phi i64 [ %.sroa.11.1, %bb.f ], [ %.sroa.0.023, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.5.026 ; 3 uses
  %i.p = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.11.025 ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  %.val = load i32, ptr %i.o, align 8, !noundef !8
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !41, !noundef !8
  %i.s = icmp eq i32 %.val, %i.r
  br i1 %i.s, label %bb.e, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit13

.thread:                                          ; preds = %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit, %bb.a, %._crit_edge
  ret void

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit13: ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.t = add i64 %.sroa.11.025, 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %i.o, i64 8
  %.val10 = load double, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.p, i64 -8
  store double %.val10, ptr %i.v, align 8, !alias.scope !41
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit13
  %.sroa.11.1 = phi i64 [ %.sroa.11.025, %bb.e ], [ %i.t, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0Cs2zvA5OmMqFb_10ufo2fontir.exit13 ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.026, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VectE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 7 uses
  %i.c = icmp ult i64 %i.b, 4611686018427387904
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvar = phi i64 [ 0, %bb.b ], [ %indvar.next, %bb.e ] ; 3 uses
  %.sroa.0.022 = phi i64 [ 1, %bb.b ], [ %.sroa.5.023, %bb.e ] ; 8 uses
  %i.g = getelementptr [2 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -2
  %.val11 = load i16, ptr %i.g, align 2, !noundef !8
  %.val12 = load i16, ptr %i.h, align 2, !noundef !8
  %i.i = icmp eq i16 %.val11, %.val12
  %.sroa.5.023 = add nuw nsw i64 %.sroa.0.022, 1  ; 5 uses
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.j = icmp samesign ult i64 %.sroa.5.023, %i.b
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = sub i64 %i.b, %indvar
  %i.l = add nsw i64 %i.b, -3
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %.sroa.5.023
  %i.n = getelementptr [2 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -2
  %.val.prol = load i16, ptr %i.m, align 2, !noundef !8 ; 2 uses
  %.val10.prol = load i16, ptr %i.o, align 2, !noundef !8
  %i.p = icmp eq i16 %.val.prol, %.val10.prol
  br i1 %i.p, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.prol
  store i16 %.val.prol, ptr %i.n, align 2
  %i.q = add nuw i64 %.sroa.0.022, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.q, %bb.d ], [ %.sroa.0.022, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw nsw i64 %.sroa.0.022, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.11.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.5.025.unr = phi i64 [ %.sroa.5.023, %.lr.ph.preheader ], [ %.sroa.5.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.11.024.unr = phi i64 [ %.sroa.0.022, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %i.l, %indvar
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.023, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.022, %.preheader ], [ %.sroa.11.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.11.1.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.sroa.5.025 = phi i64 [ %.sroa.5.0.1, %bb.h ], [ %.sroa.5.025.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.11.024 = phi i64 [ %.sroa.11.1.1, %bb.h ], [ %.sroa.11.024.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.t = getelementptr [2 x i8], ptr %i.f, i64 %.sroa.11.024 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -2
  %.val = load i16, ptr %i.s, align 2, !noundef !8 ; 2 uses
  %.val10 = load i16, ptr %i.u, align 2, !noundef !8
  %i.v = icmp eq i16 %.val, %.val10
  br i1 %i.v, label %.lr.ph.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i16 %.val, ptr %i.t, align 2
  %i.w = add i64 %.sroa.11.024, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.f
  %.sroa.11.1 = phi i64 [ %i.w, %bb.f ], [ %.sroa.11.024, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.z = getelementptr [2 x i8], ptr %i.f, i64 %.sroa.11.1 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -2
  %.val.1 = load i16, ptr %i.y, align 2, !noundef !8 ; 2 uses
  %.val10.1 = load i16, ptr %i.aa, align 2, !noundef !8
  %i.ab = icmp eq i16 %.val.1, %.val10.1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  store i16 %.val.1, ptr %i.z, align 2
  %i.ac = add i64 %.sroa.11.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %.sroa.11.1.1 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.11.1, %.lr.ph.1 ] ; 2 uses
  %.sroa.5.0.1 = add nuw nsw i64 %.sroa.5.025, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.5.0.1, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsbeZck1VjBmm_8indexmap6BucketNtCs9NoVXegZYB5_8smol_str7SmolStrINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2D_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.a = load i8, ptr %0, align 8, !range !9, !alias.scope !52, !noundef !8
  %switch.i.i = icmp samesign ult i8 %i.a, 25
  br i1 %switch.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !55, !nonnull !8, !noundef !8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !55
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBS_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1z_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointEECs2zvA5OmMqFb_10ufo2fontir.exit unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBS_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1z_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointEECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsbeZck1VjBmm_8indexmap6BucketNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsaGmGRvprAGn_5plist5value5ValueEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist5value5ValueECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(80) %0) #21
          to label %common.resume unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.a
  %i.c = load i64, ptr %0, align 16, !range !10, !alias.scope !64, !noundef !8 ; 3 uses
  %i.d = icmp ne i64 %i.c, -9223372036854775807
  tail call void @llvm.assume(i1 %i.d)
  %i.e = xor i64 %i.c, -9223372036854775808
  %i.f = icmp slt i64 %i.c, 0
  %i.g = select i1 %i.f, i64 %i.e, i64 1
  switch i64 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist5value5ValueECs2zvA5OmMqFb_10ufo2fontir.exit [
    i64 0, label %bb.c
    i64 1, label %bb.i
    i64 3, label %bb.j
    i64 7, label %bb.k
  ]

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 16, !alias.scope !66, !nonnull !8, !noundef !8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !66, !noundef !8 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsaGmGRvprAGn_5plist5value5ValueEECs2zvA5OmMqFb_10ufo2fontir.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.l
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsaGmGRvprAGn_5plist5value5ValueEECs2zvA5OmMqFb_10ufo2fontir.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.i1 = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %.sroa.0.0.i1
  %i.p = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist5value5ValueECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(80) %i.o)
          to label %bb.d unwind label %bb.f, !noalias !65, !inline_history !62

bb.e:                                             ; preds = %.lr.ph3
  %i.q = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.l
  br i1 %i.r, label %.body, label %.lr.ph3

bb.f:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.l
  br i1 %i.t, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i2 = phi i64 [ %i.q, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist5value5ValueECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 16 dereferenceable(80) %i.u) #21
          to label %bb.e unwind label %bb.g, !noalias !65, !inline_history !62

bb.g:                                             ; preds = %.lr.ph3
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !65, !inline_history !62
  unreachable

.body:                                            ; preds = %bb.e, %bb.f
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsaGmGRvprAGn_5plist5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.h, !inline_history !67

common.resume:                                    ; preds = %bb.b, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.s, %.body ], [ %i.b, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !inline_history !67
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsaGmGRvprAGn_5plist5value5ValueEECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.d, %bb.c
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsaGmGRvprAGn_5plist5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !inline_history !67
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist5value5ValueECs2zvA5OmMqFb_10ufo2fontir.exit

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir.exit
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbeZck1VjBmm_8indexmap5inner4CoreNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsaGmGRvprAGn_5plist5value5ValueEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 16 dereferenceable(80) %0), !inline_history !63
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist5value5ValueECs2zvA5OmMqFb_10ufo2fontir.exit

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir.exit
end_hunk_0
