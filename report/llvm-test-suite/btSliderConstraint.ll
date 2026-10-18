Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSliderConstraint?download=true
inline.NumInlined: 530
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN18btSliderConstraint16buildJacobianIntER11btRigidBodyS1_RK11btTransformS4_:bb.a
  %i.st = shufflevector <2 x float> %i.ss, <2 x float> poison, <2 x i32> zeroinitializer
  %i.su = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.si, <2 x float> %i.st, <2 x float> %i.sr) ; 4 uses
  %i.sv = fmul float %i.rl, %i.sk
  %i.sw = tail call float @llvm.fmuladd.f32(float %i.rk, float %i.sj, float %i.sv)
  %i.sx = tail call noundef float @llvm.fmuladd.f32(float %i.rm, float %i.sl, float %i.sw) ; 3 uses
  %.sroa.3.12.vec.insert.i20.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sx, i64 0
  store <2 x float> %i.su, ptr %i.ro, align 8
  %.sroa.44.0..sroa_idx.i93.1 = getelementptr inbounds nuw i8, ptr %0, i64 712
  store <2 x float> %.sroa.3.12.vec.insert.i20.i.1, ptr %.sroa.44.0..sroa_idx.i93.1, align 8, !tbaa !25
  %i.sy = extractelement <2 x float> %i.sc, i64 0
  %i.sz = load <2 x float>, ptr %i.je, align 4, !tbaa !9
  %i.ta = fmul <2 x float> %i.sc, %i.sz           ; 3 uses
  %i.tb = load float, ptr %i.jj, align 4, !tbaa !9
  %i.tc = fmul float %i.sf, %i.tb                 ; 2 uses
  %.sroa.3.12.vec.insert.i25.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.tc, i64 0
  store <2 x float> %i.ta, ptr %i.rp, align 8
  %.sroa.42.0..sroa_idx.i94.1 = getelementptr inbounds nuw i8, ptr %0, i64 728
  store <2 x float> %.sroa.3.12.vec.insert.i25.i.1, ptr %.sroa.42.0..sroa_idx.i94.1, align 8, !tbaa !25
  %i.td = extractelement <2 x float> %i.su, i64 0
  %i.te = load <2 x float>, ptr %i.jg, align 4, !tbaa !9
  %i.tf = fmul <2 x float> %i.su, %i.te           ; 3 uses
  %i.tg = load float, ptr %i.jk, align 4, !tbaa !9
  %i.th = fmul float %i.sx, %i.tg                 ; 2 uses
  %.sroa.3.12.vec.insert.i30.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.th, i64 0
  store <2 x float> %i.tf, ptr %i.rq, align 8
  %.sroa.4.0..sroa_idx.i95.1 = getelementptr inbounds nuw i8, ptr %0, i64 744
  store <2 x float> %.sroa.3.12.vec.insert.i30.i.1, ptr %.sroa.4.0..sroa_idx.i95.1, align 8, !tbaa !25
  %foldExtExtBinop210 = fmul <2 x float> %i.sc, %i.ta
  %i.ti = extractelement <2 x float> %foldExtExtBinop210, i64 1
  %i.tj = extractelement <2 x float> %i.ta, i64 0
  %i.tk = tail call float @llvm.fmuladd.f32(float %i.tj, float %i.sy, float %i.ti)
  %i.tl = tail call noundef float @llvm.fmuladd.f32(float %i.tc, float %i.sf, float %i.tk)
  %foldExtExtBinop212 = fmul <2 x float> %i.su, %i.tf
  %i.tm = extractelement <2 x float> %foldExtExtBinop212, i64 1
  %i.tn = extractelement <2 x float> %i.tf, i64 0
  %i.to = tail call float @llvm.fmuladd.f32(float %i.tn, float %i.td, float %i.tm)
  %i.tp = tail call noundef float @llvm.fmuladd.f32(float %i.th, float %i.sx, float %i.to)
  %i.tq = fadd float %i.tl, %i.tp
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float %i.tq, ptr %i.tr, align 8, !tbaa !88
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.tv = load float, ptr %i.ts, align 4, !tbaa !9 ; 3 uses
  %i.tw = load float, ptr %i.tt, align 4, !tbaa !9 ; 3 uses
  %i.tx = load float, ptr %i.tu, align 4, !tbaa !9 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.tz = load float, ptr %i.e, align 8, !tbaa !9, !noalias !89
  %i.ua = load float, ptr %i.n, align 8, !tbaa !9, !noalias !89
  %i.ub = load float, ptr %i.r, align 8, !tbaa !9, !noalias !89
  %i.uc = load float, ptr %i.df, align 8, !tbaa !9, !noalias !90
  %i.ud = load float, ptr %i.dn, align 8, !tbaa !9, !noalias !90
  %i.ue = load float, ptr %i.dq, align 8, !tbaa !9, !noalias !90
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 772
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 804
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.uj = load <2 x float>, ptr %i.a, align 8, !tbaa !9, !noalias !89
  %i.uk = load <2 x float>, ptr %i.l, align 8, !tbaa !9, !noalias !89
  %i.ul = load <2 x float>, ptr %i.p, align 8, !tbaa !9, !noalias !89
  %i.um = insertelement <2 x float> poison, float %i.tw, i64 0
  %i.un = shufflevector <2 x float> %i.um, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uo = fmul <2 x float> %i.un, %i.uk
  %i.up = insertelement <2 x float> poison, float %i.tv, i64 0
  %i.uq = shufflevector <2 x float> %i.up, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ur = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uj, <2 x float> %i.uq, <2 x float> %i.uo)
  %i.us = insertelement <2 x float> poison, float %i.tx, i64 0
  %i.ut = shufflevector <2 x float> %i.us, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ul, <2 x float> %i.ut, <2 x float> %i.ur) ; 4 uses
  %i.uv = fmul float %i.tw, %i.ua
  %i.uw = tail call float @llvm.fmuladd.f32(float %i.tz, float %i.tv, float %i.uv)
  %i.ux = tail call noundef float @llvm.fmuladd.f32(float %i.ub, float %i.tx, float %i.uw) ; 3 uses
  %.sroa.3.12.vec.insert.i.i91.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ux, i64 0
  %.sroa.46.0..sroa_idx.i92.2 = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.uy = load <2 x float>, ptr %i.db, align 8, !tbaa !9, !noalias !90
  %i.uz = load <2 x float>, ptr %i.dl, align 8, !tbaa !9, !noalias !90
  %i.va = load <2 x float>, ptr %i.do, align 8, !tbaa !9, !noalias !90
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.ty, i8 0, i64 16, i1 false)
  store <2 x float> %i.uu, ptr %i.uf, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i91.2, ptr %.sroa.46.0..sroa_idx.i92.2, align 4, !tbaa !25
  %i.vb = fneg float %i.tv                        ; 2 uses
  %i.vc = fneg float %i.tw                        ; 2 uses
  %i.vd = fneg float %i.tx                        ; 2 uses
  %i.ve = insertelement <2 x float> poison, float %i.vc, i64 0
  %i.vf = shufflevector <2 x float> %i.ve, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vg = fmul <2 x float> %i.uz, %i.vf
  %i.vh = insertelement <2 x float> poison, float %i.vb, i64 0
  %i.vi = shufflevector <2 x float> %i.vh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uy, <2 x float> %i.vi, <2 x float> %i.vg)
  %i.vk = insertelement <2 x float> poison, float %i.vd, i64 0
  %i.vl = shufflevector <2 x float> %i.vk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.va, <2 x float> %i.vl, <2 x float> %i.vj) ; 4 uses
  %i.vn = fmul float %i.ud, %i.vc
  %i.vo = tail call float @llvm.fmuladd.f32(float %i.uc, float %i.vb, float %i.vn)
  %i.vp = tail call noundef float @llvm.fmuladd.f32(float %i.ue, float %i.vd, float %i.vo) ; 3 uses
  %.sroa.3.12.vec.insert.i20.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vp, i64 0
  store <2 x float> %i.vm, ptr %i.ug, align 4
  %.sroa.44.0..sroa_idx.i93.2 = getelementptr inbounds nuw i8, ptr %0, i64 796
  store <2 x float> %.sroa.3.12.vec.insert.i20.i.2, ptr %.sroa.44.0..sroa_idx.i93.2, align 4, !tbaa !25
  %i.vq = extractelement <2 x float> %i.uu, i64 0
  %i.vr = load <2 x float>, ptr %i.je, align 4, !tbaa !9
  %i.vs = fmul <2 x float> %i.uu, %i.vr           ; 3 uses
  %i.vt = load float, ptr %i.jj, align 4, !tbaa !9
  %i.vu = fmul float %i.ux, %i.vt                 ; 2 uses
  %.sroa.3.12.vec.insert.i25.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vu, i64 0
  store <2 x float> %i.vs, ptr %i.uh, align 4
  %.sroa.42.0..sroa_idx.i94.2 = getelementptr inbounds nuw i8, ptr %0, i64 812
  store <2 x float> %.sroa.3.12.vec.insert.i25.i.2, ptr %.sroa.42.0..sroa_idx.i94.2, align 4, !tbaa !25
  %i.vv = extractelement <2 x float> %i.vm, i64 0
  %i.vw = load <2 x float>, ptr %i.jg, align 4, !tbaa !9
  %i.vx = fmul <2 x float> %i.vm, %i.vw           ; 3 uses
  %i.vy = load float, ptr %i.jk, align 4, !tbaa !9
  %i.vz = fmul float %i.vp, %i.vy                 ; 2 uses
  %.sroa.3.12.vec.insert.i30.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vz, i64 0
  store <2 x float> %i.vx, ptr %i.ui, align 4
  %.sroa.4.0..sroa_idx.i95.2 = getelementptr inbounds nuw i8, ptr %0, i64 828
  store <2 x float> %.sroa.3.12.vec.insert.i30.i.2, ptr %.sroa.4.0..sroa_idx.i95.2, align 4, !tbaa !25
  %foldExtExtBinop214 = fmul <2 x float> %i.uu, %i.vs
  %i.wa = extractelement <2 x float> %foldExtExtBinop214, i64 1
  %i.wb = extractelement <2 x float> %i.vs, i64 0
  %i.wc = tail call float @llvm.fmuladd.f32(float %i.wb, float %i.vq, float %i.wa)
  %i.wd = tail call noundef float @llvm.fmuladd.f32(float %i.vu, float %i.ux, float %i.wc)
  %foldExtExtBinop216 = fmul <2 x float> %i.vm, %i.vx
  %i.we = extractelement <2 x float> %foldExtExtBinop216, i64 1
  %i.wf = extractelement <2 x float> %i.vx, i64 0
  %i.wg = tail call float @llvm.fmuladd.f32(float %i.wf, float %i.vv, float %i.we)
  %i.wh = tail call noundef float @llvm.fmuladd.f32(float %i.vz, float %i.vp, float %i.wg)
  %i.wi = fadd float %i.wd, %i.wh
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 836
  store float %i.wi, ptr %i.wj, align 4, !tbaa !88
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 2 uses
  store float 0.000000e+00, ptr %i.wk, align 4, !tbaa !44
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 321 ; 2 uses
  store i8 0, ptr %i.wl, align 1, !tbaa !45
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.wn = load float, ptr %i.wm, align 8, !tbaa !46 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !47 ; 2 uses
  %i.wq = fcmp ugt float %i.wn, %i.wp
  br i1 %i.wq, label %_ZN18btSliderConstraint13testAngLimitsEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN18btSliderConstraint13testLinLimitsEv.exit
  %i.wr = load float, ptr %.sroa.4169.0..sroa_idx, align 8, !tbaa !9
  %i.ws = load float, ptr %.sroa.9173.16..sroa_idx, align 8, !tbaa !9
  %i.wt = load float, ptr %.sroa.14177.32..sroa_idx, align 8, !tbaa !9
  %i.wu = load float, ptr %.sroa.5170.0..sroa_idx, align 4, !tbaa !9
  %i.wv = load float, ptr %.sroa.10174.16..sroa_idx, align 4, !tbaa !9
  %i.ww = load float, ptr %.sroa.15178.32..sroa_idx, align 4, !tbaa !9
  %i.wx = load float, ptr %.sroa.4160.0..sroa_idx, align 8, !tbaa !9 ; 2 uses
  %i.wy = load float, ptr %.sroa.9164.16..sroa_idx, align 8, !tbaa !9 ; 2 uses
  %i.wz = load float, ptr %.sroa.14.32..sroa_idx, align 8, !tbaa !9 ; 2 uses
  %i.xa = fmul float %i.wv, %i.wy
  %i.xb = tail call float @llvm.fmuladd.f32(float %i.wx, float %i.wu, float %i.xa)
  %i.xc = tail call noundef float @llvm.fmuladd.f32(float %i.wz, float %i.ww, float %i.xb) ; 2 uses
  %i.xd = fmul float %i.ws, %i.wy
  %i.xe = tail call float @llvm.fmuladd.f32(float %i.wx, float %i.wr, float %i.xd)
  %i.xf = tail call noundef float @llvm.fmuladd.f32(float %i.wz, float %i.wt, float %i.xe) ; 5 uses
  %i.xg = tail call noundef float @llvm.fabs.f32(float %i.xc) ; 4 uses
  %i.xh = fcmp ult float %i.xf, 0.000000e+00
  br i1 %i.xh, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.xi = fsub float %i.xf, %i.xg
  %i.xj = fadd float %i.xf, %i.xg
  %i.xk = fdiv float %i.xi, %i.xj
  %i.xl = tail call float @llvm.fmuladd.f32(float %i.xk, float f0xBF490FDB, float f0x3F490FDB)
  br label %_Z11btAtan2Fastff.exit.i

