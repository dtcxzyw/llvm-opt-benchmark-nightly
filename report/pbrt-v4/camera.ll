Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/camera?download=true
inline.NumInlined: 1396
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS_14PMJ02BNSamplerEEEviNS_9TransformEiENKUliE_clEi:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !273
  store ptr %5, ptr %6, align 8, !tbaa !141, !noalias !273
  %i.bj = and i64 %i.am, 144115188075855871
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = lshr i64 %i.am, 57
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -1
  %i.bo = call { <2 x float>, float } @_ZN4pbrt6detail8DispatchIRZNKS_6Filter6SampleENS_6Point2IfEEEUlT_E_NS_12FilterSampleENS_9BoxFilterENS_14GaussianFilterENS_14MitchellFilterENS_17LanczosSincFilterENS_14TriangleFilterEEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.bk, i32 noundef %i.bn), !noalias !273 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !273
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.bo, 0
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.bo, 1
  %i.bp = insertelement <2 x i32> poison, i32 %i.l, i64 0
  %i.bq = insertelement <2 x i32> %i.bp, i32 %i.m, i64 1
  %i.br = sitofp <2 x i32> %i.bq to <2 x float>   ; 2 uses
  %i.bs = fadd <2 x float> %.fca.0.extract.i, %i.br
  %i.bt = call noundef float @_ZN4pbrt14PMJ02BNSampler5Get1DEv(ptr noundef nonnull align 8 dereferenceable(40) %7), !noalias !273
  %i.bu = call <2 x float> @_ZN4pbrt14PMJ02BNSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(40) %7), !noalias !273
  %i.bv = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !103, !noalias !273
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 5
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !142, !range !107, !noalias !273, !noundef !108
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.c, label %_ZN4pbrt15GetCameraSampleINS_14PMJ02BNSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit

bb.c:                                             ; preds = %bb.b
  br label %_ZN4pbrt15GetCameraSampleINS_14PMJ02BNSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit

_ZN4pbrt15GetCameraSampleINS_14PMJ02BNSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit: ; preds = %bb.b, %bb.c
  %.sroa.090.0.in = phi <2 x float> [ %i.br, %bb.c ], [ %i.bs, %bb.b ]
  %.sroa.691.0 = phi <2 x float> [ splat (float 5.000000e-01), %bb.c ], [ %i.bu, %bb.b ]
  %.sroa.992.0 = phi float [ 5.000000e-01, %bb.c ], [ %i.bt, %bb.b ]
  %.sroa.1193.0 = phi float [ 1.000000e+00, %bb.c ], [ %.fca.1.extract.i, %bb.b ] ; 2 uses
  %.sroa.090.0 = fadd <2 x float> %.sroa.090.0.in, splat (float 5.000000e-01)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> %.sroa.090.0, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.691.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %.sroa.992.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %.sroa.1193.0, ptr %.sroa.4.0..sroa_idx, align 4
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !143, !noalias !278 ; 2 uses
  %i.cb = and i64 %i.ca, 144115188075855871
  %i.cc = inttoptr i64 %i.cb to ptr               ; 4 uses
  %i.cd = lshr i64 %i.ca, 57
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  switch i32 %i.ce, label %bb.g [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_14PMJ02BNSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt17PerspectiveCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1448) %i.cc, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.e:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_14PMJ02BNSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt18OrthographicCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1440) %i.cc, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.f:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_14PMJ02BNSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt15SphericalCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(900) %i.cc, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.g:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_14PMJ02BNSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt15RealisticCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1128) %i.cc, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 4 uses
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !145, !range !107, !noundef !108
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit, label %bb.k

_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit:    ; preds = %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !279
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !279
  %i.cj = load <1 x float>, ptr %11, align 16, !noalias !279
  %.sroa.07.4.vec.insert.i.i = shufflevector <1 x float> %i.cj, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.cl = load <1 x float>, ptr %i.ck, align 4, !noalias !279
  %.sroa.05.4.vec.insert.i.i = shufflevector <1 x float> %i.cl, <1 x float> poison, <2 x i32> zeroinitializer
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cn = load <1 x float>, ptr %i.cm, align 8, !noalias !279
  %.sroa.0.4.vec.insert.i.i = shufflevector <1 x float> %i.cn, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %3, align 8, !tbaa !136, !noalias !279
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %i.co, align 8, !tbaa !136, !noalias !279
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.cp, align 8, !tbaa !136, !noalias !279
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %2, ptr noundef nonnull align 4 dereferenceable(128) %i.ci, ptr noundef nonnull align 4 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !279
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %.sroa.044.0.copyload.i = load <2 x float>, ptr %i.cq, align 4, !noalias !279 ; 3 uses
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %.sroa.245.0.copyload.i = load float, ptr %.sroa.245.0..sroa_idx.i, align 4, !noalias !279 ; 2 uses
  %i.cr = shufflevector <2 x float> %.sroa.044.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ct = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 8 %i.ci, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !136, !noalias !279 ; 3 uses
  %i.cu = shufflevector <5 x float> %i.ct, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cv = shufflevector <5 x float> %i.ct, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.cw = fmul <2 x float> %i.cr, %i.cv
  %i.cx = load <2 x float>, ptr %i.cs, align 4, !tbaa !136, !noalias !279 ; 2 uses
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cz = shufflevector <4 x float> %i.cu, <4 x float> %i.cy, <2 x i32> <i32 0, i32 4>
  %i.da = fmul <2 x float> %.sroa.044.0.copyload.i, %i.cz
  %i.db = fadd <2 x float> %i.cw, %i.da
  %i.dc = insertelement <2 x float> poison, float %.sroa.245.0.copyload.i, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = shufflevector <2 x float> %i.cx, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.df = shufflevector <5 x float> %i.ct, <5 x float> %i.de, <2 x i32> <i32 2, i32 6>
  %i.dg = fmul <2 x float> %i.dd, %i.df
  %i.dh = fadd <2 x float> %i.db, %i.dg           ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dj = load <2 x float>, ptr %i.di, align 8, !tbaa !136, !noalias !279
  %i.dk = fmul <2 x float> %.sroa.044.0.copyload.i, %i.dj ; 2 uses
  %shift = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.dk, %shift
  %i.dl = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !136, !noalias !279
  %i.do = fmul float %.sroa.245.0.copyload.i, %i.dn
  %i.dp = fadd float %i.dl, %i.do                 ; 5 uses
  %i.dq = fmul <2 x float> %i.dh, %i.dh           ; 2 uses
  %shift124 = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop125 = fadd <2 x float> %i.dq, %shift124
  %i.dr = extractelement <2 x float> %foldExtExtBinop125, i64 0
  %i.ds = fmul float %i.dp, %i.dp
  %i.dt = fadd float %i.dr, %i.ds                 ; 2 uses
  %i.du = fcmp ogt float %i.dt, 0.000000e+00
  br i1 %i.du, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit
  %i.dv = extractelement <2 x float> %i.dh, i64 1
  %i.dw = call noundef float @llvm.fabs.f32(float %i.dv)
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !147, !noalias !279
  %i.ea = load float, ptr %i.dx, align 8, !tbaa !148, !noalias !279
  %i.eb = fsub float %i.dz, %i.ea
  %i.ec = fmul float %i.eb, 5.000000e-01
  %i.ed = fmul float %i.dw, %i.ec
  %i.ee = insertelement <2 x float> %i.dh, float %i.dp, i64 1
  %i.ef = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ee)
  %i.eg = load <6 x float>, ptr %2, align 16, !tbaa !136, !noalias !279 ; 2 uses
  %i.eh = shufflevector <6 x float> %i.eg, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.ei = shufflevector <6 x float> %i.eg, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ej = fsub <2 x float> %i.eh, %i.ei
  %i.ek = fmul <2 x float> %i.ej, splat (float 5.000000e-01)
  %i.el = fmul <2 x float> %i.ef, %i.ek           ; 2 uses
  %i.em = extractelement <2 x float> %i.el, i64 0
  %i.en = fadd float %i.em, %i.ed
  %i.eo = extractelement <2 x float> %i.el, i64 1
  %i.ep = fadd float %i.en, %i.eo
  %i.eq = fdiv float %i.ep, %i.dt                 ; 2 uses
  %i.er = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x float> %i.dh, %i.es
  %i.eu = fmul float %i.dp, %i.eq
  %i.ev = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %2, <2 x float> %i.et, float %i.eu) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit
  %.sroa.070.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ew = load <2 x float>, ptr %.sroa.070.sroa.2.0..sroa_idx.i, align 4, !noalias !279
  %i.ex = load <4 x float>, ptr %2, align 16, !noalias !279
  %.sroa.070.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.070.sroa.5.0.copyload.i = load float, ptr %.sroa.070.sroa.5.0..sroa_idx.i, align 16, !noalias !279
  %.sroa.070.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.070.sroa.6.0.copyload.i = load float, ptr %.sroa.070.sroa.6.0..sroa_idx.i, align 4, !noalias !279
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !279
  %i.ey = load i8, ptr %i.cf, align 8, !tbaa !145, !range !107, !noundef !108
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.j, label %.noexc33

.noexc33:                                         ; preds = %bb.i
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 235, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(4) @.str.19) #26
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.fa = shufflevector <4 x float> %i.ex, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.fb = fadd <2 x float> %i.ew, %i.fa
  %i.fc = fmul <2 x float> %i.fb, splat (float 5.000000e-01)
  %i.fd = fadd float %.sroa.070.sroa.5.0.copyload.i, %.sroa.070.sroa.6.0.copyload.i
  %i.fe = fmul float %i.fd, 5.000000e-01
  store <2 x float> %i.fc, ptr %11, align 16
  store float %i.fe, ptr %i.cm, align 8
  store <2 x float> %i.dh, ptr %i.cq, align 4
  store float %i.dp, ptr %.sroa.245.0..sroa_idx.i, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !149
  %i.fh = getelementptr inbounds [16 x i8], ptr %i.fg, i64 %i.p
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fh, i8 0, i64 16, i1 false)
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !150
  %i.fk = getelementptr inbounds [16 x i8], ptr %i.fj, i64 %i.p ; 2 uses
  %i.fl = load <4 x float>, ptr %10, align 16
  %.sroa.03.4.vec.insert.i = shufflevector <4 x float> %i.fl, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.fm = load <4 x float>, ptr %12, align 8
  %.sroa.35.12.vec.insert.i = shufflevector <4 x float> %i.fm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.fk, align 16
  %.sroa.2.0..0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i, ptr %.sroa.2.0..0..sroa_idx.i.i39, align 8, !tbaa !111
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !151
  %i.fp = getelementptr inbounds [16 x i8], ptr %i.fo, i64 %i.p ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fq = load <4 x float>, ptr %13, align 16     ; 2 uses
  %.sroa.0.4.vec.insert.i40 = shufflevector <4 x float> %i.fq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i41 = shufflevector <4 x float> %i.fq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i40, ptr %i.fp, align 16
  %.sroa.2.0..0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i41, ptr %.sroa.2.0..0..sroa_idx.i28.i, align 8, !tbaa !111
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !152
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.p
  store float %.sroa.1193.0, ptr %i.ft, align 4, !tbaa !136
  %i.fu = load i8, ptr %i.b, align 8, !tbaa !153, !range !107, !noundef !108
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !154
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 %i.p
  store i8 0, ptr %i.fy, align 1, !tbaa !155
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !156
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.p
  store float 0.000000e+00, ptr %i.gb, align 4, !tbaa !136
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !157
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.p
  store float 0.000000e+00, ptr %i.ge, align 4, !tbaa !136
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !158
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.p
  store float 0.000000e+00, ptr %i.gh, align 4, !tbaa !136
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !159
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.p
  store float 0.000000e+00, ptr %i.gk, align 4, !tbaa !136
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !160
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.p
  store float 0.000000e+00, ptr %i.gn, align 4, !tbaa !136
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !161
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.p
  store float 0.000000e+00, ptr %i.gq, align 4, !tbaa !136
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !159
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.p
  store float 0.000000e+00, ptr %i.gt, align 4, !tbaa !136
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !160
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.p
  store float 0.000000e+00, ptr %i.gw, align 4, !tbaa !136
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !161
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.p
  store float 0.000000e+00, ptr %i.gz, align 4, !tbaa !136
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !162
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.p
  store float 0.000000e+00, ptr %i.hc, align 4, !tbaa !136
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !163
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.p
  store float 0.000000e+00, ptr %i.hf, align 4, !tbaa !136
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !164
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.p
  store float 0.000000e+00, ptr %i.hi, align 4, !tbaa !136
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !165
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.p
  store float 0.000000e+00, ptr %i.hl, align 4, !tbaa !136
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !166
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.p
  store float 0.000000e+00, ptr %i.ho, align 4, !tbaa !136
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !167
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.p
  store float 0.000000e+00, ptr %i.hr, align 4, !tbaa !136
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !165
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.p
  store float 0.000000e+00, ptr %i.hu, align 4, !tbaa !136
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !166
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.p
  store float 0.000000e+00, ptr %i.hx, align 4, !tbaa !136
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !167
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.p
  store float 0.000000e+00, ptr %i.ia, align 4, !tbaa !136
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !149
  %i.id = getelementptr inbounds [16 x i8], ptr %i.ic, i64 %i.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.id, i8 0, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ie = load i8, ptr %i.cf, align 8, !tbaa !145, !range !107, !noundef !108
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !70 ; 19 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 400
  %i.ij = atomicrmw add ptr %i.ii, i32 1 monotonic, align 4
  %i.ik = load float, ptr %11, align 16, !tbaa !169
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !156
  %i.in = sext i32 %i.ij to i64                   ; 18 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.in
  store float %i.ik, ptr %i.io, align 4, !tbaa !136
  %i.ip = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !170
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !157
  %i.it = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.in
  store float %i.iq, ptr %i.it, align 4, !tbaa !136
  %i.iu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.iv = load float, ptr %i.iu, align 8, !tbaa !171
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ih, i64 40
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !158
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.in
  store float %i.iv, ptr %i.iy, align 4, !tbaa !136
  %i.iz = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !173
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ih, i64 56
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !165
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %i.in
  store float %i.ja, ptr %i.jd, align 4, !tbaa !136
  %i.je = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.jf = load float, ptr %i.je, align 16, !tbaa !174
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ih, i64 64
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !166
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %i.in
  store float %i.jf, ptr %i.ji, align 4, !tbaa !136
  %i.jj = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !175
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ih, i64 72
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !167
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.jm, i64 %i.in
  store float %i.jk, ptr %i.jn, align 4, !tbaa !136
  %i.jo = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.jp = load float, ptr %i.jo, align 8, !tbaa !181
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ih, i64 80
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !184
  %i.js = getelementptr inbounds [4 x i8], ptr %i.jr, i64 %i.in
  store float %i.jp, ptr %i.js, align 4, !tbaa !136
  %i.jt = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ih, i64 88
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !185
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.in
  %i.jx = load i64, ptr %i.jt, align 16, !tbaa !186
  store i64 %i.jx, ptr %i.jw, align 8, !tbaa !186
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ih, i64 96
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !191
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.in
  store i32 0, ptr %i.ka, align 4, !tbaa !110
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ih, i64 104
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !192
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.kc, i64 %i.in
  store i32 %1, ptr %i.kd, align 4, !tbaa !110
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ih, i64 120
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !150
  %i.kg = getelementptr inbounds [16 x i8], ptr %i.kf, i64 %i.in ; 2 uses
  %i.kh = load <4 x float>, ptr %10, align 16
  %.sroa.03.4.vec.insert.i.i = shufflevector <4 x float> %i.kh, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ki = load <4 x float>, ptr %12, align 8
  %.sroa.35.12.vec.insert.i.i = shufflevector <4 x float> %i.ki, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i.i, ptr %i.kg, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i47 = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i47, align 8, !tbaa !111
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ih, i64 128
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !151
  %i.kl = getelementptr inbounds [16 x i8], ptr %i.kk, i64 %i.in ; 2 uses
  %i.km = load <4 x float>, ptr %13, align 16     ; 2 uses
  %.sroa.0.4.vec.insert.i.i48 = shufflevector <4 x float> %i.km, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i49 = shufflevector <4 x float> %i.km, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i48, ptr %i.kl, align 16
  %.sroa.2.0..0..sroa_idx.i28.i.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i49, ptr %.sroa.2.0..0..sroa_idx.i28.i.i, align 8, !tbaa !111
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ih, i64 160
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !149
  %i.kp = getelementptr inbounds [16 x i8], ptr %i.ko, i64 %i.in ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.kp, align 16
  %.sroa.2.0..0..sroa_idx.i.i20.i = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.2.0..0..sroa_idx.i.i20.i, align 8, !tbaa !111
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ih, i64 376
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !193
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.in
  store float 1.000000e+00, ptr %i.ks, align 4, !tbaa !136
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ih, i64 392
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !194
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.in
  store i32 0, ptr %i.kv, align 4, !tbaa !110
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ih, i64 184
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !149
  %i.ky = getelementptr inbounds [16 x i8], ptr %i.kx, i64 %i.in ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.ky, align 16
