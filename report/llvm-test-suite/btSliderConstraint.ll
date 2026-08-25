Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSliderConstraint?download=true
inline.NumInlined: 530
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN18btSliderConstraint16buildJacobianIntER11btRigidBodyS1_RK11btTransformS4_:bb.a
  %i.te = extractelement <2 x float> %i.sv, i64 0
  %i.tf = tail call float @llvm.fmuladd.f32(float %i.te, float %i.st, float %i.td)
  %i.tg = tail call noundef float @llvm.fmuladd.f32(float %i.sx, float %i.sa, float %i.tf)
  %foldExtExtBinop214 = fmul <2 x float> %i.sp, %i.ta
  %i.th = extractelement <2 x float> %foldExtExtBinop214, i64 1
  %i.ti = extractelement <2 x float> %i.ta, i64 0
  %i.tj = tail call float @llvm.fmuladd.f32(float %i.ti, float %i.sy, float %i.th)
  %i.tk = tail call noundef float @llvm.fmuladd.f32(float %i.tc, float %i.ss, float %i.tj)
  %i.tl = fadd float %i.tg, %i.tk
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float %i.tl, ptr %i.tm, align 8, !tbaa !60
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.tq = load float, ptr %i.tn, align 4, !tbaa !8 ; 3 uses
  %i.tr = load float, ptr %i.to, align 4, !tbaa !8 ; 3 uses
  %i.ts = load float, ptr %i.tp, align 4, !tbaa !8 ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.tu = load float, ptr %i.e, align 8, !tbaa !8, !noalias !66
  %i.tv = load float, ptr %i.n, align 8, !tbaa !8, !noalias !66
  %i.tw = load float, ptr %i.q, align 8, !tbaa !8, !noalias !66
  %i.tx = load float, ptr %i.dn, align 8, !tbaa !8, !noalias !69
  %i.ty = load float, ptr %i.dw, align 8, !tbaa !8, !noalias !69
  %i.tz = load float, ptr %i.dz, align 8, !tbaa !8, !noalias !69
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 772
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 804
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.ue = load <2 x float>, ptr %i.a, align 8, !tbaa !8, !noalias !66
  %i.uf = load <2 x float>, ptr %i.l, align 8, !tbaa !8, !noalias !66
  %i.ug = load <2 x float>, ptr %i.o, align 8, !tbaa !8, !noalias !66
  %i.uh = insertelement <2 x float> poison, float %i.tr, i64 0
  %i.ui = shufflevector <2 x float> %i.uh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uj = fmul <2 x float> %i.ui, %i.uf
  %i.uk = insertelement <2 x float> poison, float %i.tq, i64 0
  %i.ul = shufflevector <2 x float> %i.uk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.um = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ue, <2 x float> %i.ul, <2 x float> %i.uj)
  %i.un = insertelement <2 x float> poison, float %i.ts, i64 0
  %i.uo = shufflevector <2 x float> %i.un, <2 x float> poison, <2 x i32> zeroinitializer
  %i.up = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ug, <2 x float> %i.uo, <2 x float> %i.um) ; 4 uses
  %i.uq = fmul float %i.tr, %i.tv
  %i.ur = tail call float @llvm.fmuladd.f32(float %i.tu, float %i.tq, float %i.uq)
  %i.us = tail call noundef float @llvm.fmuladd.f32(float %i.tw, float %i.ts, float %i.ur) ; 3 uses
  %.sroa.3.12.vec.insert.i.i91.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.us, i64 0
  %.sroa.46.0..sroa_idx.i92.2 = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.ut = fneg float %i.tq                        ; 2 uses
  %i.uu = fneg float %i.tr                        ; 2 uses
  %i.uv = fneg float %i.ts                        ; 2 uses
  %i.uw = load <2 x float>, ptr %i.dj, align 8, !tbaa !8, !noalias !69
  %i.ux = load <2 x float>, ptr %i.du, align 8, !tbaa !8, !noalias !69
  %i.uy = load <2 x float>, ptr %i.dx, align 8, !tbaa !8, !noalias !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.tt, i8 0, i64 16, i1 false)
  store <2 x float> %i.up, ptr %i.ua, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i91.2, ptr %.sroa.46.0..sroa_idx.i92.2, align 4, !tbaa !26
  %i.uz = insertelement <2 x float> poison, float %i.uu, i64 0
  %i.va = shufflevector <2 x float> %i.uz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vb = fmul <2 x float> %i.ux, %i.va
  %i.vc = insertelement <2 x float> poison, float %i.ut, i64 0
  %i.vd = shufflevector <2 x float> %i.vc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ve = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uw, <2 x float> %i.vd, <2 x float> %i.vb)
  %i.vf = insertelement <2 x float> poison, float %i.uv, i64 0
  %i.vg = shufflevector <2 x float> %i.vf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uy, <2 x float> %i.vg, <2 x float> %i.ve) ; 4 uses
  %i.vi = fmul float %i.ty, %i.uu
  %i.vj = tail call float @llvm.fmuladd.f32(float %i.tx, float %i.ut, float %i.vi)
  %i.vk = tail call noundef float @llvm.fmuladd.f32(float %i.tz, float %i.uv, float %i.vj) ; 3 uses
  %.sroa.3.12.vec.insert.i20.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vk, i64 0
  store <2 x float> %i.vh, ptr %i.ub, align 4
  %.sroa.44.0..sroa_idx.i93.2 = getelementptr inbounds nuw i8, ptr %0, i64 796
  store <2 x float> %.sroa.3.12.vec.insert.i20.i.2, ptr %.sroa.44.0..sroa_idx.i93.2, align 4, !tbaa !26
  %i.vl = extractelement <2 x float> %i.up, i64 0
  %i.vm = load <2 x float>, ptr %i.ji, align 4, !tbaa !8
  %i.vn = fmul <2 x float> %i.up, %i.vm           ; 3 uses
  %i.vo = load float, ptr %i.jn, align 4, !tbaa !8
  %i.vp = fmul float %i.us, %i.vo                 ; 2 uses
  %.sroa.3.12.vec.insert.i25.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vp, i64 0
  store <2 x float> %i.vn, ptr %i.uc, align 4
  %.sroa.42.0..sroa_idx.i94.2 = getelementptr inbounds nuw i8, ptr %0, i64 812
  store <2 x float> %.sroa.3.12.vec.insert.i25.i.2, ptr %.sroa.42.0..sroa_idx.i94.2, align 4, !tbaa !26
  %i.vq = extractelement <2 x float> %i.vh, i64 0
  %i.vr = load <2 x float>, ptr %i.jk, align 4, !tbaa !8
  %i.vs = fmul <2 x float> %i.vh, %i.vr           ; 3 uses
  %i.vt = load float, ptr %i.jo, align 4, !tbaa !8
  %i.vu = fmul float %i.vk, %i.vt                 ; 2 uses
  %.sroa.3.12.vec.insert.i30.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vu, i64 0
  store <2 x float> %i.vs, ptr %i.ud, align 4
  %.sroa.4.0..sroa_idx.i95.2 = getelementptr inbounds nuw i8, ptr %0, i64 828
  store <2 x float> %.sroa.3.12.vec.insert.i30.i.2, ptr %.sroa.4.0..sroa_idx.i95.2, align 4, !tbaa !26
  %foldExtExtBinop216 = fmul <2 x float> %i.up, %i.vn
  %i.vv = extractelement <2 x float> %foldExtExtBinop216, i64 1
  %i.vw = extractelement <2 x float> %i.vn, i64 0
  %i.vx = tail call float @llvm.fmuladd.f32(float %i.vw, float %i.vl, float %i.vv)
  %i.vy = tail call noundef float @llvm.fmuladd.f32(float %i.vp, float %i.us, float %i.vx)
  %foldExtExtBinop218 = fmul <2 x float> %i.vh, %i.vs
  %i.vz = extractelement <2 x float> %foldExtExtBinop218, i64 1
  %i.wa = extractelement <2 x float> %i.vs, i64 0
  %i.wb = tail call float @llvm.fmuladd.f32(float %i.wa, float %i.vq, float %i.vz)
  %i.wc = tail call noundef float @llvm.fmuladd.f32(float %i.vu, float %i.vk, float %i.wb)
  %i.wd = fadd float %i.vy, %i.wc
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 836
  store float %i.wd, ptr %i.we, align 4, !tbaa !60
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 2 uses
  store float 0.000000e+00, ptr %i.wf, align 4, !tbaa !72
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 321 ; 2 uses
  store i8 0, ptr %i.wg, align 1, !tbaa !73
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.wi = load float, ptr %i.wh, align 8, !tbaa !74 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !75 ; 2 uses
  %i.wl = fcmp ugt float %i.wi, %i.wk
  br i1 %i.wl, label %_ZN18btSliderConstraint13testAngLimitsEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN18btSliderConstraint13testLinLimitsEv.exit
  %i.wm = load float, ptr %.sroa.4169.0..sroa_idx, align 8, !tbaa !8
  %i.wn = load float, ptr %.sroa.9173.16..sroa_idx, align 8, !tbaa !8
  %i.wo = load float, ptr %.sroa.14177.32..sroa_idx, align 8, !tbaa !8
  %i.wp = load float, ptr %.sroa.5170.0..sroa_idx, align 4, !tbaa !8
  %i.wq = load float, ptr %.sroa.10174.16..sroa_idx, align 4, !tbaa !8
  %i.wr = load float, ptr %.sroa.15178.32..sroa_idx, align 4, !tbaa !8
  %i.ws = load float, ptr %.sroa.4160.0..sroa_idx, align 8, !tbaa !8 ; 2 uses
  %i.wt = load float, ptr %.sroa.9164.16..sroa_idx, align 8, !tbaa !8 ; 2 uses
  %i.wu = load float, ptr %.sroa.14.32..sroa_idx, align 8, !tbaa !8 ; 2 uses
  %i.wv = fmul float %i.wq, %i.wt
  %i.ww = tail call float @llvm.fmuladd.f32(float %i.ws, float %i.wp, float %i.wv)
  %i.wx = tail call noundef float @llvm.fmuladd.f32(float %i.wu, float %i.wr, float %i.ww) ; 2 uses
  %i.wy = fmul float %i.wn, %i.wt
  %i.wz = tail call float @llvm.fmuladd.f32(float %i.ws, float %i.wm, float %i.wy)
  %i.xa = tail call noundef float @llvm.fmuladd.f32(float %i.wu, float %i.wo, float %i.wz) ; 5 uses
  %i.xb = tail call noundef float @llvm.fabs.f32(float %i.wx) ; 4 uses
  %i.xc = fcmp ult float %i.xa, 0.000000e+00
  br i1 %i.xc, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.xd = fsub float %i.xa, %i.xb
  %i.xe = fadd float %i.xa, %i.xb
  %i.xf = fdiv float %i.xd, %i.xe
  %i.xg = tail call float @llvm.fmuladd.f32(float %i.xf, float f0xBF490FDB, float f0x3F490FDB)
  br label %_Z11btAtan2Fastff.exit.i

