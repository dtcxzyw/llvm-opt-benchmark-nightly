Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/surfscatter?download=true
inline.NumInlined: 8253
inline.NumDeleted: 1421
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_17ConductorMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_IS2_EENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSB_E_clESB_:bb.a
  %i.jw = load i64, ptr %i.ju, align 8, !noalias !1259
  store i64 %i.jw, ptr %i.jv, align 4, !alias.scope !1259
  %i.jx = getelementptr inbounds nuw i8, ptr %15, i64 92
  %i.jy = extractelement <2 x float> %i.gk, i64 0
  store float %i.jy, ptr %i.jx, align 4, !tbaa !199, !alias.scope !1259
  %i.jz = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.ka = extractelement <2 x float> %i.gk, i64 1
  store float %i.ka, ptr %i.jz, align 8, !tbaa !200, !alias.scope !1259
  %i.kb = getelementptr inbounds nuw i8, ptr %15, i64 100
  store float %.0419, ptr %i.kb, align 4, !tbaa !201, !alias.scope !1259
  %i.kc = getelementptr inbounds nuw i8, ptr %15, i64 104
  store float %.0420, ptr %i.kc, align 8, !tbaa !202, !alias.scope !1259
  %i.kd = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kd, ptr noundef nonnull align 4 dereferenceable(12) %i.gl, i64 12, i1 false)
  %i.ke = getelementptr inbounds nuw i8, ptr %15, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ke, ptr noundef nonnull align 8 dereferenceable(12) %i.gm, i64 12, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.kg = getelementptr inbounds nuw i8, ptr %15, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kg, ptr noundef nonnull align 4 dereferenceable(12) %i.kf, i64 12, i1 false)
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ki = getelementptr inbounds nuw i8, ptr %15, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ki, ptr noundef nonnull align 8 dereferenceable(12) %i.kh, i64 12, i1 false)
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.kk = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kk, ptr noundef nonnull align 4 dereferenceable(12) %i.kj, i64 12, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !393, !noalias !1259
  %i.kn = getelementptr inbounds nuw i8, ptr %15, i64 132
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !203, !alias.scope !1259
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store <2 x float> zeroinitializer, ptr %16, align 8, !tbaa !155
  %i.ko = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.ko, align 8, !tbaa !181
  store i64 %i.go, ptr %17, align 8, !tbaa !186
  call void @_ZN4pbrt7BumpMapINS_21BasicTextureEvaluatorEEEvT_NS_12FloatTextureERKNS_21NormalBumpEvalContextEPNS_7Vector3IfEES9_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(136) %15, ptr noundef nonnull %12, ptr noundef nonnull %16)
  %.sroa.0213.0.copyload = load <2 x float>, ptr %12, align 8 ; 4 uses
  %.sroa.2214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2214.0.copyload = load float, ptr %.sroa.2214.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0211.0.copyload = load <2 x float>, ptr %16, align 8 ; 4 uses
  %.sroa.2212.0.copyload = load float, ptr %i.ko, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i530 = extractelement <2 x float> %.sroa.0211.0.copyload, i64 0
  %.sroa.011.0.vec.extract.i531 = extractelement <2 x float> %.sroa.0213.0.copyload, i64 0 ; 2 uses
  %i.kp = fmul float %.sroa.011.0.vec.extract.i531, %.sroa.2212.0.copyload ; 2 uses
  %i.kq = fneg float %i.kp
  %i.kr = call noundef float @llvm.fma.f32(float %.sroa.2214.0.copyload, float %.sroa.03.0.vec.extract.i530, float %i.kq)
  %i.ks = fneg float %.sroa.011.0.vec.extract.i531
  %i.kt = call noundef float @llvm.fma.f32(float %i.ks, float %.sroa.2212.0.copyload, float %i.kp)
  %i.ku = fadd float %i.kr, %i.kt                 ; 3 uses
  %i.kv = fmul float %i.ku, %i.ku
  %i.kw = shufflevector <2 x float> %.sroa.0213.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kx = insertelement <2 x float> %i.kw, float %.sroa.2214.0.copyload, i64 1 ; 2 uses
  %i.ky = fmul <2 x float> %i.kx, %.sroa.0211.0.copyload ; 2 uses
  %i.kz = fneg <2 x float> %i.ky
  %i.la = shufflevector <2 x float> %.sroa.0211.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lb = insertelement <2 x float> %i.la, float %.sroa.2212.0.copyload, i64 1
  %i.lc = call <2 x float> @llvm.fma.v2f32(<2 x float> %.sroa.0213.0.copyload, <2 x float> %i.lb, <2 x float> %i.kz)
  %i.ld = fneg <2 x float> %i.kx
  %i.le = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ld, <2 x float> %.sroa.0211.0.copyload, <2 x float> %i.ky)
  %i.lf = fadd <2 x float> %i.lc, %i.le           ; 4 uses
  %i.lg = fmul <2 x float> %i.lf, %i.lf           ; 2 uses
  %i.lh = extractelement <2 x float> %i.lg, i64 1
  %i.li = fadd float %i.lh, %i.kv
  %i.lj = extractelement <2 x float> %i.lg, i64 0
  %i.lk = fadd float %i.lj, %i.li
  %sqrt.i.i538 = call noundef float @llvm.sqrt.f32(float %i.lk) ; 2 uses
  %i.ll = extractelement <2 x float> %i.lf, i64 0
  %i.lm = fdiv float %i.ll, %sqrt.i.i538          ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0189.0.copyload = load <2 x float>, ptr %i.ln, align 8 ; 2 uses
  %.sroa.2190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2190.0.copyload = load float, ptr %.sroa.2190.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i.i546 = extractelement <2 x float> %.sroa.0189.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i.i548 = extractelement <2 x float> %.sroa.0189.0.copyload, i64 1
  %i.lo = fmul float %.sroa.2190.0.copyload, %i.lm ; 2 uses
  %i.lp = fneg float %i.lo
  %i.lq = call noundef float @llvm.fma.f32(float %i.lm, float %.sroa.2190.0.copyload, float %i.lp)
  %i.lr = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ls = insertelement <2 x float> %i.lr, float %i.ku, i64 1
  %i.lt = insertelement <2 x float> poison, float %sqrt.i.i538, i64 0
  %i.lu = shufflevector <2 x float> %i.lt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lv = fdiv <2 x float> %i.ls, %i.lu           ; 4 uses
  %i.lw = extractelement <2 x float> %i.lv, i64 1
  %i.lx = call noundef float @llvm.fma.f32(float %i.lw, float %.sroa.01.4.vec.extract.i.i548, float %i.lo)
  %i.ly = fadd float %i.lx, %i.lq
  %i.lz = extractelement <2 x float> %i.lv, i64 0
  %i.ma = call noundef float @llvm.fma.f32(float %i.lz, float %.sroa.01.0.vec.extract.i.i546, float %i.ly)
  %i.mb = fcmp olt float %i.ma, 0.000000e+00      ; 2 uses
  %i.mc = fneg <2 x float> %i.lv
  %i.md = fneg float %i.lm
  %.sroa.0.4.vec.insert.i.pn.i551 = select i1 %i.mb, <2 x float> %i.mc, <2 x float> %i.lv
  %.pn.i552 = select i1 %i.mb, float %i.md, float %i.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h, %bb.f
  %.sroa.2178.0.copyload = phi float [ %.sroa.2178.0.copyload.pre, %._crit_edge ], [ %.sroa.2214.0.copyload, %bb.h ], [ %.sroa.2252.0.copyload, %bb.f ] ; 4 uses
  %.sroa.0259.0 = phi <2 x float> [ %.sroa.0259.0.copyload, %._crit_edge ], [ %.sroa.0.4.vec.insert.i.pn.i551, %bb.h ], [ %.sroa.0.4.vec.insert.i.pn.i, %bb.f ] ; 9 uses
  %.sroa.17.0 = phi float [ %.sroa.17.0.copyload, %._crit_edge ], [ %.pn.i552, %bb.h ], [ %.pn.i, %bb.f ] ; 12 uses
  %i.me = phi <2 x float> [ %.sroa.0177.0.copyload.pre, %._crit_edge ], [ %.sroa.0213.0.copyload, %bb.h ], [ %.sroa.0251.0.copyload, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %18, ptr noundef nonnull align 4 dereferenceable(32) %i.mf, i64 32, i1 false), !tbaa.struct !204
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 188 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %.sroa.0.sroa.2.0..sroa_idx.i556 = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx.i558 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.sroa.4.0..sroa_idx.i560 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.sroa.5.0..sroa_idx.i562 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.sroa.5.0.copyload.i563 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i562, align 8, !noalias !1260
  %.sroa.0.sroa.6.0..sroa_idx.i564 = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.sroa.0.sroa.6.0.copyload.i565 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i564, align 4, !noalias !1260
  %i.mj = fadd float %.sroa.0.sroa.5.0.copyload.i563, %.sroa.0.sroa.6.0.copyload.i565
  %i.mk = fmul float %i.mj, 5.000000e-01
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.mm = load i64, ptr %i.ml, align 8, !noalias !1260
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !393, !noalias !1260
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.mp = load ptr, ptr %1, align 8, !tbaa !389
  %i.mq = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i556, align 4, !noalias !1260
  %i.mr = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.mi, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !noalias !1260
  %i.ms = shufflevector <4 x float> %i.mr, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.mt = fadd <2 x float> %i.mq, %i.ms
  %i.mu = fmul <2 x float> %i.mt, splat (float 5.000000e-01)
  store <2 x float> %i.mu, ptr %20, align 8
  %.sroa.61081.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store float %i.mk, ptr %.sroa.61081.0..sroa_idx, align 8
  %.sroa.71082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.71082.0..sroa_idx, i8 0, i64 24, i1 false)
  %.sroa.81083.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.81083.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.mh, i64 12, i1 false)
  %.sroa.91084.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 48
  store i64 %i.mm, ptr %.sroa.91084.0..sroa_idx, align 8
  %.sroa.101085.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 56
  %i.mv = extractelement <2 x float> %i.gk, i64 0
  store float %i.mv, ptr %.sroa.101085.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 60
  %i.mw = extractelement <2 x float> %i.gk, i64 1
  store float %i.mw, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.121086.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 64
  store float %.0419, ptr %.sroa.121086.0..sroa_idx, align 8
  %.sroa.131087.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 68
  store float %.0420, ptr %.sroa.131087.0..sroa_idx, align 4
  %.sroa.141088.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 72
  store i32 %i.mo, ptr %.sroa.141088.0..sroa_idx, align 8
  %.sroa.151089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.151089.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.mg, i64 12, i1 false)
  %.sroa.161090.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 88
  store <2 x float> %.sroa.0259.0, ptr %.sroa.161090.0..sroa_idx, align 8
  %.sroa.181091.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 96
  store float %.sroa.17.0, ptr %.sroa.181091.0..sroa_idx, align 8
  %.sroa.201092.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 100
  store <2 x float> %i.me, ptr %.sroa.201092.0..sroa_idx, align 4
  %.sroa.221093.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 108
  store float %.sroa.2178.0.copyload, ptr %.sroa.221093.0..sroa_idx, align 4
  call void @_ZNK4pbrt17ConductorMaterial7GetBxDFINS_21BasicTextureEvaluatorEEENS_13ConductorBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::ConductorBxDF") align 4 %19, ptr noundef nonnull align 8 dereferenceable(57) %i.mp, ptr noundef nonnull byval(%"struct.pbrt::MaterialEvalContext") align 8 %20, ptr noundef nonnull align 4 dereferenceable(32) %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.mx = ptrtoint ptr %19 to i64
  %i.my = or i64 %i.mx, 1297036692682702848
  store i64 %i.my, ptr %21, align 8, !tbaa !212
  %i.mz = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  %i.na = fmul <2 x float> %i.me, %i.me           ; 2 uses
  %shift1218 = shufflevector <2 x float> %i.na, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1219 = fadd <2 x float> %i.na, %shift1218
  %i.nb = extractelement <2 x float> %foldExtExtBinop1219, i64 0
  %i.nc = fmul float %.sroa.2178.0.copyload, %.sroa.2178.0.copyload
  %i.nd = fadd float %i.nc, %i.nb
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.nd) ; 2 uses
  %i.ne = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.nf = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ng = fdiv <2 x float> %i.me, %i.nf           ; 4 uses
  %i.nh = fdiv float %.sroa.2178.0.copyload, %sqrt.i.i.i ; 3 uses
  %.sroa.01.0.vec.extract.i.i568 = extractelement <2 x float> %.sroa.0259.0, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.i569 = extractelement <2 x float> %.sroa.0259.0, i64 1 ; 4 uses
  %i.ni = extractelement <2 x float> %i.ng, i64 1 ; 2 uses
  %i.nj = fmul float %.sroa.17.0, %i.ni           ; 2 uses
  %i.nk = fneg float %i.nj
  %i.nl = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.nh, float %i.nk)
  %i.nm = fneg float %.sroa.17.0
  %i.nn = call noundef float @llvm.fma.f32(float %i.nm, float %i.ni, float %i.nj)
  %i.no = fadd float %i.nl, %i.nn
  %i.np = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nq = insertelement <2 x float> %i.np, float %i.nh, i64 0 ; 2 uses
  %i.nr = fmul <2 x float> %.sroa.0259.0, %i.nq   ; 2 uses
  %i.ns = fneg <2 x float> %i.nr
  %i.nt = shufflevector <2 x float> %.sroa.0259.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nu = insertelement <2 x float> %i.nt, float %.sroa.17.0, i64 0
  %i.nv = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.nu, <2 x float> %i.ng, <2 x float> %i.ns)
  %i.nw = fneg <2 x float> %.sroa.0259.0
  %i.nx = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.nw, <2 x float> %i.nq, <2 x float> %i.nr)
  %i.ny = fadd <2 x float> %i.nv, %i.nx           ; 2 uses
  %.sroa.0.0.vec.insert.i.i23.i = insertelement <2 x float> poison, float %i.no, i64 0
  %i.nz = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i23.i, <2 x float> %i.ny, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.ng, ptr %i.mz, align 8, !alias.scope !1261
  %.sroa.210.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store float %i.nh, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !alias.scope !1261
  %i.oa = getelementptr inbounds nuw i8, ptr %21, i64 20 ; 5 uses
  store <2 x float> %i.nz, ptr %i.oa, align 4, !alias.scope !1261
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 28 ; 2 uses
  %i.ob = extractelement <2 x float> %i.ny, i64 1
  store float %i.ob, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !alias.scope !1261
  %i.oc = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 5 uses
  store <2 x float> %.sroa.0259.0, ptr %i.oc, align 8, !alias.scope !1261
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 5 uses
  store float %.sroa.17.0, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !alias.scope !1261
  %i.od = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.oe = load float, ptr %i.od, align 4, !tbaa !155
  %i.of = fcmp oeq float %i.oe, 0.000000e+00
  %i.og = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.oh = load float, ptr %i.og, align 8
  %i.oi = fcmp oeq float %i.oh, 0.000000e+00
  %or.cond.i = select i1 %i.of, i1 %i.oi, i1 false
  %i.oj = getelementptr inbounds nuw i8, ptr %18, i64 28
  %i.ok = load float, ptr %i.oj, align 4
  %i.ol = fcmp oeq float %i.ok, 0.000000e+00
  %or.cond13.i = select i1 %or.cond.i, i1 %i.ol, i1 false
  br i1 %or.cond13.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.on = load i32, ptr %i.om, align 4, !tbaa !401
  %i.oo = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.op = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.oq = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !151
  %i.os = sext i32 %i.on to i64                   ; 2 uses
  %i.ot = getelementptr inbounds [16 x i8], ptr %i.or, i64 %i.os ; 2 uses
  %i.ou = load <4 x float>, ptr %18, align 16
  %.sroa.03.4.vec.insert.i = shufflevector <4 x float> %i.ou, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ov = load <4 x float>, ptr %i.oo, align 8
  %.sroa.35.12.vec.insert.i = shufflevector <4 x float> %i.ov, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.ot, align 16
  %.sroa.2.0..0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i, ptr %.sroa.2.0..0..sroa_idx.i.i, align 8, !tbaa !71
  %i.ow = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !152
  %i.oy = getelementptr inbounds [16 x i8], ptr %i.ox, i64 %i.os ; 2 uses
  %i.oz = load <4 x float>, ptr %i.op, align 16   ; 2 uses
  %.sroa.0.4.vec.insert.i572 = shufflevector <4 x float> %i.oz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i = shufflevector <4 x float> %i.oz, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i572, ptr %i.oy, align 16
  %.sroa.2.0..0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.2.0..0..sroa_idx.i28.i, align 8, !tbaa !71
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.pb = load i8, ptr %i.pa, align 8, !tbaa !213, !range !11, !noundef !12
  %i.pc = trunc nuw i8 %i.pb to i1
  br i1 %i.pc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !397
  %.not449 = icmp eq i32 %i.pe, 0
  br i1 %.not449, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.pf = load i64, ptr %21, align 8, !tbaa !212  ; 2 uses
  %i.pg = and i64 %i.pf, 144115188075855871
  %i.ph = inttoptr i64 %i.pg to ptr
  %i.pi = lshr i64 %i.pf, 57
  %i.pj = trunc nuw nsw i64 %i.pi to i32
  %i.pk = add nsw i32 %i.pj, -1
  call void @_ZN4pbrt6detail8DispatchIRZNS_4BxDF10RegularizeEvEUlT_E_vNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef %i.ph, i32 noundef %i.pk)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !391
  %i.pn = icmp eq i32 %i.pm, 0
  br i1 %i.pn, label %bb.o, label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.po = load i8, ptr %i.g, align 8, !tbaa !214, !range !11, !noundef !12
  %i.pp = trunc nuw i8 %i.po to i1
  br i1 %i.pp, label %bb.p, label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  %i.pq = getelementptr inbounds nuw i8, ptr %22, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.pq, i8 0, i64 184, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %i.mi, i64 24, i1 false)
  %i.pr = getelementptr inbounds nuw i8, ptr %22, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pr, ptr noundef nonnull align 8 dereferenceable(12) %i.mh, i64 12, i1 false)
  %i.ps = getelementptr inbounds nuw i8, ptr %22, i64 128
  store <2 x float> %.sroa.0259.0, ptr %i.ps, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %22, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %22, i64 52
  %i.pu = load i64, ptr %i.ml, align 8
  store i64 %i.pu, ptr %i.pt, align 4
  %i.pv = getelementptr inbounds nuw i8, ptr %22, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pv, ptr noundef nonnull align 4 dereferenceable(12) %i.mg, i64 12, i1 false)
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.px = load float, ptr %i.pw, align 4, !tbaa !395
  %i.py = getelementptr inbounds nuw i8, ptr %22, i64 24
  store float %i.px, ptr %i.py, align 8, !tbaa !217
  %i.pz = getelementptr inbounds nuw i8, ptr %22, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pz, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %i.qa = getelementptr inbounds nuw i8, ptr %22, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qa, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %23, align 16, !tbaa !155
  %i.qb = getelementptr inbounds nuw i8, ptr %23, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.qb, align 16, !tbaa !155
  %i.qc = getelementptr inbounds nuw i8, ptr %23, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qc, align 16, !tbaa !155
  %i.qd = getelementptr inbounds nuw i8, ptr %23, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qd, align 16, !tbaa !155
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.pv, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.mz, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.oa, align 4 ; 2 uses
  %i.qe = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qf = shufflevector <4 x float> %i.qe, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qg = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qh = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.qi = fmul <2 x float> %i.qg, %i.qh
  %i.qj = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.qk = fmul <2 x float> %.sroa.0162.0.copyload, %i.qj
  %i.ql = fadd <2 x float> %i.qi, %i.qk
  %i.qm = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.qn = shufflevector <2 x float> %i.qm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qo = fmul <2 x float> %i.qn, %i.qf
  %i.qp = fadd <2 x float> %i.qo, %i.ql
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.oc, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.qq = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1221 = shufflevector <2 x float> %i.qq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1222 = fadd <2 x float> %i.qq, %shift1221
  %i.qr = extractelement <2 x float> %foldExtExtBinop1222, i64 0
  %i.qs = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.qt = fadd float %i.qs, %i.qr
  %i.qu = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %21, <2 x float> %i.qp, float %i.qt, ptr nonnull %i.e, i64 16, ptr nonnull %23, i64 16) ; 2 uses
  %i.qv = extractvalue { <2 x float>, <2 x float> } %i.qu, 0
  %i.qw = extractvalue { <2 x float>, <2 x float> } %i.qu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %24, ptr noundef nonnull align 8 dereferenceable(248) %22, <2 x float> %i.qv, <2 x float> %i.qw, ptr noundef nonnull align 4 dereferenceable(32) %18)
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !401
  %i.qz = getelementptr inbounds nuw i8, ptr %24, i64 88
  %i.ra = load i8, ptr %i.qz, align 4, !tbaa !219, !range !11, !noundef !12
  %i.rb = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !220
  %i.rd = sext i32 %i.qy to i64                   ; 20 uses
  %i.re = getelementptr inbounds i8, ptr %i.rc, i64 %i.rd
  store i8 %i.ra, ptr %i.re, align 1, !tbaa !10
  %i.rf = load float, ptr %24, align 4, !tbaa !221
  %i.rg = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !222
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %i.rd
  store float %i.rf, ptr %i.ri, align 4, !tbaa !155
  %i.rj = getelementptr inbounds nuw i8, ptr %24, i64 4
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !223
  %i.rl = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !224
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.rm, i64 %i.rd
  store float %i.rk, ptr %i.rn, align 4, !tbaa !155
  %i.ro = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !225
  %i.rq = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !226
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %i.rd
  store float %i.rp, ptr %i.rs, align 4, !tbaa !155
  %i.rt = getelementptr inbounds nuw i8, ptr %24, i64 12
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !227
  %i.rv = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !157
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.rw, i64 %i.rd
  store float %i.ru, ptr %i.rx, align 4, !tbaa !155
  %i.ry = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !228
  %i.sa = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !158
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.rd
  store float %i.rz, ptr %i.sc, align 4, !tbaa !155
  %i.sd = getelementptr inbounds nuw i8, ptr %24, i64 20
  %i.se = load float, ptr %i.sd, align 4, !tbaa !229
  %i.sf = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !159
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.rd
  store float %i.se, ptr %i.sh, align 4, !tbaa !155
  %i.si = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.sj = load float, ptr %i.si, align 4, !tbaa !227
  %i.sk = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !157
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.rd
  store float %i.sj, ptr %i.sm, align 4, !tbaa !155
  %i.sn = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.so = load float, ptr %i.sn, align 4, !tbaa !228
  %i.sp = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !158
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %i.rd
  store float %i.so, ptr %i.sr, align 4, !tbaa !155
  %i.ss = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.st = load float, ptr %i.ss, align 4, !tbaa !229
  %i.su = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !159
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.rd
  store float %i.st, ptr %i.sw, align 4, !tbaa !155
  %i.sx = getelementptr inbounds nuw i8, ptr %24, i64 36
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !230
  %i.sz = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !163
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.rd
  store float %i.sy, ptr %i.tb, align 4, !tbaa !155
  %i.tc = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.td = load float, ptr %i.tc, align 4, !tbaa !231
  %i.te = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !164
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.rd
  store float %i.td, ptr %i.tg, align 4, !tbaa !155
  %i.th = getelementptr inbounds nuw i8, ptr %24, i64 44
  %i.ti = load float, ptr %i.th, align 4, !tbaa !232
  %i.tj = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !233
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.rd
  store float %i.ti, ptr %i.tl, align 4, !tbaa !155
  %i.tm = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !234
  %i.to = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !160
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.rd
  store float %i.tn, ptr %i.tq, align 4, !tbaa !155
  %i.tr = getelementptr inbounds nuw i8, ptr %24, i64 52
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !235
  %i.tt = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !161
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.rd
  store float %i.ts, ptr %i.tv, align 4, !tbaa !155
  %i.tw = getelementptr inbounds nuw i8, ptr %24, i64 56
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !181
  %i.ty = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !162
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.rd
  store float %i.tx, ptr %i.ua, align 4, !tbaa !155
  %i.ub = getelementptr inbounds nuw i8, ptr %24, i64 60
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !234
  %i.ud = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !160
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.rd
  store float %i.uc, ptr %i.uf, align 4, !tbaa !155
  %i.ug = getelementptr inbounds nuw i8, ptr %24, i64 64
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !235
  %i.ui = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !161
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.rd
  store float %i.uh, ptr %i.uk, align 4, !tbaa !155
  %i.ul = getelementptr inbounds nuw i8, ptr %24, i64 68
  %i.um = load float, ptr %i.ul, align 4, !tbaa !181
  %i.un = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !162
  %i.up = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.rd
  store float %i.um, ptr %i.up, align 4, !tbaa !155
  %i.uq = getelementptr inbounds nuw i8, ptr %24, i64 72
  %i.ur = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !153
  %i.ut = getelementptr inbounds [16 x i8], ptr %i.us, i64 %i.rd ; 2 uses
  %i.uu = load <4 x float>, ptr %i.uq, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.uu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.uu, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.ut, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.01059.0.copyload = load <2 x float>, ptr %i.mg, align 4 ; 14 uses
  %.sroa.121066.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121066.0.copyload = load float, ptr %.sroa.121066.0..sroa_idx, align 4 ; 8 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !401
  %i.uy = load ptr, ptr %i.uv, align 8, !tbaa !236, !noalias !1262
  %i.uz = sext i32 %i.ux to i64                   ; 2 uses
  %i.va = getelementptr inbounds [16 x i8], ptr %i.uy, i64 %i.uz ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vb = load <2 x float>, ptr %i.va, align 16, !noalias !1262
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !71, !noalias !1262
  %i.vc = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !237, !noalias !1262
  %i.ve = getelementptr inbounds [16 x i8], ptr %i.vd, i64 %i.uz ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.ve, align 16, !noalias !1262 ; 2 uses
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %.sroa.04.0.vec.extract.i.i.i.i589 = extractelement <2 x float> %.sroa.01059.0.copyload, i64 0
  %.sroa.05.0.copyload.i.i.i598 = load <2 x float>, ptr %i.oc, align 8, !noalias !1263
  %.sroa.26.0.copyload.i.i.i600 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1263
  %i.vf = fmul <2 x float> %.sroa.01059.0.copyload, %.sroa.05.0.copyload.i.i.i598 ; 2 uses
  %shift1224 = shufflevector <2 x float> %i.vf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1225 = fadd <2 x float> %i.vf, %shift1224
  %i.vg = extractelement <2 x float> %foldExtExtBinop1225, i64 0
  %i.vh = fmul float %.sroa.121066.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.vi = fadd float %i.vh, %i.vg                 ; 2 uses
  %i.vj = fcmp oeq float %i.vi, 0.000000e+00
  br i1 %i.vj, label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %.sroa.2.0.copyload.i931.i.i1176 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !1262
  %.sroa.021.0.copyload.i.i.i586 = load <2 x float>, ptr %i.mz, align 8, !noalias !1263 ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = load <2 x float>, ptr %i.oa, align 4, !noalias !1263 ; 2 uses
  %i.vk = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !1263
  %i.vl = shufflevector <4 x float> %i.vk, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.vm = insertelement <2 x float> poison, float %.sroa.121066.0.copyload, i64 0
  %i.vn = shufflevector <2 x float> %i.vm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vo = fmul <2 x float> %i.vn, %i.vl
  %i.vp = shufflevector <2 x float> %.sroa.01059.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vq = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.vr = fmul <2 x float> %i.vp, %i.vq
  %i.vs = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.vt = fmul <2 x float> %.sroa.01059.0.copyload, %i.vs
  %i.vu = fadd <2 x float> %i.vr, %i.vt
  %i.vv = fadd <2 x float> %i.vo, %i.vu
  %i.vw = load i64, ptr %21, align 8, !tbaa !212, !noalias !1263
  %i.vx = and i64 %i.vw, 144115188075855871
  %i.vy = inttoptr i64 %i.vx to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !1263
  call void @_ZNK4pbrt13ConductorBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %8, ptr noundef nonnull align 4 dereferenceable(40) %i.vy, <2 x float> %i.vv, float %i.vi, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1176, i32 noundef 0, i32 noundef 3), !noalias !1263
  %i.vz = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.wa = load i8, ptr %i.vz, align 4, !tbaa !239, !range !11, !noalias !1263, !noundef !12
  %i.wb = trunc nuw i8 %i.wa to i1
  br i1 %i.wb, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.q
  %i.wc = load <4 x float>, ptr %8, align 16, !noalias !1263
  %.fr = freeze <4 x float> %i.wc                 ; 2 uses
  %i.wd = fcmp une <4 x float> %.fr, zeroinitializer
  %i.we = bitcast <4 x i1> %i.wd to i4
  %i.wf = icmp eq i4 %i.we, 0
  %i.wg = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.wh = load float, ptr %i.wg, align 4, !noalias !1263 ; 3 uses
  %i.wi = fcmp oeq float %i.wh, 0.000000e+00
  %or.cond.i605 = select i1 %i.wf, i1 true, i1 %i.wi
  br i1 %or.cond.i605, label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.wj = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.wk = load float, ptr %i.wj, align 8, !tbaa !181, !noalias !1263 ; 3 uses
  %i.wl = fcmp oeq float %i.wk, 0.000000e+00
  br i1 %i.wl, label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %bb.r

