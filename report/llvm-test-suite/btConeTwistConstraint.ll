inline.NumInlined: 921
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_:bb.a
  %i.tc = fadd float %i.sx, 1.000000e+00
  %i.td = fmul float %i.tc, 2.000000e+00
  %i.te = call noundef float @sqrtf(float noundef %i.td) #18, !tbaa !4 ; 2 uses
  %i.tf = fdiv float 1.000000e+00, %i.te          ; 2 uses
  %i.tg = insertelement <2 x float> poison, float %i.tb, i64 0
  %i.th = fneg <2 x float> %i.ss
  %i.ti = shufflevector <2 x float> %i.tg, <2 x float> %i.th, <2 x i32> <i32 0, i32 2>
  %i.tj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ss, <2 x float> zeroinitializer, <2 x float> %i.ti)
  %i.tk = insertelement <2 x float> poison, float %i.tf, i64 0
  %i.tl = shufflevector <2 x float> %i.tk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tm = fmul <2 x float> %i.tj, %i.tl
  %i.tn = fmul float %i.ta, %i.tf
  %i.to = fmul float %i.te, 5.000000e-01
  %.sroa.526.8.vec.insert29.i = insertelement <2 x float> poison, float %i.tn, i64 0
  %.sroa.526.12.vec.insert31.i = insertelement <2 x float> %.sroa.526.8.vec.insert29.i, float %i.to, i64 1
  br label %_Z15shortestArcQuatRK9btVector3S1_.exit