bb.l:                                             ; preds = %bb.j
  %i.xm = fadd float %i.xf, %i.xg
  %i.xn = fsub float %i.xg, %i.xf
  %i.xo = fdiv float %i.xm, %i.xn
  %i.xp = tail call float @llvm.fmuladd.f32(float %i.xo, float f0xBF490FDB, float f0x4016CBE4)
  br label %_Z11btAtan2Fastff.exit.i

_Z11btAtan2Fastff.exit.i:                         ; preds = %bb.l, %bb.k
  %.0.i.i = phi float [ %i.xl, %bb.k ], [ %i.xp, %bb.l ] ; 2 uses
  %i.xq = fcmp olt float %i.xc, 0.000000e+00
  %i.xr = fneg float %.0.i.i
  %i.xs = select i1 %i.xq, float %i.xr, float %.0.i.i
  %i.xt = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.xs, float noundef %i.wn, float noundef %i.wp) ; 4 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store float %i.xt, ptr %i.xu, align 8, !tbaa !48
  %i.xv = load float, ptr %i.wm, align 8, !tbaa !46 ; 2 uses
  %i.xw = fcmp olt float %i.xt, %i.xv
  br i1 %i.xw, label %.sink.split.i, label %bb.m

bb.m:                                             ; preds = %_Z11btAtan2Fastff.exit.i
  %i.xx = load float, ptr %i.wo, align 4, !tbaa !47 ; 2 uses
  %i.xy = fcmp ogt float %i.xt, %i.xx
  br i1 %i.xy, label %.sink.split.i, label %_ZN18btSliderConstraint13testAngLimitsEv.exit

