Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rshapes?download=true
inline.NumInlined: 39
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@DrawSplineBezierCubic:bb.a
  %i.i = load <2 x float>, ptr %i.e, align 4
  %i.j = load <2 x float>, ptr %i.f, align 4
  %i.k = load <2 x float>, ptr %i.g, align 4
  tail call void @DrawSplineSegmentBezierCubic(<2 x float> %i.h, <2 x float> %i.i, <2 x float> %i.j, <2 x float> %i.k, float noundef %2, i32 %3)
  %i.l = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.l, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawSplineSegmentBezierCubic(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, float noundef %4, i32 %5) local_unnamed_addr #4 {
.peel.next:
  %6 = alloca [50 x %struct.Vector2], align 16    ; 7 uses
  %.sroa.055.0.vec.extract57 = extractelement <2 x float> %0, i64 0
  %.sroa.055.4.vec.extract59 = extractelement <2 x float> %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.a, i8 0, i64 368, i1 false)
  %i.b = fmul float %4, 5.000000e-01              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.d = fmul <2 x float> %1, splat (float f0x3DEB1C72)
  %i.e = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> splat (float f0x3F615097), <2 x float> %i.d)
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float 4.991320e-03), <2 x float> %i.e)
  %i.g = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> splat (float f0x3897B427), <2 x float> %i.f) ; 4 uses
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.i = extractelement <2 x float> %i.g, i64 1
  %i.j = fsub float %i.i, %.sroa.055.4.vec.extract59 ; 4 uses
  %i.k = extractelement <2 x float> %i.g, i64 0
  %i.l = fsub float %i.k, %.sroa.055.0.vec.extract57 ; 4 uses
  %i.m = fmul float %i.j, %i.j
  %i.n = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.m)
  %sqrt.peel = tail call float @llvm.sqrt.f32(float %i.n)
  %i.o = fneg float %i.l
  %i.p = fneg float %i.j
  %i.q = fdiv float %i.b, %sqrt.peel
  %i.r = insertelement <4 x float> poison, float %i.j, i64 0
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 1
  %i.t = insertelement <4 x float> %i.s, float %i.q, i64 2 ; 2 uses
  %i.u = insertelement <4 x float> %i.t, float %i.l, i64 3 ; 2 uses
  %i.v = shufflevector <4 x float> %i.t, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.w = insertelement <2 x float> %i.v, float %i.p, i64 1
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.y = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> %i.x, <4 x float> %i.h)
  store <4 x float> %i.y, ptr %i.c, align 16
  br label %bb.a

.loopexit:                                        ; preds = %bb.a
  %i.z = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> %i.x, <4 x float> %i.z)
  store <4 x float> %i.aa, ptr %6, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %6, i32 noundef 50, i32 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void

bb.a:                                             ; preds = %.peel.next, %bb.a
  %indvars.iv = phi i64 [ 2, %.peel.next ], [ %indvars.iv.next, %bb.a ] ; 3 uses
  %i.ab = phi <2 x float> [ %i.g, %.peel.next ], [ %i.ba, %bb.a ]
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  %i.ad = uitofp nneg i32 %i.ac to float
  %i.ae = fmul nnan float %i.ad, f0x3D2AAAAB      ; 4 uses
  %i.af = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.ag = tail call float @powf(float noundef %i.af, float noundef 3.000000e+00) #14
  %i.ah = tail call float @powf(float noundef %i.af, float noundef 2.000000e+00) #14
  %i.ai = tail call float @powf(float noundef %i.ae, float noundef 2.000000e+00) #14
  %i.aj = tail call float @powf(float noundef %i.ae, float noundef 3.000000e+00) #14
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 %.idx
  %i.al = insertelement <2 x float> poison, float %i.af, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.ah, i64 1
  %i.an = fmul <2 x float> %i.am, splat (float 3.000000e+00)
  %i.ao = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %i.ae, i64 1
  %i.aq = fmul <2 x float> %i.an, %i.ap           ; 2 uses
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.as = fmul <2 x float> %1, %i.ar
  %i.at = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %0, <2 x float> %i.as)
  %i.aw = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %2, <2 x float> %i.av)
  %i.ay = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %3, <2 x float> %i.ax) ; 3 uses
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bc = fsub <2 x float> %i.ba, %i.ab           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.bc, %i.bc
  %i.bd = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.be = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.be, float %i.bd)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.bf)
  %i.bg = fneg <2 x float> %i.bc                  ; 2 uses
  %i.bh = fdiv float %i.b, %sqrt
  %i.bi = shufflevector <2 x float> %i.bg, <2 x float> %i.bc, <4 x i32> <i32 3, i32 0, i32 poison, i32 2>
  %i.bj = insertelement <4 x float> %i.bi, float %i.bh, i64 2 ; 2 uses
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> %i.bg, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.bm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %i.bl, <4 x float> %i.bb)
  store <4 x float> %i.bm, ptr %i.ak, align 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %.loopexit, label %bb.a, !llvm.loop !8
}

