Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/textures?download=true
inline.NumInlined: 4773
inline.NumDeleted: 1122
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4pbrt6detail8DispatchIRZNKS_12FloatTexture8EvaluateENS_18TextureEvalContextEEUlT_E_fNS_17FloatImageTextureENS_20GPUFloatImageTextureENS_15FloatMixTextureENS_24FloatDirectionMixTextureENS_18FloatScaledTextureENS_20FloatConstantTextureENS_18FloatBilerpTextureENS_24FloatCheckerboardTextureEJNS_16FloatDotsTextureENS_10FBmTextureENS_16FloatPtexTextureENS_19GPUFloatPtexTextureENS_12WindyTextureENS_15WrinkledTextureEEvEET0_OS4_PKvi:bb.a
  %i.oy = tail call noundef float @_ZN4pbrt3FBmENS_6Point3IfEENS_7Vector3IfEES3_fi(<2 x float> %i.nt, float %.sroa.495.0.i.i.i.i.i.i.i.i36, <2 x float> %.sroa.046.4.vec.insert.i.i.i.i.i.i.i.i42, float %i.mp, <2 x float> %.sroa.046.4.vec.insert.i26.i.i.i.i.i.i.i46, float %i.mu, float noundef 5.000000e-01, i32 noundef 6)
  %i.oz = tail call noundef float @llvm.fabs.f32(float %i.ox)
  %i.pa = fmul float %i.oz, %i.oy
  br label %_ZN4pbrt6detail8DispatchIRZNKS_12FloatTexture8EvaluateENS_18TextureEvalContextEEUlT_E_fNS_16FloatDotsTextureENS_10FBmTextureENS_16FloatPtexTextureENS_19GPUFloatPtexTextureENS_12WindyTextureENS_15WrinkledTextureEEET0_OS4_PKvi.exit