bb.l:                                             ; preds = %bb.j
  %i.xh = fadd float %i.xa, %i.xb
  %i.xi = fsub float %i.xb, %i.xa
  %i.xj = fdiv float %i.xh, %i.xi
  %i.xk = tail call float @llvm.fmuladd.f32(float %i.xj, float f0xBF490FDB, float f0x4016CBE4)
  br label %_Z11btAtan2Fastff.exit.i

_Z11btAtan2Fastff.exit.i:                         ; preds = %bb.l, %bb.k
  %.0.i.i = phi float [ %i.xg, %bb.k ], [ %i.xk, %bb.l ] ; 2 uses
  %i.xl = fcmp olt float %i.wx, 0.000000e+00
  %i.xm = fneg float %.0.i.i
  %i.xn = select i1 %i.xl, float %i.xm, float %.0.i.i
  %i.xo = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.xn, float noundef %i.wi, float noundef %i.wk) ; 4 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store float %i.xo, ptr %i.xp, align 8, !tbaa !76
  %i.xq = load float, ptr %i.wh, align 8, !tbaa !74 ; 2 uses
  %i.xr = fcmp olt float %i.xo, %i.xq
  br i1 %i.xr, label %.sink.split.i, label %bb.m

bb.m:                                             ; preds = %_Z11btAtan2Fastff.exit.i
  %i.xs = load float, ptr %i.wj, align 4, !tbaa !75 ; 2 uses
  %i.xt = fcmp ogt float %i.xo, %i.xs
  br i1 %i.xt, label %.sink.split.i, label %_ZN18btSliderConstraint13testAngLimitsEv.exit

.sink.split.i:                                    ; preds = %bb.m, %_Z11btAtan2Fastff.exit.i
  %.sink34.i = phi float [ %i.xq, %_Z11btAtan2Fastff.exit.i ], [ %i.xs, %bb.m ]
  %i.xu = fsub float %i.xo, %.sink34.i
  store float %i.xu, ptr %i.wf, align 4, !tbaa !72
  store i8 1, ptr %i.wg, align 1, !tbaa !73
  br label %_ZN18btSliderConstraint13testAngLimitsEv.exit