; Function Attrs: nounwind uwtable
define void @DrawSplineSegmentLinear(<2 x float> %0, <2 x float> %1, float noundef %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca [4 x %struct.Vector2], align 16     ; 5 uses
  %i.a = fsub <2 x float> %1, %0                  ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.a, %i.a
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b) ; 2 uses
  %i.e = fcmp ogt float %i.d, 0.000000e+00
  %i.f = fcmp ogt float %2, 0.000000e+00
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.h = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %sqrt = tail call nnan float @llvm.sqrt.f32(float %i.d)
  %i.i = fmul nnan float %sqrt, 2.000000e+00
  %i.j = fdiv float %2, %i.i                      ; 2 uses
  %i.k = fneg float %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.l = insertelement <2 x float> poison, float %i.j, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.k, i64 1
  %i.n = fmul <2 x float> %i.a, %i.m
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 4 uses
  %i.p = fsub <4 x float> %i.g, %i.o
  %i.q = fadd <4 x float> %i.g, %i.o
  %i.r = shufflevector <4 x float> %i.p, <4 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.r, ptr %4, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = fsub <4 x float> %i.h, %i.o
  %i.u = fadd <4 x float> %i.h, %i.o
  %i.v = shufflevector <4 x float> %i.t, <4 x float> %i.u, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.v, ptr %i.s, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %4, i32 noundef 4, i32 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawSplineSegmentBasis(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, float noundef %4, i32 %5) local_unnamed_addr #4 {
