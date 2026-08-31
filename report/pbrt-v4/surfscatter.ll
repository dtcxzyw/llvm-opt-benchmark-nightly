Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/surfscatter?download=true
inline.NumInlined: 8253
inline.NumDeleted: 1421
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_21CoatedDiffuseMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemIS2_EENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlS7_E_clES7_:bb.a
  %i.qb = getelementptr inbounds nuw i8, ptr %21, i64 128
  store <2 x float> %.sroa.0259.0, ptr %i.qb, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %21, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %21, i64 52
  %i.qd = load i64, ptr %i.mt, align 8
  store i64 %i.qd, ptr %i.qc, align 4
  %i.qe = getelementptr inbounds nuw i8, ptr %21, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qe, ptr noundef nonnull align 4 dereferenceable(12) %i.mf, i64 12, i1 false)
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !219
  %i.qh = getelementptr inbounds nuw i8, ptr %21, i64 24
  store float %i.qg, ptr %i.qh, align 8, !tbaa !281
  %i.qi = getelementptr inbounds nuw i8, ptr %21, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.qi, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false)
  %i.qj = getelementptr inbounds nuw i8, ptr %21, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qj, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %22, align 16, !tbaa !203
  %i.qk = getelementptr inbounds nuw i8, ptr %22, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.qk, align 16, !tbaa !203
  %i.ql = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.ql, align 16, !tbaa !203
  %i.qm = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qm, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.qe, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.ni, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.oj, align 4 ; 2 uses
  %i.qn = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qo = shufflevector <4 x float> %i.qn, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qp = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qq = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.qr = fmul <2 x float> %i.qp, %i.qq
  %i.qs = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.qt = fmul <2 x float> %.sroa.0162.0.copyload, %i.qs
  %i.qu = fadd <2 x float> %i.qr, %i.qt
  %i.qv = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.qw = shufflevector <2 x float> %i.qv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qx = fmul <2 x float> %i.qw, %i.qo
  %i.qy = fadd <2 x float> %i.qx, %i.qu
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.ol, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.qz = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1098 = shufflevector <2 x float> %i.qz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1099 = fadd <2 x float> %i.qz, %shift1098
  %i.ra = extractelement <2 x float> %foldExtExtBinop1099, i64 0
  %i.rb = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.rc = fadd float %i.rb, %i.ra
  %i.rd = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qy, float %i.rc, ptr nonnull %i.e, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.re = extractvalue { <2 x float>, <2 x float> } %i.rd, 0
  %i.rf = extractvalue { <2 x float>, <2 x float> } %i.rd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.re, <2 x float> %i.rf, ptr noundef nonnull align 4 dereferenceable(32) %17)
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !231
  %i.ri = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.rj = load i8, ptr %i.ri, align 4, !tbaa !284, !range !11, !noundef !12
  %i.rk = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !286
  %i.rm = sext i32 %i.rh to i64                   ; 20 uses
  %i.rn = getelementptr inbounds i8, ptr %i.rl, i64 %i.rm
  store i8 %i.rj, ptr %i.rn, align 1, !tbaa !9
  %i.ro = load float, ptr %23, align 4, !tbaa !287
  %i.rp = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !288
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %i.rm
  store float %i.ro, ptr %i.rr, align 4, !tbaa !203
  %i.rs = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !289
  %i.ru = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !290
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.rm
  store float %i.rt, ptr %i.rw, align 4, !tbaa !203
  %i.rx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !291
  %i.rz = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !292
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.rm
  store float %i.ry, ptr %i.sb, align 4, !tbaa !203
  %i.sc = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !293
  %i.se = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !205
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.rm
  store float %i.sd, ptr %i.sg, align 4, !tbaa !203
  %i.sh = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.si = load float, ptr %i.sh, align 4, !tbaa !294
  %i.sj = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !206
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %i.rm
  store float %i.si, ptr %i.sl, align 4, !tbaa !203
  %i.sm = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !295
  %i.so = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !207
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.rm
  store float %i.sn, ptr %i.sq, align 4, !tbaa !203
  %i.sr = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !293
  %i.st = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !205
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rm
  store float %i.ss, ptr %i.sv, align 4, !tbaa !203
  %i.sw = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !294
  %i.sy = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !206
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.rm
  store float %i.sx, ptr %i.ta, align 4, !tbaa !203
  %i.tb = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !295
  %i.td = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !207
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.te, i64 %i.rm
  store float %i.tc, ptr %i.tf, align 4, !tbaa !203
  %i.tg = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.th = load float, ptr %i.tg, align 4, !tbaa !296
  %i.ti = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !211
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.rm
  store float %i.th, ptr %i.tk, align 4, !tbaa !203
  %i.tl = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !297
  %i.tn = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !212
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.rm
  store float %i.tm, ptr %i.tp, align 4, !tbaa !203
  %i.tq = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !298
  %i.ts = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !299
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.rm
  store float %i.tr, ptr %i.tu, align 4, !tbaa !203
  %i.tv = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !300
  %i.tx = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !208
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %i.rm
  store float %i.tw, ptr %i.tz, align 4, !tbaa !203
  %i.ua = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !301
  %i.uc = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !209
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.rm
  store float %i.ub, ptr %i.ue, align 4, !tbaa !203
  %i.uf = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !232
  %i.uh = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !210
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ui, i64 %i.rm
  store float %i.ug, ptr %i.uj, align 4, !tbaa !203
  %i.uk = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !300
  %i.um = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !208
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.rm
  store float %i.ul, ptr %i.uo, align 4, !tbaa !203
  %i.up = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.uq = load float, ptr %i.up, align 4, !tbaa !301
  %i.ur = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !209
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.rm
  store float %i.uq, ptr %i.ut, align 4, !tbaa !203
  %i.uu = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !232
  %i.uw = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !210
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.rm
  store float %i.uv, ptr %i.uy, align 4, !tbaa !203
  %i.uz = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.va = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !198
  %i.vc = getelementptr inbounds [16 x i8], ptr %i.vb, i64 %i.rm ; 2 uses
  %i.vd = load <4 x float>, ptr %i.uz, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.vd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.vd, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.vc, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0993.0.copyload = load <2 x float>, ptr %i.mf, align 4 ; 10 uses
  %.sroa.121000.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121000.0.copyload = load float, ptr %.sroa.121000.0..sroa_idx, align 4 ; 8 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !231
  %i.vh = load ptr, ptr %i.ve, align 8, !tbaa !302, !noalias !303
  %i.vi = sext i32 %i.vg to i64                   ; 2 uses
  %i.vj = getelementptr inbounds [16 x i8], ptr %i.vh, i64 %i.vi ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vk = load <2 x float>, ptr %i.vj, align 16, !noalias !303
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !74, !noalias !303
  %i.vl = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !308, !noalias !303
  %i.vn = getelementptr inbounds [16 x i8], ptr %i.vm, i64 %i.vi ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vn, align 16, !noalias !303 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %.sroa.2.0.copyload.i931.i.i1062 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !303
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_17CoatedDiffuseBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %24, ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %.sroa.0993.0.copyload, float %.sroa.121000.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1062, i32 noundef 0, i32 noundef 3)
  %i.vo = getelementptr inbounds nuw i8, ptr %24, i64 44 ; 3 uses
  %i.vp = load i8, ptr %i.vo, align 4, !tbaa !309, !range !11, !noundef !12
  %i.vq = trunc nuw i8 %i.vp to i1
  br i1 %i.vq, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vr = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.sroa.0149.0.copyload = load <2 x float>, ptr %i.vr, align 16 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.vs, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %.sroa.01.0.vec.extract.i.i592 = extractelement <2 x float> %.sroa.0259.0, i64 0 ; 2 uses
  %.sroa.04.0.vec.extract.i.i593 = extractelement <2 x float> %.sroa.0149.0.copyload, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.i594 = extractelement <2 x float> %.sroa.0259.0, i64 1 ; 2 uses
  %.sroa.04.4.vec.extract.i.i595 = extractelement <2 x float> %.sroa.0149.0.copyload, i64 1 ; 3 uses
  %i.vt = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.vu = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i594, float %.sroa.04.4.vec.extract.i.i595, float %i.vt)
  %i.vv = fneg float %i.vt
  %i.vw = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.vv)
  %i.vx = fadd float %i.vu, %i.vw
  %i.vy = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i592, float %.sroa.04.0.vec.extract.i.i593, float %i.vx)
  %i.vz = call noundef float @llvm.fabs.f32(float %i.vy)
  %i.wa = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !311 ; 2 uses
  %i.wc = load <4 x float>, ptr %24, align 16, !tbaa !203
  %i.wd = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.we = fmul <4 x float> %i.wd, %i.wc
  %i.wf = insertelement <4 x float> poison, float %i.vz, i64 0
  %i.wg = shufflevector <4 x float> %i.wf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wh = fmul <4 x float> %i.we, %i.wg
  %i.wi = insertelement <4 x float> poison, float %i.wb, i64 0
  %i.wj = shufflevector <4 x float> %i.wi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wk = fdiv <4 x float> %i.wh, %i.wj           ; 7 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0931.0.copyload = load <4 x float>, ptr %i.wl, align 8, !tbaa !74 ; 7 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.wn = load i8, ptr %i.wm, align 8, !tbaa !314, !range !11, !noundef !12
  %i.wo = trunc nuw i8 %i.wn to i1
  br i1 %i.wo, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620, label %.thread

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620: ; preds = %bb.q
  %.sroa.05.0.copyload.i.i.i623 = load <2 x float>, ptr %i.ol, align 8 ; 3 uses
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
  %.sroa.021.0.copyload.i.i.i630 = load <2 x float>, ptr %i.ni, align 8 ; 2 uses
  %.sroa.214.0.copyload.i.i.i634 = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %.sroa.013.0.copyload.i.i.i635 = load <2 x float>, ptr %i.oj, align 4 ; 2 uses
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
  %i.xs = load i64, ptr %20, align 8, !tbaa !274
  %i.xt = and i64 %i.xs, 144115188075855871
  %i.xu = inttoptr i64 %i.xt to ptr
  %i.xv = call noundef float @_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE3PDFENS_7Vector3IfEES5_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(60) %i.xu, <2 x float> %i.xr, float %i.ws, <2 x float> %i.xg, float %i.xj, i32 noundef 0, i32 noundef 3)
  %.pre.pre = load i8, ptr %i.vo, align 4, !tbaa !309, !range !11
  %i.xw = trunc nuw i8 %.pre.pre to i1
  br label %bb.s

.thread:                                          ; preds = %bb.q
  %i.xx = insertelement <2 x float> poison, float %i.wb, i64 0
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
  %i.yc = load float, ptr %i.yb, align 8, !tbaa !223 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 16, !tbaa !315
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
  %i.zc = load i32, ptr %i.pu, align 8, !tbaa !215
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
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mh, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !219
  %i.zp = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.ml, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %.sroa.0149.0.copyload, float %.sroa.6.0.copyload) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.zp, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.zp, 1
end_hunk_0
begin_hunk_1_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_21CoatedDiffuseMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemIS2_EENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlS7_E_clES7_:bb.a
  %i.qb = getelementptr inbounds nuw i8, ptr %21, i64 128
  store <2 x float> %.sroa.0259.0, ptr %i.qb, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %21, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %21, i64 52
  %i.qd = load i64, ptr %i.mt, align 8
  store i64 %i.qd, ptr %i.qc, align 4
  %i.qe = getelementptr inbounds nuw i8, ptr %21, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qe, ptr noundef nonnull align 4 dereferenceable(12) %i.mf, i64 12, i1 false)
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !219
  %i.qh = getelementptr inbounds nuw i8, ptr %21, i64 24
  store float %i.qg, ptr %i.qh, align 8, !tbaa !281
  %i.qi = getelementptr inbounds nuw i8, ptr %21, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.qi, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false)
  %i.qj = getelementptr inbounds nuw i8, ptr %21, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qj, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %22, align 16, !tbaa !203
  %i.qk = getelementptr inbounds nuw i8, ptr %22, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.qk, align 16, !tbaa !203
  %i.ql = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.ql, align 16, !tbaa !203
  %i.qm = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qm, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.qe, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.ni, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.oj, align 4 ; 2 uses
  %i.qn = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qo = shufflevector <4 x float> %i.qn, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qp = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qq = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.qr = fmul <2 x float> %i.qp, %i.qq
  %i.qs = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.qt = fmul <2 x float> %.sroa.0162.0.copyload, %i.qs
  %i.qu = fadd <2 x float> %i.qr, %i.qt
  %i.qv = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.qw = shufflevector <2 x float> %i.qv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qx = fmul <2 x float> %i.qw, %i.qo
  %i.qy = fadd <2 x float> %i.qx, %i.qu
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.ol, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.qz = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1098 = shufflevector <2 x float> %i.qz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1099 = fadd <2 x float> %i.qz, %shift1098
  %i.ra = extractelement <2 x float> %foldExtExtBinop1099, i64 0
  %i.rb = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.rc = fadd float %i.rb, %i.ra
  %i.rd = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qy, float %i.rc, ptr nonnull %i.e, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.re = extractvalue { <2 x float>, <2 x float> } %i.rd, 0
  %i.rf = extractvalue { <2 x float>, <2 x float> } %i.rd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.re, <2 x float> %i.rf, ptr noundef nonnull align 4 dereferenceable(32) %17)
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !231
  %i.ri = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.rj = load i8, ptr %i.ri, align 4, !tbaa !284, !range !11, !noundef !12
  %i.rk = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !286
  %i.rm = sext i32 %i.rh to i64                   ; 20 uses
  %i.rn = getelementptr inbounds i8, ptr %i.rl, i64 %i.rm
  store i8 %i.rj, ptr %i.rn, align 1, !tbaa !9
  %i.ro = load float, ptr %23, align 4, !tbaa !287
  %i.rp = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !288
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %i.rm
  store float %i.ro, ptr %i.rr, align 4, !tbaa !203
  %i.rs = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !289
  %i.ru = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !290
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.rm
  store float %i.rt, ptr %i.rw, align 4, !tbaa !203
  %i.rx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !291
  %i.rz = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !292
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.rm
  store float %i.ry, ptr %i.sb, align 4, !tbaa !203
  %i.sc = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !293
  %i.se = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !205
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.rm
  store float %i.sd, ptr %i.sg, align 4, !tbaa !203
  %i.sh = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.si = load float, ptr %i.sh, align 4, !tbaa !294
  %i.sj = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !206
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %i.rm
  store float %i.si, ptr %i.sl, align 4, !tbaa !203
  %i.sm = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !295
  %i.so = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !207
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.rm
  store float %i.sn, ptr %i.sq, align 4, !tbaa !203
  %i.sr = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !293
  %i.st = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !205
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rm
  store float %i.ss, ptr %i.sv, align 4, !tbaa !203
  %i.sw = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !294
  %i.sy = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !206
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.rm
  store float %i.sx, ptr %i.ta, align 4, !tbaa !203
  %i.tb = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !295
  %i.td = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !207
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.te, i64 %i.rm
  store float %i.tc, ptr %i.tf, align 4, !tbaa !203
  %i.tg = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.th = load float, ptr %i.tg, align 4, !tbaa !296
  %i.ti = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !211
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.rm
  store float %i.th, ptr %i.tk, align 4, !tbaa !203
  %i.tl = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !297
  %i.tn = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !212
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.rm
  store float %i.tm, ptr %i.tp, align 4, !tbaa !203
  %i.tq = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !298
  %i.ts = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !299
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.rm
  store float %i.tr, ptr %i.tu, align 4, !tbaa !203
  %i.tv = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !300
  %i.tx = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !208
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %i.rm
  store float %i.tw, ptr %i.tz, align 4, !tbaa !203
  %i.ua = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !301
  %i.uc = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !209
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.rm
  store float %i.ub, ptr %i.ue, align 4, !tbaa !203
  %i.uf = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !232
  %i.uh = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !210
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ui, i64 %i.rm
  store float %i.ug, ptr %i.uj, align 4, !tbaa !203
  %i.uk = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !300
  %i.um = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !208
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.rm
  store float %i.ul, ptr %i.uo, align 4, !tbaa !203
  %i.up = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.uq = load float, ptr %i.up, align 4, !tbaa !301
  %i.ur = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !209
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.rm
  store float %i.uq, ptr %i.ut, align 4, !tbaa !203
  %i.uu = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !232
  %i.uw = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !210
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.rm
  store float %i.uv, ptr %i.uy, align 4, !tbaa !203
  %i.uz = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.va = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !198
  %i.vc = getelementptr inbounds [16 x i8], ptr %i.vb, i64 %i.rm ; 2 uses
  %i.vd = load <4 x float>, ptr %i.uz, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.vd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.vd, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.vc, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0993.0.copyload = load <2 x float>, ptr %i.mf, align 4 ; 10 uses
  %.sroa.121000.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121000.0.copyload = load float, ptr %.sroa.121000.0..sroa_idx, align 4 ; 8 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !231
  %i.vh = load ptr, ptr %i.ve, align 8, !tbaa !302, !noalias !786
  %i.vi = sext i32 %i.vg to i64                   ; 2 uses
  %i.vj = getelementptr inbounds [16 x i8], ptr %i.vh, i64 %i.vi ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vk = load <2 x float>, ptr %i.vj, align 16, !noalias !786
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !74, !noalias !786
  %i.vl = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !308, !noalias !786
  %i.vn = getelementptr inbounds [16 x i8], ptr %i.vm, i64 %i.vi ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vn, align 16, !noalias !786 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %.sroa.2.0.copyload.i931.i.i1062 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !786
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_17CoatedDiffuseBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %24, ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %.sroa.0993.0.copyload, float %.sroa.121000.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1062, i32 noundef 0, i32 noundef 3)
  %i.vo = getelementptr inbounds nuw i8, ptr %24, i64 44 ; 3 uses
  %i.vp = load i8, ptr %i.vo, align 4, !tbaa !309, !range !11, !noundef !12
  %i.vq = trunc nuw i8 %i.vp to i1
  br i1 %i.vq, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vr = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.vr, align 16 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.vs, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %.sroa.01.0.vec.extract.i.i592 = extractelement <2 x float> %.sroa.0259.0, i64 0 ; 2 uses
  %.sroa.04.0.vec.extract.i.i593 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.i594 = extractelement <2 x float> %.sroa.0259.0, i64 1 ; 2 uses
  %.sroa.04.4.vec.extract.i.i595 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.vt = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.vu = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i594, float %.sroa.04.4.vec.extract.i.i595, float %i.vt)
  %i.vv = fneg float %i.vt
  %i.vw = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.vv)
  %i.vx = fadd float %i.vu, %i.vw
  %i.vy = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i592, float %.sroa.04.0.vec.extract.i.i593, float %i.vx)
  %i.vz = call noundef float @llvm.fabs.f32(float %i.vy)
  %i.wa = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !311 ; 2 uses
  %i.wc = load <4 x float>, ptr %24, align 16, !tbaa !203
  %i.wd = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.we = fmul <4 x float> %i.wd, %i.wc
  %i.wf = insertelement <4 x float> poison, float %i.vz, i64 0
  %i.wg = shufflevector <4 x float> %i.wf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wh = fmul <4 x float> %i.we, %i.wg
  %i.wi = insertelement <4 x float> poison, float %i.wb, i64 0
  %i.wj = shufflevector <4 x float> %i.wi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wk = fdiv <4 x float> %i.wh, %i.wj           ; 7 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0931.0.copyload = load <4 x float>, ptr %i.wl, align 8, !tbaa !74 ; 7 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.wn = load i8, ptr %i.wm, align 8, !tbaa !314, !range !11, !noundef !12
  %i.wo = trunc nuw i8 %i.wn to i1
  br i1 %i.wo, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620, label %.thread

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620: ; preds = %bb.q
  %.sroa.05.0.copyload.i.i.i623 = load <2 x float>, ptr %i.ol, align 8 ; 3 uses
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
  %.sroa.021.0.copyload.i.i.i630 = load <2 x float>, ptr %i.ni, align 8 ; 2 uses
  %.sroa.214.0.copyload.i.i.i634 = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %.sroa.013.0.copyload.i.i.i635 = load <2 x float>, ptr %i.oj, align 4 ; 2 uses
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
  %i.xs = load i64, ptr %20, align 8, !tbaa !274
  %i.xt = and i64 %i.xs, 144115188075855871
  %i.xu = inttoptr i64 %i.xt to ptr
  %i.xv = call noundef float @_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE3PDFENS_7Vector3IfEES5_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(60) %i.xu, <2 x float> %i.xr, float %i.ws, <2 x float> %i.xg, float %i.xj, i32 noundef 0, i32 noundef 3)
  %.pre.pre = load i8, ptr %i.vo, align 4, !tbaa !309, !range !11
  %i.xw = trunc nuw i8 %.pre.pre to i1
  br label %bb.s

.thread:                                          ; preds = %bb.q
  %i.xx = insertelement <2 x float> poison, float %i.wb, i64 0
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
  %i.yc = load float, ptr %i.yb, align 8, !tbaa !223 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 16, !tbaa !315
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
  %i.zc = load i32, ptr %i.pu, align 8, !tbaa !215
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
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mh, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !219
  %i.zp = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.ml, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %.sroa.0151.0.copyload, float %.sroa.6.0.copyload) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.zp, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.zp, 1
end_hunk_1
begin_hunk_2_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_23CoatedConductorMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_IS2_EENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlS9_E_clES9_:bb.a
  %i.qb = getelementptr inbounds nuw i8, ptr %21, i64 128
  store <2 x float> %.sroa.0259.0, ptr %i.qb, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %21, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %21, i64 52
  %i.qd = load i64, ptr %i.mt, align 8
  store i64 %i.qd, ptr %i.qc, align 4
  %i.qe = getelementptr inbounds nuw i8, ptr %21, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qe, ptr noundef nonnull align 4 dereferenceable(12) %i.mf, i64 12, i1 false)
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !847
  %i.qh = getelementptr inbounds nuw i8, ptr %21, i64 24
  store float %i.qg, ptr %i.qh, align 8, !tbaa !281
  %i.qi = getelementptr inbounds nuw i8, ptr %21, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.qi, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false)
  %i.qj = getelementptr inbounds nuw i8, ptr %21, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qj, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %22, align 16, !tbaa !203
  %i.qk = getelementptr inbounds nuw i8, ptr %22, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.qk, align 16, !tbaa !203
  %i.ql = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.ql, align 16, !tbaa !203
  %i.qm = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qm, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.qe, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.ni, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.oj, align 4 ; 2 uses
  %i.qn = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qo = shufflevector <4 x float> %i.qn, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qp = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qq = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.qr = fmul <2 x float> %i.qp, %i.qq
  %i.qs = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.qt = fmul <2 x float> %.sroa.0162.0.copyload, %i.qs
  %i.qu = fadd <2 x float> %i.qr, %i.qt
  %i.qv = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.qw = shufflevector <2 x float> %i.qv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qx = fmul <2 x float> %i.qw, %i.qo
  %i.qy = fadd <2 x float> %i.qx, %i.qu
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.ol, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.qz = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1098 = shufflevector <2 x float> %i.qz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1099 = fadd <2 x float> %i.qz, %shift1098
  %i.ra = extractelement <2 x float> %foldExtExtBinop1099, i64 0
  %i.rb = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.rc = fadd float %i.rb, %i.ra
  %i.rd = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qy, float %i.rc, ptr nonnull %i.e, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.re = extractvalue { <2 x float>, <2 x float> } %i.rd, 0
  %i.rf = extractvalue { <2 x float>, <2 x float> } %i.rd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.re, <2 x float> %i.rf, ptr noundef nonnull align 4 dereferenceable(32) %17)
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !856
  %i.ri = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.rj = load i8, ptr %i.ri, align 4, !tbaa !284, !range !11, !noundef !12
  %i.rk = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !286
  %i.rm = sext i32 %i.rh to i64                   ; 20 uses
  %i.rn = getelementptr inbounds i8, ptr %i.rl, i64 %i.rm
  store i8 %i.rj, ptr %i.rn, align 1, !tbaa !9
  %i.ro = load float, ptr %23, align 4, !tbaa !287
  %i.rp = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !288
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %i.rm
  store float %i.ro, ptr %i.rr, align 4, !tbaa !203
  %i.rs = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !289
  %i.ru = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !290
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.rm
  store float %i.rt, ptr %i.rw, align 4, !tbaa !203
  %i.rx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !291
  %i.rz = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !292
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.rm
  store float %i.ry, ptr %i.sb, align 4, !tbaa !203
  %i.sc = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !293
  %i.se = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !205
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.rm
  store float %i.sd, ptr %i.sg, align 4, !tbaa !203
  %i.sh = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.si = load float, ptr %i.sh, align 4, !tbaa !294
  %i.sj = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !206
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %i.rm
  store float %i.si, ptr %i.sl, align 4, !tbaa !203
  %i.sm = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !295
  %i.so = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !207
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.rm
  store float %i.sn, ptr %i.sq, align 4, !tbaa !203
  %i.sr = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !293
  %i.st = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !205
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rm
  store float %i.ss, ptr %i.sv, align 4, !tbaa !203
  %i.sw = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !294
  %i.sy = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !206
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.rm
  store float %i.sx, ptr %i.ta, align 4, !tbaa !203
  %i.tb = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !295
  %i.td = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !207
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.te, i64 %i.rm
  store float %i.tc, ptr %i.tf, align 4, !tbaa !203
  %i.tg = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.th = load float, ptr %i.tg, align 4, !tbaa !296
  %i.ti = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !211
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.rm
  store float %i.th, ptr %i.tk, align 4, !tbaa !203
  %i.tl = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !297
  %i.tn = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !212
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.rm
  store float %i.tm, ptr %i.tp, align 4, !tbaa !203
  %i.tq = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !298
  %i.ts = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !299
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.rm
  store float %i.tr, ptr %i.tu, align 4, !tbaa !203
  %i.tv = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !300
  %i.tx = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !208
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %i.rm
  store float %i.tw, ptr %i.tz, align 4, !tbaa !203
  %i.ua = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !301
  %i.uc = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !209
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.rm
  store float %i.ub, ptr %i.ue, align 4, !tbaa !203
  %i.uf = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !232
  %i.uh = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !210
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ui, i64 %i.rm
  store float %i.ug, ptr %i.uj, align 4, !tbaa !203
  %i.uk = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !300
  %i.um = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !208
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.rm
  store float %i.ul, ptr %i.uo, align 4, !tbaa !203
  %i.up = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.uq = load float, ptr %i.up, align 4, !tbaa !301
  %i.ur = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !209
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.rm
  store float %i.uq, ptr %i.ut, align 4, !tbaa !203
  %i.uu = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !232
  %i.uw = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !210
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.rm
  store float %i.uv, ptr %i.uy, align 4, !tbaa !203
  %i.uz = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.va = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !198
  %i.vc = getelementptr inbounds [16 x i8], ptr %i.vb, i64 %i.rm ; 2 uses
  %i.vd = load <4 x float>, ptr %i.uz, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.vd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.vd, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.vc, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0993.0.copyload = load <2 x float>, ptr %i.mf, align 4 ; 10 uses
  %.sroa.121000.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121000.0.copyload = load float, ptr %.sroa.121000.0..sroa_idx, align 4 ; 8 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !856
  %i.vh = load ptr, ptr %i.ve, align 8, !tbaa !302, !noalias !874
  %i.vi = sext i32 %i.vg to i64                   ; 2 uses
  %i.vj = getelementptr inbounds [16 x i8], ptr %i.vh, i64 %i.vi ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vk = load <2 x float>, ptr %i.vj, align 16, !noalias !874
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !74, !noalias !874
  %i.vl = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !308, !noalias !874
  %i.vn = getelementptr inbounds [16 x i8], ptr %i.vm, i64 %i.vi ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vn, align 16, !noalias !874 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %.sroa.2.0.copyload.i931.i.i1062 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !874
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_19CoatedConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %24, ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %.sroa.0993.0.copyload, float %.sroa.121000.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1062, i32 noundef 0, i32 noundef 3)
  %i.vo = getelementptr inbounds nuw i8, ptr %24, i64 44 ; 3 uses
  %i.vp = load i8, ptr %i.vo, align 4, !tbaa !309, !range !11, !noundef !12
  %i.vq = trunc nuw i8 %i.vp to i1
  br i1 %i.vq, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vr = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.vr, align 16 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.vs, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %.sroa.01.0.vec.extract.i.i592 = extractelement <2 x float> %.sroa.0259.0, i64 0 ; 2 uses
  %.sroa.04.0.vec.extract.i.i593 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.i594 = extractelement <2 x float> %.sroa.0259.0, i64 1 ; 2 uses
  %.sroa.04.4.vec.extract.i.i595 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.vt = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.vu = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i594, float %.sroa.04.4.vec.extract.i.i595, float %i.vt)
  %i.vv = fneg float %i.vt
  %i.vw = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.vv)
  %i.vx = fadd float %i.vu, %i.vw
  %i.vy = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i592, float %.sroa.04.0.vec.extract.i.i593, float %i.vx)
  %i.vz = call noundef float @llvm.fabs.f32(float %i.vy)
  %i.wa = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !311 ; 2 uses
  %i.wc = load <4 x float>, ptr %24, align 16, !tbaa !203
  %i.wd = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.we = fmul <4 x float> %i.wd, %i.wc
  %i.wf = insertelement <4 x float> poison, float %i.vz, i64 0
  %i.wg = shufflevector <4 x float> %i.wf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wh = fmul <4 x float> %i.we, %i.wg
  %i.wi = insertelement <4 x float> poison, float %i.wb, i64 0
  %i.wj = shufflevector <4 x float> %i.wi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wk = fdiv <4 x float> %i.wh, %i.wj           ; 7 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0931.0.copyload = load <4 x float>, ptr %i.wl, align 8, !tbaa !74 ; 7 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.wn = load i8, ptr %i.wm, align 8, !tbaa !314, !range !11, !noundef !12
  %i.wo = trunc nuw i8 %i.wn to i1
  br i1 %i.wo, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620, label %.thread

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620: ; preds = %bb.q
  %.sroa.05.0.copyload.i.i.i623 = load <2 x float>, ptr %i.ol, align 8 ; 3 uses
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
  %.sroa.021.0.copyload.i.i.i630 = load <2 x float>, ptr %i.ni, align 8 ; 2 uses
  %.sroa.214.0.copyload.i.i.i634 = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %.sroa.013.0.copyload.i.i.i635 = load <2 x float>, ptr %i.oj, align 4 ; 2 uses
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
  %i.xs = load i64, ptr %20, align 8, !tbaa !274
  %i.xt = and i64 %i.xs, 144115188075855871
  %i.xu = inttoptr i64 %i.xt to ptr
  %i.xv = call noundef float @_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE3PDFENS_7Vector3IfEES5_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(84) %i.xu, <2 x float> %i.xr, float %i.ws, <2 x float> %i.xg, float %i.xj, i32 noundef 0, i32 noundef 3)
  %.pre.pre = load i8, ptr %i.vo, align 4, !tbaa !309, !range !11
  %i.xw = trunc nuw i8 %.pre.pre to i1
  br label %bb.s

.thread:                                          ; preds = %bb.q
  %i.xx = insertelement <2 x float> poison, float %i.wb, i64 0
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
  %i.yc = load float, ptr %i.yb, align 8, !tbaa !851 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 16, !tbaa !315
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
  %i.zc = load i32, ptr %i.pu, align 8, !tbaa !843
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
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mh, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !847
  %i.zp = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.ml, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %.sroa.0151.0.copyload, float %.sroa.6.0.copyload) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.zp, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.zp, 1