_ZN18btSliderConstraint13testAngLimitsEv.exit:    ; preds = %_ZN18btSliderConstraint13testLinLimitsEv.exit, %bb.m, %.sink.split.i
  %i.xv = load float, ptr %i.ab, align 4, !tbaa !8 ; 5 uses
  %i.xw = load float, ptr %i.ar, align 4, !tbaa !8 ; 5 uses
  %i.xx = load float, ptr %i.cn, align 4, !tbaa !8 ; 8 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.ye = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.yf = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.yh = load float, ptr %i.yg, align 8, !tbaa !8
  %i.yi = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.yj = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.yk = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.yl = load float, ptr %i.yk, align 8, !tbaa !8
  %i.ym = getelementptr inbounds nuw i8, ptr %2, i64 284
  %i.yn = getelementptr inbounds nuw i8, ptr %2, i64 300
  %i.yo = load float, ptr %i.yc, align 4, !tbaa !8
  %i.yp = load float, ptr %i.xz, align 8, !tbaa !8
  %i.yq = fmul float %i.xw, %i.yp
  %i.yr = load float, ptr %i.yb, align 4, !tbaa !8
  %i.ys = load float, ptr %i.xy, align 8, !tbaa !8
  %i.yt = tail call float @llvm.fmuladd.f32(float %i.ys, float %i.xv, float %i.yq)
  %i.yu = fmul float %i.xw, %i.yo
  %i.yv = tail call float @llvm.fmuladd.f32(float %i.yr, float %i.xv, float %i.yu)
  %i.yw = load float, ptr %i.yd, align 4, !tbaa !8
  %i.yx = load float, ptr %i.ya, align 8, !tbaa !8
  %5 = load <4 x float>, ptr %i.ye, align 8
  %6 = load <4 x float>, ptr %i.yf, align 8
  %i.yy = load float, ptr %i.ym, align 4, !tbaa !8
  %i.yz = load float, ptr %i.yi, align 8, !tbaa !8
  %i.za = tail call noundef float @llvm.fmuladd.f32(float %i.yx, float %i.xx, float %i.yt)
  %i.zb = load float, ptr %i.yn, align 4, !tbaa !8
  %i.zc = load float, ptr %i.yj, align 8, !tbaa !8
  %i.zd = tail call noundef float @llvm.fmuladd.f32(float %i.yw, float %i.xx, float %i.yv)
  %i.ze = insertelement <4 x float> poison, float %i.xw, i64 0
  %i.zf = shufflevector <4 x float> %i.ze, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zg = insertelement <4 x float> %6, float %i.zd, i64 1
  %i.zh = insertelement <4 x float> %i.zg, float %i.zc, i64 2
  %i.zi = insertelement <4 x float> %i.zh, float %i.zb, i64 3
  %i.zj = fmul <4 x float> %i.zf, %i.zi
  %i.zk = insertelement <4 x float> poison, float %i.xv, i64 0
  %i.zl = shufflevector <4 x float> %i.zk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zm = insertelement <4 x float> %5, float %i.za, i64 1
  %i.zn = insertelement <4 x float> %i.zm, float %i.yz, i64 2
  %i.zo = insertelement <4 x float> %i.zn, float %i.yy, i64 3
  %i.zp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zl, <4 x float> %i.zo, <4 x float> %i.zj) ; 4 uses
  %i.zq = extractelement <4 x float> %i.zp, i64 0
  %i.zr = tail call noundef float @llvm.fmuladd.f32(float %i.yh, float %i.xx, float %i.zq)
  %i.zs = extractelement <4 x float> %i.zp, i64 1
  %i.zt = tail call noundef float @llvm.fmuladd.f32(float %i.xx, float %i.zr, float %i.zs)
  %i.zu = extractelement <4 x float> %i.zp, i64 2
  %i.zv = tail call noundef float @llvm.fmuladd.f32(float %i.yl, float %i.xx, float %i.zu)
  %i.zw = getelementptr inbounds nuw i8, ptr %2, i64 316
  %i.zx = load float, ptr %i.zw, align 4, !tbaa !8
  %i.zy = extractelement <4 x float> %i.zp, i64 3
  %i.zz = tail call noundef float @llvm.fmuladd.f32(float %i.zx, float %i.xx, float %i.zy)
  %i.aaa = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.aab = load float, ptr %i.aaa, align 8, !tbaa !8
  %i.aac = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.aad = load float, ptr %i.aac, align 8, !tbaa !8
  %i.aae = fmul float %i.xw, %i.aad
  %i.aaf = tail call float @llvm.fmuladd.f32(float %i.aab, float %i.xv, float %i.aae)
  %i.aag = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.aah = load float, ptr %i.aag, align 8, !tbaa !8
  %i.aai = tail call noundef float @llvm.fmuladd.f32(float %i.aah, float %i.xx, float %i.aaf)
  %i.aaj = fmul float %i.xw, %i.zz
  %i.aak = tail call float @llvm.fmuladd.f32(float %i.xv, float %i.zv, float %i.aaj)
  %i.aal = tail call noundef float @llvm.fmuladd.f32(float %i.xx, float %i.aai, float %i.aak)
  %i.aam = fadd float %i.zt, %i.aal
  %i.aan = fdiv float 1.000000e+00, %i.aam
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store float %i.aan, ptr %i.aao, align 8, !tbaa !77
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store float 0.000000e+00, ptr %i.aap, align 8, !tbaa !78
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store float 0.000000e+00, ptr %i.aaq, align 8, !tbaa !20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN18btSliderConstraint13testLinLimitsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1148) initializes((320, 321), (1100, 1104)) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  store i8 0, ptr %i.a, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1052 ; 5 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !8  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1100
  store float %i.c, ptr %i.d, align 4, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load float, ptr %i.e, align 8, !tbaa !64 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.h = load float, ptr %i.g, align 4, !tbaa !65 ; 3 uses
  %i.i = fcmp ugt float %i.f, %i.h
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fcmp ogt float %i.c, %i.h
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = fsub float %i.c, %i.h
  store float %i.k, ptr %i.b, align 4, !tbaa !8
  store i8 1, ptr %i.a, align 8, !tbaa !62
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.l = fcmp olt float %i.c, %i.f
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = fsub float %i.c, %i.f
  store float %i.m, ptr %i.b, align 4, !tbaa !8
  store i8 1, ptr %i.a, align 8, !tbaa !62
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.g
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN18btSliderConstraint13testAngLimitsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1148) initializes((321, 322), (1108, 1112)) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 2 uses
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 321 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !74 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !75 ; 2 uses
  %i.g = fcmp ugt float %i.d, %i.f
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.k = load float, ptr %i.h, align 8, !tbaa !8
  %i.l = load float, ptr %i.i, align 8, !tbaa !8
  %i.m = load float, ptr %i.j, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.q = load float, ptr %i.n, align 4, !tbaa !8
  %i.r = load float, ptr %i.o, align 4, !tbaa !8
  %i.s = load float, ptr %i.p, align 4, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.w = load float, ptr %i.t, align 8, !tbaa !8  ; 2 uses
  %i.x = load float, ptr %i.u, align 8, !tbaa !8  ; 2 uses
  %i.y = load float, ptr %i.v, align 8, !tbaa !8  ; 2 uses
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
  store float %i.as, ptr %i.at, align 8, !tbaa !76
  %i.au = load float, ptr %i.c, align 8, !tbaa !74 ; 2 uses
  %i.av = fcmp olt float %i.as, %i.au
  br i1 %i.av, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %_Z11btAtan2Fastff.exit
  %i.aw = load float, ptr %i.e, align 4, !tbaa !75 ; 2 uses
  %i.ax = fcmp ogt float %i.as, %i.aw
  br i1 %i.ax, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %_Z11btAtan2Fastff.exit
  %.sink34 = phi float [ %i.au, %_Z11btAtan2Fastff.exit ], [ %i.aw, %bb.e ]
  %i.ay = fsub float %i.as, %.sink34
  store float %i.ay, ptr %i.a, align 4, !tbaa !72
  store i8 1, ptr %i.b, align 1, !tbaa !73
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN18btSliderConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !79
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  store i32 4, ptr %1, align 4, !tbaa !79
  store i32 2, ptr %i.d, align 4, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82, !nonnull !33, !align !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83, !nonnull !33, !align !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.g, ptr noundef nonnull align 4 dereferenceable(64) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1052 ; 3 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !8  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1100
