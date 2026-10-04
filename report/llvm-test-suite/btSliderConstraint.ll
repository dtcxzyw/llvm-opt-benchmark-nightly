Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSliderConstraint?download=true
inline.NumInlined: 530
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN18btSliderConstraint16buildJacobianIntER11btRigidBodyS1_RK11btTransformS4_:bb.a
  %i.sj = fmul float %i.qz, %i.ry
  %i.sk = tail call float @llvm.fmuladd.f32(float %i.qy, float %i.rx, float %i.sj)
  %i.sl = tail call noundef float @llvm.fmuladd.f32(float %i.ra, float %i.rz, float %i.sk) ; 3 uses
  %.sroa.3.12.vec.insert.i20.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sl, i64 0
  store <2 x float> %i.si, ptr %i.rc, align 8
  %.sroa.44.0..sroa_idx.i93.1 = getelementptr inbounds nuw i8, ptr %0, i64 712
  store <2 x float> %.sroa.3.12.vec.insert.i20.i.1, ptr %.sroa.44.0..sroa_idx.i93.1, align 8, !tbaa !25
  %i.sm = extractelement <2 x float> %i.rq, i64 0
  %i.sn = load <2 x float>, ptr %i.ji, align 4, !tbaa !9
  %i.so = fmul <2 x float> %i.rq, %i.sn           ; 3 uses
  %i.sp = load float, ptr %i.jm, align 4, !tbaa !9
  %i.sq = fmul float %i.rt, %i.sp                 ; 2 uses
  %.sroa.3.12.vec.insert.i25.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sq, i64 0
  store <2 x float> %i.so, ptr %i.rd, align 8
  %.sroa.42.0..sroa_idx.i94.1 = getelementptr inbounds nuw i8, ptr %0, i64 728
  store <2 x float> %.sroa.3.12.vec.insert.i25.i.1, ptr %.sroa.42.0..sroa_idx.i94.1, align 8, !tbaa !25
  %i.sr = extractelement <2 x float> %i.si, i64 0
  %i.ss = load <2 x float>, ptr %i.jk, align 4, !tbaa !9
  %i.st = fmul <2 x float> %i.si, %i.ss           ; 3 uses
  %i.su = load float, ptr %i.jn, align 4, !tbaa !9
  %i.sv = fmul float %i.sl, %i.su                 ; 2 uses
  %.sroa.3.12.vec.insert.i30.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sv, i64 0
  store <2 x float> %i.st, ptr %i.re, align 8
  %.sroa.4.0..sroa_idx.i95.1 = getelementptr inbounds nuw i8, ptr %0, i64 744
  store <2 x float> %.sroa.3.12.vec.insert.i30.i.1, ptr %.sroa.4.0..sroa_idx.i95.1, align 8, !tbaa !25
  %foldExtExtBinop212 = fmul <2 x float> %i.rq, %i.so
  %i.sw = extractelement <2 x float> %foldExtExtBinop212, i64 1
  %i.sx = extractelement <2 x float> %i.so, i64 0
  %i.sy = tail call float @llvm.fmuladd.f32(float %i.sx, float %i.sm, float %i.sw)
  %i.sz = tail call noundef float @llvm.fmuladd.f32(float %i.sq, float %i.rt, float %i.sy)
  %foldExtExtBinop214 = fmul <2 x float> %i.si, %i.st
  %i.ta = extractelement <2 x float> %foldExtExtBinop214, i64 1
  %i.tb = extractelement <2 x float> %i.st, i64 0
  %i.tc = tail call float @llvm.fmuladd.f32(float %i.tb, float %i.sr, float %i.ta)
  %i.td = tail call noundef float @llvm.fmuladd.f32(float %i.sv, float %i.sl, float %i.tc)
  %i.te = fadd float %i.sz, %i.td
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float %i.te, ptr %i.tf, align 8, !tbaa !88
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.tj = load float, ptr %i.tg, align 4, !tbaa !9 ; 3 uses
  %i.tk = load float, ptr %i.th, align 4, !tbaa !9 ; 3 uses
  %i.tl = load float, ptr %i.ti, align 4, !tbaa !9 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.tn = load float, ptr %i.e, align 8, !tbaa !9, !noalias !89
  %i.to = load float, ptr %i.n, align 8, !tbaa !9, !noalias !89
  %i.tp = load float, ptr %i.q, align 8, !tbaa !9, !noalias !89
  %i.tq = load float, ptr %i.dn, align 8, !tbaa !9, !noalias !90
  %i.tr = load float, ptr %i.dw, align 8, !tbaa !9, !noalias !90
  %i.ts = load float, ptr %i.dz, align 8, !tbaa !9, !noalias !90
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 772
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 804
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.tx = load <2 x float>, ptr %i.a, align 8, !tbaa !9, !noalias !89
  %i.ty = load <2 x float>, ptr %i.l, align 8, !tbaa !9, !noalias !89
  %i.tz = load <2 x float>, ptr %i.o, align 8, !tbaa !9, !noalias !89
  %i.ua = insertelement <2 x float> poison, float %i.tk, i64 0
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uc = fmul <2 x float> %i.ub, %i.ty
  %i.ud = insertelement <2 x float> poison, float %i.tj, i64 0
  %i.ue = shufflevector <2 x float> %i.ud, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tx, <2 x float> %i.ue, <2 x float> %i.uc)
  %i.ug = insertelement <2 x float> poison, float %i.tl, i64 0
  %i.uh = shufflevector <2 x float> %i.ug, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ui = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tz, <2 x float> %i.uh, <2 x float> %i.uf) ; 4 uses
  %i.uj = fmul float %i.tk, %i.to
  %i.uk = tail call float @llvm.fmuladd.f32(float %i.tn, float %i.tj, float %i.uj)
  %i.ul = tail call noundef float @llvm.fmuladd.f32(float %i.tp, float %i.tl, float %i.uk) ; 3 uses
  %.sroa.3.12.vec.insert.i.i91.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ul, i64 0
  %.sroa.46.0..sroa_idx.i92.2 = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.um = load <2 x float>, ptr %i.dj, align 8, !tbaa !9, !noalias !90
  %i.un = load <2 x float>, ptr %i.du, align 8, !tbaa !9, !noalias !90
  %i.uo = load <2 x float>, ptr %i.dx, align 8, !tbaa !9, !noalias !90
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.tm, i8 0, i64 16, i1 false)
  store <2 x float> %i.ui, ptr %i.tt, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i91.2, ptr %.sroa.46.0..sroa_idx.i92.2, align 4, !tbaa !25
  %i.up = fneg float %i.tj                        ; 2 uses
  %i.uq = fneg float %i.tk                        ; 2 uses
  %i.ur = fneg float %i.tl                        ; 2 uses
  %i.us = insertelement <2 x float> poison, float %i.uq, i64 0
  %i.ut = shufflevector <2 x float> %i.us, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uu = fmul <2 x float> %i.un, %i.ut
  %i.uv = insertelement <2 x float> poison, float %i.up, i64 0
  %i.uw = shufflevector <2 x float> %i.uv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ux = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.um, <2 x float> %i.uw, <2 x float> %i.uu)
  %i.uy = insertelement <2 x float> poison, float %i.ur, i64 0
  %i.uz = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.va = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uo, <2 x float> %i.uz, <2 x float> %i.ux) ; 4 uses
  %i.vb = fmul float %i.tr, %i.uq
  %i.vc = tail call float @llvm.fmuladd.f32(float %i.tq, float %i.up, float %i.vb)
  %i.vd = tail call noundef float @llvm.fmuladd.f32(float %i.ts, float %i.ur, float %i.vc) ; 3 uses
  %.sroa.3.12.vec.insert.i20.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vd, i64 0
  store <2 x float> %i.va, ptr %i.tu, align 4
  %.sroa.44.0..sroa_idx.i93.2 = getelementptr inbounds nuw i8, ptr %0, i64 796
  store <2 x float> %.sroa.3.12.vec.insert.i20.i.2, ptr %.sroa.44.0..sroa_idx.i93.2, align 4, !tbaa !25
  %i.ve = extractelement <2 x float> %i.ui, i64 0
  %i.vf = load <2 x float>, ptr %i.ji, align 4, !tbaa !9
  %i.vg = fmul <2 x float> %i.ui, %i.vf           ; 3 uses
  %i.vh = load float, ptr %i.jm, align 4, !tbaa !9
  %i.vi = fmul float %i.ul, %i.vh                 ; 2 uses
  %.sroa.3.12.vec.insert.i25.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vi, i64 0
  store <2 x float> %i.vg, ptr %i.tv, align 4
  %.sroa.42.0..sroa_idx.i94.2 = getelementptr inbounds nuw i8, ptr %0, i64 812
  store <2 x float> %.sroa.3.12.vec.insert.i25.i.2, ptr %.sroa.42.0..sroa_idx.i94.2, align 4, !tbaa !25
  %i.vj = extractelement <2 x float> %i.va, i64 0
  %i.vk = load <2 x float>, ptr %i.jk, align 4, !tbaa !9
  %i.vl = fmul <2 x float> %i.va, %i.vk           ; 3 uses
  %i.vm = load float, ptr %i.jn, align 4, !tbaa !9
  %i.vn = fmul float %i.vd, %i.vm                 ; 2 uses
  %.sroa.3.12.vec.insert.i30.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vn, i64 0
  store <2 x float> %i.vl, ptr %i.tw, align 4
  %.sroa.4.0..sroa_idx.i95.2 = getelementptr inbounds nuw i8, ptr %0, i64 828
  store <2 x float> %.sroa.3.12.vec.insert.i30.i.2, ptr %.sroa.4.0..sroa_idx.i95.2, align 4, !tbaa !25
  %foldExtExtBinop216 = fmul <2 x float> %i.ui, %i.vg
  %i.vo = extractelement <2 x float> %foldExtExtBinop216, i64 1
  %i.vp = extractelement <2 x float> %i.vg, i64 0
  %i.vq = tail call float @llvm.fmuladd.f32(float %i.vp, float %i.ve, float %i.vo)
  %i.vr = tail call noundef float @llvm.fmuladd.f32(float %i.vi, float %i.ul, float %i.vq)
  %foldExtExtBinop218 = fmul <2 x float> %i.va, %i.vl
  %i.vs = extractelement <2 x float> %foldExtExtBinop218, i64 1
  %i.vt = extractelement <2 x float> %i.vl, i64 0
  %i.vu = tail call float @llvm.fmuladd.f32(float %i.vt, float %i.vj, float %i.vs)
  %i.vv = tail call noundef float @llvm.fmuladd.f32(float %i.vn, float %i.vd, float %i.vu)
  %i.vw = fadd float %i.vr, %i.vv
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 836
  store float %i.vw, ptr %i.vx, align 4, !tbaa !88
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 2 uses
  store float 0.000000e+00, ptr %i.vy, align 4, !tbaa !44
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 321 ; 2 uses
  store i8 0, ptr %i.vz, align 1, !tbaa !45
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.wb = load float, ptr %i.wa, align 8, !tbaa !46 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !47 ; 2 uses
  %i.we = fcmp ugt float %i.wb, %i.wd
  br i1 %i.we, label %_ZN18btSliderConstraint13testAngLimitsEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN18btSliderConstraint13testLinLimitsEv.exit
  %i.wf = load float, ptr %.sroa.4169.0..sroa_idx, align 8, !tbaa !9
  %i.wg = load float, ptr %.sroa.9173.16..sroa_idx, align 8, !tbaa !9
  %i.wh = load float, ptr %.sroa.14177.32..sroa_idx, align 8, !tbaa !9
  %i.wi = load float, ptr %.sroa.5170.0..sroa_idx, align 4, !tbaa !9
  %i.wj = load float, ptr %.sroa.10174.16..sroa_idx, align 4, !tbaa !9
  %i.wk = load float, ptr %.sroa.15178.32..sroa_idx, align 4, !tbaa !9
  %i.wl = load float, ptr %.sroa.4160.0..sroa_idx, align 8, !tbaa !9 ; 2 uses
  %i.wm = load float, ptr %.sroa.9164.16..sroa_idx, align 8, !tbaa !9 ; 2 uses
  %i.wn = load float, ptr %.sroa.14.32..sroa_idx, align 8, !tbaa !9 ; 2 uses
  %i.wo = fmul float %i.wj, %i.wm
  %i.wp = tail call float @llvm.fmuladd.f32(float %i.wl, float %i.wi, float %i.wo)
  %i.wq = tail call noundef float @llvm.fmuladd.f32(float %i.wn, float %i.wk, float %i.wp) ; 2 uses
  %i.wr = fmul float %i.wg, %i.wm
  %i.ws = tail call float @llvm.fmuladd.f32(float %i.wl, float %i.wf, float %i.wr)
  %i.wt = tail call noundef float @llvm.fmuladd.f32(float %i.wn, float %i.wh, float %i.ws) ; 5 uses
  %i.wu = tail call noundef float @llvm.fabs.f32(float %i.wq) ; 4 uses
  %i.wv = fcmp ult float %i.wt, 0.000000e+00
  br i1 %i.wv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ww = fsub float %i.wt, %i.wu
  %i.wx = fadd float %i.wt, %i.wu
  %i.wy = fdiv float %i.ww, %i.wx
  %i.wz = tail call float @llvm.fmuladd.f32(float %i.wy, float f0xBF490FDB, float f0x3F490FDB)
  br label %_Z11btAtan2Fastff.exit.i