_Z15shortestArcQuatRK9btVector3S1_.exit:          ; preds = %bb.e, %bb.f
  %.sroa.020.0.i = phi <2 x float> [ %i.tm, %bb.f ], [ <float -0.000000e+00, float 1.000000e+00>, %bb.e ] ; 6 uses
  %.sroa.526.0.i = phi <2 x float> [ %.sroa.526.12.vec.insert31.i, %bb.f ], [ zeroinitializer, %bb.e ] ; 4 uses
  %.sroa.0379.0.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 0 ; 2 uses
  %foldExtExtBinop569 = fmul <2 x float> %.sroa.020.0.i, %.sroa.020.0.i
  %i.tp = extractelement <2 x float> %foldExtExtBinop569, i64 1
  %i.tq = call float @llvm.fmuladd.f32(float %.sroa.0379.0.vec.extract, float %.sroa.0379.0.vec.extract, float %i.tp)
  %.sroa.11.8.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 0 ; 2 uses
  %i.tr = call float @llvm.fmuladd.f32(float %.sroa.11.8.vec.extract, float %.sroa.11.8.vec.extract, float %i.tq)
  %.sroa.11.12.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 1 ; 3 uses
  %i.ts = call noundef float @llvm.fmuladd.f32(float %.sroa.11.12.vec.extract, float %.sroa.11.12.vec.extract, float %i.tr)
  %sqrt.i.i149 = call noundef float @llvm.sqrt.f32(float %i.ts)
  %i.tt = fdiv float 1.000000e+00, %sqrt.i.i149   ; 2 uses
  %i.tu = fmul float %.sroa.11.12.vec.extract, %i.tt ; 2 uses
  %i.tv = shufflevector <2 x float> %i.ra, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.tw = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> %.sroa.020.0.i, <2 x i32> <i32 0, i32 2>
  %i.tx = insertelement <2 x float> poison, float %i.tt, i64 0
  %i.ty = shufflevector <2 x float> %i.tx, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.tz = fmul <2 x float> %i.tw, %i.ty           ; 4 uses
  %i.ua = extractelement <2 x float> %i.tz, i64 0 ; 4 uses
  %i.ub = shufflevector <2 x float> %.sroa.020.0.i, <2 x float> %.sroa.526.0.i, <2 x i32> <i32 1, i32 2>
  %i.uc = fmul <2 x float> %i.ub, %i.ty           ; 6 uses
  %i.ud = fneg <2 x float> %i.ty
  %i.ue = fmul <2 x float> %.sroa.020.0.i, %i.ud  ; 2 uses
  %i.uf = fneg float %i.ua
  %i.ug = fneg <2 x float> %i.uc
  %i.uh = shufflevector <2 x float> %i.qr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ui = fmul <2 x float> %i.uh, %i.ue
  %i.uj = insertelement <2 x float> poison, float %i.tu, i64 0
  %i.uk = shufflevector <2 x float> %i.uj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ul = shufflevector <2 x float> %i.qn, <2 x float> %i.ra, <2 x i32> <i32 1, i32 3>
  %i.um = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uk, <2 x float> %i.ul, <2 x float> %i.ui)
  %i.un = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ug, <2 x float> %i.qn, <2 x float> %i.um)
  %i.uo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tz, <2 x float> %i.rf, <2 x float> %i.un) ; 4 uses
  %i.up = extractelement <2 x float> %i.tz, i64 1 ; 4 uses
  %i.uq = fmul float %i.qo, %i.uf
  %i.ur = fmul float %i.qv, %i.up
  %i.us = insertelement <2 x float> %i.re, float %i.qo, i64 0
  %i.ut = insertelement <2 x float> poison, float %i.ur, i64 0
  %i.uu = insertelement <2 x float> %i.ut, float %i.uq, i64 1
  %i.uv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uk, <2 x float> %i.us, <2 x float> %i.uu)
  %i.uw = shufflevector <2 x float> %i.uc, <2 x float> %i.ue, <2 x i32> <i32 0, i32 2>
  %i.ux = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uw, <2 x float> %i.tv, <2 x float> %i.uv)
  %i.uy = shufflevector <2 x float> %i.tz, <2 x float> %i.uc, <2 x i32> <i32 0, i32 2>
  %i.uz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uy, <2 x float> %i.qn, <2 x float> %i.ux) ; 3 uses
  %foldExtExtBinop571 = fmul <2 x float> %i.uo, %i.uo
  %i.va = extractelement <2 x float> %foldExtExtBinop571, i64 1
  %i.vb = extractelement <2 x float> %i.uo, i64 0 ; 2 uses
  %i.vc = call float @llvm.fmuladd.f32(float %i.vb, float %i.vb, float %i.va)
  %i.vd = extractelement <2 x float> %i.uz, i64 1 ; 2 uses
  %i.ve = call float @llvm.fmuladd.f32(float %i.vd, float %i.vd, float %i.vc)
  %i.vf = extractelement <2 x float> %i.uz, i64 0 ; 2 uses
  %i.vg = call noundef float @llvm.fmuladd.f32(float %i.vf, float %i.vf, float %i.ve)
  %sqrt.i.i162 = call noundef float @llvm.sqrt.f32(float %i.vg)
  %i.vh = fdiv float 1.000000e+00, %sqrt.i.i162
  %i.vi = insertelement <2 x float> poison, float %i.vh, i64 0
  %i.vj = shufflevector <2 x float> %i.vi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vk = fmul <2 x float> %i.uo, %i.vj           ; 2 uses
  %i.vl = fmul <2 x float> %i.uz, %i.vj           ; 3 uses
  %i.vm = shufflevector <2 x float> %i.vl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !40 ; 11 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.vq = load float, ptr %i.vp, align 8, !tbaa !41 ; 5 uses
  %i.vr = fcmp ult float %i.vo, %i.vq             ; 2 uses
  br i1 %i.vr, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_Z15shortestArcQuatRK9btVector3S1_.exit
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.vt = load float, ptr %i.vs, align 8, !tbaa !42 ; 3 uses
  %i.vu = fcmp ult float %i.vt, %i.vq
  br i1 %i.vu, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.vv = call noundef float @acosf(float noundef %i.tu) #18, !tbaa !4
  %i.vw = fmul float %i.vv, 2.000000e+00          ; 4 uses
  %i.vx = fcmp ogt float %i.vw, f0x34000000
  br i1 %i.vx, label %bb.i, label %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit

bb.i:                                             ; preds = %bb.h
  %i.vy = extractelement <2 x float> %i.uc, i64 0
  %foldExtExtBinop573 = fmul <2 x float> %i.uc, %i.uc
  %i.vz = extractelement <2 x float> %foldExtExtBinop573, i64 0
  %i.wa = call float @llvm.fmuladd.f32(float %i.up, float %i.up, float %i.vz)
  %i.wb = call noundef float @llvm.fmuladd.f32(float %i.ua, float %i.ua, float %i.wa)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.wb)
  %i.wc = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.wd = fmul float %i.up, %i.wc                 ; 2 uses
  %i.we = fmul float %i.vy, %i.wc                 ; 5 uses
  %i.wf = fmul float %i.ua, %i.wc                 ; 4 uses
  %i.wg = call noundef float @llvm.fabs.f32(float %i.we)
  %i.wh = fcmp ogt float %i.wg, f0x34000000
  br i1 %i.wh, label %bb.j, label %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit

bb.j:                                             ; preds = %bb.i
  %i.wi = fmul float %i.wf, %i.wf
  %i.wj = fmul nnan float %i.we, %i.we
  %i.wk = fdiv float %i.wi, %i.wj                 ; 2 uses
  %i.wl = insertelement <2 x float> poison, float %i.vo, i64 0
  %i.wm = insertelement <2 x float> %i.wl, float %i.vt, i64 1 ; 2 uses
  %i.wn = fmul <2 x float> %i.wm, %i.wm
  %i.wo = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.wk, i64 0
  %i.wp = fdiv <2 x float> %i.wo, %i.wn           ; 2 uses
  %shift575 = shufflevector <2 x float> %i.wp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop576 = fadd <2 x float> %i.wp, %shift575
  %i.wq = extractelement <2 x float> %foldExtExtBinop576, i64 0
  %i.wr = fadd float %i.wk, 1.000000e+00
  %i.ws = fdiv float %i.wr, %i.wq
  %sqrt.i = call float @llvm.sqrt.f32(float %i.ws)
  br label %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit

_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0348.0 = phi float [ %i.wd, %bb.j ], [ %i.wd, %bb.i ], [ undef, %bb.h ] ; 4 uses
  %.sroa.6350.0 = phi float [ %i.we, %bb.j ], [ %i.we, %bb.i ], [ undef, %bb.h ] ; 7 uses
  %.sroa.10352.0 = phi float [ %i.wf, %bb.j ], [ %i.wf, %bb.i ], [ undef, %bb.h ] ; 3 uses
  %.0 = phi float [ %sqrt.i, %bb.j ], [ %i.vo, %bb.i ], [ 0.000000e+00, %bb.h ] ; 4 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !59 ; 4 uses
  %i.wv = fmul float %.0, %i.wu
  %i.ww = fcmp ogt float %i.vw, %i.wv
  br i1 %i.ww, label %._crit_edge, label %bb.ac

._crit_edge:                                      ; preds = %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit
  store i8 1, ptr %i.d, align 2, !tbaa !30
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.wy = fcmp olt float %i.vw, %.0
  %i.wz = fcmp olt float %i.wu, f0x3F7FFFFE
  %or.cond535 = and i1 %i.wy, %i.wz
  %i.xa = fneg float %.0                          ; 2 uses
  %i.xb = call float @llvm.fmuladd.f32(float %i.xa, float %i.wu, float %i.vw) ; 2 uses
  %i.xc = call float @llvm.fmuladd.f32(float %i.xa, float %i.wu, float %.0)
  %i.xd = fdiv float %i.xb, %i.xc
  %storemerge = select i1 %or.cond535, float %i.xd, float 1.000000e+00
  store float %storemerge, ptr %i.wx, align 8, !tbaa !60
  store float %i.xb, ptr %i.a, align 8, !tbaa !58
  %i.xe = call noundef float @llvm.fabs.f32(float %.sroa.6350.0)
  %i.xf = fcmp ogt float %i.xe, f0x34000000
  br i1 %i.xf, label %bb.k, label %_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3.exit