end_hunk_0
begin_hunk_1_@_ZZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS_18IndependentSamplerEEEviNS_9TransformEiENKUliE_clEi:bb.a
  %i.bp = mul i64 %.117.i.i, %i.be
  br label %_ZN4pbrt18IndependentSampler16StartPixelSampleENS_6Point2IiEEii.exit

_ZN4pbrt18IndependentSampler16StartPixelSampleENS_6Point2IiEEii.exit: ; preds = %bb.b, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i
  %.016.lcssa.i.i = phi i64 [ %i.be, %bb.b ], [ %i.bp, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i ]
  %.015.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %.1.i.i, %_ZN4pbrt3RNG7AdvanceEl.exit.loopexit.i ]
  %i.bq = add i64 %.015.lcssa.i.i, %.016.lcssa.i.i ; 4 uses
  %i.br = mul i64 %i.bq, 6364136223846793005
  %i.bs = add i64 %i.br, %i.bb
  %i.bt = lshr i64 %i.bq, 45
  %i.bu = lshr i64 %i.bq, 27
  %i.bv = xor i64 %i.bt, %i.bu
  %i.bw = trunc i64 %i.bv to i32                  ; 2 uses
  %i.bx = lshr i64 %i.bq, 59
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = tail call noundef i32 @llvm.fshr.i32(i32 %i.bw, i32 %i.bw, i32 %i.by)
  %i.ca = uitofp i32 %i.bz to float
  %i.cb = fmul nnan float %i.ca, f0x2F800000      ; 2 uses
  %i.cc = fcmp olt float %i.cb, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.cc, float %i.cb, float f0x3F7FFFFF
  %i.cd = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !103
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 6
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !134, !range !107, !noundef !108
  %i.cg = trunc nuw i8 %i.cf to i1
  %spec.select = select i1 %i.cg, float 5.000000e-01, float %.sroa.speculated.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %spec.select, ptr %i.a, align 4, !tbaa !136, !noalias !372
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !372
  store ptr %i.a, ptr %4, align 8, !tbaa !137, !noalias !372
  call void @_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE8DispatchIRZNKS_4Film17SampleWavelengthsEfEUlT_E_EEDcOS7_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::SampledWavelengths") align 4 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store <2 x i32> %i.ab, ptr %7, align 8, !tbaa !110
  %.sroa.692.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bs, ptr %.sroa.692.0..sroa_idx93, align 8, !tbaa !101
  %.sroa.995.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.bb, ptr %.sroa.995.0..sroa_idx96, align 8, !tbaa !101
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !138
  store i64 %i.ci, ptr %8, align 8, !tbaa !138
  call void @_ZN4pbrt15GetCameraSampleINS_18IndependentSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::CameraSample") align 4 %6, ptr noundef nonnull byval(%"class.pbrt::IndependentSampler") align 8 %7, i64 %.sroa.0101.0.insert.insert107, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !143, !noalias !373 ; 2 uses
  %i.cl = and i64 %i.ck, 144115188075855871
  %i.cm = inttoptr i64 %i.cl to ptr               ; 4 uses
  %i.cn = lshr i64 %i.ck, 57
  %i.co = trunc nuw nsw i64 %i.cn to i32
  switch i32 %i.co, label %bb.h [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %_ZN4pbrt18IndependentSampler16StartPixelSampleENS_6Point2IiEEii.exit
  call void @_ZNK4pbrt17PerspectiveCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1448) %i.cm, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %6, ptr noundef nonnull align 4 dereferenceable(32) %5)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.f:                                             ; preds = %_ZN4pbrt18IndependentSampler16StartPixelSampleENS_6Point2IiEEii.exit
  call void @_ZNK4pbrt18OrthographicCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1440) %i.cm, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %6, ptr noundef nonnull align 4 dereferenceable(32) %5)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.g:                                             ; preds = %_ZN4pbrt18IndependentSampler16StartPixelSampleENS_6Point2IiEEii.exit
  call void @_ZNK4pbrt15SphericalCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %9, ptr noundef nonnull align 8 dereferenceable(900) %i.cm, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %6, ptr noundef nonnull align 4 dereferenceable(32) %5)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.h:                                             ; preds = %_ZN4pbrt18IndependentSampler16StartPixelSampleENS_6Point2IiEEii.exit
  call void @_ZNK4pbrt15RealisticCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1128) %i.cm, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %6, ptr noundef nonnull align 4 dereferenceable(32) %5)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !145, !range !107, !noundef !108
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit, label %bb.l

_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit:    ; preds = %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !374
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !374
  %i.ct = load <1 x float>, ptr %9, align 16, !noalias !374
  %.sroa.07.4.vec.insert.i.i = shufflevector <1 x float> %i.ct, <1 x float> poison, <2 x i32> zeroinitializer
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.cv = load <1 x float>, ptr %i.cu, align 4, !noalias !374
  %.sroa.05.4.vec.insert.i.i = shufflevector <1 x float> %i.cv, <1 x float> poison, <2 x i32> zeroinitializer
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cx = load <1 x float>, ptr %i.cw, align 8, !noalias !374
  %.sroa.0.4.vec.insert.i.i = shufflevector <1 x float> %i.cx, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %3, align 8, !tbaa !136, !noalias !374
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %i.cy, align 8, !tbaa !136, !noalias !374
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.cz, align 8, !tbaa !136, !noalias !374
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %2, ptr noundef nonnull align 4 dereferenceable(128) %i.cs, ptr noundef nonnull align 4 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !374
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %.sroa.044.0.copyload.i = load <2 x float>, ptr %i.da, align 4, !noalias !374 ; 3 uses
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %.sroa.245.0.copyload.i = load float, ptr %.sroa.245.0..sroa_idx.i, align 4, !noalias !374 ; 2 uses
  %i.db = shufflevector <2 x float> %.sroa.044.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dd = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 8 %i.cs, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !136, !noalias !374 ; 3 uses
  %i.de = shufflevector <5 x float> %i.dd, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.df = shufflevector <5 x float> %i.dd, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.dg = fmul <2 x float> %i.db, %i.df
  %i.dh = load <2 x float>, ptr %i.dc, align 4, !tbaa !136, !noalias !374 ; 2 uses
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x float> %i.de, <4 x float> %i.di, <2 x i32> <i32 0, i32 4>
  %i.dk = fmul <2 x float> %.sroa.044.0.copyload.i, %i.dj
  %i.dl = fadd <2 x float> %i.dg, %i.dk
  %i.dm = insertelement <2 x float> poison, float %.sroa.245.0.copyload.i, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = shufflevector <2 x float> %i.dh, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.dp = shufflevector <5 x float> %i.dd, <5 x float> %i.do, <2 x i32> <i32 2, i32 6>
  %i.dq = fmul <2 x float> %i.dn, %i.dp
  %i.dr = fadd <2 x float> %i.dl, %i.dq           ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dt = load <2 x float>, ptr %i.ds, align 8, !tbaa !136, !noalias !374
  %i.du = fmul <2 x float> %.sroa.044.0.copyload.i, %i.dt ; 2 uses
  %shift = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.du, %shift
  %i.dv = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !136, !noalias !374
  %i.dy = fmul float %.sroa.245.0.copyload.i, %i.dx
  %i.dz = fadd float %i.dv, %i.dy                 ; 5 uses
  %i.ea = fmul <2 x float> %i.dr, %i.dr           ; 2 uses
  %shift125 = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop126 = fadd <2 x float> %i.ea, %shift125
  %i.eb = extractelement <2 x float> %foldExtExtBinop126, i64 0
  %i.ec = fmul float %i.dz, %i.dz
  %i.ed = fadd float %i.eb, %i.ec                 ; 2 uses
  %i.ee = fcmp ogt float %i.ed, 0.000000e+00
  br i1 %i.ee, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit
  %i.ef = extractelement <2 x float> %i.dr, i64 1
  %i.eg = call noundef float @llvm.fabs.f32(float %i.ef)
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !147, !noalias !374
  %i.ek = load float, ptr %i.eh, align 8, !tbaa !148, !noalias !374
  %i.el = fsub float %i.ej, %i.ek
  %i.em = fmul float %i.el, 5.000000e-01
  %i.en = fmul float %i.eg, %i.em
  %i.eo = insertelement <2 x float> %i.dr, float %i.dz, i64 1
  %i.ep = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.eo)
  %i.eq = load <6 x float>, ptr %2, align 16, !tbaa !136, !noalias !374 ; 2 uses
  %i.er = shufflevector <6 x float> %i.eq, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.es = shufflevector <6 x float> %i.eq, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.et = fsub <2 x float> %i.er, %i.es
  %i.eu = fmul <2 x float> %i.et, splat (float 5.000000e-01)
  %i.ev = fmul <2 x float> %i.ep, %i.eu           ; 2 uses
  %i.ew = extractelement <2 x float> %i.ev, i64 0
  %i.ex = fadd float %i.ew, %i.en
  %i.ey = extractelement <2 x float> %i.ev, i64 1
  %i.ez = fadd float %i.ex, %i.ey
  %i.fa = fdiv float %i.ez, %i.ed                 ; 2 uses
  %i.fb = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x float> %i.dr, %i.fc
  %i.fe = fmul float %i.dz, %i.fa
  %i.ff = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %2, <2 x float> %i.fd, float %i.fe) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit
  %.sroa.070.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fg = load <2 x float>, ptr %.sroa.070.sroa.2.0..sroa_idx.i, align 4, !noalias !374
  %i.fh = load <4 x float>, ptr %2, align 16, !noalias !374
  %.sroa.070.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.070.sroa.5.0.copyload.i = load float, ptr %.sroa.070.sroa.5.0..sroa_idx.i, align 16, !noalias !374
  %.sroa.070.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.070.sroa.6.0.copyload.i = load float, ptr %.sroa.070.sroa.6.0..sroa_idx.i, align 4, !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !374
  %i.fi = load i8, ptr %i.cp, align 8, !tbaa !145, !range !107, !noundef !108
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.k, label %.noexc31

