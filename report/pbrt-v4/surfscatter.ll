Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/surfscatter?download=true
inline.NumInlined: 8253
inline.NumDeleted: 1421
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_21CoatedDiffuseMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemIS2_EENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlS7_E_clES7_:bb.a
  %i.qm = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qm, align 16, !tbaa !155
  %i.qn = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qn, align 16, !tbaa !155
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.qf, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.nj, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.ok, align 4 ; 2 uses
  %i.qo = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qp = shufflevector <4 x float> %i.qo, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qq = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qr = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.qs = fmul <2 x float> %i.qq, %i.qr
  %i.qt = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.qu = fmul <2 x float> %.sroa.0162.0.copyload, %i.qt
  %i.qv = fadd <2 x float> %i.qs, %i.qu
  %i.qw = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.qx = shufflevector <2 x float> %i.qw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qy = fmul <2 x float> %i.qx, %i.qp
  %i.qz = fadd <2 x float> %i.qy, %i.qv
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.om, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.ra = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1098 = shufflevector <2 x float> %i.ra, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1099 = fadd <2 x float> %i.ra, %shift1098
  %i.rb = extractelement <2 x float> %foldExtExtBinop1099, i64 0
  %i.rc = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.rd = fadd float %i.rc, %i.rb
  %i.re = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qz, float %i.rd, ptr nonnull %i.e, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.rf = extractvalue { <2 x float>, <2 x float> } %i.re, 0
  %i.rg = extractvalue { <2 x float>, <2 x float> } %i.re, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.rf, <2 x float> %i.rg, ptr noundef nonnull align 4 dereferenceable(32) %17)
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !180
  %i.rj = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.rk = load i8, ptr %i.rj, align 4, !tbaa !219, !range !11, !noundef !12
  %i.rl = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !220
  %i.rn = sext i32 %i.ri to i64                   ; 20 uses
  %i.ro = getelementptr inbounds i8, ptr %i.rm, i64 %i.rn
  store i8 %i.rk, ptr %i.ro, align 1, !tbaa !10
  %i.rp = load float, ptr %23, align 4, !tbaa !221
  %i.rq = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !222
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %i.rn
  store float %i.rp, ptr %i.rs, align 4, !tbaa !155
  %i.rt = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !223
  %i.rv = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !224
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.rw, i64 %i.rn
  store float %i.ru, ptr %i.rx, align 4, !tbaa !155
  %i.ry = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !225
  %i.sa = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !226
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.rn
  store float %i.rz, ptr %i.sc, align 4, !tbaa !155
  %i.sd = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.se = load float, ptr %i.sd, align 4, !tbaa !227
  %i.sf = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !157
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.rn
  store float %i.se, ptr %i.sh, align 4, !tbaa !155
  %i.si = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.sj = load float, ptr %i.si, align 4, !tbaa !228
  %i.sk = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !158
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.rn
  store float %i.sj, ptr %i.sm, align 4, !tbaa !155
  %i.sn = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.so = load float, ptr %i.sn, align 4, !tbaa !229
  %i.sp = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !159
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %i.rn
  store float %i.so, ptr %i.sr, align 4, !tbaa !155
  %i.ss = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.st = load float, ptr %i.ss, align 4, !tbaa !227
  %i.su = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !157
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.rn
  store float %i.st, ptr %i.sw, align 4, !tbaa !155
  %i.sx = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !228
  %i.sz = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !158
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.rn
  store float %i.sy, ptr %i.tb, align 4, !tbaa !155
  %i.tc = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.td = load float, ptr %i.tc, align 4, !tbaa !229
  %i.te = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !159
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.rn
  store float %i.td, ptr %i.tg, align 4, !tbaa !155
  %i.th = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.ti = load float, ptr %i.th, align 4, !tbaa !230
  %i.tj = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !163
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.rn
  store float %i.ti, ptr %i.tl, align 4, !tbaa !155
  %i.tm = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !231
  %i.to = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !164
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.rn
  store float %i.tn, ptr %i.tq, align 4, !tbaa !155
  %i.tr = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !232
  %i.tt = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !233
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.rn
  store float %i.ts, ptr %i.tv, align 4, !tbaa !155
  %i.tw = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !234
  %i.ty = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !160
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.rn
  store float %i.tx, ptr %i.ua, align 4, !tbaa !155
  %i.ub = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !235
  %i.ud = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !161
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.rn
  store float %i.uc, ptr %i.uf, align 4, !tbaa !155
  %i.ug = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !181
  %i.ui = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !162
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.rn
  store float %i.uh, ptr %i.uk, align 4, !tbaa !155
  %i.ul = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.um = load float, ptr %i.ul, align 4, !tbaa !234
  %i.un = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !160
  %i.up = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.rn
  store float %i.um, ptr %i.up, align 4, !tbaa !155
  %i.uq = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !235
  %i.us = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !161
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %i.rn
  store float %i.ur, ptr %i.uu, align 4, !tbaa !155
  %i.uv = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !181
  %i.ux = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !162
  %i.uz = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.rn
  store float %i.uw, ptr %i.uz, align 4, !tbaa !155
  %i.va = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.vb = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !153
  %i.vd = getelementptr inbounds [16 x i8], ptr %i.vc, i64 %i.rn ; 2 uses
  %i.ve = load <4 x float>, ptr %i.va, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.ve, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.ve, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.vd, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0993.0.copyload = load <2 x float>, ptr %i.mg, align 4 ; 10 uses
  %.sroa.121000.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121000.0.copyload = load float, ptr %.sroa.121000.0..sroa_idx, align 4 ; 8 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !180
  %i.vi = load ptr, ptr %i.vf, align 8, !tbaa !236, !noalias !729
  %i.vj = sext i32 %i.vh to i64                   ; 2 uses
  %i.vk = getelementptr inbounds [16 x i8], ptr %i.vi, i64 %i.vj ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vl = load <2 x float>, ptr %i.vk, align 16, !noalias !729
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !71, !noalias !729
  %i.vm = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !237, !noalias !729
  %i.vo = getelementptr inbounds [16 x i8], ptr %i.vn, i64 %i.vj ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vo, align 16, !noalias !729 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %.sroa.2.0.copyload.i931.i.i1062 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !729
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_17CoatedDiffuseBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %24, ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %.sroa.0993.0.copyload, float %.sroa.121000.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1062, i32 noundef 0, i32 noundef 3)
  %i.vp = getelementptr inbounds nuw i8, ptr %24, i64 44 ; 3 uses
  %i.vq = load i8, ptr %i.vp, align 4, !tbaa !239, !range !11, !noundef !12
  %i.vr = trunc nuw i8 %i.vq to i1
  br i1 %i.vr, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vs = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.sroa.0149.0.copyload = load <2 x float>, ptr %i.vs, align 16 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 200
  %30 = load <4 x float>, ptr %i.vt, align 8
  %.sroa.01.0.vec.extract.i.i592 = extractelement <2 x float> %.sroa.0259.0, i64 0 ; 2 uses
  %.sroa.04.0.vec.extract.i.i593 = extractelement <2 x float> %.sroa.0149.0.copyload, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.i594 = extractelement <2 x float> %.sroa.0259.0, i64 1 ; 2 uses
  %.sroa.04.4.vec.extract.i.i595 = extractelement <2 x float> %.sroa.0149.0.copyload, i64 1 ; 3 uses
  %i.vu = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.vv = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i594, float %.sroa.04.4.vec.extract.i.i595, float %i.vu)
  %i.vw = fneg float %i.vu
  %i.vx = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.vw)
  %i.vy = fadd float %i.vv, %i.vx
  %i.vz = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i592, float %.sroa.04.0.vec.extract.i.i593, float %i.vy)
  %i.wa = call noundef float @llvm.fabs.f32(float %i.vz)
  %i.wb = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !242 ; 2 uses
  %i.wd = load <4 x float>, ptr %24, align 16, !tbaa !155
  %i.we = fmul <4 x float> %30, %i.wd
  %i.wf = insertelement <4 x float> poison, float %i.wa, i64 0
  %i.wg = shufflevector <4 x float> %i.wf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wh = fmul <4 x float> %i.we, %i.wg
  %i.wi = insertelement <4 x float> poison, float %i.wc, i64 0
  %i.wj = shufflevector <4 x float> %i.wi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wk = fdiv <4 x float> %i.wh, %i.wj           ; 7 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0931.0.copyload = load <4 x float>, ptr %i.wl, align 8, !tbaa !71 ; 7 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.wn = load i8, ptr %i.wm, align 8, !tbaa !243, !range !11, !noundef !12
  %i.wo = trunc nuw i8 %i.wn to i1
  br i1 %i.wo, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620, label %.thread

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620: ; preds = %bb.q
  %.sroa.05.0.copyload.i.i.i623 = load <2 x float>, ptr %i.om, align 8 ; 3 uses
  %.sroa.26.0.copyload.i.i.i625 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.wp = fmul <2 x float> %.sroa.0993.0.copyload, %.sroa.05.0.copyload.i.i.i623 ; 2 uses
  %shift1101 = shufflevector <2 x float> %i.wp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1102 = fadd <2 x float> %i.wp, %shift1101
  %i.wq = extractelement <2 x float> %foldExtExtBinop1102, i64 0
  %i.wr = fmul float %.sroa.121000.0.copyload, %.sroa.26.0.copyload.i.i.i625
  %i.ws = fadd float %i.wr, %i.wq                 ; 2 uses
  %i.wt = fcmp oeq float %i.ws, 0.000000e+00
  br i1 %i.wt, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620
  %i.wu = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.wv = shufflevector <4 x float> %i.wu, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.021.0.copyload.i.i.i630 = load <2 x float>, ptr %i.nj, align 8 ; 2 uses
  %.sroa.214.0.copyload.i.i.i634 = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %.sroa.013.0.copyload.i.i.i635 = load <2 x float>, ptr %i.ok, align 4 ; 2 uses
  %i.ww = insertelement <2 x float> poison, float %.sroa.6.0.copyload, i64 0
  %i.wx = shufflevector <2 x float> %i.ww, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wy = insertelement <2 x float> %i.wv, float %.sroa.214.0.copyload.i.i.i634, i64 1 ; 2 uses
  %i.wz = fmul <2 x float> %i.wx, %i.wy
  %i.xa = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i635, <2 x float> %.sroa.021.0.copyload.i.i.i630, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xb = fmul <2 x float> %.sroa.0149.0.copyload, %i.xa
  %i.xc = shufflevector <2 x float> %i.xb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xd = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i630, <2 x float> %.sroa.013.0.copyload.i.i.i635, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xe = fmul <2 x float> %.sroa.0149.0.copyload, %i.xd
  %i.xf = fadd <2 x float> %i.xc, %i.xe
  %i.xg = fadd <2 x float> %i.wz, %i.xf
  %i.xh = fmul float %.sroa.6.0.copyload, %.sroa.26.0.copyload.i.i.i625
  %foldExtExtBinop1104 = fmul <2 x float> %.sroa.0149.0.copyload, %.sroa.05.0.copyload.i.i.i623
  %foldExtExtBinop1106 = fmul <2 x float> %.sroa.0149.0.copyload, %.sroa.05.0.copyload.i.i.i623
  %shift1108 = shufflevector <2 x float> %foldExtExtBinop1106, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1109 = fadd <2 x float> %foldExtExtBinop1104, %shift1108
  %i.xi = extractelement <2 x float> %foldExtExtBinop1109, i64 0
  %i.xj = fadd float %i.xh, %i.xi
  %i.xk = insertelement <2 x float> poison, float %.sroa.121000.0.copyload, i64 0
  %i.xl = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xm = fmul <2 x float> %i.xl, %i.wy
  %i.xn = fmul <2 x float> %.sroa.0993.0.copyload, %i.xa
  %i.xo = shufflevector <2 x float> %i.xn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xp = fmul <2 x float> %.sroa.0993.0.copyload, %i.xd
  %i.xq = fadd <2 x float> %i.xo, %i.xp
  %i.xr = fadd <2 x float> %i.xm, %i.xq
  %i.xs = load i64, ptr %20, align 8, !tbaa !212
  %i.xt = and i64 %i.xs, 144115188075855871
  %i.xu = inttoptr i64 %i.xt to ptr
  %i.xv = call noundef float @_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE3PDFENS_7Vector3IfEES5_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(60) %i.xu, <2 x float> %i.xr, float %i.ws, <2 x float> %i.xg, float %i.xj, i32 noundef 0, i32 noundef 3)
  %.pre.pre = load i8, ptr %i.vp, align 4, !tbaa !239, !range !11
  %i.xw = trunc nuw i8 %.pre.pre to i1
  br label %bb.s

.thread:                                          ; preds = %bb.q
  %i.xx = insertelement <2 x float> poison, float %i.wc, i64 0
  %i.xy = shufflevector <2 x float> %i.xx, <2 x float> poison, <4 x i32> zeroinitializer
  br label %bb.t

bb.s:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620, %bb.r
  %.pre = phi i1 [ true, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620 ], [ %i.xw, %bb.r ]
  %.0.i640 = phi float [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620 ], [ %i.xv, %bb.r ]
  %i.xz = insertelement <2 x float> poison, float %.0.i640, i64 0
  %i.ya = shufflevector <2 x float> %i.xz, <2 x float> poison, <4 x i32> zeroinitializer
  br i1 %.pre, label %bb.t, label %.noexc670

.noexc670:                                        ; preds = %bb.s
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
  unreachable

bb.t:                                             ; preds = %.thread, %bb.s
  %.pn = phi <4 x float> [ %i.xy, %.thread ], [ %i.ya, %bb.s ]
  %.sroa.0923.01078 = fdiv <4 x float> %.sroa.0931.0.copyload, %.pn ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.yc = load float, ptr %i.yb, align 8, !tbaa !175 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 16, !tbaa !244
  %i.yf = and i32 %i.ye, 2
  %.not1063 = icmp eq i32 %i.yf, 0
  %i.yg = getelementptr inbounds nuw i8, ptr %24, i64 36
  %i.yh = load float, ptr %i.yg, align 4          ; 2 uses
  %i.yi = fmul float %i.yh, %i.yh
  %i.yj = fmul float %i.yc, %i.yi
  %.0443 = select i1 %.not1063, float %i.yc, float %i.yj ; 5 uses
  %i.yk = extractelement <4 x float> %i.wk, i64 0
  %i.yl = fmul float %i.yk, %.0443
  %i.ym = extractelement <4 x float> %i.wk, i64 1
  %i.yn = fmul float %i.ym, %.0443
  %i.yo = extractelement <4 x float> %i.wk, i64 2
  %i.yp = fmul float %i.yo, %.0443
  %i.yq = extractelement <4 x float> %i.wk, i64 3
  %i.yr = fmul float %i.yq, %.0443
  %shift1111 = shufflevector <4 x float> %.sroa.0931.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1112 = fadd <4 x float> %.sroa.0931.0.copyload, %shift1111
  %shift1114 = shufflevector <4 x float> %.sroa.0931.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1115 = fadd <4 x float> %shift1114, %foldExtExtBinop1112
  %shift1117 = shufflevector <4 x float> %.sroa.0931.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1118 = fadd <4 x float> %shift1117, %foldExtExtBinop1115
  %i.ys = extractelement <4 x float> %foldExtExtBinop1118, i64 0
  %i.yt = fmul float %i.ys, 2.500000e-01          ; 4 uses
  %i.yu = fdiv float %i.yl, %i.yt                 ; 2 uses
  %i.yv = fdiv float %i.yn, %i.yt                 ; 2 uses
  %i.yw = fdiv float %i.yp, %i.yt                 ; 2 uses
  %i.yx = fdiv float %i.yr, %i.yt                 ; 2 uses
  %i.yy = fcmp olt float %i.yu, %i.yv
  %.sroa.speculated.i = select i1 %i.yy, float %i.yv, float %i.yu ; 2 uses
  %i.yz = fcmp olt float %.sroa.speculated.i, %i.yw
  %.sroa.speculated.1.i = select i1 %i.yz, float %i.yw, float %.sroa.speculated.i ; 2 uses
  %i.za = fcmp olt float %.sroa.speculated.1.i, %i.yx
  %.sroa.speculated.2.i = select i1 %i.za, float %i.yx, float %.sroa.speculated.1.i ; 2 uses
  %i.zb = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.zb, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.zc = load i32, ptr %i.pv, align 8, !tbaa !167
  %i.zd = icmp sgt i32 %i.zc, 0
  br i1 %i.zd, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ze = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.zf = fcmp ogt float %i.ze, 0.000000e+00
  %.sroa.speculated = select i1 %i.zf, float %i.ze, float 0.000000e+00 ; 2 uses
  %i.zg = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.zg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.zh = fsub float 1.000000e+00, %.sroa.speculated
  %i.zi = insertelement <4 x float> poison, float %i.zh, i64 0
  %i.zj = shufflevector <4 x float> %i.zi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zk = fdiv <4 x float> %i.wk, %i.zj
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u, %bb.t
  %.sroa.0949.0 = phi <4 x float> [ %i.wk, %bb.t ], [ %i.zk, %bb.w ], [ %i.wk, %bb.u ], [ zeroinitializer, %bb.v ]
  %.sroa.0949.0.fr = freeze <4 x float> %.sroa.0949.0 ; 3 uses
  %i.zl = fcmp une <4 x float> %.sroa.0949.0.fr, zeroinitializer
  %i.zm = bitcast <4 x i1> %i.zl to i4
  %.not1130 = icmp eq i4 %i.zm, 0
  br i1 %.not1130, label %bb.ad, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706: ; preds = %bb.x
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mi, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !171
  %i.zp = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mm, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %.sroa.0149.0.copyload, float %.sroa.6.0.copyload) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.zp, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.zp, 1
  %i.zq = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.zr = load i8, ptr %i.zq, align 2, !tbaa !245, !range !11, !noundef !12
  %i.zs = trunc nuw i8 %i.zr to i1
  br i1 %i.zs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706
  %.sroa.0101.0.copyload = load <2 x float>, ptr %i.mi, align 8 ; 2 uses
  %.sroa.2102.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i711 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i713 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 1
  %i.zt = fmul float %.sroa.6.0.copyload, %.sroa.2102.0.copyload ; 2 uses
  %i.zu = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i713, float %.sroa.04.4.vec.extract.i.i595, float %i.zt)
  %i.zv = fneg float %i.zt
  %i.zw = call noundef float @llvm.fma.f32(float %.sroa.2102.0.copyload, float %.sroa.6.0.copyload, float %i.zv)
  %i.zx = fadd float %i.zu, %i.zw
  %i.zy = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i711, float %.sroa.04.0.vec.extract.i.i593, float %i.zx)
  %i.zz = fcmp ogt float %i.zy, 0.000000e+00
  %.v = select i1 %i.zz, i64 248, i64 240
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !177
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706
  %.sroa.17896.0 = phi i64 [ %i.aab, %bb.y ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706 ]
  %i.aac = load i8, ptr %i.vp, align 4, !tbaa !239, !range !11, !noundef !12
  %i.aad = trunc nuw i8 %i.aac to i1
  br i1 %i.aad, label %bb.aa, label %.noexc715

.noexc715:                                        ; preds = %bb.z
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.aae = load i32, ptr %i.yd, align 16, !tbaa !244
  %i.aaf = and i32 %i.aae, 16                     ; 2 uses
  %.not1064 = icmp eq i32 %i.aaf, 0
  br i1 %.not1064, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
end_hunk_0
begin_hunk_1_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_21CoatedDiffuseMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemIS2_EENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlS7_E_clES7_:bb.a
  %i.qm = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qm, align 16, !tbaa !155
  %i.qn = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qn, align 16, !tbaa !155
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.qf, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.nj, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.ok, align 4 ; 2 uses
  %i.qo = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qp = shufflevector <4 x float> %i.qo, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qq = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qr = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.qs = fmul <2 x float> %i.qq, %i.qr
  %i.qt = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.qu = fmul <2 x float> %.sroa.0162.0.copyload, %i.qt
  %i.qv = fadd <2 x float> %i.qs, %i.qu
  %i.qw = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.qx = shufflevector <2 x float> %i.qw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qy = fmul <2 x float> %i.qx, %i.qp
  %i.qz = fadd <2 x float> %i.qy, %i.qv
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.om, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.ra = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1098 = shufflevector <2 x float> %i.ra, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1099 = fadd <2 x float> %i.ra, %shift1098
  %i.rb = extractelement <2 x float> %foldExtExtBinop1099, i64 0
  %i.rc = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.rd = fadd float %i.rc, %i.rb
  %i.re = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qz, float %i.rd, ptr nonnull %i.e, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.rf = extractvalue { <2 x float>, <2 x float> } %i.re, 0
  %i.rg = extractvalue { <2 x float>, <2 x float> } %i.re, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.rf, <2 x float> %i.rg, ptr noundef nonnull align 4 dereferenceable(32) %17)
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !180
  %i.rj = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.rk = load i8, ptr %i.rj, align 4, !tbaa !219, !range !11, !noundef !12
  %i.rl = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !220
  %i.rn = sext i32 %i.ri to i64                   ; 20 uses
  %i.ro = getelementptr inbounds i8, ptr %i.rm, i64 %i.rn
  store i8 %i.rk, ptr %i.ro, align 1, !tbaa !10
  %i.rp = load float, ptr %23, align 4, !tbaa !221
  %i.rq = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !222
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %i.rn
  store float %i.rp, ptr %i.rs, align 4, !tbaa !155
  %i.rt = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !223
  %i.rv = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !224
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.rw, i64 %i.rn
  store float %i.ru, ptr %i.rx, align 4, !tbaa !155
  %i.ry = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !225
  %i.sa = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !226
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.rn
  store float %i.rz, ptr %i.sc, align 4, !tbaa !155
  %i.sd = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.se = load float, ptr %i.sd, align 4, !tbaa !227
  %i.sf = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !157
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.rn
  store float %i.se, ptr %i.sh, align 4, !tbaa !155
  %i.si = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.sj = load float, ptr %i.si, align 4, !tbaa !228
  %i.sk = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !158
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.rn
  store float %i.sj, ptr %i.sm, align 4, !tbaa !155
  %i.sn = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.so = load float, ptr %i.sn, align 4, !tbaa !229
  %i.sp = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !159
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %i.rn
  store float %i.so, ptr %i.sr, align 4, !tbaa !155
  %i.ss = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.st = load float, ptr %i.ss, align 4, !tbaa !227
  %i.su = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !157
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.rn
  store float %i.st, ptr %i.sw, align 4, !tbaa !155
  %i.sx = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !228
  %i.sz = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !158
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.rn
  store float %i.sy, ptr %i.tb, align 4, !tbaa !155
  %i.tc = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.td = load float, ptr %i.tc, align 4, !tbaa !229
  %i.te = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !159
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.rn
  store float %i.td, ptr %i.tg, align 4, !tbaa !155
  %i.th = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.ti = load float, ptr %i.th, align 4, !tbaa !230
  %i.tj = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !163
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.rn
  store float %i.ti, ptr %i.tl, align 4, !tbaa !155
  %i.tm = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !231
  %i.to = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !164
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.rn
  store float %i.tn, ptr %i.tq, align 4, !tbaa !155
  %i.tr = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !232
  %i.tt = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !233
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.rn
  store float %i.ts, ptr %i.tv, align 4, !tbaa !155
  %i.tw = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !234
  %i.ty = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !160
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.rn
  store float %i.tx, ptr %i.ua, align 4, !tbaa !155
  %i.ub = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !235
  %i.ud = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !161
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.rn
  store float %i.uc, ptr %i.uf, align 4, !tbaa !155
  %i.ug = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !181
  %i.ui = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !162
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.rn
  store float %i.uh, ptr %i.uk, align 4, !tbaa !155
  %i.ul = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.um = load float, ptr %i.ul, align 4, !tbaa !234
  %i.un = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !160
  %i.up = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.rn
  store float %i.um, ptr %i.up, align 4, !tbaa !155
  %i.uq = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !235
  %i.us = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !161
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %i.rn
  store float %i.ur, ptr %i.uu, align 4, !tbaa !155
  %i.uv = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !181
  %i.ux = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !162
  %i.uz = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.rn
  store float %i.uw, ptr %i.uz, align 4, !tbaa !155
  %i.va = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.vb = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !153
  %i.vd = getelementptr inbounds [16 x i8], ptr %i.vc, i64 %i.rn ; 2 uses
  %i.ve = load <4 x float>, ptr %i.va, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.ve, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.ve, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.vd, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0993.0.copyload = load <2 x float>, ptr %i.mg, align 4 ; 10 uses
  %.sroa.121000.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121000.0.copyload = load float, ptr %.sroa.121000.0..sroa_idx, align 4 ; 8 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !180
  %i.vi = load ptr, ptr %i.vf, align 8, !tbaa !236, !noalias !1110
  %i.vj = sext i32 %i.vh to i64                   ; 2 uses
  %i.vk = getelementptr inbounds [16 x i8], ptr %i.vi, i64 %i.vj ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vl = load <2 x float>, ptr %i.vk, align 16, !noalias !1110
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !71, !noalias !1110
  %i.vm = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !237, !noalias !1110
  %i.vo = getelementptr inbounds [16 x i8], ptr %i.vn, i64 %i.vj ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vo, align 16, !noalias !1110 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %.sroa.2.0.copyload.i931.i.i1062 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !1110
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_17CoatedDiffuseBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %24, ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %.sroa.0993.0.copyload, float %.sroa.121000.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1062, i32 noundef 0, i32 noundef 3)
  %i.vp = getelementptr inbounds nuw i8, ptr %24, i64 44 ; 3 uses
  %i.vq = load i8, ptr %i.vp, align 4, !tbaa !239, !range !11, !noundef !12
  %i.vr = trunc nuw i8 %i.vq to i1
  br i1 %i.vr, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vs = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.vs, align 16 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 200
  %30 = load <4 x float>, ptr %i.vt, align 8
  %.sroa.01.0.vec.extract.i.i592 = extractelement <2 x float> %.sroa.0259.0, i64 0 ; 2 uses
  %.sroa.04.0.vec.extract.i.i593 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.i594 = extractelement <2 x float> %.sroa.0259.0, i64 1 ; 2 uses
  %.sroa.04.4.vec.extract.i.i595 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.vu = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.vv = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i594, float %.sroa.04.4.vec.extract.i.i595, float %i.vu)
  %i.vw = fneg float %i.vu
  %i.vx = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.vw)
  %i.vy = fadd float %i.vv, %i.vx
  %i.vz = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i592, float %.sroa.04.0.vec.extract.i.i593, float %i.vy)
  %i.wa = call noundef float @llvm.fabs.f32(float %i.vz)
  %i.wb = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !242 ; 2 uses
  %i.wd = load <4 x float>, ptr %24, align 16, !tbaa !155
  %i.we = fmul <4 x float> %30, %i.wd
  %i.wf = insertelement <4 x float> poison, float %i.wa, i64 0
  %i.wg = shufflevector <4 x float> %i.wf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wh = fmul <4 x float> %i.we, %i.wg
  %i.wi = insertelement <4 x float> poison, float %i.wc, i64 0
  %i.wj = shufflevector <4 x float> %i.wi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wk = fdiv <4 x float> %i.wh, %i.wj           ; 7 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0931.0.copyload = load <4 x float>, ptr %i.wl, align 8, !tbaa !71 ; 7 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.wn = load i8, ptr %i.wm, align 8, !tbaa !243, !range !11, !noundef !12
  %i.wo = trunc nuw i8 %i.wn to i1
  br i1 %i.wo, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620, label %.thread

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620: ; preds = %bb.q
  %.sroa.05.0.copyload.i.i.i623 = load <2 x float>, ptr %i.om, align 8 ; 3 uses
  %.sroa.26.0.copyload.i.i.i625 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.wp = fmul <2 x float> %.sroa.0993.0.copyload, %.sroa.05.0.copyload.i.i.i623 ; 2 uses
  %shift1101 = shufflevector <2 x float> %i.wp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1102 = fadd <2 x float> %i.wp, %shift1101
  %i.wq = extractelement <2 x float> %foldExtExtBinop1102, i64 0
  %i.wr = fmul float %.sroa.121000.0.copyload, %.sroa.26.0.copyload.i.i.i625
  %i.ws = fadd float %i.wr, %i.wq                 ; 2 uses
  %i.wt = fcmp oeq float %i.ws, 0.000000e+00
  br i1 %i.wt, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620
  %i.wu = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.wv = shufflevector <4 x float> %i.wu, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.021.0.copyload.i.i.i630 = load <2 x float>, ptr %i.nj, align 8 ; 2 uses
  %.sroa.214.0.copyload.i.i.i634 = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %.sroa.013.0.copyload.i.i.i635 = load <2 x float>, ptr %i.ok, align 4 ; 2 uses
  %i.ww = insertelement <2 x float> poison, float %.sroa.6.0.copyload, i64 0
  %i.wx = shufflevector <2 x float> %i.ww, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wy = insertelement <2 x float> %i.wv, float %.sroa.214.0.copyload.i.i.i634, i64 1 ; 2 uses
  %i.wz = fmul <2 x float> %i.wx, %i.wy
  %i.xa = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i635, <2 x float> %.sroa.021.0.copyload.i.i.i630, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xb = fmul <2 x float> %.sroa.0151.0.copyload, %i.xa
  %i.xc = shufflevector <2 x float> %i.xb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xd = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i630, <2 x float> %.sroa.013.0.copyload.i.i.i635, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xe = fmul <2 x float> %.sroa.0151.0.copyload, %i.xd
  %i.xf = fadd <2 x float> %i.xc, %i.xe
  %i.xg = fadd <2 x float> %i.wz, %i.xf
  %i.xh = fmul float %.sroa.6.0.copyload, %.sroa.26.0.copyload.i.i.i625
  %foldExtExtBinop1104 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i623
  %foldExtExtBinop1106 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i623
  %shift1108 = shufflevector <2 x float> %foldExtExtBinop1106, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1109 = fadd <2 x float> %foldExtExtBinop1104, %shift1108
  %i.xi = extractelement <2 x float> %foldExtExtBinop1109, i64 0
  %i.xj = fadd float %i.xh, %i.xi
  %i.xk = insertelement <2 x float> poison, float %.sroa.121000.0.copyload, i64 0
  %i.xl = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xm = fmul <2 x float> %i.xl, %i.wy
  %i.xn = fmul <2 x float> %.sroa.0993.0.copyload, %i.xa
  %i.xo = shufflevector <2 x float> %i.xn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xp = fmul <2 x float> %.sroa.0993.0.copyload, %i.xd
  %i.xq = fadd <2 x float> %i.xo, %i.xp
  %i.xr = fadd <2 x float> %i.xm, %i.xq
  %i.xs = load i64, ptr %20, align 8, !tbaa !212
  %i.xt = and i64 %i.xs, 144115188075855871
  %i.xu = inttoptr i64 %i.xt to ptr
  %i.xv = call noundef float @_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE3PDFENS_7Vector3IfEES5_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(60) %i.xu, <2 x float> %i.xr, float %i.ws, <2 x float> %i.xg, float %i.xj, i32 noundef 0, i32 noundef 3)
  %.pre.pre = load i8, ptr %i.vp, align 4, !tbaa !239, !range !11
  %i.xw = trunc nuw i8 %.pre.pre to i1
  br label %bb.s

.thread:                                          ; preds = %bb.q
  %i.xx = insertelement <2 x float> poison, float %i.wc, i64 0
  %i.xy = shufflevector <2 x float> %i.xx, <2 x float> poison, <4 x i32> zeroinitializer
  br label %bb.t

bb.s:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620, %bb.r
  %.pre = phi i1 [ true, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620 ], [ %i.xw, %bb.r ]
  %.0.i640 = phi float [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620 ], [ %i.xv, %bb.r ]
  %i.xz = insertelement <2 x float> poison, float %.0.i640, i64 0
  %i.ya = shufflevector <2 x float> %i.xz, <2 x float> poison, <4 x i32> zeroinitializer
  br i1 %.pre, label %bb.t, label %.noexc670

.noexc670:                                        ; preds = %bb.s
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
  unreachable

bb.t:                                             ; preds = %.thread, %bb.s
  %.pn = phi <4 x float> [ %i.xy, %.thread ], [ %i.ya, %bb.s ]
  %.sroa.0923.01078 = fdiv <4 x float> %.sroa.0931.0.copyload, %.pn ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.yc = load float, ptr %i.yb, align 8, !tbaa !175 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 16, !tbaa !244
  %i.yf = and i32 %i.ye, 2
  %.not1063 = icmp eq i32 %i.yf, 0
  %i.yg = getelementptr inbounds nuw i8, ptr %24, i64 36
  %i.yh = load float, ptr %i.yg, align 4          ; 2 uses
  %i.yi = fmul float %i.yh, %i.yh
  %i.yj = fmul float %i.yc, %i.yi
  %.0443 = select i1 %.not1063, float %i.yc, float %i.yj ; 5 uses
  %i.yk = extractelement <4 x float> %i.wk, i64 0
  %i.yl = fmul float %i.yk, %.0443
  %i.ym = extractelement <4 x float> %i.wk, i64 1
  %i.yn = fmul float %i.ym, %.0443
  %i.yo = extractelement <4 x float> %i.wk, i64 2
  %i.yp = fmul float %i.yo, %.0443
  %i.yq = extractelement <4 x float> %i.wk, i64 3
  %i.yr = fmul float %i.yq, %.0443
  %shift1111 = shufflevector <4 x float> %.sroa.0931.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1112 = fadd <4 x float> %.sroa.0931.0.copyload, %shift1111
  %shift1114 = shufflevector <4 x float> %.sroa.0931.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1115 = fadd <4 x float> %shift1114, %foldExtExtBinop1112
  %shift1117 = shufflevector <4 x float> %.sroa.0931.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1118 = fadd <4 x float> %shift1117, %foldExtExtBinop1115
  %i.ys = extractelement <4 x float> %foldExtExtBinop1118, i64 0
  %i.yt = fmul float %i.ys, 2.500000e-01          ; 4 uses
  %i.yu = fdiv float %i.yl, %i.yt                 ; 2 uses
  %i.yv = fdiv float %i.yn, %i.yt                 ; 2 uses
  %i.yw = fdiv float %i.yp, %i.yt                 ; 2 uses
  %i.yx = fdiv float %i.yr, %i.yt                 ; 2 uses
  %i.yy = fcmp olt float %i.yu, %i.yv
  %.sroa.speculated.i = select i1 %i.yy, float %i.yv, float %i.yu ; 2 uses
  %i.yz = fcmp olt float %.sroa.speculated.i, %i.yw
  %.sroa.speculated.1.i = select i1 %i.yz, float %i.yw, float %.sroa.speculated.i ; 2 uses
  %i.za = fcmp olt float %.sroa.speculated.1.i, %i.yx
  %.sroa.speculated.2.i = select i1 %i.za, float %i.yx, float %.sroa.speculated.1.i ; 2 uses
  %i.zb = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.zb, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.zc = load i32, ptr %i.pv, align 8, !tbaa !167
  %i.zd = icmp sgt i32 %i.zc, 0
  br i1 %i.zd, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ze = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.zf = fcmp ogt float %i.ze, 0.000000e+00
  %.sroa.speculated = select i1 %i.zf, float %i.ze, float 0.000000e+00 ; 2 uses
  %i.zg = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.zg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.zh = fsub float 1.000000e+00, %.sroa.speculated
  %i.zi = insertelement <4 x float> poison, float %i.zh, i64 0
  %i.zj = shufflevector <4 x float> %i.zi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zk = fdiv <4 x float> %i.wk, %i.zj
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u, %bb.t
  %.sroa.0949.0 = phi <4 x float> [ %i.wk, %bb.t ], [ %i.zk, %bb.w ], [ %i.wk, %bb.u ], [ zeroinitializer, %bb.v ]
  %.sroa.0949.0.fr = freeze <4 x float> %.sroa.0949.0 ; 3 uses
  %i.zl = fcmp une <4 x float> %.sroa.0949.0.fr, zeroinitializer
  %i.zm = bitcast <4 x i1> %i.zl to i4
  %.not1130 = icmp eq i4 %i.zm, 0
  br i1 %.not1130, label %bb.ad, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706: ; preds = %bb.x
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mi, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !171
  %i.zp = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mm, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %.sroa.0151.0.copyload, float %.sroa.6.0.copyload) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.zp, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.zp, 1
  %i.zq = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.zr = load i8, ptr %i.zq, align 2, !tbaa !245, !range !11, !noundef !12
  %i.zs = trunc nuw i8 %i.zr to i1
  br i1 %i.zs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706
  %.sroa.0101.0.copyload = load <2 x float>, ptr %i.mi, align 8 ; 2 uses
  %.sroa.2102.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i711 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i713 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 1
  %i.zt = fmul float %.sroa.6.0.copyload, %.sroa.2102.0.copyload ; 2 uses
  %i.zu = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i713, float %.sroa.04.4.vec.extract.i.i595, float %i.zt)
  %i.zv = fneg float %i.zt
  %i.zw = call noundef float @llvm.fma.f32(float %.sroa.2102.0.copyload, float %.sroa.6.0.copyload, float %i.zv)
  %i.zx = fadd float %i.zu, %i.zw
  %i.zy = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i711, float %.sroa.04.0.vec.extract.i.i593, float %i.zx)
  %i.zz = fcmp ogt float %i.zy, 0.000000e+00
  %.v = select i1 %i.zz, i64 248, i64 240
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !177
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706
  %.sroa.17896.0 = phi i64 [ %i.aab, %bb.y ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706 ]
  %i.aac = load i8, ptr %i.vp, align 4, !tbaa !239, !range !11, !noundef !12
  %i.aad = trunc nuw i8 %i.aac to i1
  br i1 %i.aad, label %bb.aa, label %.noexc715

.noexc715:                                        ; preds = %bb.z
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.aae = load i32, ptr %i.yd, align 16, !tbaa !244
  %i.aaf = and i32 %i.aae, 16                     ; 2 uses
  %.not1064 = icmp eq i32 %i.aaf, 0
  br i1 %.not1064, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
end_hunk_1
begin_hunk_2_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_23CoatedConductorMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_IS2_EENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlS9_E_clES9_:bb.a
  %i.qm = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qm, align 16, !tbaa !155
  %i.qn = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qn, align 16, !tbaa !155
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.qf, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.nj, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.ok, align 4 ; 2 uses
  %i.qo = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qp = shufflevector <4 x float> %i.qo, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qq = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qr = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.qs = fmul <2 x float> %i.qq, %i.qr
  %i.qt = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.qu = fmul <2 x float> %.sroa.0162.0.copyload, %i.qt
  %i.qv = fadd <2 x float> %i.qs, %i.qu
  %i.qw = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.qx = shufflevector <2 x float> %i.qw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qy = fmul <2 x float> %i.qx, %i.qp
  %i.qz = fadd <2 x float> %i.qy, %i.qv
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.om, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.ra = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1098 = shufflevector <2 x float> %i.ra, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1099 = fadd <2 x float> %i.ra, %shift1098
  %i.rb = extractelement <2 x float> %foldExtExtBinop1099, i64 0
  %i.rc = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.rd = fadd float %i.rc, %i.rb
  %i.re = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qz, float %i.rd, ptr nonnull %i.e, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.rf = extractvalue { <2 x float>, <2 x float> } %i.re, 0
  %i.rg = extractvalue { <2 x float>, <2 x float> } %i.re, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.rf, <2 x float> %i.rg, ptr noundef nonnull align 4 dereferenceable(32) %17)
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !368
  %i.rj = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.rk = load i8, ptr %i.rj, align 4, !tbaa !219, !range !11, !noundef !12
  %i.rl = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !220
  %i.rn = sext i32 %i.ri to i64                   ; 20 uses
  %i.ro = getelementptr inbounds i8, ptr %i.rm, i64 %i.rn
  store i8 %i.rk, ptr %i.ro, align 1, !tbaa !10
  %i.rp = load float, ptr %23, align 4, !tbaa !221
  %i.rq = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !222
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %i.rn
  store float %i.rp, ptr %i.rs, align 4, !tbaa !155
  %i.rt = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !223
  %i.rv = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !224
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.rw, i64 %i.rn
  store float %i.ru, ptr %i.rx, align 4, !tbaa !155
  %i.ry = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !225
  %i.sa = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !226
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.rn
  store float %i.rz, ptr %i.sc, align 4, !tbaa !155
  %i.sd = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.se = load float, ptr %i.sd, align 4, !tbaa !227
  %i.sf = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !157
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.rn
  store float %i.se, ptr %i.sh, align 4, !tbaa !155
  %i.si = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.sj = load float, ptr %i.si, align 4, !tbaa !228
  %i.sk = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !158
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.rn
  store float %i.sj, ptr %i.sm, align 4, !tbaa !155
  %i.sn = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.so = load float, ptr %i.sn, align 4, !tbaa !229
  %i.sp = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !159
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %i.rn
  store float %i.so, ptr %i.sr, align 4, !tbaa !155
  %i.ss = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.st = load float, ptr %i.ss, align 4, !tbaa !227
  %i.su = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !157
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.rn
  store float %i.st, ptr %i.sw, align 4, !tbaa !155
  %i.sx = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !228
  %i.sz = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !158
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.rn
  store float %i.sy, ptr %i.tb, align 4, !tbaa !155
  %i.tc = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.td = load float, ptr %i.tc, align 4, !tbaa !229
  %i.te = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !159
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.rn
  store float %i.td, ptr %i.tg, align 4, !tbaa !155
  %i.th = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.ti = load float, ptr %i.th, align 4, !tbaa !230
  %i.tj = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !163
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.rn
  store float %i.ti, ptr %i.tl, align 4, !tbaa !155
  %i.tm = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !231
  %i.to = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !164
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.rn
  store float %i.tn, ptr %i.tq, align 4, !tbaa !155
  %i.tr = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !232
  %i.tt = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !233
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.rn
  store float %i.ts, ptr %i.tv, align 4, !tbaa !155
  %i.tw = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !234
  %i.ty = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !160
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.rn
  store float %i.tx, ptr %i.ua, align 4, !tbaa !155
  %i.ub = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !235
  %i.ud = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !161
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.rn
  store float %i.uc, ptr %i.uf, align 4, !tbaa !155
  %i.ug = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !181
  %i.ui = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !162
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.rn
  store float %i.uh, ptr %i.uk, align 4, !tbaa !155
  %i.ul = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.um = load float, ptr %i.ul, align 4, !tbaa !234
  %i.un = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !160
  %i.up = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.rn
  store float %i.um, ptr %i.up, align 4, !tbaa !155
  %i.uq = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !235
  %i.us = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !161
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %i.rn
  store float %i.ur, ptr %i.uu, align 4, !tbaa !155
  %i.uv = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !181
  %i.ux = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !162
  %i.uz = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.rn
  store float %i.uw, ptr %i.uz, align 4, !tbaa !155
  %i.va = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.vb = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !153
  %i.vd = getelementptr inbounds [16 x i8], ptr %i.vc, i64 %i.rn ; 2 uses
  %i.ve = load <4 x float>, ptr %i.va, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.ve, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.ve, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.vd, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0993.0.copyload = load <2 x float>, ptr %i.mg, align 4 ; 10 uses
  %.sroa.121000.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121000.0.copyload = load float, ptr %.sroa.121000.0..sroa_idx, align 4 ; 8 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !368
  %i.vi = load ptr, ptr %i.vf, align 8, !tbaa !236, !noalias !1166
  %i.vj = sext i32 %i.vh to i64                   ; 2 uses
  %i.vk = getelementptr inbounds [16 x i8], ptr %i.vi, i64 %i.vj ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vl = load <2 x float>, ptr %i.vk, align 16, !noalias !1166
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !71, !noalias !1166
  %i.vm = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !237, !noalias !1166
  %i.vo = getelementptr inbounds [16 x i8], ptr %i.vn, i64 %i.vj ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vo, align 16, !noalias !1166 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %.sroa.2.0.copyload.i931.i.i1062 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !1166
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_19CoatedConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %24, ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %.sroa.0993.0.copyload, float %.sroa.121000.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1062, i32 noundef 0, i32 noundef 3)
  %i.vp = getelementptr inbounds nuw i8, ptr %24, i64 44 ; 3 uses
  %i.vq = load i8, ptr %i.vp, align 4, !tbaa !239, !range !11, !noundef !12
  %i.vr = trunc nuw i8 %i.vq to i1
  br i1 %i.vr, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vs = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.vs, align 16 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 200
  %30 = load <4 x float>, ptr %i.vt, align 8
  %.sroa.01.0.vec.extract.i.i592 = extractelement <2 x float> %.sroa.0259.0, i64 0 ; 2 uses
  %.sroa.04.0.vec.extract.i.i593 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.i594 = extractelement <2 x float> %.sroa.0259.0, i64 1 ; 2 uses
  %.sroa.04.4.vec.extract.i.i595 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.vu = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.vv = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i594, float %.sroa.04.4.vec.extract.i.i595, float %i.vu)
  %i.vw = fneg float %i.vu
  %i.vx = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.vw)
  %i.vy = fadd float %i.vv, %i.vx
  %i.vz = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i592, float %.sroa.04.0.vec.extract.i.i593, float %i.vy)
  %i.wa = call noundef float @llvm.fabs.f32(float %i.vz)
  %i.wb = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !242 ; 2 uses
  %i.wd = load <4 x float>, ptr %24, align 16, !tbaa !155
  %i.we = fmul <4 x float> %30, %i.wd
  %i.wf = insertelement <4 x float> poison, float %i.wa, i64 0
  %i.wg = shufflevector <4 x float> %i.wf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wh = fmul <4 x float> %i.we, %i.wg
  %i.wi = insertelement <4 x float> poison, float %i.wc, i64 0
  %i.wj = shufflevector <4 x float> %i.wi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wk = fdiv <4 x float> %i.wh, %i.wj           ; 7 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0931.0.copyload = load <4 x float>, ptr %i.wl, align 8, !tbaa !71 ; 7 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.wn = load i8, ptr %i.wm, align 8, !tbaa !243, !range !11, !noundef !12
  %i.wo = trunc nuw i8 %i.wn to i1
  br i1 %i.wo, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620, label %.thread

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620: ; preds = %bb.q
  %.sroa.05.0.copyload.i.i.i623 = load <2 x float>, ptr %i.om, align 8 ; 3 uses
  %.sroa.26.0.copyload.i.i.i625 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.wp = fmul <2 x float> %.sroa.0993.0.copyload, %.sroa.05.0.copyload.i.i.i623 ; 2 uses
  %shift1101 = shufflevector <2 x float> %i.wp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1102 = fadd <2 x float> %i.wp, %shift1101
  %i.wq = extractelement <2 x float> %foldExtExtBinop1102, i64 0
  %i.wr = fmul float %.sroa.121000.0.copyload, %.sroa.26.0.copyload.i.i.i625
  %i.ws = fadd float %i.wr, %i.wq                 ; 2 uses
  %i.wt = fcmp oeq float %i.ws, 0.000000e+00
  br i1 %i.wt, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620
  %i.wu = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.wv = shufflevector <4 x float> %i.wu, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.021.0.copyload.i.i.i630 = load <2 x float>, ptr %i.nj, align 8 ; 2 uses
  %.sroa.214.0.copyload.i.i.i634 = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %.sroa.013.0.copyload.i.i.i635 = load <2 x float>, ptr %i.ok, align 4 ; 2 uses
  %i.ww = insertelement <2 x float> poison, float %.sroa.6.0.copyload, i64 0
  %i.wx = shufflevector <2 x float> %i.ww, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wy = insertelement <2 x float> %i.wv, float %.sroa.214.0.copyload.i.i.i634, i64 1 ; 2 uses
  %i.wz = fmul <2 x float> %i.wx, %i.wy
  %i.xa = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i635, <2 x float> %.sroa.021.0.copyload.i.i.i630, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xb = fmul <2 x float> %.sroa.0151.0.copyload, %i.xa
  %i.xc = shufflevector <2 x float> %i.xb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xd = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i630, <2 x float> %.sroa.013.0.copyload.i.i.i635, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xe = fmul <2 x float> %.sroa.0151.0.copyload, %i.xd
  %i.xf = fadd <2 x float> %i.xc, %i.xe
  %i.xg = fadd <2 x float> %i.wz, %i.xf
  %i.xh = fmul float %.sroa.6.0.copyload, %.sroa.26.0.copyload.i.i.i625
  %foldExtExtBinop1104 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i623
  %foldExtExtBinop1106 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i623
  %shift1108 = shufflevector <2 x float> %foldExtExtBinop1106, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1109 = fadd <2 x float> %foldExtExtBinop1104, %shift1108
  %i.xi = extractelement <2 x float> %foldExtExtBinop1109, i64 0
  %i.xj = fadd float %i.xh, %i.xi
  %i.xk = insertelement <2 x float> poison, float %.sroa.121000.0.copyload, i64 0
  %i.xl = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xm = fmul <2 x float> %i.xl, %i.wy
  %i.xn = fmul <2 x float> %.sroa.0993.0.copyload, %i.xa
  %i.xo = shufflevector <2 x float> %i.xn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xp = fmul <2 x float> %.sroa.0993.0.copyload, %i.xd
  %i.xq = fadd <2 x float> %i.xo, %i.xp
  %i.xr = fadd <2 x float> %i.xm, %i.xq
  %i.xs = load i64, ptr %20, align 8, !tbaa !212
  %i.xt = and i64 %i.xs, 144115188075855871
  %i.xu = inttoptr i64 %i.xt to ptr
  %i.xv = call noundef float @_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE3PDFENS_7Vector3IfEES5_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(84) %i.xu, <2 x float> %i.xr, float %i.ws, <2 x float> %i.xg, float %i.xj, i32 noundef 0, i32 noundef 3)
  %.pre.pre = load i8, ptr %i.vp, align 4, !tbaa !239, !range !11
  %i.xw = trunc nuw i8 %.pre.pre to i1
  br label %bb.s

.thread:                                          ; preds = %bb.q
  %i.xx = insertelement <2 x float> poison, float %i.wc, i64 0
  %i.xy = shufflevector <2 x float> %i.xx, <2 x float> poison, <4 x i32> zeroinitializer
  br label %bb.t

bb.s:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620, %bb.r
  %.pre = phi i1 [ true, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620 ], [ %i.xw, %bb.r ]
  %.0.i640 = phi float [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620 ], [ %i.xv, %bb.r ]
  %i.xz = insertelement <2 x float> poison, float %.0.i640, i64 0
  %i.ya = shufflevector <2 x float> %i.xz, <2 x float> poison, <4 x i32> zeroinitializer
  br i1 %.pre, label %bb.t, label %.noexc670

.noexc670:                                        ; preds = %bb.s
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
  unreachable

bb.t:                                             ; preds = %.thread, %bb.s
  %.pn = phi <4 x float> [ %i.xy, %.thread ], [ %i.ya, %bb.s ]
  %.sroa.0923.01078 = fdiv <4 x float> %.sroa.0931.0.copyload, %.pn ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.yc = load float, ptr %i.yb, align 8, !tbaa !366 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 16, !tbaa !244
  %i.yf = and i32 %i.ye, 2
  %.not1063 = icmp eq i32 %i.yf, 0
  %i.yg = getelementptr inbounds nuw i8, ptr %24, i64 36
  %i.yh = load float, ptr %i.yg, align 4          ; 2 uses
  %i.yi = fmul float %i.yh, %i.yh
  %i.yj = fmul float %i.yc, %i.yi
  %.0443 = select i1 %.not1063, float %i.yc, float %i.yj ; 5 uses
  %i.yk = extractelement <4 x float> %i.wk, i64 0
  %i.yl = fmul float %i.yk, %.0443
  %i.ym = extractelement <4 x float> %i.wk, i64 1
  %i.yn = fmul float %i.ym, %.0443
  %i.yo = extractelement <4 x float> %i.wk, i64 2
  %i.yp = fmul float %i.yo, %.0443
  %i.yq = extractelement <4 x float> %i.wk, i64 3
  %i.yr = fmul float %i.yq, %.0443
  %shift1111 = shufflevector <4 x float> %.sroa.0931.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1112 = fadd <4 x float> %.sroa.0931.0.copyload, %shift1111
  %shift1114 = shufflevector <4 x float> %.sroa.0931.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1115 = fadd <4 x float> %shift1114, %foldExtExtBinop1112
  %shift1117 = shufflevector <4 x float> %.sroa.0931.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1118 = fadd <4 x float> %shift1117, %foldExtExtBinop1115
  %i.ys = extractelement <4 x float> %foldExtExtBinop1118, i64 0
  %i.yt = fmul float %i.ys, 2.500000e-01          ; 4 uses
  %i.yu = fdiv float %i.yl, %i.yt                 ; 2 uses
  %i.yv = fdiv float %i.yn, %i.yt                 ; 2 uses
  %i.yw = fdiv float %i.yp, %i.yt                 ; 2 uses
  %i.yx = fdiv float %i.yr, %i.yt                 ; 2 uses
  %i.yy = fcmp olt float %i.yu, %i.yv
  %.sroa.speculated.i = select i1 %i.yy, float %i.yv, float %i.yu ; 2 uses
  %i.yz = fcmp olt float %.sroa.speculated.i, %i.yw
  %.sroa.speculated.1.i = select i1 %i.yz, float %i.yw, float %.sroa.speculated.i ; 2 uses
  %i.za = fcmp olt float %.sroa.speculated.1.i, %i.yx
  %.sroa.speculated.2.i = select i1 %i.za, float %i.yx, float %.sroa.speculated.1.i ; 2 uses
  %i.zb = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.zb, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.zc = load i32, ptr %i.pv, align 8, !tbaa !358
  %i.zd = icmp sgt i32 %i.zc, 0
  br i1 %i.zd, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ze = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.zf = fcmp ogt float %i.ze, 0.000000e+00
  %.sroa.speculated = select i1 %i.zf, float %i.ze, float 0.000000e+00 ; 2 uses
  %i.zg = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.zg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.zh = fsub float 1.000000e+00, %.sroa.speculated
  %i.zi = insertelement <4 x float> poison, float %i.zh, i64 0
  %i.zj = shufflevector <4 x float> %i.zi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zk = fdiv <4 x float> %i.wk, %i.zj
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u, %bb.t
  %.sroa.0949.0 = phi <4 x float> [ %i.wk, %bb.t ], [ %i.zk, %bb.w ], [ %i.wk, %bb.u ], [ zeroinitializer, %bb.v ]
  %.sroa.0949.0.fr = freeze <4 x float> %.sroa.0949.0 ; 3 uses
  %i.zl = fcmp une <4 x float> %.sroa.0949.0.fr, zeroinitializer
  %i.zm = bitcast <4 x i1> %i.zl to i4
  %.not1130 = icmp eq i4 %i.zm, 0
  br i1 %.not1130, label %bb.ad, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706: ; preds = %bb.x
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mi, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !362
  %i.zp = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mm, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %.sroa.0151.0.copyload, float %.sroa.6.0.copyload) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.zp, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.zp, 1
  %i.zq = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.zr = load i8, ptr %i.zq, align 2, !tbaa !245, !range !11, !noundef !12
  %i.zs = trunc nuw i8 %i.zr to i1
  br i1 %i.zs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706
  %.sroa.0101.0.copyload = load <2 x float>, ptr %i.mi, align 8 ; 2 uses
  %.sroa.2102.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i711 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i713 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 1
  %i.zt = fmul float %.sroa.6.0.copyload, %.sroa.2102.0.copyload ; 2 uses
  %i.zu = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i713, float %.sroa.04.4.vec.extract.i.i595, float %i.zt)
  %i.zv = fneg float %i.zt
  %i.zw = call noundef float @llvm.fma.f32(float %.sroa.2102.0.copyload, float %.sroa.6.0.copyload, float %i.zv)
  %i.zx = fadd float %i.zu, %i.zw
  %i.zy = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i711, float %.sroa.04.0.vec.extract.i.i593, float %i.zx)
  %i.zz = fcmp ogt float %i.zy, 0.000000e+00
  %.v = select i1 %i.zz, i64 248, i64 240
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !177
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706
  %.sroa.17896.0 = phi i64 [ %i.aab, %bb.y ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706 ]
  %i.aac = load i8, ptr %i.vp, align 4, !tbaa !239, !range !11, !noundef !12
  %i.aad = trunc nuw i8 %i.aac to i1
  br i1 %i.aad, label %bb.aa, label %.noexc715

.noexc715:                                        ; preds = %bb.z
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.aae = load i32, ptr %i.yd, align 16, !tbaa !244
  %i.aaf = and i32 %i.aae, 16                     ; 2 uses
  %.not1064 = icmp eq i32 %i.aaf, 0
  br i1 %.not1064, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
end_hunk_2
begin_hunk_3_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_23CoatedConductorMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_IS2_EENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlS9_E_clES9_:bb.a
  %i.qm = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qm, align 16, !tbaa !155
  %i.qn = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qn, align 16, !tbaa !155
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.qf, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.nj, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.ok, align 4 ; 2 uses
  %i.qo = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qp = shufflevector <4 x float> %i.qo, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qq = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qr = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.qs = fmul <2 x float> %i.qq, %i.qr
  %i.qt = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.qu = fmul <2 x float> %.sroa.0162.0.copyload, %i.qt
  %i.qv = fadd <2 x float> %i.qs, %i.qu
  %i.qw = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.qx = shufflevector <2 x float> %i.qw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qy = fmul <2 x float> %i.qx, %i.qp
  %i.qz = fadd <2 x float> %i.qy, %i.qv
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.om, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.ra = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1098 = shufflevector <2 x float> %i.ra, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1099 = fadd <2 x float> %i.ra, %shift1098
  %i.rb = extractelement <2 x float> %foldExtExtBinop1099, i64 0
  %i.rc = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.rd = fadd float %i.rc, %i.rb
  %i.re = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qz, float %i.rd, ptr nonnull %i.e, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.rf = extractvalue { <2 x float>, <2 x float> } %i.re, 0
  %i.rg = extractvalue { <2 x float>, <2 x float> } %i.re, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.rf, <2 x float> %i.rg, ptr noundef nonnull align 4 dereferenceable(32) %17)
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !368
  %i.rj = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.rk = load i8, ptr %i.rj, align 4, !tbaa !219, !range !11, !noundef !12
  %i.rl = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !220
  %i.rn = sext i32 %i.ri to i64                   ; 20 uses
  %i.ro = getelementptr inbounds i8, ptr %i.rm, i64 %i.rn
  store i8 %i.rk, ptr %i.ro, align 1, !tbaa !10
  %i.rp = load float, ptr %23, align 4, !tbaa !221
  %i.rq = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !222
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %i.rn
  store float %i.rp, ptr %i.rs, align 4, !tbaa !155
  %i.rt = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !223
  %i.rv = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !224
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.rw, i64 %i.rn
  store float %i.ru, ptr %i.rx, align 4, !tbaa !155
  %i.ry = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !225
  %i.sa = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !226
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.rn
  store float %i.rz, ptr %i.sc, align 4, !tbaa !155
  %i.sd = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.se = load float, ptr %i.sd, align 4, !tbaa !227
  %i.sf = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !157
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.rn
  store float %i.se, ptr %i.sh, align 4, !tbaa !155
  %i.si = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.sj = load float, ptr %i.si, align 4, !tbaa !228
  %i.sk = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !158
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.rn
  store float %i.sj, ptr %i.sm, align 4, !tbaa !155
  %i.sn = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.so = load float, ptr %i.sn, align 4, !tbaa !229
  %i.sp = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !159
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %i.rn
  store float %i.so, ptr %i.sr, align 4, !tbaa !155
  %i.ss = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.st = load float, ptr %i.ss, align 4, !tbaa !227
  %i.su = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !157
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.rn
  store float %i.st, ptr %i.sw, align 4, !tbaa !155
  %i.sx = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !228
  %i.sz = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !158
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.rn
  store float %i.sy, ptr %i.tb, align 4, !tbaa !155
  %i.tc = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.td = load float, ptr %i.tc, align 4, !tbaa !229
  %i.te = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !159
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.rn
  store float %i.td, ptr %i.tg, align 4, !tbaa !155
  %i.th = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.ti = load float, ptr %i.th, align 4, !tbaa !230
  %i.tj = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !163
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.rn
  store float %i.ti, ptr %i.tl, align 4, !tbaa !155
  %i.tm = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !231
  %i.to = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !164
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.rn
  store float %i.tn, ptr %i.tq, align 4, !tbaa !155
  %i.tr = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !232
  %i.tt = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !233
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.rn
  store float %i.ts, ptr %i.tv, align 4, !tbaa !155
  %i.tw = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !234
  %i.ty = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !160
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.rn
  store float %i.tx, ptr %i.ua, align 4, !tbaa !155
  %i.ub = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !235
  %i.ud = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !161
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.rn
  store float %i.uc, ptr %i.uf, align 4, !tbaa !155
  %i.ug = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !181
  %i.ui = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !162
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.rn
  store float %i.uh, ptr %i.uk, align 4, !tbaa !155
  %i.ul = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.um = load float, ptr %i.ul, align 4, !tbaa !234
  %i.un = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !160
  %i.up = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.rn
  store float %i.um, ptr %i.up, align 4, !tbaa !155
  %i.uq = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !235
  %i.us = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !161
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %i.rn
  store float %i.ur, ptr %i.uu, align 4, !tbaa !155
  %i.uv = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !181
  %i.ux = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !162
  %i.uz = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.rn
  store float %i.uw, ptr %i.uz, align 4, !tbaa !155
  %i.va = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.vb = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !153
  %i.vd = getelementptr inbounds [16 x i8], ptr %i.vc, i64 %i.rn ; 2 uses
  %i.ve = load <4 x float>, ptr %i.va, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.ve, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.ve, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.vd, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0993.0.copyload = load <2 x float>, ptr %i.mg, align 4 ; 10 uses
  %.sroa.121000.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121000.0.copyload = load float, ptr %.sroa.121000.0..sroa_idx, align 4 ; 8 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !368
  %i.vi = load ptr, ptr %i.vf, align 8, !tbaa !236, !noalias !1210
  %i.vj = sext i32 %i.vh to i64                   ; 2 uses
  %i.vk = getelementptr inbounds [16 x i8], ptr %i.vi, i64 %i.vj ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vl = load <2 x float>, ptr %i.vk, align 16, !noalias !1210
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !71, !noalias !1210
  %i.vm = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !237, !noalias !1210
  %i.vo = getelementptr inbounds [16 x i8], ptr %i.vn, i64 %i.vj ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vo, align 16, !noalias !1210 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %.sroa.2.0.copyload.i931.i.i1062 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !1210
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_19CoatedConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %24, ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %.sroa.0993.0.copyload, float %.sroa.121000.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1062, i32 noundef 0, i32 noundef 3)
  %i.vp = getelementptr inbounds nuw i8, ptr %24, i64 44 ; 3 uses
  %i.vq = load i8, ptr %i.vp, align 4, !tbaa !239, !range !11, !noundef !12
  %i.vr = trunc nuw i8 %i.vq to i1
  br i1 %i.vr, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vs = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.vs, align 16 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 200
  %30 = load <4 x float>, ptr %i.vt, align 8
  %.sroa.01.0.vec.extract.i.i592 = extractelement <2 x float> %.sroa.0259.0, i64 0 ; 2 uses
  %.sroa.04.0.vec.extract.i.i593 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.i594 = extractelement <2 x float> %.sroa.0259.0, i64 1 ; 2 uses
  %.sroa.04.4.vec.extract.i.i595 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.vu = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.vv = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i594, float %.sroa.04.4.vec.extract.i.i595, float %i.vu)
  %i.vw = fneg float %i.vu
  %i.vx = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.vw)
  %i.vy = fadd float %i.vv, %i.vx
  %i.vz = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i592, float %.sroa.04.0.vec.extract.i.i593, float %i.vy)
  %i.wa = call noundef float @llvm.fabs.f32(float %i.vz)
  %i.wb = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !242 ; 2 uses
  %i.wd = load <4 x float>, ptr %24, align 16, !tbaa !155
  %i.we = fmul <4 x float> %30, %i.wd
  %i.wf = insertelement <4 x float> poison, float %i.wa, i64 0
  %i.wg = shufflevector <4 x float> %i.wf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wh = fmul <4 x float> %i.we, %i.wg
  %i.wi = insertelement <4 x float> poison, float %i.wc, i64 0
  %i.wj = shufflevector <4 x float> %i.wi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wk = fdiv <4 x float> %i.wh, %i.wj           ; 7 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0931.0.copyload = load <4 x float>, ptr %i.wl, align 8, !tbaa !71 ; 7 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.wn = load i8, ptr %i.wm, align 8, !tbaa !243, !range !11, !noundef !12
  %i.wo = trunc nuw i8 %i.wn to i1
  br i1 %i.wo, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620, label %.thread

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620: ; preds = %bb.q
  %.sroa.05.0.copyload.i.i.i623 = load <2 x float>, ptr %i.om, align 8 ; 3 uses
  %.sroa.26.0.copyload.i.i.i625 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.wp = fmul <2 x float> %.sroa.0993.0.copyload, %.sroa.05.0.copyload.i.i.i623 ; 2 uses
  %shift1101 = shufflevector <2 x float> %i.wp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1102 = fadd <2 x float> %i.wp, %shift1101
  %i.wq = extractelement <2 x float> %foldExtExtBinop1102, i64 0
  %i.wr = fmul float %.sroa.121000.0.copyload, %.sroa.26.0.copyload.i.i.i625
  %i.ws = fadd float %i.wr, %i.wq                 ; 2 uses
  %i.wt = fcmp oeq float %i.ws, 0.000000e+00
  br i1 %i.wt, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620
  %i.wu = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.wv = shufflevector <4 x float> %i.wu, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.021.0.copyload.i.i.i630 = load <2 x float>, ptr %i.nj, align 8 ; 2 uses
  %.sroa.214.0.copyload.i.i.i634 = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %.sroa.013.0.copyload.i.i.i635 = load <2 x float>, ptr %i.ok, align 4 ; 2 uses
  %i.ww = insertelement <2 x float> poison, float %.sroa.6.0.copyload, i64 0
  %i.wx = shufflevector <2 x float> %i.ww, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wy = insertelement <2 x float> %i.wv, float %.sroa.214.0.copyload.i.i.i634, i64 1 ; 2 uses
  %i.wz = fmul <2 x float> %i.wx, %i.wy
  %i.xa = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i635, <2 x float> %.sroa.021.0.copyload.i.i.i630, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xb = fmul <2 x float> %.sroa.0151.0.copyload, %i.xa
  %i.xc = shufflevector <2 x float> %i.xb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xd = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i630, <2 x float> %.sroa.013.0.copyload.i.i.i635, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xe = fmul <2 x float> %.sroa.0151.0.copyload, %i.xd
  %i.xf = fadd <2 x float> %i.xc, %i.xe
  %i.xg = fadd <2 x float> %i.wz, %i.xf
  %i.xh = fmul float %.sroa.6.0.copyload, %.sroa.26.0.copyload.i.i.i625
  %foldExtExtBinop1104 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i623
  %foldExtExtBinop1106 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i623
  %shift1108 = shufflevector <2 x float> %foldExtExtBinop1106, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1109 = fadd <2 x float> %foldExtExtBinop1104, %shift1108
  %i.xi = extractelement <2 x float> %foldExtExtBinop1109, i64 0
  %i.xj = fadd float %i.xh, %i.xi
  %i.xk = insertelement <2 x float> poison, float %.sroa.121000.0.copyload, i64 0
  %i.xl = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xm = fmul <2 x float> %i.xl, %i.wy
  %i.xn = fmul <2 x float> %.sroa.0993.0.copyload, %i.xa
  %i.xo = shufflevector <2 x float> %i.xn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xp = fmul <2 x float> %.sroa.0993.0.copyload, %i.xd
  %i.xq = fadd <2 x float> %i.xo, %i.xp
  %i.xr = fadd <2 x float> %i.xm, %i.xq
  %i.xs = load i64, ptr %20, align 8, !tbaa !212
  %i.xt = and i64 %i.xs, 144115188075855871
  %i.xu = inttoptr i64 %i.xt to ptr
  %i.xv = call noundef float @_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE3PDFENS_7Vector3IfEES5_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(84) %i.xu, <2 x float> %i.xr, float %i.ws, <2 x float> %i.xg, float %i.xj, i32 noundef 0, i32 noundef 3)
  %.pre.pre = load i8, ptr %i.vp, align 4, !tbaa !239, !range !11
  %i.xw = trunc nuw i8 %.pre.pre to i1
  br label %bb.s

.thread:                                          ; preds = %bb.q
  %i.xx = insertelement <2 x float> poison, float %i.wc, i64 0
  %i.xy = shufflevector <2 x float> %i.xx, <2 x float> poison, <4 x i32> zeroinitializer
  br label %bb.t

bb.s:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620, %bb.r
  %.pre = phi i1 [ true, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620 ], [ %i.xw, %bb.r ]
  %.0.i640 = phi float [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620 ], [ %i.xv, %bb.r ]
  %i.xz = insertelement <2 x float> poison, float %.0.i640, i64 0
  %i.ya = shufflevector <2 x float> %i.xz, <2 x float> poison, <4 x i32> zeroinitializer
  br i1 %.pre, label %bb.t, label %.noexc670

.noexc670:                                        ; preds = %bb.s
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
  unreachable

bb.t:                                             ; preds = %.thread, %bb.s
  %.pn = phi <4 x float> [ %i.xy, %.thread ], [ %i.ya, %bb.s ]
  %.sroa.0923.01078 = fdiv <4 x float> %.sroa.0931.0.copyload, %.pn ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.yc = load float, ptr %i.yb, align 8, !tbaa !366 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 16, !tbaa !244
  %i.yf = and i32 %i.ye, 2
  %.not1063 = icmp eq i32 %i.yf, 0
  %i.yg = getelementptr inbounds nuw i8, ptr %24, i64 36
  %i.yh = load float, ptr %i.yg, align 4          ; 2 uses
  %i.yi = fmul float %i.yh, %i.yh
  %i.yj = fmul float %i.yc, %i.yi
  %.0443 = select i1 %.not1063, float %i.yc, float %i.yj ; 5 uses
  %i.yk = extractelement <4 x float> %i.wk, i64 0
  %i.yl = fmul float %i.yk, %.0443
  %i.ym = extractelement <4 x float> %i.wk, i64 1
  %i.yn = fmul float %i.ym, %.0443
  %i.yo = extractelement <4 x float> %i.wk, i64 2
  %i.yp = fmul float %i.yo, %.0443
  %i.yq = extractelement <4 x float> %i.wk, i64 3
  %i.yr = fmul float %i.yq, %.0443
  %shift1111 = shufflevector <4 x float> %.sroa.0931.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1112 = fadd <4 x float> %.sroa.0931.0.copyload, %shift1111
  %shift1114 = shufflevector <4 x float> %.sroa.0931.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1115 = fadd <4 x float> %shift1114, %foldExtExtBinop1112
  %shift1117 = shufflevector <4 x float> %.sroa.0931.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1118 = fadd <4 x float> %shift1117, %foldExtExtBinop1115
  %i.ys = extractelement <4 x float> %foldExtExtBinop1118, i64 0
  %i.yt = fmul float %i.ys, 2.500000e-01          ; 4 uses
  %i.yu = fdiv float %i.yl, %i.yt                 ; 2 uses
  %i.yv = fdiv float %i.yn, %i.yt                 ; 2 uses
  %i.yw = fdiv float %i.yp, %i.yt                 ; 2 uses
  %i.yx = fdiv float %i.yr, %i.yt                 ; 2 uses
  %i.yy = fcmp olt float %i.yu, %i.yv
  %.sroa.speculated.i = select i1 %i.yy, float %i.yv, float %i.yu ; 2 uses
  %i.yz = fcmp olt float %.sroa.speculated.i, %i.yw
  %.sroa.speculated.1.i = select i1 %i.yz, float %i.yw, float %.sroa.speculated.i ; 2 uses
  %i.za = fcmp olt float %.sroa.speculated.1.i, %i.yx
  %.sroa.speculated.2.i = select i1 %i.za, float %i.yx, float %.sroa.speculated.1.i ; 2 uses
  %i.zb = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.zb, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.zc = load i32, ptr %i.pv, align 8, !tbaa !358
  %i.zd = icmp sgt i32 %i.zc, 0
  br i1 %i.zd, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ze = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.zf = fcmp ogt float %i.ze, 0.000000e+00
  %.sroa.speculated = select i1 %i.zf, float %i.ze, float 0.000000e+00 ; 2 uses
  %i.zg = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.zg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.zh = fsub float 1.000000e+00, %.sroa.speculated
  %i.zi = insertelement <4 x float> poison, float %i.zh, i64 0
  %i.zj = shufflevector <4 x float> %i.zi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zk = fdiv <4 x float> %i.wk, %i.zj
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u, %bb.t
  %.sroa.0949.0 = phi <4 x float> [ %i.wk, %bb.t ], [ %i.zk, %bb.w ], [ %i.wk, %bb.u ], [ zeroinitializer, %bb.v ]
  %.sroa.0949.0.fr = freeze <4 x float> %.sroa.0949.0 ; 3 uses
  %i.zl = fcmp une <4 x float> %.sroa.0949.0.fr, zeroinitializer
  %i.zm = bitcast <4 x i1> %i.zl to i4
  %.not1130 = icmp eq i4 %i.zm, 0
  br i1 %.not1130, label %bb.ad, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706: ; preds = %bb.x
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mi, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !362
  %i.zp = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mm, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %.sroa.0151.0.copyload, float %.sroa.6.0.copyload) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.zp, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.zp, 1
  %i.zq = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.zr = load i8, ptr %i.zq, align 2, !tbaa !245, !range !11, !noundef !12
  %i.zs = trunc nuw i8 %i.zr to i1
  br i1 %i.zs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706
  %.sroa.0101.0.copyload = load <2 x float>, ptr %i.mi, align 8 ; 2 uses
  %.sroa.2102.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i711 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i713 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 1
  %i.zt = fmul float %.sroa.6.0.copyload, %.sroa.2102.0.copyload ; 2 uses
  %i.zu = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i713, float %.sroa.04.4.vec.extract.i.i595, float %i.zt)
  %i.zv = fneg float %i.zt
  %i.zw = call noundef float @llvm.fma.f32(float %.sroa.2102.0.copyload, float %.sroa.6.0.copyload, float %i.zv)
  %i.zx = fadd float %i.zu, %i.zw
  %i.zy = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i711, float %.sroa.04.0.vec.extract.i.i593, float %i.zx)
  %i.zz = fcmp ogt float %i.zy, 0.000000e+00
  %.v = select i1 %i.zz, i64 248, i64 240
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !177
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706
  %.sroa.17896.0 = phi i64 [ %i.aab, %bb.y ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706 ]
  %i.aac = load i8, ptr %i.vp, align 4, !tbaa !239, !range !11, !noundef !12
  %i.aad = trunc nuw i8 %i.aac to i1
  br i1 %i.aad, label %bb.aa, label %.noexc715

.noexc715:                                        ; preds = %bb.z
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.aae = load i32, ptr %i.yd, align 16, !tbaa !244
  %i.aaf = and i32 %i.aae, 16                     ; 2 uses
  %.not1064 = icmp eq i32 %i.aaf, 0
  br i1 %.not1064, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
end_hunk_3
begin_hunk_4_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_17ConductorMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_IS2_EENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSB_E_clESB_:bb.a
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
  %30 = load <4 x float>, ptr %i.xb, align 8
  %i.xc = fmul float %.sroa.17.0, %i.xa           ; 2 uses
  %i.xd = extractelement <2 x float> %i.wz, i64 1 ; 3 uses
  %i.xe = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.xd, float %i.xc)
  %i.xf = fneg float %i.xc
  %i.xg = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.xa, float %i.xf)
  %i.xh = fadd float %i.xe, %i.xg
  %i.xi = extractelement <2 x float> %i.wz, i64 0 ; 3 uses
  %i.xj = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.xi, float %i.xh)
  %i.xk = call noundef float @llvm.fabs.f32(float %i.xj)
  %i.xl = fmul <4 x float> %.fr, %30
  %i.xm = insertelement <4 x float> poison, float %i.xk, i64 0
  %i.xn = shufflevector <4 x float> %i.xm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xo = fmul <4 x float> %i.xn, %i.xl
  %i.xp = insertelement <4 x float> poison, float %i.wh, i64 0
  %i.xq = shufflevector <4 x float> %i.xp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xr = fdiv <4 x float> %i.xo, %i.xq           ; 7 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0958.0.copyload = load <4 x float>, ptr %i.xs, align 8, !tbaa !71 ; 6 uses
  %i.xt = trunc nuw i8 %.sroa.21.0.copyload to i1
  br i1 %i.xt, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, label %bb.aa

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640: ; preds = %bb.r
  %i.xu = fmul <2 x float> %.sroa.01059.0.copyload, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1227 = shufflevector <2 x float> %i.xu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1228 = fadd <2 x float> %i.xu, %shift1227
  %i.xv = extractelement <2 x float> %foldExtExtBinop1228, i64 0
  %i.xw = fmul float %.sroa.121066.0.copyload, %.sroa.212.0.copyload.i.i
  %i.xx = fadd float %i.xw, %i.xv                 ; 5 uses
  %i.xy = fcmp oeq float %i.xx, 0.000000e+00
  br i1 %i.xy, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640
  %i.xz = insertelement <2 x float> poison, float %i.xa, i64 0
  %i.ya = shufflevector <2 x float> %i.xz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yb = insertelement <2 x float> poison, float %.sroa.228.0.copyload.i.i, i64 0
  %i.yc = insertelement <2 x float> %i.yb, float %.sroa.238.0.copyload.i.i, i64 1
  %i.yd = fmul <2 x float> %i.ya, %i.yc
  %i.ye = shufflevector <2 x float> %.sroa.037.0.copyload.i.i, <2 x float> %.sroa.027.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.yf = fmul <2 x float> %i.wz, %i.ye
  %i.yg = shufflevector <2 x float> %i.yf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yh = shufflevector <2 x float> %.sroa.027.0.copyload.i.i, <2 x float> %.sroa.037.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.yi = fmul <2 x float> %i.wz, %i.yh
  %i.yj = fadd <2 x float> %i.yi, %i.yg
  %i.yk = fadd <2 x float> %i.yd, %i.yj
  %i.yl = fmul float %i.xa, %.sroa.212.0.copyload.i.i
  %i.ym = fmul <2 x float> %i.wz, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1230 = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1231 = fadd <2 x float> %i.ym, %shift1230
  %i.yn = extractelement <2 x float> %foldExtExtBinop1231, i64 0
  %i.yo = fadd float %i.yl, %i.yn                 ; 2 uses
  %i.yp = insertelement <2 x float> poison, float %.sroa.238.0.copyload.i.i, i64 0
  %i.yq = insertelement <2 x float> %i.yp, float %.sroa.228.0.copyload.i.i, i64 1
  %i.yr = fmul <2 x float> %i.vn, %i.yq
  %i.ys = fmul <2 x float> %.sroa.01059.0.copyload, %i.ye
  %i.yt = fmul <2 x float> %.sroa.01059.0.copyload, %i.yh
  %i.yu = shufflevector <2 x float> %i.yt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yv = fadd <2 x float> %i.yu, %i.ys
  %i.yw = fadd <2 x float> %i.yr, %i.yv           ; 3 uses
  %i.yx = load i64, ptr %21, align 8, !tbaa !212
  %i.yy = and i64 %i.yx, 144115188075855871
  %i.yz = inttoptr i64 %i.yy to ptr               ; 3 uses
  %i.za = fmul float %i.xx, %i.yo
  %i.zb = fcmp ogt float %i.za, 0.000000e+00
  br i1 %i.zb, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 4
  %i.zd = load float, ptr %i.yz, align 4, !tbaa !155 ; 2 uses
  %i.ze = load float, ptr %i.zc, align 4, !tbaa !155 ; 2 uses
  %i.zf = fcmp olt float %i.zd, %i.ze
  %i.zg = select i1 %i.zf, float %i.ze, float %i.zd
  %i.zh = fcmp olt float %i.zg, 1.000000e-03
  br i1 %i.zh, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.zi = shufflevector <2 x float> %i.yw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.zj = fadd <2 x float> %i.zi, %i.yk           ; 3 uses
  %i.zk = fadd float %i.xx, %i.yo                 ; 3 uses
  %i.zl = load atomic i8, ptr @_ZGVZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg acquire, align 8
  %i.zm = icmp eq i8 %i.zl, 0
  br i1 %i.zm, label %bb.v, label %bb.y, !prof !371

bb.v:                                             ; preds = %bb.u
  %i.zn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg) #23
  %.not70.i = icmp eq i32 %i.zn, 0
  br i1 %.not70.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg, ptr noundef nonnull @_ZZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEENUlRNS_16StatsAccumulatorEE_8__invokeES6_, ptr noundef null)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v, %bb.u
  %i.zo = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE5total) ; 2 uses
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !58
  %i.zq = add nsw i64 %i.zp, 1
  store i64 %i.zq, ptr %i.zo, align 8, !tbaa !58
  %i.zr = fmul <2 x float> %i.zj, %i.zj           ; 2 uses
  %shift1233 = shufflevector <2 x float> %i.zr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1234 = fadd <2 x float> %shift1233, %i.zr
  %i.zs = extractelement <2 x float> %foldExtExtBinop1234, i64 0
  %i.zt = fmul float %i.zk, %i.zk
  %i.zu = fadd float %i.zt, %i.zs                 ; 2 uses
  %i.zv = fcmp oeq float %i.zu, 0.000000e+00
  br i1 %i.zv, label %.thread.i, label %.noexc886

.thread.i:                                        ; preds = %bb.y
  %i.zw = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE7numTrue) ; 2 uses
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !58
  %i.zy = add nsw i64 %i.zx, 1
  store i64 %i.zy, ptr %i.zw, align 8, !tbaa !58
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.zz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg) #23
  br label %.body

.noexc886:                                        ; preds = %bb.y
  %sqrt.i.i.i883 = call noundef float @llvm.sqrt.f32(float %i.zu) ; 2 uses
  %i.aaa = fdiv float %i.zk, %sqrt.i.i.i883       ; 5 uses
  %i.aab = fneg float %i.aaa
  %i.aac = fsub float %i.aaa, %i.aaa
  %i.aad = insertelement <2 x float> poison, float %sqrt.i.i.i883, i64 0
  %i.aae = shufflevector <2 x float> %i.aad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaf = fdiv <2 x float> %i.zj, %i.aae         ; 4 uses
  %i.aag = shufflevector <2 x float> %i.aaf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aah = extractelement <2 x float> %i.aaf, i64 0
  %i.aai = call noundef float @llvm.fma.f32(float %i.aah, float 0.000000e+00, float %i.aaa)
  %i.aaj = fadd float %i.aai, %i.aac
  %i.aak = extractelement <2 x float> %i.aaf, i64 1
  %i.aal = call noundef float @llvm.fma.f32(float %i.aak, float 0.000000e+00, float %i.aaj)
  %i.aam = fcmp olt float %i.aal, 0.000000e+00    ; 2 uses
  %i.aan = fneg <2 x float> %i.aaf
  %i.aao = shufflevector <2 x float> %i.aan, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.4.vec.insert.i.pn.i.i = select i1 %i.aam, <2 x float> %i.aao, <2 x float> %i.aag ; 2 uses
  %.pn.i.i = select i1 %i.aam, float %i.aab, float %i.aaa ; 2 uses
  %i.aap = call noundef float @_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEES2_(ptr noundef nonnull align 4 dereferenceable(40) %i.yz, <2 x float> %i.yw, float %i.xx, <2 x float> %.sroa.0.4.vec.insert.i.pn.i.i, float %.pn.i.i)
  %i.aaq = fmul <2 x float> %i.yw, %.sroa.0.4.vec.insert.i.pn.i.i ; 2 uses
  %shift1236 = shufflevector <2 x float> %i.aaq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1237 = fadd <2 x float> %i.aaq, %shift1236
  %i.aar = extractelement <2 x float> %foldExtExtBinop1237, i64 0
  %i.aas = fmul float %i.xx, %.pn.i.i
  %i.aat = fadd float %i.aas, %i.aar
  %i.aau = call noundef float @llvm.fabs.f32(float %i.aat)
  %i.aav = fmul float %i.aau, 4.000000e+00
  %i.aaw = fdiv float %i.aap, %i.aav
  br label %bb.aa

bb.aa:                                            ; preds = %bb.r, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, %.noexc886, %.thread.i, %bb.t, %bb.s
  %.0.i660.sink1202 = phi float [ %i.aaw, %.noexc886 ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640 ], [ 0.000000e+00, %.thread.i ], [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %bb.s ], [ %i.wh, %bb.r ]
  %i.aax = shufflevector <4 x float> %.sroa.0958.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.aay = insertelement <2 x float> poison, float %.0.i660.sink1202, i64 0
  %i.aaz = shufflevector <2 x float> %i.aay, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aba = fdiv <2 x float> %i.aax, %i.aaz
  %i.abb = shufflevector <4 x float> %.sroa.0958.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.abc = fdiv <2 x float> %i.abb, %i.aaz
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.abe = load float, ptr %i.abd, align 8, !tbaa !399 ; 2 uses
  %i.abf = and i32 %.sroa.16.0.copyload, 2
  %.not1177 = icmp eq i32 %i.abf, 0
  %i.abg = fmul float %.sroa.20.0.copyload, %.sroa.20.0.copyload
  %i.abh = fmul float %i.abg, %i.abe
  %.0443 = select i1 %.not1177, float %i.abe, float %i.abh ; 5 uses
  %i.abi = extractelement <4 x float> %i.xr, i64 0
  %i.abj = fmul float %i.abi, %.0443
  %i.abk = extractelement <4 x float> %i.xr, i64 1
  %i.abl = fmul float %i.abk, %.0443
  %i.abm = extractelement <4 x float> %i.xr, i64 2
  %i.abn = fmul float %i.abm, %.0443
  %i.abo = extractelement <4 x float> %i.xr, i64 3
  %i.abp = fmul float %i.abo, %.0443
  %shift1239 = shufflevector <4 x float> %.sroa.0958.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1240 = fadd <4 x float> %.sroa.0958.0.copyload, %shift1239
  %shift1242 = shufflevector <4 x float> %.sroa.0958.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1243 = fadd <4 x float> %shift1242, %foldExtExtBinop1240
  %shift1245 = shufflevector <4 x float> %.sroa.0958.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1246 = fadd <4 x float> %shift1245, %foldExtExtBinop1243
  %i.abq = extractelement <4 x float> %foldExtExtBinop1246, i64 0
  %i.abr = fmul float %i.abq, 2.500000e-01        ; 4 uses
  %i.abs = fdiv float %i.abj, %i.abr              ; 2 uses
  %i.abt = fdiv float %i.abl, %i.abr              ; 2 uses
  %i.abu = fdiv float %i.abn, %i.abr              ; 2 uses
  %i.abv = fdiv float %i.abp, %i.abr              ; 2 uses
  %i.abw = fcmp olt float %i.abs, %i.abt
  %.sroa.speculated.i = select i1 %i.abw, float %i.abt, float %i.abs ; 2 uses
  %i.abx = fcmp olt float %.sroa.speculated.i, %i.abu
  %.sroa.speculated.1.i = select i1 %i.abx, float %i.abu, float %.sroa.speculated.i ; 2 uses
  %i.aby = fcmp olt float %.sroa.speculated.1.i, %i.abv
  %.sroa.speculated.2.i = select i1 %i.aby, float %i.abv, float %.sroa.speculated.1.i ; 2 uses
  %i.abz = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.abz, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.aca = load i32, ptr %i.pl, align 8, !tbaa !391
  %i.acb = icmp sgt i32 %i.aca, 0
  br i1 %i.acb, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.acc = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.acd = fcmp ogt float %i.acc, 0.000000e+00
  %.sroa.speculated = select i1 %i.acd, float %i.acc, float 0.000000e+00 ; 2 uses
  %i.ace = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.ace, label %bb.ae, label %bb.ad

end_hunk_4
begin_hunk_5_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_17ConductorMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_IS2_EENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSB_E_clESB_:bb.a
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
  %30 = load <4 x float>, ptr %i.xb, align 8
  %i.xc = fmul float %.sroa.17.0, %i.xa           ; 2 uses
  %i.xd = extractelement <2 x float> %i.wz, i64 1 ; 3 uses
  %i.xe = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.xd, float %i.xc)
  %i.xf = fneg float %i.xc
  %i.xg = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.xa, float %i.xf)
  %i.xh = fadd float %i.xe, %i.xg
  %i.xi = extractelement <2 x float> %i.wz, i64 0 ; 3 uses
  %i.xj = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.xi, float %i.xh)
  %i.xk = call noundef float @llvm.fabs.f32(float %i.xj)
  %i.xl = fmul <4 x float> %.fr, %30
  %i.xm = insertelement <4 x float> poison, float %i.xk, i64 0
  %i.xn = shufflevector <4 x float> %i.xm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xo = fmul <4 x float> %i.xn, %i.xl
  %i.xp = insertelement <4 x float> poison, float %i.wh, i64 0
  %i.xq = shufflevector <4 x float> %i.xp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xr = fdiv <4 x float> %i.xo, %i.xq           ; 7 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0958.0.copyload = load <4 x float>, ptr %i.xs, align 8, !tbaa !71 ; 6 uses
  %i.xt = trunc nuw i8 %.sroa.21.0.copyload to i1
  br i1 %i.xt, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, label %bb.aa

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640: ; preds = %bb.r
  %i.xu = fmul <2 x float> %.sroa.01059.0.copyload, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1227 = shufflevector <2 x float> %i.xu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1228 = fadd <2 x float> %i.xu, %shift1227
  %i.xv = extractelement <2 x float> %foldExtExtBinop1228, i64 0
  %i.xw = fmul float %.sroa.121066.0.copyload, %.sroa.212.0.copyload.i.i
  %i.xx = fadd float %i.xw, %i.xv                 ; 5 uses
  %i.xy = fcmp oeq float %i.xx, 0.000000e+00
  br i1 %i.xy, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640
  %i.xz = insertelement <2 x float> poison, float %i.xa, i64 0
  %i.ya = shufflevector <2 x float> %i.xz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yb = insertelement <2 x float> poison, float %.sroa.228.0.copyload.i.i, i64 0
  %i.yc = insertelement <2 x float> %i.yb, float %.sroa.238.0.copyload.i.i, i64 1
  %i.yd = fmul <2 x float> %i.ya, %i.yc
  %i.ye = shufflevector <2 x float> %.sroa.037.0.copyload.i.i, <2 x float> %.sroa.027.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.yf = fmul <2 x float> %i.wz, %i.ye
  %i.yg = shufflevector <2 x float> %i.yf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yh = shufflevector <2 x float> %.sroa.027.0.copyload.i.i, <2 x float> %.sroa.037.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.yi = fmul <2 x float> %i.wz, %i.yh
  %i.yj = fadd <2 x float> %i.yi, %i.yg
  %i.yk = fadd <2 x float> %i.yd, %i.yj
  %i.yl = fmul float %i.xa, %.sroa.212.0.copyload.i.i
  %i.ym = fmul <2 x float> %i.wz, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1230 = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1231 = fadd <2 x float> %i.ym, %shift1230
  %i.yn = extractelement <2 x float> %foldExtExtBinop1231, i64 0
  %i.yo = fadd float %i.yl, %i.yn                 ; 2 uses
  %i.yp = insertelement <2 x float> poison, float %.sroa.238.0.copyload.i.i, i64 0
  %i.yq = insertelement <2 x float> %i.yp, float %.sroa.228.0.copyload.i.i, i64 1
  %i.yr = fmul <2 x float> %i.vn, %i.yq
  %i.ys = fmul <2 x float> %.sroa.01059.0.copyload, %i.ye
  %i.yt = fmul <2 x float> %.sroa.01059.0.copyload, %i.yh
  %i.yu = shufflevector <2 x float> %i.yt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yv = fadd <2 x float> %i.yu, %i.ys
  %i.yw = fadd <2 x float> %i.yr, %i.yv           ; 3 uses
  %i.yx = load i64, ptr %21, align 8, !tbaa !212
  %i.yy = and i64 %i.yx, 144115188075855871
  %i.yz = inttoptr i64 %i.yy to ptr               ; 3 uses
  %i.za = fmul float %i.xx, %i.yo
  %i.zb = fcmp ogt float %i.za, 0.000000e+00
  br i1 %i.zb, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 4
  %i.zd = load float, ptr %i.yz, align 4, !tbaa !155 ; 2 uses
  %i.ze = load float, ptr %i.zc, align 4, !tbaa !155 ; 2 uses
  %i.zf = fcmp olt float %i.zd, %i.ze
  %i.zg = select i1 %i.zf, float %i.ze, float %i.zd
  %i.zh = fcmp olt float %i.zg, 1.000000e-03
  br i1 %i.zh, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.zi = shufflevector <2 x float> %i.yw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.zj = fadd <2 x float> %i.zi, %i.yk           ; 3 uses
  %i.zk = fadd float %i.xx, %i.yo                 ; 3 uses
  %i.zl = load atomic i8, ptr @_ZGVZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg acquire, align 8
  %i.zm = icmp eq i8 %i.zl, 0
  br i1 %i.zm, label %bb.v, label %bb.y, !prof !371

bb.v:                                             ; preds = %bb.u
  %i.zn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg) #23
  %.not70.i = icmp eq i32 %i.zn, 0
  br i1 %.not70.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg, ptr noundef nonnull @_ZZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEENUlRNS_16StatsAccumulatorEE_8__invokeES6_, ptr noundef null)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v, %bb.u
  %i.zo = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE5total) ; 2 uses
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !58
  %i.zq = add nsw i64 %i.zp, 1
  store i64 %i.zq, ptr %i.zo, align 8, !tbaa !58
  %i.zr = fmul <2 x float> %i.zj, %i.zj           ; 2 uses
  %shift1233 = shufflevector <2 x float> %i.zr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1234 = fadd <2 x float> %shift1233, %i.zr
  %i.zs = extractelement <2 x float> %foldExtExtBinop1234, i64 0
  %i.zt = fmul float %i.zk, %i.zk
  %i.zu = fadd float %i.zt, %i.zs                 ; 2 uses
  %i.zv = fcmp oeq float %i.zu, 0.000000e+00
  br i1 %i.zv, label %.thread.i, label %.noexc886

.thread.i:                                        ; preds = %bb.y
  %i.zw = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE7numTrue) ; 2 uses
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !58
  %i.zy = add nsw i64 %i.zx, 1
  store i64 %i.zy, ptr %i.zw, align 8, !tbaa !58
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.zz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg) #23
  br label %.body

.noexc886:                                        ; preds = %bb.y
  %sqrt.i.i.i883 = call noundef float @llvm.sqrt.f32(float %i.zu) ; 2 uses
  %i.aaa = fdiv float %i.zk, %sqrt.i.i.i883       ; 5 uses
  %i.aab = fneg float %i.aaa
  %i.aac = fsub float %i.aaa, %i.aaa
  %i.aad = insertelement <2 x float> poison, float %sqrt.i.i.i883, i64 0
  %i.aae = shufflevector <2 x float> %i.aad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaf = fdiv <2 x float> %i.zj, %i.aae         ; 4 uses
  %i.aag = shufflevector <2 x float> %i.aaf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aah = extractelement <2 x float> %i.aaf, i64 0
  %i.aai = call noundef float @llvm.fma.f32(float %i.aah, float 0.000000e+00, float %i.aaa)
  %i.aaj = fadd float %i.aai, %i.aac
  %i.aak = extractelement <2 x float> %i.aaf, i64 1
  %i.aal = call noundef float @llvm.fma.f32(float %i.aak, float 0.000000e+00, float %i.aaj)
  %i.aam = fcmp olt float %i.aal, 0.000000e+00    ; 2 uses
  %i.aan = fneg <2 x float> %i.aaf
  %i.aao = shufflevector <2 x float> %i.aan, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.4.vec.insert.i.pn.i.i = select i1 %i.aam, <2 x float> %i.aao, <2 x float> %i.aag ; 2 uses
  %.pn.i.i = select i1 %i.aam, float %i.aab, float %i.aaa ; 2 uses
  %i.aap = call noundef float @_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEES2_(ptr noundef nonnull align 4 dereferenceable(40) %i.yz, <2 x float> %i.yw, float %i.xx, <2 x float> %.sroa.0.4.vec.insert.i.pn.i.i, float %.pn.i.i)
  %i.aaq = fmul <2 x float> %i.yw, %.sroa.0.4.vec.insert.i.pn.i.i ; 2 uses
  %shift1236 = shufflevector <2 x float> %i.aaq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1237 = fadd <2 x float> %i.aaq, %shift1236
  %i.aar = extractelement <2 x float> %foldExtExtBinop1237, i64 0
  %i.aas = fmul float %i.xx, %.pn.i.i
  %i.aat = fadd float %i.aas, %i.aar
  %i.aau = call noundef float @llvm.fabs.f32(float %i.aat)
  %i.aav = fmul float %i.aau, 4.000000e+00
  %i.aaw = fdiv float %i.aap, %i.aav
  br label %bb.aa

bb.aa:                                            ; preds = %bb.r, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, %.noexc886, %.thread.i, %bb.t, %bb.s
  %.0.i660.sink1202 = phi float [ %i.aaw, %.noexc886 ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640 ], [ 0.000000e+00, %.thread.i ], [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %bb.s ], [ %i.wh, %bb.r ]
  %i.aax = shufflevector <4 x float> %.sroa.0958.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.aay = insertelement <2 x float> poison, float %.0.i660.sink1202, i64 0
  %i.aaz = shufflevector <2 x float> %i.aay, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aba = fdiv <2 x float> %i.aax, %i.aaz
  %i.abb = shufflevector <4 x float> %.sroa.0958.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.abc = fdiv <2 x float> %i.abb, %i.aaz
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.abe = load float, ptr %i.abd, align 8, !tbaa !399 ; 2 uses
  %i.abf = and i32 %.sroa.16.0.copyload, 2
  %.not1177 = icmp eq i32 %i.abf, 0
  %i.abg = fmul float %.sroa.20.0.copyload, %.sroa.20.0.copyload
  %i.abh = fmul float %i.abg, %i.abe
  %.0443 = select i1 %.not1177, float %i.abe, float %i.abh ; 5 uses
  %i.abi = extractelement <4 x float> %i.xr, i64 0
  %i.abj = fmul float %i.abi, %.0443
  %i.abk = extractelement <4 x float> %i.xr, i64 1
  %i.abl = fmul float %i.abk, %.0443
  %i.abm = extractelement <4 x float> %i.xr, i64 2
  %i.abn = fmul float %i.abm, %.0443
  %i.abo = extractelement <4 x float> %i.xr, i64 3
  %i.abp = fmul float %i.abo, %.0443
  %shift1239 = shufflevector <4 x float> %.sroa.0958.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1240 = fadd <4 x float> %.sroa.0958.0.copyload, %shift1239
  %shift1242 = shufflevector <4 x float> %.sroa.0958.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1243 = fadd <4 x float> %shift1242, %foldExtExtBinop1240
  %shift1245 = shufflevector <4 x float> %.sroa.0958.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1246 = fadd <4 x float> %shift1245, %foldExtExtBinop1243
  %i.abq = extractelement <4 x float> %foldExtExtBinop1246, i64 0
  %i.abr = fmul float %i.abq, 2.500000e-01        ; 4 uses
  %i.abs = fdiv float %i.abj, %i.abr              ; 2 uses
  %i.abt = fdiv float %i.abl, %i.abr              ; 2 uses
  %i.abu = fdiv float %i.abn, %i.abr              ; 2 uses
  %i.abv = fdiv float %i.abp, %i.abr              ; 2 uses
  %i.abw = fcmp olt float %i.abs, %i.abt
  %.sroa.speculated.i = select i1 %i.abw, float %i.abt, float %i.abs ; 2 uses
  %i.abx = fcmp olt float %.sroa.speculated.i, %i.abu
  %.sroa.speculated.1.i = select i1 %i.abx, float %i.abu, float %.sroa.speculated.i ; 2 uses
  %i.aby = fcmp olt float %.sroa.speculated.1.i, %i.abv
  %.sroa.speculated.2.i = select i1 %i.aby, float %i.abv, float %.sroa.speculated.1.i ; 2 uses
  %i.abz = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.abz, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.aca = load i32, ptr %i.pl, align 8, !tbaa !391
  %i.acb = icmp sgt i32 %i.aca, 0
  br i1 %i.acb, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.acc = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.acd = fcmp ogt float %i.acc, 0.000000e+00
  %.sroa.speculated = select i1 %i.acd, float %i.acc, float 0.000000e+00 ; 2 uses
  %i.ace = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.ace, label %bb.ae, label %bb.ad

end_hunk_5
begin_hunk_6_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_18DielectricMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_IS2_EENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSD_E_clESD_:bb.a
  %i.qd = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qd, align 16, !tbaa !155
  %i.qe = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qe, align 16, !tbaa !155
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.pw, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.na, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.ob, align 4 ; 2 uses
  %i.qf = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qg = shufflevector <4 x float> %i.qf, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qh = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qi = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.qj = fmul <2 x float> %i.qh, %i.qi
  %i.qk = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.ql = fmul <2 x float> %.sroa.0162.0.copyload, %i.qk
  %i.qm = fadd <2 x float> %i.qj, %i.ql
  %i.qn = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.qo = shufflevector <2 x float> %i.qn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qp = fmul <2 x float> %i.qo, %i.qg
  %i.qq = fadd <2 x float> %i.qp, %i.qm
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.od, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.qr = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1116 = shufflevector <2 x float> %i.qr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1117 = fadd <2 x float> %i.qr, %shift1116
  %i.qs = extractelement <2 x float> %foldExtExtBinop1117, i64 0
  %i.qt = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.qu = fadd float %i.qt, %i.qs
  %i.qv = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qq, float %i.qu, ptr nonnull %i.e, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.qw = extractvalue { <2 x float>, <2 x float> } %i.qv, 0
  %i.qx = extractvalue { <2 x float>, <2 x float> } %i.qv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.qw, <2 x float> %i.qx, ptr noundef nonnull align 4 dereferenceable(32) %17)
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !440
  %i.ra = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.rb = load i8, ptr %i.ra, align 4, !tbaa !219, !range !11, !noundef !12
  %i.rc = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !220
  %i.re = sext i32 %i.qz to i64                   ; 20 uses
  %i.rf = getelementptr inbounds i8, ptr %i.rd, i64 %i.re
  store i8 %i.rb, ptr %i.rf, align 1, !tbaa !10
  %i.rg = load float, ptr %23, align 4, !tbaa !221
  %i.rh = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !222
  %i.rj = getelementptr inbounds [4 x i8], ptr %i.ri, i64 %i.re
  store float %i.rg, ptr %i.rj, align 4, !tbaa !155
  %i.rk = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !223
  %i.rm = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !224
  %i.ro = getelementptr inbounds [4 x i8], ptr %i.rn, i64 %i.re
  store float %i.rl, ptr %i.ro, align 4, !tbaa !155
  %i.rp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !225
  %i.rr = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !226
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.rs, i64 %i.re
  store float %i.rq, ptr %i.rt, align 4, !tbaa !155
  %i.ru = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !227
  %i.rw = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !157
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.rx, i64 %i.re
  store float %i.rv, ptr %i.ry, align 4, !tbaa !155
  %i.rz = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !228
  %i.sb = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !158
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.re
  store float %i.sa, ptr %i.sd, align 4, !tbaa !155
  %i.se = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.sf = load float, ptr %i.se, align 4, !tbaa !229
  %i.sg = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !159
  %i.si = getelementptr inbounds [4 x i8], ptr %i.sh, i64 %i.re
  store float %i.sf, ptr %i.si, align 4, !tbaa !155
  %i.sj = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !227
  %i.sl = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !157
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.sm, i64 %i.re
  store float %i.sk, ptr %i.sn, align 4, !tbaa !155
  %i.so = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.sp = load float, ptr %i.so, align 4, !tbaa !228
  %i.sq = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !158
  %i.ss = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.re
  store float %i.sp, ptr %i.ss, align 4, !tbaa !155
  %i.st = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.su = load float, ptr %i.st, align 4, !tbaa !229
  %i.sv = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !159
  %i.sx = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.re
  store float %i.su, ptr %i.sx, align 4, !tbaa !155
  %i.sy = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !230
  %i.ta = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !163
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.re
  store float %i.sz, ptr %i.tc, align 4, !tbaa !155
  %i.td = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.te = load float, ptr %i.td, align 4, !tbaa !231
  %i.tf = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !164
  %i.th = getelementptr inbounds [4 x i8], ptr %i.tg, i64 %i.re
  store float %i.te, ptr %i.th, align 4, !tbaa !155
  %i.ti = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !232
  %i.tk = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !233
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.re
  store float %i.tj, ptr %i.tm, align 4, !tbaa !155
  %i.tn = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.to = load float, ptr %i.tn, align 4, !tbaa !234
  %i.tp = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !160
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.tq, i64 %i.re
  store float %i.to, ptr %i.tr, align 4, !tbaa !155
  %i.ts = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !235
  %i.tu = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !161
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.tv, i64 %i.re
  store float %i.tt, ptr %i.tw, align 4, !tbaa !155
  %i.tx = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !181
  %i.tz = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !162
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.re
  store float %i.ty, ptr %i.ub, align 4, !tbaa !155
  %i.uc = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !234
  %i.ue = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !160
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.re
  store float %i.ud, ptr %i.ug, align 4, !tbaa !155
  %i.uh = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !235
  %i.uj = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !161
  %i.ul = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %i.re
  store float %i.ui, ptr %i.ul, align 4, !tbaa !155
  %i.um = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.un = load float, ptr %i.um, align 4, !tbaa !181
  %i.uo = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !162
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.re
  store float %i.un, ptr %i.uq, align 4, !tbaa !155
  %i.ur = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.us = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !153
  %i.uu = getelementptr inbounds [16 x i8], ptr %i.ut, i64 %i.re ; 2 uses
  %i.uv = load <4 x float>, ptr %i.ur, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i584 = shufflevector <4 x float> %i.uv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.uv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i584, ptr %i.uu, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0997.0.copyload = load <2 x float>, ptr %i.mg, align 4 ; 10 uses
  %.sroa.121004.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121004.0.copyload = load float, ptr %.sroa.121004.0..sroa_idx, align 4 ; 8 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !440
  %i.uz = load ptr, ptr %i.uw, align 8, !tbaa !236, !noalias !1398
  %i.va = sext i32 %i.uy to i64                   ; 2 uses
  %i.vb = getelementptr inbounds [16 x i8], ptr %i.uz, i64 %i.va ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i587 = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.vc = load <2 x float>, ptr %i.vb, align 16, !noalias !1398
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i587, align 8, !tbaa !71, !noalias !1398
  %i.vd = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !237, !noalias !1398
  %i.vf = getelementptr inbounds [16 x i8], ptr %i.ve, i64 %i.va ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vf, align 16, !noalias !1398 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %.sroa.2.0.copyload.i931.i.i1078 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !1398
  %.sroa.01.0.vec.extract.i.i588 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i589 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_14DielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %24, ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %.sroa.0997.0.copyload, float %.sroa.121004.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i588, <2 x float> %.sroa.2.0.copyload.i931.i.i1078, i32 noundef 0, i32 noundef 3)
  %i.vg = getelementptr inbounds nuw i8, ptr %24, i64 44 ; 3 uses
  %i.vh = load i8, ptr %i.vg, align 4, !tbaa !239, !range !11, !noundef !12
  %i.vi = trunc nuw i8 %i.vh to i1
  br i1 %i.vi, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vj = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.vj, align 16 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %1, i64 200
  %30 = load <4 x float>, ptr %i.vk, align 8
  %.sroa.04.0.vec.extract.i.i597 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.04.4.vec.extract.i.i599 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.vl = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.vm = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i573, float %.sroa.04.4.vec.extract.i.i599, float %i.vl)
  %i.vn = fneg float %i.vl
  %i.vo = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.vn)
  %i.vp = fadd float %i.vm, %i.vo
  %i.vq = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i572, float %.sroa.04.0.vec.extract.i.i597, float %i.vp)
  %i.vr = call noundef float @llvm.fabs.f32(float %i.vq)
  %i.vs = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !242 ; 2 uses
  %i.vu = load <4 x float>, ptr %24, align 16, !tbaa !155
  %i.vv = fmul <4 x float> %30, %i.vu
  %i.vw = insertelement <4 x float> poison, float %i.vr, i64 0
  %i.vx = shufflevector <4 x float> %i.vw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vy = fmul <4 x float> %i.vv, %i.vx
  %i.vz = insertelement <4 x float> poison, float %i.vt, i64 0
  %i.wa = shufflevector <4 x float> %i.vz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wb = fdiv <4 x float> %i.vy, %i.wa           ; 7 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0935.0.copyload = load <4 x float>, ptr %i.wc, align 8, !tbaa !71 ; 7 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.we = load i8, ptr %i.wd, align 8, !tbaa !243, !range !11, !noundef !12
  %i.wf = trunc nuw i8 %i.we to i1
  br i1 %i.wf, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit624, label %.thread

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit624: ; preds = %bb.q
  %.sroa.05.0.copyload.i.i.i627 = load <2 x float>, ptr %i.od, align 8 ; 3 uses
  %.sroa.26.0.copyload.i.i.i629 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.wg = fmul <2 x float> %.sroa.0997.0.copyload, %.sroa.05.0.copyload.i.i.i627 ; 2 uses
  %shift1119 = shufflevector <2 x float> %i.wg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1120 = fadd <2 x float> %i.wg, %shift1119
  %i.wh = extractelement <2 x float> %foldExtExtBinop1120, i64 0
  %i.wi = fmul float %.sroa.121004.0.copyload, %.sroa.26.0.copyload.i.i.i629
  %i.wj = fadd float %i.wi, %i.wh                 ; 2 uses
  %i.wk = fcmp oeq float %i.wj, 0.000000e+00
  br i1 %i.wk, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit624
  %i.wl = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.wm = shufflevector <4 x float> %i.wl, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.021.0.copyload.i.i.i634 = load <2 x float>, ptr %i.na, align 8 ; 2 uses
  %.sroa.214.0.copyload.i.i.i638 = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %.sroa.013.0.copyload.i.i.i639 = load <2 x float>, ptr %i.ob, align 4 ; 2 uses
  %i.wn = insertelement <2 x float> poison, float %.sroa.6.0.copyload, i64 0
  %i.wo = shufflevector <2 x float> %i.wn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wp = insertelement <2 x float> %i.wm, float %.sroa.214.0.copyload.i.i.i638, i64 1 ; 2 uses
  %i.wq = fmul <2 x float> %i.wo, %i.wp
  %i.wr = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i639, <2 x float> %.sroa.021.0.copyload.i.i.i634, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ws = fmul <2 x float> %.sroa.0151.0.copyload, %i.wr
  %i.wt = shufflevector <2 x float> %i.ws, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.wu = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i634, <2 x float> %.sroa.013.0.copyload.i.i.i639, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.wv = fmul <2 x float> %.sroa.0151.0.copyload, %i.wu
  %i.ww = fadd <2 x float> %i.wt, %i.wv
  %i.wx = fadd <2 x float> %i.wq, %i.ww
  %i.wy = fmul float %.sroa.6.0.copyload, %.sroa.26.0.copyload.i.i.i629
  %foldExtExtBinop1122 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i627
  %foldExtExtBinop1124 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i627
  %shift1126 = shufflevector <2 x float> %foldExtExtBinop1124, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1127 = fadd <2 x float> %foldExtExtBinop1122, %shift1126
  %i.wz = extractelement <2 x float> %foldExtExtBinop1127, i64 0
  %i.xa = fadd float %i.wy, %i.wz
  %i.xb = insertelement <2 x float> poison, float %.sroa.121004.0.copyload, i64 0
  %i.xc = shufflevector <2 x float> %i.xb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xd = fmul <2 x float> %i.xc, %i.wp
  %i.xe = fmul <2 x float> %.sroa.0997.0.copyload, %i.wr
  %i.xf = shufflevector <2 x float> %i.xe, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xg = fmul <2 x float> %.sroa.0997.0.copyload, %i.wu
  %i.xh = fadd <2 x float> %i.xf, %i.xg
  %i.xi = fadd <2 x float> %i.xd, %i.xh
  %i.xj = load i64, ptr %20, align 8, !tbaa !212
  %i.xk = and i64 %i.xj, 144115188075855871
  %i.xl = inttoptr i64 %i.xk to ptr
  %i.xm = call noundef float @_ZNK4pbrt14DielectricBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(12) %i.xl, <2 x float> %i.xi, float %i.wj, <2 x float> %i.wx, float %i.xa, i32 noundef 0, i32 noundef 3)
  %.pre.pre = load i8, ptr %i.vg, align 4, !tbaa !239, !range !11
  %i.xn = trunc nuw i8 %.pre.pre to i1
  br label %bb.s

.thread:                                          ; preds = %bb.q
  %i.xo = insertelement <2 x float> poison, float %i.vt, i64 0
  %i.xp = shufflevector <2 x float> %i.xo, <2 x float> poison, <4 x i32> zeroinitializer
  br label %bb.t

bb.s:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit624, %bb.r
  %.pre = phi i1 [ true, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit624 ], [ %i.xn, %bb.r ]
  %.0.i644 = phi float [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit624 ], [ %i.xm, %bb.r ]
  %i.xq = insertelement <2 x float> poison, float %.0.i644, i64 0
  %i.xr = shufflevector <2 x float> %i.xq, <2 x float> poison, <4 x i32> zeroinitializer
  br i1 %.pre, label %bb.t, label %.noexc674

.noexc674:                                        ; preds = %bb.s
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
  unreachable

bb.t:                                             ; preds = %.thread, %bb.s
  %.pn = phi <4 x float> [ %i.xp, %.thread ], [ %i.xr, %bb.s ]
  %.sroa.0927.01096 = fdiv <4 x float> %.sroa.0935.0.copyload, %.pn ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.xt = load float, ptr %i.xs, align 8, !tbaa !438 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.xv = load i32, ptr %i.xu, align 16, !tbaa !244
  %i.xw = and i32 %i.xv, 2
  %.not1079 = icmp eq i32 %i.xw, 0
  %i.xx = getelementptr inbounds nuw i8, ptr %24, i64 36
  %i.xy = load float, ptr %i.xx, align 4          ; 2 uses
  %i.xz = fmul float %i.xy, %i.xy
  %i.ya = fmul float %i.xt, %i.xz
  %.0447 = select i1 %.not1079, float %i.xt, float %i.ya ; 5 uses
  %i.yb = extractelement <4 x float> %i.wb, i64 0
  %i.yc = fmul float %i.yb, %.0447
  %i.yd = extractelement <4 x float> %i.wb, i64 1
  %i.ye = fmul float %i.yd, %.0447
  %i.yf = extractelement <4 x float> %i.wb, i64 2
  %i.yg = fmul float %i.yf, %.0447
  %i.yh = extractelement <4 x float> %i.wb, i64 3
  %i.yi = fmul float %i.yh, %.0447
  %shift1129 = shufflevector <4 x float> %.sroa.0935.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1130 = fadd <4 x float> %.sroa.0935.0.copyload, %shift1129
  %shift1132 = shufflevector <4 x float> %.sroa.0935.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1133 = fadd <4 x float> %shift1132, %foldExtExtBinop1130
  %shift1135 = shufflevector <4 x float> %.sroa.0935.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1136 = fadd <4 x float> %shift1135, %foldExtExtBinop1133
  %i.yj = extractelement <4 x float> %foldExtExtBinop1136, i64 0
  %i.yk = fmul float %i.yj, 2.500000e-01          ; 4 uses
  %i.yl = fdiv float %i.yc, %i.yk                 ; 2 uses
  %i.ym = fdiv float %i.ye, %i.yk                 ; 2 uses
  %i.yn = fdiv float %i.yg, %i.yk                 ; 2 uses
  %i.yo = fdiv float %i.yi, %i.yk                 ; 2 uses
  %i.yp = fcmp olt float %i.yl, %i.ym
  %.sroa.speculated.i = select i1 %i.yp, float %i.ym, float %i.yl ; 2 uses
  %i.yq = fcmp olt float %.sroa.speculated.i, %i.yn
  %.sroa.speculated.1.i = select i1 %i.yq, float %i.yn, float %.sroa.speculated.i ; 2 uses
  %i.yr = fcmp olt float %.sroa.speculated.1.i, %i.yo
  %.sroa.speculated.2.i = select i1 %i.yr, float %i.yo, float %.sroa.speculated.1.i ; 2 uses
  %i.ys = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.ys, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.yt = load i32, ptr %i.pm, align 8, !tbaa !430
  %i.yu = icmp sgt i32 %i.yt, 0
  br i1 %i.yu, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.yv = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.yw = fcmp ogt float %i.yv, 0.000000e+00
  %.sroa.speculated = select i1 %i.yw, float %i.yv, float 0.000000e+00 ; 2 uses
  %i.yx = fcmp olt float %.sroa.01.4.vec.extract.i.i589, %.sroa.speculated
  br i1 %i.yx, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.yy = fsub float 1.000000e+00, %.sroa.speculated
  %i.yz = insertelement <4 x float> poison, float %i.yy, i64 0
  %i.za = shufflevector <4 x float> %i.yz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zb = fdiv <4 x float> %i.wb, %i.za
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u, %bb.t
  %.sroa.0953.0 = phi <4 x float> [ %i.wb, %bb.t ], [ %i.zb, %bb.w ], [ %i.wb, %bb.u ], [ zeroinitializer, %bb.v ]
  %.sroa.0953.0.fr = freeze <4 x float> %.sroa.0953.0 ; 3 uses
  %i.zc = fcmp une <4 x float> %.sroa.0953.0.fr, zeroinitializer
  %i.zd = bitcast <4 x i1> %i.zc to i4
  %.not1148 = icmp eq i4 %i.zd, 0
  br i1 %.not1148, label %bb.ad, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit710

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit710: ; preds = %bb.x
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mh, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !434
  %i.zg = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mi, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %.sroa.0151.0.copyload, float %.sroa.6.0.copyload) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.zg, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.zg, 1
  %i.zh = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.zi = load i8, ptr %i.zh, align 2, !tbaa !245, !range !11, !noundef !12
  %i.zj = trunc nuw i8 %i.zi to i1
  br i1 %i.zj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit710
  %.sroa.0101.0.copyload = load <2 x float>, ptr %i.mh, align 8 ; 2 uses
  %.sroa.2102.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i715 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i717 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 1
  %i.zk = fmul float %.sroa.6.0.copyload, %.sroa.2102.0.copyload ; 2 uses
  %i.zl = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i717, float %.sroa.04.4.vec.extract.i.i599, float %i.zk)
  %i.zm = fneg float %i.zk
  %i.zn = call noundef float @llvm.fma.f32(float %.sroa.2102.0.copyload, float %.sroa.6.0.copyload, float %i.zm)
  %i.zo = fadd float %i.zl, %i.zn
  %i.zp = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i715, float %.sroa.04.0.vec.extract.i.i597, float %i.zo)
  %i.zq = fcmp ogt float %i.zp, 0.000000e+00
  %.v = select i1 %i.zq, i64 248, i64 240
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.zs = load i64, ptr %i.zr, align 8, !tbaa !177
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit710
  %.sroa.17900.0 = phi i64 [ %i.zs, %bb.y ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit710 ]
  %i.zt = load i8, ptr %i.vg, align 4, !tbaa !239, !range !11, !noundef !12
  %i.zu = trunc nuw i8 %i.zt to i1
  br i1 %i.zu, label %bb.aa, label %.noexc719

.noexc719:                                        ; preds = %bb.z
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.zv = load i32, ptr %i.xu, align 16, !tbaa !244
  %i.zw = and i32 %i.zv, 16                       ; 2 uses
  %.not1080 = icmp eq i32 %i.zw, 0
  br i1 %.not1080, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
end_hunk_6
begin_hunk_7_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_18DielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_IS2_EENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSD_E_clESD_:bb.a
  %i.qd = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qd, align 16, !tbaa !155
  %i.qe = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qe, align 16, !tbaa !155
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.pw, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.na, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.ob, align 4 ; 2 uses
  %i.qf = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qg = shufflevector <4 x float> %i.qf, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qh = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qi = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.qj = fmul <2 x float> %i.qh, %i.qi
  %i.qk = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.ql = fmul <2 x float> %.sroa.0162.0.copyload, %i.qk
  %i.qm = fadd <2 x float> %i.qj, %i.ql
  %i.qn = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.qo = shufflevector <2 x float> %i.qn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qp = fmul <2 x float> %i.qo, %i.qg
  %i.qq = fadd <2 x float> %i.qp, %i.qm
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.od, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.qr = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1116 = shufflevector <2 x float> %i.qr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1117 = fadd <2 x float> %i.qr, %shift1116
  %i.qs = extractelement <2 x float> %foldExtExtBinop1117, i64 0
  %i.qt = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.qu = fadd float %i.qt, %i.qs
  %i.qv = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qq, float %i.qu, ptr nonnull %i.e, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.qw = extractvalue { <2 x float>, <2 x float> } %i.qv, 0
  %i.qx = extractvalue { <2 x float>, <2 x float> } %i.qv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.qw, <2 x float> %i.qx, ptr noundef nonnull align 4 dereferenceable(32) %17)
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !440
  %i.ra = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.rb = load i8, ptr %i.ra, align 4, !tbaa !219, !range !11, !noundef !12
  %i.rc = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !220
  %i.re = sext i32 %i.qz to i64                   ; 20 uses
  %i.rf = getelementptr inbounds i8, ptr %i.rd, i64 %i.re
  store i8 %i.rb, ptr %i.rf, align 1, !tbaa !10
  %i.rg = load float, ptr %23, align 4, !tbaa !221
  %i.rh = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !222
  %i.rj = getelementptr inbounds [4 x i8], ptr %i.ri, i64 %i.re
  store float %i.rg, ptr %i.rj, align 4, !tbaa !155
  %i.rk = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !223
  %i.rm = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !224
  %i.ro = getelementptr inbounds [4 x i8], ptr %i.rn, i64 %i.re
  store float %i.rl, ptr %i.ro, align 4, !tbaa !155
  %i.rp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !225
  %i.rr = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !226
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.rs, i64 %i.re
  store float %i.rq, ptr %i.rt, align 4, !tbaa !155
  %i.ru = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !227
  %i.rw = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !157
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.rx, i64 %i.re
  store float %i.rv, ptr %i.ry, align 4, !tbaa !155
  %i.rz = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !228
  %i.sb = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !158
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.re
  store float %i.sa, ptr %i.sd, align 4, !tbaa !155
  %i.se = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.sf = load float, ptr %i.se, align 4, !tbaa !229
  %i.sg = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !159
  %i.si = getelementptr inbounds [4 x i8], ptr %i.sh, i64 %i.re
  store float %i.sf, ptr %i.si, align 4, !tbaa !155
  %i.sj = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !227
  %i.sl = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !157
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.sm, i64 %i.re
  store float %i.sk, ptr %i.sn, align 4, !tbaa !155
  %i.so = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.sp = load float, ptr %i.so, align 4, !tbaa !228
  %i.sq = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !158
  %i.ss = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.re
  store float %i.sp, ptr %i.ss, align 4, !tbaa !155
  %i.st = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.su = load float, ptr %i.st, align 4, !tbaa !229
  %i.sv = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !159
  %i.sx = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.re
  store float %i.su, ptr %i.sx, align 4, !tbaa !155
  %i.sy = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !230
  %i.ta = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !163
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.re
  store float %i.sz, ptr %i.tc, align 4, !tbaa !155
  %i.td = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.te = load float, ptr %i.td, align 4, !tbaa !231
  %i.tf = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !164
  %i.th = getelementptr inbounds [4 x i8], ptr %i.tg, i64 %i.re
  store float %i.te, ptr %i.th, align 4, !tbaa !155
  %i.ti = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !232
  %i.tk = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !233
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.re
  store float %i.tj, ptr %i.tm, align 4, !tbaa !155
  %i.tn = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.to = load float, ptr %i.tn, align 4, !tbaa !234
  %i.tp = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !160
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.tq, i64 %i.re
  store float %i.to, ptr %i.tr, align 4, !tbaa !155
  %i.ts = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !235
  %i.tu = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !161
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.tv, i64 %i.re
  store float %i.tt, ptr %i.tw, align 4, !tbaa !155
  %i.tx = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !181
  %i.tz = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !162
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.re
  store float %i.ty, ptr %i.ub, align 4, !tbaa !155
  %i.uc = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !234
  %i.ue = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !160
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.re
  store float %i.ud, ptr %i.ug, align 4, !tbaa !155
  %i.uh = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !235
  %i.uj = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !161
  %i.ul = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %i.re
  store float %i.ui, ptr %i.ul, align 4, !tbaa !155
  %i.um = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.un = load float, ptr %i.um, align 4, !tbaa !181
  %i.uo = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !162
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.re
  store float %i.un, ptr %i.uq, align 4, !tbaa !155
  %i.ur = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.us = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !153
  %i.uu = getelementptr inbounds [16 x i8], ptr %i.ut, i64 %i.re ; 2 uses
  %i.uv = load <4 x float>, ptr %i.ur, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i584 = shufflevector <4 x float> %i.uv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.uv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i584, ptr %i.uu, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0997.0.copyload = load <2 x float>, ptr %i.mg, align 4 ; 10 uses
  %.sroa.121004.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121004.0.copyload = load float, ptr %.sroa.121004.0..sroa_idx, align 4 ; 8 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !440
  %i.uz = load ptr, ptr %i.uw, align 8, !tbaa !236, !noalias !1447
  %i.va = sext i32 %i.uy to i64                   ; 2 uses
  %i.vb = getelementptr inbounds [16 x i8], ptr %i.uz, i64 %i.va ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i587 = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.vc = load <2 x float>, ptr %i.vb, align 16, !noalias !1447
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i587, align 8, !tbaa !71, !noalias !1447
  %i.vd = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !237, !noalias !1447
  %i.vf = getelementptr inbounds [16 x i8], ptr %i.ve, i64 %i.va ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vf, align 16, !noalias !1447 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %.sroa.2.0.copyload.i931.i.i1078 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !1447
  %.sroa.01.0.vec.extract.i.i588 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i589 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_14DielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %24, ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %.sroa.0997.0.copyload, float %.sroa.121004.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i588, <2 x float> %.sroa.2.0.copyload.i931.i.i1078, i32 noundef 0, i32 noundef 3)
  %i.vg = getelementptr inbounds nuw i8, ptr %24, i64 44 ; 3 uses
  %i.vh = load i8, ptr %i.vg, align 4, !tbaa !239, !range !11, !noundef !12
  %i.vi = trunc nuw i8 %i.vh to i1
  br i1 %i.vi, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vj = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.vj, align 16 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %1, i64 200
  %30 = load <4 x float>, ptr %i.vk, align 8
  %.sroa.04.0.vec.extract.i.i597 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.04.4.vec.extract.i.i599 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.vl = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.vm = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i573, float %.sroa.04.4.vec.extract.i.i599, float %i.vl)
  %i.vn = fneg float %i.vl
  %i.vo = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.vn)
  %i.vp = fadd float %i.vm, %i.vo
  %i.vq = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i572, float %.sroa.04.0.vec.extract.i.i597, float %i.vp)
  %i.vr = call noundef float @llvm.fabs.f32(float %i.vq)
  %i.vs = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !242 ; 2 uses
  %i.vu = load <4 x float>, ptr %24, align 16, !tbaa !155
  %i.vv = fmul <4 x float> %30, %i.vu
  %i.vw = insertelement <4 x float> poison, float %i.vr, i64 0
  %i.vx = shufflevector <4 x float> %i.vw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vy = fmul <4 x float> %i.vv, %i.vx
  %i.vz = insertelement <4 x float> poison, float %i.vt, i64 0
  %i.wa = shufflevector <4 x float> %i.vz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wb = fdiv <4 x float> %i.vy, %i.wa           ; 7 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0935.0.copyload = load <4 x float>, ptr %i.wc, align 8, !tbaa !71 ; 7 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.we = load i8, ptr %i.wd, align 8, !tbaa !243, !range !11, !noundef !12
  %i.wf = trunc nuw i8 %i.we to i1
  br i1 %i.wf, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit624, label %.thread

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit624: ; preds = %bb.q
  %.sroa.05.0.copyload.i.i.i627 = load <2 x float>, ptr %i.od, align 8 ; 3 uses
  %.sroa.26.0.copyload.i.i.i629 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.wg = fmul <2 x float> %.sroa.0997.0.copyload, %.sroa.05.0.copyload.i.i.i627 ; 2 uses
  %shift1119 = shufflevector <2 x float> %i.wg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1120 = fadd <2 x float> %i.wg, %shift1119
  %i.wh = extractelement <2 x float> %foldExtExtBinop1120, i64 0
  %i.wi = fmul float %.sroa.121004.0.copyload, %.sroa.26.0.copyload.i.i.i629
  %i.wj = fadd float %i.wi, %i.wh                 ; 2 uses
  %i.wk = fcmp oeq float %i.wj, 0.000000e+00
  br i1 %i.wk, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit624
  %i.wl = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.wm = shufflevector <4 x float> %i.wl, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.021.0.copyload.i.i.i634 = load <2 x float>, ptr %i.na, align 8 ; 2 uses
  %.sroa.214.0.copyload.i.i.i638 = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %.sroa.013.0.copyload.i.i.i639 = load <2 x float>, ptr %i.ob, align 4 ; 2 uses
  %i.wn = insertelement <2 x float> poison, float %.sroa.6.0.copyload, i64 0
  %i.wo = shufflevector <2 x float> %i.wn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wp = insertelement <2 x float> %i.wm, float %.sroa.214.0.copyload.i.i.i638, i64 1 ; 2 uses
  %i.wq = fmul <2 x float> %i.wo, %i.wp
  %i.wr = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i639, <2 x float> %.sroa.021.0.copyload.i.i.i634, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ws = fmul <2 x float> %.sroa.0151.0.copyload, %i.wr
  %i.wt = shufflevector <2 x float> %i.ws, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.wu = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i634, <2 x float> %.sroa.013.0.copyload.i.i.i639, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.wv = fmul <2 x float> %.sroa.0151.0.copyload, %i.wu
  %i.ww = fadd <2 x float> %i.wt, %i.wv
  %i.wx = fadd <2 x float> %i.wq, %i.ww
  %i.wy = fmul float %.sroa.6.0.copyload, %.sroa.26.0.copyload.i.i.i629
  %foldExtExtBinop1122 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i627
  %foldExtExtBinop1124 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i627
  %shift1126 = shufflevector <2 x float> %foldExtExtBinop1124, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1127 = fadd <2 x float> %foldExtExtBinop1122, %shift1126
  %i.wz = extractelement <2 x float> %foldExtExtBinop1127, i64 0
  %i.xa = fadd float %i.wy, %i.wz
  %i.xb = insertelement <2 x float> poison, float %.sroa.121004.0.copyload, i64 0
  %i.xc = shufflevector <2 x float> %i.xb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xd = fmul <2 x float> %i.xc, %i.wp
  %i.xe = fmul <2 x float> %.sroa.0997.0.copyload, %i.wr
  %i.xf = shufflevector <2 x float> %i.xe, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xg = fmul <2 x float> %.sroa.0997.0.copyload, %i.wu
  %i.xh = fadd <2 x float> %i.xf, %i.xg
  %i.xi = fadd <2 x float> %i.xd, %i.xh
  %i.xj = load i64, ptr %20, align 8, !tbaa !212
  %i.xk = and i64 %i.xj, 144115188075855871
  %i.xl = inttoptr i64 %i.xk to ptr
  %i.xm = call noundef float @_ZNK4pbrt14DielectricBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(12) %i.xl, <2 x float> %i.xi, float %i.wj, <2 x float> %i.wx, float %i.xa, i32 noundef 0, i32 noundef 3)
  %.pre.pre = load i8, ptr %i.vg, align 4, !tbaa !239, !range !11
  %i.xn = trunc nuw i8 %.pre.pre to i1
  br label %bb.s

.thread:                                          ; preds = %bb.q
  %i.xo = insertelement <2 x float> poison, float %i.vt, i64 0
  %i.xp = shufflevector <2 x float> %i.xo, <2 x float> poison, <4 x i32> zeroinitializer
  br label %bb.t

bb.s:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit624, %bb.r
  %.pre = phi i1 [ true, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit624 ], [ %i.xn, %bb.r ]
  %.0.i644 = phi float [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit624 ], [ %i.xm, %bb.r ]
  %i.xq = insertelement <2 x float> poison, float %.0.i644, i64 0
  %i.xr = shufflevector <2 x float> %i.xq, <2 x float> poison, <4 x i32> zeroinitializer
  br i1 %.pre, label %bb.t, label %.noexc674

.noexc674:                                        ; preds = %bb.s
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
  unreachable

bb.t:                                             ; preds = %.thread, %bb.s
  %.pn = phi <4 x float> [ %i.xp, %.thread ], [ %i.xr, %bb.s ]
  %.sroa.0927.01096 = fdiv <4 x float> %.sroa.0935.0.copyload, %.pn ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.xt = load float, ptr %i.xs, align 8, !tbaa !438 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.xv = load i32, ptr %i.xu, align 16, !tbaa !244
  %i.xw = and i32 %i.xv, 2
  %.not1079 = icmp eq i32 %i.xw, 0
  %i.xx = getelementptr inbounds nuw i8, ptr %24, i64 36
  %i.xy = load float, ptr %i.xx, align 4          ; 2 uses
  %i.xz = fmul float %i.xy, %i.xy
  %i.ya = fmul float %i.xt, %i.xz
  %.0447 = select i1 %.not1079, float %i.xt, float %i.ya ; 5 uses
  %i.yb = extractelement <4 x float> %i.wb, i64 0
  %i.yc = fmul float %i.yb, %.0447
  %i.yd = extractelement <4 x float> %i.wb, i64 1
  %i.ye = fmul float %i.yd, %.0447
  %i.yf = extractelement <4 x float> %i.wb, i64 2
  %i.yg = fmul float %i.yf, %.0447
  %i.yh = extractelement <4 x float> %i.wb, i64 3
  %i.yi = fmul float %i.yh, %.0447
  %shift1129 = shufflevector <4 x float> %.sroa.0935.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1130 = fadd <4 x float> %.sroa.0935.0.copyload, %shift1129
  %shift1132 = shufflevector <4 x float> %.sroa.0935.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1133 = fadd <4 x float> %shift1132, %foldExtExtBinop1130
  %shift1135 = shufflevector <4 x float> %.sroa.0935.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1136 = fadd <4 x float> %shift1135, %foldExtExtBinop1133
  %i.yj = extractelement <4 x float> %foldExtExtBinop1136, i64 0
  %i.yk = fmul float %i.yj, 2.500000e-01          ; 4 uses
  %i.yl = fdiv float %i.yc, %i.yk                 ; 2 uses
  %i.ym = fdiv float %i.ye, %i.yk                 ; 2 uses
  %i.yn = fdiv float %i.yg, %i.yk                 ; 2 uses
  %i.yo = fdiv float %i.yi, %i.yk                 ; 2 uses
  %i.yp = fcmp olt float %i.yl, %i.ym
  %.sroa.speculated.i = select i1 %i.yp, float %i.ym, float %i.yl ; 2 uses
  %i.yq = fcmp olt float %.sroa.speculated.i, %i.yn
  %.sroa.speculated.1.i = select i1 %i.yq, float %i.yn, float %.sroa.speculated.i ; 2 uses
  %i.yr = fcmp olt float %.sroa.speculated.1.i, %i.yo
  %.sroa.speculated.2.i = select i1 %i.yr, float %i.yo, float %.sroa.speculated.1.i ; 2 uses
  %i.ys = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.ys, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.yt = load i32, ptr %i.pm, align 8, !tbaa !430
  %i.yu = icmp sgt i32 %i.yt, 0
  br i1 %i.yu, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.yv = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.yw = fcmp ogt float %i.yv, 0.000000e+00
  %.sroa.speculated = select i1 %i.yw, float %i.yv, float 0.000000e+00 ; 2 uses
  %i.yx = fcmp olt float %.sroa.01.4.vec.extract.i.i589, %.sroa.speculated
  br i1 %i.yx, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.yy = fsub float 1.000000e+00, %.sroa.speculated
  %i.yz = insertelement <4 x float> poison, float %i.yy, i64 0
  %i.za = shufflevector <4 x float> %i.yz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zb = fdiv <4 x float> %i.wb, %i.za
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u, %bb.t
  %.sroa.0953.0 = phi <4 x float> [ %i.wb, %bb.t ], [ %i.zb, %bb.w ], [ %i.wb, %bb.u ], [ zeroinitializer, %bb.v ]
  %.sroa.0953.0.fr = freeze <4 x float> %.sroa.0953.0 ; 3 uses
  %i.zc = fcmp une <4 x float> %.sroa.0953.0.fr, zeroinitializer
  %i.zd = bitcast <4 x i1> %i.zc to i4
  %.not1148 = icmp eq i4 %i.zd, 0
  br i1 %.not1148, label %bb.ad, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit710

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit710: ; preds = %bb.x
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mh, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !434
  %i.zg = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mi, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %.sroa.0151.0.copyload, float %.sroa.6.0.copyload) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.zg, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.zg, 1
  %i.zh = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.zi = load i8, ptr %i.zh, align 2, !tbaa !245, !range !11, !noundef !12
  %i.zj = trunc nuw i8 %i.zi to i1
  br i1 %i.zj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit710
  %.sroa.0101.0.copyload = load <2 x float>, ptr %i.mh, align 8 ; 2 uses
  %.sroa.2102.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i715 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i717 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 1
  %i.zk = fmul float %.sroa.6.0.copyload, %.sroa.2102.0.copyload ; 2 uses
  %i.zl = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i717, float %.sroa.04.4.vec.extract.i.i599, float %i.zk)
  %i.zm = fneg float %i.zk
  %i.zn = call noundef float @llvm.fma.f32(float %.sroa.2102.0.copyload, float %.sroa.6.0.copyload, float %i.zm)
  %i.zo = fadd float %i.zl, %i.zn
  %i.zp = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i715, float %.sroa.04.0.vec.extract.i.i597, float %i.zo)
  %i.zq = fcmp ogt float %i.zp, 0.000000e+00
  %.v = select i1 %i.zq, i64 248, i64 240
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.zs = load i64, ptr %i.zr, align 8, !tbaa !177
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit710
  %.sroa.17900.0 = phi i64 [ %i.zs, %bb.y ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit710 ]
  %i.zt = load i8, ptr %i.vg, align 4, !tbaa !239, !range !11, !noundef !12
  %i.zu = trunc nuw i8 %i.zt to i1
  br i1 %i.zu, label %bb.aa, label %.noexc719

.noexc719:                                        ; preds = %bb.z
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.zv = load i32, ptr %i.xu, align 16, !tbaa !244
  %i.zw = and i32 %i.zv, 16                       ; 2 uses
  %.not1080 = icmp eq i32 %i.zw, 0
  br i1 %.not1080, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
end_hunk_7
begin_hunk_8_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_15DiffuseMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_IS2_EENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSF_E_clESF_:bb.a
  %i.rl = getelementptr inbounds nuw i8, ptr %26, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.rl, align 16, !tbaa !155
  %i.rm = getelementptr inbounds nuw i8, ptr %26, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.rm, align 16, !tbaa !155
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.re, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.oh, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.pk, align 4 ; 2 uses
  %i.rn = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.ro = shufflevector <4 x float> %i.rn, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.rp = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rq = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.rr = fmul <2 x float> %i.rp, %i.rq
  %i.rs = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.rt = fmul <2 x float> %.sroa.0162.0.copyload, %i.rs
  %i.ru = fadd <2 x float> %i.rr, %i.rt
  %i.rv = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.rw = shufflevector <2 x float> %i.rv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rx = fmul <2 x float> %i.rw, %i.ro
  %i.ry = fadd <2 x float> %i.rx, %i.ru
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.pl, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.rz = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1190 = shufflevector <2 x float> %i.rz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1191 = fadd <2 x float> %i.rz, %shift1190
  %i.sa = extractelement <2 x float> %foldExtExtBinop1191, i64 0
  %i.sb = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.sc = fadd float %i.sb, %i.sa
  %i.sd = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %24, <2 x float> %i.ry, float %i.sc, ptr nonnull %i.e, i64 16, ptr nonnull %26, i64 16) ; 2 uses
  %i.se = extractvalue { <2 x float>, <2 x float> } %i.sd, 0
  %i.sf = extractvalue { <2 x float>, <2 x float> } %i.sd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %27, ptr noundef nonnull align 8 dereferenceable(248) %25, <2 x float> %i.se, <2 x float> %i.sf, ptr noundef nonnull align 4 dereferenceable(32) %22)
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !473
  %i.si = getelementptr inbounds nuw i8, ptr %27, i64 88
  %i.sj = load i8, ptr %i.si, align 4, !tbaa !219, !range !11, !noundef !12
  %i.sk = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !220
  %i.sm = sext i32 %i.sh to i64                   ; 20 uses
  %i.sn = getelementptr inbounds i8, ptr %i.sl, i64 %i.sm
  store i8 %i.sj, ptr %i.sn, align 1, !tbaa !10
  %i.so = load float, ptr %27, align 4, !tbaa !221
  %i.sp = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !222
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %i.sm
  store float %i.so, ptr %i.sr, align 4, !tbaa !155
  %i.ss = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.st = load float, ptr %i.ss, align 4, !tbaa !223
  %i.su = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !224
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.sm
  store float %i.st, ptr %i.sw, align 4, !tbaa !155
  %i.sx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !225
  %i.sz = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !226
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.sm
  store float %i.sy, ptr %i.tb, align 4, !tbaa !155
  %i.tc = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.td = load float, ptr %i.tc, align 4, !tbaa !227
  %i.te = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !157
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.sm
  store float %i.td, ptr %i.tg, align 4, !tbaa !155
  %i.th = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ti = load float, ptr %i.th, align 4, !tbaa !228
  %i.tj = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !158
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.sm
  store float %i.ti, ptr %i.tl, align 4, !tbaa !155
  %i.tm = getelementptr inbounds nuw i8, ptr %27, i64 20
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !229
  %i.to = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !159
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.sm
  store float %i.tn, ptr %i.tq, align 4, !tbaa !155
  %i.tr = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !227
  %i.tt = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !157
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.sm
  store float %i.ts, ptr %i.tv, align 4, !tbaa !155
  %i.tw = getelementptr inbounds nuw i8, ptr %27, i64 28
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !228
  %i.ty = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !158
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.sm
  store float %i.tx, ptr %i.ua, align 4, !tbaa !155
  %i.ub = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !229
  %i.ud = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !159
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.sm
  store float %i.uc, ptr %i.uf, align 4, !tbaa !155
  %i.ug = getelementptr inbounds nuw i8, ptr %27, i64 36
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !230
  %i.ui = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !163
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.sm
  store float %i.uh, ptr %i.uk, align 4, !tbaa !155
  %i.ul = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.um = load float, ptr %i.ul, align 4, !tbaa !231
  %i.un = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !164
  %i.up = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.sm
  store float %i.um, ptr %i.up, align 4, !tbaa !155
  %i.uq = getelementptr inbounds nuw i8, ptr %27, i64 44
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !232
  %i.us = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !233
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %i.sm
  store float %i.ur, ptr %i.uu, align 4, !tbaa !155
  %i.uv = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !234
  %i.ux = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !160
  %i.uz = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.sm
  store float %i.uw, ptr %i.uz, align 4, !tbaa !155
  %i.va = getelementptr inbounds nuw i8, ptr %27, i64 52
  %i.vb = load float, ptr %i.va, align 4, !tbaa !235
  %i.vc = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !161
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.vd, i64 %i.sm
  store float %i.vb, ptr %i.ve, align 4, !tbaa !155
  %i.vf = getelementptr inbounds nuw i8, ptr %27, i64 56
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !181
  %i.vh = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !162
  %i.vj = getelementptr inbounds [4 x i8], ptr %i.vi, i64 %i.sm
  store float %i.vg, ptr %i.vj, align 4, !tbaa !155
  %i.vk = getelementptr inbounds nuw i8, ptr %27, i64 60
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !234
  %i.vm = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !160
  %i.vo = getelementptr inbounds [4 x i8], ptr %i.vn, i64 %i.sm
  store float %i.vl, ptr %i.vo, align 4, !tbaa !155
  %i.vp = getelementptr inbounds nuw i8, ptr %27, i64 64
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !235
  %i.vr = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !161
  %i.vt = getelementptr inbounds [4 x i8], ptr %i.vs, i64 %i.sm
  store float %i.vq, ptr %i.vt, align 4, !tbaa !155
  %i.vu = getelementptr inbounds nuw i8, ptr %27, i64 68
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !181
  %i.vw = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !162
  %i.vy = getelementptr inbounds [4 x i8], ptr %i.vx, i64 %i.sm
  store float %i.vv, ptr %i.vy, align 4, !tbaa !155
  %i.vz = getelementptr inbounds nuw i8, ptr %27, i64 72
  %i.wa = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !153
  %i.wc = getelementptr inbounds [16 x i8], ptr %i.wb, i64 %i.sm ; 2 uses
  %i.wd = load <4 x float>, ptr %i.vz, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i582 = shufflevector <4 x float> %i.wd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.wd, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i582, ptr %i.wc, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.01047.0.copyload = load <2 x float>, ptr %i.mf, align 4 ; 5 uses
  %.sroa.121054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121054.0.copyload = load float, ptr %.sroa.121054.0..sroa_idx, align 4 ; 4 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !473
  %i.wh = load ptr, ptr %i.we, align 8, !tbaa !236, !noalias !1501
  %i.wi = sext i32 %i.wg to i64                   ; 2 uses
  %i.wj = getelementptr inbounds [16 x i8], ptr %i.wh, i64 %i.wi ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i585 = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.wk = load <2 x float>, ptr %i.wj, align 16, !noalias !1501
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i585, align 8, !tbaa !71, !noalias !1501
  %i.wl = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !237, !noalias !1501
  %i.wn = getelementptr inbounds [16 x i8], ptr %i.wm, i64 %i.wi ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %.sroa.2.0.copyload.i931.i.i1172 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !1501
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 4
  %.sroa.01.4.vec.extract.i.i587 = load float, ptr %i.wo, align 4, !noalias !1501
  %.sroa.05.0.copyload.i.i.i590 = load <2 x float>, ptr %i.pl, align 8, !noalias !1502 ; 2 uses
  %.sroa.26.0.copyload.i.i.i592 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1502 ; 2 uses
  %i.wp = fmul <2 x float> %.sroa.01047.0.copyload, %.sroa.05.0.copyload.i.i.i590 ; 2 uses
  %shift1193 = shufflevector <2 x float> %i.wp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1194 = fadd <2 x float> %i.wp, %shift1193
  %i.wq = extractelement <2 x float> %foldExtExtBinop1194, i64 0
  %i.wr = fmul float %.sroa.121054.0.copyload, %.sroa.26.0.copyload.i.i.i592
  %i.ws = fadd float %i.wr, %i.wq                 ; 2 uses
  %i.wt = fcmp oeq float %i.ws, 0.000000e+00
  %.pre1161 = load i64, ptr %24, align 8, !tbaa !212 ; 5 uses
  br i1 %i.wt, label %_ZNK4pbrt4BSDF8Sample_fINS_11DiffuseBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.w

bb.w:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.wu = and i64 %.pre1161, 144115188075855871
  %i.wv = inttoptr i64 %i.wu to ptr               ; 2 uses
  %i.ww = load <4 x float>, ptr %i.wv, align 4, !noalias !1502
  %.fr = freeze <4 x float> %i.ww
  %i.wx = fcmp une <4 x float> %.fr, zeroinitializer
  %i.wy = bitcast <4 x i1> %i.wx to i4
  %i.wz = icmp eq i4 %i.wy, 0
  br i1 %i.wz, label %_ZNK4pbrt4BSDF8Sample_fINS_11DiffuseBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.xa = fmul <2 x float> %.sroa.2.0.copyload.i931.i.i1172, splat (float 2.000000e+00)
  %i.xb = fadd <2 x float> %i.xa, splat (float -1.000000e+00) ; 3 uses
  %i.xc = extractelement <2 x float> %i.xb, i64 0 ; 4 uses
  %i.xd = fcmp oeq float %i.xc, 0.000000e+00
  %i.xe = extractelement <2 x float> %i.xb, i64 1 ; 4 uses
  %i.xf = fcmp oeq float %i.xe, 0.000000e+00
  %or.cond.i.i.i.i = select i1 %i.xd, i1 %i.xf, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.xg = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.xb) ; 2 uses
  %shift1196 = shufflevector <2 x float> %i.xg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xh = fcmp ogt <2 x float> %i.xg, %shift1196
  %i.xi = extractelement <2 x i1> %i.xh, i64 0
  br i1 %i.xi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.xj = fdiv float %i.xe, %i.xc
  %i.xk = fmul float %i.xj, f0x3F490FDB
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.xl = fdiv float %i.xc, %i.xe
  %i.xm = fmul float %i.xl, f0x3F490FDB
  %i.xn = fsub float f0x3FC90FDB, %i.xm
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.024.i.i.i.i = phi float [ %i.xk, %bb.z ], [ %i.xn, %bb.aa ] ; 2 uses
  %.0.i.i.i.i = phi float [ %i.xc, %bb.z ], [ %i.xe, %bb.aa ] ; 2 uses
  %i.xo = call noundef float @cosf(float noundef %.024.i.i.i.i) #23, !noalias !1503
  %i.xp = call noundef float @sinf(float noundef %.024.i.i.i.i) #23, !noalias !1503
  %i.xq = fmul float %.0.i.i.i.i, %i.xo
  %i.xr = fmul float %.0.i.i.i.i, %i.xp
  %.sroa.0.0.vec.insert.i.i29.i.i.i.i = insertelement <2 x float> poison, float %i.xq, i64 0
  %.sroa.0.4.vec.insert.i.i30.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i29.i.i.i.i, float %i.xr, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.sroa.035.0.i.i.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i30.i.i.i.i, %bb.ab ], [ zeroinitializer, %bb.x ] ; 6 uses
  %foldExtExtBinop1197 = fmul <2 x float> %.sroa.035.0.i.i.i.i, %.sroa.035.0.i.i.i.i
  %i.xs = extractelement <2 x float> %foldExtExtBinop1197, i64 0
  %i.xt = fsub float 1.000000e+00, %i.xs
  %.sroa.02.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.035.0.i.i.i.i, i64 1 ; 3 uses
  %i.xu = fmul float %.sroa.02.4.vec.extract.i.i.i, %.sroa.02.4.vec.extract.i.i.i
  %i.xv = fsub float %i.xt, %i.xu                 ; 2 uses
  %i.xw = fcmp ogt float %i.xv, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.xw, float %i.xv, float 0.000000e+00 ; 2 uses
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i.i) ; 3 uses
  %i.xx = call float @llvm.fabs.f32(float %sqrt.i.i.i.i)
  %i.xy = fmul float %i.xx, f0x3EA2F983           ; 3 uses
  %33 = load <4 x float>, ptr %i.wv, align 4, !noalias !1503
  %.fr1226 = freeze <4 x float> %33
  %i.xz = fmul <4 x float> %.fr1226, splat (float f0x3EA2F983) ; 2 uses
  %i.ya = fcmp une <4 x float> %i.xz, zeroinitializer
  %i.yb = bitcast <4 x i1> %i.ya to i4
  %i.yc = icmp eq i4 %i.yb, 0
  %i.yd = fcmp oeq float %i.xy, 0.000000e+00
  %or.cond.i595 = or i1 %i.yc, %i.yd
  %i.ye = fcmp oeq float %.sroa.speculated.i.i.i.i, 0.000000e+00
  %or.cond76.i = or i1 %i.ye, %or.cond.i595
  br i1 %or.cond76.i, label %_ZNK4pbrt4BSDF8Sample_fINS_11DiffuseBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.02.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.035.0.i.i.i.i, i64 0
  %i.yf = fcmp olt float %i.ws, 0.000000e+00
  %i.yg = fneg float %sqrt.i.i.i.i
  %spec.select.i.i = select i1 %i.yf, float %i.yg, float %sqrt.i.i.i.i ; 2 uses
  %.sroa.037.0.copyload.i.i = load <2 x float>, ptr %i.oh, align 8, !tbaa !155, !noalias !1502
  %.sroa.238.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !tbaa !155, !noalias !1502
  %i.yh = fmul float %.sroa.02.0.vec.extract.i.i.i, %.sroa.238.0.copyload.i.i
  %.sroa.027.0.copyload.i.i = load <2 x float>, ptr %i.pk, align 4, !tbaa !155, !noalias !1502
  %.sroa.228.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !155, !noalias !1502
  %i.yi = fmul float %.sroa.02.4.vec.extract.i.i.i, %.sroa.228.0.copyload.i.i
  %i.yj = fadd float %i.yh, %i.yi
  %i.yk = fmul float %.sroa.26.0.copyload.i.i.i592, %spec.select.i.i
  %i.yl = shufflevector <2 x float> %.sroa.035.0.i.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ym = fmul <2 x float> %i.yl, %.sroa.037.0.copyload.i.i
  %i.yn = shufflevector <2 x float> %.sroa.035.0.i.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yo = fmul <2 x float> %i.yn, %.sroa.027.0.copyload.i.i
  %i.yp = fadd <2 x float> %i.ym, %i.yo
  %i.yq = insertelement <2 x float> poison, float %spec.select.i.i, i64 0
  %i.yr = shufflevector <2 x float> %i.yq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ys = fmul <2 x float> %.sroa.05.0.copyload.i.i.i590, %i.yr
  %i.yt = fadd <2 x float> %i.ys, %i.yp           ; 3 uses
  %i.yu = fadd float %i.yk, %i.yj                 ; 6 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %1, i64 200
  %34 = load <4 x float>, ptr %i.yv, align 8
  %i.yw = fmul float %.sroa.17.0, %i.yu           ; 2 uses
  %i.yx = extractelement <2 x float> %i.yt, i64 1 ; 3 uses
  %i.yy = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i571, float %i.yx, float %i.yw)
  %i.yz = fneg float %i.yw
  %i.za = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.yu, float %i.yz)
  %i.zb = fadd float %i.yy, %i.za
  %i.zc = extractelement <2 x float> %i.yt, i64 0 ; 3 uses
  %i.zd = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i570, float %i.zc, float %i.zb)
  %i.ze = call noundef float @llvm.fabs.f32(float %i.zd)
  %i.zf = fmul <4 x float> %i.xz, %34
  %i.zg = insertelement <4 x float> poison, float %i.ze, i64 0
  %i.zh = shufflevector <4 x float> %i.zg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zi = fmul <4 x float> %i.zf, %i.zh
  %i.zj = insertelement <4 x float> poison, float %i.xy, i64 0
  %i.zk = shufflevector <4 x float> %i.zj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zl = fdiv <4 x float> %i.zi, %i.zk           ; 7 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0943.0.copyload = load <4 x float>, ptr %i.zm, align 8, !tbaa !71 ; 6 uses
  %i.zn = shufflevector <4 x float> %.sroa.0943.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.zo = insertelement <2 x float> poison, float %i.xy, i64 0
  %i.zp = shufflevector <2 x float> %i.zo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zq = fdiv <2 x float> %i.zn, %i.zp
  %i.zr = shufflevector <4 x float> %.sroa.0943.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.zs = fdiv <2 x float> %i.zr, %i.zp
  %i.zt = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.zu = load float, ptr %i.zt, align 8, !tbaa !471 ; 5 uses
  %i.zv = extractelement <4 x float> %i.zl, i64 0
  %i.zw = fmul float %i.zu, %i.zv
  %i.zx = extractelement <4 x float> %i.zl, i64 1
  %i.zy = fmul float %i.zu, %i.zx
  %i.zz = extractelement <4 x float> %i.zl, i64 2
  %i.aaa = fmul float %i.zu, %i.zz
  %i.aab = extractelement <4 x float> %i.zl, i64 3
  %i.aac = fmul float %i.zu, %i.aab
  %shift1199 = shufflevector <4 x float> %.sroa.0943.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1200 = fadd <4 x float> %.sroa.0943.0.copyload, %shift1199
  %shift1202 = shufflevector <4 x float> %.sroa.0943.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1203 = fadd <4 x float> %shift1202, %foldExtExtBinop1200
  %shift1205 = shufflevector <4 x float> %.sroa.0943.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1206 = fadd <4 x float> %shift1205, %foldExtExtBinop1203
  %i.aad = extractelement <4 x float> %foldExtExtBinop1206, i64 0
  %i.aae = fmul float %i.aad, 2.500000e-01        ; 4 uses
  %i.aaf = fdiv float %i.zw, %i.aae               ; 2 uses
  %i.aag = fdiv float %i.zy, %i.aae               ; 2 uses
  %i.aah = fdiv float %i.aaa, %i.aae              ; 2 uses
  %i.aai = fdiv float %i.aac, %i.aae              ; 2 uses
  %i.aaj = fcmp olt float %i.aaf, %i.aag
  %.sroa.speculated.i = select i1 %i.aaj, float %i.aag, float %i.aaf ; 2 uses
  %i.aak = fcmp olt float %.sroa.speculated.i, %i.aah
  %.sroa.speculated.1.i = select i1 %i.aak, float %i.aah, float %.sroa.speculated.i ; 2 uses
  %i.aal = fcmp olt float %.sroa.speculated.1.i, %i.aai
  %.sroa.speculated.2.i = select i1 %i.aal, float %i.aai, float %.sroa.speculated.1.i ; 2 uses
  %i.aam = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.aam, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.aan = load i32, ptr %i.qu, align 8, !tbaa !463
  %i.aao = icmp sgt i32 %i.aan, 0
  br i1 %i.aao, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.aap = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.aaq = fcmp ogt float %i.aap, 0.000000e+00
  %.sroa.speculated = select i1 %i.aaq, float %i.aap, float 0.000000e+00 ; 2 uses
  %i.aar = fcmp olt float %.sroa.01.4.vec.extract.i.i587, %.sroa.speculated
  br i1 %i.aar, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.aas = fsub float 1.000000e+00, %.sroa.speculated
  %i.aat = insertelement <4 x float> poison, float %i.aas, i64 0
  %i.aau = shufflevector <4 x float> %i.aat, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aav = fdiv <4 x float> %i.zl, %i.aau
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ae, %bb.ad
  %.sroa.0961.0 = phi <4 x float> [ %i.zl, %bb.ad ], [ %i.aav, %bb.ag ], [ %i.zl, %bb.ae ], [ zeroinitializer, %bb.af ]
  %.sroa.0961.0.fr = freeze <4 x float> %.sroa.0961.0 ; 3 uses
  %i.aaw = fcmp une <4 x float> %.sroa.0961.0.fr, zeroinitializer
  %i.aax = bitcast <4 x i1> %i.aaw to i4
  %.not1227 = icmp eq i4 %i.aax, 0
  br i1 %.not1227, label %_ZNK4pbrt4BSDF8Sample_fINS_11DiffuseBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706: ; preds = %bb.ah
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mg, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.aay = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !467
  %i.aba = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mh, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %i.yt, float %i.yu) ; 2 uses
  %.fca.0.extract.i710 = extractvalue { <2 x float>, float } %i.aba, 0 ; 2 uses
  %.fca.1.extract.i711 = extractvalue { <2 x float>, float } %i.aba, 1
  %i.abb = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.abc = load i8, ptr %i.abb, align 2, !tbaa !245, !range !11, !noundef !12
  %i.abd = trunc nuw i8 %i.abc to i1
  %.sroa.094.0.copyload.pre = load <2 x float>, ptr %i.mg, align 8 ; 2 uses
  %.sroa.295.0.copyload.pre = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 3 uses
  %.sroa.01.0.vec.extract.i713 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 0 ; 2 uses
  %.sroa.01.4.vec.extract.i715 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 1 ; 2 uses
  br i1 %i.abd, label %bb.ai, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706._crit_edge

bb.ai:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706
  %i.abe = fmul float %i.yu, %.sroa.295.0.copyload.pre ; 2 uses
  %i.abf = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i715, float %i.yx, float %i.abe)
  %i.abg = fneg float %i.abe
  %i.abh = call noundef float @llvm.fma.f32(float %.sroa.295.0.copyload.pre, float %i.yu, float %i.abg)
  %i.abi = fadd float %i.abf, %i.abh
  %i.abj = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i713, float %i.zc, float %i.abi)
  %i.abk = fcmp ogt float %i.abj, 0.000000e+00
  %.v = select i1 %i.abk, i64 248, i64 240
  %i.abl = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.abm = load i64, ptr %i.abl, align 8, !tbaa !177
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706._crit_edge

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706._crit_edge: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706, %bb.ai
  %.sroa.17908.0 = phi i64 [ %i.abm, %bb.ai ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit706 ]
  %.sroa.0895.sroa.0.0.copyload = load float, ptr %i.mh, align 8
  %.sroa.0895.sroa.2.0.copyload = load float, ptr %.sroa.0.sroa.2.0..sroa_idx.i556, align 4
  %.sroa.0895.sroa.3.0.copyload = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i558, align 8
  %.sroa.0895.sroa.4.0.copyload = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i560, align 4
  %.sroa.0895.sroa.5.0.copyload = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i562, align 8
  %.sroa.0895.sroa.6.0.copyload = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i564, align 4
  %i.abn = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !446 ; 31 uses
  %i.abp = load i32, ptr %i.qu, align 8, !tbaa !463
  %i.abq = add nsw i32 %i.abp, 1
  %i.abr = load i32, ptr %i.wf, align 4, !tbaa !473
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abo, i64 400
  %i.abt = atomicrmw add ptr %i.abs, i32 1 monotonic, align 4
  %.sroa.0903.0.vec.extract = extractelement <2 x float> %.fca.0.extract.i710, i64 0
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abo, i64 24
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !222
  %i.abw = sext i32 %i.abt to i64                 ; 30 uses
  %i.abx = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %i.abw
  store float %.sroa.0903.0.vec.extract, ptr %i.abx, align 4, !tbaa !155
  %.sroa.0903.4.vec.extract = extractelement <2 x float> %.fca.0.extract.i710, i64 1
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abo, i64 32
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !224
  %i.aca = getelementptr inbounds [4 x i8], ptr %i.abz, i64 %i.abw
  store float %.sroa.0903.4.vec.extract, ptr %i.aca, align 4, !tbaa !155
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abo, i64 40
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !226
  %i.acd = getelementptr inbounds [4 x i8], ptr %i.acc, i64 %i.abw
  store float %.fca.1.extract.i711, ptr %i.acd, align 4, !tbaa !155
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abo, i64 56
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !160
  %i.acg = getelementptr inbounds [4 x i8], ptr %i.acf, i64 %i.abw
  store float %i.zc, ptr %i.acg, align 4, !tbaa !155
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abo, i64 64
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !161
  %i.acj = getelementptr inbounds [4 x i8], ptr %i.aci, i64 %i.abw
  store float %i.yx, ptr %i.acj, align 4, !tbaa !155
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abo, i64 72
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !162
  %i.acm = getelementptr inbounds [4 x i8], ptr %i.acl, i64 %i.abw
  store float %i.yu, ptr %i.acm, align 4, !tbaa !155
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abo, i64 80
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !247
  %i.acp = getelementptr inbounds [4 x i8], ptr %i.aco, i64 %i.abw
  store float %i.aaz, ptr %i.acp, align 4, !tbaa !155
  %i.acq = getelementptr inbounds nuw i8, ptr %i.abo, i64 88
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !248
  %i.acs = getelementptr inbounds [8 x i8], ptr %i.acr, i64 %i.abw
  store i64 %.sroa.17908.0, ptr %i.acs, align 8, !tbaa !177
  %i.act = getelementptr inbounds nuw i8, ptr %i.abo, i64 96
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !251
  %i.acv = getelementptr inbounds [4 x i8], ptr %i.acu, i64 %i.abw
  store i32 %i.abq, ptr %i.acv, align 4, !tbaa !166
  %i.acw = getelementptr inbounds nuw i8, ptr %i.abo, i64 104
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !252
  %i.acy = getelementptr inbounds [4 x i8], ptr %i.acx, i64 %i.abw
  store i32 %i.abr, ptr %i.acy, align 4, !tbaa !166
  %i.acz = getelementptr inbounds nuw i8, ptr %i.abo, i64 248
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !154
  %i.adb = getelementptr inbounds [4 x i8], ptr %i.ada, i64 %i.abw
  store float %.sroa.0895.sroa.0.0.copyload, ptr %i.adb, align 4, !tbaa !155
  %i.adc = getelementptr inbounds nuw i8, ptr %i.abo, i64 256
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !156
  %i.ade = getelementptr inbounds [4 x i8], ptr %i.add, i64 %i.abw
  store float %.sroa.0895.sroa.2.0.copyload, ptr %i.ade, align 4, !tbaa !155
  %i.adf = getelementptr inbounds nuw i8, ptr %i.abo, i64 272
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !154
  %i.adh = getelementptr inbounds [4 x i8], ptr %i.adg, i64 %i.abw
  store float %.sroa.0895.sroa.3.0.copyload, ptr %i.adh, align 4, !tbaa !155
  %i.adi = getelementptr inbounds nuw i8, ptr %i.abo, i64 280
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !156
  %i.adk = getelementptr inbounds [4 x i8], ptr %i.adj, i64 %i.abw
  store float %.sroa.0895.sroa.4.0.copyload, ptr %i.adk, align 4, !tbaa !155
  %i.adl = getelementptr inbounds nuw i8, ptr %i.abo, i64 296
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !154
  %i.adn = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %i.abw
  store float %.sroa.0895.sroa.5.0.copyload, ptr %i.adn, align 4, !tbaa !155
  %i.ado = getelementptr inbounds nuw i8, ptr %i.abo, i64 304
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !156
  %i.adq = getelementptr inbounds [4 x i8], ptr %i.adp, i64 %i.abw
  store float %.sroa.0895.sroa.6.0.copyload, ptr %i.adq, align 4, !tbaa !155
  %i.adr = getelementptr inbounds nuw i8, ptr %i.abo, i64 320
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !157
  %i.adt = getelementptr inbounds [4 x i8], ptr %i.ads, i64 %i.abw
  store float %.sroa.01.0.vec.extract.i713, ptr %i.adt, align 4, !tbaa !155
  %i.adu = getelementptr inbounds nuw i8, ptr %i.abo, i64 328
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !158
  %i.adw = getelementptr inbounds [4 x i8], ptr %i.adv, i64 %i.abw
  store float %.sroa.01.4.vec.extract.i715, ptr %i.adw, align 4, !tbaa !155
  %i.adx = getelementptr inbounds nuw i8, ptr %i.abo, i64 336
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !159
  %i.adz = getelementptr inbounds [4 x i8], ptr %i.ady, i64 %i.abw
  store float %.sroa.295.0.copyload.pre, ptr %i.adz, align 4, !tbaa !155
  %i.aea = getelementptr inbounds nuw i8, ptr %i.abo, i64 352
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !157
  %i.aec = getelementptr inbounds [4 x i8], ptr %i.aeb, i64 %i.abw
end_hunk_8
begin_hunk_9_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_15DiffuseMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_IS2_EENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSF_E_clESF_:bb.a
  %i.qq = getelementptr inbounds nuw i8, ptr %25, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qq, align 16, !tbaa !155
  %i.qr = getelementptr inbounds nuw i8, ptr %25, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qr, align 16, !tbaa !155
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.qj, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.nn, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.oo, align 4 ; 2 uses
  %i.qs = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qt = shufflevector <4 x float> %i.qs, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qu = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qv = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.qw = fmul <2 x float> %i.qu, %i.qv
  %i.qx = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.qy = fmul <2 x float> %.sroa.0162.0.copyload, %i.qx
  %i.qz = fadd <2 x float> %i.qw, %i.qy
  %i.ra = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.rb = shufflevector <2 x float> %i.ra, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rc = fmul <2 x float> %i.rb, %i.qt
  %i.rd = fadd <2 x float> %i.rc, %i.qz
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.oq, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.re = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1194 = shufflevector <2 x float> %i.re, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1195 = fadd <2 x float> %i.re, %shift1194
  %i.rf = extractelement <2 x float> %foldExtExtBinop1195, i64 0
  %i.rg = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.rh = fadd float %i.rg, %i.rf
  %i.ri = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %23, <2 x float> %i.rd, float %i.rh, ptr nonnull %i.e, i64 16, ptr nonnull %25, i64 16) ; 2 uses
  %i.rj = extractvalue { <2 x float>, <2 x float> } %i.ri, 0
  %i.rk = extractvalue { <2 x float>, <2 x float> } %i.ri, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %26, ptr noundef nonnull align 8 dereferenceable(248) %24, <2 x float> %i.rj, <2 x float> %i.rk, ptr noundef nonnull align 4 dereferenceable(32) %21)
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !473
  %i.rn = getelementptr inbounds nuw i8, ptr %26, i64 88
  %i.ro = load i8, ptr %i.rn, align 4, !tbaa !219, !range !11, !noundef !12
  %i.rp = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !220
  %i.rr = sext i32 %i.rm to i64                   ; 20 uses
  %i.rs = getelementptr inbounds i8, ptr %i.rq, i64 %i.rr
  store i8 %i.ro, ptr %i.rs, align 1, !tbaa !10
  %i.rt = load float, ptr %26, align 4, !tbaa !221
  %i.ru = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !222
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.rr
  store float %i.rt, ptr %i.rw, align 4, !tbaa !155
  %i.rx = getelementptr inbounds nuw i8, ptr %26, i64 4
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !223
  %i.rz = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !224
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.rr
  store float %i.ry, ptr %i.sb, align 4, !tbaa !155
  %i.sc = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !225
  %i.se = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !226
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.rr
  store float %i.sd, ptr %i.sg, align 4, !tbaa !155
  %i.sh = getelementptr inbounds nuw i8, ptr %26, i64 12
  %i.si = load float, ptr %i.sh, align 4, !tbaa !227
  %i.sj = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !157
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %i.rr
  store float %i.si, ptr %i.sl, align 4, !tbaa !155
  %i.sm = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !228
  %i.so = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !158
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.rr
  store float %i.sn, ptr %i.sq, align 4, !tbaa !155
  %i.sr = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !229
  %i.st = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !159
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rr
  store float %i.ss, ptr %i.sv, align 4, !tbaa !155
  %i.sw = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !227
  %i.sy = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !157
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.rr
  store float %i.sx, ptr %i.ta, align 4, !tbaa !155
  %i.tb = getelementptr inbounds nuw i8, ptr %26, i64 28
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !228
  %i.td = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !158
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.te, i64 %i.rr
  store float %i.tc, ptr %i.tf, align 4, !tbaa !155
  %i.tg = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.th = load float, ptr %i.tg, align 4, !tbaa !229
  %i.ti = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !159
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.rr
  store float %i.th, ptr %i.tk, align 4, !tbaa !155
  %i.tl = getelementptr inbounds nuw i8, ptr %26, i64 36
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !230
  %i.tn = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !163
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.rr
  store float %i.tm, ptr %i.tp, align 4, !tbaa !155
  %i.tq = getelementptr inbounds nuw i8, ptr %26, i64 40
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !231
  %i.ts = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !164
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.rr
  store float %i.tr, ptr %i.tu, align 4, !tbaa !155
  %i.tv = getelementptr inbounds nuw i8, ptr %26, i64 44
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !232
  %i.tx = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !233
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %i.rr
  store float %i.tw, ptr %i.tz, align 4, !tbaa !155
  %i.ua = getelementptr inbounds nuw i8, ptr %26, i64 48
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !234
  %i.uc = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !160
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.rr
  store float %i.ub, ptr %i.ue, align 4, !tbaa !155
  %i.uf = getelementptr inbounds nuw i8, ptr %26, i64 52
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !235
  %i.uh = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !161
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ui, i64 %i.rr
  store float %i.ug, ptr %i.uj, align 4, !tbaa !155
  %i.uk = getelementptr inbounds nuw i8, ptr %26, i64 56
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !181
  %i.um = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !162
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.rr
  store float %i.ul, ptr %i.uo, align 4, !tbaa !155
  %i.up = getelementptr inbounds nuw i8, ptr %26, i64 60
  %i.uq = load float, ptr %i.up, align 4, !tbaa !234
  %i.ur = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !160
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.rr
  store float %i.uq, ptr %i.ut, align 4, !tbaa !155
  %i.uu = getelementptr inbounds nuw i8, ptr %26, i64 64
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !235
  %i.uw = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !161
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.rr
  store float %i.uv, ptr %i.uy, align 4, !tbaa !155
  %i.uz = getelementptr inbounds nuw i8, ptr %26, i64 68
  %i.va = load float, ptr %i.uz, align 4, !tbaa !181
  %i.vb = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !162
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.vc, i64 %i.rr
  store float %i.va, ptr %i.vd, align 4, !tbaa !155
  %i.ve = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.vf = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !153
  %i.vh = getelementptr inbounds [16 x i8], ptr %i.vg, i64 %i.rr ; 2 uses
  %i.vi = load <4 x float>, ptr %i.ve, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i584 = shufflevector <4 x float> %i.vi, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.vi, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i584, ptr %i.vh, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.01049.0.copyload = load <2 x float>, ptr %i.mg, align 4 ; 5 uses
  %.sroa.121056.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121056.0.copyload = load float, ptr %.sroa.121056.0..sroa_idx, align 4 ; 4 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.vk = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !473
  %i.vm = load ptr, ptr %i.vj, align 8, !tbaa !236, !noalias !1551
  %i.vn = sext i32 %i.vl to i64                   ; 2 uses
  %i.vo = getelementptr inbounds [16 x i8], ptr %i.vm, i64 %i.vn ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i587 = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vp = load <2 x float>, ptr %i.vo, align 16, !noalias !1551
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i587, align 8, !tbaa !71, !noalias !1551
  %i.vq = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !237, !noalias !1551
  %i.vs = getelementptr inbounds [16 x i8], ptr %i.vr, i64 %i.vn ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %.sroa.2.0.copyload.i931.i.i1176 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !1551
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 4
  %.sroa.01.4.vec.extract.i.i589 = load float, ptr %i.vt, align 4, !noalias !1551
  %.sroa.05.0.copyload.i.i.i592 = load <2 x float>, ptr %i.oq, align 8, !noalias !1552 ; 2 uses
  %.sroa.26.0.copyload.i.i.i594 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1552 ; 2 uses
  %i.vu = fmul <2 x float> %.sroa.01049.0.copyload, %.sroa.05.0.copyload.i.i.i592 ; 2 uses
  %shift1197 = shufflevector <2 x float> %i.vu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1198 = fadd <2 x float> %i.vu, %shift1197
  %i.vv = extractelement <2 x float> %foldExtExtBinop1198, i64 0
  %i.vw = fmul float %.sroa.121056.0.copyload, %.sroa.26.0.copyload.i.i.i594
  %i.vx = fadd float %i.vw, %i.vv                 ; 2 uses
  %i.vy = fcmp oeq float %i.vx, 0.000000e+00
  %.pre1163 = load i64, ptr %23, align 8, !tbaa !212 ; 5 uses
  br i1 %i.vy, label %_ZNK4pbrt4BSDF8Sample_fINS_11DiffuseBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vz = and i64 %.pre1163, 144115188075855871
  %i.wa = inttoptr i64 %i.vz to ptr               ; 2 uses
  %i.wb = load <4 x float>, ptr %i.wa, align 4, !noalias !1552
  %.fr = freeze <4 x float> %i.wb
  %i.wc = fcmp une <4 x float> %.fr, zeroinitializer
  %i.wd = bitcast <4 x i1> %i.wc to i4
  %i.we = icmp eq i4 %i.wd, 0
  br i1 %i.we, label %_ZNK4pbrt4BSDF8Sample_fINS_11DiffuseBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.wf = fmul <2 x float> %.sroa.2.0.copyload.i931.i.i1176, splat (float 2.000000e+00)
  %i.wg = fadd <2 x float> %i.wf, splat (float -1.000000e+00) ; 3 uses
  %i.wh = extractelement <2 x float> %i.wg, i64 0 ; 4 uses
  %i.wi = fcmp oeq float %i.wh, 0.000000e+00
  %i.wj = extractelement <2 x float> %i.wg, i64 1 ; 4 uses
  %i.wk = fcmp oeq float %i.wj, 0.000000e+00
  %or.cond.i.i.i.i = select i1 %i.wi, i1 %i.wk, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.wl = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wg) ; 2 uses
  %shift1200 = shufflevector <2 x float> %i.wl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wm = fcmp ogt <2 x float> %i.wl, %shift1200
  %i.wn = extractelement <2 x i1> %i.wm, i64 0
  br i1 %i.wn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.wo = fdiv float %i.wj, %i.wh
  %i.wp = fmul float %i.wo, f0x3F490FDB
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.wq = fdiv float %i.wh, %i.wj
  %i.wr = fmul float %i.wq, f0x3F490FDB
  %i.ws = fsub float f0x3FC90FDB, %i.wr
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.024.i.i.i.i = phi float [ %i.wp, %bb.t ], [ %i.ws, %bb.u ] ; 2 uses
  %.0.i.i.i.i = phi float [ %i.wh, %bb.t ], [ %i.wj, %bb.u ] ; 2 uses
  %i.wt = call noundef float @cosf(float noundef %.024.i.i.i.i) #23, !noalias !1553
  %i.wu = call noundef float @sinf(float noundef %.024.i.i.i.i) #23, !noalias !1553
  %i.wv = fmul float %.0.i.i.i.i, %i.wt
  %i.ww = fmul float %.0.i.i.i.i, %i.wu
  %.sroa.0.0.vec.insert.i.i29.i.i.i.i = insertelement <2 x float> poison, float %i.wv, i64 0
  %.sroa.0.4.vec.insert.i.i30.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i29.i.i.i.i, float %i.ww, i64 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r
  %.sroa.035.0.i.i.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i30.i.i.i.i, %bb.v ], [ zeroinitializer, %bb.r ] ; 6 uses
  %foldExtExtBinop1201 = fmul <2 x float> %.sroa.035.0.i.i.i.i, %.sroa.035.0.i.i.i.i
  %i.wx = extractelement <2 x float> %foldExtExtBinop1201, i64 0
  %i.wy = fsub float 1.000000e+00, %i.wx
  %.sroa.02.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.035.0.i.i.i.i, i64 1 ; 3 uses
  %i.wz = fmul float %.sroa.02.4.vec.extract.i.i.i, %.sroa.02.4.vec.extract.i.i.i
  %i.xa = fsub float %i.wy, %i.wz                 ; 2 uses
  %i.xb = fcmp ogt float %i.xa, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.xb, float %i.xa, float 0.000000e+00 ; 2 uses
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i.i) ; 3 uses
  %i.xc = call float @llvm.fabs.f32(float %sqrt.i.i.i.i)
  %i.xd = fmul float %i.xc, f0x3EA2F983           ; 3 uses
  %32 = load <4 x float>, ptr %i.wa, align 4, !noalias !1553
  %.fr1230 = freeze <4 x float> %32
  %i.xe = fmul <4 x float> %.fr1230, splat (float f0x3EA2F983) ; 2 uses
  %i.xf = fcmp une <4 x float> %i.xe, zeroinitializer
  %i.xg = bitcast <4 x i1> %i.xf to i4
  %i.xh = icmp eq i4 %i.xg, 0
  %i.xi = fcmp oeq float %i.xd, 0.000000e+00
  %or.cond.i597 = or i1 %i.xh, %i.xi
  %i.xj = fcmp oeq float %.sroa.speculated.i.i.i.i, 0.000000e+00
  %or.cond76.i = or i1 %i.xj, %or.cond.i597
  br i1 %or.cond76.i, label %_ZNK4pbrt4BSDF8Sample_fINS_11DiffuseBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.02.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.035.0.i.i.i.i, i64 0
  %i.xk = fcmp olt float %i.vx, 0.000000e+00
  %i.xl = fneg float %sqrt.i.i.i.i
  %spec.select.i.i = select i1 %i.xk, float %i.xl, float %sqrt.i.i.i.i ; 2 uses
  %.sroa.037.0.copyload.i.i = load <2 x float>, ptr %i.nn, align 8, !tbaa !155, !noalias !1552
  %.sroa.238.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !tbaa !155, !noalias !1552
  %i.xm = fmul float %.sroa.02.0.vec.extract.i.i.i, %.sroa.238.0.copyload.i.i
  %.sroa.027.0.copyload.i.i = load <2 x float>, ptr %i.oo, align 4, !tbaa !155, !noalias !1552
  %.sroa.228.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !155, !noalias !1552
  %i.xn = fmul float %.sroa.02.4.vec.extract.i.i.i, %.sroa.228.0.copyload.i.i
  %i.xo = fadd float %i.xm, %i.xn
  %i.xp = fmul float %.sroa.26.0.copyload.i.i.i594, %spec.select.i.i
  %i.xq = shufflevector <2 x float> %.sroa.035.0.i.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xr = fmul <2 x float> %i.xq, %.sroa.037.0.copyload.i.i
  %i.xs = shufflevector <2 x float> %.sroa.035.0.i.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xt = fmul <2 x float> %i.xs, %.sroa.027.0.copyload.i.i
  %i.xu = fadd <2 x float> %i.xr, %i.xt
  %i.xv = insertelement <2 x float> poison, float %spec.select.i.i, i64 0
  %i.xw = shufflevector <2 x float> %i.xv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xx = fmul <2 x float> %.sroa.05.0.copyload.i.i.i592, %i.xw
  %i.xy = fadd <2 x float> %i.xx, %i.xu           ; 3 uses
  %i.xz = fadd float %i.xp, %i.xo                 ; 6 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 200
  %33 = load <4 x float>, ptr %i.ya, align 8
  %i.yb = fmul float %.sroa.17.0, %i.xz           ; 2 uses
  %i.yc = extractelement <2 x float> %i.xy, i64 1 ; 3 uses
  %i.yd = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i573, float %i.yc, float %i.yb)
  %i.ye = fneg float %i.yb
  %i.yf = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.xz, float %i.ye)
  %i.yg = fadd float %i.yd, %i.yf
  %i.yh = extractelement <2 x float> %i.xy, i64 0 ; 3 uses
  %i.yi = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i572, float %i.yh, float %i.yg)
  %i.yj = call noundef float @llvm.fabs.f32(float %i.yi)
  %i.yk = fmul <4 x float> %i.xe, %33
  %i.yl = insertelement <4 x float> poison, float %i.yj, i64 0
  %i.ym = shufflevector <4 x float> %i.yl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yn = fmul <4 x float> %i.yk, %i.ym
  %i.yo = insertelement <4 x float> poison, float %i.xd, i64 0
  %i.yp = shufflevector <4 x float> %i.yo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yq = fdiv <4 x float> %i.yn, %i.yp           ; 7 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0945.0.copyload = load <4 x float>, ptr %i.yr, align 8, !tbaa !71 ; 6 uses
  %i.ys = shufflevector <4 x float> %.sroa.0945.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.yt = insertelement <2 x float> poison, float %i.xd, i64 0
  %i.yu = shufflevector <2 x float> %i.yt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yv = fdiv <2 x float> %i.ys, %i.yu
  %i.yw = shufflevector <4 x float> %.sroa.0945.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.yx = fdiv <2 x float> %i.yw, %i.yu
  %i.yy = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.yz = load float, ptr %i.yy, align 8, !tbaa !471 ; 5 uses
  %i.za = extractelement <4 x float> %i.yq, i64 0
  %i.zb = fmul float %i.yz, %i.za
  %i.zc = extractelement <4 x float> %i.yq, i64 1
  %i.zd = fmul float %i.yz, %i.zc
  %i.ze = extractelement <4 x float> %i.yq, i64 2
  %i.zf = fmul float %i.yz, %i.ze
  %i.zg = extractelement <4 x float> %i.yq, i64 3
  %i.zh = fmul float %i.yz, %i.zg
  %shift1203 = shufflevector <4 x float> %.sroa.0945.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1204 = fadd <4 x float> %.sroa.0945.0.copyload, %shift1203
  %shift1206 = shufflevector <4 x float> %.sroa.0945.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1207 = fadd <4 x float> %shift1206, %foldExtExtBinop1204
  %shift1209 = shufflevector <4 x float> %.sroa.0945.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1210 = fadd <4 x float> %shift1209, %foldExtExtBinop1207
  %i.zi = extractelement <4 x float> %foldExtExtBinop1210, i64 0
  %i.zj = fmul float %i.zi, 2.500000e-01          ; 4 uses
  %i.zk = fdiv float %i.zb, %i.zj                 ; 2 uses
  %i.zl = fdiv float %i.zd, %i.zj                 ; 2 uses
  %i.zm = fdiv float %i.zf, %i.zj                 ; 2 uses
  %i.zn = fdiv float %i.zh, %i.zj                 ; 2 uses
  %i.zo = fcmp olt float %i.zk, %i.zl
  %.sroa.speculated.i = select i1 %i.zo, float %i.zl, float %i.zk ; 2 uses
  %i.zp = fcmp olt float %.sroa.speculated.i, %i.zm
  %.sroa.speculated.1.i = select i1 %i.zp, float %i.zm, float %.sroa.speculated.i ; 2 uses
  %i.zq = fcmp olt float %.sroa.speculated.1.i, %i.zn
  %.sroa.speculated.2.i = select i1 %i.zq, float %i.zn, float %.sroa.speculated.1.i ; 2 uses
  %i.zr = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.zr, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.zs = load i32, ptr %i.pz, align 8, !tbaa !463
  %i.zt = icmp sgt i32 %i.zs, 0
  br i1 %i.zt, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.zu = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.zv = fcmp ogt float %i.zu, 0.000000e+00
  %.sroa.speculated = select i1 %i.zv, float %i.zu, float 0.000000e+00 ; 2 uses
  %i.zw = fcmp olt float %.sroa.01.4.vec.extract.i.i589, %.sroa.speculated
  br i1 %i.zw, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.zx = fsub float 1.000000e+00, %.sroa.speculated
  %i.zy = insertelement <4 x float> poison, float %i.zx, i64 0
  %i.zz = shufflevector <4 x float> %i.zy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaa = fdiv <4 x float> %i.yq, %i.zz
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y, %bb.x
  %.sroa.0963.0 = phi <4 x float> [ %i.yq, %bb.x ], [ %i.aaa, %bb.aa ], [ %i.yq, %bb.y ], [ zeroinitializer, %bb.z ]
  %.sroa.0963.0.fr = freeze <4 x float> %.sroa.0963.0 ; 3 uses
  %i.aab = fcmp une <4 x float> %.sroa.0963.0.fr, zeroinitializer
  %i.aac = bitcast <4 x i1> %i.aab to i4
  %.not1231 = icmp eq i4 %i.aac, 0
  br i1 %.not1231, label %_ZNK4pbrt4BSDF8Sample_fINS_11DiffuseBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit708

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit708: ; preds = %bb.ab
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mh, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.aad = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !467
  %i.aaf = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mi, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %i.xy, float %i.xz) ; 2 uses
  %.fca.0.extract.i712 = extractvalue { <2 x float>, float } %i.aaf, 0 ; 2 uses
  %.fca.1.extract.i713 = extractvalue { <2 x float>, float } %i.aaf, 1
  %i.aag = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.aah = load i8, ptr %i.aag, align 2, !tbaa !245, !range !11, !noundef !12
  %i.aai = trunc nuw i8 %i.aah to i1
  %.sroa.094.0.copyload.pre = load <2 x float>, ptr %i.mh, align 8 ; 2 uses
  %.sroa.295.0.copyload.pre = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 3 uses
  %.sroa.01.0.vec.extract.i715 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 0 ; 2 uses
  %.sroa.01.4.vec.extract.i717 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 1 ; 2 uses
  br i1 %i.aai, label %bb.ac, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit708._crit_edge

bb.ac:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit708
  %i.aaj = fmul float %i.xz, %.sroa.295.0.copyload.pre ; 2 uses
  %i.aak = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i717, float %i.yc, float %i.aaj)
  %i.aal = fneg float %i.aaj
  %i.aam = call noundef float @llvm.fma.f32(float %.sroa.295.0.copyload.pre, float %i.xz, float %i.aal)
  %i.aan = fadd float %i.aak, %i.aam
  %i.aao = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i715, float %i.yh, float %i.aan)
  %i.aap = fcmp ogt float %i.aao, 0.000000e+00
  %.v = select i1 %i.aap, i64 248, i64 240
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.aar = load i64, ptr %i.aaq, align 8, !tbaa !177
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit708._crit_edge

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit708._crit_edge: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit708, %bb.ac
  %.sroa.17910.0 = phi i64 [ %i.aar, %bb.ac ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit708 ]
  %.sroa.0897.sroa.0.0.copyload = load float, ptr %i.mi, align 8
  %.sroa.0897.sroa.2.0.copyload = load float, ptr %.sroa.0.sroa.2.0..sroa_idx.i556, align 4
  %.sroa.0897.sroa.3.0.copyload = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i558, align 8
  %.sroa.0897.sroa.4.0.copyload = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i560, align 4
  %.sroa.0897.sroa.5.0.copyload = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i562, align 8
  %.sroa.0897.sroa.6.0.copyload = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i564, align 4
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !449 ; 31 uses
  %i.aau = load i32, ptr %i.pz, align 8, !tbaa !463
  %i.aav = add nsw i32 %i.aau, 1
  %i.aaw = load i32, ptr %i.vk, align 4, !tbaa !473
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aat, i64 400
  %i.aay = atomicrmw add ptr %i.aax, i32 1 monotonic, align 4
  %.sroa.0905.0.vec.extract = extractelement <2 x float> %.fca.0.extract.i712, i64 0
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aat, i64 24
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !222
  %i.abb = sext i32 %i.aay to i64                 ; 30 uses
  %i.abc = getelementptr inbounds [4 x i8], ptr %i.aba, i64 %i.abb
  store float %.sroa.0905.0.vec.extract, ptr %i.abc, align 4, !tbaa !155
  %.sroa.0905.4.vec.extract = extractelement <2 x float> %.fca.0.extract.i712, i64 1
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aat, i64 32
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !224
  %i.abf = getelementptr inbounds [4 x i8], ptr %i.abe, i64 %i.abb
  store float %.sroa.0905.4.vec.extract, ptr %i.abf, align 4, !tbaa !155
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aat, i64 40
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !226
  %i.abi = getelementptr inbounds [4 x i8], ptr %i.abh, i64 %i.abb
  store float %.fca.1.extract.i713, ptr %i.abi, align 4, !tbaa !155
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aat, i64 56
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !160
  %i.abl = getelementptr inbounds [4 x i8], ptr %i.abk, i64 %i.abb
  store float %i.yh, ptr %i.abl, align 4, !tbaa !155
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aat, i64 64
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !161
  %i.abo = getelementptr inbounds [4 x i8], ptr %i.abn, i64 %i.abb
  store float %i.yc, ptr %i.abo, align 4, !tbaa !155
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aat, i64 72
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !162
  %i.abr = getelementptr inbounds [4 x i8], ptr %i.abq, i64 %i.abb
  store float %i.xz, ptr %i.abr, align 4, !tbaa !155
  %i.abs = getelementptr inbounds nuw i8, ptr %i.aat, i64 80
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !247
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.abt, i64 %i.abb
  store float %i.aae, ptr %i.abu, align 4, !tbaa !155
  %i.abv = getelementptr inbounds nuw i8, ptr %i.aat, i64 88
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !248
  %i.abx = getelementptr inbounds [8 x i8], ptr %i.abw, i64 %i.abb
  store i64 %.sroa.17910.0, ptr %i.abx, align 8, !tbaa !177
  %i.aby = getelementptr inbounds nuw i8, ptr %i.aat, i64 96
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !251
  %i.aca = getelementptr inbounds [4 x i8], ptr %i.abz, i64 %i.abb
  store i32 %i.aav, ptr %i.aca, align 4, !tbaa !166
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aat, i64 104
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !252
  %i.acd = getelementptr inbounds [4 x i8], ptr %i.acc, i64 %i.abb
  store i32 %i.aaw, ptr %i.acd, align 4, !tbaa !166
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aat, i64 248
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !154
  %i.acg = getelementptr inbounds [4 x i8], ptr %i.acf, i64 %i.abb
  store float %.sroa.0897.sroa.0.0.copyload, ptr %i.acg, align 4, !tbaa !155
  %i.ach = getelementptr inbounds nuw i8, ptr %i.aat, i64 256
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !156
  %i.acj = getelementptr inbounds [4 x i8], ptr %i.aci, i64 %i.abb
  store float %.sroa.0897.sroa.2.0.copyload, ptr %i.acj, align 4, !tbaa !155
  %i.ack = getelementptr inbounds nuw i8, ptr %i.aat, i64 272
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !154
  %i.acm = getelementptr inbounds [4 x i8], ptr %i.acl, i64 %i.abb
  store float %.sroa.0897.sroa.3.0.copyload, ptr %i.acm, align 4, !tbaa !155
  %i.acn = getelementptr inbounds nuw i8, ptr %i.aat, i64 280
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !156
  %i.acp = getelementptr inbounds [4 x i8], ptr %i.aco, i64 %i.abb
  store float %.sroa.0897.sroa.4.0.copyload, ptr %i.acp, align 4, !tbaa !155
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aat, i64 296
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !154
  %i.acs = getelementptr inbounds [4 x i8], ptr %i.acr, i64 %i.abb
  store float %.sroa.0897.sroa.5.0.copyload, ptr %i.acs, align 4, !tbaa !155
  %i.act = getelementptr inbounds nuw i8, ptr %i.aat, i64 304
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !156
  %i.acv = getelementptr inbounds [4 x i8], ptr %i.acu, i64 %i.abb
  store float %.sroa.0897.sroa.6.0.copyload, ptr %i.acv, align 4, !tbaa !155
  %i.acw = getelementptr inbounds nuw i8, ptr %i.aat, i64 320
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !157
  %i.acy = getelementptr inbounds [4 x i8], ptr %i.acx, i64 %i.abb
  store float %.sroa.01.0.vec.extract.i715, ptr %i.acy, align 4, !tbaa !155
  %i.acz = getelementptr inbounds nuw i8, ptr %i.aat, i64 328
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !158
  %i.adb = getelementptr inbounds [4 x i8], ptr %i.ada, i64 %i.abb
  store float %.sroa.01.4.vec.extract.i717, ptr %i.adb, align 4, !tbaa !155
  %i.adc = getelementptr inbounds nuw i8, ptr %i.aat, i64 336
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !159
  %i.ade = getelementptr inbounds [4 x i8], ptr %i.add, i64 %i.abb
  store float %.sroa.295.0.copyload.pre, ptr %i.ade, align 4, !tbaa !155
  %i.adf = getelementptr inbounds nuw i8, ptr %i.aat, i64 352
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !157
  %i.adh = getelementptr inbounds [4 x i8], ptr %i.adg, i64 %i.abb
end_hunk_9
begin_hunk_10_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_27DiffuseTransmissionMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_IS2_EENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSH_E_clESH_:bb.a
  %i.qc = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qc, align 16, !tbaa !155
  %i.qd = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qd, align 16, !tbaa !155
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.pv, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
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
  %shift1088 = shufflevector <2 x float> %i.qq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1089 = fadd <2 x float> %i.qq, %shift1088
  %i.qr = extractelement <2 x float> %foldExtExtBinop1089, i64 0
  %i.qs = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.qt = fadd float %i.qs, %i.qr
  %i.qu = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qp, float %i.qt, ptr nonnull %i.e, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.qv = extractvalue { <2 x float>, <2 x float> } %i.qu, 0
  %i.qw = extractvalue { <2 x float>, <2 x float> } %i.qu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.qv, <2 x float> %i.qw, ptr noundef nonnull align 4 dereferenceable(32) %17)
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !505
  %i.qz = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.ra = load i8, ptr %i.qz, align 4, !tbaa !219, !range !11, !noundef !12
  %i.rb = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !220
  %i.rd = sext i32 %i.qy to i64                   ; 20 uses
  %i.re = getelementptr inbounds i8, ptr %i.rc, i64 %i.rd
  store i8 %i.ra, ptr %i.re, align 1, !tbaa !10
  %i.rf = load float, ptr %23, align 4, !tbaa !221
  %i.rg = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !222
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %i.rd
  store float %i.rf, ptr %i.ri, align 4, !tbaa !155
  %i.rj = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !223
  %i.rl = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !224
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.rm, i64 %i.rd
  store float %i.rk, ptr %i.rn, align 4, !tbaa !155
  %i.ro = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !225
  %i.rq = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !226
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %i.rd
  store float %i.rp, ptr %i.rs, align 4, !tbaa !155
  %i.rt = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !227
  %i.rv = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !157
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.rw, i64 %i.rd
  store float %i.ru, ptr %i.rx, align 4, !tbaa !155
  %i.ry = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !228
  %i.sa = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !158
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.rd
  store float %i.rz, ptr %i.sc, align 4, !tbaa !155
  %i.sd = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.se = load float, ptr %i.sd, align 4, !tbaa !229
  %i.sf = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !159
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.rd
  store float %i.se, ptr %i.sh, align 4, !tbaa !155
  %i.si = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.sj = load float, ptr %i.si, align 4, !tbaa !227
  %i.sk = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !157
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.rd
  store float %i.sj, ptr %i.sm, align 4, !tbaa !155
  %i.sn = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.so = load float, ptr %i.sn, align 4, !tbaa !228
  %i.sp = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !158
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %i.rd
  store float %i.so, ptr %i.sr, align 4, !tbaa !155
  %i.ss = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.st = load float, ptr %i.ss, align 4, !tbaa !229
  %i.su = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !159
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.rd
  store float %i.st, ptr %i.sw, align 4, !tbaa !155
  %i.sx = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !230
  %i.sz = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !163
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.rd
  store float %i.sy, ptr %i.tb, align 4, !tbaa !155
  %i.tc = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.td = load float, ptr %i.tc, align 4, !tbaa !231
  %i.te = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !164
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.rd
  store float %i.td, ptr %i.tg, align 4, !tbaa !155
  %i.th = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.ti = load float, ptr %i.th, align 4, !tbaa !232
  %i.tj = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !233
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.rd
  store float %i.ti, ptr %i.tl, align 4, !tbaa !155
  %i.tm = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !234
  %i.to = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !160
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.rd
  store float %i.tn, ptr %i.tq, align 4, !tbaa !155
  %i.tr = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !235
  %i.tt = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !161
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.rd
  store float %i.ts, ptr %i.tv, align 4, !tbaa !155
  %i.tw = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !181
  %i.ty = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !162
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.rd
  store float %i.tx, ptr %i.ua, align 4, !tbaa !155
  %i.ub = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !234
  %i.ud = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !160
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.rd
  store float %i.uc, ptr %i.uf, align 4, !tbaa !155
  %i.ug = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !235
  %i.ui = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !161
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.rd
  store float %i.uh, ptr %i.uk, align 4, !tbaa !155
  %i.ul = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.um = load float, ptr %i.ul, align 4, !tbaa !181
  %i.un = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !162
  %i.up = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.rd
  store float %i.um, ptr %i.up, align 4, !tbaa !155
  %i.uq = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.ur = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !153
  %i.ut = getelementptr inbounds [16 x i8], ptr %i.us, i64 %i.rd ; 2 uses
  %i.uu = load <4 x float>, ptr %i.uq, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.uu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.uu, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.ut, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0967.0.copyload = load <2 x float>, ptr %i.mg, align 4 ; 6 uses
  %.sroa.12974.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.12974.0.copyload = load float, ptr %.sroa.12974.0..sroa_idx, align 4 ; 6 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !505
  %i.uy = load ptr, ptr %i.uv, align 8, !tbaa !236, !noalias !1603
  %i.uz = sext i32 %i.ux to i64                   ; 2 uses
  %i.va = getelementptr inbounds [16 x i8], ptr %i.uy, i64 %i.uz ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vb = load <2 x float>, ptr %i.va, align 16, !noalias !1603
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !71, !noalias !1603
  %i.vc = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !237, !noalias !1603
  %i.ve = getelementptr inbounds [16 x i8], ptr %i.vd, i64 %i.uz ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.ve, align 16, !noalias !1603 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %.sroa.2.0.copyload.i931.i.i1048 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !1603
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_23DiffuseTransmissionBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %24, ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %.sroa.0967.0.copyload, float %.sroa.12974.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1048, i32 noundef 0, i32 noundef 3)
  %i.vf = getelementptr inbounds nuw i8, ptr %24, i64 44 ; 2 uses
  %i.vg = load i8, ptr %i.vf, align 4, !tbaa !239, !range !11, !noundef !12
  %i.vh = trunc nuw i8 %i.vg to i1
  br i1 %i.vh, label %bb.q, label %bb.af

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vi = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.vi, align 16 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 7 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 200
  %30 = load <4 x float>, ptr %i.vj, align 8
  %.sroa.04.0.vec.extract.i.i593 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.04.4.vec.extract.i.i595 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.vk = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.vl = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %.sroa.04.4.vec.extract.i.i595, float %i.vk)
  %i.vm = fneg float %i.vk
  %i.vn = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.vm)
  %i.vo = fadd float %i.vl, %i.vn
  %i.vp = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %.sroa.04.0.vec.extract.i.i593, float %i.vo)
  %i.vq = call noundef float @llvm.fabs.f32(float %i.vp)
  %i.vr = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !242 ; 2 uses
  %i.vt = load <4 x float>, ptr %24, align 16, !tbaa !155
  %i.vu = fmul <4 x float> %30, %i.vt
  %i.vv = insertelement <4 x float> poison, float %i.vq, i64 0
  %i.vw = shufflevector <4 x float> %i.vv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vx = fmul <4 x float> %i.vu, %i.vw
  %i.vy = insertelement <4 x float> poison, float %i.vs, i64 0
  %i.vz = shufflevector <4 x float> %i.vy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wa = fdiv <4 x float> %i.vx, %i.vz           ; 7 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0905.0.copyload = load <4 x float>, ptr %i.wb, align 8, !tbaa !71 ; 8 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.wd = load i8, ptr %i.wc, align 8, !tbaa !243, !range !11, !noundef !12
  %i.we = trunc nuw i8 %i.wd to i1
  br i1 %i.we, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620, label %bb.v

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620: ; preds = %bb.q
  %.sroa.05.0.copyload.i.i.i623 = load <2 x float>, ptr %i.oc, align 8 ; 3 uses
  %.sroa.26.0.copyload.i.i.i625 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.wf = fmul <2 x float> %.sroa.0967.0.copyload, %.sroa.05.0.copyload.i.i.i623 ; 2 uses
  %shift1091 = shufflevector <2 x float> %i.wf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1092 = fadd <2 x float> %i.wf, %shift1091
  %i.wg = extractelement <2 x float> %foldExtExtBinop1092, i64 0
  %i.wh = fmul float %.sroa.12974.0.copyload, %.sroa.26.0.copyload.i.i.i625
  %i.wi = fadd float %i.wh, %i.wg                 ; 2 uses
  %foldExtExtBinop1094 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i623
  %foldExtExtBinop1096 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i623
  %shift1098 = shufflevector <2 x float> %foldExtExtBinop1096, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1099 = fadd <2 x float> %foldExtExtBinop1094, %shift1098
  %i.wj = extractelement <2 x float> %foldExtExtBinop1099, i64 0
  %i.wk = fmul float %.sroa.6.0.copyload, %.sroa.26.0.copyload.i.i.i625
  %i.wl = fadd float %i.wk, %i.wj                 ; 2 uses
  %i.wm = fcmp oeq float %i.wi, 0.000000e+00
  br i1 %i.wm, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620
  %i.wn = load i64, ptr %20, align 8, !tbaa !212
  %i.wo = and i64 %i.wn, 144115188075855871
  %i.wp = inttoptr i64 %i.wo to ptr               ; 8 uses
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !155 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 4
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !155 ; 2 uses
  %i.wt = fcmp olt float %i.wq, %i.ws
  %.sroa.speculated.i.i.i = select i1 %i.wt, float %i.ws, float %i.wq ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !155 ; 2 uses
  %i.ww = fcmp olt float %.sroa.speculated.i.i.i, %i.wv
  %.sroa.speculated.1.i.i.i = select i1 %i.ww, float %i.wv, float %.sroa.speculated.i.i.i ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wp, i64 12
  %i.wy = load float, ptr %i.wx, align 4, !tbaa !155 ; 2 uses
  %i.wz = fcmp olt float %.sroa.speculated.1.i.i.i, %i.wy
  %.sroa.speculated.2.i.i.i = select i1 %i.wz, float %i.wy, float %.sroa.speculated.1.i.i.i ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !155 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wp, i64 20
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !155 ; 2 uses
  %i.xe = fcmp olt float %i.xb, %i.xd
  %.sroa.speculated.i38.i.i = select i1 %i.xe, float %i.xd, float %i.xb ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wp, i64 24
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !155 ; 2 uses
  %i.xh = fcmp olt float %.sroa.speculated.i38.i.i, %i.xg
  %.sroa.speculated.1.i39.i.i = select i1 %i.xh, float %i.xg, float %.sroa.speculated.i38.i.i ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wp, i64 28
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !155 ; 2 uses
  %i.xk = fcmp olt float %.sroa.speculated.1.i39.i.i, %i.xj
  %.sroa.speculated.2.i40.i.i = select i1 %i.xk, float %i.xj, float %.sroa.speculated.1.i39.i.i ; 3 uses
  %i.xl = fcmp oeq float %.sroa.speculated.2.i.i.i, 0.000000e+00
  %i.xm = fcmp oeq float %.sroa.speculated.2.i40.i.i, 0.000000e+00
  %or.cond.i.i = and i1 %i.xl, %i.xm
  br i1 %or.cond.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.xn = fmul float %i.wi, %i.wl
  %i.xo = fcmp ogt float %i.xn, 0.000000e+00
  %i.xp = fadd float %.sroa.speculated.2.i.i.i, %.sroa.speculated.2.i40.i.i ; 2 uses
  %i.xq = call noundef float @llvm.fabs.f32(float %i.wl)
  %i.xr = fmul float %i.xq, f0x3EA2F983           ; 2 uses
  br i1 %i.xo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.xs = fdiv float %.sroa.speculated.2.i.i.i, %i.xp
  %i.xt = fmul float %i.xr, %i.xs
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.xu = fdiv float %.sroa.speculated.2.i40.i.i, %i.xp
  %i.xv = fmul float %i.xr, %i.xu
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.u, %bb.t, %bb.r, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620
  %.0.i628.sink1070 = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620 ], [ %i.xv, %bb.u ], [ %i.xt, %bb.t ], [ %i.vs, %bb.q ]
  %i.xw = shufflevector <4 x float> %.sroa.0905.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.xx = insertelement <2 x float> poison, float %.0.i628.sink1070, i64 0
  %i.xy = shufflevector <2 x float> %i.xx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xz = fdiv <2 x float> %i.xw, %i.xy
  %i.ya = shufflevector <4 x float> %.sroa.0905.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.yb = fdiv <2 x float> %i.ya, %i.xy
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.yd = load float, ptr %i.yc, align 8, !tbaa !503 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.yf = load i32, ptr %i.ye, align 16, !tbaa !244
  %i.yg = and i32 %i.yf, 2
  %.not1049 = icmp eq i32 %i.yg, 0
  %i.yh = getelementptr inbounds nuw i8, ptr %24, i64 36
  %i.yi = load float, ptr %i.yh, align 4          ; 2 uses
  %i.yj = fmul float %i.yi, %i.yi
  %i.yk = fmul float %i.yd, %i.yj
  %.0443 = select i1 %.not1049, float %i.yd, float %i.yk ; 5 uses
  %i.yl = extractelement <4 x float> %i.wa, i64 0
  %i.ym = fmul float %i.yl, %.0443
  %i.yn = extractelement <4 x float> %i.wa, i64 1
  %i.yo = fmul float %i.yn, %.0443
  %i.yp = extractelement <4 x float> %i.wa, i64 2
  %i.yq = fmul float %i.yp, %.0443
  %i.yr = extractelement <4 x float> %i.wa, i64 3
  %i.ys = fmul float %i.yr, %.0443
  %shift1101 = shufflevector <4 x float> %.sroa.0905.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1102 = fadd <4 x float> %.sroa.0905.0.copyload, %shift1101
  %shift1104 = shufflevector <4 x float> %.sroa.0905.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1105 = fadd <4 x float> %shift1104, %foldExtExtBinop1102
  %shift1107 = shufflevector <4 x float> %.sroa.0905.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1108 = fadd <4 x float> %shift1107, %foldExtExtBinop1105
  %i.yt = extractelement <4 x float> %foldExtExtBinop1108, i64 0
  %i.yu = fmul float %i.yt, 2.500000e-01          ; 4 uses
  %i.yv = fdiv float %i.ym, %i.yu                 ; 2 uses
  %i.yw = fdiv float %i.yo, %i.yu                 ; 2 uses
  %i.yx = fdiv float %i.yq, %i.yu                 ; 2 uses
  %i.yy = fdiv float %i.ys, %i.yu                 ; 2 uses
  %i.yz = fcmp olt float %i.yv, %i.yw
  %.sroa.speculated.i = select i1 %i.yz, float %i.yw, float %i.yv ; 2 uses
  %i.za = fcmp olt float %.sroa.speculated.i, %i.yx
  %.sroa.speculated.1.i = select i1 %i.za, float %i.yx, float %.sroa.speculated.i ; 2 uses
  %i.zb = fcmp olt float %.sroa.speculated.1.i, %i.yy
  %.sroa.speculated.2.i = select i1 %i.zb, float %i.yy, float %.sroa.speculated.1.i ; 2 uses
  %i.zc = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.zc, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.zd = load i32, ptr %i.pl, align 8, !tbaa !495
  %i.ze = icmp sgt i32 %i.zd, 0
  br i1 %i.ze, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.zf = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.zg = fcmp ogt float %i.zf, 0.000000e+00
  %.sroa.speculated = select i1 %i.zg, float %i.zf, float 0.000000e+00 ; 2 uses
  %i.zh = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.zh, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.zi = fsub float 1.000000e+00, %.sroa.speculated
  %i.zj = insertelement <4 x float> poison, float %i.zi, i64 0
  %i.zk = shufflevector <4 x float> %i.zj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zl = fdiv <4 x float> %i.wa, %i.zk
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w, %bb.v
  %.sroa.0923.0 = phi <4 x float> [ %i.wa, %bb.v ], [ %i.zl, %bb.y ], [ %i.wa, %bb.w ], [ zeroinitializer, %bb.x ]
  %.sroa.0923.0.fr = freeze <4 x float> %.sroa.0923.0 ; 3 uses
  %i.zm = fcmp une <4 x float> %.sroa.0923.0.fr, zeroinitializer
  %i.zn = bitcast <4 x i1> %i.zm to i4
  %.not1116 = icmp eq i4 %i.zn, 0
  br i1 %.not1116, label %bb.af, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit693

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit693: ; preds = %bb.z
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mh, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !499
  %i.zq = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mi, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %.sroa.0151.0.copyload, float %.sroa.6.0.copyload) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.zq, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.zq, 1
  %i.zr = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.zs = load i8, ptr %i.zr, align 2, !tbaa !245, !range !11, !noundef !12
  %i.zt = trunc nuw i8 %i.zs to i1
  br i1 %i.zt, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit693
  %.sroa.0101.0.copyload = load <2 x float>, ptr %i.mh, align 8 ; 2 uses
  %.sroa.2102.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i698 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i700 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 1
  %i.zu = fmul float %.sroa.6.0.copyload, %.sroa.2102.0.copyload ; 2 uses
  %i.zv = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i700, float %.sroa.04.4.vec.extract.i.i595, float %i.zu)
  %i.zw = fneg float %i.zu
  %i.zx = call noundef float @llvm.fma.f32(float %.sroa.2102.0.copyload, float %.sroa.6.0.copyload, float %i.zw)
  %i.zy = fadd float %i.zv, %i.zx
  %i.zz = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i698, float %.sroa.04.0.vec.extract.i.i593, float %i.zy)
  %i.aaa = fcmp ogt float %i.zz, 0.000000e+00
  %.v = select i1 %i.aaa, i64 248, i64 240
  %i.aab = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !177
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit693
  %.sroa.17870.0 = phi i64 [ %i.aac, %bb.aa ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit693 ]
  %i.aad = load i8, ptr %i.vf, align 4, !tbaa !239, !range !11, !noundef !12
  %i.aae = trunc nuw i8 %i.aad to i1
  br i1 %i.aae, label %bb.ac, label %.noexc702

.noexc702:                                        ; preds = %bb.ab
end_hunk_10
begin_hunk_11_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_27DiffuseTransmissionMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_IS2_EENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSH_E_clESH_:bb.a
  %i.ro = getelementptr inbounds nuw i8, ptr %26, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.ro, align 16, !tbaa !155
  %i.rp = getelementptr inbounds nuw i8, ptr %26, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.rp, align 16, !tbaa !155
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.rh, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.ol, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.pm, align 4 ; 2 uses
  %i.rq = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.rr = shufflevector <4 x float> %i.rq, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.rs = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rt = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.ru = fmul <2 x float> %i.rs, %i.rt
  %i.rv = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.rw = fmul <2 x float> %.sroa.0162.0.copyload, %i.rv
  %i.rx = fadd <2 x float> %i.ru, %i.rw
  %i.ry = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.rz = shufflevector <2 x float> %i.ry, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sa = fmul <2 x float> %i.rz, %i.rr
  %i.sb = fadd <2 x float> %i.sa, %i.rx
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.po, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.sc = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1106 = shufflevector <2 x float> %i.sc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1107 = fadd <2 x float> %i.sc, %shift1106
  %i.sd = extractelement <2 x float> %foldExtExtBinop1107, i64 0
  %i.se = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.sf = fadd float %i.se, %i.sd
  %i.sg = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %24, <2 x float> %i.sb, float %i.sf, ptr nonnull %i.e, i64 16, ptr nonnull %26, i64 16) ; 2 uses
  %i.sh = extractvalue { <2 x float>, <2 x float> } %i.sg, 0
  %i.si = extractvalue { <2 x float>, <2 x float> } %i.sg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %27, ptr noundef nonnull align 8 dereferenceable(248) %25, <2 x float> %i.sh, <2 x float> %i.si, ptr noundef nonnull align 4 dereferenceable(32) %22)
  %i.sj = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !505
  %i.sl = getelementptr inbounds nuw i8, ptr %27, i64 88
  %i.sm = load i8, ptr %i.sl, align 4, !tbaa !219, !range !11, !noundef !12
  %i.sn = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !220
  %i.sp = sext i32 %i.sk to i64                   ; 20 uses
  %i.sq = getelementptr inbounds i8, ptr %i.so, i64 %i.sp
  store i8 %i.sm, ptr %i.sq, align 1, !tbaa !10
  %i.sr = load float, ptr %27, align 4, !tbaa !221
  %i.ss = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !222
  %i.su = getelementptr inbounds [4 x i8], ptr %i.st, i64 %i.sp
  store float %i.sr, ptr %i.su, align 4, !tbaa !155
  %i.sv = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !223
  %i.sx = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !224
  %i.sz = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.sp
  store float %i.sw, ptr %i.sz, align 4, !tbaa !155
  %i.ta = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !225
  %i.tc = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !226
  %i.te = getelementptr inbounds [4 x i8], ptr %i.td, i64 %i.sp
  store float %i.tb, ptr %i.te, align 4, !tbaa !155
  %i.tf = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !227
  %i.th = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !157
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.sp
  store float %i.tg, ptr %i.tj, align 4, !tbaa !155
  %i.tk = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !228
  %i.tm = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !158
  %i.to = getelementptr inbounds [4 x i8], ptr %i.tn, i64 %i.sp
  store float %i.tl, ptr %i.to, align 4, !tbaa !155
  %i.tp = getelementptr inbounds nuw i8, ptr %27, i64 20
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !229
  %i.tr = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !159
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.ts, i64 %i.sp
  store float %i.tq, ptr %i.tt, align 4, !tbaa !155
  %i.tu = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !227
  %i.tw = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !157
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.sp
  store float %i.tv, ptr %i.ty, align 4, !tbaa !155
  %i.tz = getelementptr inbounds nuw i8, ptr %27, i64 28
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !228
  %i.ub = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !158
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.sp
  store float %i.ua, ptr %i.ud, align 4, !tbaa !155
  %i.ue = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !229
  %i.ug = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !159
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.sp
  store float %i.uf, ptr %i.ui, align 4, !tbaa !155
  %i.uj = getelementptr inbounds nuw i8, ptr %27, i64 36
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !230
  %i.ul = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !163
  %i.un = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.sp
  store float %i.uk, ptr %i.un, align 4, !tbaa !155
  %i.uo = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.up = load float, ptr %i.uo, align 4, !tbaa !231
  %i.uq = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !164
  %i.us = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %i.sp
  store float %i.up, ptr %i.us, align 4, !tbaa !155
  %i.ut = getelementptr inbounds nuw i8, ptr %27, i64 44
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !232
  %i.uv = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !233
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.sp
  store float %i.uu, ptr %i.ux, align 4, !tbaa !155
  %i.uy = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !234
  %i.va = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !160
  %i.vc = getelementptr inbounds [4 x i8], ptr %i.vb, i64 %i.sp
  store float %i.uz, ptr %i.vc, align 4, !tbaa !155
  %i.vd = getelementptr inbounds nuw i8, ptr %27, i64 52
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !235
  %i.vf = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !161
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.vg, i64 %i.sp
  store float %i.ve, ptr %i.vh, align 4, !tbaa !155
  %i.vi = getelementptr inbounds nuw i8, ptr %27, i64 56
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !181
  %i.vk = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !162
  %i.vm = getelementptr inbounds [4 x i8], ptr %i.vl, i64 %i.sp
  store float %i.vj, ptr %i.vm, align 4, !tbaa !155
  %i.vn = getelementptr inbounds nuw i8, ptr %27, i64 60
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !234
  %i.vp = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !160
  %i.vr = getelementptr inbounds [4 x i8], ptr %i.vq, i64 %i.sp
  store float %i.vo, ptr %i.vr, align 4, !tbaa !155
  %i.vs = getelementptr inbounds nuw i8, ptr %27, i64 64
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !235
  %i.vu = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !161
  %i.vw = getelementptr inbounds [4 x i8], ptr %i.vv, i64 %i.sp
  store float %i.vt, ptr %i.vw, align 4, !tbaa !155
  %i.vx = getelementptr inbounds nuw i8, ptr %27, i64 68
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !181
  %i.vz = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !162
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.wa, i64 %i.sp
  store float %i.vy, ptr %i.wb, align 4, !tbaa !155
  %i.wc = getelementptr inbounds nuw i8, ptr %27, i64 72
  %i.wd = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !153
  %i.wf = getelementptr inbounds [16 x i8], ptr %i.we, i64 %i.sp ; 2 uses
  %i.wg = load <4 x float>, ptr %i.wc, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i582 = shufflevector <4 x float> %i.wg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.wg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i582, ptr %i.wf, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0969.0.copyload = load <2 x float>, ptr %i.mg, align 4 ; 6 uses
  %.sroa.12976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.12976.0.copyload = load float, ptr %.sroa.12976.0..sroa_idx, align 4 ; 6 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !505
  %i.wk = load ptr, ptr %i.wh, align 8, !tbaa !236, !noalias !1650
  %i.wl = sext i32 %i.wj to i64                   ; 2 uses
  %i.wm = getelementptr inbounds [16 x i8], ptr %i.wk, i64 %i.wl ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i585 = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wn = load <2 x float>, ptr %i.wm, align 16, !noalias !1650
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i585, align 8, !tbaa !71, !noalias !1650
  %i.wo = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !237, !noalias !1650
  %i.wq = getelementptr inbounds [16 x i8], ptr %i.wp, i64 %i.wl ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.wq, align 16, !noalias !1650 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  %.sroa.2.0.copyload.i931.i.i1066 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !1650
  %.sroa.01.0.vec.extract.i.i586 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i587 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_23DiffuseTransmissionBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %28, ptr noundef nonnull align 8 dereferenceable(44) %24, <2 x float> %.sroa.0969.0.copyload, float %.sroa.12976.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i586, <2 x float> %.sroa.2.0.copyload.i931.i.i1066, i32 noundef 0, i32 noundef 3)
  %i.wr = getelementptr inbounds nuw i8, ptr %28, i64 44 ; 2 uses
  %i.ws = load i8, ptr %i.wr, align 4, !tbaa !239, !range !11, !noundef !12
  %i.wt = trunc nuw i8 %i.ws to i1
  br i1 %i.wt, label %bb.q, label %bb.af

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.wu = getelementptr inbounds nuw i8, ptr %28, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.wu, align 16 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 7 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 200
  %34 = load <4 x float>, ptr %i.wv, align 8
  %.sroa.04.0.vec.extract.i.i595 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.04.4.vec.extract.i.i597 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.ww = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.wx = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i571, float %.sroa.04.4.vec.extract.i.i597, float %i.ww)
  %i.wy = fneg float %i.ww
  %i.wz = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.wy)
  %i.xa = fadd float %i.wx, %i.wz
  %i.xb = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i570, float %.sroa.04.0.vec.extract.i.i595, float %i.xa)
  %i.xc = call noundef float @llvm.fabs.f32(float %i.xb)
  %i.xd = getelementptr inbounds nuw i8, ptr %28, i64 28
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !242 ; 2 uses
  %i.xf = load <4 x float>, ptr %28, align 16, !tbaa !155
  %i.xg = fmul <4 x float> %34, %i.xf
  %i.xh = insertelement <4 x float> poison, float %i.xc, i64 0
  %i.xi = shufflevector <4 x float> %i.xh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xj = fmul <4 x float> %i.xg, %i.xi
  %i.xk = insertelement <4 x float> poison, float %i.xe, i64 0
  %i.xl = shufflevector <4 x float> %i.xk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xm = fdiv <4 x float> %i.xj, %i.xl           ; 7 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0907.0.copyload = load <4 x float>, ptr %i.xn, align 8, !tbaa !71 ; 8 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %28, i64 40
  %i.xp = load i8, ptr %i.xo, align 8, !tbaa !243, !range !11, !noundef !12
  %i.xq = trunc nuw i8 %i.xp to i1
  br i1 %i.xq, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit622, label %bb.v

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit622: ; preds = %bb.q
  %.sroa.05.0.copyload.i.i.i625 = load <2 x float>, ptr %i.po, align 8 ; 3 uses
  %.sroa.26.0.copyload.i.i.i627 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.xr = fmul <2 x float> %.sroa.0969.0.copyload, %.sroa.05.0.copyload.i.i.i625 ; 2 uses
  %shift1109 = shufflevector <2 x float> %i.xr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1110 = fadd <2 x float> %i.xr, %shift1109
  %i.xs = extractelement <2 x float> %foldExtExtBinop1110, i64 0
  %i.xt = fmul float %.sroa.12976.0.copyload, %.sroa.26.0.copyload.i.i.i627
  %i.xu = fadd float %i.xt, %i.xs                 ; 2 uses
  %foldExtExtBinop1112 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i625
  %foldExtExtBinop1114 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i625
  %shift1116 = shufflevector <2 x float> %foldExtExtBinop1114, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1117 = fadd <2 x float> %foldExtExtBinop1112, %shift1116
  %i.xv = extractelement <2 x float> %foldExtExtBinop1117, i64 0
  %i.xw = fmul float %.sroa.6.0.copyload, %.sroa.26.0.copyload.i.i.i627
  %i.xx = fadd float %i.xw, %i.xv                 ; 2 uses
  %i.xy = fcmp oeq float %i.xu, 0.000000e+00
  br i1 %i.xy, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit622
  %i.xz = load i64, ptr %24, align 8, !tbaa !212
  %i.ya = and i64 %i.xz, 144115188075855871
  %i.yb = inttoptr i64 %i.ya to ptr               ; 8 uses
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !155 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yb, i64 4
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !155 ; 2 uses
  %i.yf = fcmp olt float %i.yc, %i.ye
  %.sroa.speculated.i.i.i = select i1 %i.yf, float %i.ye, float %i.yc ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !155 ; 2 uses
  %i.yi = fcmp olt float %.sroa.speculated.i.i.i, %i.yh
  %.sroa.speculated.1.i.i.i = select i1 %i.yi, float %i.yh, float %.sroa.speculated.i.i.i ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yb, i64 12
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !155 ; 2 uses
  %i.yl = fcmp olt float %.sroa.speculated.1.i.i.i, %i.yk
  %.sroa.speculated.2.i.i.i = select i1 %i.yl, float %i.yk, float %.sroa.speculated.1.i.i.i ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yb, i64 16
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !155 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yb, i64 20
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !155 ; 2 uses
  %i.yq = fcmp olt float %i.yn, %i.yp
  %.sroa.speculated.i38.i.i = select i1 %i.yq, float %i.yp, float %i.yn ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yb, i64 24
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !155 ; 2 uses
  %i.yt = fcmp olt float %.sroa.speculated.i38.i.i, %i.ys
  %.sroa.speculated.1.i39.i.i = select i1 %i.yt, float %i.ys, float %.sroa.speculated.i38.i.i ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yb, i64 28
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !155 ; 2 uses
  %i.yw = fcmp olt float %.sroa.speculated.1.i39.i.i, %i.yv
  %.sroa.speculated.2.i40.i.i = select i1 %i.yw, float %i.yv, float %.sroa.speculated.1.i39.i.i ; 3 uses
  %i.yx = fcmp oeq float %.sroa.speculated.2.i.i.i, 0.000000e+00
  %i.yy = fcmp oeq float %.sroa.speculated.2.i40.i.i, 0.000000e+00
  %or.cond.i.i = and i1 %i.yx, %i.yy
  br i1 %or.cond.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.yz = fmul float %i.xu, %i.xx
  %i.za = fcmp ogt float %i.yz, 0.000000e+00
  %i.zb = fadd float %.sroa.speculated.2.i.i.i, %.sroa.speculated.2.i40.i.i ; 2 uses
  %i.zc = call noundef float @llvm.fabs.f32(float %i.xx)
  %i.zd = fmul float %i.zc, f0x3EA2F983           ; 2 uses
  br i1 %i.za, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ze = fdiv float %.sroa.speculated.2.i.i.i, %i.zb
  %i.zf = fmul float %i.zd, %i.ze
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.zg = fdiv float %.sroa.speculated.2.i40.i.i, %i.zb
  %i.zh = fmul float %i.zd, %i.zg
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.u, %bb.t, %bb.r, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit622
  %.0.i630.sink1088 = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit622 ], [ %i.zh, %bb.u ], [ %i.zf, %bb.t ], [ %i.xe, %bb.q ]
  %i.zi = shufflevector <4 x float> %.sroa.0907.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.zj = insertelement <2 x float> poison, float %.0.i630.sink1088, i64 0
  %i.zk = shufflevector <2 x float> %i.zj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zl = fdiv <2 x float> %i.zi, %i.zk
  %i.zm = shufflevector <4 x float> %.sroa.0907.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.zn = fdiv <2 x float> %i.zm, %i.zk
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.zp = load float, ptr %i.zo, align 8, !tbaa !503 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 2 uses
  %i.zr = load i32, ptr %i.zq, align 16, !tbaa !244
  %i.zs = and i32 %i.zr, 2
  %.not1067 = icmp eq i32 %i.zs, 0
  %i.zt = getelementptr inbounds nuw i8, ptr %28, i64 36
  %i.zu = load float, ptr %i.zt, align 4          ; 2 uses
  %i.zv = fmul float %i.zu, %i.zu
  %i.zw = fmul float %i.zp, %i.zv
  %.0443 = select i1 %.not1067, float %i.zp, float %i.zw ; 5 uses
  %i.zx = extractelement <4 x float> %i.xm, i64 0
  %i.zy = fmul float %i.zx, %.0443
  %i.zz = extractelement <4 x float> %i.xm, i64 1
  %i.aaa = fmul float %i.zz, %.0443
  %i.aab = extractelement <4 x float> %i.xm, i64 2
  %i.aac = fmul float %i.aab, %.0443
  %i.aad = extractelement <4 x float> %i.xm, i64 3
  %i.aae = fmul float %i.aad, %.0443
  %shift1119 = shufflevector <4 x float> %.sroa.0907.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1120 = fadd <4 x float> %.sroa.0907.0.copyload, %shift1119
  %shift1122 = shufflevector <4 x float> %.sroa.0907.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1123 = fadd <4 x float> %shift1122, %foldExtExtBinop1120
  %shift1125 = shufflevector <4 x float> %.sroa.0907.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1126 = fadd <4 x float> %shift1125, %foldExtExtBinop1123
  %i.aaf = extractelement <4 x float> %foldExtExtBinop1126, i64 0
  %i.aag = fmul float %i.aaf, 2.500000e-01        ; 4 uses
  %i.aah = fdiv float %i.zy, %i.aag               ; 2 uses
  %i.aai = fdiv float %i.aaa, %i.aag              ; 2 uses
  %i.aaj = fdiv float %i.aac, %i.aag              ; 2 uses
  %i.aak = fdiv float %i.aae, %i.aag              ; 2 uses
  %i.aal = fcmp olt float %i.aah, %i.aai
  %.sroa.speculated.i = select i1 %i.aal, float %i.aai, float %i.aah ; 2 uses
  %i.aam = fcmp olt float %.sroa.speculated.i, %i.aaj
  %.sroa.speculated.1.i = select i1 %i.aam, float %i.aaj, float %.sroa.speculated.i ; 2 uses
  %i.aan = fcmp olt float %.sroa.speculated.1.i, %i.aak
  %.sroa.speculated.2.i = select i1 %i.aan, float %i.aak, float %.sroa.speculated.1.i ; 2 uses
  %i.aao = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.aao, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.aap = load i32, ptr %i.qx, align 8, !tbaa !495
  %i.aaq = icmp sgt i32 %i.aap, 0
  br i1 %i.aaq, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aar = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.aas = fcmp ogt float %i.aar, 0.000000e+00
  %.sroa.speculated = select i1 %i.aas, float %i.aar, float 0.000000e+00 ; 2 uses
  %i.aat = fcmp olt float %.sroa.01.4.vec.extract.i.i587, %.sroa.speculated
  br i1 %i.aat, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aau = fsub float 1.000000e+00, %.sroa.speculated
  %i.aav = insertelement <4 x float> poison, float %i.aau, i64 0
  %i.aaw = shufflevector <4 x float> %i.aav, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aax = fdiv <4 x float> %i.xm, %i.aaw
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w, %bb.v
  %.sroa.0925.0 = phi <4 x float> [ %i.xm, %bb.v ], [ %i.aax, %bb.y ], [ %i.xm, %bb.w ], [ zeroinitializer, %bb.x ]
  %.sroa.0925.0.fr = freeze <4 x float> %.sroa.0925.0 ; 3 uses
  %i.aay = fcmp une <4 x float> %.sroa.0925.0.fr, zeroinitializer
  %i.aaz = bitcast <4 x i1> %i.aay to i4
  %.not1134 = icmp eq i4 %i.aaz, 0
  br i1 %.not1134, label %bb.af, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit695

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit695: ; preds = %bb.z
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mh, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !499
  %i.abc = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mi, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %.sroa.0151.0.copyload, float %.sroa.6.0.copyload) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.abc, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.abc, 1
  %i.abd = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.abe = load i8, ptr %i.abd, align 2, !tbaa !245, !range !11, !noundef !12
  %i.abf = trunc nuw i8 %i.abe to i1
  br i1 %i.abf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit695
  %.sroa.0101.0.copyload = load <2 x float>, ptr %i.mh, align 8 ; 2 uses
  %.sroa.2102.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i700 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i702 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 1
  %i.abg = fmul float %.sroa.6.0.copyload, %.sroa.2102.0.copyload ; 2 uses
  %i.abh = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i702, float %.sroa.04.4.vec.extract.i.i597, float %i.abg)
  %i.abi = fneg float %i.abg
  %i.abj = call noundef float @llvm.fma.f32(float %.sroa.2102.0.copyload, float %.sroa.6.0.copyload, float %i.abi)
  %i.abk = fadd float %i.abh, %i.abj
  %i.abl = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i700, float %.sroa.04.0.vec.extract.i.i595, float %i.abk)
  %i.abm = fcmp ogt float %i.abl, 0.000000e+00
  %.v = select i1 %i.abm, i64 248, i64 240
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.abo = load i64, ptr %i.abn, align 8, !tbaa !177
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit695
  %.sroa.17872.0 = phi i64 [ %i.abo, %bb.aa ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit695 ]
  %i.abp = load i8, ptr %i.wr, align 4, !tbaa !239, !range !11, !noundef !12
  %i.abq = trunc nuw i8 %i.abp to i1
  br i1 %i.abq, label %bb.ac, label %.noexc704

.noexc704:                                        ; preds = %bb.ab
end_hunk_11
begin_hunk_12_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_12HairMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_IS2_EENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSJ_E_clESJ_:bb.a
  %i.mo = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !227
  %i.mq = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !157
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.mr, i64 %i.lj
  store float %i.mp, ptr %i.ms, align 4, !tbaa !155
  %i.mt = getelementptr inbounds nuw i8, ptr %18, i64 28
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !228
  %i.mv = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !158
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.lj
  store float %i.mu, ptr %i.mx, align 4, !tbaa !155
  %i.my = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.mz = load float, ptr %i.my, align 4, !tbaa !229
  %i.na = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !159
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.nb, i64 %i.lj
  store float %i.mz, ptr %i.nc, align 4, !tbaa !155
  %i.nd = getelementptr inbounds nuw i8, ptr %18, i64 36
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !230
  %i.nf = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !163
  %i.nh = getelementptr inbounds [4 x i8], ptr %i.ng, i64 %i.lj
  store float %i.ne, ptr %i.nh, align 4, !tbaa !155
  %i.ni = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !231
  %i.nk = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !164
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.lj
  store float %i.nj, ptr %i.nm, align 4, !tbaa !155
  %i.nn = getelementptr inbounds nuw i8, ptr %18, i64 44
  %i.no = load float, ptr %i.nn, align 4, !tbaa !232
  %i.np = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !233
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.lj
  store float %i.no, ptr %i.nr, align 4, !tbaa !155
  %i.ns = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !234
  %i.nu = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !160
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.nv, i64 %i.lj
  store float %i.nt, ptr %i.nw, align 4, !tbaa !155
  %i.nx = getelementptr inbounds nuw i8, ptr %18, i64 52
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !235
  %i.nz = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !161
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.oa, i64 %i.lj
  store float %i.ny, ptr %i.ob, align 4, !tbaa !155
  %i.oc = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.od = load float, ptr %i.oc, align 4, !tbaa !181
  %i.oe = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !162
  %i.og = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.lj
  store float %i.od, ptr %i.og, align 4, !tbaa !155
  %i.oh = getelementptr inbounds nuw i8, ptr %18, i64 60
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !234
  %i.oj = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !160
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.ok, i64 %i.lj
  store float %i.oi, ptr %i.ol, align 4, !tbaa !155
  %i.om = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.on = load float, ptr %i.om, align 4, !tbaa !235
  %i.oo = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !161
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.op, i64 %i.lj
  store float %i.on, ptr %i.oq, align 4, !tbaa !155
  %i.or = getelementptr inbounds nuw i8, ptr %18, i64 68
  %i.os = load float, ptr %i.or, align 4, !tbaa !181
  %i.ot = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !162
  %i.ov = getelementptr inbounds [4 x i8], ptr %i.ou, i64 %i.lj
  store float %i.os, ptr %i.ov, align 4, !tbaa !155
  %i.ow = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.ox = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !153
  %i.oz = getelementptr inbounds [16 x i8], ptr %i.oy, i64 %i.lj ; 2 uses
  %i.pa = load <4 x float>, ptr %i.ow, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.pa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.pa, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.oz, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.01054.0.copyload = load <2 x float>, ptr %i.go, align 4 ; 13 uses
  %.sroa.121061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121061.0.copyload = load float, ptr %.sroa.121061.0..sroa_idx, align 4 ; 8 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !538
  %i.pe = load ptr, ptr %i.pb, align 8, !tbaa !236, !noalias !1693
  %i.pf = sext i32 %i.pd to i64                   ; 2 uses
  %i.pg = getelementptr inbounds [16 x i8], ptr %i.pe, i64 %i.pf ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.ph = load <2 x float>, ptr %i.pg, align 16, !noalias !1693
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !71, !noalias !1693
  %i.pi = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !237, !noalias !1693
  %i.pk = getelementptr inbounds [16 x i8], ptr %i.pj, i64 %i.pf ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.pk, align 16, !noalias !1693 ; 2 uses
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %.sroa.05.0.copyload.i.i.i598 = load <2 x float>, ptr %i.ii, align 8, !noalias !1694
  %.sroa.26.0.copyload.i.i.i600 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1694
  %i.pl = fmul <2 x float> %.sroa.01054.0.copyload, %.sroa.05.0.copyload.i.i.i598 ; 2 uses
  %shift1208 = shufflevector <2 x float> %i.pl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1209 = fadd <2 x float> %i.pl, %shift1208
  %i.pm = extractelement <2 x float> %foldExtExtBinop1209, i64 0
  %i.pn = fmul float %.sroa.121061.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.po = fadd float %i.pn, %i.pm                 ; 2 uses
  %i.pp = fcmp oeq float %i.po, 0.000000e+00
  br i1 %i.pp, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %.sroa.2.0.copyload.i931.i.i1170 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !1693
  %.sroa.021.0.copyload.i.i.i586 = load <2 x float>, ptr %i.hf, align 8, !noalias !1694 ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = load <2 x float>, ptr %i.ig, align 4, !noalias !1694 ; 2 uses
  %i.pq = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !1694
  %i.pr = shufflevector <4 x float> %i.pq, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ps = insertelement <2 x float> poison, float %.sroa.121061.0.copyload, i64 0
  %i.pt = shufflevector <2 x float> %i.ps, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pu = fmul <2 x float> %i.pt, %i.pr
  %i.pv = shufflevector <2 x float> %.sroa.01054.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pw = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.px = fmul <2 x float> %i.pv, %i.pw
  %i.py = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.pz = fmul <2 x float> %.sroa.01054.0.copyload, %i.py
  %i.qa = fadd <2 x float> %i.px, %i.pz
  %i.qb = fadd <2 x float> %i.pu, %i.qa
  %i.qc = load i64, ptr %15, align 8, !tbaa !212, !noalias !1694
  %i.qd = and i64 %i.qc, 144115188075855871
  %i.qe = inttoptr i64 %i.qd to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !1694
  call void @_ZNK4pbrt8HairBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %8, ptr noundef nonnull align 4 dereferenceable(76) %i.qe, <2 x float> %i.qb, float %i.po, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1170, i32 noundef 0, i32 noundef 3), !noalias !1694
  %i.qf = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.qg = load i8, ptr %i.qf, align 4, !tbaa !239, !range !11, !noalias !1694, !noundef !12
  %i.qh = trunc nuw i8 %i.qg to i1
  br i1 %i.qh, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.m
  %i.qi = load <4 x float>, ptr %8, align 16, !noalias !1694
  %.fr = freeze <4 x float> %i.qi                 ; 2 uses
  %i.qj = fcmp une <4 x float> %.fr, zeroinitializer
  %i.qk = bitcast <4 x i1> %i.qj to i4
  %i.ql = icmp eq i4 %i.qk, 0
  %i.qm = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.qn = load float, ptr %i.qm, align 4, !noalias !1694 ; 3 uses
  %i.qo = fcmp oeq float %i.qn, 0.000000e+00
  %or.cond.i605 = select i1 %i.ql, i1 true, i1 %i.qo
  br i1 %or.cond.i605, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.qp = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.qq = load float, ptr %i.qp, align 8, !tbaa !181, !noalias !1694 ; 3 uses
  %i.qr = fcmp oeq float %i.qq, 0.000000e+00
  br i1 %i.qr, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %bb.n

_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit: ; preds = %bb.m, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1694
  br label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread

bb.n:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  %i.qs = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.qs, align 16, !noalias !1694 ; 4 uses
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %.sroa.037.0.copyload.i.i = load <2 x float>, ptr %i.hf, align 8, !tbaa !155, !noalias !1694 ; 3 uses
  %.sroa.238.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !tbaa !155, !noalias !1694 ; 2 uses
  %i.qt = fmul float %.sroa.041.0.vec.extract.i.i, %.sroa.238.0.copyload.i.i
  %.sroa.041.4.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %.sroa.027.0.copyload.i.i = load <2 x float>, ptr %i.ig, align 4, !tbaa !155, !noalias !1694 ; 3 uses
  %.sroa.228.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !155, !noalias !1694 ; 2 uses
  %i.qu = fmul float %.sroa.041.4.vec.extract.i.i, %.sroa.228.0.copyload.i.i
  %i.qv = fadd float %i.qt, %i.qu
  %.sroa.011.0.copyload.i.i = load <2 x float>, ptr %i.ii, align 8, !tbaa !155, !noalias !1694 ; 3 uses
  %.sroa.212.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !155, !noalias !1694 ; 3 uses
  %i.qw = fmul float %i.qq, %.sroa.212.0.copyload.i.i
  %i.qx = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qy = fmul <2 x float> %i.qx, %.sroa.037.0.copyload.i.i
  %i.qz = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ra = fmul <2 x float> %i.qz, %.sroa.027.0.copyload.i.i
  %i.rb = fadd <2 x float> %i.qy, %i.ra
  %i.rc = insertelement <2 x float> poison, float %i.qq, i64 0
  %i.rd = shufflevector <2 x float> %i.rc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.re = fmul <2 x float> %i.rd, %.sroa.011.0.copyload.i.i
  %i.rf = fadd <2 x float> %i.rb, %i.re           ; 6 uses
  %i.rg = fadd float %i.qv, %i.qw                 ; 8 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 16 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 36
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.21.0.copyload = load i8, ptr %.sroa.21.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1694
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 200
  %24 = load <4 x float>, ptr %i.rh, align 8
  %i.ri = fmul float %.sroa.17.0.copyload, %i.rg  ; 2 uses
  %i.rj = extractelement <2 x float> %i.rf, i64 1 ; 3 uses
  %i.rk = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.rj, float %i.ri)
  %i.rl = fneg float %i.ri
  %i.rm = call noundef float @llvm.fma.f32(float %.sroa.17.0.copyload, float %i.rg, float %i.rl)
  %i.rn = fadd float %i.rk, %i.rm
  %i.ro = extractelement <2 x float> %i.rf, i64 0 ; 3 uses
  %i.rp = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.ro, float %i.rn)
  %i.rq = call noundef float @llvm.fabs.f32(float %i.rp)
  %i.rr = fmul <4 x float> %.fr, %24
  %i.rs = insertelement <4 x float> poison, float %i.rq, i64 0
  %i.rt = shufflevector <4 x float> %i.rs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ru = fmul <4 x float> %i.rt, %i.rr
  %i.rv = insertelement <4 x float> poison, float %i.qn, i64 0
  %i.rw = shufflevector <4 x float> %i.rv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rx = fdiv <4 x float> %i.ru, %i.rw           ; 7 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0953.0.copyload = load <4 x float>, ptr %i.ry, align 8, !tbaa !71 ; 6 uses
  %i.rz = trunc nuw i8 %.sroa.21.0.copyload to i1
  br i1 %i.rz, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, label %bb.p

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640: ; preds = %bb.n
  %i.sa = fmul <2 x float> %.sroa.01054.0.copyload, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1211 = shufflevector <2 x float> %i.sa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1212 = fadd <2 x float> %i.sa, %shift1211
  %i.sb = extractelement <2 x float> %foldExtExtBinop1212, i64 0
  %i.sc = fmul float %.sroa.121061.0.copyload, %.sroa.212.0.copyload.i.i
  %i.sd = fadd float %i.sc, %i.sb                 ; 2 uses
  %i.se = fcmp oeq float %i.sd, 0.000000e+00
  br i1 %i.se, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640
  %i.sf = insertelement <2 x float> poison, float %i.rg, i64 0
  %i.sg = shufflevector <2 x float> %i.sf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sh = insertelement <2 x float> poison, float %.sroa.238.0.copyload.i.i, i64 0
  %i.si = insertelement <2 x float> %i.sh, float %.sroa.228.0.copyload.i.i, i64 1 ; 2 uses
  %i.sj = fmul <2 x float> %i.sg, %i.si
  %i.sk = shufflevector <2 x float> %.sroa.027.0.copyload.i.i, <2 x float> %.sroa.037.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.sl = fmul <2 x float> %i.rf, %i.sk
  %i.sm = shufflevector <2 x float> %i.sl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sn = shufflevector <2 x float> %.sroa.037.0.copyload.i.i, <2 x float> %.sroa.027.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.so = fmul <2 x float> %i.rf, %i.sn
  %i.sp = fadd <2 x float> %i.sm, %i.so
  %i.sq = fadd <2 x float> %i.sj, %i.sp
  %i.sr = fmul float %i.rg, %.sroa.212.0.copyload.i.i
  %i.ss = fmul <2 x float> %i.rf, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1214 = shufflevector <2 x float> %i.ss, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1215 = fadd <2 x float> %i.ss, %shift1214
  %i.st = extractelement <2 x float> %foldExtExtBinop1215, i64 0
  %i.su = fadd float %i.sr, %i.st
  %i.sv = fmul <2 x float> %i.pt, %i.si
  %i.sw = fmul <2 x float> %.sroa.01054.0.copyload, %i.sn
  %i.sx = fmul <2 x float> %.sroa.01054.0.copyload, %i.sk
  %i.sy = shufflevector <2 x float> %i.sx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sz = fadd <2 x float> %i.sy, %i.sw
  %i.ta = fadd <2 x float> %i.sv, %i.sz
  %i.tb = load i64, ptr %15, align 8, !tbaa !212
  %i.tc = and i64 %i.tb, 144115188075855871
  %i.td = inttoptr i64 %i.tc to ptr
  %i.te = call noundef float @_ZNK4pbrt8HairBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(76) %i.td, <2 x float> %i.ta, float %i.sd, <2 x float> %i.sq, float %i.su, i32 noundef 0, i32 noundef 3)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, %bb.o
  %.0.i660.sink1187 = phi float [ %i.te, %bb.o ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640 ], [ %i.qn, %bb.n ]
  %i.tf = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.tg = insertelement <2 x float> poison, float %.0.i660.sink1187, i64 0
  %i.th = shufflevector <2 x float> %i.tg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ti = fdiv <2 x float> %i.tf, %i.th
  %i.tj = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.tk = fdiv <2 x float> %i.tj, %i.th
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.tm = load float, ptr %i.tl, align 8, !tbaa !536 ; 2 uses
  %i.tn = and i32 %.sroa.16.0.copyload, 2
  %.not = icmp eq i32 %i.tn, 0
  %i.to = fmul float %.sroa.20.0.copyload, %.sroa.20.0.copyload
  %i.tp = fmul float %i.to, %i.tm
  %.0443 = select i1 %.not, float %i.tm, float %i.tp ; 5 uses
  %i.tq = extractelement <4 x float> %i.rx, i64 0
  %i.tr = fmul float %i.tq, %.0443
  %i.ts = extractelement <4 x float> %i.rx, i64 1
  %i.tt = fmul float %i.ts, %.0443
  %i.tu = extractelement <4 x float> %i.rx, i64 2
  %i.tv = fmul float %i.tu, %.0443
  %i.tw = extractelement <4 x float> %i.rx, i64 3
  %i.tx = fmul float %i.tw, %.0443
  %shift1217 = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1218 = fadd <4 x float> %.sroa.0953.0.copyload, %shift1217
  %shift1220 = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1221 = fadd <4 x float> %shift1220, %foldExtExtBinop1218
  %shift1223 = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1224 = fadd <4 x float> %shift1223, %foldExtExtBinop1221
  %i.ty = extractelement <4 x float> %foldExtExtBinop1224, i64 0
  %i.tz = fmul float %i.ty, 2.500000e-01          ; 4 uses
  %i.ua = fdiv float %i.tr, %i.tz                 ; 2 uses
  %i.ub = fdiv float %i.tt, %i.tz                 ; 2 uses
  %i.uc = fdiv float %i.tv, %i.tz                 ; 2 uses
  %i.ud = fdiv float %i.tx, %i.tz                 ; 2 uses
  %i.ue = fcmp olt float %i.ua, %i.ub
  %.sroa.speculated.i = select i1 %i.ue, float %i.ub, float %i.ua ; 2 uses
  %i.uf = fcmp olt float %.sroa.speculated.i, %i.uc
  %.sroa.speculated.1.i = select i1 %i.uf, float %i.uc, float %.sroa.speculated.i ; 2 uses
  %i.ug = fcmp olt float %.sroa.speculated.1.i, %i.ud
  %.sroa.speculated.2.i = select i1 %i.ug, float %i.ud, float %.sroa.speculated.1.i ; 2 uses
  %i.uh = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.uh, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ui = load i32, ptr %i.jr, align 8, !tbaa !528
  %i.uj = icmp sgt i32 %i.ui, 0
  br i1 %i.uj, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.uk = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.ul = fcmp ogt float %i.uk, 0.000000e+00
  %.sroa.speculated = select i1 %i.ul, float %i.uk, float 0.000000e+00 ; 2 uses
  %i.um = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.um, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.un = fsub float 1.000000e+00, %.sroa.speculated
  %i.uo = insertelement <4 x float> poison, float %i.un, i64 0
  %i.up = shufflevector <4 x float> %i.uo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uq = fdiv <4 x float> %i.rx, %i.up
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q, %bb.p
  %.sroa.0971.0 = phi <4 x float> [ %i.rx, %bb.p ], [ %i.uq, %bb.s ], [ %i.rx, %bb.q ], [ zeroinitializer, %bb.r ]
  %.sroa.0971.0.fr = freeze <4 x float> %.sroa.0971.0 ; 3 uses
  %i.ur = fcmp une <4 x float> %.sroa.0971.0.fr, zeroinitializer
  %i.us = bitcast <4 x i1> %i.ur to i4
  %.not1240 = icmp eq i4 %i.us, 0
  br i1 %.not1240, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726: ; preds = %bb.t
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.gp, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !532
  %i.uv = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.gq, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %i.rf, float %i.rg) ; 2 uses
  %.fca.0.extract.i730 = extractvalue { <2 x float>, float } %i.uv, 0 ; 2 uses
  %.fca.1.extract.i731 = extractvalue { <2 x float>, float } %i.uv, 1
  %i.uw = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ux = load i8, ptr %i.uw, align 2, !tbaa !245, !range !11, !noundef !12
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726
  %.sroa.0101.0.copyload = load <2 x float>, ptr %i.gp, align 8 ; 2 uses
  %.sroa.2102.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i733 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i735 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 1
  %i.uz = fmul float %i.rg, %.sroa.2102.0.copyload ; 2 uses
  %i.va = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i735, float %i.rj, float %i.uz)
  %i.vb = fneg float %i.uz
  %i.vc = call noundef float @llvm.fma.f32(float %.sroa.2102.0.copyload, float %i.rg, float %i.vb)
  %i.vd = fadd float %i.va, %i.vc
  %i.ve = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i733, float %i.ro, float %i.vd)
  %i.vf = fcmp ogt float %i.ve, 0.000000e+00
  %.v = select i1 %i.vf, i64 248, i64 240
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !177
  br label %bb.v

bb.v:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726, %bb.u
  %.sroa.17918.0 = phi i64 [ %i.vh, %bb.u ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726 ]
  %i.vi = and i32 %.sroa.16.0.copyload, 16        ; 2 uses
  %.not1171 = icmp eq i32 %i.vi, 0
  br i1 %.not1171, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !534
  %i.vl = icmp ne i32 %i.vk, 0
  %i.vm = zext i1 %i.vl to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.vn = phi i32 [ 1, %bb.v ], [ %i.vm, %bb.w ]
  %.sroa.0905.sroa.0.0.copyload = load float, ptr %i.gq, align 8
  %.sroa.0905.sroa.2.0.copyload = load float, ptr %.sroa.0.sroa.2.0..sroa_idx.i556, align 4
  %.sroa.0905.sroa.3.0.copyload = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i558, align 8
  %.sroa.0905.sroa.4.0.copyload = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i560, align 4
  %.sroa.0905.sroa.5.0.copyload = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i562, align 8
  %.sroa.0905.sroa.6.0.copyload = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i564, align 4
  %.sroa.094.0.copyload = load <2 x float>, ptr %i.gp, align 8 ; 2 uses
  %.sroa.295.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !511 ; 31 uses
  %i.vq = load i32, ptr %i.jr, align 8, !tbaa !528
  %i.vr = add nsw i32 %i.vq, 1
  %i.vs = load i32, ptr %i.pc, align 4, !tbaa !538
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vp, i64 400
  %i.vu = atomicrmw add ptr %i.vt, i32 1 monotonic, align 4
  %.sroa.0913.0.vec.extract = extractelement <2 x float> %.fca.0.extract.i730, i64 0
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !222
  %i.vx = sext i32 %i.vu to i64                   ; 30 uses
  %i.vy = getelementptr inbounds [4 x i8], ptr %i.vw, i64 %i.vx
  store float %.sroa.0913.0.vec.extract, ptr %i.vy, align 4, !tbaa !155
  %.sroa.0913.4.vec.extract = extractelement <2 x float> %.fca.0.extract.i730, i64 1
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vp, i64 32
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !224
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.wa, i64 %i.vx
  store float %.sroa.0913.4.vec.extract, ptr %i.wb, align 4, !tbaa !155
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vp, i64 40
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !226
  %i.we = getelementptr inbounds [4 x i8], ptr %i.wd, i64 %i.vx
  store float %.fca.1.extract.i731, ptr %i.we, align 4, !tbaa !155
end_hunk_12
begin_hunk_13_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_12HairMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_IS2_EENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSJ_E_clESJ_:bb.a
  %i.mo = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !227
  %i.mq = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !157
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.mr, i64 %i.lj
  store float %i.mp, ptr %i.ms, align 4, !tbaa !155
  %i.mt = getelementptr inbounds nuw i8, ptr %18, i64 28
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !228
  %i.mv = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !158
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.lj
  store float %i.mu, ptr %i.mx, align 4, !tbaa !155
  %i.my = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.mz = load float, ptr %i.my, align 4, !tbaa !229
  %i.na = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !159
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.nb, i64 %i.lj
  store float %i.mz, ptr %i.nc, align 4, !tbaa !155
  %i.nd = getelementptr inbounds nuw i8, ptr %18, i64 36
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !230
  %i.nf = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !163
  %i.nh = getelementptr inbounds [4 x i8], ptr %i.ng, i64 %i.lj
  store float %i.ne, ptr %i.nh, align 4, !tbaa !155
  %i.ni = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !231
  %i.nk = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !164
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.lj
  store float %i.nj, ptr %i.nm, align 4, !tbaa !155
  %i.nn = getelementptr inbounds nuw i8, ptr %18, i64 44
  %i.no = load float, ptr %i.nn, align 4, !tbaa !232
  %i.np = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !233
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.lj
  store float %i.no, ptr %i.nr, align 4, !tbaa !155
  %i.ns = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !234
  %i.nu = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !160
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.nv, i64 %i.lj
  store float %i.nt, ptr %i.nw, align 4, !tbaa !155
  %i.nx = getelementptr inbounds nuw i8, ptr %18, i64 52
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !235
  %i.nz = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !161
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.oa, i64 %i.lj
  store float %i.ny, ptr %i.ob, align 4, !tbaa !155
  %i.oc = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.od = load float, ptr %i.oc, align 4, !tbaa !181
  %i.oe = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !162
  %i.og = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.lj
  store float %i.od, ptr %i.og, align 4, !tbaa !155
  %i.oh = getelementptr inbounds nuw i8, ptr %18, i64 60
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !234
  %i.oj = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !160
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.ok, i64 %i.lj
  store float %i.oi, ptr %i.ol, align 4, !tbaa !155
  %i.om = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.on = load float, ptr %i.om, align 4, !tbaa !235
  %i.oo = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !161
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.op, i64 %i.lj
  store float %i.on, ptr %i.oq, align 4, !tbaa !155
  %i.or = getelementptr inbounds nuw i8, ptr %18, i64 68
  %i.os = load float, ptr %i.or, align 4, !tbaa !181
  %i.ot = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !162
  %i.ov = getelementptr inbounds [4 x i8], ptr %i.ou, i64 %i.lj
  store float %i.os, ptr %i.ov, align 4, !tbaa !155
  %i.ow = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.ox = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !153
  %i.oz = getelementptr inbounds [16 x i8], ptr %i.oy, i64 %i.lj ; 2 uses
  %i.pa = load <4 x float>, ptr %i.ow, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.pa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.pa, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.oz, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.01054.0.copyload = load <2 x float>, ptr %i.go, align 4 ; 13 uses
  %.sroa.121061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121061.0.copyload = load float, ptr %.sroa.121061.0..sroa_idx, align 4 ; 8 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !538
  %i.pe = load ptr, ptr %i.pb, align 8, !tbaa !236, !noalias !1747
  %i.pf = sext i32 %i.pd to i64                   ; 2 uses
  %i.pg = getelementptr inbounds [16 x i8], ptr %i.pe, i64 %i.pf ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.ph = load <2 x float>, ptr %i.pg, align 16, !noalias !1747
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !71, !noalias !1747
  %i.pi = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !237, !noalias !1747
  %i.pk = getelementptr inbounds [16 x i8], ptr %i.pj, i64 %i.pf ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.pk, align 16, !noalias !1747 ; 2 uses
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %.sroa.05.0.copyload.i.i.i598 = load <2 x float>, ptr %i.ii, align 8, !noalias !1748
  %.sroa.26.0.copyload.i.i.i600 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1748
  %i.pl = fmul <2 x float> %.sroa.01054.0.copyload, %.sroa.05.0.copyload.i.i.i598 ; 2 uses
  %shift1208 = shufflevector <2 x float> %i.pl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1209 = fadd <2 x float> %i.pl, %shift1208
  %i.pm = extractelement <2 x float> %foldExtExtBinop1209, i64 0
  %i.pn = fmul float %.sroa.121061.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.po = fadd float %i.pn, %i.pm                 ; 2 uses
  %i.pp = fcmp oeq float %i.po, 0.000000e+00
  br i1 %i.pp, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %.sroa.2.0.copyload.i931.i.i1170 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !1747
  %.sroa.021.0.copyload.i.i.i586 = load <2 x float>, ptr %i.hf, align 8, !noalias !1748 ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = load <2 x float>, ptr %i.ig, align 4, !noalias !1748 ; 2 uses
  %i.pq = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !1748
  %i.pr = shufflevector <4 x float> %i.pq, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ps = insertelement <2 x float> poison, float %.sroa.121061.0.copyload, i64 0
  %i.pt = shufflevector <2 x float> %i.ps, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pu = fmul <2 x float> %i.pt, %i.pr
  %i.pv = shufflevector <2 x float> %.sroa.01054.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pw = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.px = fmul <2 x float> %i.pv, %i.pw
  %i.py = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.pz = fmul <2 x float> %.sroa.01054.0.copyload, %i.py
  %i.qa = fadd <2 x float> %i.px, %i.pz
  %i.qb = fadd <2 x float> %i.pu, %i.qa
  %i.qc = load i64, ptr %15, align 8, !tbaa !212, !noalias !1748
  %i.qd = and i64 %i.qc, 144115188075855871
  %i.qe = inttoptr i64 %i.qd to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !1748
  call void @_ZNK4pbrt8HairBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %8, ptr noundef nonnull align 4 dereferenceable(76) %i.qe, <2 x float> %i.qb, float %i.po, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1170, i32 noundef 0, i32 noundef 3), !noalias !1748
  %i.qf = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.qg = load i8, ptr %i.qf, align 4, !tbaa !239, !range !11, !noalias !1748, !noundef !12
  %i.qh = trunc nuw i8 %i.qg to i1
  br i1 %i.qh, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.m
  %i.qi = load <4 x float>, ptr %8, align 16, !noalias !1748
  %.fr = freeze <4 x float> %i.qi                 ; 2 uses
  %i.qj = fcmp une <4 x float> %.fr, zeroinitializer
  %i.qk = bitcast <4 x i1> %i.qj to i4
  %i.ql = icmp eq i4 %i.qk, 0
  %i.qm = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.qn = load float, ptr %i.qm, align 4, !noalias !1748 ; 3 uses
  %i.qo = fcmp oeq float %i.qn, 0.000000e+00
  %or.cond.i605 = select i1 %i.ql, i1 true, i1 %i.qo
  br i1 %or.cond.i605, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.qp = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.qq = load float, ptr %i.qp, align 8, !tbaa !181, !noalias !1748 ; 3 uses
  %i.qr = fcmp oeq float %i.qq, 0.000000e+00
  br i1 %i.qr, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %bb.n

_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit: ; preds = %bb.m, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1748
  br label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread

bb.n:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  %i.qs = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.qs, align 16, !noalias !1748 ; 4 uses
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %.sroa.037.0.copyload.i.i = load <2 x float>, ptr %i.hf, align 8, !tbaa !155, !noalias !1748 ; 3 uses
  %.sroa.238.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !tbaa !155, !noalias !1748 ; 2 uses
  %i.qt = fmul float %.sroa.041.0.vec.extract.i.i, %.sroa.238.0.copyload.i.i
  %.sroa.041.4.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %.sroa.027.0.copyload.i.i = load <2 x float>, ptr %i.ig, align 4, !tbaa !155, !noalias !1748 ; 3 uses
  %.sroa.228.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !155, !noalias !1748 ; 2 uses
  %i.qu = fmul float %.sroa.041.4.vec.extract.i.i, %.sroa.228.0.copyload.i.i
  %i.qv = fadd float %i.qt, %i.qu
  %.sroa.011.0.copyload.i.i = load <2 x float>, ptr %i.ii, align 8, !tbaa !155, !noalias !1748 ; 3 uses
  %.sroa.212.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !155, !noalias !1748 ; 3 uses
  %i.qw = fmul float %i.qq, %.sroa.212.0.copyload.i.i
  %i.qx = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qy = fmul <2 x float> %i.qx, %.sroa.037.0.copyload.i.i
  %i.qz = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ra = fmul <2 x float> %i.qz, %.sroa.027.0.copyload.i.i
  %i.rb = fadd <2 x float> %i.qy, %i.ra
  %i.rc = insertelement <2 x float> poison, float %i.qq, i64 0
  %i.rd = shufflevector <2 x float> %i.rc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.re = fmul <2 x float> %i.rd, %.sroa.011.0.copyload.i.i
  %i.rf = fadd <2 x float> %i.rb, %i.re           ; 6 uses
  %i.rg = fadd float %i.qv, %i.qw                 ; 8 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 16 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 36
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.21.0.copyload = load i8, ptr %.sroa.21.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1748
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 200
  %24 = load <4 x float>, ptr %i.rh, align 8
  %i.ri = fmul float %.sroa.17.0.copyload, %i.rg  ; 2 uses
  %i.rj = extractelement <2 x float> %i.rf, i64 1 ; 3 uses
  %i.rk = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.rj, float %i.ri)
  %i.rl = fneg float %i.ri
  %i.rm = call noundef float @llvm.fma.f32(float %.sroa.17.0.copyload, float %i.rg, float %i.rl)
  %i.rn = fadd float %i.rk, %i.rm
  %i.ro = extractelement <2 x float> %i.rf, i64 0 ; 3 uses
  %i.rp = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.ro, float %i.rn)
  %i.rq = call noundef float @llvm.fabs.f32(float %i.rp)
  %i.rr = fmul <4 x float> %.fr, %24
  %i.rs = insertelement <4 x float> poison, float %i.rq, i64 0
  %i.rt = shufflevector <4 x float> %i.rs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ru = fmul <4 x float> %i.rt, %i.rr
  %i.rv = insertelement <4 x float> poison, float %i.qn, i64 0
  %i.rw = shufflevector <4 x float> %i.rv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rx = fdiv <4 x float> %i.ru, %i.rw           ; 7 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0953.0.copyload = load <4 x float>, ptr %i.ry, align 8, !tbaa !71 ; 6 uses
  %i.rz = trunc nuw i8 %.sroa.21.0.copyload to i1
  br i1 %i.rz, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, label %bb.p

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640: ; preds = %bb.n
  %i.sa = fmul <2 x float> %.sroa.01054.0.copyload, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1211 = shufflevector <2 x float> %i.sa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1212 = fadd <2 x float> %i.sa, %shift1211
  %i.sb = extractelement <2 x float> %foldExtExtBinop1212, i64 0
  %i.sc = fmul float %.sroa.121061.0.copyload, %.sroa.212.0.copyload.i.i
  %i.sd = fadd float %i.sc, %i.sb                 ; 2 uses
  %i.se = fcmp oeq float %i.sd, 0.000000e+00
  br i1 %i.se, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640
  %i.sf = insertelement <2 x float> poison, float %i.rg, i64 0
  %i.sg = shufflevector <2 x float> %i.sf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sh = insertelement <2 x float> poison, float %.sroa.238.0.copyload.i.i, i64 0
  %i.si = insertelement <2 x float> %i.sh, float %.sroa.228.0.copyload.i.i, i64 1 ; 2 uses
  %i.sj = fmul <2 x float> %i.sg, %i.si
  %i.sk = shufflevector <2 x float> %.sroa.027.0.copyload.i.i, <2 x float> %.sroa.037.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.sl = fmul <2 x float> %i.rf, %i.sk
  %i.sm = shufflevector <2 x float> %i.sl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sn = shufflevector <2 x float> %.sroa.037.0.copyload.i.i, <2 x float> %.sroa.027.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.so = fmul <2 x float> %i.rf, %i.sn
  %i.sp = fadd <2 x float> %i.sm, %i.so
  %i.sq = fadd <2 x float> %i.sj, %i.sp
  %i.sr = fmul float %i.rg, %.sroa.212.0.copyload.i.i
  %i.ss = fmul <2 x float> %i.rf, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1214 = shufflevector <2 x float> %i.ss, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1215 = fadd <2 x float> %i.ss, %shift1214
  %i.st = extractelement <2 x float> %foldExtExtBinop1215, i64 0
  %i.su = fadd float %i.sr, %i.st
  %i.sv = fmul <2 x float> %i.pt, %i.si
  %i.sw = fmul <2 x float> %.sroa.01054.0.copyload, %i.sn
  %i.sx = fmul <2 x float> %.sroa.01054.0.copyload, %i.sk
  %i.sy = shufflevector <2 x float> %i.sx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sz = fadd <2 x float> %i.sy, %i.sw
  %i.ta = fadd <2 x float> %i.sv, %i.sz
  %i.tb = load i64, ptr %15, align 8, !tbaa !212
  %i.tc = and i64 %i.tb, 144115188075855871
  %i.td = inttoptr i64 %i.tc to ptr
  %i.te = call noundef float @_ZNK4pbrt8HairBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(76) %i.td, <2 x float> %i.ta, float %i.sd, <2 x float> %i.sq, float %i.su, i32 noundef 0, i32 noundef 3)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, %bb.o
  %.0.i660.sink1187 = phi float [ %i.te, %bb.o ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640 ], [ %i.qn, %bb.n ]
  %i.tf = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.tg = insertelement <2 x float> poison, float %.0.i660.sink1187, i64 0
  %i.th = shufflevector <2 x float> %i.tg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ti = fdiv <2 x float> %i.tf, %i.th
  %i.tj = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.tk = fdiv <2 x float> %i.tj, %i.th
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.tm = load float, ptr %i.tl, align 8, !tbaa !536 ; 2 uses
  %i.tn = and i32 %.sroa.16.0.copyload, 2
  %.not = icmp eq i32 %i.tn, 0
  %i.to = fmul float %.sroa.20.0.copyload, %.sroa.20.0.copyload
  %i.tp = fmul float %i.to, %i.tm
  %.0443 = select i1 %.not, float %i.tm, float %i.tp ; 5 uses
  %i.tq = extractelement <4 x float> %i.rx, i64 0
  %i.tr = fmul float %i.tq, %.0443
  %i.ts = extractelement <4 x float> %i.rx, i64 1
  %i.tt = fmul float %i.ts, %.0443
  %i.tu = extractelement <4 x float> %i.rx, i64 2
  %i.tv = fmul float %i.tu, %.0443
  %i.tw = extractelement <4 x float> %i.rx, i64 3
  %i.tx = fmul float %i.tw, %.0443
  %shift1217 = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1218 = fadd <4 x float> %.sroa.0953.0.copyload, %shift1217
  %shift1220 = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1221 = fadd <4 x float> %shift1220, %foldExtExtBinop1218
  %shift1223 = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1224 = fadd <4 x float> %shift1223, %foldExtExtBinop1221
  %i.ty = extractelement <4 x float> %foldExtExtBinop1224, i64 0
  %i.tz = fmul float %i.ty, 2.500000e-01          ; 4 uses
  %i.ua = fdiv float %i.tr, %i.tz                 ; 2 uses
  %i.ub = fdiv float %i.tt, %i.tz                 ; 2 uses
  %i.uc = fdiv float %i.tv, %i.tz                 ; 2 uses
  %i.ud = fdiv float %i.tx, %i.tz                 ; 2 uses
  %i.ue = fcmp olt float %i.ua, %i.ub
  %.sroa.speculated.i = select i1 %i.ue, float %i.ub, float %i.ua ; 2 uses
  %i.uf = fcmp olt float %.sroa.speculated.i, %i.uc
  %.sroa.speculated.1.i = select i1 %i.uf, float %i.uc, float %.sroa.speculated.i ; 2 uses
  %i.ug = fcmp olt float %.sroa.speculated.1.i, %i.ud
  %.sroa.speculated.2.i = select i1 %i.ug, float %i.ud, float %.sroa.speculated.1.i ; 2 uses
  %i.uh = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.uh, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ui = load i32, ptr %i.jr, align 8, !tbaa !528
  %i.uj = icmp sgt i32 %i.ui, 0
  br i1 %i.uj, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.uk = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.ul = fcmp ogt float %i.uk, 0.000000e+00
  %.sroa.speculated = select i1 %i.ul, float %i.uk, float 0.000000e+00 ; 2 uses
  %i.um = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.um, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.un = fsub float 1.000000e+00, %.sroa.speculated
  %i.uo = insertelement <4 x float> poison, float %i.un, i64 0
  %i.up = shufflevector <4 x float> %i.uo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uq = fdiv <4 x float> %i.rx, %i.up
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q, %bb.p
  %.sroa.0971.0 = phi <4 x float> [ %i.rx, %bb.p ], [ %i.uq, %bb.s ], [ %i.rx, %bb.q ], [ zeroinitializer, %bb.r ]
  %.sroa.0971.0.fr = freeze <4 x float> %.sroa.0971.0 ; 3 uses
  %i.ur = fcmp une <4 x float> %.sroa.0971.0.fr, zeroinitializer
  %i.us = bitcast <4 x i1> %i.ur to i4
  %.not1240 = icmp eq i4 %i.us, 0
  br i1 %.not1240, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726: ; preds = %bb.t
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.gp, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !532
  %i.uv = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.gq, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %i.rf, float %i.rg) ; 2 uses
  %.fca.0.extract.i730 = extractvalue { <2 x float>, float } %i.uv, 0 ; 2 uses
  %.fca.1.extract.i731 = extractvalue { <2 x float>, float } %i.uv, 1
  %i.uw = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ux = load i8, ptr %i.uw, align 2, !tbaa !245, !range !11, !noundef !12
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726
  %.sroa.0101.0.copyload = load <2 x float>, ptr %i.gp, align 8 ; 2 uses
  %.sroa.2102.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i733 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i735 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 1
  %i.uz = fmul float %i.rg, %.sroa.2102.0.copyload ; 2 uses
  %i.va = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i735, float %i.rj, float %i.uz)
  %i.vb = fneg float %i.uz
  %i.vc = call noundef float @llvm.fma.f32(float %.sroa.2102.0.copyload, float %i.rg, float %i.vb)
  %i.vd = fadd float %i.va, %i.vc
  %i.ve = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i733, float %i.ro, float %i.vd)
  %i.vf = fcmp ogt float %i.ve, 0.000000e+00
  %.v = select i1 %i.vf, i64 248, i64 240
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !177
  br label %bb.v

bb.v:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726, %bb.u
  %.sroa.17918.0 = phi i64 [ %i.vh, %bb.u ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726 ]
  %i.vi = and i32 %.sroa.16.0.copyload, 16        ; 2 uses
  %.not1171 = icmp eq i32 %i.vi, 0
  br i1 %.not1171, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !534
  %i.vl = icmp ne i32 %i.vk, 0
  %i.vm = zext i1 %i.vl to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.vn = phi i32 [ 1, %bb.v ], [ %i.vm, %bb.w ]
  %.sroa.0905.sroa.0.0.copyload = load float, ptr %i.gq, align 8
  %.sroa.0905.sroa.2.0.copyload = load float, ptr %.sroa.0.sroa.2.0..sroa_idx.i556, align 4
  %.sroa.0905.sroa.3.0.copyload = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i558, align 8
  %.sroa.0905.sroa.4.0.copyload = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i560, align 4
  %.sroa.0905.sroa.5.0.copyload = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i562, align 8
  %.sroa.0905.sroa.6.0.copyload = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i564, align 4
  %.sroa.094.0.copyload = load <2 x float>, ptr %i.gp, align 8 ; 2 uses
  %.sroa.295.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !514 ; 31 uses
  %i.vq = load i32, ptr %i.jr, align 8, !tbaa !528
  %i.vr = add nsw i32 %i.vq, 1
  %i.vs = load i32, ptr %i.pc, align 4, !tbaa !538
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vp, i64 400
  %i.vu = atomicrmw add ptr %i.vt, i32 1 monotonic, align 4
  %.sroa.0913.0.vec.extract = extractelement <2 x float> %.fca.0.extract.i730, i64 0
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !222
  %i.vx = sext i32 %i.vu to i64                   ; 30 uses
  %i.vy = getelementptr inbounds [4 x i8], ptr %i.vw, i64 %i.vx
  store float %.sroa.0913.0.vec.extract, ptr %i.vy, align 4, !tbaa !155
  %.sroa.0913.4.vec.extract = extractelement <2 x float> %.fca.0.extract.i730, i64 1
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vp, i64 32
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !224
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.wa, i64 %i.vx
  store float %.sroa.0913.4.vec.extract, ptr %i.wb, align 4, !tbaa !155
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vp, i64 40
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !226
  %i.we = getelementptr inbounds [4 x i8], ptr %i.wd, i64 %i.vx
  store float %.fca.1.extract.i731, ptr %i.we, align 4, !tbaa !155
end_hunk_13
begin_hunk_14_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_16MeasuredMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_IS2_EENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSL_E_clESL_:bb.a
  %i.ru = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !227
  %i.rw = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !157
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.rx, i64 %i.qp
  store float %i.rv, ptr %i.ry, align 4, !tbaa !155
  %i.rz = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !228
  %i.sb = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !158
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.qp
  store float %i.sa, ptr %i.sd, align 4, !tbaa !155
  %i.se = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.sf = load float, ptr %i.se, align 4, !tbaa !229
  %i.sg = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !159
  %i.si = getelementptr inbounds [4 x i8], ptr %i.sh, i64 %i.qp
  store float %i.sf, ptr %i.si, align 4, !tbaa !155
  %i.sj = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !230
  %i.sl = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !163
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.sm, i64 %i.qp
  store float %i.sk, ptr %i.sn, align 4, !tbaa !155
  %i.so = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.sp = load float, ptr %i.so, align 4, !tbaa !231
  %i.sq = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !164
  %i.ss = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.qp
  store float %i.sp, ptr %i.ss, align 4, !tbaa !155
  %i.st = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.su = load float, ptr %i.st, align 4, !tbaa !232
  %i.sv = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !233
  %i.sx = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.qp
  store float %i.su, ptr %i.sx, align 4, !tbaa !155
  %i.sy = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !234
  %i.ta = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !160
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.qp
  store float %i.sz, ptr %i.tc, align 4, !tbaa !155
  %i.td = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.te = load float, ptr %i.td, align 4, !tbaa !235
  %i.tf = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !161
  %i.th = getelementptr inbounds [4 x i8], ptr %i.tg, i64 %i.qp
  store float %i.te, ptr %i.th, align 4, !tbaa !155
  %i.ti = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !181
  %i.tk = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !162
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.qp
  store float %i.tj, ptr %i.tm, align 4, !tbaa !155
  %i.tn = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.to = load float, ptr %i.tn, align 4, !tbaa !234
  %i.tp = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !160
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.tq, i64 %i.qp
  store float %i.to, ptr %i.tr, align 4, !tbaa !155
  %i.ts = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !235
  %i.tu = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !161
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.tv, i64 %i.qp
  store float %i.tt, ptr %i.tw, align 4, !tbaa !155
  %i.tx = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !181
  %i.tz = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !162
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.qp
  store float %i.ty, ptr %i.ub, align 4, !tbaa !155
  %i.uc = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.ud = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !153
  %i.uf = getelementptr inbounds [16 x i8], ptr %i.ue, i64 %i.qp ; 2 uses
  %i.ug = load <4 x float>, ptr %i.uc, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.ug, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.ug, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.uf, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.01054.0.copyload = load <2 x float>, ptr %i.ma, align 4 ; 13 uses
  %.sroa.121061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121061.0.copyload = load float, ptr %.sroa.121061.0..sroa_idx, align 4 ; 8 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !568
  %i.uk = load ptr, ptr %i.uh, align 8, !tbaa !236, !noalias !1800
  %i.ul = sext i32 %i.uj to i64                   ; 2 uses
  %i.um = getelementptr inbounds [16 x i8], ptr %i.uk, i64 %i.ul ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.un = load <2 x float>, ptr %i.um, align 16, !noalias !1800
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !71, !noalias !1800
  %i.uo = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !237, !noalias !1800
  %i.uq = getelementptr inbounds [16 x i8], ptr %i.up, i64 %i.ul ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.uq, align 16, !noalias !1800 ; 2 uses
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %.sroa.05.0.copyload.i.i.i598 = load <2 x float>, ptr %i.no, align 8, !noalias !1801
  %.sroa.26.0.copyload.i.i.i600 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1801
  %i.ur = fmul <2 x float> %.sroa.01054.0.copyload, %.sroa.05.0.copyload.i.i.i598 ; 2 uses
  %shift1248 = shufflevector <2 x float> %i.ur, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1249 = fadd <2 x float> %i.ur, %shift1248
  %i.us = extractelement <2 x float> %foldExtExtBinop1249, i64 0
  %i.ut = fmul float %.sroa.121061.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.uu = fadd float %i.ut, %i.us                 ; 2 uses
  %i.uv = fcmp oeq float %i.uu, 0.000000e+00
  br i1 %i.uv, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %.sroa.2.0.copyload.i931.i.i1203 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !1800
  %.sroa.021.0.copyload.i.i.i586 = load <2 x float>, ptr %i.mk, align 8, !noalias !1801 ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = load <2 x float>, ptr %i.nn, align 4, !noalias !1801 ; 2 uses
  %i.uw = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !1801
  %i.ux = shufflevector <4 x float> %i.uw, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.uy = insertelement <2 x float> poison, float %.sroa.121061.0.copyload, i64 0
  %i.uz = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.va = fmul <2 x float> %i.uz, %i.ux
  %i.vb = shufflevector <2 x float> %.sroa.01054.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vc = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.vd = fmul <2 x float> %i.vb, %i.vc
  %i.ve = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.vf = fmul <2 x float> %.sroa.01054.0.copyload, %i.ve
  %i.vg = fadd <2 x float> %i.vd, %i.vf
  %i.vh = fadd <2 x float> %i.va, %i.vg
  %i.vi = load i64, ptr %20, align 8, !tbaa !212, !noalias !1801
  %i.vj = and i64 %i.vi, 144115188075855871
  %i.vk = inttoptr i64 %i.vj to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !1801
  call void @_ZNK4pbrt12MeasuredBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %8, ptr noundef nonnull align 8 dereferenceable(40) %i.vk, <2 x float> %i.vh, float %i.uu, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1203, i32 noundef 0, i32 noundef 3), !noalias !1801
  %i.vl = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.vm = load i8, ptr %i.vl, align 4, !tbaa !239, !range !11, !noalias !1801, !noundef !12
  %i.vn = trunc nuw i8 %i.vm to i1
  br i1 %i.vn, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.q
  %i.vo = load <4 x float>, ptr %8, align 16, !noalias !1801
  %.fr = freeze <4 x float> %i.vo                 ; 2 uses
  %i.vp = fcmp une <4 x float> %.fr, zeroinitializer
  %i.vq = bitcast <4 x i1> %i.vp to i4
  %i.vr = icmp eq i4 %i.vq, 0
  %i.vs = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.vt = load float, ptr %i.vs, align 4, !noalias !1801 ; 3 uses
  %i.vu = fcmp oeq float %i.vt, 0.000000e+00
  %or.cond.i605 = select i1 %i.vr, i1 true, i1 %i.vu
  br i1 %or.cond.i605, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.vv = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.vw = load float, ptr %i.vv, align 8, !tbaa !181, !noalias !1801 ; 3 uses
  %i.vx = fcmp oeq float %i.vw, 0.000000e+00
  br i1 %i.vx, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %bb.r

_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit: ; preds = %bb.q, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1801
  br label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread

bb.r:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  %i.vy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.vy, align 16, !noalias !1801 ; 4 uses
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %.sroa.037.0.copyload.i.i = load <2 x float>, ptr %i.mk, align 8, !tbaa !155, !noalias !1801 ; 3 uses
  %.sroa.238.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !tbaa !155, !noalias !1801 ; 2 uses
  %i.vz = fmul float %.sroa.041.0.vec.extract.i.i, %.sroa.238.0.copyload.i.i
  %.sroa.041.4.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %.sroa.027.0.copyload.i.i = load <2 x float>, ptr %i.nn, align 4, !tbaa !155, !noalias !1801 ; 3 uses
  %.sroa.228.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !155, !noalias !1801 ; 2 uses
  %i.wa = fmul float %.sroa.041.4.vec.extract.i.i, %.sroa.228.0.copyload.i.i
  %i.wb = fadd float %i.vz, %i.wa
  %.sroa.011.0.copyload.i.i = load <2 x float>, ptr %i.no, align 8, !tbaa !155, !noalias !1801 ; 3 uses
  %.sroa.212.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !155, !noalias !1801 ; 3 uses
  %i.wc = fmul float %i.vw, %.sroa.212.0.copyload.i.i
  %i.wd = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.we = fmul <2 x float> %i.wd, %.sroa.037.0.copyload.i.i
  %i.wf = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wg = fmul <2 x float> %i.wf, %.sroa.027.0.copyload.i.i
  %i.wh = fadd <2 x float> %i.we, %i.wg
  %i.wi = insertelement <2 x float> poison, float %i.vw, i64 0
  %i.wj = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wk = fmul <2 x float> %i.wj, %.sroa.011.0.copyload.i.i
  %i.wl = fadd <2 x float> %i.wh, %i.wk           ; 6 uses
  %i.wm = fadd float %i.wb, %i.wc                 ; 8 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 16 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 36
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.21.0.copyload = load i8, ptr %.sroa.21.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1801
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 200
  %29 = load <4 x float>, ptr %i.wn, align 8
  %i.wo = fmul float %.sroa.17.0, %i.wm           ; 2 uses
  %i.wp = extractelement <2 x float> %i.wl, i64 1 ; 3 uses
  %i.wq = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.wp, float %i.wo)
  %i.wr = fneg float %i.wo
  %i.ws = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.wm, float %i.wr)
  %i.wt = fadd float %i.wq, %i.ws
  %i.wu = extractelement <2 x float> %i.wl, i64 0 ; 3 uses
  %i.wv = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.wu, float %i.wt)
  %i.ww = call noundef float @llvm.fabs.f32(float %i.wv)
  %i.wx = fmul <4 x float> %.fr, %29
  %i.wy = insertelement <4 x float> poison, float %i.ww, i64 0
  %i.wz = shufflevector <4 x float> %i.wy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xa = fmul <4 x float> %i.wz, %i.wx
  %i.xb = insertelement <4 x float> poison, float %i.vt, i64 0
  %i.xc = shufflevector <4 x float> %i.xb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xd = fdiv <4 x float> %i.xa, %i.xc           ; 7 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0953.0.copyload = load <4 x float>, ptr %i.xe, align 8, !tbaa !71 ; 6 uses
  %i.xf = trunc nuw i8 %.sroa.21.0.copyload to i1
  br i1 %i.xf, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, label %bb.t

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640: ; preds = %bb.r
  %i.xg = fmul <2 x float> %.sroa.01054.0.copyload, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1251 = shufflevector <2 x float> %i.xg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1252 = fadd <2 x float> %i.xg, %shift1251
  %i.xh = extractelement <2 x float> %foldExtExtBinop1252, i64 0
  %i.xi = fmul float %.sroa.121061.0.copyload, %.sroa.212.0.copyload.i.i
  %i.xj = fadd float %i.xi, %i.xh                 ; 2 uses
  %i.xk = fcmp oeq float %i.xj, 0.000000e+00
  br i1 %i.xk, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640
  %i.xl = insertelement <2 x float> poison, float %i.wm, i64 0
  %i.xm = shufflevector <2 x float> %i.xl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xn = insertelement <2 x float> poison, float %.sroa.238.0.copyload.i.i, i64 0
  %i.xo = insertelement <2 x float> %i.xn, float %.sroa.228.0.copyload.i.i, i64 1 ; 2 uses
  %i.xp = fmul <2 x float> %i.xm, %i.xo
  %i.xq = shufflevector <2 x float> %.sroa.027.0.copyload.i.i, <2 x float> %.sroa.037.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xr = fmul <2 x float> %i.wl, %i.xq
  %i.xs = shufflevector <2 x float> %i.xr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xt = shufflevector <2 x float> %.sroa.037.0.copyload.i.i, <2 x float> %.sroa.027.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xu = fmul <2 x float> %i.wl, %i.xt
  %i.xv = fadd <2 x float> %i.xs, %i.xu
  %i.xw = fadd <2 x float> %i.xp, %i.xv
  %i.xx = fmul float %i.wm, %.sroa.212.0.copyload.i.i
  %i.xy = fmul <2 x float> %i.wl, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1254 = shufflevector <2 x float> %i.xy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1255 = fadd <2 x float> %i.xy, %shift1254
  %i.xz = extractelement <2 x float> %foldExtExtBinop1255, i64 0
  %i.ya = fadd float %i.xx, %i.xz
  %i.yb = fmul <2 x float> %i.uz, %i.xo
  %i.yc = fmul <2 x float> %.sroa.01054.0.copyload, %i.xt
  %i.yd = fmul <2 x float> %.sroa.01054.0.copyload, %i.xq
  %i.ye = shufflevector <2 x float> %i.yd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yf = fadd <2 x float> %i.ye, %i.yc
  %i.yg = fadd <2 x float> %i.yb, %i.yf
  %i.yh = load i64, ptr %20, align 8, !tbaa !212
  %i.yi = and i64 %i.yh, 144115188075855871
  %i.yj = inttoptr i64 %i.yi to ptr
  %i.yk = call noundef float @_ZNK4pbrt12MeasuredBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.yj, <2 x float> %i.yg, float %i.xj, <2 x float> %i.xw, float %i.ya, i32 noundef 0, i32 noundef 3)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, %bb.s
  %.0.i660.sink1227 = phi float [ %i.yk, %bb.s ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640 ], [ %i.vt, %bb.r ]
  %i.yl = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ym = insertelement <2 x float> poison, float %.0.i660.sink1227, i64 0
  %i.yn = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yo = fdiv <2 x float> %i.yl, %i.yn
  %i.yp = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.yq = fdiv <2 x float> %i.yp, %i.yn
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ys = load float, ptr %i.yr, align 8, !tbaa !566 ; 2 uses
  %i.yt = and i32 %.sroa.16.0.copyload, 2
  %.not1204 = icmp eq i32 %i.yt, 0
  %i.yu = fmul float %.sroa.20.0.copyload, %.sroa.20.0.copyload
  %i.yv = fmul float %i.yu, %i.ys
  %.0443 = select i1 %.not1204, float %i.ys, float %i.yv ; 5 uses
  %i.yw = extractelement <4 x float> %i.xd, i64 0
  %i.yx = fmul float %i.yw, %.0443
  %i.yy = extractelement <4 x float> %i.xd, i64 1
  %i.yz = fmul float %i.yy, %.0443
  %i.za = extractelement <4 x float> %i.xd, i64 2
  %i.zb = fmul float %i.za, %.0443
  %i.zc = extractelement <4 x float> %i.xd, i64 3
  %i.zd = fmul float %i.zc, %.0443
  %shift1257 = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1258 = fadd <4 x float> %.sroa.0953.0.copyload, %shift1257
  %shift1260 = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1261 = fadd <4 x float> %shift1260, %foldExtExtBinop1258
  %shift1263 = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1264 = fadd <4 x float> %shift1263, %foldExtExtBinop1261
  %i.ze = extractelement <4 x float> %foldExtExtBinop1264, i64 0
  %i.zf = fmul float %i.ze, 2.500000e-01          ; 4 uses
  %i.zg = fdiv float %i.yx, %i.zf                 ; 2 uses
  %i.zh = fdiv float %i.yz, %i.zf                 ; 2 uses
  %i.zi = fdiv float %i.zb, %i.zf                 ; 2 uses
  %i.zj = fdiv float %i.zd, %i.zf                 ; 2 uses
  %i.zk = fcmp olt float %i.zg, %i.zh
  %.sroa.speculated.i = select i1 %i.zk, float %i.zh, float %i.zg ; 2 uses
  %i.zl = fcmp olt float %.sroa.speculated.i, %i.zi
  %.sroa.speculated.1.i = select i1 %i.zl, float %i.zi, float %.sroa.speculated.i ; 2 uses
  %i.zm = fcmp olt float %.sroa.speculated.1.i, %i.zj
  %.sroa.speculated.2.i = select i1 %i.zm, float %i.zj, float %.sroa.speculated.1.i ; 2 uses
  %i.zn = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.zn, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.zo = load i32, ptr %i.ox, align 8, !tbaa !558
  %i.zp = icmp sgt i32 %i.zo, 0
  br i1 %i.zp, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.zq = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.zr = fcmp ogt float %i.zq, 0.000000e+00
  %.sroa.speculated = select i1 %i.zr, float %i.zq, float 0.000000e+00 ; 2 uses
  %i.zs = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.zs, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.zt = fsub float 1.000000e+00, %.sroa.speculated
  %i.zu = insertelement <4 x float> poison, float %i.zt, i64 0
  %i.zv = shufflevector <4 x float> %i.zu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zw = fdiv <4 x float> %i.xd, %i.zv
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u, %bb.t
  %.sroa.0971.0 = phi <4 x float> [ %i.xd, %bb.t ], [ %i.zw, %bb.w ], [ %i.xd, %bb.u ], [ zeroinitializer, %bb.v ]
  %.sroa.0971.0.fr = freeze <4 x float> %.sroa.0971.0 ; 3 uses
  %i.zx = fcmp une <4 x float> %.sroa.0971.0.fr, zeroinitializer
  %i.zy = bitcast <4 x i1> %i.zx to i4
  %.not1280 = icmp eq i4 %i.zy, 0
  br i1 %.not1280, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726: ; preds = %bb.x
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mb, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !562
  %i.aab = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mc, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %i.wl, float %i.wm) ; 2 uses
  %.fca.0.extract.i730 = extractvalue { <2 x float>, float } %i.aab, 0 ; 2 uses
  %.fca.1.extract.i731 = extractvalue { <2 x float>, float } %i.aab, 1
  %i.aac = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.aad = load i8, ptr %i.aac, align 2, !tbaa !245, !range !11, !noundef !12
  %i.aae = trunc nuw i8 %i.aad to i1
  br i1 %i.aae, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726
  %.sroa.0101.0.copyload = load <2 x float>, ptr %i.mb, align 8 ; 2 uses
  %.sroa.2102.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i733 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i735 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 1
  %i.aaf = fmul float %i.wm, %.sroa.2102.0.copyload ; 2 uses
  %i.aag = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i735, float %i.wp, float %i.aaf)
  %i.aah = fneg float %i.aaf
  %i.aai = call noundef float @llvm.fma.f32(float %.sroa.2102.0.copyload, float %i.wm, float %i.aah)
  %i.aaj = fadd float %i.aag, %i.aai
  %i.aak = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i733, float %i.wu, float %i.aaj)
  %i.aal = fcmp ogt float %i.aak, 0.000000e+00
  %.v = select i1 %i.aal, i64 248, i64 240
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.aan = load i64, ptr %i.aam, align 8, !tbaa !177
  br label %bb.z

bb.z:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726, %bb.y
  %.sroa.17918.0 = phi i64 [ %i.aan, %bb.y ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726 ]
  %i.aao = and i32 %.sroa.16.0.copyload, 16       ; 2 uses
  %.not1205 = icmp eq i32 %i.aao, 0
  br i1 %.not1205, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.aaq = load i32, ptr %i.aap, align 8, !tbaa !564
  %i.aar = icmp ne i32 %i.aaq, 0
  %i.aas = zext i1 %i.aar to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.aat = phi i32 [ 1, %bb.z ], [ %i.aas, %bb.aa ]
  %.sroa.0905.sroa.0.0.copyload = load float, ptr %i.mc, align 8
  %.sroa.0905.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0905.sroa.2.0.copyload = load float, ptr %.sroa.0905.sroa.2.0..sroa_idx, align 4
  %.sroa.0905.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0905.sroa.3.0.copyload = load float, ptr %.sroa.0905.sroa.3.0..sroa_idx, align 8
  %.sroa.0905.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0905.sroa.4.0.copyload = load float, ptr %.sroa.0905.sroa.4.0..sroa_idx, align 4
  %.sroa.0905.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0905.sroa.5.0.copyload = load float, ptr %.sroa.0905.sroa.5.0..sroa_idx, align 8
  %.sroa.0905.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0905.sroa.6.0.copyload = load float, ptr %.sroa.0905.sroa.6.0..sroa_idx, align 4
  %.sroa.094.0.copyload = load <2 x float>, ptr %i.mb, align 8 ; 2 uses
  %.sroa.295.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !541 ; 31 uses
  %i.aaw = load i32, ptr %i.ox, align 8, !tbaa !558
  %i.aax = add nsw i32 %i.aaw, 1
  %i.aay = load i32, ptr %i.ui, align 4, !tbaa !568
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aav, i64 400
  %i.aba = atomicrmw add ptr %i.aaz, i32 1 monotonic, align 4
  %.sroa.0913.0.vec.extract = extractelement <2 x float> %.fca.0.extract.i730, i64 0
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aav, i64 24
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !222
  %i.abd = sext i32 %i.aba to i64                 ; 30 uses
  %i.abe = getelementptr inbounds [4 x i8], ptr %i.abc, i64 %i.abd
  store float %.sroa.0913.0.vec.extract, ptr %i.abe, align 4, !tbaa !155
  %.sroa.0913.4.vec.extract = extractelement <2 x float> %.fca.0.extract.i730, i64 1
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aav, i64 32
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !224
  %i.abh = getelementptr inbounds [4 x i8], ptr %i.abg, i64 %i.abd
end_hunk_14
begin_hunk_15_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_16MeasuredMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_IS2_EENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSL_E_clESL_:bb.a
  %i.ru = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !227
  %i.rw = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !157
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.rx, i64 %i.qp
  store float %i.rv, ptr %i.ry, align 4, !tbaa !155
  %i.rz = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !228
  %i.sb = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !158
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.qp
  store float %i.sa, ptr %i.sd, align 4, !tbaa !155
  %i.se = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.sf = load float, ptr %i.se, align 4, !tbaa !229
  %i.sg = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !159
  %i.si = getelementptr inbounds [4 x i8], ptr %i.sh, i64 %i.qp
  store float %i.sf, ptr %i.si, align 4, !tbaa !155
  %i.sj = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !230
  %i.sl = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !163
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.sm, i64 %i.qp
  store float %i.sk, ptr %i.sn, align 4, !tbaa !155
  %i.so = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.sp = load float, ptr %i.so, align 4, !tbaa !231
  %i.sq = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !164
  %i.ss = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.qp
  store float %i.sp, ptr %i.ss, align 4, !tbaa !155
  %i.st = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.su = load float, ptr %i.st, align 4, !tbaa !232
  %i.sv = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !233
  %i.sx = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.qp
  store float %i.su, ptr %i.sx, align 4, !tbaa !155
  %i.sy = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !234
  %i.ta = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !160
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.qp
  store float %i.sz, ptr %i.tc, align 4, !tbaa !155
  %i.td = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.te = load float, ptr %i.td, align 4, !tbaa !235
  %i.tf = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !161
  %i.th = getelementptr inbounds [4 x i8], ptr %i.tg, i64 %i.qp
  store float %i.te, ptr %i.th, align 4, !tbaa !155
  %i.ti = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !181
  %i.tk = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !162
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.qp
  store float %i.tj, ptr %i.tm, align 4, !tbaa !155
  %i.tn = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.to = load float, ptr %i.tn, align 4, !tbaa !234
  %i.tp = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !160
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.tq, i64 %i.qp
  store float %i.to, ptr %i.tr, align 4, !tbaa !155
  %i.ts = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !235
  %i.tu = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !161
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.tv, i64 %i.qp
  store float %i.tt, ptr %i.tw, align 4, !tbaa !155
  %i.tx = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !181
  %i.tz = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !162
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.qp
  store float %i.ty, ptr %i.ub, align 4, !tbaa !155
  %i.uc = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.ud = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !153
  %i.uf = getelementptr inbounds [16 x i8], ptr %i.ue, i64 %i.qp ; 2 uses
  %i.ug = load <4 x float>, ptr %i.uc, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.ug, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.ug, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.uf, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.01054.0.copyload = load <2 x float>, ptr %i.ma, align 4 ; 13 uses
  %.sroa.121061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121061.0.copyload = load float, ptr %.sroa.121061.0..sroa_idx, align 4 ; 8 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !568
  %i.uk = load ptr, ptr %i.uh, align 8, !tbaa !236, !noalias !1847
  %i.ul = sext i32 %i.uj to i64                   ; 2 uses
  %i.um = getelementptr inbounds [16 x i8], ptr %i.uk, i64 %i.ul ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.un = load <2 x float>, ptr %i.um, align 16, !noalias !1847
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !71, !noalias !1847
  %i.uo = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !237, !noalias !1847
  %i.uq = getelementptr inbounds [16 x i8], ptr %i.up, i64 %i.ul ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.uq, align 16, !noalias !1847 ; 2 uses
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %.sroa.05.0.copyload.i.i.i598 = load <2 x float>, ptr %i.no, align 8, !noalias !1848
  %.sroa.26.0.copyload.i.i.i600 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1848
  %i.ur = fmul <2 x float> %.sroa.01054.0.copyload, %.sroa.05.0.copyload.i.i.i598 ; 2 uses
  %shift1248 = shufflevector <2 x float> %i.ur, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1249 = fadd <2 x float> %i.ur, %shift1248
  %i.us = extractelement <2 x float> %foldExtExtBinop1249, i64 0
  %i.ut = fmul float %.sroa.121061.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.uu = fadd float %i.ut, %i.us                 ; 2 uses
  %i.uv = fcmp oeq float %i.uu, 0.000000e+00
  br i1 %i.uv, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %.sroa.2.0.copyload.i931.i.i1203 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !1847
  %.sroa.021.0.copyload.i.i.i586 = load <2 x float>, ptr %i.mk, align 8, !noalias !1848 ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = load <2 x float>, ptr %i.nn, align 4, !noalias !1848 ; 2 uses
  %i.uw = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !1848
  %i.ux = shufflevector <4 x float> %i.uw, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.uy = insertelement <2 x float> poison, float %.sroa.121061.0.copyload, i64 0
  %i.uz = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.va = fmul <2 x float> %i.uz, %i.ux
  %i.vb = shufflevector <2 x float> %.sroa.01054.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vc = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.vd = fmul <2 x float> %i.vb, %i.vc
  %i.ve = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.vf = fmul <2 x float> %.sroa.01054.0.copyload, %i.ve
  %i.vg = fadd <2 x float> %i.vd, %i.vf
  %i.vh = fadd <2 x float> %i.va, %i.vg
  %i.vi = load i64, ptr %20, align 8, !tbaa !212, !noalias !1848
  %i.vj = and i64 %i.vi, 144115188075855871
  %i.vk = inttoptr i64 %i.vj to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !1848
  call void @_ZNK4pbrt12MeasuredBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %8, ptr noundef nonnull align 8 dereferenceable(40) %i.vk, <2 x float> %i.vh, float %i.uu, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1203, i32 noundef 0, i32 noundef 3), !noalias !1848
  %i.vl = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.vm = load i8, ptr %i.vl, align 4, !tbaa !239, !range !11, !noalias !1848, !noundef !12
  %i.vn = trunc nuw i8 %i.vm to i1
  br i1 %i.vn, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.q
  %i.vo = load <4 x float>, ptr %8, align 16, !noalias !1848
  %.fr = freeze <4 x float> %i.vo                 ; 2 uses
  %i.vp = fcmp une <4 x float> %.fr, zeroinitializer
  %i.vq = bitcast <4 x i1> %i.vp to i4
  %i.vr = icmp eq i4 %i.vq, 0
  %i.vs = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.vt = load float, ptr %i.vs, align 4, !noalias !1848 ; 3 uses
  %i.vu = fcmp oeq float %i.vt, 0.000000e+00
  %or.cond.i605 = select i1 %i.vr, i1 true, i1 %i.vu
  br i1 %or.cond.i605, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.vv = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.vw = load float, ptr %i.vv, align 8, !tbaa !181, !noalias !1848 ; 3 uses
  %i.vx = fcmp oeq float %i.vw, 0.000000e+00
  br i1 %i.vx, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %bb.r

_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit: ; preds = %bb.q, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1848
  br label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread

bb.r:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  %i.vy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.vy, align 16, !noalias !1848 ; 4 uses
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %.sroa.037.0.copyload.i.i = load <2 x float>, ptr %i.mk, align 8, !tbaa !155, !noalias !1848 ; 3 uses
  %.sroa.238.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !tbaa !155, !noalias !1848 ; 2 uses
  %i.vz = fmul float %.sroa.041.0.vec.extract.i.i, %.sroa.238.0.copyload.i.i
  %.sroa.041.4.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %.sroa.027.0.copyload.i.i = load <2 x float>, ptr %i.nn, align 4, !tbaa !155, !noalias !1848 ; 3 uses
  %.sroa.228.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !155, !noalias !1848 ; 2 uses
  %i.wa = fmul float %.sroa.041.4.vec.extract.i.i, %.sroa.228.0.copyload.i.i
  %i.wb = fadd float %i.vz, %i.wa
  %.sroa.011.0.copyload.i.i = load <2 x float>, ptr %i.no, align 8, !tbaa !155, !noalias !1848 ; 3 uses
  %.sroa.212.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !155, !noalias !1848 ; 3 uses
  %i.wc = fmul float %i.vw, %.sroa.212.0.copyload.i.i
  %i.wd = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.we = fmul <2 x float> %i.wd, %.sroa.037.0.copyload.i.i
  %i.wf = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wg = fmul <2 x float> %i.wf, %.sroa.027.0.copyload.i.i
  %i.wh = fadd <2 x float> %i.we, %i.wg
  %i.wi = insertelement <2 x float> poison, float %i.vw, i64 0
  %i.wj = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wk = fmul <2 x float> %i.wj, %.sroa.011.0.copyload.i.i
  %i.wl = fadd <2 x float> %i.wh, %i.wk           ; 6 uses
  %i.wm = fadd float %i.wb, %i.wc                 ; 8 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 16 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 36
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.21.0.copyload = load i8, ptr %.sroa.21.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1848
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 200
  %29 = load <4 x float>, ptr %i.wn, align 8
  %i.wo = fmul float %.sroa.17.0, %i.wm           ; 2 uses
  %i.wp = extractelement <2 x float> %i.wl, i64 1 ; 3 uses
  %i.wq = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.wp, float %i.wo)
  %i.wr = fneg float %i.wo
  %i.ws = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.wm, float %i.wr)
  %i.wt = fadd float %i.wq, %i.ws
  %i.wu = extractelement <2 x float> %i.wl, i64 0 ; 3 uses
  %i.wv = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.wu, float %i.wt)
  %i.ww = call noundef float @llvm.fabs.f32(float %i.wv)
  %i.wx = fmul <4 x float> %.fr, %29
  %i.wy = insertelement <4 x float> poison, float %i.ww, i64 0
  %i.wz = shufflevector <4 x float> %i.wy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xa = fmul <4 x float> %i.wz, %i.wx
  %i.xb = insertelement <4 x float> poison, float %i.vt, i64 0
  %i.xc = shufflevector <4 x float> %i.xb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xd = fdiv <4 x float> %i.xa, %i.xc           ; 7 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0953.0.copyload = load <4 x float>, ptr %i.xe, align 8, !tbaa !71 ; 6 uses
  %i.xf = trunc nuw i8 %.sroa.21.0.copyload to i1
  br i1 %i.xf, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, label %bb.t

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640: ; preds = %bb.r
  %i.xg = fmul <2 x float> %.sroa.01054.0.copyload, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1251 = shufflevector <2 x float> %i.xg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1252 = fadd <2 x float> %i.xg, %shift1251
  %i.xh = extractelement <2 x float> %foldExtExtBinop1252, i64 0
  %i.xi = fmul float %.sroa.121061.0.copyload, %.sroa.212.0.copyload.i.i
  %i.xj = fadd float %i.xi, %i.xh                 ; 2 uses
  %i.xk = fcmp oeq float %i.xj, 0.000000e+00
  br i1 %i.xk, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640
  %i.xl = insertelement <2 x float> poison, float %i.wm, i64 0
  %i.xm = shufflevector <2 x float> %i.xl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xn = insertelement <2 x float> poison, float %.sroa.238.0.copyload.i.i, i64 0
  %i.xo = insertelement <2 x float> %i.xn, float %.sroa.228.0.copyload.i.i, i64 1 ; 2 uses
  %i.xp = fmul <2 x float> %i.xm, %i.xo
  %i.xq = shufflevector <2 x float> %.sroa.027.0.copyload.i.i, <2 x float> %.sroa.037.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xr = fmul <2 x float> %i.wl, %i.xq
  %i.xs = shufflevector <2 x float> %i.xr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xt = shufflevector <2 x float> %.sroa.037.0.copyload.i.i, <2 x float> %.sroa.027.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xu = fmul <2 x float> %i.wl, %i.xt
  %i.xv = fadd <2 x float> %i.xs, %i.xu
  %i.xw = fadd <2 x float> %i.xp, %i.xv
  %i.xx = fmul float %i.wm, %.sroa.212.0.copyload.i.i
  %i.xy = fmul <2 x float> %i.wl, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1254 = shufflevector <2 x float> %i.xy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1255 = fadd <2 x float> %i.xy, %shift1254
  %i.xz = extractelement <2 x float> %foldExtExtBinop1255, i64 0
  %i.ya = fadd float %i.xx, %i.xz
  %i.yb = fmul <2 x float> %i.uz, %i.xo
  %i.yc = fmul <2 x float> %.sroa.01054.0.copyload, %i.xt
  %i.yd = fmul <2 x float> %.sroa.01054.0.copyload, %i.xq
  %i.ye = shufflevector <2 x float> %i.yd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yf = fadd <2 x float> %i.ye, %i.yc
  %i.yg = fadd <2 x float> %i.yb, %i.yf
  %i.yh = load i64, ptr %20, align 8, !tbaa !212
  %i.yi = and i64 %i.yh, 144115188075855871
  %i.yj = inttoptr i64 %i.yi to ptr
  %i.yk = call noundef float @_ZNK4pbrt12MeasuredBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.yj, <2 x float> %i.yg, float %i.xj, <2 x float> %i.xw, float %i.ya, i32 noundef 0, i32 noundef 3)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, %bb.s
  %.0.i660.sink1227 = phi float [ %i.yk, %bb.s ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640 ], [ %i.vt, %bb.r ]
  %i.yl = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ym = insertelement <2 x float> poison, float %.0.i660.sink1227, i64 0
  %i.yn = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yo = fdiv <2 x float> %i.yl, %i.yn
  %i.yp = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.yq = fdiv <2 x float> %i.yp, %i.yn
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ys = load float, ptr %i.yr, align 8, !tbaa !566 ; 2 uses
  %i.yt = and i32 %.sroa.16.0.copyload, 2
  %.not1204 = icmp eq i32 %i.yt, 0
  %i.yu = fmul float %.sroa.20.0.copyload, %.sroa.20.0.copyload
  %i.yv = fmul float %i.yu, %i.ys
  %.0443 = select i1 %.not1204, float %i.ys, float %i.yv ; 5 uses
  %i.yw = extractelement <4 x float> %i.xd, i64 0
  %i.yx = fmul float %i.yw, %.0443
  %i.yy = extractelement <4 x float> %i.xd, i64 1
  %i.yz = fmul float %i.yy, %.0443
  %i.za = extractelement <4 x float> %i.xd, i64 2
  %i.zb = fmul float %i.za, %.0443
  %i.zc = extractelement <4 x float> %i.xd, i64 3
  %i.zd = fmul float %i.zc, %.0443
  %shift1257 = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1258 = fadd <4 x float> %.sroa.0953.0.copyload, %shift1257
  %shift1260 = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1261 = fadd <4 x float> %shift1260, %foldExtExtBinop1258
  %shift1263 = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1264 = fadd <4 x float> %shift1263, %foldExtExtBinop1261
  %i.ze = extractelement <4 x float> %foldExtExtBinop1264, i64 0
  %i.zf = fmul float %i.ze, 2.500000e-01          ; 4 uses
  %i.zg = fdiv float %i.yx, %i.zf                 ; 2 uses
  %i.zh = fdiv float %i.yz, %i.zf                 ; 2 uses
  %i.zi = fdiv float %i.zb, %i.zf                 ; 2 uses
  %i.zj = fdiv float %i.zd, %i.zf                 ; 2 uses
  %i.zk = fcmp olt float %i.zg, %i.zh
  %.sroa.speculated.i = select i1 %i.zk, float %i.zh, float %i.zg ; 2 uses
  %i.zl = fcmp olt float %.sroa.speculated.i, %i.zi
  %.sroa.speculated.1.i = select i1 %i.zl, float %i.zi, float %.sroa.speculated.i ; 2 uses
  %i.zm = fcmp olt float %.sroa.speculated.1.i, %i.zj
  %.sroa.speculated.2.i = select i1 %i.zm, float %i.zj, float %.sroa.speculated.1.i ; 2 uses
  %i.zn = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.zn, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.zo = load i32, ptr %i.ox, align 8, !tbaa !558
  %i.zp = icmp sgt i32 %i.zo, 0
  br i1 %i.zp, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.zq = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.zr = fcmp ogt float %i.zq, 0.000000e+00
  %.sroa.speculated = select i1 %i.zr, float %i.zq, float 0.000000e+00 ; 2 uses
  %i.zs = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.zs, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.zt = fsub float 1.000000e+00, %.sroa.speculated
  %i.zu = insertelement <4 x float> poison, float %i.zt, i64 0
  %i.zv = shufflevector <4 x float> %i.zu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zw = fdiv <4 x float> %i.xd, %i.zv
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u, %bb.t
  %.sroa.0971.0 = phi <4 x float> [ %i.xd, %bb.t ], [ %i.zw, %bb.w ], [ %i.xd, %bb.u ], [ zeroinitializer, %bb.v ]
  %.sroa.0971.0.fr = freeze <4 x float> %.sroa.0971.0 ; 3 uses
  %i.zx = fcmp une <4 x float> %.sroa.0971.0.fr, zeroinitializer
  %i.zy = bitcast <4 x i1> %i.zx to i4
  %.not1280 = icmp eq i4 %i.zy, 0
  br i1 %.not1280, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726: ; preds = %bb.x
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mb, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !562
  %i.aab = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mc, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %i.wl, float %i.wm) ; 2 uses
  %.fca.0.extract.i730 = extractvalue { <2 x float>, float } %i.aab, 0 ; 2 uses
  %.fca.1.extract.i731 = extractvalue { <2 x float>, float } %i.aab, 1
  %i.aac = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.aad = load i8, ptr %i.aac, align 2, !tbaa !245, !range !11, !noundef !12
  %i.aae = trunc nuw i8 %i.aad to i1
  br i1 %i.aae, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726
  %.sroa.0101.0.copyload = load <2 x float>, ptr %i.mb, align 8 ; 2 uses
  %.sroa.2102.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i733 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i735 = extractelement <2 x float> %.sroa.0101.0.copyload, i64 1
  %i.aaf = fmul float %i.wm, %.sroa.2102.0.copyload ; 2 uses
  %i.aag = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i735, float %i.wp, float %i.aaf)
  %i.aah = fneg float %i.aaf
  %i.aai = call noundef float @llvm.fma.f32(float %.sroa.2102.0.copyload, float %i.wm, float %i.aah)
  %i.aaj = fadd float %i.aag, %i.aai
  %i.aak = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i733, float %i.wu, float %i.aaj)
  %i.aal = fcmp ogt float %i.aak, 0.000000e+00
  %.v = select i1 %i.aal, i64 248, i64 240
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.aan = load i64, ptr %i.aam, align 8, !tbaa !177
  br label %bb.z

bb.z:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726, %bb.y
  %.sroa.17918.0 = phi i64 [ %i.aan, %bb.y ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit726 ]
  %i.aao = and i32 %.sroa.16.0.copyload, 16       ; 2 uses
  %.not1205 = icmp eq i32 %i.aao, 0
  br i1 %.not1205, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.aaq = load i32, ptr %i.aap, align 8, !tbaa !564
  %i.aar = icmp ne i32 %i.aaq, 0
  %i.aas = zext i1 %i.aar to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.aat = phi i32 [ 1, %bb.z ], [ %i.aas, %bb.aa ]
  %.sroa.0905.sroa.0.0.copyload = load float, ptr %i.mc, align 8
  %.sroa.0905.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0905.sroa.2.0.copyload = load float, ptr %.sroa.0905.sroa.2.0..sroa_idx, align 4
  %.sroa.0905.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0905.sroa.3.0.copyload = load float, ptr %.sroa.0905.sroa.3.0..sroa_idx, align 8
  %.sroa.0905.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0905.sroa.4.0.copyload = load float, ptr %.sroa.0905.sroa.4.0..sroa_idx, align 4
  %.sroa.0905.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0905.sroa.5.0.copyload = load float, ptr %.sroa.0905.sroa.5.0..sroa_idx, align 8
  %.sroa.0905.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0905.sroa.6.0.copyload = load float, ptr %.sroa.0905.sroa.6.0..sroa_idx, align 4
  %.sroa.094.0.copyload = load <2 x float>, ptr %i.mb, align 8 ; 2 uses
  %.sroa.295.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !544 ; 31 uses
  %i.aaw = load i32, ptr %i.ox, align 8, !tbaa !558
  %i.aax = add nsw i32 %i.aaw, 1
  %i.aay = load i32, ptr %i.ui, align 4, !tbaa !568
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aav, i64 400
  %i.aba = atomicrmw add ptr %i.aaz, i32 1 monotonic, align 4
  %.sroa.0913.0.vec.extract = extractelement <2 x float> %.fca.0.extract.i730, i64 0
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aav, i64 24
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !222
  %i.abd = sext i32 %i.aba to i64                 ; 30 uses
  %i.abe = getelementptr inbounds [4 x i8], ptr %i.abc, i64 %i.abd
  store float %.sroa.0913.0.vec.extract, ptr %i.abe, align 4, !tbaa !155
  %.sroa.0913.4.vec.extract = extractelement <2 x float> %.fca.0.extract.i730, i64 1
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aav, i64 32
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !224
  %i.abh = getelementptr inbounds [4 x i8], ptr %i.abg, i64 %i.abd
end_hunk_15
begin_hunk_16_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_18SubsurfaceMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_IS2_EENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSN_E_clESN_:bb.a
  %i.qv = getelementptr inbounds nuw i8, ptr %28, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qv, align 16, !tbaa !155
  %i.qw = getelementptr inbounds nuw i8, ptr %28, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qw, align 16, !tbaa !155
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.qo, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.nr, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.ou, align 4 ; 2 uses
  %i.qx = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qy = shufflevector <4 x float> %i.qx, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qz = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ra = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.rb = fmul <2 x float> %i.qz, %i.ra
  %i.rc = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.rd = fmul <2 x float> %.sroa.0162.0.copyload, %i.rc
  %i.re = fadd <2 x float> %i.rb, %i.rd
  %i.rf = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.rg = shufflevector <2 x float> %i.rf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rh = fmul <2 x float> %i.rg, %i.qy
  %i.ri = fadd <2 x float> %i.rh, %i.re
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.ov, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.rj = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1138 = shufflevector <2 x float> %i.rj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1139 = fadd <2 x float> %i.rj, %shift1138
  %i.rk = extractelement <2 x float> %foldExtExtBinop1139, i64 0
  %i.rl = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.rm = fadd float %i.rl, %i.rk
  %i.rn = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %26, <2 x float> %i.ri, float %i.rm, ptr nonnull %i.e, i64 16, ptr nonnull %28, i64 16) ; 2 uses
  %i.ro = extractvalue { <2 x float>, <2 x float> } %i.rn, 0
  %i.rp = extractvalue { <2 x float>, <2 x float> } %i.rn, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %29, ptr noundef nonnull align 8 dereferenceable(248) %27, <2 x float> %i.ro, <2 x float> %i.rp, ptr noundef nonnull align 4 dereferenceable(32) %24)
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !604
  %i.rs = getelementptr inbounds nuw i8, ptr %29, i64 88
  %i.rt = load i8, ptr %i.rs, align 4, !tbaa !219, !range !11, !noundef !12
  %i.ru = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !220
  %i.rw = sext i32 %i.rr to i64                   ; 20 uses
  %i.rx = getelementptr inbounds i8, ptr %i.rv, i64 %i.rw
  store i8 %i.rt, ptr %i.rx, align 1, !tbaa !10
  %i.ry = load float, ptr %29, align 4, !tbaa !221
  %i.rz = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !222
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.rw
  store float %i.ry, ptr %i.sb, align 4, !tbaa !155
  %i.sc = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !223
  %i.se = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !224
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.rw
  store float %i.sd, ptr %i.sg, align 4, !tbaa !155
  %i.sh = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.si = load float, ptr %i.sh, align 4, !tbaa !225
  %i.sj = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !226
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %i.rw
  store float %i.si, ptr %i.sl, align 4, !tbaa !155
  %i.sm = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !227
  %i.so = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !157
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.rw
  store float %i.sn, ptr %i.sq, align 4, !tbaa !155
  %i.sr = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !228
  %i.st = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !158
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rw
  store float %i.ss, ptr %i.sv, align 4, !tbaa !155
  %i.sw = getelementptr inbounds nuw i8, ptr %29, i64 20
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !229
  %i.sy = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !159
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.rw
  store float %i.sx, ptr %i.ta, align 4, !tbaa !155
  %i.tb = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !227
  %i.td = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !157
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.te, i64 %i.rw
  store float %i.tc, ptr %i.tf, align 4, !tbaa !155
  %i.tg = getelementptr inbounds nuw i8, ptr %29, i64 28
  %i.th = load float, ptr %i.tg, align 4, !tbaa !228
  %i.ti = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !158
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.rw
  store float %i.th, ptr %i.tk, align 4, !tbaa !155
  %i.tl = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !229
  %i.tn = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !159
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.rw
  store float %i.tm, ptr %i.tp, align 4, !tbaa !155
  %i.tq = getelementptr inbounds nuw i8, ptr %29, i64 36
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !230
  %i.ts = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !163
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.rw
  store float %i.tr, ptr %i.tu, align 4, !tbaa !155
  %i.tv = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !231
  %i.tx = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !164
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %i.rw
  store float %i.tw, ptr %i.tz, align 4, !tbaa !155
  %i.ua = getelementptr inbounds nuw i8, ptr %29, i64 44
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !232
  %i.uc = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !233
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.rw
  store float %i.ub, ptr %i.ue, align 4, !tbaa !155
  %i.uf = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !234
  %i.uh = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !160
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ui, i64 %i.rw
  store float %i.ug, ptr %i.uj, align 4, !tbaa !155
  %i.uk = getelementptr inbounds nuw i8, ptr %29, i64 52
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !235
  %i.um = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !161
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.rw
  store float %i.ul, ptr %i.uo, align 4, !tbaa !155
  %i.up = getelementptr inbounds nuw i8, ptr %29, i64 56
  %i.uq = load float, ptr %i.up, align 4, !tbaa !181
  %i.ur = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !162
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.rw
  store float %i.uq, ptr %i.ut, align 4, !tbaa !155
  %i.uu = getelementptr inbounds nuw i8, ptr %29, i64 60
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !234
  %i.uw = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !160
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.rw
  store float %i.uv, ptr %i.uy, align 4, !tbaa !155
  %i.uz = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.va = load float, ptr %i.uz, align 4, !tbaa !235
  %i.vb = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !161
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.vc, i64 %i.rw
  store float %i.va, ptr %i.vd, align 4, !tbaa !155
  %i.ve = getelementptr inbounds nuw i8, ptr %29, i64 68
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !181
  %i.vg = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !162
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.rw
  store float %i.vf, ptr %i.vi, align 4, !tbaa !155
  %i.vj = getelementptr inbounds nuw i8, ptr %29, i64 72
  %i.vk = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !153
  %i.vm = getelementptr inbounds [16 x i8], ptr %i.vl, i64 %i.rw ; 2 uses
  %i.vn = load <4 x float>, ptr %i.vj, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i589 = shufflevector <4 x float> %i.vn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.vn, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i589, ptr %i.vm, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.01003.0.copyload = load <2 x float>, ptr %i.mf, align 4 ; 12 uses
  %.sroa.121010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121010.0.copyload = load float, ptr %.sroa.121010.0..sroa_idx, align 4 ; 9 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 4 uses
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !604
  %i.vr = load ptr, ptr %i.vo, align 8, !tbaa !236, !noalias !1898
  %i.vs = sext i32 %i.vq to i64                   ; 2 uses
  %i.vt = getelementptr inbounds [16 x i8], ptr %i.vr, i64 %i.vs ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i592 = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.vu = load <2 x float>, ptr %i.vt, align 16, !noalias !1898
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i592, align 8, !tbaa !71, !noalias !1898
  %i.vv = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !237, !noalias !1898
  %i.vx = getelementptr inbounds [16 x i8], ptr %i.vw, i64 %i.vs ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vx, align 16, !noalias !1898 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %.sroa.2.0.copyload.i931.i.i1102 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !1898
  %.sroa.01.0.vec.extract.i.i593 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i594 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_14DielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %30, ptr noundef nonnull align 8 dereferenceable(44) %26, <2 x float> %.sroa.01003.0.copyload, float %.sroa.121010.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i593, <2 x float> %.sroa.2.0.copyload.i931.i.i1102, i32 noundef 0, i32 noundef 3)
  %i.vy = getelementptr inbounds nuw i8, ptr %30, i64 44 ; 3 uses
  %i.vz = load i8, ptr %i.vy, align 4, !tbaa !239, !range !11, !noundef !12
  %i.wa = trunc nuw i8 %i.vz to i1
  br i1 %i.wa, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.wb = getelementptr inbounds nuw i8, ptr %30, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.wb, align 16 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 200
  %36 = load <4 x float>, ptr %i.wc, align 8
  %.sroa.04.0.vec.extract.i.i602 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.04.4.vec.extract.i.i604 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.wd = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.we = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i578, float %.sroa.04.4.vec.extract.i.i604, float %i.wd)
  %i.wf = fneg float %i.wd
  %i.wg = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.wf)
  %i.wh = fadd float %i.we, %i.wg
  %i.wi = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i577, float %.sroa.04.0.vec.extract.i.i602, float %i.wh)
  %i.wj = call noundef float @llvm.fabs.f32(float %i.wi)
  %i.wk = getelementptr inbounds nuw i8, ptr %30, i64 28
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !242 ; 2 uses
  %i.wm = load <4 x float>, ptr %30, align 16, !tbaa !155
  %i.wn = fmul <4 x float> %36, %i.wm
  %i.wo = insertelement <4 x float> poison, float %i.wj, i64 0
  %i.wp = shufflevector <4 x float> %i.wo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wq = fmul <4 x float> %i.wn, %i.wp
  %i.wr = insertelement <4 x float> poison, float %i.wl, i64 0
  %i.ws = shufflevector <4 x float> %i.wr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wt = fdiv <4 x float> %i.wq, %i.ws           ; 7 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0941.0.copyload = load <4 x float>, ptr %i.wu, align 8, !tbaa !71 ; 9 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %30, i64 40
  %i.ww = load i8, ptr %i.wv, align 8, !tbaa !243, !range !11, !noundef !12
  %i.wx = trunc nuw i8 %i.ww to i1
  br i1 %i.wx, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit629, label %.thread

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit629: ; preds = %bb.t
  %.sroa.05.0.copyload.i.i.i632 = load <2 x float>, ptr %i.ov, align 8 ; 3 uses
  %.sroa.26.0.copyload.i.i.i634 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.wy = fmul <2 x float> %.sroa.01003.0.copyload, %.sroa.05.0.copyload.i.i.i632 ; 2 uses
  %shift1141 = shufflevector <2 x float> %i.wy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1142 = fadd <2 x float> %i.wy, %shift1141
  %i.wz = extractelement <2 x float> %foldExtExtBinop1142, i64 0
  %i.xa = fmul float %.sroa.121010.0.copyload, %.sroa.26.0.copyload.i.i.i634
  %i.xb = fadd float %i.xa, %i.wz                 ; 2 uses
  %i.xc = fcmp oeq float %i.xb, 0.000000e+00
  br i1 %i.xc, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit629
  %i.xd = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.xe = shufflevector <4 x float> %i.xd, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.021.0.copyload.i.i.i639 = load <2 x float>, ptr %i.nr, align 8 ; 2 uses
  %.sroa.214.0.copyload.i.i.i643 = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %.sroa.013.0.copyload.i.i.i644 = load <2 x float>, ptr %i.ou, align 4 ; 2 uses
  %i.xf = insertelement <2 x float> poison, float %.sroa.6.0.copyload, i64 0
  %i.xg = shufflevector <2 x float> %i.xf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xh = insertelement <2 x float> %i.xe, float %.sroa.214.0.copyload.i.i.i643, i64 1 ; 2 uses
  %i.xi = fmul <2 x float> %i.xg, %i.xh
  %i.xj = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i644, <2 x float> %.sroa.021.0.copyload.i.i.i639, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xk = fmul <2 x float> %.sroa.0151.0.copyload, %i.xj
  %i.xl = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xm = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i639, <2 x float> %.sroa.013.0.copyload.i.i.i644, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xn = fmul <2 x float> %.sroa.0151.0.copyload, %i.xm
  %i.xo = fadd <2 x float> %i.xl, %i.xn
  %i.xp = fadd <2 x float> %i.xi, %i.xo
  %i.xq = fmul float %.sroa.6.0.copyload, %.sroa.26.0.copyload.i.i.i634
  %foldExtExtBinop1144 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i632
  %foldExtExtBinop1146 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i632
  %shift1148 = shufflevector <2 x float> %foldExtExtBinop1146, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1149 = fadd <2 x float> %foldExtExtBinop1144, %shift1148
  %i.xr = extractelement <2 x float> %foldExtExtBinop1149, i64 0
  %i.xs = fadd float %i.xq, %i.xr
  %i.xt = insertelement <2 x float> poison, float %.sroa.121010.0.copyload, i64 0
  %i.xu = shufflevector <2 x float> %i.xt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xv = fmul <2 x float> %i.xu, %i.xh
  %i.xw = fmul <2 x float> %.sroa.01003.0.copyload, %i.xj
  %i.xx = shufflevector <2 x float> %i.xw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xy = fmul <2 x float> %.sroa.01003.0.copyload, %i.xm
  %i.xz = fadd <2 x float> %i.xx, %i.xy
  %i.ya = fadd <2 x float> %i.xv, %i.xz
  %i.yb = load i64, ptr %26, align 8, !tbaa !212
  %i.yc = and i64 %i.yb, 144115188075855871
  %i.yd = inttoptr i64 %i.yc to ptr
  %i.ye = call noundef float @_ZNK4pbrt14DielectricBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(12) %i.yd, <2 x float> %i.ya, float %i.xb, <2 x float> %i.xp, float %i.xs, i32 noundef 0, i32 noundef 3)
  %.pre.pre = load i8, ptr %i.vy, align 4, !tbaa !239, !range !11
  %i.yf = trunc nuw i8 %.pre.pre to i1
  br label %bb.v

.thread:                                          ; preds = %bb.t
  %i.yg = insertelement <2 x float> poison, float %i.wl, i64 0
  %i.yh = shufflevector <2 x float> %i.yg, <2 x float> poison, <4 x i32> zeroinitializer
  br label %bb.w

bb.v:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit629, %bb.u
  %.pre = phi i1 [ true, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit629 ], [ %i.yf, %bb.u ]
  %.0.i649 = phi float [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit629 ], [ %i.ye, %bb.u ]
  %i.yi = insertelement <2 x float> poison, float %.0.i649, i64 0
  %i.yj = shufflevector <2 x float> %i.yi, <2 x float> poison, <4 x i32> zeroinitializer
  br i1 %.pre, label %bb.w, label %.noexc679

.noexc679:                                        ; preds = %bb.v
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
  unreachable

bb.w:                                             ; preds = %.thread, %bb.v
  %.pn = phi <4 x float> [ %i.yh, %.thread ], [ %i.yj, %bb.v ]
  %.sroa.0933.01118 = fdiv <4 x float> %.sroa.0941.0.copyload, %.pn ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.yl = load float, ptr %i.yk, align 8, !tbaa !602 ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 2 uses
  %i.yn = load i32, ptr %i.ym, align 16, !tbaa !244
  %i.yo = and i32 %i.yn, 2
  %.not1103 = icmp eq i32 %i.yo, 0                ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %30, i64 36
  %i.yq = load float, ptr %i.yp, align 4          ; 2 uses
  %i.yr = fmul float %i.yq, %i.yq
  %i.ys = fmul float %i.yl, %i.yr                 ; 2 uses
  %.0447 = select i1 %.not1103, float %i.yl, float %i.ys ; 4 uses
  %i.yt = extractelement <4 x float> %i.wt, i64 0
  %i.yu = fmul float %i.yt, %.0447
  %i.yv = extractelement <4 x float> %i.wt, i64 1
  %i.yw = fmul float %i.yv, %.0447
  %i.yx = extractelement <4 x float> %i.wt, i64 2
  %i.yy = fmul float %i.yx, %.0447
  %i.yz = extractelement <4 x float> %i.wt, i64 3
  %i.za = fmul float %i.yz, %.0447
  %shift1151 = shufflevector <4 x float> %.sroa.0941.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1152 = fadd <4 x float> %.sroa.0941.0.copyload, %shift1151
  %shift1154 = shufflevector <4 x float> %.sroa.0941.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1155 = fadd <4 x float> %shift1154, %foldExtExtBinop1152
  %shift1157 = shufflevector <4 x float> %.sroa.0941.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1158 = fadd <4 x float> %shift1157, %foldExtExtBinop1155
  %i.zb = extractelement <4 x float> %foldExtExtBinop1158, i64 0
  %i.zc = fmul float %i.zb, 2.500000e-01          ; 4 uses
  %i.zd = fdiv float %i.yu, %i.zc                 ; 2 uses
  %i.ze = fdiv float %i.yw, %i.zc                 ; 2 uses
  %i.zf = fdiv float %i.yy, %i.zc                 ; 2 uses
  %i.zg = fdiv float %i.za, %i.zc                 ; 2 uses
  %i.zh = fcmp olt float %i.zd, %i.ze
  %.sroa.speculated.i = select i1 %i.zh, float %i.ze, float %i.zd ; 2 uses
  %i.zi = fcmp olt float %.sroa.speculated.i, %i.zf
  %.sroa.speculated.1.i = select i1 %i.zi, float %i.zf, float %.sroa.speculated.i ; 2 uses
  %i.zj = fcmp olt float %.sroa.speculated.1.i, %i.zg
  %.sroa.speculated.2.i = select i1 %i.zj, float %i.zg, float %.sroa.speculated.1.i ; 2 uses
  %i.zk = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.zk, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.zl = load i32, ptr %i.qe, align 8, !tbaa !594
  %i.zm = icmp sgt i32 %i.zl, 0
  br i1 %i.zm, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.zn = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.zo = fcmp ogt float %i.zn, 0.000000e+00
  %.sroa.speculated = select i1 %i.zo, float %i.zn, float 0.000000e+00 ; 2 uses
  %i.zp = fcmp olt float %.sroa.01.4.vec.extract.i.i594, %.sroa.speculated
  br i1 %i.zp, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.zq = fsub float 1.000000e+00, %.sroa.speculated
  %i.zr = insertelement <4 x float> poison, float %i.zq, i64 0
  %i.zs = shufflevector <4 x float> %i.zr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zt = fdiv <4 x float> %i.wt, %i.zs
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x, %bb.w
  %.sroa.0959.0 = phi <4 x float> [ %i.wt, %bb.w ], [ %i.zt, %bb.z ], [ %i.wt, %bb.x ], [ zeroinitializer, %bb.y ]
  %.sroa.0959.0.fr = freeze <4 x float> %.sroa.0959.0 ; 5 uses
  %i.zu = fcmp une <4 x float> %.sroa.0959.0.fr, zeroinitializer
  %i.zv = bitcast <4 x i1> %i.zu to i4
  %.not1170 = icmp eq i4 %i.zv, 0
  br i1 %.not1170, label %bb.ai, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit715

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit715: ; preds = %bb.aa
  br i1 %.not1103, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit715
  %i.zw = getelementptr inbounds nuw i8, ptr %i.g, i64 600
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !610 ; 28 uses
  %i.zy = load ptr, ptr %1, align 8, !tbaa !592
  %i.zz = ptrtoint ptr %i.zy to i64
  %i.aaa = or i64 %i.zz, 1297036692682702848
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, ptr noundef nonnull align 16 dereferenceable(32) %24, i64 32, i1 false)
  %.sroa.0959.0.vec.extract = shufflevector <4 x float> %.sroa.0959.0.fr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.0959.8.vec.extract = shufflevector <4 x float> %.sroa.0959.0.fr, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.sroa.0941.0.vec.extract = shufflevector <4 x float> %.sroa.0941.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.0941.8.vec.extract = shufflevector <4 x float> %.sroa.0941.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.sroa.0912.sroa.0.0.copyload = load float, ptr %i.mh, align 8
  %.sroa.0912.sroa.2.0.copyload = load float, ptr %.sroa.0.sroa.2.0..sroa_idx.i560, align 4
  %i.aab = fadd float %.sroa.0912.sroa.0.0.copyload, %.sroa.0912.sroa.2.0.copyload
  %i.aac = fmul float %i.aab, 5.000000e-01
  %i.aad = load <2 x float>, ptr %.sroa.0.sroa.4.0..sroa_idx.i564, align 4
  %i.aae = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %.sroa.0.sroa.3.0..sroa_idx.i562, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.aaf = shufflevector <4 x float> %i.aae, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.aag = fadd <2 x float> %i.aad, %i.aaf
  %i.aah = fmul <2 x float> %i.aag, splat (float 5.000000e-01) ; 2 uses
  %.sroa.0911.sroa.0.0.copyload = load float, ptr %i.mg, align 8
  %.sroa.0911.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0911.sroa.2.0.copyload = load float, ptr %.sroa.0911.sroa.2.0..sroa_idx, align 4
  %.sroa.0911.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0911.sroa.3.0.copyload = load float, ptr %.sroa.0911.sroa.3.0..sroa_idx, align 8
  %.sroa.0909.sroa.0.0.copyload = load float, ptr %18, align 8
  %.sroa.0909.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 4
  %.sroa.0909.sroa.2.0.copyload = load float, ptr %.sroa.0909.sroa.2.0..sroa_idx, align 4
  %.sroa.0909.sroa.3.0.copyload = load float, ptr %.sroa.2182.0..sroa_idx, align 8
  %i.aai = load i64, ptr %i.mk, align 8           ; 2 uses
  %.sroa.0908.sroa.0.0.extract.trunc = trunc i64 %i.aai to i32
  %.sroa.0908.sroa.2.0.extract.shift = lshr i64 %i.aai, 32
  %.sroa.0908.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.0908.sroa.2.0.extract.shift to i32
  %i.aaj = load i32, ptr %i.qe, align 8, !tbaa !594
  %i.aak = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.aal = load i64, ptr %i.aak, align 8, !tbaa !177
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.aan = load i64, ptr %i.aam, align 8, !tbaa !177
  %i.aao = load i32, ptr %i.vp, align 4, !tbaa !604
  %i.aap = getelementptr inbounds nuw i8, ptr %i.zx, i64 336
  %i.aaq = atomicrmw add ptr %i.aap, i32 1 monotonic, align 4
  %i.aar = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !613
  %i.aat = sext i32 %i.aaq to i64                 ; 27 uses
end_hunk_16
begin_hunk_17_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_18SubsurfaceMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_IS2_EENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSN_E_clESN_:bb.a
  %i.qv = getelementptr inbounds nuw i8, ptr %28, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qv, align 16, !tbaa !155
  %i.qw = getelementptr inbounds nuw i8, ptr %28, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qw, align 16, !tbaa !155
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.qo, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.nr, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.ou, align 4 ; 2 uses
  %i.qx = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qy = shufflevector <4 x float> %i.qx, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qz = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ra = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.rb = fmul <2 x float> %i.qz, %i.ra
  %i.rc = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.rd = fmul <2 x float> %.sroa.0162.0.copyload, %i.rc
  %i.re = fadd <2 x float> %i.rb, %i.rd
  %i.rf = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.rg = shufflevector <2 x float> %i.rf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rh = fmul <2 x float> %i.rg, %i.qy
  %i.ri = fadd <2 x float> %i.rh, %i.re
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.ov, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.rj = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1138 = shufflevector <2 x float> %i.rj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1139 = fadd <2 x float> %i.rj, %shift1138
  %i.rk = extractelement <2 x float> %foldExtExtBinop1139, i64 0
  %i.rl = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.rm = fadd float %i.rl, %i.rk
  %i.rn = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %26, <2 x float> %i.ri, float %i.rm, ptr nonnull %i.e, i64 16, ptr nonnull %28, i64 16) ; 2 uses
  %i.ro = extractvalue { <2 x float>, <2 x float> } %i.rn, 0
  %i.rp = extractvalue { <2 x float>, <2 x float> } %i.rn, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %29, ptr noundef nonnull align 8 dereferenceable(248) %27, <2 x float> %i.ro, <2 x float> %i.rp, ptr noundef nonnull align 4 dereferenceable(32) %24)
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !604
  %i.rs = getelementptr inbounds nuw i8, ptr %29, i64 88
  %i.rt = load i8, ptr %i.rs, align 4, !tbaa !219, !range !11, !noundef !12
  %i.ru = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !220
  %i.rw = sext i32 %i.rr to i64                   ; 20 uses
  %i.rx = getelementptr inbounds i8, ptr %i.rv, i64 %i.rw
  store i8 %i.rt, ptr %i.rx, align 1, !tbaa !10
  %i.ry = load float, ptr %29, align 4, !tbaa !221
  %i.rz = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !222
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.rw
  store float %i.ry, ptr %i.sb, align 4, !tbaa !155
  %i.sc = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !223
  %i.se = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !224
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.rw
  store float %i.sd, ptr %i.sg, align 4, !tbaa !155
  %i.sh = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.si = load float, ptr %i.sh, align 4, !tbaa !225
  %i.sj = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !226
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %i.rw
  store float %i.si, ptr %i.sl, align 4, !tbaa !155
  %i.sm = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !227
  %i.so = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !157
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.rw
  store float %i.sn, ptr %i.sq, align 4, !tbaa !155
  %i.sr = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !228
  %i.st = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !158
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rw
  store float %i.ss, ptr %i.sv, align 4, !tbaa !155
  %i.sw = getelementptr inbounds nuw i8, ptr %29, i64 20
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !229
  %i.sy = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !159
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.rw
  store float %i.sx, ptr %i.ta, align 4, !tbaa !155
  %i.tb = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !227
  %i.td = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !157
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.te, i64 %i.rw
  store float %i.tc, ptr %i.tf, align 4, !tbaa !155
  %i.tg = getelementptr inbounds nuw i8, ptr %29, i64 28
  %i.th = load float, ptr %i.tg, align 4, !tbaa !228
  %i.ti = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !158
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.rw
  store float %i.th, ptr %i.tk, align 4, !tbaa !155
  %i.tl = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !229
  %i.tn = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !159
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.rw
  store float %i.tm, ptr %i.tp, align 4, !tbaa !155
  %i.tq = getelementptr inbounds nuw i8, ptr %29, i64 36
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !230
  %i.ts = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !163
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.rw
  store float %i.tr, ptr %i.tu, align 4, !tbaa !155
  %i.tv = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !231
  %i.tx = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !164
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %i.rw
  store float %i.tw, ptr %i.tz, align 4, !tbaa !155
  %i.ua = getelementptr inbounds nuw i8, ptr %29, i64 44
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !232
  %i.uc = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !233
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.rw
  store float %i.ub, ptr %i.ue, align 4, !tbaa !155
  %i.uf = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !234
  %i.uh = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !160
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ui, i64 %i.rw
  store float %i.ug, ptr %i.uj, align 4, !tbaa !155
  %i.uk = getelementptr inbounds nuw i8, ptr %29, i64 52
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !235
  %i.um = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !161
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.rw
  store float %i.ul, ptr %i.uo, align 4, !tbaa !155
  %i.up = getelementptr inbounds nuw i8, ptr %29, i64 56
  %i.uq = load float, ptr %i.up, align 4, !tbaa !181
  %i.ur = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !162
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.rw
  store float %i.uq, ptr %i.ut, align 4, !tbaa !155
  %i.uu = getelementptr inbounds nuw i8, ptr %29, i64 60
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !234
  %i.uw = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !160
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.rw
  store float %i.uv, ptr %i.uy, align 4, !tbaa !155
  %i.uz = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.va = load float, ptr %i.uz, align 4, !tbaa !235
  %i.vb = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !161
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.vc, i64 %i.rw
  store float %i.va, ptr %i.vd, align 4, !tbaa !155
  %i.ve = getelementptr inbounds nuw i8, ptr %29, i64 68
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !181
  %i.vg = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !162
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.rw
  store float %i.vf, ptr %i.vi, align 4, !tbaa !155
  %i.vj = getelementptr inbounds nuw i8, ptr %29, i64 72
  %i.vk = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !153
  %i.vm = getelementptr inbounds [16 x i8], ptr %i.vl, i64 %i.rw ; 2 uses
  %i.vn = load <4 x float>, ptr %i.vj, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i589 = shufflevector <4 x float> %i.vn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.vn, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i589, ptr %i.vm, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.01003.0.copyload = load <2 x float>, ptr %i.mf, align 4 ; 12 uses
  %.sroa.121010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121010.0.copyload = load float, ptr %.sroa.121010.0..sroa_idx, align 4 ; 9 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 4 uses
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !604
  %i.vr = load ptr, ptr %i.vo, align 8, !tbaa !236, !noalias !1942
  %i.vs = sext i32 %i.vq to i64                   ; 2 uses
  %i.vt = getelementptr inbounds [16 x i8], ptr %i.vr, i64 %i.vs ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i592 = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.vu = load <2 x float>, ptr %i.vt, align 16, !noalias !1942
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i592, align 8, !tbaa !71, !noalias !1942
  %i.vv = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !237, !noalias !1942
  %i.vx = getelementptr inbounds [16 x i8], ptr %i.vw, i64 %i.vs ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vx, align 16, !noalias !1942 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %.sroa.2.0.copyload.i931.i.i1102 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !71, !noalias !1942
  %.sroa.01.0.vec.extract.i.i593 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i594 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_14DielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %30, ptr noundef nonnull align 8 dereferenceable(44) %26, <2 x float> %.sroa.01003.0.copyload, float %.sroa.121010.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i593, <2 x float> %.sroa.2.0.copyload.i931.i.i1102, i32 noundef 0, i32 noundef 3)
  %i.vy = getelementptr inbounds nuw i8, ptr %30, i64 44 ; 3 uses
  %i.vz = load i8, ptr %i.vy, align 4, !tbaa !239, !range !11, !noundef !12
  %i.wa = trunc nuw i8 %i.vz to i1
  br i1 %i.wa, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.wb = getelementptr inbounds nuw i8, ptr %30, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.wb, align 16 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 200
  %36 = load <4 x float>, ptr %i.wc, align 8
  %.sroa.04.0.vec.extract.i.i602 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.04.4.vec.extract.i.i604 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.wd = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.we = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i578, float %.sroa.04.4.vec.extract.i.i604, float %i.wd)
  %i.wf = fneg float %i.wd
  %i.wg = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.wf)
  %i.wh = fadd float %i.we, %i.wg
  %i.wi = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i577, float %.sroa.04.0.vec.extract.i.i602, float %i.wh)
  %i.wj = call noundef float @llvm.fabs.f32(float %i.wi)
  %i.wk = getelementptr inbounds nuw i8, ptr %30, i64 28
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !242 ; 2 uses
  %i.wm = load <4 x float>, ptr %30, align 16, !tbaa !155
  %i.wn = fmul <4 x float> %36, %i.wm
  %i.wo = insertelement <4 x float> poison, float %i.wj, i64 0
  %i.wp = shufflevector <4 x float> %i.wo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wq = fmul <4 x float> %i.wn, %i.wp
  %i.wr = insertelement <4 x float> poison, float %i.wl, i64 0
  %i.ws = shufflevector <4 x float> %i.wr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wt = fdiv <4 x float> %i.wq, %i.ws           ; 7 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0941.0.copyload = load <4 x float>, ptr %i.wu, align 8, !tbaa !71 ; 9 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %30, i64 40
  %i.ww = load i8, ptr %i.wv, align 8, !tbaa !243, !range !11, !noundef !12
  %i.wx = trunc nuw i8 %i.ww to i1
  br i1 %i.wx, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit629, label %.thread

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit629: ; preds = %bb.t
  %.sroa.05.0.copyload.i.i.i632 = load <2 x float>, ptr %i.ov, align 8 ; 3 uses
  %.sroa.26.0.copyload.i.i.i634 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.wy = fmul <2 x float> %.sroa.01003.0.copyload, %.sroa.05.0.copyload.i.i.i632 ; 2 uses
  %shift1141 = shufflevector <2 x float> %i.wy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1142 = fadd <2 x float> %i.wy, %shift1141
  %i.wz = extractelement <2 x float> %foldExtExtBinop1142, i64 0
  %i.xa = fmul float %.sroa.121010.0.copyload, %.sroa.26.0.copyload.i.i.i634
  %i.xb = fadd float %i.xa, %i.wz                 ; 2 uses
  %i.xc = fcmp oeq float %i.xb, 0.000000e+00
  br i1 %i.xc, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit629
  %i.xd = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.xe = shufflevector <4 x float> %i.xd, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.021.0.copyload.i.i.i639 = load <2 x float>, ptr %i.nr, align 8 ; 2 uses
  %.sroa.214.0.copyload.i.i.i643 = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %.sroa.013.0.copyload.i.i.i644 = load <2 x float>, ptr %i.ou, align 4 ; 2 uses
  %i.xf = insertelement <2 x float> poison, float %.sroa.6.0.copyload, i64 0
  %i.xg = shufflevector <2 x float> %i.xf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xh = insertelement <2 x float> %i.xe, float %.sroa.214.0.copyload.i.i.i643, i64 1 ; 2 uses
  %i.xi = fmul <2 x float> %i.xg, %i.xh
  %i.xj = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i644, <2 x float> %.sroa.021.0.copyload.i.i.i639, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xk = fmul <2 x float> %.sroa.0151.0.copyload, %i.xj
  %i.xl = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xm = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i639, <2 x float> %.sroa.013.0.copyload.i.i.i644, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xn = fmul <2 x float> %.sroa.0151.0.copyload, %i.xm
  %i.xo = fadd <2 x float> %i.xl, %i.xn
  %i.xp = fadd <2 x float> %i.xi, %i.xo
  %i.xq = fmul float %.sroa.6.0.copyload, %.sroa.26.0.copyload.i.i.i634
  %foldExtExtBinop1144 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i632
  %foldExtExtBinop1146 = fmul <2 x float> %.sroa.0151.0.copyload, %.sroa.05.0.copyload.i.i.i632
  %shift1148 = shufflevector <2 x float> %foldExtExtBinop1146, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1149 = fadd <2 x float> %foldExtExtBinop1144, %shift1148
  %i.xr = extractelement <2 x float> %foldExtExtBinop1149, i64 0
  %i.xs = fadd float %i.xq, %i.xr
  %i.xt = insertelement <2 x float> poison, float %.sroa.121010.0.copyload, i64 0
  %i.xu = shufflevector <2 x float> %i.xt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xv = fmul <2 x float> %i.xu, %i.xh
  %i.xw = fmul <2 x float> %.sroa.01003.0.copyload, %i.xj
  %i.xx = shufflevector <2 x float> %i.xw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xy = fmul <2 x float> %.sroa.01003.0.copyload, %i.xm
  %i.xz = fadd <2 x float> %i.xx, %i.xy
  %i.ya = fadd <2 x float> %i.xv, %i.xz
  %i.yb = load i64, ptr %26, align 8, !tbaa !212
  %i.yc = and i64 %i.yb, 144115188075855871
  %i.yd = inttoptr i64 %i.yc to ptr
  %i.ye = call noundef float @_ZNK4pbrt14DielectricBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(12) %i.yd, <2 x float> %i.ya, float %i.xb, <2 x float> %i.xp, float %i.xs, i32 noundef 0, i32 noundef 3)
  %.pre.pre = load i8, ptr %i.vy, align 4, !tbaa !239, !range !11
  %i.yf = trunc nuw i8 %.pre.pre to i1
  br label %bb.v

.thread:                                          ; preds = %bb.t
  %i.yg = insertelement <2 x float> poison, float %i.wl, i64 0
  %i.yh = shufflevector <2 x float> %i.yg, <2 x float> poison, <4 x i32> zeroinitializer
  br label %bb.w

bb.v:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit629, %bb.u
  %.pre = phi i1 [ true, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit629 ], [ %i.yf, %bb.u ]
  %.0.i649 = phi float [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit629 ], [ %i.ye, %bb.u ]
  %i.yi = insertelement <2 x float> poison, float %.0.i649, i64 0
  %i.yj = shufflevector <2 x float> %i.yi, <2 x float> poison, <4 x i32> zeroinitializer
  br i1 %.pre, label %bb.w, label %.noexc679

.noexc679:                                        ; preds = %bb.v
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 235, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(4) @.str.39) #25
  unreachable

bb.w:                                             ; preds = %.thread, %bb.v
  %.pn = phi <4 x float> [ %i.yh, %.thread ], [ %i.yj, %bb.v ]
  %.sroa.0933.01118 = fdiv <4 x float> %.sroa.0941.0.copyload, %.pn ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.yl = load float, ptr %i.yk, align 8, !tbaa !602 ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 2 uses
  %i.yn = load i32, ptr %i.ym, align 16, !tbaa !244
  %i.yo = and i32 %i.yn, 2
  %.not1103 = icmp eq i32 %i.yo, 0                ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %30, i64 36
  %i.yq = load float, ptr %i.yp, align 4          ; 2 uses
  %i.yr = fmul float %i.yq, %i.yq
  %i.ys = fmul float %i.yl, %i.yr                 ; 2 uses
  %.0447 = select i1 %.not1103, float %i.yl, float %i.ys ; 4 uses
  %i.yt = extractelement <4 x float> %i.wt, i64 0
  %i.yu = fmul float %i.yt, %.0447
  %i.yv = extractelement <4 x float> %i.wt, i64 1
  %i.yw = fmul float %i.yv, %.0447
  %i.yx = extractelement <4 x float> %i.wt, i64 2
  %i.yy = fmul float %i.yx, %.0447
  %i.yz = extractelement <4 x float> %i.wt, i64 3
  %i.za = fmul float %i.yz, %.0447
  %shift1151 = shufflevector <4 x float> %.sroa.0941.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1152 = fadd <4 x float> %.sroa.0941.0.copyload, %shift1151
  %shift1154 = shufflevector <4 x float> %.sroa.0941.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1155 = fadd <4 x float> %shift1154, %foldExtExtBinop1152
  %shift1157 = shufflevector <4 x float> %.sroa.0941.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1158 = fadd <4 x float> %shift1157, %foldExtExtBinop1155
  %i.zb = extractelement <4 x float> %foldExtExtBinop1158, i64 0
  %i.zc = fmul float %i.zb, 2.500000e-01          ; 4 uses
  %i.zd = fdiv float %i.yu, %i.zc                 ; 2 uses
  %i.ze = fdiv float %i.yw, %i.zc                 ; 2 uses
  %i.zf = fdiv float %i.yy, %i.zc                 ; 2 uses
  %i.zg = fdiv float %i.za, %i.zc                 ; 2 uses
  %i.zh = fcmp olt float %i.zd, %i.ze
  %.sroa.speculated.i = select i1 %i.zh, float %i.ze, float %i.zd ; 2 uses
  %i.zi = fcmp olt float %.sroa.speculated.i, %i.zf
  %.sroa.speculated.1.i = select i1 %i.zi, float %i.zf, float %.sroa.speculated.i ; 2 uses
  %i.zj = fcmp olt float %.sroa.speculated.1.i, %i.zg
  %.sroa.speculated.2.i = select i1 %i.zj, float %i.zg, float %.sroa.speculated.1.i ; 2 uses
  %i.zk = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.zk, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.zl = load i32, ptr %i.qe, align 8, !tbaa !594
  %i.zm = icmp sgt i32 %i.zl, 0
  br i1 %i.zm, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.zn = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.zo = fcmp ogt float %i.zn, 0.000000e+00
  %.sroa.speculated = select i1 %i.zo, float %i.zn, float 0.000000e+00 ; 2 uses
  %i.zp = fcmp olt float %.sroa.01.4.vec.extract.i.i594, %.sroa.speculated
  br i1 %i.zp, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.zq = fsub float 1.000000e+00, %.sroa.speculated
  %i.zr = insertelement <4 x float> poison, float %i.zq, i64 0
  %i.zs = shufflevector <4 x float> %i.zr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zt = fdiv <4 x float> %i.wt, %i.zs
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x, %bb.w
  %.sroa.0959.0 = phi <4 x float> [ %i.wt, %bb.w ], [ %i.zt, %bb.z ], [ %i.wt, %bb.x ], [ zeroinitializer, %bb.y ]
  %.sroa.0959.0.fr = freeze <4 x float> %.sroa.0959.0 ; 5 uses
  %i.zu = fcmp une <4 x float> %.sroa.0959.0.fr, zeroinitializer
  %i.zv = bitcast <4 x i1> %i.zu to i4
  %.not1170 = icmp eq i4 %i.zv, 0
  br i1 %.not1170, label %bb.ai, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit715

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit715: ; preds = %bb.aa
  br i1 %.not1103, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit715
  %i.zw = getelementptr inbounds nuw i8, ptr %i.g, i64 600
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !610 ; 28 uses
  %i.zy = load ptr, ptr %1, align 8, !tbaa !592
  %i.zz = ptrtoint ptr %i.zy to i64
  %i.aaa = or i64 %i.zz, 1297036692682702848
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, ptr noundef nonnull align 16 dereferenceable(32) %24, i64 32, i1 false)
  %.sroa.0959.0.vec.extract = shufflevector <4 x float> %.sroa.0959.0.fr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.0959.8.vec.extract = shufflevector <4 x float> %.sroa.0959.0.fr, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.sroa.0941.0.vec.extract = shufflevector <4 x float> %.sroa.0941.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.0941.8.vec.extract = shufflevector <4 x float> %.sroa.0941.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.sroa.0912.sroa.0.0.copyload = load float, ptr %i.mh, align 8
  %.sroa.0912.sroa.2.0.copyload = load float, ptr %.sroa.0.sroa.2.0..sroa_idx.i560, align 4
  %i.aab = fadd float %.sroa.0912.sroa.0.0.copyload, %.sroa.0912.sroa.2.0.copyload
  %i.aac = fmul float %i.aab, 5.000000e-01
  %i.aad = load <2 x float>, ptr %.sroa.0.sroa.4.0..sroa_idx.i564, align 4
  %i.aae = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %.sroa.0.sroa.3.0..sroa_idx.i562, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.aaf = shufflevector <4 x float> %i.aae, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.aag = fadd <2 x float> %i.aad, %i.aaf
  %i.aah = fmul <2 x float> %i.aag, splat (float 5.000000e-01) ; 2 uses
  %.sroa.0911.sroa.0.0.copyload = load float, ptr %i.mg, align 8
  %.sroa.0911.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0911.sroa.2.0.copyload = load float, ptr %.sroa.0911.sroa.2.0..sroa_idx, align 4
  %.sroa.0911.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0911.sroa.3.0.copyload = load float, ptr %.sroa.0911.sroa.3.0..sroa_idx, align 8
  %.sroa.0909.sroa.0.0.copyload = load float, ptr %18, align 8
  %.sroa.0909.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 4
  %.sroa.0909.sroa.2.0.copyload = load float, ptr %.sroa.0909.sroa.2.0..sroa_idx, align 4
  %.sroa.0909.sroa.3.0.copyload = load float, ptr %.sroa.2182.0..sroa_idx, align 8
  %i.aai = load i64, ptr %i.mk, align 8           ; 2 uses
  %.sroa.0908.sroa.0.0.extract.trunc = trunc i64 %i.aai to i32
  %.sroa.0908.sroa.2.0.extract.shift = lshr i64 %i.aai, 32
  %.sroa.0908.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.0908.sroa.2.0.extract.shift to i32
  %i.aaj = load i32, ptr %i.qe, align 8, !tbaa !594
  %i.aak = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.aal = load i64, ptr %i.aak, align 8, !tbaa !177
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.aan = load i64, ptr %i.aam, align 8, !tbaa !177
  %i.aao = load i32, ptr %i.vp, align 4, !tbaa !604
  %i.aap = getelementptr inbounds nuw i8, ptr %i.zx, i64 336
  %i.aaq = atomicrmw add ptr %i.aap, i32 1 monotonic, align 4
  %i.aar = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !613
  %i.aat = sext i32 %i.aaq to i64                 ; 27 uses
end_hunk_17
begin_hunk_18_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_:bb.a
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !161
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.ri
  store float %i.tx, ptr %i.ua, align 4, !tbaa !155
  %i.ub = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !181
  %i.ud = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !162
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.ri
  store float %i.uc, ptr %i.uf, align 4, !tbaa !155
  %i.ug = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !234
  %i.ui = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !160
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.ri
  store float %i.uh, ptr %i.uk, align 4, !tbaa !155
  %i.ul = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.um = load float, ptr %i.ul, align 4, !tbaa !235
  %i.un = getelementptr inbounds nuw i8, ptr %i.h, i64 440
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !161
  %i.up = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.ri
  store float %i.um, ptr %i.up, align 4, !tbaa !155
  %i.uq = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !181
  %i.us = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !162
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %i.ri
  store float %i.ur, ptr %i.uu, align 4, !tbaa !155
  %i.uv = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.uw = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !153
  %i.uy = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.ri ; 2 uses
  %i.uz = load <4 x float>, ptr %i.uv, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.uz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.uz, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.uy, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %.sroa.021.0.copyload.i.i.i586.pre = load <2 x float>, ptr %i.ng, align 8, !noalias !1993
  %.sroa.013.0.copyload.i.i.i593.pre = load <2 x float>, ptr %i.on, align 4, !noalias !1993
  %i.va = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !1993
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %.sroa.05.0.copyload.i.i.i598.pre = load <2 x float>, ptr %i.op, align 8, !noalias !1993
  %.sroa.26.0.copyload.i.i.i600.pre = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1993
  %.pre1162.pre = load i64, ptr %20, align 8, !tbaa !212
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.q, %bb.p, %bb.o
  %.pre1162 = phi i64 [ %.pre1162.pre, %bb.q ], [ %i.nf, %bb.p ], [ %i.nf, %bb.o ] ; 5 uses
  %.sroa.26.0.copyload.i.i.i600 = phi float [ %.sroa.26.0.copyload.i.i.i600.pre, %bb.q ], [ %.sroa.17.0, %bb.p ], [ %.sroa.17.0, %bb.o ] ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = phi <2 x float> [ %.sroa.013.0.copyload.i.i.i593.pre, %bb.q ], [ %i.om, %bb.p ], [ %i.om, %bb.o ] ; 3 uses
  %.sroa.021.0.copyload.i.i.i586 = phi <2 x float> [ %.sroa.021.0.copyload.i.i.i586.pre, %bb.q ], [ %.sroa.0.4.vec.insert.i.i.i, %bb.p ], [ %.sroa.0.4.vec.insert.i.i.i, %bb.o ] ; 3 uses
  %i.vc = phi <2 x float> [ %.sroa.05.0.copyload.i.i.i598.pre, %bb.q ], [ %.sroa.0259.0, %bb.p ], [ %.sroa.0259.0, %bb.o ] ; 2 uses
  %i.vd = phi <2 x float> [ %i.vb, %bb.q ], [ %i.nz, %bb.p ], [ %i.nz, %bb.o ] ; 3 uses
  %.sroa.01010.0.copyload = load <2 x float>, ptr %i.ma, align 4 ; 5 uses
  %.sroa.121017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121017.0.copyload = load float, ptr %.sroa.121017.0..sroa_idx, align 4 ; 4 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 2 uses
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !648
  %i.vh = load ptr, ptr %i.ve, align 8, !tbaa !236, !noalias !1994
  %i.vi = sext i32 %i.vg to i64                   ; 2 uses
  %i.vj = getelementptr inbounds [16 x i8], ptr %i.vh, i64 %i.vi ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vk = load <2 x float>, ptr %i.vj, align 16, !noalias !1994
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !71, !noalias !1994
  %i.vl = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !237, !noalias !1994
  %i.vn = getelementptr inbounds [16 x i8], ptr %i.vm, i64 %i.vi
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vn, align 16, !noalias !1994 ; 2 uses
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %i.vo = shufflevector <2 x float> %.sroa.01010.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vp = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.vq = fmul <2 x float> %i.vo, %i.vp
  %i.vr = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.vs = fmul <2 x float> %.sroa.01010.0.copyload, %i.vr
  %i.vt = fadd <2 x float> %i.vq, %i.vs
  %i.vu = insertelement <2 x float> poison, float %.sroa.121017.0.copyload, i64 0
  %i.vv = shufflevector <2 x float> %i.vu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vw = fmul <2 x float> %i.vv, %i.vd
  %i.vx = fadd <2 x float> %i.vw, %i.vt           ; 2 uses
  %i.vy = fmul <2 x float> %.sroa.01010.0.copyload, %i.vc ; 2 uses
  %shift1196 = shufflevector <2 x float> %i.vy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1197 = fadd <2 x float> %i.vy, %shift1196
  %i.vz = extractelement <2 x float> %foldExtExtBinop1197, i64 0
  %i.wa = fmul float %.sroa.121017.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.wb = fadd float %i.wa, %i.vz                 ; 4 uses
  %i.wc = fcmp oeq float %i.wb, 0.000000e+00
  br i1 %i.wc, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.wd = and i64 %.pre1162, 144115188075855871
  %i.we = inttoptr i64 %i.wd to ptr
  %i.wf = call float @llvm.fabs.f32(float %i.wb)  ; 4 uses
  %i.wg = load float, ptr %i.we, align 4, !tbaa !652, !noalias !1995 ; 4 uses
  %i.wh = fcmp ogt float %i.wf, 1.000000e+00
  %..i.i.i.i = select i1 %i.wh, float 1.000000e+00, float %i.wf ; 5 uses
  %i.wi = fmul float %..i.i.i.i, %..i.i.i.i
  %i.wj = fsub float 1.000000e+00, %i.wi
  %i.wk = fmul float %i.wg, %i.wg
  %i.wl = fdiv float %i.wj, %i.wk                 ; 2 uses
  %i.wm = fcmp ult float %i.wl, 1.000000e+00
  br i1 %i.wm, label %_ZN4pbrt12FrDielectricEff.exit.i.i, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread

_ZN4pbrt12FrDielectricEff.exit.i.i:               ; preds = %bb.r
  %i.wn = fsub float 1.000000e+00, %i.wl          ; 2 uses
  %i.wo = fcmp ogt float %i.wn, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.wo, float %i.wn, float 0.000000e+00
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i.i) ; 3 uses
  %i.wp = fmul float %..i.i.i.i, %i.wg            ; 2 uses
  %i.wq = fsub float %i.wp, %sqrt.i.i.i.i
  %i.wr = fadd float %i.wp, %sqrt.i.i.i.i
  %i.ws = fdiv float %i.wq, %i.wr                 ; 2 uses
  %i.wt = fmul float %i.wg, %sqrt.i.i.i.i         ; 2 uses
  %i.wu = fsub float %..i.i.i.i, %i.wt
  %i.wv = fadd float %..i.i.i.i, %i.wt
  %i.ww = fdiv float %i.wu, %i.wv                 ; 2 uses
  %i.wx = fmul float %i.ws, %i.ws
  %i.wy = fmul float %i.ww, %i.ww
  %i.wz = fadd float %i.wx, %i.wy
  %i.xa = fmul float %i.wz, 5.000000e-01          ; 7 uses
  %i.xb = fsub float 1.000000e+00, %i.xa          ; 3 uses
  %i.xc = fcmp olt float %i.xa, 1.000000e+00
  br i1 %i.xc, label %bb.s, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i

bb.s:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.i.i
  %i.xd = fmul float %i.xb, %i.xb
  %i.xe = fmul float %i.xa, %i.xd
  %i.xf = fmul nnan float %i.xa, %i.xa
  %i.xg = fsub float 1.000000e+00, %i.xf
  %i.xh = fdiv float %i.xe, %i.xg
  %i.xi = fadd float %i.xa, %i.xh                 ; 2 uses
  %i.xj = fsub float 1.000000e+00, %i.xi
  br label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i

_ZN4pbrt12FrDielectricEff.exit.thread.i.i:        ; preds = %bb.s, %_ZN4pbrt12FrDielectricEff.exit.i.i
  %.055.i.i = phi float [ %i.xj, %bb.s ], [ %i.xb, %_ZN4pbrt12FrDielectricEff.exit.i.i ] ; 2 uses
  %.0.i.i = phi float [ %i.xi, %bb.s ], [ %i.xa, %_ZN4pbrt12FrDielectricEff.exit.i.i ] ; 2 uses
  %i.xk = fcmp oeq float %.0.i.i, 0.000000e+00
  %i.xl = fcmp oeq float %.055.i.i, 0.000000e+00
  %or.cond.i.i = and i1 %i.xl, %i.xk
  br i1 %or.cond.i.i, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread

_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread: ; preds = %bb.r, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i
  %.0.i.i1126 = phi float [ %.0.i.i, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i ], [ 1.000000e+00, %bb.r ] ; 3 uses
  %.055.i.i1125 = phi float [ %.055.i.i, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i ], [ 0.000000e+00, %bb.r ] ; 3 uses
  %i.xm = fadd float %.0.i.i1126, %.055.i.i1125   ; 2 uses
  %i.xn = fdiv float %.0.i.i1126, %i.xm           ; 2 uses
  %i.xo = fcmp olt float %.sroa.01.0.vec.extract.i.i584, %i.xn
  %i.xp = fneg <2 x float> %i.vx                  ; 3 uses
  br i1 %i.xo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread
  %i.xq = fdiv float %.0.i.i1126, %i.wf
  %.sroa.076.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.xq, i64 0
  %.sroa.076.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.076.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i

bb.u:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread
  %i.xr = fneg float %i.wb
  %i.xs = fdiv float %.055.i.i1125, %i.wf
  %.sroa.063.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.xs, i64 0
  %.sroa.063.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.063.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xt = fdiv float %.055.i.i1125, %i.xm
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.u, %bb.t
  %.sroa.17.0.ph.i = phi float [ %i.xr, %bb.u ], [ %i.wb, %bb.t ] ; 2 uses
  %.sroa.22.0.ph.i = phi float [ %i.xt, %bb.u ], [ %i.xn, %bb.t ] ; 3 uses
  %.sroa.9.0.ph.i = phi <2 x float> [ %.sroa.063.4.vec.insert.i.i, %bb.u ], [ %.sroa.076.4.vec.insert.i.i, %bb.t ] ; 2 uses
  %i.xu = fcmp une <2 x float> %.sroa.9.0.ph.i, zeroinitializer
  %i.xv = bitcast <2 x i1> %i.xu to i2
  %i.xw = icmp eq i2 %i.xv, 0
  %i.xx = fcmp oeq float %.sroa.22.0.ph.i, 0.000000e+00
  %or.cond.i603 = or i1 %i.xx, %i.xw
  br i1 %or.cond.i603, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.xy = shufflevector <2 x float> %.sroa.9.0.ph.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %foldExtExtBinop1201 = fmul <2 x float> %i.vd, %i.xp
  %shift1203 = shufflevector <2 x float> %foldExtExtBinop1201, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xz = fmul <2 x float> %i.vx, %i.vd
  %foldExtExtBinop1204 = fsub <2 x float> %shift1203, %i.xz
  %i.ya = extractelement <2 x float> %foldExtExtBinop1204, i64 0
  %i.yb = insertelement <2 x float> poison, float %.sroa.17.0.ph.i, i64 0
  %i.yc = shufflevector <2 x float> %i.yb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yd = fmul <2 x float> %i.vc, %i.yc
  %i.ye = fmul float %.sroa.26.0.copyload.i.i.i600, %.sroa.17.0.ph.i
  %i.yf = shufflevector <2 x float> %i.xp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yg = fmul <2 x float> %.sroa.021.0.copyload.i.i.i586, %i.yf
  %i.yh = shufflevector <2 x float> %i.xp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yi = fmul <2 x float> %.sroa.013.0.copyload.i.i.i593, %i.yh
  %i.yj = fadd <2 x float> %i.yg, %i.yi
  %i.yk = fadd <2 x float> %i.yd, %i.yj           ; 3 uses
  %i.yl = fadd float %i.ye, %i.ya                 ; 6 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %1, i64 200
  %27 = load <4 x float>, ptr %i.ym, align 8
  %i.yn = fmul float %.sroa.17.0, %i.yl           ; 2 uses
  %i.yo = extractelement <2 x float> %i.yk, i64 1 ; 3 uses
  %i.yp = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.yo, float %i.yn)
  %i.yq = fneg float %i.yn
  %i.yr = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.yl, float %i.yq)
  %i.ys = fadd float %i.yp, %i.yr
  %i.yt = extractelement <2 x float> %i.yk, i64 0 ; 3 uses
  %i.yu = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.yt, float %i.ys)
  %i.yv = call noundef float @llvm.fabs.f32(float %i.yu)
  %i.yw = fmul <4 x float> %i.xy, %27
  %i.yx = insertelement <4 x float> poison, float %i.yv, i64 0
  %i.yy = shufflevector <4 x float> %i.yx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yz = fmul <4 x float> %i.yy, %i.yw
  %i.za = insertelement <4 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.zb = shufflevector <4 x float> %i.za, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zc = fdiv <4 x float> %i.yz, %i.zb           ; 7 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0911.0.copyload = load <4 x float>, ptr %i.zd, align 8, !tbaa !71 ; 6 uses
  %i.ze = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.zf = insertelement <2 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.zg = shufflevector <2 x float> %i.zf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zh = fdiv <2 x float> %i.ze, %i.zg
  %i.zi = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.zj = fdiv <2 x float> %i.zi, %i.zg
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.zl = load float, ptr %i.zk, align 8, !tbaa !646 ; 5 uses
  %i.zm = extractelement <4 x float> %i.zc, i64 0
  %i.zn = fmul float %i.zl, %i.zm
  %i.zo = extractelement <4 x float> %i.zc, i64 1
  %i.zp = fmul float %i.zl, %i.zo
  %i.zq = extractelement <4 x float> %i.zc, i64 2
  %i.zr = fmul float %i.zl, %i.zq
  %i.zs = extractelement <4 x float> %i.zc, i64 3
  %i.zt = fmul float %i.zl, %i.zs
  %shift1206 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1207 = fadd <4 x float> %.sroa.0911.0.copyload, %shift1206
  %shift1209 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1210 = fadd <4 x float> %shift1209, %foldExtExtBinop1207
  %shift1212 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1213 = fadd <4 x float> %shift1212, %foldExtExtBinop1210
  %i.zu = extractelement <4 x float> %foldExtExtBinop1213, i64 0
  %i.zv = fmul float %i.zu, 2.500000e-01          ; 4 uses
  %i.zw = fdiv float %i.zn, %i.zv                 ; 2 uses
  %i.zx = fdiv float %i.zp, %i.zv                 ; 2 uses
  %i.zy = fdiv float %i.zr, %i.zv                 ; 2 uses
  %i.zz = fdiv float %i.zt, %i.zv                 ; 2 uses
  %i.aaa = fcmp olt float %i.zw, %i.zx
  %.sroa.speculated.i = select i1 %i.aaa, float %i.zx, float %i.zw ; 2 uses
  %i.aab = fcmp olt float %.sroa.speculated.i, %i.zy
  %.sroa.speculated.1.i = select i1 %i.aab, float %i.zy, float %.sroa.speculated.i ; 2 uses
  %i.aac = fcmp olt float %.sroa.speculated.1.i, %i.zz
  %.sroa.speculated.2.i = select i1 %i.aac, float %i.zz, float %.sroa.speculated.1.i ; 2 uses
  %i.aad = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.aad, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.aae = load i32, ptr %i.pr, align 8, !tbaa !638
  %i.aaf = icmp sgt i32 %i.aae, 0
  br i1 %i.aaf, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aag = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.aah = fcmp ogt float %i.aag, 0.000000e+00
  %.sroa.speculated = select i1 %i.aah, float %i.aag, float 0.000000e+00 ; 2 uses
  %i.aai = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.aai, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aaj = fsub float 1.000000e+00, %.sroa.speculated
  %i.aak = insertelement <4 x float> poison, float %i.aaj, i64 0
  %i.aal = shufflevector <4 x float> %i.aak, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aam = fdiv <4 x float> %i.zc, %i.aal
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w, %bb.v
  %.sroa.0929.0 = phi <4 x float> [ %i.zc, %bb.v ], [ %i.aam, %bb.y ], [ %i.zc, %bb.w ], [ zeroinitializer, %bb.x ]
  %.sroa.0929.0.fr = freeze <4 x float> %.sroa.0929.0 ; 3 uses
  %i.aan = fcmp une <4 x float> %.sroa.0929.0.fr, zeroinitializer
  %i.aao = bitcast <4 x i1> %i.aan to i4
  %.not1215 = icmp eq i4 %i.aao, 0
  br i1 %.not1215, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705: ; preds = %bb.z
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mb, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !642
  %i.aar = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mc, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %i.yk, float %i.yl) ; 2 uses
  %.fca.0.extract.i709 = extractvalue { <2 x float>, float } %i.aar, 0 ; 2 uses
  %.fca.1.extract.i710 = extractvalue { <2 x float>, float } %i.aar, 1
  %i.aas = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.aat = load i8, ptr %i.aas, align 2, !tbaa !245, !range !11, !noundef !12
  %i.aau = trunc nuw i8 %i.aat to i1
  %.sroa.094.0.copyload.pre = load <2 x float>, ptr %i.mb, align 8 ; 2 uses
  %.sroa.295.0.copyload.pre = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 3 uses
  %.sroa.01.0.vec.extract.i712 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 0 ; 2 uses
  %.sroa.01.4.vec.extract.i714 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 1 ; 2 uses
  br i1 %i.aau, label %bb.aa, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge

bb.aa:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705
  %i.aav = fmul float %i.yl, %.sroa.295.0.copyload.pre ; 2 uses
  %i.aaw = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i714, float %i.yo, float %i.aav)
  %i.aax = fneg float %i.aav
  %i.aay = call noundef float @llvm.fma.f32(float %.sroa.295.0.copyload.pre, float %i.yl, float %i.aax)
  %i.aaz = fadd float %i.aaw, %i.aay
  %i.aba = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i712, float %i.yt, float %i.aaz)
  %i.abb = fcmp ogt float %i.aba, 0.000000e+00
  %.v = select i1 %i.abb, i64 248, i64 240
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !177
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705, %bb.aa
  %.sroa.17876.0 = phi i64 [ %i.abd, %bb.aa ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705 ]
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.abf = load i32, ptr %i.abe, align 8, !tbaa !644
  %i.abg = icmp ne i32 %i.abf, 0
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
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !621 ; 31 uses
  %i.abj = load i32, ptr %i.pr, align 8, !tbaa !638
  %i.abk = add nsw i32 %i.abj, 1
  %i.abl = load i32, ptr %i.vf, align 4, !tbaa !648
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abi, i64 400
  %i.abn = atomicrmw add ptr %i.abm, i32 1 monotonic, align 4
  %.sroa.0871.0.vec.extract = extractelement <2 x float> %.fca.0.extract.i709, i64 0
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abi, i64 24
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !222
  %i.abq = sext i32 %i.abn to i64                 ; 30 uses
  %i.abr = getelementptr inbounds [4 x i8], ptr %i.abp, i64 %i.abq
  store float %.sroa.0871.0.vec.extract, ptr %i.abr, align 4, !tbaa !155
  %.sroa.0871.4.vec.extract = extractelement <2 x float> %.fca.0.extract.i709, i64 1
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abi, i64 32
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !224
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.abt, i64 %i.abq
  store float %.sroa.0871.4.vec.extract, ptr %i.abu, align 4, !tbaa !155
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abi, i64 40
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !226
  %i.abx = getelementptr inbounds [4 x i8], ptr %i.abw, i64 %i.abq
  store float %.fca.1.extract.i710, ptr %i.abx, align 4, !tbaa !155
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abi, i64 56
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !160
  %i.aca = getelementptr inbounds [4 x i8], ptr %i.abz, i64 %i.abq
  store float %i.yt, ptr %i.aca, align 4, !tbaa !155
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abi, i64 64
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !161
  %i.acd = getelementptr inbounds [4 x i8], ptr %i.acc, i64 %i.abq
  store float %i.yo, ptr %i.acd, align 4, !tbaa !155
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abi, i64 72
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !162
  %i.acg = getelementptr inbounds [4 x i8], ptr %i.acf, i64 %i.abq
  store float %i.yl, ptr %i.acg, align 4, !tbaa !155
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abi, i64 80
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !247
  %i.acj = getelementptr inbounds [4 x i8], ptr %i.aci, i64 %i.abq
  store float %i.aaq, ptr %i.acj, align 4, !tbaa !155
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abi, i64 88
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !248
  %i.acm = getelementptr inbounds [8 x i8], ptr %i.acl, i64 %i.abq
  store i64 %.sroa.17876.0, ptr %i.acm, align 8, !tbaa !177
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abi, i64 96
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !251
  %i.acp = getelementptr inbounds [4 x i8], ptr %i.aco, i64 %i.abq
  store i32 %i.abk, ptr %i.acp, align 4, !tbaa !166
  %i.acq = getelementptr inbounds nuw i8, ptr %i.abi, i64 104
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !252
  %i.acs = getelementptr inbounds [4 x i8], ptr %i.acr, i64 %i.abq
  store i32 %i.abl, ptr %i.acs, align 4, !tbaa !166
  %i.act = getelementptr inbounds nuw i8, ptr %i.abi, i64 248
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !154
  %i.acv = getelementptr inbounds [4 x i8], ptr %i.acu, i64 %i.abq
  store float %.sroa.0863.sroa.0.0.copyload, ptr %i.acv, align 4, !tbaa !155
  %i.acw = getelementptr inbounds nuw i8, ptr %i.abi, i64 256
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !156
  %i.acy = getelementptr inbounds [4 x i8], ptr %i.acx, i64 %i.abq
  store float %.sroa.0863.sroa.2.0.copyload, ptr %i.acy, align 4, !tbaa !155
  %i.acz = getelementptr inbounds nuw i8, ptr %i.abi, i64 272
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !154
  %i.adb = getelementptr inbounds [4 x i8], ptr %i.ada, i64 %i.abq
  store float %.sroa.0863.sroa.3.0.copyload, ptr %i.adb, align 4, !tbaa !155
  %i.adc = getelementptr inbounds nuw i8, ptr %i.abi, i64 280
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !156
  %i.ade = getelementptr inbounds [4 x i8], ptr %i.add, i64 %i.abq
  store float %.sroa.0863.sroa.4.0.copyload, ptr %i.ade, align 4, !tbaa !155
  %i.adf = getelementptr inbounds nuw i8, ptr %i.abi, i64 296
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !154
  %i.adh = getelementptr inbounds [4 x i8], ptr %i.adg, i64 %i.abq
  store float %.sroa.0863.sroa.5.0.copyload, ptr %i.adh, align 4, !tbaa !155
  %i.adi = getelementptr inbounds nuw i8, ptr %i.abi, i64 304
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !156
  %i.adk = getelementptr inbounds [4 x i8], ptr %i.adj, i64 %i.abq
  store float %.sroa.0863.sroa.6.0.copyload, ptr %i.adk, align 4, !tbaa !155
  %i.adl = getelementptr inbounds nuw i8, ptr %i.abi, i64 320
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !157
  %i.adn = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %i.abq
  store float %.sroa.01.0.vec.extract.i712, ptr %i.adn, align 4, !tbaa !155
  %i.ado = getelementptr inbounds nuw i8, ptr %i.abi, i64 328
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !158
end_hunk_18
begin_hunk_19_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_:bb.a
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !161
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.ri
  store float %i.tx, ptr %i.ua, align 4, !tbaa !155
  %i.ub = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !181
  %i.ud = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !162
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.ri
  store float %i.uc, ptr %i.uf, align 4, !tbaa !155
  %i.ug = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !234
  %i.ui = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !160
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.ri
  store float %i.uh, ptr %i.uk, align 4, !tbaa !155
  %i.ul = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.um = load float, ptr %i.ul, align 4, !tbaa !235
  %i.un = getelementptr inbounds nuw i8, ptr %i.h, i64 440
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !161
  %i.up = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.ri
  store float %i.um, ptr %i.up, align 4, !tbaa !155
  %i.uq = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !181
  %i.us = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !162
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %i.ri
  store float %i.ur, ptr %i.uu, align 4, !tbaa !155
  %i.uv = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.uw = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !153
  %i.uy = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.ri ; 2 uses
  %i.uz = load <4 x float>, ptr %i.uv, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.uz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.uz, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.uy, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %.sroa.021.0.copyload.i.i.i586.pre = load <2 x float>, ptr %i.ng, align 8, !noalias !2040
  %.sroa.013.0.copyload.i.i.i593.pre = load <2 x float>, ptr %i.on, align 4, !noalias !2040
  %i.va = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !2040
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %.sroa.05.0.copyload.i.i.i598.pre = load <2 x float>, ptr %i.op, align 8, !noalias !2040
  %.sroa.26.0.copyload.i.i.i600.pre = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !2040
  %.pre1162.pre = load i64, ptr %20, align 8, !tbaa !212
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.q, %bb.p, %bb.o
  %.pre1162 = phi i64 [ %.pre1162.pre, %bb.q ], [ %i.nf, %bb.p ], [ %i.nf, %bb.o ] ; 5 uses
  %.sroa.26.0.copyload.i.i.i600 = phi float [ %.sroa.26.0.copyload.i.i.i600.pre, %bb.q ], [ %.sroa.17.0, %bb.p ], [ %.sroa.17.0, %bb.o ] ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = phi <2 x float> [ %.sroa.013.0.copyload.i.i.i593.pre, %bb.q ], [ %i.om, %bb.p ], [ %i.om, %bb.o ] ; 3 uses
  %.sroa.021.0.copyload.i.i.i586 = phi <2 x float> [ %.sroa.021.0.copyload.i.i.i586.pre, %bb.q ], [ %.sroa.0.4.vec.insert.i.i.i, %bb.p ], [ %.sroa.0.4.vec.insert.i.i.i, %bb.o ] ; 3 uses
  %i.vc = phi <2 x float> [ %.sroa.05.0.copyload.i.i.i598.pre, %bb.q ], [ %.sroa.0259.0, %bb.p ], [ %.sroa.0259.0, %bb.o ] ; 2 uses
  %i.vd = phi <2 x float> [ %i.vb, %bb.q ], [ %i.nz, %bb.p ], [ %i.nz, %bb.o ] ; 3 uses
  %.sroa.01010.0.copyload = load <2 x float>, ptr %i.ma, align 4 ; 5 uses
  %.sroa.121017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121017.0.copyload = load float, ptr %.sroa.121017.0..sroa_idx, align 4 ; 4 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 2 uses
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !648
  %i.vh = load ptr, ptr %i.ve, align 8, !tbaa !236, !noalias !2041
  %i.vi = sext i32 %i.vg to i64                   ; 2 uses
  %i.vj = getelementptr inbounds [16 x i8], ptr %i.vh, i64 %i.vi ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vk = load <2 x float>, ptr %i.vj, align 16, !noalias !2041
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !71, !noalias !2041
  %i.vl = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !237, !noalias !2041
  %i.vn = getelementptr inbounds [16 x i8], ptr %i.vm, i64 %i.vi
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vn, align 16, !noalias !2041 ; 2 uses
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %i.vo = shufflevector <2 x float> %.sroa.01010.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vp = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.vq = fmul <2 x float> %i.vo, %i.vp
  %i.vr = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.vs = fmul <2 x float> %.sroa.01010.0.copyload, %i.vr
  %i.vt = fadd <2 x float> %i.vq, %i.vs
  %i.vu = insertelement <2 x float> poison, float %.sroa.121017.0.copyload, i64 0
  %i.vv = shufflevector <2 x float> %i.vu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vw = fmul <2 x float> %i.vv, %i.vd
  %i.vx = fadd <2 x float> %i.vw, %i.vt           ; 2 uses
  %i.vy = fmul <2 x float> %.sroa.01010.0.copyload, %i.vc ; 2 uses
  %shift1196 = shufflevector <2 x float> %i.vy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1197 = fadd <2 x float> %i.vy, %shift1196
  %i.vz = extractelement <2 x float> %foldExtExtBinop1197, i64 0
  %i.wa = fmul float %.sroa.121017.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.wb = fadd float %i.wa, %i.vz                 ; 4 uses
  %i.wc = fcmp oeq float %i.wb, 0.000000e+00
  br i1 %i.wc, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.wd = and i64 %.pre1162, 144115188075855871
  %i.we = inttoptr i64 %i.wd to ptr
  %i.wf = call float @llvm.fabs.f32(float %i.wb)  ; 4 uses
  %i.wg = load float, ptr %i.we, align 4, !tbaa !652, !noalias !2042 ; 4 uses
  %i.wh = fcmp ogt float %i.wf, 1.000000e+00
  %..i.i.i.i = select i1 %i.wh, float 1.000000e+00, float %i.wf ; 5 uses
  %i.wi = fmul float %..i.i.i.i, %..i.i.i.i
  %i.wj = fsub float 1.000000e+00, %i.wi
  %i.wk = fmul float %i.wg, %i.wg
  %i.wl = fdiv float %i.wj, %i.wk                 ; 2 uses
  %i.wm = fcmp ult float %i.wl, 1.000000e+00
  br i1 %i.wm, label %_ZN4pbrt12FrDielectricEff.exit.i.i, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread

_ZN4pbrt12FrDielectricEff.exit.i.i:               ; preds = %bb.r
  %i.wn = fsub float 1.000000e+00, %i.wl          ; 2 uses
  %i.wo = fcmp ogt float %i.wn, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.wo, float %i.wn, float 0.000000e+00
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i.i) ; 3 uses
  %i.wp = fmul float %..i.i.i.i, %i.wg            ; 2 uses
  %i.wq = fsub float %i.wp, %sqrt.i.i.i.i
  %i.wr = fadd float %i.wp, %sqrt.i.i.i.i
  %i.ws = fdiv float %i.wq, %i.wr                 ; 2 uses
  %i.wt = fmul float %i.wg, %sqrt.i.i.i.i         ; 2 uses
  %i.wu = fsub float %..i.i.i.i, %i.wt
  %i.wv = fadd float %..i.i.i.i, %i.wt
  %i.ww = fdiv float %i.wu, %i.wv                 ; 2 uses
  %i.wx = fmul float %i.ws, %i.ws
  %i.wy = fmul float %i.ww, %i.ww
  %i.wz = fadd float %i.wx, %i.wy
  %i.xa = fmul float %i.wz, 5.000000e-01          ; 7 uses
  %i.xb = fsub float 1.000000e+00, %i.xa          ; 3 uses
  %i.xc = fcmp olt float %i.xa, 1.000000e+00
  br i1 %i.xc, label %bb.s, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i

bb.s:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.i.i
  %i.xd = fmul float %i.xb, %i.xb
  %i.xe = fmul float %i.xa, %i.xd
  %i.xf = fmul nnan float %i.xa, %i.xa
  %i.xg = fsub float 1.000000e+00, %i.xf
  %i.xh = fdiv float %i.xe, %i.xg
  %i.xi = fadd float %i.xa, %i.xh                 ; 2 uses
  %i.xj = fsub float 1.000000e+00, %i.xi
  br label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i

_ZN4pbrt12FrDielectricEff.exit.thread.i.i:        ; preds = %bb.s, %_ZN4pbrt12FrDielectricEff.exit.i.i
  %.055.i.i = phi float [ %i.xj, %bb.s ], [ %i.xb, %_ZN4pbrt12FrDielectricEff.exit.i.i ] ; 2 uses
  %.0.i.i = phi float [ %i.xi, %bb.s ], [ %i.xa, %_ZN4pbrt12FrDielectricEff.exit.i.i ] ; 2 uses
  %i.xk = fcmp oeq float %.0.i.i, 0.000000e+00
  %i.xl = fcmp oeq float %.055.i.i, 0.000000e+00
  %or.cond.i.i = and i1 %i.xl, %i.xk
  br i1 %or.cond.i.i, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread

_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread: ; preds = %bb.r, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i
  %.0.i.i1126 = phi float [ %.0.i.i, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i ], [ 1.000000e+00, %bb.r ] ; 3 uses
  %.055.i.i1125 = phi float [ %.055.i.i, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i ], [ 0.000000e+00, %bb.r ] ; 3 uses
  %i.xm = fadd float %.0.i.i1126, %.055.i.i1125   ; 2 uses
  %i.xn = fdiv float %.0.i.i1126, %i.xm           ; 2 uses
  %i.xo = fcmp olt float %.sroa.01.0.vec.extract.i.i584, %i.xn
  %i.xp = fneg <2 x float> %i.vx                  ; 3 uses
  br i1 %i.xo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread
  %i.xq = fdiv float %.0.i.i1126, %i.wf
  %.sroa.076.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.xq, i64 0
  %.sroa.076.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.076.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i

bb.u:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread
  %i.xr = fneg float %i.wb
  %i.xs = fdiv float %.055.i.i1125, %i.wf
  %.sroa.063.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.xs, i64 0
  %.sroa.063.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.063.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xt = fdiv float %.055.i.i1125, %i.xm
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.u, %bb.t
  %.sroa.17.0.ph.i = phi float [ %i.xr, %bb.u ], [ %i.wb, %bb.t ] ; 2 uses
  %.sroa.22.0.ph.i = phi float [ %i.xt, %bb.u ], [ %i.xn, %bb.t ] ; 3 uses
  %.sroa.9.0.ph.i = phi <2 x float> [ %.sroa.063.4.vec.insert.i.i, %bb.u ], [ %.sroa.076.4.vec.insert.i.i, %bb.t ] ; 2 uses
  %i.xu = fcmp une <2 x float> %.sroa.9.0.ph.i, zeroinitializer
  %i.xv = bitcast <2 x i1> %i.xu to i2
  %i.xw = icmp eq i2 %i.xv, 0
  %i.xx = fcmp oeq float %.sroa.22.0.ph.i, 0.000000e+00
  %or.cond.i603 = or i1 %i.xx, %i.xw
  br i1 %or.cond.i603, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.xy = shufflevector <2 x float> %.sroa.9.0.ph.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %foldExtExtBinop1201 = fmul <2 x float> %i.vd, %i.xp
  %shift1203 = shufflevector <2 x float> %foldExtExtBinop1201, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xz = fmul <2 x float> %i.vx, %i.vd
  %foldExtExtBinop1204 = fsub <2 x float> %shift1203, %i.xz
  %i.ya = extractelement <2 x float> %foldExtExtBinop1204, i64 0
  %i.yb = insertelement <2 x float> poison, float %.sroa.17.0.ph.i, i64 0
  %i.yc = shufflevector <2 x float> %i.yb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yd = fmul <2 x float> %i.vc, %i.yc
  %i.ye = fmul float %.sroa.26.0.copyload.i.i.i600, %.sroa.17.0.ph.i
  %i.yf = shufflevector <2 x float> %i.xp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yg = fmul <2 x float> %.sroa.021.0.copyload.i.i.i586, %i.yf
  %i.yh = shufflevector <2 x float> %i.xp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yi = fmul <2 x float> %.sroa.013.0.copyload.i.i.i593, %i.yh
  %i.yj = fadd <2 x float> %i.yg, %i.yi
  %i.yk = fadd <2 x float> %i.yd, %i.yj           ; 3 uses
  %i.yl = fadd float %i.ye, %i.ya                 ; 6 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %1, i64 200
  %27 = load <4 x float>, ptr %i.ym, align 8
  %i.yn = fmul float %.sroa.17.0, %i.yl           ; 2 uses
  %i.yo = extractelement <2 x float> %i.yk, i64 1 ; 3 uses
  %i.yp = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.yo, float %i.yn)
  %i.yq = fneg float %i.yn
  %i.yr = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.yl, float %i.yq)
  %i.ys = fadd float %i.yp, %i.yr
  %i.yt = extractelement <2 x float> %i.yk, i64 0 ; 3 uses
  %i.yu = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.yt, float %i.ys)
  %i.yv = call noundef float @llvm.fabs.f32(float %i.yu)
  %i.yw = fmul <4 x float> %i.xy, %27
  %i.yx = insertelement <4 x float> poison, float %i.yv, i64 0
  %i.yy = shufflevector <4 x float> %i.yx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yz = fmul <4 x float> %i.yy, %i.yw
  %i.za = insertelement <4 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.zb = shufflevector <4 x float> %i.za, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zc = fdiv <4 x float> %i.yz, %i.zb           ; 7 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0911.0.copyload = load <4 x float>, ptr %i.zd, align 8, !tbaa !71 ; 6 uses
  %i.ze = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.zf = insertelement <2 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.zg = shufflevector <2 x float> %i.zf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zh = fdiv <2 x float> %i.ze, %i.zg
  %i.zi = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.zj = fdiv <2 x float> %i.zi, %i.zg
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.zl = load float, ptr %i.zk, align 8, !tbaa !646 ; 5 uses
  %i.zm = extractelement <4 x float> %i.zc, i64 0
  %i.zn = fmul float %i.zl, %i.zm
  %i.zo = extractelement <4 x float> %i.zc, i64 1
  %i.zp = fmul float %i.zl, %i.zo
  %i.zq = extractelement <4 x float> %i.zc, i64 2
  %i.zr = fmul float %i.zl, %i.zq
  %i.zs = extractelement <4 x float> %i.zc, i64 3
  %i.zt = fmul float %i.zl, %i.zs
  %shift1206 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1207 = fadd <4 x float> %.sroa.0911.0.copyload, %shift1206
  %shift1209 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1210 = fadd <4 x float> %shift1209, %foldExtExtBinop1207
  %shift1212 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1213 = fadd <4 x float> %shift1212, %foldExtExtBinop1210
  %i.zu = extractelement <4 x float> %foldExtExtBinop1213, i64 0
  %i.zv = fmul float %i.zu, 2.500000e-01          ; 4 uses
  %i.zw = fdiv float %i.zn, %i.zv                 ; 2 uses
  %i.zx = fdiv float %i.zp, %i.zv                 ; 2 uses
  %i.zy = fdiv float %i.zr, %i.zv                 ; 2 uses
  %i.zz = fdiv float %i.zt, %i.zv                 ; 2 uses
  %i.aaa = fcmp olt float %i.zw, %i.zx
  %.sroa.speculated.i = select i1 %i.aaa, float %i.zx, float %i.zw ; 2 uses
  %i.aab = fcmp olt float %.sroa.speculated.i, %i.zy
  %.sroa.speculated.1.i = select i1 %i.aab, float %i.zy, float %.sroa.speculated.i ; 2 uses
  %i.aac = fcmp olt float %.sroa.speculated.1.i, %i.zz
  %.sroa.speculated.2.i = select i1 %i.aac, float %i.zz, float %.sroa.speculated.1.i ; 2 uses
  %i.aad = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.aad, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.aae = load i32, ptr %i.pr, align 8, !tbaa !638
  %i.aaf = icmp sgt i32 %i.aae, 0
  br i1 %i.aaf, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aag = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.aah = fcmp ogt float %i.aag, 0.000000e+00
  %.sroa.speculated = select i1 %i.aah, float %i.aag, float 0.000000e+00 ; 2 uses
  %i.aai = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.aai, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aaj = fsub float 1.000000e+00, %.sroa.speculated
  %i.aak = insertelement <4 x float> poison, float %i.aaj, i64 0
  %i.aal = shufflevector <4 x float> %i.aak, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aam = fdiv <4 x float> %i.zc, %i.aal
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w, %bb.v
  %.sroa.0929.0 = phi <4 x float> [ %i.zc, %bb.v ], [ %i.aam, %bb.y ], [ %i.zc, %bb.w ], [ zeroinitializer, %bb.x ]
  %.sroa.0929.0.fr = freeze <4 x float> %.sroa.0929.0 ; 3 uses
  %i.aan = fcmp une <4 x float> %.sroa.0929.0.fr, zeroinitializer
  %i.aao = bitcast <4 x i1> %i.aan to i4
  %.not1215 = icmp eq i4 %i.aao, 0
  br i1 %.not1215, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705: ; preds = %bb.z
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mb, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !642
  %i.aar = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mc, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %i.yk, float %i.yl) ; 2 uses
  %.fca.0.extract.i709 = extractvalue { <2 x float>, float } %i.aar, 0 ; 2 uses
  %.fca.1.extract.i710 = extractvalue { <2 x float>, float } %i.aar, 1
  %i.aas = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.aat = load i8, ptr %i.aas, align 2, !tbaa !245, !range !11, !noundef !12
  %i.aau = trunc nuw i8 %i.aat to i1
  %.sroa.094.0.copyload.pre = load <2 x float>, ptr %i.mb, align 8 ; 2 uses
  %.sroa.295.0.copyload.pre = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 3 uses
  %.sroa.01.0.vec.extract.i712 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 0 ; 2 uses
  %.sroa.01.4.vec.extract.i714 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 1 ; 2 uses
  br i1 %i.aau, label %bb.aa, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge

bb.aa:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705
  %i.aav = fmul float %i.yl, %.sroa.295.0.copyload.pre ; 2 uses
  %i.aaw = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i714, float %i.yo, float %i.aav)
  %i.aax = fneg float %i.aav
  %i.aay = call noundef float @llvm.fma.f32(float %.sroa.295.0.copyload.pre, float %i.yl, float %i.aax)
  %i.aaz = fadd float %i.aaw, %i.aay
  %i.aba = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i712, float %i.yt, float %i.aaz)
  %i.abb = fcmp ogt float %i.aba, 0.000000e+00
  %.v = select i1 %i.abb, i64 248, i64 240
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !177
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705, %bb.aa
  %.sroa.17876.0 = phi i64 [ %i.abd, %bb.aa ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705 ]
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.abf = load i32, ptr %i.abe, align 8, !tbaa !644
  %i.abg = icmp ne i32 %i.abf, 0
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
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !624 ; 31 uses
  %i.abj = load i32, ptr %i.pr, align 8, !tbaa !638
  %i.abk = add nsw i32 %i.abj, 1
  %i.abl = load i32, ptr %i.vf, align 4, !tbaa !648
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abi, i64 400
  %i.abn = atomicrmw add ptr %i.abm, i32 1 monotonic, align 4
  %.sroa.0871.0.vec.extract = extractelement <2 x float> %.fca.0.extract.i709, i64 0
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abi, i64 24
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !222
  %i.abq = sext i32 %i.abn to i64                 ; 30 uses
  %i.abr = getelementptr inbounds [4 x i8], ptr %i.abp, i64 %i.abq
  store float %.sroa.0871.0.vec.extract, ptr %i.abr, align 4, !tbaa !155
  %.sroa.0871.4.vec.extract = extractelement <2 x float> %.fca.0.extract.i709, i64 1
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abi, i64 32
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !224
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.abt, i64 %i.abq
  store float %.sroa.0871.4.vec.extract, ptr %i.abu, align 4, !tbaa !155
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abi, i64 40
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !226
  %i.abx = getelementptr inbounds [4 x i8], ptr %i.abw, i64 %i.abq
  store float %.fca.1.extract.i710, ptr %i.abx, align 4, !tbaa !155
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abi, i64 56
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !160
  %i.aca = getelementptr inbounds [4 x i8], ptr %i.abz, i64 %i.abq
  store float %i.yt, ptr %i.aca, align 4, !tbaa !155
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abi, i64 64
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !161
  %i.acd = getelementptr inbounds [4 x i8], ptr %i.acc, i64 %i.abq
  store float %i.yo, ptr %i.acd, align 4, !tbaa !155
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abi, i64 72
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !162
  %i.acg = getelementptr inbounds [4 x i8], ptr %i.acf, i64 %i.abq
  store float %i.yl, ptr %i.acg, align 4, !tbaa !155
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abi, i64 80
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !247
  %i.acj = getelementptr inbounds [4 x i8], ptr %i.aci, i64 %i.abq
  store float %i.aaq, ptr %i.acj, align 4, !tbaa !155
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abi, i64 88
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !248
  %i.acm = getelementptr inbounds [8 x i8], ptr %i.acl, i64 %i.abq
  store i64 %.sroa.17876.0, ptr %i.acm, align 8, !tbaa !177
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abi, i64 96
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !251
  %i.acp = getelementptr inbounds [4 x i8], ptr %i.aco, i64 %i.abq
  store i32 %i.abk, ptr %i.acp, align 4, !tbaa !166
  %i.acq = getelementptr inbounds nuw i8, ptr %i.abi, i64 104
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !252
  %i.acs = getelementptr inbounds [4 x i8], ptr %i.acr, i64 %i.abq
  store i32 %i.abl, ptr %i.acs, align 4, !tbaa !166
  %i.act = getelementptr inbounds nuw i8, ptr %i.abi, i64 248
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !154
  %i.acv = getelementptr inbounds [4 x i8], ptr %i.acu, i64 %i.abq
  store float %.sroa.0863.sroa.0.0.copyload, ptr %i.acv, align 4, !tbaa !155
  %i.acw = getelementptr inbounds nuw i8, ptr %i.abi, i64 256
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !156
  %i.acy = getelementptr inbounds [4 x i8], ptr %i.acx, i64 %i.abq
  store float %.sroa.0863.sroa.2.0.copyload, ptr %i.acy, align 4, !tbaa !155
  %i.acz = getelementptr inbounds nuw i8, ptr %i.abi, i64 272
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !154
  %i.adb = getelementptr inbounds [4 x i8], ptr %i.ada, i64 %i.abq
  store float %.sroa.0863.sroa.3.0.copyload, ptr %i.adb, align 4, !tbaa !155
  %i.adc = getelementptr inbounds nuw i8, ptr %i.abi, i64 280
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !156
  %i.ade = getelementptr inbounds [4 x i8], ptr %i.add, i64 %i.abq
  store float %.sroa.0863.sroa.4.0.copyload, ptr %i.ade, align 4, !tbaa !155
  %i.adf = getelementptr inbounds nuw i8, ptr %i.abi, i64 296
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !154
  %i.adh = getelementptr inbounds [4 x i8], ptr %i.adg, i64 %i.abq
  store float %.sroa.0863.sroa.5.0.copyload, ptr %i.adh, align 4, !tbaa !155
  %i.adi = getelementptr inbounds nuw i8, ptr %i.abi, i64 304
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !156
  %i.adk = getelementptr inbounds [4 x i8], ptr %i.adj, i64 %i.abq
  store float %.sroa.0863.sroa.6.0.copyload, ptr %i.adk, align 4, !tbaa !155
  %i.adl = getelementptr inbounds nuw i8, ptr %i.abi, i64 320
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !157
  %i.adn = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %i.abq
  store float %.sroa.01.0.vec.extract.i712, ptr %i.adn, align 4, !tbaa !155
  %i.ado = getelementptr inbounds nuw i8, ptr %i.abi, i64 328
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !158
end_hunk_19