bb.k:                                             ; preds = %._crit_edge
  %i.xg = fneg float %.sroa.10352.0
  %i.xh = fdiv float %i.xg, %.sroa.6350.0
  %i.xi = fdiv float %i.vt, %i.vo
  %i.xj = fmul float %i.xi, %i.xh
  %i.xk = fcmp olt float %.sroa.10352.0, 0.000000e+00
  %i.xl = fmul float %.sroa.6350.0, %i.xj
  %i.xm = call noundef float @llvm.fabs.f32(float %i.xl) ; 2 uses
  %i.xn = fneg float %i.xm
  %.0.i = select i1 %i.xk, float %i.xm, float %i.xn ; 3 uses
  %i.xo = fneg float %.0.i
  %i.xp = fmul nnan float %.sroa.6350.0, %.sroa.6350.0
  %i.xq = call float @llvm.fmuladd.f32(float %.sroa.0348.0, float %.sroa.0348.0, float %i.xp)
  %i.xr = call float @llvm.fmuladd.f32(float %.0.i, float %.0.i, float %i.xq)
  %sqrt.i.i.i166 = call noundef float @llvm.sqrt.f32(float %i.xr)
  %i.xs = fdiv float 1.000000e+00, %sqrt.i.i.i166 ; 3 uses
  %i.xt = fmul float %.sroa.0348.0, %i.xs
  %i.xu = fmul float %.sroa.6350.0, %i.xs
  %i.xv = fmul float %i.xs, %i.xo
  br label %_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3.exit

