Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/surfscatter?download=true
inline.NumInlined: 8253
inline.NumDeleted: 1421
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_:bb.a
  %i.tc = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.td = load float, ptr %i.tc, align 4, !tbaa !230
  %i.te = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !163
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.ri
  store float %i.td, ptr %i.tg, align 4, !tbaa !155
  %i.th = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.ti = load float, ptr %i.th, align 4, !tbaa !231
  %i.tj = getelementptr inbounds nuw i8, ptr %i.h, i64 376
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !164
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.ri
  store float %i.ti, ptr %i.tl, align 4, !tbaa !155
  %i.tm = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !232
  %i.to = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !233
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.ri
  store float %i.tn, ptr %i.tq, align 4, !tbaa !155
  %i.tr = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !234
  %i.tt = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !160
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.ri
  store float %i.ts, ptr %i.tv, align 4, !tbaa !155
  %i.tw = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !235
  %i.ty = getelementptr inbounds nuw i8, ptr %i.h, i64 408
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
  %27 = fcmp une <2 x float> %.sroa.9.0.ph.i, zeroinitializer
  %28 = bitcast <2 x i1> %27 to i2
  %29 = icmp eq i2 %28, 0
  %i.xu = fcmp oeq float %.sroa.22.0.ph.i, 0.000000e+00
  %or.cond.i603 = or i1 %i.xu, %29
  br i1 %or.cond.i603, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.xv = shufflevector <2 x float> %.sroa.9.0.ph.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %foldExtExtBinop1201 = fmul <2 x float> %i.vd, %i.xp
  %shift1203 = shufflevector <2 x float> %foldExtExtBinop1201, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xw = fmul <2 x float> %i.vx, %i.vd
  %foldExtExtBinop1204 = fsub <2 x float> %shift1203, %i.xw
  %i.xx = extractelement <2 x float> %foldExtExtBinop1204, i64 0
  %i.xy = insertelement <2 x float> poison, float %.sroa.17.0.ph.i, i64 0
  %i.xz = shufflevector <2 x float> %i.xy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ya = fmul <2 x float> %i.vc, %i.xz
  %i.yb = fmul float %.sroa.26.0.copyload.i.i.i600, %.sroa.17.0.ph.i
  %i.yc = shufflevector <2 x float> %i.xp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yd = fmul <2 x float> %.sroa.021.0.copyload.i.i.i586, %i.yc
  %i.ye = shufflevector <2 x float> %i.xp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yf = fmul <2 x float> %.sroa.013.0.copyload.i.i.i593, %i.ye
  %i.yg = fadd <2 x float> %i.yd, %i.yf
  %i.yh = fadd <2 x float> %i.ya, %i.yg           ; 3 uses
  %i.yi = fadd float %i.yb, %i.xx                 ; 6 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.yj, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !71
  %i.yk = fmul float %.sroa.17.0, %i.yi           ; 2 uses
  %i.yl = extractelement <2 x float> %i.yh, i64 1 ; 3 uses
  %i.ym = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.yl, float %i.yk)
  %i.yn = fneg float %i.yk
  %i.yo = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.yi, float %i.yn)
  %i.yp = fadd float %i.ym, %i.yo
  %i.yq = extractelement <2 x float> %i.yh, i64 0 ; 3 uses
  %i.yr = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.yq, float %i.yp)
  %i.ys = call noundef float @llvm.fabs.f32(float %i.yr)
  %i.yt = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.yu = fmul <4 x float> %i.xv, %i.yt
  %i.yv = insertelement <4 x float> poison, float %i.ys, i64 0
  %i.yw = shufflevector <4 x float> %i.yv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yx = fmul <4 x float> %i.yw, %i.yu
  %i.yy = insertelement <4 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.yz = shufflevector <4 x float> %i.yy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.za = fdiv <4 x float> %i.yx, %i.yz           ; 7 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0911.0.copyload = load <4 x float>, ptr %i.zb, align 8, !tbaa !71 ; 6 uses
  %i.zc = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.zd = insertelement <2 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.ze = shufflevector <2 x float> %i.zd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zf = fdiv <2 x float> %i.zc, %i.ze
  %i.zg = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.zh = fdiv <2 x float> %i.zg, %i.ze
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.zj = load float, ptr %i.zi, align 8, !tbaa !646 ; 5 uses
  %i.zk = extractelement <4 x float> %i.za, i64 0
  %i.zl = fmul float %i.zj, %i.zk
  %i.zm = extractelement <4 x float> %i.za, i64 1
  %i.zn = fmul float %i.zj, %i.zm
  %i.zo = extractelement <4 x float> %i.za, i64 2
  %i.zp = fmul float %i.zj, %i.zo
  %i.zq = extractelement <4 x float> %i.za, i64 3
  %i.zr = fmul float %i.zj, %i.zq
  %shift1206 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1207 = fadd <4 x float> %.sroa.0911.0.copyload, %shift1206
  %shift1209 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1210 = fadd <4 x float> %shift1209, %foldExtExtBinop1207
  %shift1212 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1213 = fadd <4 x float> %shift1212, %foldExtExtBinop1210
  %i.zs = extractelement <4 x float> %foldExtExtBinop1213, i64 0
  %i.zt = fmul float %i.zs, 2.500000e-01          ; 4 uses
  %i.zu = fdiv float %i.zl, %i.zt                 ; 2 uses
  %i.zv = fdiv float %i.zn, %i.zt                 ; 2 uses
  %i.zw = fdiv float %i.zp, %i.zt                 ; 2 uses
  %i.zx = fdiv float %i.zr, %i.zt                 ; 2 uses
  %i.zy = fcmp olt float %i.zu, %i.zv
  %.sroa.speculated.i = select i1 %i.zy, float %i.zv, float %i.zu ; 2 uses
  %i.zz = fcmp olt float %.sroa.speculated.i, %i.zw
  %.sroa.speculated.1.i = select i1 %i.zz, float %i.zw, float %.sroa.speculated.i ; 2 uses
  %i.aaa = fcmp olt float %.sroa.speculated.1.i, %i.zx
  %.sroa.speculated.2.i = select i1 %i.aaa, float %i.zx, float %.sroa.speculated.1.i ; 2 uses
  %i.aab = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.aab, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.aac = load i32, ptr %i.pr, align 8, !tbaa !638
  %i.aad = icmp sgt i32 %i.aac, 0
  br i1 %i.aad, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aae = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.aaf = fcmp ogt float %i.aae, 0.000000e+00
  %.sroa.speculated = select i1 %i.aaf, float %i.aae, float 0.000000e+00 ; 2 uses
  %i.aag = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.aag, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aah = fsub float 1.000000e+00, %.sroa.speculated
  %i.aai = insertelement <4 x float> poison, float %i.aah, i64 0
  %i.aaj = shufflevector <4 x float> %i.aai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aak = fdiv <4 x float> %i.za, %i.aaj
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w, %bb.v
  %.sroa.0929.0 = phi <4 x float> [ %i.za, %bb.v ], [ %i.aak, %bb.y ], [ %i.za, %bb.w ], [ zeroinitializer, %bb.x ]
  %.sroa.0929.0.fr = freeze <4 x float> %.sroa.0929.0 ; 3 uses
  %i.aal = fcmp une <4 x float> %.sroa.0929.0.fr, zeroinitializer
  %i.aam = bitcast <4 x i1> %i.aal to i4
  %.not1215 = icmp eq i4 %i.aam, 0
  br i1 %.not1215, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705: ; preds = %bb.z
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mb, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.aan = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !642
  %i.aap = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mc, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %i.yh, float %i.yi) ; 2 uses
  %.fca.0.extract.i709 = extractvalue { <2 x float>, float } %i.aap, 0 ; 2 uses
  %.fca.1.extract.i710 = extractvalue { <2 x float>, float } %i.aap, 1
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.aar = load i8, ptr %i.aaq, align 2, !tbaa !245, !range !11, !noundef !12
  %i.aas = trunc nuw i8 %i.aar to i1
  %.sroa.094.0.copyload.pre = load <2 x float>, ptr %i.mb, align 8 ; 2 uses
  %.sroa.295.0.copyload.pre = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 3 uses
  %.sroa.01.0.vec.extract.i712 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 0 ; 2 uses
  %.sroa.01.4.vec.extract.i714 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 1 ; 2 uses
  br i1 %i.aas, label %bb.aa, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge

bb.aa:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705
  %i.aat = fmul float %i.yi, %.sroa.295.0.copyload.pre ; 2 uses
  %i.aau = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i714, float %i.yl, float %i.aat)
  %i.aav = fneg float %i.aat
  %i.aaw = call noundef float @llvm.fma.f32(float %.sroa.295.0.copyload.pre, float %i.yi, float %i.aav)
  %i.aax = fadd float %i.aau, %i.aaw
  %i.aay = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i712, float %i.yq, float %i.aax)
  %i.aaz = fcmp ogt float %i.aay, 0.000000e+00
  %.v = select i1 %i.aaz, i64 248, i64 240
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !177
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705, %bb.aa
  %.sroa.17876.0 = phi i64 [ %i.abb, %bb.aa ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705 ]
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.abd = load i32, ptr %i.abc, align 8, !tbaa !644
  %i.abe = icmp ne i32 %i.abd, 0
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
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !621 ; 31 uses
  %i.abh = load i32, ptr %i.pr, align 8, !tbaa !638
  %i.abi = add nsw i32 %i.abh, 1
  %i.abj = load i32, ptr %i.vf, align 4, !tbaa !648
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abg, i64 400
  %i.abl = atomicrmw add ptr %i.abk, i32 1 monotonic, align 4
  %.sroa.0871.0.vec.extract = extractelement <2 x float> %.fca.0.extract.i709, i64 0
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abg, i64 24
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !222
  %i.abo = sext i32 %i.abl to i64                 ; 30 uses
  %i.abp = getelementptr inbounds [4 x i8], ptr %i.abn, i64 %i.abo
  store float %.sroa.0871.0.vec.extract, ptr %i.abp, align 4, !tbaa !155
  %.sroa.0871.4.vec.extract = extractelement <2 x float> %.fca.0.extract.i709, i64 1
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abg, i64 32
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !224
  %i.abs = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.abo
  store float %.sroa.0871.4.vec.extract, ptr %i.abs, align 4, !tbaa !155
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abg, i64 40
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !226
  %i.abv = getelementptr inbounds [4 x i8], ptr %i.abu, i64 %i.abo
  store float %.fca.1.extract.i710, ptr %i.abv, align 4, !tbaa !155
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abg, i64 56
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !160
  %i.aby = getelementptr inbounds [4 x i8], ptr %i.abx, i64 %i.abo
  store float %i.yq, ptr %i.aby, align 4, !tbaa !155
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abg, i64 64
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !161
  %i.acb = getelementptr inbounds [4 x i8], ptr %i.aca, i64 %i.abo
  store float %i.yl, ptr %i.acb, align 4, !tbaa !155
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abg, i64 72
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !162
  %i.ace = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.abo
  store float %i.yi, ptr %i.ace, align 4, !tbaa !155
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abg, i64 80
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !247
  %i.ach = getelementptr inbounds [4 x i8], ptr %i.acg, i64 %i.abo
  store float %i.aao, ptr %i.ach, align 4, !tbaa !155
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abg, i64 88
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !248
  %i.ack = getelementptr inbounds [8 x i8], ptr %i.acj, i64 %i.abo
  store i64 %.sroa.17876.0, ptr %i.ack, align 8, !tbaa !177
  %i.acl = getelementptr inbounds nuw i8, ptr %i.abg, i64 96
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !251
  %i.acn = getelementptr inbounds [4 x i8], ptr %i.acm, i64 %i.abo
  store i32 %i.abi, ptr %i.acn, align 4, !tbaa !166