_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit: ; preds = %bb.q, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1263
  br label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread

bb.r:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  %i.wm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.wm, align 16, !noalias !1263 ; 4 uses
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %.sroa.037.0.copyload.i.i = load <2 x float>, ptr %i.mz, align 8, !tbaa !155, !noalias !1263 ; 3 uses
  %.sroa.238.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !tbaa !155, !noalias !1263 ; 3 uses
  %i.wn = fmul float %.sroa.041.0.vec.extract.i.i, %.sroa.238.0.copyload.i.i
  %.sroa.041.4.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %.sroa.027.0.copyload.i.i = load <2 x float>, ptr %i.oa, align 4, !tbaa !155, !noalias !1263 ; 3 uses
  %.sroa.228.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !155, !noalias !1263 ; 3 uses
  %i.wo = fmul float %.sroa.041.4.vec.extract.i.i, %.sroa.228.0.copyload.i.i
  %i.wp = fadd float %i.wn, %i.wo
  %.sroa.011.0.copyload.i.i = load <2 x float>, ptr %i.oc, align 8, !tbaa !155, !noalias !1263 ; 3 uses
  %.sroa.212.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !155, !noalias !1263 ; 3 uses
  %i.wq = fmul float %i.wk, %.sroa.212.0.copyload.i.i
  %i.wr = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ws = fmul <2 x float> %i.wr, %.sroa.037.0.copyload.i.i
  %i.wt = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wu = fmul <2 x float> %i.wt, %.sroa.027.0.copyload.i.i
  %i.wv = fadd <2 x float> %i.ws, %i.wu
  %i.ww = insertelement <2 x float> poison, float %i.wk, i64 0
  %i.wx = shufflevector <2 x float> %i.ww, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wy = fmul <2 x float> %i.wx, %.sroa.011.0.copyload.i.i
  %i.wz = fadd <2 x float> %i.wv, %i.wy           ; 6 uses
  %i.xa = fadd float %i.wp, %i.wq                 ; 8 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 16 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 36
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.21.0.copyload = load i8, ptr %.sroa.21.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1263
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.xb, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !71
  %i.xc = fmul float %.sroa.17.0, %i.xa           ; 2 uses
  %i.xd = extractelement <2 x float> %i.wz, i64 1 ; 3 uses
  %i.xe = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.xd, float %i.xc)
  %i.xf = fneg float %i.xc
  %i.xg = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.xa, float %i.xf)
  %i.xh = fadd float %i.xe, %i.xg
  %i.xi = extractelement <2 x float> %i.wz, i64 0 ; 3 uses
  %i.xj = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.xi, float %i.xh)
  %i.xk = call noundef float @llvm.fabs.f32(float %i.xj)
  %i.xl = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.xm = fmul <4 x float> %.fr, %i.xl
  %i.xn = insertelement <4 x float> poison, float %i.xk, i64 0
  %i.xo = shufflevector <4 x float> %i.xn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xp = fmul <4 x float> %i.xo, %i.xm
  %i.xq = insertelement <4 x float> poison, float %i.wh, i64 0
  %i.xr = shufflevector <4 x float> %i.xq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xs = fdiv <4 x float> %i.xp, %i.xr           ; 7 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0958.0.copyload = load <4 x float>, ptr %i.xt, align 8, !tbaa !71 ; 6 uses
  %i.xu = trunc nuw i8 %.sroa.21.0.copyload to i1
  br i1 %i.xu, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, label %bb.aa

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640: ; preds = %bb.r
  %i.xv = fmul <2 x float> %.sroa.01059.0.copyload, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1227 = shufflevector <2 x float> %i.xv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1228 = fadd <2 x float> %i.xv, %shift1227
  %i.xw = extractelement <2 x float> %foldExtExtBinop1228, i64 0
  %i.xx = fmul float %.sroa.121066.0.copyload, %.sroa.212.0.copyload.i.i
  %i.xy = fadd float %i.xx, %i.xw                 ; 5 uses
  %i.xz = fcmp oeq float %i.xy, 0.000000e+00
  br i1 %i.xz, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640
  %i.ya = insertelement <2 x float> poison, float %i.xa, i64 0
  %i.yb = shufflevector <2 x float> %i.ya, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yc = insertelement <2 x float> poison, float %.sroa.228.0.copyload.i.i, i64 0
  %i.yd = insertelement <2 x float> %i.yc, float %.sroa.238.0.copyload.i.i, i64 1
  %i.ye = fmul <2 x float> %i.yb, %i.yd
  %i.yf = shufflevector <2 x float> %.sroa.037.0.copyload.i.i, <2 x float> %.sroa.027.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.yg = fmul <2 x float> %i.wz, %i.yf
  %i.yh = shufflevector <2 x float> %i.yg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yi = shufflevector <2 x float> %.sroa.027.0.copyload.i.i, <2 x float> %.sroa.037.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.yj = fmul <2 x float> %i.wz, %i.yi
  %i.yk = fadd <2 x float> %i.yj, %i.yh
  %i.yl = fadd <2 x float> %i.ye, %i.yk
  %i.ym = fmul float %i.xa, %.sroa.212.0.copyload.i.i
  %i.yn = fmul <2 x float> %i.wz, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1230 = shufflevector <2 x float> %i.yn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1231 = fadd <2 x float> %i.yn, %shift1230
  %i.yo = extractelement <2 x float> %foldExtExtBinop1231, i64 0
  %i.yp = fadd float %i.ym, %i.yo                 ; 2 uses
  %i.yq = insertelement <2 x float> poison, float %.sroa.238.0.copyload.i.i, i64 0
  %i.yr = insertelement <2 x float> %i.yq, float %.sroa.228.0.copyload.i.i, i64 1
  %i.ys = fmul <2 x float> %i.vn, %i.yr
  %i.yt = fmul <2 x float> %.sroa.01059.0.copyload, %i.yf
  %i.yu = fmul <2 x float> %.sroa.01059.0.copyload, %i.yi
  %i.yv = shufflevector <2 x float> %i.yu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yw = fadd <2 x float> %i.yv, %i.yt
  %i.yx = fadd <2 x float> %i.ys, %i.yw           ; 3 uses
  %i.yy = load i64, ptr %21, align 8, !tbaa !212
  %i.yz = and i64 %i.yy, 144115188075855871
  %i.za = inttoptr i64 %i.yz to ptr               ; 3 uses
  %i.zb = fmul float %i.xy, %i.yp
  %i.zc = fcmp ogt float %i.zb, 0.000000e+00
  br i1 %i.zc, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.zd = getelementptr inbounds nuw i8, ptr %i.za, i64 4
  %i.ze = load float, ptr %i.za, align 4, !tbaa !155 ; 2 uses
  %i.zf = load float, ptr %i.zd, align 4, !tbaa !155 ; 2 uses
  %i.zg = fcmp olt float %i.ze, %i.zf
  %i.zh = select i1 %i.zg, float %i.zf, float %i.ze
  %i.zi = fcmp olt float %i.zh, 1.000000e-03
  br i1 %i.zi, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.zj = shufflevector <2 x float> %i.yx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.zk = fadd <2 x float> %i.zj, %i.yl           ; 3 uses
  %i.zl = fadd float %i.xy, %i.yp                 ; 3 uses
  %i.zm = load atomic i8, ptr @_ZGVZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg acquire, align 8
  %i.zn = icmp eq i8 %i.zm, 0
  br i1 %i.zn, label %bb.v, label %bb.y, !prof !371

