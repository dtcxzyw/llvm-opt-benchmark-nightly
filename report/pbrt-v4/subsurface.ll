Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/subsurface?download=true
inline.NumInlined: 1845
inline.NumDeleted: 691
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK4pbrt18SubsurfaceMaterial9GetBSSRDFINS_21BasicTextureEvaluatorEEENS_15TabulatedBSSRDFET_RKNS_19MaterialEvalContextERNS_18SampledWavelengthsE:bb.a
  %i.am = lshr i64 %i.aj, 57
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = add nsw i32 %i.an, -1
  %i.ap = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_8Spectrum6SampleERKNS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_16ConstantSpectrumENS_22DenselySampledSpectrumENS_23PiecewiseLinearSpectrumENS_17RGBAlbedoSpectrumENS_20RGBUnboundedSpectrumENS_21RGBIlluminantSpectrumENS_17BlackbodySpectrumEEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.al, i32 noundef %i.ao) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.aq = extractvalue { <2 x float>, <2 x float> } %i.ap, 0
  %i.ar = extractvalue { <2 x float>, <2 x float> } %i.ap, 1
  br label %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit32

bb.j:                                             ; preds = %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit
  %i.as = and i64 %i.ae, 144115188075855871
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = call { <2 x float>, <2 x float> } @_ZNK4pbrt20SpectrumImageTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(60) %i.at, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %15, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %14) ; 2 uses
  %i.av = extractvalue { <2 x float>, <2 x float> } %i.au, 0
  %i.aw = extractvalue { <2 x float>, <2 x float> } %i.au, 1
  br label %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit32

bb.k:                                             ; preds = %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit
  call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 740, ptr noundef nonnull @.str.21) #24
  unreachable

bb.l:                                             ; preds = %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit
  %i.ax = and i64 %i.ae, 144115188075855871
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = call { <2 x float>, <2 x float> } @_ZNK4pbrt22GPUSpectrumPtexTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %15, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %14) ; 2 uses
  %i.ba = extractvalue { <2 x float>, <2 x float> } %i.az, 0
  %i.bb = extractvalue { <2 x float>, <2 x float> } %i.az, 1
  br label %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit32

bb.m:                                             ; preds = %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit
  %i.bc = and i64 %i.ae, 144115188075855871
  %.not.i31 = icmp eq i64 %i.bc, 0
  br i1 %.not.i31, label %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit32, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN4pbrt8LogFatalIJRNS_15SpectrumTextureEEEEvNS_8LogLevelEPKciS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 1209, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %21) #24
  unreachable

_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit32: ; preds = %bb.i, %bb.j, %bb.l, %bb.m
  %.sroa.7.0.i27 = phi <2 x float> [ %i.ar, %bb.i ], [ %i.aw, %bb.j ], [ %i.bb, %bb.l ], [ zeroinitializer, %bb.m ]
  %.sroa.0.0.i28 = phi <2 x float> [ %i.aq, %bb.i ], [ %i.av, %bb.j ], [ %i.ba, %bb.l ], [ zeroinitializer, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.bd = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bf = fmul <2 x float> %i.be, %.sroa.0.0.i28  ; 2 uses
  %i.bg = fcmp ogt <2 x float> %i.bf, zeroinitializer
  %i.bh = select <2 x i1> %i.bg, <2 x float> %i.bf, <2 x float> zeroinitializer
  %i.bi = fmul <2 x float> %i.be, %.sroa.7.0.i27  ; 2 uses
  %i.bj = fcmp ogt <2 x float> %i.bi, zeroinitializer
  %i.bk = select <2 x i1> %i.bj, <2 x float> %i.bi, <2 x float> zeroinitializer
  br label %bb.ab

bb.o:                                             ; preds = %bb.a, %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bm = load <4 x float>, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !299 ; 6 uses
  store i64 %i.bo, ptr %22, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %11, ptr noundef nonnull align 4 dereferenceable(76) %2, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false)
  %i.bp = add i64 %i.bo, -144115188075855872
  %i.bq = lshr i64 %i.bp, 57
  switch i64 %i.bq, label %bb.t [
    i64 5, label %bb.p
    i64 0, label %bb.q
    i64 1, label %bb.r
    i64 11, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %i.br = and i64 %i.bo, 144115188075855871
  %i.bs = inttoptr i64 %i.br to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %9, ptr %8, align 8, !tbaa !127
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !301 ; 2 uses
  %i.bu = and i64 %i.bt, 144115188075855871
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = lshr i64 %i.bt, 57
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = add nsw i32 %i.bx, -1
  %i.bz = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_8Spectrum6SampleERKNS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_16ConstantSpectrumENS_22DenselySampledSpectrumENS_23PiecewiseLinearSpectrumENS_17RGBAlbedoSpectrumENS_20RGBUnboundedSpectrumENS_21RGBIlluminantSpectrumENS_17BlackbodySpectrumEEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.bv, i32 noundef %i.by) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ca = extractvalue { <2 x float>, <2 x float> } %i.bz, 0
  %i.cb = extractvalue { <2 x float>, <2 x float> } %i.bz, 1
  br label %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit61

