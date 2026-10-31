Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators?download=true
inline.NumInlined: 13518
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZNK4pbrt9SpotLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb:bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.07.4.vec.insert.i.i = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.05.4.vec.insert.i.i = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.0.vec.insert.i.i109 = insertelement <2 x float> poison, float %.sroa.495.0.i, i64 0
  %.sroa.0.4.vec.insert.i.i110 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i109, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.11.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.11.32..sroa_idx, i8 0, i64 36, i1 false)
  store <2 x float> %i.cr, ptr %0, align 8
  %.sroa.0112.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.cs, ptr %.sroa.0112.sroa.4.0..sroa_idx, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.aw, ptr %.sroa.4113.0..sroa_idx, align 8
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ax, ptr %.sroa.5114.0..sroa_idx, align 8
  %.sroa.6115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 1.000000e+00, ptr %.sroa.6115.0..sroa_idx, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %i.cx, align 8
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %.sroa.9.32..sroa_idx, align 8
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i110, ptr %.sroa.10.32..sroa_idx, align 8
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.cw, ptr %.sroa.13.32..sroa_idx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.cy, align 8, !tbaa !264
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %.sink, ptr %i.cz, align 8, !tbaa !371
  ret void
}

declare { <2 x float>, <2 x float> } @_ZNK4pbrt9SpotLight1IENS_7Vector3IfEENS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(172), <2 x float>, float, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8) local_unnamed_addr #1