end_hunk_2
begin_hunk_3_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_23CoatedConductorMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_IS2_EENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlS9_E_clES9_:bb.a
  %i.qb = getelementptr inbounds nuw i8, ptr %21, i64 128
  store <2 x float> %.sroa.0259.0, ptr %i.qb, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %21, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %21, i64 52
  %i.qd = load i64, ptr %i.mt, align 8
  store i64 %i.qd, ptr %i.qc, align 4
  %i.qe = getelementptr inbounds nuw i8, ptr %21, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qe, ptr noundef nonnull align 4 dereferenceable(12) %i.mf, i64 12, i1 false)
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !847
  %i.qh = getelementptr inbounds nuw i8, ptr %21, i64 24
  store float %i.qg, ptr %i.qh, align 8, !tbaa !281
  %i.qi = getelementptr inbounds nuw i8, ptr %21, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.qi, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false)
  %i.qj = getelementptr inbounds nuw i8, ptr %21, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qj, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %22, align 16, !tbaa !203
  %i.qk = getelementptr inbounds nuw i8, ptr %22, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.qk, align 16, !tbaa !203
  %i.ql = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.ql, align 16, !tbaa !203
  %i.qm = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qm, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.qe, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.ni, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.oj, align 4 ; 2 uses
  %i.qn = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qo = shufflevector <4 x float> %i.qn, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qp = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qq = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.qr = fmul <2 x float> %i.qp, %i.qq
  %i.qs = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.qt = fmul <2 x float> %.sroa.0162.0.copyload, %i.qs
  %i.qu = fadd <2 x float> %i.qr, %i.qt
  %i.qv = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.qw = shufflevector <2 x float> %i.qv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qx = fmul <2 x float> %i.qw, %i.qo
  %i.qy = fadd <2 x float> %i.qx, %i.qu
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.ol, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.qz = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1098 = shufflevector <2 x float> %i.qz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1099 = fadd <2 x float> %i.qz, %shift1098
  %i.ra = extractelement <2 x float> %foldExtExtBinop1099, i64 0
  %i.rb = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.rc = fadd float %i.rb, %i.ra
  %i.rd = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qy, float %i.rc, ptr nonnull %i.e, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.re = extractvalue { <2 x float>, <2 x float> } %i.rd, 0
  %i.rf = extractvalue { <2 x float>, <2 x float> } %i.rd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.re, <2 x float> %i.rf, ptr noundef nonnull align 4 dereferenceable(32) %17)
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !856
  %i.ri = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.rj = load i8, ptr %i.ri, align 4, !tbaa !284, !range !11, !noundef !12
  %i.rk = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !286
  %i.rm = sext i32 %i.rh to i64                   ; 20 uses
  %i.rn = getelementptr inbounds i8, ptr %i.rl, i64 %i.rm
  store i8 %i.rj, ptr %i.rn, align 1, !tbaa !9
  %i.ro = load float, ptr %23, align 4, !tbaa !287
  %i.rp = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !288
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %i.rm
  store float %i.ro, ptr %i.rr, align 4, !tbaa !203
  %i.rs = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !289
  %i.ru = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !290
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.rm
  store float %i.rt, ptr %i.rw, align 4, !tbaa !203
  %i.rx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !291
  %i.rz = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !292
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.rm
  store float %i.ry, ptr %i.sb, align 4, !tbaa !203
  %i.sc = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !293
  %i.se = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !205
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.rm
  store float %i.sd, ptr %i.sg, align 4, !tbaa !203
  %i.sh = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.si = load float, ptr %i.sh, align 4, !tbaa !294
  %i.sj = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !206
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %i.rm
  store float %i.si, ptr %i.sl, align 4, !tbaa !203
  %i.sm = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !295
  %i.so = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !207
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.rm
  store float %i.sn, ptr %i.sq, align 4, !tbaa !203
  %i.sr = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !293
  %i.st = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !205
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rm
  store float %i.ss, ptr %i.sv, align 4, !tbaa !203
  %i.sw = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !294
  %i.sy = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !206
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.rm
  store float %i.sx, ptr %i.ta, align 4, !tbaa !203
  %i.tb = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !295
  %i.td = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !207
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.te, i64 %i.rm
  store float %i.tc, ptr %i.tf, align 4, !tbaa !203
  %i.tg = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.th = load float, ptr %i.tg, align 4, !tbaa !296
  %i.ti = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !211
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.rm
  store float %i.th, ptr %i.tk, align 4, !tbaa !203
  %i.tl = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !297
  %i.tn = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !212
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.rm
  store float %i.tm, ptr %i.tp, align 4, !tbaa !203
  %i.tq = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !298
  %i.ts = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !299
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.rm
  store float %i.tr, ptr %i.tu, align 4, !tbaa !203
  %i.tv = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !300
  %i.tx = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !208
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %i.rm
  store float %i.tw, ptr %i.tz, align 4, !tbaa !203
  %i.ua = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !301
  %i.uc = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !209
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.rm
  store float %i.ub, ptr %i.ue, align 4, !tbaa !203
  %i.uf = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !232
  %i.uh = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !210
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ui, i64 %i.rm
  store float %i.ug, ptr %i.uj, align 4, !tbaa !203
  %i.uk = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !300
  %i.um = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !208
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.rm
  store float %i.ul, ptr %i.uo, align 4, !tbaa !203
  %i.up = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.uq = load float, ptr %i.up, align 4, !tbaa !301
  %i.ur = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !209
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.rm
  store float %i.uq, ptr %i.ut, align 4, !tbaa !203
  %i.uu = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !232
  %i.uw = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !210
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.rm
  store float %i.uv, ptr %i.uy, align 4, !tbaa !203
  %i.uz = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.va = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !198
  %i.vc = getelementptr inbounds [16 x i8], ptr %i.vb, i64 %i.rm ; 2 uses
  %i.vd = load <4 x float>, ptr %i.uz, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.vd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.vd, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.vc, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0993.0.copyload = load <2 x float>, ptr %i.mf, align 4 ; 10 uses
  %.sroa.121000.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121000.0.copyload = load float, ptr %.sroa.121000.0..sroa_idx, align 4 ; 8 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !856
  %i.vh = load ptr, ptr %i.ve, align 8, !tbaa !302, !noalias !919
  %i.vi = sext i32 %i.vg to i64                   ; 2 uses
  %i.vj = getelementptr inbounds [16 x i8], ptr %i.vh, i64 %i.vi ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vk = load <2 x float>, ptr %i.vj, align 16, !noalias !919
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !74, !noalias !919
  %i.vl = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !308, !noalias !919
  %i.vn = getelementptr inbounds [16 x i8], ptr %i.vm, i64 %i.vi ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vn, align 16, !noalias !919 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %.sroa.2.0.copyload.i931.i.i1062 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !919
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_19CoatedConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %24, ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %.sroa.0993.0.copyload, float %.sroa.121000.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1062, i32 noundef 0, i32 noundef 3)
  %i.vo = getelementptr inbounds nuw i8, ptr %24, i64 44 ; 3 uses
  %i.vp = load i8, ptr %i.vo, align 4, !tbaa !309, !range !11, !noundef !12
  %i.vq = trunc nuw i8 %i.vp to i1
  br i1 %i.vq, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vr = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.vr, align 16 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.vs, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %.sroa.01.0.vec.extract.i.i592 = extractelement <2 x float> %.sroa.0259.0, i64 0 ; 2 uses
  %.sroa.04.0.vec.extract.i.i593 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.i594 = extractelement <2 x float> %.sroa.0259.0, i64 1 ; 2 uses
  %.sroa.04.4.vec.extract.i.i595 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.vt = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.vu = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i594, float %.sroa.04.4.vec.extract.i.i595, float %i.vt)
  %i.vv = fneg float %i.vt
  %i.vw = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.vv)
  %i.vx = fadd float %i.vu, %i.vw
  %i.vy = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i592, float %.sroa.04.0.vec.extract.i.i593, float %i.vx)
  %i.vz = call noundef float @llvm.fabs.f32(float %i.vy)
  %i.wa = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !311 ; 2 uses
  %i.wc = load <4 x float>, ptr %24, align 16, !tbaa !203
  %i.wd = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.we = fmul <4 x float> %i.wd, %i.wc
  %i.wf = insertelement <4 x float> poison, float %i.vz, i64 0
  %i.wg = shufflevector <4 x float> %i.wf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wh = fmul <4 x float> %i.we, %i.wg
  %i.wi = insertelement <4 x float> poison, float %i.wb, i64 0
  %i.wj = shufflevector <4 x float> %i.wi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wk = fdiv <4 x float> %i.wh, %i.wj           ; 7 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0931.0.copyload = load <4 x float>, ptr %i.wl, align 8, !tbaa !74 ; 7 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.wn = load i8, ptr %i.wm, align 8, !tbaa !314, !range !11, !noundef !12
  %i.wo = trunc nuw i8 %i.wn to i1
  br i1 %i.wo, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620, label %.thread

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620: ; preds = %bb.q
  %.sroa.05.0.copyload.i.i.i623 = load <2 x float>, ptr %i.ol, align 8 ; 3 uses
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
  %.sroa.021.0.copyload.i.i.i630 = load <2 x float>, ptr %i.ni, align 8 ; 2 uses
  %.sroa.214.0.copyload.i.i.i634 = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %.sroa.013.0.copyload.i.i.i635 = load <2 x float>, ptr %i.oj, align 4 ; 2 uses
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
  %i.xs = load i64, ptr %20, align 8, !tbaa !274
  %i.xt = and i64 %i.xs, 144115188075855871
  %i.xu = inttoptr i64 %i.xt to ptr
  %i.xv = call noundef float @_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE3PDFENS_7Vector3IfEES5_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(84) %i.xu, <2 x float> %i.xr, float %i.ws, <2 x float> %i.xg, float %i.xj, i32 noundef 0, i32 noundef 3)
  %.pre.pre = load i8, ptr %i.vo, align 4, !tbaa !309, !range !11
  %i.xw = trunc nuw i8 %.pre.pre to i1
  br label %bb.s

.thread:                                          ; preds = %bb.q
  %i.xx = insertelement <2 x float> poison, float %i.wb, i64 0
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
  %i.yc = load float, ptr %i.yb, align 8, !tbaa !851 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 16, !tbaa !315
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
  %i.zc = load i32, ptr %i.pu, align 8, !tbaa !843
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
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mh, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !847
  %i.zp = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.ml, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %.sroa.0151.0.copyload, float %.sroa.6.0.copyload) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.zp, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.zp, 1
end_hunk_3
begin_hunk_4_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_17ConductorMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_IS2_EENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSB_E_clESB_:bb.a
  %i.pr = getelementptr inbounds nuw i8, ptr %22, i64 128
  store <2 x float> %.sroa.0259.0, ptr %i.pr, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %22, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %22, i64 52
  %i.pt = load i64, ptr %i.mk, align 8
  store i64 %i.pt, ptr %i.ps, align 4
  %i.pu = getelementptr inbounds nuw i8, ptr %22, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pu, ptr noundef nonnull align 4 dereferenceable(12) %i.mf, i64 12, i1 false)
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !974
  %i.px = getelementptr inbounds nuw i8, ptr %22, i64 24
  store float %i.pw, ptr %i.px, align 8, !tbaa !281
  %i.py = getelementptr inbounds nuw i8, ptr %22, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.py, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %i.pz = getelementptr inbounds nuw i8, ptr %22, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pz, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %23, align 16, !tbaa !203
  %i.qa = getelementptr inbounds nuw i8, ptr %23, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.qa, align 16, !tbaa !203
  %i.qb = getelementptr inbounds nuw i8, ptr %23, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qb, align 16, !tbaa !203
  %i.qc = getelementptr inbounds nuw i8, ptr %23, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qc, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.pu, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.my, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.nz, align 4 ; 2 uses
  %i.qd = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qe = shufflevector <4 x float> %i.qd, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qf = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qg = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.qh = fmul <2 x float> %i.qf, %i.qg
  %i.qi = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.qj = fmul <2 x float> %.sroa.0162.0.copyload, %i.qi
  %i.qk = fadd <2 x float> %i.qh, %i.qj
  %i.ql = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.qm = shufflevector <2 x float> %i.ql, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qn = fmul <2 x float> %i.qm, %i.qe
  %i.qo = fadd <2 x float> %i.qn, %i.qk
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.ob, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.qp = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1221 = shufflevector <2 x float> %i.qp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1222 = fadd <2 x float> %i.qp, %shift1221
  %i.qq = extractelement <2 x float> %foldExtExtBinop1222, i64 0
  %i.qr = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.qs = fadd float %i.qr, %i.qq
  %i.qt = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %21, <2 x float> %i.qo, float %i.qs, ptr nonnull %i.e, i64 16, ptr nonnull %23, i64 16) ; 2 uses
  %i.qu = extractvalue { <2 x float>, <2 x float> } %i.qt, 0
  %i.qv = extractvalue { <2 x float>, <2 x float> } %i.qt, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %24, ptr noundef nonnull align 8 dereferenceable(248) %22, <2 x float> %i.qu, <2 x float> %i.qv, ptr noundef nonnull align 4 dereferenceable(32) %18)
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !983
  %i.qy = getelementptr inbounds nuw i8, ptr %24, i64 88
  %i.qz = load i8, ptr %i.qy, align 4, !tbaa !284, !range !11, !noundef !12
  %i.ra = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !286
  %i.rc = sext i32 %i.qx to i64                   ; 20 uses
  %i.rd = getelementptr inbounds i8, ptr %i.rb, i64 %i.rc
  store i8 %i.qz, ptr %i.rd, align 1, !tbaa !9
  %i.re = load float, ptr %24, align 4, !tbaa !287
  %i.rf = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !288
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.rg, i64 %i.rc
  store float %i.re, ptr %i.rh, align 4, !tbaa !203
  %i.ri = getelementptr inbounds nuw i8, ptr %24, i64 4
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !289
  %i.rk = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !290
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %i.rc
  store float %i.rj, ptr %i.rm, align 4, !tbaa !203
  %i.rn = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !291
  %i.rp = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !292
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %i.rc
  store float %i.ro, ptr %i.rr, align 4, !tbaa !203
  %i.rs = getelementptr inbounds nuw i8, ptr %24, i64 12
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !293
  %i.ru = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !205
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.rc
  store float %i.rt, ptr %i.rw, align 4, !tbaa !203
  %i.rx = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !294
  %i.rz = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !206
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.rc
  store float %i.ry, ptr %i.sb, align 4, !tbaa !203
  %i.sc = getelementptr inbounds nuw i8, ptr %24, i64 20
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !295
  %i.se = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !207
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.rc
  store float %i.sd, ptr %i.sg, align 4, !tbaa !203
  %i.sh = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.si = load float, ptr %i.sh, align 4, !tbaa !293
  %i.sj = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !205
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %i.rc
  store float %i.si, ptr %i.sl, align 4, !tbaa !203
  %i.sm = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !294
  %i.so = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !206
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.rc
  store float %i.sn, ptr %i.sq, align 4, !tbaa !203
  %i.sr = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !295
  %i.st = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !207
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rc
  store float %i.ss, ptr %i.sv, align 4, !tbaa !203
  %i.sw = getelementptr inbounds nuw i8, ptr %24, i64 36
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !296
  %i.sy = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !211
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.rc
  store float %i.sx, ptr %i.ta, align 4, !tbaa !203
  %i.tb = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !297
  %i.td = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !212
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.te, i64 %i.rc
  store float %i.tc, ptr %i.tf, align 4, !tbaa !203
  %i.tg = getelementptr inbounds nuw i8, ptr %24, i64 44
  %i.th = load float, ptr %i.tg, align 4, !tbaa !298
  %i.ti = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !299
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.rc
  store float %i.th, ptr %i.tk, align 4, !tbaa !203
  %i.tl = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !300
  %i.tn = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !208
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.rc
  store float %i.tm, ptr %i.tp, align 4, !tbaa !203
  %i.tq = getelementptr inbounds nuw i8, ptr %24, i64 52
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !301
  %i.ts = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !209
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.rc
  store float %i.tr, ptr %i.tu, align 4, !tbaa !203
  %i.tv = getelementptr inbounds nuw i8, ptr %24, i64 56
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !232
  %i.tx = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !210
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %i.rc
  store float %i.tw, ptr %i.tz, align 4, !tbaa !203
  %i.ua = getelementptr inbounds nuw i8, ptr %24, i64 60
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !300
  %i.uc = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !208
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.rc
  store float %i.ub, ptr %i.ue, align 4, !tbaa !203
  %i.uf = getelementptr inbounds nuw i8, ptr %24, i64 64
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !301
  %i.uh = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !209
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ui, i64 %i.rc
  store float %i.ug, ptr %i.uj, align 4, !tbaa !203
  %i.uk = getelementptr inbounds nuw i8, ptr %24, i64 68
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !232
  %i.um = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !210
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.rc
  store float %i.ul, ptr %i.uo, align 4, !tbaa !203
  %i.up = getelementptr inbounds nuw i8, ptr %24, i64 72
  %i.uq = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !198
  %i.us = getelementptr inbounds [16 x i8], ptr %i.ur, i64 %i.rc ; 2 uses
  %i.ut = load <4 x float>, ptr %i.up, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.ut, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.ut, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.us, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.01059.0.copyload = load <2 x float>, ptr %i.mf, align 4 ; 14 uses
  %.sroa.121066.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121066.0.copyload = load float, ptr %.sroa.121066.0..sroa_idx, align 4 ; 9 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !983
  %i.ux = load ptr, ptr %i.uu, align 8, !tbaa !302, !noalias !1001
  %i.uy = sext i32 %i.uw to i64                   ; 2 uses
  %i.uz = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.uy ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.va = load <2 x float>, ptr %i.uz, align 16, !noalias !1001
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !74, !noalias !1001
  %i.vb = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !308, !noalias !1001
  %i.vd = getelementptr inbounds [16 x i8], ptr %i.vc, i64 %i.uy ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vd, align 16, !noalias !1001 ; 2 uses
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %.sroa.04.0.vec.extract.i.i.i.i589 = extractelement <2 x float> %.sroa.01059.0.copyload, i64 0
  %.sroa.05.0.copyload.i.i.i598 = load <2 x float>, ptr %i.ob, align 8, !noalias !1006
  %.sroa.26.0.copyload.i.i.i600 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1006
  %i.ve = fmul <2 x float> %.sroa.01059.0.copyload, %.sroa.05.0.copyload.i.i.i598 ; 2 uses
  %shift1224 = shufflevector <2 x float> %i.ve, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1225 = fadd <2 x float> %i.ve, %shift1224
  %i.vf = extractelement <2 x float> %foldExtExtBinop1225, i64 0
  %i.vg = fmul float %.sroa.121066.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.vh = fadd float %i.vg, %i.vf                 ; 2 uses
  %i.vi = fcmp oeq float %i.vh, 0.000000e+00
  br i1 %i.vi, label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %.sroa.2.0.copyload.i931.i.i1176 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !1001
  %.sroa.021.0.copyload.i.i.i586 = load <2 x float>, ptr %i.my, align 8, !noalias !1006 ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = load <2 x float>, ptr %i.nz, align 4, !noalias !1006 ; 2 uses
  %i.vj = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !1006
  %i.vk = shufflevector <4 x float> %i.vj, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.vl = insertelement <2 x float> poison, float %.sroa.121066.0.copyload, i64 0
  %i.vm = shufflevector <2 x float> %i.vl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vn = fmul <2 x float> %i.vm, %i.vk
  %i.vo = shufflevector <2 x float> %.sroa.01059.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vp = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.vq = fmul <2 x float> %i.vo, %i.vp
  %i.vr = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.vs = fmul <2 x float> %.sroa.01059.0.copyload, %i.vr
  %i.vt = fadd <2 x float> %i.vq, %i.vs
  %i.vu = fadd <2 x float> %i.vn, %i.vt
  %i.vv = load i64, ptr %21, align 8, !tbaa !274, !noalias !1006
  %i.vw = and i64 %i.vv, 144115188075855871
  %i.vx = inttoptr i64 %i.vw to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !1006
  call void @_ZNK4pbrt13ConductorBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %8, ptr noundef nonnull align 4 dereferenceable(40) %i.vx, <2 x float> %i.vu, float %i.vh, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1176, i32 noundef 0, i32 noundef 3), !noalias !1006
  %i.vy = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.vz = load i8, ptr %i.vy, align 4, !tbaa !309, !range !11, !noalias !1006, !noundef !12
  %i.wa = trunc nuw i8 %i.vz to i1
  br i1 %i.wa, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.q
  %i.wb = load <4 x float>, ptr %8, align 16, !noalias !1006
  %.fr = freeze <4 x float> %i.wb                 ; 2 uses
  %i.wc = fcmp une <4 x float> %.fr, zeroinitializer
  %i.wd = bitcast <4 x i1> %i.wc to i4
  %i.we = icmp eq i4 %i.wd, 0
  %i.wf = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.wg = load float, ptr %i.wf, align 4, !noalias !1006 ; 3 uses
  %i.wh = fcmp oeq float %i.wg, 0.000000e+00
  %or.cond.i605 = select i1 %i.we, i1 true, i1 %i.wh
  br i1 %or.cond.i605, label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.wi = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.wj = load float, ptr %i.wi, align 8, !tbaa !232, !noalias !1006 ; 3 uses
  %i.wk = fcmp oeq float %i.wj, 0.000000e+00
  br i1 %i.wk, label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %bb.r

_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit: ; preds = %bb.q, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1006
  br label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread

bb.r:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  %i.wl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.wl, align 16, !noalias !1006 ; 4 uses
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %.sroa.037.0.copyload.i.i = load <2 x float>, ptr %i.my, align 8, !noalias !1006 ; 3 uses
  %.sroa.238.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !tbaa !203, !noalias !1006 ; 3 uses
  %i.wm = fmul float %.sroa.041.0.vec.extract.i.i, %.sroa.238.0.copyload.i.i
  %.sroa.041.4.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %.sroa.027.0.copyload.i.i = load <2 x float>, ptr %i.nz, align 4, !noalias !1006 ; 3 uses
  %.sroa.228.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !203, !noalias !1006 ; 3 uses
  %i.wn = fmul float %.sroa.041.4.vec.extract.i.i, %.sroa.228.0.copyload.i.i
  %i.wo = fadd float %i.wm, %i.wn
  %.sroa.011.0.copyload.i.i = load <2 x float>, ptr %i.ob, align 8, !noalias !1006 ; 3 uses
  %.sroa.212.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !203, !noalias !1006 ; 3 uses
  %i.wp = fmul float %i.wj, %.sroa.212.0.copyload.i.i
  %i.wq = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wr = fmul <2 x float> %i.wq, %.sroa.037.0.copyload.i.i
  %i.ws = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wt = fmul <2 x float> %i.ws, %.sroa.027.0.copyload.i.i
  %i.wu = fadd <2 x float> %i.wr, %i.wt
  %i.wv = insertelement <2 x float> poison, float %i.wj, i64 0
  %i.ww = shufflevector <2 x float> %i.wv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wx = fmul <2 x float> %i.ww, %.sroa.011.0.copyload.i.i
  %i.wy = fadd <2 x float> %i.wu, %i.wx           ; 6 uses
  %i.wz = fadd float %i.wo, %i.wp                 ; 8 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 16 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 36
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.21.0.copyload = load i8, ptr %.sroa.21.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1006
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.xa, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %i.xb = fmul float %.sroa.17.0, %i.wz           ; 2 uses
  %i.xc = extractelement <2 x float> %i.wy, i64 1 ; 3 uses
  %i.xd = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.xc, float %i.xb)
  %i.xe = fneg float %i.xb
  %i.xf = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.wz, float %i.xe)
  %i.xg = fadd float %i.xd, %i.xf
  %i.xh = extractelement <2 x float> %i.wy, i64 0 ; 3 uses
  %i.xi = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.xh, float %i.xg)
  %i.xj = call noundef float @llvm.fabs.f32(float %i.xi)
  %i.xk = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.xl = fmul <4 x float> %.fr, %i.xk
  %i.xm = insertelement <4 x float> poison, float %i.xj, i64 0
  %i.xn = shufflevector <4 x float> %i.xm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xo = fmul <4 x float> %i.xn, %i.xl
  %i.xp = insertelement <4 x float> poison, float %i.wg, i64 0
  %i.xq = shufflevector <4 x float> %i.xp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xr = fdiv <4 x float> %i.xo, %i.xq           ; 7 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0958.0.copyload = load <4 x float>, ptr %i.xs, align 8, !tbaa !74 ; 6 uses
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
  %i.xz = insertelement <2 x float> poison, float %i.wz, i64 0
  %i.ya = shufflevector <2 x float> %i.xz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yb = insertelement <2 x float> poison, float %.sroa.228.0.copyload.i.i, i64 0
  %i.yc = insertelement <2 x float> %i.yb, float %.sroa.238.0.copyload.i.i, i64 1
  %i.yd = fmul <2 x float> %i.ya, %i.yc
  %i.ye = shufflevector <2 x float> %.sroa.037.0.copyload.i.i, <2 x float> %.sroa.027.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.yf = fmul <2 x float> %i.wy, %i.ye
  %i.yg = shufflevector <2 x float> %i.yf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yh = shufflevector <2 x float> %.sroa.027.0.copyload.i.i, <2 x float> %.sroa.037.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.yi = fmul <2 x float> %i.wy, %i.yh
  %i.yj = fadd <2 x float> %i.yi, %i.yg
  %i.yk = fadd <2 x float> %i.yd, %i.yj
  %i.yl = fmul float %i.wz, %.sroa.212.0.copyload.i.i
  %i.ym = fmul <2 x float> %i.wy, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1230 = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1231 = fadd <2 x float> %i.ym, %shift1230
  %i.yn = extractelement <2 x float> %foldExtExtBinop1231, i64 0
  %i.yo = fadd float %i.yl, %i.yn                 ; 2 uses
  %i.yp = insertelement <2 x float> poison, float %.sroa.238.0.copyload.i.i, i64 0
  %i.yq = insertelement <2 x float> %i.yp, float %.sroa.228.0.copyload.i.i, i64 1
  %i.yr = fmul <2 x float> %i.vm, %i.yq
  %i.ys = fmul <2 x float> %.sroa.01059.0.copyload, %i.ye
  %i.yt = fmul <2 x float> %.sroa.01059.0.copyload, %i.yh
  %i.yu = shufflevector <2 x float> %i.yt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yv = fadd <2 x float> %i.yu, %i.ys
  %i.yw = fadd <2 x float> %i.yr, %i.yv           ; 3 uses
  %i.yx = load i64, ptr %21, align 8, !tbaa !274
  %i.yy = and i64 %i.yx, 144115188075855871
  %i.yz = inttoptr i64 %i.yy to ptr               ; 3 uses
  %i.za = fmul float %i.xx, %i.yo
  %i.zb = fcmp ogt float %i.za, 0.000000e+00
  br i1 %i.zb, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 4
  %i.zd = load float, ptr %i.yz, align 4, !tbaa !203 ; 2 uses
  %i.ze = load float, ptr %i.zc, align 4, !tbaa !203 ; 2 uses
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
  br i1 %i.zm, label %bb.v, label %bb.y, !prof !888

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
end_hunk_4
begin_hunk_5_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_17ConductorMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_IS2_EENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSB_E_clESB_:bb.a
  %i.pr = getelementptr inbounds nuw i8, ptr %22, i64 128
  store <2 x float> %.sroa.0259.0, ptr %i.pr, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %22, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %22, i64 52
  %i.pt = load i64, ptr %i.mk, align 8
  store i64 %i.pt, ptr %i.ps, align 4
  %i.pu = getelementptr inbounds nuw i8, ptr %22, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pu, ptr noundef nonnull align 4 dereferenceable(12) %i.mf, i64 12, i1 false)
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !974
  %i.px = getelementptr inbounds nuw i8, ptr %22, i64 24
  store float %i.pw, ptr %i.px, align 8, !tbaa !281
  %i.py = getelementptr inbounds nuw i8, ptr %22, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.py, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %i.pz = getelementptr inbounds nuw i8, ptr %22, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pz, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %23, align 16, !tbaa !203
  %i.qa = getelementptr inbounds nuw i8, ptr %23, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.qa, align 16, !tbaa !203
  %i.qb = getelementptr inbounds nuw i8, ptr %23, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qb, align 16, !tbaa !203
  %i.qc = getelementptr inbounds nuw i8, ptr %23, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qc, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.pu, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.my, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.nz, align 4 ; 2 uses
  %i.qd = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qe = shufflevector <4 x float> %i.qd, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qf = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qg = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.qh = fmul <2 x float> %i.qf, %i.qg
  %i.qi = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.qj = fmul <2 x float> %.sroa.0162.0.copyload, %i.qi
  %i.qk = fadd <2 x float> %i.qh, %i.qj
  %i.ql = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.qm = shufflevector <2 x float> %i.ql, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qn = fmul <2 x float> %i.qm, %i.qe
  %i.qo = fadd <2 x float> %i.qn, %i.qk
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.ob, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.qp = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1221 = shufflevector <2 x float> %i.qp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1222 = fadd <2 x float> %i.qp, %shift1221
  %i.qq = extractelement <2 x float> %foldExtExtBinop1222, i64 0
  %i.qr = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.qs = fadd float %i.qr, %i.qq
  %i.qt = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %21, <2 x float> %i.qo, float %i.qs, ptr nonnull %i.e, i64 16, ptr nonnull %23, i64 16) ; 2 uses
  %i.qu = extractvalue { <2 x float>, <2 x float> } %i.qt, 0
  %i.qv = extractvalue { <2 x float>, <2 x float> } %i.qt, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %24, ptr noundef nonnull align 8 dereferenceable(248) %22, <2 x float> %i.qu, <2 x float> %i.qv, ptr noundef nonnull align 4 dereferenceable(32) %18)
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !983
  %i.qy = getelementptr inbounds nuw i8, ptr %24, i64 88
  %i.qz = load i8, ptr %i.qy, align 4, !tbaa !284, !range !11, !noundef !12
  %i.ra = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !286
  %i.rc = sext i32 %i.qx to i64                   ; 20 uses
  %i.rd = getelementptr inbounds i8, ptr %i.rb, i64 %i.rc
  store i8 %i.qz, ptr %i.rd, align 1, !tbaa !9
  %i.re = load float, ptr %24, align 4, !tbaa !287
  %i.rf = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !288
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.rg, i64 %i.rc
  store float %i.re, ptr %i.rh, align 4, !tbaa !203
  %i.ri = getelementptr inbounds nuw i8, ptr %24, i64 4
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !289
  %i.rk = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !290
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %i.rc
  store float %i.rj, ptr %i.rm, align 4, !tbaa !203
  %i.rn = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !291
  %i.rp = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !292
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %i.rc
  store float %i.ro, ptr %i.rr, align 4, !tbaa !203
  %i.rs = getelementptr inbounds nuw i8, ptr %24, i64 12
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !293
  %i.ru = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !205
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.rc
  store float %i.rt, ptr %i.rw, align 4, !tbaa !203
  %i.rx = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !294
  %i.rz = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !206
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.rc
  store float %i.ry, ptr %i.sb, align 4, !tbaa !203
  %i.sc = getelementptr inbounds nuw i8, ptr %24, i64 20
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !295
  %i.se = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !207
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.rc
  store float %i.sd, ptr %i.sg, align 4, !tbaa !203
  %i.sh = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.si = load float, ptr %i.sh, align 4, !tbaa !293
  %i.sj = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !205
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %i.rc
  store float %i.si, ptr %i.sl, align 4, !tbaa !203
  %i.sm = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !294
  %i.so = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !206
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.rc
  store float %i.sn, ptr %i.sq, align 4, !tbaa !203
  %i.sr = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !295
  %i.st = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !207
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rc
  store float %i.ss, ptr %i.sv, align 4, !tbaa !203
  %i.sw = getelementptr inbounds nuw i8, ptr %24, i64 36
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !296
  %i.sy = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !211
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.rc
  store float %i.sx, ptr %i.ta, align 4, !tbaa !203
  %i.tb = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !297
  %i.td = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !212
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.te, i64 %i.rc
  store float %i.tc, ptr %i.tf, align 4, !tbaa !203
  %i.tg = getelementptr inbounds nuw i8, ptr %24, i64 44
  %i.th = load float, ptr %i.tg, align 4, !tbaa !298
  %i.ti = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !299
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.rc
  store float %i.th, ptr %i.tk, align 4, !tbaa !203
  %i.tl = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !300
  %i.tn = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !208
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.rc
  store float %i.tm, ptr %i.tp, align 4, !tbaa !203
  %i.tq = getelementptr inbounds nuw i8, ptr %24, i64 52
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !301
  %i.ts = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !209
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.rc
  store float %i.tr, ptr %i.tu, align 4, !tbaa !203
  %i.tv = getelementptr inbounds nuw i8, ptr %24, i64 56
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !232
  %i.tx = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !210
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %i.rc
  store float %i.tw, ptr %i.tz, align 4, !tbaa !203
  %i.ua = getelementptr inbounds nuw i8, ptr %24, i64 60
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !300
  %i.uc = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !208
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.rc
  store float %i.ub, ptr %i.ue, align 4, !tbaa !203
  %i.uf = getelementptr inbounds nuw i8, ptr %24, i64 64
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !301
  %i.uh = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !209
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ui, i64 %i.rc
  store float %i.ug, ptr %i.uj, align 4, !tbaa !203
  %i.uk = getelementptr inbounds nuw i8, ptr %24, i64 68
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !232
  %i.um = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !210
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.rc
  store float %i.ul, ptr %i.uo, align 4, !tbaa !203
  %i.up = getelementptr inbounds nuw i8, ptr %24, i64 72
  %i.uq = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !198
  %i.us = getelementptr inbounds [16 x i8], ptr %i.ur, i64 %i.rc ; 2 uses
  %i.ut = load <4 x float>, ptr %i.up, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.ut, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.ut, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.us, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.01059.0.copyload = load <2 x float>, ptr %i.mf, align 4 ; 14 uses
  %.sroa.121066.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121066.0.copyload = load float, ptr %.sroa.121066.0..sroa_idx, align 4 ; 9 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !983
  %i.ux = load ptr, ptr %i.uu, align 8, !tbaa !302, !noalias !1093
  %i.uy = sext i32 %i.uw to i64                   ; 2 uses
  %i.uz = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.uy ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.va = load <2 x float>, ptr %i.uz, align 16, !noalias !1093
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !74, !noalias !1093
  %i.vb = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !308, !noalias !1093
  %i.vd = getelementptr inbounds [16 x i8], ptr %i.vc, i64 %i.uy ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vd, align 16, !noalias !1093 ; 2 uses
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %.sroa.04.0.vec.extract.i.i.i.i589 = extractelement <2 x float> %.sroa.01059.0.copyload, i64 0
  %.sroa.05.0.copyload.i.i.i598 = load <2 x float>, ptr %i.ob, align 8, !noalias !1098
  %.sroa.26.0.copyload.i.i.i600 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1098
  %i.ve = fmul <2 x float> %.sroa.01059.0.copyload, %.sroa.05.0.copyload.i.i.i598 ; 2 uses
  %shift1224 = shufflevector <2 x float> %i.ve, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1225 = fadd <2 x float> %i.ve, %shift1224
  %i.vf = extractelement <2 x float> %foldExtExtBinop1225, i64 0
  %i.vg = fmul float %.sroa.121066.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.vh = fadd float %i.vg, %i.vf                 ; 2 uses
  %i.vi = fcmp oeq float %i.vh, 0.000000e+00
  br i1 %i.vi, label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %.sroa.2.0.copyload.i931.i.i1176 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !1093
  %.sroa.021.0.copyload.i.i.i586 = load <2 x float>, ptr %i.my, align 8, !noalias !1098 ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = load <2 x float>, ptr %i.nz, align 4, !noalias !1098 ; 2 uses
  %i.vj = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !1098
  %i.vk = shufflevector <4 x float> %i.vj, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.vl = insertelement <2 x float> poison, float %.sroa.121066.0.copyload, i64 0
  %i.vm = shufflevector <2 x float> %i.vl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vn = fmul <2 x float> %i.vm, %i.vk
  %i.vo = shufflevector <2 x float> %.sroa.01059.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vp = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.vq = fmul <2 x float> %i.vo, %i.vp
  %i.vr = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.vs = fmul <2 x float> %.sroa.01059.0.copyload, %i.vr
  %i.vt = fadd <2 x float> %i.vq, %i.vs
  %i.vu = fadd <2 x float> %i.vn, %i.vt
  %i.vv = load i64, ptr %21, align 8, !tbaa !274, !noalias !1098
  %i.vw = and i64 %i.vv, 144115188075855871
  %i.vx = inttoptr i64 %i.vw to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !1098
  call void @_ZNK4pbrt13ConductorBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %8, ptr noundef nonnull align 4 dereferenceable(40) %i.vx, <2 x float> %i.vu, float %i.vh, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1176, i32 noundef 0, i32 noundef 3), !noalias !1098
  %i.vy = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.vz = load i8, ptr %i.vy, align 4, !tbaa !309, !range !11, !noalias !1098, !noundef !12
  %i.wa = trunc nuw i8 %i.vz to i1
  br i1 %i.wa, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.q
  %i.wb = load <4 x float>, ptr %8, align 16, !noalias !1098
  %.fr = freeze <4 x float> %i.wb                 ; 2 uses
  %i.wc = fcmp une <4 x float> %.fr, zeroinitializer
  %i.wd = bitcast <4 x i1> %i.wc to i4
  %i.we = icmp eq i4 %i.wd, 0
  %i.wf = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.wg = load float, ptr %i.wf, align 4, !noalias !1098 ; 3 uses
  %i.wh = fcmp oeq float %i.wg, 0.000000e+00
  %or.cond.i605 = select i1 %i.we, i1 true, i1 %i.wh
  br i1 %or.cond.i605, label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.wi = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.wj = load float, ptr %i.wi, align 8, !tbaa !232, !noalias !1098 ; 3 uses
  %i.wk = fcmp oeq float %i.wj, 0.000000e+00
  br i1 %i.wk, label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %bb.r

_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit: ; preds = %bb.q, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1098
  br label %_ZNK4pbrt4BSDF8Sample_fINS_13ConductorBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread

bb.r:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  %i.wl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.wl, align 16, !noalias !1098 ; 4 uses
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %.sroa.037.0.copyload.i.i = load <2 x float>, ptr %i.my, align 8, !noalias !1098 ; 3 uses
  %.sroa.238.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !tbaa !203, !noalias !1098 ; 3 uses
  %i.wm = fmul float %.sroa.041.0.vec.extract.i.i, %.sroa.238.0.copyload.i.i
  %.sroa.041.4.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %.sroa.027.0.copyload.i.i = load <2 x float>, ptr %i.nz, align 4, !noalias !1098 ; 3 uses
  %.sroa.228.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !203, !noalias !1098 ; 3 uses
  %i.wn = fmul float %.sroa.041.4.vec.extract.i.i, %.sroa.228.0.copyload.i.i
  %i.wo = fadd float %i.wm, %i.wn
  %.sroa.011.0.copyload.i.i = load <2 x float>, ptr %i.ob, align 8, !noalias !1098 ; 3 uses
  %.sroa.212.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !203, !noalias !1098 ; 3 uses
  %i.wp = fmul float %i.wj, %.sroa.212.0.copyload.i.i
  %i.wq = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wr = fmul <2 x float> %i.wq, %.sroa.037.0.copyload.i.i
  %i.ws = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wt = fmul <2 x float> %i.ws, %.sroa.027.0.copyload.i.i
  %i.wu = fadd <2 x float> %i.wr, %i.wt
  %i.wv = insertelement <2 x float> poison, float %i.wj, i64 0
  %i.ww = shufflevector <2 x float> %i.wv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wx = fmul <2 x float> %i.ww, %.sroa.011.0.copyload.i.i
  %i.wy = fadd <2 x float> %i.wu, %i.wx           ; 6 uses
  %i.wz = fadd float %i.wo, %i.wp                 ; 8 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 16 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 36
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.21.0.copyload = load i8, ptr %.sroa.21.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1098
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.xa, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %i.xb = fmul float %.sroa.17.0, %i.wz           ; 2 uses
  %i.xc = extractelement <2 x float> %i.wy, i64 1 ; 3 uses
  %i.xd = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.xc, float %i.xb)
  %i.xe = fneg float %i.xb
  %i.xf = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.wz, float %i.xe)
  %i.xg = fadd float %i.xd, %i.xf
  %i.xh = extractelement <2 x float> %i.wy, i64 0 ; 3 uses
  %i.xi = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.xh, float %i.xg)
  %i.xj = call noundef float @llvm.fabs.f32(float %i.xi)
  %i.xk = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.xl = fmul <4 x float> %.fr, %i.xk
  %i.xm = insertelement <4 x float> poison, float %i.xj, i64 0
  %i.xn = shufflevector <4 x float> %i.xm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xo = fmul <4 x float> %i.xn, %i.xl
  %i.xp = insertelement <4 x float> poison, float %i.wg, i64 0
  %i.xq = shufflevector <4 x float> %i.xp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xr = fdiv <4 x float> %i.xo, %i.xq           ; 7 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0958.0.copyload = load <4 x float>, ptr %i.xs, align 8, !tbaa !74 ; 6 uses
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
  %i.xz = insertelement <2 x float> poison, float %i.wz, i64 0
  %i.ya = shufflevector <2 x float> %i.xz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yb = insertelement <2 x float> poison, float %.sroa.228.0.copyload.i.i, i64 0
  %i.yc = insertelement <2 x float> %i.yb, float %.sroa.238.0.copyload.i.i, i64 1
  %i.yd = fmul <2 x float> %i.ya, %i.yc
  %i.ye = shufflevector <2 x float> %.sroa.037.0.copyload.i.i, <2 x float> %.sroa.027.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.yf = fmul <2 x float> %i.wy, %i.ye
  %i.yg = shufflevector <2 x float> %i.yf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yh = shufflevector <2 x float> %.sroa.027.0.copyload.i.i, <2 x float> %.sroa.037.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.yi = fmul <2 x float> %i.wy, %i.yh
  %i.yj = fadd <2 x float> %i.yi, %i.yg
  %i.yk = fadd <2 x float> %i.yd, %i.yj
  %i.yl = fmul float %i.wz, %.sroa.212.0.copyload.i.i
  %i.ym = fmul <2 x float> %i.wy, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1230 = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1231 = fadd <2 x float> %i.ym, %shift1230
  %i.yn = extractelement <2 x float> %foldExtExtBinop1231, i64 0
  %i.yo = fadd float %i.yl, %i.yn                 ; 2 uses
  %i.yp = insertelement <2 x float> poison, float %.sroa.238.0.copyload.i.i, i64 0
  %i.yq = insertelement <2 x float> %i.yp, float %.sroa.228.0.copyload.i.i, i64 1
  %i.yr = fmul <2 x float> %i.vm, %i.yq
  %i.ys = fmul <2 x float> %.sroa.01059.0.copyload, %i.ye
  %i.yt = fmul <2 x float> %.sroa.01059.0.copyload, %i.yh
  %i.yu = shufflevector <2 x float> %i.yt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yv = fadd <2 x float> %i.yu, %i.ys
  %i.yw = fadd <2 x float> %i.yr, %i.yv           ; 3 uses
  %i.yx = load i64, ptr %21, align 8, !tbaa !274
  %i.yy = and i64 %i.yx, 144115188075855871
  %i.yz = inttoptr i64 %i.yy to ptr               ; 3 uses
  %i.za = fmul float %i.xx, %i.yo
  %i.zb = fcmp ogt float %i.za, 0.000000e+00
  br i1 %i.zb, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 4
  %i.zd = load float, ptr %i.yz, align 4, !tbaa !203 ; 2 uses
  %i.ze = load float, ptr %i.zc, align 4, !tbaa !203 ; 2 uses
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
  br i1 %i.zm, label %bb.v, label %bb.y, !prof !888

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
end_hunk_5
begin_hunk_6_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_18DielectricMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_IS2_EENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSD_E_clESD_:bb.a
  %i.ps = getelementptr inbounds nuw i8, ptr %21, i64 128
  store <2 x float> %.sroa.0263.0, ptr %i.ps, align 8
  %.sroa.17.0..sroa_idx278 = getelementptr inbounds nuw i8, ptr %21, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx278, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %21, i64 52
  %i.pu = load i64, ptr %i.mk, align 8
  store i64 %i.pu, ptr %i.pt, align 4
  %i.pv = getelementptr inbounds nuw i8, ptr %21, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pv, ptr noundef nonnull align 4 dereferenceable(12) %i.mf, i64 12, i1 false)
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.px = load float, ptr %i.pw, align 4, !tbaa !1151
  %i.py = getelementptr inbounds nuw i8, ptr %21, i64 24
  store float %i.px, ptr %i.py, align 8, !tbaa !281
  %i.pz = getelementptr inbounds nuw i8, ptr %21, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pz, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false)
  %i.qa = getelementptr inbounds nuw i8, ptr %21, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qa, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %22, align 16, !tbaa !203
  %i.qb = getelementptr inbounds nuw i8, ptr %22, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.qb, align 16, !tbaa !203
  %i.qc = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qc, align 16, !tbaa !203
  %i.qd = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qd, align 16, !tbaa !203
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
  %shift1116 = shufflevector <2 x float> %i.qq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1117 = fadd <2 x float> %i.qq, %shift1116
  %i.qr = extractelement <2 x float> %foldExtExtBinop1117, i64 0
  %i.qs = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.qt = fadd float %i.qs, %i.qr
  %i.qu = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qp, float %i.qt, ptr nonnull %i.e, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.qv = extractvalue { <2 x float>, <2 x float> } %i.qu, 0
  %i.qw = extractvalue { <2 x float>, <2 x float> } %i.qu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.qv, <2 x float> %i.qw, ptr noundef nonnull align 4 dereferenceable(32) %17)
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !1160
  %i.qz = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.ra = load i8, ptr %i.qz, align 4, !tbaa !284, !range !11, !noundef !12
  %i.rb = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !286
  %i.rd = sext i32 %i.qy to i64                   ; 20 uses
  %i.re = getelementptr inbounds i8, ptr %i.rc, i64 %i.rd
  store i8 %i.ra, ptr %i.re, align 1, !tbaa !9
  %i.rf = load float, ptr %23, align 4, !tbaa !287
  %i.rg = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !288
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %i.rd
  store float %i.rf, ptr %i.ri, align 4, !tbaa !203
  %i.rj = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !289
  %i.rl = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !290
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.rm, i64 %i.rd
  store float %i.rk, ptr %i.rn, align 4, !tbaa !203
  %i.ro = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !291
  %i.rq = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !292
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %i.rd
  store float %i.rp, ptr %i.rs, align 4, !tbaa !203
  %i.rt = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !293
  %i.rv = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !205
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.rw, i64 %i.rd
  store float %i.ru, ptr %i.rx, align 4, !tbaa !203
  %i.ry = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !294
  %i.sa = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !206
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.rd
  store float %i.rz, ptr %i.sc, align 4, !tbaa !203
  %i.sd = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.se = load float, ptr %i.sd, align 4, !tbaa !295
  %i.sf = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !207
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.rd
  store float %i.se, ptr %i.sh, align 4, !tbaa !203
  %i.si = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.sj = load float, ptr %i.si, align 4, !tbaa !293
  %i.sk = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !205
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.rd
  store float %i.sj, ptr %i.sm, align 4, !tbaa !203
  %i.sn = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.so = load float, ptr %i.sn, align 4, !tbaa !294
  %i.sp = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !206
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %i.rd
  store float %i.so, ptr %i.sr, align 4, !tbaa !203
  %i.ss = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.st = load float, ptr %i.ss, align 4, !tbaa !295
  %i.su = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !207
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.rd
  store float %i.st, ptr %i.sw, align 4, !tbaa !203
  %i.sx = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !296
  %i.sz = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !211
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.rd
  store float %i.sy, ptr %i.tb, align 4, !tbaa !203
  %i.tc = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.td = load float, ptr %i.tc, align 4, !tbaa !297
  %i.te = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !212
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.rd
  store float %i.td, ptr %i.tg, align 4, !tbaa !203
  %i.th = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.ti = load float, ptr %i.th, align 4, !tbaa !298
  %i.tj = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !299
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.rd
  store float %i.ti, ptr %i.tl, align 4, !tbaa !203
  %i.tm = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !300
  %i.to = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !208
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.rd
  store float %i.tn, ptr %i.tq, align 4, !tbaa !203
  %i.tr = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !301
  %i.tt = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !209
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.rd
  store float %i.ts, ptr %i.tv, align 4, !tbaa !203
  %i.tw = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !232
  %i.ty = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !210
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.rd
  store float %i.tx, ptr %i.ua, align 4, !tbaa !203
  %i.ub = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !300
  %i.ud = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !208
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.rd
  store float %i.uc, ptr %i.uf, align 4, !tbaa !203
  %i.ug = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !301
  %i.ui = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !209
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.rd
  store float %i.uh, ptr %i.uk, align 4, !tbaa !203
  %i.ul = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.um = load float, ptr %i.ul, align 4, !tbaa !232
  %i.un = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !210
  %i.up = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.rd
  store float %i.um, ptr %i.up, align 4, !tbaa !203
  %i.uq = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.ur = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !198
  %i.ut = getelementptr inbounds [16 x i8], ptr %i.us, i64 %i.rd ; 2 uses
  %i.uu = load <4 x float>, ptr %i.uq, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i584 = shufflevector <4 x float> %i.uu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.uu, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i584, ptr %i.ut, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0997.0.copyload = load <2 x float>, ptr %i.mf, align 4 ; 10 uses
  %.sroa.121004.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121004.0.copyload = load float, ptr %.sroa.121004.0..sroa_idx, align 4 ; 8 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !1160
  %i.uy = load ptr, ptr %i.uv, align 8, !tbaa !302, !noalias !1178
  %i.uz = sext i32 %i.ux to i64                   ; 2 uses
  %i.va = getelementptr inbounds [16 x i8], ptr %i.uy, i64 %i.uz ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i587 = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vb = load <2 x float>, ptr %i.va, align 16, !noalias !1178
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i587, align 8, !tbaa !74, !noalias !1178
  %i.vc = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !308, !noalias !1178
  %i.ve = getelementptr inbounds [16 x i8], ptr %i.vd, i64 %i.uz ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.ve, align 16, !noalias !1178 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %.sroa.2.0.copyload.i931.i.i1078 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !1178
  %.sroa.01.0.vec.extract.i.i588 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i589 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_14DielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %24, ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %.sroa.0997.0.copyload, float %.sroa.121004.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i588, <2 x float> %.sroa.2.0.copyload.i931.i.i1078, i32 noundef 0, i32 noundef 3)
  %i.vf = getelementptr inbounds nuw i8, ptr %24, i64 44 ; 3 uses
  %i.vg = load i8, ptr %i.vf, align 4, !tbaa !309, !range !11, !noundef !12
  %i.vh = trunc nuw i8 %i.vg to i1
  br i1 %i.vh, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vi = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.vi, align 16 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.vj, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %.sroa.04.0.vec.extract.i.i597 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.04.4.vec.extract.i.i599 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.vk = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.vl = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i573, float %.sroa.04.4.vec.extract.i.i599, float %i.vk)
  %i.vm = fneg float %i.vk
  %i.vn = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.vm)
  %i.vo = fadd float %i.vl, %i.vn
  %i.vp = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i572, float %.sroa.04.0.vec.extract.i.i597, float %i.vo)
  %i.vq = call noundef float @llvm.fabs.f32(float %i.vp)
  %i.vr = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !311 ; 2 uses
  %i.vt = load <4 x float>, ptr %24, align 16, !tbaa !203
  %i.vu = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vv = fmul <4 x float> %i.vu, %i.vt
  %i.vw = insertelement <4 x float> poison, float %i.vq, i64 0
  %i.vx = shufflevector <4 x float> %i.vw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vy = fmul <4 x float> %i.vv, %i.vx
  %i.vz = insertelement <4 x float> poison, float %i.vs, i64 0
  %i.wa = shufflevector <4 x float> %i.vz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wb = fdiv <4 x float> %i.vy, %i.wa           ; 7 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0935.0.copyload = load <4 x float>, ptr %i.wc, align 8, !tbaa !74 ; 7 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.we = load i8, ptr %i.wd, align 8, !tbaa !314, !range !11, !noundef !12
  %i.wf = trunc nuw i8 %i.we to i1
  br i1 %i.wf, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit624, label %.thread

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit624: ; preds = %bb.q
  %.sroa.05.0.copyload.i.i.i627 = load <2 x float>, ptr %i.oc, align 8 ; 3 uses
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
  %.sroa.021.0.copyload.i.i.i634 = load <2 x float>, ptr %i.mz, align 8 ; 2 uses
  %.sroa.214.0.copyload.i.i.i638 = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %.sroa.013.0.copyload.i.i.i639 = load <2 x float>, ptr %i.oa, align 4 ; 2 uses
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
  %i.xj = load i64, ptr %20, align 8, !tbaa !274
  %i.xk = and i64 %i.xj, 144115188075855871
  %i.xl = inttoptr i64 %i.xk to ptr
  %i.xm = call noundef float @_ZNK4pbrt14DielectricBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(12) %i.xl, <2 x float> %i.xi, float %i.wj, <2 x float> %i.wx, float %i.xa, i32 noundef 0, i32 noundef 3)
  %.pre.pre = load i8, ptr %i.vf, align 4, !tbaa !309, !range !11
  %i.xn = trunc nuw i8 %.pre.pre to i1
  br label %bb.s

.thread:                                          ; preds = %bb.q
  %i.xo = insertelement <2 x float> poison, float %i.vs, i64 0
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
  %i.xt = load float, ptr %i.xs, align 8, !tbaa !1155 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.xv = load i32, ptr %i.xu, align 16, !tbaa !315
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
  %i.yt = load i32, ptr %i.pl, align 8, !tbaa !1147
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
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mg, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !1151
  %i.zg = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mh, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %.sroa.0151.0.copyload, float %.sroa.6.0.copyload) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.zg, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.zg, 1
  %i.zh = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.zi = load i8, ptr %i.zh, align 2, !tbaa !316, !range !11, !noundef !12
end_hunk_6
begin_hunk_7_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_18DielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_IS2_EENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSD_E_clESD_:bb.a
  %i.ps = getelementptr inbounds nuw i8, ptr %21, i64 128
  store <2 x float> %.sroa.0263.0, ptr %i.ps, align 8
  %.sroa.17.0..sroa_idx278 = getelementptr inbounds nuw i8, ptr %21, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx278, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %21, i64 52
  %i.pu = load i64, ptr %i.mk, align 8
  store i64 %i.pu, ptr %i.pt, align 4
  %i.pv = getelementptr inbounds nuw i8, ptr %21, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pv, ptr noundef nonnull align 4 dereferenceable(12) %i.mf, i64 12, i1 false)
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.px = load float, ptr %i.pw, align 4, !tbaa !1151
  %i.py = getelementptr inbounds nuw i8, ptr %21, i64 24
  store float %i.px, ptr %i.py, align 8, !tbaa !281
  %i.pz = getelementptr inbounds nuw i8, ptr %21, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pz, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false)
  %i.qa = getelementptr inbounds nuw i8, ptr %21, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qa, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %22, align 16, !tbaa !203
  %i.qb = getelementptr inbounds nuw i8, ptr %22, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.qb, align 16, !tbaa !203
  %i.qc = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qc, align 16, !tbaa !203
  %i.qd = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qd, align 16, !tbaa !203
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
  %shift1116 = shufflevector <2 x float> %i.qq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1117 = fadd <2 x float> %i.qq, %shift1116
  %i.qr = extractelement <2 x float> %foldExtExtBinop1117, i64 0
  %i.qs = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.qt = fadd float %i.qs, %i.qr
  %i.qu = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qp, float %i.qt, ptr nonnull %i.e, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.qv = extractvalue { <2 x float>, <2 x float> } %i.qu, 0
  %i.qw = extractvalue { <2 x float>, <2 x float> } %i.qu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.qv, <2 x float> %i.qw, ptr noundef nonnull align 4 dereferenceable(32) %17)
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !1160
  %i.qz = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.ra = load i8, ptr %i.qz, align 4, !tbaa !284, !range !11, !noundef !12
  %i.rb = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !286
  %i.rd = sext i32 %i.qy to i64                   ; 20 uses
  %i.re = getelementptr inbounds i8, ptr %i.rc, i64 %i.rd
  store i8 %i.ra, ptr %i.re, align 1, !tbaa !9
  %i.rf = load float, ptr %23, align 4, !tbaa !287
  %i.rg = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !288
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %i.rd
  store float %i.rf, ptr %i.ri, align 4, !tbaa !203
  %i.rj = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !289
  %i.rl = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !290
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.rm, i64 %i.rd
  store float %i.rk, ptr %i.rn, align 4, !tbaa !203
  %i.ro = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !291
  %i.rq = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !292
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %i.rd
  store float %i.rp, ptr %i.rs, align 4, !tbaa !203
  %i.rt = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !293
  %i.rv = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !205
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.rw, i64 %i.rd
  store float %i.ru, ptr %i.rx, align 4, !tbaa !203
  %i.ry = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !294
  %i.sa = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !206
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.rd
  store float %i.rz, ptr %i.sc, align 4, !tbaa !203
  %i.sd = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.se = load float, ptr %i.sd, align 4, !tbaa !295
  %i.sf = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !207
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.rd
  store float %i.se, ptr %i.sh, align 4, !tbaa !203
  %i.si = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.sj = load float, ptr %i.si, align 4, !tbaa !293
  %i.sk = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !205
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.rd
  store float %i.sj, ptr %i.sm, align 4, !tbaa !203
  %i.sn = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.so = load float, ptr %i.sn, align 4, !tbaa !294
  %i.sp = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !206
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %i.rd
  store float %i.so, ptr %i.sr, align 4, !tbaa !203
  %i.ss = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.st = load float, ptr %i.ss, align 4, !tbaa !295
  %i.su = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !207
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.rd
  store float %i.st, ptr %i.sw, align 4, !tbaa !203
  %i.sx = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !296
  %i.sz = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !211
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.rd
  store float %i.sy, ptr %i.tb, align 4, !tbaa !203
  %i.tc = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.td = load float, ptr %i.tc, align 4, !tbaa !297
  %i.te = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !212
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.rd
  store float %i.td, ptr %i.tg, align 4, !tbaa !203
  %i.th = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.ti = load float, ptr %i.th, align 4, !tbaa !298
  %i.tj = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !299
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.rd
  store float %i.ti, ptr %i.tl, align 4, !tbaa !203
  %i.tm = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !300
  %i.to = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !208
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.rd
  store float %i.tn, ptr %i.tq, align 4, !tbaa !203
  %i.tr = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !301
  %i.tt = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !209
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.rd
  store float %i.ts, ptr %i.tv, align 4, !tbaa !203
  %i.tw = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !232
  %i.ty = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !210
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.rd
  store float %i.tx, ptr %i.ua, align 4, !tbaa !203
  %i.ub = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !300
  %i.ud = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !208
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.rd
  store float %i.uc, ptr %i.uf, align 4, !tbaa !203
  %i.ug = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !301
  %i.ui = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !209
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.rd
  store float %i.uh, ptr %i.uk, align 4, !tbaa !203
  %i.ul = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.um = load float, ptr %i.ul, align 4, !tbaa !232
  %i.un = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !210
  %i.up = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.rd
  store float %i.um, ptr %i.up, align 4, !tbaa !203
  %i.uq = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.ur = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !198
  %i.ut = getelementptr inbounds [16 x i8], ptr %i.us, i64 %i.rd ; 2 uses
  %i.uu = load <4 x float>, ptr %i.uq, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i584 = shufflevector <4 x float> %i.uu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.uu, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i584, ptr %i.ut, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0997.0.copyload = load <2 x float>, ptr %i.mf, align 4 ; 10 uses
  %.sroa.121004.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121004.0.copyload = load float, ptr %.sroa.121004.0..sroa_idx, align 4 ; 8 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !1160
  %i.uy = load ptr, ptr %i.uv, align 8, !tbaa !302, !noalias !1228
  %i.uz = sext i32 %i.ux to i64                   ; 2 uses
  %i.va = getelementptr inbounds [16 x i8], ptr %i.uy, i64 %i.uz ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i587 = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vb = load <2 x float>, ptr %i.va, align 16, !noalias !1228
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i587, align 8, !tbaa !74, !noalias !1228
  %i.vc = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !308, !noalias !1228
  %i.ve = getelementptr inbounds [16 x i8], ptr %i.vd, i64 %i.uz ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.ve, align 16, !noalias !1228 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %.sroa.2.0.copyload.i931.i.i1078 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !1228
  %.sroa.01.0.vec.extract.i.i588 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i589 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_14DielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %24, ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %.sroa.0997.0.copyload, float %.sroa.121004.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i588, <2 x float> %.sroa.2.0.copyload.i931.i.i1078, i32 noundef 0, i32 noundef 3)
  %i.vf = getelementptr inbounds nuw i8, ptr %24, i64 44 ; 3 uses
  %i.vg = load i8, ptr %i.vf, align 4, !tbaa !309, !range !11, !noundef !12
  %i.vh = trunc nuw i8 %i.vg to i1
  br i1 %i.vh, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vi = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.vi, align 16 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.vj, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %.sroa.04.0.vec.extract.i.i597 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.04.4.vec.extract.i.i599 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.vk = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.vl = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i573, float %.sroa.04.4.vec.extract.i.i599, float %i.vk)
  %i.vm = fneg float %i.vk
  %i.vn = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.vm)
  %i.vo = fadd float %i.vl, %i.vn
  %i.vp = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i572, float %.sroa.04.0.vec.extract.i.i597, float %i.vo)
  %i.vq = call noundef float @llvm.fabs.f32(float %i.vp)
  %i.vr = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !311 ; 2 uses
  %i.vt = load <4 x float>, ptr %24, align 16, !tbaa !203
  %i.vu = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vv = fmul <4 x float> %i.vu, %i.vt
  %i.vw = insertelement <4 x float> poison, float %i.vq, i64 0
  %i.vx = shufflevector <4 x float> %i.vw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vy = fmul <4 x float> %i.vv, %i.vx
  %i.vz = insertelement <4 x float> poison, float %i.vs, i64 0
  %i.wa = shufflevector <4 x float> %i.vz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wb = fdiv <4 x float> %i.vy, %i.wa           ; 7 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0935.0.copyload = load <4 x float>, ptr %i.wc, align 8, !tbaa !74 ; 7 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.we = load i8, ptr %i.wd, align 8, !tbaa !314, !range !11, !noundef !12
  %i.wf = trunc nuw i8 %i.we to i1
  br i1 %i.wf, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit624, label %.thread

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit624: ; preds = %bb.q
  %.sroa.05.0.copyload.i.i.i627 = load <2 x float>, ptr %i.oc, align 8 ; 3 uses
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
  %.sroa.021.0.copyload.i.i.i634 = load <2 x float>, ptr %i.mz, align 8 ; 2 uses
  %.sroa.214.0.copyload.i.i.i638 = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %.sroa.013.0.copyload.i.i.i639 = load <2 x float>, ptr %i.oa, align 4 ; 2 uses
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
  %i.xj = load i64, ptr %20, align 8, !tbaa !274
  %i.xk = and i64 %i.xj, 144115188075855871
  %i.xl = inttoptr i64 %i.xk to ptr
  %i.xm = call noundef float @_ZNK4pbrt14DielectricBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(12) %i.xl, <2 x float> %i.xi, float %i.wj, <2 x float> %i.wx, float %i.xa, i32 noundef 0, i32 noundef 3)
  %.pre.pre = load i8, ptr %i.vf, align 4, !tbaa !309, !range !11
  %i.xn = trunc nuw i8 %.pre.pre to i1
  br label %bb.s

.thread:                                          ; preds = %bb.q
  %i.xo = insertelement <2 x float> poison, float %i.vs, i64 0
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
  %i.xt = load float, ptr %i.xs, align 8, !tbaa !1155 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.xv = load i32, ptr %i.xu, align 16, !tbaa !315
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
  %i.yt = load i32, ptr %i.pl, align 8, !tbaa !1147
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
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mg, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !1151
  %i.zg = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mh, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %.sroa.0151.0.copyload, float %.sroa.6.0.copyload) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.zg, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.zg, 1
  %i.zh = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.zi = load i8, ptr %i.zh, align 2, !tbaa !316, !range !11, !noundef !12
end_hunk_7
begin_hunk_8_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_15DiffuseMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_IS2_EENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSF_E_clESF_:bb.a
  %i.ra = getelementptr inbounds nuw i8, ptr %25, i64 128
  store <2 x float> %.sroa.0259.0, ptr %i.ra, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %25, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %25, i64 52
  %i.rc = load i64, ptr %i.mj, align 8
  store i64 %i.rc, ptr %i.rb, align 4
  %i.rd = getelementptr inbounds nuw i8, ptr %25, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.rd, ptr noundef nonnull align 4 dereferenceable(12) %i.me, i64 12, i1 false)
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.rf = load float, ptr %i.re, align 4, !tbaa !1283
  %i.rg = getelementptr inbounds nuw i8, ptr %25, i64 24
  store float %i.rf, ptr %i.rg, align 8, !tbaa !281
  %i.rh = getelementptr inbounds nuw i8, ptr %25, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.rh, ptr noundef nonnull align 8 dereferenceable(12) %14, i64 12, i1 false)
  %i.ri = getelementptr inbounds nuw i8, ptr %25, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ri, ptr noundef nonnull align 8 dereferenceable(12) %15, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %26, align 16, !tbaa !203
  %i.rj = getelementptr inbounds nuw i8, ptr %26, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.rj, align 16, !tbaa !203
  %i.rk = getelementptr inbounds nuw i8, ptr %26, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.rk, align 16, !tbaa !203
  %i.rl = getelementptr inbounds nuw i8, ptr %26, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.rl, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.rd, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.og, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.pj, align 4 ; 2 uses
  %i.rm = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.rn = shufflevector <4 x float> %i.rm, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ro = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rp = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.rq = fmul <2 x float> %i.ro, %i.rp
  %i.rr = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.rs = fmul <2 x float> %.sroa.0162.0.copyload, %i.rr
  %i.rt = fadd <2 x float> %i.rq, %i.rs
  %i.ru = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.rv = shufflevector <2 x float> %i.ru, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rw = fmul <2 x float> %i.rv, %i.rn
  %i.rx = fadd <2 x float> %i.rw, %i.rt
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.pk, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.ry = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1190 = shufflevector <2 x float> %i.ry, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1191 = fadd <2 x float> %i.ry, %shift1190
  %i.rz = extractelement <2 x float> %foldExtExtBinop1191, i64 0
  %i.sa = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.sb = fadd float %i.sa, %i.rz
  %i.sc = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %24, <2 x float> %i.rx, float %i.sb, ptr nonnull %i.e, i64 16, ptr nonnull %26, i64 16) ; 2 uses
  %i.sd = extractvalue { <2 x float>, <2 x float> } %i.sc, 0
  %i.se = extractvalue { <2 x float>, <2 x float> } %i.sc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %27, ptr noundef nonnull align 8 dereferenceable(248) %25, <2 x float> %i.sd, <2 x float> %i.se, ptr noundef nonnull align 4 dereferenceable(32) %22)
  %i.sf = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !1292
  %i.sh = getelementptr inbounds nuw i8, ptr %27, i64 88
  %i.si = load i8, ptr %i.sh, align 4, !tbaa !284, !range !11, !noundef !12
  %i.sj = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !286
  %i.sl = sext i32 %i.sg to i64                   ; 20 uses
  %i.sm = getelementptr inbounds i8, ptr %i.sk, i64 %i.sl
  store i8 %i.si, ptr %i.sm, align 1, !tbaa !9
  %i.sn = load float, ptr %27, align 4, !tbaa !287
  %i.so = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !288
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.sl
  store float %i.sn, ptr %i.sq, align 4, !tbaa !203
  %i.sr = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !289
  %i.st = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !290
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.sl
  store float %i.ss, ptr %i.sv, align 4, !tbaa !203
  %i.sw = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !291
  %i.sy = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !292
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.sl
  store float %i.sx, ptr %i.ta, align 4, !tbaa !203
  %i.tb = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !293
  %i.td = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !205
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.te, i64 %i.sl
  store float %i.tc, ptr %i.tf, align 4, !tbaa !203
  %i.tg = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.th = load float, ptr %i.tg, align 4, !tbaa !294
  %i.ti = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !206
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.sl
  store float %i.th, ptr %i.tk, align 4, !tbaa !203
  %i.tl = getelementptr inbounds nuw i8, ptr %27, i64 20
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !295
  %i.tn = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !207
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.sl
  store float %i.tm, ptr %i.tp, align 4, !tbaa !203
  %i.tq = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !293
  %i.ts = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !205
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.sl
  store float %i.tr, ptr %i.tu, align 4, !tbaa !203
  %i.tv = getelementptr inbounds nuw i8, ptr %27, i64 28
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !294
  %i.tx = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !206
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %i.sl
  store float %i.tw, ptr %i.tz, align 4, !tbaa !203
  %i.ua = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !295
  %i.uc = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !207
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.sl
  store float %i.ub, ptr %i.ue, align 4, !tbaa !203
  %i.uf = getelementptr inbounds nuw i8, ptr %27, i64 36
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !296
  %i.uh = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !211
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ui, i64 %i.sl
  store float %i.ug, ptr %i.uj, align 4, !tbaa !203
  %i.uk = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !297
  %i.um = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !212
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.sl
  store float %i.ul, ptr %i.uo, align 4, !tbaa !203
  %i.up = getelementptr inbounds nuw i8, ptr %27, i64 44
  %i.uq = load float, ptr %i.up, align 4, !tbaa !298
  %i.ur = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !299
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.sl
  store float %i.uq, ptr %i.ut, align 4, !tbaa !203
  %i.uu = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !300
  %i.uw = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !208
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.sl
  store float %i.uv, ptr %i.uy, align 4, !tbaa !203
  %i.uz = getelementptr inbounds nuw i8, ptr %27, i64 52
  %i.va = load float, ptr %i.uz, align 4, !tbaa !301
  %i.vb = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !209
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.vc, i64 %i.sl
  store float %i.va, ptr %i.vd, align 4, !tbaa !203
  %i.ve = getelementptr inbounds nuw i8, ptr %27, i64 56
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !232
  %i.vg = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !210
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.sl
  store float %i.vf, ptr %i.vi, align 4, !tbaa !203
  %i.vj = getelementptr inbounds nuw i8, ptr %27, i64 60
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !300
  %i.vl = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !208
  %i.vn = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.sl
  store float %i.vk, ptr %i.vn, align 4, !tbaa !203
  %i.vo = getelementptr inbounds nuw i8, ptr %27, i64 64
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !301
  %i.vq = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !209
  %i.vs = getelementptr inbounds [4 x i8], ptr %i.vr, i64 %i.sl
  store float %i.vp, ptr %i.vs, align 4, !tbaa !203
  %i.vt = getelementptr inbounds nuw i8, ptr %27, i64 68
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !232
  %i.vv = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !210
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.vw, i64 %i.sl
  store float %i.vu, ptr %i.vx, align 4, !tbaa !203
  %i.vy = getelementptr inbounds nuw i8, ptr %27, i64 72
  %i.vz = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !198
  %i.wb = getelementptr inbounds [16 x i8], ptr %i.wa, i64 %i.sl ; 2 uses
  %i.wc = load <4 x float>, ptr %i.vy, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i582 = shufflevector <4 x float> %i.wc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.wc, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i582, ptr %i.wb, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.01047.0.copyload = load <2 x float>, ptr %i.me, align 4 ; 5 uses
  %.sroa.121054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121054.0.copyload = load float, ptr %.sroa.121054.0..sroa_idx, align 4 ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !1292
  %i.wg = load ptr, ptr %i.wd, align 8, !tbaa !302, !noalias !1310
  %i.wh = sext i32 %i.wf to i64                   ; 2 uses
  %i.wi = getelementptr inbounds [16 x i8], ptr %i.wg, i64 %i.wh ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i585 = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wj = load <2 x float>, ptr %i.wi, align 16, !noalias !1310
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i585, align 8, !tbaa !74, !noalias !1310
  %i.wk = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !308, !noalias !1310
  %i.wm = getelementptr inbounds [16 x i8], ptr %i.wl, i64 %i.wh ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %.sroa.2.0.copyload.i931.i.i1172 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !1310
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 4
  %.sroa.01.4.vec.extract.i.i587 = load float, ptr %i.wn, align 4, !noalias !1310
  %.sroa.05.0.copyload.i.i.i590 = load <2 x float>, ptr %i.pk, align 8, !noalias !1315 ; 2 uses
  %.sroa.26.0.copyload.i.i.i592 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1315 ; 2 uses
  %i.wo = fmul <2 x float> %.sroa.01047.0.copyload, %.sroa.05.0.copyload.i.i.i590 ; 2 uses
  %shift1193 = shufflevector <2 x float> %i.wo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1194 = fadd <2 x float> %i.wo, %shift1193
  %i.wp = extractelement <2 x float> %foldExtExtBinop1194, i64 0
  %i.wq = fmul float %.sroa.121054.0.copyload, %.sroa.26.0.copyload.i.i.i592
  %i.wr = fadd float %i.wq, %i.wp                 ; 2 uses
  %i.ws = fcmp oeq float %i.wr, 0.000000e+00
  %.pre1161 = load i64, ptr %24, align 8, !tbaa !274 ; 5 uses
  br i1 %i.ws, label %_ZNK4pbrt4BSDF8Sample_fINS_11DiffuseBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.w

