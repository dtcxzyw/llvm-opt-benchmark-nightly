Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/GravityForceKernel?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@PolyCoefficients4 = dso_local local_unnamed_addr constant [5 x float] [float 2.637290e-01, float -6.862850e-02, float 8.822480e-03, float -5.924870e-04, float 1.646220e-05], align 16
@PolyCoefficients5 = dso_local local_unnamed_addr constant [6 x float] [float 2.693270e-01, float f0xBD99CCE0, float 1.148080e-02, float -1.093130e-03, float 6.054910e-05, float -1.471770e-06], align 16
@PolyCoefficients6 = dso_local local_unnamed_addr constant [7 x float] [float 2.714310e-01, float f0xBDA07068, float 1.331220e-02, float -1.594850e-03, float 1.323360e-04, float -6.633940e-06, float 1.473050e-07], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_(i32 noundef %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, float noundef nofpclass(nan inf) %5, float noundef nofpclass(nan inf) %6, float noundef nofpclass(nan inf) %7, float noundef nofpclass(nan inf) %8, float noundef nofpclass(nan inf) %9, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %10, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %11, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %12) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader.i, label %_ZL18GravityForceKernelILi4ETnRAplT_Li1E_KfL_Z17PolyCoefficients4EEviPfS3_S3_S3_fffffRfS4_S4_.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %0 to i64
  %13 = insertelement <2 x float> poison, float %6, i64 0
  %14 = insertelement <2 x float> %13, float %7, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 5 uses
  %.05159.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %.152.i, %bb.c ] ; 2 uses
  %15 = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i ], [ %28, %bb.c ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.c = load float, ptr %i.b, align 4, !tbaa !9, !alias.scope !20, !noalias !27
  %i.d = fsub fast float %i.c, %5                 ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.f = load float, ptr %i.e, align 4, !tbaa !9, !alias.scope !21, !noalias !28
  %16 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  %17 = load float, ptr %16, align 4, !tbaa !9, !alias.scope !22, !noalias !29
  %18 = insertelement <2 x float> poison, float %i.f, i64 0
  %19 = insertelement <2 x float> %18, float %17, i64 1
  %20 = fsub fast <2 x float> %19, %14            ; 3 uses
  %i.g = fmul fast float %i.d, %i.d
  %21 = fmul fast <2 x float> %20, %20            ; 2 uses
  %22 = extractelement <2 x float> %21, i64 0
  %i.h = fadd fast float %22, %i.g
  %23 = extractelement <2 x float> %21, i64 1
  %i.i = fadd fast float %i.h, %23                ; 7 uses
  %i.j = fcmp fast oge float %i.i, %8
  %i.k = fcmp fast oeq float %i.i, 0.000000e+00
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = fmul fast float %i.i, 1.646220e-05
  %i.m = fadd fast float %i.l, -5.924870e-04
  %i.n = fmul fast float %i.m, %i.i
  %i.o = fadd fast float %i.n, 8.822480e-03
  %i.p = fmul fast float %i.o, %i.i
  %i.q = fadd fast float %i.p, -6.862850e-02
  %i.r = fadd fast float %i.i, %9                 ; 2 uses
  %i.s = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.r)
  %i.t = fmul fast float %i.s, %i.r
  %i.u = fdiv fast float 1.000000e+00, %i.t
  %.neg12 = fadd fast float %i.u, -2.637290e-01
  %i.v = fmul fast float %i.i, %i.q
  %i.w = fsub fast float %.neg12, %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i
  %i.y = load float, ptr %i.x, align 4, !tbaa !9, !alias.scope !23, !noalias !30
  %i.z = fmul fast float %i.y, %i.w               ; 2 uses
  %i.aa = fmul fast float %i.z, %i.d
  %i.ab = fadd fast float %i.aa, %.05159.i
  %24 = insertelement <2 x float> poison, float %i.z, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = fmul fast <2 x float> %25, %20
  %27 = fadd fast <2 x float> %26, %15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.152.i = phi nsz float [ %i.ab, %bb.b ], [ %.05159.i, %.lr.ph.i ] ; 2 uses
  %28 = phi <2 x float> [ %27, %bb.b ], [ %15, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL18GravityForceKernelILi4ETnRAplT_Li1E_KfL_Z17PolyCoefficients4EEviPfS3_S3_S3_fffffRfS4_S4_.exit, label %.lr.ph.i, !llvm.loop !19

_ZL18GravityForceKernelILi4ETnRAplT_Li1E_KfL_Z17PolyCoefficients4EEviPfS3_S3_S3_fffffRfS4_S4_.exit: ; preds = %bb.c, %bb.a
  %.051.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %.152.i, %bb.c ]
  %29 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %28, %bb.c ]
  %i.ac = load float, ptr %10, align 4, !tbaa !9, !alias.scope !24, !noalias !31
  %i.ad = fadd fast float %i.ac, %.051.lcssa.i
  store float %i.ad, ptr %10, align 4, !tbaa !9, !alias.scope !24, !noalias !31
  %i.ae = load float, ptr %11, align 4, !tbaa !9, !alias.scope !25, !noalias !32
  %30 = load float, ptr %12, align 4, !tbaa !9, !alias.scope !26, !noalias !33
  %31 = insertelement <2 x float> poison, float %i.ae, i64 0
  %32 = insertelement <2 x float> %31, float %30, i64 1
  %33 = fadd fast <2 x float> %32, %29            ; 2 uses
  %34 = extractelement <2 x float> %33, i64 0
  store float %34, ptr %11, align 4, !tbaa !9, !alias.scope !25, !noalias !32
  %35 = extractelement <2 x float> %33, i64 1
  store float %35, ptr %12, align 4, !tbaa !9, !alias.scope !26, !noalias !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_(i32 noundef %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, float noundef nofpclass(nan inf) %5, float noundef nofpclass(nan inf) %6, float noundef nofpclass(nan inf) %7, float noundef nofpclass(nan inf) %8, float noundef nofpclass(nan inf) %9, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %10, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %11, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %12) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader.i, label %_ZL18GravityForceKernelILi5ETnRAplT_Li1E_KfL_Z17PolyCoefficients5EEviPfS3_S3_S3_fffffRfS4_S4_.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %0 to i64
  %13 = insertelement <2 x float> poison, float %6, i64 0
  %14 = insertelement <2 x float> %13, float %7, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 5 uses
  %.05159.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %.152.i, %bb.c ] ; 2 uses
  %15 = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i ], [ %28, %bb.c ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.c = load float, ptr %i.b, align 4, !tbaa !9, !alias.scope !43, !noalias !50
  %i.d = fsub fast float %i.c, %5                 ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.f = load float, ptr %i.e, align 4, !tbaa !9, !alias.scope !44, !noalias !51
  %16 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  %17 = load float, ptr %16, align 4, !tbaa !9, !alias.scope !45, !noalias !52
  %18 = insertelement <2 x float> poison, float %i.f, i64 0
  %19 = insertelement <2 x float> %18, float %17, i64 1
  %20 = fsub fast <2 x float> %19, %14            ; 3 uses
  %i.g = fmul fast float %i.d, %i.d
  %21 = fmul fast <2 x float> %20, %20            ; 2 uses
  %22 = extractelement <2 x float> %21, i64 0
  %i.h = fadd fast float %22, %i.g
  %23 = extractelement <2 x float> %21, i64 1
  %i.i = fadd fast float %i.h, %23                ; 8 uses
  %i.j = fcmp fast oge float %i.i, %8
  %i.k = fcmp fast oeq float %i.i, 0.000000e+00
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = fmul fast float %i.i, 1.471770e-06
  %i.m = fsub fast float 6.054910e-05, %i.l
  %i.n = fmul fast float %i.m, %i.i
  %i.o = fadd fast float %i.n, -1.093130e-03
  %i.p = fmul fast float %i.o, %i.i
  %i.q = fadd fast float %i.p, 1.148080e-02
  %i.r = fmul fast float %i.q, %i.i
  %i.s = fadd fast float %i.r, f0xBD99CCE0
  %i.t = fadd fast float %i.i, %9                 ; 2 uses
  %i.u = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.t)
  %i.v = fmul fast float %i.u, %i.t
  %i.w = fdiv fast float 1.000000e+00, %i.v
  %.neg12 = fadd fast float %i.w, -2.693270e-01
  %i.x = fmul fast float %i.i, %i.s
  %i.y = fsub fast float %.neg12, %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i
  %i.aa = load float, ptr %i.z, align 4, !tbaa !9, !alias.scope !46, !noalias !53
  %i.ab = fmul fast float %i.aa, %i.y             ; 2 uses
  %i.ac = fmul fast float %i.ab, %i.d
  %i.ad = fadd fast float %i.ac, %.05159.i
  %24 = insertelement <2 x float> poison, float %i.ab, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = fmul fast <2 x float> %25, %20
  %27 = fadd fast <2 x float> %26, %15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.152.i = phi nsz float [ %i.ad, %bb.b ], [ %.05159.i, %.lr.ph.i ] ; 2 uses
  %28 = phi <2 x float> [ %27, %bb.b ], [ %15, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL18GravityForceKernelILi5ETnRAplT_Li1E_KfL_Z17PolyCoefficients5EEviPfS3_S3_S3_fffffRfS4_S4_.exit, label %.lr.ph.i, !llvm.loop !42

_ZL18GravityForceKernelILi5ETnRAplT_Li1E_KfL_Z17PolyCoefficients5EEviPfS3_S3_S3_fffffRfS4_S4_.exit: ; preds = %bb.c, %bb.a
  %.051.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %.152.i, %bb.c ]
  %29 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %28, %bb.c ]
  %i.ae = load float, ptr %10, align 4, !tbaa !9, !alias.scope !47, !noalias !54
  %i.af = fadd fast float %i.ae, %.051.lcssa.i
  store float %i.af, ptr %10, align 4, !tbaa !9, !alias.scope !47, !noalias !54
  %i.ag = load float, ptr %11, align 4, !tbaa !9, !alias.scope !48, !noalias !55
  %30 = load float, ptr %12, align 4, !tbaa !9, !alias.scope !49, !noalias !56
  %31 = insertelement <2 x float> poison, float %i.ag, i64 0
  %32 = insertelement <2 x float> %31, float %30, i64 1
  %33 = fadd fast <2 x float> %32, %29            ; 2 uses
  %34 = extractelement <2 x float> %33, i64 0
  store float %34, ptr %11, align 4, !tbaa !9, !alias.scope !48, !noalias !55
  %35 = extractelement <2 x float> %33, i64 1
  store float %35, ptr %12, align 4, !tbaa !9, !alias.scope !49, !noalias !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_(i32 noundef %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, float noundef nofpclass(nan inf) %5, float noundef nofpclass(nan inf) %6, float noundef nofpclass(nan inf) %7, float noundef nofpclass(nan inf) %8, float noundef nofpclass(nan inf) %9, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %10, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %11, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %12) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader.i, label %_ZL18GravityForceKernelILi6ETnRAplT_Li1E_KfL_Z17PolyCoefficients6EEviPfS3_S3_S3_fffffRfS4_S4_.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %0 to i64
  %13 = insertelement <2 x float> poison, float %6, i64 0
  %14 = insertelement <2 x float> %13, float %7, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 5 uses
  %.05159.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %.152.i, %bb.c ] ; 2 uses
  %15 = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i ], [ %28, %bb.c ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.c = load float, ptr %i.b, align 4, !tbaa !9, !alias.scope !66, !noalias !73
  %i.d = fsub fast float %i.c, %5                 ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.f = load float, ptr %i.e, align 4, !tbaa !9, !alias.scope !67, !noalias !74
  %16 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  %17 = load float, ptr %16, align 4, !tbaa !9, !alias.scope !68, !noalias !75
  %18 = insertelement <2 x float> poison, float %i.f, i64 0
  %19 = insertelement <2 x float> %18, float %17, i64 1
  %20 = fsub fast <2 x float> %19, %14            ; 3 uses
  %i.g = fmul fast float %i.d, %i.d
  %21 = fmul fast <2 x float> %20, %20            ; 2 uses
  %22 = extractelement <2 x float> %21, i64 0
  %i.h = fadd fast float %22, %i.g
  %23 = extractelement <2 x float> %21, i64 1
  %i.i = fadd fast float %i.h, %23                ; 9 uses
  %i.j = fcmp fast oge float %i.i, %8
  %i.k = fcmp fast oeq float %i.i, 0.000000e+00
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = fmul fast float %i.i, 1.473050e-07
  %i.m = fadd fast float %i.l, -6.633940e-06
  %i.n = fmul fast float %i.m, %i.i
  %i.o = fadd fast float %i.n, 1.323360e-04
  %i.p = fmul fast float %i.o, %i.i
  %i.q = fadd fast float %i.p, -1.594850e-03
  %i.r = fmul fast float %i.q, %i.i
  %i.s = fadd fast float %i.r, 1.331220e-02
  %i.t = fmul fast float %i.s, %i.i
  %i.u = fadd fast float %i.t, f0xBDA07068
  %i.v = fadd fast float %i.i, %9                 ; 2 uses
  %i.w = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.v)
  %i.x = fmul fast float %i.w, %i.v
  %i.y = fdiv fast float 1.000000e+00, %i.x
  %.neg12 = fadd fast float %i.y, -2.714310e-01
  %i.z = fmul fast float %i.i, %i.u
  %i.aa = fsub fast float %.neg12, %i.z
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !9, !alias.scope !69, !noalias !76
  %i.ad = fmul fast float %i.ac, %i.aa            ; 2 uses
  %i.ae = fmul fast float %i.ad, %i.d
  %i.af = fadd fast float %i.ae, %.05159.i
  %24 = insertelement <2 x float> poison, float %i.ad, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = fmul fast <2 x float> %25, %20
  %27 = fadd fast <2 x float> %26, %15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.152.i = phi nsz float [ %i.af, %bb.b ], [ %.05159.i, %.lr.ph.i ] ; 2 uses
  %28 = phi <2 x float> [ %27, %bb.b ], [ %15, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL18GravityForceKernelILi6ETnRAplT_Li1E_KfL_Z17PolyCoefficients6EEviPfS3_S3_S3_fffffRfS4_S4_.exit, label %.lr.ph.i, !llvm.loop !65

_ZL18GravityForceKernelILi6ETnRAplT_Li1E_KfL_Z17PolyCoefficients6EEviPfS3_S3_S3_fffffRfS4_S4_.exit: ; preds = %bb.c, %bb.a
  %.051.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %.152.i, %bb.c ]
  %29 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %28, %bb.c ]
  %i.ag = load float, ptr %10, align 4, !tbaa !9, !alias.scope !70, !noalias !77
  %i.ah = fadd fast float %i.ag, %.051.lcssa.i
  store float %i.ah, ptr %10, align 4, !tbaa !9, !alias.scope !70, !noalias !77
  %i.ai = load float, ptr %11, align 4, !tbaa !9, !alias.scope !71, !noalias !78
  %30 = load float, ptr %12, align 4, !tbaa !9, !alias.scope !72, !noalias !79
  %31 = insertelement <2 x float> poison, float %i.ai, i64 0
  %32 = insertelement <2 x float> %31, float %30, i64 1
  %33 = fadd fast <2 x float> %32, %29            ; 2 uses
  %34 = extractelement <2 x float> %33, i64 0
  store float %34, ptr %11, align 4, !tbaa !9, !alias.scope !71, !noalias !78
  %35 = extractelement <2 x float> %33, i64 1
  store float %35, ptr %12, align 4, !tbaa !9, !alias.scope !72, !noalias !79
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, i1 false, !"_ZL18GravityForceKernelILi4ETnRAplT_Li1E_KfL_Z17PolyCoefficients4EEviPfS3_S3_S3_fffffRfS4_S4_"}
!12 = distinct !{!12, !11, !"_ZL18GravityForceKernelILi4ETnRAplT_Li1E_KfL_Z17PolyCoefficients4EEviPfS3_S3_S3_fffffRfS4_S4_: argument 0"}
!13 = distinct !{!13, !11, !"_ZL18GravityForceKernelILi4ETnRAplT_Li1E_KfL_Z17PolyCoefficients4EEviPfS3_S3_S3_fffffRfS4_S4_: argument 1"}
!14 = distinct !{!14, !11, !"_ZL18GravityForceKernelILi4ETnRAplT_Li1E_KfL_Z17PolyCoefficients4EEviPfS3_S3_S3_fffffRfS4_S4_: argument 2"}
!15 = distinct !{!15, !11, !"_ZL18GravityForceKernelILi4ETnRAplT_Li1E_KfL_Z17PolyCoefficients4EEviPfS3_S3_S3_fffffRfS4_S4_: argument 3"}
!16 = distinct !{!16, !11, !"_ZL18GravityForceKernelILi4ETnRAplT_Li1E_KfL_Z17PolyCoefficients4EEviPfS3_S3_S3_fffffRfS4_S4_: argument 4"}
!17 = distinct !{!17, !11, !"_ZL18GravityForceKernelILi4ETnRAplT_Li1E_KfL_Z17PolyCoefficients4EEviPfS3_S3_S3_fffffRfS4_S4_: argument 5"}
!18 = distinct !{!18, !11, !"_ZL18GravityForceKernelILi4ETnRAplT_Li1E_KfL_Z17PolyCoefficients4EEviPfS3_S3_S3_fffffRfS4_S4_: argument 6"}
!19 = distinct !{!19, !10}
!20 = !{!12}
!21 = !{!13}
!22 = !{!14}
!23 = !{!15}
!24 = !{!16}
!25 = !{!17}
!26 = !{!18}
!27 = !{!13, !14, !15, !16, !17, !18}
!28 = !{!12, !14, !15, !16, !17, !18}
!29 = !{!12, !13, !15, !16, !17, !18}
!30 = !{!12, !13, !14, !16, !17, !18}
!31 = !{!12, !13, !14, !15, !17, !18}
!32 = !{!12, !13, !14, !15, !16, !18}
!33 = !{!12, !13, !14, !15, !16, !17}
!34 = distinct !{!34, i1 false, !"_ZL18GravityForceKernelILi5ETnRAplT_Li1E_KfL_Z17PolyCoefficients5EEviPfS3_S3_S3_fffffRfS4_S4_"}
!35 = distinct !{!35, !34, !"_ZL18GravityForceKernelILi5ETnRAplT_Li1E_KfL_Z17PolyCoefficients5EEviPfS3_S3_S3_fffffRfS4_S4_: argument 0"}
!36 = distinct !{!36, !34, !"_ZL18GravityForceKernelILi5ETnRAplT_Li1E_KfL_Z17PolyCoefficients5EEviPfS3_S3_S3_fffffRfS4_S4_: argument 1"}
!37 = distinct !{!37, !34, !"_ZL18GravityForceKernelILi5ETnRAplT_Li1E_KfL_Z17PolyCoefficients5EEviPfS3_S3_S3_fffffRfS4_S4_: argument 2"}
!38 = distinct !{!38, !34, !"_ZL18GravityForceKernelILi5ETnRAplT_Li1E_KfL_Z17PolyCoefficients5EEviPfS3_S3_S3_fffffRfS4_S4_: argument 3"}
!39 = distinct !{!39, !34, !"_ZL18GravityForceKernelILi5ETnRAplT_Li1E_KfL_Z17PolyCoefficients5EEviPfS3_S3_S3_fffffRfS4_S4_: argument 4"}
!40 = distinct !{!40, !34, !"_ZL18GravityForceKernelILi5ETnRAplT_Li1E_KfL_Z17PolyCoefficients5EEviPfS3_S3_S3_fffffRfS4_S4_: argument 5"}
!41 = distinct !{!41, !34, !"_ZL18GravityForceKernelILi5ETnRAplT_Li1E_KfL_Z17PolyCoefficients5EEviPfS3_S3_S3_fffffRfS4_S4_: argument 6"}
!42 = distinct !{!42, !10}
!43 = !{!35}
!44 = !{!36}
!45 = !{!37}
!46 = !{!38}
!47 = !{!39}
!48 = !{!40}
!49 = !{!41}
!50 = !{!36, !37, !38, !39, !40, !41}
!51 = !{!35, !37, !38, !39, !40, !41}
!52 = !{!35, !36, !38, !39, !40, !41}
!53 = !{!35, !36, !37, !39, !40, !41}
!54 = !{!35, !36, !37, !38, !40, !41}
!55 = !{!35, !36, !37, !38, !39, !41}
!56 = !{!35, !36, !37, !38, !39, !40}
!57 = distinct !{!57, i1 false, !"_ZL18GravityForceKernelILi6ETnRAplT_Li1E_KfL_Z17PolyCoefficients6EEviPfS3_S3_S3_fffffRfS4_S4_"}
!58 = distinct !{!58, !57, !"_ZL18GravityForceKernelILi6ETnRAplT_Li1E_KfL_Z17PolyCoefficients6EEviPfS3_S3_S3_fffffRfS4_S4_: argument 0"}
!59 = distinct !{!59, !57, !"_ZL18GravityForceKernelILi6ETnRAplT_Li1E_KfL_Z17PolyCoefficients6EEviPfS3_S3_S3_fffffRfS4_S4_: argument 1"}
!60 = distinct !{!60, !57, !"_ZL18GravityForceKernelILi6ETnRAplT_Li1E_KfL_Z17PolyCoefficients6EEviPfS3_S3_S3_fffffRfS4_S4_: argument 2"}
!61 = distinct !{!61, !57, !"_ZL18GravityForceKernelILi6ETnRAplT_Li1E_KfL_Z17PolyCoefficients6EEviPfS3_S3_S3_fffffRfS4_S4_: argument 3"}
!62 = distinct !{!62, !57, !"_ZL18GravityForceKernelILi6ETnRAplT_Li1E_KfL_Z17PolyCoefficients6EEviPfS3_S3_S3_fffffRfS4_S4_: argument 4"}
!63 = distinct !{!63, !57, !"_ZL18GravityForceKernelILi6ETnRAplT_Li1E_KfL_Z17PolyCoefficients6EEviPfS3_S3_S3_fffffRfS4_S4_: argument 5"}
!64 = distinct !{!64, !57, !"_ZL18GravityForceKernelILi6ETnRAplT_Li1E_KfL_Z17PolyCoefficients6EEviPfS3_S3_S3_fffffRfS4_S4_: argument 6"}
!65 = distinct !{!65, !10}
!66 = !{!58}
!67 = !{!59}
!68 = !{!60}
!69 = !{!61}
!70 = !{!62}
!71 = !{!63}
!72 = !{!64}
!73 = !{!59, !60, !61, !62, !63, !64}
!74 = !{!58, !60, !61, !62, !63, !64}
!75 = !{!58, !59, !61, !62, !63, !64}
!76 = !{!58, !59, !60, !62, !63, !64}
!77 = !{!58, !59, !60, !61, !63, !64}
!78 = !{!58, !59, !60, !61, !62, !64}
!79 = !{!58, !59, !60, !61, !62, !63}
end_hunk_0
