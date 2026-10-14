Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/camera?download=true
inline.NumInlined: 1396
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN4pbrt6detail8DispatchIRZNKS_6Filter6SampleENS_6Point2IfEEEUlT_E_NS_12FilterSampleENS_9BoxFilterENS_14GaussianFilterENS_14MitchellFilterENS_17LanczosSincFilterENS_14TriangleFilterEEET0_OS5_PKvi:bb.a
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !332
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !329
  %i.bj = sub nsw i32 %i.bi, %i.ba
  %i.bk = mul nsw i32 %i.bj, %i.be
  %i.bl = add nsw i32 %i.bb, %i.bk
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bm
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !136
  %i.bp = load float, ptr %i.a, align 4, !tbaa !136
  %i.bq = fdiv float %i.bo, %i.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.fca.0.insert.i.i.i43 = insertvalue { <2 x float>, float } poison, <2 x float> %i.ay, 0
  %.fca.1.insert.i.i.i44 = insertvalue { <2 x float>, float } %.fca.0.insert.i.i.i43, float %i.bq, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.br = tail call { <2 x float>, float } @_ZNK4pbrt14TriangleFilter6SampleENS_6Point2IfEE(ptr noundef nonnull align 4 dereferenceable(8) %1, <2 x float> %.sroa.03.0.copyload.i45)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.pn = phi { <2 x float>, float } [ %i.br, %bb.f ], [ %.fca.1.insert.i.i, %bb.b ], [ %.fca.1.insert.i.i.i, %bb.c ], [ %.fca.1.insert.i.i.i37, %bb.d ], [ %.fca.1.insert.i.i.i44, %bb.e ]
  ret { <2 x float>, float } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local <2 x float> @_ZNK4pbrt19PiecewiseConstant2D6SampleENS_6Point2IfEEPfPNS1_IiEE(ptr noundef nonnull align 8 dereferenceable(128) %0, <2 x float> %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %.sroa.022.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !336
  %i.c = shl i64 %i.b, 32
  %i.d = ashr exact i64 %i.c, 32                  ; 2 uses
  %i.e = add nsw i64 %i.d, -2                     ; 2 uses
  %i.f = icmp sgt i64 %i.d, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !337  ; 2 uses
  br i1 %i.f, label %.lr.ph.i.i, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %.fr.i.i, %.lr.ph.i.i ], [ 1, %bb.a ] ; 2 uses
  %.01516.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = lshr i64 %.01516.i.i, 1                  ; 3 uses
  %i.j = add i64 %i.i, %.017.i.i                  ; 2 uses
  %i.k = shl i64 %i.j, 32
  %i.l = ashr exact i64 %i.k, 30
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load float, ptr %i.m, align 4, !tbaa !136
  %i.o = fcmp ole float %i.n, %.sroa.022.4.vec.extract ; 2 uses
  %i.p = add i64 %i.j, 1
  %i.q = select i1 %i.o, i64 %i.p, i64 %.017.i.i
  %.fr.i.i = freeze i64 %i.q                      ; 3 uses
  %.neg.i.i = xor i64 %i.i, -1
  %i.r = add nsw i64 %.01516.i.i, %.neg.i.i
  %i.s = select i1 %i.o, i64 %i.r, i64 %i.i       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !333

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.u = add nsw i64 %.fr.i.i, -1
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.e)
  %.inv.i.i = icmp sgt i64 %.fr.i.i, 0
  %spec.select.i.i = select i1 %.inv.i.i, i64 %..i.i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i: ; preds = %bb.a, %._crit_edge.i.i
  %i.v = phi i64 [ %spec.select.i.i, %._crit_edge.i.i ], [ 0, %bb.a ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.v
  %i.x = load <2 x float>, ptr %i.w, align 4, !tbaa !136 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load float, ptr %i.y, align 8, !tbaa !339 ; 2 uses
  %i.aa = fcmp ogt float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.b, label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit

bb.b:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !337
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.v
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !136
  %i.af = fdiv float %i.ae, %i.z
  br label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit

_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit: ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i, %bb.b
  %i.ag = phi float [ %i.af, %bb.b ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !336
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ak = load <2 x float>, ptr %i.aj, align 8, !tbaa !136 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !343
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.am, i64 %i.v ; 6 uses
  %.sroa.022.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !336
  %i.aq = shl i64 %i.ap, 32
  %i.ar = ashr exact i64 %i.aq, 32                ; 2 uses
  %i.as = add nsw i64 %i.ar, -2                   ; 2 uses
  %i.at = icmp sgt i64 %i.ar, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !337 ; 2 uses
  br i1 %i.at, label %.lr.ph.i.i11, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9

.lr.ph.i.i11:                                     ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit, %.lr.ph.i.i11
  %.017.i.i12 = phi i64 [ %.fr.i.i14, %.lr.ph.i.i11 ], [ 1, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 2 uses
  %.01516.i.i13 = phi i64 [ %i.bg, %.lr.ph.i.i11 ], [ %i.as, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 2 uses
  %i.aw = lshr i64 %.01516.i.i13, 1               ; 3 uses
  %i.ax = add i64 %i.aw, %.017.i.i12              ; 2 uses
  %i.ay = shl i64 %i.ax, 32
  %i.az = ashr exact i64 %i.ay, 30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !136
  %i.bc = fcmp ole float %i.bb, %.sroa.022.0.vec.extract ; 2 uses
  %i.bd = add i64 %i.ax, 1
  %i.be = select i1 %i.bc, i64 %i.bd, i64 %.017.i.i12
  %.fr.i.i14 = freeze i64 %i.be                   ; 3 uses
  %.neg.i.i15 = xor i64 %i.aw, -1
  %i.bf = add nsw i64 %.01516.i.i13, %.neg.i.i15
  %i.bg = select i1 %i.bc, i64 %i.bf, i64 %i.aw   ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i11, label %._crit_edge.i.i16, !llvm.loop !333

._crit_edge.i.i16:                                ; preds = %.lr.ph.i.i11
  %i.bi = add nsw i64 %.fr.i.i14, -1
  %..i.i.i17 = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.as)
  %.inv.i.i18 = icmp sgt i64 %.fr.i.i14, 0
  %spec.select.i.i19 = select i1 %.inv.i.i18, i64 %..i.i.i17, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9: ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit, %._crit_edge.i.i16
  %i.bj = phi i64 [ %spec.select.i.i19, %._crit_edge.i.i16 ], [ 0, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bj
  %i.bl = load <2 x float>, ptr %i.bk, align 4, !tbaa !136 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !339 ; 2 uses
  %i.bo = fcmp ogt float %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.c, label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20

bb.c:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !337
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bj
  %i.bs = load float, ptr %i.br, align 4, !tbaa !136
  %i.bt = fdiv float %i.bs, %i.bn
  br label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20

_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20: ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9, %bb.c
  %i.bu = phi float [ %i.bt, %bb.c ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !336
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.by = load <2 x float>, ptr %i.bx, align 8, !tbaa !136 ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20
  %i.bz = fmul float %i.ag, %i.bu
  store float %i.bz, ptr %2, align 4, !tbaa !136
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20
  %.not8 = icmp eq ptr %3, null
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %i.v, 32
  %.sroa.0.0.insert.insert = or i64 %i.bj, %.sroa.5.0.insert.shift
  store i64 %.sroa.0.0.insert.insert, ptr %3, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ca = shufflevector <2 x float> %i.bl, <2 x float> %i.x, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cb = shufflevector <2 x float> %i.bl, <2 x float> %i.x, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.cc = fcmp ogt <2 x float> %i.ca, %i.cb
  %i.cd = fsub <2 x float> %1, %i.cb              ; 2 uses
  %i.ce = fsub <2 x float> %i.ca, %i.cb
  %i.cf = trunc i64 %i.bj to i32
  %i.cg = insertelement <2 x i32> poison, i32 %i.cf, i64 0
  %i.ch = trunc i64 %i.v to i32
  %i.ci = insertelement <2 x i32> %i.cg, i32 %i.ch, i64 1
  %i.cj = insertelement <2 x i64> poison, i64 %i.bw, i64 0
  %i.ck = insertelement <2 x i64> %i.cj, i64 %i.ai, i64 1
  %i.cl = uitofp <2 x i64> %i.ck to <2 x float>
  %i.cm = fdiv <2 x float> %i.cd, %i.ce
  %i.cn = select <2 x i1> %i.cc, <2 x float> %i.cm, <2 x float> %i.cd
  %i.co = uitofp <2 x i32> %i.ci to <2 x float>
  %i.cp = fadd <2 x float> %i.cn, %i.co
  %i.cq = fdiv <2 x float> %i.cp, %i.cl           ; 2 uses
  %i.cr = shufflevector <2 x float> %i.by, <2 x float> %i.ak, <2 x i32> <i32 1, i32 3>
  %i.cs = fmul <2 x float> %i.cq, %i.cr
  %i.ct = fsub <2 x float> splat (float 1.000000e+00), %i.cq
  %i.cu = shufflevector <2 x float> %i.by, <2 x float> %i.ak, <2 x i32> <i32 0, i32 2>
  %i.cv = fmul <2 x float> %i.cu, %i.ct
  %i.cw = fadd <2 x float> %i.cs, %i.cv
  ret <2 x float> %i.cw
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt14TriangleFilter6SampleENS_6Point2IfEE(ptr noundef nonnull align 4 dereferenceable(8) %0, <2 x float> %1) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %.sroa.0.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.a = load float, ptr %0, align 4, !tbaa !346  ; 3 uses
  %i.b = fcmp oeq float %.sroa.0.0.vec.extract, 1.000000e+00
  %spec.select.i = select i1 %i.b, float f0x3F7FFFFF, float %.sroa.0.0.vec.extract ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0.i.i = phi float [ %i.c, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.c = fadd float %.0.i.i, 5.000000e-01         ; 2 uses
  %i.d = fcmp ugt float %i.c, %spec.select.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %i.d, label %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit.i, label %bb.b, !llvm.loop !344

_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit.i: ; preds = %bb.b
  %i.e = fsub float %spec.select.i, %.0.i.i
  %2 = fmul float %i.e, 2.000000e+00              ; 2 uses
  %i.f = fcmp ogt float %2, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.f, float f0x3F7FFFFF, float %2 ; 7 uses
  %i.g = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit.i
  %i.h = fcmp oeq float %.sroa.speculated.i.i, 0.000000e+00
  br i1 %i.h, label %_ZN4pbrt12SampleLinearEfff.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = fsub float 1.000000e+00, %.sroa.speculated.i.i
  %i.j = fmul float %i.i, 0.000000e+00
  %i.k = fadd float %.sroa.speculated.i.i, %i.j
  %i.l = tail call noundef float @sqrtf(float noundef %i.k) #25
  %i.m = fadd float %i.l, 0.000000e+00
  %i.n = fdiv float %.sroa.speculated.i.i, %i.m   ; 2 uses
  %i.o = fcmp ogt float %i.n, f0x3F7FFFFF
  %.sroa.speculated.i4.i = select i1 %i.o, float f0x3F7FFFFF, float %i.n
  br label %_ZN4pbrt12SampleLinearEfff.exit.i

_ZN4pbrt12SampleLinearEfff.exit.i:                ; preds = %bb.d, %bb.c
  %.0.i5.i = phi float [ %.sroa.speculated.i4.i, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.p = fmul float %i.a, %.0.i5.i
  %i.q = fsub float %i.p, %i.a
  br label %_ZN4pbrt10SampleTentEff.exit

bb.e:                                             ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit.i
  %i.r = fsub float 1.000000e+00, %.sroa.speculated.i.i
  %i.s = fmul float %.sroa.speculated.i.i, 0.000000e+00
  %i.t = fadd float %i.r, %i.s
  %i.u = tail call noundef float @sqrtf(float noundef %i.t) #25
  %i.v = fadd float %i.u, 1.000000e+00
  %i.w = fdiv float %.sroa.speculated.i.i, %i.v   ; 2 uses
  %i.x = fcmp ogt float %i.w, f0x3F7FFFFF
  %.sroa.speculated.i6.i = select i1 %i.x, float f0x3F7FFFFF, float %i.w
  %i.y = fmul float %i.a, %.sroa.speculated.i6.i
  br label %_ZN4pbrt10SampleTentEff.exit

_ZN4pbrt10SampleTentEff.exit:                     ; preds = %_ZN4pbrt12SampleLinearEfff.exit.i, %bb.e
  %.0.i = phi float [ %i.q, %_ZN4pbrt12SampleLinearEfff.exit.i ], [ %i.y, %bb.e ]
  %.sroa.0.4.vec.extract = extractelement <2 x float> %1, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !347 ; 3 uses
  %i.ab = fcmp oeq float %.sroa.0.4.vec.extract, 1.000000e+00
  %spec.select.i1 = select i1 %i.ab, float f0x3F7FFFFF, float %.sroa.0.4.vec.extract ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4pbrt10SampleTentEff.exit
  %indvars.iv.i.i2 = phi i64 [ %indvars.iv.next.i.i4, %bb.f ], [ 0, %_ZN4pbrt10SampleTentEff.exit ] ; 2 uses
  %.0.i.i3 = phi float [ %i.ac, %bb.f ], [ 0.000000e+00, %_ZN4pbrt10SampleTentEff.exit ] ; 2 uses
  %i.ac = fadd float %.0.i.i3, 5.000000e-01       ; 2 uses
  %i.ad = fcmp ugt float %i.ac, %spec.select.i1
  %indvars.iv.next.i.i4 = add nuw nsw i64 %indvars.iv.i.i2, 1
  br i1 %i.ad, label %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit.i5, label %bb.f, !llvm.loop !344

_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit.i5: ; preds = %bb.f
  %i.ae = fsub float %spec.select.i1, %.0.i.i3
  %3 = fmul float %i.ae, 2.000000e+00             ; 2 uses
  %i.af = fcmp ogt float %3, f0x3F7FFFFF
  %.sroa.speculated.i.i6 = select i1 %i.af, float f0x3F7FFFFF, float %3 ; 7 uses
  %i.ag = icmp eq i64 %indvars.iv.i.i2, 0
  br i1 %i.ag, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit.i5
  %i.ah = fcmp oeq float %.sroa.speculated.i.i6, 0.000000e+00
  br i1 %i.ah, label %_ZN4pbrt12SampleLinearEfff.exit.i10, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = fsub float 1.000000e+00, %.sroa.speculated.i.i6
  %i.aj = fmul float %i.ai, 0.000000e+00
  %i.ak = fadd float %.sroa.speculated.i.i6, %i.aj
  %i.al = tail call noundef float @sqrtf(float noundef %i.ak) #25
  %i.am = fadd float %i.al, 0.000000e+00
  %i.an = fdiv float %.sroa.speculated.i.i6, %i.am ; 2 uses
  %i.ao = fcmp ogt float %i.an, f0x3F7FFFFF
  %.sroa.speculated.i4.i9 = select i1 %i.ao, float f0x3F7FFFFF, float %i.an
  br label %_ZN4pbrt12SampleLinearEfff.exit.i10

_ZN4pbrt12SampleLinearEfff.exit.i10:              ; preds = %bb.h, %bb.g
  %.0.i5.i11 = phi float [ %.sroa.speculated.i4.i9, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.ap = fmul float %i.aa, %.0.i5.i11
  %i.aq = fsub float %i.ap, %i.aa
  br label %_ZN4pbrt10SampleTentEff.exit12

bb.i:                                             ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit.i5
  %i.ar = fsub float 1.000000e+00, %.sroa.speculated.i.i6
  %i.as = fmul float %.sroa.speculated.i.i6, 0.000000e+00
  %i.at = fadd float %i.ar, %i.as
  %i.au = tail call noundef float @sqrtf(float noundef %i.at) #25
  %i.av = fadd float %i.au, 1.000000e+00
  %i.aw = fdiv float %.sroa.speculated.i.i6, %i.av ; 2 uses
  %i.ax = fcmp ogt float %i.aw, f0x3F7FFFFF
  %.sroa.speculated.i6.i7 = select i1 %i.ax, float f0x3F7FFFFF, float %i.aw
  %i.ay = fmul float %i.aa, %.sroa.speculated.i6.i7
  br label %_ZN4pbrt10SampleTentEff.exit12

_ZN4pbrt10SampleTentEff.exit12:                   ; preds = %_ZN4pbrt12SampleLinearEfff.exit.i10, %bb.i
  %.0.i8 = phi float [ %i.aq, %_ZN4pbrt12SampleLinearEfff.exit.i10 ], [ %i.ay, %bb.i ]
  %.sroa.013.0.vec.insert = insertelement <2 x float> poison, float %.0.i, i64 0
  %.sroa.013.4.vec.insert = insertelement <2 x float> %.sroa.013.0.vec.insert, float %.0.i8, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.013.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float 1.000000e+00, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #17

declare void @_ZNK4pbrt17PerspectiveCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind writable sret(%"class.pstd::optional.33") align 8, ptr noundef nonnull align 8 dereferenceable(1448), ptr noundef byval(%"struct.pbrt::CameraSample") align 8, ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZNK4pbrt18OrthographicCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind writable sret(%"class.pstd::optional.33") align 8, ptr noundef nonnull align 8 dereferenceable(1440), ptr noundef byval(%"struct.pbrt::CameraSample") align 8, ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZNK4pbrt15SphericalCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind writable sret(%"class.pstd::optional.33") align 8, ptr noundef nonnull align 8 dereferenceable(900), ptr noundef byval(%"struct.pbrt::CameraSample") align 8, ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZNK4pbrt15RealisticCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind writable sret(%"class.pstd::optional.33") align 8, ptr noundef nonnull align 8 dereferenceable(1128), ptr noundef byval(%"struct.pbrt::CameraSample") align 8, ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Point3fi") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(24) %2) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %3 = alloca %"class.pbrt::Point3.72", align 8   ; 2 uses
  %4 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %i.a = load float, ptr %2, align 4, !tbaa !148  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !147 ; 2 uses
  %i.d = fadd float %i.a, %i.c
  %i.e = fmul float %i.d, 5.000000e-01            ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !148 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !147 ; 2 uses
  %i.j = fadd float %i.g, %i.i
  %i.k = fmul float %i.j, 5.000000e-01            ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load float, ptr %i.l, align 4, !tbaa !148 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.o = load float, ptr %i.n, align 4, !tbaa !147 ; 3 uses
  %i.p = fadd float %i.m, %i.o
  %i.q = fmul float %i.p, 5.000000e-01            ; 4 uses
  %i.r = load float, ptr %1, align 4, !tbaa !136  ; 2 uses
  %i.s = fmul float %i.e, %i.r                    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !136 ; 2 uses
  %i.v = fmul float %i.k, %i.u                    ; 3 uses
  %i.w = fadd float %i.s, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !136 ; 2 uses
  %i.z = fmul float %i.q, %i.y                    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !136 ; 3 uses
  %i.ac = fadd float %i.z, %i.ab
  %i.ad = fadd float %i.w, %i.ac                  ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load float, ptr %i.ae, align 4, !tbaa !136 ; 2 uses
  %i.ag = fmul float %i.e, %i.af                  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !136 ; 2 uses
  %i.aj = fmul float %i.k, %i.ai                  ; 3 uses
  %i.ak = fadd float %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load float, ptr %i.al, align 4, !tbaa !136 ; 2 uses
  %i.an = fmul float %i.q, %i.am                  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !136 ; 3 uses
  %i.aq = fadd float %i.an, %i.ap
  %i.ar = fadd float %i.ak, %i.aq                 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = load float, ptr %i.as, align 4, !tbaa !136 ; 2 uses
  %i.au = fmul float %i.e, %i.at                  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aw = load float, ptr %i.av, align 4, !tbaa !136 ; 2 uses
  %i.ax = fmul float %i.k, %i.aw                  ; 3 uses
  %i.ay = fadd float %i.au, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load float, ptr %i.az, align 4, !tbaa !136 ; 2 uses
  %i.bb = fmul float %i.q, %i.ba                  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !136 ; 3 uses
  %i.be = fadd float %i.bb, %i.bd
  %i.bf = fadd float %i.ay, %i.be                 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !136
  %i.bi = fmul float %i.e, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !136
  %i.bl = fmul float %i.k, %i.bk
  %i.bm = fadd float %i.bi, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !136
  %i.bp = fmul float %i.q, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.br = load float, ptr %i.bq, align 4, !tbaa !136
  %i.bs = fadd float %i.bp, %i.br
  %i.bt = fadd float %i.bm, %i.bs                 ; 2 uses
  %i.bu = fsub float %i.c, %i.a                   ; 2 uses
  %i.bv = fcmp oeq float %i.bu, 0.000000e+00
  %i.bw = fsub float %i.i, %i.g                   ; 2 uses
  %i.bx = fcmp oeq float %i.bw, 0.000000e+00
  %or.cond = select i1 %i.bv, i1 %i.bx, i1 false
  %i.by = fsub float %i.o, %i.m
  %i.bz = fcmp oeq float %i.by, 0.000000e+00
  %or.cond347 = select i1 %or.cond, i1 %i.bz, i1 false
  br i1 %or.cond347, label %bb.b, label %_ZNK4pbrt8Point3fi7IsExactEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.ca = tail call noundef float @llvm.fabs.f32(float %i.s)
  %i.cb = tail call noundef float @llvm.fabs.f32(float %i.v)
  %i.cc = fadd float %i.ca, %i.cb
  %i.cd = tail call noundef float @llvm.fabs.f32(float %i.z)
  %i.ce = fadd float %i.cc, %i.cd
  %i.cf = tail call noundef float @llvm.fabs.f32(float %i.ab)
  %i.cg = fadd float %i.cf, %i.ce
  %i.ch = fmul float %i.cg, f0x34400002
  %.sroa.0289.0.vec.insert = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ci = tail call noundef float @llvm.fabs.f32(float %i.ag)
  %i.cj = tail call noundef float @llvm.fabs.f32(float %i.aj)
  %i.ck = fadd float %i.ci, %i.cj
  %i.cl = tail call noundef float @llvm.fabs.f32(float %i.an)
  %i.cm = fadd float %i.ck, %i.cl
  %i.cn = tail call noundef float @llvm.fabs.f32(float %i.ap)
  %i.co = fadd float %i.cn, %i.cm
  %i.cp = fmul float %i.co, f0x34400002
  %.sroa.0289.4.vec.insert297 = insertelement <2 x float> %.sroa.0289.0.vec.insert, float %i.cp, i64 1
  %i.cq = tail call noundef float @llvm.fabs.f32(float %i.au)
  %i.cr = tail call noundef float @llvm.fabs.f32(float %i.ax)
  %i.cs = fadd float %i.cq, %i.cr
  %i.ct = tail call noundef float @llvm.fabs.f32(float %i.bb)
  %i.cu = fadd float %i.cs, %i.ct
  %i.cv = tail call noundef float @llvm.fabs.f32(float %i.bd)
  %i.cw = fadd float %i.cv, %i.cu
  %i.cx = fmul float %i.cw, f0x34400002
  br label %bb.c

_ZNK4pbrt8Point3fi7IsExactEv.exit.thread:         ; preds = %bb.a
  %i.cy = fmul float %i.bu, 5.000000e-01          ; 3 uses
  %i.cz = fmul float %i.bw, 5.000000e-01          ; 3 uses
  %i.da = fsub float %i.o, %i.m
  %i.db = fmul float %i.da, 5.000000e-01          ; 3 uses
  %i.dc = tail call noundef float @llvm.fabs.f32(float %i.r)
  %i.dd = fmul float %i.cy, %i.dc
  %i.de = tail call noundef float @llvm.fabs.f32(float %i.u)
  %i.df = fmul float %i.de, %i.cz
  %i.dg = fadd float %i.dd, %i.df
  %i.dh = tail call noundef float @llvm.fabs.f32(float %i.y)
  %i.di = fmul float %i.dh, %i.db
  %i.dj = fadd float %i.dg, %i.di
  %i.dk = fmul float %i.dj, f0x3F800002
  %i.dl = tail call noundef float @llvm.fabs.f32(float %i.s)
  %i.dm = tail call noundef float @llvm.fabs.f32(float %i.v)
  %i.dn = fadd float %i.dl, %i.dm
  %i.do = tail call noundef float @llvm.fabs.f32(float %i.z)
  %i.dp = fadd float %i.dn, %i.do
  %i.dq = tail call noundef float @llvm.fabs.f32(float %i.ab)
  %i.dr = fadd float %i.dq, %i.dp
  %i.ds = fmul float %i.dr, f0x34400002
  %i.dt = fadd float %i.ds, %i.dk
  %.sroa.0289.0.vec.insert293 = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.du = tail call noundef float @llvm.fabs.f32(float %i.af)
  %i.dv = fmul float %i.cy, %i.du
  %i.dw = tail call noundef float @llvm.fabs.f32(float %i.ai)
  %i.dx = fmul float %i.dw, %i.cz
  %i.dy = fadd float %i.dv, %i.dx
end_hunk_0