.peel.next92:
  %6 = alloca [50 x %struct.Vector2], align 16    ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.a, i8 0, i64 368, i1 false)
  %i.b = fneg <2 x float> %0
  %i.c = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %1, <2 x float> splat (float 3.000000e+00), <2 x float> %i.b)
  %i.d = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float -3.000000e+00), <2 x float> %i.c)
  %i.e = fadd <2 x float> %i.d, %3
  %i.f = fdiv <2 x float> %i.e, splat (float 6.000000e+00) ; 7 uses
  %i.g = fmul <2 x float> %1, splat (float -6.000000e+00)
  %i.h = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> splat (float 3.000000e+00), <2 x float> %i.g)
  %i.i = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float 3.000000e+00), <2 x float> %i.h)
  %i.j = fdiv <2 x float> %i.i, splat (float 6.000000e+00) ; 7 uses
  %i.k = fmul <2 x float> %2, splat (float 3.000000e+00)
  %i.l = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> splat (float -3.000000e+00), <2 x float> %i.k)
  %i.m = fdiv <2 x float> %i.l, splat (float 6.000000e+00) ; 7 uses
  %i.n = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %1, <2 x float> splat (float 4.000000e+00), <2 x float> %0)
  %i.o = fadd <2 x float> %i.n, %2
  %i.p = fdiv <2 x float> %i.o, splat (float 6.000000e+00) ; 7 uses
  %i.q = fmul float %4, 5.000000e-01              ; 5 uses
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> zeroinitializer, <2 x float> %i.j)
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> zeroinitializer, <2 x float> %i.m)
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> zeroinitializer, <2 x float> %i.p)
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> splat (float f0x3D2AAAAB), <2 x float> %i.j)
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> splat (float f0x3D2AAAAB), <2 x float> %i.m)
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> splat (float f0x3D2AAAAB), <2 x float> %i.p) ; 2 uses
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %foldExtExtBinop = fsub <4 x float> %i.z, %i.u  ; 3 uses
  %i.aa = extractelement <4 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %foldExtExtBinop129 = fsub <4 x float> %i.z, %i.u ; 3 uses
  %i.ab = extractelement <4 x float> %foldExtExtBinop129, i64 0 ; 2 uses
  %i.ac = fmul float %i.aa, %i.aa
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.ac)
  %sqrt.peel93 = tail call float @llvm.sqrt.f32(float %i.ad)
  %i.ae = fdiv float %i.q, %sqrt.peel93
  %i.af = shufflevector <4 x float> %foldExtExtBinop, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ag = fneg <4 x float> %foldExtExtBinop129
  %i.ah = shufflevector <4 x float> %i.af, <4 x float> %i.ag, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ai = insertelement <4 x float> %i.ah, float %i.ae, i64 2 ; 2 uses
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> %foldExtExtBinop129, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.ak = fneg <4 x float> %foldExtExtBinop
  %i.al = shufflevector <4 x float> %i.ai, <4 x float> %i.ak, <4 x i32> <i32 2, i32 2, i32 5, i32 2> ; 2 uses
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.al, <4 x float> %i.u)
  store <4 x float> %i.am, ptr %6, align 16
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.al, <4 x float> %i.z)
  store <4 x float> %i.an, ptr %i.v, align 16
  %i.ao = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %broadcast.splatinsert123 = insertelement <4 x float> poison, float %i.q, i64 0 ; 5 uses
  %broadcast.splat122 = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %broadcast.splat120 = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %broadcast.splat118 = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %broadcast.splat116 = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %broadcast.splat114 = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %broadcast.splat112 = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %broadcast.splat110 = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %broadcast.splat = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> <float f0x3DAAAAAB, float 1.250000e-01, float f0x3E2AAAAB, float f0x3E555556>, <4 x float> %broadcast.splat110)
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> <float f0x3DAAAAAB, float 1.250000e-01, float f0x3E2AAAAB, float f0x3E555556>, <4 x float> %broadcast.splat112)
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> <float f0x3DAAAAAB, float 1.250000e-01, float f0x3E2AAAAB, float f0x3E555556>, <4 x float> %broadcast.splat114) ; 4 uses
  %i.as = shufflevector <4 x float> %i.ao, <4 x float> %i.ar, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.at = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat116, <4 x float> <float f0x3DAAAAAB, float 1.250000e-01, float f0x3E2AAAAB, float f0x3E555556>, <4 x float> %broadcast.splat118)
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> <float f0x3DAAAAAB, float 1.250000e-01, float f0x3E2AAAAB, float f0x3E555556>, <4 x float> %broadcast.splat120)
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> <float f0x3DAAAAAB, float 1.250000e-01, float f0x3E2AAAAB, float f0x3E555556>, <4 x float> %broadcast.splat122) ; 4 uses
  %7 = shufflevector <4 x float> %i.ar, <4 x float> %i.av, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aw = shufflevector <4 x float> %i.z, <4 x float> %i.av, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ax = fsub <4 x float> %i.av, %i.aw           ; 4 uses
  %i.ay = fsub <4 x float> %i.ar, %i.as           ; 4 uses
  %8 = shufflevector <4 x float> %broadcast.splatinsert123, <4 x float> poison, <8 x i32> zeroinitializer
  %9 = shufflevector <4 x float> %i.ay, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %10 = shufflevector <4 x float> %i.ay, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %11 = shufflevector <4 x float> %i.ax, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %12 = shufflevector <4 x float> %i.ax, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %13 = fmul <8 x float> %11, %12
  %14 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %9, <8 x float> %10, <8 x float> %13)
  %15 = tail call <8 x float> @llvm.sqrt.v8f32(<8 x float> %14)
  %16 = fdiv <8 x float> %8, %15                  ; 2 uses
  %17 = fneg <4 x float> %i.ay
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> %17, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %18 = fneg <4 x float> %i.ax
  %i.ba = shufflevector <4 x float> %18, <4 x float> %i.ay, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %20 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.az, <8 x float> %16, <8 x float> %7)
  %i.bb = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ba, <8 x float> %16, <8 x float> %7)
  %interleaved.vec = shufflevector <8 x float> %20, <8 x float> %i.bb, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %19, align 16
  %i.bc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> <float 2.500000e-01, float f0x3E955556, float f0x3EAAAAAB, float 3.750000e-01>, <4 x float> %broadcast.splat110)
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> <float 2.500000e-01, float f0x3E955556, float f0x3EAAAAAB, float 3.750000e-01>, <4 x float> %broadcast.splat112)
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> <float 2.500000e-01, float f0x3E955556, float f0x3EAAAAAB, float 3.750000e-01>, <4 x float> %broadcast.splat114) ; 4 uses
  %i.bf = shufflevector <4 x float> %i.ar, <4 x float> %i.be, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat116, <4 x float> <float 2.500000e-01, float f0x3E955556, float f0x3EAAAAAB, float 3.750000e-01>, <4 x float> %broadcast.splat118)
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> <float 2.500000e-01, float f0x3E955556, float f0x3EAAAAAB, float 3.750000e-01>, <4 x float> %broadcast.splat120)
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> <float 2.500000e-01, float f0x3E955556, float f0x3EAAAAAB, float 3.750000e-01>, <4 x float> %broadcast.splat122) ; 4 uses
  %21 = shufflevector <4 x float> %i.be, <4 x float> %i.bi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bj = shufflevector <4 x float> %i.av, <4 x float> %i.bi, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bk = fsub <4 x float> %i.bi, %i.bj           ; 4 uses
  %i.bl = fsub <4 x float> %i.be, %i.bf           ; 4 uses
  %22 = shufflevector <4 x float> %broadcast.splatinsert123, <4 x float> poison, <8 x i32> zeroinitializer
  %23 = shufflevector <4 x float> %i.bl, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %24 = shufflevector <4 x float> %i.bl, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %25 = shufflevector <4 x float> %i.bk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %26 = shufflevector <4 x float> %i.bk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %27 = fmul <8 x float> %25, %26
  %28 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %23, <8 x float> %24, <8 x float> %27)
  %29 = tail call <8 x float> @llvm.sqrt.v8f32(<8 x float> %28)
  %30 = fdiv <8 x float> %22, %29                 ; 2 uses
  %31 = fneg <4 x float> %i.bl
  %i.bm = shufflevector <4 x float> %i.bk, <4 x float> %31, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %32 = fneg <4 x float> %i.bk
  %i.bn = shufflevector <4 x float> %32, <4 x float> %i.bl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %33 = getelementptr inbounds nuw i8, ptr %6, i64 96
  %34 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.bm, <8 x float> %30, <8 x float> %21)
  %i.bo = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.bn, <8 x float> %30, <8 x float> %21)
  %interleaved.vec.1 = shufflevector <8 x float> %34, <8 x float> %i.bo, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec.1, ptr %33, align 16
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> <float f0x3ED55556, float f0x3EEAAAAB, float 5.000000e-01, float f0x3F0AAAAB>, <4 x float> %broadcast.splat110)
  %i.bq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> <float f0x3ED55556, float f0x3EEAAAAB, float 5.000000e-01, float f0x3F0AAAAB>, <4 x float> %broadcast.splat112)
  %i.br = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> <float f0x3ED55556, float f0x3EEAAAAB, float 5.000000e-01, float f0x3F0AAAAB>, <4 x float> %broadcast.splat114) ; 4 uses
  %i.bs = shufflevector <4 x float> %i.be, <4 x float> %i.br, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat116, <4 x float> <float f0x3ED55556, float f0x3EEAAAAB, float 5.000000e-01, float f0x3F0AAAAB>, <4 x float> %broadcast.splat118)
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> <float f0x3ED55556, float f0x3EEAAAAB, float 5.000000e-01, float f0x3F0AAAAB>, <4 x float> %broadcast.splat120)
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> <float f0x3ED55556, float f0x3EEAAAAB, float 5.000000e-01, float f0x3F0AAAAB>, <4 x float> %broadcast.splat122) ; 4 uses
  %35 = shufflevector <4 x float> %i.br, <4 x float> %i.bv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bw = shufflevector <4 x float> %i.bi, <4 x float> %i.bv, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bx = fsub <4 x float> %i.bv, %i.bw           ; 4 uses
  %i.by = fsub <4 x float> %i.br, %i.bs           ; 4 uses
  %36 = shufflevector <4 x float> %broadcast.splatinsert123, <4 x float> poison, <8 x i32> zeroinitializer
  %37 = shufflevector <4 x float> %i.by, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %38 = shufflevector <4 x float> %i.by, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %39 = shufflevector <4 x float> %i.bx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %40 = shufflevector <4 x float> %i.bx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %41 = fmul <8 x float> %39, %40
  %42 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %37, <8 x float> %38, <8 x float> %41)
  %43 = tail call <8 x float> @llvm.sqrt.v8f32(<8 x float> %42)
  %44 = fdiv <8 x float> %36, %43                 ; 2 uses
  %45 = fneg <4 x float> %i.by
  %i.bz = shufflevector <4 x float> %i.bx, <4 x float> %45, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %46 = fneg <4 x float> %i.bx
  %i.ca = shufflevector <4 x float> %46, <4 x float> %i.by, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %47 = getelementptr inbounds nuw i8, ptr %6, i64 160
  %48 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.bz, <8 x float> %44, <8 x float> %35)
  %i.cb = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ca, <8 x float> %44, <8 x float> %35)
  %interleaved.vec.2 = shufflevector <8 x float> %48, <8 x float> %i.cb, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec.2, ptr %47, align 16
  %i.cc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> <float f0x3F155556, float 6.250000e-01, float f0x3F2AAAAB, float f0x3F355556>, <4 x float> %broadcast.splat110)
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> <float f0x3F155556, float 6.250000e-01, float f0x3F2AAAAB, float f0x3F355556>, <4 x float> %broadcast.splat112)
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> <float f0x3F155556, float 6.250000e-01, float f0x3F2AAAAB, float f0x3F355556>, <4 x float> %broadcast.splat114) ; 4 uses
  %i.cf = shufflevector <4 x float> %i.br, <4 x float> %i.ce, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat116, <4 x float> <float f0x3F155556, float 6.250000e-01, float f0x3F2AAAAB, float f0x3F355556>, <4 x float> %broadcast.splat118)
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> <float f0x3F155556, float 6.250000e-01, float f0x3F2AAAAB, float f0x3F355556>, <4 x float> %broadcast.splat120)
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> <float f0x3F155556, float 6.250000e-01, float f0x3F2AAAAB, float f0x3F355556>, <4 x float> %broadcast.splat122) ; 4 uses
  %49 = shufflevector <4 x float> %i.ce, <4 x float> %i.ci, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cj = shufflevector <4 x float> %i.bv, <4 x float> %i.ci, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ck = fsub <4 x float> %i.ci, %i.cj           ; 4 uses
  %i.cl = fsub <4 x float> %i.ce, %i.cf           ; 4 uses
  %50 = shufflevector <4 x float> %broadcast.splatinsert123, <4 x float> poison, <8 x i32> zeroinitializer
  %51 = shufflevector <4 x float> %i.cl, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %52 = shufflevector <4 x float> %i.cl, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %53 = shufflevector <4 x float> %i.ck, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %54 = shufflevector <4 x float> %i.ck, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %55 = fmul <8 x float> %53, %54
  %56 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %51, <8 x float> %52, <8 x float> %55)
  %57 = tail call <8 x float> @llvm.sqrt.v8f32(<8 x float> %56)
  %58 = fdiv <8 x float> %50, %57                 ; 2 uses
  %59 = fneg <4 x float> %i.cl
  %i.cm = shufflevector <4 x float> %i.ck, <4 x float> %59, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %60 = fneg <4 x float> %i.ck
  %i.cn = shufflevector <4 x float> %60, <4 x float> %i.cl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %61 = getelementptr inbounds nuw i8, ptr %6, i64 224
  %62 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cm, <8 x float> %58, <8 x float> %49)
  %i.co = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cn, <8 x float> %58, <8 x float> %49)
  %interleaved.vec.3 = shufflevector <8 x float> %62, <8 x float> %i.co, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec.3, ptr %61, align 16
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> <float 7.500000e-01, float f0x3F4AAAAB, float f0x3F555556, float 8.750000e-01>, <4 x float> %broadcast.splat110)
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> <float 7.500000e-01, float f0x3F4AAAAB, float f0x3F555556, float 8.750000e-01>, <4 x float> %broadcast.splat112)
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> <float 7.500000e-01, float f0x3F4AAAAB, float f0x3F555556, float 8.750000e-01>, <4 x float> %broadcast.splat114) ; 4 uses
  %i.cs = shufflevector <4 x float> %i.ce, <4 x float> %i.cr, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat116, <4 x float> <float 7.500000e-01, float f0x3F4AAAAB, float f0x3F555556, float 8.750000e-01>, <4 x float> %broadcast.splat118)
  %i.cu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> <float 7.500000e-01, float f0x3F4AAAAB, float f0x3F555556, float 8.750000e-01>, <4 x float> %broadcast.splat120)
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> <float 7.500000e-01, float f0x3F4AAAAB, float f0x3F555556, float 8.750000e-01>, <4 x float> %broadcast.splat122) ; 4 uses
  %63 = shufflevector <4 x float> %i.cr, <4 x float> %i.cv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cw = shufflevector <4 x float> %i.ci, <4 x float> %i.cv, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cx = fsub <4 x float> %i.cv, %i.cw           ; 4 uses
  %i.cy = fsub <4 x float> %i.cr, %i.cs           ; 4 uses
  %64 = shufflevector <4 x float> %broadcast.splatinsert123, <4 x float> poison, <8 x i32> zeroinitializer
  %65 = shufflevector <4 x float> %i.cy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %66 = shufflevector <4 x float> %i.cy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %67 = shufflevector <4 x float> %i.cx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %68 = shufflevector <4 x float> %i.cx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %69 = fmul <8 x float> %67, %68
  %70 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %65, <8 x float> %66, <8 x float> %69)
  %71 = tail call <8 x float> @llvm.sqrt.v8f32(<8 x float> %70)
  %72 = fdiv <8 x float> %64, %71                 ; 2 uses
  %73 = fneg <4 x float> %i.cy
  %i.cz = shufflevector <4 x float> %i.cx, <4 x float> %73, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %74 = fneg <4 x float> %i.cx
  %i.da = shufflevector <4 x float> %74, <4 x float> %i.cy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %75 = getelementptr inbounds nuw i8, ptr %6, i64 288
  %76 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cz, <8 x float> %72, <8 x float> %63)
  %i.db = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.da, <8 x float> %72, <8 x float> %63)
  %interleaved.vec.4 = shufflevector <8 x float> %76, <8 x float> %i.db, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec.4, ptr %75, align 16
  %i.dc = shufflevector <4 x float> %i.cr, <4 x float> %i.cv, <2 x i32> <i32 3, i32 7>
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 352
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> splat (float f0x3F6AAAAB), <2 x float> %i.j)
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> splat (float f0x3F6AAAAB), <2 x float> %i.m)
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> splat (float f0x3F6AAAAB), <2 x float> %i.p) ; 3 uses
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.di = fsub <2 x float> %i.dg, %i.dc           ; 5 uses
  %foldExtExtBinop131 = fmul <2 x float> %i.di, %i.di
  %i.dj = extractelement <2 x float> %foldExtExtBinop131, i64 1
  %i.dk = extractelement <2 x float> %i.di, i64 0 ; 2 uses
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.dj)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.dl)
  %i.dm = fneg <2 x float> %i.di                  ; 2 uses
  %i.dn = fdiv float %i.q, %sqrt
  %i.do = shufflevector <2 x float> %i.dm, <2 x float> %i.di, <4 x i32> <i32 3, i32 0, i32 poison, i32 2>
  %i.dp = insertelement <4 x float> %i.do, float %i.dn, i64 2 ; 2 uses
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> %i.dm, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %i.dr, <4 x float> %i.dh)
  store <4 x float> %i.ds, ptr %i.dd, align 16
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 368
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> splat (float f0x3F755556), <2 x float> %i.j)
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> splat (float f0x3F755556), <2 x float> %i.m)
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> splat (float f0x3F755556), <2 x float> %i.p) ; 3 uses
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dy = fsub <2 x float> %i.dw, %i.dg           ; 5 uses
  %foldExtExtBinop131.1 = fmul <2 x float> %i.dy, %i.dy
  %i.dz = extractelement <2 x float> %foldExtExtBinop131.1, i64 1
  %i.ea = extractelement <2 x float> %i.dy, i64 0 ; 2 uses
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.ea, float %i.dz)
  %sqrt.1 = tail call float @llvm.sqrt.f32(float %i.eb)
  %i.ec = fneg <2 x float> %i.dy                  ; 2 uses
  %i.ed = fdiv float %i.q, %sqrt.1
  %i.ee = shufflevector <2 x float> %i.ec, <2 x float> %i.dy, <4 x i32> <i32 3, i32 0, i32 poison, i32 2>
  %i.ef = insertelement <4 x float> %i.ee, float %i.ed, i64 2 ; 2 uses
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> %i.ec, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ef, <4 x float> %i.eh, <4 x float> %i.dx)
  store <4 x float> %i.ei, ptr %i.dt, align 16
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 384
  %i.ek = fadd <2 x float> %i.f, %i.j
  %i.el = fadd <2 x float> %i.ek, %i.m
  %i.em = fadd <2 x float> %i.el, %i.p            ; 2 uses
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.eo = fsub <2 x float> %i.em, %i.dw           ; 5 uses
  %foldExtExtBinop131.2 = fmul <2 x float> %i.eo, %i.eo
  %i.ep = extractelement <2 x float> %foldExtExtBinop131.2, i64 1
  %i.eq = extractelement <2 x float> %i.eo, i64 0 ; 2 uses
  %i.er = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.eq, float %i.ep)
  %sqrt.2 = tail call float @llvm.sqrt.f32(float %i.er)
  %i.es = fneg <2 x float> %i.eo                  ; 2 uses
  %i.et = fdiv float %i.q, %sqrt.2
  %i.eu = shufflevector <2 x float> %i.es, <2 x float> %i.eo, <4 x i32> <i32 3, i32 0, i32 poison, i32 2>
  %i.ev = insertelement <4 x float> %i.eu, float %i.et, i64 2 ; 2 uses
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> %i.es, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> %i.ex, <4 x float> %i.en)
  store <4 x float> %i.ey, ptr %i.ej, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %6, i32 noundef 50, i32 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawSplineSegmentCatmullRom(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, float noundef %4, i32 %5) local_unnamed_addr #4 {
