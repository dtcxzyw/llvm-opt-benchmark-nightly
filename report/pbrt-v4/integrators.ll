Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators?download=true
inline.NumInlined: 13518
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN4pbrt13RayIntegrator19EvaluatePixelSampleENS_6Point2IiEEiNS_7SamplerERNS_13ScratchBufferE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !924
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.bz, 0
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.bz, 1
  %i.ca = sitofp <2 x i32> %i.bx to <2 x float>   ; 2 uses
  %i.cb = fadd <2 x float> %.fca.0.extract.i, %i.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38, !noalias !924
  %i.cc = call noundef float @_ZN4pbrt6detail8DispatchIRZNS_7Sampler5Get1DEvEUlT_E_fNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.bl, i32 noundef %i.bo), !noalias !924
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38, !noalias !924
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38, !noalias !924
  %i.cd = call <2 x float> @_ZN4pbrt6detail8DispatchIRZNS_7Sampler5Get2DEvEUlT_E_NS_6Point2IfEENS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %i.bl, i32 noundef %i.bo), !noalias !924
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38, !noalias !924
  %i.ce = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !72, !noalias !924
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 5
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !260, !range !136, !noalias !924, !noundef !137
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE8DispatchIRZNKS_4Film17SampleWavelengthsEfEUlT_E_EEDcOS7_.exit
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE8DispatchIRZNKS_4Film17SampleWavelengthsEfEUlT_E_EEDcOS7_.exit, %bb.e
  %.sroa.11.0 = phi float [ 1.000000e+00, %bb.e ], [ %.fca.1.extract.i, %_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE8DispatchIRZNKS_4Film17SampleWavelengthsEfEUlT_E_EEDcOS7_.exit ] ; 4 uses
  %.sroa.9.0 = phi float [ 5.000000e-01, %bb.e ], [ %i.cc, %_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE8DispatchIRZNKS_4Film17SampleWavelengthsEfEUlT_E_EEDcOS7_.exit ]
  %.sroa.655.0 = phi <2 x float> [ splat (float 5.000000e-01), %bb.e ], [ %i.cd, %_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE8DispatchIRZNKS_4Film17SampleWavelengthsEfEUlT_E_EEDcOS7_.exit ]
  %.sroa.054.0.in = phi <2 x float> [ %i.ca, %bb.e ], [ %i.cb, %_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE8DispatchIRZNKS_4Film17SampleWavelengthsEfEUlT_E_EEDcOS7_.exit ]
  %.sroa.054.0 = fadd <2 x float> %.sroa.054.0.in, splat (float 5.000000e-01)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  store <2 x float> %.sroa.054.0, ptr %16, align 8
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store <2 x float> %.sroa.655.0, ptr %.sroa.655.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 16
  store float %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 20
  store float %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 4
  call void @_ZNK4pbrt6Camera23GenerateRayDifferentialENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.101") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %16, ptr noundef nonnull align 4 dereferenceable(32) %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  %i.ci = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(89) %18, i8 0, i64 89, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 112
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !262, !range !136, !noundef !137
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.g, label %bb.ac

bb.g:                                             ; preds = %bb.f
  %i.cm = load i64, ptr %3, align 8, !tbaa !53    ; 3 uses
  %i.cn = and i64 %i.cm, 144115188075855871
  %i.co = inttoptr i64 %i.cn to ptr               ; 10 uses
  %i.cp = lshr i64 %i.cm, 57
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  switch i32 %i.cq, label %bb.p [
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 6, label %bb.m
    i32 7, label %bb.n
    i32 8, label %bb.o
  ]

bb.h:                                             ; preds = %bb.g
  %i.cr = load i32, ptr %i.co, align 8, !tbaa !108
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

bb.i:                                             ; preds = %bb.g
  %i.cs = load i32, ptr %i.co, align 8, !tbaa !111
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

bb.j:                                             ; preds = %bb.g
  %i.ct = load i32, ptr %i.co, align 8, !tbaa !114
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !115
  %i.cw = mul nsw i32 %i.cv, %i.ct
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