bb.ab:                                            ; preds = %bb.a
  %i.pb = load ptr, ptr %0, align 8, !tbaa !691, !nonnull !363, !align !669 ; 6 uses
  %.sroa.02.0.copyload.i = load <2 x float>, ptr %i.pb, align 4 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %.sroa.2.0.copyload.i = load float, ptr %.sroa.2.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pb, i64 12
  %.sroa.3.0.copyload.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pb, i64 20
  %.sroa.43.0.copyload.i = load float, ptr %.sroa.43.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %.sroa.54.0.copyload.i = load <2 x float>, ptr %.sroa.54.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pb, i64 32
  %.sroa.65.0.copyload.i = load float, ptr %.sroa.65.0..sroa_idx.i, align 4 ; 3 uses
  %i.pc = load i64, ptr %1, align 8, !tbaa !56, !noalias !741
  %i.pd = and i64 %i.pc, 144115188075855871
  %i.pe = inttoptr i64 %i.pd to ptr               ; 13 uses
  %.sroa.013.0.vec.extract.i.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.02.0.copyload.i, i64 0
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  %.sroa.013.4.vec.extract.i.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.02.0.copyload.i, i64 1
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 20
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pe, i64 24
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pe, i64 32
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !54, !noalias !746 ; 3 uses
  %i.pm = fmul float %.sroa.013.0.vec.extract.i.i.i.i.i.i.i.i, %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pe, i64 36
  %i.po = load float, ptr %i.pn, align 4, !tbaa !54, !noalias !746 ; 3 uses
  %i.pp = fmul float %.sroa.013.4.vec.extract.i.i.i.i.i.i.i.i, %i.po
  %i.pq = fadd float %i.pm, %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pe, i64 40
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !54, !noalias !746 ; 3 uses
  %i.pt = fmul float %.sroa.2.0.copyload.i, %i.ps
  %i.pu = fadd float %i.pq, %i.pt
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pe, i64 44
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !54, !noalias !746
  %i.px = fadd float %i.pw, %i.pu                 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pe, i64 48
  %i.pz = load <2 x float>, ptr %i.py, align 4, !tbaa !54, !noalias !746
  %i.qa = fmul <2 x float> %.sroa.02.0.copyload.i, %i.pz ; 2 uses
  %shift111 = shufflevector <2 x float> %i.qa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop112 = fadd <2 x float> %i.qa, %shift111
  %i.qb = extractelement <2 x float> %foldExtExtBinop112, i64 0
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pe, i64 56
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !54, !noalias !746
  %i.qe = fmul float %.sroa.2.0.copyload.i, %i.qd
  %i.qf = fadd float %i.qb, %i.qe
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pe, i64 60
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !54, !noalias !746
  %i.qi = fadd float %i.qh, %i.qf                 ; 3 uses
  %i.qj = fcmp oeq float %i.qi, 1.000000e+00      ; 2 uses
  %i.qk = fdiv float %i.px, %i.qi
  %i.ql = load <8 x float>, ptr %i.pe, align 4, !tbaa !54, !noalias !746 ; 5 uses
  %i.qm = load float, ptr %i.pj, align 4, !tbaa !54, !noalias !746 ; 2 uses
  %i.qn = load float, ptr %i.pi, align 4, !tbaa !54, !noalias !746 ; 2 uses
  %i.qo = load float, ptr %i.ph, align 4, !tbaa !54, !noalias !746 ; 2 uses
  %i.qp = load float, ptr %i.pg, align 4, !tbaa !54, !noalias !746 ; 2 uses
  %i.qq = load float, ptr %i.pf, align 4, !tbaa !54, !noalias !746 ; 2 uses
  %i.qr = shufflevector <2 x float> %.sroa.02.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qs = shufflevector <8 x float> %i.ql, <8 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.qt = fmul <2 x float> %i.qr, %i.qs
  %i.qu = shufflevector <8 x float> %i.ql, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.qv = fmul <2 x float> %.sroa.02.0.copyload.i, %i.qu
  %i.qw = fadd <2 x float> %i.qt, %i.qv
  %i.qx = insertelement <2 x float> poison, float %.sroa.2.0.copyload.i, i64 0
  %i.qy = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qz = shufflevector <8 x float> %i.ql, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.ra = fmul <2 x float> %i.qy, %i.qz
  %i.rb = fadd <2 x float> %i.qw, %i.ra
  %i.rc = shufflevector <8 x float> %i.ql, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.rd = fadd <2 x float> %i.rc, %i.rb           ; 2 uses
  %i.re = insertelement <2 x float> poison, float %i.qi, i64 0
  %i.rf = shufflevector <2 x float> %i.re, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rg = fdiv <2 x float> %i.rd, %i.rf
  %i.rh = insertelement <2 x i1> poison, i1 %i.qj, i64 0
  %i.ri = shufflevector <2 x i1> %i.rh, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.rj = select <2 x i1> %i.ri, <2 x float> %i.rd, <2 x float> %i.rg
  %.sroa.495.0.i.i.i.i.i.i.i.i = select i1 %i.qj, float %i.px, float %i.qk
  %.sroa.03.0.vec.extract.i.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.3.0.copyload.i, i64 0 ; 3 uses
  %i.rk = extractelement <8 x float> %i.ql, i64 0 ; 2 uses
  %i.rl = fmul float %.sroa.03.0.vec.extract.i.i.i.i.i.i.i.i, %i.rk
  %.sroa.03.4.vec.extract.i.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.3.0.copyload.i, i64 1 ; 3 uses
  %i.rm = fmul float %.sroa.03.4.vec.extract.i.i.i.i.i.i.i.i, %i.qq
  %i.rn = fadd float %i.rl, %i.rm
  %i.ro = fmul float %.sroa.43.0.copyload.i, %i.qp
  %i.rp = fadd float %i.ro, %i.rn
  %i.rq = fmul float %.sroa.03.0.vec.extract.i.i.i.i.i.i.i.i, %i.qo
  %i.rr = fmul float %.sroa.03.4.vec.extract.i.i.i.i.i.i.i.i, %i.qn
  %i.rs = fadd float %i.rq, %i.rr
  %i.rt = fmul float %.sroa.43.0.copyload.i, %i.qm
  %i.ru = fadd float %i.rt, %i.rs
  %i.rv = fmul float %.sroa.03.0.vec.extract.i.i.i.i.i.i.i.i, %i.pl
  %i.rw = fmul float %.sroa.03.4.vec.extract.i.i.i.i.i.i.i.i, %i.po
  %i.rx = fadd float %i.rv, %i.rw
  %i.ry = fmul float %.sroa.43.0.copyload.i, %i.ps
  %i.rz = fadd float %i.ry, %i.rx
  %.sroa.046.0.vec.insert.i.i.i.i.i.i.i.i = insertelement <2 x float> poison, float %i.rp, i64 0
  %.sroa.046.4.vec.insert.i.i.i.i.i.i.i.i = insertelement <2 x float> %.sroa.046.0.vec.insert.i.i.i.i.i.i.i.i, float %i.ru, i64 1
  %.sroa.03.0.vec.extract.i23.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.54.0.copyload.i, i64 0 ; 3 uses
  %i.sa = fmul float %.sroa.03.0.vec.extract.i23.i.i.i.i.i.i.i, %i.rk
  %.sroa.03.4.vec.extract.i24.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.54.0.copyload.i, i64 1 ; 3 uses
  %i.sb = fmul float %.sroa.03.4.vec.extract.i24.i.i.i.i.i.i.i, %i.qq
  %i.sc = fadd float %i.sa, %i.sb
  %i.sd = fmul float %.sroa.65.0.copyload.i, %i.qp
  %i.se = fadd float %i.sd, %i.sc
  %i.sf = fmul float %.sroa.03.0.vec.extract.i23.i.i.i.i.i.i.i, %i.qo
  %i.sg = fmul float %.sroa.03.4.vec.extract.i24.i.i.i.i.i.i.i, %i.qn
  %i.sh = fadd float %i.sf, %i.sg
  %i.si = fmul float %.sroa.65.0.copyload.i, %i.qm
  %i.sj = fadd float %i.si, %i.sh
  %i.sk = fmul float %.sroa.03.0.vec.extract.i23.i.i.i.i.i.i.i, %i.pl
  %i.sl = fmul float %.sroa.03.4.vec.extract.i24.i.i.i.i.i.i.i, %i.po
  %i.sm = fadd float %i.sk, %i.sl
  %i.sn = fmul float %.sroa.65.0.copyload.i, %i.ps
  %i.so = fadd float %i.sn, %i.sm
  %.sroa.046.0.vec.insert.i25.i.i.i.i.i.i.i = insertelement <2 x float> poison, float %i.se, i64 0
  %.sroa.046.4.vec.insert.i26.i.i.i.i.i.i.i = insertelement <2 x float> %.sroa.046.0.vec.insert.i25.i.i.i.i.i.i.i, float %i.sj, i64 1
  %i.sp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !648
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ss = load i32, ptr %i.sr, align 8, !tbaa !646
  %i.st = tail call noundef float @_ZN4pbrt10TurbulenceENS_6Point3IfEENS_7Vector3IfEES3_fi(<2 x float> %i.rj, float %.sroa.495.0.i.i.i.i.i.i.i.i, <2 x float> %.sroa.046.4.vec.insert.i.i.i.i.i.i.i.i, float %i.rz, <2 x float> %.sroa.046.4.vec.insert.i26.i.i.i.i.i.i.i, float %i.so, float noundef %i.sq, i32 noundef %i.ss)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_12FloatTexture8EvaluateENS_18TextureEvalContextEEUlT_E_fNS_16FloatDotsTextureENS_10FBmTextureENS_16FloatPtexTextureENS_19GPUFloatPtexTextureENS_12WindyTextureENS_15WrinkledTextureEEET0_OS4_PKvi.exit