.peel.next80:
  %6 = alloca [50 x %struct.Vector2], align 16    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %7, i8 0, i64 368, i1 false)
  %8 = fmul float %4, 5.000000e-01                ; 5 uses
  %9 = fmul <2 x float> %1, splat (float 2.000000e+00)
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> zeroinitializer, <2 x float> %9)
  %11 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> zeroinitializer, <2 x float> %10)
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> zeroinitializer, <2 x float> %11)
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %14 = fmul <4 x float> %13, splat (float 5.000000e-01) ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %16 = fmul <2 x float> %1, splat (float f0x3FFEEAAB)
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> splat (float f0xBD1CBDA1), <2 x float> %16)
  %18 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float 4.839410e-02), <2 x float> %17)
  %19 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> splat (float f0xBADA12F8), <2 x float> %18)
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %21 = fmul <4 x float> %20, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop = fsub <4 x float> %21, %14    ; 3 uses
  %22 = extractelement <4 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %foldExtExtBinop117 = fsub <4 x float> %21, %14 ; 3 uses
  %23 = extractelement <4 x float> %foldExtExtBinop117, i64 0 ; 2 uses
  %24 = fmul float %22, %22
  %25 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %24)
  %sqrt.peel81 = tail call float @llvm.sqrt.f32(float %25)
  %26 = fdiv float %8, %sqrt.peel81
  %27 = shufflevector <4 x float> %foldExtExtBinop, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %28 = fneg <4 x float> %foldExtExtBinop117
  %29 = shufflevector <4 x float> %27, <4 x float> %28, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %30 = insertelement <4 x float> %29, float %26, i64 2 ; 2 uses
  %31 = shufflevector <4 x float> %30, <4 x float> %foldExtExtBinop117, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %32 = fneg <4 x float> %foldExtExtBinop
  %33 = shufflevector <4 x float> %30, <4 x float> %32, <4 x i32> <i32 2, i32 2, i32 5, i32 2> ; 2 uses
  %34 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %31, <4 x float> %33, <4 x float> %14)
  store <4 x float> %34, ptr %6, align 16
  %35 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %31, <4 x float> %33, <4 x float> %21)
  store <4 x float> %35, ptr %15, align 16
  %broadcast.splat = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat98 = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat100 = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat102 = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat104 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat106 = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat108 = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat110 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert111 = insertelement <4 x float> poison, float %8, i64 0
  %36 = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %37 = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %38 = shufflevector <4 x float> %broadcast.splatinsert111, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.peel.next80
  %index = phi i64 [ 0, %.peel.next80 ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x float> [ %36, %.peel.next80 ], [ %66, %vector.body ]
  %vector.recur114 = phi <4 x float> [ %37, %.peel.next80 ], [ %72, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %.peel.next80 ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %39 = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %40 = fmul nnan <4 x float> %39, splat (float f0x3D2AAAAB) ; 20 uses
  %41 = fneg <4 x float> %40
  %42 = fmul nnan <4 x float> %40, %41
  %43 = fmul nnan <4 x float> %40, splat (float 2.000000e+00)
  %44 = fmul <4 x float> %40, %43
  %45 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %42, <4 x float> %40, <4 x float> %44)
  %46 = fsub <4 x float> %45, %40                 ; 2 uses
  %47 = fmul nnan <4 x float> %40, splat (float 3.000000e+00)
  %48 = fmul <4 x float> %40, %47
  %49 = fmul nnan <4 x float> %40, splat (float -5.000000e+00)
  %50 = fmul <4 x float> %40, %49
  %51 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %48, <4 x float> %40, <4 x float> %50)
  %52 = fadd <4 x float> %51, splat (float 2.000000e+00) ; 2 uses
  %53 = fmul nnan <4 x float> %40, splat (float -3.000000e+00)
  %54 = fmul <4 x float> %40, %53
  %55 = fmul nnan <4 x float> %40, splat (float 4.000000e+00)
  %56 = fmul <4 x float> %40, %55
  %57 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %54, <4 x float> %40, <4 x float> %56)
  %58 = fadd <4 x float> %40, %57                 ; 2 uses
  %59 = fmul nnan <4 x float> %40, %40            ; 2 uses
  %60 = fneg <4 x float> %59
  %61 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %59, <4 x float> %40, <4 x float> %60) ; 2 uses
  %62 = fmul <4 x float> %broadcast.splat100, %52
  %63 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %46, <4 x float> %62)
  %64 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat102, <4 x float> %58, <4 x float> %63)
  %65 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat104, <4 x float> %61, <4 x float> %64)
  %66 = fmul <4 x float> %65, splat (float 5.000000e-01) ; 5 uses
  %67 = shufflevector <4 x float> %vector.recur, <4 x float> %66, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %68 = fmul <4 x float> %broadcast.splat106, %52
  %69 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat98, <4 x float> %46, <4 x float> %68)
  %70 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat108, <4 x float> %58, <4 x float> %69)
  %71 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat110, <4 x float> %61, <4 x float> %70)
  %72 = fmul <4 x float> %71, splat (float 5.000000e-01) ; 5 uses
  %73 = shufflevector <4 x float> %66, <4 x float> %72, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %74 = shufflevector <4 x float> %vector.recur114, <4 x float> %72, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %75 = fsub <4 x float> %72, %74                 ; 4 uses
  %76 = fsub <4 x float> %66, %67                 ; 4 uses
  %77 = shufflevector <4 x float> %76, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %78 = shufflevector <4 x float> %76, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %79 = shufflevector <4 x float> %75, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %80 = shufflevector <4 x float> %75, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %81 = fmul <8 x float> %79, %80
  %82 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %77, <8 x float> %78, <8 x float> %81)
  %83 = tail call <8 x float> @llvm.sqrt.v8f32(<8 x float> %82)
  %84 = fdiv <8 x float> %38, %83                 ; 2 uses
  %85 = fneg <4 x float> %76
  %86 = shufflevector <4 x float> %75, <4 x float> %85, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %87 = fneg <4 x float> %75
  %88 = shufflevector <4 x float> %87, <4 x float> %76, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %89 = shl i64 %index, 4
  %90 = getelementptr inbounds nuw i8, ptr %6, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %92 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %86, <8 x float> %84, <8 x float> %73)
  %93 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %88, <8 x float> %84, <8 x float> %73)
  %interleaved.vec = shufflevector <8 x float> %92, <8 x float> %93, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %91, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %94 = icmp eq i64 %index.next, 20
  br i1 %94, label %.peel.next80.a, label %vector.body, !llvm.loop !9

