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
  %i.k = uitofp <2 x i32> %i.j to <2 x float>
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
  %i.n = uitofp <2 x i32> %i.m to <2 x float>
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
  %i.o = uitofp <2 x i32> %i.n to <2 x float>
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i32, ptr %i.f, align 4, !tbaa !49
  %i.s = load <2 x i32>, ptr %2, align 4, !tbaa !32 ; 2 uses
  %i.t = sitofp reassoc nsz arcp contract afn i32 %i.r to float
  %i.u = load <2 x i32>, ptr %i.g, align 4, !tbaa !32
  %i.v = add nsw <2 x i32> %i.u, %i.s             ; 2 uses
  %i.w = shufflevector <2 x i32> %i.s, <2 x i32> %i.v, <2 x i32> <i32 0, i32 3>
  %i.x = sitofp <2 x i32> %i.w to <2 x float>     ; 4 uses
  %i.y = sitofp <2 x i32> %i.v to <2 x float>     ; 3 uses
  %i.z = load <2 x float>, ptr %i.k, align 4, !tbaa !33 ; 4 uses
  %i.aa = insertelement <2 x float> poison, float %i.e, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul reassoc nsz arcp contract afn <2 x float> %i.ab, %i.o ; 4 uses
  %i.ad = insertelement <2 x float> poison, float %i.j, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.m, i64 1 ; 3 uses
  %i.af = insertelement <2 x float> %i.y, float %i.t, i64 1 ; 3 uses
  %i.ag = fmul reassoc nsz arcp contract afn <2 x float> %i.ae, %i.af ; 2 uses
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ai = fmul reassoc nsz arcp contract afn <2 x float> %i.z, %i.ah
  %i.aj = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.z, %i.aj
  %i.al = fmul reassoc nsz arcp contract afn <2 x float> %i.ae, %i.x ; 2 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> %i.ag, <2 x i32> <i32 0, i32 3>
  %i.an = shufflevector <2 x float> %i.af, <2 x float> %i.x, <2 x i32> <i32 1, i32 2>
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.z, %i.an
  %i.ap = fsub reassoc nsz arcp contract afn <2 x float> %i.am, %i.ao
  %i.aq = fadd reassoc nsz arcp contract afn <2 x float> %i.ac, %i.ap ; 2 uses
  %i.ar = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.aq, <2 x float> splat (float f0x7F7FFFFF))
  %i.as = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.aq, <2 x float> splat (float f0xFF7FFFFF))
  %i.at = shufflevector <2 x float> %i.x, <2 x float> %i.y, <2 x i32> <i32 1, i32 2>
  %i.au = fmul reassoc nsz arcp contract afn <2 x float> %i.z, %i.at
  %i.av = fmul reassoc nsz arcp contract afn <2 x float> %i.ae, %i.y
  %i.aw = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.ai
  %i.ax = fadd reassoc nsz arcp contract afn <2 x float> %i.ac, %i.aw ; 2 uses
  %i.ay = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ar, <2 x float> %i.ax)
  %i.az = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.as, <2 x float> %i.ax)
  %i.ba = fsub reassoc nsz arcp contract afn <2 x float> %i.al, %i.ak
  %i.bb = fadd reassoc nsz arcp contract afn <2 x float> %i.ac, %i.ba ; 2 uses
  %i.bc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ay, <2 x float> %i.bb)
  %i.bd = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.az, <2 x float> %i.bb)
  %i.be = fsub reassoc nsz arcp contract afn <2 x float> %i.av, %i.au
  %i.bf = fadd reassoc nsz arcp contract afn <2 x float> %i.ac, %i.be ; 2 uses
  %i.bg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bc, <2 x float> %i.bf)
  %i.bh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bd, <2 x float> %i.bf)
  %i.bi = tail call ptr @dt_interpolation_new(i32 noundef 2) #19
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !44
  %i.bl = uitofp reassoc nsz arcp contract afn i64 %i.bk to float
  %i.bm = fmul reassoc nsz arcp contract afn float %i.e, %i.bl
  %i.bn = load float, ptr %i.a, align 4, !tbaa !39
  %i.bo = load <2 x i32>, ptr %i.p, align 16, !tbaa !32
  %i.bp = sitofp <2 x i32> %i.bo to <2 x float>
  %i.bq = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul reassoc nsz arcp contract afn <2 x float> %i.br, %i.bp ; 3 uses
  %i.bt = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bv = fsub reassoc nsz arcp contract afn <2 x float> %i.bg, %i.bu
  %i.bw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bv, <2 x float> zeroinitializer)
  %i.bx = fptosi <2 x float> %i.bw to <2 x i32>   ; 2 uses
  %i.by = uitofp nneg <2 x i32> %i.bx to <2 x float> ; 2 uses
  %i.bz = fsub reassoc nsz arcp contract afn <2 x float> %i.bs, %i.by
  %i.ca = fadd reassoc nsz arcp contract afn <2 x float> %i.bu, %i.bh
  %i.cb = fsub reassoc nsz arcp contract afn <2 x float> %i.ca, %i.by
  %i.cc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bz, <2 x float> %i.cb)
  %i.cd = fptosi <2 x float> %i.cc to <2 x i32>   ; 2 uses
  %i.ce = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.bs)
  %i.cf = fptosi <2 x float> %i.ce to <2 x i32>
  %i.cg = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bx, <2 x i32> %i.cf) ; 2 uses
  store <2 x i32> %i.cg, ptr %3, align 4, !tbaa !32
  %i.ch = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.bs)
  %i.ci = fptosi <2 x float> %i.ch to <2 x i32>
  %i.cj = sub nsw <2 x i32> %i.ci, %i.cg          ; 2 uses
  %i.ck = icmp slt <2 x i32> %i.cj, %i.cd
  %i.cl = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cd, <2 x i32> splat (i32 1))
  %i.cm = select <2 x i1> %i.ck, <2 x i32> %i.cj, <2 x i32> %i.cl
  store <2 x i32> %i.cm, ptr %i.q, align 4, !tbaa !32
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
  %6 = insertelement <2 x float> poison, float %i.j, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph45.split