_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3.exit: ; preds = %._crit_edge, %bb.k
  %.sroa.0348.1 = phi float [ %i.xt, %bb.k ], [ %.sroa.0348.0, %._crit_edge ] ; 3 uses
  %.sroa.6350.1 = phi float [ %i.xu, %bb.k ], [ %.sroa.6350.0, %._crit_edge ] ; 3 uses
  %.sroa.10352.1 = phi float [ %i.xv, %bb.k ], [ %.sroa.10352.0, %._crit_edge ] ; 3 uses
  %i.xw = fneg float %.sroa.0348.1                ; 2 uses
  %i.xx = fneg float %.sroa.6350.1                ; 2 uses
  %i.xy = fneg float %.sroa.10352.1               ; 2 uses
  %i.xz = fmul float %i.pi, %i.xy
  %i.ya = call float @llvm.fmuladd.f32(float %i.ph, float %i.xw, float %i.xz)
  %i.yb = call float @llvm.fmuladd.f32(float %i.pj, float %.sroa.6350.1, float %i.ya) ; 3 uses
  %i.yc = fmul float %i.pj, %i.xw
  %i.yd = call float @llvm.fmuladd.f32(float %i.ph, float %i.xx, float %i.yc)
  %i.ye = call float @llvm.fmuladd.f32(float %i.pf, float %.sroa.10352.1, float %i.yd) ; 3 uses
  %i.yf = fmul float %i.pf, %i.xx
  %i.yg = call float @llvm.fmuladd.f32(float %i.ph, float %i.xy, float %i.yf)
  %i.yh = call float @llvm.fmuladd.f32(float %i.pi, float %.sroa.0348.1, float %i.yg) ; 3 uses
  %i.yi = fmul float %i.pi, %.sroa.6350.1
  %i.yj = call float @llvm.fmuladd.f32(float %i.pf, float %.sroa.0348.1, float %i.yi)
  %i.yk = call float @llvm.fmuladd.f32(float %i.pj, float %.sroa.10352.1, float %i.yj) ; 3 uses
  %i.yl = fmul float %i.ph, %i.yb
  %i.ym = extractelement <2 x float> %i.pr, i64 0 ; 2 uses
  %i.yn = call float @llvm.fmuladd.f32(float %i.yk, float %i.ym, float %i.yl)
  %i.yo = call float @llvm.fmuladd.f32(float %i.ye, float %i.ps, float %i.yn)
  %i.yp = call float @llvm.fmuladd.f32(float %i.yh, float %i.pi, float %i.yo)
  %i.yq = fmul float %i.ph, %i.ye
  %i.yr = call float @llvm.fmuladd.f32(float %i.yk, float %i.pt, float %i.yq)
  %i.ys = call float @llvm.fmuladd.f32(float %i.yh, float %i.ym, float %i.yr)
  %i.yt = call float @llvm.fmuladd.f32(float %i.yb, float %i.pj, float %i.ys) ; 2 uses
  %i.yu = fmul float %i.ph, %i.yh
  %i.yv = call float @llvm.fmuladd.f32(float %i.yk, float %i.ps, float %i.yu)
  %i.yw = call float @llvm.fmuladd.f32(float %i.yb, float %i.pt, float %i.yv)
  %i.yx = call float @llvm.fmuladd.f32(float %i.ye, float %i.pf, float %i.yw) ; 2 uses
  %.sroa.020.0.vec.insert.i172 = insertelement <2 x float> poison, float %i.yp, i64 0 ; 2 uses
  %.sroa.020.4.vec.insert.i173 = insertelement <2 x float> %.sroa.020.0.vec.insert.i172, float %i.yt, i64 1
  %.sroa.3.12.vec.insert.i174 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.yx, i64 0
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 508
  store <2 x float> %.sroa.020.4.vec.insert.i173, ptr %i.yy, align 4
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 516
  store <2 x float> %.sroa.3.12.vec.insert.i174, ptr %.sroa.428.0..sroa_idx, align 4, !tbaa !24
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 584
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yz, i8 0, i64 16, i1 false)
  %i.za = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.zb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.zc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !27
  %i.ze = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !27
  %i.zg = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !27
  %i.zi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.zj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.zk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !27
  %i.zm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !27
  %i.zo = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !27
  %i.zq = load <2 x float>, ptr %3, align 4, !tbaa !27 ; 2 uses
  %i.zr = load <2 x float>, ptr %i.za, align 4, !tbaa !27 ; 2 uses
  %i.zs = load <2 x float>, ptr %i.zb, align 4, !tbaa !27 ; 2 uses
  %i.zt = load <2 x float>, ptr %i.zi, align 4, !tbaa !27 ; 2 uses
  %i.zu = shufflevector <2 x float> %i.zr, <2 x float> %i.zt, <2 x i32> <i32 0, i32 2>
  %i.zv = insertelement <2 x float> poison, float %i.yt, i64 0
  %i.zw = shufflevector <2 x float> %i.zv, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.zx = fmul <2 x float> %i.zu, %i.zw
  %i.zy = load <2 x float>, ptr %4, align 4, !tbaa !27 ; 2 uses
  %i.zz = shufflevector <2 x float> %i.zq, <2 x float> %i.zy, <2 x i32> <i32 0, i32 2>
  %i.aaa = shufflevector <2 x float> %.sroa.020.0.vec.insert.i172, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.aab = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zz, <2 x float> %i.aaa, <2 x float> %i.zx)
  %i.aac = load <2 x float>, ptr %i.zj, align 4, !tbaa !27 ; 2 uses
  %i.aad = shufflevector <2 x float> %i.zs, <2 x float> %i.aac, <2 x i32> <i32 0, i32 2>
  %i.aae = insertelement <2 x float> poison, float %i.yx, i64 0
  %i.aaf = shufflevector <2 x float> %i.aae, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.aag = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aad, <2 x float> %i.aaf, <2 x float> %i.aab)
  %i.aah = shufflevector <2 x float> %i.zr, <2 x float> %i.zt, <2 x i32> <i32 1, i32 3>
  %i.aai = fmul <2 x float> %i.zw, %i.aah
  %i.aaj = shufflevector <2 x float> %i.zq, <2 x float> %i.zy, <2 x i32> <i32 1, i32 3>
  %i.aak = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaj, <2 x float> %i.aaa, <2 x float> %i.aai)
  %i.aal = shufflevector <2 x float> %i.zs, <2 x float> %i.aac, <2 x i32> <i32 1, i32 3>
  %i.aam = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aal, <2 x float> %i.aaf, <2 x float> %i.aak)
  %i.aan = insertelement <2 x float> poison, float %i.zf, i64 0
  %i.aao = insertelement <2 x float> %i.aan, float %i.zn, i64 1
  %i.aap = fmul <2 x float> %i.zw, %i.aao
  %i.aaq = insertelement <2 x float> poison, float %i.zd, i64 0
  %i.aar = insertelement <2 x float> %i.aaq, float %i.zl, i64 1
  %i.aas = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aar, <2 x float> %i.aaa, <2 x float> %i.aap)
  %i.aat = insertelement <2 x float> poison, float %i.zh, i64 0
  %i.aau = insertelement <2 x float> %i.aat, float %i.zp, i64 1
  %i.aav = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aau, <2 x float> %i.aaf, <2 x float> %i.aas)
  %i.aaw = fmul <2 x float> %i.zw, %i.aam
  %i.aax = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaa, <2 x float> %i.aag, <2 x float> %i.aaw)
  %i.aay = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaf, <2 x float> %i.aav, <2 x float> %i.aax) ; 2 uses
  %shift578 = shufflevector <2 x float> %i.aay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop579 = fadd <2 x float> %i.aay, %shift578
  %i.aaz = extractelement <2 x float> %foldExtExtBinop579, i64 0
  %i.aba = fdiv float 1.000000e+00, %i.aaz
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 540
  store float %i.aba, ptr %i.abb, align 4, !tbaa !61
  br label %bb.ac