.peel.next80.a:                                   ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x float> %66, i64 3
  %vector.recur.extract115 = extractelement <4 x float> %72, i64 3
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 352
  %i.b = fmul <2 x float> %1, splat (float f0x3DDFFFE0)
  %i.c = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> splat (float f0xBBD09800), <2 x float> %i.b)
  %i.d = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float f0x3FFBC71C), <2 x float> %i.c)
  %i.e = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> splat (float f0xBD8F684A), <2 x float> %i.d)
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.g = fmul <4 x float> %i.f, splat (float 5.000000e-01) ; 3 uses
  %i.h = extractelement <4 x float> %i.g, i64 1   ; 2 uses
  %i.i = fsub float %i.h, %vector.recur.extract115 ; 4 uses
  %i.j = extractelement <4 x float> %i.g, i64 0   ; 2 uses
  %i.k = fsub float %i.j, %vector.recur.extract   ; 4 uses
  %i.l = fmul float %i.i, %i.i
  %i.m = tail call float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.l)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.m)
  %.pre95 = fneg float %i.k
  %.pre93 = fneg float %i.i
  %i.n = fdiv float %8, %sqrt
  %i.o = insertelement <4 x float> poison, float %i.i, i64 0
  %i.p = insertelement <4 x float> %i.o, float %.pre95, i64 1
  %i.q = insertelement <4 x float> %i.p, float %i.n, i64 2 ; 2 uses
  %i.r = insertelement <4 x float> %i.q, float %i.k, i64 3
  %i.s = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.t = insertelement <2 x float> %i.s, float %.pre93, i64 1
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.v = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.u, <4 x float> %i.g)
  store <4 x float> %i.v, ptr %i.a, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 368
  %i.x = fmul <2 x float> %1, splat (float f0x3D4638C0)
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> splat (float f0xBADA1200), <2 x float> %i.x)
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float f0x3FFEEAAB), <2 x float> %i.y)
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> splat (float f0xBD1CBD98), <2 x float> %i.z)
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ac = fmul <4 x float> %i.ab, splat (float 5.000000e-01) ; 3 uses
  %i.ad = extractelement <4 x float> %i.ac, i64 1 ; 2 uses
  %i.ae = fsub float %i.ad, %i.h                  ; 4 uses
  %i.af = extractelement <4 x float> %i.ac, i64 0 ; 2 uses
  %i.ag = fsub float %i.af, %i.j                  ; 4 uses
  %i.ah = fmul float %i.ae, %i.ae
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.ah)
  %sqrt.1 = tail call float @llvm.sqrt.f32(float %i.ai)
  %.pre95.1 = fneg float %i.ag
  %.pre93.1 = fneg float %i.ae
  %i.aj = fdiv float %8, %sqrt.1
  %i.ak = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.al = insertelement <4 x float> %i.ak, float %.pre95.1, i64 1
  %i.am = insertelement <4 x float> %i.al, float %i.aj, i64 2 ; 2 uses
  %i.an = insertelement <4 x float> %i.am, float %i.ag, i64 3
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ap = insertelement <2 x float> %i.ao, float %.pre93.1, i64 1
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.aq, <4 x float> %i.ac)
  store <4 x float> %i.ar, ptr %i.w, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 384
  %i.at = fmul <2 x float> %1, zeroinitializer
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> zeroinitializer, <2 x float> %i.at)
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float 2.000000e+00), <2 x float> %i.au)
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> zeroinitializer, <2 x float> %i.av)
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ay = fmul <4 x float> %i.ax, splat (float 5.000000e-01) ; 3 uses
  %i.az = extractelement <4 x float> %i.ay, i64 1
  %i.ba = fsub float %i.az, %i.ad                 ; 4 uses
  %i.bb = extractelement <4 x float> %i.ay, i64 0
  %i.bc = fsub float %i.bb, %i.af                 ; 4 uses
  %i.bd = fmul float %i.ba, %i.ba
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.bd)
  %sqrt.2 = tail call float @llvm.sqrt.f32(float %i.be)
  %.pre95.2 = fneg float %i.bc
  %.pre93.2 = fneg float %i.ba
  %i.bf = fdiv float %8, %sqrt.2
  %i.bg = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %.pre95.2, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.bf, i64 2 ; 2 uses
  %i.bj = insertelement <4 x float> %i.bi, float %i.bc, i64 3
  %i.bk = shufflevector <4 x float> %i.bi, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bl = insertelement <2 x float> %i.bk, float %.pre93.2, i64 1
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %i.bm, <4 x float> %i.ay)
  store <4 x float> %i.bn, ptr %i.as, align 16
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
end_hunk_0
begin_hunk_1_@CheckCollisionLines:bb.a
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