.noexc31:                                         ; preds = %bb.j
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 235, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(4) @.str.19) #26
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.fk = shufflevector <4 x float> %i.fh, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.fl = fadd <2 x float> %i.fg, %i.fk
  %i.fm = fmul <2 x float> %i.fl, splat (float 5.000000e-01)
  %i.fn = fadd float %.sroa.070.sroa.5.0.copyload.i, %.sroa.070.sroa.6.0.copyload.i
  %i.fo = fmul float %i.fn, 5.000000e-01
  store <2 x float> %i.fm, ptr %9, align 16
  store float %i.fo, ptr %i.cw, align 8
  store <2 x float> %i.dr, ptr %i.da, align 4
  store float %i.dz, ptr %.sroa.245.0..sroa_idx.i, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !149
  %i.fr = getelementptr inbounds [16 x i8], ptr %i.fq, i64 %i.p
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fr, i8 0, i64 16, i1 false)
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !150
  %i.fu = getelementptr inbounds [16 x i8], ptr %i.ft, i64 %i.p ; 2 uses
  %i.fv = load <4 x float>, ptr %5, align 16
  %.sroa.03.4.vec.insert.i = shufflevector <4 x float> %i.fv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.fw = load <4 x float>, ptr %10, align 8
  %.sroa.35.12.vec.insert.i = shufflevector <4 x float> %i.fw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.fu, align 16
  %.sroa.2.0..0..sroa_idx.i.i37 = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i, ptr %.sroa.2.0..0..sroa_idx.i.i37, align 8, !tbaa !111
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !151
  %i.fz = getelementptr inbounds [16 x i8], ptr %i.fy, i64 %i.p ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ga = load <4 x float>, ptr %11, align 16     ; 2 uses
  %.sroa.0.4.vec.insert.i38 = shufflevector <4 x float> %i.ga, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i39 = shufflevector <4 x float> %i.ga, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i38, ptr %i.fz, align 16
  %.sroa.2.0..0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i39, ptr %.sroa.2.0..0..sroa_idx.i28.i, align 8, !tbaa !111
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !221
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !152
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.p
  store float %i.gc, ptr %i.gf, align 4, !tbaa !136
  %i.gg = load i8, ptr %i.b, align 8, !tbaa !153, !range !107, !noundef !108
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !154
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 %i.p
  store i8 0, ptr %i.gk, align 1, !tbaa !155
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !156
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.p
  store float 0.000000e+00, ptr %i.gn, align 4, !tbaa !136
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !157
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.p
  store float 0.000000e+00, ptr %i.gq, align 4, !tbaa !136
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !158
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.p
  store float 0.000000e+00, ptr %i.gt, align 4, !tbaa !136
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !159
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.p
  store float 0.000000e+00, ptr %i.gw, align 4, !tbaa !136
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !160
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.p
  store float 0.000000e+00, ptr %i.gz, align 4, !tbaa !136
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !161
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.p
  store float 0.000000e+00, ptr %i.hc, align 4, !tbaa !136
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !159
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.p
  store float 0.000000e+00, ptr %i.hf, align 4, !tbaa !136
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !160
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.p
  store float 0.000000e+00, ptr %i.hi, align 4, !tbaa !136
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !161
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.p
  store float 0.000000e+00, ptr %i.hl, align 4, !tbaa !136
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !162
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.p
  store float 0.000000e+00, ptr %i.ho, align 4, !tbaa !136
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !163
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.p
  store float 0.000000e+00, ptr %i.hr, align 4, !tbaa !136
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !164
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.p
  store float 0.000000e+00, ptr %i.hu, align 4, !tbaa !136
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !165
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.p
  store float 0.000000e+00, ptr %i.hx, align 4, !tbaa !136
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !166
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.p
  store float 0.000000e+00, ptr %i.ia, align 4, !tbaa !136
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !167
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.p
  store float 0.000000e+00, ptr %i.id, align 4, !tbaa !136
  %i.ie = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !165
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.if, i64 %i.p
  store float 0.000000e+00, ptr %i.ig, align 4, !tbaa !136
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !166
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.p
  store float 0.000000e+00, ptr %i.ij, align 4, !tbaa !136
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !167
  %i.im = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.p
  store float 0.000000e+00, ptr %i.im, align 4, !tbaa !136
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !149
  %i.ip = getelementptr inbounds [16 x i8], ptr %i.io, i64 %i.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ip, i8 0, i64 16, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.iq = load i8, ptr %i.cp, align 8, !tbaa !145, !range !107, !noundef !108
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !75 ; 19 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 400
  %i.iv = atomicrmw add ptr %i.iu, i32 1 monotonic, align 4
  %i.iw = load float, ptr %9, align 16, !tbaa !169
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !156
  %i.iz = sext i32 %i.iv to i64                   ; 18 uses
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.iz
  store float %i.iw, ptr %i.ja, align 4, !tbaa !136
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !170
  %i.jd = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !157
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.iz
  store float %i.jc, ptr %i.jf, align 4, !tbaa !136
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jh = load float, ptr %i.jg, align 8, !tbaa !171
  %i.ji = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !158
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.jj, i64 %i.iz
  store float %i.jh, ptr %i.jk, align 4, !tbaa !136
  %i.jl = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !173
  %i.jn = getelementptr inbounds nuw i8, ptr %i.it, i64 56
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !165
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.jo, i64 %i.iz
  store float %i.jm, ptr %i.jp, align 4, !tbaa !136
  %i.jq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jr = load float, ptr %i.jq, align 16, !tbaa !174
  %i.js = getelementptr inbounds nuw i8, ptr %i.it, i64 64
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !166
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.iz
  store float %i.jr, ptr %i.ju, align 4, !tbaa !136
  %i.jv = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !175
  %i.jx = getelementptr inbounds nuw i8, ptr %i.it, i64 72
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !167
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.iz
  store float %i.jw, ptr %i.jz, align 4, !tbaa !136
  %i.ka = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.kb = load float, ptr %i.ka, align 8, !tbaa !181
  %i.kc = getelementptr inbounds nuw i8, ptr %i.it, i64 80
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !184
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.iz
  store float %i.kb, ptr %i.ke, align 4, !tbaa !136
  %i.kf = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.kg = getelementptr inbounds nuw i8, ptr %i.it, i64 88
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !185
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.kh, i64 %i.iz
  %i.kj = load i64, ptr %i.kf, align 16, !tbaa !186
  store i64 %i.kj, ptr %i.ki, align 8, !tbaa !186
  %i.kk = getelementptr inbounds nuw i8, ptr %i.it, i64 96
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !191
  %i.km = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.iz
  store i32 0, ptr %i.km, align 4, !tbaa !110
  %i.kn = getelementptr inbounds nuw i8, ptr %i.it, i64 104
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !192
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %i.iz
  store i32 %1, ptr %i.kp, align 4, !tbaa !110
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 120
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !150
  %i.ks = getelementptr inbounds [16 x i8], ptr %i.kr, i64 %i.iz ; 2 uses
  %i.kt = load <4 x float>, ptr %5, align 16
  %.sroa.03.4.vec.insert.i.i = shufflevector <4 x float> %i.kt, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ku = load <4 x float>, ptr %10, align 8
  %.sroa.35.12.vec.insert.i.i = shufflevector <4 x float> %i.ku, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i.i, ptr %i.ks, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i45 = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i45, align 8, !tbaa !111
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 128
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !151
  %i.kx = getelementptr inbounds [16 x i8], ptr %i.kw, i64 %i.iz ; 2 uses
  %i.ky = load <4 x float>, ptr %11, align 16     ; 2 uses
  %.sroa.0.4.vec.insert.i.i46 = shufflevector <4 x float> %i.ky, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i47 = shufflevector <4 x float> %i.ky, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i46, ptr %i.kx, align 16
  %.sroa.2.0..0..sroa_idx.i28.i.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i47, ptr %.sroa.2.0..0..sroa_idx.i28.i.i, align 8, !tbaa !111
  %i.kz = getelementptr inbounds nuw i8, ptr %i.it, i64 160
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !149
  %i.lb = getelementptr inbounds [16 x i8], ptr %i.la, i64 %i.iz ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.lb, align 16
  %.sroa.2.0..0..sroa_idx.i.i20.i = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.2.0..0..sroa_idx.i.i20.i, align 8, !tbaa !111
  %i.lc = getelementptr inbounds nuw i8, ptr %i.it, i64 376
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !193
  %i.le = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %i.iz
  store float 1.000000e+00, ptr %i.le, align 4, !tbaa !136
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 392
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !194
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %i.iz
  store i32 0, ptr %i.lh, align 4, !tbaa !110
  %i.li = getelementptr inbounds nuw i8, ptr %i.it, i64 184
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !149
end_hunk_1
begin_hunk_2_@_ZZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS_17StratifiedSamplerEEEviNS_9TransformEiENKUliE_clEi:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !386
  store ptr %5, ptr %6, align 8, !tbaa !141, !noalias !386
  %i.cf = and i64 %i.cd, 144115188075855871
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = lshr i64 %i.cd, 57
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -1
  %i.ck = call { <2 x float>, float } @_ZN4pbrt6detail8DispatchIRZNKS_6Filter6SampleENS_6Point2IfEEEUlT_E_NS_12FilterSampleENS_9BoxFilterENS_14GaussianFilterENS_14MitchellFilterENS_17LanczosSincFilterENS_14TriangleFilterEEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.cg, i32 noundef %i.cj), !noalias !386 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !386
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !386
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.ck, 0
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.ck, 1
  %i.cl = insertelement <2 x i32> poison, i32 %i.l, i64 0
  %i.cm = insertelement <2 x i32> %i.cl, i32 %i.m, i64 1
  %i.cn = sitofp <2 x i32> %i.cm to <2 x float>   ; 2 uses
  %i.co = fadd <2 x float> %.fca.0.extract.i, %i.cn
  %i.cp = call noundef float @_ZN4pbrt17StratifiedSampler5Get1DEv(ptr noundef nonnull align 8 dereferenceable(48) %7), !noalias !386
  %i.cq = call <2 x float> @_ZN4pbrt17StratifiedSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(48) %7), !noalias !386
  %i.cr = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !103, !noalias !386
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 5
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !142, !range !107, !noalias !386, !noundef !108
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.e, label %_ZN4pbrt15GetCameraSampleINS_17StratifiedSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit

bb.e:                                             ; preds = %_ZN4pbrt17StratifiedSampler16StartPixelSampleENS_6Point2IiEEii.exit
  br label %_ZN4pbrt15GetCameraSampleINS_17StratifiedSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit

_ZN4pbrt15GetCameraSampleINS_17StratifiedSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit: ; preds = %_ZN4pbrt17StratifiedSampler16StartPixelSampleENS_6Point2IiEEii.exit, %bb.e
  %.sroa.090.0.in = phi <2 x float> [ %i.cn, %bb.e ], [ %i.co, %_ZN4pbrt17StratifiedSampler16StartPixelSampleENS_6Point2IiEEii.exit ]
  %.sroa.691.0 = phi <2 x float> [ splat (float 5.000000e-01), %bb.e ], [ %i.cq, %_ZN4pbrt17StratifiedSampler16StartPixelSampleENS_6Point2IiEEii.exit ]
  %.sroa.992.0 = phi float [ 5.000000e-01, %bb.e ], [ %i.cp, %_ZN4pbrt17StratifiedSampler16StartPixelSampleENS_6Point2IiEEii.exit ]
  %.sroa.1193.0 = phi float [ 1.000000e+00, %bb.e ], [ %.fca.1.extract.i, %_ZN4pbrt17StratifiedSampler16StartPixelSampleENS_6Point2IiEEii.exit ] ; 2 uses
  %.sroa.090.0 = fadd <2 x float> %.sroa.090.0.in, splat (float 5.000000e-01)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> %.sroa.090.0, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.691.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %.sroa.992.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %.sroa.1193.0, ptr %.sroa.4.0..sroa_idx, align 4
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !143, !noalias !387 ; 2 uses
  %i.cx = and i64 %i.cw, 144115188075855871
  %i.cy = inttoptr i64 %i.cx to ptr               ; 4 uses
  %i.cz = lshr i64 %i.cw, 57
  %i.da = trunc nuw nsw i64 %i.cz to i32
  switch i32 %i.da, label %bb.i [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

bb.f:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_17StratifiedSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt17PerspectiveCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1448) %i.cy, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.g:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_17StratifiedSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt18OrthographicCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1440) %i.cy, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.h:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_17StratifiedSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt15SphericalCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(900) %i.cy, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.i:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_17StratifiedSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt15RealisticCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1128) %i.cy, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 4 uses
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !145, !range !107, !noundef !108
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit, label %bb.m

_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit:    ; preds = %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !388
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !388
  %i.df = load <1 x float>, ptr %11, align 16, !noalias !388
  %.sroa.07.4.vec.insert.i.i = shufflevector <1 x float> %i.df, <1 x float> poison, <2 x i32> zeroinitializer
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.dh = load <1 x float>, ptr %i.dg, align 4, !noalias !388
  %.sroa.05.4.vec.insert.i.i = shufflevector <1 x float> %i.dh, <1 x float> poison, <2 x i32> zeroinitializer
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.dj = load <1 x float>, ptr %i.di, align 8, !noalias !388
  %.sroa.0.4.vec.insert.i.i = shufflevector <1 x float> %i.dj, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %3, align 8, !tbaa !136, !noalias !388
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %i.dk, align 8, !tbaa !136, !noalias !388
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.dl, align 8, !tbaa !136, !noalias !388
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %2, ptr noundef nonnull align 4 dereferenceable(128) %i.de, ptr noundef nonnull align 4 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !388
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %.sroa.044.0.copyload.i = load <2 x float>, ptr %i.dm, align 4, !noalias !388 ; 3 uses
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %.sroa.245.0.copyload.i = load float, ptr %.sroa.245.0..sroa_idx.i, align 4, !noalias !388 ; 2 uses
  %i.dn = shufflevector <2 x float> %.sroa.044.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dp = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 8 %i.de, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !136, !noalias !388 ; 3 uses
  %i.dq = shufflevector <5 x float> %i.dp, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dr = shufflevector <5 x float> %i.dp, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.ds = fmul <2 x float> %i.dn, %i.dr
  %i.dt = load <2 x float>, ptr %i.do, align 4, !tbaa !136, !noalias !388 ; 2 uses
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x float> %i.dq, <4 x float> %i.du, <2 x i32> <i32 0, i32 4>
  %i.dw = fmul <2 x float> %.sroa.044.0.copyload.i, %i.dv
  %i.dx = fadd <2 x float> %i.ds, %i.dw
  %i.dy = insertelement <2 x float> poison, float %.sroa.245.0.copyload.i, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = shufflevector <2 x float> %i.dt, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.eb = shufflevector <5 x float> %i.dp, <5 x float> %i.ea, <2 x i32> <i32 2, i32 6>
  %i.ec = fmul <2 x float> %i.dz, %i.eb
  %i.ed = fadd <2 x float> %i.dx, %i.ec           ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ef = load <2 x float>, ptr %i.ee, align 8, !tbaa !136, !noalias !388
  %i.eg = fmul <2 x float> %.sroa.044.0.copyload.i, %i.ef ; 2 uses
  %shift = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.eg, %shift
  %i.eh = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ej = load float, ptr %i.ei, align 8, !tbaa !136, !noalias !388
  %i.ek = fmul float %.sroa.245.0.copyload.i, %i.ej
  %i.el = fadd float %i.eh, %i.ek                 ; 5 uses
  %i.em = fmul <2 x float> %i.ed, %i.ed           ; 2 uses
  %shift125 = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop126 = fadd <2 x float> %i.em, %shift125
  %i.en = extractelement <2 x float> %foldExtExtBinop126, i64 0
  %i.eo = fmul float %i.el, %i.el
  %i.ep = fadd float %i.en, %i.eo                 ; 2 uses
  %i.eq = fcmp ogt float %i.ep, 0.000000e+00
  br i1 %i.eq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit
  %i.er = extractelement <2 x float> %i.ed, i64 1
  %i.es = call noundef float @llvm.fabs.f32(float %i.er)
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !147, !noalias !388
  %i.ew = load float, ptr %i.et, align 8, !tbaa !148, !noalias !388
  %i.ex = fsub float %i.ev, %i.ew
  %i.ey = fmul float %i.ex, 5.000000e-01
  %i.ez = fmul float %i.es, %i.ey
  %i.fa = insertelement <2 x float> %i.ed, float %i.el, i64 1
  %i.fb = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.fa)
  %i.fc = load <6 x float>, ptr %2, align 16, !tbaa !136, !noalias !388 ; 2 uses
  %i.fd = shufflevector <6 x float> %i.fc, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.fe = shufflevector <6 x float> %i.fc, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ff = fsub <2 x float> %i.fd, %i.fe
  %i.fg = fmul <2 x float> %i.ff, splat (float 5.000000e-01)
  %i.fh = fmul <2 x float> %i.fb, %i.fg           ; 2 uses
  %i.fi = extractelement <2 x float> %i.fh, i64 0
  %i.fj = fadd float %i.fi, %i.ez
  %i.fk = extractelement <2 x float> %i.fh, i64 1
  %i.fl = fadd float %i.fj, %i.fk
  %i.fm = fdiv float %i.fl, %i.ep                 ; 2 uses
  %i.fn = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fmul <2 x float> %i.ed, %i.fo
  %i.fq = fmul float %i.el, %i.fm
  %i.fr = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %2, <2 x float> %i.fp, float %i.fq) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit
  %.sroa.070.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fs = load <2 x float>, ptr %.sroa.070.sroa.2.0..sroa_idx.i, align 4, !noalias !388
  %i.ft = load <4 x float>, ptr %2, align 16, !noalias !388
  %.sroa.070.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.070.sroa.5.0.copyload.i = load float, ptr %.sroa.070.sroa.5.0..sroa_idx.i, align 16, !noalias !388
  %.sroa.070.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.070.sroa.6.0.copyload.i = load float, ptr %.sroa.070.sroa.6.0..sroa_idx.i, align 4, !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !388
  %i.fu = load i8, ptr %i.db, align 8, !tbaa !145, !range !107, !noundef !108
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.l, label %.noexc33