.sink.split.i:                                    ; preds = %bb.m, %_Z11btAtan2Fastff.exit.i
  %.sink34.i = phi float [ %i.xv, %_Z11btAtan2Fastff.exit.i ], [ %i.xx, %bb.m ]
  %i.xz = fsub float %i.xt, %.sink34.i
  store float %i.xz, ptr %i.wk, align 4, !tbaa !44
  store i8 1, ptr %i.wl, align 1, !tbaa !45
  br label %_ZN18btSliderConstraint13testAngLimitsEv.exit

_ZN18btSliderConstraint13testAngLimitsEv.exit:    ; preds = %_ZN18btSliderConstraint13testLinLimitsEv.exit, %bb.m, %.sink.split.i
  %5 = load float, ptr %i.at, align 4, !tbaa !9   ; 5 uses
  %6 = load float, ptr %i.bz, align 4, !tbaa !9   ; 5 uses
  %7 = load float, ptr %i.cx, align 4, !tbaa !9   ; 6 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 312
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 300
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.ye = getelementptr inbounds nuw i8, ptr %1, i64 288
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.yf = getelementptr inbounds nuw i8, ptr %1, i64 320
  %11 = load float, ptr %i.yf, align 8, !tbaa !9
  %i.yg = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.yh = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.yi = getelementptr inbounds nuw i8, ptr %2, i64 312
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 284
  %i.yj = getelementptr inbounds nuw i8, ptr %2, i64 300
  %13 = load float, ptr %i.ya, align 8, !tbaa !9
  %14 = load float, ptr %i.yb, align 8, !tbaa !9
  %15 = fmul float %6, %14
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %5, float %15)
  %17 = load float, ptr %i.yc, align 8, !tbaa !9
  %18 = tail call noundef float @llvm.fmuladd.f32(float %17, float %7, float %16)
  %19 = load float, ptr %8, align 4, !tbaa !9
  %20 = load float, ptr %i.yd, align 4, !tbaa !9
  %21 = fmul float %6, %20
  %22 = tail call float @llvm.fmuladd.f32(float %19, float %5, float %21)
  %i.yk = load float, ptr %9, align 4, !tbaa !9
  %23 = tail call noundef float @llvm.fmuladd.f32(float %i.yk, float %7, float %22)
  %24 = load <4 x float>, ptr %i.ye, align 8
  %25 = load <4 x float>, ptr %10, align 8
  %26 = load float, ptr %i.yg, align 8, !tbaa !9
  %i.yl = load float, ptr %i.yh, align 8, !tbaa !9
  %27 = load float, ptr %12, align 4, !tbaa !9
  %i.ym = load float, ptr %i.yj, align 4, !tbaa !9
  %28 = insertelement <4 x float> poison, float %6, i64 0
  %29 = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> zeroinitializer
  %30 = insertelement <4 x float> %25, float %23, i64 1
  %31 = insertelement <4 x float> %30, float %i.yl, i64 2
  %32 = insertelement <4 x float> %31, float %i.ym, i64 3
  %33 = fmul <4 x float> %29, %32
  %34 = insertelement <4 x float> poison, float %5, i64 0
  %35 = shufflevector <4 x float> %34, <4 x float> poison, <4 x i32> zeroinitializer
  %36 = insertelement <4 x float> %24, float %18, i64 1
  %37 = insertelement <4 x float> %36, float %26, i64 2
  %38 = insertelement <4 x float> %37, float %27, i64 3
  %39 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> %38, <4 x float> %33) ; 2 uses
  %40 = extractelement <4 x float> %39, i64 1
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 288
  %42 = load float, ptr %41, align 8, !tbaa !9
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 304
  %44 = load float, ptr %43, align 8, !tbaa !9
  %i.yn = load <2 x float>, ptr %i.yi, align 8, !tbaa !9
  %45 = fmul float %6, %44
  %46 = shufflevector <2 x float> %i.yn, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %47 = insertelement <4 x float> %46, float %11, i64 0
  %48 = insertelement <4 x float> %47, float %42, i64 1
  %49 = insertelement <4 x float> poison, float %7, i64 0
  %50 = insertelement <4 x float> %49, float %5, i64 1
  %51 = shufflevector <4 x float> %50, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %52 = insertelement <4 x float> %39, float %45, i64 1
  %53 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %48, <4 x float> %51, <4 x float> %52) ; 4 uses
  %54 = extractelement <4 x float> %53, i64 0
  %55 = tail call noundef float @llvm.fmuladd.f32(float %7, float %54, float %40)
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 320
  %57 = load float, ptr %56, align 8, !tbaa !9
  %58 = extractelement <4 x float> %53, i64 1
  %59 = tail call noundef float @llvm.fmuladd.f32(float %57, float %7, float %58)
  %60 = extractelement <4 x float> %53, i64 3
  %61 = fmul float %6, %60
  %62 = extractelement <4 x float> %53, i64 2
  %63 = tail call float @llvm.fmuladd.f32(float %5, float %62, float %61)
  %64 = tail call noundef float @llvm.fmuladd.f32(float %7, float %59, float %63)
  %65 = fadd float %55, %64
  %i.yo = fdiv float 1.000000e+00, %65
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store float %i.yo, ptr %i.yp, align 8, !tbaa !49
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store float 0.000000e+00, ptr %i.yq, align 8, !tbaa !50
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store float 0.000000e+00, ptr %i.yr, align 8, !tbaa !20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN18btSliderConstraint13testLinLimitsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1148) initializes((320, 321), (1100, 1104)) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  store i8 0, ptr %i.a, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1052 ; 5 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !9  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1100
  store float %i.c, ptr %i.d, align 4, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load float, ptr %i.e, align 8, !tbaa !42 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.h = load float, ptr %i.g, align 4, !tbaa !43 ; 3 uses
  %i.i = fcmp ugt float %i.f, %i.h
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fcmp ogt float %i.c, %i.h
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = fsub float %i.c, %i.h
  store float %i.k, ptr %i.b, align 4, !tbaa !9
  store i8 1, ptr %i.a, align 8, !tbaa !40
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.l = fcmp olt float %i.c, %i.f
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = fsub float %i.c, %i.f
  store float %i.m, ptr %i.b, align 4, !tbaa !9
  store i8 1, ptr %i.a, align 8, !tbaa !40
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !9
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.g
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN18btSliderConstraint13testAngLimitsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1148) initializes((321, 322), (1108, 1112)) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 2 uses
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 321 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !46 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !47 ; 2 uses
  %i.g = fcmp ugt float %i.d, %i.f
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.k = load float, ptr %i.h, align 8, !tbaa !9
  %i.l = load float, ptr %i.i, align 8, !tbaa !9
  %i.m = load float, ptr %i.j, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.q = load float, ptr %i.n, align 4, !tbaa !9
  %i.r = load float, ptr %i.o, align 4, !tbaa !9
  %i.s = load float, ptr %i.p, align 4, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.w = load float, ptr %i.t, align 8, !tbaa !9  ; 2 uses
  %i.x = load float, ptr %i.u, align 8, !tbaa !9  ; 2 uses
  %i.y = load float, ptr %i.v, align 8, !tbaa !9  ; 2 uses
  %i.z = fmul float %i.r, %i.x
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.w, float %i.q, float %i.z)
  %i.ab = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.s, float %i.aa) ; 2 uses
  %i.ac = fmul float %i.l, %i.x
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.w, float %i.k, float %i.ac)
  %i.ae = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.m, float %i.ad) ; 5 uses
  %i.af = tail call noundef float @llvm.fabs.f32(float %i.ab) ; 4 uses
  %i.ag = fcmp ult float %i.ae, 0.000000e+00
  br i1 %i.ag, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = fsub float %i.ae, %i.af
  %i.ai = fadd float %i.ae, %i.af
  %i.aj = fdiv float %i.ah, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float f0xBF490FDB, float f0x3F490FDB)
  br label %_Z11btAtan2Fastff.exit

