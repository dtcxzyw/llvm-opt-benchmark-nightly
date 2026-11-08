Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/surfscatter?download=true
inline.NumInlined: 8253
inline.NumDeleted: 1421
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hm, ptr noundef nonnull align 8 dereferenceable(12) %i.hl, i64 12, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ho = getelementptr inbounds nuw i8, ptr %13, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ho, ptr noundef nonnull align 4 dereferenceable(12) %i.hn, i64 12, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !640, !noalias !1989
  %i.hr = getelementptr inbounds nuw i8, ptr %13, i64 132
  store i32 %i.hq, ptr %i.hr, align 4, !tbaa !203, !alias.scope !1989
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store <2 x float> zeroinitializer, ptr %14, align 8, !tbaa !155
  %i.hs = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.hs, align 8, !tbaa !181
  call void @_ZN4pbrt9NormalMapERKNS_5ImageERKNS_21NormalBumpEvalContextEPNS_7Vector3IfEES8_(ptr noundef nonnull align 8 dereferenceable(152) %i.gr, ptr noundef nonnull align 4 dereferenceable(136) %13, ptr noundef nonnull %12, ptr noundef nonnull %14)
  %.sroa.0251.0.copyload = load <2 x float>, ptr %12, align 8 ; 4 uses
  %.sroa.2252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2252.0.copyload = load float, ptr %.sroa.2252.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0249.0.copyload = load <2 x float>, ptr %14, align 8 ; 4 uses
  %.sroa.2250.0.copyload = load float, ptr %i.hs, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.0249.0.copyload, i64 0
  %.sroa.011.0.vec.extract.i = extractelement <2 x float> %.sroa.0251.0.copyload, i64 0 ; 2 uses
  %i.ht = fmul float %.sroa.011.0.vec.extract.i, %.sroa.2250.0.copyload ; 2 uses
  %i.hu = fneg float %i.ht
  %i.hv = call noundef float @llvm.fma.f32(float %.sroa.2252.0.copyload, float %.sroa.03.0.vec.extract.i, float %i.hu)
  %i.hw = fneg float %.sroa.011.0.vec.extract.i
  %i.hx = call noundef float @llvm.fma.f32(float %i.hw, float %.sroa.2250.0.copyload, float %i.ht)
  %i.hy = fadd float %i.hv, %i.hx                 ; 3 uses
  %i.hz = fmul float %i.hy, %i.hy
  %i.ia = shufflevector <2 x float> %.sroa.0251.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ib = insertelement <2 x float> %i.ia, float %.sroa.2252.0.copyload, i64 1 ; 2 uses
  %i.ic = fmul <2 x float> %i.ib, %.sroa.0249.0.copyload ; 2 uses
  %i.id = fneg <2 x float> %i.ic
  %i.ie = shufflevector <2 x float> %.sroa.0249.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.if = insertelement <2 x float> %i.ie, float %.sroa.2250.0.copyload, i64 1
  %i.ig = call <2 x float> @llvm.fma.v2f32(<2 x float> %.sroa.0251.0.copyload, <2 x float> %i.if, <2 x float> %i.id)
  %i.ih = fneg <2 x float> %i.ib
  %i.ii = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ih, <2 x float> %.sroa.0249.0.copyload, <2 x float> %i.ic)
  %i.ij = fadd <2 x float> %i.ig, %i.ii           ; 4 uses
  %i.ik = fmul <2 x float> %i.ij, %i.ij           ; 2 uses
  %i.il = extractelement <2 x float> %i.ik, i64 1
  %i.im = fadd float %i.il, %i.hz
  %i.in = extractelement <2 x float> %i.ik, i64 0
  %i.io = fadd float %i.in, %i.im
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.io) ; 2 uses
  %i.ip = extractelement <2 x float> %i.ij, i64 0
  %i.iq = fdiv float %i.ip, %sqrt.i.i             ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0227.0.copyload = load <2 x float>, ptr %i.ir, align 8 ; 2 uses
  %.sroa.2228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2228.0.copyload = load float, ptr %.sroa.2228.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0227.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0227.0.copyload, i64 1
  %i.is = fmul float %.sroa.2228.0.copyload, %i.iq ; 2 uses
  %i.it = fneg float %i.is
  %i.iu = call noundef float @llvm.fma.f32(float %i.iq, float %.sroa.2228.0.copyload, float %i.it)
  %i.iv = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iw = insertelement <2 x float> %i.iv, float %i.hy, i64 1
  %i.ix = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fdiv <2 x float> %i.iw, %i.iy           ; 4 uses
  %i.ja = extractelement <2 x float> %i.iz, i64 1
  %i.jb = call noundef float @llvm.fma.f32(float %i.ja, float %.sroa.01.4.vec.extract.i.i, float %i.is)
  %i.jc = fadd float %i.jb, %i.iu
  %i.jd = extractelement <2 x float> %i.iz, i64 0
  %i.je = call noundef float @llvm.fma.f32(float %i.jd, float %.sroa.01.0.vec.extract.i.i, float %i.jc)
  %i.jf = fcmp olt float %i.je, 0.000000e+00      ; 2 uses
  %i.jg = fneg <2 x float> %i.iz
  %i.jh = fneg float %i.iq
  %.sroa.0.4.vec.insert.i.pn.i = select i1 %i.jf, <2 x float> %i.jg, <2 x float> %i.iz
  %.pn.i = select i1 %i.jf, float %i.jh, float %i.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ji = and i64 %i.gp, 144115188075855871
  %.not1138 = icmp eq i64 %i.ji, 0
  br i1 %.not1138, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.sroa.0177.0.copyload.pre = load <2 x float>, ptr %12, align 8
  %.sroa.2178.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2178.0.copyload.pre = load float, ptr %.sroa.2178.0..sroa_idx.phi.trans.insert, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1990)
  %i.jj = getelementptr inbounds nuw i8, ptr %15, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.jj, i8 0, i64 112, i1 false), !alias.scope !1990
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.sroa.2.0..sroa_idx.i516 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.sroa.5.0..sroa_idx.i522 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.sroa.5.0.copyload.i523 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i522, align 8, !noalias !1990
  %.sroa.0.sroa.6.0..sroa_idx.i524 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.sroa.6.0.copyload.i525 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i524, align 4, !noalias !1990
  %i.jl = fadd float %.sroa.0.sroa.5.0.copyload.i523, %.sroa.0.sroa.6.0.copyload.i525
  %i.jm = fmul float %i.jl, 5.000000e-01
  %i.jn = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i516, align 4, !noalias !1990
  %i.jo = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.jk, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !noalias !1990
  %i.jp = shufflevector <4 x float> %i.jo, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.jq = fadd <2 x float> %i.jn, %i.jp
  %i.jr = fmul <2 x float> %i.jq, splat (float 5.000000e-01)
  store <2 x float> %i.jr, ptr %15, align 8, !alias.scope !1990
  %.sroa.5.0..sroa_idx.i527 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float %i.jm, ptr %.sroa.5.0..sroa_idx.i527, align 8, !alias.scope !1990
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.jt = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.ju = load i64, ptr %i.js, align 8, !noalias !1990
  store i64 %i.ju, ptr %i.jt, align 4, !alias.scope !1990
  %i.jv = getelementptr inbounds nuw i8, ptr %15, i64 92
  store <2 x float> %i.gl, ptr %i.jv, align 4, !tbaa !155, !alias.scope !1990
  %i.jw = getelementptr inbounds nuw i8, ptr %15, i64 100
  store float %.0419, ptr %i.jw, align 4, !tbaa !201, !alias.scope !1990
  %i.jx = getelementptr inbounds nuw i8, ptr %15, i64 104
  store float %.0420, ptr %i.jx, align 8, !tbaa !202, !alias.scope !1990
  %i.jy = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jy, ptr noundef nonnull align 4 dereferenceable(12) %i.gm, i64 12, i1 false)
  %i.jz = getelementptr inbounds nuw i8, ptr %15, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jz, ptr noundef nonnull align 8 dereferenceable(12) %i.gn, i64 12, i1 false)
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.kb = getelementptr inbounds nuw i8, ptr %15, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kb, ptr noundef nonnull align 4 dereferenceable(12) %i.ka, i64 12, i1 false)
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.kd = getelementptr inbounds nuw i8, ptr %15, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kd, ptr noundef nonnull align 8 dereferenceable(12) %i.kc, i64 12, i1 false)
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.kf = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kf, ptr noundef nonnull align 4 dereferenceable(12) %i.ke, i64 12, i1 false)
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !640, !noalias !1990
  %i.ki = getelementptr inbounds nuw i8, ptr %15, i64 132
  store i32 %i.kh, ptr %i.ki, align 4, !tbaa !203, !alias.scope !1990
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store <2 x float> zeroinitializer, ptr %16, align 8, !tbaa !155
  %i.kj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.kj, align 8, !tbaa !181
  store i64 %i.gp, ptr %17, align 8, !tbaa !186
  call void @_ZN4pbrt7BumpMapINS_21BasicTextureEvaluatorEEEvT_NS_12FloatTextureERKNS_21NormalBumpEvalContextEPNS_7Vector3IfEES9_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(136) %15, ptr noundef nonnull %12, ptr noundef nonnull %16)
  %.sroa.0213.0.copyload = load <2 x float>, ptr %12, align 8 ; 4 uses
  %.sroa.2214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2214.0.copyload = load float, ptr %.sroa.2214.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0211.0.copyload = load <2 x float>, ptr %16, align 8 ; 4 uses
  %.sroa.2212.0.copyload = load float, ptr %i.kj, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i530 = extractelement <2 x float> %.sroa.0211.0.copyload, i64 0
  %.sroa.011.0.vec.extract.i531 = extractelement <2 x float> %.sroa.0213.0.copyload, i64 0 ; 2 uses
  %i.kk = fmul float %.sroa.011.0.vec.extract.i531, %.sroa.2212.0.copyload ; 2 uses
  %i.kl = fneg float %i.kk
  %i.km = call noundef float @llvm.fma.f32(float %.sroa.2214.0.copyload, float %.sroa.03.0.vec.extract.i530, float %i.kl)
  %i.kn = fneg float %.sroa.011.0.vec.extract.i531
  %i.ko = call noundef float @llvm.fma.f32(float %i.kn, float %.sroa.2212.0.copyload, float %i.kk)
  %i.kp = fadd float %i.km, %i.ko                 ; 3 uses
  %i.kq = fmul float %i.kp, %i.kp
  %i.kr = shufflevector <2 x float> %.sroa.0213.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ks = insertelement <2 x float> %i.kr, float %.sroa.2214.0.copyload, i64 1 ; 2 uses
  %i.kt = fmul <2 x float> %i.ks, %.sroa.0211.0.copyload ; 2 uses
  %i.ku = fneg <2 x float> %i.kt
  %i.kv = shufflevector <2 x float> %.sroa.0211.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kw = insertelement <2 x float> %i.kv, float %.sroa.2212.0.copyload, i64 1
  %i.kx = call <2 x float> @llvm.fma.v2f32(<2 x float> %.sroa.0213.0.copyload, <2 x float> %i.kw, <2 x float> %i.ku)
  %i.ky = fneg <2 x float> %i.ks
  %i.kz = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ky, <2 x float> %.sroa.0211.0.copyload, <2 x float> %i.kt)
  %i.la = fadd <2 x float> %i.kx, %i.kz           ; 4 uses
  %i.lb = fmul <2 x float> %i.la, %i.la           ; 2 uses
  %i.lc = extractelement <2 x float> %i.lb, i64 1
  %i.ld = fadd float %i.lc, %i.kq
  %i.le = extractelement <2 x float> %i.lb, i64 0
  %i.lf = fadd float %i.le, %i.ld
  %sqrt.i.i538 = call noundef float @llvm.sqrt.f32(float %i.lf) ; 2 uses
  %i.lg = extractelement <2 x float> %i.la, i64 0
  %i.lh = fdiv float %i.lg, %sqrt.i.i538          ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0189.0.copyload = load <2 x float>, ptr %i.li, align 8 ; 2 uses
  %.sroa.2190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2190.0.copyload = load float, ptr %.sroa.2190.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i.i546 = extractelement <2 x float> %.sroa.0189.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i.i548 = extractelement <2 x float> %.sroa.0189.0.copyload, i64 1
  %i.lj = fmul float %.sroa.2190.0.copyload, %i.lh ; 2 uses
  %i.lk = fneg float %i.lj
  %i.ll = call noundef float @llvm.fma.f32(float %i.lh, float %.sroa.2190.0.copyload, float %i.lk)
  %i.lm = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ln = insertelement <2 x float> %i.lm, float %i.kp, i64 1
  %i.lo = insertelement <2 x float> poison, float %sqrt.i.i538, i64 0
  %i.lp = shufflevector <2 x float> %i.lo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lq = fdiv <2 x float> %i.ln, %i.lp           ; 4 uses
  %i.lr = extractelement <2 x float> %i.lq, i64 1
  %i.ls = call noundef float @llvm.fma.f32(float %i.lr, float %.sroa.01.4.vec.extract.i.i548, float %i.lj)
  %i.lt = fadd float %i.ls, %i.ll
  %i.lu = extractelement <2 x float> %i.lq, i64 0
  %i.lv = call noundef float @llvm.fma.f32(float %i.lu, float %.sroa.01.0.vec.extract.i.i546, float %i.lt)
  %i.lw = fcmp olt float %i.lv, 0.000000e+00      ; 2 uses
  %i.lx = fneg <2 x float> %i.lq
  %i.ly = fneg float %i.lh
  %.sroa.0.4.vec.insert.i.pn.i551 = select i1 %i.lw, <2 x float> %i.lx, <2 x float> %i.lq
  %.pn.i552 = select i1 %i.lw, float %i.ly, float %i.lh
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h, %bb.f
  %.sroa.2178.0.copyload = phi float [ %.sroa.2252.0.copyload, %bb.f ], [ %.sroa.2214.0.copyload, %bb.h ], [ %.sroa.2178.0.copyload.pre, %._crit_edge ] ; 3 uses
  %.sroa.0177.0.copyload = phi <2 x float> [ %.sroa.0251.0.copyload, %bb.f ], [ %.sroa.0213.0.copyload, %bb.h ], [ %.sroa.0177.0.copyload.pre, %._crit_edge ] ; 4 uses
  %.sroa.0259.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.pn.i, %bb.f ], [ %.sroa.0.4.vec.insert.i.pn.i551, %bb.h ], [ %.sroa.0259.0.copyload, %._crit_edge ] ; 8 uses
  %.sroa.17.0 = phi float [ %.pn.i, %bb.f ], [ %.pn.i552, %bb.h ], [ %.sroa.17.0.copyload, %._crit_edge ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %18, ptr noundef nonnull align 4 dereferenceable(32) %i.lz, i64 32, i1 false), !tbaa.struct !204
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 188 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.me = load ptr, ptr %1, align 8, !tbaa !636
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16 ; 2 uses
  %i.mg = load float, ptr %18, align 16, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store float %i.mg, ptr %i.c, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.c, ptr %9, align 8, !tbaa !258
  %i.mh = load i64, ptr %i.mf, align 8, !tbaa !406 ; 2 uses
  %i.mi = and i64 %i.mh, 144115188075855871
  %i.mj = inttoptr i64 %i.mi to ptr
  %i.mk = lshr i64 %i.mh, 57
  %i.ml = trunc nuw nsw i64 %i.mk to i32
  %i.mm = add nsw i32 %i.ml, -1
  %i.mn = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_8SpectrumclEfEUlT_E_fNS_16ConstantSpectrumENS_22DenselySampledSpectrumENS_23PiecewiseLinearSpectrumENS_17RGBAlbedoSpectrumENS_20RGBUnboundedSpectrumENS_21RGBIlluminantSpectrumENS_17BlackbodySpectrumEEET0_OS3_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.mj, i32 noundef %i.mm) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.mo = load i64, ptr %i.mf, align 8, !tbaa !406
  %.mask.i.i = and i64 %i.mo, -144115188075855872
  %i.mp = icmp eq i64 %.mask.i.i, 144115188075855872
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 2 uses
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !155 ; 3 uses
  br i1 %i.mp, label %._ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_21BasicTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit_crit_edge, label %bb.j

._ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_21BasicTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit_crit_edge: ; preds = %bb.i
  %.phi.trans.insert1151 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %.pre1152 = load float, ptr %.phi.trans.insert1151, align 8
  %.phi.trans.insert1153 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %.pre1154 = load float, ptr %.phi.trans.insert1153, align 4
  br label %_ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_21BasicTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit

bb.j:                                             ; preds = %bb.i
  %i.mq = fcmp oeq float %.pre, 0.000000e+00
  %i.mr = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ms = load float, ptr %i.mr, align 8          ; 2 uses
  %i.mt = fcmp oeq float %i.ms, 0.000000e+00
  %or.cond.i.i.i = select i1 %i.mq, i1 %i.mt, i1 false
  %i.mu = getelementptr inbounds nuw i8, ptr %18, i64 28
  %i.mv = load float, ptr %i.mu, align 4          ; 2 uses
  %i.mw = fcmp oeq float %i.mv, 0.000000e+00
  %or.cond13.i.i.i = select i1 %or.cond.i.i.i, i1 %i.mw, i1 false
  br i1 %or.cond13.i.i.i, label %_ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_21BasicTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.phi.trans.insert, i8 0, i64 12, i1 false), !tbaa !155
  %i.mx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.my = load float, ptr %i.mx, align 16, !tbaa !155
  %i.mz = fmul float %i.my, 2.500000e-01
  store float %i.mz, ptr %i.mx, align 16, !tbaa !155
  br label %_ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_21BasicTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit

_ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_21BasicTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit: ; preds = %._ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_21BasicTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit_crit_edge, %bb.j, %.preheader.i.i
  %i.na = phi float [ %.pre1154, %._ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_21BasicTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit_crit_edge ], [ %i.mv, %bb.j ], [ 0.000000e+00, %.preheader.i.i ]
  %i.nb = phi float [ %.pre1152, %._ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_21BasicTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit_crit_edge ], [ %i.ms, %bb.j ], [ 0.000000e+00, %.preheader.i.i ]
  %i.nc = phi float [ %.pre, %._ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_21BasicTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit_crit_edge ], [ %.pre, %bb.j ], [ 0.000000e+00, %.preheader.i.i ]
  %i.nd = fcmp oeq float %i.mn, 0.000000e+00
  %spec.store.select.i = select i1 %i.nd, float 1.000000e+00, float %i.mn
  store float %spec.store.select.i, ptr %19, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.ne = ptrtoint ptr %19 to i64                 ; 2 uses
  %i.nf = or i64 %i.ne, 864691128455135232        ; 4 uses
  store i64 %i.nf, ptr %20, align 8, !tbaa !212
  %i.ng = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %.sroa.01.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0177.0.copyload, i64 0
  %foldExtExtBinop1191 = fmul <2 x float> %.sroa.0177.0.copyload, %.sroa.0177.0.copyload
  %27 = extractelement <2 x float> %foldExtExtBinop1191, i64 0
  %.sroa.01.4.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0177.0.copyload, i64 1 ; 3 uses
  %i.nh = fmul float %.sroa.01.4.vec.extract.i.i.i.i, %.sroa.01.4.vec.extract.i.i.i.i
  %i.ni = fadd float %27, %i.nh
  %28 = fmul float %.sroa.2178.0.copyload, %.sroa.2178.0.copyload
  %29 = fadd float %28, %i.ni
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %29) ; 3 uses
  %30 = fdiv float %.sroa.01.0.vec.extract.i.i.i.i, %sqrt.i.i.i ; 5 uses
  %31 = fdiv float %.sroa.01.4.vec.extract.i.i.i.i, %sqrt.i.i.i ; 4 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %30, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %31, i64 1 ; 3 uses
  %.sroa.01.0.vec.extract.i.i568 = extractelement <2 x float> %.sroa.0259.0, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.i569 = extractelement <2 x float> %.sroa.0259.0, i64 1 ; 4 uses
  %32 = fmul float %.sroa.01.4.vec.extract.i.i569, %30 ; 2 uses
  %33 = fneg float %32
  %34 = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %31, float %33)
  %i.nj = fneg float %.sroa.01.4.vec.extract.i.i569
  %i.nk = call noundef float @llvm.fma.f32(float %i.nj, float %30, float %32)
  %35 = insertelement <2 x float> poison, float %.sroa.2178.0.copyload, i64 0
  %36 = insertelement <2 x float> %35, float %34, i64 1 ; 2 uses
  %37 = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %38 = insertelement <2 x float> %37, float %i.nk, i64 1 ; 2 uses
  %39 = fdiv <2 x float> %36, %38                 ; 3 uses
  %40 = fadd <2 x float> %36, %38                 ; 2 uses
  %41 = shufflevector <2 x float> %39, <2 x float> %40, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.nl = extractelement <2 x float> %39, i64 0
  %42 = shufflevector <2 x float> %.sroa.0259.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %43 = insertelement <2 x float> %42, float %.sroa.17.0, i64 0 ; 2 uses
  %44 = fneg <2 x float> %43
  %45 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %46 = insertelement <2 x float> %45, float %31, i64 0 ; 2 uses
  %47 = fmul <2 x float> %43, %46                 ; 2 uses
  %48 = fneg <2 x float> %47
  %49 = insertelement <2 x float> %42, float %.sroa.17.0, i64 1
  %i.nm = insertelement <2 x float> %41, float %30, i64 1
  %50 = call <2 x float> @llvm.fma.v2f32(<2 x float> %49, <2 x float> %i.nm, <2 x float> %48)
  %51 = call <2 x float> @llvm.fma.v2f32(<2 x float> %44, <2 x float> %46, <2 x float> %47)
  %52 = fadd <2 x float> %50, %51                 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %i.ng, align 8, !alias.scope !1991
  %.sroa.210.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store float %i.nl, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !alias.scope !1991
  %i.nn = getelementptr inbounds nuw i8, ptr %20, i64 20 ; 3 uses
  store <2 x float> %52, ptr %i.nn, align 4, !alias.scope !1991
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 28 ; 2 uses
  %53 = extractelement <2 x float> %40, i64 1
  store float %53, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !alias.scope !1991
  %i.no = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  store <2 x float> %.sroa.0259.0, ptr %i.no, align 8, !alias.scope !1991
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 3 uses
  store float %.sroa.17.0, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !alias.scope !1991
  %i.np = fcmp oeq float %i.nc, 0.000000e+00
  %i.nq = fcmp oeq float %i.nb, 0.000000e+00
  %or.cond.i = select i1 %i.np, i1 %i.nq, i1 false
  %i.nr = fcmp oeq float %i.na, 0.000000e+00
  %or.cond13.i = select i1 %or.cond.i, i1 %i.nr, i1 false
  br i1 %or.cond13.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_21BasicTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !648
  %i.nu = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !151
  %i.nw = sext i32 %i.nt to i64                   ; 2 uses
  %i.nx = getelementptr inbounds [16 x i8], ptr %i.nv, i64 %i.nw ; 2 uses
  %i.ny = load <4 x float>, ptr %18, align 16
  %.sroa.03.4.vec.insert.i = shufflevector <4 x float> %i.ny, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.nz = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.oa = load <4 x float>, ptr %i.nz, align 8
  %.sroa.35.12.vec.insert.i = shufflevector <4 x float> %i.oa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.nx, align 16
  %.sroa.2.0..0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i, ptr %.sroa.2.0..0..sroa_idx.i.i, align 8, !tbaa !71
  %i.ob = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !152
  %i.od = getelementptr inbounds [16 x i8], ptr %i.oc, i64 %i.nw ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.of = load <4 x float>, ptr %i.oe, align 16   ; 2 uses
  %.sroa.0.4.vec.insert.i572 = shufflevector <4 x float> %i.of, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i = shufflevector <4 x float> %i.of, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i572, ptr %i.od, align 16
  %.sroa.2.0..0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.2.0..0..sroa_idx.i28.i, align 8, !tbaa !71
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_21BasicTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit
  %i.og = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.oh = load i8, ptr %i.og, align 8, !tbaa !213, !range !11, !noundef !12
  %i.oi = trunc nuw i8 %i.oh to i1
  br i1 %i.oi, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !644
  %.not449 = icmp eq i32 %i.ok, 0
  br i1 %.not449, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ol = and i64 %i.ne, 144115188075855868
  %i.om = inttoptr i64 %i.ol to ptr
  %i.on = lshr i64 %i.nf, 57
  %i.oo = trunc nuw nsw i64 %i.on to i32
  %i.op = add nsw i32 %i.oo, -1
  call void @_ZN4pbrt6detail8DispatchIRZNS_4BxDF10RegularizeEvEUlT_E_vNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.om, i32 noundef %i.op)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !638
  %i.os = icmp eq i32 %i.or, 0
  br i1 %i.os, label %bb.p, label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.ot = load i8, ptr %i.h, align 8, !tbaa !214, !range !11, !noundef !12
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %bb.q, label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.ov = getelementptr inbounds nuw i8, ptr %21, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ov, i8 0, i64 184, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %i.mc, i64 24, i1 false)
  %i.ow = getelementptr inbounds nuw i8, ptr %21, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ow, ptr noundef nonnull align 8 dereferenceable(12) %i.mb, i64 12, i1 false)
  %i.ox = getelementptr inbounds nuw i8, ptr %21, i64 128
  store <2 x float> %.sroa.0259.0, ptr %i.ox, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %21, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %21, i64 52
  %i.oz = load i64, ptr %i.md, align 8
  store i64 %i.oz, ptr %i.oy, align 4
  %i.pa = getelementptr inbounds nuw i8, ptr %21, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pa, ptr noundef nonnull align 4 dereferenceable(12) %i.ma, i64 12, i1 false)
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !642
  %i.pd = getelementptr inbounds nuw i8, ptr %21, i64 24
  store float %i.pc, ptr %i.pd, align 8, !tbaa !217
  %i.pe = getelementptr inbounds nuw i8, ptr %21, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pe, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %i.pf = getelementptr inbounds nuw i8, ptr %21, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pf, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.f, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %22, align 16, !tbaa !155
  %i.pg = getelementptr inbounds nuw i8, ptr %22, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.pg, align 16, !tbaa !155
  %i.ph = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.ph, align 16, !tbaa !155
  %i.pi = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.pi, align 16, !tbaa !155
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.pa, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.nn, align 4 ; 2 uses
  %.sroa.214.0.copyload.i.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %54 = insertelement <2 x float> %.sroa.013.0.copyload.i.i.i, float %31, i64 1
  %55 = fmul <2 x float> %.sroa.0162.0.copyload, %54
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %57 = insertelement <2 x float> %.sroa.013.0.copyload.i.i.i, float %30, i64 0
  %i.pj = fmul <2 x float> %.sroa.0162.0.copyload, %57
  %i.pk = fadd <2 x float> %56, %i.pj
  %i.pl = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.pm = shufflevector <2 x float> %i.pl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pn = insertelement <2 x float> %41, float %.sroa.214.0.copyload.i.i.i, i64 1
  %i.po = fmul <2 x float> %i.pm, %i.pn
  %i.pp = fadd <2 x float> %i.po, %i.pk
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.no, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.pq = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1193 = shufflevector <2 x float> %i.pq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1194 = fadd <2 x float> %i.pq, %shift1193
  %i.pr = extractelement <2 x float> %foldExtExtBinop1194, i64 0
  %i.ps = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.pt = fadd float %i.ps, %i.pr
  %i.pu = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.pp, float %i.pt, ptr nonnull %i.f, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.pv = extractvalue { <2 x float>, <2 x float> } %i.pu, 0
  %i.pw = extractvalue { <2 x float>, <2 x float> } %i.pu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.pv, <2 x float> %i.pw, ptr noundef nonnull align 4 dereferenceable(32) %18)
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.py = load i32, ptr %i.px, align 4, !tbaa !648
  %i.pz = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.qa = load i8, ptr %i.pz, align 4, !tbaa !219, !range !11, !noundef !12
  %i.qb = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !220
  %i.qd = sext i32 %i.py to i64                   ; 20 uses
  %i.qe = getelementptr inbounds i8, ptr %i.qc, i64 %i.qd
  store i8 %i.qa, ptr %i.qe, align 1, !tbaa !10
  %i.qf = load float, ptr %23, align 4, !tbaa !221
  %i.qg = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !222
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %i.qd
  store float %i.qf, ptr %i.qi, align 4, !tbaa !155
  %i.qj = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !223
  %i.ql = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !224
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.qd
  store float %i.qk, ptr %i.qn, align 4, !tbaa !155
  %i.qo = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !225
  %i.qq = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !226
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.qr, i64 %i.qd
  store float %i.qp, ptr %i.qs, align 4, !tbaa !155
  %i.qt = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !227
  %i.qv = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !157
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.qd
  store float %i.qu, ptr %i.qx, align 4, !tbaa !155
  %i.qy = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !228
  %i.ra = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !158
  %i.rc = getelementptr inbounds [4 x i8], ptr %i.rb, i64 %i.qd
  store float %i.qz, ptr %i.rc, align 4, !tbaa !155
  %i.rd = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.re = load float, ptr %i.rd, align 4, !tbaa !229
  %i.rf = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !159
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.rg, i64 %i.qd
  store float %i.re, ptr %i.rh, align 4, !tbaa !155
  %i.ri = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !227
  %i.rk = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !157
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %i.qd
  store float %i.rj, ptr %i.rm, align 4, !tbaa !155
  %i.rn = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !228
  %i.rp = getelementptr inbounds nuw i8, ptr %i.h, i64 344
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !158
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %i.qd
  store float %i.ro, ptr %i.rr, align 4, !tbaa !155
  %i.rs = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !229
  %i.ru = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !159
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.qd
  store float %i.rt, ptr %i.rw, align 4, !tbaa !155
  %i.rx = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !230
  %i.rz = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !163
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.qd
  store float %i.ry, ptr %i.sb, align 4, !tbaa !155
  %i.sc = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !231
  %i.se = getelementptr inbounds nuw i8, ptr %i.h, i64 376
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !164
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.qd
  store float %i.sd, ptr %i.sg, align 4, !tbaa !155
  %i.sh = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.si = load float, ptr %i.sh, align 4, !tbaa !232
  %i.sj = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !233
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %i.qd
  store float %i.si, ptr %i.sl, align 4, !tbaa !155
  %i.sm = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !234
  %i.so = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !160
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.qd
  store float %i.sn, ptr %i.sq, align 4, !tbaa !155
  %i.sr = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !235
  %i.st = getelementptr inbounds nuw i8, ptr %i.h, i64 408
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !161
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.qd
  store float %i.ss, ptr %i.sv, align 4, !tbaa !155
  %i.sw = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !181
  %i.sy = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !162
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.qd
  store float %i.sx, ptr %i.ta, align 4, !tbaa !155
  %i.tb = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !234
  %i.td = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !160
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.te, i64 %i.qd
  store float %i.tc, ptr %i.tf, align 4, !tbaa !155
  %i.tg = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.th = load float, ptr %i.tg, align 4, !tbaa !235
  %i.ti = getelementptr inbounds nuw i8, ptr %i.h, i64 440
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !161
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.qd
  store float %i.th, ptr %i.tk, align 4, !tbaa !155
  %i.tl = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !181
  %i.tn = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !162
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.qd
  store float %i.tm, ptr %i.tp, align 4, !tbaa !155
  %i.tq = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.tr = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !153
  %i.tt = getelementptr inbounds [16 x i8], ptr %i.ts, i64 %i.qd ; 2 uses
  %i.tu = load <4 x float>, ptr %i.tq, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.tu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.tu, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.tt, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %.sroa.021.0.copyload.i.i.i586.pre = load <2 x float>, ptr %i.ng, align 8, !noalias !1992
  %.sroa.013.0.copyload.i.i.i593.pre = load <2 x float>, ptr %i.nn, align 4, !noalias !1992
  %58 = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !1992
  %59 = shufflevector <4 x float> %58, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %.sroa.05.0.copyload.i.i.i598.pre = load <2 x float>, ptr %i.no, align 8, !noalias !1992
  %.sroa.26.0.copyload.i.i.i600.pre = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1992
  %.pre1162.pre = load i64, ptr %20, align 8, !tbaa !212
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.q, %bb.p, %bb.o
  %.pre1162 = phi i64 [ %.pre1162.pre, %bb.q ], [ %i.nf, %bb.p ], [ %i.nf, %bb.o ] ; 5 uses
  %.sroa.26.0.copyload.i.i.i600 = phi float [ %.sroa.26.0.copyload.i.i.i600.pre, %bb.q ], [ %.sroa.17.0, %bb.p ], [ %.sroa.17.0, %bb.o ] ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = phi <2 x float> [ %.sroa.013.0.copyload.i.i.i593.pre, %bb.q ], [ %52, %bb.p ], [ %52, %bb.o ] ; 3 uses
  %.sroa.021.0.copyload.i.i.i586 = phi <2 x float> [ %.sroa.021.0.copyload.i.i.i586.pre, %bb.q ], [ %.sroa.0.4.vec.insert.i.i.i, %bb.p ], [ %.sroa.0.4.vec.insert.i.i.i, %bb.o ] ; 3 uses
  %i.tv = phi <2 x float> [ %.sroa.05.0.copyload.i.i.i598.pre, %bb.q ], [ %.sroa.0259.0, %bb.p ], [ %.sroa.0259.0, %bb.o ] ; 2 uses
  %i.tw = phi <2 x float> [ %59, %bb.q ], [ %41, %bb.p ], [ %41, %bb.o ] ; 3 uses
  %.sroa.01010.0.copyload = load <2 x float>, ptr %i.ma, align 4 ; 5 uses
  %.sroa.121017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121017.0.copyload = load float, ptr %.sroa.121017.0..sroa_idx, align 4 ; 4 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 2 uses
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !648
  %i.ua = load ptr, ptr %i.tx, align 8, !tbaa !236, !noalias !1993
  %i.ub = sext i32 %i.tz to i64                   ; 2 uses
  %i.uc = getelementptr inbounds [16 x i8], ptr %i.ua, i64 %i.ub ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ud = load <2 x float>, ptr %i.uc, align 16, !noalias !1993
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !71, !noalias !1993
  %i.ue = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !237, !noalias !1993
  %i.ug = getelementptr inbounds [16 x i8], ptr %i.uf, i64 %i.ub
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.ug, align 16, !noalias !1993 ; 2 uses
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %i.uh = shufflevector <2 x float> %.sroa.01010.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ui = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.uj = fmul <2 x float> %i.uh, %i.ui
  %i.uk = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.ul = fmul <2 x float> %.sroa.01010.0.copyload, %i.uk
  %i.um = fadd <2 x float> %i.uj, %i.ul
  %i.un = insertelement <2 x float> poison, float %.sroa.121017.0.copyload, i64 0
  %i.uo = shufflevector <2 x float> %i.un, <2 x float> poison, <2 x i32> zeroinitializer
  %i.up = fmul <2 x float> %i.uo, %i.tw
  %i.uq = fadd <2 x float> %i.up, %i.um           ; 2 uses
  %i.ur = fmul <2 x float> %.sroa.01010.0.copyload, %i.tv ; 2 uses
  %shift1196 = shufflevector <2 x float> %i.ur, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1197 = fadd <2 x float> %i.ur, %shift1196
  %i.us = extractelement <2 x float> %foldExtExtBinop1197, i64 0
  %i.ut = fmul float %.sroa.121017.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.uu = fadd float %i.ut, %i.us                 ; 4 uses
  %i.uv = fcmp oeq float %i.uu, 0.000000e+00
  br i1 %i.uv, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.uw = and i64 %.pre1162, 144115188075855871
  %i.ux = inttoptr i64 %i.uw to ptr
  %i.uy = call float @llvm.fabs.f32(float %i.uu)  ; 4 uses
  %i.uz = load float, ptr %i.ux, align 4, !tbaa !652, !noalias !1994 ; 4 uses
  %i.va = fcmp ogt float %i.uy, 1.000000e+00
  %..i.i.i.i = select i1 %i.va, float 1.000000e+00, float %i.uy ; 5 uses
  %i.vb = fmul float %..i.i.i.i, %..i.i.i.i
  %i.vc = fsub float 1.000000e+00, %i.vb
  %i.vd = fmul float %i.uz, %i.uz
  %i.ve = fdiv float %i.vc, %i.vd                 ; 2 uses
  %i.vf = fcmp ult float %i.ve, 1.000000e+00
  br i1 %i.vf, label %_ZN4pbrt12FrDielectricEff.exit.i.i, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread

_ZN4pbrt12FrDielectricEff.exit.i.i:               ; preds = %bb.r
  %i.vg = fsub float 1.000000e+00, %i.ve          ; 2 uses
  %i.vh = fcmp ogt float %i.vg, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.vh, float %i.vg, float 0.000000e+00
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i.i) ; 3 uses
  %i.vi = fmul float %..i.i.i.i, %i.uz            ; 2 uses
  %i.vj = fsub float %i.vi, %sqrt.i.i.i.i
  %i.vk = fadd float %i.vi, %sqrt.i.i.i.i
  %i.vl = fdiv float %i.vj, %i.vk                 ; 2 uses
  %i.vm = fmul float %i.uz, %sqrt.i.i.i.i         ; 2 uses
  %i.vn = fsub float %..i.i.i.i, %i.vm
  %i.vo = fadd float %..i.i.i.i, %i.vm
  %i.vp = fdiv float %i.vn, %i.vo                 ; 2 uses
  %i.vq = fmul float %i.vl, %i.vl
  %i.vr = fmul float %i.vp, %i.vp
  %i.vs = fadd float %i.vq, %i.vr
  %i.vt = fmul float %i.vs, 5.000000e-01          ; 7 uses
  %i.vu = fsub float 1.000000e+00, %i.vt          ; 3 uses
  %i.vv = fcmp olt float %i.vt, 1.000000e+00
  br i1 %i.vv, label %bb.s, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i

bb.s:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.i.i
  %i.vw = fmul float %i.vu, %i.vu
  %i.vx = fmul float %i.vt, %i.vw
  %i.vy = fmul nnan float %i.vt, %i.vt
  %i.vz = fsub float 1.000000e+00, %i.vy
  %i.wa = fdiv float %i.vx, %i.vz
  %i.wb = fadd float %i.vt, %i.wa                 ; 2 uses
  %i.wc = fsub float 1.000000e+00, %i.wb
  br label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i

_ZN4pbrt12FrDielectricEff.exit.thread.i.i:        ; preds = %bb.s, %_ZN4pbrt12FrDielectricEff.exit.i.i
  %.055.i.i = phi float [ %i.wc, %bb.s ], [ %i.vu, %_ZN4pbrt12FrDielectricEff.exit.i.i ] ; 2 uses
  %.0.i.i = phi float [ %i.wb, %bb.s ], [ %i.vt, %_ZN4pbrt12FrDielectricEff.exit.i.i ] ; 2 uses
  %i.wd = fcmp oeq float %.0.i.i, 0.000000e+00
  %i.we = fcmp oeq float %.055.i.i, 0.000000e+00
  %or.cond.i.i = and i1 %i.we, %i.wd
  br i1 %or.cond.i.i, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread

_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread: ; preds = %bb.r, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i
  %.0.i.i1126 = phi float [ %.0.i.i, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i ], [ 1.000000e+00, %bb.r ] ; 3 uses
  %.055.i.i1125 = phi float [ %.055.i.i, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i ], [ 0.000000e+00, %bb.r ] ; 3 uses
  %i.wf = fadd float %.0.i.i1126, %.055.i.i1125   ; 2 uses
  %i.wg = fdiv float %.0.i.i1126, %i.wf           ; 2 uses
  %i.wh = fcmp olt float %.sroa.01.0.vec.extract.i.i584, %i.wg
  %i.wi = fneg <2 x float> %i.uq                  ; 3 uses
  br i1 %i.wh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread
  %i.wj = fdiv float %.0.i.i1126, %i.uy
  %.sroa.076.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.wj, i64 0
  %.sroa.076.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.076.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i