bb.v:                                             ; preds = %bb.u
  %i.zo = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg) #23
  %.not70.i = icmp eq i32 %i.zo, 0
  br i1 %.not70.i, label %bb.y, label %bb.w

end_hunk_0
begin_hunk_1_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_17ConductorMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_IS2_EENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSB_E_clESB_:bb.a
  %i.ago = getelementptr inbounds nuw i8, ptr %i.adi, i64 120
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !151
  %i.agq = getelementptr inbounds [16 x i8], ptr %i.agp, i64 %i.adq ; 2 uses
  %i.agr = load <4 x float>, ptr %18, align 16
  %.sroa.03.4.vec.insert.i.i745 = shufflevector <4 x float> %i.agr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ags = load <4 x float>, ptr %i.agm, align 8
  %.sroa.35.12.vec.insert.i.i746 = shufflevector <4 x float> %i.ags, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i.i745, ptr %i.agq, align 16
  %.sroa.2.0..0..sroa_idx.i.i39.i = getelementptr inbounds nuw i8, ptr %i.agq, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i.i746, ptr %.sroa.2.0..0..sroa_idx.i.i39.i, align 8, !tbaa !71
  %i.agt = getelementptr inbounds nuw i8, ptr %i.adi, i64 128
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !152
  %i.agv = getelementptr inbounds [16 x i8], ptr %i.agu, i64 %i.adq ; 2 uses
  %i.agw = load <4 x float>, ptr %i.agn, align 16 ; 2 uses
  %.sroa.0.4.vec.insert.i40.i = shufflevector <4 x float> %i.agw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i41.i = shufflevector <4 x float> %i.agw, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i40.i, ptr %i.agv, align 16
  %.sroa.2.0..0..sroa_idx.i28.i.i747 = getelementptr inbounds nuw i8, ptr %i.agv, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i41.i, ptr %.sroa.2.0..0..sroa_idx.i28.i.i747, align 8, !tbaa !71
  %i.agx = getelementptr inbounds nuw i8, ptr %i.adi, i64 392
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !253
  %i.agz = getelementptr inbounds [4 x i8], ptr %i.agy, i64 %i.adq
  store i32 %i.adg, ptr %i.agz, align 4, !tbaa !166
  %.lobit = lshr exact i32 %i.adb, 4
  %i.aha = getelementptr inbounds nuw i8, ptr %i.adi, i64 384
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !254
  %i.ahc = getelementptr inbounds [4 x i8], ptr %i.ahb, i64 %i.adq
  store i32 %.lobit, ptr %i.ahc, align 4, !tbaa !166
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.adi, i64 376
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !255
  %i.ahf = getelementptr inbounds [4 x i8], ptr %i.ahe, i64 %i.adq
  store float %.0443, ptr %i.ahf, align 4, !tbaa !155
  br label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread

_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread: ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit, %bb.ae, %bb.ai, %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ahg = load i64, ptr %21, align 8, !tbaa !212 ; 2 uses
  %i.ahh = and i64 %i.ahg, 144115188075855871
  %i.ahi = inttoptr i64 %i.ahh to ptr
  %i.ahj = lshr i64 %i.ahg, 57
  %i.ahk = trunc nuw nsw i64 %i.ahj to i32
  %i.ahl = add nsw i32 %i.ahk, -1
  %i.ahm = call noundef i32 @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF5FlagsEvEUlT_E_NS_9BxDFFlagsENS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS3_PKvi(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %i.ahi, i32 noundef %i.ahl) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ahn = and i32 %i.ahm, 12
  %.not1179 = icmp eq i32 %i.ahn, 0
  br i1 %.not1179, label %bb.bo, label %bb.aj

bb.aj:                                            ; preds = %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %i.mi, i64 24, i1 false)
  %.sroa.081.0.copyload = load <2 x float>, ptr %i.mh, align 8 ; 3 uses
  %.sroa.282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.282.0.copyload = load float, ptr %.sroa.282.0..sroa_idx, align 8 ; 3 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %25, i64 24
  store <2 x float> %.sroa.081.0.copyload, ptr %i.aho, align 8
  %.sroa.26.0..sroa_idx.i749 = getelementptr inbounds nuw i8, ptr %25, i64 32
  store float %.sroa.282.0.copyload, ptr %.sroa.26.0..sroa_idx.i749, align 8
  %i.ahp = getelementptr inbounds nuw i8, ptr %25, i64 36
  store <2 x float> %.sroa.0259.0, ptr %i.ahp, align 4
  %.sroa.22.0..sroa_idx.i750 = getelementptr inbounds nuw i8, ptr %25, i64 44
  store float %.sroa.17.0, ptr %.sroa.22.0..sroa_idx.i750, align 4
  %i.ahq = trunc i32 %i.ahm to i1
  br i1 %i.ahq, label %bb.ak, label %.thread1172

bb.ak:                                            ; preds = %bb.aj
  %i.ahr = and i32 %i.ahm, 2
  %.not1180 = icmp eq i32 %i.ahr, 0
  br i1 %.not1180, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.ahs = invoke { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mi, <2 x float> %.sroa.081.0.copyload, float %.sroa.282.0.copyload, <2 x float> %.sroa.01059.0.copyload, float %.sroa.121066.0.copyload)
          to label %.thread1172.sink.split unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.aht = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.an:                                            ; preds = %bb.ak
  %i.ahu = fneg float %.sroa.04.0.vec.extract.i.i.i.i589
  %i.ahv = fneg float %.sroa.121066.0.copyload
  %i.ahw = fneg <2 x float> %.sroa.01059.0.copyload
  %.sroa.0.4.vec.insert.i754 = insertelement <2 x float> %i.ahw, float %i.ahu, i64 0
  %i.ahx = invoke { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mi, <2 x float> %.sroa.081.0.copyload, float %.sroa.282.0.copyload, <2 x float> %.sroa.0.4.vec.insert.i754, float %i.ahv)
          to label %.thread1172.sink.split unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ahy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.thread1172.sink.split:                           ; preds = %bb.an, %bb.al
  %.sink1204 = phi { <2 x float>, float } [ %i.ahs, %bb.al ], [ %i.ahx, %bb.an ] ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %.sink1204, 0 ; 2 uses
  %.fca.1.extract = extractvalue { <2 x float>, float } %.sink1204, 1
  %.sroa.07.4.vec.insert.i758 = shufflevector <2 x float> %.fca.0.extract, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.05.4.vec.insert.i760 = shufflevector <2 x float> %.fca.0.extract, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.0.vec.insert.i761 = insertelement <2 x float> poison, float %.fca.1.extract, i64 0
  %.sroa.0.4.vec.insert.i762 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i761, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i758, ptr %25, align 8
  %.sroa.5902.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i760, ptr %.sroa.5902.0..sroa_idx, align 8
  %.sroa.6903.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i762, ptr %.sroa.6903.0..sroa_idx, align 8
  br label %.thread1172

.thread1172:                                      ; preds = %.thread1172.sink.split, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store float %.sroa.54.8.vec.extract.i.i, ptr %i.b, align 4, !tbaa !155, !noalias !1264
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !1264
  store ptr %25, ptr %6, align 8, !tbaa !257, !noalias !1264
  %i.aia = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.b, ptr %i.aia, align 8, !tbaa !258, !noalias !1264
  %i.aib = load i64, ptr %i.ahz, align 8, !tbaa !259, !noalias !1265 ; 2 uses
  %i.aic = and i64 %i.aib, 144115188075855871
  %i.aid = inttoptr i64 %i.aic to ptr
  %i.aie = lshr i64 %i.aib, 57
  %i.aif = trunc nuw nsw i64 %i.aie to i32
  %i.aig = add nsw i32 %i.aif, -1
  invoke void @_ZN4pbrt6detail8DispatchIRZNKS_12LightSampler6SampleERKNS_18LightSampleContextEfEUlT_E_N4pstd8optionalINS_12SampledLightEEENS_19UniformLightSamplerENS_17PowerLightSamplerENS_22ExhaustiveLightSamplerENS_15BVHLightSamplerEEET0_OS6_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.114") align 8 %26, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.aid, i32 noundef %i.aig)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %.thread1172
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !1264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aih = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.aii = load i8, ptr %i.aih, align 8, !tbaa !261, !range !11, !noundef !12
  %i.aij = trunc nuw i8 %i.aii to i1
  br i1 %i.aij, label %_ZN4pstd8optionalIN4pbrt12SampledLightEEptEv.exit, label %.sink.split

bb.aq:                                            ; preds = %.thread1172
  %i.aik = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

_ZN4pstd8optionalIN4pbrt12SampledLightEEptEv.exit: ; preds = %bb.ap
  %i.ail = load i64, ptr %26, align 8, !tbaa !263 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %25, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 16 dereferenceable(32) %18, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x float> %i.vb, ptr %2, align 8, !noalias !1266
  store i8 1, ptr %i.a, align 1, !tbaa !10, !noalias !1266
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !1266
  store ptr %5, ptr %3, align 8, !tbaa !257, !noalias !1266
  %i.aim = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.aim, align 8, !tbaa !265, !noalias !1266
  %i.ain = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %4, ptr %i.ain, align 8, !tbaa !267, !noalias !1266
  %i.aio = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.a, ptr %i.aio, align 8, !tbaa !268, !noalias !1266
  %i.aip = and i64 %i.ail, 144115188075855871
  %i.aiq = inttoptr i64 %i.aip to ptr             ; 2 uses
  %i.air = lshr i64 %i.ail, 57
  %i.ais = trunc nuw nsw i64 %i.air to i32
  %i.ait = add nsw i32 %i.ais, -1
  invoke void @_ZN4pbrt6detail8DispatchIRZNKS_5Light8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEbEUlT_E_N4pstd8optionalINS_13LightLiSampleEEENS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightEJNS_24PortalImageInfiniteLightEEvEET0_OS7_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.117") align 8 %27, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.aiq, i32 noundef %i.ait)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %_ZN4pstd8optionalIN4pbrt12SampledLightEEptEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1266
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aiu = getelementptr inbounds nuw i8, ptr %27, i64 112 ; 3 uses
  %i.aiv = load i8, ptr %i.aiu, align 16, !tbaa !270, !range !11, !noundef !12
  %i.aiw = trunc nuw i8 %i.aiv to i1
  br i1 %i.aiw, label %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit, label %bb.bk

