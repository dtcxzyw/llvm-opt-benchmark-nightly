Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_scalepixels?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dt_introspection_t = type { i32, i32, ptr, i64, ptr, i64, i64 }
%struct.dt_iop_roi_t = type { i32, i32, i32, i32, float }

@.str = private unnamed_addr constant [24 x i8] c"modulename\04scale pixels\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"module for setting pixel aspect ratio\0A\0Auseful for certain sensor types\0Aand anamorphic desqueeze\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"corrective\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"linear, RGB, scene-referred\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"linear, RGB\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"pixel_aspect_ratio\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"adjust pixel aspect ratio\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 1, ptr @.str.9, i64 4, ptr getelementptr (i8, ptr @introspection_linear, i64 88), i64 1120, i64 688 }, align 8
@introspection_init.f1 = internal global [2 x ptr] [ptr @introspection_linear, ptr null], align 16
@.str.7 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"pixel aspect ratio\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"dt_iop_scalepixels_params_t\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.7, ptr @.str.5, ptr @.str.5, ptr @.str.8, i64 4, i64 0, ptr null }, float 5.000000e-01, float 2.000000e+00, float 1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.9, ptr @.str.10, ptr @.str.10, ptr @.str.10, i64 4, i64 0, ptr null }, i64 1, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

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
  %i.a = tail call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str, i64 noundef 11) #16
  ret ptr %i.a
}

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 8400
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
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #16
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #16
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #16
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #16
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #16
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #16
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef i32 @distort_transform(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.dt_iop_roi_t, align 4       ; 4 uses
  %5 = alloca %struct.dt_iop_roi_t, align 4       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load <2 x i32>, ptr %i.a, align 8, !tbaa !12
  store <2 x i32> %i.c, ptr %i.b, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  call void %i.e(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #16, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.f = shl i64 %3, 1                            ; 4 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !43  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = add i64 %i.f, -1                         ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = add nuw i64 %i.l, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.n = shl i64 %i.k, 2
  %6 = and i64 %i.n, -8
  %7 = getelementptr i8, ptr %2, i64 %6
  %scevgep = getelementptr i8, ptr %7, i64 8
  %scevgep12 = getelementptr i8, ptr %i.h, i64 12
  %bound0 = icmp ult ptr %2, %scevgep12
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, -8                       ; 3 uses
  %i.o = shl i64 %n.vec, 1
  %i.p = load float, ptr %i.i, align 4, !tbaa !45, !alias.scope !60
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.p, i64 0
  %i.q = load float, ptr %i.j, align 4, !tbaa !46, !alias.scope !60
  %broadcast.splatinsert14 = insertelement <8 x float> poison, float %i.q, i64 0
  %i.r = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert14, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %i.s = fdiv reassoc nsz arcp contract afn <16 x float> splat (float 1.000000e+00), %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 3
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.t, align 4, !tbaa !47, !alias.scope !61, !noalias !60
  %i.u = fmul reassoc nsz arcp contract afn <16 x float> %wide.vec, %i.s
  store <16 x float> %i.u, ptr %i.t, align 4, !tbaa !47, !alias.scope !61, !noalias !60
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.o, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret i32 1

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.ae, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 2 uses
  %i.w = load float, ptr %i.i, align 4, !tbaa !45
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.011 ; 3 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !47
  %i.z = fdiv reassoc nsz arcp contract afn float %i.y, %i.w
  store float %i.z, ptr %i.x, align 4, !tbaa !47
  %i.aa = load float, ptr %i.j, align 4, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !47
  %i.ad = fdiv reassoc nsz arcp contract afn float %i.ac, %i.aa
  store float %i.ad, ptr %i.ab, align 4, !tbaa !47
  %i.ae = add nuw i64 %.011, 2                    ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.f
  br i1 %i.af, label %scalar.ph, label %._crit_edge, !llvm.loop !59
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define noundef i32 @distort_backtransform(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.dt_iop_roi_t, align 4       ; 4 uses
  %5 = alloca %struct.dt_iop_roi_t, align 4       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load <2 x i32>, ptr %i.a, align 8, !tbaa !12
  store <2 x i32> %i.c, ptr %i.b, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  call void %i.e(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #16, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.f = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !43  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = add i64 %i.f, -2                         ; 3 uses
  %i.l = lshr exact i64 %i.k, 1
  %i.m = add nuw i64 %i.l, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.k, 6
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.n = shl i64 %3, 3
  %scevgep = getelementptr i8, ptr %2, i64 %i.n
  %scevgep12 = getelementptr i8, ptr %i.h, i64 12
  %bound0 = icmp ult ptr %2, %scevgep12
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %i.k, 30
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.m, 12
  %n.vec = and i64 %i.m, -16                      ; 4 uses
  %i.p = shl i64 %n.vec, 1
  %i.q = load float, ptr %i.i, align 4, !tbaa !45, !alias.scope !68
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.r = load float, ptr %i.j, align 4, !tbaa !46, !alias.scope !68
  %broadcast.splatinsert18 = insertelement <8 x float> poison, float %i.r, i64 0
  %broadcast.splat19 = shufflevector <8 x float> %broadcast.splatinsert18, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl nuw i64 %index, 1                    ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.t, align 4, !tbaa !47, !alias.scope !69, !noalias !68 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec14 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec15 = load <16 x float>, ptr %i.v, align 4, !tbaa !47, !alias.scope !69, !noalias !68 ; 2 uses
  %strided.vec16 = shufflevector <16 x float> %wide.vec15, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec17 = shufflevector <16 x float> %wide.vec15, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.x = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec16, %broadcast.splat
  %i.y = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec14, %broadcast.splat19
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec17, %broadcast.splat19
  %interleaved.vec = shufflevector <8 x float> %i.w, <8 x float> %i.y, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.t, align 4, !tbaa !47, !alias.scope !69, !noalias !68
  %interleaved.vec20 = shufflevector <8 x float> %i.x, <8 x float> %i.z, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec20, ptr %i.v, align 4, !tbaa !47, !alias.scope !69, !noalias !68
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.m, -4                     ; 3 uses
  %i.ab = shl i64 %n.vec21, 1
  %i.ac = load float, ptr %i.i, align 4, !tbaa !45, !alias.scope !68
  %broadcast.splatinsert26 = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.ad = load float, ptr %i.j, align 4, !tbaa !46, !alias.scope !68
  %broadcast.splatinsert28 = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.ae = shufflevector <4 x float> %broadcast.splatinsert26, <4 x float> %broadcast.splatinsert28, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index22, 3
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec23 = load <8 x float>, ptr %i.af, align 4, !tbaa !47, !alias.scope !69, !noalias !68
  %interleaved.vec30 = fmul reassoc nsz arcp contract afn <8 x float> %wide.vec23, %i.ae
  store <8 x float> %interleaved.vec30, ptr %i.af, align 4, !tbaa !47, !alias.scope !69, !noalias !68
  %index.next31 = add nuw i64 %index22, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next31, %n.vec21
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %i.m, %n.vec21
  br i1 %cmp.n32, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret i32 1

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.011 = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.011.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ah = load float, ptr %i.i, align 4, !tbaa !45
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.011 ; 3 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !47
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.ah
  store float %i.ak, ptr %i.ai, align 4, !tbaa !47
  %i.al = load float, ptr %i.j, align 4, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !47
  %i.ao = fmul reassoc nsz arcp contract afn float %i.an, %i.al
  store float %i.ao, ptr %i.am, align 4, !tbaa !47
  %i.ap = add nuw i64 %.011, 2                    ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.f
  br i1 %i.aq, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !67
}

end_hunk_0