end_hunk_0
begin_hunk_1_@_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %.462, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.462, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %.462, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.462, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %.462, i64 40
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !8, !noalias !33 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.471
  %i.ag = load float, ptr %i.af, align 4, !tbaa !8, !noalias !33 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.472
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !8, !noalias !33 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.473
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !8, !noalias !33 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.462, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %.462, i64 56
  %i.an = load float, ptr %i.am, align 4, !tbaa !8, !noalias !33
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ap = load <2 x float>, ptr %.462, align 4, !tbaa !8, !noalias !33 ; 3 uses
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.ar = insertelement <4 x float> %i.aq, float 0.000000e+00, i64 3
  %i.as = insertelement <4 x float> %i.ar, float %i.j, i64 0
  %i.at = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.aq, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.au = insertelement <4 x float> %i.at, float %i.q, i64 1
  %i.av = insertelement <4 x float> %i.au, float %i.w, i64 2
  %i.aw = fmul <4 x float> %i.as, %i.av
  %i.ax = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.h, i64 0
  %i.ay = insertelement <4 x float> %i.ax, float %i.o, i64 1
  %i.az = insertelement <4 x float> %i.ay, float %i.u, i64 2 ; 3 uses
  %i.ba = shufflevector <2 x float> %i.ap, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.ba, <4 x float> %i.aw)
  %i.bc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.s, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.y, i64 2 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.bg = load <2 x float>, ptr %i.z, align 4, !tbaa !8, !noalias !33 ; 3 uses
  %i.bh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.j, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.q, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.w, i64 2 ; 2 uses
  %i.bk = shufflevector <2 x float> %i.bg, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.bl = fmul <4 x float> %i.bj, %i.bk
  %i.bm = shufflevector <2 x float> %i.bg, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.bm, <4 x float> %i.bl)
  %i.bo = load <2 x float>, ptr %i.al, align 4, !tbaa !8, !noalias !33
  %i.bp = load <2 x float>, ptr %i.k, align 4, !tbaa !8, !noalias !33 ; 3 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.br, <4 x float> %i.bb)
  %i.bt = load <2 x float>, ptr %i.aa, align 4, !tbaa !8, !noalias !33 ; 3 uses
  %i.bu = shufflevector <2 x float> %i.bp, <2 x float> %i.bt, <2 x i32> <i32 0, i32 2>
  %i.bv = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.bu, %i.bw
  %i.by = shufflevector <2 x float> %i.ap, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.bz = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.ca, <2 x float> %i.bx)
  %i.cc = shufflevector <2 x float> %i.bp, <2 x float> %i.bt, <2 x i32> <i32 1, i32 3>
  %i.cd = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.ce, <2 x float> %i.cb)
  %i.cg = fadd <2 x float> %i.bo, %i.cf
  %i.ch = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.ci, <4 x float> %i.bn)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.cl = load <2 x float>, ptr %i.ab, align 4, !tbaa !8, !noalias !33 ; 3 uses
  %i.cm = load float, ptr %i.ac, align 4, !tbaa !8, !noalias !33
  %i.cn = shufflevector <2 x float> %i.cl, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.co = fmul <4 x float> %i.bj, %i.cn
  %i.cp = shufflevector <2 x float> %i.cl, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.cp, <4 x float> %i.co)
  %i.cr = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ae, i64 0
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.cs, <4 x float> %i.cq)
  %i.cu = fmul float %i.cm, %i.ai
  %i.cv = extractelement <2 x float> %i.cl, i64 0
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.ag, float %i.cu)
  %i.cx = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.ak, float %i.cw)
  %i.cy = fadd float %i.cx, %i.an
  %.sroa.3.12.vec.insert.i.i33 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cy, i64 0
  store <4 x float> %i.bs, ptr %i.ao, align 4
  store <4 x float> %i.cj, ptr %i.bf, align 4
  store <4 x float> %i.ct, ptr %i.ck, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 892
  store <2 x float> %i.cg, ptr %i.cz, align 4
  %.sroa.1997.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 900
  store <2 x float> %.sroa.3.12.vec.insert.i.i33, ptr %.sroa.1997.48..sroa_idx, align 4, !tbaa !26
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %.474
  %i.db = load float, ptr %i.da, align 4, !tbaa !8, !noalias !33
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 %.476
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !8, !noalias !33 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.475, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %.477
  %i.dg = load float, ptr %i.df, align 4, !tbaa !8, !noalias !33
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 %.478
  %i.di = load float, ptr %i.dh, align 8, !tbaa !8, !noalias !33
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %.479
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !8, !noalias !33 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %.480
  %i.dm = load float, ptr %i.dl, align 8, !tbaa !8, !noalias !33
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %.481
  %i.do = load float, ptr %i.dn, align 4, !tbaa !8, !noalias !33
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %.482
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !8, !noalias !33 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.483
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !8, !noalias !33
  %i.dt = getelementptr inbounds nuw i8, ptr %.475, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %.475, i64 20
  %i.dv = getelementptr inbounds nuw i8, ptr %.475, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %.475, i64 36
  %i.dx = getelementptr inbounds nuw i8, ptr %.475, i64 40
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !8, !noalias !33 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 %.484
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !8, !noalias !33 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 %.485
  %i.ec = load float, ptr %i.eb, align 8, !tbaa !8, !noalias !33 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 %.486
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !8, !noalias !33 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.475, i64 48
  %i.eg = getelementptr inbounds nuw i8, ptr %.475, i64 56
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !8, !noalias !33
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 908
  %i.ej = load <2 x float>, ptr %.475, align 4, !tbaa !8, !noalias !33 ; 3 uses
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.el = insertelement <4 x float> %i.ek, float 0.000000e+00, i64 3
  %i.em = insertelement <4 x float> %i.el, float %i.dd, i64 0
  %i.en = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ek, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.eo = insertelement <4 x float> %i.en, float %i.dk, i64 1
  %i.ep = insertelement <4 x float> %i.eo, float %i.dq, i64 2
  %i.eq = fmul <4 x float> %i.em, %i.ep
  %i.er = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.db, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.di, i64 1
  %i.et = insertelement <4 x float> %i.es, float %i.do, i64 2 ; 3 uses
  %i.eu = shufflevector <2 x float> %i.ej, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.eu, <4 x float> %i.eq)
  %i.ew = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dg, i64 0
  %i.ex = insertelement <4 x float> %i.ew, float %i.dm, i64 1
  %i.ey = insertelement <4 x float> %i.ex, float %i.ds, i64 2 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.fa = load <2 x float>, ptr %i.dt, align 4, !tbaa !8, !noalias !33 ; 3 uses
  %i.fb = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dd, i64 0
  %i.fc = insertelement <4 x float> %i.fb, float %i.dk, i64 1
  %i.fd = insertelement <4 x float> %i.fc, float %i.dq, i64 2 ; 2 uses
  %i.fe = shufflevector <2 x float> %i.fa, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ff = fmul <4 x float> %i.fd, %i.fe
  %i.fg = shufflevector <2 x float> %i.fa, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.fg, <4 x float> %i.ff)
  %i.fi = load <2 x float>, ptr %i.ef, align 4, !tbaa !8, !noalias !33
  %i.fj = load <2 x float>, ptr %i.de, align 4, !tbaa !8, !noalias !33 ; 3 uses
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.fl, <4 x float> %i.ev)
  %i.fn = load <2 x float>, ptr %i.du, align 4, !tbaa !8, !noalias !33 ; 3 uses
  %i.fo = shufflevector <2 x float> %i.fj, <2 x float> %i.fn, <2 x i32> <i32 0, i32 2>
  %i.fp = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = fmul <2 x float> %i.fo, %i.fq
  %i.fs = shufflevector <2 x float> %i.ej, <2 x float> %i.fa, <2 x i32> <i32 0, i32 2>
  %i.ft = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.fu, <2 x float> %i.fr)
  %i.fw = shufflevector <2 x float> %i.fj, <2 x float> %i.fn, <2 x i32> <i32 1, i32 3>
  %i.fx = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fy, <2 x float> %i.fv)
  %i.ga = fadd <2 x float> %i.fi, %i.fz
  %i.gb = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.gd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.gc, <4 x float> %i.fh)
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 940
  %i.gf = load <2 x float>, ptr %i.dv, align 4, !tbaa !8, !noalias !33 ; 3 uses
  %i.gg = load float, ptr %i.dw, align 4, !tbaa !8, !noalias !33
  %i.gh = shufflevector <2 x float> %i.gf, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.gi = fmul <4 x float> %i.fd, %i.gh
  %i.gj = shufflevector <2 x float> %i.gf, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.gj, <4 x float> %i.gi)
  %i.gl = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.dy, i64 0
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.gm, <4 x float> %i.gk)
  %i.go = fmul float %i.gg, %i.ec
  %i.gp = extractelement <2 x float> %i.gf, i64 0
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.ea, float %i.go)
  %i.gr = tail call noundef float @llvm.fmuladd.f32(float %i.dy, float %i.ee, float %i.gq)
  %i.gs = fadd float %i.gr, %i.eh
  %.sroa.3.12.vec.insert.i.i46 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gs, i64 0
  store <4 x float> %i.fm, ptr %i.ei, align 4
  store <4 x float> %i.gd, ptr %i.ez, align 4
  store <4 x float> %i.gn, ptr %i.ge, align 4
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 956
  store <2 x float> %i.ga, ptr %i.gt, align 4
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 964
  store <2 x float> %.sroa.3.12.vec.insert.i.i46, ptr %i.gu, align 4, !tbaa !26
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 988 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gx, ptr noundef nonnull align 4 dereferenceable(16) %i.gw, i64 16, i1 false), !tbaa.struct !25
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 956
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gz, ptr noundef nonnull align 4 dereferenceable(16) %i.gy, i64 16, i1 false), !tbaa.struct !25
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 876
  %3 = load <4 x float>, ptr %i.gv, align 4       ; 3 uses
  %.sroa.0.0.vec.insert.i = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.hc = load float, ptr %i.ha, align 4, !tbaa !8 ; 4 uses
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.hc, i64 1
  %i.hd = load float, ptr %i.hb, align 4, !tbaa !8 ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hd, i64 0
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 972
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.he, align 4
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 980
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.411.0..sroa_idx, align 4, !tbaa !26
  %brmerge = select i1 %i.c, i1 true, i1 %i.f
  br i1 %brmerge, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.hf = load float, ptr %i.gz, align 4, !tbaa !8
  %i.hg = load float, ptr %i.gx, align 4, !tbaa !8 ; 2 uses
  %i.hh = fsub float %i.hf, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.hk = load <2 x float>, ptr %i.hi, align 8, !tbaa !8
  %i.hl = load <2 x float>, ptr %i.hj, align 8, !tbaa !8 ; 2 uses
  %i.hm = fsub <2 x float> %i.hk, %i.hl
  %i.hn = extractelement <2 x float> %i.hl, i64 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ho = load float, ptr %i.gx, align 4, !tbaa !8 ; 2 uses
  %i.hp = load float, ptr %i.gz, align 4, !tbaa !8
  %i.hq = fsub float %i.ho, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ht = load <2 x float>, ptr %i.hr, align 8, !tbaa !8 ; 2 uses
  %i.hu = load <2 x float>, ptr %i.hs, align 8, !tbaa !8
  %i.hv = fsub <2 x float> %i.ht, %i.hu
  %i.hw = extractelement <2 x float> %i.ht, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink461 = phi float [ %i.hq, %bb.c ], [ %i.hh, %bb.b ] ; 3 uses
  %i.hx = phi float [ %i.hw, %bb.c ], [ %i.hn, %bb.b ]
  %i.hy = phi float [ %i.ho, %bb.c ], [ %i.hg, %bb.b ]
  %i.hz = phi <2 x float> [ %i.hv, %bb.c ], [ %i.hm, %bb.b ] ; 6 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.ia = load float, ptr %.in, align 4, !tbaa !8
  %.sroa.0.0.vec.insert.i62 = insertelement <2 x float> poison, float %.sink461, i64 0 ; 2 uses
  %i.ib = shufflevector <2 x float> %.sroa.0.0.vec.insert.i62, <2 x float> %i.hz, <2 x i32> <i32 0, i32 2>
  %i.ic = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.hz, <2 x i32> <i32 3, i32 1>
  %4 = extractelement <4 x float> %3, i64 2
  %5 = extractelement <4 x float> %3, i64 0       ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1036
  store <2 x float> %i.ib, ptr %i.id, align 4
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 1044
  store <2 x float> %i.ic, ptr %i.ie, align 4, !tbaa !26
  %i.if = extractelement <2 x float> %i.hz, i64 0 ; 2 uses
  %i.ig = fmul float %i.hc, %i.if
  %i.ih = tail call float @llvm.fmuladd.f32(float %5, float %.sink461, float %i.ig)
  %i.ii = extractelement <2 x float> %i.hz, i64 1 ; 2 uses
  %i.ij = tail call noundef float @llvm.fmuladd.f32(float %i.hd, float %i.ii, float %i.ih) ; 3 uses
  %i.ik = fmul float %5, %i.ij
  %i.il = fmul float %i.hc, %i.ij
  %i.im = fmul float %i.hd, %i.ij
  %i.in = fadd float %i.hy, %i.ik
  %i.io = fadd float %i.hx, %i.il
  %i.ip = fadd float %i.im, %i.ia
  %.sroa.0.0.vec.insert.i70 = insertelement <2 x float> poison, float %i.in, i64 0
  %.sroa.0.4.vec.insert.i71 = insertelement <2 x float> %.sroa.0.0.vec.insert.i70, float %i.io, i64 1
  %.sroa.3.12.vec.insert.i72 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ip, i64 0
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 1020
  store <2 x float> %.sroa.0.4.vec.insert.i71, ptr %i.iq, align 4
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store <2 x float> %.sroa.3.12.vec.insert.i72, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !26
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.iu = load float, ptr %i.is, align 8, !tbaa !8
  %i.iv = load float, ptr %i.it, align 8, !tbaa !8
  %i.iw = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.ix = insertelement <2 x float> %i.iw, float %i.iu, i64 1
  %i.iy = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x float> %i.ix, %i.iy
  %i.ja = shufflevector <2 x float> %.sroa.0.0.vec.insert.i62, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ja, <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.iz)
  %i.jc = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jd = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.je = insertelement <2 x float> %i.jd, float %i.iv, i64 1
  %i.jf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> %i.je, <2 x float> %i.jb)
  store <2 x float> %i.jf, ptr %i.ir, align 4, !tbaa !8
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.ji = load float, ptr %i.jg, align 4, !tbaa !8
  %i.jj = load float, ptr %i.jh, align 4, !tbaa !8
  %i.jk = fmul float %i.ji, %i.if
  %i.jl = tail call float @llvm.fmuladd.f32(float %.sink461, float %4, float %i.jk)
  %i.jm = tail call noundef float @llvm.fmuladd.f32(float %i.ii, float %i.jj, float %i.jl)
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 1060
  store float %i.jm, ptr %i.jn, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN18btSliderConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1148) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store i32 6, ptr %1, align 4, !tbaa !79
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !81
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN18btSliderConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82, !nonnull !33, !align !35 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83, !nonnull !33, !align !35 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.j = load float, ptr %i.i, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.l = load float, ptr %i.k, align 8, !tbaa !54
  tail call void @_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, float noundef %i.j, float noundef %i.l)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, float noundef %6, float noundef %7) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  store i8 0, ptr %i.a, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1052 ; 6 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !8  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1100 ; 2 uses
  store float %i.c, ptr %i.d, align 4, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.f = load float, ptr %i.e, align 8, !tbaa !64 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 3 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !65 ; 3 uses
  %i.i = fcmp ugt float %i.f, %i.h
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fcmp ogt float %i.c, %i.h
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = fsub float %i.c, %i.h
  store float %i.k, ptr %i.b, align 4, !tbaa !8
  store i8 1, ptr %i.a, align 8, !tbaa !62
  br label %_ZN18btSliderConstraint13testLinLimitsEv.exit