end_hunk_0
begin_hunk_1_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_:bb.a
  %i.tc = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.td = load float, ptr %i.tc, align 4, !tbaa !230
  %i.te = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !163
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.ri
  store float %i.td, ptr %i.tg, align 4, !tbaa !155
  %i.th = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.ti = load float, ptr %i.th, align 4, !tbaa !231
  %i.tj = getelementptr inbounds nuw i8, ptr %i.h, i64 376
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !164
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.ri
  store float %i.ti, ptr %i.tl, align 4, !tbaa !155
  %i.tm = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !232
  %i.to = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !233
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.ri
  store float %i.tn, ptr %i.tq, align 4, !tbaa !155
  %i.tr = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !234
  %i.tt = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !160
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.ri
  store float %i.ts, ptr %i.tv, align 4, !tbaa !155
  %i.tw = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !235
  %i.ty = getelementptr inbounds nuw i8, ptr %i.h, i64 408
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
  %27 = fcmp une <2 x float> %.sroa.9.0.ph.i, zeroinitializer
  %28 = bitcast <2 x i1> %27 to i2
  %29 = icmp eq i2 %28, 0
  %i.xu = fcmp oeq float %.sroa.22.0.ph.i, 0.000000e+00
  %or.cond.i603 = or i1 %i.xu, %29
  br i1 %or.cond.i603, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.xv = shufflevector <2 x float> %.sroa.9.0.ph.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %foldExtExtBinop1201 = fmul <2 x float> %i.vd, %i.xp
  %shift1203 = shufflevector <2 x float> %foldExtExtBinop1201, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xw = fmul <2 x float> %i.vx, %i.vd
  %foldExtExtBinop1204 = fsub <2 x float> %shift1203, %i.xw
  %i.xx = extractelement <2 x float> %foldExtExtBinop1204, i64 0
  %i.xy = insertelement <2 x float> poison, float %.sroa.17.0.ph.i, i64 0
  %i.xz = shufflevector <2 x float> %i.xy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ya = fmul <2 x float> %i.vc, %i.xz
  %i.yb = fmul float %.sroa.26.0.copyload.i.i.i600, %.sroa.17.0.ph.i
  %i.yc = shufflevector <2 x float> %i.xp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yd = fmul <2 x float> %.sroa.021.0.copyload.i.i.i586, %i.yc
  %i.ye = shufflevector <2 x float> %i.xp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yf = fmul <2 x float> %.sroa.013.0.copyload.i.i.i593, %i.ye
  %i.yg = fadd <2 x float> %i.yd, %i.yf
  %i.yh = fadd <2 x float> %i.ya, %i.yg           ; 3 uses
  %i.yi = fadd float %i.yb, %i.xx                 ; 6 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.yj, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !71
  %i.yk = fmul float %.sroa.17.0, %i.yi           ; 2 uses
  %i.yl = extractelement <2 x float> %i.yh, i64 1 ; 3 uses
  %i.ym = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.yl, float %i.yk)
  %i.yn = fneg float %i.yk
  %i.yo = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.yi, float %i.yn)
  %i.yp = fadd float %i.ym, %i.yo
  %i.yq = extractelement <2 x float> %i.yh, i64 0 ; 3 uses
  %i.yr = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.yq, float %i.yp)
  %i.ys = call noundef float @llvm.fabs.f32(float %i.yr)
  %i.yt = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.yu = fmul <4 x float> %i.xv, %i.yt
  %i.yv = insertelement <4 x float> poison, float %i.ys, i64 0
  %i.yw = shufflevector <4 x float> %i.yv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yx = fmul <4 x float> %i.yw, %i.yu
  %i.yy = insertelement <4 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.yz = shufflevector <4 x float> %i.yy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.za = fdiv <4 x float> %i.yx, %i.yz           ; 7 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0911.0.copyload = load <4 x float>, ptr %i.zb, align 8, !tbaa !71 ; 6 uses
  %i.zc = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.zd = insertelement <2 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.ze = shufflevector <2 x float> %i.zd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zf = fdiv <2 x float> %i.zc, %i.ze
  %i.zg = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.zh = fdiv <2 x float> %i.zg, %i.ze
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.zj = load float, ptr %i.zi, align 8, !tbaa !646 ; 5 uses
  %i.zk = extractelement <4 x float> %i.za, i64 0
  %i.zl = fmul float %i.zj, %i.zk
  %i.zm = extractelement <4 x float> %i.za, i64 1
  %i.zn = fmul float %i.zj, %i.zm
  %i.zo = extractelement <4 x float> %i.za, i64 2
  %i.zp = fmul float %i.zj, %i.zo
  %i.zq = extractelement <4 x float> %i.za, i64 3
  %i.zr = fmul float %i.zj, %i.zq
  %shift1206 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1207 = fadd <4 x float> %.sroa.0911.0.copyload, %shift1206
  %shift1209 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1210 = fadd <4 x float> %shift1209, %foldExtExtBinop1207
  %shift1212 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1213 = fadd <4 x float> %shift1212, %foldExtExtBinop1210
  %i.zs = extractelement <4 x float> %foldExtExtBinop1213, i64 0
  %i.zt = fmul float %i.zs, 2.500000e-01          ; 4 uses
  %i.zu = fdiv float %i.zl, %i.zt                 ; 2 uses
  %i.zv = fdiv float %i.zn, %i.zt                 ; 2 uses
  %i.zw = fdiv float %i.zp, %i.zt                 ; 2 uses
  %i.zx = fdiv float %i.zr, %i.zt                 ; 2 uses
  %i.zy = fcmp olt float %i.zu, %i.zv
  %.sroa.speculated.i = select i1 %i.zy, float %i.zv, float %i.zu ; 2 uses
  %i.zz = fcmp olt float %.sroa.speculated.i, %i.zw
  %.sroa.speculated.1.i = select i1 %i.zz, float %i.zw, float %.sroa.speculated.i ; 2 uses
  %i.aaa = fcmp olt float %.sroa.speculated.1.i, %i.zx
  %.sroa.speculated.2.i = select i1 %i.aaa, float %i.zx, float %.sroa.speculated.1.i ; 2 uses
  %i.aab = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.aab, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.aac = load i32, ptr %i.pr, align 8, !tbaa !638
  %i.aad = icmp sgt i32 %i.aac, 0
  br i1 %i.aad, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aae = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.aaf = fcmp ogt float %i.aae, 0.000000e+00
  %.sroa.speculated = select i1 %i.aaf, float %i.aae, float 0.000000e+00 ; 2 uses
  %i.aag = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.aag, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aah = fsub float 1.000000e+00, %.sroa.speculated
  %i.aai = insertelement <4 x float> poison, float %i.aah, i64 0
  %i.aaj = shufflevector <4 x float> %i.aai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aak = fdiv <4 x float> %i.za, %i.aaj
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w, %bb.v
  %.sroa.0929.0 = phi <4 x float> [ %i.za, %bb.v ], [ %i.aak, %bb.y ], [ %i.za, %bb.w ], [ zeroinitializer, %bb.x ]
  %.sroa.0929.0.fr = freeze <4 x float> %.sroa.0929.0 ; 3 uses
  %i.aal = fcmp une <4 x float> %.sroa.0929.0.fr, zeroinitializer
  %i.aam = bitcast <4 x i1> %i.aal to i4
  %.not1215 = icmp eq i4 %i.aam, 0
  br i1 %.not1215, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705: ; preds = %bb.z
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mb, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.aan = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !642
  %i.aap = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mc, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %i.yh, float %i.yi) ; 2 uses
  %.fca.0.extract.i709 = extractvalue { <2 x float>, float } %i.aap, 0 ; 2 uses
  %.fca.1.extract.i710 = extractvalue { <2 x float>, float } %i.aap, 1
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.aar = load i8, ptr %i.aaq, align 2, !tbaa !245, !range !11, !noundef !12
  %i.aas = trunc nuw i8 %i.aar to i1
  %.sroa.094.0.copyload.pre = load <2 x float>, ptr %i.mb, align 8 ; 2 uses
  %.sroa.295.0.copyload.pre = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 3 uses
  %.sroa.01.0.vec.extract.i712 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 0 ; 2 uses
  %.sroa.01.4.vec.extract.i714 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 1 ; 2 uses
  br i1 %i.aas, label %bb.aa, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge

bb.aa:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705
  %i.aat = fmul float %i.yi, %.sroa.295.0.copyload.pre ; 2 uses
  %i.aau = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i714, float %i.yl, float %i.aat)
  %i.aav = fneg float %i.aat
  %i.aaw = call noundef float @llvm.fma.f32(float %.sroa.295.0.copyload.pre, float %i.yi, float %i.aav)
  %i.aax = fadd float %i.aau, %i.aaw
  %i.aay = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i712, float %i.yq, float %i.aax)
  %i.aaz = fcmp ogt float %i.aay, 0.000000e+00
  %.v = select i1 %i.aaz, i64 248, i64 240
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !177
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705, %bb.aa
  %.sroa.17876.0 = phi i64 [ %i.abb, %bb.aa ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705 ]
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.abd = load i32, ptr %i.abc, align 8, !tbaa !644
  %i.abe = icmp ne i32 %i.abd, 0
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
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !624 ; 31 uses
  %i.abh = load i32, ptr %i.pr, align 8, !tbaa !638
  %i.abi = add nsw i32 %i.abh, 1
  %i.abj = load i32, ptr %i.vf, align 4, !tbaa !648
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abg, i64 400
  %i.abl = atomicrmw add ptr %i.abk, i32 1 monotonic, align 4
  %.sroa.0871.0.vec.extract = extractelement <2 x float> %.fca.0.extract.i709, i64 0
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abg, i64 24
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !222
  %i.abo = sext i32 %i.abl to i64                 ; 30 uses
  %i.abp = getelementptr inbounds [4 x i8], ptr %i.abn, i64 %i.abo
  store float %.sroa.0871.0.vec.extract, ptr %i.abp, align 4, !tbaa !155
  %.sroa.0871.4.vec.extract = extractelement <2 x float> %.fca.0.extract.i709, i64 1
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abg, i64 32
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !224
  %i.abs = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.abo
  store float %.sroa.0871.4.vec.extract, ptr %i.abs, align 4, !tbaa !155
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abg, i64 40
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !226
  %i.abv = getelementptr inbounds [4 x i8], ptr %i.abu, i64 %i.abo
  store float %.fca.1.extract.i710, ptr %i.abv, align 4, !tbaa !155
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abg, i64 56
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !160
  %i.aby = getelementptr inbounds [4 x i8], ptr %i.abx, i64 %i.abo
  store float %i.yq, ptr %i.aby, align 4, !tbaa !155
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abg, i64 64
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !161
  %i.acb = getelementptr inbounds [4 x i8], ptr %i.aca, i64 %i.abo
  store float %i.yl, ptr %i.acb, align 4, !tbaa !155
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abg, i64 72
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !162
  %i.ace = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.abo
  store float %i.yi, ptr %i.ace, align 4, !tbaa !155
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abg, i64 80
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !247
  %i.ach = getelementptr inbounds [4 x i8], ptr %i.acg, i64 %i.abo
  store float %i.aao, ptr %i.ach, align 4, !tbaa !155
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abg, i64 88
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !248
  %i.ack = getelementptr inbounds [8 x i8], ptr %i.acj, i64 %i.abo
  store i64 %.sroa.17876.0, ptr %i.ack, align 8, !tbaa !177
  %i.acl = getelementptr inbounds nuw i8, ptr %i.abg, i64 96
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !251
  %i.acn = getelementptr inbounds [4 x i8], ptr %i.acm, i64 %i.abo
  store i32 %i.abi, ptr %i.acn, align 4, !tbaa !166
end_hunk_1
