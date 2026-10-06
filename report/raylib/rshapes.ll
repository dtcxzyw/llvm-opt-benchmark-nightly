Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rshapes?download=true
inline.NumInlined: 39
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@GetSplinePointLinear:bb.a
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
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer ; 8 uses
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
  %i.r = insertelement <2 x float> <float poison, float 2.000000e+00>, float %4, i64 0
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
  %i.a = shufflevector <2 x float> %0, <2 x float> %2, <2 x i32> <i32 0, i32 3>
  %i.b = fsub <2 x float> %i.a, %3                ; 2 uses
  %i.c = shufflevector <2 x float> %0, <2 x float> %3, <2 x i32> <i32 1, i32 2>
  %i.d = shufflevector <2 x float> %3, <2 x float> %2, <2 x i32> <i32 1, i32 2>
  %i.e = fsub <2 x float> %i.c, %i.d              ; 2 uses
  %i.f = shufflevector <2 x float> %1, <2 x float> %0, <2 x i32> <i32 0, i32 3>
  %i.g = fsub <2 x float> %i.f, %3                ; 2 uses
  %foldExtExtBinop60 = fmul <2 x float> %i.e, %foldExtExtBinop
  %i.h = extractelement <2 x float> %foldExtExtBinop60, i64 1
  %i.i = extractelement <2 x float> %i.b, i64 1
  %i.j = extractelement <2 x float> %i.g, i64 0
  %i.k = tail call float @llvm.fmuladd.f32(float %i.i, float %i.j, float %i.h)
  %i.l = shufflevector <2 x float> %3, <2 x float> %0, <2 x i32> <i32 1, i32 2>
  %i.m = shufflevector <2 x float> %1, <2 x float> %3, <2 x i32> <i32 1, i32 2>
  %i.n = fsub <2 x float> %i.l, %i.m
  %i.o = fmul <2 x float> %i.g, %i.e
  %i.p = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.b, <2 x float> %i.o)
  %i.q = insertelement <2 x float> poison, float %i.k, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fdiv <2 x float> %i.p, %i.r              ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 1   ; 2 uses
  %i.u = fsub float 1.000000e+00, %i.t
  %i.v = fcmp ogt float %i.t, 0.000000e+00
  %i.w = extractelement <2 x float> %i.s, i64 0   ; 2 uses
  %i.x = fcmp ogt float %i.w, 0.000000e+00
  %i.y = fcmp ogt float %i.u, %i.w
  %i.z = and i1 %i.x, %i.y
  %or.cond3 = select i1 %i.v, i1 %i.z, i1 false
  ret i1 %or.cond3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define zeroext i1 @CheckCollisionPointPoly(<2 x float> %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp sgt i32 %2, 2
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %2, -1
  %.sroa.0.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 3 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %0, i64 0
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.c = zext nneg i32 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.031 = phi i64 [ %i.c, %bb.b ], [ %indvars.iv, %bb.e ]
  %.02729 = phi i1 [ false, %bb.b ], [ %.1, %bb.e ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load float, ptr %i.e, align 4            ; 3 uses
  %i.g = fcmp ogt float %i.f, %.sroa.0.4.vec.extract
  %3 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.031 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = load float, ptr %4, align 4                ; 2 uses
  %i.h = fcmp ule float %5, %.sroa.0.4.vec.extract
  %.not = xor i1 %i.g, %i.h
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load float, ptr %3, align 4
  %i.j = load float, ptr %i.d, align 4            ; 2 uses
  %i.k = fsub float %i.i, %i.j
  %i.l = fsub float %.sroa.0.4.vec.extract, %i.f
  %i.m = fmul float %i.l, %i.k
  %i.n = fsub float %5, %i.f
  %i.o = fdiv float %i.m, %i.n
  %i.p = fadd float %i.j, %i.o
  %i.q = fcmp olt float %.sroa.0.0.vec.extract, %i.p
  %spec.select = xor i1 %.02729, %i.q
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
define zeroext i1 @CheckCollisionPointLine(<2 x float> %0, <2 x float> %1, <2 x float> %2, i32 noundef %3) local_unnamed_addr #10 {
bb.a:
  %.sroa.033.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 4 uses
  %.sroa.020.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %0, %1
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0
  %.sroa.033.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 5 uses
  %.sroa.020.4.vec.extract = extractelement <2 x float> %1, i64 1 ; 4 uses
  %i.b = fsub float %.sroa.033.4.vec.extract, %.sroa.020.4.vec.extract
  %.sroa.0.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 2 uses
  %foldExtExtBinop52 = fsub <2 x float> %2, %1
  %i.c = extractelement <2 x float> %foldExtExtBinop52, i64 0 ; 3 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 3 uses
  %i.d = fsub float %.sroa.0.4.vec.extract, %.sroa.020.4.vec.extract ; 3 uses
  %i.e = fneg float %i.c
  %i.f = fmul float %i.b, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.a, float %i.d, float %i.f)
  %i.h = tail call float @llvm.fabs.f32(float %i.g)
  %i.i = sitofp i32 %3 to float
  %i.j = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.k = tail call float @llvm.fabs.f32(float %i.d) ; 2 uses
  %i.l = tail call nsz float @llvm.maxnum.f32(float %i.j, float %i.k)
  %i.m = fmul float %i.l, %i.i
  %i.n = fcmp olt float %i.h, %i.m
  br i1 %i.n, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.o = fcmp ult float %i.j, %i.k
  br i1 %i.o, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = fcmp ogt float %i.c, 0.000000e+00
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = fcmp ole float %.sroa.020.0.vec.extract, %.sroa.033.0.vec.extract
  %i.r = fcmp ole float %.sroa.033.0.vec.extract, %.sroa.0.0.vec.extract
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.t = fcmp ole float %.sroa.0.0.vec.extract, %.sroa.033.0.vec.extract
  %i.u = fcmp ole float %.sroa.033.0.vec.extract, %.sroa.020.0.vec.extract
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br label %bb.i

end_hunk_0