bb.q:                                             ; preds = %bb.o
  %i.cc = and i64 %i.bo, 144115188075855871
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt20SpectrumImageTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(60) %i.cd, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %11, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %10) ; 2 uses
  %i.cf = extractvalue { <2 x float>, <2 x float> } %i.ce, 0
  %i.cg = extractvalue { <2 x float>, <2 x float> } %i.ce, 1
  br label %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit61

bb.r:                                             ; preds = %bb.o
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 740, ptr noundef nonnull @.str.21) #24
  unreachable

bb.s:                                             ; preds = %bb.o
  %i.ch = and i64 %i.bo, 144115188075855871
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22GPUSpectrumPtexTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ci, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %11, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %10) ; 2 uses
  %i.ck = extractvalue { <2 x float>, <2 x float> } %i.cj, 0
  %i.cl = extractvalue { <2 x float>, <2 x float> } %i.cj, 1
  br label %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit61

bb.t:                                             ; preds = %bb.o
  %i.cm = and i64 %i.bo, 144115188075855871
  %.not.i60 = icmp eq i64 %i.cm, 0
  br i1 %.not.i60, label %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit61, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN4pbrt8LogFatalIJRNS_15SpectrumTextureEEEEvNS_8LogLevelEPKciS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 1209, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %22) #24
  unreachable

_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit61: ; preds = %bb.p, %bb.q, %bb.s, %bb.t
  %.sroa.7.0.i56 = phi <2 x float> [ %i.cb, %bb.p ], [ %i.cg, %bb.q ], [ %i.cl, %bb.s ], [ zeroinitializer, %bb.t ]
  %.sroa.0.0.i57 = phi <2 x float> [ %i.ca, %bb.p ], [ %i.cf, %bb.q ], [ %i.ck, %bb.s ], [ zeroinitializer, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.cn = shufflevector <4 x float> %i.bm, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = fmul <2 x float> %i.cn, %.sroa.0.0.i57  ; 2 uses
  %i.cp = fcmp ogt <2 x float> %i.co, zeroinitializer
  %i.cq = select <2 x i1> %i.cp, <2 x float> %i.co, <2 x float> zeroinitializer ; 2 uses
  %i.cr = fmul <2 x float> %i.cn, %.sroa.7.0.i56  ; 2 uses
  %i.cs = fcmp ogt <2 x float> %i.cr, zeroinitializer
  %i.ct = select <2 x i1> %i.cs, <2 x float> %i.cr, <2 x float> zeroinitializer ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !299 ; 6 uses
  store i64 %i.cv, ptr %23, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %7, ptr noundef nonnull align 4 dereferenceable(76) %2, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false)
  %i.cw = add i64 %i.cv, -144115188075855872
  %i.cx = lshr i64 %i.cw, 57
  switch i64 %i.cx, label %bb.z [
    i64 5, label %bb.v
    i64 0, label %bb.w
    i64 1, label %bb.x
    i64 11, label %bb.y
  ]

bb.v:                                             ; preds = %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit61
  %i.cy = and i64 %i.cv, 144115188075855871
  %i.cz = inttoptr i64 %i.cy to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !127
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !301 ; 2 uses
  %i.db = and i64 %i.da, 144115188075855871
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = lshr i64 %i.da, 57
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %i.df = add nsw i32 %i.de, -1
  %i.dg = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_8Spectrum6SampleERKNS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_16ConstantSpectrumENS_22DenselySampledSpectrumENS_23PiecewiseLinearSpectrumENS_17RGBAlbedoSpectrumENS_20RGBUnboundedSpectrumENS_21RGBIlluminantSpectrumENS_17BlackbodySpectrumEEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.dc, i32 noundef %i.df) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.dh = extractvalue { <2 x float>, <2 x float> } %i.dg, 0
  %i.di = extractvalue { <2 x float>, <2 x float> } %i.dg, 1
  br label %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit90

