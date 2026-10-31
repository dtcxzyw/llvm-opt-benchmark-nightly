Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rotatepixels?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dt_introspection_t = type { i32, i32, ptr, i64, ptr, i64, i64 }
%struct.dt_iop_rotatepixels_gui_data_t = type {}

@.str = private unnamed_addr constant [25 x i8] c"modulename\04rotate pixels\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"internal module to setup technical specificities of raw sensor\0A\0Ayou should not touch values here!\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"TODO: implement %s() in %s\00", align 1
@__FUNCTION__.distort_mask = private unnamed_addr constant [13 x i8] c"distort_mask\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"/opt-bench/work/darktable/darktable/src/iop/rotatepixels.c\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 1, ptr @.str.10, i64 12, ptr getelementptr (i8, ptr @introspection_linear, i64 264), i64 1120, i64 688 }, align 8
@introspection_init.f3 = internal global [4 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr null], align 16
@.str.4 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ry\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@dummy = hidden local_unnamed_addr global %struct.dt_iop_rotatepixels_gui_data_t zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"uint\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"dt_iop_rotatepixels_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.7, ptr @.str.4, ptr @.str.4, ptr @.str.8, i64 4, i64 0, ptr null }, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.7, ptr @.str.5, ptr @.str.5, ptr @.str.8, i64 4, i64 4, ptr null }, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.9, ptr @.str.6, ptr @.str.6, ptr @.str.8, i64 4, i64 8, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.8, ptr @.str.8, ptr @.str.8, i64 12, i64 0, ptr null }, i64 3, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str, i64 noundef 11) #19
  ret ptr %i.a
}

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 8432
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @operation_tags() local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #19
  %i.b = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #19
  ret ptr %i.b
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @distort_transform(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load float, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load float, ptr %i.d, align 8, !tbaa !30
  %i.f = fdiv reassoc nsz arcp contract afn float %i.c, %i.e
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.g, align 16, !tbaa !31 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.j = load <2 x i32>, ptr %.val, align 4, !tbaa !32
  %i.k = uitofp reassoc nsz arcp contract afn <2 x i32> %i.j to <2 x float>
  %i.l = insertelement <2 x float> poison, float %i.f, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fmul reassoc nsz arcp contract afn <2 x float> %i.m, %i.k ; 3 uses
  %i.o = load <2 x float>, ptr %i.i, align 4, !tbaa !33 ; 3 uses
  %i.p = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.h, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !33 ; 3 uses
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.r = add i64 %i.a, -2                         ; 2 uses
  %i.s = lshr exact i64 %i.r, 1
  %i.t = add nuw i64 %i.s, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.t, -8                       ; 3 uses
  %i.u = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <2 x float> %i.n, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat20 = shufflevector <2 x float> %i.n, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat22 = shufflevector <4 x float> %i.p, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat24 = shufflevector <2 x float> %i.o, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat26 = shufflevector <2 x float> %i.o, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat28 = shufflevector <4 x float> %i.p, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 3
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.v, align 4, !tbaa !33 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec29 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.w = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat ; 2 uses
  %i.x = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec29, %broadcast.splat20 ; 2 uses
  %i.y = fmul reassoc nsz arcp contract afn <8 x float> %i.w, %broadcast.splat22
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %i.x, %broadcast.splat24
  %i.aa = fadd reassoc nsz arcp contract afn <8 x float> %i.z, %i.y
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat26, %i.w
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat28, %i.x
  %i.ad = fadd reassoc nsz arcp contract afn <8 x float> %i.ac, %i.ab
  %interleaved.vec = shufflevector <8 x float> %i.aa, <8 x float> %i.ad, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.v, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.018.ph = phi i64 [ 0, %.lr.ph ], [ %i.u, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret i32 1

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.018 = phi i64 [ %i.am, %scalar.ph ], [ %.018.ph, %scalar.ph.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.018 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.af, align 4, !tbaa !33
  %i.ah = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.n ; 2 uses
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aj = fmul reassoc nsz arcp contract afn <2 x float> %i.ai, %i.o
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.ah, %i.q
  %i.al = fadd reassoc nsz arcp contract afn <2 x float> %i.ak, %i.aj
  store <2 x float> %i.al, ptr %i.af, align 4, !tbaa !33
  %i.am = add nuw i64 %.018, 2                    ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.a
  br i1 %i.an, label %scalar.ph, label %._crit_edge, !llvm.loop !46
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @distort_backtransform(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load float, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load float, ptr %i.d, align 8, !tbaa !30
  %i.f = fdiv reassoc nsz arcp contract afn float %i.c, %i.e
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.g, align 16, !tbaa !31 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !33 ; 3 uses
  %i.k = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.h, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !33 ; 3 uses
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.m = load <2 x i32>, ptr %.val, align 4, !tbaa !32
  %i.n = uitofp reassoc nsz arcp contract afn <2 x i32> %i.m to <2 x float>
  %i.o = insertelement <2 x float> poison, float %i.f, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul reassoc nsz arcp contract afn <2 x float> %i.p, %i.n ; 3 uses
  %i.r = add i64 %i.a, -2                         ; 2 uses
  %i.s = lshr exact i64 %i.r, 1
  %i.t = add nuw i64 %i.s, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.t, -8                       ; 3 uses
  %i.u = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <4 x float> %i.k, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat23 = shufflevector <2 x float> %i.j, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat25 = shufflevector <2 x float> %i.j, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat27 = shufflevector <4 x float> %i.k, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat29 = shufflevector <2 x float> %i.q, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat31 = shufflevector <2 x float> %i.q, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 3
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.v, align 4, !tbaa !33 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec32 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %strided.vec
  %i.x = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat23, %strided.vec32
  %i.y = fsub reassoc nsz arcp contract afn <8 x float> %i.w, %i.x
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat27, %strided.vec32
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat25, %strided.vec
  %i.ab = fsub reassoc nsz arcp contract afn <8 x float> %i.z, %i.aa
  %i.ac = fadd reassoc nsz arcp contract afn <8 x float> %i.y, %broadcast.splat29
  %i.ad = fadd reassoc nsz arcp contract afn <8 x float> %i.ab, %broadcast.splat31
  %interleaved.vec = shufflevector <8 x float> %i.ac, <8 x float> %i.ad, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.v, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %.lr.ph ], [ %i.u, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret i32 1

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.019 = phi i64 [ %i.am, %scalar.ph ], [ %.019.ph, %scalar.ph.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.019 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.af, align 4, !tbaa !33 ; 2 uses
  %i.ah = fmul reassoc nsz arcp contract afn <2 x float> %i.l, %i.ag
  %i.ai = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aj = fmul reassoc nsz arcp contract afn <2 x float> %i.j, %i.ai
  %i.ak = fsub reassoc nsz arcp contract afn <2 x float> %i.ah, %i.aj
  %i.al = fadd reassoc nsz arcp contract afn <2 x float> %i.ak, %i.q
  store <2 x float> %i.al, ptr %i.af, align 4, !tbaa !33
  %i.am = add nuw i64 %.019, 2                    ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.a
  br i1 %i.an, label %scalar.ph, label %._crit_edge, !llvm.loop !48
}

; Function Attrs: nounwind uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !36
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !37
  %i.g = sext i32 %i.f to i64
  %i.h = mul i64 %i.d, %i.g
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.h, i1 false)
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.2, ptr noundef nonnull @__FUNCTION__.distort_mask, ptr noundef nonnull @.str.3) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @modify_roi_out(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !38
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load float, ptr %i.e, align 8, !tbaa !30
  %i.g = fdiv reassoc nsz arcp contract afn float %i.d, %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !41
  %i.j = uitofp reassoc nsz arcp contract afn i32 %i.i to float
  %i.k = fmul reassoc nsz arcp contract afn float %i.g, %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36
  %i.n = sitofp reassoc nsz arcp contract afn i32 %i.m to float
  %i.o = fsub reassoc nsz arcp contract afn float %i.n, %i.k
  %i.p = tail call ptr @dt_interpolation_new(i32 noundef 2) #19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !44
  %i.s = uitofp reassoc nsz arcp contract afn i64 %i.r to float
  %i.t = fmul reassoc nsz arcp contract afn float %i.g, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = insertelement <2 x float> poison, float %i.k, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.o, i64 1 ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn <2 x float> %i.w, %i.w
  %i.y = fmul reassoc nsz arcp contract afn <2 x float> %i.x, splat (float 2.000000e+00)
  %i.z = tail call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.y)
  %i.aa = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fsub reassoc nsz arcp contract afn <2 x float> %i.z, %i.ab
  %i.ad = fptosi <2 x float> %i.ac to <2 x i32>
  %i.ae = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ad, <2 x i32> zeroinitializer)
  %i.af = and <2 x i32> %i.ae, splat (i32 2147483646)
  store <2 x i32> %i.af, ptr %i.u, align 4, !tbaa !32
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare ptr @dt_interpolation_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !38
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load float, ptr %i.c, align 8, !tbaa !30
  %i.e = fdiv reassoc nsz arcp contract afn float %i.b, %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.h, align 16, !tbaa !31 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.m = load float, ptr %i.l, align 4, !tbaa !33
  %i.n = load <2 x i32>, ptr %.val, align 4, !tbaa !32
  %i.o = uitofp reassoc nsz arcp contract afn <2 x i32> %i.n to <2 x float>
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i32, ptr %i.f, align 4, !tbaa !49
  %i.s = load <2 x i32>, ptr %2, align 4, !tbaa !32 ; 2 uses
  %i.t = sitofp reassoc nsz arcp contract afn i32 %i.r to float
  %i.u = load <2 x i32>, ptr %i.g, align 4, !tbaa !32
  %i.v = add nsw <2 x i32> %i.u, %i.s             ; 2 uses
  %i.w = shufflevector <2 x i32> %i.s, <2 x i32> %i.v, <2 x i32> <i32 0, i32 3>
  %i.x = sitofp reassoc nsz arcp contract afn <2 x i32> %i.w to <2 x float> ; 3 uses
  %i.y = sitofp reassoc nsz arcp contract afn <2 x i32> %i.v to <2 x float> ; 3 uses
  %i.z = load <2 x float>, ptr %i.k, align 4, !tbaa !33 ; 3 uses
  %i.aa = insertelement <2 x float> poison, float %i.e, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul reassoc nsz arcp contract afn <2 x float> %i.ab, %i.o ; 4 uses
  %i.ad = insertelement <2 x float> poison, float %i.j, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.m, i64 1 ; 3 uses
  %i.af = insertelement <2 x float> %i.y, float %i.t, i64 1 ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn <2 x float> %i.ae, %i.af ; 2 uses
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ai = fmul reassoc nsz arcp contract afn <2 x float> %i.z, %i.ah ; 2 uses
  %i.aj = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.z, %i.aj ; 2 uses
  %i.al = fmul reassoc nsz arcp contract afn <2 x float> %i.ae, %i.x ; 2 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> %i.ag, <2 x i32> <i32 0, i32 3>
  %i.an = shufflevector <2 x float> %i.ai, <2 x float> %i.ak, <2 x i32> <i32 0, i32 3>
  %i.ao = fsub reassoc nsz arcp contract afn <2 x float> %i.am, %i.an
  %i.ap = fadd reassoc nsz arcp contract afn <2 x float> %i.ac, %i.ao ; 2 uses
  %i.aq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ap, <2 x float> splat (float f0x7F7FFFFF))
  %i.ar = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ap, <2 x float> splat (float f0xFF7FFFFF))
  %i.as = shufflevector <2 x float> %i.x, <2 x float> %i.y, <2 x i32> <i32 1, i32 2>
  %i.at = fmul reassoc nsz arcp contract afn <2 x float> %i.z, %i.as
  %i.au = fmul reassoc nsz arcp contract afn <2 x float> %i.ae, %i.y
  %i.av = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.ai
  %i.aw = fadd reassoc nsz arcp contract afn <2 x float> %i.ac, %i.av ; 2 uses
  %i.ax = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.aq, <2 x float> %i.aw)
  %i.ay = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ar, <2 x float> %i.aw)
  %i.az = fsub reassoc nsz arcp contract afn <2 x float> %i.al, %i.ak
  %i.ba = fadd reassoc nsz arcp contract afn <2 x float> %i.ac, %i.az ; 2 uses
  %i.bb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ax, <2 x float> %i.ba)
  %i.bc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ay, <2 x float> %i.ba)
  %i.bd = fsub reassoc nsz arcp contract afn <2 x float> %i.au, %i.at
  %i.be = fadd reassoc nsz arcp contract afn <2 x float> %i.ac, %i.bd ; 2 uses
  %i.bf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bb, <2 x float> %i.be)
  %i.bg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bc, <2 x float> %i.be)
  %i.bh = tail call ptr @dt_interpolation_new(i32 noundef 2) #19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !44
  %i.bk = uitofp reassoc nsz arcp contract afn i64 %i.bj to float
  %i.bl = fmul reassoc nsz arcp contract afn float %i.e, %i.bk
  %i.bm = load float, ptr %i.a, align 4, !tbaa !39
  %i.bn = load <2 x i32>, ptr %i.p, align 16, !tbaa !32
  %i.bo = sitofp reassoc nsz arcp contract afn <2 x i32> %i.bn to <2 x float>
  %i.bp = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul reassoc nsz arcp contract afn <2 x float> %i.bq, %i.bo ; 3 uses
  %i.bs = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bu = fsub reassoc nsz arcp contract afn <2 x float> %i.bf, %i.bt
  %i.bv = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bu, <2 x float> zeroinitializer)
  %i.bw = fptosi <2 x float> %i.bv to <2 x i32>   ; 2 uses
  %i.bx = uitofp nsz nneg <2 x i32> %i.bw to <2 x float> ; 2 uses
  %i.by = fsub reassoc nsz arcp contract afn <2 x float> %i.br, %i.bx
  %i.bz = fadd reassoc nsz arcp contract afn <2 x float> %i.bt, %i.bg
  %i.ca = fsub reassoc nsz arcp contract afn <2 x float> %i.bz, %i.bx
  %i.cb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.by, <2 x float> %i.ca)
  %i.cc = fptosi <2 x float> %i.cb to <2 x i32>   ; 2 uses
  %i.cd = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.br)
  %i.ce = fptosi <2 x float> %i.cd to <2 x i32>
  %i.cf = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bw, <2 x i32> %i.ce) ; 2 uses
  store <2 x i32> %i.cf, ptr %3, align 4, !tbaa !32
  %i.cg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.br)
  %i.ch = fptosi <2 x float> %i.cg to <2 x i32>
  %i.ci = sub nsw <2 x i32> %i.ch, %i.cf          ; 2 uses
  %i.cj = icmp slt <2 x i32> %i.ci, %i.cc
  %i.ck = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cc, <2 x i32> splat (i32 1))
  %i.cl = select <2 x i1> %i.cj, <2 x i32> %i.ci, <2 x i32> %i.ck
  store <2 x i32> %i.cl, ptr %i.q, align 4, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !51   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load float, ptr %i.h, align 8, !tbaa !30
  %i.j = fdiv reassoc nsz arcp contract afn float %i.g, %i.i
  %i.k = tail call ptr @dt_interpolation_new(i32 noundef 2) #19
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph45, label %._crit_edge46