bb.f:                                             ; preds = %bb.b
  %i.w = fcmp ogt float %i.d, 0.000000e+00
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = fcmp ole float %.sroa.020.4.vec.extract, %.sroa.033.4.vec.extract
  %i.y = fcmp ole float %.sroa.033.4.vec.extract, %.sroa.0.4.vec.extract
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = fcmp ole float %.sroa.0.4.vec.extract, %.sroa.033.4.vec.extract
  %i.ab = fcmp ole float %.sroa.033.4.vec.extract, %.sroa.020.4.vec.extract
  %i.ac = select i1 %i.aa, i1 %i.ab, i1 false
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.e, %bb.a
  %.0.shrunk = phi i1 [ false, %bb.a ], [ %i.v, %bb.e ], [ %i.s, %bb.d ], [ %i.z, %bb.g ], [ %i.ac, %bb.h ]
  ret i1 %.0.shrunk
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionCircleLine(<2 x float> %0, float noundef %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #10 {
bb.a:
  %foldExtExtBinop = fsub <2 x float> %2, %3      ; 3 uses
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop48 = fsub <2 x float> %2, %3    ; 2 uses
  %i.b = extractelement <2 x float> %foldExtExtBinop48, i64 1 ; 2 uses
  %i.c = tail call float @llvm.fabs.f32(float %i.a)
  %i.d = tail call float @llvm.fabs.f32(float %i.b)
  %i.e = fadd float %i.c, %i.d
  %i.f = fcmp ugt float %i.e, f0x34000000
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %foldExtExtBinop50 = fsub <2 x float> %0, %2
  %i.g = extractelement <2 x float> %foldExtExtBinop50, i64 0 ; 2 uses
  %foldExtExtBinop52 = fsub <2 x float> %0, %2    ; 2 uses
  %foldExtExtBinop54 = fmul <2 x float> %foldExtExtBinop52, %foldExtExtBinop52
  %i.h = extractelement <2 x float> %foldExtExtBinop54, i64 1
  %i.i = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.h)
  %i.j = fadd float %1, 0.000000e+00              ; 2 uses
  %i.k = fmul float %i.j, %i.j
  %i.l = fcmp ole float %i.i, %i.k
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.025.4.vec.extract = extractelement <2 x float> %2, i64 1
  %.sroa.025.0.vec.extract = extractelement <2 x float> %2, i64 0
  %.sroa.039.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.039.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.m = shufflevector <2 x float> %0, <2 x float> %3, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.n = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.o = fsub <4 x float> %i.m, %i.n              ; 4 uses
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.q = shufflevector <2 x float> %i.p, <2 x float> %foldExtExtBinop48, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.r = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.s = shufflevector <2 x float> %i.r, <2 x float> %i.q, <2 x i32> <i32 0, i32 3>
  %i.t = fmul <2 x float> %i.q, %i.s
  %i.u = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.v = shufflevector <2 x float> %i.u, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.w = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.x = shufflevector <4 x float> %i.w, <4 x float> %i.o, <2 x i32> <i32 5, i32 1>
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.x, <2 x float> %i.t) ; 2 uses
  %i.z = extractelement <2 x float> %i.y, i64 0
  %i.aa = extractelement <2 x float> %i.y, i64 1
  %i.ab = fdiv float %i.z, %i.aa                  ; 3 uses
  %i.ac = fcmp ogt float %i.ab, 1.000000e+00
  %i.ad = fcmp olt float %i.ab, 0.000000e+00
  %.neg = fneg float %i.ab
  %spec.store.select.neg = select i1 %i.ad, float -0.000000e+00, float %.neg
  %i.ae = select i1 %i.ac, float -1.000000e+00, float %spec.store.select.neg ; 2 uses
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.a, float %.sroa.025.0.vec.extract)
  %i.ag = fsub float %i.af, %.sroa.039.0.vec.extract ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.b, float %.sroa.025.4.vec.extract)
  %i.ai = fsub float %i.ah, %.sroa.039.4.vec.extract ; 2 uses
  %i.aj = fmul float %i.ai, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.aj)
  %i.al = fmul float %1, %1
  %i.am = fcmp ole float %i.ak, %i.al
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i1 [ %i.l, %bb.b ], [ %i.am, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @GetCollisionRec(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #10 {
bb.a:
  %i.a = fcmp ogt <2 x float> %0, %2
  %i.b = select <2 x i1> %i.a, <2 x float> %0, <2 x float> %2 ; 4 uses
  %i.c = fadd <2 x float> %0, %1                  ; 2 uses
  %i.d = fadd <2 x float> %2, %3                  ; 2 uses
  %i.e = fcmp olt <2 x float> %i.c, %i.d
  %i.f = select <2 x i1> %i.e, <2 x float> %i.c, <2 x float> %i.d ; 3 uses
  %i.g = extractelement <2 x float> %i.f, i64 0
  %i.h = extractelement <2 x float> %i.b, i64 0
  %i.i = fcmp olt float %i.h, %i.g
  %i.j = fcmp olt <2 x float> %i.b, %i.f
  %i.k = extractelement <2 x i1> %i.j, i64 1
  %or.cond = select i1 %i.i, i1 %i.k, i1 false    ; 2 uses
  %i.l = fsub <2 x float> %i.f, %i.b
  %.sroa.036.0 = select i1 %or.cond, <2 x float> %i.b, <2 x float> zeroinitializer
  %.sroa.4.0 = select i1 %or.cond, <2 x float> %i.l, <2 x float> zeroinitializer
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.036.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.4.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!"llvm.loop.peeled.count", i32 1}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.peeled.count", i32 2}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_1