bb.k:                                             ; preds = %bb.g
  %i.cx = load i32, ptr %i.co, align 8, !tbaa !119
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

bb.l:                                             ; preds = %bb.g
  %i.cy = load i32, ptr %i.co, align 4, !tbaa !121
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

bb.m:                                             ; preds = %bb.g
  %i.cz = load i32, ptr %i.co, align 8, !tbaa !123
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

bb.n:                                             ; preds = %bb.g
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !125
  %i.dc = shl nuw i32 1, %i.db
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

bb.o:                                             ; preds = %bb.g
  %i.dd = load i32, ptr %i.co, align 8, !tbaa !132
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

bb.p:                                             ; preds = %bb.g
  %i.de = load i32, ptr %i.co, align 8, !tbaa !132
  br label %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit

_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit:        ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.de, %bb.p ], [ %i.cr, %bb.h ], [ %i.cs, %bb.i ], [ %i.cw, %bb.j ], [ %i.cx, %bb.k ], [ %i.cy, %bb.l ], [ %i.cz, %bb.m ], [ %i.dc, %bb.n ], [ %i.dd, %bb.o ]
  %i.df = sitofp i32 %.0.i.i.i to float
  %i.dg = call noundef float @sqrtf(float noundef %i.df) #38
  %i.dh = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !72
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 5
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !260, !range !136, !noundef !137
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.q, label %_ZN4pstd8optionalIN4pbrt21CameraRayDifferentialEEptEv.exit

_ZN4pstd8optionalIN4pbrt21CameraRayDifferentialEEptEv.exit: ; preds = %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit
  %i.dl = fdiv float 1.000000e+00, %i.dg          ; 2 uses
  %i.dm = fcmp ogt float %i.dl, 1.250000e-01
  %.sroa.speculated = select i1 %i.dm, float %i.dl, float 1.250000e-01 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %15, i64 44 ; 2 uses
  %.sroa.078.0.copyload.i = load <2 x float>, ptr %15, align 8 ; 4 uses
  %.sroa.279.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.do = load <4 x float>, ptr %.sroa.279.0..sroa_idx.i, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %15, i64 52 ; 2 uses
  %i.dq = load <2 x float>, ptr %i.dn, align 4, !tbaa !189
  %i.dr = fsub <2 x float> %i.dq, %.sroa.078.0.copyload.i
  %i.ds = insertelement <2 x float> poison, float %.sroa.speculated, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.du = fmul <2 x float> %i.dt, %i.dr
  %i.dv = fadd <2 x float> %.sroa.078.0.copyload.i, %i.du
  store <2 x float> %i.dv, ptr %i.dn, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.dy = load <2 x float>, ptr %i.dw, align 8, !tbaa !189
  %i.dz = fsub <2 x float> %i.dy, %.sroa.078.0.copyload.i
  %i.ea = fmul <2 x float> %i.dt, %i.dz
  %i.eb = fadd <2 x float> %.sroa.078.0.copyload.i, %i.ea
  store <2 x float> %i.eb, ptr %i.dw, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 68 ; 2 uses
  %.sroa.034.0.copyload.i = load <2 x float>, ptr %i.ec, align 4 ; 4 uses
  %.sroa.235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 20
  %.sroa.235.0.copyload.i = load float, ptr %.sroa.235.0..sroa_idx.i, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %15, i64 76
  %i.ef = load <2 x float>, ptr %i.ed, align 4, !tbaa !189
  %i.eg = fsub <2 x float> %i.ef, %.sroa.034.0.copyload.i
  %i.eh = fmul <2 x float> %i.dt, %i.eg
  %i.ei = fadd <2 x float> %.sroa.034.0.copyload.i, %i.eh
  store <2 x float> %i.ei, ptr %i.ed, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %15, i64 80 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.el = load <2 x float>, ptr %i.ej, align 8, !tbaa !189
  %i.em = fsub <2 x float> %i.el, %.sroa.034.0.copyload.i
  %i.en = fmul <2 x float> %i.dt, %i.em
  %i.eo = fadd <2 x float> %.sroa.034.0.copyload.i, %i.en
  %i.ep = load <10 x float>, ptr %i.dp, align 4, !tbaa !189
  %i.eq = shufflevector <10 x float> %i.ep, <10 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %i.er = insertelement <4 x float> %i.do, float %.sroa.235.0.copyload.i, i64 1
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.et = fsub <4 x float> %i.eq, %i.es
  %i.eu = insertelement <4 x float> poison, float %.sroa.speculated, i64 0
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ew = fmul <4 x float> %i.ev, %i.et
  %i.ex = fadd <4 x float> %i.es, %i.ew           ; 4 uses
  %i.ey = extractelement <4 x float> %i.ex, i64 0
  store float %i.ey, ptr %i.dp, align 4
  %i.ez = extractelement <4 x float> %i.ex, i64 1
  store float %i.ez, ptr %i.dx, align 8
  %i.fa = extractelement <4 x float> %i.ex, i64 2
  store float %i.fa, ptr %i.ee, align 4
  store <2 x float> %i.eo, ptr %i.ej, align 8
  %i.fb = extractelement <4 x float> %i.ex, i64 3
  store float %i.fb, ptr %i.ek, align 8
  br label %bb.q