bb.d:                                             ; preds = %bb.b
  %i.al = fadd float %i.ae, %i.af
  %i.am = fsub float %i.af, %i.ae
  %i.an = fdiv float %i.al, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float f0xBF490FDB, float f0x4016CBE4)
  br label %_Z11btAtan2Fastff.exit

_Z11btAtan2Fastff.exit:                           ; preds = %bb.c, %bb.d
  %.0.i = phi float [ %i.ak, %bb.c ], [ %i.ao, %bb.d ] ; 2 uses
  %i.ap = fcmp olt float %i.ab, 0.000000e+00
  %i.aq = fneg float %.0.i
  %i.ar = select i1 %i.ap, float %i.aq, float %.0.i
  %i.as = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.ar, float noundef %i.d, float noundef %i.f) ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store float %i.as, ptr %i.at, align 8, !tbaa !48
  %i.au = load float, ptr %i.c, align 8, !tbaa !46 ; 2 uses
  %i.av = fcmp olt float %i.as, %i.au
  br i1 %i.av, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %_Z11btAtan2Fastff.exit
  %i.aw = load float, ptr %i.e, align 4, !tbaa !47 ; 2 uses
  %i.ax = fcmp ogt float %i.as, %i.aw
  br i1 %i.ax, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %_Z11btAtan2Fastff.exit
  %.sink34 = phi float [ %i.au, %_Z11btAtan2Fastff.exit ], [ %i.aw, %bb.e ]
  %i.ay = fsub float %i.as, %.sink34
  store float %i.ay, ptr %i.a, align 4, !tbaa !44
  store i8 1, ptr %i.b, align 1, !tbaa !45
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN18btSliderConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !52
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  store i32 4, ptr %1, align 4, !tbaa !52
  store i32 2, ptr %i.d, align 4, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54, !nonnull !32, !align !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55, !nonnull !32, !align !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.g, ptr noundef nonnull align 4 dereferenceable(64) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1052 ; 3 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !9  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1100
  store float %i.m, ptr %i.n, align 4, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.p = load float, ptr %i.o, align 8, !tbaa !42 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.r = load float, ptr %i.q, align 4, !tbaa !43 ; 3 uses
  %i.s = fcmp ugt float %i.p, %i.r
  br i1 %i.s, label %_ZN18btSliderConstraint13testLinLimitsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = fcmp ogt float %i.m, %i.r
  br i1 %i.t, label %_ZN18btSliderConstraint13testLinLimitsEv.exit.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = fcmp olt float %i.m, %i.p
  br i1 %i.u, label %_ZN18btSliderConstraint13testLinLimitsEv.exit.thread.sink.split, label %_ZN18btSliderConstraint13testLinLimitsEv.exit

