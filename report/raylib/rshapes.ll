Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rshapes?download=true
inline.NumInlined: 39
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@DrawSplineSegmentCatmullRom:.peel.next80
  %i.hj = insertelement <2 x float> %i.hi, float %.pre93.1, i64 1
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.hl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> %i.hk, <4 x float> %i.gw)
  store <4 x float> %i.hl, ptr %i.gq, align 16
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 384
  %i.hn = fmul <2 x float> %1, zeroinitializer
  %i.ho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> zeroinitializer, <2 x float> %i.hn)
  %i.hp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float 2.000000e+00), <2 x float> %i.ho)
  %i.hq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> zeroinitializer, <2 x float> %i.hp)
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hs = fmul <4 x float> %i.hr, splat (float 5.000000e-01) ; 3 uses
  %i.ht = extractelement <4 x float> %i.hs, i64 1
  %i.hu = fsub float %i.ht, %i.gx                 ; 4 uses
  %i.hv = extractelement <4 x float> %i.hs, i64 0
  %i.hw = fsub float %i.hv, %i.gz                 ; 4 uses
  %i.hx = fmul float %i.hu, %i.hu
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.hw, float %i.hx)
  %sqrt.2 = tail call float @llvm.sqrt.f32(float %i.hy)
  %.pre95.2 = fneg float %i.hw
  %.pre93.2 = fneg float %i.hu
  %i.hz = fdiv float %i.b, %sqrt.2
  %i.ia = insertelement <4 x float> poison, float %i.hu, i64 0
  %i.ib = insertelement <4 x float> %i.ia, float %.pre95.2, i64 1
  %i.ic = insertelement <4 x float> %i.ib, float %i.hz, i64 2 ; 2 uses
  %i.id = insertelement <4 x float> %i.ic, float %i.hw, i64 3
  %i.ie = shufflevector <4 x float> %i.ic, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.if = insertelement <2 x float> %i.ie, float %.pre93.2, i64 1
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ih = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.id, <4 x float> %i.ig, <4 x float> %i.hs)
  store <4 x float> %i.ih, ptr %i.hm, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %6, i32 noundef 50, i32 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define <2 x float> @GetSplinePointLinear(<2 x float> %0, <2 x float> %1, float noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = fsub float 1.000000e+00, %2
  %i.b = insertelement <2 x float> poison, float %2, i64 0
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer
  %i.d = fmul <2 x float> %1, %i.c
  %i.e = insertelement <2 x float> poison, float %i.a, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> %i.f, <2 x float> %i.d)
  ret <2 x float> %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define <2 x float> @GetSplinePointBasis(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, float noundef %4) local_unnamed_addr #10 {
bb.a:
  %i.a = fneg <2 x float> %0
  %i.b = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %1, <2 x float> splat (float 3.000000e+00), <2 x float> %i.a)
  %i.c = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float -3.000000e+00), <2 x float> %i.b)
  %i.d = fadd <2 x float> %i.c, %3
  %i.e = fdiv <2 x float> %i.d, splat (float 6.000000e+00)
  %i.f = fmul <2 x float> %1, splat (float -6.000000e+00)
  %i.g = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> splat (float 3.000000e+00), <2 x float> %i.f)
  %i.h = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float 3.000000e+00), <2 x float> %i.g)
  %i.i = fdiv <2 x float> %i.h, splat (float 6.000000e+00)
  %i.j = fmul <2 x float> %2, splat (float 3.000000e+00)
  %i.k = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> splat (float -3.000000e+00), <2 x float> %i.j)
  %i.l = fdiv <2 x float> %i.k, splat (float 6.000000e+00)
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %1, <2 x float> splat (float 4.000000e+00), <2 x float> %0)
  %i.n = fadd <2 x float> %i.m, %2
  %i.o = fdiv <2 x float> %i.n, splat (float 6.000000e+00)
  %i.p = insertelement <2 x float> poison, float %4, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.e, <2 x float> %i.i)
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.r, <2 x float> %i.l)
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.s, <2 x float> %i.o)
  ret <2 x float> %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define <2 x float> @GetSplinePointCatmullRom(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, float noundef %4) local_unnamed_addr #10 {