.noexc33:                                         ; preds = %bb.k
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 235, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(4) @.str.19) #26
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.fw = shufflevector <4 x float> %i.ft, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.fx = fadd <2 x float> %i.fs, %i.fw
  %i.fy = fmul <2 x float> %i.fx, splat (float 5.000000e-01)
  %i.fz = fadd float %.sroa.070.sroa.5.0.copyload.i, %.sroa.070.sroa.6.0.copyload.i
  %i.ga = fmul float %i.fz, 5.000000e-01
  store <2 x float> %i.fy, ptr %11, align 16
  store float %i.ga, ptr %i.di, align 8
  store <2 x float> %i.ed, ptr %i.dm, align 4
  store float %i.el, ptr %.sroa.245.0..sroa_idx.i, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !149
  %i.gd = getelementptr inbounds [16 x i8], ptr %i.gc, i64 %i.p
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gd, i8 0, i64 16, i1 false)
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !150
  %i.gg = getelementptr inbounds [16 x i8], ptr %i.gf, i64 %i.p ; 2 uses
  %i.gh = load <4 x float>, ptr %10, align 16
  %.sroa.03.4.vec.insert.i = shufflevector <4 x float> %i.gh, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.gi = load <4 x float>, ptr %12, align 8
  %.sroa.35.12.vec.insert.i = shufflevector <4 x float> %i.gi, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.gg, align 16
  %.sroa.2.0..0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i, ptr %.sroa.2.0..0..sroa_idx.i.i39, align 8, !tbaa !111
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !151
  %i.gl = getelementptr inbounds [16 x i8], ptr %i.gk, i64 %i.p ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gm = load <4 x float>, ptr %13, align 16     ; 2 uses
  %.sroa.0.4.vec.insert.i40 = shufflevector <4 x float> %i.gm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i41 = shufflevector <4 x float> %i.gm, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i40, ptr %i.gl, align 16
  %.sroa.2.0..0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i41, ptr %.sroa.2.0..0..sroa_idx.i28.i, align 8, !tbaa !111
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !152
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.p
  store float %.sroa.1193.0, ptr %i.gp, align 4, !tbaa !136
  %i.gq = load i8, ptr %i.b, align 8, !tbaa !153, !range !107, !noundef !108
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !154
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %i.p
  store i8 0, ptr %i.gu, align 1, !tbaa !155
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !156
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.p
  store float 0.000000e+00, ptr %i.gx, align 4, !tbaa !136
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !157
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.p
  store float 0.000000e+00, ptr %i.ha, align 4, !tbaa !136
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !158
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.p
  store float 0.000000e+00, ptr %i.hd, align 4, !tbaa !136
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !159
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.p
  store float 0.000000e+00, ptr %i.hg, align 4, !tbaa !136
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !160
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.hi, i64 %i.p
  store float 0.000000e+00, ptr %i.hj, align 4, !tbaa !136
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !161
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.p
  store float 0.000000e+00, ptr %i.hm, align 4, !tbaa !136
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !159
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.p
  store float 0.000000e+00, ptr %i.hp, align 4, !tbaa !136
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !160
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.p
  store float 0.000000e+00, ptr %i.hs, align 4, !tbaa !136
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !161
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.p
  store float 0.000000e+00, ptr %i.hv, align 4, !tbaa !136
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !162
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.p
  store float 0.000000e+00, ptr %i.hy, align 4, !tbaa !136
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !163
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.p
  store float 0.000000e+00, ptr %i.ib, align 4, !tbaa !136
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !164
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.p
  store float 0.000000e+00, ptr %i.ie, align 4, !tbaa !136
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !165
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.p
  store float 0.000000e+00, ptr %i.ih, align 4, !tbaa !136
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !166
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.p
  store float 0.000000e+00, ptr %i.ik, align 4, !tbaa !136
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !167
  %i.in = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.p
  store float 0.000000e+00, ptr %i.in, align 4, !tbaa !136
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !165
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.p
  store float 0.000000e+00, ptr %i.iq, align 4, !tbaa !136
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !166
  %i.it = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.p
  store float 0.000000e+00, ptr %i.it, align 4, !tbaa !136
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !167
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.p
  store float 0.000000e+00, ptr %i.iw, align 4, !tbaa !136
  %i.ix = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !149
  %i.iz = getelementptr inbounds [16 x i8], ptr %i.iy, i64 %i.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.iz, i8 0, i64 16, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ja = load i8, ptr %i.db, align 8, !tbaa !145, !range !107, !noundef !108
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !80 ; 19 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 400
  %i.jf = atomicrmw add ptr %i.je, i32 1 monotonic, align 4
  %i.jg = load float, ptr %11, align 16, !tbaa !169
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !156
  %i.jj = sext i32 %i.jf to i64                   ; 18 uses
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.jj
  store float %i.jg, ptr %i.jk, align 4, !tbaa !136
  %i.jl = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !170
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !157
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.jo, i64 %i.jj
  store float %i.jm, ptr %i.jp, align 4, !tbaa !136
  %i.jq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.jr = load float, ptr %i.jq, align 8, !tbaa !171
  %i.js = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !158
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.jj
  store float %i.jr, ptr %i.ju, align 4, !tbaa !136
  %i.jv = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !173
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !165
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.jj
  store float %i.jw, ptr %i.jz, align 4, !tbaa !136
  %i.ka = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.kb = load float, ptr %i.ka, align 16, !tbaa !174
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jd, i64 64
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !166
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.jj
  store float %i.kb, ptr %i.ke, align 4, !tbaa !136
  %i.kf = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !175
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jd, i64 72
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !167
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.jj
  store float %i.kg, ptr %i.kj, align 4, !tbaa !136
  %i.kk = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.kl = load float, ptr %i.kk, align 8, !tbaa !181
  %i.km = getelementptr inbounds nuw i8, ptr %i.jd, i64 80
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !184
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %i.jj
  store float %i.kl, ptr %i.ko, align 4, !tbaa !136
  %i.kp = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jd, i64 88
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !185
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.jj
  %i.kt = load i64, ptr %i.kp, align 16, !tbaa !186
  store i64 %i.kt, ptr %i.ks, align 8, !tbaa !186
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jd, i64 96
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !191
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.jj
  store i32 0, ptr %i.kw, align 4, !tbaa !110
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jd, i64 104
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !192
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.ky, i64 %i.jj
  store i32 %1, ptr %i.kz, align 4, !tbaa !110
  %i.la = getelementptr inbounds nuw i8, ptr %i.jd, i64 120
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !150
  %i.lc = getelementptr inbounds [16 x i8], ptr %i.lb, i64 %i.jj ; 2 uses
  %i.ld = load <4 x float>, ptr %10, align 16
  %.sroa.03.4.vec.insert.i.i = shufflevector <4 x float> %i.ld, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.le = load <4 x float>, ptr %12, align 8
  %.sroa.35.12.vec.insert.i.i = shufflevector <4 x float> %i.le, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i.i, ptr %i.lc, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i47 = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i47, align 8, !tbaa !111
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jd, i64 128
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !151
  %i.lh = getelementptr inbounds [16 x i8], ptr %i.lg, i64 %i.jj ; 2 uses
  %i.li = load <4 x float>, ptr %13, align 16     ; 2 uses
  %.sroa.0.4.vec.insert.i.i48 = shufflevector <4 x float> %i.li, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i49 = shufflevector <4 x float> %i.li, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i48, ptr %i.lh, align 16
  %.sroa.2.0..0..sroa_idx.i28.i.i = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i49, ptr %.sroa.2.0..0..sroa_idx.i28.i.i, align 8, !tbaa !111
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jd, i64 160
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !149
  %i.ll = getelementptr inbounds [16 x i8], ptr %i.lk, i64 %i.jj ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.ll, align 16
  %.sroa.2.0..0..sroa_idx.i.i20.i = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.2.0..0..sroa_idx.i.i20.i, align 8, !tbaa !111
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jd, i64 376
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !193
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.ln, i64 %i.jj
  store float 1.000000e+00, ptr %i.lo, align 4, !tbaa !136
  %i.lp = getelementptr inbounds nuw i8, ptr %i.jd, i64 392
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !194
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %i.jj
  store i32 0, ptr %i.lr, align 4, !tbaa !110
  %i.ls = getelementptr inbounds nuw i8, ptr %i.jd, i64 184
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !149
  %i.lu = getelementptr inbounds [16 x i8], ptr %i.lt, i64 %i.jj ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.lu, align 16
end_hunk_2
begin_hunk_3_@_ZZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS_13HaltonSamplerEEEviNS_9TransformEiENKUliE_clEi:bb.a
_ZN4pbrt21InverseRadicalInverseEmii.exit.us47.1.i: ; preds = %.lr.ph.i.us40.i.epil, %_ZN4pbrt21InverseRadicalInverseEmii.exit.us47.1.i.unr-lcssa
  %.lcssa131 = phi i64 [ %i.ev, %_ZN4pbrt21InverseRadicalInverseEmii.exit.us47.1.i.unr-lcssa ], [ %i.ez, %.lr.ph.i.us40.i.epil ]
  %i.fa = sext i32 %i.ag to i64
  %i.fb = mul i64 %.lcssa131, %i.fa
  %i.fc = load i32, ptr %i.al, align 8, !tbaa !110
  %i.fd = sext i32 %i.fc to i64
  %i.fe = mul i64 %i.fb, %i.fd
  br label %.split35.us.i

.split35.us.i:                                    ; preds = %_ZN4pbrt21InverseRadicalInverseEmii.exit.us47.1.i, %.split33.i, %_ZN4pbrt21InverseRadicalInverseEmii.exit.us.1.i, %_ZN4pbrt21InverseRadicalInverseEmii.exit.us.us.1.i
  %.us-phi.i = phi i64 [ %i.cz, %_ZN4pbrt21InverseRadicalInverseEmii.exit.us.us.1.i ], [ %i.fe, %_ZN4pbrt21InverseRadicalInverseEmii.exit.us47.1.i ], [ %i.dz, %_ZN4pbrt21InverseRadicalInverseEmii.exit.us.1.i ], [ 0, %.split33.i ]
  %i.ff = zext nneg i32 %i.ah to i64
  %i.fg = srem i64 %.us-phi.i, %i.ff
  br label %_ZN4pbrt13HaltonSampler16StartPixelSampleENS_6Point2IiEEii.exit

_ZN4pbrt13HaltonSampler16StartPixelSampleENS_6Point2IiEEii.exit: ; preds = %bb.b, %.split35.us.i
  %i.fh = phi i64 [ %i.fg, %.split35.us.i ], [ 0, %bb.b ]
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.fj = mul nsw i32 %i.ah, %i.ac
  %i.fk = sext i32 %i.fj to i64
  %i.fl = add nsw i64 %i.fh, %i.fk
  store i64 %i.fl, ptr %i.fi, align 8, !tbaa !234
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 3, ptr %i.fm, align 8, !tbaa !235
  %i.fn = call noundef float @_ZNK4pbrt13HaltonSampler15SampleDimensionEi(ptr noundef nonnull align 8 dereferenceable(52) %5, i32 noundef 2)
  %i.fo = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !103
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 6
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !134, !range !107, !noundef !108
  %i.fr = trunc nuw i8 %i.fq to i1
  %spec.select = select i1 %i.fr, float 5.000000e-01, float %i.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %spec.select, ptr %i.a, align 4, !tbaa !136, !noalias !405
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !405
  store ptr %i.a, ptr %4, align 8, !tbaa !137, !noalias !405
  call void @_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE8DispatchIRZNKS_4Film17SampleWavelengthsEfEUlT_E_EEDcOS7_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::SampledWavelengths") align 4 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !138
  store i64 %i.ft, ptr %8, align 8, !tbaa !138
  call void @_ZN4pbrt15GetCameraSampleINS_13HaltonSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::CameraSample") align 4 %7, ptr noundef nonnull byval(%"class.pbrt::HaltonSampler") align 8 %5, i64 %.sroa.090.0.insert.insert96, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !143, !noalias !406 ; 2 uses
  %i.fw = and i64 %i.fv, 144115188075855871
  %i.fx = inttoptr i64 %i.fw to ptr               ; 4 uses
  %i.fy = lshr i64 %i.fv, 57
  %i.fz = trunc nuw nsw i64 %i.fy to i32
  switch i32 %i.fz, label %bb.g [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %_ZN4pbrt13HaltonSampler16StartPixelSampleENS_6Point2IiEEii.exit
  call void @_ZNK4pbrt17PerspectiveCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1448) %i.fx, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %7, ptr noundef nonnull align 4 dereferenceable(32) %6)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.e:                                             ; preds = %_ZN4pbrt13HaltonSampler16StartPixelSampleENS_6Point2IiEEii.exit
  call void @_ZNK4pbrt18OrthographicCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1440) %i.fx, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %7, ptr noundef nonnull align 4 dereferenceable(32) %6)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.f:                                             ; preds = %_ZN4pbrt13HaltonSampler16StartPixelSampleENS_6Point2IiEEii.exit
  call void @_ZNK4pbrt15SphericalCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %9, ptr noundef nonnull align 8 dereferenceable(900) %i.fx, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %7, ptr noundef nonnull align 4 dereferenceable(32) %6)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.g:                                             ; preds = %_ZN4pbrt13HaltonSampler16StartPixelSampleENS_6Point2IiEEii.exit
  call void @_ZNK4pbrt15RealisticCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1128) %i.fx, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %7, ptr noundef nonnull align 4 dereferenceable(32) %6)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !145, !range !107, !noundef !108
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit, label %bb.k

_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit:    ; preds = %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !407
  %i.ge = load <1 x float>, ptr %9, align 16, !noalias !407
  %.sroa.07.4.vec.insert.i.i = shufflevector <1 x float> %i.ge, <1 x float> poison, <2 x i32> zeroinitializer
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.gg = load <1 x float>, ptr %i.gf, align 4, !noalias !407
  %.sroa.05.4.vec.insert.i.i = shufflevector <1 x float> %i.gg, <1 x float> poison, <2 x i32> zeroinitializer
  %i.gh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.gi = load <1 x float>, ptr %i.gh, align 8, !noalias !407
  %.sroa.0.4.vec.insert.i.i = shufflevector <1 x float> %i.gi, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %3, align 8, !tbaa !136, !noalias !407
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %i.gj, align 8, !tbaa !136, !noalias !407
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.gk, align 8, !tbaa !136, !noalias !407
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %2, ptr noundef nonnull align 4 dereferenceable(128) %i.gd, ptr noundef nonnull align 4 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !407
  %i.gl = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %.sroa.044.0.copyload.i = load <2 x float>, ptr %i.gl, align 4, !noalias !407 ; 3 uses
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %.sroa.245.0.copyload.i = load float, ptr %.sroa.245.0..sroa_idx.i, align 4, !noalias !407 ; 2 uses
  %i.gm = shufflevector <2 x float> %.sroa.044.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.go = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 8 %i.gd, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !136, !noalias !407 ; 3 uses
  %i.gp = shufflevector <5 x float> %i.go, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gq = shufflevector <5 x float> %i.go, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.gr = fmul <2 x float> %i.gm, %i.gq
  %i.gs = load <2 x float>, ptr %i.gn, align 4, !tbaa !136, !noalias !407 ; 2 uses
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gu = shufflevector <4 x float> %i.gp, <4 x float> %i.gt, <2 x i32> <i32 0, i32 4>
  %i.gv = fmul <2 x float> %.sroa.044.0.copyload.i, %i.gu
  %i.gw = fadd <2 x float> %i.gr, %i.gv
  %i.gx = insertelement <2 x float> poison, float %.sroa.245.0.copyload.i, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = shufflevector <2 x float> %i.gs, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.ha = shufflevector <5 x float> %i.go, <5 x float> %i.gz, <2 x i32> <i32 2, i32 6>
  %i.hb = fmul <2 x float> %i.gy, %i.ha
  %i.hc = fadd <2 x float> %i.gw, %i.hb           ; 6 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.he = load <2 x float>, ptr %i.hd, align 8, !tbaa !136, !noalias !407
  %i.hf = fmul <2 x float> %.sroa.044.0.copyload.i, %i.he ; 2 uses
  %shift = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.hf, %shift
  %i.hg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hi = load float, ptr %i.hh, align 8, !tbaa !136, !noalias !407
  %i.hj = fmul float %.sroa.245.0.copyload.i, %i.hi
  %i.hk = fadd float %i.hg, %i.hj                 ; 5 uses
  %i.hl = fmul <2 x float> %i.hc, %i.hc           ; 2 uses
  %shift126 = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop127 = fadd <2 x float> %i.hl, %shift126
  %i.hm = extractelement <2 x float> %foldExtExtBinop127, i64 0
  %i.hn = fmul float %i.hk, %i.hk
  %i.ho = fadd float %i.hm, %i.hn                 ; 2 uses
  %i.hp = fcmp ogt float %i.ho, 0.000000e+00
  br i1 %i.hp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit
  %i.hq = extractelement <2 x float> %i.hc, i64 1
  %i.hr = call noundef float @llvm.fabs.f32(float %i.hq)
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !147, !noalias !407
  %i.hv = load float, ptr %i.hs, align 8, !tbaa !148, !noalias !407
  %i.hw = fsub float %i.hu, %i.hv
  %i.hx = fmul float %i.hw, 5.000000e-01
  %i.hy = fmul float %i.hr, %i.hx
  %i.hz = insertelement <2 x float> %i.hc, float %i.hk, i64 1
  %i.ia = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hz)
  %i.ib = load <6 x float>, ptr %2, align 16, !tbaa !136, !noalias !407 ; 2 uses
  %i.ic = shufflevector <6 x float> %i.ib, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.id = shufflevector <6 x float> %i.ib, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ie = fsub <2 x float> %i.ic, %i.id
  %i.if = fmul <2 x float> %i.ie, splat (float 5.000000e-01)
  %i.ig = fmul <2 x float> %i.ia, %i.if           ; 2 uses
  %i.ih = extractelement <2 x float> %i.ig, i64 0
  %i.ii = fadd float %i.ih, %i.hy
  %i.ij = extractelement <2 x float> %i.ig, i64 1
  %i.ik = fadd float %i.ii, %i.ij
  %i.il = fdiv float %i.ik, %i.ho                 ; 2 uses
  %i.im = insertelement <2 x float> poison, float %i.il, i64 0
  %i.in = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> zeroinitializer
  %i.io = fmul <2 x float> %i.hc, %i.in
  %i.ip = fmul float %i.hk, %i.il
  %i.iq = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %2, <2 x float> %i.io, float %i.ip) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit
  %.sroa.070.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ir = load <2 x float>, ptr %.sroa.070.sroa.2.0..sroa_idx.i, align 4, !noalias !407
  %i.is = load <4 x float>, ptr %2, align 16, !noalias !407
  %.sroa.070.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.070.sroa.5.0.copyload.i = load float, ptr %.sroa.070.sroa.5.0..sroa_idx.i, align 16, !noalias !407
  %.sroa.070.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.070.sroa.6.0.copyload.i = load float, ptr %.sroa.070.sroa.6.0..sroa_idx.i, align 4, !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !407
  %i.it = load i8, ptr %i.ga, align 8, !tbaa !145, !range !107, !noundef !108
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %bb.j, label %.noexc31