declare void @_ZNK4pbrt16DiffuseAreaLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind writable sret(%"class.pstd::optional.126") align 8, ptr noundef nonnull align 8 dereferenceable(352), ptr noundef byval(%"class.pbrt::LightSampleContext") align 8, <2 x float>, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZNK4pbrt20UniformInfiniteLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind writable sret(%"class.pstd::optional.126") align 8, ptr noundef nonnull align 8 dereferenceable(180), ptr noundef byval(%"class.pbrt::LightSampleContext") align 8, <2 x float>, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local <2 x float> @_ZNK4pbrt19PiecewiseConstant2D6SampleENS_6Point2IfEEPfPNS1_IiEE(ptr noundef nonnull align 8 dereferenceable(128) %0, <2 x float> %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %.sroa.022.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !221
  %i.c = shl i64 %i.b, 32
  %i.d = ashr exact i64 %i.c, 32                  ; 2 uses
  %i.e = add nsw i64 %i.d, -2                     ; 2 uses
  %i.f = icmp sgt i64 %i.d, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !222  ; 2 uses
  br i1 %i.f, label %.lr.ph.i.i, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %.fr.i.i, %.lr.ph.i.i ], [ 1, %bb.a ] ; 2 uses
  %.01516.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = lshr i64 %.01516.i.i, 1                  ; 3 uses
  %i.j = add i64 %i.i, %.017.i.i                  ; 2 uses
  %i.k = shl i64 %i.j, 32
  %i.l = ashr exact i64 %i.k, 30
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load float, ptr %i.m, align 4, !tbaa !189
  %i.o = fcmp ole float %i.n, %.sroa.022.4.vec.extract ; 2 uses
  %i.p = add i64 %i.j, 1
  %i.q = select i1 %i.o, i64 %i.p, i64 %.017.i.i
  %.fr.i.i = freeze i64 %i.q                      ; 3 uses
  %.neg.i.i = xor i64 %i.i, -1
  %i.r = add nsw i64 %.01516.i.i, %.neg.i.i
  %i.s = select i1 %i.o, i64 %i.r, i64 %i.i       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1918

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.u = add nsw i64 %.fr.i.i, -1
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.e)
  %.inv.i.i = icmp sgt i64 %.fr.i.i, 0
  %spec.select.i.i = select i1 %.inv.i.i, i64 %..i.i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i: ; preds = %bb.a, %._crit_edge.i.i
  %i.v = phi i64 [ %spec.select.i.i, %._crit_edge.i.i ], [ 0, %bb.a ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.v
  %i.x = load <2 x float>, ptr %i.w, align 4, !tbaa !189 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load float, ptr %i.y, align 8, !tbaa !1919 ; 2 uses
  %i.aa = fcmp ogt float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.b, label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit

bb.b:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !222
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.v
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !189
  %i.af = fdiv float %i.ae, %i.z
  br label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit

_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit: ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i, %bb.b
  %i.ag = phi float [ %i.af, %bb.b ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !221
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ak = load <2 x float>, ptr %i.aj, align 8, !tbaa !189 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1920
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.am, i64 %i.v ; 6 uses
  %.sroa.022.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !221
  %i.aq = shl i64 %i.ap, 32
  %i.ar = ashr exact i64 %i.aq, 32                ; 2 uses
  %i.as = add nsw i64 %i.ar, -2                   ; 2 uses
  %i.at = icmp sgt i64 %i.ar, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !222 ; 2 uses
  br i1 %i.at, label %.lr.ph.i.i11, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9

.lr.ph.i.i11:                                     ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit, %.lr.ph.i.i11
  %.017.i.i12 = phi i64 [ %.fr.i.i14, %.lr.ph.i.i11 ], [ 1, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 2 uses
  %.01516.i.i13 = phi i64 [ %i.bg, %.lr.ph.i.i11 ], [ %i.as, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 2 uses
  %i.aw = lshr i64 %.01516.i.i13, 1               ; 3 uses
  %i.ax = add i64 %i.aw, %.017.i.i12              ; 2 uses
  %i.ay = shl i64 %i.ax, 32
  %i.az = ashr exact i64 %i.ay, 30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !189
  %i.bc = fcmp ole float %i.bb, %.sroa.022.0.vec.extract ; 2 uses
  %i.bd = add i64 %i.ax, 1
  %i.be = select i1 %i.bc, i64 %i.bd, i64 %.017.i.i12
  %.fr.i.i14 = freeze i64 %i.be                   ; 3 uses
  %.neg.i.i15 = xor i64 %i.aw, -1
  %i.bf = add nsw i64 %.01516.i.i13, %.neg.i.i15
  %i.bg = select i1 %i.bc, i64 %i.bf, i64 %i.aw   ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i11, label %._crit_edge.i.i16, !llvm.loop !1918

._crit_edge.i.i16:                                ; preds = %.lr.ph.i.i11
  %i.bi = add nsw i64 %.fr.i.i14, -1
  %..i.i.i17 = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.as)
  %.inv.i.i18 = icmp sgt i64 %.fr.i.i14, 0
  %spec.select.i.i19 = select i1 %.inv.i.i18, i64 %..i.i.i17, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9: ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit, %._crit_edge.i.i16
  %i.bj = phi i64 [ %spec.select.i.i19, %._crit_edge.i.i16 ], [ 0, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bj
  %i.bl = load <2 x float>, ptr %i.bk, align 4, !tbaa !189 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !1919 ; 2 uses
  %i.bo = fcmp ogt float %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.c, label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20

bb.c:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !222
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bj
  %i.bs = load float, ptr %i.br, align 4, !tbaa !189
  %i.bt = fdiv float %i.bs, %i.bn
  br label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20

_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20: ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9, %bb.c
  %i.bu = phi float [ %i.bt, %bb.c ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !221
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.by = load <2 x float>, ptr %i.bx, align 8, !tbaa !189 ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20
  %i.bz = fmul float %i.ag, %i.bu
  store float %i.bz, ptr %2, align 4, !tbaa !189
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

declare { <2 x float>, float } @_ZN4pbrt23EqualAreaSquareToSphereENS_6Point2IfEE(<2 x float>) local_unnamed_addr #1

declare void @_ZNK4pbrt24PortalImageInfiniteLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind writable sret(%"class.pstd::optional.126") align 8, ptr noundef nonnull align 8 dereferenceable(516), ptr noundef byval(%"class.pbrt::LightSampleContext") align 8, <2 x float>, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF1fENS_7Vector3IfEES4_NS_13TransportModeEEUlT_E_NS_15SampledSpectrumENS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 comdat {
bb.a:
  switch i32 %2, label %bb.j [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.k
    i32 6, label %bb.h
    i32 7, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !703, !nonnull !137, !align !637
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !704, !nonnull !137, !align !637
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4
  %i.d = fmul float %.sroa.26.0.copyload.i, %.sroa.24.0.copyload.i
  %i.e = fcmp ogt float %i.d, 0.000000e+00        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i17.i.i = load <2 x float>, ptr %i.f, align 4
  %.sroa.0.0.copyload.i.i.i = load <2 x float>, ptr %1, align 4
  %.sink.i.i = select i1 %i.e, i64 8, i64 24
  %.sroa.0.0.copyload.i17.sink32.i.i = select i1 %i.e, <2 x float> %.sroa.0.0.copyload.i.i.i, <2 x float> %.sroa.0.0.copyload.i17.i.i
  %.sroa.6.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sink.i.i
  %.sroa.6.0.copyload.i19.i.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i18.i.i, align 4, !tbaa !47
  %i.g = shufflevector <2 x float> %.sroa.0.0.copyload.i17.sink32.i.i, <2 x float> %.sroa.6.0.copyload.i19.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.h = fmul <4 x float> %i.g, splat (float f0x3EA2F983) ; 2 uses
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.j = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i.pn.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.i, 0
  %.pn.i.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.pn.i.i, <2 x float> %i.j, 1
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !703, !nonnull !137, !align !637
  %.sroa.26.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.26.0.copyload.i21 = load float, ptr %.sroa.26.0..sroa_idx.i20, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !704, !nonnull !137, !align !637
  %.sroa.24.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.24.0.copyload.i23 = load float, ptr %.sroa.24.0..sroa_idx.i22, align 4
  %i.n = fmul float %.sroa.26.0.copyload.i21, %.sroa.24.0.copyload.i23
  %i.o = fcmp ogt float %i.n, 0.000000e+00
  br i1 %i.o, label %bb.d, label %_ZZNK4pbrt4BxDF1fENS_7Vector3IfEES2_NS_13TransportModeEENKUlT_E_clIPKNS_11DiffuseBxDFEEENS_15SampledSpectrumES4_.exit

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i24 = load <2 x float>, ptr %1, align 4
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload.i.i.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !tbaa !47
  %i.p = fmul <2 x float> %.sroa.0.0.copyload.i.i.i24, splat (float f0x3EA2F983)
  %i.q = fmul <2 x float> %.sroa.6.0.copyload.i.i.i, splat (float f0x3EA2F983)
  br label %_ZZNK4pbrt4BxDF1fENS_7Vector3IfEES2_NS_13TransportModeEENKUlT_E_clIPKNS_11DiffuseBxDFEEENS_15SampledSpectrumES4_.exit

_ZZNK4pbrt4BxDF1fENS_7Vector3IfEES2_NS_13TransportModeEENKUlT_E_clIPKNS_11DiffuseBxDFEEENS_15SampledSpectrumES4_.exit: ; preds = %bb.c, %bb.d
  %.sroa.4.0.i.i = phi <2 x float> [ %i.q, %bb.d ], [ zeroinitializer, %bb.c ]
  %.sroa.0.0.i.i = phi <2 x float> [ %i.p, %bb.d ], [ zeroinitializer, %bb.c ]
  %.fca.0.insert.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.i.i, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i, <2 x float> %.sroa.4.0.i.i, 1
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !703, !nonnull !137, !align !637 ; 2 uses
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %i.r, align 4
  %.sroa.26.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.26.0.copyload.i26 = load float, ptr %.sroa.26.0..sroa_idx.i25, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !704, !nonnull !137, !align !637 ; 2 uses
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.t, align 4
  %.sroa.24.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.24.0.copyload.i28 = load float, ptr %.sroa.24.0..sroa_idx.i27, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !705, !nonnull !137, !align !637
  %i.w = load i32, ptr %i.v, align 4, !tbaa !373
  %i.x = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE1fENS_7Vector3IfEES5_NS_13TransportModeE(ptr noundef nonnull align 4 dereferenceable(60) %1, <2 x float> %.sroa.05.0.copyload.i, float %.sroa.26.0.copyload.i26, <2 x float> %.sroa.03.0.copyload.i, float %.sroa.24.0.copyload.i28, i32 noundef %i.w)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %0, align 8, !tbaa !703, !nonnull !137, !align !637 ; 2 uses
  %.sroa.05.0.copyload.i29 = load <2 x float>, ptr %i.y, align 4
  %.sroa.26.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.26.0.copyload.i31 = load float, ptr %.sroa.26.0..sroa_idx.i30, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !704, !nonnull !137, !align !637 ; 2 uses
  %.sroa.03.0.copyload.i32 = load <2 x float>, ptr %i.aa, align 4
  %.sroa.24.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.24.0.copyload.i34 = load float, ptr %.sroa.24.0..sroa_idx.i33, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !705, !nonnull !137, !align !637
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !373
  %i.ae = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE1fENS_7Vector3IfEES5_NS_13TransportModeE(ptr noundef nonnull align 4 dereferenceable(84) %1, <2 x float> %.sroa.05.0.copyload.i29, float %.sroa.26.0.copyload.i31, <2 x float> %.sroa.03.0.copyload.i32, float %.sroa.24.0.copyload.i34, i32 noundef %i.ad)
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %0, align 8, !tbaa !703, !nonnull !137, !align !637 ; 2 uses
  %.sroa.05.0.copyload.i35 = load <2 x float>, ptr %i.af, align 4
  %.sroa.26.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.26.0.copyload.i37 = load float, ptr %.sroa.26.0..sroa_idx.i36, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !704, !nonnull !137, !align !637 ; 2 uses
  %.sroa.03.0.copyload.i38 = load <2 x float>, ptr %i.ah, align 4
  %.sroa.24.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.24.0.copyload.i40 = load float, ptr %.sroa.24.0..sroa_idx.i39, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !705, !nonnull !137, !align !637
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !373
  %i.al = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt14DielectricBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE(ptr noundef nonnull align 4 dereferenceable(12) %1, <2 x float> %.sroa.05.0.copyload.i35, float %.sroa.26.0.copyload.i37, <2 x float> %.sroa.03.0.copyload.i38, float %.sroa.24.0.copyload.i40, i32 noundef %i.ak)
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.am = load ptr, ptr %0, align 8, !tbaa !703, !nonnull !137, !align !637 ; 2 uses
  %.sroa.05.0.copyload.i41 = load <2 x float>, ptr %i.am, align 4
  %.sroa.26.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.26.0.copyload.i43 = load float, ptr %.sroa.26.0..sroa_idx.i42, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !704, !nonnull !137, !align !637 ; 2 uses
  %.sroa.03.0.copyload.i44 = load <2 x float>, ptr %i.ao, align 4
  %.sroa.24.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.24.0.copyload.i46 = load float, ptr %.sroa.24.0..sroa_idx.i45, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !705, !nonnull !137, !align !637
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !373
  %i.as = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt8HairBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE(ptr noundef nonnull align 4 dereferenceable(76) %1, <2 x float> %.sroa.05.0.copyload.i41, float %.sroa.26.0.copyload.i43, <2 x float> %.sroa.03.0.copyload.i44, float %.sroa.24.0.copyload.i46, i32 noundef %i.ar)
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.at = load ptr, ptr %0, align 8, !tbaa !703, !nonnull !137, !align !637 ; 2 uses
  %.sroa.05.0.copyload.i47 = load <2 x float>, ptr %i.at, align 4
  %.sroa.26.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.26.0.copyload.i49 = load float, ptr %.sroa.26.0..sroa_idx.i48, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !704, !nonnull !137, !align !637 ; 2 uses
  %.sroa.03.0.copyload.i50 = load <2 x float>, ptr %i.av, align 4
  %.sroa.24.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.24.0.copyload.i52 = load float, ptr %.sroa.24.0..sroa_idx.i51, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !705, !nonnull !137, !align !637
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !373
  %i.az = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt12MeasuredBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE(ptr noundef nonnull align 8 dereferenceable(40) %1, <2 x float> %.sroa.05.0.copyload.i47, float %.sroa.26.0.copyload.i49, <2 x float> %.sroa.03.0.copyload.i50, float %.sroa.24.0.copyload.i52, i32 noundef %i.ay)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.ba = add nsw i32 %2, -8
  %i.bb = tail call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF1fENS_7Vector3IfEES4_NS_13TransportModeEEUlT_E_NS_15SampledSpectrumENS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %i.ba)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZZNK4pbrt4BxDF1fENS_7Vector3IfEES2_NS_13TransportModeEENKUlT_E_clIPKNS_11DiffuseBxDFEEENS_15SampledSpectrumES4_.exit, %bb.b
  %.pn = phi { <2 x float>, <2 x float> } [ %i.bb, %bb.j ], [ %.pn.i.i, %bb.b ], [ %.fca.1.insert.i.i, %_ZZNK4pbrt4BxDF1fENS_7Vector3IfEES2_NS_13TransportModeEENKUlT_E_clIPKNS_11DiffuseBxDFEEENS_15SampledSpectrumES4_.exit ], [ %i.x, %bb.e ], [ %i.ae, %bb.f ], [ %i.al, %bb.g ], [ %i.az, %bb.i ], [ %i.as, %bb.h ], [ zeroinitializer, %bb.a ]
  ret { <2 x float>, <2 x float> } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF1fENS_7Vector3IfEES4_NS_13TransportModeEEUlT_E_NS_15SampledSpectrumENS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %i.b = load ptr, ptr %0, align 8, !tbaa !703, !nonnull !137, !align !637 ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %i.b, align 4
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !704, !nonnull !137, !align !637 ; 2 uses
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.d, align 4
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !705, !nonnull !137, !align !637
  %i.g = load i32, ptr %i.f, align 4, !tbaa !373
  %i.h = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt13ConductorBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE(ptr noundef nonnull align 4 dereferenceable(40) %1, <2 x float> %.sroa.05.0.copyload.i, float %.sroa.26.0.copyload.i, <2 x float> %.sroa.03.0.copyload.i, float %.sroa.24.0.copyload.i, i32 noundef %i.g)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.sroa.26.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.26.0.copyload.i6 = load float, ptr %.sroa.26.0..sroa_idx.i5, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !704, !nonnull !137, !align !637
  %.sroa.24.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.24.0.copyload.i8 = load float, ptr %.sroa.24.0..sroa_idx.i7, align 4 ; 4 uses
end_hunk_0