_ZN18btSliderConstraint13testLinLimitsEv.exit:    ; preds = %bb.c, %bb.e
  store float 0.000000e+00, ptr %i.l, align 4, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.w = load i8, ptr %i.v, align 4, !tbaa !19, !range !31, !noundef !32
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN18btSliderConstraint13testLinLimitsEv.exit.thread, label %bb.f

_ZN18btSliderConstraint13testLinLimitsEv.exit.thread.sink.split: ; preds = %bb.e, %bb.d
  %.sink19 = phi float [ %i.r, %bb.d ], [ %i.p, %bb.e ]
  %i.y = fsub float %i.m, %.sink19
  store float %i.y, ptr %i.l, align 4, !tbaa !9
end_hunk_0
begin_hunk_1_@_Z21btAdjustAngleToLimitsfff:bb.a
  %i.t = fsub float %0, %2
  %i.u = tail call noundef float @fmodf(float noundef %i.t, float noundef f0x40C90FDB) #20, !tbaa !7 ; 5 uses
  %i.v = fcmp olt float %i.u, f0xC0490FDB
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = fadd float %i.u, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit31

bb.m:                                             ; preds = %bb.k
  %i.x = fcmp ogt float %i.u, f0x40490FDB
  br i1 %i.x, label %bb.n, label %_Z16btNormalizeAnglef.exit31