bb.d:                                             ; preds = %bb.b
  %i.l = fcmp olt float %i.c, %i.f
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = fsub float %i.c, %i.f
  store float %i.m, ptr %i.b, align 4, !tbaa !8
  store i8 1, ptr %i.a, align 8, !tbaa !62
  br label %_ZN18btSliderConstraint13testLinLimitsEv.exit

bb.f:                                             ; preds = %bb.d
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !8
  br label %_ZN18btSliderConstraint13testLinLimitsEv.exit

bb.g:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !8
  br label %_ZN18btSliderConstraint13testLinLimitsEv.exit

_ZN18btSliderConstraint13testLinLimitsEv.exit:    ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 3 uses
  store float 0.000000e+00, ptr %i.n, align 4, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 321 ; 3 uses
  store i8 0, ptr %i.o, align 1, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !74 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 4 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !75 ; 2 uses
  %i.t = fcmp ugt float %i.q, %i.s
  br i1 %i.t, label %_ZN18btSliderConstraint13testAngLimitsEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN18btSliderConstraint13testLinLimitsEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.x = load float, ptr %i.u, align 8, !tbaa !8
  %i.y = load float, ptr %i.v, align 8, !tbaa !8
  %i.z = load float, ptr %i.w, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.ad = load float, ptr %i.aa, align 4, !tbaa !8
  %i.ae = load float, ptr %i.ab, align 4, !tbaa !8
  %i.af = load float, ptr %i.ac, align 4, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.aj = load float, ptr %i.ag, align 8, !tbaa !8 ; 2 uses
  %i.ak = load float, ptr %i.ah, align 8, !tbaa !8 ; 2 uses
  %i.al = load float, ptr %i.ai, align 8, !tbaa !8 ; 2 uses
  %i.am = fmul float %i.ae, %i.ak
  %i.an = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ad, float %i.am)
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.af, float %i.an) ; 2 uses
  %i.ap = fmul float %i.y, %i.ak
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.x, float %i.ap)
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.z, float %i.aq) ; 5 uses
  %i.as = tail call noundef float @llvm.fabs.f32(float %i.ao) ; 4 uses
  %i.at = fcmp ult float %i.ar, 0.000000e+00
  br i1 %i.at, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = fsub float %i.ar, %i.as
  %i.av = fadd float %i.ar, %i.as
  %i.aw = fdiv float %i.au, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float f0xBF490FDB, float f0x3F490FDB)
  br label %_Z11btAtan2Fastff.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ay = fadd float %i.ar, %i.as
  %i.az = fsub float %i.as, %i.ar
  %i.ba = fdiv float %i.ay, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float f0xBF490FDB, float f0x4016CBE4)
  br label %_Z11btAtan2Fastff.exit.i