bb.w:                                             ; preds = %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit61
  %i.dj = and i64 %i.cv, 144115188075855871
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = call { <2 x float>, <2 x float> } @_ZNK4pbrt20SpectrumImageTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(60) %i.dk, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %7, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %6) ; 2 uses
  %i.dm = extractvalue { <2 x float>, <2 x float> } %i.dl, 0
  %i.dn = extractvalue { <2 x float>, <2 x float> } %i.dl, 1
  br label %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit90

bb.x:                                             ; preds = %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit61
  call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 740, ptr noundef nonnull @.str.21) #24
  unreachable

bb.y:                                             ; preds = %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit61
  %i.do = and i64 %i.cv, 144115188075855871
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = call { <2 x float>, <2 x float> } @_ZNK4pbrt22GPUSpectrumPtexTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.dp, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %7, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %6) ; 2 uses
  %i.dr = extractvalue { <2 x float>, <2 x float> } %i.dq, 0
  %i.ds = extractvalue { <2 x float>, <2 x float> } %i.dq, 1
  br label %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit90

bb.z:                                             ; preds = %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit61
  %i.dt = and i64 %i.cv, 144115188075855871
  %.not.i89 = icmp eq i64 %i.dt, 0
  br i1 %.not.i89, label %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit90, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4pbrt8LogFatalIJRNS_15SpectrumTextureEEEEvNS_8LogLevelEPKciS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 1209, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %23) #24
  unreachable