._crit_edge46:                                    ; preds = %._crit_edge, %.lr.ph45, %bb.a
  ret void

.lr.ph45.split:                                   ; preds = %.lr.ph45.split.preheader, %._crit_edge
  %i.u = phi i32 [ %i.ad, %._crit_edge ], [ %i.m, %.lr.ph45.split.preheader ]
  %i.v = phi i32 [ %i.ae, %._crit_edge ], [ %i.s, %.lr.ph45.split.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph45.split.preheader ] ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph45.split
  %i.x = mul nsw i64 %indvars.iv, %i.o
  %i.y = zext nneg i32 %i.v to i64
  %i.z = mul i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.z
  %i.ab = trunc nsw i64 %indvars.iv to i32
  %i.ac = insertelement <2 x i32> poison, i32 %i.ab, i64 1
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.l, align 4, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph45.split
  %i.ad = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.u, %.lr.ph45.split ] ; 2 uses
  %i.ae = phi i32 [ %i.bc, %._crit_edge.loopexit ], [ %i.v, %.lr.ph45.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = sext i32 %i.ad to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %.lr.ph45.split, label %._crit_edge46, !llvm.loop !50

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.042 = phi i32 [ %i.ba, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03041 = phi ptr [ %i.bb, %.lr.ph ], [ %i.aa, %.lr.ph.preheader ] ; 2 uses
  %.val = load ptr, ptr %i.q, align 16, !tbaa !31 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %8 = load <2 x i32>, ptr %.val, align 4, !tbaa !32
  %9 = uitofp <2 x i32> %8 to <2 x float>
  %10 = fmul reassoc nsz arcp contract afn <2 x float> %7, %9 ; 2 uses
  %i.aj = load <2 x i32>, ptr %5, align 4, !tbaa !32
  %i.ak = insertelement <2 x i32> %i.ac, i32 %.042, i64 0
  %i.al = add nsw <2 x i32> %i.aj, %i.ak
  %i.am = sitofp <2 x i32> %i.al to <2 x float>   ; 2 uses
  %i.an = load <2 x float>, ptr %i.ah, align 4, !tbaa !33
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.an, %i.am
  %i.ap = load <2 x i32>, ptr %4, align 4, !tbaa !32
  %i.aq = sitofp <2 x i32> %i.ap to <2 x float>   ; 2 uses
  %i.ar = shufflevector <2 x float> %10, <2 x float> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.as = fadd reassoc nsz arcp contract afn <2 x float> %i.ao, %i.ar ; 2 uses
  %shift = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.as, %shift
  %i.at = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.au = load <2 x float>, ptr %i.ai, align 4, !tbaa !33
  %i.av = fmul reassoc nsz arcp contract afn <2 x float> %i.au, %i.am
  %11 = shufflevector <2 x float> %i.aq, <2 x float> %10, <2 x i32> <i32 1, i32 3>
  %i.aw = fadd reassoc nsz arcp contract afn <2 x float> %i.av, %11 ; 2 uses
  %shift53 = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop54 = fsub reassoc nsz arcp contract afn <2 x float> %shift53, %i.aw
  %i.ax = extractelement <2 x float> %foldExtExtBinop54, i64 0
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !36
  %i.az = load i32, ptr %i.r, align 4, !tbaa !37
  tail call void @dt_interpolation_compute_pixel4c(ptr noundef %i.k, ptr noundef %2, ptr noundef %.03041, float noundef %i.at, float noundef %i.ax, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.e) #19
  %i.ba = add nuw nsw i32 %.042, 1                ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %.03041, i64 %i.o
  %i.bc = load i32, ptr %i.p, align 4, !tbaa !36  ; 2 uses
  %i.bd = icmp slt i32 %i.ba, %i.bc
  br i1 %i.bd, label %.lr.ph, label %._crit_edge.loopexit
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
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.5) #19
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.6) #19
  %.not5 = icmp eq i32 %i.c, 0
  %. = select i1 %.not5, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ %., %bb.c ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!13 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!14 = !{!"p1 _ZTS18dt_histogram_roi_t", !11, i64 0}