bb.w:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.wt = and i64 %.pre1161, 144115188075855871
  %i.wu = inttoptr i64 %i.wt to ptr               ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.ww = load <4 x float>, ptr %i.wu, align 4, !noalias !1315
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
  %i.xo = call noundef float @cosf(float noundef %.024.i.i.i.i) #23, !noalias !1318
  %i.xp = call noundef float @sinf(float noundef %.024.i.i.i.i) #23, !noalias !1318
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
  %.sroa.0.0.copyload.i.i.i = load <2 x float>, ptr %i.wu, align 4, !noalias !1318
  %.sroa.6.0.copyload.i.i.i = load <2 x float>, ptr %i.wv, align 4, !tbaa !74, !noalias !1318
  %i.xz = shufflevector <2 x float> %.sroa.0.0.copyload.i.i.i, <2 x float> %.sroa.6.0.copyload.i.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr1226 = freeze <4 x float> %i.xz
  %i.ya = fmul <4 x float> %.fr1226, splat (float f0x3EA2F983) ; 2 uses
  %i.yb = fcmp une <4 x float> %i.ya, zeroinitializer
  %i.yc = bitcast <4 x i1> %i.yb to i4
  %i.yd = icmp eq i4 %i.yc, 0
  %i.ye = fcmp oeq float %i.xy, 0.000000e+00
  %or.cond.i595 = or i1 %i.yd, %i.ye
  %i.yf = fcmp oeq float %.sroa.speculated.i.i.i.i, 0.000000e+00
  %or.cond76.i = or i1 %i.yf, %or.cond.i595
  br i1 %or.cond76.i, label %_ZNK4pbrt4BSDF8Sample_fINS_11DiffuseBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.02.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.035.0.i.i.i.i, i64 0
  %i.yg = fcmp olt float %i.wr, 0.000000e+00
  %i.yh = fneg float %sqrt.i.i.i.i
  %spec.select.i.i = select i1 %i.yg, float %i.yh, float %sqrt.i.i.i.i ; 2 uses
  %.sroa.037.0.copyload.i.i = load <2 x float>, ptr %i.og, align 8, !noalias !1315
  %.sroa.238.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !tbaa !203, !noalias !1315
  %i.yi = fmul float %.sroa.02.0.vec.extract.i.i.i, %.sroa.238.0.copyload.i.i
  %.sroa.027.0.copyload.i.i = load <2 x float>, ptr %i.pj, align 4, !noalias !1315
  %.sroa.228.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !203, !noalias !1315
  %i.yj = fmul float %.sroa.02.4.vec.extract.i.i.i, %.sroa.228.0.copyload.i.i
  %i.yk = fadd float %i.yi, %i.yj
  %i.yl = fmul float %.sroa.26.0.copyload.i.i.i592, %spec.select.i.i
  %i.ym = shufflevector <2 x float> %.sroa.035.0.i.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yn = fmul <2 x float> %i.ym, %.sroa.037.0.copyload.i.i
  %i.yo = shufflevector <2 x float> %.sroa.035.0.i.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yp = fmul <2 x float> %i.yo, %.sroa.027.0.copyload.i.i
  %i.yq = fadd <2 x float> %i.yn, %i.yp
  %i.yr = insertelement <2 x float> poison, float %spec.select.i.i, i64 0
  %i.ys = shufflevector <2 x float> %i.yr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yt = fmul <2 x float> %.sroa.05.0.copyload.i.i.i590, %i.ys
  %i.yu = fadd <2 x float> %i.yt, %i.yq           ; 3 uses
  %i.yv = fadd float %i.yl, %i.yk                 ; 6 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.yw, align 8
  %.sroa.8.0..sroa_idx.i598 = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i598, align 8, !tbaa !74
  %i.yx = fmul float %.sroa.17.0, %i.yv           ; 2 uses
  %i.yy = extractelement <2 x float> %i.yu, i64 1 ; 3 uses
  %i.yz = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i571, float %i.yy, float %i.yx)
  %i.za = fneg float %i.yx
  %i.zb = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.yv, float %i.za)
  %i.zc = fadd float %i.yz, %i.zb
  %i.zd = extractelement <2 x float> %i.yu, i64 0 ; 3 uses
  %i.ze = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i570, float %i.zd, float %i.zc)
  %i.zf = call noundef float @llvm.fabs.f32(float %i.ze)
  %i.zg = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.zh = fmul <4 x float> %i.ya, %i.zg
  %i.zi = insertelement <4 x float> poison, float %i.zf, i64 0
  %i.zj = shufflevector <4 x float> %i.zi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zk = fmul <4 x float> %i.zh, %i.zj
  %i.zl = insertelement <4 x float> poison, float %i.xy, i64 0
  %i.zm = shufflevector <4 x float> %i.zl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zn = fdiv <4 x float> %i.zk, %i.zm           ; 7 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0943.0.copyload = load <4 x float>, ptr %i.zo, align 8, !tbaa !74 ; 6 uses
  %i.zp = shufflevector <4 x float> %.sroa.0943.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.zq = insertelement <2 x float> poison, float %i.xy, i64 0
  %i.zr = shufflevector <2 x float> %i.zq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zs = fdiv <2 x float> %i.zp, %i.zr
  %i.zt = shufflevector <4 x float> %.sroa.0943.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.zu = fdiv <2 x float> %i.zt, %i.zr
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.zw = load float, ptr %i.zv, align 8, !tbaa !1287 ; 5 uses
  %i.zx = extractelement <4 x float> %i.zn, i64 0
  %i.zy = fmul float %i.zw, %i.zx
  %i.zz = extractelement <4 x float> %i.zn, i64 1
  %i.aaa = fmul float %i.zw, %i.zz
  %i.aab = extractelement <4 x float> %i.zn, i64 2
  %i.aac = fmul float %i.zw, %i.aab
  %i.aad = extractelement <4 x float> %i.zn, i64 3
  %i.aae = fmul float %i.zw, %i.aad
  %shift1199 = shufflevector <4 x float> %.sroa.0943.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1200 = fadd <4 x float> %.sroa.0943.0.copyload, %shift1199
  %shift1202 = shufflevector <4 x float> %.sroa.0943.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1203 = fadd <4 x float> %shift1202, %foldExtExtBinop1200
  %shift1205 = shufflevector <4 x float> %.sroa.0943.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1206 = fadd <4 x float> %shift1205, %foldExtExtBinop1203
  %i.aaf = extractelement <4 x float> %foldExtExtBinop1206, i64 0
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
  br i1 %i.aao, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.aap = load i32, ptr %i.qt, align 8, !tbaa !1279
  %i.aaq = icmp sgt i32 %i.aap, 0
  br i1 %i.aaq, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.aar = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.aas = fcmp ogt float %i.aar, 0.000000e+00
  %.sroa.speculated = select i1 %i.aas, float %i.aar, float 0.000000e+00 ; 2 uses
  %i.aat = fcmp olt float %.sroa.01.4.vec.extract.i.i587, %.sroa.speculated
  br i1 %i.aat, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.aau = fsub float 1.000000e+00, %.sroa.speculated
  %i.aav = insertelement <4 x float> poison, float %i.aau, i64 0
  %i.aaw = shufflevector <4 x float> %i.aav, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aax = fdiv <4 x float> %i.zn, %i.aaw
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ae, %bb.ad
  %.sroa.0961.0 = phi <4 x float> [ %i.zn, %bb.ad ], [ %i.aax, %bb.ag ], [ %i.zn, %bb.ae ], [ zeroinitializer, %bb.af ]
end_hunk_8
begin_hunk_9_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_15DiffuseMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_IS2_EENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSF_E_clESF_:bb.a
  %i.qf = getelementptr inbounds nuw i8, ptr %24, i64 128
  store <2 x float> %.sroa.0259.0, ptr %i.qf, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %24, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %24, i64 52
  %i.qh = load i64, ptr %i.mk, align 8
  store i64 %i.qh, ptr %i.qg, align 4
  %i.qi = getelementptr inbounds nuw i8, ptr %24, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qi, ptr noundef nonnull align 4 dereferenceable(12) %i.mf, i64 12, i1 false)
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !1283
  %i.ql = getelementptr inbounds nuw i8, ptr %24, i64 24
  store float %i.qk, ptr %i.ql, align 8, !tbaa !281
  %i.qm = getelementptr inbounds nuw i8, ptr %24, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.qm, ptr noundef nonnull align 8 dereferenceable(12) %13, i64 12, i1 false)
  %i.qn = getelementptr inbounds nuw i8, ptr %24, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qn, ptr noundef nonnull align 8 dereferenceable(12) %14, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %25, align 16, !tbaa !203
  %i.qo = getelementptr inbounds nuw i8, ptr %25, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.qo, align 16, !tbaa !203
  %i.qp = getelementptr inbounds nuw i8, ptr %25, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qp, align 16, !tbaa !203
  %i.qq = getelementptr inbounds nuw i8, ptr %25, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qq, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.qi, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.nm, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.on, align 4 ; 2 uses
  %i.qr = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qs = shufflevector <4 x float> %i.qr, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qt = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qu = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.qv = fmul <2 x float> %i.qt, %i.qu
  %i.qw = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.qx = fmul <2 x float> %.sroa.0162.0.copyload, %i.qw
  %i.qy = fadd <2 x float> %i.qv, %i.qx
  %i.qz = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.ra = shufflevector <2 x float> %i.qz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rb = fmul <2 x float> %i.ra, %i.qs
  %i.rc = fadd <2 x float> %i.rb, %i.qy
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.op, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.rd = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1194 = shufflevector <2 x float> %i.rd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1195 = fadd <2 x float> %i.rd, %shift1194
  %i.re = extractelement <2 x float> %foldExtExtBinop1195, i64 0
  %i.rf = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.rg = fadd float %i.rf, %i.re
  %i.rh = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %23, <2 x float> %i.rc, float %i.rg, ptr nonnull %i.e, i64 16, ptr nonnull %25, i64 16) ; 2 uses
  %i.ri = extractvalue { <2 x float>, <2 x float> } %i.rh, 0
  %i.rj = extractvalue { <2 x float>, <2 x float> } %i.rh, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %26, ptr noundef nonnull align 8 dereferenceable(248) %24, <2 x float> %i.ri, <2 x float> %i.rj, ptr noundef nonnull align 4 dereferenceable(32) %21)
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !1292
  %i.rm = getelementptr inbounds nuw i8, ptr %26, i64 88
  %i.rn = load i8, ptr %i.rm, align 4, !tbaa !284, !range !11, !noundef !12
  %i.ro = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !286
  %i.rq = sext i32 %i.rl to i64                   ; 20 uses
  %i.rr = getelementptr inbounds i8, ptr %i.rp, i64 %i.rq
  store i8 %i.rn, ptr %i.rr, align 1, !tbaa !9
  %i.rs = load float, ptr %26, align 4, !tbaa !287
  %i.rt = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !288
  %i.rv = getelementptr inbounds [4 x i8], ptr %i.ru, i64 %i.rq
  store float %i.rs, ptr %i.rv, align 4, !tbaa !203
  %i.rw = getelementptr inbounds nuw i8, ptr %26, i64 4
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !289
  %i.ry = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !290
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.rz, i64 %i.rq
  store float %i.rx, ptr %i.sa, align 4, !tbaa !203
  %i.sb = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !291
  %i.sd = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !292
  %i.sf = getelementptr inbounds [4 x i8], ptr %i.se, i64 %i.rq
  store float %i.sc, ptr %i.sf, align 4, !tbaa !203
  %i.sg = getelementptr inbounds nuw i8, ptr %26, i64 12
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !293
  %i.si = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !205
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.sj, i64 %i.rq
  store float %i.sh, ptr %i.sk, align 4, !tbaa !203
  %i.sl = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !294
  %i.sn = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !206
  %i.sp = getelementptr inbounds [4 x i8], ptr %i.so, i64 %i.rq
  store float %i.sm, ptr %i.sp, align 4, !tbaa !203
  %i.sq = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !295
  %i.ss = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !207
  %i.su = getelementptr inbounds [4 x i8], ptr %i.st, i64 %i.rq
  store float %i.sr, ptr %i.su, align 4, !tbaa !203
  %i.sv = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !293
  %i.sx = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !205
  %i.sz = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.rq
  store float %i.sw, ptr %i.sz, align 4, !tbaa !203
  %i.ta = getelementptr inbounds nuw i8, ptr %26, i64 28
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !294
  %i.tc = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !206
  %i.te = getelementptr inbounds [4 x i8], ptr %i.td, i64 %i.rq
  store float %i.tb, ptr %i.te, align 4, !tbaa !203
  %i.tf = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !295
  %i.th = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !207
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.rq
  store float %i.tg, ptr %i.tj, align 4, !tbaa !203
  %i.tk = getelementptr inbounds nuw i8, ptr %26, i64 36
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !296
  %i.tm = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !211
  %i.to = getelementptr inbounds [4 x i8], ptr %i.tn, i64 %i.rq
  store float %i.tl, ptr %i.to, align 4, !tbaa !203
  %i.tp = getelementptr inbounds nuw i8, ptr %26, i64 40
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !297
  %i.tr = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !212
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.ts, i64 %i.rq
  store float %i.tq, ptr %i.tt, align 4, !tbaa !203
  %i.tu = getelementptr inbounds nuw i8, ptr %26, i64 44
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !298
  %i.tw = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !299
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.rq
  store float %i.tv, ptr %i.ty, align 4, !tbaa !203
  %i.tz = getelementptr inbounds nuw i8, ptr %26, i64 48
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !300
  %i.ub = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !208
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.rq
  store float %i.ua, ptr %i.ud, align 4, !tbaa !203
  %i.ue = getelementptr inbounds nuw i8, ptr %26, i64 52
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !301
  %i.ug = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !209
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.rq
  store float %i.uf, ptr %i.ui, align 4, !tbaa !203
  %i.uj = getelementptr inbounds nuw i8, ptr %26, i64 56
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !232
  %i.ul = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !210
  %i.un = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.rq
  store float %i.uk, ptr %i.un, align 4, !tbaa !203
  %i.uo = getelementptr inbounds nuw i8, ptr %26, i64 60
  %i.up = load float, ptr %i.uo, align 4, !tbaa !300
  %i.uq = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !208
  %i.us = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %i.rq
  store float %i.up, ptr %i.us, align 4, !tbaa !203
  %i.ut = getelementptr inbounds nuw i8, ptr %26, i64 64
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !301
  %i.uv = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !209
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.rq
  store float %i.uu, ptr %i.ux, align 4, !tbaa !203
  %i.uy = getelementptr inbounds nuw i8, ptr %26, i64 68
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !232
  %i.va = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !210
  %i.vc = getelementptr inbounds [4 x i8], ptr %i.vb, i64 %i.rq
  store float %i.uz, ptr %i.vc, align 4, !tbaa !203
  %i.vd = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.ve = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !198
  %i.vg = getelementptr inbounds [16 x i8], ptr %i.vf, i64 %i.rq ; 2 uses
  %i.vh = load <4 x float>, ptr %i.vd, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i584 = shufflevector <4 x float> %i.vh, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.vh, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i584, ptr %i.vg, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.01049.0.copyload = load <2 x float>, ptr %i.mf, align 4 ; 5 uses
  %.sroa.121056.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121056.0.copyload = load float, ptr %.sroa.121056.0..sroa_idx, align 4 ; 4 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !1292
  %i.vl = load ptr, ptr %i.vi, align 8, !tbaa !302, !noalias !1360
  %i.vm = sext i32 %i.vk to i64                   ; 2 uses
  %i.vn = getelementptr inbounds [16 x i8], ptr %i.vl, i64 %i.vm ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i587 = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vo = load <2 x float>, ptr %i.vn, align 16, !noalias !1360
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i587, align 8, !tbaa !74, !noalias !1360
  %i.vp = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !308, !noalias !1360
  %i.vr = getelementptr inbounds [16 x i8], ptr %i.vq, i64 %i.vm ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %.sroa.2.0.copyload.i931.i.i1176 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !1360
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 4
  %.sroa.01.4.vec.extract.i.i589 = load float, ptr %i.vs, align 4, !noalias !1360
  %.sroa.05.0.copyload.i.i.i592 = load <2 x float>, ptr %i.op, align 8, !noalias !1365 ; 2 uses
  %.sroa.26.0.copyload.i.i.i594 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1365 ; 2 uses
  %i.vt = fmul <2 x float> %.sroa.01049.0.copyload, %.sroa.05.0.copyload.i.i.i592 ; 2 uses
  %shift1197 = shufflevector <2 x float> %i.vt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1198 = fadd <2 x float> %i.vt, %shift1197
  %i.vu = extractelement <2 x float> %foldExtExtBinop1198, i64 0
  %i.vv = fmul float %.sroa.121056.0.copyload, %.sroa.26.0.copyload.i.i.i594
  %i.vw = fadd float %i.vv, %i.vu                 ; 2 uses
  %i.vx = fcmp oeq float %i.vw, 0.000000e+00
  %.pre1163 = load i64, ptr %23, align 8, !tbaa !274 ; 5 uses
  br i1 %i.vx, label %_ZNK4pbrt4BSDF8Sample_fINS_11DiffuseBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vy = and i64 %.pre1163, 144115188075855871
  %i.vz = inttoptr i64 %i.vy to ptr               ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wb = load <4 x float>, ptr %i.vz, align 4, !noalias !1365
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
  %i.wt = call noundef float @cosf(float noundef %.024.i.i.i.i) #23, !noalias !1368
  %i.wu = call noundef float @sinf(float noundef %.024.i.i.i.i) #23, !noalias !1368
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
  %.sroa.0.0.copyload.i.i.i = load <2 x float>, ptr %i.vz, align 4, !noalias !1368
  %.sroa.6.0.copyload.i.i.i = load <2 x float>, ptr %i.wa, align 4, !tbaa !74, !noalias !1368
  %i.xe = shufflevector <2 x float> %.sroa.0.0.copyload.i.i.i, <2 x float> %.sroa.6.0.copyload.i.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr1230 = freeze <4 x float> %i.xe
  %i.xf = fmul <4 x float> %.fr1230, splat (float f0x3EA2F983) ; 2 uses
  %i.xg = fcmp une <4 x float> %i.xf, zeroinitializer
  %i.xh = bitcast <4 x i1> %i.xg to i4
  %i.xi = icmp eq i4 %i.xh, 0
  %i.xj = fcmp oeq float %i.xd, 0.000000e+00
  %or.cond.i597 = or i1 %i.xi, %i.xj
  %i.xk = fcmp oeq float %.sroa.speculated.i.i.i.i, 0.000000e+00
  %or.cond76.i = or i1 %i.xk, %or.cond.i597
  br i1 %or.cond76.i, label %_ZNK4pbrt4BSDF8Sample_fINS_11DiffuseBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.02.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.035.0.i.i.i.i, i64 0
  %i.xl = fcmp olt float %i.vw, 0.000000e+00
  %i.xm = fneg float %sqrt.i.i.i.i
  %spec.select.i.i = select i1 %i.xl, float %i.xm, float %sqrt.i.i.i.i ; 2 uses
  %.sroa.037.0.copyload.i.i = load <2 x float>, ptr %i.nm, align 8, !noalias !1365
  %.sroa.238.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !tbaa !203, !noalias !1365
  %i.xn = fmul float %.sroa.02.0.vec.extract.i.i.i, %.sroa.238.0.copyload.i.i
  %.sroa.027.0.copyload.i.i = load <2 x float>, ptr %i.on, align 4, !noalias !1365
  %.sroa.228.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !203, !noalias !1365
  %i.xo = fmul float %.sroa.02.4.vec.extract.i.i.i, %.sroa.228.0.copyload.i.i
  %i.xp = fadd float %i.xn, %i.xo
  %i.xq = fmul float %.sroa.26.0.copyload.i.i.i594, %spec.select.i.i
  %i.xr = shufflevector <2 x float> %.sroa.035.0.i.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xs = fmul <2 x float> %i.xr, %.sroa.037.0.copyload.i.i
  %i.xt = shufflevector <2 x float> %.sroa.035.0.i.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xu = fmul <2 x float> %i.xt, %.sroa.027.0.copyload.i.i
  %i.xv = fadd <2 x float> %i.xs, %i.xu
  %i.xw = insertelement <2 x float> poison, float %spec.select.i.i, i64 0
  %i.xx = shufflevector <2 x float> %i.xw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xy = fmul <2 x float> %.sroa.05.0.copyload.i.i.i592, %i.xx
  %i.xz = fadd <2 x float> %i.xy, %i.xv           ; 3 uses
  %i.ya = fadd float %i.xq, %i.xp                 ; 6 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.yb, align 8
  %.sroa.8.0..sroa_idx.i600 = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i600, align 8, !tbaa !74
  %i.yc = fmul float %.sroa.17.0, %i.ya           ; 2 uses
  %i.yd = extractelement <2 x float> %i.xz, i64 1 ; 3 uses
  %i.ye = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i573, float %i.yd, float %i.yc)
  %i.yf = fneg float %i.yc
  %i.yg = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.ya, float %i.yf)
  %i.yh = fadd float %i.ye, %i.yg
  %i.yi = extractelement <2 x float> %i.xz, i64 0 ; 3 uses
  %i.yj = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i572, float %i.yi, float %i.yh)
  %i.yk = call noundef float @llvm.fabs.f32(float %i.yj)
  %i.yl = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ym = fmul <4 x float> %i.xf, %i.yl
  %i.yn = insertelement <4 x float> poison, float %i.yk, i64 0
  %i.yo = shufflevector <4 x float> %i.yn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yp = fmul <4 x float> %i.ym, %i.yo
  %i.yq = insertelement <4 x float> poison, float %i.xd, i64 0
  %i.yr = shufflevector <4 x float> %i.yq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ys = fdiv <4 x float> %i.yp, %i.yr           ; 7 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0945.0.copyload = load <4 x float>, ptr %i.yt, align 8, !tbaa !74 ; 6 uses
  %i.yu = shufflevector <4 x float> %.sroa.0945.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.yv = insertelement <2 x float> poison, float %i.xd, i64 0
  %i.yw = shufflevector <2 x float> %i.yv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yx = fdiv <2 x float> %i.yu, %i.yw
  %i.yy = shufflevector <4 x float> %.sroa.0945.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.yz = fdiv <2 x float> %i.yy, %i.yw
  %i.za = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.zb = load float, ptr %i.za, align 8, !tbaa !1287 ; 5 uses
  %i.zc = extractelement <4 x float> %i.ys, i64 0
  %i.zd = fmul float %i.zb, %i.zc
  %i.ze = extractelement <4 x float> %i.ys, i64 1
  %i.zf = fmul float %i.zb, %i.ze
  %i.zg = extractelement <4 x float> %i.ys, i64 2
  %i.zh = fmul float %i.zb, %i.zg
  %i.zi = extractelement <4 x float> %i.ys, i64 3
  %i.zj = fmul float %i.zb, %i.zi
  %shift1203 = shufflevector <4 x float> %.sroa.0945.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1204 = fadd <4 x float> %.sroa.0945.0.copyload, %shift1203
  %shift1206 = shufflevector <4 x float> %.sroa.0945.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1207 = fadd <4 x float> %shift1206, %foldExtExtBinop1204
  %shift1209 = shufflevector <4 x float> %.sroa.0945.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1210 = fadd <4 x float> %shift1209, %foldExtExtBinop1207
  %i.zk = extractelement <4 x float> %foldExtExtBinop1210, i64 0
  %i.zl = fmul float %i.zk, 2.500000e-01          ; 4 uses
  %i.zm = fdiv float %i.zd, %i.zl                 ; 2 uses
  %i.zn = fdiv float %i.zf, %i.zl                 ; 2 uses
  %i.zo = fdiv float %i.zh, %i.zl                 ; 2 uses
  %i.zp = fdiv float %i.zj, %i.zl                 ; 2 uses
  %i.zq = fcmp olt float %i.zm, %i.zn
  %.sroa.speculated.i = select i1 %i.zq, float %i.zn, float %i.zm ; 2 uses
  %i.zr = fcmp olt float %.sroa.speculated.i, %i.zo
  %.sroa.speculated.1.i = select i1 %i.zr, float %i.zo, float %.sroa.speculated.i ; 2 uses
  %i.zs = fcmp olt float %.sroa.speculated.1.i, %i.zp
  %.sroa.speculated.2.i = select i1 %i.zs, float %i.zp, float %.sroa.speculated.1.i ; 2 uses
  %i.zt = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.zt, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.zu = load i32, ptr %i.py, align 8, !tbaa !1279
  %i.zv = icmp sgt i32 %i.zu, 0
  br i1 %i.zv, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.zw = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.zx = fcmp ogt float %i.zw, 0.000000e+00
  %.sroa.speculated = select i1 %i.zx, float %i.zw, float 0.000000e+00 ; 2 uses
  %i.zy = fcmp olt float %.sroa.01.4.vec.extract.i.i589, %.sroa.speculated
  br i1 %i.zy, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.zz = fsub float 1.000000e+00, %.sroa.speculated
  %i.aaa = insertelement <4 x float> poison, float %i.zz, i64 0
  %i.aab = shufflevector <4 x float> %i.aaa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aac = fdiv <4 x float> %i.ys, %i.aab
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y, %bb.x
  %.sroa.0963.0 = phi <4 x float> [ %i.ys, %bb.x ], [ %i.aac, %bb.aa ], [ %i.ys, %bb.y ], [ zeroinitializer, %bb.z ]