_ZN4pbrt6detail8DispatchIRZNKS_12FloatTexture8EvaluateENS_18TextureEvalContextEEUlT_E_fNS_16FloatDotsTextureENS_10FBmTextureENS_16FloatPtexTextureENS_19GPUFloatPtexTextureENS_12WindyTextureENS_15WrinkledTextureEEET0_OS4_PKvi.exit: ; preds = %bb.ab, %bb.aa, %bb.z, %_ZZNK4pbrt12FloatTexture8EvaluateENS_18TextureEvalContextEENKUlT_E_clIPKNS_16FloatPtexTextureEEEDaS2_.exit, %bb.w, %_ZZNK4pbrt12FloatTexture8EvaluateENS_18TextureEvalContextEENKUlT_E_clIPKNS_16FloatDotsTextureEEEDaS2_.exit, %_ZNK4pbrt24FloatCheckerboardTexture8EvaluateENS_18TextureEvalContextE.exit, %bb.o, %bb.n, %_ZNK4pbrt18FloatScaledTexture8EvaluateENS_18TextureEvalContextE.exit, %_ZNK4pbrt24FloatDirectionMixTexture8EvaluateENS_18TextureEvalContextE.exit, %_ZNK4pbrt15FloatMixTexture8EvaluateENS_18TextureEvalContextE.exit, %bb.b
  %.0 = phi float [ %i.et, %_ZNK4pbrt24FloatCheckerboardTexture8EvaluateENS_18TextureEvalContextE.exit ], [ %i.y, %bb.b ], [ %i.pa, %bb.aa ], [ %i.bc, %_ZNK4pbrt15FloatMixTexture8EvaluateENS_18TextureEvalContextE.exit ], [ %i.cg, %_ZNK4pbrt24FloatDirectionMixTexture8EvaluateENS_18TextureEvalContextE.exit ], [ %.0.i20, %_ZNK4pbrt18FloatScaledTexture8EvaluateENS_18TextureEvalContextE.exit ], [ %i.cz, %bb.n ], [ %i.ds, %bb.o ], [ %i.st, %bb.ab ], [ %i.gq, %_ZZNK4pbrt12FloatTexture8EvaluateENS_18TextureEvalContextEENKUlT_E_clIPKNS_16FloatDotsTextureEEEDaS2_.exit ], [ %i.kj, %bb.w ], [ %.0.i.i, %_ZZNK4pbrt12FloatTexture8EvaluateENS_18TextureEvalContextEENKUlT_E_clIPKNS_16FloatPtexTextureEEEDaS2_.exit ], [ %i.la, %bb.z ]
  ret float %.0
}

declare noundef float @_ZNK4pbrt6MIPMap6FilterIfEET_NS_6Point2IfEENS_7Vector2IfEES6_(ptr noundef nonnull align 8 dereferenceable(52), <2 x float>, <2 x float>, <2 x float>) local_unnamed_addr #3

declare noundef float @_ZN4pbrt10TurbulenceENS_6Point3IfEENS_7Vector3IfEES3_fi(<2 x float>, float, <2 x float>, float, <2 x float>, float, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_20SpectrumImageTextureENS_23GPUSpectrumImageTextureENS_18SpectrumMixTextureENS_27SpectrumDirectionMixTextureENS_21SpectrumScaledTextureENS_23SpectrumConstantTextureENS_21SpectrumBilerpTextureENS_27SpectrumCheckerboardTextureEJNS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEvEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %class.anon.76, align 8             ; 5 uses
  %4 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %5 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %6 = alloca %class.anon.76, align 8             ; 5 uses
  %7 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %8 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %9 = alloca %"class.pbrt::TextureMapping2D", align 8 ; 4 uses
  %10 = alloca %"class.pbrt::TextureMapping3D", align 8 ; 4 uses
  %11 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 5 uses
  %12 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 6 uses
  %13 = alloca %class.anon.76, align 8            ; 5 uses
  %14 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %15 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 7 uses
  %16 = alloca %class.anon.76, align 8            ; 5 uses
  %17 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %18 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 7 uses
  %19 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %.sroa.0 = alloca { %"class.pbrt::Point3", %"class.pbrt::Vector3", %"class.pbrt::Vector3" }, align 8 ; 4 uses
  %.sroa.7 = alloca { %"class.pbrt::Point2", float, float, float, float, i32 }, align 8 ; 4 uses
  %20 = alloca %class.anon.76, align 8            ; 5 uses
  %21 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %22 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %23 = alloca %class.anon.76, align 8            ; 5 uses
  %24 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %25 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %26 = alloca %class.anon.75, align 8            ; 4 uses
  %27 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %28 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 5 uses
  %29 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 5 uses
  %30 = alloca %class.anon.61, align 8            ; 4 uses
  %31 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %32 = alloca %class.anon.76, align 8            ; 5 uses
  %33 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %34 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %35 = alloca %class.anon.76, align 8            ; 5 uses
  %36 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %37 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %38 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %39 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %40 = alloca %"struct.pbrt::TexCoord2D", align 8 ; 4 uses
  %41 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 5 uses
  %42 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 5 uses
  %43 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %44 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %45 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %46 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %47 = alloca %class.anon.76, align 8            ; 5 uses
  %48 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %49 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %50 = alloca %class.anon.75, align 8            ; 4 uses
  %51 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %52 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %53 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %54 = alloca %class.anon.77, align 8            ; 4 uses
  %55 = alloca %class.anon.77, align 8            ; 4 uses
  %56 = alloca %class.anon.77, align 8            ; 4 uses
  %57 = alloca %class.anon.77, align 8            ; 4 uses
  %58 = alloca %class.anon.61, align 8            ; 4 uses
  %59 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %60 = alloca %"struct.pbrt::TexCoord2D", align 4 ; 5 uses
  %61 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 7 uses
  %62 = alloca %class.anon.77, align 8            ; 4 uses
  %63 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %64 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %65 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  switch i32 %2, label %bb.y [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.h
    i32 4, label %bb.l
    i32 5, label %bb.n
    i32 6, label %bb.o
    i32 7, label %bb.p
    i32 8, label %bb.t
    i32 9, label %bb.u
    i32 10, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %64)
  call void @llvm.lifetime.start.p0(ptr nonnull %65)
  %i.a = load ptr, ptr %0, align 8, !tbaa !753, !nonnull !363, !align !669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %64, ptr noundef nonnull align 4 dereferenceable(76) %i.a, i64 76, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755, !nonnull !363, !align !669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull align 4 dereferenceable(32) %i.c, i64 32, i1 false), !tbaa.struct !756
  %i.d = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt20SpectrumImageTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %64, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %65)
  call void @llvm.lifetime.end.p0(ptr nonnull %64)
  call void @llvm.lifetime.end.p0(ptr nonnull %65)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEET0_OS5_PKvi.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.134, i32 noundef 740, ptr noundef nonnull @.str.138) #27
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !753, !nonnull !363, !align !669 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %29, ptr noundef nonnull align 4 dereferenceable(76) %i.e, i64 76, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !755, !nonnull !363, !align !669
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 4 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %27, ptr noundef nonnull align 4 dereferenceable(76) %i.e, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  store ptr %27, ptr %26, align 8, !tbaa !268
  %i.i = load i64, ptr %i.h, align 8, !tbaa !58   ; 2 uses
  %i.j = and i64 %i.i, 144115188075855871
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = lshr i64 %i.i, 57
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = add nsw i32 %i.m, -1
  %i.o = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_12FloatTexture8EvaluateENS_18TextureEvalContextEEUlT_E_fNS_17FloatImageTextureENS_20GPUFloatImageTextureENS_15FloatMixTextureENS_24FloatDirectionMixTextureENS_18FloatScaledTextureENS_20FloatConstantTextureENS_18FloatBilerpTextureENS_24FloatCheckerboardTextureEJNS_16FloatDotsTextureENS_10FBmTextureENS_16FloatPtexTextureENS_19GPUFloatPtexTextureENS_12WindyTextureENS_15WrinkledTextureEEvEET0_OS4_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %i.k, i32 noundef %i.n), !inline_history !757 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  %i.p = fcmp une float %i.o, 1.000000e+00
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %25, ptr noundef nonnull align 8 dereferenceable(76) %29, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %28, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  store ptr %25, ptr %23, align 8, !tbaa !268
  %i.q = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %24, ptr %i.q, align 8, !tbaa !658
  %i.r = load i64, ptr %1, align 8, !tbaa !148    ; 2 uses
  %i.s = and i64 %i.r, 144115188075855871
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = lshr i64 %i.r, 57
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = add nsw i32 %i.v, -1
  %i.x = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_20SpectrumImageTextureENS_23GPUSpectrumImageTextureENS_18SpectrumMixTextureENS_27SpectrumDirectionMixTextureENS_21SpectrumScaledTextureENS_23SpectrumConstantTextureENS_21SpectrumBilerpTextureENS_27SpectrumCheckerboardTextureEJNS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEvEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef %i.t, i32 noundef %i.w), !inline_history !758 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  %i.y = extractvalue { <2 x float>, <2 x float> } %i.x, 0
  %i.z = extractvalue { <2 x float>, <2 x float> } %i.x, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.024.0.i = phi <2 x float> [ %i.y, %bb.e ], [ zeroinitializer, %bb.d ]
  %.sroa.525.0.i = phi <2 x float> [ %i.z, %bb.e ], [ zeroinitializer, %bb.d ]
  %i.aa = fcmp une float %i.o, 0.000000e+00
  br i1 %i.aa, label %bb.g, label %_ZNK4pbrt18SpectrumMixTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %22, ptr noundef nonnull align 8 dereferenceable(76) %29, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %28, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store ptr %22, ptr %20, align 8, !tbaa !268
  %i.ac = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %21, ptr %i.ac, align 8, !tbaa !658
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !148 ; 2 uses
  %i.ae = and i64 %i.ad, 144115188075855871
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = lshr i64 %i.ad, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_20SpectrumImageTextureENS_23GPUSpectrumImageTextureENS_18SpectrumMixTextureENS_27SpectrumDirectionMixTextureENS_21SpectrumScaledTextureENS_23SpectrumConstantTextureENS_21SpectrumBilerpTextureENS_27SpectrumCheckerboardTextureEJNS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEvEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef %i.af, i32 noundef %i.ai), !inline_history !758 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.ak = extractvalue { <2 x float>, <2 x float> } %i.aj, 0
  %i.al = extractvalue { <2 x float>, <2 x float> } %i.aj, 1
  br label %_ZNK4pbrt18SpectrumMixTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE.exit