.lr.ph45:                                         ; preds = %bb.a
  %i.o = sext i32 %i.b to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.p, align 4, !tbaa !36   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph45.split.preheader, label %._crit_edge46

.lr.ph45.split.preheader:                         ; preds = %.lr.ph45
  %i.u = insertelement <2 x float> poison, float %i.j, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph45.split

._crit_edge46:                                    ; preds = %._crit_edge, %.lr.ph45, %bb.a
  ret void

.lr.ph45.split:                                   ; preds = %.lr.ph45.split.preheader, %._crit_edge
  %i.w = phi i32 [ %i.af, %._crit_edge ], [ %i.m, %.lr.ph45.split.preheader ]
  %i.x = phi i32 [ %i.ag, %._crit_edge ], [ %i.s, %.lr.ph45.split.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph45.split.preheader ] ; 3 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph45.split
  %i.z = mul nsw i64 %indvars.iv, %i.o
  %i.aa = zext nneg i32 %i.x to i64
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ab
  %i.ad = trunc nsw i64 %indvars.iv to i32
  %i.ae = insertelement <2 x i32> poison, i32 %i.ad, i64 1
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.l, align 4, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph45.split
  %i.af = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.w, %.lr.ph45.split ] ; 2 uses
  %i.ag = phi i32 [ %i.bi, %._crit_edge.loopexit ], [ %i.x, %.lr.ph45.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = sext i32 %i.af to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %.lr.ph45.split, label %._crit_edge46, !llvm.loop !50

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.042 = phi i32 [ %i.bg, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03041 = phi ptr [ %i.bh, %.lr.ph ], [ %i.ac, %.lr.ph.preheader ] ; 2 uses
  %.val = load ptr, ptr %i.q, align 16, !tbaa !31 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.al = load <2 x i32>, ptr %.val, align 4, !tbaa !32
  %i.am = uitofp reassoc nsz arcp contract afn <2 x i32> %i.al to <2 x float>
  %i.an = fmul reassoc nsz arcp contract afn <2 x float> %i.v, %i.am ; 2 uses
  %i.ao = load <2 x i32>, ptr %5, align 4, !tbaa !32
  %i.ap = insertelement <2 x i32> %i.ae, i32 %.042, i64 0
  %i.aq = add nsw <2 x i32> %i.ao, %i.ap
  %i.ar = sitofp reassoc nsz arcp contract afn <2 x i32> %i.aq to <2 x float> ; 2 uses
  %i.as = load <2 x float>, ptr %i.aj, align 4, !tbaa !33
  %i.at = fmul reassoc nsz arcp contract afn <2 x float> %i.as, %i.ar
  %i.au = load <2 x i32>, ptr %4, align 4, !tbaa !32
  %i.av = sitofp reassoc nsz arcp contract afn <2 x i32> %i.au to <2 x float> ; 2 uses
  %i.aw = shufflevector <2 x float> %i.an, <2 x float> %i.av, <2 x i32> <i32 0, i32 2>
  %i.ax = fadd reassoc nsz arcp contract afn <2 x float> %i.at, %i.aw ; 2 uses
  %shift = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.ax, %shift
  %i.ay = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.az = load <2 x float>, ptr %i.ak, align 4, !tbaa !33
  %i.ba = fmul reassoc nsz arcp contract afn <2 x float> %i.az, %i.ar
  %i.bb = shufflevector <2 x float> %i.av, <2 x float> %i.an, <2 x i32> <i32 1, i32 3>
  %i.bc = fadd reassoc nsz arcp contract afn <2 x float> %i.ba, %i.bb ; 2 uses
  %shift53 = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop54 = fsub reassoc nsz arcp contract afn <2 x float> %shift53, %i.bc
  %i.bd = extractelement <2 x float> %foldExtExtBinop54, i64 0
  %i.be = load i32, ptr %i.c, align 4, !tbaa !36
  %i.bf = load i32, ptr %i.r, align 4, !tbaa !37
  tail call void @dt_interpolation_compute_pixel4c(ptr noundef %i.k, ptr noundef %2, ptr noundef %.03041, float noundef %i.ay, float noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bf, i32 noundef %i.e) #19
  %i.bg = add nuw nsw i32 %.042, 1                ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %.03041, i64 %i.o
  %i.bi = load i32, ptr %i.p, align 4, !tbaa !36  ; 2 uses
  %i.bj = icmp slt i32 %i.bg, %i.bi
  br i1 %i.bj, label %.lr.ph, label %._crit_edge.loopexit
}

declare void @dt_interpolation_compute_pixel4c(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !31  ; 6 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !54     ; 2 uses
  store i32 %i.c, ptr %i.b, align 4, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !56   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !57
  %i.i = fmul reassoc nsz arcp contract afn float %i.h, f0x3C8EFA36
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.i) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %i.j = fneg reassoc nsz arcp contract afn float %sin
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %cos, ptr %i.k, align 4, !tbaa !33
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %sin, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !33
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %i.j, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !33
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %cos, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !33
  %i.l = icmp eq i32 %i.c, 0
  %i.m = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.n, align 16, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #20
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !31
  tail call void @free(ptr noundef %i.b) #19
  store ptr null, ptr %i.a, align 16, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @reload_defaults(ptr nofree noundef captures(none) initializes((676, 680)) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !70  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1864
  %i.f = load i32, ptr %i.e, align 8, !tbaa !79   ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !32
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.f, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !32
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float -4.500000e+01, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !33
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 676
  store i32 %i.h, ptr %i.i, align 4, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !83
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !84
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !84
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !84
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !84
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !84
  store ptr @introspection_init.f3, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 336), align 16, !tbaa !84
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
sub_0:
  %i.a = load i8, ptr %1, align 1
  %.not15 = icmp eq i8 %i.a, 114
  br i1 %.not15, label %sub_1, label %.tail10.thread

sub_1:                                            ; preds = %sub_0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %.not16 = icmp eq i8 %i.c, 120
  br i1 %.not16, label %.tail, label %sub_112

.tail:                                            ; preds = %sub_1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %sub_112

sub_112:                                          ; preds = %.tail, %sub_1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %.not18 = icmp eq i8 %i.h, 121
  br i1 %.not18, label %.tail10, label %.tail10.thread

.tail10:                                          ; preds = %sub_112
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.a, label %.tail10.thread

bb.a:                                             ; preds = %.tail10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

.tail10.thread:                                   ; preds = %sub_0, %sub_112, %.tail10
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.6) #21
  %.not9 = icmp eq i32 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %.not9, ptr %i.n, ptr null
  br label %bb.b

bb.b:                                             ; preds = %.tail10.thread, %.tail, %bb.a
  %.0 = phi ptr [ %0, %.tail ], [ %spec.select, %.tail10.thread ], [ %i.l, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.4) #19
  %.not = icmp eq i32 %i.a, 0
end_hunk_0