bb.q:                                             ; preds = %_ZN4pstd8optionalIN4pbrt21CameraRayDifferentialEEptEv.exit, %_ZNK4pbrt7Sampler15SamplesPerPixelEv.exit
  %i.fc = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL11nCameraRaysE) ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !145
  %i.fe = add nsw i64 %i.fd, 1
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !145
  %i.ff = load i64, ptr %i.m, align 8, !tbaa !51, !noalias !925
  %i.fg = and i64 %i.ff, 144115188075855871
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 832
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !103, !noalias !926
  %.mask.i.i = and i64 %i.fj, -144115188075855872
  %cond.i.i.i = icmp eq i64 %.mask.i.i, 288230376151711744
  %i.fk = getelementptr inbounds nuw i8, ptr %15, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %19, ptr noundef nonnull align 8 dereferenceable(92) %15, i64 28, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !264
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !264
  %i.fo = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.fp = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.fo, ptr noundef nonnull align 8 dereferenceable(52) %i.fp, i64 52, i1 false)
  store i64 %i.cm, ptr %20, align 8, !tbaa !53
  %. = select i1 %cond.i.i.i, ptr %18, ptr null
  %i.fq = load ptr, ptr %0, align 8, !tbaa !89
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = call { <2 x float>, <2 x float> } %i.fs(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(96) %19, ptr noundef nonnull align 4 dereferenceable(32) %14, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %20, ptr noundef nonnull align 64 dereferenceable(40) %4, ptr noundef %.) ; 2 uses
  %i.fu = extractvalue { <2 x float>, <2 x float> } %i.ft, 0 ; 2 uses
  %i.fv = extractvalue { <2 x float>, <2 x float> } %i.ft, 1
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.fk, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 104
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !47
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.copyload4.i, %i.fu ; 2 uses
  %21 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop76 = fmul <2 x float> %.sroa.0.0.copyload4.i, %i.fu
  %foldExtExtBinop76.fr = freeze <2 x float> %foldExtExtBinop76 ; 2 uses
  %22 = extractelement <2 x float> %foldExtExtBinop76.fr, i64 1
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %foldExtExtBinop76.fr, <2 x i32> <i32 0, i32 3>
  %23 = fmul <2 x float> %i.fv, %.sroa.8.0.copyload.i ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %17, align 8
  store <2 x float> %23, ptr %i.ci, align 8, !tbaa !47
  %or.cond.i = fcmp uno float %21, %22
  %i.fw = extractelement <2 x float> %23, i64 0
  %i.fx = fcmp uno float %i.fw, 0.000000e+00
  %or.cond14.i = select i1 %or.cond.i, i1 true, i1 %i.fx
  %i.fy = extractelement <2 x float> %23, i64 1
  %i.fz = fcmp uno float %i.fy, 0.000000e+00
  %or.cond17.i = select i1 %or.cond14.i, i1 true, i1 %i.fz
  br i1 %or.cond17.i, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.ga = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !176
  %i.gb = icmp slt i32 %i.ga, 2
  br i1 %i.gb, label %bb.s, label %.sink.split