bb.l:                                             ; preds = %bb.g, %_Z15shortestArcQuatRK9btVector3S1_.exit
  %i.abc = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.abh = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.abi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !27 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.abl = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.abm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.abn = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.abo = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.abq = load float, ptr %i.abn, align 4, !tbaa !27 ; 2 uses
  %i.abr = load float, ptr %i.abo, align 4, !tbaa !27 ; 2 uses
  %i.abs = load float, ptr %i.abp, align 4, !tbaa !27 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.abv = load float, ptr %i.ol, align 4, !tbaa !27 ; 2 uses
  %i.abw = load float, ptr %i.abt, align 4, !tbaa !27 ; 2 uses
  %i.abx = load float, ptr %i.abu, align 4, !tbaa !27 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.abz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !27
  %i.acb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.acc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !27
  %i.ace = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.acf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !27
  %i.ach = load float, ptr %1, align 4, !tbaa !27
  %i.aci = load <2 x float>, ptr %i.abe, align 4, !tbaa !27 ; 2 uses
  %i.acj = load float, ptr %i.abf, align 4, !tbaa !27
  %i.ack = load float, ptr %i.abk, align 4, !tbaa !27
  %i.acl = load <2 x float>, ptr %i.abl, align 4, !tbaa !27 ; 2 uses
  %i.acm = load float, ptr %i.abm, align 4, !tbaa !27
  %i.acn = shufflevector <2 x float> %i.acl, <2 x float> %i.aci, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.aco = insertelement <2 x float> poison, float %i.ack, i64 0
  %i.acp = insertelement <2 x float> %i.aco, float %i.ach, i64 1 ; 3 uses
  %i.acq = shufflevector <2 x float> %i.acl, <2 x float> %i.aci, <2 x i32> <i32 1, i32 3>
  %i.acr = load float, ptr %i.abh, align 4, !tbaa !27 ; 2 uses
  %i.acs = load float, ptr %i.abg, align 4, !tbaa !27 ; 2 uses
  %i.act = insertelement <2 x float> poison, float %i.acm, i64 0
  %i.acu = insertelement <2 x float> %i.act, float %i.acj, i64 1 ; 2 uses
  %i.acv = insertelement <2 x float> poison, float %i.abr, i64 0
  %i.acw = shufflevector <2 x float> %i.acv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acx = fmul <2 x float> %i.acn, %i.acw
  %i.acy = fmul float %i.acr, %i.abr
  %i.acz = insertelement <2 x float> poison, float %i.abq, i64 0
  %i.ada = shufflevector <2 x float> %i.acz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acp, <2 x float> %i.ada, <2 x float> %i.acx)
  %i.adc = call float @llvm.fmuladd.f32(float %i.acs, float %i.abq, float %i.acy)
  %i.add = insertelement <2 x float> poison, float %i.abs, i64 0
  %i.ade = shufflevector <2 x float> %i.add, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acu, <2 x float> %i.ade, <2 x float> %i.adb) ; 3 uses
  %i.adg = call noundef float @llvm.fmuladd.f32(float %i.abj, float %i.abs, float %i.adc) ; 2 uses
  %i.adh = load float, ptr %i.aby, align 4, !tbaa !27
  %i.adi = load float, ptr %2, align 4, !tbaa !27
  %i.adj = load <2 x float>, ptr %i.acb, align 4, !tbaa !27 ; 2 uses
  %i.adk = load <2 x float>, ptr %i.ace, align 4, !tbaa !27 ; 2 uses
  %i.adl = insertelement <2 x float> poison, float %i.abw, i64 0
  %i.adm = shufflevector <2 x float> %i.adl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adn = shufflevector <2 x float> %i.adj, <2 x float> %i.adk, <2 x i32> <i32 1, i32 3>
  %i.ado = fmul <2 x float> %i.adm, %i.adn
  %i.adp = fmul float %i.abw, %i.adh
  %i.adq = shufflevector <2 x float> %i.adj, <2 x float> %i.adk, <2 x i32> <i32 0, i32 2>
  %i.adr = insertelement <2 x float> poison, float %i.abv, i64 0
  %i.ads = shufflevector <2 x float> %i.adr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adq, <2 x float> %i.ads, <2 x float> %i.ado)
  %i.adu = call float @llvm.fmuladd.f32(float %i.adi, float %i.abv, float %i.adp)
  %i.adv = insertelement <2 x float> poison, float %i.acd, i64 0
  %i.adw = insertelement <2 x float> %i.adv, float %i.acg, i64 1
  %i.adx = insertelement <2 x float> poison, float %i.abx, i64 0
  %i.ady = shufflevector <2 x float> %i.adx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adw, <2 x float> %i.ady, <2 x float> %i.adt) ; 7 uses
  %i.aea = call noundef float @llvm.fmuladd.f32(float %i.aca, float %i.abx, float %i.adu) ; 6 uses
  %i.aeb = extractelement <2 x float> %i.adz, i64 0 ; 3 uses
  %i.aec = extractelement <2 x float> %i.adz, i64 1 ; 2 uses
  %i.aed = load <2 x float>, ptr %i.ns, align 4, !tbaa !27 ; 3 uses
  %i.aee = load <2 x float>, ptr %i.abc, align 4, !tbaa !27 ; 3 uses
  %i.aef = load <2 x float>, ptr %i.abd, align 4, !tbaa !27 ; 3 uses
  %i.aeg = shufflevector <2 x float> %i.aee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aeh = fmul <2 x float> %i.aeg, %i.acn
  %i.aei = shufflevector <2 x float> %i.aed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aej = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acp, <2 x float> %i.aei, <2 x float> %i.aeh)
  %i.aek = shufflevector <2 x float> %i.aef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ael = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acq, <2 x float> %i.aek, <2 x float> %i.aej) ; 6 uses
  %i.aem = insertelement <2 x float> poison, float %i.acr, i64 0
  %i.aen = shufflevector <2 x float> %i.aem, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aeo = fmul <2 x float> %i.aen, %i.aee
  %i.aep = shufflevector <2 x float> %i.aee, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aeq = fmul <2 x float> %i.acn, %i.aep
  %i.aer = shufflevector <2 x float> %i.aed, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aes = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acp, <2 x float> %i.aer, <2 x float> %i.aeq)
  %i.aet = insertelement <2 x float> poison, float %i.acs, i64 0
  %i.aeu = shufflevector <2 x float> %i.aet, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aev = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aeu, <2 x float> %i.aed, <2 x float> %i.aeo)
  %i.aew = shufflevector <2 x float> %i.aef, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aex = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acu, <2 x float> %i.aew, <2 x float> %i.aes) ; 3 uses
  %i.aey = insertelement <2 x float> poison, float %i.abj, i64 0
  %i.aez = shufflevector <2 x float> %i.aey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aez, <2 x float> %i.aef, <2 x float> %i.aev) ; 4 uses
  %i.afb = shufflevector <2 x float> %i.adz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afc = fmul <2 x float> %i.afa, %i.afb
  %i.afd = insertelement <2 x float> poison, float %i.aea, i64 0
  %i.afe = shufflevector <2 x float> %i.afd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aff = shufflevector <2 x float> %i.ael, <2 x float> %i.aex, <2 x i32> <i32 1, i32 3>
  %i.afg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afe, <2 x float> %i.aff, <2 x float> %i.afc)
  %i.afh = shufflevector <2 x float> %i.adz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.afi = shufflevector <2 x float> %i.ael, <2 x float> %i.aex, <2 x i32> <i32 0, i32 2>
  %i.afj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afh, <2 x float> %i.afi, <2 x float> %i.afg) ; 10 uses
  %i.afk = fmul float %i.adg, %i.aeb
  %i.afl = extractelement <2 x float> %i.adf, i64 1
  %i.afm = call float @llvm.fmuladd.f32(float %i.aea, float %i.afl, float %i.afk)
  %i.afn = extractelement <2 x float> %i.adf, i64 0
  %i.afo = call noundef float @llvm.fmuladd.f32(float %i.aec, float %i.afn, float %i.afm) ; 8 uses
  %i.afp = fcmp olt float %i.vo, %i.vq
  br i1 %i.afp, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.afq = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.afr = load float, ptr %i.afq, align 8, !tbaa !42 ; 8 uses
  %i.afs = fcmp olt float %i.afr, %i.vq
  %i.aft = extractelement <2 x float> %i.afj, i64 1
  %i.afu = call noundef float @llvm.fabs.f32(float %i.aft)
  %i.afv = fcmp olt float %i.afu, f0x34000000     ; 2 uses
  br i1 %i.afs, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.afw = call float @llvm.fabs.f32(float %i.afo)
  %i.afx = fcmp olt float %i.afw, f0x34000000
  %or.cond537 = and i1 %i.afv, %i.afx
  br i1 %or.cond537, label %bb.ac, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.d, align 2, !tbaa !30
  %i.afy = extractelement <2 x float> %i.afa, i64 0 ; 2 uses
  %i.afz = fneg float %i.afy
  %i.aga = extractelement <2 x float> %i.ael, i64 0
  %i.agb = fneg float %i.aga
  %i.agc = extractelement <2 x float> %i.ael, i64 1
  %i.agd = fneg float %i.agc
  %i.age = fmul float %i.aeb, %i.agd
  %i.agf = call float @llvm.fmuladd.f32(float %i.aea, float %i.afy, float %i.age)
  %i.agg = fmul float %i.aea, %i.agb
  %i.agh = fmul float %i.aec, %i.afz
  %i.agi = insertelement <2 x float> poison, float %i.agh, i64 0
  %i.agj = insertelement <2 x float> %i.agi, float %i.agg, i64 1
  %i.agk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adz, <2 x float> %i.ael, <2 x float> %i.agj)
  %i.agl = fneg <2 x float> %i.agk
  %i.agm = fneg float %i.agf
  %.sroa.3.12.vec.insert.i224 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.agm, i64 0
  %i.agn = getelementptr inbounds nuw i8, ptr %0, i64 508
  store <2 x float> %i.agl, ptr %i.agn, align 4
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 516
  store <2 x float> %.sroa.3.12.vec.insert.i224, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !24
  br label %bb.ac

bb.p:                                             ; preds = %bb.m
  br i1 %i.afv, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.d, align 2, !tbaa !30
  %i.ago = fcmp ult float %i.afr, %i.vq
  br i1 %i.ago, label %bb.ab, label %bb.r

end_hunk_0