_ZNK4pbrt18SpectrumMixTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE.exit: ; preds = %bb.f, %bb.g
  %.sroa.022.0.i = phi <2 x float> [ %i.ak, %bb.g ], [ zeroinitializer, %bb.f ]
  %.sroa.523.0.i = phi <2 x float> [ %i.al, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.am = fsub float 1.000000e+00, %i.o
  %i.an = insertelement <4 x float> poison, float %i.am, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ap = shufflevector <2 x float> %.sroa.024.0.i, <2 x float> %.sroa.525.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aq = fmul <4 x float> %i.ao, %i.ap
  %i.ar = insertelement <4 x float> poison, float %i.o, i64 0
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> zeroinitializer
  %i.at = shufflevector <2 x float> %.sroa.022.0.i, <2 x float> %.sroa.523.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.au = fmul <4 x float> %i.as, %i.at
  %i.av = fadd <4 x float> %i.aq, %i.au           ; 2 uses
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ax = shufflevector <4 x float> %i.av, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.aw, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i, <2 x float> %i.ax, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEET0_OS5_PKvi.exit

bb.h:                                             ; preds = %bb.a
  %i.ay = load ptr, ptr %0, align 8, !tbaa !753, !nonnull !363, !align !669 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(36) %i.ay, i64 36, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 36
  %.sroa.4.0.copyload = load <2 x float>, ptr %.sroa.4.0..sroa_idx, align 4 ; 4 uses
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 44
  %.sroa.566.0.copyload = load float, ptr %.sroa.566.0..sroa_idx, align 4 ; 4 uses
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.667.0..sroa_idx, i64 28, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !755, !nonnull !363, !align !669 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 4 dereferenceable(32) %i.ba, i64 32, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.06.0.copyload.i = load <2 x float>, ptr %i.bb, align 8 ; 2 uses
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.27.0.copyload.i = load float, ptr %.sroa.27.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.04.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.4.0.copyload, i64 0
  %.sroa.01.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.06.0.copyload.i, i64 0
  %.sroa.04.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.4.0.copyload, i64 1
  %.sroa.01.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.06.0.copyload.i, i64 1
  %i.bc = fmul float %.sroa.566.0.copyload, %.sroa.27.0.copyload.i ; 2 uses
  %i.bd = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i.i, float %.sroa.01.4.vec.extract.i.i.i, float %i.bc)
  %i.be = fneg float %i.bc
  %i.bf = tail call noundef float @llvm.fma.f32(float %.sroa.566.0.copyload, float %.sroa.27.0.copyload.i, float %i.be)
  %i.bg = fadd float %i.bd, %i.bf
  %i.bh = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i.i, float %.sroa.01.0.vec.extract.i.i.i, float %i.bg) ; 2 uses
  %i.bi = tail call noundef float @llvm.fabs.f32(float %i.bh) ; 3 uses
  %i.bj = fcmp une float %i.bh, 0.000000e+00
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef nonnull align 4 dereferenceable(36) %i.ay, i64 36, i1 false)
  %.sroa.5.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %18, i64 36
  store <2 x float> %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx55, align 4
  %.sroa.6.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %18, i64 44
  store float %.sroa.566.0.copyload, ptr %.sroa.6.0..sroa_idx59, align 4
  %.sroa.7.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %18, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.7.0..sroa_idx63, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.667.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 4 dereferenceable(32) %i.ba, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store ptr %18, ptr %16, align 8, !tbaa !268
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %17, ptr %i.bk, align 8, !tbaa !658
  %i.bl = load i64, ptr %1, align 8, !tbaa !148   ; 2 uses
  %i.bm = and i64 %i.bl, 144115188075855871
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = lshr i64 %i.bl, 57
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -1
  %i.br = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_20SpectrumImageTextureENS_23GPUSpectrumImageTextureENS_18SpectrumMixTextureENS_27SpectrumDirectionMixTextureENS_21SpectrumScaledTextureENS_23SpectrumConstantTextureENS_21SpectrumBilerpTextureENS_27SpectrumCheckerboardTextureEJNS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEvEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef %i.bn, i32 noundef %i.bq), !inline_history !759 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.bs = extractvalue { <2 x float>, <2 x float> } %i.br, 0
  %i.bt = extractvalue { <2 x float>, <2 x float> } %i.br, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.032.0.i = phi <2 x float> [ %i.bs, %bb.i ], [ zeroinitializer, %bb.h ]
  %.sroa.533.0.i = phi <2 x float> [ %i.bt, %bb.i ], [ zeroinitializer, %bb.h ]
  %i.bu = fcmp une float %i.bi, 1.000000e+00
  br i1 %i.bu, label %bb.k, label %_ZNK4pbrt27SpectrumDirectionMixTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE.exit

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.0, i64 36, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 36
  store <2 x float> %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 44
  store float %.sroa.566.0.copyload, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.7, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %19, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr %15, ptr %13, align 8, !tbaa !268
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %14, ptr %i.bw, align 8, !tbaa !658
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !148 ; 2 uses
  %i.by = and i64 %i.bx, 144115188075855871
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = lshr i64 %i.bx, 57
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -1
  %i.cd = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_20SpectrumImageTextureENS_23GPUSpectrumImageTextureENS_18SpectrumMixTextureENS_27SpectrumDirectionMixTextureENS_21SpectrumScaledTextureENS_23SpectrumConstantTextureENS_21SpectrumBilerpTextureENS_27SpectrumCheckerboardTextureEJNS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEvEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.bz, i32 noundef %i.cc), !inline_history !759 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.ce = extractvalue { <2 x float>, <2 x float> } %i.cd, 0
  %i.cf = extractvalue { <2 x float>, <2 x float> } %i.cd, 1
  br label %_ZNK4pbrt27SpectrumDirectionMixTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE.exit