_Z11btAtan2Fastff.exit.i:                         ; preds = %bb.j, %bb.i
  %.0.i.i = phi float [ %i.ax, %bb.i ], [ %i.bb, %bb.j ] ; 2 uses
  %i.bc = fcmp olt float %i.ao, 0.000000e+00
  %i.bd = fneg float %.0.i.i
  %i.be = select i1 %i.bc, float %i.bd, float %.0.i.i
  %i.bf = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.be, float noundef %i.q, float noundef %i.s) ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store float %i.bf, ptr %i.bg, align 8, !tbaa !76
  %i.bh = load float, ptr %i.p, align 8, !tbaa !74 ; 2 uses
  %i.bi = fcmp olt float %i.bf, %i.bh
  br i1 %i.bi, label %.sink.split.i, label %bb.k

bb.k:                                             ; preds = %_Z11btAtan2Fastff.exit.i
  %i.bj = load float, ptr %i.r, align 4, !tbaa !75 ; 2 uses
  %i.bk = fcmp ogt float %i.bf, %i.bj
  br i1 %i.bk, label %.sink.split.i, label %_ZN18btSliderConstraint13testAngLimitsEv.exit

.sink.split.i:                                    ; preds = %bb.k, %_Z11btAtan2Fastff.exit.i
  %.sink34.i = phi float [ %i.bh, %_Z11btAtan2Fastff.exit.i ], [ %i.bj, %bb.k ]
  %i.bl = fsub float %i.bf, %.sink34.i
  store float %i.bl, ptr %i.n, align 4, !tbaa !72
  store i8 1, ptr %i.o, align 1, !tbaa !73
  br label %_ZN18btSliderConstraint13testAngLimitsEv.exit