bb.u:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread
  %i.wk = fneg float %i.uu
  %i.wl = fdiv float %.055.i.i1125, %i.uy
  %.sroa.063.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.wl, i64 0
  %.sroa.063.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.063.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wm = fdiv float %.055.i.i1125, %i.wf
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.u, %bb.t
  %.sroa.17.0.ph.i = phi float [ %i.wk, %bb.u ], [ %i.uu, %bb.t ] ; 2 uses
  %.sroa.22.0.ph.i = phi float [ %i.wm, %bb.u ], [ %i.wg, %bb.t ] ; 3 uses
  %.sroa.9.0.ph.i = phi <2 x float> [ %.sroa.063.4.vec.insert.i.i, %bb.u ], [ %.sroa.076.4.vec.insert.i.i, %bb.t ] ; 2 uses
  %i.wn = fcmp une <2 x float> %.sroa.9.0.ph.i, zeroinitializer
  %i.wo = bitcast <2 x i1> %i.wn to i2
  %i.wp = icmp eq i2 %i.wo, 0
  %i.wq = fcmp oeq float %.sroa.22.0.ph.i, 0.000000e+00
  %or.cond.i603 = or i1 %i.wq, %i.wp
  br i1 %or.cond.i603, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.wr = shufflevector <2 x float> %.sroa.9.0.ph.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %foldExtExtBinop1201 = fmul <2 x float> %i.tw, %i.wi
  %shift1203 = shufflevector <2 x float> %foldExtExtBinop1201, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %60 = fmul <2 x float> %i.uq, %i.tw
  %foldExtExtBinop1204 = fsub <2 x float> %shift1203, %60
  %61 = extractelement <2 x float> %foldExtExtBinop1204, i64 0
  %i.ws = insertelement <2 x float> poison, float %.sroa.17.0.ph.i, i64 0
  %i.wt = shufflevector <2 x float> %i.ws, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wu = fmul <2 x float> %i.tv, %i.wt
  %i.wv = fmul float %.sroa.26.0.copyload.i.i.i600, %.sroa.17.0.ph.i
  %i.ww = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wx = fmul <2 x float> %.sroa.021.0.copyload.i.i.i586, %i.ww
  %i.wy = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wz = fmul <2 x float> %.sroa.013.0.copyload.i.i.i593, %i.wy
  %i.xa = fadd <2 x float> %i.wx, %i.wz
  %i.xb = fadd <2 x float> %i.wu, %i.xa           ; 3 uses
  %i.xc = fadd float %i.wv, %61                   ; 6 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.xe = load <4 x float>, ptr %i.xd, align 8
  %i.xf = fmul float %.sroa.17.0, %i.xc           ; 2 uses
  %i.xg = extractelement <2 x float> %i.xb, i64 1 ; 3 uses
  %i.xh = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.xg, float %i.xf)
  %i.xi = fneg float %i.xf
  %i.xj = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.xc, float %i.xi)
  %i.xk = fadd float %i.xh, %i.xj
  %i.xl = extractelement <2 x float> %i.xb, i64 0 ; 3 uses
  %i.xm = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.xl, float %i.xk)
  %i.xn = call noundef float @llvm.fabs.f32(float %i.xm)
  %i.xo = fmul <4 x float> %i.wr, %i.xe
  %i.xp = insertelement <4 x float> poison, float %i.xn, i64 0
  %i.xq = shufflevector <4 x float> %i.xp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xr = fmul <4 x float> %i.xq, %i.xo
  %i.xs = insertelement <4 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.xt = shufflevector <4 x float> %i.xs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xu = fdiv <4 x float> %i.xr, %i.xt           ; 7 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0911.0.copyload = load <4 x float>, ptr %i.xv, align 8, !tbaa !71 ; 6 uses
  %i.xw = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.xx = insertelement <2 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.xy = shufflevector <2 x float> %i.xx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xz = fdiv <2 x float> %i.xw, %i.xy
  %i.ya = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.yb = fdiv <2 x float> %i.ya, %i.xy
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.yd = load float, ptr %i.yc, align 8, !tbaa !646 ; 5 uses
  %i.ye = extractelement <4 x float> %i.xu, i64 0
  %i.yf = fmul float %i.yd, %i.ye
  %i.yg = extractelement <4 x float> %i.xu, i64 1
  %i.yh = fmul float %i.yd, %i.yg
  %i.yi = extractelement <4 x float> %i.xu, i64 2
  %i.yj = fmul float %i.yd, %i.yi
  %i.yk = extractelement <4 x float> %i.xu, i64 3
  %i.yl = fmul float %i.yd, %i.yk
  %shift1206.a = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1207.a = fadd <4 x float> %.sroa.0911.0.copyload, %shift1206.a
  %shift1209 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1210 = fadd <4 x float> %shift1209, %foldExtExtBinop1207.a
  %shift1212 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1213 = fadd <4 x float> %shift1212, %foldExtExtBinop1210
  %i.ym = extractelement <4 x float> %foldExtExtBinop1213, i64 0
  %i.yn = fmul float %i.ym, 2.500000e-01          ; 4 uses
  %i.yo = fdiv float %i.yf, %i.yn                 ; 2 uses
  %i.yp = fdiv float %i.yh, %i.yn                 ; 2 uses
  %i.yq = fdiv float %i.yj, %i.yn                 ; 2 uses
  %i.yr = fdiv float %i.yl, %i.yn                 ; 2 uses
  %i.ys = fcmp olt float %i.yo, %i.yp
  %.sroa.speculated.i = select i1 %i.ys, float %i.yp, float %i.yo ; 2 uses
  %i.yt = fcmp olt float %.sroa.speculated.i, %i.yq
  %.sroa.speculated.1.i = select i1 %i.yt, float %i.yq, float %.sroa.speculated.i ; 2 uses
  %i.yu = fcmp olt float %.sroa.speculated.1.i, %i.yr
  %.sroa.speculated.2.i = select i1 %i.yu, float %i.yr, float %.sroa.speculated.1.i ; 2 uses
  %i.yv = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.yv, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.yw = load i32, ptr %i.oq, align 8, !tbaa !638
  %i.yx = icmp sgt i32 %i.yw, 0
  br i1 %i.yx, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.yy = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.yz = fcmp ogt float %i.yy, 0.000000e+00
  %.sroa.speculated = select i1 %i.yz, float %i.yy, float 0.000000e+00 ; 2 uses
  %i.za = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.za, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.zb = fsub float 1.000000e+00, %.sroa.speculated
  %i.zc = insertelement <4 x float> poison, float %i.zb, i64 0
  %i.zd = shufflevector <4 x float> %i.zc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ze = fdiv <4 x float> %i.xu, %i.zd
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w, %bb.v
  %.sroa.0929.0 = phi <4 x float> [ %i.xu, %bb.v ], [ %i.ze, %bb.y ], [ %i.xu, %bb.w ], [ zeroinitializer, %bb.x ]
  %.sroa.0929.0.fr = freeze <4 x float> %.sroa.0929.0 ; 3 uses
  %i.zf = fcmp une <4 x float> %.sroa.0929.0.fr, zeroinitializer
  %i.zg = bitcast <4 x i1> %i.zf to i4
  %.not1215 = icmp eq i4 %i.zg, 0
  br i1 %.not1215, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705: ; preds = %bb.z
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mb, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !642
  %i.zj = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mc, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %i.xb, float %i.xc) ; 2 uses
  %.fca.0.extract.i709 = extractvalue { <2 x float>, float } %i.zj, 0 ; 2 uses
  %.fca.1.extract.i710 = extractvalue { <2 x float>, float } %i.zj, 1
  %i.zk = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.zl = load i8, ptr %i.zk, align 2, !tbaa !245, !range !11, !noundef !12
  %i.zm = trunc nuw i8 %i.zl to i1
  %.sroa.094.0.copyload.pre = load <2 x float>, ptr %i.mb, align 8 ; 2 uses
  %.sroa.295.0.copyload.pre = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 3 uses
  %.sroa.01.0.vec.extract.i712 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 0 ; 2 uses
  %.sroa.01.4.vec.extract.i714 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 1 ; 2 uses
  br i1 %i.zm, label %bb.aa, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge

bb.aa:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705
  %i.zn = fmul float %i.xc, %.sroa.295.0.copyload.pre ; 2 uses
  %i.zo = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i714, float %i.xg, float %i.zn)
  %i.zp = fneg float %i.zn
  %i.zq = call noundef float @llvm.fma.f32(float %.sroa.295.0.copyload.pre, float %i.xc, float %i.zp)
  %i.zr = fadd float %i.zo, %i.zq
  %i.zs = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i712, float %i.xl, float %i.zr)
  %i.zt = fcmp ogt float %i.zs, 0.000000e+00
  %.v = select i1 %i.zt, i64 248, i64 240
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.zv = load i64, ptr %i.zu, align 8, !tbaa !177
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705, %bb.aa
  %.sroa.17876.0 = phi i64 [ %i.zv, %bb.aa ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705 ]
  %i.zw = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.zx = load i32, ptr %i.zw, align 8, !tbaa !644
  %i.zy = icmp ne i32 %i.zx, 0
  %.sroa.0863.sroa.0.0.copyload = load float, ptr %i.mc, align 8
  %.sroa.0863.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0863.sroa.2.0.copyload = load float, ptr %.sroa.0863.sroa.2.0..sroa_idx, align 4
  %.sroa.0863.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0863.sroa.3.0.copyload = load float, ptr %.sroa.0863.sroa.3.0..sroa_idx, align 8
  %.sroa.0863.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0863.sroa.4.0.copyload = load float, ptr %.sroa.0863.sroa.4.0..sroa_idx, align 4
  %.sroa.0863.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0863.sroa.5.0.copyload = load float, ptr %.sroa.0863.sroa.5.0..sroa_idx, align 8
  %.sroa.0863.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0863.sroa.6.0.copyload = load float, ptr %.sroa.0863.sroa.6.0..sroa_idx, align 4
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !621 ; 31 uses
  %i.aab = load i32, ptr %i.oq, align 8, !tbaa !638
  %i.aac = add nsw i32 %i.aab, 1
  %i.aad = load i32, ptr %i.ty, align 4, !tbaa !648
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aaa, i64 400
  %i.aaf = atomicrmw add ptr %i.aae, i32 1 monotonic, align 4
  %.sroa.0871.0.vec.extract = extractelement <2 x float> %.fca.0.extract.i709, i64 0
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaa, i64 24
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !222
  %i.aai = sext i32 %i.aaf to i64                 ; 30 uses
  %i.aaj = getelementptr inbounds [4 x i8], ptr %i.aah, i64 %i.aai
  store float %.sroa.0871.0.vec.extract, ptr %i.aaj, align 4, !tbaa !155
  %.sroa.0871.4.vec.extract = extractelement <2 x float> %.fca.0.extract.i709, i64 1
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaa, i64 32
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !224
  %i.aam = getelementptr inbounds [4 x i8], ptr %i.aal, i64 %i.aai
  store float %.sroa.0871.4.vec.extract, ptr %i.aam, align 4, !tbaa !155
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaa, i64 40
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !226
  %i.aap = getelementptr inbounds [4 x i8], ptr %i.aao, i64 %i.aai
  store float %.fca.1.extract.i710, ptr %i.aap, align 4, !tbaa !155
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aaa, i64 56
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !160
  %i.aas = getelementptr inbounds [4 x i8], ptr %i.aar, i64 %i.aai
  store float %i.xl, ptr %i.aas, align 4, !tbaa !155
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaa, i64 64
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !161
  %i.aav = getelementptr inbounds [4 x i8], ptr %i.aau, i64 %i.aai
  store float %i.xg, ptr %i.aav, align 4, !tbaa !155
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aaa, i64 72
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !162
  %i.aay = getelementptr inbounds [4 x i8], ptr %i.aax, i64 %i.aai
  store float %i.xc, ptr %i.aay, align 4, !tbaa !155
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaa, i64 80
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !247
  %i.abb = getelementptr inbounds [4 x i8], ptr %i.aba, i64 %i.aai
  store float %i.zi, ptr %i.abb, align 4, !tbaa !155
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaa, i64 88
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !248
  %i.abe = getelementptr inbounds [8 x i8], ptr %i.abd, i64 %i.aai
  store i64 %.sroa.17876.0, ptr %i.abe, align 8, !tbaa !177
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aaa, i64 96
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !251
  %i.abh = getelementptr inbounds [4 x i8], ptr %i.abg, i64 %i.aai
  store i32 %i.aac, ptr %i.abh, align 4, !tbaa !166
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aaa, i64 104
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !252
  %i.abk = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.aai
  store i32 %i.aad, ptr %i.abk, align 4, !tbaa !166
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aaa, i64 248
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !154
  %i.abn = getelementptr inbounds [4 x i8], ptr %i.abm, i64 %i.aai
  store float %.sroa.0863.sroa.0.0.copyload, ptr %i.abn, align 4, !tbaa !155
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aaa, i64 256
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !156
  %i.abq = getelementptr inbounds [4 x i8], ptr %i.abp, i64 %i.aai
  store float %.sroa.0863.sroa.2.0.copyload, ptr %i.abq, align 4, !tbaa !155
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aaa, i64 272
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !154
  %i.abt = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.aai
  store float %.sroa.0863.sroa.3.0.copyload, ptr %i.abt, align 4, !tbaa !155
  %i.abu = getelementptr inbounds nuw i8, ptr %i.aaa, i64 280
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !156
  %i.abw = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %i.aai
  store float %.sroa.0863.sroa.4.0.copyload, ptr %i.abw, align 4, !tbaa !155
  %i.abx = getelementptr inbounds nuw i8, ptr %i.aaa, i64 296
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !154
  %i.abz = getelementptr inbounds [4 x i8], ptr %i.aby, i64 %i.aai