bb.n:                                             ; preds = %bb.m
  %i.y = fadd float %i.u, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit31

_Z16btNormalizeAnglef.exit31:                     ; preds = %bb.l, %bb.m, %bb.n
  %.0.i30 = phi float [ %i.w, %bb.l ], [ %i.y, %bb.n ], [ %i.u, %bb.m ]
  %i.z = fsub float %0, %1
  %i.aa = tail call noundef float @fmodf(float noundef %i.z, float noundef f0x40C90FDB) #20, !tbaa !7 ; 5 uses
  %i.ab = fcmp olt float %i.aa, f0xC0490FDB
  br i1 %i.ab, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_Z16btNormalizeAnglef.exit31
  %i.ac = fadd float %i.aa, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit33

bb.p:                                             ; preds = %_Z16btNormalizeAnglef.exit31
  %i.ad = fcmp ogt float %i.aa, f0x40490FDB
  br i1 %i.ad, label %bb.q, label %_Z16btNormalizeAnglef.exit33

bb.q:                                             ; preds = %bb.p
  %i.ae = fadd float %i.aa, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit33

_Z16btNormalizeAnglef.exit33:                     ; preds = %bb.o, %bb.p, %bb.q
  %.0.i32 = phi float [ %i.ac, %bb.o ], [ %i.ae, %bb.q ], [ %i.aa, %bb.p ]
  %i.af = tail call noundef float @llvm.fabs.f32(float %.0.i32)
  %i.ag = fcmp olt float %i.af, %.0.i30
  %i.ah = fadd float %0, f0xC0C90FDB
  %i.ai = select i1 %i.ag, float %i.ah, float %0
  br label %bb.r