.noexc31:                                         ; preds = %bb.i
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 235, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(4) @.str.19) #26
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.iv = shufflevector <4 x float> %i.is, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.iw = fadd <2 x float> %i.ir, %i.iv
  %i.ix = fmul <2 x float> %i.iw, splat (float 5.000000e-01)
  %i.iy = fadd float %.sroa.070.sroa.5.0.copyload.i, %.sroa.070.sroa.6.0.copyload.i
  %i.iz = fmul float %i.iy, 5.000000e-01
  store <2 x float> %i.ix, ptr %9, align 16
  store float %i.iz, ptr %i.gh, align 8
  store <2 x float> %i.hc, ptr %i.gl, align 4
  store float %i.hk, ptr %.sroa.245.0..sroa_idx.i, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !149
  %i.jc = getelementptr inbounds [16 x i8], ptr %i.jb, i64 %i.p
  %i.jd = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jc, i8 0, i64 16, i1 false)
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !150
  %i.jf = getelementptr inbounds [16 x i8], ptr %i.je, i64 %i.p ; 2 uses
  %i.jg = load <4 x float>, ptr %6, align 16
  %.sroa.03.4.vec.insert.i = shufflevector <4 x float> %i.jg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.jh = load <4 x float>, ptr %10, align 8
  %.sroa.35.12.vec.insert.i = shufflevector <4 x float> %i.jh, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.jf, align 16
  %.sroa.2.0..0..sroa_idx.i.i37 = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i, ptr %.sroa.2.0..0..sroa_idx.i.i37, align 8, !tbaa !111
  %i.ji = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !151
  %i.jk = getelementptr inbounds [16 x i8], ptr %i.jj, i64 %i.p ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.jl = load <4 x float>, ptr %11, align 16     ; 2 uses
  %.sroa.0.4.vec.insert.i38 = shufflevector <4 x float> %i.jl, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i39 = shufflevector <4 x float> %i.jl, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i38, ptr %i.jk, align 16
  %.sroa.2.0..0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i39, ptr %.sroa.2.0..0..sroa_idx.i28.i, align 8, !tbaa !111
  %i.jm = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !221
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !152
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.p
  store float %i.jn, ptr %i.jq, align 4, !tbaa !136
  %i.jr = load i8, ptr %i.b, align 8, !tbaa !153, !range !107, !noundef !108
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.jt = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !154
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 %i.p
  store i8 0, ptr %i.jv, align 1, !tbaa !155
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !156
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.jx, i64 %i.p
  store float 0.000000e+00, ptr %i.jy, align 4, !tbaa !136
  %i.jz = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !157
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.p
  store float 0.000000e+00, ptr %i.kb, align 4, !tbaa !136
  %i.kc = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !158
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.p
  store float 0.000000e+00, ptr %i.ke, align 4, !tbaa !136
  %i.kf = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !159
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.p
  store float 0.000000e+00, ptr %i.kh, align 4, !tbaa !136
  %i.ki = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !160
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %i.p
  store float 0.000000e+00, ptr %i.kk, align 4, !tbaa !136
  %i.kl = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !161
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.p
  store float 0.000000e+00, ptr %i.kn, align 4, !tbaa !136
  %i.ko = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !159
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.p
  store float 0.000000e+00, ptr %i.kq, align 4, !tbaa !136
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !160
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.p
  store float 0.000000e+00, ptr %i.kt, align 4, !tbaa !136
  %i.ku = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !161
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.p
  store float 0.000000e+00, ptr %i.kw, align 4, !tbaa !136
  %i.kx = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !162
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.ky, i64 %i.p
  store float 0.000000e+00, ptr %i.kz, align 4, !tbaa !136
  %i.la = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !163
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.p
  store float 0.000000e+00, ptr %i.lc, align 4, !tbaa !136
  %i.ld = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !164
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.p
  store float 0.000000e+00, ptr %i.lf, align 4, !tbaa !136
  %i.lg = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !165
  %i.li = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %i.p
  store float 0.000000e+00, ptr %i.li, align 4, !tbaa !136
  %i.lj = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !166
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.lk, i64 %i.p
  store float 0.000000e+00, ptr %i.ll, align 4, !tbaa !136
  %i.lm = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !167
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.ln, i64 %i.p
  store float 0.000000e+00, ptr %i.lo, align 4, !tbaa !136
  %i.lp = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !165
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %i.p
  store float 0.000000e+00, ptr %i.lr, align 4, !tbaa !136
  %i.ls = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !166
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.lt, i64 %i.p
  store float 0.000000e+00, ptr %i.lu, align 4, !tbaa !136
  %i.lv = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !167
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %i.p
  store float 0.000000e+00, ptr %i.lx, align 4, !tbaa !136
  %i.ly = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !149
  %i.ma = getelementptr inbounds [16 x i8], ptr %i.lz, i64 %i.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ma, i8 0, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.mb = load i8, ptr %i.ga, align 8, !tbaa !145, !range !107, !noundef !108
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !85 ; 19 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 400
  %i.mg = atomicrmw add ptr %i.mf, i32 1 monotonic, align 4
  %i.mh = load float, ptr %9, align 16, !tbaa !169
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !156
  %i.mk = sext i32 %i.mg to i64                   ; 18 uses
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.mj, i64 %i.mk
  store float %i.mh, ptr %i.ml, align 4, !tbaa !136
  %i.mm = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !170
  %i.mo = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !157
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.mp, i64 %i.mk
  store float %i.mn, ptr %i.mq, align 4, !tbaa !136
  %i.mr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ms = load float, ptr %i.mr, align 8, !tbaa !171
  %i.mt = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !158
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.mu, i64 %i.mk
  store float %i.ms, ptr %i.mv, align 4, !tbaa !136
  %i.mw = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !173
  %i.my = getelementptr inbounds nuw i8, ptr %i.me, i64 56
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !165
  %i.na = getelementptr inbounds [4 x i8], ptr %i.mz, i64 %i.mk
  store float %i.mx, ptr %i.na, align 4, !tbaa !136
  %i.nb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.nc = load float, ptr %i.nb, align 16, !tbaa !174
  %i.nd = getelementptr inbounds nuw i8, ptr %i.me, i64 64
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !166
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.ne, i64 %i.mk
  store float %i.nc, ptr %i.nf, align 4, !tbaa !136
  %i.ng = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !175
  %i.ni = getelementptr inbounds nuw i8, ptr %i.me, i64 72
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !167
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.mk
  store float %i.nh, ptr %i.nk, align 4, !tbaa !136
  %i.nl = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.nm = load float, ptr %i.nl, align 8, !tbaa !181
  %i.nn = getelementptr inbounds nuw i8, ptr %i.me, i64 80
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !184
  %i.np = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.mk
  store float %i.nm, ptr %i.np, align 4, !tbaa !136
  %i.nq = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.nr = getelementptr inbounds nuw i8, ptr %i.me, i64 88
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !185
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.ns, i64 %i.mk
  %i.nu = load i64, ptr %i.nq, align 16, !tbaa !186
  store i64 %i.nu, ptr %i.nt, align 8, !tbaa !186
  %i.nv = getelementptr inbounds nuw i8, ptr %i.me, i64 96
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !191
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.nw, i64 %i.mk
  store i32 0, ptr %i.nx, align 4, !tbaa !110
  %i.ny = getelementptr inbounds nuw i8, ptr %i.me, i64 104
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !192
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %i.mk
  store i32 %1, ptr %i.oa, align 4, !tbaa !110
  %i.ob = getelementptr inbounds nuw i8, ptr %i.me, i64 120
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !150
  %i.od = getelementptr inbounds [16 x i8], ptr %i.oc, i64 %i.mk ; 2 uses
  %i.oe = load <4 x float>, ptr %6, align 16
  %.sroa.03.4.vec.insert.i.i = shufflevector <4 x float> %i.oe, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.of = load <4 x float>, ptr %10, align 8
  %.sroa.35.12.vec.insert.i.i = shufflevector <4 x float> %i.of, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i.i, ptr %i.od, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i45 = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i45, align 8, !tbaa !111
  %i.og = getelementptr inbounds nuw i8, ptr %i.me, i64 128
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !151
  %i.oi = getelementptr inbounds [16 x i8], ptr %i.oh, i64 %i.mk ; 2 uses
  %i.oj = load <4 x float>, ptr %11, align 16     ; 2 uses
  %.sroa.0.4.vec.insert.i.i46 = shufflevector <4 x float> %i.oj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i47 = shufflevector <4 x float> %i.oj, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i46, ptr %i.oi, align 16
  %.sroa.2.0..0..sroa_idx.i28.i.i = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i47, ptr %.sroa.2.0..0..sroa_idx.i28.i.i, align 8, !tbaa !111
  %i.ok = getelementptr inbounds nuw i8, ptr %i.me, i64 160
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !149
  %i.om = getelementptr inbounds [16 x i8], ptr %i.ol, i64 %i.mk ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.om, align 16
  %.sroa.2.0..0..sroa_idx.i.i20.i = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.2.0..0..sroa_idx.i.i20.i, align 8, !tbaa !111
  %i.on = getelementptr inbounds nuw i8, ptr %i.me, i64 376
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !193
  %i.op = getelementptr inbounds [4 x i8], ptr %i.oo, i64 %i.mk
  store float 1.000000e+00, ptr %i.op, align 4, !tbaa !136
  %i.oq = getelementptr inbounds nuw i8, ptr %i.me, i64 392
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !194
  %i.os = getelementptr inbounds [4 x i8], ptr %i.or, i64 %i.mk
  store i32 0, ptr %i.os, align 4, !tbaa !110
  %i.ot = getelementptr inbounds nuw i8, ptr %i.me, i64 184
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !149
end_hunk_3
begin_hunk_4_@_ZZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS_18PaddedSobolSamplerEEEviNS_9TransformEiENKUliE_clEi:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !431
  store ptr %5, ptr %6, align 8, !tbaa !141, !noalias !431
  %i.ao = and i64 %i.am, 144115188075855871
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = lshr i64 %i.am, 57
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -1
  %i.at = call { <2 x float>, float } @_ZN4pbrt6detail8DispatchIRZNKS_6Filter6SampleENS_6Point2IfEEEUlT_E_NS_12FilterSampleENS_9BoxFilterENS_14GaussianFilterENS_14MitchellFilterENS_17LanczosSincFilterENS_14TriangleFilterEEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.ap, i32 noundef %i.as), !noalias !431 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !431
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.at, 0
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.at, 1
  %i.au = insertelement <2 x i32> poison, i32 %i.l, i64 0
  %i.av = insertelement <2 x i32> %i.au, i32 %i.m, i64 1
  %i.aw = sitofp <2 x i32> %i.av to <2 x float>   ; 2 uses
  %i.ax = fadd <2 x float> %.fca.0.extract.i, %i.aw
  %i.ay = call noundef float @_ZN4pbrt18PaddedSobolSampler5Get1DEv(ptr noundef nonnull align 8 dereferenceable(28) %7), !noalias !431
  %i.az = call <2 x float> @_ZN4pbrt18PaddedSobolSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(28) %7), !noalias !431
  %i.ba = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !103, !noalias !431
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 5
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !142, !range !107, !noalias !431, !noundef !108
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.c, label %_ZN4pbrt15GetCameraSampleINS_18PaddedSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit

bb.c:                                             ; preds = %bb.b
  br label %_ZN4pbrt15GetCameraSampleINS_18PaddedSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit

_ZN4pbrt15GetCameraSampleINS_18PaddedSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit: ; preds = %bb.b, %bb.c
  %.sroa.090.0.in = phi <2 x float> [ %i.aw, %bb.c ], [ %i.ax, %bb.b ]
  %.sroa.691.0 = phi <2 x float> [ splat (float 5.000000e-01), %bb.c ], [ %i.az, %bb.b ]
  %.sroa.992.0 = phi float [ 5.000000e-01, %bb.c ], [ %i.ay, %bb.b ]
  %.sroa.1193.0 = phi float [ 1.000000e+00, %bb.c ], [ %.fca.1.extract.i, %bb.b ] ; 2 uses
  %.sroa.090.0 = fadd <2 x float> %.sroa.090.0.in, splat (float 5.000000e-01)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> %.sroa.090.0, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.691.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %.sroa.992.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %.sroa.1193.0, ptr %.sroa.4.0..sroa_idx, align 4
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !143, !noalias !432 ; 2 uses
  %i.bg = and i64 %i.bf, 144115188075855871
  %i.bh = inttoptr i64 %i.bg to ptr               ; 4 uses
  %i.bi = lshr i64 %i.bf, 57
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  switch i32 %i.bj, label %bb.g [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_18PaddedSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt17PerspectiveCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1448) %i.bh, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.e:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_18PaddedSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt18OrthographicCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1440) %i.bh, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.f:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_18PaddedSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt15SphericalCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(900) %i.bh, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.g:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_18PaddedSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt15RealisticCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1128) %i.bh, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 4 uses
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !145, !range !107, !noundef !108
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit, label %bb.k