end_hunk_9
begin_hunk_10_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_27DiffuseTransmissionMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_IS2_EENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSH_E_clESH_:bb.a
  %i.pr = getelementptr inbounds nuw i8, ptr %21, i64 128
  store <2 x float> %.sroa.0259.0, ptr %i.pr, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %21, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %21, i64 52
  %i.pt = load i64, ptr %i.mk, align 8
  store i64 %i.pt, ptr %i.ps, align 4
  %i.pu = getelementptr inbounds nuw i8, ptr %21, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pu, ptr noundef nonnull align 4 dereferenceable(12) %i.mf, i64 12, i1 false)
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !1421
  %i.px = getelementptr inbounds nuw i8, ptr %21, i64 24
  store float %i.pw, ptr %i.px, align 8, !tbaa !281
  %i.py = getelementptr inbounds nuw i8, ptr %21, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.py, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false)
  %i.pz = getelementptr inbounds nuw i8, ptr %21, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pz, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %22, align 16, !tbaa !203
  %i.qa = getelementptr inbounds nuw i8, ptr %22, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.qa, align 16, !tbaa !203
  %i.qb = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qb, align 16, !tbaa !203
  %i.qc = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qc, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.pu, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.my, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.nz, align 4 ; 2 uses
  %i.qd = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qe = shufflevector <4 x float> %i.qd, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qf = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qg = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.qh = fmul <2 x float> %i.qf, %i.qg
  %i.qi = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.qj = fmul <2 x float> %.sroa.0162.0.copyload, %i.qi
  %i.qk = fadd <2 x float> %i.qh, %i.qj
  %i.ql = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.qm = shufflevector <2 x float> %i.ql, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qn = fmul <2 x float> %i.qm, %i.qe
  %i.qo = fadd <2 x float> %i.qn, %i.qk
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.ob, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.qp = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1088 = shufflevector <2 x float> %i.qp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1089 = fadd <2 x float> %i.qp, %shift1088
  %i.qq = extractelement <2 x float> %foldExtExtBinop1089, i64 0
  %i.qr = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.qs = fadd float %i.qr, %i.qq
  %i.qt = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qo, float %i.qs, ptr nonnull %i.e, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.qu = extractvalue { <2 x float>, <2 x float> } %i.qt, 0
  %i.qv = extractvalue { <2 x float>, <2 x float> } %i.qt, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.qu, <2 x float> %i.qv, ptr noundef nonnull align 4 dereferenceable(32) %17)
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !1430
  %i.qy = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.qz = load i8, ptr %i.qy, align 4, !tbaa !284, !range !11, !noundef !12
  %i.ra = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !286
  %i.rc = sext i32 %i.qx to i64                   ; 20 uses
  %i.rd = getelementptr inbounds i8, ptr %i.rb, i64 %i.rc
  store i8 %i.qz, ptr %i.rd, align 1, !tbaa !9
  %i.re = load float, ptr %23, align 4, !tbaa !287
  %i.rf = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !288
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.rg, i64 %i.rc
  store float %i.re, ptr %i.rh, align 4, !tbaa !203
  %i.ri = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !289
  %i.rk = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !290
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %i.rc
  store float %i.rj, ptr %i.rm, align 4, !tbaa !203
  %i.rn = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !291
  %i.rp = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !292
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %i.rc
  store float %i.ro, ptr %i.rr, align 4, !tbaa !203
  %i.rs = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !293
  %i.ru = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !205
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.rc
  store float %i.rt, ptr %i.rw, align 4, !tbaa !203
  %i.rx = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !294
  %i.rz = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !206
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.rc
  store float %i.ry, ptr %i.sb, align 4, !tbaa !203
  %i.sc = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !295
  %i.se = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !207
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.rc
  store float %i.sd, ptr %i.sg, align 4, !tbaa !203
  %i.sh = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.si = load float, ptr %i.sh, align 4, !tbaa !293
  %i.sj = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !205
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %i.rc
  store float %i.si, ptr %i.sl, align 4, !tbaa !203
  %i.sm = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !294
  %i.so = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !206
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.rc
  store float %i.sn, ptr %i.sq, align 4, !tbaa !203
  %i.sr = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !295
  %i.st = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !207
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rc
  store float %i.ss, ptr %i.sv, align 4, !tbaa !203
  %i.sw = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !296
  %i.sy = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !211
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.rc
  store float %i.sx, ptr %i.ta, align 4, !tbaa !203
  %i.tb = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !297
  %i.td = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !212
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.te, i64 %i.rc
  store float %i.tc, ptr %i.tf, align 4, !tbaa !203
  %i.tg = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.th = load float, ptr %i.tg, align 4, !tbaa !298
  %i.ti = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !299
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.rc
  store float %i.th, ptr %i.tk, align 4, !tbaa !203
  %i.tl = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !300
  %i.tn = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !208
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.rc
  store float %i.tm, ptr %i.tp, align 4, !tbaa !203
  %i.tq = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !301
  %i.ts = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !209
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.rc
  store float %i.tr, ptr %i.tu, align 4, !tbaa !203
  %i.tv = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !232
  %i.tx = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !210
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %i.rc
  store float %i.tw, ptr %i.tz, align 4, !tbaa !203
  %i.ua = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !300
  %i.uc = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !208
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.rc
  store float %i.ub, ptr %i.ue, align 4, !tbaa !203
  %i.uf = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !301
  %i.uh = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !209
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ui, i64 %i.rc
  store float %i.ug, ptr %i.uj, align 4, !tbaa !203
  %i.uk = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !232
  %i.um = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !210
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.rc
  store float %i.ul, ptr %i.uo, align 4, !tbaa !203
  %i.up = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.uq = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !198
  %i.us = getelementptr inbounds [16 x i8], ptr %i.ur, i64 %i.rc ; 2 uses
  %i.ut = load <4 x float>, ptr %i.up, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.ut, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.ut, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.us, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0967.0.copyload = load <2 x float>, ptr %i.mf, align 4 ; 6 uses
  %.sroa.12974.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.12974.0.copyload = load float, ptr %.sroa.12974.0..sroa_idx, align 4 ; 6 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !1430
  %i.ux = load ptr, ptr %i.uu, align 8, !tbaa !302, !noalias !1448
  %i.uy = sext i32 %i.uw to i64                   ; 2 uses
  %i.uz = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.uy ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.va = load <2 x float>, ptr %i.uz, align 16, !noalias !1448
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !74, !noalias !1448
  %i.vb = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !308, !noalias !1448
  %i.vd = getelementptr inbounds [16 x i8], ptr %i.vc, i64 %i.uy ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vd, align 16, !noalias !1448 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %.sroa.2.0.copyload.i931.i.i1048 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !1448
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_23DiffuseTransmissionBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %24, ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %.sroa.0967.0.copyload, float %.sroa.12974.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1048, i32 noundef 0, i32 noundef 3)
  %i.ve = getelementptr inbounds nuw i8, ptr %24, i64 44 ; 2 uses
  %i.vf = load i8, ptr %i.ve, align 4, !tbaa !309, !range !11, !noundef !12
  %i.vg = trunc nuw i8 %i.vf to i1
  br i1 %i.vg, label %bb.q, label %bb.af

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vh = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.vh, align 16 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 7 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.vi, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %.sroa.04.0.vec.extract.i.i593 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.04.4.vec.extract.i.i595 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.vj = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.vk = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %.sroa.04.4.vec.extract.i.i595, float %i.vj)
  %i.vl = fneg float %i.vj
  %i.vm = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.vl)
  %i.vn = fadd float %i.vk, %i.vm
  %i.vo = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %.sroa.04.0.vec.extract.i.i593, float %i.vn)
  %i.vp = call noundef float @llvm.fabs.f32(float %i.vo)
  %i.vq = getelementptr inbounds nuw i8, ptr %24, i64 28
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !311 ; 2 uses
  %i.vs = load <4 x float>, ptr %24, align 16, !tbaa !203
  %i.vt = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vu = fmul <4 x float> %i.vt, %i.vs
  %i.vv = insertelement <4 x float> poison, float %i.vp, i64 0
  %i.vw = shufflevector <4 x float> %i.vv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vx = fmul <4 x float> %i.vu, %i.vw
  %i.vy = insertelement <4 x float> poison, float %i.vr, i64 0
  %i.vz = shufflevector <4 x float> %i.vy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wa = fdiv <4 x float> %i.vx, %i.vz           ; 7 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0905.0.copyload = load <4 x float>, ptr %i.wb, align 8, !tbaa !74 ; 8 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.wd = load i8, ptr %i.wc, align 8, !tbaa !314, !range !11, !noundef !12
  %i.we = trunc nuw i8 %i.wd to i1
  br i1 %i.we, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620, label %bb.v

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620: ; preds = %bb.q
  %.sroa.05.0.copyload.i.i.i623 = load <2 x float>, ptr %i.ob, align 8 ; 3 uses
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
  %i.wn = load i64, ptr %20, align 8, !tbaa !274
  %i.wo = and i64 %i.wn, 144115188075855871
  %i.wp = inttoptr i64 %i.wo to ptr               ; 8 uses
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !203 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 4
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !203 ; 2 uses
  %i.wt = fcmp olt float %i.wq, %i.ws
  %.sroa.speculated.i.i.i = select i1 %i.wt, float %i.ws, float %i.wq ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !203 ; 2 uses
  %i.ww = fcmp olt float %.sroa.speculated.i.i.i, %i.wv
  %.sroa.speculated.1.i.i.i = select i1 %i.ww, float %i.wv, float %.sroa.speculated.i.i.i ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wp, i64 12
  %i.wy = load float, ptr %i.wx, align 4, !tbaa !203 ; 2 uses
  %i.wz = fcmp olt float %.sroa.speculated.1.i.i.i, %i.wy
  %.sroa.speculated.2.i.i.i = select i1 %i.wz, float %i.wy, float %.sroa.speculated.1.i.i.i ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !203 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wp, i64 20
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !203 ; 2 uses
  %i.xe = fcmp olt float %i.xb, %i.xd
  %.sroa.speculated.i38.i.i = select i1 %i.xe, float %i.xd, float %i.xb ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wp, i64 24
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !203 ; 2 uses
  %i.xh = fcmp olt float %.sroa.speculated.i38.i.i, %i.xg
  %.sroa.speculated.1.i39.i.i = select i1 %i.xh, float %i.xg, float %.sroa.speculated.i38.i.i ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wp, i64 28
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !203 ; 2 uses
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
  %.0.i628.sink1070 = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit620 ], [ %i.xv, %bb.u ], [ %i.xt, %bb.t ], [ %i.vr, %bb.q ]
  %i.xw = shufflevector <4 x float> %.sroa.0905.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.xx = insertelement <2 x float> poison, float %.0.i628.sink1070, i64 0
  %i.xy = shufflevector <2 x float> %i.xx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xz = fdiv <2 x float> %i.xw, %i.xy
  %i.ya = shufflevector <4 x float> %.sroa.0905.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.yb = fdiv <2 x float> %i.ya, %i.xy
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.yd = load float, ptr %i.yc, align 8, !tbaa !1425 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.yf = load i32, ptr %i.ye, align 16, !tbaa !315
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
  %i.zd = load i32, ptr %i.pk, align 8, !tbaa !1417
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
end_hunk_10
begin_hunk_11_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_27DiffuseTransmissionMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_IS2_EENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSH_E_clESH_:bb.a
  %i.rd = getelementptr inbounds nuw i8, ptr %25, i64 128
  store <2 x float> %.sroa.0259.0, ptr %i.rd, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %25, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.re = getelementptr inbounds nuw i8, ptr %25, i64 52
  %i.rf = load i64, ptr %i.mk, align 8
  store i64 %i.rf, ptr %i.re, align 4
  %i.rg = getelementptr inbounds nuw i8, ptr %25, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.rg, ptr noundef nonnull align 4 dereferenceable(12) %i.mf, i64 12, i1 false)
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !1421
  %i.rj = getelementptr inbounds nuw i8, ptr %25, i64 24
  store float %i.ri, ptr %i.rj, align 8, !tbaa !281
  %i.rk = getelementptr inbounds nuw i8, ptr %25, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.rk, ptr noundef nonnull align 8 dereferenceable(12) %14, i64 12, i1 false)
  %i.rl = getelementptr inbounds nuw i8, ptr %25, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.rl, ptr noundef nonnull align 8 dereferenceable(12) %15, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %26, align 16, !tbaa !203
  %i.rm = getelementptr inbounds nuw i8, ptr %26, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.rm, align 16, !tbaa !203
  %i.rn = getelementptr inbounds nuw i8, ptr %26, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.rn, align 16, !tbaa !203
  %i.ro = getelementptr inbounds nuw i8, ptr %26, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.ro, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.rg, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.ok, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.pl, align 4 ; 2 uses
  %i.rp = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.rq = shufflevector <4 x float> %i.rp, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.rr = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rs = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.rt = fmul <2 x float> %i.rr, %i.rs
  %i.ru = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.rv = fmul <2 x float> %.sroa.0162.0.copyload, %i.ru
  %i.rw = fadd <2 x float> %i.rt, %i.rv
  %i.rx = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.ry = shufflevector <2 x float> %i.rx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rz = fmul <2 x float> %i.ry, %i.rq
  %i.sa = fadd <2 x float> %i.rz, %i.rw
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.pn, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.sb = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1106 = shufflevector <2 x float> %i.sb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1107 = fadd <2 x float> %i.sb, %shift1106
  %i.sc = extractelement <2 x float> %foldExtExtBinop1107, i64 0
  %i.sd = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.se = fadd float %i.sd, %i.sc
  %i.sf = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %24, <2 x float> %i.sa, float %i.se, ptr nonnull %i.e, i64 16, ptr nonnull %26, i64 16) ; 2 uses
  %i.sg = extractvalue { <2 x float>, <2 x float> } %i.sf, 0
  %i.sh = extractvalue { <2 x float>, <2 x float> } %i.sf, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %27, ptr noundef nonnull align 8 dereferenceable(248) %25, <2 x float> %i.sg, <2 x float> %i.sh, ptr noundef nonnull align 4 dereferenceable(32) %22)
  %i.si = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !1430
  %i.sk = getelementptr inbounds nuw i8, ptr %27, i64 88
  %i.sl = load i8, ptr %i.sk, align 4, !tbaa !284, !range !11, !noundef !12
  %i.sm = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !286
  %i.so = sext i32 %i.sj to i64                   ; 20 uses
  %i.sp = getelementptr inbounds i8, ptr %i.sn, i64 %i.so
  store i8 %i.sl, ptr %i.sp, align 1, !tbaa !9
  %i.sq = load float, ptr %27, align 4, !tbaa !287
  %i.sr = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !288
  %i.st = getelementptr inbounds [4 x i8], ptr %i.ss, i64 %i.so
  store float %i.sq, ptr %i.st, align 4, !tbaa !203
  %i.su = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.sv = load float, ptr %i.su, align 4, !tbaa !289
  %i.sw = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !290
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %i.so
  store float %i.sv, ptr %i.sy, align 4, !tbaa !203
  %i.sz = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !291
  %i.tb = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !292
  %i.td = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.so
  store float %i.ta, ptr %i.td, align 4, !tbaa !203
  %i.te = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.tf = load float, ptr %i.te, align 4, !tbaa !293
  %i.tg = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !205
  %i.ti = getelementptr inbounds [4 x i8], ptr %i.th, i64 %i.so
  store float %i.tf, ptr %i.ti, align 4, !tbaa !203
  %i.tj = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !294
  %i.tl = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !206
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.tm, i64 %i.so
  store float %i.tk, ptr %i.tn, align 4, !tbaa !203
  %i.to = getelementptr inbounds nuw i8, ptr %27, i64 20
  %i.tp = load float, ptr %i.to, align 4, !tbaa !295
  %i.tq = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !207
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.so
  store float %i.tp, ptr %i.ts, align 4, !tbaa !203
  %i.tt = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !293
  %i.tv = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !205
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.so
  store float %i.tu, ptr %i.tx, align 4, !tbaa !203
  %i.ty = getelementptr inbounds nuw i8, ptr %27, i64 28
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !294
  %i.ua = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !206
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.ub, i64 %i.so
  store float %i.tz, ptr %i.uc, align 4, !tbaa !203
  %i.ud = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !295
  %i.uf = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !207
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.so
  store float %i.ue, ptr %i.uh, align 4, !tbaa !203
  %i.ui = getelementptr inbounds nuw i8, ptr %27, i64 36
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !296
  %i.uk = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !211
  %i.um = getelementptr inbounds [4 x i8], ptr %i.ul, i64 %i.so
  store float %i.uj, ptr %i.um, align 4, !tbaa !203
  %i.un = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.uo = load float, ptr %i.un, align 4, !tbaa !297
  %i.up = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !212
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.so
  store float %i.uo, ptr %i.ur, align 4, !tbaa !203
  %i.us = getelementptr inbounds nuw i8, ptr %27, i64 44
  %i.ut = load float, ptr %i.us, align 4, !tbaa !298
  %i.uu = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !299
  %i.uw = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.so
  store float %i.ut, ptr %i.uw, align 4, !tbaa !203
  %i.ux = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !300
  %i.uz = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !208
  %i.vb = getelementptr inbounds [4 x i8], ptr %i.va, i64 %i.so
  store float %i.uy, ptr %i.vb, align 4, !tbaa !203
  %i.vc = getelementptr inbounds nuw i8, ptr %27, i64 52
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !301
  %i.ve = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !209
  %i.vg = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %i.so
  store float %i.vd, ptr %i.vg, align 4, !tbaa !203
  %i.vh = getelementptr inbounds nuw i8, ptr %27, i64 56
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !232
  %i.vj = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !210
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.vk, i64 %i.so
  store float %i.vi, ptr %i.vl, align 4, !tbaa !203
  %i.vm = getelementptr inbounds nuw i8, ptr %27, i64 60
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !300
  %i.vo = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !208
  %i.vq = getelementptr inbounds [4 x i8], ptr %i.vp, i64 %i.so
  store float %i.vn, ptr %i.vq, align 4, !tbaa !203
  %i.vr = getelementptr inbounds nuw i8, ptr %27, i64 64
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !301
  %i.vt = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !209
  %i.vv = getelementptr inbounds [4 x i8], ptr %i.vu, i64 %i.so
  store float %i.vs, ptr %i.vv, align 4, !tbaa !203
  %i.vw = getelementptr inbounds nuw i8, ptr %27, i64 68
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !232
  %i.vy = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !210
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.vz, i64 %i.so
  store float %i.vx, ptr %i.wa, align 4, !tbaa !203
  %i.wb = getelementptr inbounds nuw i8, ptr %27, i64 72
  %i.wc = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !198
  %i.we = getelementptr inbounds [16 x i8], ptr %i.wd, i64 %i.so ; 2 uses
  %i.wf = load <4 x float>, ptr %i.wb, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i582 = shufflevector <4 x float> %i.wf, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.wf, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i582, ptr %i.we, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0969.0.copyload = load <2 x float>, ptr %i.mf, align 4 ; 6 uses
  %.sroa.12976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.12976.0.copyload = load float, ptr %.sroa.12976.0..sroa_idx, align 4 ; 6 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !1430
  %i.wj = load ptr, ptr %i.wg, align 8, !tbaa !302, !noalias !1496
  %i.wk = sext i32 %i.wi to i64                   ; 2 uses
  %i.wl = getelementptr inbounds [16 x i8], ptr %i.wj, i64 %i.wk ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i585 = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %i.wm = load <2 x float>, ptr %i.wl, align 16, !noalias !1496
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i585, align 8, !tbaa !74, !noalias !1496
  %i.wn = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !308, !noalias !1496
  %i.wp = getelementptr inbounds [16 x i8], ptr %i.wo, i64 %i.wk ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.wp, align 16, !noalias !1496 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %.sroa.2.0.copyload.i931.i.i1066 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !1496
  %.sroa.01.0.vec.extract.i.i586 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i587 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_23DiffuseTransmissionBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %28, ptr noundef nonnull align 8 dereferenceable(44) %24, <2 x float> %.sroa.0969.0.copyload, float %.sroa.12976.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i586, <2 x float> %.sroa.2.0.copyload.i931.i.i1066, i32 noundef 0, i32 noundef 3)
  %i.wq = getelementptr inbounds nuw i8, ptr %28, i64 44 ; 2 uses
  %i.wr = load i8, ptr %i.wq, align 4, !tbaa !309, !range !11, !noundef !12
  %i.ws = trunc nuw i8 %i.wr to i1
  br i1 %i.ws, label %bb.q, label %bb.af

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.wt = getelementptr inbounds nuw i8, ptr %28, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.wt, align 16 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 7 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.wu, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %.sroa.04.0.vec.extract.i.i595 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.04.4.vec.extract.i.i597 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.wv = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.ww = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i571, float %.sroa.04.4.vec.extract.i.i597, float %i.wv)
  %i.wx = fneg float %i.wv
  %i.wy = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.wx)
  %i.wz = fadd float %i.ww, %i.wy
  %i.xa = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i570, float %.sroa.04.0.vec.extract.i.i595, float %i.wz)
  %i.xb = call noundef float @llvm.fabs.f32(float %i.xa)
  %i.xc = getelementptr inbounds nuw i8, ptr %28, i64 28
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !311 ; 2 uses
  %i.xe = load <4 x float>, ptr %28, align 16, !tbaa !203
  %i.xf = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.xg = fmul <4 x float> %i.xf, %i.xe
  %i.xh = insertelement <4 x float> poison, float %i.xb, i64 0
  %i.xi = shufflevector <4 x float> %i.xh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xj = fmul <4 x float> %i.xg, %i.xi
  %i.xk = insertelement <4 x float> poison, float %i.xd, i64 0
  %i.xl = shufflevector <4 x float> %i.xk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xm = fdiv <4 x float> %i.xj, %i.xl           ; 7 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0907.0.copyload = load <4 x float>, ptr %i.xn, align 8, !tbaa !74 ; 8 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %28, i64 40
  %i.xp = load i8, ptr %i.xo, align 8, !tbaa !314, !range !11, !noundef !12
  %i.xq = trunc nuw i8 %i.xp to i1
  br i1 %i.xq, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit622, label %bb.v

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit622: ; preds = %bb.q
  %.sroa.05.0.copyload.i.i.i625 = load <2 x float>, ptr %i.pn, align 8 ; 3 uses
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
  %i.xz = load i64, ptr %24, align 8, !tbaa !274
  %i.ya = and i64 %i.xz, 144115188075855871
  %i.yb = inttoptr i64 %i.ya to ptr               ; 8 uses
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !203 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yb, i64 4
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !203 ; 2 uses
  %i.yf = fcmp olt float %i.yc, %i.ye
  %.sroa.speculated.i.i.i = select i1 %i.yf, float %i.ye, float %i.yc ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !203 ; 2 uses
  %i.yi = fcmp olt float %.sroa.speculated.i.i.i, %i.yh
  %.sroa.speculated.1.i.i.i = select i1 %i.yi, float %i.yh, float %.sroa.speculated.i.i.i ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yb, i64 12
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !203 ; 2 uses
  %i.yl = fcmp olt float %.sroa.speculated.1.i.i.i, %i.yk
  %.sroa.speculated.2.i.i.i = select i1 %i.yl, float %i.yk, float %.sroa.speculated.1.i.i.i ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yb, i64 16
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !203 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yb, i64 20
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !203 ; 2 uses
  %i.yq = fcmp olt float %i.yn, %i.yp
  %.sroa.speculated.i38.i.i = select i1 %i.yq, float %i.yp, float %i.yn ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yb, i64 24
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !203 ; 2 uses
  %i.yt = fcmp olt float %.sroa.speculated.i38.i.i, %i.ys
  %.sroa.speculated.1.i39.i.i = select i1 %i.yt, float %i.ys, float %.sroa.speculated.i38.i.i ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yb, i64 28
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !203 ; 2 uses
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
  %.0.i630.sink1088 = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit622 ], [ %i.zh, %bb.u ], [ %i.zf, %bb.t ], [ %i.xd, %bb.q ]
  %i.zi = shufflevector <4 x float> %.sroa.0907.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.zj = insertelement <2 x float> poison, float %.0.i630.sink1088, i64 0
  %i.zk = shufflevector <2 x float> %i.zj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zl = fdiv <2 x float> %i.zi, %i.zk
  %i.zm = shufflevector <4 x float> %.sroa.0907.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.zn = fdiv <2 x float> %i.zm, %i.zk
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.zp = load float, ptr %i.zo, align 8, !tbaa !1425 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 2 uses
  %i.zr = load i32, ptr %i.zq, align 16, !tbaa !315
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
  %i.aap = load i32, ptr %i.qw, align 8, !tbaa !1417
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
end_hunk_11
begin_hunk_12_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_12HairMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_IS2_EENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSJ_E_clESJ_:bb.a
  %i.jx = getelementptr inbounds nuw i8, ptr %16, i64 128
  store <2 x float> %.sroa.0259.0.copyload, ptr %i.jx, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %16, i64 136
  store float %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %16, i64 52
  %i.jz = load i64, ptr %i.gs, align 8
  store i64 %i.jz, ptr %i.jy, align 4
  %i.ka = getelementptr inbounds nuw i8, ptr %16, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ka, ptr noundef nonnull align 4 dereferenceable(12) %i.gn, i64 12, i1 false)
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !1551
  %i.kd = getelementptr inbounds nuw i8, ptr %16, i64 24
  store float %i.kc, ptr %i.kd, align 8, !tbaa !281
  %i.ke = getelementptr inbounds nuw i8, ptr %16, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ke, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %16, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kf, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %17, align 16, !tbaa !203
  %i.kg = getelementptr inbounds nuw i8, ptr %17, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.kg, align 16, !tbaa !203
  %i.kh = getelementptr inbounds nuw i8, ptr %17, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.kh, align 16, !tbaa !203
  %i.ki = getelementptr inbounds nuw i8, ptr %17, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.ki, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.ka, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.he, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.if, align 4 ; 2 uses
  %i.kj = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.kk = shufflevector <4 x float> %i.kj, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.kl = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.km = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.kn = fmul <2 x float> %i.kl, %i.km
  %i.ko = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.kp = fmul <2 x float> %.sroa.0162.0.copyload, %i.ko
  %i.kq = fadd <2 x float> %i.kn, %i.kp
  %i.kr = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.ks = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kt = fmul <2 x float> %i.ks, %i.kk
  %i.ku = fadd <2 x float> %i.kt, %i.kq
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.ih, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.kv = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1205 = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1206 = fadd <2 x float> %i.kv, %shift1205
  %i.kw = extractelement <2 x float> %foldExtExtBinop1206, i64 0
  %i.kx = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.ky = fadd float %i.kx, %i.kw
  %i.kz = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %15, <2 x float> %i.ku, float %i.ky, ptr nonnull %i.e, i64 16, ptr nonnull %17, i64 16) ; 2 uses
  %i.la = extractvalue { <2 x float>, <2 x float> } %i.kz, 0
  %i.lb = extractvalue { <2 x float>, <2 x float> } %i.kz, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %18, ptr noundef nonnull align 8 dereferenceable(248) %16, <2 x float> %i.la, <2 x float> %i.lb, ptr noundef nonnull align 4 dereferenceable(32) %12)
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !1560
  %i.le = getelementptr inbounds nuw i8, ptr %18, i64 88
  %i.lf = load i8, ptr %i.le, align 4, !tbaa !284, !range !11, !noundef !12
  %i.lg = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !286
  %i.li = sext i32 %i.ld to i64                   ; 20 uses
  %i.lj = getelementptr inbounds i8, ptr %i.lh, i64 %i.li
  store i8 %i.lf, ptr %i.lj, align 1, !tbaa !9
  %i.lk = load float, ptr %18, align 4, !tbaa !287
  %i.ll = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !288
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.li
  store float %i.lk, ptr %i.ln, align 4, !tbaa !203
  %i.lo = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !289
  %i.lq = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !290
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.li
  store float %i.lp, ptr %i.ls, align 4, !tbaa !203
  %i.lt = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !291
  %i.lv = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !292
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %i.li
  store float %i.lu, ptr %i.lx, align 4, !tbaa !203
  %i.ly = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !293
  %i.ma = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !205
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %i.li
  store float %i.lz, ptr %i.mc, align 4, !tbaa !203
  %i.md = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.me = load float, ptr %i.md, align 4, !tbaa !294
  %i.mf = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !206
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.li
  store float %i.me, ptr %i.mh, align 4, !tbaa !203
  %i.mi = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !295
  %i.mk = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !207
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.ml, i64 %i.li
  store float %i.mj, ptr %i.mm, align 4, !tbaa !203
  %i.mn = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !293
  %i.mp = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !205
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.mq, i64 %i.li
  store float %i.mo, ptr %i.mr, align 4, !tbaa !203
  %i.ms = getelementptr inbounds nuw i8, ptr %18, i64 28
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !294
  %i.mu = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !206
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.mv, i64 %i.li
  store float %i.mt, ptr %i.mw, align 4, !tbaa !203
  %i.mx = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.my = load float, ptr %i.mx, align 4, !tbaa !295
  %i.mz = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !207
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.li
  store float %i.my, ptr %i.nb, align 4, !tbaa !203
  %i.nc = getelementptr inbounds nuw i8, ptr %18, i64 36
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !296
  %i.ne = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !211
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %i.li
  store float %i.nd, ptr %i.ng, align 4, !tbaa !203
  %i.nh = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !297
  %i.nj = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !212
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.li
  store float %i.ni, ptr %i.nl, align 4, !tbaa !203
  %i.nm = getelementptr inbounds nuw i8, ptr %18, i64 44
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !298
  %i.no = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !299
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.li
  store float %i.nn, ptr %i.nq, align 4, !tbaa !203
  %i.nr = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !300
  %i.nt = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !208
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.nu, i64 %i.li
  store float %i.ns, ptr %i.nv, align 4, !tbaa !203
  %i.nw = getelementptr inbounds nuw i8, ptr %18, i64 52
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !301
  %i.ny = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !209
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %i.li
  store float %i.nx, ptr %i.oa, align 4, !tbaa !203
  %i.ob = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !232
  %i.od = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !210
  %i.of = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.li
  store float %i.oc, ptr %i.of, align 4, !tbaa !203
  %i.og = getelementptr inbounds nuw i8, ptr %18, i64 60
  %i.oh = load float, ptr %i.og, align 4, !tbaa !300
  %i.oi = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !208
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %i.li
  store float %i.oh, ptr %i.ok, align 4, !tbaa !203
  %i.ol = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.om = load float, ptr %i.ol, align 4, !tbaa !301
  %i.on = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !209
  %i.op = getelementptr inbounds [4 x i8], ptr %i.oo, i64 %i.li
  store float %i.om, ptr %i.op, align 4, !tbaa !203
  %i.oq = getelementptr inbounds nuw i8, ptr %18, i64 68
  %i.or = load float, ptr %i.oq, align 4, !tbaa !232
  %i.os = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !210
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.ot, i64 %i.li
  store float %i.or, ptr %i.ou, align 4, !tbaa !203
  %i.ov = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.ow = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !198
  %i.oy = getelementptr inbounds [16 x i8], ptr %i.ox, i64 %i.li ; 2 uses
  %i.oz = load <4 x float>, ptr %i.ov, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.oz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.oz, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.oy, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.01054.0.copyload = load <2 x float>, ptr %i.gn, align 4 ; 13 uses
  %.sroa.121061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121061.0.copyload = load float, ptr %.sroa.121061.0..sroa_idx, align 4 ; 8 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !1560
  %i.pd = load ptr, ptr %i.pa, align 8, !tbaa !302, !noalias !1567
  %i.pe = sext i32 %i.pc to i64                   ; 2 uses
  %i.pf = getelementptr inbounds [16 x i8], ptr %i.pd, i64 %i.pe ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.pg = load <2 x float>, ptr %i.pf, align 16, !noalias !1567
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !74, !noalias !1567
  %i.ph = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !308, !noalias !1567
  %i.pj = getelementptr inbounds [16 x i8], ptr %i.pi, i64 %i.pe ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.pj, align 16, !noalias !1567 ; 2 uses
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %.sroa.05.0.copyload.i.i.i598 = load <2 x float>, ptr %i.ih, align 8, !noalias !1572
  %.sroa.26.0.copyload.i.i.i600 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1572
  %i.pk = fmul <2 x float> %.sroa.01054.0.copyload, %.sroa.05.0.copyload.i.i.i598 ; 2 uses
  %shift1208 = shufflevector <2 x float> %i.pk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1209 = fadd <2 x float> %i.pk, %shift1208
  %i.pl = extractelement <2 x float> %foldExtExtBinop1209, i64 0
  %i.pm = fmul float %.sroa.121061.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.pn = fadd float %i.pm, %i.pl                 ; 2 uses
  %i.po = fcmp oeq float %i.pn, 0.000000e+00
  br i1 %i.po, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %.sroa.2.0.copyload.i931.i.i1170 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !1567
  %.sroa.021.0.copyload.i.i.i586 = load <2 x float>, ptr %i.he, align 8, !noalias !1572 ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = load <2 x float>, ptr %i.if, align 4, !noalias !1572 ; 2 uses
  %i.pp = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !1572
  %i.pq = shufflevector <4 x float> %i.pp, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.pr = insertelement <2 x float> poison, float %.sroa.121061.0.copyload, i64 0
  %i.ps = shufflevector <2 x float> %i.pr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pt = fmul <2 x float> %i.ps, %i.pq
  %i.pu = shufflevector <2 x float> %.sroa.01054.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pv = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.pw = fmul <2 x float> %i.pu, %i.pv
  %i.px = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.py = fmul <2 x float> %.sroa.01054.0.copyload, %i.px
  %i.pz = fadd <2 x float> %i.pw, %i.py
  %i.qa = fadd <2 x float> %i.pt, %i.pz
  %i.qb = load i64, ptr %15, align 8, !tbaa !274, !noalias !1572
  %i.qc = and i64 %i.qb, 144115188075855871
  %i.qd = inttoptr i64 %i.qc to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !1572
  call void @_ZNK4pbrt8HairBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %8, ptr noundef nonnull align 4 dereferenceable(76) %i.qd, <2 x float> %i.qa, float %i.pn, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1170, i32 noundef 0, i32 noundef 3), !noalias !1572
  %i.qe = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.qf = load i8, ptr %i.qe, align 4, !tbaa !309, !range !11, !noalias !1572, !noundef !12
  %i.qg = trunc nuw i8 %i.qf to i1
  br i1 %i.qg, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.m
  %i.qh = load <4 x float>, ptr %8, align 16, !noalias !1572
  %.fr = freeze <4 x float> %i.qh                 ; 2 uses
  %i.qi = fcmp une <4 x float> %.fr, zeroinitializer
  %i.qj = bitcast <4 x i1> %i.qi to i4
  %i.qk = icmp eq i4 %i.qj, 0
  %i.ql = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.qm = load float, ptr %i.ql, align 4, !noalias !1572 ; 3 uses
  %i.qn = fcmp oeq float %i.qm, 0.000000e+00
  %or.cond.i605 = select i1 %i.qk, i1 true, i1 %i.qn
  br i1 %or.cond.i605, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.qo = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.qp = load float, ptr %i.qo, align 8, !tbaa !232, !noalias !1572 ; 3 uses
  %i.qq = fcmp oeq float %i.qp, 0.000000e+00
  br i1 %i.qq, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %bb.n

_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit: ; preds = %bb.m, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1572
  br label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread

bb.n:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  %i.qr = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.qr, align 16, !noalias !1572 ; 4 uses
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %.sroa.037.0.copyload.i.i = load <2 x float>, ptr %i.he, align 8, !noalias !1572 ; 3 uses
  %.sroa.238.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !tbaa !203, !noalias !1572 ; 2 uses
  %i.qs = fmul float %.sroa.041.0.vec.extract.i.i, %.sroa.238.0.copyload.i.i
  %.sroa.041.4.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %.sroa.027.0.copyload.i.i = load <2 x float>, ptr %i.if, align 4, !noalias !1572 ; 3 uses
  %.sroa.228.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !203, !noalias !1572 ; 2 uses
  %i.qt = fmul float %.sroa.041.4.vec.extract.i.i, %.sroa.228.0.copyload.i.i
  %i.qu = fadd float %i.qs, %i.qt
  %.sroa.011.0.copyload.i.i = load <2 x float>, ptr %i.ih, align 8, !noalias !1572 ; 3 uses
  %.sroa.212.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !203, !noalias !1572 ; 3 uses
  %i.qv = fmul float %i.qp, %.sroa.212.0.copyload.i.i
  %i.qw = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qx = fmul <2 x float> %i.qw, %.sroa.037.0.copyload.i.i
  %i.qy = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.qz = fmul <2 x float> %i.qy, %.sroa.027.0.copyload.i.i
  %i.ra = fadd <2 x float> %i.qx, %i.qz
  %i.rb = insertelement <2 x float> poison, float %i.qp, i64 0
  %i.rc = shufflevector <2 x float> %i.rb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rd = fmul <2 x float> %i.rc, %.sroa.011.0.copyload.i.i
  %i.re = fadd <2 x float> %i.ra, %i.rd           ; 6 uses
  %i.rf = fadd float %i.qu, %i.qv                 ; 8 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 16 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 36
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.21.0.copyload = load i8, ptr %.sroa.21.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1572
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.rg, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %i.rh = fmul float %.sroa.17.0.copyload, %i.rf  ; 2 uses
  %i.ri = extractelement <2 x float> %i.re, i64 1 ; 3 uses
  %i.rj = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.ri, float %i.rh)
  %i.rk = fneg float %i.rh
  %i.rl = call noundef float @llvm.fma.f32(float %.sroa.17.0.copyload, float %i.rf, float %i.rk)
  %i.rm = fadd float %i.rj, %i.rl
  %i.rn = extractelement <2 x float> %i.re, i64 0 ; 3 uses
  %i.ro = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.rn, float %i.rm)
  %i.rp = call noundef float @llvm.fabs.f32(float %i.ro)
  %i.rq = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rr = fmul <4 x float> %.fr, %i.rq
  %i.rs = insertelement <4 x float> poison, float %i.rp, i64 0
  %i.rt = shufflevector <4 x float> %i.rs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ru = fmul <4 x float> %i.rt, %i.rr
  %i.rv = insertelement <4 x float> poison, float %i.qm, i64 0
  %i.rw = shufflevector <4 x float> %i.rv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rx = fdiv <4 x float> %i.ru, %i.rw           ; 7 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0953.0.copyload = load <4 x float>, ptr %i.ry, align 8, !tbaa !74 ; 6 uses
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
  %i.sf = insertelement <2 x float> poison, float %i.rf, i64 0
  %i.sg = shufflevector <2 x float> %i.sf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sh = insertelement <2 x float> poison, float %.sroa.238.0.copyload.i.i, i64 0
  %i.si = insertelement <2 x float> %i.sh, float %.sroa.228.0.copyload.i.i, i64 1 ; 2 uses
  %i.sj = fmul <2 x float> %i.sg, %i.si
  %i.sk = shufflevector <2 x float> %.sroa.027.0.copyload.i.i, <2 x float> %.sroa.037.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.sl = fmul <2 x float> %i.re, %i.sk
  %i.sm = shufflevector <2 x float> %i.sl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sn = shufflevector <2 x float> %.sroa.037.0.copyload.i.i, <2 x float> %.sroa.027.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.so = fmul <2 x float> %i.re, %i.sn
  %i.sp = fadd <2 x float> %i.sm, %i.so
  %i.sq = fadd <2 x float> %i.sj, %i.sp
  %i.sr = fmul float %i.rf, %.sroa.212.0.copyload.i.i
  %i.ss = fmul <2 x float> %i.re, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1214 = shufflevector <2 x float> %i.ss, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1215 = fadd <2 x float> %i.ss, %shift1214
  %i.st = extractelement <2 x float> %foldExtExtBinop1215, i64 0
  %i.su = fadd float %i.sr, %i.st
  %i.sv = fmul <2 x float> %i.ps, %i.si
  %i.sw = fmul <2 x float> %.sroa.01054.0.copyload, %i.sn
  %i.sx = fmul <2 x float> %.sroa.01054.0.copyload, %i.sk
  %i.sy = shufflevector <2 x float> %i.sx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sz = fadd <2 x float> %i.sy, %i.sw
  %i.ta = fadd <2 x float> %i.sv, %i.sz
  %i.tb = load i64, ptr %15, align 8, !tbaa !274
  %i.tc = and i64 %i.tb, 144115188075855871
  %i.td = inttoptr i64 %i.tc to ptr
  %i.te = call noundef float @_ZNK4pbrt8HairBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(76) %i.td, <2 x float> %i.ta, float %i.sd, <2 x float> %i.sq, float %i.su, i32 noundef 0, i32 noundef 3)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, %bb.o
  %.0.i660.sink1187 = phi float [ %i.te, %bb.o ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640 ], [ %i.qm, %bb.n ]
  %i.tf = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.tg = insertelement <2 x float> poison, float %.0.i660.sink1187, i64 0
  %i.th = shufflevector <2 x float> %i.tg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ti = fdiv <2 x float> %i.tf, %i.th
  %i.tj = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.tk = fdiv <2 x float> %i.tj, %i.th
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.tm = load float, ptr %i.tl, align 8, !tbaa !1555 ; 2 uses
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
end_hunk_12
begin_hunk_13_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_12HairMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_IS2_EENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSJ_E_clESJ_:bb.a
  %i.jx = getelementptr inbounds nuw i8, ptr %16, i64 128
  store <2 x float> %.sroa.0259.0.copyload, ptr %i.jx, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %16, i64 136
  store float %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %16, i64 52
  %i.jz = load i64, ptr %i.gs, align 8
  store i64 %i.jz, ptr %i.jy, align 4
  %i.ka = getelementptr inbounds nuw i8, ptr %16, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ka, ptr noundef nonnull align 4 dereferenceable(12) %i.gn, i64 12, i1 false)
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !1551
  %i.kd = getelementptr inbounds nuw i8, ptr %16, i64 24
  store float %i.kc, ptr %i.kd, align 8, !tbaa !281
  %i.ke = getelementptr inbounds nuw i8, ptr %16, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ke, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %16, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kf, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %17, align 16, !tbaa !203
  %i.kg = getelementptr inbounds nuw i8, ptr %17, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.kg, align 16, !tbaa !203
  %i.kh = getelementptr inbounds nuw i8, ptr %17, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.kh, align 16, !tbaa !203
  %i.ki = getelementptr inbounds nuw i8, ptr %17, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.ki, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.ka, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.he, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.if, align 4 ; 2 uses
  %i.kj = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.kk = shufflevector <4 x float> %i.kj, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.kl = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.km = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.kn = fmul <2 x float> %i.kl, %i.km
  %i.ko = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.kp = fmul <2 x float> %.sroa.0162.0.copyload, %i.ko
  %i.kq = fadd <2 x float> %i.kn, %i.kp
  %i.kr = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.ks = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kt = fmul <2 x float> %i.ks, %i.kk
  %i.ku = fadd <2 x float> %i.kt, %i.kq
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.ih, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.kv = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1205 = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1206 = fadd <2 x float> %i.kv, %shift1205
  %i.kw = extractelement <2 x float> %foldExtExtBinop1206, i64 0
  %i.kx = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.ky = fadd float %i.kx, %i.kw
  %i.kz = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %15, <2 x float> %i.ku, float %i.ky, ptr nonnull %i.e, i64 16, ptr nonnull %17, i64 16) ; 2 uses
  %i.la = extractvalue { <2 x float>, <2 x float> } %i.kz, 0
  %i.lb = extractvalue { <2 x float>, <2 x float> } %i.kz, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %18, ptr noundef nonnull align 8 dereferenceable(248) %16, <2 x float> %i.la, <2 x float> %i.lb, ptr noundef nonnull align 4 dereferenceable(32) %12)
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !1560
  %i.le = getelementptr inbounds nuw i8, ptr %18, i64 88
  %i.lf = load i8, ptr %i.le, align 4, !tbaa !284, !range !11, !noundef !12
  %i.lg = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !286
  %i.li = sext i32 %i.ld to i64                   ; 20 uses
  %i.lj = getelementptr inbounds i8, ptr %i.lh, i64 %i.li
  store i8 %i.lf, ptr %i.lj, align 1, !tbaa !9
  %i.lk = load float, ptr %18, align 4, !tbaa !287
  %i.ll = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !288
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.li
  store float %i.lk, ptr %i.ln, align 4, !tbaa !203
  %i.lo = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !289
  %i.lq = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !290
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.li
  store float %i.lp, ptr %i.ls, align 4, !tbaa !203
  %i.lt = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !291
  %i.lv = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !292
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %i.li
  store float %i.lu, ptr %i.lx, align 4, !tbaa !203
  %i.ly = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !293
  %i.ma = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !205
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %i.li
  store float %i.lz, ptr %i.mc, align 4, !tbaa !203
  %i.md = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.me = load float, ptr %i.md, align 4, !tbaa !294
  %i.mf = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !206
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.li
  store float %i.me, ptr %i.mh, align 4, !tbaa !203
  %i.mi = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !295
  %i.mk = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !207
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.ml, i64 %i.li
  store float %i.mj, ptr %i.mm, align 4, !tbaa !203
  %i.mn = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !293
  %i.mp = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !205
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.mq, i64 %i.li
  store float %i.mo, ptr %i.mr, align 4, !tbaa !203
  %i.ms = getelementptr inbounds nuw i8, ptr %18, i64 28
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !294
  %i.mu = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !206
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.mv, i64 %i.li
  store float %i.mt, ptr %i.mw, align 4, !tbaa !203
  %i.mx = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.my = load float, ptr %i.mx, align 4, !tbaa !295
  %i.mz = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !207
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.li
  store float %i.my, ptr %i.nb, align 4, !tbaa !203
  %i.nc = getelementptr inbounds nuw i8, ptr %18, i64 36
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !296
  %i.ne = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !211
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %i.li
  store float %i.nd, ptr %i.ng, align 4, !tbaa !203
  %i.nh = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !297
  %i.nj = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !212
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.li
  store float %i.ni, ptr %i.nl, align 4, !tbaa !203
  %i.nm = getelementptr inbounds nuw i8, ptr %18, i64 44
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !298
  %i.no = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !299
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.li
  store float %i.nn, ptr %i.nq, align 4, !tbaa !203
  %i.nr = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !300
  %i.nt = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !208
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.nu, i64 %i.li
  store float %i.ns, ptr %i.nv, align 4, !tbaa !203
  %i.nw = getelementptr inbounds nuw i8, ptr %18, i64 52
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !301
  %i.ny = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !209
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %i.li
  store float %i.nx, ptr %i.oa, align 4, !tbaa !203
  %i.ob = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !232
  %i.od = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !210
  %i.of = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.li
  store float %i.oc, ptr %i.of, align 4, !tbaa !203
  %i.og = getelementptr inbounds nuw i8, ptr %18, i64 60
  %i.oh = load float, ptr %i.og, align 4, !tbaa !300
  %i.oi = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !208
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %i.li
  store float %i.oh, ptr %i.ok, align 4, !tbaa !203
  %i.ol = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.om = load float, ptr %i.ol, align 4, !tbaa !301
  %i.on = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !209
  %i.op = getelementptr inbounds [4 x i8], ptr %i.oo, i64 %i.li
  store float %i.om, ptr %i.op, align 4, !tbaa !203
  %i.oq = getelementptr inbounds nuw i8, ptr %18, i64 68
  %i.or = load float, ptr %i.oq, align 4, !tbaa !232
  %i.os = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !210
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.ot, i64 %i.li
  store float %i.or, ptr %i.ou, align 4, !tbaa !203
  %i.ov = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.ow = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !198
  %i.oy = getelementptr inbounds [16 x i8], ptr %i.ox, i64 %i.li ; 2 uses
  %i.oz = load <4 x float>, ptr %i.ov, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.oz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.oz, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.oy, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.01054.0.copyload = load <2 x float>, ptr %i.gn, align 4 ; 13 uses
  %.sroa.121061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121061.0.copyload = load float, ptr %.sroa.121061.0..sroa_idx, align 4 ; 8 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !1560
  %i.pd = load ptr, ptr %i.pa, align 8, !tbaa !302, !noalias !1621
  %i.pe = sext i32 %i.pc to i64                   ; 2 uses
  %i.pf = getelementptr inbounds [16 x i8], ptr %i.pd, i64 %i.pe ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.pg = load <2 x float>, ptr %i.pf, align 16, !noalias !1621
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !74, !noalias !1621
  %i.ph = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !308, !noalias !1621
  %i.pj = getelementptr inbounds [16 x i8], ptr %i.pi, i64 %i.pe ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.pj, align 16, !noalias !1621 ; 2 uses
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %.sroa.05.0.copyload.i.i.i598 = load <2 x float>, ptr %i.ih, align 8, !noalias !1626
  %.sroa.26.0.copyload.i.i.i600 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1626
  %i.pk = fmul <2 x float> %.sroa.01054.0.copyload, %.sroa.05.0.copyload.i.i.i598 ; 2 uses
  %shift1208 = shufflevector <2 x float> %i.pk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1209 = fadd <2 x float> %i.pk, %shift1208
  %i.pl = extractelement <2 x float> %foldExtExtBinop1209, i64 0
  %i.pm = fmul float %.sroa.121061.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.pn = fadd float %i.pm, %i.pl                 ; 2 uses
  %i.po = fcmp oeq float %i.pn, 0.000000e+00
  br i1 %i.po, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %.sroa.2.0.copyload.i931.i.i1170 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !1621
  %.sroa.021.0.copyload.i.i.i586 = load <2 x float>, ptr %i.he, align 8, !noalias !1626 ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = load <2 x float>, ptr %i.if, align 4, !noalias !1626 ; 2 uses
  %i.pp = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !1626
  %i.pq = shufflevector <4 x float> %i.pp, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.pr = insertelement <2 x float> poison, float %.sroa.121061.0.copyload, i64 0
  %i.ps = shufflevector <2 x float> %i.pr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pt = fmul <2 x float> %i.ps, %i.pq
  %i.pu = shufflevector <2 x float> %.sroa.01054.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pv = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.pw = fmul <2 x float> %i.pu, %i.pv
  %i.px = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.py = fmul <2 x float> %.sroa.01054.0.copyload, %i.px
  %i.pz = fadd <2 x float> %i.pw, %i.py
  %i.qa = fadd <2 x float> %i.pt, %i.pz
  %i.qb = load i64, ptr %15, align 8, !tbaa !274, !noalias !1626
  %i.qc = and i64 %i.qb, 144115188075855871
  %i.qd = inttoptr i64 %i.qc to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !1626
  call void @_ZNK4pbrt8HairBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %8, ptr noundef nonnull align 4 dereferenceable(76) %i.qd, <2 x float> %i.qa, float %i.pn, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1170, i32 noundef 0, i32 noundef 3), !noalias !1626
  %i.qe = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.qf = load i8, ptr %i.qe, align 4, !tbaa !309, !range !11, !noalias !1626, !noundef !12
  %i.qg = trunc nuw i8 %i.qf to i1
  br i1 %i.qg, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.m
  %i.qh = load <4 x float>, ptr %8, align 16, !noalias !1626
  %.fr = freeze <4 x float> %i.qh                 ; 2 uses
  %i.qi = fcmp une <4 x float> %.fr, zeroinitializer
  %i.qj = bitcast <4 x i1> %i.qi to i4
  %i.qk = icmp eq i4 %i.qj, 0
  %i.ql = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.qm = load float, ptr %i.ql, align 4, !noalias !1626 ; 3 uses
  %i.qn = fcmp oeq float %i.qm, 0.000000e+00
  %or.cond.i605 = select i1 %i.qk, i1 true, i1 %i.qn
  br i1 %or.cond.i605, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.qo = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.qp = load float, ptr %i.qo, align 8, !tbaa !232, !noalias !1626 ; 3 uses
  %i.qq = fcmp oeq float %i.qp, 0.000000e+00
  br i1 %i.qq, label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %bb.n