bb.a:
  %i.a = fneg float %4
  %i.b = fmul float %4, 2.000000e+00
  %i.c = fmul float %4, %i.b
  %i.d = insertelement <2 x float> poison, float %4, i64 0
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer ; 9 uses
  %i.f = fmul <2 x float> %i.e, <float -3.000000e+00, float 3.000000e+00>
  %i.g = fmul <2 x float> %i.e, <float 4.000000e+00, float -5.000000e+00>
  %i.h = insertelement <2 x float> %i.e, float %i.a, i64 0
  %i.i = fmul <2 x float> %i.e, %i.h              ; 2 uses
  %i.j = fneg <2 x float> %i.i
  %i.k = insertelement <2 x float> %i.j, float %i.c, i64 0
  %i.l = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> %i.e, <2 x float> %i.k) ; 2 uses
  %i.m = extractelement <2 x float> %i.l, i64 0
  %i.n = fsub float %i.m, %4
  %i.o = fmul <2 x float> %i.e, %i.f
  %i.p = fmul <2 x float> %i.e, %i.g
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.e, <2 x float> %i.p)
  %i.r = insertelement <2 x float> %i.e, float 2.000000e+00, i64 1
  %i.s = fadd <2 x float> %i.r, %i.q              ; 2 uses
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.u = fmul <2 x float> %1, %i.t
  %i.v = insertelement <2 x float> poison, float %i.n, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> %i.w, <2 x float> %i.u)
  %i.y = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> %i.y, <2 x float> %i.x)
  %i.aa = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> %i.aa, <2 x float> %i.z)
  %i.ac = fmul <2 x float> %i.ab, splat (float 5.000000e-01)
  ret <2 x float> %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define <2 x float> @GetSplinePointBezierQuad(<2 x float> %0, <2 x float> %1, <2 x float> %2, float noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = fsub float 1.000000e+00, %3              ; 2 uses
  %i.b = tail call float @powf(float noundef %i.a, float noundef 2.000000e+00) #14
  %i.c = fmul float %i.a, 2.000000e+00
  %i.d = fmul float %3, %i.c
  %i.e = tail call float @powf(float noundef %3, float noundef 2.000000e+00) #14
  %i.f = insertelement <2 x float> poison, float %i.d, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %1, %i.g
  %i.i = insertelement <2 x float> poison, float %i.b, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %0, <2 x float> %i.h)
  %i.l = insertelement <2 x float> poison, float %i.e, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %2, <2 x float> %i.k)
  ret <2 x float> %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define <2 x float> @GetSplinePointBezierCubic(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, float noundef %4) local_unnamed_addr #11 {