_ZN18btSliderConstraint13testAngLimitsEv.exit:    ; preds = %_ZN18btSliderConstraint13testLinLimitsEv.exit, %bb.k, %.sink.split.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 908
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !85 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !24, !range !32, !noundef !33
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.bu = load float, ptr %i.bm, align 4, !tbaa !8 ; 11 uses
  %i.bv = load float, ptr %i.bs, align 4, !tbaa !8 ; 11 uses
  %i.bw = load float, ptr %i.bt, align 4, !tbaa !8 ; 11 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 880
  %8 = load <4 x float>, ptr %i.bx, align 8       ; 2 uses
  %.sroa.0.0.vec.insert.i321 = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ca = load float, ptr %i.by, align 8, !tbaa !8 ; 6 uses
  %.sroa.0.4.vec.insert.i322 = insertelement <2 x float> %.sroa.0.0.vec.insert.i321, float %i.ca, i64 1
  %i.cb = load float, ptr %i.bz, align 8, !tbaa !8 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 884
  %9 = load <4 x float>, ptr %i.cc, align 4       ; 2 uses
  %.sroa.0.0.vec.insert.i326 = shufflevector <4 x float> %9, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cf = load float, ptr %i.cd, align 4, !tbaa !8 ; 6 uses
  %.sroa.0.4.vec.insert.i327 = insertelement <2 x float> %.sroa.0.0.vec.insert.i326, float %i.cf, i64 1
  %i.cg = load float, ptr %i.ce, align 4, !tbaa !8 ; 6 uses
  %.sroa.0512.0.vec.extract = extractelement <4 x float> %8, i64 0 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !89 ; 12 uses
  store float %.sroa.0512.0.vec.extract, ptr %i.ci, align 4, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store float %i.ca, ptr %i.cj, align 4, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store float %i.cb, ptr %i.ck, align 4, !tbaa !8
  %.sroa.0511.0.vec.extract = extractelement <4 x float> %9, i64 0 ; 4 uses
  %i.cl = sext i32 %i.bp to i64                   ; 3 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cl
  store float %.sroa.0511.0.vec.extract, ptr %i.cm, align 4, !tbaa !8
  %i.cn = add nsw i32 %i.bp, 1
  %i.co = sext i32 %i.cn to i64                   ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.co
  store float %i.cf, ptr %i.cp, align 4, !tbaa !8
  %i.cq = add nsw i32 %i.bp, 2
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cr
  store float %i.cg, ptr %i.cs, align 4, !tbaa !8
  %i.ct = fneg float %.sroa.0512.0.vec.extract    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !90 ; 11 uses
  store float %i.ct, ptr %i.cv, align 4, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = fneg float %.sroa.0511.0.vec.extract    ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cl
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.co
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cr
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 940
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !91 ; 5 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cl
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.7398.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.7394.48..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.dk = shl nsw i32 %i.bp, 1
  %i.dl = fadd float %6, %7                       ; 2 uses
  %i.dm = fcmp ogt float %i.dl, 0.000000e+00
  %i.dn = fdiv float %7, %i.dl
  %.0303 = select i1 %i.dm, float %i.dn, float 5.000000e-01 ; 2 uses
  %i.do = fcmp ogt float %.0303, 9.900000e-01
  %.1304 = select i1 %i.do, float 9.900000e-01, float %.0303 ; 2 uses
  %i.dp = fcmp olt float %.1304, f0x3C23D70A
  %.2305 = select i1 %i.dp, float f0x3C23D70A, float %.1304 ; 5 uses
  %i.dq = sext i32 %i.dk to i64                   ; 5 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.dq
  %i.ds = add nsw i64 %i.dq, 2                    ; 2 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ds
  %i.du = fsub float 1.000000e+00, %.2305         ; 4 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.dq
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ds
  %i.dx = mul nsw i32 %i.bp, 3
  %i.dy = sext i32 %i.dx to i64                   ; 5 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.dy
  %i.ea = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.eb = insertelement <2 x float> %i.ea, float %i.cg, i64 1
  %i.ec = fneg <2 x float> %i.eb                  ; 3 uses
  %i.ed = extractelement <2 x float> %i.ec, i64 0
  %i.ee = extractelement <2 x float> %i.ec, i64 1
  %i.ef = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.cb, i64 1
  %i.eh = fneg <2 x float> %i.eg                  ; 2 uses
  store <2 x float> %i.eh, ptr %i.cw, align 4, !tbaa !8
  store float %i.cx, ptr %i.cy, align 4, !tbaa !8
  store float %i.ed, ptr %i.cz, align 4, !tbaa !8
  store float %i.ee, ptr %i.da, align 4, !tbaa !8
  %i.ei = load float, ptr %1, align 8, !tbaa !92
  %i.ej = load float, ptr %i.db, align 4, !tbaa !93
  %i.ek = fmul float %i.ei, %i.ej
  %i.el = load float, ptr %i.dc, align 4, !tbaa !94
  %i.em = fmul float %i.ek, %i.el                 ; 2 uses
  %i.en = load float, ptr %i.bn, align 4, !tbaa !8 ; 2 uses
  %i.eo = load float, ptr %i.dd, align 4, !tbaa !8 ; 2 uses
  %i.ep = load float, ptr %i.de, align 4, !tbaa !8 ; 2 uses
  %i.eq = fneg float %i.eo
  %i.er = fmul float %i.bw, %i.eq
  %i.es = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.ep, float %i.er) ; 2 uses
  %i.et = fneg float %i.ep
  %i.eu = fmul float %i.bu, %i.et
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.en, float %i.eu) ; 2 uses
  %i.ew = fneg float %i.en
  %i.ex = fmul float %i.bv, %i.ew
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.eo, float %i.ex) ; 2 uses
  %i.ez = fmul float %i.ca, %i.ev
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.es, float %.sroa.0512.0.vec.extract, float %i.ez)
  %i.fb = tail call noundef float @llvm.fmuladd.f32(float %i.ey, float %i.cb, float %i.fa)
  %i.fc = fmul float %i.em, %i.fb
  store float %i.fc, ptr %i.dg, align 4, !tbaa !8
  %i.fd = fmul float %i.cf, %i.ev
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.es, float %.sroa.0511.0.vec.extract, float %i.fd)
  %i.ff = tail call noundef float @llvm.fmuladd.f32(float %i.ey, float %i.cg, float %i.fe)
  %i.fg = fmul float %i.em, %i.ff
  store float %i.fg, ptr %i.dh, align 4, !tbaa !8
  %.sroa.5397.48.copyload = load float, ptr %i.di, align 4
  %.sroa.5.48.copyload = load float, ptr %i.dj, align 4
  %i.fh = load <2 x float>, ptr %.sroa.7398.48..sroa_idx, align 4
  %i.fi = load <2 x float>, ptr %.sroa.7394.48..sroa_idx, align 4
  %i.fj = fsub <2 x float> %i.fi, %i.fh           ; 5 uses
  %i.fk = fsub float %.sroa.5.48.copyload, %.sroa.5397.48.copyload ; 4 uses
  %i.fl = extractelement <2 x float> %i.fj, i64 0 ; 3 uses
  %i.fm = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fn = insertelement <2 x float> %i.fm, float %i.fk, i64 1 ; 3 uses
  %i.fo = fmul <2 x float> %i.fn, %i.eh
  %i.fp = insertelement <2 x float> %.sroa.0.0.vec.insert.i321, float %i.cb, i64 0
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.fp, <2 x float> %i.fo) ; 2 uses
  %i.fr = fmul float %i.fl, %i.ct
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.ca, float %i.fr) ; 2 uses
  %i.ft = insertelement <2 x float> poison, float %.2305, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fv = fmul <2 x float> %i.fu, %i.fq
  store <2 x float> %i.fv, ptr %i.dr, align 4, !tbaa !8
  %i.fw = fmul float %.2305, %i.fs
  store float %i.fw, ptr %i.dt, align 4, !tbaa !8
  %i.fx = insertelement <2 x float> poison, float %i.du, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fz = fmul <2 x float> %i.fy, %i.fq
  store <2 x float> %i.fz, ptr %i.dv, align 4, !tbaa !8
  %i.ga = fmul float %i.du, %i.fs
  store float %i.ga, ptr %i.dw, align 4, !tbaa !8
  %i.gb = fmul <2 x float> %i.fn, %i.ec
  %i.gc = insertelement <2 x float> %.sroa.0.0.vec.insert.i326, float %i.cg, i64 0
  %i.gd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.gc, <2 x float> %i.gb) ; 2 uses
  %i.ge = fmul float %i.fl, %i.cx
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.cf, float %i.ge) ; 2 uses
  %i.gg = fmul <2 x float> %i.fu, %i.gd
  store <2 x float> %i.gg, ptr %i.dz, align 4, !tbaa !8
  %i.gh = fmul float %.2305, %i.gf
  %i.gi = add nsw i64 %i.dy, 2                    ; 2 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.gi
  store float %i.gh, ptr %i.gj, align 4, !tbaa !8
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.dy
  %i.gl = fmul <2 x float> %i.fy, %i.gd
  store <2 x float> %i.gl, ptr %i.gk, align 4, !tbaa !8
  %i.gm = fmul float %i.du, %i.gf
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.gi
  store float %i.gm, ptr %i.gn, align 4, !tbaa !8
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !95 ; 5 uses
  %i.gq = shl nsw i64 %i.dq, 2
  %scevgep = getelementptr i8, ptr %i.gp, i64 %i.gq ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i322, ptr %scevgep, align 4, !tbaa !8
  %.sroa.6513.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 8
  store float %i.cb, ptr %.sroa.6513.0.scevgep.sroa_idx, align 4, !tbaa !8
  %i.gr = shl nsw i64 %i.dy, 2
  %scevgep491 = getelementptr i8, ptr %i.gp, i64 %i.gr ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i327, ptr %scevgep491, align 4, !tbaa !8
  %.sroa.6.0.scevgep491.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep491, i64 8
  store float %i.cg, ptr %.sroa.6.0.scevgep491.sroa_idx, align 4, !tbaa !8
  %i.gs = trunc nuw i8 %i.br to i1
  %i.gt = select i1 %i.gs, float 1.000000e+00, float -1.000000e+00 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 956
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.gw = load float, ptr %i.gu, align 4, !tbaa !8
  %i.gx = load float, ptr %i.gv, align 4, !tbaa !8
  %i.gy = fsub float %i.gw, %i.gx                 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.ha = load float, ptr %i.gz, align 8, !tbaa !8
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.hc = load float, ptr %i.hb, align 8, !tbaa !8
  %i.hd = fsub float %i.ha, %i.hc                 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 964
  %i.hf = load float, ptr %i.he, align 4, !tbaa !8
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 900
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !8
  %i.hi = fsub float %i.hf, %i.hh                 ; 2 uses
  %i.hj = load float, ptr %1, align 8, !tbaa !92
  %i.hk = load float, ptr %i.db, align 4, !tbaa !93
  %i.hl = fmul float %i.hj, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.hn = load float, ptr %i.hm, align 8, !tbaa !96
  %i.ho = fmul float %i.hl, %i.hn                 ; 2 uses
  %i.hp = fmul float %i.ca, %i.hd
  %i.hq = tail call float @llvm.fmuladd.f32(float %.sroa.0512.0.vec.extract, float %i.gy, float %i.hp)
  %i.hr = tail call noundef float @llvm.fmuladd.f32(float %i.cb, float %i.hi, float %i.hq)
  %i.hs = fmul float %i.hr, %i.ho
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.dq
  store float %i.hs, ptr %i.ht, align 4, !tbaa !8
  %i.hu = fmul float %i.cf, %i.hd
  %i.hv = tail call float @llvm.fmuladd.f32(float %.sroa.0511.0.vec.extract, float %i.gy, float %i.hu)
  %i.hw = tail call noundef float @llvm.fmuladd.f32(float %i.cg, float %i.hi, float %i.hv)
  %i.hx = fmul float %i.hw, %i.ho
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.dy
  store float %i.hx, ptr %i.hy, align 4, !tbaa !8
  %i.hz = load i8, ptr %i.a, align 8, !tbaa !62, !range !32, !noundef !33
  %i.ia = trunc nuw i8 %i.hz to i1                ; 3 uses
  br i1 %i.ia, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN18btSliderConstraint13testAngLimitsEv.exit
  %i.ib = load float, ptr %i.b, align 4, !tbaa !8
  %i.ic = fmul float %i.gt, %i.ib                 ; 2 uses
  %i.id = fcmp ule float %i.ic, 0.000000e+00
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.if = load i8, ptr %i.ie, align 4, !tbaa !10, !range !32, !noundef !33
  %i.ig = icmp eq i8 %i.if, 0
  br label %bb.m

bb.l:                                             ; preds = %_ZN18btSliderConstraint13testAngLimitsEv.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.ii = load i8, ptr %i.ih, align 4, !tbaa !10, !range !32, !noundef !33
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.m, label %bb.ad