_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit: ; preds = %bb.ar
  %i.aix = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.aiy = load <4 x float>, ptr %27, align 16
  %.fr1263 = freeze <4 x float> %i.aiy
  %i.aiz = fcmp une <4 x float> %.fr1263, zeroinitializer
  %i.aja = bitcast <4 x i1> %i.aiz to i4
  %.not1264 = icmp eq i4 %i.aja, 0
  br i1 %.not1264, label %bb.bk, label %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit771

_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit771: ; preds = %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit
  %i.ajb = getelementptr inbounds nuw i8, ptr %27, i64 28 ; 2 uses
  %i.ajc = load float, ptr %i.ajb, align 4, !tbaa !272
  %i.ajd = fcmp oeq float %i.ajc, 0.000000e+00
  br i1 %i.ajd, label %bb.bk, label %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit773

bb.as:                                            ; preds = %_ZN4pstd8optionalIN4pbrt12SampledLightEEptEv.exit
  %i.aje = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit773: ; preds = %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit771
  %i.ajf = getelementptr inbounds nuw i8, ptr %27, i64 16
  %.sroa.045.0.copyload = load <2 x float>, ptr %i.ajf, align 16 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 24
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.sroa.05.0.copyload.i.i.i774 = load <2 x float>, ptr %i.oc, align 8 ; 4 uses
  %.sroa.26.0.copyload.i.i.i776 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %foldExtExtBinop1248 = fmul <2 x float> %.sroa.01059.0.copyload, %.sroa.05.0.copyload.i.i.i774
  %foldExtExtBinop1250 = fmul <2 x float> %.sroa.01059.0.copyload, %.sroa.05.0.copyload.i.i.i774
  %shift1252 = shufflevector <2 x float> %foldExtExtBinop1250, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1253 = fadd <2 x float> %foldExtExtBinop1248, %shift1252
  %i.ajg = extractelement <2 x float> %foldExtExtBinop1253, i64 0
  %i.ajh = fmul float %.sroa.121066.0.copyload, %.sroa.26.0.copyload.i.i.i776
  %i.aji = fadd float %i.ajh, %i.ajg              ; 2 uses
  %i.ajj = fcmp oeq float %i.aji, 0.000000e+00
  br i1 %i.ajj, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit773
  %.sroa.021.0.copyload.i.i.i781 = load <2 x float>, ptr %i.mz, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i786 = load <2 x float>, ptr %i.oa, align 4 ; 2 uses
  %i.ajk = shufflevector <2 x float> %.sroa.01059.0.copyload, <2 x float> %.sroa.045.0.copyload, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ajl = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i781, <2 x float> %.sroa.013.0.copyload.i.i.i786, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.ajm = fmul <4 x float> %i.ajk, %i.ajl
  %i.ajn = shufflevector <2 x float> %.sroa.01059.0.copyload, <2 x float> %.sroa.045.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ajo = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i781, <2 x float> %.sroa.013.0.copyload.i.i.i786, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.ajp = fmul <4 x float> %i.ajn, %i.ajo
  %i.ajq = fadd <4 x float> %i.ajm, %i.ajp
  %30 = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %31 = insertelement <4 x float> poison, float %.sroa.121066.0.copyload, i64 0
  %32 = insertelement <4 x float> %31, float %.sroa.7.0.copyload, i64 1
  %33 = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %34 = shufflevector <4 x float> %30, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %35 = fmul <4 x float> %33, %34
  %36 = fadd <4 x float> %35, %i.ajq              ; 2 uses
  %37 = shufflevector <4 x float> %36, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %38 = shufflevector <4 x float> %36, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ajr = fmul float %.sroa.7.0.copyload, %.sroa.26.0.copyload.i.i.i776
  %foldExtExtBinop1255 = fmul <2 x float> %.sroa.045.0.copyload, %.sroa.05.0.copyload.i.i.i774
  %foldExtExtBinop1257 = fmul <2 x float> %.sroa.045.0.copyload, %.sroa.05.0.copyload.i.i.i774
  %shift1259 = shufflevector <2 x float> %foldExtExtBinop1257, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1260 = fadd <2 x float> %foldExtExtBinop1255, %shift1259
  %i.ajs = extractelement <2 x float> %foldExtExtBinop1260, i64 0
  %i.ajt = fadd float %i.ajr, %i.ajs
  %i.aju = load i64, ptr %21, align 8, !tbaa !212
  %i.ajv = and i64 %i.aju, 144115188075855871
  %i.ajw = inttoptr i64 %i.ajv to ptr
  %i.ajx = invoke { <2 x float>, <2 x float> } @_ZNK4pbrt13ConductorBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE(ptr noundef nonnull align 4 dereferenceable(40) %i.ajw, <2 x float> %37, float %i.aji, <2 x float> %38, float %i.ajt, i32 noundef 0)
          to label %.noexc795 unwind label %bb.av ; 2 uses

.noexc795:                                        ; preds = %bb.at
  %i.ajy = extractvalue { <2 x float>, <2 x float> } %i.ajx, 0
  %i.ajz = extractvalue { <2 x float>, <2 x float> } %i.ajx, 1
  br label %bb.au

bb.au:                                            ; preds = %.noexc795, %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit773
  %.sroa.4.0.i = phi <2 x float> [ %i.ajz, %.noexc795 ], [ zeroinitializer, %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit773 ] ; 2 uses
  %.sroa.0.0.i = phi <2 x float> [ %i.ajy, %.noexc795 ], [ zeroinitializer, %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit773 ] ; 2 uses
  %i.aka = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> %.sroa.4.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr1265 = freeze <4 x float> %i.aka
  %i.akb = fcmp une <4 x float> %.fr1265, zeroinitializer
  %i.akc = bitcast <4 x i1> %i.akb to i4
  %.not1266 = icmp eq i4 %i.akc, 0
  br i1 %.not1266, label %bb.bk, label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.akd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.aw:                                            ; preds = %bb.au
  %i.ake = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i799 = load <2 x float>, ptr %i.ake, align 8
  %.sroa.8.0..sroa_idx.i800 = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i801 = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i800, align 8, !tbaa !71
  %i.akf = fmul <2 x float> %.sroa.0.0.i, %.sroa.0.0.copyload4.i799
  %i.akg = fmul <2 x float> %.sroa.4.0.i, %.sroa.8.0.copyload.i801
  %.sroa.04.0.vec.extract.i.i813 = extractelement <2 x float> %.sroa.045.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i.i815 = extractelement <2 x float> %.sroa.045.0.copyload, i64 1
  %i.akh = fmul float %.sroa.17.0, %.sroa.7.0.copyload ; 2 uses
  %i.aki = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %.sroa.04.4.vec.extract.i.i815, float %i.akh)
  %i.akj = fneg float %i.akh
  %i.akk = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.7.0.copyload, float %i.akj)
  %i.akl = fadd float %i.aki, %i.akk
  %i.akm = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %.sroa.04.0.vec.extract.i.i813, float %i.akl)
  %i.akn = call noundef float @llvm.fabs.f32(float %i.akm)
  %i.ako = insertelement <2 x float> poison, float %i.akn, i64 0
  %i.akp = shufflevector <2 x float> %i.ako, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.akq = fmul <2 x float> %i.akp, %i.akf
  %i.akr = fmul <2 x float> %i.akp, %i.akg
  %i.aks = load i8, ptr %i.aiu, align 16, !tbaa !270, !range !11, !noundef !12
  %i.akt = trunc nuw i8 %i.aks to i1
  %i.aku = load i8, ptr %i.aih, align 8, !range !11
  %i.akv = trunc nuw i8 %i.aku to i1
  %or.cond = select i1 %i.akt, i1 %i.akv, i1 false
  br i1 %or.cond, label %bb.ax, label %.invoke

.invoke:                                          ; preds = %bb.aw
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
          to label %.cont unwind label %bb.be

.cont:                                            ; preds = %.invoke
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.akw = load float, ptr %i.ajb, align 4, !tbaa !272
  %i.akx = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.aky = load float, ptr %i.akx, align 8, !tbaa !275
  %i.akz = fmul float %i.akw, %i.aky
  %i.ala = load i32, ptr %i.aiq, align 8, !tbaa !278
  %i.alb = icmp ult i32 %i.ala, 2
  br i1 %i.alb, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.alc = invoke noundef float @_ZNK4pbrt4BSDF3PDFINS_13ConductorBxDFEEEfNS_7Vector3IfEES4_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 8 dereferenceable(44) %21, <2 x float> %.sroa.01059.0.copyload, float %.sroa.121066.0.copyload, <2 x float> %.sroa.045.0.copyload, float %.sroa.7.0.copyload, i32 noundef 0, i32 noundef 3)
          to label %._crit_edge1183 unwind label %bb.bf

._crit_edge1183:                                  ; preds = %bb.ay
  %.pre = load i8, ptr %i.aiu, align 16, !tbaa !270, !range !11
  %i.ald = trunc nuw i8 %.pre to i1
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge1183, %bb.ax
  %i.ale = phi i1 [ true, %bb.ax ], [ %i.ald, %._crit_edge1183 ]
  %i.alf = phi float [ 0.000000e+00, %bb.ax ], [ %i.alc, %._crit_edge1183 ]
  %i.alg = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0.0.copyload.i833 = load <2 x float>, ptr %i.alg, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i834 = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.sroa.6.0.copyload.i835 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i834, align 8, !tbaa !71 ; 2 uses
  %i.alh = insertelement <2 x float> poison, float %i.alf, i64 0
  %i.ali = shufflevector <2 x float> %i.alh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.alj = fmul <2 x float> %i.ali, %.sroa.0.0.copyload.i833
  %i.alk = fmul <2 x float> %i.ali, %.sroa.6.0.copyload.i835
  %i.all = insertelement <2 x float> poison, float %i.akz, i64 0
  %i.alm = shufflevector <2 x float> %i.all, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aln = fmul <2 x float> %i.alm, %.sroa.0.0.copyload.i833
  %i.alo = fmul <2 x float> %i.alm, %.sroa.6.0.copyload.i835
  br i1 %i.ale, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
          to label %.noexc859 unwind label %bb.bg

.noexc859:                                        ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.alp = load <2 x float>, ptr %27, align 16, !tbaa !155
  %i.alq = fmul <2 x float> %i.akq, %i.alp
  %i.alr = load <2 x float>, ptr %i.aix, align 8, !tbaa !155
  %i.als = fmul <2 x float> %i.akr, %i.alr
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.mh, align 8
  %.sroa.214.0.copyload = load float, ptr %.sroa.282.0..sroa_idx, align 8
  %i.alt = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.alu = load float, ptr %i.alt, align 4, !tbaa !395
  %i.alv = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.alw = getelementptr inbounds nuw i8, ptr %27, i64 72
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.alw, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 80
  %.sroa.212.0.copyload = load float, ptr %.sroa.212.0..sroa_idx, align 16
  invoke void @_ZN4pbrt10SpawnRayToENS_8Point3fiENS_7Normal3IfEEfS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Ray") align 8 %28, ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mi, <2 x float> %.sroa.013.0.copyload, float %.sroa.214.0.copyload, float noundef %i.alu, ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.alv, <2 x float> %.sroa.011.0.copyload, float %.sroa.212.0.copyload)
          to label %bb.bc unwind label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.alx = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.aly = load i8, ptr %i.alx, align 2, !tbaa !245, !range !11, !noundef !12
  %i.alz = trunc nuw i8 %i.aly to i1
  br i1 %i.alz, label %bb.bd, label %._crit_edge1184

._crit_edge1184:                                  ; preds = %bb.bc
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %28, i64 32
  %.pre1185 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !177
  br label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.ama = getelementptr inbounds nuw i8, ptr %28, i64 12
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.ama, align 4 ; 2 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 20
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4 ; 2 uses
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.mh, align 8 ; 2 uses
  %.sroa.24.0.copyload = load float, ptr %.sroa.282.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i878 = extractelement <2 x float> %.sroa.03.0.copyload, i64 0
  %.sroa.04.0.vec.extract.i879 = extractelement <2 x float> %.sroa.05.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i880 = extractelement <2 x float> %.sroa.03.0.copyload, i64 1
  %.sroa.04.4.vec.extract.i881 = extractelement <2 x float> %.sroa.05.0.copyload, i64 1
  %i.amb = fmul float %.sroa.26.0.copyload, %.sroa.24.0.copyload ; 2 uses
  %i.amc = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i880, float %.sroa.04.4.vec.extract.i881, float %i.amb)
  %i.amd = fneg float %i.amb
  %i.ame = call noundef float @llvm.fma.f32(float %.sroa.24.0.copyload, float %.sroa.26.0.copyload, float %i.amd)
  %i.amf = fadd float %i.amc, %i.ame
  %i.amg = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i878, float %.sroa.04.0.vec.extract.i879, float %i.amf)
  %i.amh = fcmp ogt float %i.amg, 0.000000e+00
  %.v460 = select i1 %i.amh, i64 248, i64 240
  %i.ami = getelementptr inbounds nuw i8, ptr %1, i64 %.v460
  %i.amj = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.amk = load i64, ptr %i.ami, align 8, !tbaa !177 ; 2 uses
  store i64 %i.amk, ptr %i.amj, align 8, !tbaa !177
  br label %bb.bi

bb.be:                                            ; preds = %.invoke
  %i.aml = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bf:                                            ; preds = %bb.ay
  %i.amm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bg:                                            ; preds = %bb.ba
  %i.amn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bi, %bb.bb
  %i.amo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %bb.bl

bb.bi:                                            ; preds = %._crit_edge1184, %bb.bd
  %i.amp = phi i64 [ %.pre1185, %._crit_edge1184 ], [ %i.amk, %bb.bd ]
  %i.amq = getelementptr inbounds nuw i8, ptr %i.g, i64 592
  %i.amr = load ptr, ptr %i.amq, align 8, !tbaa !279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %29, ptr noundef nonnull align 8 dereferenceable(40) %28, i64 28, i1 false)
  %i.ams = getelementptr inbounds nuw i8, ptr %29, i64 32
  store i64 %i.amp, ptr %i.ams, align 8, !tbaa !177
  %i.amt = getelementptr inbounds nuw i8, ptr %29, i64 40
  store float f0x3F7FF972, ptr %i.amt, align 8, !tbaa !282
  %i.amu = getelementptr inbounds nuw i8, ptr %29, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.amu, ptr noundef nonnull align 16 dereferenceable(32) %18, i64 32, i1 false), !tbaa.struct !204
  %i.amv = getelementptr inbounds nuw i8, ptr %29, i64 76
  store <2 x float> %i.alq, ptr %i.amv, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 84
  store <2 x float> %i.als, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !71
  %i.amw = getelementptr inbounds nuw i8, ptr %29, i64 92
  store <2 x float> %i.alj, ptr %i.amw, align 4
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 100
  store <2 x float> %i.alk, ptr %.sroa.519.0..sroa_idx, align 4, !tbaa !71
  %i.amx = getelementptr inbounds nuw i8, ptr %29, i64 108
  store <2 x float> %i.aln, ptr %i.amx, align 4
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 116
  store <2 x float> %i.alo, ptr %.sroa.517.0..sroa_idx, align 4, !tbaa !71
  %i.amy = getelementptr inbounds nuw i8, ptr %29, i64 124
  %i.amz = load i32, ptr %i.uw, align 4, !tbaa !401
  store i32 %i.amz, ptr %i.amy, align 4, !tbaa !283
  %i.ana = invoke noundef i32 @_ZN4pbrt9WorkQueueINS_17ShadowRayWorkItemEE4PushES1_(ptr noundef nonnull align 8 dereferenceable(228) %i.amr, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(128) %29)