bb.s:                                             ; preds = %bb.r
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.gd, ptr %6, align 8, !tbaa !43, !alias.scope !927
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ge, align 8, !tbaa !46, !alias.scope !927
  store i8 0, ptr %i.gd, align 8, !tbaa !47, !alias.scope !927
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRiJS2_S2_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %6, ptr noundef nonnull @.str.22, ptr noundef nonnull align 4 dereferenceable(4) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.gc, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN4pbrt12StringPrintfIJRiS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !927 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.gd
  br i1 %i.gh, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.t
  %i.gi = load i64, ptr %i.gd, align 8, !tbaa !47, !alias.scope !927
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #39
  br label %.body

_ZN4pbrt12StringPrintfIJRiS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.s
  %i.gk = load ptr, ptr %6, align 8, !tbaa !48
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef 266, ptr noundef %i.gk)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZN4pbrt12StringPrintfIJRiS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.gl = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.gd
  br i1 %i.gm, label %_ZN4pbrt3LogIJRiS1_S1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  %i.gn = load i64, ptr %i.gd, align 8, !tbaa !47
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #39
  br label %_ZN4pbrt3LogIJRiS1_S1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit

bb.v:                                             ; preds = %_ZN4pbrt12StringPrintfIJRiS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.gp = landingpad { ptr, i32 }
          cleanup
  %i.gq = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.gd
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i: ; preds = %bb.v
  %i.gs = load i64, ptr %i.gd, align 8, !tbaa !47
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %.body

_ZN4pbrt3LogIJRiS1_S1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %.sink.split

bb.w:                                             ; preds = %bb.q
  %i.gu = call noundef float @_ZNK4pbrt15SampledSpectrum1yERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(32) %14)
  %i.gv = call float @llvm.fabs.f32(float %i.gu)
  %i.gw = fcmp oeq float %i.gv, +inf
  br i1 %i.gw, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.gx = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !176
  %i.gy = icmp slt i32 %i.gx, 2
  br i1 %i.gy, label %bb.y, label %.sink.split

bb.y:                                             ; preds = %bb.x
  %i.gz = getelementptr inbounds nuw i8, ptr %13, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.ha, ptr %5, align 8, !tbaa !43, !alias.scope !928
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.hb, align 8, !tbaa !46, !alias.scope !928
  store i8 0, ptr %i.ha, align 8, !tbaa !47, !alias.scope !928
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRiJS2_S2_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef nonnull @.str.23, ptr noundef nonnull align 4 dereferenceable(4) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.gz, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN4pbrt12StringPrintfIJRiS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i29 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = load ptr, ptr %5, align 8, !tbaa !48, !alias.scope !928 ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.ha
  br i1 %i.he, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25: ; preds = %bb.z
  %i.hf = load i64, ptr %i.ha, align 8, !tbaa !47, !alias.scope !928
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #39
  br label %.body

_ZN4pbrt12StringPrintfIJRiS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i29: ; preds = %bb.y
  %i.hh = load ptr, ptr %5, align 8, !tbaa !48
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef 271, ptr noundef %i.hh)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZN4pbrt12StringPrintfIJRiS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i29
  %i.hi = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.ha
  br i1 %i.hj, label %_ZN4pbrt3LogIJRiS1_S1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33: ; preds = %bb.aa
  %i.hk = load i64, ptr %i.ha, align 8, !tbaa !47
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #39
  br label %_ZN4pbrt3LogIJRiS1_S1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit37

bb.ab:                                            ; preds = %_ZN4pbrt12StringPrintfIJRiS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i29
  %i.hm = landingpad { ptr, i32 }
          cleanup
  %i.hn = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.ha
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i30: ; preds = %bb.ab
  %i.hp = load i64, ptr %i.ha, align 8, !tbaa !47
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i31: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %.body