_ZNK4pbrt27SpectrumDirectionMixTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE.exit: ; preds = %bb.j, %bb.k
  %.sroa.030.0.i = phi <2 x float> [ %i.ce, %bb.k ], [ zeroinitializer, %bb.j ]
  %.sroa.531.0.i = phi <2 x float> [ %i.cf, %bb.k ], [ zeroinitializer, %bb.j ]
  %i.cg = fsub float 1.000000e+00, %i.bi
  %i.ch = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cj = shufflevector <2 x float> %.sroa.032.0.i, <2 x float> %.sroa.533.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ck = fmul <4 x float> %i.ci, %i.cj
  %i.cl = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cn = shufflevector <2 x float> %.sroa.030.0.i, <2 x float> %.sroa.531.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.co = fmul <4 x float> %i.cm, %i.cn
  %i.cp = fadd <4 x float> %i.ck, %i.co           ; 2 uses
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i.i35 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.cq, 0
  %.fca.1.insert.i.i36 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i35, <2 x float> %i.cr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEET0_OS5_PKvi.exit

bb.l:                                             ; preds = %bb.a
  %i.cs = load ptr, ptr %0, align 8, !tbaa !753, !nonnull !363, !align !669 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %53, ptr noundef nonnull align 4 dereferenceable(76) %i.cs, i64 76, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !755, !nonnull !363, !align !669
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull align 4 dereferenceable(32) %i.cu, i64 32, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %51, ptr noundef nonnull align 4 dereferenceable(76) %i.cs, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #26
  store ptr %51, ptr %50, align 8, !tbaa !268
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !58 ; 2 uses
  %i.cx = and i64 %i.cw, 144115188075855871
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = lshr i64 %i.cw, 57
  %i.da = trunc nuw nsw i64 %i.cz to i32
  %i.db = add nsw i32 %i.da, -1
  %i.dc = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_12FloatTexture8EvaluateENS_18TextureEvalContextEEUlT_E_fNS_17FloatImageTextureENS_20GPUFloatImageTextureENS_15FloatMixTextureENS_24FloatDirectionMixTextureENS_18FloatScaledTextureENS_20FloatConstantTextureENS_18FloatBilerpTextureENS_24FloatCheckerboardTextureEJNS_16FloatDotsTextureENS_10FBmTextureENS_16FloatPtexTextureENS_19GPUFloatPtexTextureENS_12WindyTextureENS_15WrinkledTextureEEvEET0_OS4_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %i.cy, i32 noundef %i.db), !inline_history !760 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %51)
  %i.dd = fcmp oeq float %i.dc, 0.000000e+00
  br i1 %i.dd, label %_ZNK4pbrt21SpectrumScaledTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %49, ptr noundef nonnull align 8 dereferenceable(76) %53, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 8 dereferenceable(32) %52, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #26
  store ptr %49, ptr %47, align 8, !tbaa !268
  %i.de = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr %48, ptr %i.de, align 8, !tbaa !658
  %i.df = load i64, ptr %1, align 8, !tbaa !148   ; 2 uses
  %i.dg = and i64 %i.df, 144115188075855871
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = lshr i64 %i.df, 57
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -1
  %i.dl = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_20SpectrumImageTextureENS_23GPUSpectrumImageTextureENS_18SpectrumMixTextureENS_27SpectrumDirectionMixTextureENS_21SpectrumScaledTextureENS_23SpectrumConstantTextureENS_21SpectrumBilerpTextureENS_27SpectrumCheckerboardTextureEJNS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEvEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef %i.dh, i32 noundef %i.dk), !inline_history !761 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %49)
  call void @llvm.lifetime.end.p0(ptr nonnull %48)
  %i.dm = extractvalue { <2 x float>, <2 x float> } %i.dl, 0
  %i.dn = extractvalue { <2 x float>, <2 x float> } %i.dl, 1
  %i.do = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dq = fmul <2 x float> %i.dp, %i.dm
  %i.dr = fmul <2 x float> %i.dp, %i.dn
  br label %_ZNK4pbrt21SpectrumScaledTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE.exit