_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit:    ; preds = %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !433
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !433
  %i.bo = load <1 x float>, ptr %11, align 16, !noalias !433
  %.sroa.07.4.vec.insert.i.i = shufflevector <1 x float> %i.bo, <1 x float> poison, <2 x i32> zeroinitializer
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.bq = load <1 x float>, ptr %i.bp, align 4, !noalias !433
  %.sroa.05.4.vec.insert.i.i = shufflevector <1 x float> %i.bq, <1 x float> poison, <2 x i32> zeroinitializer
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bs = load <1 x float>, ptr %i.br, align 8, !noalias !433
  %.sroa.0.4.vec.insert.i.i = shufflevector <1 x float> %i.bs, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %3, align 8, !tbaa !136, !noalias !433
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %i.bt, align 8, !tbaa !136, !noalias !433
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.bu, align 8, !tbaa !136, !noalias !433
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %2, ptr noundef nonnull align 4 dereferenceable(128) %i.bn, ptr noundef nonnull align 4 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !433
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %.sroa.044.0.copyload.i = load <2 x float>, ptr %i.bv, align 4, !noalias !433 ; 3 uses
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %.sroa.245.0.copyload.i = load float, ptr %.sroa.245.0..sroa_idx.i, align 4, !noalias !433 ; 2 uses
  %i.bw = shufflevector <2 x float> %.sroa.044.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.by = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 8 %i.bn, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !136, !noalias !433 ; 3 uses
  %i.bz = shufflevector <5 x float> %i.by, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ca = shufflevector <5 x float> %i.by, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.cb = fmul <2 x float> %i.bw, %i.ca
  %i.cc = load <2 x float>, ptr %i.bx, align 4, !tbaa !136, !noalias !433 ; 2 uses
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.bz, <4 x float> %i.cd, <2 x i32> <i32 0, i32 4>
  %i.cf = fmul <2 x float> %.sroa.044.0.copyload.i, %i.ce
  %i.cg = fadd <2 x float> %i.cb, %i.cf
  %i.ch = insertelement <2 x float> poison, float %.sroa.245.0.copyload.i, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = shufflevector <2 x float> %i.cc, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.ck = shufflevector <5 x float> %i.by, <5 x float> %i.cj, <2 x i32> <i32 2, i32 6>
  %i.cl = fmul <2 x float> %i.ci, %i.ck
  %i.cm = fadd <2 x float> %i.cg, %i.cl           ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = load <2 x float>, ptr %i.cn, align 8, !tbaa !136, !noalias !433
  %i.cp = fmul <2 x float> %.sroa.044.0.copyload.i, %i.co ; 2 uses
  %shift = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cp, %shift
  %i.cq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !136, !noalias !433
  %i.ct = fmul float %.sroa.245.0.copyload.i, %i.cs
  %i.cu = fadd float %i.cq, %i.ct                 ; 5 uses
  %i.cv = fmul <2 x float> %i.cm, %i.cm           ; 2 uses
  %shift124 = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop125 = fadd <2 x float> %i.cv, %shift124
  %i.cw = extractelement <2 x float> %foldExtExtBinop125, i64 0
  %i.cx = fmul float %i.cu, %i.cu
  %i.cy = fadd float %i.cw, %i.cx                 ; 2 uses
  %i.cz = fcmp ogt float %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit
  %i.da = extractelement <2 x float> %i.cm, i64 1
  %i.db = call noundef float @llvm.fabs.f32(float %i.da)
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.de = load float, ptr %i.dd, align 4, !tbaa !147, !noalias !433
  %i.df = load float, ptr %i.dc, align 8, !tbaa !148, !noalias !433
  %i.dg = fsub float %i.de, %i.df
  %i.dh = fmul float %i.dg, 5.000000e-01
  %i.di = fmul float %i.db, %i.dh
  %i.dj = insertelement <2 x float> %i.cm, float %i.cu, i64 1
  %i.dk = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dj)
  %i.dl = load <6 x float>, ptr %2, align 16, !tbaa !136, !noalias !433 ; 2 uses
  %i.dm = shufflevector <6 x float> %i.dl, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.dn = shufflevector <6 x float> %i.dl, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.do = fsub <2 x float> %i.dm, %i.dn
  %i.dp = fmul <2 x float> %i.do, splat (float 5.000000e-01)
  %i.dq = fmul <2 x float> %i.dk, %i.dp           ; 2 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 0
  %i.ds = fadd float %i.dr, %i.di
  %i.dt = extractelement <2 x float> %i.dq, i64 1
  %i.du = fadd float %i.ds, %i.dt
  %i.dv = fdiv float %i.du, %i.cy                 ; 2 uses
  %i.dw = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x float> %i.cm, %i.dx
  %i.dz = fmul float %i.cu, %i.dv
  %i.ea = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %2, <2 x float> %i.dy, float %i.dz) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit
  %.sroa.070.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.eb = load <2 x float>, ptr %.sroa.070.sroa.2.0..sroa_idx.i, align 4, !noalias !433
  %i.ec = load <4 x float>, ptr %2, align 16, !noalias !433
  %.sroa.070.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.070.sroa.5.0.copyload.i = load float, ptr %.sroa.070.sroa.5.0..sroa_idx.i, align 16, !noalias !433
  %.sroa.070.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.070.sroa.6.0.copyload.i = load float, ptr %.sroa.070.sroa.6.0..sroa_idx.i, align 4, !noalias !433
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !433
  %i.ed = load i8, ptr %i.bk, align 8, !tbaa !145, !range !107, !noundef !108
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.j, label %.noexc33

.noexc33:                                         ; preds = %bb.i
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 235, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(4) @.str.19) #26
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ef = shufflevector <4 x float> %i.ec, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.eg = fadd <2 x float> %i.eb, %i.ef
  %i.eh = fmul <2 x float> %i.eg, splat (float 5.000000e-01)
  %i.ei = fadd float %.sroa.070.sroa.5.0.copyload.i, %.sroa.070.sroa.6.0.copyload.i
  %i.ej = fmul float %i.ei, 5.000000e-01
  store <2 x float> %i.eh, ptr %11, align 16
  store float %i.ej, ptr %i.br, align 8
  store <2 x float> %i.cm, ptr %i.bv, align 4
  store float %i.cu, ptr %.sroa.245.0..sroa_idx.i, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !149
  %i.em = getelementptr inbounds [16 x i8], ptr %i.el, i64 %i.p
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.em, i8 0, i64 16, i1 false)
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !150
  %i.ep = getelementptr inbounds [16 x i8], ptr %i.eo, i64 %i.p ; 2 uses
  %i.eq = load <4 x float>, ptr %10, align 16
  %.sroa.03.4.vec.insert.i = shufflevector <4 x float> %i.eq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.er = load <4 x float>, ptr %12, align 8
  %.sroa.35.12.vec.insert.i = shufflevector <4 x float> %i.er, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.ep, align 16
  %.sroa.2.0..0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i, ptr %.sroa.2.0..0..sroa_idx.i.i39, align 8, !tbaa !111
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !151
  %i.eu = getelementptr inbounds [16 x i8], ptr %i.et, i64 %i.p ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ev = load <4 x float>, ptr %13, align 16     ; 2 uses
  %.sroa.0.4.vec.insert.i40 = shufflevector <4 x float> %i.ev, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i41 = shufflevector <4 x float> %i.ev, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i40, ptr %i.eu, align 16
  %.sroa.2.0..0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i41, ptr %.sroa.2.0..0..sroa_idx.i28.i, align 8, !tbaa !111
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !152
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.p
  store float %.sroa.1193.0, ptr %i.ey, align 4, !tbaa !136
  %i.ez = load i8, ptr %i.b, align 8, !tbaa !153, !range !107, !noundef !108
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !154
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 %i.p
  store i8 0, ptr %i.fd, align 1, !tbaa !155
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !156
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.p
  store float 0.000000e+00, ptr %i.fg, align 4, !tbaa !136
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !157
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.p
  store float 0.000000e+00, ptr %i.fj, align 4, !tbaa !136
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !158
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.p
  store float 0.000000e+00, ptr %i.fm, align 4, !tbaa !136
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !159
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.p
  store float 0.000000e+00, ptr %i.fp, align 4, !tbaa !136
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !160
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.p
  store float 0.000000e+00, ptr %i.fs, align 4, !tbaa !136
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !161
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.p
  store float 0.000000e+00, ptr %i.fv, align 4, !tbaa !136
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !159
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.p
  store float 0.000000e+00, ptr %i.fy, align 4, !tbaa !136
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !160
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.p
  store float 0.000000e+00, ptr %i.gb, align 4, !tbaa !136
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !161
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.p
  store float 0.000000e+00, ptr %i.ge, align 4, !tbaa !136
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !162
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.p
  store float 0.000000e+00, ptr %i.gh, align 4, !tbaa !136
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !163
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.p
  store float 0.000000e+00, ptr %i.gk, align 4, !tbaa !136
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !164
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.p
  store float 0.000000e+00, ptr %i.gn, align 4, !tbaa !136
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !165
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.p
  store float 0.000000e+00, ptr %i.gq, align 4, !tbaa !136
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !166
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.p
  store float 0.000000e+00, ptr %i.gt, align 4, !tbaa !136
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !167
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.p
  store float 0.000000e+00, ptr %i.gw, align 4, !tbaa !136
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !165
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.p
  store float 0.000000e+00, ptr %i.gz, align 4, !tbaa !136
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !166
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.p
  store float 0.000000e+00, ptr %i.hc, align 4, !tbaa !136
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !167
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.p
  store float 0.000000e+00, ptr %i.hf, align 4, !tbaa !136
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !149
  %i.hi = getelementptr inbounds [16 x i8], ptr %i.hh, i64 %i.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hi, i8 0, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.hj = load i8, ptr %i.bk, align 8, !tbaa !145, !range !107, !noundef !108
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !90 ; 19 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 400
  %i.ho = atomicrmw add ptr %i.hn, i32 1 monotonic, align 4
  %i.hp = load float, ptr %11, align 16, !tbaa !169
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !156
  %i.hs = sext i32 %i.ho to i64                   ; 18 uses
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.hs
  store float %i.hp, ptr %i.ht, align 4, !tbaa !136
  %i.hu = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !170
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !157
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.hs
  store float %i.hv, ptr %i.hy, align 4, !tbaa !136
  %i.hz = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ia = load float, ptr %i.hz, align 8, !tbaa !171
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !158
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.hs
  store float %i.ia, ptr %i.id, align 4, !tbaa !136
  %i.ie = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.if = load float, ptr %i.ie, align 4, !tbaa !173
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !165
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.hs
  store float %i.if, ptr %i.ii, align 4, !tbaa !136
  %i.ij = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ik = load float, ptr %i.ij, align 16, !tbaa !174
  %i.il = getelementptr inbounds nuw i8, ptr %i.hm, i64 64
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !166
  %i.in = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.hs
  store float %i.ik, ptr %i.in, align 4, !tbaa !136
  %i.io = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.ip = load float, ptr %i.io, align 4, !tbaa !175
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hm, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !167
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %i.hs
  store float %i.ip, ptr %i.is, align 4, !tbaa !136
  %i.it = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.iu = load float, ptr %i.it, align 8, !tbaa !181
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hm, i64 80
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !184
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.hs
  store float %i.iu, ptr %i.ix, align 4, !tbaa !136
  %i.iy = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hm, i64 88
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !185
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.ja, i64 %i.hs
  %i.jc = load i64, ptr %i.iy, align 16, !tbaa !186
  store i64 %i.jc, ptr %i.jb, align 8, !tbaa !186
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hm, i64 96
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !191
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.hs
  store i32 0, ptr %i.jf, align 4, !tbaa !110
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hm, i64 104
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !192
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %i.hs
  store i32 %1, ptr %i.ji, align 4, !tbaa !110
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hm, i64 120
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !150
  %i.jl = getelementptr inbounds [16 x i8], ptr %i.jk, i64 %i.hs ; 2 uses
  %i.jm = load <4 x float>, ptr %10, align 16
  %.sroa.03.4.vec.insert.i.i = shufflevector <4 x float> %i.jm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.jn = load <4 x float>, ptr %12, align 8
  %.sroa.35.12.vec.insert.i.i = shufflevector <4 x float> %i.jn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i.i, ptr %i.jl, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i47 = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i47, align 8, !tbaa !111
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hm, i64 128
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !151
  %i.jq = getelementptr inbounds [16 x i8], ptr %i.jp, i64 %i.hs ; 2 uses
  %i.jr = load <4 x float>, ptr %13, align 16     ; 2 uses
  %.sroa.0.4.vec.insert.i.i48 = shufflevector <4 x float> %i.jr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i49 = shufflevector <4 x float> %i.jr, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i48, ptr %i.jq, align 16
  %.sroa.2.0..0..sroa_idx.i28.i.i = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i49, ptr %.sroa.2.0..0..sroa_idx.i28.i.i, align 8, !tbaa !111
  %i.js = getelementptr inbounds nuw i8, ptr %i.hm, i64 160
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !149
  %i.ju = getelementptr inbounds [16 x i8], ptr %i.jt, i64 %i.hs ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.ju, align 16
  %.sroa.2.0..0..sroa_idx.i.i20.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.2.0..0..sroa_idx.i.i20.i, align 8, !tbaa !111
  %i.jv = getelementptr inbounds nuw i8, ptr %i.hm, i64 376
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !193
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.hs
  store float 1.000000e+00, ptr %i.jx, align 4, !tbaa !136
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hm, i64 392
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !194
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.hs
  store i32 0, ptr %i.ka, align 4, !tbaa !110
  %i.kb = getelementptr inbounds nuw i8, ptr %i.hm, i64 184
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !149
  %i.kd = getelementptr inbounds [16 x i8], ptr %i.kc, i64 %i.hs ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.kd, align 16
end_hunk_4
begin_hunk_5_@_ZZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS_12SobolSamplerEEEviNS_9TransformEiENKUliE_clEi:bb.a
  %.02340.i.i = phi i64 [ %i.au, %.lr.ph43.i.i ], [ %i.bh, %bb.i ] ; 2 uses
  %.02639.i.i = phi i64 [ %i.an, %.lr.ph43.i.i ], [ %.127.i.i, %bb.i ] ; 2 uses
  %i.bd = and i64 %.02340.i.i, 1
  %.not32.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not32.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv46.i.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !101
  %i.bg = xor i64 %i.bf, %.02639.i.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.127.i.i = phi i64 [ %i.bg, %bb.h ], [ %.02639.i.i, %bb.g ] ; 2 uses
  %i.bh = lshr i64 %.02340.i.i, 1                 ; 2 uses
  %indvars.iv.next47.i.i = add nuw nsw i64 %indvars.iv46.i.i, 1
  %.not31.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not31.i.i, label %_ZN4pbrt12SobolSampler16StartPixelSampleENS_6Point2IiEEii.exit, label %bb.g, !llvm.loop !436

_ZN4pbrt12SobolSampler16StartPixelSampleENS_6Point2IiEEii.exit: ; preds = %bb.i, %bb.b, %._crit_edge.i.i
  %.029.i.i = phi i64 [ %i.aj, %bb.b ], [ %i.an, %._crit_edge.i.i ], [ %.127.i.i, %bb.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %.029.i.i, ptr %i.bi, align 8, !tbaa !243
  store i32 3, ptr %i.ae, align 8, !tbaa !244
  %i.bj = call noundef float @_ZNK4pbrt12SobolSampler15SampleDimensionEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 2)
  %i.bk = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !103
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 6
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !134, !range !107, !noundef !108
  %i.bn = trunc nuw i8 %i.bm to i1
  %spec.select = select i1 %i.bn, float 5.000000e-01, float %i.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %spec.select, ptr %i.a, align 4, !tbaa !136, !noalias !445
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !445
  store ptr %i.a, ptr %4, align 8, !tbaa !137, !noalias !445
  call void @_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE8DispatchIRZNKS_4Film17SampleWavelengthsEfEUlT_E_EEDcOS7_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::SampledWavelengths") align 4 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !138
  store i64 %i.bp, ptr %8, align 8, !tbaa !138
  call void @_ZN4pbrt15GetCameraSampleINS_12SobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::CameraSample") align 4 %7, ptr noundef nonnull byval(%"class.pbrt::SobolSampler") align 8 %5, i64 %.sroa.090.0.insert.insert96, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !143, !noalias !446 ; 2 uses
  %i.bs = and i64 %i.br, 144115188075855871
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %i.bu = lshr i64 %i.br, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  switch i32 %i.bv, label %bb.m [
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

bb.j:                                             ; preds = %_ZN4pbrt12SobolSampler16StartPixelSampleENS_6Point2IiEEii.exit
  call void @_ZNK4pbrt17PerspectiveCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1448) %i.bt, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %7, ptr noundef nonnull align 4 dereferenceable(32) %6)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.k:                                             ; preds = %_ZN4pbrt12SobolSampler16StartPixelSampleENS_6Point2IiEEii.exit
  call void @_ZNK4pbrt18OrthographicCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1440) %i.bt, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %7, ptr noundef nonnull align 4 dereferenceable(32) %6)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.l:                                             ; preds = %_ZN4pbrt12SobolSampler16StartPixelSampleENS_6Point2IiEEii.exit
  call void @_ZNK4pbrt15SphericalCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %9, ptr noundef nonnull align 8 dereferenceable(900) %i.bt, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %7, ptr noundef nonnull align 4 dereferenceable(32) %6)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.m:                                             ; preds = %_ZN4pbrt12SobolSampler16StartPixelSampleENS_6Point2IiEEii.exit
  call void @_ZNK4pbrt15RealisticCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1128) %i.bt, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %7, ptr noundef nonnull align 4 dereferenceable(32) %6)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !145, !range !107, !noundef !108
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit, label %bb.q