end_hunk_0
begin_hunk_1_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hm, ptr noundef nonnull align 8 dereferenceable(12) %i.hl, i64 12, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ho = getelementptr inbounds nuw i8, ptr %13, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ho, ptr noundef nonnull align 4 dereferenceable(12) %i.hn, i64 12, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !640, !noalias !2036
  %i.hr = getelementptr inbounds nuw i8, ptr %13, i64 132
  store i32 %i.hq, ptr %i.hr, align 4, !tbaa !203, !alias.scope !2036
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store <2 x float> zeroinitializer, ptr %14, align 8, !tbaa !155
  %i.hs = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.hs, align 8, !tbaa !181
  call void @_ZN4pbrt9NormalMapERKNS_5ImageERKNS_21NormalBumpEvalContextEPNS_7Vector3IfEES8_(ptr noundef nonnull align 8 dereferenceable(152) %i.gr, ptr noundef nonnull align 4 dereferenceable(136) %13, ptr noundef nonnull %12, ptr noundef nonnull %14)
  %.sroa.0251.0.copyload = load <2 x float>, ptr %12, align 8 ; 4 uses
  %.sroa.2252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2252.0.copyload = load float, ptr %.sroa.2252.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0249.0.copyload = load <2 x float>, ptr %14, align 8 ; 4 uses
  %.sroa.2250.0.copyload = load float, ptr %i.hs, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.0249.0.copyload, i64 0
  %.sroa.011.0.vec.extract.i = extractelement <2 x float> %.sroa.0251.0.copyload, i64 0 ; 2 uses
  %i.ht = fmul float %.sroa.011.0.vec.extract.i, %.sroa.2250.0.copyload ; 2 uses
  %i.hu = fneg float %i.ht
  %i.hv = call noundef float @llvm.fma.f32(float %.sroa.2252.0.copyload, float %.sroa.03.0.vec.extract.i, float %i.hu)
  %i.hw = fneg float %.sroa.011.0.vec.extract.i
  %i.hx = call noundef float @llvm.fma.f32(float %i.hw, float %.sroa.2250.0.copyload, float %i.ht)
  %i.hy = fadd float %i.hv, %i.hx                 ; 3 uses
  %i.hz = fmul float %i.hy, %i.hy
  %i.ia = shufflevector <2 x float> %.sroa.0251.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ib = insertelement <2 x float> %i.ia, float %.sroa.2252.0.copyload, i64 1 ; 2 uses
  %i.ic = fmul <2 x float> %i.ib, %.sroa.0249.0.copyload ; 2 uses
  %i.id = fneg <2 x float> %i.ic
  %i.ie = shufflevector <2 x float> %.sroa.0249.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.if = insertelement <2 x float> %i.ie, float %.sroa.2250.0.copyload, i64 1
  %i.ig = call <2 x float> @llvm.fma.v2f32(<2 x float> %.sroa.0251.0.copyload, <2 x float> %i.if, <2 x float> %i.id)
  %i.ih = fneg <2 x float> %i.ib
  %i.ii = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ih, <2 x float> %.sroa.0249.0.copyload, <2 x float> %i.ic)
  %i.ij = fadd <2 x float> %i.ig, %i.ii           ; 4 uses
  %i.ik = fmul <2 x float> %i.ij, %i.ij           ; 2 uses
  %i.il = extractelement <2 x float> %i.ik, i64 1
  %i.im = fadd float %i.il, %i.hz
  %i.in = extractelement <2 x float> %i.ik, i64 0
  %i.io = fadd float %i.in, %i.im
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.io) ; 2 uses
  %i.ip = extractelement <2 x float> %i.ij, i64 0
  %i.iq = fdiv float %i.ip, %sqrt.i.i             ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0227.0.copyload = load <2 x float>, ptr %i.ir, align 8 ; 2 uses
  %.sroa.2228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2228.0.copyload = load float, ptr %.sroa.2228.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0227.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0227.0.copyload, i64 1
  %i.is = fmul float %.sroa.2228.0.copyload, %i.iq ; 2 uses
  %i.it = fneg float %i.is
  %i.iu = call noundef float @llvm.fma.f32(float %i.iq, float %.sroa.2228.0.copyload, float %i.it)
  %i.iv = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iw = insertelement <2 x float> %i.iv, float %i.hy, i64 1
  %i.ix = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fdiv <2 x float> %i.iw, %i.iy           ; 4 uses
  %i.ja = extractelement <2 x float> %i.iz, i64 1
  %i.jb = call noundef float @llvm.fma.f32(float %i.ja, float %.sroa.01.4.vec.extract.i.i, float %i.is)
  %i.jc = fadd float %i.jb, %i.iu
  %i.jd = extractelement <2 x float> %i.iz, i64 0
  %i.je = call noundef float @llvm.fma.f32(float %i.jd, float %.sroa.01.0.vec.extract.i.i, float %i.jc)
  %i.jf = fcmp olt float %i.je, 0.000000e+00      ; 2 uses
  %i.jg = fneg <2 x float> %i.iz
  %i.jh = fneg float %i.iq
  %.sroa.0.4.vec.insert.i.pn.i = select i1 %i.jf, <2 x float> %i.jg, <2 x float> %i.iz
  %.pn.i = select i1 %i.jf, float %i.jh, float %i.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ji = and i64 %i.gp, 144115188075855871
  %.not1138 = icmp eq i64 %i.ji, 0
  br i1 %.not1138, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.sroa.0177.0.copyload.pre = load <2 x float>, ptr %12, align 8
  %.sroa.2178.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2178.0.copyload.pre = load float, ptr %.sroa.2178.0..sroa_idx.phi.trans.insert, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  %i.jj = getelementptr inbounds nuw i8, ptr %15, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.jj, i8 0, i64 112, i1 false), !alias.scope !2037
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.sroa.2.0..sroa_idx.i516 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.sroa.5.0..sroa_idx.i522 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.sroa.5.0.copyload.i523 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i522, align 8, !noalias !2037
  %.sroa.0.sroa.6.0..sroa_idx.i524 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.sroa.6.0.copyload.i525 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i524, align 4, !noalias !2037
  %i.jl = fadd float %.sroa.0.sroa.5.0.copyload.i523, %.sroa.0.sroa.6.0.copyload.i525
  %i.jm = fmul float %i.jl, 5.000000e-01
  %i.jn = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i516, align 4, !noalias !2037
  %i.jo = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.jk, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !noalias !2037
  %i.jp = shufflevector <4 x float> %i.jo, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.jq = fadd <2 x float> %i.jn, %i.jp
  %i.jr = fmul <2 x float> %i.jq, splat (float 5.000000e-01)
  store <2 x float> %i.jr, ptr %15, align 8, !alias.scope !2037
  %.sroa.5.0..sroa_idx.i527 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float %i.jm, ptr %.sroa.5.0..sroa_idx.i527, align 8, !alias.scope !2037
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.jt = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.ju = load i64, ptr %i.js, align 8, !noalias !2037
  store i64 %i.ju, ptr %i.jt, align 4, !alias.scope !2037
  %i.jv = getelementptr inbounds nuw i8, ptr %15, i64 92
  store <2 x float> %i.gl, ptr %i.jv, align 4, !tbaa !155, !alias.scope !2037
  %i.jw = getelementptr inbounds nuw i8, ptr %15, i64 100
  store float %.0419, ptr %i.jw, align 4, !tbaa !201, !alias.scope !2037
  %i.jx = getelementptr inbounds nuw i8, ptr %15, i64 104
  store float %.0420, ptr %i.jx, align 8, !tbaa !202, !alias.scope !2037
  %i.jy = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jy, ptr noundef nonnull align 4 dereferenceable(12) %i.gm, i64 12, i1 false)
  %i.jz = getelementptr inbounds nuw i8, ptr %15, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jz, ptr noundef nonnull align 8 dereferenceable(12) %i.gn, i64 12, i1 false)
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.kb = getelementptr inbounds nuw i8, ptr %15, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kb, ptr noundef nonnull align 4 dereferenceable(12) %i.ka, i64 12, i1 false)
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.kd = getelementptr inbounds nuw i8, ptr %15, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kd, ptr noundef nonnull align 8 dereferenceable(12) %i.kc, i64 12, i1 false)
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.kf = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kf, ptr noundef nonnull align 4 dereferenceable(12) %i.ke, i64 12, i1 false)
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !640, !noalias !2037
  %i.ki = getelementptr inbounds nuw i8, ptr %15, i64 132
  store i32 %i.kh, ptr %i.ki, align 4, !tbaa !203, !alias.scope !2037
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store <2 x float> zeroinitializer, ptr %16, align 8, !tbaa !155
  %i.kj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.kj, align 8, !tbaa !181
  store i64 %i.gp, ptr %17, align 8, !tbaa !186
  call void @_ZN4pbrt7BumpMapINS_25UniversalTextureEvaluatorEEEvT_NS_12FloatTextureERKNS_21NormalBumpEvalContextEPNS_7Vector3IfEES9_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(136) %15, ptr noundef nonnull %12, ptr noundef nonnull %16)
  %.sroa.0213.0.copyload = load <2 x float>, ptr %12, align 8 ; 4 uses
  %.sroa.2214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2214.0.copyload = load float, ptr %.sroa.2214.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0211.0.copyload = load <2 x float>, ptr %16, align 8 ; 4 uses
  %.sroa.2212.0.copyload = load float, ptr %i.kj, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i530 = extractelement <2 x float> %.sroa.0211.0.copyload, i64 0
  %.sroa.011.0.vec.extract.i531 = extractelement <2 x float> %.sroa.0213.0.copyload, i64 0 ; 2 uses
  %i.kk = fmul float %.sroa.011.0.vec.extract.i531, %.sroa.2212.0.copyload ; 2 uses
  %i.kl = fneg float %i.kk
  %i.km = call noundef float @llvm.fma.f32(float %.sroa.2214.0.copyload, float %.sroa.03.0.vec.extract.i530, float %i.kl)
  %i.kn = fneg float %.sroa.011.0.vec.extract.i531
  %i.ko = call noundef float @llvm.fma.f32(float %i.kn, float %.sroa.2212.0.copyload, float %i.kk)
  %i.kp = fadd float %i.km, %i.ko                 ; 3 uses
  %i.kq = fmul float %i.kp, %i.kp
  %i.kr = shufflevector <2 x float> %.sroa.0213.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ks = insertelement <2 x float> %i.kr, float %.sroa.2214.0.copyload, i64 1 ; 2 uses
  %i.kt = fmul <2 x float> %i.ks, %.sroa.0211.0.copyload ; 2 uses
  %i.ku = fneg <2 x float> %i.kt
  %i.kv = shufflevector <2 x float> %.sroa.0211.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kw = insertelement <2 x float> %i.kv, float %.sroa.2212.0.copyload, i64 1
  %i.kx = call <2 x float> @llvm.fma.v2f32(<2 x float> %.sroa.0213.0.copyload, <2 x float> %i.kw, <2 x float> %i.ku)
  %i.ky = fneg <2 x float> %i.ks
  %i.kz = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ky, <2 x float> %.sroa.0211.0.copyload, <2 x float> %i.kt)
  %i.la = fadd <2 x float> %i.kx, %i.kz           ; 4 uses
  %i.lb = fmul <2 x float> %i.la, %i.la           ; 2 uses
  %i.lc = extractelement <2 x float> %i.lb, i64 1
  %i.ld = fadd float %i.lc, %i.kq
  %i.le = extractelement <2 x float> %i.lb, i64 0
  %i.lf = fadd float %i.le, %i.ld
  %sqrt.i.i538 = call noundef float @llvm.sqrt.f32(float %i.lf) ; 2 uses
  %i.lg = extractelement <2 x float> %i.la, i64 0
  %i.lh = fdiv float %i.lg, %sqrt.i.i538          ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0189.0.copyload = load <2 x float>, ptr %i.li, align 8 ; 2 uses
  %.sroa.2190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2190.0.copyload = load float, ptr %.sroa.2190.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i.i546 = extractelement <2 x float> %.sroa.0189.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i.i548 = extractelement <2 x float> %.sroa.0189.0.copyload, i64 1
  %i.lj = fmul float %.sroa.2190.0.copyload, %i.lh ; 2 uses
  %i.lk = fneg float %i.lj
  %i.ll = call noundef float @llvm.fma.f32(float %i.lh, float %.sroa.2190.0.copyload, float %i.lk)
  %i.lm = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ln = insertelement <2 x float> %i.lm, float %i.kp, i64 1
  %i.lo = insertelement <2 x float> poison, float %sqrt.i.i538, i64 0
  %i.lp = shufflevector <2 x float> %i.lo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lq = fdiv <2 x float> %i.ln, %i.lp           ; 4 uses
  %i.lr = extractelement <2 x float> %i.lq, i64 1
  %i.ls = call noundef float @llvm.fma.f32(float %i.lr, float %.sroa.01.4.vec.extract.i.i548, float %i.lj)
  %i.lt = fadd float %i.ls, %i.ll
  %i.lu = extractelement <2 x float> %i.lq, i64 0
  %i.lv = call noundef float @llvm.fma.f32(float %i.lu, float %.sroa.01.0.vec.extract.i.i546, float %i.lt)
  %i.lw = fcmp olt float %i.lv, 0.000000e+00      ; 2 uses
  %i.lx = fneg <2 x float> %i.lq
  %i.ly = fneg float %i.lh
  %.sroa.0.4.vec.insert.i.pn.i551 = select i1 %i.lw, <2 x float> %i.lx, <2 x float> %i.lq
  %.pn.i552 = select i1 %i.lw, float %i.ly, float %i.lh
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h, %bb.f
  %.sroa.2178.0.copyload = phi float [ %.sroa.2252.0.copyload, %bb.f ], [ %.sroa.2214.0.copyload, %bb.h ], [ %.sroa.2178.0.copyload.pre, %._crit_edge ] ; 3 uses
  %.sroa.0177.0.copyload = phi <2 x float> [ %.sroa.0251.0.copyload, %bb.f ], [ %.sroa.0213.0.copyload, %bb.h ], [ %.sroa.0177.0.copyload.pre, %._crit_edge ] ; 4 uses
  %.sroa.0259.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.pn.i, %bb.f ], [ %.sroa.0.4.vec.insert.i.pn.i551, %bb.h ], [ %.sroa.0259.0.copyload, %._crit_edge ] ; 8 uses
  %.sroa.17.0 = phi float [ %.pn.i, %bb.f ], [ %.pn.i552, %bb.h ], [ %.sroa.17.0.copyload, %._crit_edge ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %18, ptr noundef nonnull align 4 dereferenceable(32) %i.lz, i64 32, i1 false), !tbaa.struct !204
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 188 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.me = load ptr, ptr %1, align 8, !tbaa !636
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16 ; 2 uses
  %i.mg = load float, ptr %18, align 16, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store float %i.mg, ptr %i.c, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.c, ptr %9, align 8, !tbaa !258
  %i.mh = load i64, ptr %i.mf, align 8, !tbaa !406 ; 2 uses
  %i.mi = and i64 %i.mh, 144115188075855871
  %i.mj = inttoptr i64 %i.mi to ptr
  %i.mk = lshr i64 %i.mh, 57
  %i.ml = trunc nuw nsw i64 %i.mk to i32
  %i.mm = add nsw i32 %i.ml, -1
  %i.mn = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_8SpectrumclEfEUlT_E_fNS_16ConstantSpectrumENS_22DenselySampledSpectrumENS_23PiecewiseLinearSpectrumENS_17RGBAlbedoSpectrumENS_20RGBUnboundedSpectrumENS_21RGBIlluminantSpectrumENS_17BlackbodySpectrumEEET0_OS3_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.mj, i32 noundef %i.mm) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.mo = load i64, ptr %i.mf, align 8, !tbaa !406
  %.mask.i.i = and i64 %i.mo, -144115188075855872
  %i.mp = icmp eq i64 %.mask.i.i, 144115188075855872
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 2 uses
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !155 ; 3 uses
  br i1 %i.mp, label %._ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_25UniversalTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit_crit_edge, label %bb.j

._ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_25UniversalTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit_crit_edge: ; preds = %bb.i
  %.phi.trans.insert1151 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %.pre1152 = load float, ptr %.phi.trans.insert1151, align 8
  %.phi.trans.insert1153 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %.pre1154 = load float, ptr %.phi.trans.insert1153, align 4
  br label %_ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_25UniversalTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit

bb.j:                                             ; preds = %bb.i
  %i.mq = fcmp oeq float %.pre, 0.000000e+00
  %i.mr = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ms = load float, ptr %i.mr, align 8          ; 2 uses
  %i.mt = fcmp oeq float %i.ms, 0.000000e+00
  %or.cond.i.i.i = select i1 %i.mq, i1 %i.mt, i1 false
  %i.mu = getelementptr inbounds nuw i8, ptr %18, i64 28
  %i.mv = load float, ptr %i.mu, align 4          ; 2 uses
  %i.mw = fcmp oeq float %i.mv, 0.000000e+00
  %or.cond13.i.i.i = select i1 %or.cond.i.i.i, i1 %i.mw, i1 false
  br i1 %or.cond13.i.i.i, label %_ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_25UniversalTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.phi.trans.insert, i8 0, i64 12, i1 false), !tbaa !155
  %i.mx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.my = load float, ptr %i.mx, align 16, !tbaa !155
  %i.mz = fmul float %i.my, 2.500000e-01
  store float %i.mz, ptr %i.mx, align 16, !tbaa !155
  br label %_ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_25UniversalTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit

_ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_25UniversalTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit: ; preds = %._ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_25UniversalTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit_crit_edge, %bb.j, %.preheader.i.i
  %i.na = phi float [ %.pre1154, %._ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_25UniversalTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit_crit_edge ], [ %i.mv, %bb.j ], [ 0.000000e+00, %.preheader.i.i ]
  %i.nb = phi float [ %.pre1152, %._ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_25UniversalTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit_crit_edge ], [ %i.ms, %bb.j ], [ 0.000000e+00, %.preheader.i.i ]
  %i.nc = phi float [ %.pre, %._ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_25UniversalTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit_crit_edge ], [ %.pre, %bb.j ], [ 0.000000e+00, %.preheader.i.i ]
  %i.nd = fcmp oeq float %i.mn, 0.000000e+00
  %spec.store.select.i = select i1 %i.nd, float 1.000000e+00, float %i.mn
  store float %spec.store.select.i, ptr %19, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.ne = ptrtoint ptr %19 to i64                 ; 2 uses
  %i.nf = or i64 %i.ne, 864691128455135232        ; 4 uses
  store i64 %i.nf, ptr %20, align 8, !tbaa !212
  %i.ng = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %.sroa.01.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0177.0.copyload, i64 0
  %foldExtExtBinop1191 = fmul <2 x float> %.sroa.0177.0.copyload, %.sroa.0177.0.copyload
  %27 = extractelement <2 x float> %foldExtExtBinop1191, i64 0
  %.sroa.01.4.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0177.0.copyload, i64 1 ; 3 uses
  %i.nh = fmul float %.sroa.01.4.vec.extract.i.i.i.i, %.sroa.01.4.vec.extract.i.i.i.i
  %i.ni = fadd float %27, %i.nh
  %28 = fmul float %.sroa.2178.0.copyload, %.sroa.2178.0.copyload
  %29 = fadd float %28, %i.ni
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %29) ; 3 uses
  %30 = fdiv float %.sroa.01.0.vec.extract.i.i.i.i, %sqrt.i.i.i ; 5 uses
  %31 = fdiv float %.sroa.01.4.vec.extract.i.i.i.i, %sqrt.i.i.i ; 4 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %30, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %31, i64 1 ; 3 uses
  %.sroa.01.0.vec.extract.i.i568 = extractelement <2 x float> %.sroa.0259.0, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.i569 = extractelement <2 x float> %.sroa.0259.0, i64 1 ; 4 uses
  %32 = fmul float %.sroa.01.4.vec.extract.i.i569, %30 ; 2 uses
  %33 = fneg float %32
  %34 = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %31, float %33)
  %i.nj = fneg float %.sroa.01.4.vec.extract.i.i569
  %i.nk = call noundef float @llvm.fma.f32(float %i.nj, float %30, float %32)
  %35 = insertelement <2 x float> poison, float %.sroa.2178.0.copyload, i64 0
  %36 = insertelement <2 x float> %35, float %34, i64 1 ; 2 uses
  %37 = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %38 = insertelement <2 x float> %37, float %i.nk, i64 1 ; 2 uses
  %39 = fdiv <2 x float> %36, %38                 ; 3 uses
  %40 = fadd <2 x float> %36, %38                 ; 2 uses
  %41 = shufflevector <2 x float> %39, <2 x float> %40, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.nl = extractelement <2 x float> %39, i64 0
  %42 = shufflevector <2 x float> %.sroa.0259.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %43 = insertelement <2 x float> %42, float %.sroa.17.0, i64 0 ; 2 uses
  %44 = fneg <2 x float> %43
  %45 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %46 = insertelement <2 x float> %45, float %31, i64 0 ; 2 uses
  %47 = fmul <2 x float> %43, %46                 ; 2 uses
  %48 = fneg <2 x float> %47
  %49 = insertelement <2 x float> %42, float %.sroa.17.0, i64 1
  %i.nm = insertelement <2 x float> %41, float %30, i64 1
  %50 = call <2 x float> @llvm.fma.v2f32(<2 x float> %49, <2 x float> %i.nm, <2 x float> %48)
  %51 = call <2 x float> @llvm.fma.v2f32(<2 x float> %44, <2 x float> %46, <2 x float> %47)
  %52 = fadd <2 x float> %50, %51                 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %i.ng, align 8, !alias.scope !2038
  %.sroa.210.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store float %i.nl, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !alias.scope !2038
  %i.nn = getelementptr inbounds nuw i8, ptr %20, i64 20 ; 3 uses
  store <2 x float> %52, ptr %i.nn, align 4, !alias.scope !2038
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 28 ; 2 uses
  %53 = extractelement <2 x float> %40, i64 1
  store float %53, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !alias.scope !2038
  %i.no = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  store <2 x float> %.sroa.0259.0, ptr %i.no, align 8, !alias.scope !2038
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 3 uses
  store float %.sroa.17.0, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !alias.scope !2038
  %i.np = fcmp oeq float %i.nc, 0.000000e+00
  %i.nq = fcmp oeq float %i.nb, 0.000000e+00
  %or.cond.i = select i1 %i.np, i1 %i.nq, i1 false
  %i.nr = fcmp oeq float %i.na, 0.000000e+00
  %or.cond13.i = select i1 %or.cond.i, i1 %i.nr, i1 false
  br i1 %or.cond13.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_25UniversalTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !648
  %i.nu = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !151
  %i.nw = sext i32 %i.nt to i64                   ; 2 uses
  %i.nx = getelementptr inbounds [16 x i8], ptr %i.nv, i64 %i.nw ; 2 uses
  %i.ny = load <4 x float>, ptr %18, align 16
  %.sroa.03.4.vec.insert.i = shufflevector <4 x float> %i.ny, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.nz = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.oa = load <4 x float>, ptr %i.nz, align 8
  %.sroa.35.12.vec.insert.i = shufflevector <4 x float> %i.oa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.nx, align 16
  %.sroa.2.0..0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i, ptr %.sroa.2.0..0..sroa_idx.i.i, align 8, !tbaa !71
  %i.ob = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !152
  %i.od = getelementptr inbounds [16 x i8], ptr %i.oc, i64 %i.nw ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.of = load <4 x float>, ptr %i.oe, align 16   ; 2 uses
  %.sroa.0.4.vec.insert.i572 = shufflevector <4 x float> %i.of, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i = shufflevector <4 x float> %i.of, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i572, ptr %i.od, align 16
  %.sroa.2.0..0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.2.0..0..sroa_idx.i28.i, align 8, !tbaa !71
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK4pbrt22ThinDielectricMaterial7GetBxDFINS_25UniversalTextureEvaluatorEEENS_18ThinDielectricBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE.exit
  %i.og = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.oh = load i8, ptr %i.og, align 8, !tbaa !213, !range !11, !noundef !12
  %i.oi = trunc nuw i8 %i.oh to i1
  br i1 %i.oi, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !644
  %.not449 = icmp eq i32 %i.ok, 0
  br i1 %.not449, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ol = and i64 %i.ne, 144115188075855868
  %i.om = inttoptr i64 %i.ol to ptr
  %i.on = lshr i64 %i.nf, 57
  %i.oo = trunc nuw nsw i64 %i.on to i32
  %i.op = add nsw i32 %i.oo, -1
  call void @_ZN4pbrt6detail8DispatchIRZNS_4BxDF10RegularizeEvEUlT_E_vNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.om, i32 noundef %i.op)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !638
  %i.os = icmp eq i32 %i.or, 0
  br i1 %i.os, label %bb.p, label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.ot = load i8, ptr %i.h, align 8, !tbaa !214, !range !11, !noundef !12
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %bb.q, label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.ov = getelementptr inbounds nuw i8, ptr %21, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ov, i8 0, i64 184, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %i.mc, i64 24, i1 false)
  %i.ow = getelementptr inbounds nuw i8, ptr %21, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ow, ptr noundef nonnull align 8 dereferenceable(12) %i.mb, i64 12, i1 false)
  %i.ox = getelementptr inbounds nuw i8, ptr %21, i64 128
  store <2 x float> %.sroa.0259.0, ptr %i.ox, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %21, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %21, i64 52
  %i.oz = load i64, ptr %i.md, align 8
  store i64 %i.oz, ptr %i.oy, align 4
  %i.pa = getelementptr inbounds nuw i8, ptr %21, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pa, ptr noundef nonnull align 4 dereferenceable(12) %i.ma, i64 12, i1 false)
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !642
  %i.pd = getelementptr inbounds nuw i8, ptr %21, i64 24
  store float %i.pc, ptr %i.pd, align 8, !tbaa !217
  %i.pe = getelementptr inbounds nuw i8, ptr %21, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pe, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %i.pf = getelementptr inbounds nuw i8, ptr %21, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pf, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.f, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %22, align 16, !tbaa !155
  %i.pg = getelementptr inbounds nuw i8, ptr %22, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.pg, align 16, !tbaa !155
  %i.ph = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.ph, align 16, !tbaa !155
  %i.pi = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.pi, align 16, !tbaa !155
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.pa, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.nn, align 4 ; 2 uses
  %.sroa.214.0.copyload.i.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %54 = insertelement <2 x float> %.sroa.013.0.copyload.i.i.i, float %31, i64 1
  %55 = fmul <2 x float> %.sroa.0162.0.copyload, %54
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %57 = insertelement <2 x float> %.sroa.013.0.copyload.i.i.i, float %30, i64 0
  %i.pj = fmul <2 x float> %.sroa.0162.0.copyload, %57
  %i.pk = fadd <2 x float> %56, %i.pj
  %i.pl = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.pm = shufflevector <2 x float> %i.pl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pn = insertelement <2 x float> %41, float %.sroa.214.0.copyload.i.i.i, i64 1
  %i.po = fmul <2 x float> %i.pm, %i.pn
  %i.pp = fadd <2 x float> %i.po, %i.pk
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.no, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.pq = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1193 = shufflevector <2 x float> %i.pq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1194 = fadd <2 x float> %i.pq, %shift1193
  %i.pr = extractelement <2 x float> %foldExtExtBinop1194, i64 0
  %i.ps = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.pt = fadd float %i.ps, %i.pr
  %i.pu = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.pp, float %i.pt, ptr nonnull %i.f, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.pv = extractvalue { <2 x float>, <2 x float> } %i.pu, 0
  %i.pw = extractvalue { <2 x float>, <2 x float> } %i.pu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.pv, <2 x float> %i.pw, ptr noundef nonnull align 4 dereferenceable(32) %18)
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.py = load i32, ptr %i.px, align 4, !tbaa !648
  %i.pz = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.qa = load i8, ptr %i.pz, align 4, !tbaa !219, !range !11, !noundef !12
  %i.qb = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !220
  %i.qd = sext i32 %i.py to i64                   ; 20 uses
  %i.qe = getelementptr inbounds i8, ptr %i.qc, i64 %i.qd
  store i8 %i.qa, ptr %i.qe, align 1, !tbaa !10
  %i.qf = load float, ptr %23, align 4, !tbaa !221
  %i.qg = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !222
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %i.qd
  store float %i.qf, ptr %i.qi, align 4, !tbaa !155
  %i.qj = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !223
  %i.ql = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !224
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.qd
  store float %i.qk, ptr %i.qn, align 4, !tbaa !155
  %i.qo = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !225
  %i.qq = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !226
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.qr, i64 %i.qd
  store float %i.qp, ptr %i.qs, align 4, !tbaa !155
  %i.qt = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !227
  %i.qv = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !157
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.qd
  store float %i.qu, ptr %i.qx, align 4, !tbaa !155
  %i.qy = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !228
  %i.ra = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !158
  %i.rc = getelementptr inbounds [4 x i8], ptr %i.rb, i64 %i.qd
  store float %i.qz, ptr %i.rc, align 4, !tbaa !155
  %i.rd = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.re = load float, ptr %i.rd, align 4, !tbaa !229
  %i.rf = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !159
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.rg, i64 %i.qd
  store float %i.re, ptr %i.rh, align 4, !tbaa !155
  %i.ri = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !227
  %i.rk = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !157
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %i.qd
  store float %i.rj, ptr %i.rm, align 4, !tbaa !155
  %i.rn = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !228
  %i.rp = getelementptr inbounds nuw i8, ptr %i.h, i64 344
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !158
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %i.qd
  store float %i.ro, ptr %i.rr, align 4, !tbaa !155
  %i.rs = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !229
  %i.ru = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !159
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.qd
  store float %i.rt, ptr %i.rw, align 4, !tbaa !155
  %i.rx = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !230
  %i.rz = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !163
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.qd
  store float %i.ry, ptr %i.sb, align 4, !tbaa !155
  %i.sc = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !231
  %i.se = getelementptr inbounds nuw i8, ptr %i.h, i64 376
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !164
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.qd
  store float %i.sd, ptr %i.sg, align 4, !tbaa !155
  %i.sh = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.si = load float, ptr %i.sh, align 4, !tbaa !232
  %i.sj = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !233
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %i.qd
  store float %i.si, ptr %i.sl, align 4, !tbaa !155
  %i.sm = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !234
  %i.so = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !160
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.qd
  store float %i.sn, ptr %i.sq, align 4, !tbaa !155
  %i.sr = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !235
  %i.st = getelementptr inbounds nuw i8, ptr %i.h, i64 408
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !161
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.qd
  store float %i.ss, ptr %i.sv, align 4, !tbaa !155
  %i.sw = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !181
  %i.sy = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !162
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.qd
  store float %i.sx, ptr %i.ta, align 4, !tbaa !155
  %i.tb = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !234
  %i.td = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !160
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.te, i64 %i.qd
  store float %i.tc, ptr %i.tf, align 4, !tbaa !155
  %i.tg = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.th = load float, ptr %i.tg, align 4, !tbaa !235
  %i.ti = getelementptr inbounds nuw i8, ptr %i.h, i64 440
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !161
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.qd
  store float %i.th, ptr %i.tk, align 4, !tbaa !155
  %i.tl = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !181
  %i.tn = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !162
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.qd
  store float %i.tm, ptr %i.tp, align 4, !tbaa !155
  %i.tq = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.tr = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !153
  %i.tt = getelementptr inbounds [16 x i8], ptr %i.ts, i64 %i.qd ; 2 uses
  %i.tu = load <4 x float>, ptr %i.tq, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.tu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.tu, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.tt, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %.sroa.021.0.copyload.i.i.i586.pre = load <2 x float>, ptr %i.ng, align 8, !noalias !2039
  %.sroa.013.0.copyload.i.i.i593.pre = load <2 x float>, ptr %i.nn, align 4, !noalias !2039
  %58 = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !2039
  %59 = shufflevector <4 x float> %58, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %.sroa.05.0.copyload.i.i.i598.pre = load <2 x float>, ptr %i.no, align 8, !noalias !2039
  %.sroa.26.0.copyload.i.i.i600.pre = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !2039
  %.pre1162.pre = load i64, ptr %20, align 8, !tbaa !212
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.q, %bb.p, %bb.o
  %.pre1162 = phi i64 [ %.pre1162.pre, %bb.q ], [ %i.nf, %bb.p ], [ %i.nf, %bb.o ] ; 5 uses
  %.sroa.26.0.copyload.i.i.i600 = phi float [ %.sroa.26.0.copyload.i.i.i600.pre, %bb.q ], [ %.sroa.17.0, %bb.p ], [ %.sroa.17.0, %bb.o ] ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = phi <2 x float> [ %.sroa.013.0.copyload.i.i.i593.pre, %bb.q ], [ %52, %bb.p ], [ %52, %bb.o ] ; 3 uses
  %.sroa.021.0.copyload.i.i.i586 = phi <2 x float> [ %.sroa.021.0.copyload.i.i.i586.pre, %bb.q ], [ %.sroa.0.4.vec.insert.i.i.i, %bb.p ], [ %.sroa.0.4.vec.insert.i.i.i, %bb.o ] ; 3 uses
  %i.tv = phi <2 x float> [ %.sroa.05.0.copyload.i.i.i598.pre, %bb.q ], [ %.sroa.0259.0, %bb.p ], [ %.sroa.0259.0, %bb.o ] ; 2 uses
  %i.tw = phi <2 x float> [ %59, %bb.q ], [ %41, %bb.p ], [ %41, %bb.o ] ; 3 uses
  %.sroa.01010.0.copyload = load <2 x float>, ptr %i.ma, align 4 ; 5 uses
  %.sroa.121017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121017.0.copyload = load float, ptr %.sroa.121017.0..sroa_idx, align 4 ; 4 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 2 uses
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !648
  %i.ua = load ptr, ptr %i.tx, align 8, !tbaa !236, !noalias !2040
  %i.ub = sext i32 %i.tz to i64                   ; 2 uses
  %i.uc = getelementptr inbounds [16 x i8], ptr %i.ua, i64 %i.ub ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ud = load <2 x float>, ptr %i.uc, align 16, !noalias !2040
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !71, !noalias !2040
  %i.ue = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !237, !noalias !2040
  %i.ug = getelementptr inbounds [16 x i8], ptr %i.uf, i64 %i.ub
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.ug, align 16, !noalias !2040 ; 2 uses
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %i.uh = shufflevector <2 x float> %.sroa.01010.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ui = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.uj = fmul <2 x float> %i.uh, %i.ui
  %i.uk = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.ul = fmul <2 x float> %.sroa.01010.0.copyload, %i.uk
  %i.um = fadd <2 x float> %i.uj, %i.ul
  %i.un = insertelement <2 x float> poison, float %.sroa.121017.0.copyload, i64 0
  %i.uo = shufflevector <2 x float> %i.un, <2 x float> poison, <2 x i32> zeroinitializer
  %i.up = fmul <2 x float> %i.uo, %i.tw
  %i.uq = fadd <2 x float> %i.up, %i.um           ; 2 uses
  %i.ur = fmul <2 x float> %.sroa.01010.0.copyload, %i.tv ; 2 uses
  %shift1196 = shufflevector <2 x float> %i.ur, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1197 = fadd <2 x float> %i.ur, %shift1196
  %i.us = extractelement <2 x float> %foldExtExtBinop1197, i64 0
  %i.ut = fmul float %.sroa.121017.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.uu = fadd float %i.ut, %i.us                 ; 4 uses
  %i.uv = fcmp oeq float %i.uu, 0.000000e+00
  br i1 %i.uv, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.uw = and i64 %.pre1162, 144115188075855871
  %i.ux = inttoptr i64 %i.uw to ptr
  %i.uy = call float @llvm.fabs.f32(float %i.uu)  ; 4 uses
  %i.uz = load float, ptr %i.ux, align 4, !tbaa !652, !noalias !2041 ; 4 uses
  %i.va = fcmp ogt float %i.uy, 1.000000e+00
  %..i.i.i.i = select i1 %i.va, float 1.000000e+00, float %i.uy ; 5 uses
  %i.vb = fmul float %..i.i.i.i, %..i.i.i.i
  %i.vc = fsub float 1.000000e+00, %i.vb
  %i.vd = fmul float %i.uz, %i.uz
  %i.ve = fdiv float %i.vc, %i.vd                 ; 2 uses
  %i.vf = fcmp ult float %i.ve, 1.000000e+00
  br i1 %i.vf, label %_ZN4pbrt12FrDielectricEff.exit.i.i, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread

_ZN4pbrt12FrDielectricEff.exit.i.i:               ; preds = %bb.r
  %i.vg = fsub float 1.000000e+00, %i.ve          ; 2 uses
  %i.vh = fcmp ogt float %i.vg, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.vh, float %i.vg, float 0.000000e+00
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i.i) ; 3 uses
  %i.vi = fmul float %..i.i.i.i, %i.uz            ; 2 uses
  %i.vj = fsub float %i.vi, %sqrt.i.i.i.i
  %i.vk = fadd float %i.vi, %sqrt.i.i.i.i
  %i.vl = fdiv float %i.vj, %i.vk                 ; 2 uses
  %i.vm = fmul float %i.uz, %sqrt.i.i.i.i         ; 2 uses
  %i.vn = fsub float %..i.i.i.i, %i.vm
  %i.vo = fadd float %..i.i.i.i, %i.vm
  %i.vp = fdiv float %i.vn, %i.vo                 ; 2 uses
  %i.vq = fmul float %i.vl, %i.vl
  %i.vr = fmul float %i.vp, %i.vp
  %i.vs = fadd float %i.vq, %i.vr
  %i.vt = fmul float %i.vs, 5.000000e-01          ; 7 uses
  %i.vu = fsub float 1.000000e+00, %i.vt          ; 3 uses
  %i.vv = fcmp olt float %i.vt, 1.000000e+00
  br i1 %i.vv, label %bb.s, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i

bb.s:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.i.i
  %i.vw = fmul float %i.vu, %i.vu
  %i.vx = fmul float %i.vt, %i.vw
  %i.vy = fmul nnan float %i.vt, %i.vt
  %i.vz = fsub float 1.000000e+00, %i.vy
  %i.wa = fdiv float %i.vx, %i.vz
  %i.wb = fadd float %i.vt, %i.wa                 ; 2 uses
  %i.wc = fsub float 1.000000e+00, %i.wb
  br label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i

_ZN4pbrt12FrDielectricEff.exit.thread.i.i:        ; preds = %bb.s, %_ZN4pbrt12FrDielectricEff.exit.i.i
  %.055.i.i = phi float [ %i.wc, %bb.s ], [ %i.vu, %_ZN4pbrt12FrDielectricEff.exit.i.i ] ; 2 uses
  %.0.i.i = phi float [ %i.wb, %bb.s ], [ %i.vt, %_ZN4pbrt12FrDielectricEff.exit.i.i ] ; 2 uses
  %i.wd = fcmp oeq float %.0.i.i, 0.000000e+00
  %i.we = fcmp oeq float %.055.i.i, 0.000000e+00
  %or.cond.i.i = and i1 %i.we, %i.wd
  br i1 %or.cond.i.i, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread

_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread: ; preds = %bb.r, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i
  %.0.i.i1126 = phi float [ %.0.i.i, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i ], [ 1.000000e+00, %bb.r ] ; 3 uses
  %.055.i.i1125 = phi float [ %.055.i.i, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i ], [ 0.000000e+00, %bb.r ] ; 3 uses
  %i.wf = fadd float %.0.i.i1126, %.055.i.i1125   ; 2 uses
  %i.wg = fdiv float %.0.i.i1126, %i.wf           ; 2 uses
  %i.wh = fcmp olt float %.sroa.01.0.vec.extract.i.i584, %i.wg
  %i.wi = fneg <2 x float> %i.uq                  ; 3 uses
  br i1 %i.wh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread
  %i.wj = fdiv float %.0.i.i1126, %i.uy
  %.sroa.076.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.wj, i64 0
  %.sroa.076.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.076.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i