end_hunk_1
begin_hunk_2_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_17ConductorMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_IS2_EENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSB_E_clESB_:bb.a
  %i.jw = load i64, ptr %i.ju, align 8, !noalias !1344
  store i64 %i.jw, ptr %i.jv, align 4, !alias.scope !1344
  %i.jx = getelementptr inbounds nuw i8, ptr %15, i64 92
  %i.jy = extractelement <2 x float> %i.gk, i64 0
  store float %i.jy, ptr %i.jx, align 4, !tbaa !199, !alias.scope !1344
  %i.jz = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.ka = extractelement <2 x float> %i.gk, i64 1
  store float %i.ka, ptr %i.jz, align 8, !tbaa !200, !alias.scope !1344
  %i.kb = getelementptr inbounds nuw i8, ptr %15, i64 100
  store float %.0419, ptr %i.kb, align 4, !tbaa !201, !alias.scope !1344
  %i.kc = getelementptr inbounds nuw i8, ptr %15, i64 104
  store float %.0420, ptr %i.kc, align 8, !tbaa !202, !alias.scope !1344
  %i.kd = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kd, ptr noundef nonnull align 4 dereferenceable(12) %i.gl, i64 12, i1 false)
  %i.ke = getelementptr inbounds nuw i8, ptr %15, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ke, ptr noundef nonnull align 8 dereferenceable(12) %i.gm, i64 12, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.kg = getelementptr inbounds nuw i8, ptr %15, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kg, ptr noundef nonnull align 4 dereferenceable(12) %i.kf, i64 12, i1 false)
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ki = getelementptr inbounds nuw i8, ptr %15, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ki, ptr noundef nonnull align 8 dereferenceable(12) %i.kh, i64 12, i1 false)
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.kk = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kk, ptr noundef nonnull align 4 dereferenceable(12) %i.kj, i64 12, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !393, !noalias !1344
  %i.kn = getelementptr inbounds nuw i8, ptr %15, i64 132
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !203, !alias.scope !1344
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store <2 x float> zeroinitializer, ptr %16, align 8, !tbaa !155
  %i.ko = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.ko, align 8, !tbaa !181
  store i64 %i.go, ptr %17, align 8, !tbaa !186
  call void @_ZN4pbrt7BumpMapINS_25UniversalTextureEvaluatorEEEvT_NS_12FloatTextureERKNS_21NormalBumpEvalContextEPNS_7Vector3IfEES9_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(136) %15, ptr noundef nonnull %12, ptr noundef nonnull %16)
  %.sroa.0213.0.copyload = load <2 x float>, ptr %12, align 8 ; 4 uses
  %.sroa.2214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2214.0.copyload = load float, ptr %.sroa.2214.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0211.0.copyload = load <2 x float>, ptr %16, align 8 ; 4 uses
  %.sroa.2212.0.copyload = load float, ptr %i.ko, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i530 = extractelement <2 x float> %.sroa.0211.0.copyload, i64 0
  %.sroa.011.0.vec.extract.i531 = extractelement <2 x float> %.sroa.0213.0.copyload, i64 0 ; 2 uses
  %i.kp = fmul float %.sroa.011.0.vec.extract.i531, %.sroa.2212.0.copyload ; 2 uses
  %i.kq = fneg float %i.kp
  %i.kr = call noundef float @llvm.fma.f32(float %.sroa.2214.0.copyload, float %.sroa.03.0.vec.extract.i530, float %i.kq)
  %i.ks = fneg float %.sroa.011.0.vec.extract.i531
  %i.kt = call noundef float @llvm.fma.f32(float %i.ks, float %.sroa.2212.0.copyload, float %i.kp)
  %i.ku = fadd float %i.kr, %i.kt                 ; 3 uses
  %i.kv = fmul float %i.ku, %i.ku
  %i.kw = shufflevector <2 x float> %.sroa.0213.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kx = insertelement <2 x float> %i.kw, float %.sroa.2214.0.copyload, i64 1 ; 2 uses
  %i.ky = fmul <2 x float> %i.kx, %.sroa.0211.0.copyload ; 2 uses
  %i.kz = fneg <2 x float> %i.ky
  %i.la = shufflevector <2 x float> %.sroa.0211.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lb = insertelement <2 x float> %i.la, float %.sroa.2212.0.copyload, i64 1
  %i.lc = call <2 x float> @llvm.fma.v2f32(<2 x float> %.sroa.0213.0.copyload, <2 x float> %i.lb, <2 x float> %i.kz)
  %i.ld = fneg <2 x float> %i.kx
  %i.le = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ld, <2 x float> %.sroa.0211.0.copyload, <2 x float> %i.ky)
  %i.lf = fadd <2 x float> %i.lc, %i.le           ; 4 uses
  %i.lg = fmul <2 x float> %i.lf, %i.lf           ; 2 uses
  %i.lh = extractelement <2 x float> %i.lg, i64 1
  %i.li = fadd float %i.lh, %i.kv
  %i.lj = extractelement <2 x float> %i.lg, i64 0
  %i.lk = fadd float %i.lj, %i.li
  %sqrt.i.i538 = call noundef float @llvm.sqrt.f32(float %i.lk) ; 2 uses
  %i.ll = extractelement <2 x float> %i.lf, i64 0
  %i.lm = fdiv float %i.ll, %sqrt.i.i538          ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0189.0.copyload = load <2 x float>, ptr %i.ln, align 8 ; 2 uses
  %.sroa.2190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2190.0.copyload = load float, ptr %.sroa.2190.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i.i546 = extractelement <2 x float> %.sroa.0189.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i.i548 = extractelement <2 x float> %.sroa.0189.0.copyload, i64 1
  %i.lo = fmul float %.sroa.2190.0.copyload, %i.lm ; 2 uses
  %i.lp = fneg float %i.lo
  %i.lq = call noundef float @llvm.fma.f32(float %i.lm, float %.sroa.2190.0.copyload, float %i.lp)
  %i.lr = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ls = insertelement <2 x float> %i.lr, float %i.ku, i64 1
  %i.lt = insertelement <2 x float> poison, float %sqrt.i.i538, i64 0
  %i.lu = shufflevector <2 x float> %i.lt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lv = fdiv <2 x float> %i.ls, %i.lu           ; 4 uses
  %i.lw = extractelement <2 x float> %i.lv, i64 1
  %i.lx = call noundef float @llvm.fma.f32(float %i.lw, float %.sroa.01.4.vec.extract.i.i548, float %i.lo)
  %i.ly = fadd float %i.lx, %i.lq
  %i.lz = extractelement <2 x float> %i.lv, i64 0
  %i.ma = call noundef float @llvm.fma.f32(float %i.lz, float %.sroa.01.0.vec.extract.i.i546, float %i.ly)
  %i.mb = fcmp olt float %i.ma, 0.000000e+00      ; 2 uses
  %i.mc = fneg <2 x float> %i.lv
  %i.md = fneg float %i.lm
  %.sroa.0.4.vec.insert.i.pn.i551 = select i1 %i.mb, <2 x float> %i.mc, <2 x float> %i.lv
  %.pn.i552 = select i1 %i.mb, float %i.md, float %i.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h, %bb.f
  %.sroa.2178.0.copyload = phi float [ %.sroa.2178.0.copyload.pre, %._crit_edge ], [ %.sroa.2214.0.copyload, %bb.h ], [ %.sroa.2252.0.copyload, %bb.f ] ; 4 uses
  %.sroa.0259.0 = phi <2 x float> [ %.sroa.0259.0.copyload, %._crit_edge ], [ %.sroa.0.4.vec.insert.i.pn.i551, %bb.h ], [ %.sroa.0.4.vec.insert.i.pn.i, %bb.f ] ; 9 uses
  %.sroa.17.0 = phi float [ %.sroa.17.0.copyload, %._crit_edge ], [ %.pn.i552, %bb.h ], [ %.pn.i, %bb.f ] ; 12 uses
  %i.me = phi <2 x float> [ %.sroa.0177.0.copyload.pre, %._crit_edge ], [ %.sroa.0213.0.copyload, %bb.h ], [ %.sroa.0251.0.copyload, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %18, ptr noundef nonnull align 4 dereferenceable(32) %i.mf, i64 32, i1 false), !tbaa.struct !204
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 188 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %.sroa.0.sroa.2.0..sroa_idx.i556 = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx.i558 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.sroa.4.0..sroa_idx.i560 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.sroa.5.0..sroa_idx.i562 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.sroa.5.0.copyload.i563 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i562, align 8, !noalias !1345
  %.sroa.0.sroa.6.0..sroa_idx.i564 = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.sroa.0.sroa.6.0.copyload.i565 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i564, align 4, !noalias !1345
  %i.mj = fadd float %.sroa.0.sroa.5.0.copyload.i563, %.sroa.0.sroa.6.0.copyload.i565
  %i.mk = fmul float %i.mj, 5.000000e-01
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.mm = load i64, ptr %i.ml, align 8, !noalias !1345
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !393, !noalias !1345
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.mp = load ptr, ptr %1, align 8, !tbaa !389
  %i.mq = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i556, align 4, !noalias !1345
  %i.mr = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.mi, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !noalias !1345
  %i.ms = shufflevector <4 x float> %i.mr, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.mt = fadd <2 x float> %i.mq, %i.ms
  %i.mu = fmul <2 x float> %i.mt, splat (float 5.000000e-01)
  store <2 x float> %i.mu, ptr %20, align 8
  %.sroa.61081.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store float %i.mk, ptr %.sroa.61081.0..sroa_idx, align 8
  %.sroa.71082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.71082.0..sroa_idx, i8 0, i64 24, i1 false)
  %.sroa.81083.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.81083.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.mh, i64 12, i1 false)
  %.sroa.91084.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 48
  store i64 %i.mm, ptr %.sroa.91084.0..sroa_idx, align 8
  %.sroa.101085.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 56
  %i.mv = extractelement <2 x float> %i.gk, i64 0
  store float %i.mv, ptr %.sroa.101085.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 60
  %i.mw = extractelement <2 x float> %i.gk, i64 1
  store float %i.mw, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.121086.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 64
  store float %.0419, ptr %.sroa.121086.0..sroa_idx, align 8
  %.sroa.131087.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 68
  store float %.0420, ptr %.sroa.131087.0..sroa_idx, align 4
  %.sroa.141088.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 72
  store i32 %i.mo, ptr %.sroa.141088.0..sroa_idx, align 8
  %.sroa.151089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.151089.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.mg, i64 12, i1 false)
  %.sroa.161090.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 88
  store <2 x float> %.sroa.0259.0, ptr %.sroa.161090.0..sroa_idx, align 8
  %.sroa.181091.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 96
  store float %.sroa.17.0, ptr %.sroa.181091.0..sroa_idx, align 8
  %.sroa.201092.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 100
  store <2 x float> %i.me, ptr %.sroa.201092.0..sroa_idx, align 4
  %.sroa.221093.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 108
  store float %.sroa.2178.0.copyload, ptr %.sroa.221093.0..sroa_idx, align 4
  call void @_ZNK4pbrt17ConductorMaterial7GetBxDFINS_25UniversalTextureEvaluatorEEENS_13ConductorBxDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::ConductorBxDF") align 4 %19, ptr noundef nonnull align 8 dereferenceable(57) %i.mp, ptr noundef nonnull byval(%"struct.pbrt::MaterialEvalContext") align 8 %20, ptr noundef nonnull align 4 dereferenceable(32) %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.mx = ptrtoint ptr %19 to i64
  %i.my = or i64 %i.mx, 1297036692682702848
  store i64 %i.my, ptr %21, align 8, !tbaa !212
  %i.mz = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  %i.na = fmul <2 x float> %i.me, %i.me           ; 2 uses
  %shift1218 = shufflevector <2 x float> %i.na, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1219 = fadd <2 x float> %i.na, %shift1218
  %i.nb = extractelement <2 x float> %foldExtExtBinop1219, i64 0
  %i.nc = fmul float %.sroa.2178.0.copyload, %.sroa.2178.0.copyload
  %i.nd = fadd float %i.nc, %i.nb
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.nd) ; 2 uses
  %i.ne = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.nf = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ng = fdiv <2 x float> %i.me, %i.nf           ; 4 uses
  %i.nh = fdiv float %.sroa.2178.0.copyload, %sqrt.i.i.i ; 3 uses
  %.sroa.01.0.vec.extract.i.i568 = extractelement <2 x float> %.sroa.0259.0, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.i569 = extractelement <2 x float> %.sroa.0259.0, i64 1 ; 4 uses
  %i.ni = extractelement <2 x float> %i.ng, i64 1 ; 2 uses
  %i.nj = fmul float %.sroa.17.0, %i.ni           ; 2 uses
  %i.nk = fneg float %i.nj
  %i.nl = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.nh, float %i.nk)
  %i.nm = fneg float %.sroa.17.0
  %i.nn = call noundef float @llvm.fma.f32(float %i.nm, float %i.ni, float %i.nj)
  %i.no = fadd float %i.nl, %i.nn
  %i.np = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nq = insertelement <2 x float> %i.np, float %i.nh, i64 0 ; 2 uses
  %i.nr = fmul <2 x float> %.sroa.0259.0, %i.nq   ; 2 uses
  %i.ns = fneg <2 x float> %i.nr
  %i.nt = shufflevector <2 x float> %.sroa.0259.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nu = insertelement <2 x float> %i.nt, float %.sroa.17.0, i64 0
  %i.nv = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.nu, <2 x float> %i.ng, <2 x float> %i.ns)
  %i.nw = fneg <2 x float> %.sroa.0259.0
  %i.nx = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.nw, <2 x float> %i.nq, <2 x float> %i.nr)
  %i.ny = fadd <2 x float> %i.nv, %i.nx           ; 2 uses
  %.sroa.0.0.vec.insert.i.i23.i = insertelement <2 x float> poison, float %i.no, i64 0
  %i.nz = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i23.i, <2 x float> %i.ny, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.ng, ptr %i.mz, align 8, !alias.scope !1346
  %.sroa.210.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store float %i.nh, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !alias.scope !1346
  %i.oa = getelementptr inbounds nuw i8, ptr %21, i64 20 ; 5 uses
  store <2 x float> %i.nz, ptr %i.oa, align 4, !alias.scope !1346
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 28 ; 2 uses
  %i.ob = extractelement <2 x float> %i.ny, i64 1
  store float %i.ob, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !alias.scope !1346
  %i.oc = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 5 uses
  store <2 x float> %.sroa.0259.0, ptr %i.oc, align 8, !alias.scope !1346
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 5 uses
  store float %.sroa.17.0, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !alias.scope !1346
  %i.od = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.oe = load float, ptr %i.od, align 4, !tbaa !155
  %i.of = fcmp oeq float %i.oe, 0.000000e+00
  %i.og = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.oh = load float, ptr %i.og, align 8
  %i.oi = fcmp oeq float %i.oh, 0.000000e+00
  %or.cond.i = select i1 %i.of, i1 %i.oi, i1 false
  %i.oj = getelementptr inbounds nuw i8, ptr %18, i64 28
  %i.ok = load float, ptr %i.oj, align 4
  %i.ol = fcmp oeq float %i.ok, 0.000000e+00
  %or.cond13.i = select i1 %or.cond.i, i1 %i.ol, i1 false
  br i1 %or.cond13.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.on = load i32, ptr %i.om, align 4, !tbaa !401
  %i.oo = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.op = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.oq = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !151
  %i.os = sext i32 %i.on to i64                   ; 2 uses
  %i.ot = getelementptr inbounds [16 x i8], ptr %i.or, i64 %i.os ; 2 uses
  %i.ou = load <4 x float>, ptr %18, align 16
  %.sroa.03.4.vec.insert.i = shufflevector <4 x float> %i.ou, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ov = load <4 x float>, ptr %i.oo, align 8
  %.sroa.35.12.vec.insert.i = shufflevector <4 x float> %i.ov, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.ot, align 16
  %.sroa.2.0..0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i, ptr %.sroa.2.0..0..sroa_idx.i.i, align 8, !tbaa !71
  %i.ow = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !152
  %i.oy = getelementptr inbounds [16 x i8], ptr %i.ox, i64 %i.os ; 2 uses
  %i.oz = load <4 x float>, ptr %i.op, align 16   ; 2 uses
  %.sroa.0.4.vec.insert.i572 = shufflevector <4 x float> %i.oz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i = shufflevector <4 x float> %i.oz, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i572, ptr %i.oy, align 16
  %.sroa.2.0..0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.2.0..0..sroa_idx.i28.i, align 8, !tbaa !71
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.pb = load i8, ptr %i.pa, align 8, !tbaa !213, !range !11, !noundef !12
  %i.pc = trunc nuw i8 %i.pb to i1
  br i1 %i.pc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !397
  %.not449 = icmp eq i32 %i.pe, 0
  br i1 %.not449, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.pf = load i64, ptr %21, align 8, !tbaa !212  ; 2 uses
  %i.pg = and i64 %i.pf, 144115188075855871
  %i.ph = inttoptr i64 %i.pg to ptr
  %i.pi = lshr i64 %i.pf, 57
  %i.pj = trunc nuw nsw i64 %i.pi to i32
  %i.pk = add nsw i32 %i.pj, -1
  call void @_ZN4pbrt6detail8DispatchIRZNS_4BxDF10RegularizeEvEUlT_E_vNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef %i.ph, i32 noundef %i.pk)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !391
  %i.pn = icmp eq i32 %i.pm, 0
  br i1 %i.pn, label %bb.o, label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.po = load i8, ptr %i.g, align 8, !tbaa !214, !range !11, !noundef !12
  %i.pp = trunc nuw i8 %i.po to i1
  br i1 %i.pp, label %bb.p, label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  %i.pq = getelementptr inbounds nuw i8, ptr %22, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.pq, i8 0, i64 184, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %i.mi, i64 24, i1 false)
  %i.pr = getelementptr inbounds nuw i8, ptr %22, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pr, ptr noundef nonnull align 8 dereferenceable(12) %i.mh, i64 12, i1 false)
  %i.ps = getelementptr inbounds nuw i8, ptr %22, i64 128
  store <2 x float> %.sroa.0259.0, ptr %i.ps, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %22, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %22, i64 52
  %i.pu = load i64, ptr %i.ml, align 8
  store i64 %i.pu, ptr %i.pt, align 4
  %i.pv = getelementptr inbounds nuw i8, ptr %22, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pv, ptr noundef nonnull align 4 dereferenceable(12) %i.mg, i64 12, i1 false)
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.px = load float, ptr %i.pw, align 4, !tbaa !395
  %i.py = getelementptr inbounds nuw i8, ptr %22, i64 24
  store float %i.px, ptr %i.py, align 8, !tbaa !217
  %i.pz = getelementptr inbounds nuw i8, ptr %22, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pz, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %i.qa = getelementptr inbounds nuw i8, ptr %22, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qa, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %23, align 16, !tbaa !155
  %i.qb = getelementptr inbounds nuw i8, ptr %23, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.qb, align 16, !tbaa !155
  %i.qc = getelementptr inbounds nuw i8, ptr %23, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qc, align 16, !tbaa !155
  %i.qd = getelementptr inbounds nuw i8, ptr %23, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qd, align 16, !tbaa !155
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.pv, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.mz, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.oa, align 4 ; 2 uses
  %i.qe = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qf = shufflevector <4 x float> %i.qe, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qg = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qh = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.qi = fmul <2 x float> %i.qg, %i.qh
  %i.qj = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.qk = fmul <2 x float> %.sroa.0162.0.copyload, %i.qj
  %i.ql = fadd <2 x float> %i.qi, %i.qk
  %i.qm = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.qn = shufflevector <2 x float> %i.qm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qo = fmul <2 x float> %i.qn, %i.qf
  %i.qp = fadd <2 x float> %i.qo, %i.ql
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.oc, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.qq = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1221 = shufflevector <2 x float> %i.qq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1222 = fadd <2 x float> %i.qq, %shift1221
  %i.qr = extractelement <2 x float> %foldExtExtBinop1222, i64 0
  %i.qs = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.qt = fadd float %i.qs, %i.qr
  %i.qu = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %21, <2 x float> %i.qp, float %i.qt, ptr nonnull %i.e, i64 16, ptr nonnull %23, i64 16) ; 2 uses
  %i.qv = extractvalue { <2 x float>, <2 x float> } %i.qu, 0
  %i.qw = extractvalue { <2 x float>, <2 x float> } %i.qu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %24, ptr noundef nonnull align 8 dereferenceable(248) %22, <2 x float> %i.qv, <2 x float> %i.qw, ptr noundef nonnull align 4 dereferenceable(32) %18)
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !401
  %i.qz = getelementptr inbounds nuw i8, ptr %24, i64 88
  %i.ra = load i8, ptr %i.qz, align 4, !tbaa !219, !range !11, !noundef !12
  %i.rb = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !220
  %i.rd = sext i32 %i.qy to i64                   ; 20 uses
  %i.re = getelementptr inbounds i8, ptr %i.rc, i64 %i.rd
  store i8 %i.ra, ptr %i.re, align 1, !tbaa !10
  %i.rf = load float, ptr %24, align 4, !tbaa !221
  %i.rg = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !222
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %i.rd
  store float %i.rf, ptr %i.ri, align 4, !tbaa !155
  %i.rj = getelementptr inbounds nuw i8, ptr %24, i64 4
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !223
  %i.rl = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !224
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.rm, i64 %i.rd
  store float %i.rk, ptr %i.rn, align 4, !tbaa !155
  %i.ro = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !225
  %i.rq = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !226
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %i.rd
  store float %i.rp, ptr %i.rs, align 4, !tbaa !155
  %i.rt = getelementptr inbounds nuw i8, ptr %24, i64 12
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !227
  %i.rv = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !157
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.rw, i64 %i.rd
  store float %i.ru, ptr %i.rx, align 4, !tbaa !155
  %i.ry = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !228
  %i.sa = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !158
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.rd
  store float %i.rz, ptr %i.sc, align 4, !tbaa !155
  %i.sd = getelementptr inbounds nuw i8, ptr %24, i64 20
  %i.se = load float, ptr %i.sd, align 4, !tbaa !229
  %i.sf = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !159
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.rd
  store float %i.se, ptr %i.sh, align 4, !tbaa !155
  %i.si = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.sj = load float, ptr %i.si, align 4, !tbaa !227
  %i.sk = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !157
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.rd
  store float %i.sj, ptr %i.sm, align 4, !tbaa !155
  %i.sn = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.so = load float, ptr %i.sn, align 4, !tbaa !228
  %i.sp = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !158
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %i.rd
  store float %i.so, ptr %i.sr, align 4, !tbaa !155
  %i.ss = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.st = load float, ptr %i.ss, align 4, !tbaa !229
  %i.su = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !159
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.rd
  store float %i.st, ptr %i.sw, align 4, !tbaa !155
  %i.sx = getelementptr inbounds nuw i8, ptr %24, i64 36
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !230
  %i.sz = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !163
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.rd
  store float %i.sy, ptr %i.tb, align 4, !tbaa !155
  %i.tc = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.td = load float, ptr %i.tc, align 4, !tbaa !231
  %i.te = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !164
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.rd
  store float %i.td, ptr %i.tg, align 4, !tbaa !155
  %i.th = getelementptr inbounds nuw i8, ptr %24, i64 44
  %i.ti = load float, ptr %i.th, align 4, !tbaa !232
  %i.tj = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !233
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.rd
  store float %i.ti, ptr %i.tl, align 4, !tbaa !155
  %i.tm = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !234
  %i.to = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !160
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.rd
  store float %i.tn, ptr %i.tq, align 4, !tbaa !155
  %i.tr = getelementptr inbounds nuw i8, ptr %24, i64 52
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !235
  %i.tt = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !161
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.rd
  store float %i.ts, ptr %i.tv, align 4, !tbaa !155
  %i.tw = getelementptr inbounds nuw i8, ptr %24, i64 56
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !181
  %i.ty = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !162
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.rd
  store float %i.tx, ptr %i.ua, align 4, !tbaa !155
  %i.ub = getelementptr inbounds nuw i8, ptr %24, i64 60
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !234
  %i.ud = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !160
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.rd
  store float %i.uc, ptr %i.uf, align 4, !tbaa !155
  %i.ug = getelementptr inbounds nuw i8, ptr %24, i64 64
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !235
  %i.ui = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !161
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.rd
  store float %i.uh, ptr %i.uk, align 4, !tbaa !155
  %i.ul = getelementptr inbounds nuw i8, ptr %24, i64 68
  %i.um = load float, ptr %i.ul, align 4, !tbaa !181
  %i.un = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !162
  %i.up = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.rd
  store float %i.um, ptr %i.up, align 4, !tbaa !155
  %i.uq = getelementptr inbounds nuw i8, ptr %24, i64 72
  %i.ur = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !153
  %i.ut = getelementptr inbounds [16 x i8], ptr %i.us, i64 %i.rd ; 2 uses
  %i.uu = load <4 x float>, ptr %i.uq, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.uu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.uu, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.ut, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.01059.0.copyload = load <2 x float>, ptr %i.mg, align 4 ; 14 uses
  %.sroa.121066.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121066.0.copyload = load float, ptr %.sroa.121066.0..sroa_idx, align 4 ; 8 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !401
  %i.uy = load ptr, ptr %i.uv, align 8, !tbaa !236, !noalias !1347
  %i.uz = sext i32 %i.ux to i64                   ; 2 uses
  %i.va = getelementptr inbounds [16 x i8], ptr %i.uy, i64 %i.uz ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vb = load <2 x float>, ptr %i.va, align 16, !noalias !1347
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !71, !noalias !1347
  %i.vc = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !237, !noalias !1347
  %i.ve = getelementptr inbounds [16 x i8], ptr %i.vd, i64 %i.uz ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.ve, align 16, !noalias !1347 ; 2 uses
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %.sroa.04.0.vec.extract.i.i.i.i589 = extractelement <2 x float> %.sroa.01059.0.copyload, i64 0
  %.sroa.05.0.copyload.i.i.i598 = load <2 x float>, ptr %i.oc, align 8, !noalias !1348
  %.sroa.26.0.copyload.i.i.i600 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1348
  %i.vf = fmul <2 x float> %.sroa.01059.0.copyload, %.sroa.05.0.copyload.i.i.i598 ; 2 uses
  %shift1224 = shufflevector <2 x float> %i.vf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1225 = fadd <2 x float> %i.vf, %shift1224
  %i.vg = extractelement <2 x float> %foldExtExtBinop1225, i64 0
  %i.vh = fmul float %.sroa.121066.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.vi = fadd float %i.vh, %i.vg                 ; 2 uses
  %i.vj = fcmp oeq float %i.vi, 0.000000e+00
  br i1 %i.vj, label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %.sroa.2.0.copyload.i931.i.i1176 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !1347
  %.sroa.021.0.copyload.i.i.i586 = load <2 x float>, ptr %i.mz, align 8, !noalias !1348 ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = load <2 x float>, ptr %i.oa, align 4, !noalias !1348 ; 2 uses
  %i.vk = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !1348
  %i.vl = shufflevector <4 x float> %i.vk, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.vm = insertelement <2 x float> poison, float %.sroa.121066.0.copyload, i64 0
  %i.vn = shufflevector <2 x float> %i.vm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vo = fmul <2 x float> %i.vn, %i.vl
  %i.vp = shufflevector <2 x float> %.sroa.01059.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vq = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.vr = fmul <2 x float> %i.vp, %i.vq
  %i.vs = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.vt = fmul <2 x float> %.sroa.01059.0.copyload, %i.vs
  %i.vu = fadd <2 x float> %i.vr, %i.vt
  %i.vv = fadd <2 x float> %i.vo, %i.vu
  %i.vw = load i64, ptr %21, align 8, !tbaa !212, !noalias !1348
  %i.vx = and i64 %i.vw, 144115188075855871
  %i.vy = inttoptr i64 %i.vx to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !1348
  call void @_ZNK4pbrt13ConductorBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %8, ptr noundef nonnull align 4 dereferenceable(40) %i.vy, <2 x float> %i.vv, float %i.vi, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1176, i32 noundef 0, i32 noundef 3), !noalias !1348
  %i.vz = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.wa = load i8, ptr %i.vz, align 4, !tbaa !239, !range !11, !noalias !1348, !noundef !12
  %i.wb = trunc nuw i8 %i.wa to i1
  br i1 %i.wb, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.q
  %i.wc = load <4 x float>, ptr %8, align 16, !noalias !1348
  %.fr = freeze <4 x float> %i.wc                 ; 2 uses
  %i.wd = fcmp une <4 x float> %.fr, zeroinitializer
  %i.we = bitcast <4 x i1> %i.wd to i4
  %i.wf = icmp eq i4 %i.we, 0
  %i.wg = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.wh = load float, ptr %i.wg, align 4, !noalias !1348 ; 3 uses
  %i.wi = fcmp oeq float %i.wh, 0.000000e+00
  %or.cond.i605 = select i1 %i.wf, i1 true, i1 %i.wi
  br i1 %or.cond.i605, label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.wj = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.wk = load float, ptr %i.wj, align 8, !tbaa !181, !noalias !1348 ; 3 uses
  %i.wl = fcmp oeq float %i.wk, 0.000000e+00
  br i1 %i.wl, label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %bb.r