bb.l:                                             ; preds = %bb.j
  %i.xa = fadd float %i.wt, %i.wu
  %i.xb = fsub float %i.wu, %i.wt
  %i.xc = fdiv float %i.xa, %i.xb
  %i.xd = tail call float @llvm.fmuladd.f32(float %i.xc, float f0xBF490FDB, float f0x4016CBE4)
  br label %_Z11btAtan2Fastff.exit.i

_Z11btAtan2Fastff.exit.i:                         ; preds = %bb.l, %bb.k
  %.0.i.i = phi float [ %i.wz, %bb.k ], [ %i.xd, %bb.l ] ; 2 uses
  %i.xe = fcmp olt float %i.wq, 0.000000e+00
  %i.xf = fneg float %.0.i.i
  %i.xg = select i1 %i.xe, float %i.xf, float %.0.i.i
  %i.xh = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.xg, float noundef %i.wb, float noundef %i.wd) ; 4 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store float %i.xh, ptr %i.xi, align 8, !tbaa !48
  %i.xj = load float, ptr %i.wa, align 8, !tbaa !46 ; 2 uses
  %i.xk = fcmp olt float %i.xh, %i.xj
  br i1 %i.xk, label %.sink.split.i, label %bb.m

bb.m:                                             ; preds = %_Z11btAtan2Fastff.exit.i
  %i.xl = load float, ptr %i.wc, align 4, !tbaa !47 ; 2 uses
  %i.xm = fcmp ogt float %i.xh, %i.xl
  br i1 %i.xm, label %.sink.split.i, label %_ZN18btSliderConstraint13testAngLimitsEv.exit