_ZN4pbrt3LogIJRiS1_S1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit37: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4pbrt3LogIJRiS1_S1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit37, %bb.x, %_ZN4pbrt3LogIJRiS1_S1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit, %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.f, %bb.w
  %i.hr = load i64, ptr %i.m, align 8, !tbaa !51, !noalias !929
  %i.hs = and i64 %i.hr, 144115188075855871
  %i.ht = inttoptr i64 %i.hs to ptr
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 832
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !103, !noalias !930 ; 2 uses
  %.sroa.01.0.copyload = load i64, ptr %13, align 8 ; 3 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %17, align 8 ; 3 uses
  %.sroa.2.0.copyload = load <2 x float>, ptr %i.ci, align 8, !tbaa !47 ; 3 uses
  %i.hw = and i64 %i.hv, 144115188075855871
  %i.hx = inttoptr i64 %i.hw to ptr               ; 3 uses
  %i.hy = lshr i64 %i.hv, 57
  %i.hz = trunc nuw nsw i64 %i.hy to i32
  switch i32 %i.hz, label %bb.af [
    i32 1, label %bb.ad
    i32 2, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4pbrt7RGBFilm9AddSampleENS_6Point2IiEENS_15SampledSpectrumERKNS_18SampledWavelengthsEPKNS_14VisibleSurfaceEf(ptr noundef nonnull align 8 dereferenceable(168) %i.hx, i64 %.sroa.01.0.copyload, <2 x float> %.sroa.0.0.copyload, <2 x float> %.sroa.2.0.copyload, ptr noundef nonnull align 4 dereferenceable(32) %14, ptr noundef nonnull %18, float noundef %.sroa.11.0)
  br label %_ZN4pbrt4Film9AddSampleENS_6Point2IiEENS_15SampledSpectrumERKNS_18SampledWavelengthsEPKNS_14VisibleSurfaceEf.exit

bb.ae:                                            ; preds = %bb.ac
  call void @_ZN4pbrt11GBufferFilm9AddSampleENS_6Point2IiEENS_15SampledSpectrumERKNS_18SampledWavelengthsEPKNS_14VisibleSurfaceEf(ptr noundef nonnull align 8 dereferenceable(872) %i.hx, i64 %.sroa.01.0.copyload, <2 x float> %.sroa.0.0.copyload, <2 x float> %.sroa.2.0.copyload, ptr noundef nonnull align 4 dereferenceable(32) %14, ptr noundef nonnull %18, float noundef %.sroa.11.0)
  br label %_ZN4pbrt4Film9AddSampleENS_6Point2IiEENS_15SampledSpectrumERKNS_18SampledWavelengthsEPKNS_14VisibleSurfaceEf.exit

bb.af:                                            ; preds = %bb.ac
  call void @_ZN4pbrt12SpectralFilm9AddSampleENS_6Point2IiEENS_15SampledSpectrumERKNS_18SampledWavelengthsEPKNS_14VisibleSurfaceEf(ptr noundef nonnull align 8 dereferenceable(180) %i.hx, i64 %.sroa.01.0.copyload, <2 x float> %.sroa.0.0.copyload, <2 x float> %.sroa.2.0.copyload, ptr noundef nonnull align 4 dereferenceable(32) %14, ptr noundef nonnull %18, float noundef %.sroa.11.0)
  br label %_ZN4pbrt4Film9AddSampleENS_6Point2IiEENS_15SampledSpectrumERKNS_18SampledWavelengthsEPKNS_14VisibleSurfaceEf.exit

_ZN4pbrt4Film9AddSampleENS_6Point2IiEENS_15SampledSpectrumERKNS_18SampledWavelengthsEPKNS_14VisibleSurfaceEf.exit: ; preds = %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  ret void

.body:                                            ; preds = %bb.z, %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn18 = phi { ptr, i32 } [ %i.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ], [ %i.gf, %bb.t ], [ %i.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25 ], [ %i.hm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i31 ], [ %i.hc, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  resume { ptr, i32 } %.pn18
}

declare void @_ZNK4pbrt6Camera23GenerateRayDifferentialENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind writable sret(%"class.pstd::optional.101") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef byval(%"struct.pbrt::CameraSample") align 8, ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

declare noundef float @_ZNK4pbrt15SampledSpectrum1yERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
end_hunk_0