_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit: ; preds = %bb.q, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1348
  br label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread

bb.r:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  %i.wm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.wm, align 16, !noalias !1348 ; 4 uses
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %.sroa.037.0.copyload.i.i = load <2 x float>, ptr %i.mz, align 8, !tbaa !155, !noalias !1348 ; 3 uses
  %.sroa.238.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !tbaa !155, !noalias !1348 ; 3 uses
  %i.wn = fmul float %.sroa.041.0.vec.extract.i.i, %.sroa.238.0.copyload.i.i
  %.sroa.041.4.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %.sroa.027.0.copyload.i.i = load <2 x float>, ptr %i.oa, align 4, !tbaa !155, !noalias !1348 ; 3 uses
  %.sroa.228.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !155, !noalias !1348 ; 3 uses
  %i.wo = fmul float %.sroa.041.4.vec.extract.i.i, %.sroa.228.0.copyload.i.i
  %i.wp = fadd float %i.wn, %i.wo
  %.sroa.011.0.copyload.i.i = load <2 x float>, ptr %i.oc, align 8, !tbaa !155, !noalias !1348 ; 3 uses
  %.sroa.212.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !155, !noalias !1348 ; 3 uses
  %i.wq = fmul float %i.wk, %.sroa.212.0.copyload.i.i
  %i.wr = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ws = fmul <2 x float> %i.wr, %.sroa.037.0.copyload.i.i
  %i.wt = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wu = fmul <2 x float> %i.wt, %.sroa.027.0.copyload.i.i
  %i.wv = fadd <2 x float> %i.ws, %i.wu
  %i.ww = insertelement <2 x float> poison, float %i.wk, i64 0
  %i.wx = shufflevector <2 x float> %i.ww, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wy = fmul <2 x float> %i.wx, %.sroa.011.0.copyload.i.i
  %i.wz = fadd <2 x float> %i.wv, %i.wy           ; 6 uses
  %i.xa = fadd float %i.wp, %i.wq                 ; 8 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 16 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 36
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.21.0.copyload = load i8, ptr %.sroa.21.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1348
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.xb, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !71
  %i.xc = fmul float %.sroa.17.0, %i.xa           ; 2 uses
  %i.xd = extractelement <2 x float> %i.wz, i64 1 ; 3 uses
  %i.xe = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.xd, float %i.xc)
  %i.xf = fneg float %i.xc
  %i.xg = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.xa, float %i.xf)
  %i.xh = fadd float %i.xe, %i.xg
  %i.xi = extractelement <2 x float> %i.wz, i64 0 ; 3 uses
  %i.xj = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.xi, float %i.xh)
  %i.xk = call noundef float @llvm.fabs.f32(float %i.xj)
  %i.xl = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.xm = fmul <4 x float> %.fr, %i.xl
  %i.xn = insertelement <4 x float> poison, float %i.xk, i64 0
  %i.xo = shufflevector <4 x float> %i.xn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xp = fmul <4 x float> %i.xo, %i.xm
  %i.xq = insertelement <4 x float> poison, float %i.wh, i64 0
  %i.xr = shufflevector <4 x float> %i.xq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xs = fdiv <4 x float> %i.xp, %i.xr           ; 7 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0958.0.copyload = load <4 x float>, ptr %i.xt, align 8, !tbaa !71 ; 6 uses
  %i.xu = trunc nuw i8 %.sroa.21.0.copyload to i1
  br i1 %i.xu, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, label %bb.aa

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640: ; preds = %bb.r
  %i.xv = fmul <2 x float> %.sroa.01059.0.copyload, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1227 = shufflevector <2 x float> %i.xv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1228 = fadd <2 x float> %i.xv, %shift1227
  %i.xw = extractelement <2 x float> %foldExtExtBinop1228, i64 0
  %i.xx = fmul float %.sroa.121066.0.copyload, %.sroa.212.0.copyload.i.i
  %i.xy = fadd float %i.xx, %i.xw                 ; 5 uses
  %i.xz = fcmp oeq float %i.xy, 0.000000e+00
  br i1 %i.xz, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640
  %i.ya = insertelement <2 x float> poison, float %i.xa, i64 0
  %i.yb = shufflevector <2 x float> %i.ya, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yc = insertelement <2 x float> poison, float %.sroa.228.0.copyload.i.i, i64 0
  %i.yd = insertelement <2 x float> %i.yc, float %.sroa.238.0.copyload.i.i, i64 1
  %i.ye = fmul <2 x float> %i.yb, %i.yd
  %i.yf = shufflevector <2 x float> %.sroa.037.0.copyload.i.i, <2 x float> %.sroa.027.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.yg = fmul <2 x float> %i.wz, %i.yf
  %i.yh = shufflevector <2 x float> %i.yg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yi = shufflevector <2 x float> %.sroa.027.0.copyload.i.i, <2 x float> %.sroa.037.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.yj = fmul <2 x float> %i.wz, %i.yi
  %i.yk = fadd <2 x float> %i.yj, %i.yh
  %i.yl = fadd <2 x float> %i.ye, %i.yk
  %i.ym = fmul float %i.xa, %.sroa.212.0.copyload.i.i
  %i.yn = fmul <2 x float> %i.wz, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1230 = shufflevector <2 x float> %i.yn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1231 = fadd <2 x float> %i.yn, %shift1230
  %i.yo = extractelement <2 x float> %foldExtExtBinop1231, i64 0
  %i.yp = fadd float %i.ym, %i.yo                 ; 2 uses
  %i.yq = insertelement <2 x float> poison, float %.sroa.238.0.copyload.i.i, i64 0
  %i.yr = insertelement <2 x float> %i.yq, float %.sroa.228.0.copyload.i.i, i64 1
  %i.ys = fmul <2 x float> %i.vn, %i.yr
  %i.yt = fmul <2 x float> %.sroa.01059.0.copyload, %i.yf
  %i.yu = fmul <2 x float> %.sroa.01059.0.copyload, %i.yi
  %i.yv = shufflevector <2 x float> %i.yu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yw = fadd <2 x float> %i.yv, %i.yt
  %i.yx = fadd <2 x float> %i.ys, %i.yw           ; 3 uses
  %i.yy = load i64, ptr %21, align 8, !tbaa !212
  %i.yz = and i64 %i.yy, 144115188075855871
  %i.za = inttoptr i64 %i.yz to ptr               ; 3 uses
  %i.zb = fmul float %i.xy, %i.yp
  %i.zc = fcmp ogt float %i.zb, 0.000000e+00
  br i1 %i.zc, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.zd = getelementptr inbounds nuw i8, ptr %i.za, i64 4
  %i.ze = load float, ptr %i.za, align 4, !tbaa !155 ; 2 uses
  %i.zf = load float, ptr %i.zd, align 4, !tbaa !155 ; 2 uses
  %i.zg = fcmp olt float %i.ze, %i.zf
  %i.zh = select i1 %i.zg, float %i.zf, float %i.ze
  %i.zi = fcmp olt float %i.zh, 1.000000e-03
  br i1 %i.zi, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.zj = shufflevector <2 x float> %i.yx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.zk = fadd <2 x float> %i.zj, %i.yl           ; 3 uses
  %i.zl = fadd float %i.xy, %i.yp                 ; 3 uses
  %i.zm = load atomic i8, ptr @_ZGVZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg acquire, align 8
  %i.zn = icmp eq i8 %i.zm, 0
  br i1 %i.zn, label %bb.v, label %bb.y, !prof !371