!15 = !{!"dt_dev_histogram_collection_params_t", !14, i64 0, !8, i64 8}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 20}
!19 = !{!"float", !7, i64 0}
!20 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !19, i64 16}
!21 = !{!"short", !7, i64 0}
!22 = !{!"", !21, i64 0, !21, i64 2}
!23 = !{!"", !8, i64 0, !7, i64 16}
!24 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !22, i64 48, !23, i64 64, !7, i64 96, !8, i64 112}
!25 = !{!"p1 _ZTS11_GHashTable", !11, i64 0}
!26 = !{!"p1 float", !11, i64 0}
!27 = !{!"dt_dev_distorted_mask_cache_t", !26, i64 0, !20, i64 8, !17, i64 32, !17, i64 40}
!28 = !{!"dt_dev_pixelpipe_iop_t", !12, i64 0, !13, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !15, i64 40, !16, i64 56, !18, i64 64, !7, i64 88, !19, i64 104, !8, i64 108, !8, i64 112, !17, i64 120, !8, i64 128, !8, i64 132, !20, i64 136, !20, i64 156, !20, i64 176, !20, i64 196, !8, i64 216, !8, i64 220, !24, i64 224, !24, i64 352, !7, i64 480, !8, i64 516, !25, i64 520, !27, i64 528, !27, i64 576}
!29 = !{!28, !19, i64 152}
!30 = !{!28, !19, i64 104}
!31 = !{!28, !11, i64 16}
!32 = !{!8, !8, i64 0}
!33 = !{!19, !19, i64 0}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!20, !8, i64 8}
!37 = !{!20, !8, i64 12}
!38 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 4, !32, i64 12, i64 4, !32, i64 16, i64 4, !33}
!39 = !{!20, !19, i64 16}
!40 = !{!"dt_iop_rotatepixels_data_t", !8, i64 0, !8, i64 4, !7, i64 8}
!41 = !{!40, !8, i64 4}
!42 = !{!"p1 omnipotent char", !11, i64 0}
!43 = !{!"dt_interpolation_t", !8, i64 0, !42, i64 8, !17, i64 16, !11, i64 24}
!44 = !{!43, !17, i64 16}
!45 = distinct !{!45, !34, !35}
!46 = distinct !{!46, !35, !34}
!47 = distinct !{!47, !34, !35}
!48 = distinct !{!48, !35, !34}
!49 = !{!20, !8, i64 4}
!50 = distinct !{!50, !52}
!51 = !{!28, !8, i64 132}
!52 = !{!"llvm.loop.unswitch.partial.disable"}
!53 = !{!"dt_iop_rotatepixels_params_t", !8, i64 0, !8, i64 4, !19, i64 8}
!54 = !{!53, !8, i64 0}
!55 = !{!40, !8, i64 0}
!56 = !{!53, !8, i64 4}
!57 = !{!53, !19, i64 8}
!58 = !{!28, !8, i64 32}
!59 = !{!"p1 _ZTS8_GModule", !11, i64 0}
!60 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!61 = !{!"dt_pthread_mutex_t", !7, i64 0}
!62 = !{!"p1 _ZTS25dt_develop_blend_params_t", !11, i64 0}
!63 = !{!"", !25, i64 0, !25, i64 8}
!64 = !{!"", !12, i64 0, !8, i64 8}
!65 = !{!"", !63, i64 0, !64, i64 16}
!66 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!67 = !{!"p1 _ZTS7_GSList", !11, i64 0}
!68 = !{!"p1 _ZTS18dt_iop_module_so_t", !11, i64 0}
!69 = !{!"dt_iop_module_t", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !59, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !16, i64 608, !18, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !60, i64 664, !8, i64 672, !8, i64 676, !11, i64 680, !11, i64 688, !8, i64 696, !11, i64 704, !61, i64 712, !11, i64 752, !11, i64 760, !62, i64 768, !62, i64 776, !11, i64 784, !65, i64 792, !66, i64 824, !66, i64 832, !66, i64 840, !66, i64 848, !66, i64 856, !66, i64 864, !66, i64 872, !8, i64 880, !66, i64 888, !66, i64 896, !66, i64 904, !67, i64 912, !67, i64 920, !66, i64 928, !66, i64 936, !8, i64 944, !68, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !66, i64 1096, !11, i64 1104, !8, i64 1112}
!70 = !{!69, !11, i64 688}
!71 = !{!69, !60, i64 664}
!72 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!73 = !{!"double", !7, i64 0}
!74 = !{!"dt_image_geoloc_t", !73, i64 0, !73, i64 8, !73, i64 16}
!75 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!76 = !{!"p1 _ZTS6_GList", !11, i64 0}
!77 = !{!"p1 _ZTS16dt_cache_entry_t", !11, i64 0}
!78 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !17, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !19, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !17, i64 1448, !17, i64 1456, !17, i64 1464, !17, i64 1472, !8, i64 1480, !24, i64 1488, !7, i64 1616, !42, i64 1656, !8, i64 1664, !8, i64 1668, !72, i64 1672, !74, i64 1680, !75, i64 1704, !21, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !19, i64 1756, !19, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !76, i64 1856, !77, i64 1864, !8, i64 1872, !8, i64 1876}
!79 = !{!78, !8, i64 1752}
!80 = !{!69, !8, i64 676}
!81 = !{!"p1 _ZTS24dt_introspection_field_t", !11, i64 0}
!82 = !{!"dt_introspection_t", !8, i64 0, !8, i64 4, !42, i64 8, !17, i64 16, !81, i64 24, !17, i64 32, !17, i64 40}
!83 = !{!82, !8, i64 0}
!84 = !{!7, !7, i64 0}
end_hunk_0