_ZNK4pbrt21SpectrumScaledTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE.exit: ; preds = %bb.l, %bb.m
  %.sroa.021.0 = phi <2 x float> [ %i.dq, %bb.m ], [ zeroinitializer, %bb.l ]
  %.sroa.6.0 = phi <2 x float> [ %i.dr, %bb.m ], [ zeroinitializer, %bb.l ]
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.021.0, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.6.0, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %53)
  call void @llvm.lifetime.end.p0(ptr nonnull %52)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEET0_OS5_PKvi.exit

bb.n:                                             ; preds = %bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !755, !nonnull !363, !align !669
  call void @llvm.lifetime.start.p0(ptr nonnull %63)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull align 4 dereferenceable(32) %i.dt, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #26
  store ptr %63, ptr %62, align 8, !tbaa !658
  %i.du = load i64, ptr %1, align 8, !tbaa !245   ; 2 uses
  %i.dv = and i64 %i.du, 144115188075855871
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = lshr i64 %i.du, 57
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nsw i32 %i.dy, -1
  %i.ea = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_8Spectrum6SampleERKNS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_16ConstantSpectrumENS_22DenselySampledSpectrumENS_23PiecewiseLinearSpectrumENS_17RGBAlbedoSpectrumENS_20RGBUnboundedSpectrumENS_21RGBIlluminantSpectrumENS_17BlackbodySpectrumEEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef %i.dw, i32 noundef %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %63)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEET0_OS5_PKvi.exit

bb.o:                                             ; preds = %bb.a
  %i.eb = load ptr, ptr %0, align 8, !tbaa !753, !nonnull !363, !align !669
  call void @llvm.lifetime.start.p0(ptr nonnull %59)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %59, ptr noundef nonnull align 4 dereferenceable(76) %i.eb, i64 76, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !755, !nonnull !363, !align !669
  call void @llvm.lifetime.start.p0(ptr nonnull %61)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull align 4 dereferenceable(32) %i.ed, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #26, !noalias !762
  store ptr %59, ptr %58, align 8, !tbaa !268, !noalias !762
  %i.ee = load i64, ptr %1, align 8, !tbaa !36, !noalias !765 ; 2 uses
  %i.ef = and i64 %i.ee, 144115188075855871
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = lshr i64 %i.ee, 57
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = add nsw i32 %i.ei, -1
  call void @_ZN4pbrt6detail8DispatchIRZNKS_16TextureMapping2D3MapENS_18TextureEvalContextEEUlT_E_NS_10TexCoord2DENS_9UVMappingENS_16SphericalMappingENS_18CylindricalMappingENS_13PlanarMappingEEET0_OS4_PKvi(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::TexCoord2D") align 4 %60, ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %i.eg, i32 noundef %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #26, !noalias !762
  call void @llvm.lifetime.end.p0(ptr nonnull %59)
  %66 = load float, ptr %60, align 4, !tbaa !54   ; 3 uses
  %67 = getelementptr inbounds nuw i8, ptr %60, i64 4
  %68 = load float, ptr %67, align 4, !tbaa !54   ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #26
  store ptr %61, ptr %57, align 8, !tbaa !658
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !245 ; 2 uses
  %i.em = and i64 %i.el, 144115188075855871
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = lshr i64 %i.el, 57
  %i.ep = trunc nuw nsw i64 %i.eo to i32
  %i.eq = add nsw i32 %i.ep, -1
  %i.er = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_8Spectrum6SampleERKNS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_16ConstantSpectrumENS_22DenselySampledSpectrumENS_23PiecewiseLinearSpectrumENS_17RGBAlbedoSpectrumENS_20RGBUnboundedSpectrumENS_21RGBIlluminantSpectrumENS_17BlackbodySpectrumEEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef %i.en, i32 noundef %i.eq) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #26
  %i.es = extractvalue { <2 x float>, <2 x float> } %i.er, 0
  %i.et = extractvalue { <2 x float>, <2 x float> } %i.er, 1
  %69 = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #26
  store ptr %61, ptr %56, align 8, !tbaa !658
  %i.eu = load i64, ptr %69, align 8, !tbaa !245  ; 2 uses
  %i.ev = and i64 %i.eu, 144115188075855871
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = lshr i64 %i.eu, 57
  %i.ey = trunc nuw nsw i64 %i.ex to i32
  %i.ez = add nsw i32 %i.ey, -1
  %i.fa = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_8Spectrum6SampleERKNS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_16ConstantSpectrumENS_22DenselySampledSpectrumENS_23PiecewiseLinearSpectrumENS_17RGBAlbedoSpectrumENS_20RGBUnboundedSpectrumENS_21RGBIlluminantSpectrumENS_17BlackbodySpectrumEEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef %i.ew, i32 noundef %i.ez) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26
  %i.fb = extractvalue { <2 x float>, <2 x float> } %i.fa, 0
  %i.fc = extractvalue { <2 x float>, <2 x float> } %i.fa, 1
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #26
  store ptr %61, ptr %55, align 8, !tbaa !658
  %i.fd = load i64, ptr %70, align 8, !tbaa !245  ; 2 uses
  %i.fe = and i64 %i.fd, 144115188075855871
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = lshr i64 %i.fd, 57
  %i.fh = trunc nuw nsw i64 %i.fg to i32
  %i.fi = add nsw i32 %i.fh, -1
  %i.fj = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_8Spectrum6SampleERKNS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_16ConstantSpectrumENS_22DenselySampledSpectrumENS_23PiecewiseLinearSpectrumENS_17RGBAlbedoSpectrumENS_20RGBUnboundedSpectrumENS_21RGBIlluminantSpectrumENS_17BlackbodySpectrumEEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %i.ff, i32 noundef %i.fi) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  %i.fk = extractvalue { <2 x float>, <2 x float> } %i.fj, 0
  %i.fl = extractvalue { <2 x float>, <2 x float> } %i.fj, 1
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #26
  store ptr %61, ptr %54, align 8, !tbaa !658
  %i.fm = load i64, ptr %71, align 8, !tbaa !245  ; 2 uses
  %i.fn = and i64 %i.fm, 144115188075855871
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = lshr i64 %i.fm, 57
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  %i.fr = add nsw i32 %i.fq, -1
  %i.fs = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_8Spectrum6SampleERKNS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_16ConstantSpectrumENS_22DenselySampledSpectrumENS_23PiecewiseLinearSpectrumENS_17RGBAlbedoSpectrumENS_20RGBUnboundedSpectrumENS_21RGBIlluminantSpectrumENS_17BlackbodySpectrumEEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %i.fo, i32 noundef %i.fr) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  %i.ft = extractvalue { <2 x float>, <2 x float> } %i.fs, 0
  %i.fu = extractvalue { <2 x float>, <2 x float> } %i.fs, 1
  %72 = fsub float 1.000000e+00, %66              ; 2 uses
  %i.fv = fsub float 1.000000e+00, %68
  %73 = fmul float %68, %72
  %74 = fmul float %66, %68
  %75 = insertelement <2 x float> poison, float %66, i64 0
  %i.fw = insertelement <2 x float> %75, float %72, i64 1
  %i.fx = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = fmul <2 x float> %i.fw, %i.fy           ; 2 uses
  %76 = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ga = shufflevector <2 x float> %i.fb, <2 x float> %i.et, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gb = fmul <4 x float> %76, %i.ga
  %77 = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.gc = shufflevector <2 x float> %i.es, <2 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gd = fmul <4 x float> %77, %i.gc
  %i.ge = fadd <4 x float> %i.gb, %i.gd
  %78 = insertelement <4 x float> poison, float %73, i64 0
  %79 = shufflevector <4 x float> %78, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gf = shufflevector <2 x float> %i.fk, <2 x float> %i.fl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gg = fmul <4 x float> %79, %i.gf
  %i.gh = fadd <4 x float> %i.ge, %i.gg
  %80 = insertelement <4 x float> poison, float %74, i64 0
  %i.gi = shufflevector <4 x float> %80, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gj = shufflevector <2 x float> %i.ft, <2 x float> %i.fu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gk = fmul <4 x float> %i.gi, %i.gj
  %i.gl = fadd <4 x float> %i.gh, %i.gk           ; 2 uses
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gn = shufflevector <4 x float> %i.gl, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i64.i.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.gm, 0
  %.fca.1.insert.i65.i.i.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i64.i.i.i, <2 x float> %i.gn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %61)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEET0_OS5_PKvi.exit