bb.r:                                             ; preds = %bb.j, %bb.a, %_Z16btNormalizeAnglef.exit33, %_Z16btNormalizeAnglef.exit29
  %.0 = phi float [ %0, %bb.a ], [ %i.r, %_Z16btNormalizeAnglef.exit29 ], [ %i.ai, %_Z16btNormalizeAnglef.exit33 ], [ %0, %bb.j ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN18btSliderConstraint11getAncorInAEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1148) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 988
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = load <2 x float>, ptr %i.b, align 8, !tbaa !9
  %i.d = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.c)
  %i.e = fmul float %i.d, 5.000000e-01            ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 972
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 980
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54, !nonnull !32, !align !33 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.s = load float, ptr %i.m, align 8, !tbaa !9, !noalias !117
  %i.t = load float, ptr %i.n, align 8, !tbaa !9, !noalias !117
  %i.u = load float, ptr %i.o, align 8, !tbaa !9, !noalias !117
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.y = load float, ptr %i.f, align 4, !tbaa !9
  %i.z = fmul float %i.y, %i.e
  %i.aa = load float, ptr %i.g, align 8, !tbaa !9
  %i.ab = fmul float %i.e, %i.aa
  %i.ac = load float, ptr %i.h, align 4, !tbaa !9
  %i.ad = fmul float %i.e, %i.ac
  %i.ae = load float, ptr %i.a, align 4, !tbaa !9
  %i.af = fadd float %i.z, %i.ae
  %i.ag = load float, ptr %i.i, align 8, !tbaa !9
  %i.ah = fadd float %i.ab, %i.ag
  %i.ai = load float, ptr %i.j, align 4, !tbaa !9
  %i.aj = fadd float %i.ad, %i.ai
  %i.ak = load <2 x float>, ptr %i.p, align 4, !tbaa !9, !noalias !117 ; 2 uses
  %i.al = load <2 x float>, ptr %i.q, align 4, !tbaa !9, !noalias !117 ; 2 uses
  %i.am = load <2 x float>, ptr %i.r, align 4, !tbaa !9, !noalias !117 ; 2 uses
  %i.an = load float, ptr %i.v, align 8, !tbaa !9, !noalias !118
  %i.ao = fneg float %i.an                        ; 2 uses
  %i.ap = load float, ptr %i.w, align 4, !tbaa !9, !noalias !118
  %i.aq = fneg float %i.ap                        ; 2 uses
  %i.ar = load float, ptr %i.x, align 8, !tbaa !9, !noalias !118
  %i.as = fneg float %i.ar                        ; 2 uses
  %i.at = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %i.al, %i.au
  %i.aw = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.ax, <2 x float> %i.av)
  %i.az = insertelement <2 x float> poison, float %i.as, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.ba, <2 x float> %i.ay)
  %i.bc = insertelement <2 x float> poison, float %i.ah, i64 0 ; 2 uses
  %i.bd = insertelement <2 x float> %i.bc, float %i.aq, i64 1
  %i.be = insertelement <2 x float> poison, float %i.t, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.bd, %i.bf
  %i.bh = insertelement <2 x float> poison, float %i.s, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = insertelement <2 x float> poison, float %i.af, i64 0 ; 2 uses
  %i.bk = insertelement <2 x float> %i.bj, float %i.ao, i64 1
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bk, <2 x float> %i.bg)
  %i.bm = insertelement <2 x float> poison, float %i.u, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = insertelement <2 x float> poison, float %i.aj, i64 0 ; 2 uses
  %i.bp = insertelement <2 x float> %i.bo, float %i.as, i64 1
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bp, <2 x float> %i.bl) ; 2 uses
  %shift = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.bq, %shift
  %i.br = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.br, %i.al
  %i.bt = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.bt, <2 x float> %i.bs)
  %i.bv = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.bv, <2 x float> %i.bu)
  %i.bx = fadd <2 x float> %i.bw, %i.bb           ; 2 uses
  %i.by = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.bx, <2 x i32> <i32 0, i32 2>
  %i.bz = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bx, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i.i6 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.by, 0
  %.fca.1.insert.i.i7 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i6, <2 x float> %i.bz, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i.i7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN18btSliderConstraint11getAncorInBEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1148) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 212
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.a, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 220
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !25
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraintD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN18btSliderConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(1148) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #16 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280)) unnamed_addr #2

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #18

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_btSliderConstraint.cpp() #1 section ".text.startup" {
bb.a:
  %0 = alloca %class.btVector3, align 4           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) @_ZL7s_fixed, float noundef 0.000000e+00, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(16) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  %i.a = call i32 @__cxa_atexit(ptr nonnull @_ZN11btRigidBodyD2Ev, ptr nonnull @_ZL7s_fixed, ptr nonnull @__dso_handle) #20 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind }
attributes #7 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTS13btTypedObject", !6, i64 0}
!11 = !{!"bool", !5, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS11btRigidBody", !12, i64 0}
!14 = !{!"_ZTS9btVector3", !5, i64 0}
!15 = !{!"_ZTS17btTypedConstraint", !10, i64 8, !6, i64 12, !6, i64 16, !11, i64 20, !13, i64 24, !13, i64 32, !8, i64 40, !8, i64 44, !14, i64 48, !14, i64 64, !14, i64 80}
!16 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!17 = !{!"_ZTS11btTransform", !16, i64 0, !14, i64 48}
!18 = !{!"_ZTS18btSliderConstraint", !15, i64 0, !11, i64 96, !17, i64 100, !17, i64 164, !11, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !8, i64 296, !8, i64 300, !8, i64 304, !8, i64 308, !8, i64 312, !8, i64 316, !11, i64 320, !11, i64 321, !5, i64 324, !5, i64 576, !5, i64 588, !8, i64 840, !17, i64 844, !17, i64 908, !14, i64 972, !14, i64 988, !14, i64 1004, !14, i64 1020, !14, i64 1036, !14, i64 1052, !14, i64 1068, !14, i64 1084, !8, i64 1100, !8, i64 1104, !8, i64 1108, !8, i64 1112, !11, i64 1116, !8, i64 1120, !8, i64 1124, !8, i64 1128, !11, i64 1132, !8, i64 1136, !8, i64 1140, !8, i64 1144}
!19 = !{!18, !11, i64 1116}
!20 = !{!18, !8, i64 1144}
!21 = !{!"vtable pointer", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!18, !11, i64 96}
!24 = !{!18, !11, i64 228}
!25 = !{!5, !5, i64 0}
!26 = !{i64 0, i64 16, !25}
!27 = !{!"_ZTS18btAlignedAllocatorIP17btTypedConstraintLj16EE"}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!"p2 _ZTS17btTypedConstraint", !28, i64 0}
!30 = !{!"_ZTS20btAlignedObjectArrayIP17btTypedConstraintE", !27, i64 0, !6, i64 4, !6, i64 8, !29, i64 16, !11, i64 24}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{i64 8}
!34 = !{!"p1 _ZTS17btBroadphaseProxy", !12, i64 0}
!35 = !{!"p1 _ZTS16btCollisionShape", !12, i64 0}
!36 = !{!"_ZTS17btCollisionObject", !17, i64 8, !17, i64 72, !14, i64 136, !14, i64 152, !14, i64 168, !11, i64 184, !8, i64 188, !34, i64 192, !35, i64 200, !35, i64 208, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !12, i64 248, !6, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !11, i64 272, !5, i64 273}
!37 = !{!"p1 _ZTS13btMotionState", !12, i64 0}
!38 = !{!"_ZTS11btRigidBody", !36, i64 0, !16, i64 280, !14, i64 328, !14, i64 344, !8, i64 360, !14, i64 364, !14, i64 380, !14, i64 396, !14, i64 412, !14, i64 428, !14, i64 444, !14, i64 460, !8, i64 476, !8, i64 480, !11, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !8, i64 508, !37, i64 512, !30, i64 520, !6, i64 552, !6, i64 556, !6, i64 560}
!39 = !{!38, !8, i64 360}
!40 = !{!18, !11, i64 320}
!41 = !{!18, !8, i64 1100}
!42 = !{!18, !8, i64 232}
!43 = !{!18, !8, i64 236}
!44 = !{!18, !8, i64 1108}
!45 = !{!18, !11, i64 321}
!46 = !{!18, !8, i64 240}
!47 = !{!18, !8, i64 244}
!48 = !{!18, !8, i64 1104}
!49 = !{!18, !8, i64 1112}
!50 = !{!18, !8, i64 1128}
!51 = !{!"_ZTSN17btTypedConstraint17btConstraintInfo1E", !6, i64 0, !6, i64 4}
!52 = !{!51, !6, i64 0}
!53 = !{!51, !6, i64 4}
!54 = !{!15, !13, i64 24}
!55 = !{!15, !13, i64 32}
!56 = !{!18, !11, i64 1132}
!57 = !{!18, !8, i64 308}
!58 = !{!18, !8, i64 1120}
!59 = !{!18, !8, i64 1124}
!60 = !{!18, !8, i64 1136}
!61 = !{!18, !8, i64 1140}
!62 = !{!18, !8, i64 840}
!63 = !{!30, !29, i64 16}
!64 = !{!13, !13, i64 0}
!65 = distinct !{!65, i1 true, !"_ZNK11btTransformmlERKS_"}
!66 = distinct !{!66, !65, !"_ZNK11btTransformmlERKS_: argument 0"}
!67 = distinct !{!67, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!68 = distinct !{!68, !67, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!69 = distinct !{!69, i1 true, !"_ZNK11btTransformmlERKS_"}
!70 = distinct !{!70, !69, !"_ZNK11btTransformmlERKS_: argument 0"}
!71 = distinct !{!71, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!72 = distinct !{!72, !71, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!73 = distinct !{!73, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!74 = distinct !{!74, !73, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!75 = distinct !{!75, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!76 = distinct !{!76, !75, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!77 = distinct !{!77, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!78 = distinct !{!78, !77, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!79 = distinct !{!79, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!80 = distinct !{!80, !79, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!81 = !{!68, !66}
!82 = !{!66}
!83 = !{!70}
!84 = !{!72, !70}
!85 = !{!74}
!86 = !{!76}
!87 = !{!"_ZTS15btJacobianEntry", !14, i64 0, !14, i64 16, !14, i64 32, !14, i64 48, !14, i64 64, !8, i64 80}
!88 = !{!87, !8, i64 80}
!89 = !{!78}
!90 = !{!80}
!91 = !{!"p1 float", !12, i64 0}
!92 = !{!"p1 int", !12, i64 0}
!93 = !{!"_ZTSN17btTypedConstraint17btConstraintInfo2E", !8, i64 0, !8, i64 4, !91, i64 8, !91, i64 16, !91, i64 24, !91, i64 32, !6, i64 40, !91, i64 48, !91, i64 56, !91, i64 64, !91, i64 72, !92, i64 80, !6, i64 88}
!94 = !{!93, !6, i64 40}
!95 = !{!93, !91, i64 16}
!96 = !{!93, !91, i64 32}
!97 = !{!93, !91, i64 48}
!98 = !{!93, !8, i64 0}
!99 = !{!93, !8, i64 4}
!100 = !{!93, !91, i64 8}
!101 = !{!18, !8, i64 296}
!102 = !{!93, !91, i64 64}
!103 = !{!93, !91, i64 72}
!104 = !{!93, !91, i64 56}
!105 = !{!18, !8, i64 280}
!106 = !{!18, !8, i64 272}
!107 = !{!18, !8, i64 292}
!108 = !{!18, !8, i64 284}
!109 = !{!"_ZTS12btSolverBody", !14, i64 0, !14, i64 16, !14, i64 32, !14, i64 48, !8, i64 64, !13, i64 72, !14, i64 80, !14, i64 96}
!110 = !{!109, !13, i64 72}
!111 = !{!18, !8, i64 316}
!112 = !{!18, !8, i64 312}
!113 = distinct !{!113, i1 true, !"_ZNK11btTransform7inverseEv"}
!114 = distinct !{!114, !113, !"_ZNK11btTransform7inverseEv: argument 0"}
!115 = distinct !{!115, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!116 = distinct !{!116, !115, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!117 = !{!116, !114}
!118 = !{!114}
end_hunk_1