_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit:    ; preds = %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !447
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !447
  %i.ca = load <1 x float>, ptr %9, align 16, !noalias !447
  %.sroa.07.4.vec.insert.i.i = shufflevector <1 x float> %i.ca, <1 x float> poison, <2 x i32> zeroinitializer
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.cc = load <1 x float>, ptr %i.cb, align 4, !noalias !447
  %.sroa.05.4.vec.insert.i.i = shufflevector <1 x float> %i.cc, <1 x float> poison, <2 x i32> zeroinitializer
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ce = load <1 x float>, ptr %i.cd, align 8, !noalias !447
  %.sroa.0.4.vec.insert.i.i = shufflevector <1 x float> %i.ce, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %3, align 8, !tbaa !136, !noalias !447
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %i.cf, align 8, !tbaa !136, !noalias !447
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.cg, align 8, !tbaa !136, !noalias !447
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %2, ptr noundef nonnull align 4 dereferenceable(128) %i.bz, ptr noundef nonnull align 4 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !447
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %.sroa.044.0.copyload.i = load <2 x float>, ptr %i.ch, align 4, !noalias !447 ; 3 uses
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %.sroa.245.0.copyload.i = load float, ptr %.sroa.245.0..sroa_idx.i, align 4, !noalias !447 ; 2 uses
  %i.ci = shufflevector <2 x float> %.sroa.044.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ck = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 8 %i.bz, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !136, !noalias !447 ; 3 uses
  %i.cl = shufflevector <5 x float> %i.ck, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cm = shufflevector <5 x float> %i.ck, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.cn = fmul <2 x float> %i.ci, %i.cm
  %i.co = load <2 x float>, ptr %i.cj, align 4, !tbaa !136, !noalias !447 ; 2 uses
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cq = shufflevector <4 x float> %i.cl, <4 x float> %i.cp, <2 x i32> <i32 0, i32 4>
  %i.cr = fmul <2 x float> %.sroa.044.0.copyload.i, %i.cq
  %i.cs = fadd <2 x float> %i.cn, %i.cr
  %i.ct = insertelement <2 x float> poison, float %.sroa.245.0.copyload.i, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = shufflevector <2 x float> %i.co, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.cw = shufflevector <5 x float> %i.ck, <5 x float> %i.cv, <2 x i32> <i32 2, i32 6>
  %i.cx = fmul <2 x float> %i.cu, %i.cw
  %i.cy = fadd <2 x float> %i.cs, %i.cx           ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.da = load <2 x float>, ptr %i.cz, align 8, !tbaa !136, !noalias !447
  %i.db = fmul <2 x float> %.sroa.044.0.copyload.i, %i.da ; 2 uses
  %shift = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.db, %shift
  %i.dc = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.de = load float, ptr %i.dd, align 8, !tbaa !136, !noalias !447
  %i.df = fmul float %.sroa.245.0.copyload.i, %i.de
  %i.dg = fadd float %i.dc, %i.df                 ; 5 uses
  %i.dh = fmul <2 x float> %i.cy, %i.cy           ; 2 uses
  %shift117 = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop118 = fadd <2 x float> %i.dh, %shift117
  %i.di = extractelement <2 x float> %foldExtExtBinop118, i64 0
  %i.dj = fmul float %i.dg, %i.dg
  %i.dk = fadd float %i.di, %i.dj                 ; 2 uses
  %i.dl = fcmp ogt float %i.dk, 0.000000e+00
  br i1 %i.dl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit
  %i.dm = extractelement <2 x float> %i.cy, i64 1
  %i.dn = call noundef float @llvm.fabs.f32(float %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !147, !noalias !447
  %i.dr = load float, ptr %i.do, align 8, !tbaa !148, !noalias !447
  %i.ds = fsub float %i.dq, %i.dr
  %i.dt = fmul float %i.ds, 5.000000e-01
  %i.du = fmul float %i.dn, %i.dt
  %i.dv = insertelement <2 x float> %i.cy, float %i.dg, i64 1
  %i.dw = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dv)
  %i.dx = load <6 x float>, ptr %2, align 16, !tbaa !136, !noalias !447 ; 2 uses
  %i.dy = shufflevector <6 x float> %i.dx, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.dz = shufflevector <6 x float> %i.dx, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ea = fsub <2 x float> %i.dy, %i.dz
  %i.eb = fmul <2 x float> %i.ea, splat (float 5.000000e-01)
  %i.ec = fmul <2 x float> %i.dw, %i.eb           ; 2 uses
  %i.ed = extractelement <2 x float> %i.ec, i64 0
  %i.ee = fadd float %i.ed, %i.du
  %i.ef = extractelement <2 x float> %i.ec, i64 1
  %i.eg = fadd float %i.ee, %i.ef
  %i.eh = fdiv float %i.eg, %i.dk                 ; 2 uses
  %i.ei = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fmul <2 x float> %i.cy, %i.ej
  %i.el = fmul float %i.dg, %i.eh
  %i.em = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %2, <2 x float> %i.ek, float %i.el) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit
  %.sroa.070.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.en = load <2 x float>, ptr %.sroa.070.sroa.2.0..sroa_idx.i, align 4, !noalias !447
  %i.eo = load <4 x float>, ptr %2, align 16, !noalias !447
  %.sroa.070.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.070.sroa.5.0.copyload.i = load float, ptr %.sroa.070.sroa.5.0..sroa_idx.i, align 16, !noalias !447
  %.sroa.070.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.070.sroa.6.0.copyload.i = load float, ptr %.sroa.070.sroa.6.0..sroa_idx.i, align 4, !noalias !447
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !447
  %i.ep = load i8, ptr %i.bw, align 8, !tbaa !145, !range !107, !noundef !108
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.p, label %.noexc31

.noexc31:                                         ; preds = %bb.o
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 235, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(4) @.str.19) #26
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.er = shufflevector <4 x float> %i.eo, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.es = fadd <2 x float> %i.en, %i.er
  %i.et = fmul <2 x float> %i.es, splat (float 5.000000e-01)
  %i.eu = fadd float %.sroa.070.sroa.5.0.copyload.i, %.sroa.070.sroa.6.0.copyload.i
  %i.ev = fmul float %i.eu, 5.000000e-01
  store <2 x float> %i.et, ptr %9, align 16
  store float %i.ev, ptr %i.cd, align 8
  store <2 x float> %i.cy, ptr %i.ch, align 4
  store float %i.dg, ptr %.sroa.245.0..sroa_idx.i, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !149
  %i.ey = getelementptr inbounds [16 x i8], ptr %i.ex, i64 %i.p
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ey, i8 0, i64 16, i1 false)
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !150
  %i.fb = getelementptr inbounds [16 x i8], ptr %i.fa, i64 %i.p ; 2 uses
  %i.fc = load <4 x float>, ptr %6, align 16
  %.sroa.03.4.vec.insert.i = shufflevector <4 x float> %i.fc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fd = load <4 x float>, ptr %10, align 8
  %.sroa.35.12.vec.insert.i = shufflevector <4 x float> %i.fd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.fb, align 16
  %.sroa.2.0..0..sroa_idx.i.i37 = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i, ptr %.sroa.2.0..0..sroa_idx.i.i37, align 8, !tbaa !111
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !151
  %i.fg = getelementptr inbounds [16 x i8], ptr %i.ff, i64 %i.p ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fh = load <4 x float>, ptr %11, align 16     ; 2 uses
  %.sroa.0.4.vec.insert.i38 = shufflevector <4 x float> %i.fh, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i39 = shufflevector <4 x float> %i.fh, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i38, ptr %i.fg, align 16
  %.sroa.2.0..0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i39, ptr %.sroa.2.0..0..sroa_idx.i28.i, align 8, !tbaa !111
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !221
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !152
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.p
  store float %i.fj, ptr %i.fm, align 4, !tbaa !136
  %i.fn = load i8, ptr %i.b, align 8, !tbaa !153, !range !107, !noundef !108
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !154
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 %i.p
  store i8 0, ptr %i.fr, align 1, !tbaa !155
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !156
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.p
  store float 0.000000e+00, ptr %i.fu, align 4, !tbaa !136
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !157
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.p
  store float 0.000000e+00, ptr %i.fx, align 4, !tbaa !136
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !158
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %i.p
  store float 0.000000e+00, ptr %i.ga, align 4, !tbaa !136
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !159
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.p
  store float 0.000000e+00, ptr %i.gd, align 4, !tbaa !136
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !160
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.p
  store float 0.000000e+00, ptr %i.gg, align 4, !tbaa !136
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !161
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.p
  store float 0.000000e+00, ptr %i.gj, align 4, !tbaa !136
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !159
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.p
  store float 0.000000e+00, ptr %i.gm, align 4, !tbaa !136
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !160
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.p
  store float 0.000000e+00, ptr %i.gp, align 4, !tbaa !136
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !161
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.p
  store float 0.000000e+00, ptr %i.gs, align 4, !tbaa !136
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !162
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.p
  store float 0.000000e+00, ptr %i.gv, align 4, !tbaa !136
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !163
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.p
  store float 0.000000e+00, ptr %i.gy, align 4, !tbaa !136
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !164
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.p
  store float 0.000000e+00, ptr %i.hb, align 4, !tbaa !136
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !165
  %i.he = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.p
  store float 0.000000e+00, ptr %i.he, align 4, !tbaa !136
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !166
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.p
  store float 0.000000e+00, ptr %i.hh, align 4, !tbaa !136
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !167
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.p
  store float 0.000000e+00, ptr %i.hk, align 4, !tbaa !136
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !165
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.p
  store float 0.000000e+00, ptr %i.hn, align 4, !tbaa !136
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !166
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.p
  store float 0.000000e+00, ptr %i.hq, align 4, !tbaa !136
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !167
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.p
  store float 0.000000e+00, ptr %i.ht, align 4, !tbaa !136
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !149
  %i.hw = getelementptr inbounds [16 x i8], ptr %i.hv, i64 %i.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hw, i8 0, i64 16, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.hx = load i8, ptr %i.bw, align 8, !tbaa !145, !range !107, !noundef !108
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !95 ; 19 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 400
  %i.ic = atomicrmw add ptr %i.ib, i32 1 monotonic, align 4
  %i.id = load float, ptr %9, align 16, !tbaa !169
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !156
  %i.ig = sext i32 %i.ic to i64                   ; 18 uses
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.if, i64 %i.ig
  store float %i.id, ptr %i.ih, align 4, !tbaa !136
  %i.ii = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !170
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !157
  %i.im = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.ig
  store float %i.ij, ptr %i.im, align 4, !tbaa !136
  %i.in = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.io = load float, ptr %i.in, align 8, !tbaa !171
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !158
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.ig
  store float %i.io, ptr %i.ir, align 4, !tbaa !136
  %i.is = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.it = load float, ptr %i.is, align 4, !tbaa !173
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ia, i64 56
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !165
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.ig
  store float %i.it, ptr %i.iw, align 4, !tbaa !136
  %i.ix = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.iy = load float, ptr %i.ix, align 16, !tbaa !174
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ia, i64 64
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !166
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.ig
  store float %i.iy, ptr %i.jb, align 4, !tbaa !136
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !175
  %i.je = getelementptr inbounds nuw i8, ptr %i.ia, i64 72
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !167
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.ig
  store float %i.jd, ptr %i.jg, align 4, !tbaa !136
  %i.jh = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ji = load float, ptr %i.jh, align 8, !tbaa !181
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ia, i64 80
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !184
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %i.ig
  store float %i.ji, ptr %i.jl, align 4, !tbaa !136
  %i.jm = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ia, i64 88
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !185
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %i.ig
  %i.jq = load i64, ptr %i.jm, align 16, !tbaa !186
  store i64 %i.jq, ptr %i.jp, align 8, !tbaa !186
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ia, i64 96
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !191
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.ig
  store i32 0, ptr %i.jt, align 4, !tbaa !110
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ia, i64 104
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !192
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.ig
  store i32 %1, ptr %i.jw, align 4, !tbaa !110
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ia, i64 120
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !150
  %i.jz = getelementptr inbounds [16 x i8], ptr %i.jy, i64 %i.ig ; 2 uses
  %i.ka = load <4 x float>, ptr %6, align 16
  %.sroa.03.4.vec.insert.i.i = shufflevector <4 x float> %i.ka, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.kb = load <4 x float>, ptr %10, align 8
  %.sroa.35.12.vec.insert.i.i = shufflevector <4 x float> %i.kb, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i.i, ptr %i.jz, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i45 = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i45, align 8, !tbaa !111
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ia, i64 128
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !151
  %i.ke = getelementptr inbounds [16 x i8], ptr %i.kd, i64 %i.ig ; 2 uses
  %i.kf = load <4 x float>, ptr %11, align 16     ; 2 uses
  %.sroa.0.4.vec.insert.i.i46 = shufflevector <4 x float> %i.kf, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i47 = shufflevector <4 x float> %i.kf, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i46, ptr %i.ke, align 16
  %.sroa.2.0..0..sroa_idx.i28.i.i = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i47, ptr %.sroa.2.0..0..sroa_idx.i28.i.i, align 8, !tbaa !111
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ia, i64 160
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !149
  %i.ki = getelementptr inbounds [16 x i8], ptr %i.kh, i64 %i.ig ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.ki, align 16
  %.sroa.2.0..0..sroa_idx.i.i20.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.2.0..0..sroa_idx.i.i20.i, align 8, !tbaa !111
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ia, i64 376
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !193
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.ig
  store float 1.000000e+00, ptr %i.kl, align 4, !tbaa !136
  %i.km = getelementptr inbounds nuw i8, ptr %i.ia, i64 392
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !194
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %i.ig
  store i32 0, ptr %i.ko, align 4, !tbaa !110
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ia, i64 184
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !149
end_hunk_5
begin_hunk_6_@_ZZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS_13ZSobolSamplerEEEviNS_9TransformEiENKUliE_clEi:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !463
  store ptr %5, ptr %6, align 8, !tbaa !141, !noalias !463
  %i.bz = and i64 %i.bx, 144115188075855871
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = lshr i64 %i.bx, 57
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = add nsw i32 %i.cc, -1
  %i.ce = call { <2 x float>, float } @_ZN4pbrt6detail8DispatchIRZNKS_6Filter6SampleENS_6Point2IfEEEUlT_E_NS_12FilterSampleENS_9BoxFilterENS_14GaussianFilterENS_14MitchellFilterENS_17LanczosSincFilterENS_14TriangleFilterEEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.ca, i32 noundef %i.cd), !noalias !463 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !463
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !463
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.ce, 0
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.ce, 1
  %i.cf = insertelement <2 x i32> poison, i32 %i.l, i64 0
  %i.cg = insertelement <2 x i32> %i.cf, i32 %i.m, i64 1
  %i.ch = sitofp <2 x i32> %i.cg to <2 x float>   ; 2 uses
  %i.ci = fadd <2 x float> %.fca.0.extract.i, %i.ch
  %i.cj = call noundef float @_ZN4pbrt13ZSobolSampler5Get1DEv(ptr noundef nonnull align 8 dereferenceable(28) %7), !noalias !463
  %i.ck = call <2 x float> @_ZN4pbrt13ZSobolSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(28) %7), !noalias !463
  %i.cl = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !103, !noalias !463
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 5
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !142, !range !107, !noalias !463, !noundef !108
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.c, label %_ZN4pbrt15GetCameraSampleINS_13ZSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit

bb.c:                                             ; preds = %bb.b
  br label %_ZN4pbrt15GetCameraSampleINS_13ZSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit

_ZN4pbrt15GetCameraSampleINS_13ZSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit: ; preds = %bb.b, %bb.c
  %.sroa.090.0.in = phi <2 x float> [ %i.ch, %bb.c ], [ %i.ci, %bb.b ]
  %.sroa.691.0 = phi <2 x float> [ splat (float 5.000000e-01), %bb.c ], [ %i.ck, %bb.b ]
  %.sroa.992.0 = phi float [ 5.000000e-01, %bb.c ], [ %i.cj, %bb.b ]
  %.sroa.1193.0 = phi float [ 1.000000e+00, %bb.c ], [ %.fca.1.extract.i, %bb.b ] ; 2 uses
  %.sroa.090.0 = fadd <2 x float> %.sroa.090.0.in, splat (float 5.000000e-01)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> %.sroa.090.0, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.691.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %.sroa.992.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %.sroa.1193.0, ptr %.sroa.4.0..sroa_idx, align 4
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !143, !noalias !464 ; 2 uses
  %i.cr = and i64 %i.cq, 144115188075855871
  %i.cs = inttoptr i64 %i.cr to ptr               ; 4 uses
  %i.ct = lshr i64 %i.cq, 57
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  switch i32 %i.cu, label %bb.g [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_13ZSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt17PerspectiveCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1448) %i.cs, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.e:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_13ZSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt18OrthographicCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1440) %i.cs, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.f:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_13ZSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt15SphericalCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(900) %i.cs, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.g:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_13ZSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt15RealisticCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1128) %i.cs, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 4 uses
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !145, !range !107, !noundef !108
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit, label %bb.k

_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit:    ; preds = %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !465
  %i.cz = load <1 x float>, ptr %11, align 16, !noalias !465
  %.sroa.07.4.vec.insert.i.i = shufflevector <1 x float> %i.cz, <1 x float> poison, <2 x i32> zeroinitializer
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.db = load <1 x float>, ptr %i.da, align 4, !noalias !465
  %.sroa.05.4.vec.insert.i.i = shufflevector <1 x float> %i.db, <1 x float> poison, <2 x i32> zeroinitializer
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.dd = load <1 x float>, ptr %i.dc, align 8, !noalias !465
  %.sroa.0.4.vec.insert.i.i = shufflevector <1 x float> %i.dd, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %3, align 8, !tbaa !136, !noalias !465
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %i.de, align 8, !tbaa !136, !noalias !465
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.df, align 8, !tbaa !136, !noalias !465
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %2, ptr noundef nonnull align 4 dereferenceable(128) %i.cy, ptr noundef nonnull align 4 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !465
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %.sroa.044.0.copyload.i = load <2 x float>, ptr %i.dg, align 4, !noalias !465 ; 3 uses
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %.sroa.245.0.copyload.i = load float, ptr %.sroa.245.0..sroa_idx.i, align 4, !noalias !465 ; 2 uses
  %i.dh = shufflevector <2 x float> %.sroa.044.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dj = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 8 %i.cy, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !136, !noalias !465 ; 3 uses
  %i.dk = shufflevector <5 x float> %i.dj, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dl = shufflevector <5 x float> %i.dj, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.dm = fmul <2 x float> %i.dh, %i.dl
  %i.dn = load <2 x float>, ptr %i.di, align 4, !tbaa !136, !noalias !465 ; 2 uses
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dp = shufflevector <4 x float> %i.dk, <4 x float> %i.do, <2 x i32> <i32 0, i32 4>
  %i.dq = fmul <2 x float> %.sroa.044.0.copyload.i, %i.dp
  %i.dr = fadd <2 x float> %i.dm, %i.dq
  %i.ds = insertelement <2 x float> poison, float %.sroa.245.0.copyload.i, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = shufflevector <2 x float> %i.dn, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <5 x float> %i.dj, <5 x float> %i.du, <2 x i32> <i32 2, i32 6>
  %i.dw = fmul <2 x float> %i.dt, %i.dv
  %i.dx = fadd <2 x float> %i.dr, %i.dw           ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dz = load <2 x float>, ptr %i.dy, align 8, !tbaa !136, !noalias !465
  %i.ea = fmul <2 x float> %.sroa.044.0.copyload.i, %i.dz ; 2 uses
  %shift = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ea, %shift
  %i.eb = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ed = load float, ptr %i.ec, align 8, !tbaa !136, !noalias !465
  %i.ee = fmul float %.sroa.245.0.copyload.i, %i.ed
  %i.ef = fadd float %i.eb, %i.ee                 ; 5 uses
  %i.eg = fmul <2 x float> %i.dx, %i.dx           ; 2 uses
  %shift124 = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop125 = fadd <2 x float> %i.eg, %shift124
  %i.eh = extractelement <2 x float> %foldExtExtBinop125, i64 0
  %i.ei = fmul float %i.ef, %i.ef
  %i.ej = fadd float %i.eh, %i.ei                 ; 2 uses
  %i.ek = fcmp ogt float %i.ej, 0.000000e+00
  br i1 %i.ek, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit
  %i.el = extractelement <2 x float> %i.dx, i64 1
  %i.em = call noundef float @llvm.fabs.f32(float %i.el)
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !147, !noalias !465
  %i.eq = load float, ptr %i.en, align 8, !tbaa !148, !noalias !465
  %i.er = fsub float %i.ep, %i.eq
  %i.es = fmul float %i.er, 5.000000e-01
  %i.et = fmul float %i.em, %i.es
  %i.eu = insertelement <2 x float> %i.dx, float %i.ef, i64 1
  %i.ev = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.eu)
  %i.ew = load <6 x float>, ptr %2, align 16, !tbaa !136, !noalias !465 ; 2 uses
  %i.ex = shufflevector <6 x float> %i.ew, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.ey = shufflevector <6 x float> %i.ew, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ez = fsub <2 x float> %i.ex, %i.ey
  %i.fa = fmul <2 x float> %i.ez, splat (float 5.000000e-01)
  %i.fb = fmul <2 x float> %i.ev, %i.fa           ; 2 uses
  %i.fc = extractelement <2 x float> %i.fb, i64 0
  %i.fd = fadd float %i.fc, %i.et
  %i.fe = extractelement <2 x float> %i.fb, i64 1
  %i.ff = fadd float %i.fd, %i.fe
  %i.fg = fdiv float %i.ff, %i.ej                 ; 2 uses
  %i.fh = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x float> %i.dx, %i.fi
  %i.fk = fmul float %i.ef, %i.fg
  %i.fl = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %2, <2 x float> %i.fj, float %i.fk) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit
  %.sroa.070.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fm = load <2 x float>, ptr %.sroa.070.sroa.2.0..sroa_idx.i, align 4, !noalias !465
  %i.fn = load <4 x float>, ptr %2, align 16, !noalias !465
  %.sroa.070.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.070.sroa.5.0.copyload.i = load float, ptr %.sroa.070.sroa.5.0..sroa_idx.i, align 16, !noalias !465
  %.sroa.070.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.070.sroa.6.0.copyload.i = load float, ptr %.sroa.070.sroa.6.0..sroa_idx.i, align 4, !noalias !465
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !465
  %i.fo = load i8, ptr %i.cv, align 8, !tbaa !145, !range !107, !noundef !108
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.j, label %.noexc33

.noexc33:                                         ; preds = %bb.i
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 235, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(4) @.str.19) #26
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.fq = shufflevector <4 x float> %i.fn, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.fr = fadd <2 x float> %i.fm, %i.fq
  %i.fs = fmul <2 x float> %i.fr, splat (float 5.000000e-01)
  %i.ft = fadd float %.sroa.070.sroa.5.0.copyload.i, %.sroa.070.sroa.6.0.copyload.i
  %i.fu = fmul float %i.ft, 5.000000e-01
  store <2 x float> %i.fs, ptr %11, align 16
  store float %i.fu, ptr %i.dc, align 8
  store <2 x float> %i.dx, ptr %i.dg, align 4
  store float %i.ef, ptr %.sroa.245.0..sroa_idx.i, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !149
  %i.fx = getelementptr inbounds [16 x i8], ptr %i.fw, i64 %i.p
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fx, i8 0, i64 16, i1 false)
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !150
  %i.ga = getelementptr inbounds [16 x i8], ptr %i.fz, i64 %i.p ; 2 uses
  %i.gb = load <4 x float>, ptr %10, align 16
  %.sroa.03.4.vec.insert.i = shufflevector <4 x float> %i.gb, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.gc = load <4 x float>, ptr %12, align 8
  %.sroa.35.12.vec.insert.i = shufflevector <4 x float> %i.gc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.ga, align 16
  %.sroa.2.0..0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i, ptr %.sroa.2.0..0..sroa_idx.i.i39, align 8, !tbaa !111
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !151
  %i.gf = getelementptr inbounds [16 x i8], ptr %i.ge, i64 %i.p ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gg = load <4 x float>, ptr %13, align 16     ; 2 uses
  %.sroa.0.4.vec.insert.i40 = shufflevector <4 x float> %i.gg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i41 = shufflevector <4 x float> %i.gg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i40, ptr %i.gf, align 16
  %.sroa.2.0..0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i41, ptr %.sroa.2.0..0..sroa_idx.i28.i, align 8, !tbaa !111
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !152
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.p
  store float %.sroa.1193.0, ptr %i.gj, align 4, !tbaa !136
  %i.gk = load i8, ptr %i.b, align 8, !tbaa !153, !range !107, !noundef !108
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !154
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %i.p
  store i8 0, ptr %i.go, align 1, !tbaa !155
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !156
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %i.p
  store float 0.000000e+00, ptr %i.gr, align 4, !tbaa !136
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !157
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.p
  store float 0.000000e+00, ptr %i.gu, align 4, !tbaa !136
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !158
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.p
  store float 0.000000e+00, ptr %i.gx, align 4, !tbaa !136
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !159
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.p
  store float 0.000000e+00, ptr %i.ha, align 4, !tbaa !136
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !160
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.p
  store float 0.000000e+00, ptr %i.hd, align 4, !tbaa !136
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !161
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.p
  store float 0.000000e+00, ptr %i.hg, align 4, !tbaa !136
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !159
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.hi, i64 %i.p
  store float 0.000000e+00, ptr %i.hj, align 4, !tbaa !136
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !160
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.p
  store float 0.000000e+00, ptr %i.hm, align 4, !tbaa !136
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !161
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.p
  store float 0.000000e+00, ptr %i.hp, align 4, !tbaa !136
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !162
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.p
  store float 0.000000e+00, ptr %i.hs, align 4, !tbaa !136
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !163
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.p
  store float 0.000000e+00, ptr %i.hv, align 4, !tbaa !136
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !164
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.p
  store float 0.000000e+00, ptr %i.hy, align 4, !tbaa !136
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !165
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.p
  store float 0.000000e+00, ptr %i.ib, align 4, !tbaa !136
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !166
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.p
  store float 0.000000e+00, ptr %i.ie, align 4, !tbaa !136
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !167
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.p
  store float 0.000000e+00, ptr %i.ih, align 4, !tbaa !136
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !165
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.p
  store float 0.000000e+00, ptr %i.ik, align 4, !tbaa !136
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !166
  %i.in = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.p
  store float 0.000000e+00, ptr %i.in, align 4, !tbaa !136
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !167
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.p
  store float 0.000000e+00, ptr %i.iq, align 4, !tbaa !136
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !149
  %i.it = getelementptr inbounds [16 x i8], ptr %i.is, i64 %i.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.it, i8 0, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.iu = load i8, ptr %i.cv, align 8, !tbaa !145, !range !107, !noundef !108
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !100 ; 19 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 400
  %i.iz = atomicrmw add ptr %i.iy, i32 1 monotonic, align 4
  %i.ja = load float, ptr %11, align 16, !tbaa !169
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !156
  %i.jd = sext i32 %i.iz to i64                   ; 18 uses
  %i.je = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %i.jd
  store float %i.ja, ptr %i.je, align 4, !tbaa !136
  %i.jf = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !170
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !157
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.jd
  store float %i.jg, ptr %i.jj, align 4, !tbaa !136
  %i.jk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.jl = load float, ptr %i.jk, align 8, !tbaa !171
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ix, i64 40
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !158
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %i.jd
  store float %i.jl, ptr %i.jo, align 4, !tbaa !136
  %i.jp = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !173
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ix, i64 56
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !165
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.jd
  store float %i.jq, ptr %i.jt, align 4, !tbaa !136
  %i.ju = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.jv = load float, ptr %i.ju, align 16, !tbaa !174
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ix, i64 64
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !166
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.jx, i64 %i.jd
  store float %i.jv, ptr %i.jy, align 4, !tbaa !136
  %i.jz = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !175
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ix, i64 72
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !167
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.kc, i64 %i.jd
  store float %i.ka, ptr %i.kd, align 4, !tbaa !136
  %i.ke = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.kf = load float, ptr %i.ke, align 8, !tbaa !181
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ix, i64 80
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !184
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.jd
  store float %i.kf, ptr %i.ki, align 4, !tbaa !136
  %i.kj = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ix, i64 88
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !185
  %i.km = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.jd
  %i.kn = load i64, ptr %i.kj, align 16, !tbaa !186
  store i64 %i.kn, ptr %i.km, align 8, !tbaa !186
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ix, i64 96
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !191
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.jd
  store i32 0, ptr %i.kq, align 4, !tbaa !110
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ix, i64 104
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !192
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.jd
  store i32 %1, ptr %i.kt, align 4, !tbaa !110
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ix, i64 120
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !150
  %i.kw = getelementptr inbounds [16 x i8], ptr %i.kv, i64 %i.jd ; 2 uses
  %i.kx = load <4 x float>, ptr %10, align 16
  %.sroa.03.4.vec.insert.i.i = shufflevector <4 x float> %i.kx, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ky = load <4 x float>, ptr %12, align 8
  %.sroa.35.12.vec.insert.i.i = shufflevector <4 x float> %i.ky, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i.i, ptr %i.kw, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i47 = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i47, align 8, !tbaa !111
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ix, i64 128
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !151
  %i.lb = getelementptr inbounds [16 x i8], ptr %i.la, i64 %i.jd ; 2 uses
  %i.lc = load <4 x float>, ptr %13, align 16     ; 2 uses
  %.sroa.0.4.vec.insert.i.i48 = shufflevector <4 x float> %i.lc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i49 = shufflevector <4 x float> %i.lc, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i48, ptr %i.lb, align 16
  %.sroa.2.0..0..sroa_idx.i28.i.i = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i49, ptr %.sroa.2.0..0..sroa_idx.i28.i.i, align 8, !tbaa !111
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ix, i64 160
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !149
  %i.lf = getelementptr inbounds [16 x i8], ptr %i.le, i64 %i.jd ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.lf, align 16
  %.sroa.2.0..0..sroa_idx.i.i20.i = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.2.0..0..sroa_idx.i.i20.i, align 8, !tbaa !111
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ix, i64 376
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !193
  %i.li = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %i.jd
  store float 1.000000e+00, ptr %i.li, align 4, !tbaa !136
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ix, i64 392
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !194
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.lk, i64 %i.jd
  store i32 0, ptr %i.ll, align 4, !tbaa !110
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ix, i64 184
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !149
  %i.lo = getelementptr inbounds [16 x i8], ptr %i.ln, i64 %i.jd ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.lo, align 16
end_hunk_6