bb.p:                                             ; preds = %bb.a
  %i.go = load ptr, ptr %0, align 8, !tbaa !753, !nonnull !363, !align !669
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %12, ptr noundef nonnull align 4 dereferenceable(76) %i.go, i64 76, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !755, !nonnull !363, !align !669
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 4 dereferenceable(32) %i.gq, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.gr = load i64, ptr %1, align 8, !tbaa !36
  store i64 %i.gr, ptr %9, align 8, !tbaa !36
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !56
  store i64 %i.gt, ptr %10, align 8, !tbaa !56
  %i.gu = call noundef float @_ZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DE(ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %12, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %9, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %10), !inline_history !768 ; 4 uses
  %i.gv = fcmp une float %i.gu, 1.000000e+00
  br i1 %i.gv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %8, ptr noundef nonnull align 8 dereferenceable(76) %12, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %8, ptr %6, align 8, !tbaa !268
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %7, ptr %i.gx, align 8, !tbaa !658
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !148 ; 2 uses
  %i.gz = and i64 %i.gy, 144115188075855871
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = lshr i64 %i.gy, 57
  %i.hc = trunc nuw nsw i64 %i.hb to i32
  %i.hd = add nsw i32 %i.hc, -1
  %i.he = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_20SpectrumImageTextureENS_23GPUSpectrumImageTextureENS_18SpectrumMixTextureENS_27SpectrumDirectionMixTextureENS_21SpectrumScaledTextureENS_23SpectrumConstantTextureENS_21SpectrumBilerpTextureENS_27SpectrumCheckerboardTextureEJNS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEvEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.ha, i32 noundef %i.hd), !inline_history !769 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.hf = extractvalue { <2 x float>, <2 x float> } %i.he, 0
  %i.hg = extractvalue { <2 x float>, <2 x float> } %i.he, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.024.0.i37 = phi <2 x float> [ %i.hf, %bb.q ], [ zeroinitializer, %bb.p ]
  %.sroa.525.0.i38 = phi <2 x float> [ %i.hg, %bb.q ], [ zeroinitializer, %bb.p ]
  %i.hh = fcmp une float %i.gu, 0.000000e+00
  br i1 %i.hh, label %bb.s, label %_ZNK4pbrt27SpectrumCheckerboardTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE.exit

bb.s:                                             ; preds = %bb.r
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %5, ptr noundef nonnull align 8 dereferenceable(76) %12, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %5, ptr %3, align 8, !tbaa !268
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %4, ptr %i.hj, align 8, !tbaa !658
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !148 ; 2 uses
  %i.hl = and i64 %i.hk, 144115188075855871
  %i.hm = inttoptr i64 %i.hl to ptr
  %i.hn = lshr i64 %i.hk, 57
  %i.ho = trunc nuw nsw i64 %i.hn to i32
  %i.hp = add nsw i32 %i.ho, -1
  %i.hq = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_20SpectrumImageTextureENS_23GPUSpectrumImageTextureENS_18SpectrumMixTextureENS_27SpectrumDirectionMixTextureENS_21SpectrumScaledTextureENS_23SpectrumConstantTextureENS_21SpectrumBilerpTextureENS_27SpectrumCheckerboardTextureEJNS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEvEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.hm, i32 noundef %i.hp), !inline_history !769 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.hr = extractvalue { <2 x float>, <2 x float> } %i.hq, 0
  %i.hs = extractvalue { <2 x float>, <2 x float> } %i.hq, 1
  br label %_ZNK4pbrt27SpectrumCheckerboardTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE.exit

