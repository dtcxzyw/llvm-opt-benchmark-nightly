Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontdrasil-bdef820a3e288df5.fontdrasil.bcdef5e85db49d1a-cgu.02?download=true
inline.NumInlined: 307
inline.NumDeleted: 190
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [17 x i8] c"capacity overflow", align 1
@1 = private unnamed_addr constant [118 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"u\00\00\00\00\00\00\00`\10\00\00\0D\00\00\00" }>, align 8
@3 = private unnamed_addr constant [120 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/iter.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"w\00\00\00\00\00\00\00\EF\05\00\00\22\00\00\00" }>, align 8
@5 = private unnamed_addr constant [136 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/spec_from_iter_nested.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\87\00\00\00\00\00\00\009\00\00\00\12\00\00\00" }>, align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBG_EE8dedup_byNCNvMs5_B5_Bv_5dedup0ECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.029 = phi i64 [ 1, %bb.b ], [ %.sroa.5.030, %bb.d ] ; 4 uses
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.0.029 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.val13 = load double, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %.val14 = load double, ptr %i.i, align 8        ; 2 uses
  %.val15 = load double, ptr %i.h, align 8        ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 -8
  %.val16 = load double, ptr %i.j, align 8        ; 2 uses
  %i.k = fcmp uno double %.val13, 0.000000e+00
  %i.l = fcmp uno double %.val15, 0.000000e+00
  %i.m = fcmp oeq double %.val13, %.val15
  %.sroa.0.0.in.i.i.i = select i1 %i.k, i1 %i.l, i1 %i.m
  %i.n = fcmp uno double %.val14, 0.000000e+00
  %i.o = fcmp uno double %.val16, 0.000000e+00
  %i.p = fcmp oeq double %.val14, %.val16
  %.sroa.0.0.in.i4.i.i = select i1 %i.n, i1 %i.o, i1 %i.p
  %.sroa.0.0.i.i = select i1 %.sroa.0.0.in.i.i.i, i1 %.sroa.0.0.in.i4.i.i, i1 false
  %.sroa.5.030 = add nuw nsw i64 %.sroa.0.029, 1  ; 4 uses
  br i1 %.sroa.0.0.i.i, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.q = icmp samesign ult i64 %.sroa.5.030, %i.b
  br i1 %i.q, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.030, %i.b
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.029, %.preheader ], [ %.sroa.11.1, %bb.f ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.sroa.5.032 = phi i64 [ %.sroa.5.0, %bb.f ], [ %.sroa.5.030, %.preheader ] ; 2 uses
  %.sroa.11.031 = phi i64 [ %.sroa.11.1, %bb.f ], [ %.sroa.0.029, %.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.5.032 ; 3 uses
  %i.s = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.11.031 ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  %.val = load double, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 8
  %.val10 = load double, ptr %i.u, align 8        ; 2 uses
  %.val11 = load double, ptr %i.t, align 8        ; 2 uses
  %i.v = getelementptr i8, ptr %i.s, i64 -8
  %.val12 = load double, ptr %i.v, align 8        ; 2 uses
  %i.w = fcmp uno double %.val, 0.000000e+00
  %i.x = fcmp uno double %.val11, 0.000000e+00
  %i.y = fcmp oeq double %.val, %.val11
  %.sroa.0.0.in.i.i.i17 = select i1 %i.w, i1 %i.x, i1 %i.y
  %i.z = fcmp uno double %.val10, 0.000000e+00
  %i.aa = fcmp uno double %.val12, 0.000000e+00
  %i.ab = fcmp oeq double %.val10, %.val12
  %.sroa.0.0.in.i4.i.i18 = select i1 %i.z, i1 %i.aa, i1 %i.ab
  %.sroa.0.0.i.i19 = select i1 %.sroa.0.0.in.i.i.i17, i1 %.sroa.0.0.in.i4.i.i18, i1 false
  br i1 %.sroa.0.0.i.i19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.ac = add i64 %.sroa.11.031, 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.11.1 = phi i64 [ %i.ac, %bb.e ], [ %.sroa.11.031, %.lr.ph ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.032, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBJ_9UserSpaceEIBH_NtBJ_11DesignSpaceEEE8dedup_byNCNvMs5_B5_Bv_5dedup0EBL_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.029 = phi i64 [ 1, %bb.b ], [ %.sroa.5.030, %bb.d ] ; 4 uses
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.0.029 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.val13 = load double, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %.val14 = load double, ptr %i.i, align 8        ; 2 uses
  %.val15 = load double, ptr %i.h, align 8        ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 -8
  %.val16 = load double, ptr %i.j, align 8        ; 2 uses
  %i.k = fcmp uno double %.val13, 0.000000e+00
  %i.l = fcmp uno double %.val15, 0.000000e+00
  %i.m = fcmp oeq double %.val13, %.val15
  %.sroa.0.0.in.i.i.i = select i1 %i.k, i1 %i.l, i1 %i.m
  %i.n = fcmp uno double %.val14, 0.000000e+00
  %i.o = fcmp uno double %.val16, 0.000000e+00
  %i.p = fcmp oeq double %.val14, %.val16
  %.sroa.0.0.in.i4.i.i = select i1 %i.n, i1 %i.o, i1 %i.p
  %.sroa.0.0.i.i = select i1 %.sroa.0.0.in.i.i.i, i1 %.sroa.0.0.in.i4.i.i, i1 false
  %.sroa.5.030 = add nuw nsw i64 %.sroa.0.029, 1  ; 4 uses
  br i1 %.sroa.0.0.i.i, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.q = icmp samesign ult i64 %.sroa.5.030, %i.b
  br i1 %i.q, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.030, %i.b
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.029, %.preheader ], [ %.sroa.11.1, %bb.f ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.sroa.5.032 = phi i64 [ %.sroa.5.0, %bb.f ], [ %.sroa.5.030, %.preheader ] ; 2 uses
  %.sroa.11.031 = phi i64 [ %.sroa.11.1, %bb.f ], [ %.sroa.0.029, %.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.5.032 ; 3 uses
  %i.s = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.11.031 ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  %.val = load double, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 8
  %.val10 = load double, ptr %i.u, align 8        ; 2 uses
  %.val11 = load double, ptr %i.t, align 8        ; 2 uses
  %i.v = getelementptr i8, ptr %i.s, i64 -8
  %.val12 = load double, ptr %i.v, align 8        ; 2 uses
  %i.w = fcmp uno double %.val, 0.000000e+00
  %i.x = fcmp uno double %.val11, 0.000000e+00
  %i.y = fcmp oeq double %.val, %.val11
  %.sroa.0.0.in.i.i.i17 = select i1 %i.w, i1 %i.x, i1 %i.y
  %i.z = fcmp uno double %.val10, 0.000000e+00
  %i.aa = fcmp uno double %.val12, 0.000000e+00
  %i.ab = fcmp oeq double %.val10, %.val12
  %.sroa.0.0.in.i4.i.i18 = select i1 %i.z, i1 %i.aa, i1 %i.ab
  %.sroa.0.0.i.i19 = select i1 %.sroa.0.0.in.i.i.i17, i1 %.sroa.0.0.in.i4.i.i18, i1 false
  br i1 %.sroa.0.0.i.i19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.ac = add i64 %.sroa.11.031, 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.11.1 = phi i64 [ %i.ac, %bb.e ], [ %.sroa.11.031, %.lr.ph ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.032, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEE10retain_mutNCINvMs8_B1l_INtB1l_8LocationB20_E6retainNCNvMs1_NtB1n_10variationsNtB3p_14VariationModel8new_impls_0E0EB1n_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 6 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %.loopexit, label %.preheader22

.preheader22:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader22, %bb.c
  %.sroa.0.0 = phi i64 [ %i.m, %bb.c ], [ 0, %.preheader22 ] ; 4 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.0.0
  %.val.i = load ptr, ptr %1, align 8, !noalias !23, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !24, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !24, !noundef !4
  %i.l = tail call noundef zeroext i1 @_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtB5_13SliceContains14slice_containsCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k)
  %i.m = add nuw nsw i64 %.sroa.0.0, 1            ; 4 uses
  br i1 %i.l, label %bb.c, label %.preheader, !prof !6

.preheader:                                       ; preds = %bb.b
  %i.n = icmp samesign ult i64 %i.m, %i.b
  br i1 %i.n, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.m, %i.b
  br i1 %i.o, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a, %._crit_edge
  ret void

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.sroa.13.0.lcssa = phi i64 [ %.sroa.0.0, %.preheader ], [ %.sroa.13.1, %bb.e ]
  store i64 %.sroa.13.0.lcssa, ptr %i.a, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.sroa.7.030 = phi i64 [ %.sroa.7.0, %bb.e ], [ %i.m, %.preheader ] ; 3 uses
  %.sroa.13.029 = phi i64 [ %.sroa.13.1, %bb.e ], [ %.sroa.0.0, %.preheader ] ; 5 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.7.030 ; 3 uses
  %.val.i10 = load ptr, ptr %1, align 8, !noalias !25, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i10, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !26, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i10, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !26, !noundef !4
  %i.u = invoke noundef zeroext i1 @_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtB5_13SliceContains14slice_containsCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t)
          to label %_RNCINvMs8_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB8_8LocationNtB8_15NormalizedSpaceE6retainNCNvMs1_NtBa_10variationsNtB1y_14VariationModel8new_impls_0E0Ba_.exit unwind label %bb.f

_RNCINvMs8_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB8_8LocationNtB8_15NormalizedSpaceE6retainNCNvMs1_NtBa_10variationsNtB1y_14VariationModel8new_impls_0E0Ba_.exit: ; preds = %.lr.ph
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNCINvMs8_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB8_8LocationNtB8_15NormalizedSpaceE6retainNCNvMs1_NtBa_10variationsNtB1y_14VariationModel8new_impls_0E0Ba_.exit
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.13.029
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  %i.w = add i64 %.sroa.13.029, 1
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvMs8_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB8_8LocationNtB8_15NormalizedSpaceE6retainNCNvMs1_NtBa_10variationsNtB1y_14VariationModel8new_impls_0E0Ba_.exit, %bb.d
  %.sroa.13.1 = phi i64 [ %i.w, %bb.d ], [ %.sroa.13.029, %_RNCINvMs8_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB8_8LocationNtB8_15NormalizedSpaceE6retainNCNvMs1_NtBa_10variationsNtB1y_14VariationModel8new_impls_0E0Ba_.exit ] ; 2 uses
  %.sroa.7.0 = add nuw nsw i64 %.sroa.7.030, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.7.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = sub nuw nsw i64 %i.b, %.sroa.7.030       ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.13.029
  %i.aa = shl nuw nsw i64 %i.y, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.p, i64 %i.aa, i1 false), !noalias !27
  %i.ab = add i64 %i.y, %.sroa.13.029
  store i64 %i.ab, ptr %i.a, align 8, !noalias !27
  resume { ptr, i32 } %i.x
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEE6retainNCNvMs9_B1l_INtB1l_8LocationB20_E11fit_to_axes0EB1n_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !34, !noundef !4 ; 6 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEE10retain_mutNCINvB2_6retainNCNvMs9_B1l_INtB1l_8LocationB20_E11fit_to_axes0E0EB1n_.exit, label %.preheader23.i

.preheader23.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !34, !nonnull !4, !noundef !4 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader23.i
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %.preheader23.i ] ; 4 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %i.h = tail call noundef zeroext i1 @_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtB5_13SliceContains14slice_containsCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !34
  %i.i = add nuw nsw i64 %.sroa.0.0.i, 1          ; 4 uses
  br i1 %i.h, label %bb.c, label %.preheader.i, !prof !6

.preheader.i:                                     ; preds = %bb.b
  %i.j = icmp samesign ult i64 %i.i, %i.b
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, %i.b
  br i1 %i.k, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEE10retain_mutNCINvB2_6retainNCNvMs9_B1l_INtB1l_8LocationB20_E11fit_to_axes0E0EB1n_.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.e, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.e ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !34
  br label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEE10retain_mutNCINvB2_6retainNCNvMs9_B1l_INtB1l_8LocationB20_E11fit_to_axes0E0EB1n_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %.sroa.7.033.i = phi i64 [ %.sroa.7.0.i, %bb.e ], [ %i.i, %.preheader.i ] ; 3 uses
  %.sroa.13.032.i = phi i64 [ %.sroa.13.1.i, %bb.e ], [ %.sroa.0.0.i, %.preheader.i ] ; 5 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.7.033.i ; 3 uses
  %i.m = invoke noundef zeroext i1 @_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtB5_13SliceContains14slice_containsCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1n_15NormalizedSpaceEEE6retainNCNvMs9_B1n_INtB1n_8LocationB22_E11fit_to_axes0E0B1p_.exit.i unwind label %bb.f, !noalias !34

_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1n_15NormalizedSpaceEEE6retainNCNvMs9_B1n_INtB1n_8LocationB22_E11fit_to_axes0E0B1p_.exit.i: ; preds = %.lr.ph.i
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1n_15NormalizedSpaceEEE6retainNCNvMs9_B1n_INtB1n_8LocationB22_E11fit_to_axes0E0B1p_.exit.i
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.13.032.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !34
  %i.o = add i64 %.sroa.13.032.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1n_15NormalizedSpaceEEE6retainNCNvMs9_B1n_INtB1n_8LocationB22_E11fit_to_axes0E0B1p_.exit.i
  %.sroa.13.1.i = phi i64 [ %i.o, %bb.d ], [ %.sroa.13.032.i, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1n_15NormalizedSpaceEEE6retainNCNvMs9_B1n_INtB1n_8LocationB22_E11fit_to_axes0E0B1p_.exit.i ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.033.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = sub nuw nsw i64 %i.b, %.sroa.7.033.i     ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.13.032.i
  %i.s = shl nuw nsw i64 %i.q, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.l, i64 %i.s, i1 false), !noalias !35
  %i.t = add i64 %i.q, %.sroa.13.032.i
  store i64 %i.t, ptr %i.a, align 8, !alias.scope !34, !noalias !36
  resume { ptr, i32 } %i.p

_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEE10retain_mutNCINvB2_6retainNCNvMs9_B1l_INtB1l_8LocationB20_E11fit_to_axes0E0EB1n_.exit: ; preds = %bb.c, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEE8dedup_byNCNvXs7_B1l_INtB1l_8LocationB20_EINtNtCsf3Ta7LF998c_4core7convert4FromBv_E4froms_0EB1n_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0B9_.exit
  %.sroa.0.023 = phi i64 [ 1, %bb.b ], [ %i.k, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0B9_.exit ] ; 5 uses
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.0.023 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.val11 = load i32, ptr %i.g, align 8, !noundef !4
  %i.i = load i32, ptr %i.h, align 8, !alias.scope !41, !noundef !4
  %i.j = icmp eq i32 %.val11, %i.i
  br i1 %i.j, label %bb.d, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0B9_.exit

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0B9_.exit: ; preds = %bb.c
  %i.k = add nuw nsw i64 %.sroa.0.023, 1          ; 2 uses
  %.not = icmp eq i64 %i.k, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val12 = load double, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.g, i64 -8
  store double %.val12, ptr %i.m, align 8, !alias.scope !41
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
  %.val = load i32, ptr %i.o, align 8, !noundef !4
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !42, !noundef !4
  %i.s = icmp eq i32 %.val, %i.r
  br i1 %i.s, label %bb.e, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0B9_.exit13

.thread:                                          ; preds = %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0B9_.exit, %bb.a, %._crit_edge
  ret void

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0B9_.exit13: ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.t = add i64 %.sroa.11.025, 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %i.o, i64 8
  %.val10 = load double, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.p, i64 -8
  store double %.val10, ptr %i.v, align 8, !alias.scope !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0B9_.exit13
  %.sroa.11.1 = phi i64 [ %.sroa.11.025, %bb.e ], [ %i.t, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0B9_.exit13 ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.026, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VeccE16extend_desugaredNtNtNtCsf3Ta7LF998c_4core3str4iter5CharsECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %.not.i11 = icmp eq ptr %1, %2
  br i1 %.not.i11, label %_RNvXNtNtCsf3Ta7LF998c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.0.012 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.1.ph, %bb.e ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 1 ; 3 uses
  %i.e = load i8, ptr %.sroa.0.012, align 1, !noalias !47, !noundef !4 ; 5 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit12.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit12.i.i: ; preds = %bb.b
  %i.g = and i8 %i.e, 31
  %i.h = zext nneg i8 %i.g to i32                 ; 3 uses
  %i.i = icmp ne ptr %i.d, %2
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 2 ; 3 uses
  %i.k = load i8, ptr %i.d, align 1, !noalias !47, !noundef !4
  %i.l = shl nuw nsw i32 %i.h, 6
  %i.m = and i8 %i.k, 63
  %i.n = zext nneg i8 %i.m to i32                 ; 2 uses
  %i.o = or disjoint i32 %i.l, %i.n
  %i.p = icmp samesign ugt i8 %i.e, -33
  br i1 %i.p, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit14.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = zext nneg i8 %i.e to i32
  br label %bb.d

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit14.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit12.i.i
  %i.r = icmp ne ptr %i.j, %2
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 3 ; 3 uses
  %i.t = load i8, ptr %i.j, align 1, !noalias !47, !noundef !4
  %i.u = shl nuw nsw i32 %i.n, 6
  %i.v = and i8 %i.t, 63
  %i.w = zext nneg i8 %i.v to i32
  %i.x = or disjoint i32 %i.u, %i.w               ; 2 uses
  %i.y = shl nuw nsw i32 %i.h, 12
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = icmp samesign ugt i8 %i.e, -17
  br i1 %i.aa, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit16.i.i, label %bb.d

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit16.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit14.i.i
  %i.ab = icmp ne ptr %i.s, %2
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 4
  %i.ad = load i8, ptr %i.s, align 1, !noalias !47, !noundef !4
  %i.ae = shl nuw nsw i32 %i.h, 18
  %i.af = and i32 %i.ae, 1835008
  %i.ag = shl nuw nsw i32 %i.x, 6
  %i.ah = and i8 %i.ad, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = or disjoint i32 %i.aj, %i.af
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit12.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit16.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit14.i.i
  %.sroa.0.1.ph = phi ptr [ %i.j, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit12.i.i ], [ %i.s, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit14.i.i ], [ %i.ac, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit16.i.i ], [ %i.d, %bb.c ] ; 3 uses
  %spec.select.i.ph = phi i32 [ %i.o, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit12.i.i ], [ %i.z, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit14.i.i ], [ %i.ak, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit16.i.i ], [ %i.q, %bb.c ]
  %i.al = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.am = icmp ult i64 %i.al, 2305843009213693952
  tail call void @llvm.assume(i1 %i.am)
  %i.an = load i64, ptr %0, align 8, !range !7, !noundef !4
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VeccE7reserveCsgdm2QMcbaeA_10fontdrasil.exit, label %bb.e

_RNvXNtNtCsf3Ta7LF998c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.e, %bb.a
  ret void

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VeccE7reserveCsgdm2QMcbaeA_10fontdrasil.exit: ; preds = %bb.d
  %i.ap = ptrtoint ptr %.sroa.0.1.ph to i64
  %i.aq = sub nuw i64 %i.b, %i.ap                 ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = and i64 %i.aq, 3
  %.not.i4 = icmp ne i64 %i.as, 0
  %i.at = zext i1 %.not.i4 to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.ar, 1
  %i.au = add nuw nsw i64 %.sroa.0.0.i, %i.at
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.al, i64 noundef range(i64 1, 0) %i.au, i64 noundef 4, i64 noundef 4)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VeccE7reserveCsgdm2QMcbaeA_10fontdrasil.exit
  %i.av = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.al
  store i32 %spec.select.i.ph, ptr %i.aw, align 4
  %i.ax = add nuw nsw i64 %i.al, 1
  store i64 %i.ax, ptr %i.a, align 8
  %.not.i = icmp eq ptr %.sroa.0.1.ph, %2
  br i1 %.not.i, label %_RNvXNtNtCsf3Ta7LF998c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1b_15NormalizedSpaceEEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !50, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !50, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBI_15NormalizedSpaceEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEEBG_.exit.i.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBI_15NormalizedSpaceEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEEBG_.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEEBG_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEEBG_.exit.i.i unwind label %bb.b, !noalias !50

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEEBG_.exit7.i.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEEBG_.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEEBG_.exit7.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEEBG_.exit7.i.i unwind label %bb.c, !noalias !50

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15, !noalias !50
  unreachable

.body:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEEBG_.exit7.i.i, %bb.b
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBP_15NormalizedSpaceEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1i_15NormalizedSpaceEEEB1k_.exit unwind label %bb.d

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBI_15NormalizedSpaceEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEEBG_.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBP_15NormalizedSpaceEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #15
  unreachable

end_hunk_0