bb.v:                                             ; preds = %bb.u
  %i.zo = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg) #23
  %.not70.i = icmp eq i32 %i.zo, 0
  br i1 %.not70.i, label %bb.y, label %bb.w

end_hunk_2
begin_hunk_3_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_17ConductorMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_IS2_EENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSB_E_clESB_:bb.a
  %i.ago = getelementptr inbounds nuw i8, ptr %i.adi, i64 120
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !151
  %i.agq = getelementptr inbounds [16 x i8], ptr %i.agp, i64 %i.adq ; 2 uses
  %i.agr = load <4 x float>, ptr %18, align 16
  %.sroa.03.4.vec.insert.i.i745 = shufflevector <4 x float> %i.agr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ags = load <4 x float>, ptr %i.agm, align 8
  %.sroa.35.12.vec.insert.i.i746 = shufflevector <4 x float> %i.ags, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i.i745, ptr %i.agq, align 16
  %.sroa.2.0..0..sroa_idx.i.i39.i = getelementptr inbounds nuw i8, ptr %i.agq, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i.i746, ptr %.sroa.2.0..0..sroa_idx.i.i39.i, align 8, !tbaa !71
  %i.agt = getelementptr inbounds nuw i8, ptr %i.adi, i64 128
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !152
  %i.agv = getelementptr inbounds [16 x i8], ptr %i.agu, i64 %i.adq ; 2 uses
  %i.agw = load <4 x float>, ptr %i.agn, align 16 ; 2 uses
  %.sroa.0.4.vec.insert.i40.i = shufflevector <4 x float> %i.agw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i41.i = shufflevector <4 x float> %i.agw, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i40.i, ptr %i.agv, align 16
  %.sroa.2.0..0..sroa_idx.i28.i.i747 = getelementptr inbounds nuw i8, ptr %i.agv, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i41.i, ptr %.sroa.2.0..0..sroa_idx.i28.i.i747, align 8, !tbaa !71
  %i.agx = getelementptr inbounds nuw i8, ptr %i.adi, i64 392
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !253
  %i.agz = getelementptr inbounds [4 x i8], ptr %i.agy, i64 %i.adq
  store i32 %i.adg, ptr %i.agz, align 4, !tbaa !166
  %.lobit = lshr exact i32 %i.adb, 4
  %i.aha = getelementptr inbounds nuw i8, ptr %i.adi, i64 384
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !254
  %i.ahc = getelementptr inbounds [4 x i8], ptr %i.ahb, i64 %i.adq
  store i32 %.lobit, ptr %i.ahc, align 4, !tbaa !166
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.adi, i64 376
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !255
  %i.ahf = getelementptr inbounds [4 x i8], ptr %i.ahe, i64 %i.adq
  store float %.0443, ptr %i.ahf, align 4, !tbaa !155
  br label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread

_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread: ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit, %bb.ae, %bb.ai, %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ahg = load i64, ptr %21, align 8, !tbaa !212 ; 2 uses
  %i.ahh = and i64 %i.ahg, 144115188075855871
  %i.ahi = inttoptr i64 %i.ahh to ptr
  %i.ahj = lshr i64 %i.ahg, 57
  %i.ahk = trunc nuw nsw i64 %i.ahj to i32
  %i.ahl = add nsw i32 %i.ahk, -1
  %i.ahm = call noundef i32 @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF5FlagsEvEUlT_E_NS_9BxDFFlagsENS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS3_PKvi(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %i.ahi, i32 noundef %i.ahl) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ahn = and i32 %i.ahm, 12
  %.not1179 = icmp eq i32 %i.ahn, 0
  br i1 %.not1179, label %bb.bo, label %bb.aj

bb.aj:                                            ; preds = %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %i.mi, i64 24, i1 false)
  %.sroa.081.0.copyload = load <2 x float>, ptr %i.mh, align 8 ; 3 uses
  %.sroa.282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.282.0.copyload = load float, ptr %.sroa.282.0..sroa_idx, align 8 ; 3 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %25, i64 24
  store <2 x float> %.sroa.081.0.copyload, ptr %i.aho, align 8
  %.sroa.26.0..sroa_idx.i749 = getelementptr inbounds nuw i8, ptr %25, i64 32
  store float %.sroa.282.0.copyload, ptr %.sroa.26.0..sroa_idx.i749, align 8
  %i.ahp = getelementptr inbounds nuw i8, ptr %25, i64 36
  store <2 x float> %.sroa.0259.0, ptr %i.ahp, align 4
  %.sroa.22.0..sroa_idx.i750 = getelementptr inbounds nuw i8, ptr %25, i64 44
  store float %.sroa.17.0, ptr %.sroa.22.0..sroa_idx.i750, align 4
  %i.ahq = trunc i32 %i.ahm to i1
  br i1 %i.ahq, label %bb.ak, label %.thread1172

bb.ak:                                            ; preds = %bb.aj
  %i.ahr = and i32 %i.ahm, 2
  %.not1180 = icmp eq i32 %i.ahr, 0
  br i1 %.not1180, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.ahs = invoke { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mi, <2 x float> %.sroa.081.0.copyload, float %.sroa.282.0.copyload, <2 x float> %.sroa.01059.0.copyload, float %.sroa.121066.0.copyload)
          to label %.thread1172.sink.split unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.aht = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.an:                                            ; preds = %bb.ak
  %i.ahu = fneg float %.sroa.04.0.vec.extract.i.i.i.i589
  %i.ahv = fneg float %.sroa.121066.0.copyload
  %i.ahw = fneg <2 x float> %.sroa.01059.0.copyload
  %.sroa.0.4.vec.insert.i754 = insertelement <2 x float> %i.ahw, float %i.ahu, i64 0
  %i.ahx = invoke { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mi, <2 x float> %.sroa.081.0.copyload, float %.sroa.282.0.copyload, <2 x float> %.sroa.0.4.vec.insert.i754, float %i.ahv)
          to label %.thread1172.sink.split unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ahy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.thread1172.sink.split:                           ; preds = %bb.an, %bb.al
  %.sink1204 = phi { <2 x float>, float } [ %i.ahs, %bb.al ], [ %i.ahx, %bb.an ] ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %.sink1204, 0 ; 2 uses
  %.fca.1.extract = extractvalue { <2 x float>, float } %.sink1204, 1
  %.sroa.07.4.vec.insert.i758 = shufflevector <2 x float> %.fca.0.extract, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.05.4.vec.insert.i760 = shufflevector <2 x float> %.fca.0.extract, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.0.vec.insert.i761 = insertelement <2 x float> poison, float %.fca.1.extract, i64 0
  %.sroa.0.4.vec.insert.i762 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i761, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i758, ptr %25, align 8
  %.sroa.5902.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i760, ptr %.sroa.5902.0..sroa_idx, align 8
  %.sroa.6903.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i762, ptr %.sroa.6903.0..sroa_idx, align 8
  br label %.thread1172

.thread1172:                                      ; preds = %.thread1172.sink.split, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store float %.sroa.54.8.vec.extract.i.i, ptr %i.b, align 4, !tbaa !155, !noalias !1349
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !1349
  store ptr %25, ptr %6, align 8, !tbaa !257, !noalias !1349
  %i.aia = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.b, ptr %i.aia, align 8, !tbaa !258, !noalias !1349
  %i.aib = load i64, ptr %i.ahz, align 8, !tbaa !259, !noalias !1350 ; 2 uses
  %i.aic = and i64 %i.aib, 144115188075855871
  %i.aid = inttoptr i64 %i.aic to ptr
  %i.aie = lshr i64 %i.aib, 57
  %i.aif = trunc nuw nsw i64 %i.aie to i32
  %i.aig = add nsw i32 %i.aif, -1
  invoke void @_ZN4pbrt6detail8DispatchIRZNKS_12LightSampler6SampleERKNS_18LightSampleContextEfEUlT_E_N4pstd8optionalINS_12SampledLightEEENS_19UniformLightSamplerENS_17PowerLightSamplerENS_22ExhaustiveLightSamplerENS_15BVHLightSamplerEEET0_OS6_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.114") align 8 %26, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.aid, i32 noundef %i.aig)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %.thread1172
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !1349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aih = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.aii = load i8, ptr %i.aih, align 8, !tbaa !261, !range !11, !noundef !12
  %i.aij = trunc nuw i8 %i.aii to i1
  br i1 %i.aij, label %_ZN4pstd8optionalIN4pbrt12SampledLightEEptEv.exit, label %.sink.split

bb.aq:                                            ; preds = %.thread1172
  %i.aik = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

_ZN4pstd8optionalIN4pbrt12SampledLightEEptEv.exit: ; preds = %bb.ap
  %i.ail = load i64, ptr %26, align 8, !tbaa !263 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %25, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 16 dereferenceable(32) %18, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x float> %i.vb, ptr %2, align 8, !noalias !1351
  store i8 1, ptr %i.a, align 1, !tbaa !10, !noalias !1351
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !1351
  store ptr %5, ptr %3, align 8, !tbaa !257, !noalias !1351
  %i.aim = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.aim, align 8, !tbaa !265, !noalias !1351
  %i.ain = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %4, ptr %i.ain, align 8, !tbaa !267, !noalias !1351
  %i.aio = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.a, ptr %i.aio, align 8, !tbaa !268, !noalias !1351
  %i.aip = and i64 %i.ail, 144115188075855871
  %i.aiq = inttoptr i64 %i.aip to ptr             ; 2 uses
  %i.air = lshr i64 %i.ail, 57
  %i.ais = trunc nuw nsw i64 %i.air to i32
  %i.ait = add nsw i32 %i.ais, -1
  invoke void @_ZN4pbrt6detail8DispatchIRZNKS_5Light8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEbEUlT_E_N4pstd8optionalINS_13LightLiSampleEEENS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightEJNS_24PortalImageInfiniteLightEEvEET0_OS7_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.117") align 8 %27, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.aiq, i32 noundef %i.ait)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %_ZN4pstd8optionalIN4pbrt12SampledLightEEptEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1351
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aiu = getelementptr inbounds nuw i8, ptr %27, i64 112 ; 3 uses
  %i.aiv = load i8, ptr %i.aiu, align 16, !tbaa !270, !range !11, !noundef !12
  %i.aiw = trunc nuw i8 %i.aiv to i1
  br i1 %i.aiw, label %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit, label %bb.bk