bb.a:
  %i.a = fsub float 1.000000e+00, %4              ; 3 uses
  %i.b = tail call float @powf(float noundef %i.a, float noundef 3.000000e+00) #14
  %i.c = tail call float @powf(float noundef %i.a, float noundef 2.000000e+00) #14
  %i.d = tail call float @powf(float noundef %4, float noundef 2.000000e+00) #14
  %i.e = tail call float @powf(float noundef %4, float noundef 3.000000e+00) #14
  %i.f = insertelement <2 x float> poison, float %i.a, i64 0
  %i.g = insertelement <2 x float> %i.f, float %i.c, i64 1
  %i.h = fmul <2 x float> %i.g, splat (float 3.000000e+00)
  %i.i = insertelement <2 x float> poison, float %i.d, i64 0
  %i.j = insertelement <2 x float> %i.i, float %4, i64 1
  %i.k = fmul <2 x float> %i.h, %i.j              ; 2 uses
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.m = fmul <2 x float> %1, %i.l
  %i.n = insertelement <2 x float> poison, float %i.b, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %0, <2 x float> %i.m)
  %i.q = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %2, <2 x float> %i.p)
  %i.s = insertelement <2 x float> poison, float %i.e, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %3, <2 x float> %i.r)
  ret <2 x float> %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionPointRec(<2 x float> %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #10 {
bb.a:
  %.sroa.05.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fcmp oge float %.sroa.05.0.vec.extract, %.sroa.0.0.vec.extract
  %foldExtExtBinop = fadd <2 x float> %1, %2
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = fcmp olt float %.sroa.05.0.vec.extract, %i.b
  %or.cond = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.05.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.d = fcmp oge float %.sroa.05.4.vec.extract, %.sroa.0.4.vec.extract
  %foldExtExtBinop14 = fadd <2 x float> %1, %2
  %i.e = extractelement <2 x float> %foldExtExtBinop14, i64 1
  %i.f = fcmp olt float %.sroa.05.4.vec.extract, %i.e
  %or.cond12 = select i1 %i.d, i1 %i.f, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %or.cond12, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionPointCircle(<2 x float> %0, <2 x float> %1, float noundef %2) local_unnamed_addr #10 {
bb.a:
  %foldExtExtBinop = fsub <2 x float> %0, %1
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop13 = fsub <2 x float> %0, %1    ; 2 uses
  %foldExtExtBinop15 = fmul <2 x float> %foldExtExtBinop13, %foldExtExtBinop13
  %i.b = extractelement <2 x float> %foldExtExtBinop15, i64 1
  %i.c = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.b)
  %i.d = fmul float %2, %2
  %i.e = fcmp ole float %i.c, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionPointTriangle(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #10 {
bb.a:
  %foldExtExtBinop = fsub <2 x float> %1, %3
  %4 = shufflevector <2 x float> %0, <2 x float> %2, <2 x i32> <i32 0, i32 3>
  %5 = fsub <2 x float> %4, %3                    ; 2 uses
  %6 = shufflevector <2 x float> %0, <2 x float> %3, <2 x i32> <i32 1, i32 2>
  %7 = shufflevector <2 x float> %3, <2 x float> %2, <2 x i32> <i32 1, i32 2>
  %8 = fsub <2 x float> %6, %7                    ; 2 uses
  %9 = shufflevector <2 x float> %1, <2 x float> %0, <2 x i32> <i32 0, i32 3>
  %i.a = fsub <2 x float> %9, %3                  ; 2 uses
  %i.b = fmul <2 x float> %8, %foldExtExtBinop
  %10 = extractelement <2 x float> %i.b, i64 1
  %11 = extractelement <2 x float> %5, i64 1
  %12 = extractelement <2 x float> %i.a, i64 0
  %13 = tail call float @llvm.fmuladd.f32(float %11, float %12, float %10)
  %14 = shufflevector <2 x float> %3, <2 x float> %0, <2 x i32> <i32 1, i32 2>
  %15 = shufflevector <2 x float> %1, <2 x float> %3, <2 x i32> <i32 1, i32 2>
  %16 = fsub <2 x float> %14, %15
  %17 = fmul <2 x float> %i.a, %8
  %18 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %5, <2 x float> %17)
  %i.c = insertelement <2 x float> poison, float %13, i64 0
  %19 = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.d = fdiv <2 x float> %18, %19                ; 2 uses
  %i.e = extractelement <2 x float> %i.d, i64 1   ; 2 uses
  %i.f = fsub float 1.000000e+00, %i.e
  %i.g = fcmp ogt float %i.e, 0.000000e+00
  %i.h = extractelement <2 x float> %i.d, i64 0   ; 2 uses
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  %i.j = fcmp ogt float %i.f, %i.h
  %i.k = and i1 %i.i, %i.j
  %or.cond3 = select i1 %i.g, i1 %i.k, i1 false
  ret i1 %or.cond3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define zeroext i1 @CheckCollisionPointPoly(<2 x float> %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp sgt i32 %2, 2
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %2, -1                       ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 3 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %0, i64 0
  %wide.trip.count = zext nneg i32 %2 to i64
  %.phi.trans.insert = zext nneg i32 %i.b to i64
  %.phi.trans.insert32 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.phi.trans.insert
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert32, i64 4
  %.pre = load float, ptr %.phi.trans.insert33, align 4
  %i.c = zext nneg i32 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %i.d = phi float [ %.pre, %bb.b ], [ %i.g, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.031 = phi i64 [ %i.c, %bb.b ], [ %indvars.iv, %bb.e ]
  %.02729 = phi i1 [ false, %bb.b ], [ %.1, %bb.e ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load float, ptr %i.f, align 4            ; 4 uses
  %i.h = fcmp ogt float %i.g, %.sroa.0.4.vec.extract
  %i.i = fcmp ule float %i.d, %.sroa.0.4.vec.extract
  %.not = xor i1 %i.h, %i.i
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.031
  %i.k = load float, ptr %i.j, align 4
  %i.l = load float, ptr %i.e, align 4            ; 2 uses
  %i.m = fsub float %i.k, %i.l
  %i.n = fsub float %.sroa.0.4.vec.extract, %i.g
  %i.o = fmul float %i.n, %i.m
  %i.p = fsub float %i.d, %i.g
  %i.q = fdiv float %i.o, %i.p
  %i.r = fadd float %i.l, %i.q
  %i.s = fcmp olt float %.sroa.0.0.vec.extract, %i.r
  %spec.select = xor i1 %.02729, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i1 [ %.02729, %bb.c ], [ %spec.select, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.e, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ %.1, %bb.e ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionRecs(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #10 {
bb.a:
  %.sroa.05.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.0.0.vec.extract = extractelement <2 x float> %2, i64 0
  %foldExtExtBinop = fadd <2 x float> %2, %3
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.b = fcmp olt float %.sroa.05.0.vec.extract, %i.a
  %foldExtExtBinop15 = fadd <2 x float> %0, %1
  %i.c = extractelement <2 x float> %foldExtExtBinop15, i64 0
  %i.d = fcmp ogt float %i.c, %.sroa.0.0.vec.extract
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %foldExtExtBinop17 = fadd <2 x float> %2, %3
  %i.e = fcmp olt <2 x float> %0, %foldExtExtBinop17
  %i.f = extractelement <2 x i1> %i.e, i64 1
  %foldExtExtBinop19 = fadd <2 x float> %0, %1
  %i.g = fcmp ogt <2 x float> %foldExtExtBinop19, %2
  %i.h = extractelement <2 x i1> %i.g, i64 1
  %or.cond13 = select i1 %i.f, i1 %i.h, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %or.cond13, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionCircles(<2 x float> %0, float noundef %1, <2 x float> %2, float noundef %3) local_unnamed_addr #10 {
bb.a:
  %foldExtExtBinop = fsub <2 x float> %2, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop11 = fsub <2 x float> %2, %0    ; 2 uses
  %foldExtExtBinop13 = fmul <2 x float> %foldExtExtBinop11, %foldExtExtBinop11
  %i.b = extractelement <2 x float> %foldExtExtBinop13, i64 1
  %i.c = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.b)
  %i.d = fadd float %1, %3                        ; 2 uses
  %i.e = fmul float %i.d, %i.d
  %i.f = fcmp ole float %i.c, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionCircleRec(<2 x float> %0, float noundef %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #10 {
bb.a:
  %i.a = fmul <2 x float> %3, splat (float 5.000000e-01) ; 5 uses
  %i.b = fadd <2 x float> %2, %i.a
  %i.c = fsub <2 x float> %0, %i.b
  %i.d = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.c) ; 4 uses
  %i.e = insertelement <2 x float> poison, float %1, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = fadd <2 x float> %i.f, %i.a
  %i.h = fcmp ugt <2 x float> %i.d, %i.g          ; 2 uses
  %i.i = extractelement <2 x i1> %i.h, i64 0
  %i.j = extractelement <2 x i1> %i.h, i64 1
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fcmp ugt <2 x float> %i.d, %i.a          ; 2 uses
  %i.l = extractelement <2 x i1> %i.k, i64 0
  %i.m = extractelement <2 x i1> %i.k, i64 1
  %or.cond37 = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond37, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %foldExtExtBinop = fsub <2 x float> %i.d, %i.a
  %i.n = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop43 = fsub <2 x float> %i.d, %i.a ; 2 uses
  %foldExtExtBinop45 = fmul <2 x float> %foldExtExtBinop43, %foldExtExtBinop43
  %i.o = extractelement <2 x float> %foldExtExtBinop45, i64 1
  %i.p = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.o)
  %i.q = fmul float %1, %1
  %i.r = fcmp ole float %i.p, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.r, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @CheckCollisionLines(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #13 {
bb.a:
  %i.a = fsub <2 x float> %1, %0                  ; 5 uses
  %foldExtExtBinop = fsub <2 x float> %3, %2
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop47 = fsub <2 x float> %3, %2    ; 2 uses
  %i.c = extractelement <2 x float> %foldExtExtBinop47, i64 1
  %i.d = fneg float %i.b                          ; 2 uses
  %i.e = extractelement <2 x float> %i.a, i64 1
  %i.f = fmul float %i.e, %i.d
  %i.g = extractelement <2 x float> %i.a, i64 0
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float %i.c, float %i.f) ; 2 uses
  %i.i = tail call float @llvm.fabs.f32(float %i.h)
  %i.j = fcmp ult float %i.i, f0x34000000
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fsub <2 x float> %2, %0                  ; 2 uses
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.m = insertelement <2 x float> poison, float %i.d, i64 0
  %i.n = fneg <2 x float> %i.a
  %i.o = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.p = fmul <2 x float> %i.l, %i.o
  %i.q = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = shufflevector <2 x float> %i.a, <2 x float> %foldExtExtBinop47, <2 x i32> <i32 3, i32 1>
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.r, <2 x float> %i.p)
  %i.t = insertelement <2 x float> poison, float %i.h, i64 0
  %i.u = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.v = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> zeroinitializer
  %i.w = fdiv <4 x float> %i.u, %i.v              ; 3 uses
  %i.x = fcmp ole <4 x float> %i.w, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.y = fcmp oge <4 x float> %i.w, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.z = shufflevector <4 x i1> %i.x, <4 x i1> %i.y, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aa = freeze <4 x i1> %i.z
  %i.ab = bitcast <4 x i1> %i.aa to i4
  %i.ac = icmp eq i4 %i.ab, -1
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.a, <2 x float> %0)
  store <2 x float> %i.ae, ptr %4, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
end_hunk_0