bb.u:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread
  %i.wk = fneg float %i.uu
  %i.wl = fdiv float %.055.i.i1125, %i.uy
  %.sroa.063.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.wl, i64 0
  %.sroa.063.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.063.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wm = fdiv float %.055.i.i1125, %i.wf
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.u, %bb.t
  %.sroa.17.0.ph.i = phi float [ %i.wk, %bb.u ], [ %i.uu, %bb.t ] ; 2 uses
  %.sroa.22.0.ph.i = phi float [ %i.wm, %bb.u ], [ %i.wg, %bb.t ] ; 3 uses
  %.sroa.9.0.ph.i = phi <2 x float> [ %.sroa.063.4.vec.insert.i.i, %bb.u ], [ %.sroa.076.4.vec.insert.i.i, %bb.t ] ; 2 uses
  %i.wn = fcmp une <2 x float> %.sroa.9.0.ph.i, zeroinitializer
  %i.wo = bitcast <2 x i1> %i.wn to i2
  %i.wp = icmp eq i2 %i.wo, 0
  %i.wq = fcmp oeq float %.sroa.22.0.ph.i, 0.000000e+00
  %or.cond.i603 = or i1 %i.wq, %i.wp
  br i1 %or.cond.i603, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.wr = shufflevector <2 x float> %.sroa.9.0.ph.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %foldExtExtBinop1201 = fmul <2 x float> %i.tw, %i.wi
  %shift1203 = shufflevector <2 x float> %foldExtExtBinop1201, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %60 = fmul <2 x float> %i.uq, %i.tw
  %foldExtExtBinop1204 = fsub <2 x float> %shift1203, %60
  %61 = extractelement <2 x float> %foldExtExtBinop1204, i64 0
  %i.ws = insertelement <2 x float> poison, float %.sroa.17.0.ph.i, i64 0
  %i.wt = shufflevector <2 x float> %i.ws, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wu = fmul <2 x float> %i.tv, %i.wt
  %i.wv = fmul float %.sroa.26.0.copyload.i.i.i600, %.sroa.17.0.ph.i
  %i.ww = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wx = fmul <2 x float> %.sroa.021.0.copyload.i.i.i586, %i.ww
  %i.wy = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wz = fmul <2 x float> %.sroa.013.0.copyload.i.i.i593, %i.wy
  %i.xa = fadd <2 x float> %i.wx, %i.wz
  %i.xb = fadd <2 x float> %i.wu, %i.xa           ; 3 uses
  %i.xc = fadd float %i.wv, %61                   ; 6 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.xe = load <4 x float>, ptr %i.xd, align 8
  %i.xf = fmul float %.sroa.17.0, %i.xc           ; 2 uses
  %i.xg = extractelement <2 x float> %i.xb, i64 1 ; 3 uses
  %i.xh = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.xg, float %i.xf)
  %i.xi = fneg float %i.xf
  %i.xj = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.xc, float %i.xi)
  %i.xk = fadd float %i.xh, %i.xj
  %i.xl = extractelement <2 x float> %i.xb, i64 0 ; 3 uses
  %i.xm = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.xl, float %i.xk)
  %i.xn = call noundef float @llvm.fabs.f32(float %i.xm)
  %i.xo = fmul <4 x float> %i.wr, %i.xe
  %i.xp = insertelement <4 x float> poison, float %i.xn, i64 0
  %i.xq = shufflevector <4 x float> %i.xp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xr = fmul <4 x float> %i.xq, %i.xo
  %i.xs = insertelement <4 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.xt = shufflevector <4 x float> %i.xs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xu = fdiv <4 x float> %i.xr, %i.xt           ; 7 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0911.0.copyload = load <4 x float>, ptr %i.xv, align 8, !tbaa !71 ; 6 uses
  %i.xw = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.xx = insertelement <2 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.xy = shufflevector <2 x float> %i.xx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xz = fdiv <2 x float> %i.xw, %i.xy
  %i.ya = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.yb = fdiv <2 x float> %i.ya, %i.xy
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.yd = load float, ptr %i.yc, align 8, !tbaa !646 ; 5 uses
  %i.ye = extractelement <4 x float> %i.xu, i64 0
  %i.yf = fmul float %i.yd, %i.ye
  %i.yg = extractelement <4 x float> %i.xu, i64 1
  %i.yh = fmul float %i.yd, %i.yg
  %i.yi = extractelement <4 x float> %i.xu, i64 2
  %i.yj = fmul float %i.yd, %i.yi
  %i.yk = extractelement <4 x float> %i.xu, i64 3
  %i.yl = fmul float %i.yd, %i.yk
  %shift1206.a = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1207.a = fadd <4 x float> %.sroa.0911.0.copyload, %shift1206.a
  %shift1209 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1210 = fadd <4 x float> %shift1209, %foldExtExtBinop1207.a
  %shift1212 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1213 = fadd <4 x float> %shift1212, %foldExtExtBinop1210
  %i.ym = extractelement <4 x float> %foldExtExtBinop1213, i64 0
  %i.yn = fmul float %i.ym, 2.500000e-01          ; 4 uses
  %i.yo = fdiv float %i.yf, %i.yn                 ; 2 uses
  %i.yp = fdiv float %i.yh, %i.yn                 ; 2 uses
  %i.yq = fdiv float %i.yj, %i.yn                 ; 2 uses
  %i.yr = fdiv float %i.yl, %i.yn                 ; 2 uses
  %i.ys = fcmp olt float %i.yo, %i.yp
  %.sroa.speculated.i = select i1 %i.ys, float %i.yp, float %i.yo ; 2 uses
  %i.yt = fcmp olt float %.sroa.speculated.i, %i.yq
  %.sroa.speculated.1.i = select i1 %i.yt, float %i.yq, float %.sroa.speculated.i ; 2 uses
  %i.yu = fcmp olt float %.sroa.speculated.1.i, %i.yr
  %.sroa.speculated.2.i = select i1 %i.yu, float %i.yr, float %.sroa.speculated.1.i ; 2 uses
  %i.yv = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.yv, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.yw = load i32, ptr %i.oq, align 8, !tbaa !638
  %i.yx = icmp sgt i32 %i.yw, 0
  br i1 %i.yx, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.yy = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.yz = fcmp ogt float %i.yy, 0.000000e+00
  %.sroa.speculated = select i1 %i.yz, float %i.yy, float 0.000000e+00 ; 2 uses
  %i.za = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.za, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.zb = fsub float 1.000000e+00, %.sroa.speculated
  %i.zc = insertelement <4 x float> poison, float %i.zb, i64 0
  %i.zd = shufflevector <4 x float> %i.zc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ze = fdiv <4 x float> %i.xu, %i.zd
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w, %bb.v
  %.sroa.0929.0 = phi <4 x float> [ %i.xu, %bb.v ], [ %i.ze, %bb.y ], [ %i.xu, %bb.w ], [ zeroinitializer, %bb.x ]
  %.sroa.0929.0.fr = freeze <4 x float> %.sroa.0929.0 ; 3 uses
  %i.zf = fcmp une <4 x float> %.sroa.0929.0.fr, zeroinitializer
  %i.zg = bitcast <4 x i1> %i.zf to i4
  %.not1215 = icmp eq i4 %i.zg, 0
  br i1 %.not1215, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705: ; preds = %bb.z
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mb, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !642
  %i.zj = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mc, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %i.xb, float %i.xc) ; 2 uses
  %.fca.0.extract.i709 = extractvalue { <2 x float>, float } %i.zj, 0 ; 2 uses
  %.fca.1.extract.i710 = extractvalue { <2 x float>, float } %i.zj, 1
  %i.zk = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.zl = load i8, ptr %i.zk, align 2, !tbaa !245, !range !11, !noundef !12
  %i.zm = trunc nuw i8 %i.zl to i1
  %.sroa.094.0.copyload.pre = load <2 x float>, ptr %i.mb, align 8 ; 2 uses
  %.sroa.295.0.copyload.pre = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 3 uses
  %.sroa.01.0.vec.extract.i712 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 0 ; 2 uses
  %.sroa.01.4.vec.extract.i714 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 1 ; 2 uses
  br i1 %i.zm, label %bb.aa, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge

bb.aa:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705
  %i.zn = fmul float %i.xc, %.sroa.295.0.copyload.pre ; 2 uses
  %i.zo = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i714, float %i.xg, float %i.zn)
  %i.zp = fneg float %i.zn
  %i.zq = call noundef float @llvm.fma.f32(float %.sroa.295.0.copyload.pre, float %i.xc, float %i.zp)
  %i.zr = fadd float %i.zo, %i.zq
  %i.zs = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i712, float %i.xl, float %i.zr)
  %i.zt = fcmp ogt float %i.zs, 0.000000e+00
  %.v = select i1 %i.zt, i64 248, i64 240
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.zv = load i64, ptr %i.zu, align 8, !tbaa !177
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705, %bb.aa
  %.sroa.17876.0 = phi i64 [ %i.zv, %bb.aa ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705 ]
  %i.zw = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.zx = load i32, ptr %i.zw, align 8, !tbaa !644
  %i.zy = icmp ne i32 %i.zx, 0
  %.sroa.0863.sroa.0.0.copyload = load float, ptr %i.mc, align 8
  %.sroa.0863.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0863.sroa.2.0.copyload = load float, ptr %.sroa.0863.sroa.2.0..sroa_idx, align 4
  %.sroa.0863.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0863.sroa.3.0.copyload = load float, ptr %.sroa.0863.sroa.3.0..sroa_idx, align 8
  %.sroa.0863.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0863.sroa.4.0.copyload = load float, ptr %.sroa.0863.sroa.4.0..sroa_idx, align 4
  %.sroa.0863.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0863.sroa.5.0.copyload = load float, ptr %.sroa.0863.sroa.5.0..sroa_idx, align 8
  %.sroa.0863.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0863.sroa.6.0.copyload = load float, ptr %.sroa.0863.sroa.6.0..sroa_idx, align 4
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !624 ; 31 uses
  %i.aab = load i32, ptr %i.oq, align 8, !tbaa !638
  %i.aac = add nsw i32 %i.aab, 1
  %i.aad = load i32, ptr %i.ty, align 4, !tbaa !648
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aaa, i64 400
  %i.aaf = atomicrmw add ptr %i.aae, i32 1 monotonic, align 4
  %.sroa.0871.0.vec.extract = extractelement <2 x float> %.fca.0.extract.i709, i64 0
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaa, i64 24
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !222
  %i.aai = sext i32 %i.aaf to i64                 ; 30 uses
  %i.aaj = getelementptr inbounds [4 x i8], ptr %i.aah, i64 %i.aai
  store float %.sroa.0871.0.vec.extract, ptr %i.aaj, align 4, !tbaa !155
  %.sroa.0871.4.vec.extract = extractelement <2 x float> %.fca.0.extract.i709, i64 1
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaa, i64 32
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !224
  %i.aam = getelementptr inbounds [4 x i8], ptr %i.aal, i64 %i.aai
  store float %.sroa.0871.4.vec.extract, ptr %i.aam, align 4, !tbaa !155
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaa, i64 40
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !226
  %i.aap = getelementptr inbounds [4 x i8], ptr %i.aao, i64 %i.aai
  store float %.fca.1.extract.i710, ptr %i.aap, align 4, !tbaa !155
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aaa, i64 56
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !160
  %i.aas = getelementptr inbounds [4 x i8], ptr %i.aar, i64 %i.aai
  store float %i.xl, ptr %i.aas, align 4, !tbaa !155
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaa, i64 64
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !161
  %i.aav = getelementptr inbounds [4 x i8], ptr %i.aau, i64 %i.aai
  store float %i.xg, ptr %i.aav, align 4, !tbaa !155
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aaa, i64 72
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !162
  %i.aay = getelementptr inbounds [4 x i8], ptr %i.aax, i64 %i.aai
  store float %i.xc, ptr %i.aay, align 4, !tbaa !155
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaa, i64 80
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !247
  %i.abb = getelementptr inbounds [4 x i8], ptr %i.aba, i64 %i.aai
  store float %i.zi, ptr %i.abb, align 4, !tbaa !155
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaa, i64 88
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !248
  %i.abe = getelementptr inbounds [8 x i8], ptr %i.abd, i64 %i.aai
  store i64 %.sroa.17876.0, ptr %i.abe, align 8, !tbaa !177
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aaa, i64 96
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !251
  %i.abh = getelementptr inbounds [4 x i8], ptr %i.abg, i64 %i.aai
  store i32 %i.aac, ptr %i.abh, align 4, !tbaa !166
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aaa, i64 104
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !252
  %i.abk = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.aai
  store i32 %i.aad, ptr %i.abk, align 4, !tbaa !166
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aaa, i64 248
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !154
  %i.abn = getelementptr inbounds [4 x i8], ptr %i.abm, i64 %i.aai
  store float %.sroa.0863.sroa.0.0.copyload, ptr %i.abn, align 4, !tbaa !155
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aaa, i64 256
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !156
  %i.abq = getelementptr inbounds [4 x i8], ptr %i.abp, i64 %i.aai
  store float %.sroa.0863.sroa.2.0.copyload, ptr %i.abq, align 4, !tbaa !155
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aaa, i64 272
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !154
  %i.abt = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.aai
  store float %.sroa.0863.sroa.3.0.copyload, ptr %i.abt, align 4, !tbaa !155
  %i.abu = getelementptr inbounds nuw i8, ptr %i.aaa, i64 280
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !156
  %i.abw = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %i.aai
  store float %.sroa.0863.sroa.4.0.copyload, ptr %i.abw, align 4, !tbaa !155
  %i.abx = getelementptr inbounds nuw i8, ptr %i.aaa, i64 296
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !154
  %i.abz = getelementptr inbounds [4 x i8], ptr %i.aby, i64 %i.aai
end_hunk_1