_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit: ; preds = %bb.ar
  %i.aix = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.aiy = load <4 x float>, ptr %27, align 16
  %.fr1263 = freeze <4 x float> %i.aiy
  %i.aiz = fcmp une <4 x float> %.fr1263, zeroinitializer
  %i.aja = bitcast <4 x i1> %i.aiz to i4
  %.not1264 = icmp eq i4 %i.aja, 0
  br i1 %.not1264, label %bb.bk, label %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit771

_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit771: ; preds = %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit
  %i.ajb = getelementptr inbounds nuw i8, ptr %27, i64 28 ; 2 uses
  %i.ajc = load float, ptr %i.ajb, align 4, !tbaa !272
  %i.ajd = fcmp oeq float %i.ajc, 0.000000e+00
  br i1 %i.ajd, label %bb.bk, label %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit773

bb.as:                                            ; preds = %_ZN4pstd8optionalIN4pbrt12SampledLightEEptEv.exit
  %i.aje = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit773: ; preds = %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit771
  %i.ajf = getelementptr inbounds nuw i8, ptr %27, i64 16
  %.sroa.045.0.copyload = load <2 x float>, ptr %i.ajf, align 16 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 24
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.sroa.05.0.copyload.i.i.i774 = load <2 x float>, ptr %i.oc, align 8 ; 4 uses
  %.sroa.26.0.copyload.i.i.i776 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %foldExtExtBinop1248 = fmul <2 x float> %.sroa.01059.0.copyload, %.sroa.05.0.copyload.i.i.i774
  %foldExtExtBinop1250 = fmul <2 x float> %.sroa.01059.0.copyload, %.sroa.05.0.copyload.i.i.i774
  %shift1252 = shufflevector <2 x float> %foldExtExtBinop1250, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1253 = fadd <2 x float> %foldExtExtBinop1248, %shift1252
  %i.ajg = extractelement <2 x float> %foldExtExtBinop1253, i64 0
  %i.ajh = fmul float %.sroa.121066.0.copyload, %.sroa.26.0.copyload.i.i.i776
  %i.aji = fadd float %i.ajh, %i.ajg              ; 2 uses
  %i.ajj = fcmp oeq float %i.aji, 0.000000e+00
  br i1 %i.ajj, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit773
  %.sroa.021.0.copyload.i.i.i781 = load <2 x float>, ptr %i.mz, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i786 = load <2 x float>, ptr %i.oa, align 4 ; 2 uses
  %i.ajk = shufflevector <2 x float> %.sroa.01059.0.copyload, <2 x float> %.sroa.045.0.copyload, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ajl = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i781, <2 x float> %.sroa.013.0.copyload.i.i.i786, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.ajm = fmul <4 x float> %i.ajk, %i.ajl
  %i.ajn = shufflevector <2 x float> %.sroa.01059.0.copyload, <2 x float> %.sroa.045.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ajo = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i781, <2 x float> %.sroa.013.0.copyload.i.i.i786, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.ajp = fmul <4 x float> %i.ajn, %i.ajo
  %i.ajq = fadd <4 x float> %i.ajm, %i.ajp
  %30 = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %31 = insertelement <4 x float> poison, float %.sroa.121066.0.copyload, i64 0
  %32 = insertelement <4 x float> %31, float %.sroa.7.0.copyload, i64 1
  %33 = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %34 = shufflevector <4 x float> %30, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %35 = fmul <4 x float> %33, %34
  %36 = fadd <4 x float> %35, %i.ajq              ; 2 uses
  %37 = shufflevector <4 x float> %36, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %38 = shufflevector <4 x float> %36, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ajr = fmul float %.sroa.7.0.copyload, %.sroa.26.0.copyload.i.i.i776
  %foldExtExtBinop1255 = fmul <2 x float> %.sroa.045.0.copyload, %.sroa.05.0.copyload.i.i.i774
  %foldExtExtBinop1257 = fmul <2 x float> %.sroa.045.0.copyload, %.sroa.05.0.copyload.i.i.i774
  %shift1259 = shufflevector <2 x float> %foldExtExtBinop1257, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1260 = fadd <2 x float> %foldExtExtBinop1255, %shift1259
  %i.ajs = extractelement <2 x float> %foldExtExtBinop1260, i64 0
  %i.ajt = fadd float %i.ajr, %i.ajs
  %i.aju = load i64, ptr %21, align 8, !tbaa !212
  %i.ajv = and i64 %i.aju, 144115188075855871
  %i.ajw = inttoptr i64 %i.ajv to ptr
  %i.ajx = invoke { <2 x float>, <2 x float> } @_ZNK4pbrt13ConductorBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE(ptr noundef nonnull align 4 dereferenceable(40) %i.ajw, <2 x float> %37, float %i.aji, <2 x float> %38, float %i.ajt, i32 noundef 0)
          to label %.noexc795 unwind label %bb.av ; 2 uses

.noexc795:                                        ; preds = %bb.at
  %i.ajy = extractvalue { <2 x float>, <2 x float> } %i.ajx, 0
  %i.ajz = extractvalue { <2 x float>, <2 x float> } %i.ajx, 1
  br label %bb.au

bb.au:                                            ; preds = %.noexc795, %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit773
  %.sroa.4.0.i = phi <2 x float> [ %i.ajz, %.noexc795 ], [ zeroinitializer, %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit773 ] ; 2 uses
  %.sroa.0.0.i = phi <2 x float> [ %i.ajy, %.noexc795 ], [ zeroinitializer, %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit773 ] ; 2 uses
  %i.aka = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> %.sroa.4.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr1265 = freeze <4 x float> %i.aka
  %i.akb = fcmp une <4 x float> %.fr1265, zeroinitializer
  %i.akc = bitcast <4 x i1> %i.akb to i4
  %.not1266 = icmp eq i4 %i.akc, 0
  br i1 %.not1266, label %bb.bk, label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.akd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.aw:                                            ; preds = %bb.au
  %i.ake = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i799 = load <2 x float>, ptr %i.ake, align 8
  %.sroa.8.0..sroa_idx.i800 = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i801 = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i800, align 8, !tbaa !71
  %i.akf = fmul <2 x float> %.sroa.0.0.i, %.sroa.0.0.copyload4.i799
  %i.akg = fmul <2 x float> %.sroa.4.0.i, %.sroa.8.0.copyload.i801
  %.sroa.04.0.vec.extract.i.i813 = extractelement <2 x float> %.sroa.045.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i.i815 = extractelement <2 x float> %.sroa.045.0.copyload, i64 1
  %i.akh = fmul float %.sroa.17.0, %.sroa.7.0.copyload ; 2 uses
  %i.aki = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %.sroa.04.4.vec.extract.i.i815, float %i.akh)
  %i.akj = fneg float %i.akh
  %i.akk = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.7.0.copyload, float %i.akj)
  %i.akl = fadd float %i.aki, %i.akk
  %i.akm = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %.sroa.04.0.vec.extract.i.i813, float %i.akl)
  %i.akn = call noundef float @llvm.fabs.f32(float %i.akm)
  %i.ako = insertelement <2 x float> poison, float %i.akn, i64 0
  %i.akp = shufflevector <2 x float> %i.ako, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.akq = fmul <2 x float> %i.akp, %i.akf
  %i.akr = fmul <2 x float> %i.akp, %i.akg
  %i.aks = load i8, ptr %i.aiu, align 16, !tbaa !270, !range !11, !noundef !12
  %i.akt = trunc nuw i8 %i.aks to i1
  %i.aku = load i8, ptr %i.aih, align 8, !range !11
  %i.akv = trunc nuw i8 %i.aku to i1
  %or.cond = select i1 %i.akt, i1 %i.akv, i1 false
  br i1 %or.cond, label %bb.ax, label %.invoke

.invoke:                                          ; preds = %bb.aw
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
          to label %.cont unwind label %bb.be

.cont:                                            ; preds = %.invoke
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.akw = load float, ptr %i.ajb, align 4, !tbaa !272
  %i.akx = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.aky = load float, ptr %i.akx, align 8, !tbaa !275
  %i.akz = fmul float %i.akw, %i.aky
  %i.ala = load i32, ptr %i.aiq, align 8, !tbaa !278
  %i.alb = icmp ult i32 %i.ala, 2
  br i1 %i.alb, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.alc = invoke noundef float @_ZNK4pbrt4BSDF3PDFINS_13ConductorBxDFEEEfNS_7Vector3IfEES4_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 8 dereferenceable(44) %21, <2 x float> %.sroa.01059.0.copyload, float %.sroa.121066.0.copyload, <2 x float> %.sroa.045.0.copyload, float %.sroa.7.0.copyload, i32 noundef 0, i32 noundef 3)
          to label %._crit_edge1183 unwind label %bb.bf

._crit_edge1183:                                  ; preds = %bb.ay
  %.pre = load i8, ptr %i.aiu, align 16, !tbaa !270, !range !11
  %i.ald = trunc nuw i8 %.pre to i1
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge1183, %bb.ax
  %i.ale = phi i1 [ true, %bb.ax ], [ %i.ald, %._crit_edge1183 ]
  %i.alf = phi float [ 0.000000e+00, %bb.ax ], [ %i.alc, %._crit_edge1183 ]
  %i.alg = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0.0.copyload.i833 = load <2 x float>, ptr %i.alg, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i834 = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.sroa.6.0.copyload.i835 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i834, align 8, !tbaa !71 ; 2 uses
  %i.alh = insertelement <2 x float> poison, float %i.alf, i64 0
  %i.ali = shufflevector <2 x float> %i.alh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.alj = fmul <2 x float> %i.ali, %.sroa.0.0.copyload.i833
  %i.alk = fmul <2 x float> %i.ali, %.sroa.6.0.copyload.i835
  %i.all = insertelement <2 x float> poison, float %i.akz, i64 0
  %i.alm = shufflevector <2 x float> %i.all, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aln = fmul <2 x float> %i.alm, %.sroa.0.0.copyload.i833
  %i.alo = fmul <2 x float> %i.alm, %.sroa.6.0.copyload.i835
  br i1 %i.ale, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
          to label %.noexc859 unwind label %bb.bg

.noexc859:                                        ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.alp = load <2 x float>, ptr %27, align 16, !tbaa !155
  %i.alq = fmul <2 x float> %i.akq, %i.alp
  %i.alr = load <2 x float>, ptr %i.aix, align 8, !tbaa !155
  %i.als = fmul <2 x float> %i.akr, %i.alr
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.mh, align 8
  %.sroa.214.0.copyload = load float, ptr %.sroa.282.0..sroa_idx, align 8
  %i.alt = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.alu = load float, ptr %i.alt, align 4, !tbaa !395
  %i.alv = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.alw = getelementptr inbounds nuw i8, ptr %27, i64 72
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.alw, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 80
  %.sroa.212.0.copyload = load float, ptr %.sroa.212.0..sroa_idx, align 16
  invoke void @_ZN4pbrt10SpawnRayToENS_8Point3fiENS_7Normal3IfEEfS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Ray") align 8 %28, ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mi, <2 x float> %.sroa.013.0.copyload, float %.sroa.214.0.copyload, float noundef %i.alu, ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.alv, <2 x float> %.sroa.011.0.copyload, float %.sroa.212.0.copyload)
          to label %bb.bc unwind label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.alx = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.aly = load i8, ptr %i.alx, align 2, !tbaa !245, !range !11, !noundef !12
  %i.alz = trunc nuw i8 %i.aly to i1
  br i1 %i.alz, label %bb.bd, label %._crit_edge1184

._crit_edge1184:                                  ; preds = %bb.bc
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %28, i64 32
  %.pre1185 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !177
  br label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.ama = getelementptr inbounds nuw i8, ptr %28, i64 12
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.ama, align 4 ; 2 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 20
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4 ; 2 uses
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.mh, align 8 ; 2 uses
  %.sroa.24.0.copyload = load float, ptr %.sroa.282.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i878 = extractelement <2 x float> %.sroa.03.0.copyload, i64 0
  %.sroa.04.0.vec.extract.i879 = extractelement <2 x float> %.sroa.05.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i880 = extractelement <2 x float> %.sroa.03.0.copyload, i64 1
  %.sroa.04.4.vec.extract.i881 = extractelement <2 x float> %.sroa.05.0.copyload, i64 1
  %i.amb = fmul float %.sroa.26.0.copyload, %.sroa.24.0.copyload ; 2 uses
  %i.amc = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i880, float %.sroa.04.4.vec.extract.i881, float %i.amb)
  %i.amd = fneg float %i.amb
  %i.ame = call noundef float @llvm.fma.f32(float %.sroa.24.0.copyload, float %.sroa.26.0.copyload, float %i.amd)
  %i.amf = fadd float %i.amc, %i.ame
  %i.amg = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i878, float %.sroa.04.0.vec.extract.i879, float %i.amf)
  %i.amh = fcmp ogt float %i.amg, 0.000000e+00
  %.v460 = select i1 %i.amh, i64 248, i64 240
  %i.ami = getelementptr inbounds nuw i8, ptr %1, i64 %.v460
  %i.amj = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.amk = load i64, ptr %i.ami, align 8, !tbaa !177 ; 2 uses
  store i64 %i.amk, ptr %i.amj, align 8, !tbaa !177
  br label %bb.bi

bb.be:                                            ; preds = %.invoke
  %i.aml = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bf:                                            ; preds = %bb.ay
  %i.amm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bg:                                            ; preds = %bb.ba
  %i.amn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bi, %bb.bb
  %i.amo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %bb.bl

bb.bi:                                            ; preds = %._crit_edge1184, %bb.bd
  %i.amp = phi i64 [ %.pre1185, %._crit_edge1184 ], [ %i.amk, %bb.bd ]
  %i.amq = getelementptr inbounds nuw i8, ptr %i.g, i64 592
  %i.amr = load ptr, ptr %i.amq, align 8, !tbaa !279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %29, ptr noundef nonnull align 8 dereferenceable(40) %28, i64 28, i1 false)
  %i.ams = getelementptr inbounds nuw i8, ptr %29, i64 32
  store i64 %i.amp, ptr %i.ams, align 8, !tbaa !177
  %i.amt = getelementptr inbounds nuw i8, ptr %29, i64 40
  store float f0x3F7FF972, ptr %i.amt, align 8, !tbaa !282
  %i.amu = getelementptr inbounds nuw i8, ptr %29, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.amu, ptr noundef nonnull align 16 dereferenceable(32) %18, i64 32, i1 false), !tbaa.struct !204
  %i.amv = getelementptr inbounds nuw i8, ptr %29, i64 76
  store <2 x float> %i.alq, ptr %i.amv, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 84
  store <2 x float> %i.als, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !71
  %i.amw = getelementptr inbounds nuw i8, ptr %29, i64 92
  store <2 x float> %i.alj, ptr %i.amw, align 4
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 100
  store <2 x float> %i.alk, ptr %.sroa.519.0..sroa_idx, align 4, !tbaa !71
  %i.amx = getelementptr inbounds nuw i8, ptr %29, i64 108
  store <2 x float> %i.aln, ptr %i.amx, align 4
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 116
  store <2 x float> %i.alo, ptr %.sroa.517.0..sroa_idx, align 4, !tbaa !71
  %i.amy = getelementptr inbounds nuw i8, ptr %29, i64 124
  %i.amz = load i32, ptr %i.uw, align 4, !tbaa !401
  store i32 %i.amz, ptr %i.amy, align 4, !tbaa !283
  %i.ana = invoke noundef i32 @_ZN4pbrt9WorkQueueINS_17ShadowRayWorkItemEE4PushES1_(ptr noundef nonnull align 8 dereferenceable(228) %i.amr, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(128) %29)
end_hunk_3