bb.m:                                             ; preds = %.thread, %bb.l
  %spec.select466.in = phi i1 [ %i.ig, %.thread ], [ false, %bb.l ]
  %.0298465 = phi i1 [ %i.id, %.thread ], [ false, %bb.l ] ; 2 uses
  %.0300464 = phi float [ %i.ic, %.thread ], [ 0.000000e+00, %bb.l ]
  %i.ik = shl nsw i32 %i.bp, 2                    ; 3 uses
  %i.il = sext i32 %i.ik to i64                   ; 14 uses
  %i.im = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.il
  store float %i.bu, ptr %i.im, align 4, !tbaa !8
  %i.in = sext i32 %i.ik to i64
  %i.io = getelementptr [4 x i8], ptr %i.gp, i64 %i.in
  %i.ip = getelementptr i8, ptr %i.io, i64 4
  store float %i.bv, ptr %i.ip, align 4, !tbaa !8
  %i.iq = or disjoint i32 %i.ik, 2
  %i.ir = sext i32 %i.iq to i64                   ; 3 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.ir
  store float %i.bw, ptr %i.is, align 4, !tbaa !8
  %i.it = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.iu = insertelement <2 x float> %i.it, float %i.bw, i64 1
  %i.iv = fneg <2 x float> %i.iu
  %i.iw = fneg float %i.bu
  %i.ix = fmul float %i.fl, %i.iw
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.bv, float %i.ix) ; 2 uses
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.il
  %i.ja = fmul <2 x float> %i.fn, %i.iv
  %i.jb = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.jc = insertelement <2 x float> %i.jb, float %i.bu, i64 1
  %i.jd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.jc, <2 x float> %i.ja) ; 2 uses
  %i.je = fmul <2 x float> %i.fu, %i.jd
  store <2 x float> %i.je, ptr %i.iz, align 4, !tbaa !8
  %i.jf = fmul float %.2305, %i.iy
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ir
  store float %i.jf, ptr %i.jg, align 4, !tbaa !8
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.il
  %i.ji = fmul <2 x float> %i.fy, %i.jd
  store <2 x float> %i.ji, ptr %i.jh, align 4, !tbaa !8
  %i.jj = fmul float %i.du, %i.iy
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ir
  store float %i.jj, ptr %i.jk, align 4, !tbaa !8
  %i.jl = load float, ptr %i.e, align 8, !tbaa !64
  %i.jm = load float, ptr %i.g, align 4, !tbaa !65
  %i.jn = fcmp oeq float %i.jl, %i.jm             ; 2 uses
  %or.cond318 = and i1 %i.jn, %i.ia
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.il
  store float 0.000000e+00, ptr %i.jo, align 4, !tbaa !8
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !97 ; 2 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.jq, i64 %i.il
  store float 0.000000e+00, ptr %i.jr, align 4, !tbaa !8
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !98 ; 2 uses
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.il
  store float 0.000000e+00, ptr %i.ju, align 4, !tbaa !8
  %.not = or i1 %spec.select466.in, %or.cond318
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !99
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store float 0.000000e+00, ptr %i.jx, align 4, !tbaa !8
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.jz = load float, ptr %i.jy, align 8, !tbaa !100
  %i.ka = load float, ptr %i.d, align 4, !tbaa !63
  %i.kb = load float, ptr %i.e, align 8, !tbaa !64
  %i.kc = load float, ptr %i.g, align 4, !tbaa !65
  %i.kd = load float, ptr %1, align 8, !tbaa !92
  %i.ke = load float, ptr %i.db, align 4, !tbaa !93
  %i.kf = fmul float %i.kd, %i.ke
  %i.kg = tail call noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %i.ka, float noundef %i.kb, float noundef %i.kc, float noundef %i.jz, float noundef %i.kf)
  %i.kh = load float, ptr %i.jy, align 8, !tbaa !100
  %i.ki = load ptr, ptr %i.df, align 8, !tbaa !91
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.il ; 2 uses
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !8
  %i.kl = fneg float %i.kg
  %i.km = fmul float %i.gt, %i.kl
  %i.kn = tail call float @llvm.fmuladd.f32(float %i.km, float %i.kh, float %i.kk)
  store float %i.kn, ptr %i.kj, align 4, !tbaa !8
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !101
  %i.kq = fneg float %i.kp
  %i.kr = load float, ptr %1, align 8, !tbaa !92
  %i.ks = load ptr, ptr %i.jp, align 8, !tbaa !97 ; 2 uses
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.il ; 2 uses
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !8
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.kq, float %i.kr, float %i.ku)
  store float %i.kv, ptr %i.kt, align 4, !tbaa !8
  %i.kw = load float, ptr %i.ko, align 4, !tbaa !101
  %i.kx = load float, ptr %1, align 8, !tbaa !92
  %i.ky = load ptr, ptr %i.js, align 8, !tbaa !98 ; 2 uses
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.ky, i64 %i.il ; 2 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !8
  %i.lb = tail call float @llvm.fmuladd.f32(float %i.kw, float %i.kx, float %i.la)
  store float %i.lb, ptr %i.kz, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.lc = phi ptr [ %i.ky, %bb.n ], [ %i.jt, %bb.m ] ; 2 uses
  %i.ld = phi ptr [ %i.ks, %bb.n ], [ %i.jq, %bb.m ]
  br i1 %i.ia, label %bb.p, label %bb.ad

bb.p:                                             ; preds = %bb.o
  %i.le = load float, ptr %1, align 8, !tbaa !92
  %i.lf = load float, ptr %i.db, align 4, !tbaa !93
  %i.lg = fmul float %i.le, %i.lf
  %i.lh = load ptr, ptr %i.df, align 8, !tbaa !91
  %i.li = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %i.il ; 7 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !8
  %i.lk = tail call float @llvm.fmuladd.f32(float %i.lg, float %.0300464, float %i.lj)
  store float %i.lk, ptr %i.li, align 4, !tbaa !8
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !99
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.il
  store float 0.000000e+00, ptr %i.ln, align 4, !tbaa !8
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %i.il ; 3 uses
  br i1 %i.jn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store float f0xFF7FFFFF, ptr %i.lo, align 4, !tbaa !8
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.il
  store float f0x7F7FFFFF, ptr %i.lp, align 4, !tbaa !8
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.il ; 2 uses
  br i1 %.0298465, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store float f0xFF7FFFFF, ptr %i.lo, align 4, !tbaa !8
  store float 0.000000e+00, ptr %i.lq, align 4, !tbaa !8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  store float 0.000000e+00, ptr %i.lo, align 4, !tbaa !8
  store float f0x7F7FFFFF, ptr %i.lq, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.q
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ls = load float, ptr %i.lr, align 8, !tbaa !102
  %i.lt = fsub float 1.000000e+00, %i.ls          ; 2 uses
  %i.lu = tail call noundef float @llvm.fabs.f32(float %i.lt) ; 2 uses
  %i.lv = fcmp ueq float %i.lt, 0.000000e+00
  br i1 %i.lv, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %bb.u
  %.pre = load float, ptr %i.li, align 4, !tbaa !8
  br label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.lw = load float, ptr %4, align 4, !tbaa !8
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !8
  %i.lz = fmul float %i.bv, %i.ly
  %i.ma = tail call float @llvm.fmuladd.f32(float %i.lw, float %i.bu, float %i.lz)
  %i.mb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !8
  %i.md = tail call noundef float @llvm.fmuladd.f32(float %i.mc, float %i.bw, float %i.ma)
  %i.me = load float, ptr %5, align 4, !tbaa !8
  %i.mf = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !8
  %i.mh = fmul float %i.bv, %i.mg
  %i.mi = tail call float @llvm.fmuladd.f32(float %i.me, float %i.bu, float %i.mh)
  %i.mj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !8
  %i.ml = tail call noundef float @llvm.fmuladd.f32(float %i.mk, float %i.bw, float %i.mi)
  %i.mm = fsub float %i.md, %i.ml
  %i.mn = fmul float %i.gt, %i.mm                 ; 4 uses
  %.pre514 = load float, ptr %i.li, align 4, !tbaa !8 ; 6 uses
  br i1 %.0298465, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.mo = fcmp olt float %i.mn, 0.000000e+00
  br i1 %i.mo, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.mp = fneg float %i.lu
  %i.mq = fmul nnan float %i.mn, %i.mp            ; 3 uses
end_hunk_1