.sink.split.i:                                    ; preds = %bb.m, %_Z11btAtan2Fastff.exit.i
  %.sink34.i = phi float [ %i.xj, %_Z11btAtan2Fastff.exit.i ], [ %i.xl, %bb.m ]
  %i.xn = fsub float %i.xh, %.sink34.i
  store float %i.xn, ptr %i.vy, align 4, !tbaa !44
  store i8 1, ptr %i.vz, align 1, !tbaa !45
  br label %_ZN18btSliderConstraint13testAngLimitsEv.exit

_ZN18btSliderConstraint13testAngLimitsEv.exit:    ; preds = %_ZN18btSliderConstraint13testLinLimitsEv.exit, %bb.m, %.sink.split.i
  %i.xo = load float, ptr %i.y, align 4, !tbaa !9 ; 5 uses
  %i.xp = load float, ptr %i.ao, align 4, !tbaa !9 ; 5 uses
  %i.xq = load float, ptr %i.cn, align 4, !tbaa !9 ; 6 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.xt = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.xy = load float, ptr %i.xx, align 8, !tbaa !9
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ya = load float, ptr %i.xz, align 8, !tbaa !9
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.yc = load float, ptr %i.yb, align 8, !tbaa !9
  %i.yd = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.ye = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.yf = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.yg = getelementptr inbounds nuw i8, ptr %2, i64 284
  %i.yh = getelementptr inbounds nuw i8, ptr %2, i64 300
  %i.yi = load float, ptr %i.xr, align 8, !tbaa !9
  %i.yj = load float, ptr %i.xs, align 8, !tbaa !9
  %i.yk = fmul float %i.xp, %i.yj
  %i.yl = tail call float @llvm.fmuladd.f32(float %i.yi, float %i.xo, float %i.yk)
  %i.ym = load float, ptr %i.xt, align 8, !tbaa !9
  %i.yn = tail call noundef float @llvm.fmuladd.f32(float %i.ym, float %i.xq, float %i.yl)
  %i.yo = load float, ptr %i.xu, align 4, !tbaa !9
  %i.yp = load float, ptr %i.xv, align 4, !tbaa !9
  %i.yq = fmul float %i.xp, %i.yp
  %i.yr = tail call float @llvm.fmuladd.f32(float %i.yo, float %i.xo, float %i.yq)
  %i.ys = load float, ptr %i.xw, align 4, !tbaa !9
  %i.yt = tail call noundef float @llvm.fmuladd.f32(float %i.ys, float %i.xq, float %i.yr)
  %i.yu = load float, ptr %i.yd, align 8, !tbaa !9
  %i.yv = load float, ptr %i.ye, align 8, !tbaa !9
  %i.yw = load float, ptr %i.yg, align 4, !tbaa !9
  %i.yx = load float, ptr %i.yh, align 4, !tbaa !9
  %i.yy = insertelement <4 x float> poison, float %i.xp, i64 0
  %i.yz = shufflevector <4 x float> %i.yy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.za = insertelement <4 x float> poison, float %i.ya, i64 0
  %i.zb = insertelement <4 x float> %i.za, float %i.yt, i64 1
  %i.zc = insertelement <4 x float> %i.zb, float %i.yv, i64 2
  %i.zd = insertelement <4 x float> %i.zc, float %i.yx, i64 3
  %i.ze = fmul <4 x float> %i.yz, %i.zd
  %i.zf = insertelement <4 x float> poison, float %i.xo, i64 0
  %i.zg = shufflevector <4 x float> %i.zf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zh = insertelement <4 x float> poison, float %i.xy, i64 0
  %i.zi = insertelement <4 x float> %i.zh, float %i.yn, i64 1
  %i.zj = insertelement <4 x float> %i.zi, float %i.yu, i64 2
  %i.zk = insertelement <4 x float> %i.zj, float %i.yw, i64 3
  %i.zl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zg, <4 x float> %i.zk, <4 x float> %i.ze) ; 2 uses
  %i.zm = extractelement <4 x float> %i.zl, i64 1
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 288
  %6 = load float, ptr %5, align 8, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 304
  %8 = load float, ptr %7, align 8, !tbaa !9
  %9 = load <2 x float>, ptr %i.yf, align 8, !tbaa !9
  %10 = fmul float %i.xp, %8
  %11 = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %12 = insertelement <4 x float> %11, float %i.yc, i64 0
  %13 = insertelement <4 x float> %12, float %6, i64 1
  %14 = insertelement <4 x float> poison, float %i.xq, i64 0
  %15 = insertelement <4 x float> %14, float %i.xo, i64 1
  %16 = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %17 = insertelement <4 x float> %i.zl, float %10, i64 1
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %13, <4 x float> %16, <4 x float> %17) ; 4 uses
  %19 = extractelement <4 x float> %18, i64 0
  %i.zn = tail call noundef float @llvm.fmuladd.f32(float %i.xq, float %19, float %i.zm)
  %i.zo = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.zp = load float, ptr %i.zo, align 8, !tbaa !9
  %20 = extractelement <4 x float> %18, i64 1
  %i.zq = tail call noundef float @llvm.fmuladd.f32(float %i.zp, float %i.xq, float %20)
  %21 = extractelement <4 x float> %18, i64 3
  %i.zr = fmul float %i.xp, %21
  %22 = extractelement <4 x float> %18, i64 2
  %i.zs = tail call float @llvm.fmuladd.f32(float %i.xo, float %22, float %i.zr)
  %i.zt = tail call noundef float @llvm.fmuladd.f32(float %i.xq, float %i.zq, float %i.zs)
  %i.zu = fadd float %i.zn, %i.zt
  %i.zv = fdiv float 1.000000e+00, %i.zu
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store float %i.zv, ptr %i.zw, align 8, !tbaa !49
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store float 0.000000e+00, ptr %i.zx, align 8, !tbaa !50
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store float 0.000000e+00, ptr %i.zy, align 8, !tbaa !20
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
end_hunk_0