_ZNK4pbrt27SpectrumCheckerboardTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE.exit: ; preds = %bb.r, %bb.s
  %.sroa.022.0.i39 = phi <2 x float> [ %i.hr, %bb.s ], [ zeroinitializer, %bb.r ]
  %.sroa.523.0.i40 = phi <2 x float> [ %i.hs, %bb.s ], [ zeroinitializer, %bb.r ]
  %i.ht = fsub float 1.000000e+00, %i.gu
  %i.hu = insertelement <4 x float> poison, float %i.ht, i64 0
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hw = shufflevector <2 x float> %.sroa.024.0.i37, <2 x float> %.sroa.525.0.i38, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hx = fmul <4 x float> %i.hv, %i.hw
  %i.hy = insertelement <4 x float> poison, float %i.gu, i64 0
  %i.hz = shufflevector <4 x float> %i.hy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ia = shufflevector <2 x float> %.sroa.022.0.i39, <2 x float> %.sroa.523.0.i40, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ib = fmul <4 x float> %i.hz, %i.ia
  %i.ic = fadd <4 x float> %i.hx, %i.ib           ; 2 uses
  %i.id = shufflevector <4 x float> %i.ic, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ie = shufflevector <4 x float> %i.ic, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i.i53 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.id, 0
  %.fca.1.insert.i.i54 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i53, <2 x float> %i.ie, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEET0_OS5_PKvi.exit

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  %i.if = load ptr, ptr %0, align 8, !tbaa !753, !nonnull !363, !align !669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %38, ptr noundef nonnull align 4 dereferenceable(76) %i.if, i64 76, i1 false)
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !755, !nonnull !363, !align !669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 4 dereferenceable(32) %i.ih, i64 32, i1 false), !tbaa.struct !756
  %i.ii = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt13MarbleTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %38, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %39)
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEET0_OS5_PKvi.exit

bb.u:                                             ; preds = %bb.a
  %i.ij = load ptr, ptr %0, align 8, !tbaa !753, !nonnull !363, !align !669 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %42, ptr noundef nonnull align 4 dereferenceable(76) %i.ij, i64 76, i1 false)
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !755, !nonnull !363, !align !669
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 4 dereferenceable(32) %i.il, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %31, ptr noundef nonnull align 4 dereferenceable(76) %i.ij, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26, !noalias !770
  store ptr %31, ptr %30, align 8, !tbaa !268, !noalias !770
  %i.im = load i64, ptr %1, align 8, !tbaa !36, !noalias !773 ; 2 uses
  %i.in = and i64 %i.im, 144115188075855871
  %i.io = inttoptr i64 %i.in to ptr
  %i.ip = lshr i64 %i.im, 57
  %i.iq = trunc nuw nsw i64 %i.ip to i32
  %i.ir = add nsw i32 %i.iq, -1
  call void @_ZN4pbrt6detail8DispatchIRZNKS_16TextureMapping2D3MapENS_18TextureEvalContextEEUlT_E_NS_10TexCoord2DENS_9UVMappingENS_16SphericalMappingENS_18CylindricalMappingENS_13PlanarMappingEEET0_OS4_PKvi(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::TexCoord2D") align 4 %40, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %i.io, i32 noundef %i.ir)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26, !noalias !770
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  %.sroa.0.0.copyload.i.i20 = load <2 x float>, ptr %40, align 8 ; 2 uses
  %i.is = fadd <2 x float> %.sroa.0.0.copyload.i.i20, splat (float 5.000000e-01)
  %i.it = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.is)
  %i.iu = fptosi <2 x float> %i.it to <2 x i32>
  %i.iv = sitofp <2 x i32> %i.iu to <2 x float>   ; 4 uses
  %i.iw = fadd <2 x float> %i.iv, splat (float 5.000000e-01) ; 2 uses
  %i.ix = extractelement <2 x float> %i.iw, i64 0
  %i.iy = extractelement <2 x float> %i.iw, i64 1
  %i.iz = call noundef float @_ZN4pbrt5NoiseEfff(float noundef %i.ix, float noundef %i.iy, float noundef 5.000000e-01)
  %i.ja = fcmp ogt float %i.iz, 0.000000e+00
  br i1 %i.ja, label %bb.v, label %_ZN4pbrt14InsidePolkaDotENS_6Point2IfEE.exit

bb.v:                                             ; preds = %bb.u
  %i.jb = extractelement <2 x float> %i.iv, i64 0 ; 2 uses
  %i.jc = fadd float %i.jb, 1.500000e+00
  %i.jd = extractelement <2 x float> %i.iv, i64 1 ; 2 uses
  %i.je = fadd float %i.jd, 2.800000e+00
  %i.jf = call noundef float @_ZN4pbrt5NoiseEfff(float noundef %i.jc, float noundef %i.je, float noundef 5.000000e-01)
  %i.jg = fadd float %i.jb, 4.500000e+00
  %i.jh = fadd float %i.jd, 9.800000e+00
  %i.ji = call noundef float @_ZN4pbrt5NoiseEfff(float noundef %i.jg, float noundef %i.jh, float noundef 5.000000e-01)
  %i.jj = insertelement <2 x float> poison, float %i.jf, i64 0
  %i.jk = insertelement <2 x float> %i.jj, float %i.ji, i64 1
  %i.jl = fmul <2 x float> %i.jk, splat (float 1.500000e-01)
  %i.jm = fadd <2 x float> %i.jl, %i.iv
  %i.jn = fsub <2 x float> %.sroa.0.0.copyload.i.i20, %i.jm ; 2 uses
  %i.jo = fmul <2 x float> %i.jn, %i.jn           ; 2 uses
  %shift = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.jo, %shift
  %i.jp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.jq = fcmp uge float %i.jp, f0x3DFAE147
  br i1 %i.jq, label %_ZN4pbrt14InsidePolkaDotENS_6Point2IfEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %34, ptr noundef nonnull align 8 dereferenceable(76) %42, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %41, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  store ptr %34, ptr %32, align 8, !tbaa !268
  %i.js = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %33, ptr %i.js, align 8, !tbaa !658
  %i.jt = load i64, ptr %i.jr, align 8, !tbaa !148 ; 2 uses
  %i.ju = and i64 %i.jt, 144115188075855871
  %i.jv = inttoptr i64 %i.ju to ptr
  %i.jw = lshr i64 %i.jt, 57
  %i.jx = trunc nuw nsw i64 %i.jw to i32
  %i.jy = add nsw i32 %i.jx, -1
  %i.jz = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_20SpectrumImageTextureENS_23GPUSpectrumImageTextureENS_18SpectrumMixTextureENS_27SpectrumDirectionMixTextureENS_21SpectrumScaledTextureENS_23SpectrumConstantTextureENS_21SpectrumBilerpTextureENS_27SpectrumCheckerboardTextureEJNS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEvEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef %i.jv, i32 noundef %i.jy), !inline_history !776
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  br label %_ZZNK4pbrt15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEENKUlT_E_clIPKNS_19SpectrumDotsTextureEEEDaS3_.exit

_ZN4pbrt14InsidePolkaDotENS_6Point2IfEE.exit:     ; preds = %bb.v, %bb.u
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
end_hunk_0