_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit90: ; preds = %bb.v, %bb.w, %bb.y, %bb.z
  %.sroa.7.0.i85 = phi <2 x float> [ %i.di, %bb.v ], [ %i.dn, %bb.w ], [ %i.ds, %bb.y ], [ zeroinitializer, %bb.z ]
  %.sroa.0.0.i86 = phi <2 x float> [ %i.dh, %bb.v ], [ %i.dm, %bb.w ], [ %i.dr, %bb.y ], [ zeroinitializer, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.du = shufflevector <2 x float> %.sroa.0.0.i86, <2 x float> %.sroa.7.0.i85, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 3 uses
  %i.dv = fcmp ogt <4 x float> %i.du, splat (float 1.000000e+00)
  %i.dw = select <4 x i1> %i.dv, <4 x float> splat (float 1.000000e+00), <4 x float> %i.du
  %24 = fcmp olt <4 x float> %i.du, zeroinitializer
  %25 = select <4 x i1> %24, <4 x float> zeroinitializer, <4 x float> %i.dw ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 4 uses
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !130
  %i.ec = load i64, ptr %i.dy, align 8, !tbaa !131
  %i.ed = load ptr, ptr %i.dz, align 8, !tbaa !130
  %i.ee = load i64, ptr %i.ea, align 8, !tbaa !131
  %26 = extractelement <4 x float> %25, i64 0
  %i.ef = call noundef float @_ZN4pbrt16InvertCatmullRomEN4pstd4spanIKfEES3_f(ptr %i.eb, i64 %i.ec, ptr %i.ed, i64 %i.ee, float noundef %26)
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !130
  %i.eh = load i64, ptr %i.dy, align 8, !tbaa !131
  %i.ei = load ptr, ptr %i.dz, align 8, !tbaa !130
  %i.ej = load i64, ptr %i.ea, align 8, !tbaa !131
  %27 = extractelement <4 x float> %25, i64 1
  %i.ek = call noundef float @_ZN4pbrt16InvertCatmullRomEN4pstd4spanIKfEES3_f(ptr %i.eg, i64 %i.eh, ptr %i.ei, i64 %i.ej, float noundef %27)
  %i.el = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.ek, i64 1 ; 2 uses
  %i.en = fdiv <2 x float> %i.em, %i.cq
  %i.eo = fsub <2 x float> splat (float 1.000000e+00), %i.em
  %i.ep = fdiv <2 x float> %i.eo, %i.cq
  %i.eq = load ptr, ptr %i.dx, align 8, !tbaa !130
  %i.er = load i64, ptr %i.dy, align 8, !tbaa !131
  %i.es = load ptr, ptr %i.dz, align 8, !tbaa !130
  %i.et = load i64, ptr %i.ea, align 8, !tbaa !131
  %28 = extractelement <4 x float> %25, i64 2
  %i.eu = call noundef float @_ZN4pbrt16InvertCatmullRomEN4pstd4spanIKfEES3_f(ptr %i.eq, i64 %i.er, ptr %i.es, i64 %i.et, float noundef %28)
  %i.ev = load ptr, ptr %i.dx, align 8, !tbaa !130
  %i.ew = load i64, ptr %i.dy, align 8, !tbaa !131
  %i.ex = load ptr, ptr %i.dz, align 8, !tbaa !130
  %i.ey = load i64, ptr %i.ea, align 8, !tbaa !131
  %29 = extractelement <4 x float> %25, i64 3
  %i.ez = call noundef float @_ZN4pbrt16InvertCatmullRomEN4pstd4spanIKfEES3_f(ptr %i.ev, i64 %i.ew, ptr %i.ex, i64 %i.ey, float noundef %29)
  %i.fa = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %i.ez, i64 1 ; 2 uses
  %i.fc = fdiv <2 x float> %i.fb, %i.ct
  %i.fd = fsub <2 x float> splat (float 1.000000e+00), %i.fb
  %i.fe = fdiv <2 x float> %i.fd, %i.ct
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit90, %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit32
  %.sroa.7132.0 = phi <2 x float> [ %i.ac, %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit32 ], [ %i.fe, %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit90 ]
  %.sroa.0130.0 = phi <2 x float> [ %i.z, %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit32 ], [ %i.ep, %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit90 ]
  %.sroa.9.0 = phi <2 x float> [ %i.bk, %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit32 ], [ %i.fc, %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit90 ] ; 2 uses
  %.sroa.0123.0 = phi <2 x float> [ %i.bh, %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit32 ], [ %i.en, %_ZN4pbrt21BasicTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE.exit90 ] ; 2 uses
  %.sroa.09.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.210.0.copyload = load float, ptr %.sroa.210.0..sroa_idx, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.ff, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 76
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.fg, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !309
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <2 x float> %.sroa.09.0.copyload, ptr %0, align 8
  %.sroa.222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.210.0.copyload, ptr %.sroa.222.0..sroa_idx.i, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.sroa.05.0.copyload, ptr %i.fk, align 4
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.sroa.26.0.copyload, ptr %.sroa.214.0..sroa_idx.i, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %.sroa.07.0.copyload, ptr %i.fl, align 8
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sroa.28.0.copyload, ptr %.sroa.218.0..sroa_idx.i, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.fi, ptr %i.fm, align 4, !tbaa !141
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.fj, ptr %i.fp, align 8, !tbaa !142
  %i.fq = fadd <2 x float> %.sroa.0130.0, %.sroa.0123.0 ; 3 uses
  %i.fr = fadd <2 x float> %.sroa.7132.0, %.sroa.9.0 ; 3 uses
  store <2 x float> %i.fq, ptr %i.fn, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %i.fr, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !92
  %i.fs = fcmp une <2 x float> %i.fq, zeroinitializer
  %i.ft = fdiv <2 x float> %.sroa.0123.0, %i.fq
  %i.fu = select <2 x i1> %i.fs, <2 x float> %i.ft, <2 x float> zeroinitializer
  %i.fv = fcmp une <2 x float> %i.fr, zeroinitializer
  %i.fw = fdiv <2 x float> %.sroa.9.0, %i.fr
  %i.fx = select <2 x i1> %i.fv, <2 x float> %i.fw, <2 x float> zeroinitializer
  store <2 x float> %i.fu, ptr %i.fo, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x float> %i.fx, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt15TabulatedBSSRDF8SampleSpEfNS_6Point2IfEE(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.48") align 4 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, float noundef %2, <2 x float> %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pstd::span", align 8        ; 6 uses
  %5 = alloca %"class.pstd::span", align 8        ; 6 uses
  %i.a = fcmp olt float %2, 2.500000e-01
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.090.0.copyload = load <2 x float>, ptr %i.b, align 8 ; 5 uses
  %.sroa.291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.291.0.copyload = load float, ptr %.sroa.291.0..sroa_idx, align 8 ; 3 uses
  %i.c = tail call noundef float @llvm.copysign.f32(float 1.000000e+00, float %.sroa.291.0.copyload) ; 5 uses
  %i.d = fadd float %.sroa.291.0.copyload, %i.c
  %i.e = fdiv float -1.000000e+00, %i.d           ; 3 uses
  %.sroa.012.0.vec.extract.i.i = extractelement <2 x float> %.sroa.090.0.copyload, i64 0 ; 2 uses
  %.sroa.012.4.vec.extract.i.i = extractelement <2 x float> %.sroa.090.0.copyload, i64 1 ; 4 uses
  %i.f = fmul float %.sroa.012.0.vec.extract.i.i, %.sroa.012.4.vec.extract.i.i
  %i.g = fmul float %i.f, %i.e                    ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.090.0.copyload, %.sroa.090.0.copyload
  %i.h = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.i = fmul float %i.c, %i.h
  %i.j = fmul float %i.i, %i.e
  %i.k = fadd float %i.j, 1.000000e+00
  %i.l = fmul float %i.c, %i.g
  %i.m = fneg float %i.c
  %i.n = fmul float %.sroa.012.0.vec.extract.i.i, %i.m
  %.sroa.028.0.vec.insert31.i = insertelement <2 x float> poison, float %i.k, i64 0
  %.sroa.028.4.vec.insert33.i = insertelement <2 x float> %.sroa.028.0.vec.insert31.i, float %i.l, i64 1
  %i.o = fmul float %.sroa.012.4.vec.extract.i.i, %.sroa.012.4.vec.extract.i.i
  %i.p = fmul float %i.o, %i.e
  %i.q = fadd float %i.c, %i.p
  %i.r = fneg float %.sroa.012.4.vec.extract.i.i
  %.sroa.022.0.vec.insert25.i = insertelement <2 x float> poison, float %i.g, i64 0
  %.sroa.022.4.vec.insert27.i = insertelement <2 x float> %.sroa.022.0.vec.insert25.i, float %i.q, i64 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.s = fcmp olt float %2, 5.000000e-01
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.086.0.copyload = load <2 x float>, ptr %i.t, align 8 ; 10 uses
  %.sroa.287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.287.0.copyload = load float, ptr %.sroa.287.0..sroa_idx, align 8 ; 6 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef float @llvm.copysign.f32(float 1.000000e+00, float %.sroa.287.0.copyload) ; 5 uses
  %i.v = fadd float %.sroa.287.0.copyload, %i.u
  %i.w = fdiv float -1.000000e+00, %i.v           ; 3 uses
  %.sroa.012.0.vec.extract.i.i111 = extractelement <2 x float> %.sroa.086.0.copyload, i64 0 ; 2 uses
  %.sroa.012.4.vec.extract.i.i112 = extractelement <2 x float> %.sroa.086.0.copyload, i64 1 ; 4 uses
  %i.x = fmul float %.sroa.012.0.vec.extract.i.i111, %.sroa.012.4.vec.extract.i.i112
  %i.y = fmul float %i.x, %i.w                    ; 2 uses
  %foldExtExtBinop227 = fmul <2 x float> %.sroa.086.0.copyload, %.sroa.086.0.copyload
  %i.z = extractelement <2 x float> %foldExtExtBinop227, i64 0
  %i.aa = fmul float %i.u, %i.z
  %i.ab = fmul float %i.aa, %i.w
  %i.ac = fadd float %i.ab, 1.000000e+00
  %i.ad = fmul float %i.u, %i.y
  %i.ae = fneg float %i.u
  %i.af = fmul float %.sroa.012.0.vec.extract.i.i111, %i.ae
  %.sroa.022.0.vec.insert25.i113 = insertelement <2 x float> poison, float %i.ac, i64 0
  %.sroa.022.4.vec.insert27.i114 = insertelement <2 x float> %.sroa.022.0.vec.insert25.i113, float %i.ad, i64 1
  %i.ag = fmul float %.sroa.012.4.vec.extract.i.i112, %.sroa.012.4.vec.extract.i.i112
  %i.ah = fmul float %i.ag, %i.w
  %i.ai = fadd float %i.u, %i.ah
  %i.aj = fneg float %.sroa.012.4.vec.extract.i.i112
  %.sroa.028.0.vec.insert31.i115 = insertelement <2 x float> poison, float %i.y, i64 0
  %.sroa.028.4.vec.insert33.i116 = insertelement <2 x float> %.sroa.028.0.vec.insert31.i115, float %i.ai, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.sroa.086.0.copyload, i64 0 ; 2 uses
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %.sroa.086.0.copyload, i64 1 ; 4 uses
  %i.ak = tail call noundef float @llvm.copysign.f32(float 1.000000e+00, float %.sroa.287.0.copyload) ; 5 uses
  %i.al = fadd float %.sroa.287.0.copyload, %i.ak
  %i.am = fdiv float -1.000000e+00, %i.al         ; 3 uses
  %i.an = fmul float %.sroa.01.0.vec.extract.i.i, %.sroa.01.4.vec.extract.i.i
  %i.ao = fmul float %i.an, %i.am                 ; 2 uses
  %foldExtExtBinop229 = fmul <2 x float> %.sroa.086.0.copyload, %.sroa.086.0.copyload
  %i.ap = extractelement <2 x float> %foldExtExtBinop229, i64 0
  %i.aq = fmul float %i.ak, %i.ap
  %i.ar = fmul float %i.aq, %i.am
  %i.as = fadd float %i.ar, 1.000000e+00
  %i.at = fmul float %i.ak, %i.ao
  %i.au = fneg float %i.ak
  %i.av = fmul float %.sroa.01.0.vec.extract.i.i, %i.au
  %.sroa.024.0.vec.insert27.i.i = insertelement <2 x float> poison, float %i.as, i64 0
  %.sroa.024.4.vec.insert29.i.i = insertelement <2 x float> %.sroa.024.0.vec.insert27.i.i, float %i.at, i64 1
  %i.aw = fmul float %.sroa.01.4.vec.extract.i.i, %.sroa.01.4.vec.extract.i.i
  %i.ax = fmul float %i.aw, %i.am
  %i.ay = fadd float %i.ak, %i.ax
  %i.az = fneg float %.sroa.01.4.vec.extract.i.i
  %.sroa.0.0.vec.insert21.i.i = insertelement <2 x float> poison, float %i.ao, i64 0
  %.sroa.0.4.vec.insert23.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert21.i.i, float %i.ay, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sroa.0210.0 = phi <2 x float> [ %.sroa.090.0.copyload, %bb.b ], [ %.sroa.028.4.vec.insert33.i116, %bb.d ], [ %.sroa.024.4.vec.insert29.i.i, %bb.e ]
  %.sroa.10.0 = phi float [ %.sroa.291.0.copyload, %bb.b ], [ %i.aj, %bb.d ], [ %i.av, %bb.e ]
  %.sroa.15.0 = phi <2 x float> [ %.sroa.028.4.vec.insert33.i, %bb.b ], [ %.sroa.086.0.copyload, %bb.d ], [ %.sroa.0.4.vec.insert23.i.i, %bb.e ]
  %.sroa.22.0 = phi float [ %i.n, %bb.b ], [ %.sroa.287.0.copyload, %bb.d ], [ %i.az, %bb.e ]
  %.sroa.27.0 = phi <2 x float> [ %.sroa.022.4.vec.insert27.i, %bb.b ], [ %.sroa.022.4.vec.insert27.i114, %bb.d ], [ %.sroa.086.0.copyload, %bb.e ]
  %.sroa.34.0 = phi float [ %i.r, %bb.b ], [ %i.af, %bb.d ], [ %.sroa.287.0.copyload, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !96, !noalias !314
  %i.bc = fcmp oeq float %i.bb, 0.000000e+00
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %.sroa.0217.0.vec.extract = extractelement <2 x float> %3, i64 0
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !142, !noalias !314 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !130, !noalias !314
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !131, !noalias !314
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !130, !noalias !314
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !131, !noalias !314
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !130, !noalias !314
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !131, !noalias !314
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 136
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !130, !noalias !314
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 152
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !131, !noalias !314
  store ptr %i.bs, ptr %5, align 8, !tbaa !316, !noalias !314
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !317, !noalias !314
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
end_hunk_0