_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit: ; preds = %bb.m, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1626
  br label %_ZNK4pbrt4BSDF8Sample_fINS_8HairBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread

bb.n:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  %i.qr = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.qr, align 16, !noalias !1626 ; 4 uses
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %.sroa.037.0.copyload.i.i = load <2 x float>, ptr %i.he, align 8, !noalias !1626 ; 3 uses
  %.sroa.238.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !tbaa !203, !noalias !1626 ; 2 uses
  %i.qs = fmul float %.sroa.041.0.vec.extract.i.i, %.sroa.238.0.copyload.i.i
  %.sroa.041.4.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %.sroa.027.0.copyload.i.i = load <2 x float>, ptr %i.if, align 4, !noalias !1626 ; 3 uses
  %.sroa.228.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !203, !noalias !1626 ; 2 uses
  %i.qt = fmul float %.sroa.041.4.vec.extract.i.i, %.sroa.228.0.copyload.i.i
  %i.qu = fadd float %i.qs, %i.qt
  %.sroa.011.0.copyload.i.i = load <2 x float>, ptr %i.ih, align 8, !noalias !1626 ; 3 uses
  %.sroa.212.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !203, !noalias !1626 ; 3 uses
  %i.qv = fmul float %i.qp, %.sroa.212.0.copyload.i.i
  %i.qw = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qx = fmul <2 x float> %i.qw, %.sroa.037.0.copyload.i.i
  %i.qy = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.qz = fmul <2 x float> %i.qy, %.sroa.027.0.copyload.i.i
  %i.ra = fadd <2 x float> %i.qx, %i.qz
  %i.rb = insertelement <2 x float> poison, float %i.qp, i64 0
  %i.rc = shufflevector <2 x float> %i.rb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rd = fmul <2 x float> %i.rc, %.sroa.011.0.copyload.i.i
  %i.re = fadd <2 x float> %i.ra, %i.rd           ; 6 uses
  %i.rf = fadd float %i.qu, %i.qv                 ; 8 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 16 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 36
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.21.0.copyload = load i8, ptr %.sroa.21.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1626
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.rg, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %i.rh = fmul float %.sroa.17.0.copyload, %i.rf  ; 2 uses
  %i.ri = extractelement <2 x float> %i.re, i64 1 ; 3 uses
  %i.rj = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.ri, float %i.rh)
  %i.rk = fneg float %i.rh
  %i.rl = call noundef float @llvm.fma.f32(float %.sroa.17.0.copyload, float %i.rf, float %i.rk)
  %i.rm = fadd float %i.rj, %i.rl
  %i.rn = extractelement <2 x float> %i.re, i64 0 ; 3 uses
  %i.ro = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.rn, float %i.rm)
  %i.rp = call noundef float @llvm.fabs.f32(float %i.ro)
  %i.rq = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rr = fmul <4 x float> %.fr, %i.rq
  %i.rs = insertelement <4 x float> poison, float %i.rp, i64 0
  %i.rt = shufflevector <4 x float> %i.rs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ru = fmul <4 x float> %i.rt, %i.rr
  %i.rv = insertelement <4 x float> poison, float %i.qm, i64 0
  %i.rw = shufflevector <4 x float> %i.rv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rx = fdiv <4 x float> %i.ru, %i.rw           ; 7 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0953.0.copyload = load <4 x float>, ptr %i.ry, align 8, !tbaa !74 ; 6 uses
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
  %i.sf = insertelement <2 x float> poison, float %i.rf, i64 0
  %i.sg = shufflevector <2 x float> %i.sf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sh = insertelement <2 x float> poison, float %.sroa.238.0.copyload.i.i, i64 0
  %i.si = insertelement <2 x float> %i.sh, float %.sroa.228.0.copyload.i.i, i64 1 ; 2 uses
  %i.sj = fmul <2 x float> %i.sg, %i.si
  %i.sk = shufflevector <2 x float> %.sroa.027.0.copyload.i.i, <2 x float> %.sroa.037.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.sl = fmul <2 x float> %i.re, %i.sk
  %i.sm = shufflevector <2 x float> %i.sl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sn = shufflevector <2 x float> %.sroa.037.0.copyload.i.i, <2 x float> %.sroa.027.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.so = fmul <2 x float> %i.re, %i.sn
  %i.sp = fadd <2 x float> %i.sm, %i.so
  %i.sq = fadd <2 x float> %i.sj, %i.sp
  %i.sr = fmul float %i.rf, %.sroa.212.0.copyload.i.i
  %i.ss = fmul <2 x float> %i.re, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1214 = shufflevector <2 x float> %i.ss, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1215 = fadd <2 x float> %i.ss, %shift1214
  %i.st = extractelement <2 x float> %foldExtExtBinop1215, i64 0
  %i.su = fadd float %i.sr, %i.st
  %i.sv = fmul <2 x float> %i.ps, %i.si
  %i.sw = fmul <2 x float> %.sroa.01054.0.copyload, %i.sn
  %i.sx = fmul <2 x float> %.sroa.01054.0.copyload, %i.sk
  %i.sy = shufflevector <2 x float> %i.sx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sz = fadd <2 x float> %i.sy, %i.sw
  %i.ta = fadd <2 x float> %i.sv, %i.sz
  %i.tb = load i64, ptr %15, align 8, !tbaa !274
  %i.tc = and i64 %i.tb, 144115188075855871
  %i.td = inttoptr i64 %i.tc to ptr
  %i.te = call noundef float @_ZNK4pbrt8HairBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(76) %i.td, <2 x float> %i.ta, float %i.sd, <2 x float> %i.sq, float %i.su, i32 noundef 0, i32 noundef 3)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, %bb.o
  %.0.i660.sink1187 = phi float [ %i.te, %bb.o ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640 ], [ %i.qm, %bb.n ]
  %i.tf = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.tg = insertelement <2 x float> poison, float %.0.i660.sink1187, i64 0
  %i.th = shufflevector <2 x float> %i.tg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ti = fdiv <2 x float> %i.tf, %i.th
  %i.tj = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.tk = fdiv <2 x float> %i.tj, %i.th
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.tm = load float, ptr %i.tl, align 8, !tbaa !1555 ; 2 uses
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
end_hunk_13
begin_hunk_14_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_16MeasuredMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_IS2_EENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSL_E_clESL_:bb.a
  %i.pd = getelementptr inbounds nuw i8, ptr %21, i64 128
  store <2 x float> %.sroa.0259.0, ptr %i.pd, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %21, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %21, i64 52
  %i.pf = load i64, ptr %i.mc, align 8
  store i64 %i.pf, ptr %i.pe, align 4
  %i.pg = getelementptr inbounds nuw i8, ptr %21, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pg, ptr noundef nonnull align 4 dereferenceable(12) %i.lz, i64 12, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !1679
  %i.pj = getelementptr inbounds nuw i8, ptr %21, i64 24
  store float %i.pi, ptr %i.pj, align 8, !tbaa !281
  %i.pk = getelementptr inbounds nuw i8, ptr %21, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pk, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %i.pl = getelementptr inbounds nuw i8, ptr %21, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pl, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %22, align 16, !tbaa !203
  %i.pm = getelementptr inbounds nuw i8, ptr %22, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.pm, align 16, !tbaa !203
  %i.pn = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.pn, align 16, !tbaa !203
  %i.po = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.po, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.pg, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.mj, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.nm, align 4 ; 2 uses
  %i.pp = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.pq = shufflevector <4 x float> %i.pp, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.pr = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ps = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.pt = fmul <2 x float> %i.pr, %i.ps
  %i.pu = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.pv = fmul <2 x float> %.sroa.0162.0.copyload, %i.pu
  %i.pw = fadd <2 x float> %i.pt, %i.pv
  %i.px = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.py = shufflevector <2 x float> %i.px, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pz = fmul <2 x float> %i.py, %i.pq
  %i.qa = fadd <2 x float> %i.pz, %i.pw
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.nn, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.qb = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1245 = shufflevector <2 x float> %i.qb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1246 = fadd <2 x float> %i.qb, %shift1245
  %i.qc = extractelement <2 x float> %foldExtExtBinop1246, i64 0
  %i.qd = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.qe = fadd float %i.qd, %i.qc
  %i.qf = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qa, float %i.qe, ptr nonnull %i.e, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.qg = extractvalue { <2 x float>, <2 x float> } %i.qf, 0
  %i.qh = extractvalue { <2 x float>, <2 x float> } %i.qf, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.qg, <2 x float> %i.qh, ptr noundef nonnull align 4 dereferenceable(32) %18)
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !1688
  %i.qk = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.ql = load i8, ptr %i.qk, align 4, !tbaa !284, !range !11, !noundef !12
  %i.qm = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !286
  %i.qo = sext i32 %i.qj to i64                   ; 20 uses
  %i.qp = getelementptr inbounds i8, ptr %i.qn, i64 %i.qo
  store i8 %i.ql, ptr %i.qp, align 1, !tbaa !9
  %i.qq = load float, ptr %23, align 4, !tbaa !287
  %i.qr = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !288
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.qs, i64 %i.qo
  store float %i.qq, ptr %i.qt, align 4, !tbaa !203
  %i.qu = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !289
  %i.qw = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !290
  %i.qy = getelementptr inbounds [4 x i8], ptr %i.qx, i64 %i.qo
  store float %i.qv, ptr %i.qy, align 4, !tbaa !203
  %i.qz = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !291
  %i.rb = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !292
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.qo
  store float %i.ra, ptr %i.rd, align 4, !tbaa !203
  %i.re = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.rf = load float, ptr %i.re, align 4, !tbaa !293
  %i.rg = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !205
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %i.qo
  store float %i.rf, ptr %i.ri, align 4, !tbaa !203
  %i.rj = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !294
  %i.rl = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !206
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.rm, i64 %i.qo
  store float %i.rk, ptr %i.rn, align 4, !tbaa !203
  %i.ro = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !295
  %i.rq = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !207
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %i.qo
  store float %i.rp, ptr %i.rs, align 4, !tbaa !203
  %i.rt = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !293
  %i.rv = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !205
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.rw, i64 %i.qo
  store float %i.ru, ptr %i.rx, align 4, !tbaa !203
  %i.ry = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !294
  %i.sa = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !206
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.qo
  store float %i.rz, ptr %i.sc, align 4, !tbaa !203
  %i.sd = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.se = load float, ptr %i.sd, align 4, !tbaa !295
  %i.sf = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !207
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.qo
  store float %i.se, ptr %i.sh, align 4, !tbaa !203
  %i.si = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.sj = load float, ptr %i.si, align 4, !tbaa !296
  %i.sk = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !211
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.qo
  store float %i.sj, ptr %i.sm, align 4, !tbaa !203
  %i.sn = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.so = load float, ptr %i.sn, align 4, !tbaa !297
  %i.sp = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !212
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %i.qo
  store float %i.so, ptr %i.sr, align 4, !tbaa !203
  %i.ss = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.st = load float, ptr %i.ss, align 4, !tbaa !298
  %i.su = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !299
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.qo
  store float %i.st, ptr %i.sw, align 4, !tbaa !203
  %i.sx = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !300
  %i.sz = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !208
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.qo
  store float %i.sy, ptr %i.tb, align 4, !tbaa !203
  %i.tc = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.td = load float, ptr %i.tc, align 4, !tbaa !301
  %i.te = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !209
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.qo
  store float %i.td, ptr %i.tg, align 4, !tbaa !203
  %i.th = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.ti = load float, ptr %i.th, align 4, !tbaa !232
  %i.tj = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !210
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.qo
  store float %i.ti, ptr %i.tl, align 4, !tbaa !203
  %i.tm = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !300
  %i.to = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !208
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.qo
  store float %i.tn, ptr %i.tq, align 4, !tbaa !203
  %i.tr = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !301
  %i.tt = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !209
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.qo
  store float %i.ts, ptr %i.tv, align 4, !tbaa !203
  %i.tw = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !232
  %i.ty = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !210
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.qo
  store float %i.tx, ptr %i.ua, align 4, !tbaa !203
  %i.ub = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.uc = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !198
  %i.ue = getelementptr inbounds [16 x i8], ptr %i.ud, i64 %i.qo ; 2 uses
  %i.uf = load <4 x float>, ptr %i.ub, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.uf, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.uf, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.ue, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.01054.0.copyload = load <2 x float>, ptr %i.lz, align 4 ; 13 uses
  %.sroa.121061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121061.0.copyload = load float, ptr %.sroa.121061.0..sroa_idx, align 4 ; 8 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !1688
  %i.uj = load ptr, ptr %i.ug, align 8, !tbaa !302, !noalias !1710
  %i.uk = sext i32 %i.ui to i64                   ; 2 uses
  %i.ul = getelementptr inbounds [16 x i8], ptr %i.uj, i64 %i.uk ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.um = load <2 x float>, ptr %i.ul, align 16, !noalias !1710
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !74, !noalias !1710
  %i.un = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !308, !noalias !1710
  %i.up = getelementptr inbounds [16 x i8], ptr %i.uo, i64 %i.uk ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.up, align 16, !noalias !1710 ; 2 uses
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %.sroa.05.0.copyload.i.i.i598 = load <2 x float>, ptr %i.nn, align 8, !noalias !1715
  %.sroa.26.0.copyload.i.i.i600 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1715
  %i.uq = fmul <2 x float> %.sroa.01054.0.copyload, %.sroa.05.0.copyload.i.i.i598 ; 2 uses
  %shift1248 = shufflevector <2 x float> %i.uq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1249 = fadd <2 x float> %i.uq, %shift1248
  %i.ur = extractelement <2 x float> %foldExtExtBinop1249, i64 0
  %i.us = fmul float %.sroa.121061.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.ut = fadd float %i.us, %i.ur                 ; 2 uses
  %i.uu = fcmp oeq float %i.ut, 0.000000e+00
  br i1 %i.uu, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %.sroa.2.0.copyload.i931.i.i1203 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !1710
  %.sroa.021.0.copyload.i.i.i586 = load <2 x float>, ptr %i.mj, align 8, !noalias !1715 ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = load <2 x float>, ptr %i.nm, align 4, !noalias !1715 ; 2 uses
  %i.uv = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !1715
  %i.uw = shufflevector <4 x float> %i.uv, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ux = insertelement <2 x float> poison, float %.sroa.121061.0.copyload, i64 0
  %i.uy = shufflevector <2 x float> %i.ux, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uz = fmul <2 x float> %i.uy, %i.uw
  %i.va = shufflevector <2 x float> %.sroa.01054.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vb = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.vc = fmul <2 x float> %i.va, %i.vb
  %i.vd = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.ve = fmul <2 x float> %.sroa.01054.0.copyload, %i.vd
  %i.vf = fadd <2 x float> %i.vc, %i.ve
  %i.vg = fadd <2 x float> %i.uz, %i.vf
  %i.vh = load i64, ptr %20, align 8, !tbaa !274, !noalias !1715
  %i.vi = and i64 %i.vh, 144115188075855871
  %i.vj = inttoptr i64 %i.vi to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !1715
  call void @_ZNK4pbrt12MeasuredBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %8, ptr noundef nonnull align 8 dereferenceable(40) %i.vj, <2 x float> %i.vg, float %i.ut, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1203, i32 noundef 0, i32 noundef 3), !noalias !1715
  %i.vk = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.vl = load i8, ptr %i.vk, align 4, !tbaa !309, !range !11, !noalias !1715, !noundef !12
  %i.vm = trunc nuw i8 %i.vl to i1
  br i1 %i.vm, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.q
  %i.vn = load <4 x float>, ptr %8, align 16, !noalias !1715
  %.fr = freeze <4 x float> %i.vn                 ; 2 uses
  %i.vo = fcmp une <4 x float> %.fr, zeroinitializer
  %i.vp = bitcast <4 x i1> %i.vo to i4
  %i.vq = icmp eq i4 %i.vp, 0
  %i.vr = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.vs = load float, ptr %i.vr, align 4, !noalias !1715 ; 3 uses
  %i.vt = fcmp oeq float %i.vs, 0.000000e+00
  %or.cond.i605 = select i1 %i.vq, i1 true, i1 %i.vt
  br i1 %or.cond.i605, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.vu = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.vv = load float, ptr %i.vu, align 8, !tbaa !232, !noalias !1715 ; 3 uses
  %i.vw = fcmp oeq float %i.vv, 0.000000e+00
  br i1 %i.vw, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %bb.r

_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit: ; preds = %bb.q, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1715
  br label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread

bb.r:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  %i.vx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.vx, align 16, !noalias !1715 ; 4 uses
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %.sroa.037.0.copyload.i.i = load <2 x float>, ptr %i.mj, align 8, !noalias !1715 ; 3 uses
  %.sroa.238.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !tbaa !203, !noalias !1715 ; 2 uses
  %i.vy = fmul float %.sroa.041.0.vec.extract.i.i, %.sroa.238.0.copyload.i.i
  %.sroa.041.4.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %.sroa.027.0.copyload.i.i = load <2 x float>, ptr %i.nm, align 4, !noalias !1715 ; 3 uses
  %.sroa.228.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !203, !noalias !1715 ; 2 uses
  %i.vz = fmul float %.sroa.041.4.vec.extract.i.i, %.sroa.228.0.copyload.i.i
  %i.wa = fadd float %i.vy, %i.vz
  %.sroa.011.0.copyload.i.i = load <2 x float>, ptr %i.nn, align 8, !noalias !1715 ; 3 uses
  %.sroa.212.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !203, !noalias !1715 ; 3 uses
  %i.wb = fmul float %i.vv, %.sroa.212.0.copyload.i.i
  %i.wc = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wd = fmul <2 x float> %i.wc, %.sroa.037.0.copyload.i.i
  %i.we = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wf = fmul <2 x float> %i.we, %.sroa.027.0.copyload.i.i
  %i.wg = fadd <2 x float> %i.wd, %i.wf
  %i.wh = insertelement <2 x float> poison, float %i.vv, i64 0
  %i.wi = shufflevector <2 x float> %i.wh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wj = fmul <2 x float> %i.wi, %.sroa.011.0.copyload.i.i
  %i.wk = fadd <2 x float> %i.wg, %i.wj           ; 6 uses
  %i.wl = fadd float %i.wa, %i.wb                 ; 8 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 16 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 36
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.21.0.copyload = load i8, ptr %.sroa.21.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1715
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.wm, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %i.wn = fmul float %.sroa.17.0, %i.wl           ; 2 uses
  %i.wo = extractelement <2 x float> %i.wk, i64 1 ; 3 uses
  %i.wp = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.wo, float %i.wn)
  %i.wq = fneg float %i.wn
  %i.wr = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.wl, float %i.wq)
  %i.ws = fadd float %i.wp, %i.wr
  %i.wt = extractelement <2 x float> %i.wk, i64 0 ; 3 uses
  %i.wu = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.wt, float %i.ws)
  %i.wv = call noundef float @llvm.fabs.f32(float %i.wu)
  %i.ww = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.wx = fmul <4 x float> %.fr, %i.ww
  %i.wy = insertelement <4 x float> poison, float %i.wv, i64 0
  %i.wz = shufflevector <4 x float> %i.wy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xa = fmul <4 x float> %i.wz, %i.wx
  %i.xb = insertelement <4 x float> poison, float %i.vs, i64 0
  %i.xc = shufflevector <4 x float> %i.xb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xd = fdiv <4 x float> %i.xa, %i.xc           ; 7 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0953.0.copyload = load <4 x float>, ptr %i.xe, align 8, !tbaa !74 ; 6 uses
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
  %i.xl = insertelement <2 x float> poison, float %i.wl, i64 0
  %i.xm = shufflevector <2 x float> %i.xl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xn = insertelement <2 x float> poison, float %.sroa.238.0.copyload.i.i, i64 0
  %i.xo = insertelement <2 x float> %i.xn, float %.sroa.228.0.copyload.i.i, i64 1 ; 2 uses
  %i.xp = fmul <2 x float> %i.xm, %i.xo
  %i.xq = shufflevector <2 x float> %.sroa.027.0.copyload.i.i, <2 x float> %.sroa.037.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xr = fmul <2 x float> %i.wk, %i.xq
  %i.xs = shufflevector <2 x float> %i.xr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xt = shufflevector <2 x float> %.sroa.037.0.copyload.i.i, <2 x float> %.sroa.027.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xu = fmul <2 x float> %i.wk, %i.xt
  %i.xv = fadd <2 x float> %i.xs, %i.xu
  %i.xw = fadd <2 x float> %i.xp, %i.xv
  %i.xx = fmul float %i.wl, %.sroa.212.0.copyload.i.i
  %i.xy = fmul <2 x float> %i.wk, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1254 = shufflevector <2 x float> %i.xy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1255 = fadd <2 x float> %i.xy, %shift1254
  %i.xz = extractelement <2 x float> %foldExtExtBinop1255, i64 0
  %i.ya = fadd float %i.xx, %i.xz
  %i.yb = fmul <2 x float> %i.uy, %i.xo
  %i.yc = fmul <2 x float> %.sroa.01054.0.copyload, %i.xt
  %i.yd = fmul <2 x float> %.sroa.01054.0.copyload, %i.xq
  %i.ye = shufflevector <2 x float> %i.yd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yf = fadd <2 x float> %i.ye, %i.yc
  %i.yg = fadd <2 x float> %i.yb, %i.yf
  %i.yh = load i64, ptr %20, align 8, !tbaa !274
  %i.yi = and i64 %i.yh, 144115188075855871
  %i.yj = inttoptr i64 %i.yi to ptr
  %i.yk = call noundef float @_ZNK4pbrt12MeasuredBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.yj, <2 x float> %i.yg, float %i.xj, <2 x float> %i.xw, float %i.ya, i32 noundef 0, i32 noundef 3)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, %bb.s
  %.0.i660.sink1227 = phi float [ %i.yk, %bb.s ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640 ], [ %i.vs, %bb.r ]
  %i.yl = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ym = insertelement <2 x float> poison, float %.0.i660.sink1227, i64 0
  %i.yn = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yo = fdiv <2 x float> %i.yl, %i.yn
  %i.yp = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.yq = fdiv <2 x float> %i.yp, %i.yn
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ys = load float, ptr %i.yr, align 8, !tbaa !1683 ; 2 uses
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
end_hunk_14
begin_hunk_15_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_16MeasuredMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_IS2_EENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSL_E_clESL_:bb.a
  %i.pd = getelementptr inbounds nuw i8, ptr %21, i64 128
  store <2 x float> %.sroa.0259.0, ptr %i.pd, align 8
  %.sroa.17.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %21, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx274, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %21, i64 52
  %i.pf = load i64, ptr %i.mc, align 8
  store i64 %i.pf, ptr %i.pe, align 4
  %i.pg = getelementptr inbounds nuw i8, ptr %21, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pg, ptr noundef nonnull align 4 dereferenceable(12) %i.lz, i64 12, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !1679
  %i.pj = getelementptr inbounds nuw i8, ptr %21, i64 24
  store float %i.pi, ptr %i.pj, align 8, !tbaa !281
  %i.pk = getelementptr inbounds nuw i8, ptr %21, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pk, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %i.pl = getelementptr inbounds nuw i8, ptr %21, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pl, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %22, align 16, !tbaa !203
  %i.pm = getelementptr inbounds nuw i8, ptr %22, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.pm, align 16, !tbaa !203
  %i.pn = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.pn, align 16, !tbaa !203
  %i.po = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.po, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.pg, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.mj, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.nm, align 4 ; 2 uses
  %i.pp = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.pq = shufflevector <4 x float> %i.pp, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.pr = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ps = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.pt = fmul <2 x float> %i.pr, %i.ps
  %i.pu = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.pv = fmul <2 x float> %.sroa.0162.0.copyload, %i.pu
  %i.pw = fadd <2 x float> %i.pt, %i.pv
  %i.px = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.py = shufflevector <2 x float> %i.px, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pz = fmul <2 x float> %i.py, %i.pq
  %i.qa = fadd <2 x float> %i.pz, %i.pw
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.nn, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.qb = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1245 = shufflevector <2 x float> %i.qb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1246 = fadd <2 x float> %i.qb, %shift1245
  %i.qc = extractelement <2 x float> %foldExtExtBinop1246, i64 0
  %i.qd = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.qe = fadd float %i.qd, %i.qc
  %i.qf = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qa, float %i.qe, ptr nonnull %i.e, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.qg = extractvalue { <2 x float>, <2 x float> } %i.qf, 0
  %i.qh = extractvalue { <2 x float>, <2 x float> } %i.qf, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.qg, <2 x float> %i.qh, ptr noundef nonnull align 4 dereferenceable(32) %18)
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !1688
  %i.qk = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.ql = load i8, ptr %i.qk, align 4, !tbaa !284, !range !11, !noundef !12
  %i.qm = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !286
  %i.qo = sext i32 %i.qj to i64                   ; 20 uses
  %i.qp = getelementptr inbounds i8, ptr %i.qn, i64 %i.qo
  store i8 %i.ql, ptr %i.qp, align 1, !tbaa !9
  %i.qq = load float, ptr %23, align 4, !tbaa !287
  %i.qr = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !288
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.qs, i64 %i.qo
  store float %i.qq, ptr %i.qt, align 4, !tbaa !203
  %i.qu = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !289
  %i.qw = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !290
  %i.qy = getelementptr inbounds [4 x i8], ptr %i.qx, i64 %i.qo
  store float %i.qv, ptr %i.qy, align 4, !tbaa !203
  %i.qz = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !291
  %i.rb = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !292
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.qo
  store float %i.ra, ptr %i.rd, align 4, !tbaa !203
  %i.re = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.rf = load float, ptr %i.re, align 4, !tbaa !293
  %i.rg = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !205
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %i.qo
  store float %i.rf, ptr %i.ri, align 4, !tbaa !203
  %i.rj = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !294
  %i.rl = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !206
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.rm, i64 %i.qo
  store float %i.rk, ptr %i.rn, align 4, !tbaa !203
  %i.ro = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !295
  %i.rq = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !207
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %i.qo
  store float %i.rp, ptr %i.rs, align 4, !tbaa !203
  %i.rt = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !293
  %i.rv = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !205
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.rw, i64 %i.qo
  store float %i.ru, ptr %i.rx, align 4, !tbaa !203
  %i.ry = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !294
  %i.sa = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !206
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.qo
  store float %i.rz, ptr %i.sc, align 4, !tbaa !203
  %i.sd = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.se = load float, ptr %i.sd, align 4, !tbaa !295
  %i.sf = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !207
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.qo
  store float %i.se, ptr %i.sh, align 4, !tbaa !203
  %i.si = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.sj = load float, ptr %i.si, align 4, !tbaa !296
  %i.sk = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !211
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.qo
  store float %i.sj, ptr %i.sm, align 4, !tbaa !203
  %i.sn = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.so = load float, ptr %i.sn, align 4, !tbaa !297
  %i.sp = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !212
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %i.qo
  store float %i.so, ptr %i.sr, align 4, !tbaa !203
  %i.ss = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.st = load float, ptr %i.ss, align 4, !tbaa !298
  %i.su = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !299
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.qo
  store float %i.st, ptr %i.sw, align 4, !tbaa !203
  %i.sx = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !300
  %i.sz = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !208
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.qo
  store float %i.sy, ptr %i.tb, align 4, !tbaa !203
  %i.tc = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.td = load float, ptr %i.tc, align 4, !tbaa !301
  %i.te = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !209
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.qo
  store float %i.td, ptr %i.tg, align 4, !tbaa !203
  %i.th = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.ti = load float, ptr %i.th, align 4, !tbaa !232
  %i.tj = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !210
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.qo
  store float %i.ti, ptr %i.tl, align 4, !tbaa !203
  %i.tm = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !300
  %i.to = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !208
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.qo
  store float %i.tn, ptr %i.tq, align 4, !tbaa !203
  %i.tr = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !301
  %i.tt = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !209
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.qo
  store float %i.ts, ptr %i.tv, align 4, !tbaa !203
  %i.tw = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !232
  %i.ty = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !210
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.qo
  store float %i.tx, ptr %i.ua, align 4, !tbaa !203
  %i.ub = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.uc = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !198
  %i.ue = getelementptr inbounds [16 x i8], ptr %i.ud, i64 %i.qo ; 2 uses
  %i.uf = load <4 x float>, ptr %i.ub, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.uf, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.uf, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.ue, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.01054.0.copyload = load <2 x float>, ptr %i.lz, align 4 ; 13 uses
  %.sroa.121061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121061.0.copyload = load float, ptr %.sroa.121061.0..sroa_idx, align 4 ; 8 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !1688
  %i.uj = load ptr, ptr %i.ug, align 8, !tbaa !302, !noalias !1757
  %i.uk = sext i32 %i.ui to i64                   ; 2 uses
  %i.ul = getelementptr inbounds [16 x i8], ptr %i.uj, i64 %i.uk ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.um = load <2 x float>, ptr %i.ul, align 16, !noalias !1757
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !74, !noalias !1757
  %i.un = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !308, !noalias !1757
  %i.up = getelementptr inbounds [16 x i8], ptr %i.uo, i64 %i.uk ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.up, align 16, !noalias !1757 ; 2 uses
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %.sroa.05.0.copyload.i.i.i598 = load <2 x float>, ptr %i.nn, align 8, !noalias !1762
  %.sroa.26.0.copyload.i.i.i600 = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1762
  %i.uq = fmul <2 x float> %.sroa.01054.0.copyload, %.sroa.05.0.copyload.i.i.i598 ; 2 uses
  %shift1248 = shufflevector <2 x float> %i.uq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1249 = fadd <2 x float> %i.uq, %shift1248
  %i.ur = extractelement <2 x float> %foldExtExtBinop1249, i64 0
  %i.us = fmul float %.sroa.121061.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.ut = fadd float %i.us, %i.ur                 ; 2 uses
  %i.uu = fcmp oeq float %i.ut, 0.000000e+00
  br i1 %i.uu, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %.sroa.2.0.copyload.i931.i.i1203 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !1757
  %.sroa.021.0.copyload.i.i.i586 = load <2 x float>, ptr %i.mj, align 8, !noalias !1762 ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = load <2 x float>, ptr %i.nm, align 4, !noalias !1762 ; 2 uses
  %i.uv = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !1762
  %i.uw = shufflevector <4 x float> %i.uv, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ux = insertelement <2 x float> poison, float %.sroa.121061.0.copyload, i64 0
  %i.uy = shufflevector <2 x float> %i.ux, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uz = fmul <2 x float> %i.uy, %i.uw
  %i.va = shufflevector <2 x float> %.sroa.01054.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vb = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.vc = fmul <2 x float> %i.va, %i.vb
  %i.vd = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.ve = fmul <2 x float> %.sroa.01054.0.copyload, %i.vd
  %i.vf = fadd <2 x float> %i.vc, %i.ve
  %i.vg = fadd <2 x float> %i.uz, %i.vf
  %i.vh = load i64, ptr %20, align 8, !tbaa !274, !noalias !1762
  %i.vi = and i64 %i.vh, 144115188075855871
  %i.vj = inttoptr i64 %i.vi to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !1762
  call void @_ZNK4pbrt12MeasuredBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %8, ptr noundef nonnull align 8 dereferenceable(40) %i.vj, <2 x float> %i.vg, float %i.ut, float noundef %.sroa.01.0.vec.extract.i.i584, <2 x float> %.sroa.2.0.copyload.i931.i.i1203, i32 noundef 0, i32 noundef 3), !noalias !1762
  %i.vk = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.vl = load i8, ptr %i.vk, align 4, !tbaa !309, !range !11, !noalias !1762, !noundef !12
  %i.vm = trunc nuw i8 %i.vl to i1
  br i1 %i.vm, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.q
  %i.vn = load <4 x float>, ptr %8, align 16, !noalias !1762
  %.fr = freeze <4 x float> %i.vn                 ; 2 uses
  %i.vo = fcmp une <4 x float> %.fr, zeroinitializer
  %i.vp = bitcast <4 x i1> %i.vo to i4
  %i.vq = icmp eq i4 %i.vp, 0
  %i.vr = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.vs = load float, ptr %i.vr, align 4, !noalias !1762 ; 3 uses
  %i.vt = fcmp oeq float %i.vs, 0.000000e+00
  %or.cond.i605 = select i1 %i.vq, i1 true, i1 %i.vt
  br i1 %or.cond.i605, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.vu = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.vv = load float, ptr %i.vu, align 8, !tbaa !232, !noalias !1762 ; 3 uses
  %i.vw = fcmp oeq float %i.vv, 0.000000e+00
  br i1 %i.vw, label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit, label %bb.r

_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit: ; preds = %bb.q, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1762
  br label %_ZNK4pbrt4BSDF8Sample_fINS_12MeasuredBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread

bb.r:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38.i
  %i.vx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.vx, align 16, !noalias !1762 ; 4 uses
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %.sroa.037.0.copyload.i.i = load <2 x float>, ptr %i.mj, align 8, !noalias !1762 ; 3 uses
  %.sroa.238.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !tbaa !203, !noalias !1762 ; 2 uses
  %i.vy = fmul float %.sroa.041.0.vec.extract.i.i, %.sroa.238.0.copyload.i.i
  %.sroa.041.4.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %.sroa.027.0.copyload.i.i = load <2 x float>, ptr %i.nm, align 4, !noalias !1762 ; 3 uses
  %.sroa.228.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !203, !noalias !1762 ; 2 uses
  %i.vz = fmul float %.sroa.041.4.vec.extract.i.i, %.sroa.228.0.copyload.i.i
  %i.wa = fadd float %i.vy, %i.vz
  %.sroa.011.0.copyload.i.i = load <2 x float>, ptr %i.nn, align 8, !noalias !1762 ; 3 uses
  %.sroa.212.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !203, !noalias !1762 ; 3 uses
  %i.wb = fmul float %i.vv, %.sroa.212.0.copyload.i.i
  %i.wc = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wd = fmul <2 x float> %i.wc, %.sroa.037.0.copyload.i.i
  %i.we = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wf = fmul <2 x float> %i.we, %.sroa.027.0.copyload.i.i
  %i.wg = fadd <2 x float> %i.wd, %i.wf
  %i.wh = insertelement <2 x float> poison, float %i.vv, i64 0
  %i.wi = shufflevector <2 x float> %i.wh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wj = fmul <2 x float> %i.wi, %.sroa.011.0.copyload.i.i
  %i.wk = fadd <2 x float> %i.wg, %i.wj           ; 6 uses
  %i.wl = fadd float %i.wa, %i.wb                 ; 8 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 16 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 36
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.21.0.copyload = load i8, ptr %.sroa.21.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1762
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.wm, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %i.wn = fmul float %.sroa.17.0, %i.wl           ; 2 uses
  %i.wo = extractelement <2 x float> %i.wk, i64 1 ; 3 uses
  %i.wp = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.wo, float %i.wn)
  %i.wq = fneg float %i.wn
  %i.wr = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.wl, float %i.wq)
  %i.ws = fadd float %i.wp, %i.wr
  %i.wt = extractelement <2 x float> %i.wk, i64 0 ; 3 uses
  %i.wu = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.wt, float %i.ws)
  %i.wv = call noundef float @llvm.fabs.f32(float %i.wu)
  %i.ww = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.wx = fmul <4 x float> %.fr, %i.ww
  %i.wy = insertelement <4 x float> poison, float %i.wv, i64 0
  %i.wz = shufflevector <4 x float> %i.wy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xa = fmul <4 x float> %i.wz, %i.wx
  %i.xb = insertelement <4 x float> poison, float %i.vs, i64 0
  %i.xc = shufflevector <4 x float> %i.xb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xd = fdiv <4 x float> %i.xa, %i.xc           ; 7 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0953.0.copyload = load <4 x float>, ptr %i.xe, align 8, !tbaa !74 ; 6 uses
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
  %i.xl = insertelement <2 x float> poison, float %i.wl, i64 0
  %i.xm = shufflevector <2 x float> %i.xl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xn = insertelement <2 x float> poison, float %.sroa.238.0.copyload.i.i, i64 0
  %i.xo = insertelement <2 x float> %i.xn, float %.sroa.228.0.copyload.i.i, i64 1 ; 2 uses
  %i.xp = fmul <2 x float> %i.xm, %i.xo
  %i.xq = shufflevector <2 x float> %.sroa.027.0.copyload.i.i, <2 x float> %.sroa.037.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xr = fmul <2 x float> %i.wk, %i.xq
  %i.xs = shufflevector <2 x float> %i.xr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xt = shufflevector <2 x float> %.sroa.037.0.copyload.i.i, <2 x float> %.sroa.027.0.copyload.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xu = fmul <2 x float> %i.wk, %i.xt
  %i.xv = fadd <2 x float> %i.xs, %i.xu
  %i.xw = fadd <2 x float> %i.xp, %i.xv
  %i.xx = fmul float %i.wl, %.sroa.212.0.copyload.i.i
  %i.xy = fmul <2 x float> %i.wk, %.sroa.011.0.copyload.i.i ; 2 uses
  %shift1254 = shufflevector <2 x float> %i.xy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1255 = fadd <2 x float> %i.xy, %shift1254
  %i.xz = extractelement <2 x float> %foldExtExtBinop1255, i64 0
  %i.ya = fadd float %i.xx, %i.xz
  %i.yb = fmul <2 x float> %i.uy, %i.xo
  %i.yc = fmul <2 x float> %.sroa.01054.0.copyload, %i.xt
  %i.yd = fmul <2 x float> %.sroa.01054.0.copyload, %i.xq
  %i.ye = shufflevector <2 x float> %i.yd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yf = fadd <2 x float> %i.ye, %i.yc
  %i.yg = fadd <2 x float> %i.yb, %i.yf
  %i.yh = load i64, ptr %20, align 8, !tbaa !274
  %i.yi = and i64 %i.yh, 144115188075855871
  %i.yj = inttoptr i64 %i.yi to ptr
  %i.yk = call noundef float @_ZNK4pbrt12MeasuredBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.yj, <2 x float> %i.yg, float %i.xj, <2 x float> %i.xw, float %i.ya, i32 noundef 0, i32 noundef 3)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640, %bb.s
  %.0.i660.sink1227 = phi float [ %i.yk, %bb.s ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit640 ], [ %i.vs, %bb.r ]
  %i.yl = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ym = insertelement <2 x float> poison, float %.0.i660.sink1227, i64 0
  %i.yn = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yo = fdiv <2 x float> %i.yl, %i.yn
  %i.yp = shufflevector <4 x float> %.sroa.0953.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.yq = fdiv <2 x float> %i.yp, %i.yn
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ys = load float, ptr %i.yr, align 8, !tbaa !1683 ; 2 uses
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
end_hunk_15
begin_hunk_16_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_18SubsurfaceMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_IS2_EENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSN_E_clESN_:bb.a
  %i.qk = getelementptr inbounds nuw i8, ptr %27, i64 128
  store <2 x float> %.sroa.0263.0, ptr %i.qk, align 8
  %.sroa.17.0..sroa_idx278 = getelementptr inbounds nuw i8, ptr %27, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx278, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %27, i64 52
  %i.qm = load i64, ptr %i.mj, align 8
  store i64 %i.qm, ptr %i.ql, align 4
  %i.qn = getelementptr inbounds nuw i8, ptr %27, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qn, ptr noundef nonnull align 4 dereferenceable(12) %i.me, i64 12, i1 false)
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !1815
  %i.qq = getelementptr inbounds nuw i8, ptr %27, i64 24
  store float %i.qp, ptr %i.qq, align 8, !tbaa !281
  %i.qr = getelementptr inbounds nuw i8, ptr %27, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.qr, ptr noundef nonnull align 8 dereferenceable(12) %16, i64 12, i1 false)
  %i.qs = getelementptr inbounds nuw i8, ptr %27, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qs, ptr noundef nonnull align 8 dereferenceable(12) %17, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %28, align 16, !tbaa !203
  %i.qt = getelementptr inbounds nuw i8, ptr %28, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.qt, align 16, !tbaa !203
  %i.qu = getelementptr inbounds nuw i8, ptr %28, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qu, align 16, !tbaa !203
  %i.qv = getelementptr inbounds nuw i8, ptr %28, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qv, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.qn, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.nq, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.ot, align 4 ; 2 uses
  %i.qw = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qx = shufflevector <4 x float> %i.qw, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qy = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qz = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.ra = fmul <2 x float> %i.qy, %i.qz
  %i.rb = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.rc = fmul <2 x float> %.sroa.0162.0.copyload, %i.rb
  %i.rd = fadd <2 x float> %i.ra, %i.rc
  %i.re = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.rf = shufflevector <2 x float> %i.re, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rg = fmul <2 x float> %i.rf, %i.qx
  %i.rh = fadd <2 x float> %i.rg, %i.rd
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.ou, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.ri = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1138 = shufflevector <2 x float> %i.ri, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1139 = fadd <2 x float> %i.ri, %shift1138
  %i.rj = extractelement <2 x float> %foldExtExtBinop1139, i64 0
  %i.rk = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.rl = fadd float %i.rk, %i.rj
  %i.rm = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %26, <2 x float> %i.rh, float %i.rl, ptr nonnull %i.e, i64 16, ptr nonnull %28, i64 16) ; 2 uses
  %i.rn = extractvalue { <2 x float>, <2 x float> } %i.rm, 0
  %i.ro = extractvalue { <2 x float>, <2 x float> } %i.rm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %29, ptr noundef nonnull align 8 dereferenceable(248) %27, <2 x float> %i.rn, <2 x float> %i.ro, ptr noundef nonnull align 4 dereferenceable(32) %24)
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !1824
  %i.rr = getelementptr inbounds nuw i8, ptr %29, i64 88
  %i.rs = load i8, ptr %i.rr, align 4, !tbaa !284, !range !11, !noundef !12
  %i.rt = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !286
  %i.rv = sext i32 %i.rq to i64                   ; 20 uses
  %i.rw = getelementptr inbounds i8, ptr %i.ru, i64 %i.rv
  store i8 %i.rs, ptr %i.rw, align 1, !tbaa !9
  %i.rx = load float, ptr %29, align 4, !tbaa !287
  %i.ry = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !288
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.rz, i64 %i.rv
  store float %i.rx, ptr %i.sa, align 4, !tbaa !203
  %i.sb = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !289
  %i.sd = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !290
  %i.sf = getelementptr inbounds [4 x i8], ptr %i.se, i64 %i.rv
  store float %i.sc, ptr %i.sf, align 4, !tbaa !203
  %i.sg = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !291
  %i.si = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !292
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.sj, i64 %i.rv
  store float %i.sh, ptr %i.sk, align 4, !tbaa !203
  %i.sl = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !293
  %i.sn = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !205
  %i.sp = getelementptr inbounds [4 x i8], ptr %i.so, i64 %i.rv
  store float %i.sm, ptr %i.sp, align 4, !tbaa !203
  %i.sq = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !294
  %i.ss = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !206
  %i.su = getelementptr inbounds [4 x i8], ptr %i.st, i64 %i.rv
  store float %i.sr, ptr %i.su, align 4, !tbaa !203
  %i.sv = getelementptr inbounds nuw i8, ptr %29, i64 20
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !295
  %i.sx = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !207
  %i.sz = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.rv
  store float %i.sw, ptr %i.sz, align 4, !tbaa !203
  %i.ta = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !293
  %i.tc = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !205
  %i.te = getelementptr inbounds [4 x i8], ptr %i.td, i64 %i.rv
  store float %i.tb, ptr %i.te, align 4, !tbaa !203
  %i.tf = getelementptr inbounds nuw i8, ptr %29, i64 28
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !294
  %i.th = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !206
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.rv
  store float %i.tg, ptr %i.tj, align 4, !tbaa !203
  %i.tk = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !295
  %i.tm = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !207
  %i.to = getelementptr inbounds [4 x i8], ptr %i.tn, i64 %i.rv
  store float %i.tl, ptr %i.to, align 4, !tbaa !203
  %i.tp = getelementptr inbounds nuw i8, ptr %29, i64 36
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !296
  %i.tr = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !211
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.ts, i64 %i.rv
  store float %i.tq, ptr %i.tt, align 4, !tbaa !203
  %i.tu = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !297
  %i.tw = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !212
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.rv
  store float %i.tv, ptr %i.ty, align 4, !tbaa !203
  %i.tz = getelementptr inbounds nuw i8, ptr %29, i64 44
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !298
  %i.ub = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !299
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.rv
  store float %i.ua, ptr %i.ud, align 4, !tbaa !203
  %i.ue = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !300
  %i.ug = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !208
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.rv
  store float %i.uf, ptr %i.ui, align 4, !tbaa !203
  %i.uj = getelementptr inbounds nuw i8, ptr %29, i64 52
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !301
  %i.ul = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !209
  %i.un = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.rv
  store float %i.uk, ptr %i.un, align 4, !tbaa !203
  %i.uo = getelementptr inbounds nuw i8, ptr %29, i64 56
  %i.up = load float, ptr %i.uo, align 4, !tbaa !232
  %i.uq = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !210
  %i.us = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %i.rv
  store float %i.up, ptr %i.us, align 4, !tbaa !203
  %i.ut = getelementptr inbounds nuw i8, ptr %29, i64 60
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !300
  %i.uv = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !208
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.rv
  store float %i.uu, ptr %i.ux, align 4, !tbaa !203
  %i.uy = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !301
  %i.va = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !209
  %i.vc = getelementptr inbounds [4 x i8], ptr %i.vb, i64 %i.rv
  store float %i.uz, ptr %i.vc, align 4, !tbaa !203
  %i.vd = getelementptr inbounds nuw i8, ptr %29, i64 68
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !232
  %i.vf = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !210
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.vg, i64 %i.rv
  store float %i.ve, ptr %i.vh, align 4, !tbaa !203
  %i.vi = getelementptr inbounds nuw i8, ptr %29, i64 72
  %i.vj = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !198
  %i.vl = getelementptr inbounds [16 x i8], ptr %i.vk, i64 %i.rv ; 2 uses
  %i.vm = load <4 x float>, ptr %i.vi, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i589 = shufflevector <4 x float> %i.vm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.vm, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i589, ptr %i.vl, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.01003.0.copyload = load <2 x float>, ptr %i.me, align 4 ; 12 uses
  %.sroa.121010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121010.0.copyload = load float, ptr %.sroa.121010.0..sroa_idx, align 4 ; 9 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 4 uses
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !1824
  %i.vq = load ptr, ptr %i.vn, align 8, !tbaa !302, !noalias !1845
  %i.vr = sext i32 %i.vp to i64                   ; 2 uses
  %i.vs = getelementptr inbounds [16 x i8], ptr %i.vq, i64 %i.vr ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i592 = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vt = load <2 x float>, ptr %i.vs, align 16, !noalias !1845
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i592, align 8, !tbaa !74, !noalias !1845
  %i.vu = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !308, !noalias !1845
  %i.vw = getelementptr inbounds [16 x i8], ptr %i.vv, i64 %i.vr ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vw, align 16, !noalias !1845 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vw, i64 8
  %.sroa.2.0.copyload.i931.i.i1102 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !1845
  %.sroa.01.0.vec.extract.i.i593 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i594 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_14DielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %30, ptr noundef nonnull align 8 dereferenceable(44) %26, <2 x float> %.sroa.01003.0.copyload, float %.sroa.121010.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i593, <2 x float> %.sroa.2.0.copyload.i931.i.i1102, i32 noundef 0, i32 noundef 3)
  %i.vx = getelementptr inbounds nuw i8, ptr %30, i64 44 ; 3 uses
  %i.vy = load i8, ptr %i.vx, align 4, !tbaa !309, !range !11, !noundef !12
  %i.vz = trunc nuw i8 %i.vy to i1
  br i1 %i.vz, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.wa = getelementptr inbounds nuw i8, ptr %30, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.wa, align 16 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.wb, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %.sroa.04.0.vec.extract.i.i602 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.04.4.vec.extract.i.i604 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.wc = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.wd = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i578, float %.sroa.04.4.vec.extract.i.i604, float %i.wc)
  %i.we = fneg float %i.wc
  %i.wf = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.we)
  %i.wg = fadd float %i.wd, %i.wf
  %i.wh = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i577, float %.sroa.04.0.vec.extract.i.i602, float %i.wg)
  %i.wi = call noundef float @llvm.fabs.f32(float %i.wh)
  %i.wj = getelementptr inbounds nuw i8, ptr %30, i64 28
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !311 ; 2 uses
  %i.wl = load <4 x float>, ptr %30, align 16, !tbaa !203
  %i.wm = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.wn = fmul <4 x float> %i.wm, %i.wl
  %i.wo = insertelement <4 x float> poison, float %i.wi, i64 0
  %i.wp = shufflevector <4 x float> %i.wo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wq = fmul <4 x float> %i.wn, %i.wp
  %i.wr = insertelement <4 x float> poison, float %i.wk, i64 0
  %i.ws = shufflevector <4 x float> %i.wr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wt = fdiv <4 x float> %i.wq, %i.ws           ; 7 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0941.0.copyload = load <4 x float>, ptr %i.wu, align 8, !tbaa !74 ; 9 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %30, i64 40
  %i.ww = load i8, ptr %i.wv, align 8, !tbaa !314, !range !11, !noundef !12
  %i.wx = trunc nuw i8 %i.ww to i1
  br i1 %i.wx, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit629, label %.thread

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit629: ; preds = %bb.t
  %.sroa.05.0.copyload.i.i.i632 = load <2 x float>, ptr %i.ou, align 8 ; 3 uses
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
  %.sroa.021.0.copyload.i.i.i639 = load <2 x float>, ptr %i.nq, align 8 ; 2 uses
  %.sroa.214.0.copyload.i.i.i643 = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %.sroa.013.0.copyload.i.i.i644 = load <2 x float>, ptr %i.ot, align 4 ; 2 uses
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
  %i.yb = load i64, ptr %26, align 8, !tbaa !274
  %i.yc = and i64 %i.yb, 144115188075855871
  %i.yd = inttoptr i64 %i.yc to ptr
  %i.ye = call noundef float @_ZNK4pbrt14DielectricBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(12) %i.yd, <2 x float> %i.ya, float %i.xb, <2 x float> %i.xp, float %i.xs, i32 noundef 0, i32 noundef 3)
  %.pre.pre = load i8, ptr %i.vx, align 4, !tbaa !309, !range !11
  %i.yf = trunc nuw i8 %.pre.pre to i1
  br label %bb.v

.thread:                                          ; preds = %bb.t
  %i.yg = insertelement <2 x float> poison, float %i.wk, i64 0
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
  %i.yl = load float, ptr %i.yk, align 8, !tbaa !1819 ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 2 uses
  %i.yn = load i32, ptr %i.ym, align 16, !tbaa !315
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
  %i.zl = load i32, ptr %i.qd, align 8, !tbaa !1811
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
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !1850 ; 28 uses
  %i.zy = load ptr, ptr %1, align 8, !tbaa !1802
  %i.zz = ptrtoint ptr %i.zy to i64
  %i.aaa = or i64 %i.zz, 1297036692682702848
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, ptr noundef nonnull align 16 dereferenceable(32) %24, i64 32, i1 false)
end_hunk_16
begin_hunk_17_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_18SubsurfaceMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_IS2_EENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSN_E_clESN_:bb.a
  %i.qk = getelementptr inbounds nuw i8, ptr %27, i64 128
  store <2 x float> %.sroa.0263.0, ptr %i.qk, align 8
  %.sroa.17.0..sroa_idx278 = getelementptr inbounds nuw i8, ptr %27, i64 136
  store float %.sroa.17.0, ptr %.sroa.17.0..sroa_idx278, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %27, i64 52
  %i.qm = load i64, ptr %i.mj, align 8
  store i64 %i.qm, ptr %i.ql, align 4
  %i.qn = getelementptr inbounds nuw i8, ptr %27, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qn, ptr noundef nonnull align 4 dereferenceable(12) %i.me, i64 12, i1 false)
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !1815
  %i.qq = getelementptr inbounds nuw i8, ptr %27, i64 24
  store float %i.qp, ptr %i.qq, align 8, !tbaa !281
  %i.qr = getelementptr inbounds nuw i8, ptr %27, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.qr, ptr noundef nonnull align 8 dereferenceable(12) %16, i64 12, i1 false)
  %i.qs = getelementptr inbounds nuw i8, ptr %27, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qs, ptr noundef nonnull align 8 dereferenceable(12) %17, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %28, align 16, !tbaa !203
  %i.qt = getelementptr inbounds nuw i8, ptr %28, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.qt, align 16, !tbaa !203
  %i.qu = getelementptr inbounds nuw i8, ptr %28, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qu, align 16, !tbaa !203
  %i.qv = getelementptr inbounds nuw i8, ptr %28, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qv, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.qn, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.nq, align 8 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.ot, align 4 ; 2 uses
  %i.qw = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8
  %i.qx = shufflevector <4 x float> %i.qw, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qy = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qz = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.ra = fmul <2 x float> %i.qy, %i.qz
  %i.rb = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.rc = fmul <2 x float> %.sroa.0162.0.copyload, %i.rb
  %i.rd = fadd <2 x float> %i.ra, %i.rc
  %i.re = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.rf = shufflevector <2 x float> %i.re, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rg = fmul <2 x float> %i.rf, %i.qx
  %i.rh = fadd <2 x float> %i.rg, %i.rd
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.ou, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.ri = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1138 = shufflevector <2 x float> %i.ri, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1139 = fadd <2 x float> %i.ri, %shift1138
  %i.rj = extractelement <2 x float> %foldExtExtBinop1139, i64 0
  %i.rk = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.rl = fadd float %i.rk, %i.rj
  %i.rm = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %26, <2 x float> %i.rh, float %i.rl, ptr nonnull %i.e, i64 16, ptr nonnull %28, i64 16) ; 2 uses
  %i.rn = extractvalue { <2 x float>, <2 x float> } %i.rm, 0
  %i.ro = extractvalue { <2 x float>, <2 x float> } %i.rm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %29, ptr noundef nonnull align 8 dereferenceable(248) %27, <2 x float> %i.rn, <2 x float> %i.ro, ptr noundef nonnull align 4 dereferenceable(32) %24)
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !1824
  %i.rr = getelementptr inbounds nuw i8, ptr %29, i64 88
  %i.rs = load i8, ptr %i.rr, align 4, !tbaa !284, !range !11, !noundef !12
  %i.rt = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !286
  %i.rv = sext i32 %i.rq to i64                   ; 20 uses
  %i.rw = getelementptr inbounds i8, ptr %i.ru, i64 %i.rv
  store i8 %i.rs, ptr %i.rw, align 1, !tbaa !9
  %i.rx = load float, ptr %29, align 4, !tbaa !287
  %i.ry = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !288
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.rz, i64 %i.rv
  store float %i.rx, ptr %i.sa, align 4, !tbaa !203
  %i.sb = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !289
  %i.sd = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !290
  %i.sf = getelementptr inbounds [4 x i8], ptr %i.se, i64 %i.rv
  store float %i.sc, ptr %i.sf, align 4, !tbaa !203
  %i.sg = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !291
  %i.si = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !292
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.sj, i64 %i.rv
  store float %i.sh, ptr %i.sk, align 4, !tbaa !203
  %i.sl = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !293
  %i.sn = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !205
  %i.sp = getelementptr inbounds [4 x i8], ptr %i.so, i64 %i.rv
  store float %i.sm, ptr %i.sp, align 4, !tbaa !203
  %i.sq = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !294
  %i.ss = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !206
  %i.su = getelementptr inbounds [4 x i8], ptr %i.st, i64 %i.rv
  store float %i.sr, ptr %i.su, align 4, !tbaa !203
  %i.sv = getelementptr inbounds nuw i8, ptr %29, i64 20
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !295
  %i.sx = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !207
  %i.sz = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.rv
  store float %i.sw, ptr %i.sz, align 4, !tbaa !203
  %i.ta = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !293
  %i.tc = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !205
  %i.te = getelementptr inbounds [4 x i8], ptr %i.td, i64 %i.rv
  store float %i.tb, ptr %i.te, align 4, !tbaa !203
  %i.tf = getelementptr inbounds nuw i8, ptr %29, i64 28
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !294
  %i.th = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !206
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.rv
  store float %i.tg, ptr %i.tj, align 4, !tbaa !203
  %i.tk = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !295
  %i.tm = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !207
  %i.to = getelementptr inbounds [4 x i8], ptr %i.tn, i64 %i.rv
  store float %i.tl, ptr %i.to, align 4, !tbaa !203
  %i.tp = getelementptr inbounds nuw i8, ptr %29, i64 36
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !296
  %i.tr = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !211
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.ts, i64 %i.rv
  store float %i.tq, ptr %i.tt, align 4, !tbaa !203
  %i.tu = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !297
  %i.tw = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !212
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.rv
  store float %i.tv, ptr %i.ty, align 4, !tbaa !203
  %i.tz = getelementptr inbounds nuw i8, ptr %29, i64 44
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !298
  %i.ub = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !299
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.rv
  store float %i.ua, ptr %i.ud, align 4, !tbaa !203
  %i.ue = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !300
  %i.ug = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !208
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.rv
  store float %i.uf, ptr %i.ui, align 4, !tbaa !203
  %i.uj = getelementptr inbounds nuw i8, ptr %29, i64 52
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !301
  %i.ul = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !209
  %i.un = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.rv
  store float %i.uk, ptr %i.un, align 4, !tbaa !203
  %i.uo = getelementptr inbounds nuw i8, ptr %29, i64 56
  %i.up = load float, ptr %i.uo, align 4, !tbaa !232
  %i.uq = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !210
  %i.us = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %i.rv
  store float %i.up, ptr %i.us, align 4, !tbaa !203
  %i.ut = getelementptr inbounds nuw i8, ptr %29, i64 60
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !300
  %i.uv = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !208
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.rv
  store float %i.uu, ptr %i.ux, align 4, !tbaa !203
  %i.uy = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !301
  %i.va = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !209
  %i.vc = getelementptr inbounds [4 x i8], ptr %i.vb, i64 %i.rv
  store float %i.uz, ptr %i.vc, align 4, !tbaa !203
  %i.vd = getelementptr inbounds nuw i8, ptr %29, i64 68
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !232
  %i.vf = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !210
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.vg, i64 %i.rv
  store float %i.ve, ptr %i.vh, align 4, !tbaa !203
  %i.vi = getelementptr inbounds nuw i8, ptr %29, i64 72
  %i.vj = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !198
  %i.vl = getelementptr inbounds [16 x i8], ptr %i.vk, i64 %i.rv ; 2 uses
  %i.vm = load <4 x float>, ptr %i.vi, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i589 = shufflevector <4 x float> %i.vm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.vm, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i589, ptr %i.vl, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.01003.0.copyload = load <2 x float>, ptr %i.me, align 4 ; 12 uses
  %.sroa.121010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121010.0.copyload = load float, ptr %.sroa.121010.0..sroa_idx, align 4 ; 9 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 4 uses
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !1824
  %i.vq = load ptr, ptr %i.vn, align 8, !tbaa !302, !noalias !1898
  %i.vr = sext i32 %i.vp to i64                   ; 2 uses
  %i.vs = getelementptr inbounds [16 x i8], ptr %i.vq, i64 %i.vr ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i592 = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vt = load <2 x float>, ptr %i.vs, align 16, !noalias !1898
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i592, align 8, !tbaa !74, !noalias !1898
  %i.vu = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !308, !noalias !1898
  %i.vw = getelementptr inbounds [16 x i8], ptr %i.vv, i64 %i.vr ; 2 uses
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vw, align 16, !noalias !1898 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.vw, i64 8
  %.sroa.2.0.copyload.i931.i.i1102 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i, align 8, !tbaa !74, !noalias !1898
  %.sroa.01.0.vec.extract.i.i593 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i594 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @_ZNK4pbrt4BSDF8Sample_fINS_14DielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.103") align 4 %30, ptr noundef nonnull align 8 dereferenceable(44) %26, <2 x float> %.sroa.01003.0.copyload, float %.sroa.121010.0.copyload, float noundef %.sroa.01.0.vec.extract.i.i593, <2 x float> %.sroa.2.0.copyload.i931.i.i1102, i32 noundef 0, i32 noundef 3)
  %i.vx = getelementptr inbounds nuw i8, ptr %30, i64 44 ; 3 uses
  %i.vy = load i8, ptr %i.vx, align 4, !tbaa !309, !range !11, !noundef !12
  %i.vz = trunc nuw i8 %i.vy to i1
  br i1 %i.vz, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.wa = getelementptr inbounds nuw i8, ptr %30, i64 16
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.wa, align 16 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.wb, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %.sroa.04.0.vec.extract.i.i602 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0 ; 3 uses
  %.sroa.04.4.vec.extract.i.i604 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 1 ; 3 uses
  %i.wc = fmul float %.sroa.17.0, %.sroa.6.0.copyload ; 2 uses
  %i.wd = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i578, float %.sroa.04.4.vec.extract.i.i604, float %i.wc)
  %i.we = fneg float %i.wc
  %i.wf = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %.sroa.6.0.copyload, float %i.we)
  %i.wg = fadd float %i.wd, %i.wf
  %i.wh = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i577, float %.sroa.04.0.vec.extract.i.i602, float %i.wg)
  %i.wi = call noundef float @llvm.fabs.f32(float %i.wh)
  %i.wj = getelementptr inbounds nuw i8, ptr %30, i64 28
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !311 ; 2 uses
  %i.wl = load <4 x float>, ptr %30, align 16, !tbaa !203
  %i.wm = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.wn = fmul <4 x float> %i.wm, %i.wl
  %i.wo = insertelement <4 x float> poison, float %i.wi, i64 0
  %i.wp = shufflevector <4 x float> %i.wo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wq = fmul <4 x float> %i.wn, %i.wp
  %i.wr = insertelement <4 x float> poison, float %i.wk, i64 0
  %i.ws = shufflevector <4 x float> %i.wr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wt = fdiv <4 x float> %i.wq, %i.ws           ; 7 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0941.0.copyload = load <4 x float>, ptr %i.wu, align 8, !tbaa !74 ; 9 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %30, i64 40
  %i.ww = load i8, ptr %i.wv, align 8, !tbaa !314, !range !11, !noundef !12
  %i.wx = trunc nuw i8 %i.ww to i1
  br i1 %i.wx, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit629, label %.thread

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit629: ; preds = %bb.t
  %.sroa.05.0.copyload.i.i.i632 = load <2 x float>, ptr %i.ou, align 8 ; 3 uses
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
  %.sroa.021.0.copyload.i.i.i639 = load <2 x float>, ptr %i.nq, align 8 ; 2 uses
  %.sroa.214.0.copyload.i.i.i643 = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %.sroa.013.0.copyload.i.i.i644 = load <2 x float>, ptr %i.ot, align 4 ; 2 uses
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
  %i.yb = load i64, ptr %26, align 8, !tbaa !274
  %i.yc = and i64 %i.yb, 144115188075855871
  %i.yd = inttoptr i64 %i.yc to ptr
  %i.ye = call noundef float @_ZNK4pbrt14DielectricBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(12) %i.yd, <2 x float> %i.ya, float %i.xb, <2 x float> %i.xp, float %i.xs, i32 noundef 0, i32 noundef 3)
  %.pre.pre = load i8, ptr %i.vx, align 4, !tbaa !309, !range !11
  %i.yf = trunc nuw i8 %.pre.pre to i1
  br label %bb.v

.thread:                                          ; preds = %bb.t
  %i.yg = insertelement <2 x float> poison, float %i.wk, i64 0
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
  %i.yl = load float, ptr %i.yk, align 8, !tbaa !1819 ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 2 uses
  %i.yn = load i32, ptr %i.ym, align 16, !tbaa !315
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
  %i.zl = load i32, ptr %i.qd, align 8, !tbaa !1811
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
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !1850 ; 28 uses
  %i.zy = load ptr, ptr %1, align 8, !tbaa !1802
  %i.zz = ptrtoint ptr %i.zy to i64
  %i.aaa = or i64 %i.zz, 1297036692682702848
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, ptr noundef nonnull align 16 dereferenceable(32) %24, i64 32, i1 false)
end_hunk_17
begin_hunk_18_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_:bb.a
  store float %i.qc, ptr %i.qd, align 8, !tbaa !281
  %i.qe = getelementptr inbounds nuw i8, ptr %21, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.qe, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %i.qf = getelementptr inbounds nuw i8, ptr %21, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qf, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.f, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %22, align 16, !tbaa !203
  %i.qg = getelementptr inbounds nuw i8, ptr %22, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.qg, align 16, !tbaa !203
  %i.qh = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qh, align 16, !tbaa !203
  %i.qi = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qi, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.qa, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.om, align 4 ; 2 uses
  %.sroa.214.0.copyload.i.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %i.qj = insertelement <2 x float> %.sroa.013.0.copyload.i.i.i, float %i.nm, i64 1
  %i.qk = fmul <2 x float> %.sroa.0162.0.copyload, %i.qj
  %i.ql = shufflevector <2 x float> %i.qk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qm = insertelement <2 x float> %.sroa.013.0.copyload.i.i.i, float %i.nl, i64 0
  %i.qn = fmul <2 x float> %.sroa.0162.0.copyload, %i.qm
  %i.qo = fadd <2 x float> %i.ql, %i.qn
  %i.qp = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.qq = shufflevector <2 x float> %i.qp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qr = insertelement <2 x float> %i.ny, float %.sroa.214.0.copyload.i.i.i, i64 1
  %i.qs = fmul <2 x float> %i.qq, %i.qr
  %i.qt = fadd <2 x float> %i.qs, %i.qo
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.oo, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.qu = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1193 = shufflevector <2 x float> %i.qu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1194 = fadd <2 x float> %i.qu, %shift1193
  %i.qv = extractelement <2 x float> %foldExtExtBinop1194, i64 0
  %i.qw = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.qx = fadd float %i.qw, %i.qv
  %i.qy = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qt, float %i.qx, ptr nonnull %i.f, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.qz = extractvalue { <2 x float>, <2 x float> } %i.qy, 0
  %i.ra = extractvalue { <2 x float>, <2 x float> } %i.qy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.qz, <2 x float> %i.ra, ptr noundef nonnull align 4 dereferenceable(32) %18)
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !1962
  %i.rd = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.re = load i8, ptr %i.rd, align 4, !tbaa !284, !range !11, !noundef !12
  %i.rf = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !286
  %i.rh = sext i32 %i.rc to i64                   ; 20 uses
  %i.ri = getelementptr inbounds i8, ptr %i.rg, i64 %i.rh
  store i8 %i.re, ptr %i.ri, align 1, !tbaa !9
  %i.rj = load float, ptr %23, align 4, !tbaa !287
  %i.rk = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !288
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %i.rh
  store float %i.rj, ptr %i.rm, align 4, !tbaa !203
  %i.rn = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !289
  %i.rp = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !290
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %i.rh
  store float %i.ro, ptr %i.rr, align 4, !tbaa !203
  %i.rs = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !291
  %i.ru = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !292
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.rh
  store float %i.rt, ptr %i.rw, align 4, !tbaa !203
  %i.rx = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !293
  %i.rz = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !205
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.rh
  store float %i.ry, ptr %i.sb, align 4, !tbaa !203
  %i.sc = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !294
  %i.se = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !206
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.rh
  store float %i.sd, ptr %i.sg, align 4, !tbaa !203
  %i.sh = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.si = load float, ptr %i.sh, align 4, !tbaa !295
  %i.sj = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !207
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %i.rh
  store float %i.si, ptr %i.sl, align 4, !tbaa !203
  %i.sm = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !293
  %i.so = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !205
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.rh
  store float %i.sn, ptr %i.sq, align 4, !tbaa !203
  %i.sr = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !294
  %i.st = getelementptr inbounds nuw i8, ptr %i.h, i64 344
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !206
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rh
  store float %i.ss, ptr %i.sv, align 4, !tbaa !203
  %i.sw = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !295
  %i.sy = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !207
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.rh
  store float %i.sx, ptr %i.ta, align 4, !tbaa !203
  %i.tb = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !296
  %i.td = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !211
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.te, i64 %i.rh
  store float %i.tc, ptr %i.tf, align 4, !tbaa !203
  %i.tg = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.th = load float, ptr %i.tg, align 4, !tbaa !297
  %i.ti = getelementptr inbounds nuw i8, ptr %i.h, i64 376
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !212
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.rh
  store float %i.th, ptr %i.tk, align 4, !tbaa !203
  %i.tl = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !298
  %i.tn = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !299
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.rh
  store float %i.tm, ptr %i.tp, align 4, !tbaa !203
  %i.tq = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !300
  %i.ts = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !208
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.rh
  store float %i.tr, ptr %i.tu, align 4, !tbaa !203
  %i.tv = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !301
  %i.tx = getelementptr inbounds nuw i8, ptr %i.h, i64 408
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !209
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %i.rh
  store float %i.tw, ptr %i.tz, align 4, !tbaa !203
  %i.ua = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !232
  %i.uc = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !210
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.rh
  store float %i.ub, ptr %i.ue, align 4, !tbaa !203
  %i.uf = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !300
  %i.uh = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !208
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ui, i64 %i.rh
  store float %i.ug, ptr %i.uj, align 4, !tbaa !203
  %i.uk = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !301
  %i.um = getelementptr inbounds nuw i8, ptr %i.h, i64 440
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !209
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.rh
  store float %i.ul, ptr %i.uo, align 4, !tbaa !203
  %i.up = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.uq = load float, ptr %i.up, align 4, !tbaa !232
  %i.ur = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !210
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.rh
  store float %i.uq, ptr %i.ut, align 4, !tbaa !203
  %i.uu = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.uv = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !198
  %i.ux = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.rh ; 2 uses
  %i.uy = load <4 x float>, ptr %i.uu, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.uy, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.uy, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.ux, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %.sroa.021.0.copyload.i.i.i586.pre = load <2 x float>, ptr %i.nf, align 8, !noalias !1977
  %.sroa.013.0.copyload.i.i.i593.pre = load <2 x float>, ptr %i.om, align 4, !noalias !1977
  %i.uz = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !1977
  %i.va = shufflevector <4 x float> %i.uz, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %.sroa.05.0.copyload.i.i.i598.pre = load <2 x float>, ptr %i.oo, align 8, !noalias !1977
  %.sroa.26.0.copyload.i.i.i600.pre = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1977
  %.pre1162.pre = load i64, ptr %20, align 8, !tbaa !274
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.q, %bb.p, %bb.o
  %.pre1162 = phi i64 [ %.pre1162.pre, %bb.q ], [ %i.ne, %bb.p ], [ %i.ne, %bb.o ] ; 5 uses
  %.sroa.26.0.copyload.i.i.i600 = phi float [ %.sroa.26.0.copyload.i.i.i600.pre, %bb.q ], [ %.sroa.17.0, %bb.p ], [ %.sroa.17.0, %bb.o ] ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = phi <2 x float> [ %.sroa.013.0.copyload.i.i.i593.pre, %bb.q ], [ %i.ol, %bb.p ], [ %i.ol, %bb.o ] ; 3 uses
  %.sroa.021.0.copyload.i.i.i586 = phi <2 x float> [ %.sroa.021.0.copyload.i.i.i586.pre, %bb.q ], [ %.sroa.0.4.vec.insert.i.i.i, %bb.p ], [ %.sroa.0.4.vec.insert.i.i.i, %bb.o ] ; 3 uses
  %i.vb = phi <2 x float> [ %.sroa.05.0.copyload.i.i.i598.pre, %bb.q ], [ %.sroa.0259.0, %bb.p ], [ %.sroa.0259.0, %bb.o ] ; 2 uses
  %i.vc = phi <2 x float> [ %i.va, %bb.q ], [ %i.ny, %bb.p ], [ %i.ny, %bb.o ] ; 3 uses
  %.sroa.01010.0.copyload = load <2 x float>, ptr %i.lz, align 4 ; 5 uses
  %.sroa.121017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121017.0.copyload = load float, ptr %.sroa.121017.0..sroa_idx, align 4 ; 4 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 2 uses
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !1962
  %i.vg = load ptr, ptr %i.vd, align 8, !tbaa !302, !noalias !1980
  %i.vh = sext i32 %i.vf to i64                   ; 2 uses
  %i.vi = getelementptr inbounds [16 x i8], ptr %i.vg, i64 %i.vh ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vj = load <2 x float>, ptr %i.vi, align 16, !noalias !1980
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !74, !noalias !1980
  %i.vk = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !308, !noalias !1980
  %i.vm = getelementptr inbounds [16 x i8], ptr %i.vl, i64 %i.vh
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vm, align 16, !noalias !1980 ; 2 uses
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %i.vn = shufflevector <2 x float> %.sroa.01010.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vo = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.vp = fmul <2 x float> %i.vn, %i.vo
  %i.vq = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.vr = fmul <2 x float> %.sroa.01010.0.copyload, %i.vq
  %i.vs = fadd <2 x float> %i.vp, %i.vr
  %i.vt = insertelement <2 x float> poison, float %.sroa.121017.0.copyload, i64 0
  %i.vu = shufflevector <2 x float> %i.vt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vv = fmul <2 x float> %i.vu, %i.vc
  %i.vw = fadd <2 x float> %i.vv, %i.vs           ; 2 uses
  %i.vx = fmul <2 x float> %.sroa.01010.0.copyload, %i.vb ; 2 uses
  %shift1196 = shufflevector <2 x float> %i.vx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1197 = fadd <2 x float> %i.vx, %shift1196
  %i.vy = extractelement <2 x float> %foldExtExtBinop1197, i64 0
  %i.vz = fmul float %.sroa.121017.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.wa = fadd float %i.vz, %i.vy                 ; 4 uses
  %i.wb = fcmp oeq float %i.wa, 0.000000e+00
  br i1 %i.wb, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.wc = and i64 %.pre1162, 144115188075855871
  %i.wd = inttoptr i64 %i.wc to ptr
  %i.we = call float @llvm.fabs.f32(float %i.wa)  ; 4 uses
  %i.wf = load float, ptr %i.wd, align 4, !tbaa !1985, !noalias !1987 ; 4 uses
  %i.wg = fcmp ogt float %i.we, 1.000000e+00
  %..i.i.i.i = select i1 %i.wg, float 1.000000e+00, float %i.we ; 5 uses
  %i.wh = fmul float %..i.i.i.i, %..i.i.i.i
  %i.wi = fsub float 1.000000e+00, %i.wh
  %i.wj = fmul float %i.wf, %i.wf
  %i.wk = fdiv float %i.wi, %i.wj                 ; 2 uses
  %i.wl = fcmp ult float %i.wk, 1.000000e+00
  br i1 %i.wl, label %_ZN4pbrt12FrDielectricEff.exit.i.i, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread

_ZN4pbrt12FrDielectricEff.exit.i.i:               ; preds = %bb.r
  %i.wm = fsub float 1.000000e+00, %i.wk          ; 2 uses
  %i.wn = fcmp ogt float %i.wm, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.wn, float %i.wm, float 0.000000e+00
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i.i) ; 3 uses
  %i.wo = fmul float %..i.i.i.i, %i.wf            ; 2 uses
  %i.wp = fsub float %i.wo, %sqrt.i.i.i.i
  %i.wq = fadd float %i.wo, %sqrt.i.i.i.i
  %i.wr = fdiv float %i.wp, %i.wq                 ; 2 uses
  %i.ws = fmul float %i.wf, %sqrt.i.i.i.i         ; 2 uses
  %i.wt = fsub float %..i.i.i.i, %i.ws
  %i.wu = fadd float %..i.i.i.i, %i.ws
  %i.wv = fdiv float %i.wt, %i.wu                 ; 2 uses
  %i.ww = fmul float %i.wr, %i.wr
  %i.wx = fmul float %i.wv, %i.wv
  %i.wy = fadd float %i.ww, %i.wx
  %i.wz = fmul float %i.wy, 5.000000e-01          ; 7 uses
  %i.xa = fsub float 1.000000e+00, %i.wz          ; 3 uses
  %i.xb = fcmp olt float %i.wz, 1.000000e+00
  br i1 %i.xb, label %bb.s, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i

bb.s:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.i.i
  %i.xc = fmul float %i.xa, %i.xa
  %i.xd = fmul float %i.wz, %i.xc
  %i.xe = fmul nnan float %i.wz, %i.wz
  %i.xf = fsub float 1.000000e+00, %i.xe
  %i.xg = fdiv float %i.xd, %i.xf
  %i.xh = fadd float %i.wz, %i.xg                 ; 2 uses
  %i.xi = fsub float 1.000000e+00, %i.xh
  br label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i

_ZN4pbrt12FrDielectricEff.exit.thread.i.i:        ; preds = %bb.s, %_ZN4pbrt12FrDielectricEff.exit.i.i
  %.055.i.i = phi float [ %i.xi, %bb.s ], [ %i.xa, %_ZN4pbrt12FrDielectricEff.exit.i.i ] ; 2 uses
  %.0.i.i = phi float [ %i.xh, %bb.s ], [ %i.wz, %_ZN4pbrt12FrDielectricEff.exit.i.i ] ; 2 uses
  %i.xj = fcmp oeq float %.0.i.i, 0.000000e+00
  %i.xk = fcmp oeq float %.055.i.i, 0.000000e+00
  %or.cond.i.i = and i1 %i.xk, %i.xj
  br i1 %or.cond.i.i, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread

_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread: ; preds = %bb.r, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i
  %.0.i.i1126 = phi float [ %.0.i.i, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i ], [ 1.000000e+00, %bb.r ] ; 3 uses
  %.055.i.i1125 = phi float [ %.055.i.i, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i ], [ 0.000000e+00, %bb.r ] ; 3 uses
  %i.xl = fadd float %.0.i.i1126, %.055.i.i1125   ; 2 uses
  %i.xm = fdiv float %.0.i.i1126, %i.xl           ; 2 uses
  %i.xn = fcmp olt float %.sroa.01.0.vec.extract.i.i584, %i.xm
  %i.xo = fneg <2 x float> %i.vw                  ; 3 uses
  br i1 %i.xn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread
  %i.xp = fdiv float %.0.i.i1126, %i.we
  %.sroa.076.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.xp, i64 0
  %.sroa.076.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.076.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i

bb.u:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread
  %i.xq = fneg float %i.wa
  %i.xr = fdiv float %.055.i.i1125, %i.we
  %.sroa.063.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.xr, i64 0
  %.sroa.063.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.063.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xs = fdiv float %.055.i.i1125, %i.xl
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.u, %bb.t
  %.sroa.17.0.ph.i = phi float [ %i.xq, %bb.u ], [ %i.wa, %bb.t ] ; 2 uses
  %.sroa.22.0.ph.i = phi float [ %i.xs, %bb.u ], [ %i.xm, %bb.t ] ; 3 uses
  %.sroa.9.0.ph.i = phi <2 x float> [ %.sroa.063.4.vec.insert.i.i, %bb.u ], [ %.sroa.076.4.vec.insert.i.i, %bb.t ] ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.9.0.ph.i, i64 0
  %i.xt = fcmp oeq float %.sroa.0.0.vec.extract.i, 0.000000e+00
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.9.0.ph.i, i64 1
  %i.xu = fcmp oeq float %.sroa.0.4.vec.extract.i, 0.000000e+00
  %or.cond17.i.not79.i = and i1 %i.xt, %i.xu
  %i.xv = fcmp oeq float %.sroa.22.0.ph.i, 0.000000e+00
  %or.cond.i603 = or i1 %i.xv, %or.cond17.i.not79.i
  br i1 %or.cond.i603, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.xw = shufflevector <2 x float> %.sroa.9.0.ph.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %foldExtExtBinop1201 = fmul <2 x float> %i.vc, %i.xo
  %shift1203 = shufflevector <2 x float> %foldExtExtBinop1201, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xx = fmul <2 x float> %i.vw, %i.vc
  %foldExtExtBinop1204 = fsub <2 x float> %shift1203, %i.xx
  %i.xy = extractelement <2 x float> %foldExtExtBinop1204, i64 0
  %i.xz = insertelement <2 x float> poison, float %.sroa.17.0.ph.i, i64 0
  %i.ya = shufflevector <2 x float> %i.xz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yb = fmul <2 x float> %i.vb, %i.ya
  %i.yc = fmul float %.sroa.26.0.copyload.i.i.i600, %.sroa.17.0.ph.i
  %i.yd = shufflevector <2 x float> %i.xo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ye = fmul <2 x float> %.sroa.021.0.copyload.i.i.i586, %i.yd
  %i.yf = shufflevector <2 x float> %i.xo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yg = fmul <2 x float> %.sroa.013.0.copyload.i.i.i593, %i.yf
  %i.yh = fadd <2 x float> %i.ye, %i.yg
  %i.yi = fadd <2 x float> %i.yb, %i.yh           ; 3 uses
  %i.yj = fadd float %i.yc, %i.xy                 ; 6 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.yk, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %i.yl = fmul float %.sroa.17.0, %i.yj           ; 2 uses
  %i.ym = extractelement <2 x float> %i.yi, i64 1 ; 3 uses
  %i.yn = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.ym, float %i.yl)
  %i.yo = fneg float %i.yl
  %i.yp = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.yj, float %i.yo)
  %i.yq = fadd float %i.yn, %i.yp
  %i.yr = extractelement <2 x float> %i.yi, i64 0 ; 3 uses
  %i.ys = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.yr, float %i.yq)
  %i.yt = call noundef float @llvm.fabs.f32(float %i.ys)
  %i.yu = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.yv = fmul <4 x float> %i.xw, %i.yu
  %i.yw = insertelement <4 x float> poison, float %i.yt, i64 0
  %i.yx = shufflevector <4 x float> %i.yw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yy = fmul <4 x float> %i.yx, %i.yv
  %i.yz = insertelement <4 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.za = shufflevector <4 x float> %i.yz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zb = fdiv <4 x float> %i.yy, %i.za           ; 7 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0911.0.copyload = load <4 x float>, ptr %i.zc, align 8, !tbaa !74 ; 6 uses
  %i.zd = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ze = insertelement <2 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.zf = shufflevector <2 x float> %i.ze, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zg = fdiv <2 x float> %i.zd, %i.zf
  %i.zh = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.zi = fdiv <2 x float> %i.zh, %i.zf
  %i.zj = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.zk = load float, ptr %i.zj, align 8, !tbaa !1957 ; 5 uses
  %i.zl = extractelement <4 x float> %i.zb, i64 0
  %i.zm = fmul float %i.zk, %i.zl
  %i.zn = extractelement <4 x float> %i.zb, i64 1
  %i.zo = fmul float %i.zk, %i.zn
  %i.zp = extractelement <4 x float> %i.zb, i64 2
  %i.zq = fmul float %i.zk, %i.zp
  %i.zr = extractelement <4 x float> %i.zb, i64 3
  %i.zs = fmul float %i.zk, %i.zr
  %shift1206 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1207 = fadd <4 x float> %.sroa.0911.0.copyload, %shift1206
  %shift1209 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1210 = fadd <4 x float> %shift1209, %foldExtExtBinop1207
  %shift1212 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1213 = fadd <4 x float> %shift1212, %foldExtExtBinop1210
  %i.zt = extractelement <4 x float> %foldExtExtBinop1213, i64 0
  %i.zu = fmul float %i.zt, 2.500000e-01          ; 4 uses
  %i.zv = fdiv float %i.zm, %i.zu                 ; 2 uses
  %i.zw = fdiv float %i.zo, %i.zu                 ; 2 uses
  %i.zx = fdiv float %i.zq, %i.zu                 ; 2 uses
  %i.zy = fdiv float %i.zs, %i.zu                 ; 2 uses
  %i.zz = fcmp olt float %i.zv, %i.zw
  %.sroa.speculated.i = select i1 %i.zz, float %i.zw, float %i.zv ; 2 uses
  %i.aaa = fcmp olt float %.sroa.speculated.i, %i.zx
  %.sroa.speculated.1.i = select i1 %i.aaa, float %i.zx, float %.sroa.speculated.i ; 2 uses
  %i.aab = fcmp olt float %.sroa.speculated.1.i, %i.zy
  %.sroa.speculated.2.i = select i1 %i.aab, float %i.zy, float %.sroa.speculated.1.i ; 2 uses
  %i.aac = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.aac, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.aad = load i32, ptr %i.pq, align 8, !tbaa !1949
  %i.aae = icmp sgt i32 %i.aad, 0
  br i1 %i.aae, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aaf = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.aag = fcmp ogt float %i.aaf, 0.000000e+00
end_hunk_18
begin_hunk_19_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_:bb.a
  store float %i.qc, ptr %i.qd, align 8, !tbaa !281
  %i.qe = getelementptr inbounds nuw i8, ptr %21, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.qe, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %i.qf = getelementptr inbounds nuw i8, ptr %21, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qf, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.f, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %22, align 16, !tbaa !203
  %i.qg = getelementptr inbounds nuw i8, ptr %22, i64 32
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.qg, align 16, !tbaa !203
  %i.qh = getelementptr inbounds nuw i8, ptr %22, i64 64
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.qh, align 16, !tbaa !203
  %i.qi = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.qi, align 16, !tbaa !203
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.qa, align 4 ; 3 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 2 uses
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.om, align 4 ; 2 uses
  %.sroa.214.0.copyload.i.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4
  %i.qj = insertelement <2 x float> %.sroa.013.0.copyload.i.i.i, float %i.nm, i64 1
  %i.qk = fmul <2 x float> %.sroa.0162.0.copyload, %i.qj
  %i.ql = shufflevector <2 x float> %i.qk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qm = insertelement <2 x float> %.sroa.013.0.copyload.i.i.i, float %i.nl, i64 0
  %i.qn = fmul <2 x float> %.sroa.0162.0.copyload, %i.qm
  %i.qo = fadd <2 x float> %i.ql, %i.qn
  %i.qp = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.qq = shufflevector <2 x float> %i.qp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qr = insertelement <2 x float> %i.ny, float %.sroa.214.0.copyload.i.i.i, i64 1
  %i.qs = fmul <2 x float> %i.qq, %i.qr
  %i.qt = fadd <2 x float> %i.qs, %i.qo
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.oo, align 8
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8
  %i.qu = fmul <2 x float> %.sroa.0162.0.copyload, %.sroa.05.0.copyload.i.i.i ; 2 uses
  %shift1193 = shufflevector <2 x float> %i.qu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1194 = fadd <2 x float> %i.qu, %shift1193
  %i.qv = extractelement <2 x float> %foldExtExtBinop1194, i64 0
  %i.qw = fmul float %.sroa.2163.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.qx = fadd float %i.qw, %i.qv
  %i.qy = call { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %20, <2 x float> %i.qt, float %i.qx, ptr nonnull %i.f, i64 16, ptr nonnull %22, i64 16) ; 2 uses
  %i.qz = extractvalue { <2 x float>, <2 x float> } %i.qy, 0
  %i.ra = extractvalue { <2 x float>, <2 x float> } %i.qy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %23, ptr noundef nonnull align 8 dereferenceable(248) %21, <2 x float> %i.qz, <2 x float> %i.ra, ptr noundef nonnull align 4 dereferenceable(32) %18)
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !1962
  %i.rd = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.re = load i8, ptr %i.rd, align 4, !tbaa !284, !range !11, !noundef !12
  %i.rf = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !286
  %i.rh = sext i32 %i.rc to i64                   ; 20 uses
  %i.ri = getelementptr inbounds i8, ptr %i.rg, i64 %i.rh
  store i8 %i.re, ptr %i.ri, align 1, !tbaa !9
  %i.rj = load float, ptr %23, align 4, !tbaa !287
  %i.rk = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !288
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %i.rh
  store float %i.rj, ptr %i.rm, align 4, !tbaa !203
  %i.rn = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !289
  %i.rp = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !290
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %i.rh
  store float %i.ro, ptr %i.rr, align 4, !tbaa !203
  %i.rs = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !291
  %i.ru = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !292
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.rh
  store float %i.rt, ptr %i.rw, align 4, !tbaa !203
  %i.rx = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !293
  %i.rz = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !205
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.rh
  store float %i.ry, ptr %i.sb, align 4, !tbaa !203
  %i.sc = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !294
  %i.se = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !206
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.rh
  store float %i.sd, ptr %i.sg, align 4, !tbaa !203
  %i.sh = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.si = load float, ptr %i.sh, align 4, !tbaa !295
  %i.sj = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !207
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %i.rh
  store float %i.si, ptr %i.sl, align 4, !tbaa !203
  %i.sm = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !293
  %i.so = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !205
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.rh
  store float %i.sn, ptr %i.sq, align 4, !tbaa !203
  %i.sr = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !294
  %i.st = getelementptr inbounds nuw i8, ptr %i.h, i64 344
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !206
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rh
  store float %i.ss, ptr %i.sv, align 4, !tbaa !203
  %i.sw = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !295
  %i.sy = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !207
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.rh
  store float %i.sx, ptr %i.ta, align 4, !tbaa !203
  %i.tb = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !296
  %i.td = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !211
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.te, i64 %i.rh
  store float %i.tc, ptr %i.tf, align 4, !tbaa !203
  %i.tg = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.th = load float, ptr %i.tg, align 4, !tbaa !297
  %i.ti = getelementptr inbounds nuw i8, ptr %i.h, i64 376
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !212
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.rh
  store float %i.th, ptr %i.tk, align 4, !tbaa !203
  %i.tl = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !298
  %i.tn = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !299
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.rh
  store float %i.tm, ptr %i.tp, align 4, !tbaa !203
  %i.tq = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !300
  %i.ts = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !208
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.rh
  store float %i.tr, ptr %i.tu, align 4, !tbaa !203
  %i.tv = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !301
  %i.tx = getelementptr inbounds nuw i8, ptr %i.h, i64 408
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !209
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %i.rh
  store float %i.tw, ptr %i.tz, align 4, !tbaa !203
  %i.ua = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !232
  %i.uc = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !210
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.rh
  store float %i.ub, ptr %i.ue, align 4, !tbaa !203
  %i.uf = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !300
  %i.uh = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !208
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ui, i64 %i.rh
  store float %i.ug, ptr %i.uj, align 4, !tbaa !203
  %i.uk = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !301
  %i.um = getelementptr inbounds nuw i8, ptr %i.h, i64 440
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !209
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.rh
  store float %i.ul, ptr %i.uo, align 4, !tbaa !203
  %i.up = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.uq = load float, ptr %i.up, align 4, !tbaa !232
  %i.ur = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !210
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.rh
  store float %i.uq, ptr %i.ut, align 4, !tbaa !203
  %i.uu = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.uv = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !198
  %i.ux = getelementptr inbounds [16 x i8], ptr %i.uw, i64 %i.rh ; 2 uses
  %i.uy = load <4 x float>, ptr %i.uu, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.uy, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.uy, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.ux, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %.sroa.021.0.copyload.i.i.i586.pre = load <2 x float>, ptr %i.nf, align 8, !noalias !2026
  %.sroa.013.0.copyload.i.i.i593.pre = load <2 x float>, ptr %i.om, align 4, !noalias !2026
  %i.uz = load <4 x float>, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !2026
  %i.va = shufflevector <4 x float> %i.uz, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %.sroa.05.0.copyload.i.i.i598.pre = load <2 x float>, ptr %i.oo, align 8, !noalias !2026
  %.sroa.26.0.copyload.i.i.i600.pre = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !2026
  %.pre1162.pre = load i64, ptr %20, align 8, !tbaa !274
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.q, %bb.p, %bb.o
  %.pre1162 = phi i64 [ %.pre1162.pre, %bb.q ], [ %i.ne, %bb.p ], [ %i.ne, %bb.o ] ; 5 uses
  %.sroa.26.0.copyload.i.i.i600 = phi float [ %.sroa.26.0.copyload.i.i.i600.pre, %bb.q ], [ %.sroa.17.0, %bb.p ], [ %.sroa.17.0, %bb.o ] ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = phi <2 x float> [ %.sroa.013.0.copyload.i.i.i593.pre, %bb.q ], [ %i.ol, %bb.p ], [ %i.ol, %bb.o ] ; 3 uses
  %.sroa.021.0.copyload.i.i.i586 = phi <2 x float> [ %.sroa.021.0.copyload.i.i.i586.pre, %bb.q ], [ %.sroa.0.4.vec.insert.i.i.i, %bb.p ], [ %.sroa.0.4.vec.insert.i.i.i, %bb.o ] ; 3 uses
  %i.vb = phi <2 x float> [ %.sroa.05.0.copyload.i.i.i598.pre, %bb.q ], [ %.sroa.0259.0, %bb.p ], [ %.sroa.0259.0, %bb.o ] ; 2 uses
  %i.vc = phi <2 x float> [ %i.va, %bb.q ], [ %i.ny, %bb.p ], [ %i.ny, %bb.o ] ; 3 uses
  %.sroa.01010.0.copyload = load <2 x float>, ptr %i.lz, align 4 ; 5 uses
  %.sroa.121017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121017.0.copyload = load float, ptr %.sroa.121017.0..sroa_idx, align 4 ; 4 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 2 uses
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !1962
  %i.vg = load ptr, ptr %i.vd, align 8, !tbaa !302, !noalias !2029
  %i.vh = sext i32 %i.vf to i64                   ; 2 uses
  %i.vi = getelementptr inbounds [16 x i8], ptr %i.vg, i64 %i.vh ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vj = load <2 x float>, ptr %i.vi, align 16, !noalias !2029
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !74, !noalias !2029
  %i.vk = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !308, !noalias !2029
  %i.vm = getelementptr inbounds [16 x i8], ptr %i.vl, i64 %i.vh
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vm, align 16, !noalias !2029 ; 2 uses
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %i.vn = shufflevector <2 x float> %.sroa.01010.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vo = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.vp = fmul <2 x float> %i.vn, %i.vo
  %i.vq = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.vr = fmul <2 x float> %.sroa.01010.0.copyload, %i.vq
  %i.vs = fadd <2 x float> %i.vp, %i.vr
  %i.vt = insertelement <2 x float> poison, float %.sroa.121017.0.copyload, i64 0
  %i.vu = shufflevector <2 x float> %i.vt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vv = fmul <2 x float> %i.vu, %i.vc
  %i.vw = fadd <2 x float> %i.vv, %i.vs           ; 2 uses
  %i.vx = fmul <2 x float> %.sroa.01010.0.copyload, %i.vb ; 2 uses
  %shift1196 = shufflevector <2 x float> %i.vx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1197 = fadd <2 x float> %i.vx, %shift1196
  %i.vy = extractelement <2 x float> %foldExtExtBinop1197, i64 0
  %i.vz = fmul float %.sroa.121017.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.wa = fadd float %i.vz, %i.vy                 ; 4 uses
  %i.wb = fcmp oeq float %i.wa, 0.000000e+00
  br i1 %i.wb, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.wc = and i64 %.pre1162, 144115188075855871
  %i.wd = inttoptr i64 %i.wc to ptr
  %i.we = call float @llvm.fabs.f32(float %i.wa)  ; 4 uses
  %i.wf = load float, ptr %i.wd, align 4, !tbaa !1985, !noalias !2034 ; 4 uses
  %i.wg = fcmp ogt float %i.we, 1.000000e+00
  %..i.i.i.i = select i1 %i.wg, float 1.000000e+00, float %i.we ; 5 uses
  %i.wh = fmul float %..i.i.i.i, %..i.i.i.i
  %i.wi = fsub float 1.000000e+00, %i.wh
  %i.wj = fmul float %i.wf, %i.wf
  %i.wk = fdiv float %i.wi, %i.wj                 ; 2 uses
  %i.wl = fcmp ult float %i.wk, 1.000000e+00
  br i1 %i.wl, label %_ZN4pbrt12FrDielectricEff.exit.i.i, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread

_ZN4pbrt12FrDielectricEff.exit.i.i:               ; preds = %bb.r
  %i.wm = fsub float 1.000000e+00, %i.wk          ; 2 uses
  %i.wn = fcmp ogt float %i.wm, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.wn, float %i.wm, float 0.000000e+00
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i.i) ; 3 uses
  %i.wo = fmul float %..i.i.i.i, %i.wf            ; 2 uses
  %i.wp = fsub float %i.wo, %sqrt.i.i.i.i
  %i.wq = fadd float %i.wo, %sqrt.i.i.i.i
  %i.wr = fdiv float %i.wp, %i.wq                 ; 2 uses
  %i.ws = fmul float %i.wf, %sqrt.i.i.i.i         ; 2 uses
  %i.wt = fsub float %..i.i.i.i, %i.ws
  %i.wu = fadd float %..i.i.i.i, %i.ws
  %i.wv = fdiv float %i.wt, %i.wu                 ; 2 uses
  %i.ww = fmul float %i.wr, %i.wr
  %i.wx = fmul float %i.wv, %i.wv
  %i.wy = fadd float %i.ww, %i.wx
  %i.wz = fmul float %i.wy, 5.000000e-01          ; 7 uses
  %i.xa = fsub float 1.000000e+00, %i.wz          ; 3 uses
  %i.xb = fcmp olt float %i.wz, 1.000000e+00
  br i1 %i.xb, label %bb.s, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i

bb.s:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.i.i
  %i.xc = fmul float %i.xa, %i.xa
  %i.xd = fmul float %i.wz, %i.xc
  %i.xe = fmul nnan float %i.wz, %i.wz
  %i.xf = fsub float 1.000000e+00, %i.xe
  %i.xg = fdiv float %i.xd, %i.xf
  %i.xh = fadd float %i.wz, %i.xg                 ; 2 uses
  %i.xi = fsub float 1.000000e+00, %i.xh
  br label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i

_ZN4pbrt12FrDielectricEff.exit.thread.i.i:        ; preds = %bb.s, %_ZN4pbrt12FrDielectricEff.exit.i.i
  %.055.i.i = phi float [ %i.xi, %bb.s ], [ %i.xa, %_ZN4pbrt12FrDielectricEff.exit.i.i ] ; 2 uses
  %.0.i.i = phi float [ %i.xh, %bb.s ], [ %i.wz, %_ZN4pbrt12FrDielectricEff.exit.i.i ] ; 2 uses
  %i.xj = fcmp oeq float %.0.i.i, 0.000000e+00
  %i.xk = fcmp oeq float %.055.i.i, 0.000000e+00
  %or.cond.i.i = and i1 %i.xk, %i.xj
  br i1 %or.cond.i.i, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread

_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread: ; preds = %bb.r, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i
  %.0.i.i1126 = phi float [ %.0.i.i, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i ], [ 1.000000e+00, %bb.r ] ; 3 uses
  %.055.i.i1125 = phi float [ %.055.i.i, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i ], [ 0.000000e+00, %bb.r ] ; 3 uses
  %i.xl = fadd float %.0.i.i1126, %.055.i.i1125   ; 2 uses
  %i.xm = fdiv float %.0.i.i1126, %i.xl           ; 2 uses
  %i.xn = fcmp olt float %.sroa.01.0.vec.extract.i.i584, %i.xm
  %i.xo = fneg <2 x float> %i.vw                  ; 3 uses
  br i1 %i.xn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread
  %i.xp = fdiv float %.0.i.i1126, %i.we
  %.sroa.076.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.xp, i64 0
  %.sroa.076.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.076.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i

bb.u:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread
  %i.xq = fneg float %i.wa
  %i.xr = fdiv float %.055.i.i1125, %i.we
  %.sroa.063.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.xr, i64 0
  %.sroa.063.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.063.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xs = fdiv float %.055.i.i1125, %i.xl
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.u, %bb.t
  %.sroa.17.0.ph.i = phi float [ %i.xq, %bb.u ], [ %i.wa, %bb.t ] ; 2 uses
  %.sroa.22.0.ph.i = phi float [ %i.xs, %bb.u ], [ %i.xm, %bb.t ] ; 3 uses
  %.sroa.9.0.ph.i = phi <2 x float> [ %.sroa.063.4.vec.insert.i.i, %bb.u ], [ %.sroa.076.4.vec.insert.i.i, %bb.t ] ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.9.0.ph.i, i64 0
  %i.xt = fcmp oeq float %.sroa.0.0.vec.extract.i, 0.000000e+00
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.9.0.ph.i, i64 1
  %i.xu = fcmp oeq float %.sroa.0.4.vec.extract.i, 0.000000e+00
  %or.cond17.i.not79.i = and i1 %i.xt, %i.xu
  %i.xv = fcmp oeq float %.sroa.22.0.ph.i, 0.000000e+00
  %or.cond.i603 = or i1 %i.xv, %or.cond17.i.not79.i
  br i1 %or.cond.i603, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.xw = shufflevector <2 x float> %.sroa.9.0.ph.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %foldExtExtBinop1201 = fmul <2 x float> %i.vc, %i.xo
  %shift1203 = shufflevector <2 x float> %foldExtExtBinop1201, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xx = fmul <2 x float> %i.vw, %i.vc
  %foldExtExtBinop1204 = fsub <2 x float> %shift1203, %i.xx
  %i.xy = extractelement <2 x float> %foldExtExtBinop1204, i64 0
  %i.xz = insertelement <2 x float> poison, float %.sroa.17.0.ph.i, i64 0
  %i.ya = shufflevector <2 x float> %i.xz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yb = fmul <2 x float> %i.vb, %i.ya
  %i.yc = fmul float %.sroa.26.0.copyload.i.i.i600, %.sroa.17.0.ph.i
  %i.yd = shufflevector <2 x float> %i.xo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ye = fmul <2 x float> %.sroa.021.0.copyload.i.i.i586, %i.yd
  %i.yf = shufflevector <2 x float> %i.xo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yg = fmul <2 x float> %.sroa.013.0.copyload.i.i.i593, %i.yf
  %i.yh = fadd <2 x float> %i.ye, %i.yg
  %i.yi = fadd <2 x float> %i.yb, %i.yh           ; 3 uses
  %i.yj = fadd float %i.yc, %i.xy                 ; 6 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.yk, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !74
  %i.yl = fmul float %.sroa.17.0, %i.yj           ; 2 uses
  %i.ym = extractelement <2 x float> %i.yi, i64 1 ; 3 uses
  %i.yn = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.ym, float %i.yl)
  %i.yo = fneg float %i.yl
  %i.yp = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.yj, float %i.yo)
  %i.yq = fadd float %i.yn, %i.yp
  %i.yr = extractelement <2 x float> %i.yi, i64 0 ; 3 uses
  %i.ys = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.yr, float %i.yq)
  %i.yt = call noundef float @llvm.fabs.f32(float %i.ys)
  %i.yu = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.yv = fmul <4 x float> %i.xw, %i.yu
  %i.yw = insertelement <4 x float> poison, float %i.yt, i64 0
  %i.yx = shufflevector <4 x float> %i.yw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yy = fmul <4 x float> %i.yx, %i.yv
  %i.yz = insertelement <4 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.za = shufflevector <4 x float> %i.yz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zb = fdiv <4 x float> %i.yy, %i.za           ; 7 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0911.0.copyload = load <4 x float>, ptr %i.zc, align 8, !tbaa !74 ; 6 uses
  %i.zd = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ze = insertelement <2 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.zf = shufflevector <2 x float> %i.ze, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zg = fdiv <2 x float> %i.zd, %i.zf
  %i.zh = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.zi = fdiv <2 x float> %i.zh, %i.zf
  %i.zj = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.zk = load float, ptr %i.zj, align 8, !tbaa !1957 ; 5 uses
  %i.zl = extractelement <4 x float> %i.zb, i64 0
  %i.zm = fmul float %i.zk, %i.zl
  %i.zn = extractelement <4 x float> %i.zb, i64 1
  %i.zo = fmul float %i.zk, %i.zn
  %i.zp = extractelement <4 x float> %i.zb, i64 2
  %i.zq = fmul float %i.zk, %i.zp
  %i.zr = extractelement <4 x float> %i.zb, i64 3
  %i.zs = fmul float %i.zk, %i.zr
  %shift1206 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1207 = fadd <4 x float> %.sroa.0911.0.copyload, %shift1206
  %shift1209 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1210 = fadd <4 x float> %shift1209, %foldExtExtBinop1207
  %shift1212 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1213 = fadd <4 x float> %shift1212, %foldExtExtBinop1210
  %i.zt = extractelement <4 x float> %foldExtExtBinop1213, i64 0
  %i.zu = fmul float %i.zt, 2.500000e-01          ; 4 uses
  %i.zv = fdiv float %i.zm, %i.zu                 ; 2 uses
  %i.zw = fdiv float %i.zo, %i.zu                 ; 2 uses
  %i.zx = fdiv float %i.zq, %i.zu                 ; 2 uses
  %i.zy = fdiv float %i.zs, %i.zu                 ; 2 uses
  %i.zz = fcmp olt float %i.zv, %i.zw
  %.sroa.speculated.i = select i1 %i.zz, float %i.zw, float %i.zv ; 2 uses
  %i.aaa = fcmp olt float %.sroa.speculated.i, %i.zx
  %.sroa.speculated.1.i = select i1 %i.aaa, float %i.zx, float %.sroa.speculated.i ; 2 uses
  %i.aab = fcmp olt float %.sroa.speculated.1.i, %i.zy
  %.sroa.speculated.2.i = select i1 %i.aab, float %i.zy, float %.sroa.speculated.1.i ; 2 uses
  %i.aac = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.aac, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.aad = load i32, ptr %i.pq, align 8, !tbaa !1949
  %i.aae = icmp sgt i32 %i.aad, 0
  br i1 %i.aae, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aaf = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.aag = fcmp ogt float %i.aaf, 0.000000e+00
end_hunk_19
