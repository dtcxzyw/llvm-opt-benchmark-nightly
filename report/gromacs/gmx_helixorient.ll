Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_helixorient?download=true
inline.NumInlined: 273
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z15gmx_helixorientiPPc:bb.a
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 4
  store float %i.tg, ptr %i.th, align 4, !tbaa !68
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !68
  %i.tk = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  store float %i.tj, ptr %i.tk, align 4, !tbaa !68
  br i1 %i.rw, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %indvars.iv
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !54
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr inbounds [12 x i8], ptr %i.rt, i64 %i.tn ; 3 uses
  %i.tp = getelementptr inbounds nuw [12 x i8], ptr %i.dc, i64 %indvars.iv ; 3 uses
  %i.tq = load float, ptr %i.to, align 4, !tbaa !68
  store float %i.tq, ptr %i.tp, align 4, !tbaa !68
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !68
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tp, i64 4
  store float %i.ts, ptr %i.tt, align 4, !tbaa !68
  %i.tu = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !68
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  store float %i.tv, ptr %i.tw, align 4, !tbaa !68
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dr, %bb.ds
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv.next
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !54
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr inbounds [12 x i8], ptr %i.rt, i64 %i.tz ; 3 uses
  %i.ub = getelementptr inbounds nuw [12 x i8], ptr %i.cz, i64 %indvars.iv.next ; 3 uses
  %i.uc = load float, ptr %i.ua, align 4, !tbaa !68
  store float %i.uc, ptr %i.ub, align 4, !tbaa !68
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 4
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !68
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ub, i64 4
  store float %i.ue, ptr %i.uf, align 4, !tbaa !68
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !68
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  store float %i.uh, ptr %i.ui, align 4, !tbaa !68
  br i1 %i.rw, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %indvars.iv.next
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !54
  %i.ul = sext i32 %i.uk to i64
  %i.um = getelementptr inbounds [12 x i8], ptr %i.rt, i64 %i.ul ; 3 uses
  %i.un = getelementptr inbounds nuw [12 x i8], ptr %i.dc, i64 %indvars.iv.next ; 3 uses
  %i.uo = load float, ptr %i.um, align 4, !tbaa !68
  store float %i.uo, ptr %i.un, align 4, !tbaa !68
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  %i.uq = load float, ptr %i.up, align 4, !tbaa !68
  %i.ur = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  store float %i.uq, ptr %i.ur, align 4, !tbaa !68
  %i.us = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.ut = load float, ptr %i.us, align 4, !tbaa !68
  %i.uu = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  store float %i.ut, ptr %i.uu, align 4, !tbaa !68
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader626.unr-lcssa, label %bb.dr, !llvm.loop !22

.lr.ph636:                                        ; preds = %.lr.ph636.preheader, %bb.dx
  %indvars.iv670 = phi i64 [ 0, %.lr.ph636.preheader ], [ %indvars.iv.next671, %bb.dx ] ; 12 uses
  %indvars.iv.next671 = add nuw nsw i64 %indvars.iv670, 1 ; 4 uses
  %i.uv = getelementptr inbounds nuw [12 x i8], ptr %i.cz, i64 %indvars.iv.next671 ; 4 uses
  %i.uw = getelementptr inbounds nuw [12 x i8], ptr %i.cz, i64 %indvars.iv670 ; 4 uses
  %i.ux = getelementptr inbounds nuw [12 x i8], ptr %i.dg, i64 %indvars.iv670 ; 3 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uv, i64 8 ; 3 uses
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !68
  %i.va = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.vb = load float, ptr %i.va, align 4, !tbaa !68
  %i.vc = fsub float %i.uz, %i.vb
  %i.vd = load <2 x float>, ptr %i.uv, align 4, !tbaa !68
  %i.ve = load <2 x float>, ptr %i.uw, align 4, !tbaa !68
  %i.vf = fsub <2 x float> %i.vd, %i.ve
  store <2 x float> %i.vf, ptr %i.ux, align 4, !tbaa !68
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ux, i64 8 ; 2 uses
  store float %i.vc, ptr %i.vg, align 4, !tbaa !68
  %i.vh = add nuw nsw i64 %indvars.iv670, 2       ; 2 uses
  %i.vi = getelementptr inbounds nuw [12 x i8], ptr %i.cz, i64 %i.vh ; 4 uses
  %i.vj = getelementptr inbounds nuw [12 x i8], ptr %i.dk, i64 %indvars.iv670 ; 6 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vi, i64 8 ; 3 uses
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !68
  %i.vm = load float, ptr %i.uy, align 4, !tbaa !68
  %i.vn = fsub float %i.vl, %i.vm
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.vp = load <2 x float>, ptr %i.vi, align 4, !tbaa !68
  %i.vq = load <2 x float>, ptr %i.uv, align 4, !tbaa !68
  %i.vr = fsub <2 x float> %i.vp, %i.vq
  store <2 x float> %i.vr, ptr %i.vj, align 4, !tbaa !68
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vj, i64 8 ; 4 uses
  store float %i.vn, ptr %i.vs, align 4, !tbaa !68
  %i.vt = getelementptr inbounds nuw i8, ptr %i.uw, i64 36
  %i.vu = getelementptr inbounds nuw [12 x i8], ptr %i.do, i64 %indvars.iv670 ; 3 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.uw, i64 44
  %i.vw = load float, ptr %i.vv, align 4, !tbaa !68
  %i.vx = load float, ptr %i.vk, align 4, !tbaa !68
  %i.vy = fsub float %i.vw, %i.vx
  %i.vz = load <2 x float>, ptr %i.vt, align 4, !tbaa !68
  %i.wa = load <2 x float>, ptr %i.vi, align 4, !tbaa !68
  %i.wb = fsub <2 x float> %i.vz, %i.wa
  store <2 x float> %i.wb, ptr %i.vu, align 4, !tbaa !68
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vu, i64 8 ; 2 uses
  store float %i.vy, ptr %i.wc, align 4, !tbaa !68
  %i.wd = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %indvars.iv670 ; 8 uses
  %i.we = load float, ptr %i.vg, align 4, !tbaa !68
  %i.wf = load float, ptr %i.vs, align 4, !tbaa !68
  %i.wg = fsub float %i.we, %i.wf
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wd, i64 4 ; 3 uses
  %i.wi = load <2 x float>, ptr %i.ux, align 4, !tbaa !68
  %i.wj = load <2 x float>, ptr %i.vj, align 4, !tbaa !68
  %i.wk = fsub <2 x float> %i.wi, %i.wj
  store <2 x float> %i.wk, ptr %i.wd, align 4, !tbaa !68
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wd, i64 8 ; 6 uses
  store float %i.wg, ptr %i.wl, align 4, !tbaa !68
  %i.wm = getelementptr inbounds nuw [12 x i8], ptr %i.dw, i64 %indvars.iv670 ; 8 uses
  %i.wn = load float, ptr %i.vs, align 4, !tbaa !68
  %i.wo = load float, ptr %i.wc, align 4, !tbaa !68
  %i.wp = fsub float %i.wn, %i.wo                 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wm, i64 4 ; 2 uses
  %i.wr = load <2 x float>, ptr %i.vj, align 4, !tbaa !68
  %i.ws = load <2 x float>, ptr %i.vu, align 4, !tbaa !68
  %i.wt = fsub <2 x float> %i.wr, %i.ws           ; 2 uses
  store <2 x float> %i.wt, ptr %i.wm, align 4, !tbaa !68
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wm, i64 8 ; 5 uses
  store float %i.wp, ptr %i.wu, align 4, !tbaa !68
  %i.wv = getelementptr inbounds nuw [12 x i8], ptr %i.ea, i64 %indvars.iv670 ; 5 uses
  %i.ww = load float, ptr %i.wh, align 4, !tbaa !68
  %i.wx = load float, ptr %i.wl, align 4, !tbaa !68
  %i.wy = extractelement <2 x float> %i.wt, i64 1
  %i.wz = fneg float %i.wy
  %i.xa = fmul float %i.wx, %i.wz
  %i.xb = call float @llvm.fmuladd.f32(float %i.ww, float %i.wp, float %i.xa) ; 4 uses
  store float %i.xb, ptr %i.wv, align 4, !tbaa !68
  %i.xc = load float, ptr %i.wl, align 4, !tbaa !68
  %i.xd = load float, ptr %i.wm, align 4, !tbaa !68
  %i.xe = load float, ptr %i.wd, align 4, !tbaa !68
  %i.xf = load float, ptr %i.wu, align 4, !tbaa !68
  %i.xg = fneg float %i.xf
  %i.xh = fmul float %i.xe, %i.xg
  %i.xi = call float @llvm.fmuladd.f32(float %i.xc, float %i.xd, float %i.xh) ; 4 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wv, i64 4 ; 3 uses
  store float %i.xi, ptr %i.xj, align 4, !tbaa !68
  %i.xk = load float, ptr %i.wd, align 4, !tbaa !68
  %i.xl = load float, ptr %i.wq, align 4, !tbaa !68
  %i.xm = load float, ptr %i.wh, align 4, !tbaa !68
  %i.xn = load float, ptr %i.wm, align 4, !tbaa !68
  %i.xo = fneg float %i.xn
  %i.xp = fmul float %i.xm, %i.xo
  %i.xq = call float @llvm.fmuladd.f32(float %i.xk, float %i.xl, float %i.xp) ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wv, i64 8 ; 2 uses
  %i.xs = fmul float %i.xi, %i.xi
  %i.xt = call float @llvm.fmuladd.f32(float %i.xb, float %i.xb, float %i.xs)
  %i.xu = call noundef float @llvm.fmuladd.f32(float %i.xq, float %i.xq, float %i.xt)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.xu)
  %i.xv = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.xw = fmul float %i.xb, %i.xv
  store float %i.xw, ptr %i.wv, align 4, !tbaa !68
  %i.xx = fmul float %i.xi, %i.xv
  store float %i.xx, ptr %i.xj, align 4, !tbaa !68
  %i.xy = fmul float %i.xq, %i.xv
  store float %i.xy, ptr %i.xr, align 4, !tbaa !68
  %i.xz = load float, ptr %i.wl, align 4, !tbaa !68
  %i.ya = load float, ptr %i.wu, align 4, !tbaa !68
  %i.yb = load <2 x float>, ptr %i.wd, align 4, !tbaa !68 ; 2 uses
  %i.yc = load <2 x float>, ptr %i.wm, align 4, !tbaa !68 ; 2 uses
  %i.yd = shufflevector <2 x float> %i.yb, <2 x float> %i.yc, <2 x i32> <i32 0, i32 2>
  %i.ye = fpext <2 x float> %i.yd to <2 x double> ; 4 uses
  %i.yf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ye, <2 x double> %i.ye, <2 x double> zeroinitializer)
  %i.yg = shufflevector <2 x float> %i.yb, <2 x float> %i.yc, <2 x i32> <i32 1, i32 3>
  %i.yh = fpext <2 x float> %i.yg to <2 x double> ; 4 uses
  %i.yi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yh, <2 x double> %i.yh, <2 x double> %i.yf)
  %i.yj = insertelement <2 x float> poison, float %i.xz, i64 0
  %i.yk = insertelement <2 x float> %i.yj, float %i.ya, i64 1
  %i.yl = fpext <2 x float> %i.yk to <2 x double> ; 4 uses
  %i.ym = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yl, <2 x double> %i.yl, <2 x double> %i.yi) ; 2 uses
  %shift = shufflevector <2 x double> %i.ym, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.ym, %shift
  %i.yn = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.yo = fcmp ogt double %i.yn, 0.000000e+00
  br i1 %i.yo, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %.lr.ph636
  %i.yp = extractelement <2 x double> %i.ye, i64 0
  %i.yq = extractelement <2 x double> %i.ye, i64 1
  %i.yr = call double @llvm.fmuladd.f64(double %i.yp, double %i.yq, double 0.000000e+00)
  %i.ys = extractelement <2 x double> %i.yh, i64 0
  %i.yt = extractelement <2 x double> %i.yh, i64 1
  %i.yu = call double @llvm.fmuladd.f64(double %i.ys, double %i.yt, double %i.yr)
  %i.yv = extractelement <2 x double> %i.yl, i64 0
  %i.yw = extractelement <2 x double> %i.yl, i64 1
  %i.yx = call double @llvm.fmuladd.f64(double %i.yv, double %i.yw, double %i.yu)
  %i.yy = call nnan double @llvm.sqrt.f64(double %i.yn)
  %i.yz = fdiv nnan double 1.000000e+00, %i.yy
  %i.za = fmul double %i.yx, %i.yz
  %i.zb = fptrunc double %i.za to float
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.lr.ph636
  %.026.i = phi float [ %i.zb, %bb.dw ], [ 1.000000e+00, %.lr.ph636 ] ; 3 uses
  %i.zc = fcmp ogt float %.026.i, 1.000000e+00
  %i.zd = fcmp olt float %.026.i, -1.000000e+00
  %..026.i = select i1 %i.zd, float -1.000000e+00, float %.026.i
  %.027.i = select i1 %i.zc, float 1.000000e+00, float %..026.i ; 2 uses
  %i.ze = call noundef float @acosf(float noundef %.027.i) #14
  %i.zf = fpext float %i.ze to double
  %i.zg = fmul double %i.zf, f0x404CA5DC1A63C1F8
  %i.zh = fptrunc double %i.zg to float
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv670
  store float %i.zh, ptr %i.zi, align 4, !tbaa !68
  %i.zj = load float, ptr %i.wd, align 4, !tbaa !68 ; 2 uses
  %i.zk = load float, ptr %i.wh, align 4, !tbaa !68 ; 2 uses
  %i.zl = fmul float %i.zk, %i.zk
  %i.zm = call float @llvm.fmuladd.f32(float %i.zj, float %i.zj, float %i.zl)
  %i.zn = load float, ptr %i.wl, align 4, !tbaa !68 ; 2 uses
  %i.zo = call noundef float @llvm.fmuladd.f32(float %i.zn, float %i.zn, float %i.zm)
  %sqrt.i477 = call noundef float @llvm.sqrt.f32(float %i.zo)
  %i.zp = load float, ptr %i.wm, align 4, !tbaa !68 ; 2 uses
  %i.zq = load float, ptr %i.wq, align 4, !tbaa !68 ; 2 uses
  %i.zr = fmul float %i.zq, %i.zq
  %i.zs = call float @llvm.fmuladd.f32(float %i.zp, float %i.zp, float %i.zr)
  %i.zt = load float, ptr %i.wu, align 4, !tbaa !68 ; 2 uses
  %i.zu = call noundef float @llvm.fmuladd.f32(float %i.zt, float %i.zt, float %i.zs)
  %sqrt.i478 = call noundef float @llvm.sqrt.f32(float %i.zu)
  %i.zv = fmul float %sqrt.i477, %sqrt.i478
  %i.zw = call float @llvm.sqrt.f32(float %i.zv)
  %i.zx = fpext float %i.zw to double
  %i.zy = fpext float %.027.i to double
  %i.zz = fsub double 1.000000e+00, %i.zy
  %i.aaa = fmul double %i.zz, 2.000000e+00
  %i.aab = fdiv double %i.zx, %i.aaa
  %i.aac = fptrunc double %i.aab to float
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv670 ; 2 uses
  store float %i.aac, ptr %i.aad, align 4, !tbaa !68
  %i.aae = load float, ptr %i.vj, align 4, !tbaa !68
  %i.aaf = load float, ptr %i.wv, align 4, !tbaa !68
  %i.aag = load float, ptr %i.vo, align 4, !tbaa !68
  %i.aah = load float, ptr %i.xj, align 4, !tbaa !68
  %i.aai = fmul float %i.aag, %i.aah
  %i.aaj = call float @llvm.fmuladd.f32(float %i.aae, float %i.aaf, float %i.aai)
  %i.aak = load float, ptr %i.vs, align 4, !tbaa !68
  %i.aal = load float, ptr %i.xr, align 4, !tbaa !68
  %i.aam = call noundef float @llvm.fmuladd.f32(float %i.aak, float %i.aal, float %i.aaj)
  %i.aan = call noundef float @llvm.fabs.f32(float %i.aam)
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv670
  store float %i.aan, ptr %i.aao, align 4, !tbaa !68
  %i.aap = load float, ptr %i.aad, align 4, !tbaa !68 ; 2 uses
  %i.aaq = load float, ptr %i.wl, align 4, !tbaa !68 ; 3 uses
  %i.aar = load float, ptr %i.wu, align 4, !tbaa !68 ; 3 uses
  %i.aas = getelementptr inbounds nuw [12 x i8], ptr %i.ev, i64 %indvars.iv.next671 ; 2 uses
  %i.aat = load float, ptr %i.uy, align 4, !tbaa !68
  %i.aau = load <2 x float>, ptr %i.wd, align 4, !tbaa !68 ; 4 uses
  %foldExtExtBinop1246 = fmul <2 x float> %i.aau, %i.aau
  %i.aav = extractelement <2 x float> %foldExtExtBinop1246, i64 1
  %i.aaw = extractelement <2 x float> %i.aau, i64 0 ; 2 uses
  %i.aax = call float @llvm.fmuladd.f32(float %i.aaw, float %i.aaw, float %i.aav)
  %i.aay = call noundef float @llvm.fmuladd.f32(float %i.aaq, float %i.aaq, float %i.aax)
  %sqrt.i479 = call noundef float @llvm.sqrt.f32(float %i.aay)
  %i.aaz = fdiv float %i.aap, %sqrt.i479          ; 2 uses
  %i.aba = insertelement <2 x float> poison, float %i.aaz, i64 0
  %i.abb = shufflevector <2 x float> %i.aba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abc = fmul <2 x float> %i.aau, %i.abb
  %i.abd = fmul float %i.aaq, %i.aaz
  %i.abe = load <2 x float>, ptr %i.uv, align 4, !tbaa !68
  %i.abf = fsub <2 x float> %i.abe, %i.abc
  %i.abg = fsub float %i.aat, %i.abd
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aas, i64 8
  %i.abi = getelementptr inbounds nuw [12 x i8], ptr %i.ev, i64 %i.vh ; 2 uses
  %i.abj = load <2 x float>, ptr %i.wm, align 4, !tbaa !68 ; 4 uses
  %foldExtExtBinop1248 = fmul <2 x float> %i.abj, %i.abj
  %i.abk = extractelement <2 x float> %foldExtExtBinop1248, i64 1
  %i.abl = extractelement <2 x float> %i.abj, i64 0 ; 2 uses
  %i.abm = call float @llvm.fmuladd.f32(float %i.abl, float %i.abl, float %i.abk)
  %i.abn = call noundef float @llvm.fmuladd.f32(float %i.aar, float %i.aar, float %i.abm)
  %sqrt.i480 = call noundef float @llvm.sqrt.f32(float %i.abn)
  %i.abo = fdiv float %i.aap, %sqrt.i480          ; 2 uses
  %i.abp = insertelement <2 x float> poison, float %i.abo, i64 0
  %i.abq = shufflevector <2 x float> %i.abp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abr = fmul <2 x float> %i.abj, %i.abq
  %i.abs = fmul float %i.aar, %i.abo
  store <2 x float> %i.abf, ptr %i.aas, align 4, !tbaa !68
  store float %i.abg, ptr %i.abh, align 4, !tbaa !68
  %i.abt = load <2 x float>, ptr %i.vi, align 4, !tbaa !68
  %i.abu = fsub <2 x float> %i.abt, %i.abr
  %i.abv = load float, ptr %i.vk, align 4, !tbaa !68
  %i.abw = fsub float %i.abv, %i.abs
  store <2 x float> %i.abu, ptr %i.abi, align 4, !tbaa !68
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  store float %i.abw, ptr %i.abx, align 4, !tbaa !68
  %exitcond674.not = icmp eq i64 %indvars.iv.next671, %wide.trip.count673
  br i1 %exitcond674.not, label %._crit_edge, label %.lr.ph636, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.dx, %.preheader627.a, %.preheader626
  store float 0.000000e+00, ptr %i.es, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.eg, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.em, align 4, !tbaa !68
  %i.aby = load float, ptr %i.ej, align 4, !tbaa !68
  store float %i.aby, ptr %i.ql, align 4, !tbaa !68
  %i.abz = load float, ptr %i.ed, align 4, !tbaa !68
  store float %i.abz, ptr %i.qm, align 4, !tbaa !68
  %i.aca = load float, ptr %i.ep, align 4, !tbaa !68
  store float %i.aca, ptr %i.qn, align 4, !tbaa !68
  store <2 x float> zeroinitializer, ptr %i.fh, align 4, !tbaa !68
  %i.acb = add i32 %i.rr, -2                      ; 3 uses
  %i.acc = icmp sgt i32 %i.rr, 4                  ; 2 uses
  br i1 %i.acc, label %.lr.ph639.preheader, label %._crit_edge640

.lr.ph639.preheader:                              ; preds = %._crit_edge
  %wide.trip.count678 = zext nneg i32 %i.acb to i64
  br label %.lr.ph639

.lr.ph639:                                        ; preds = %.lr.ph639.preheader, %bb.dz
  %indvars.iv675 = phi i64 [ 2, %.lr.ph639.preheader ], [ %indvars.iv.next676, %bb.dz ] ; 7 uses
  %i.acd = add nsw i64 %indvars.iv675, -2         ; 4 uses
  %i.ace = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.acd
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !68
  %i.acg = add nsw i64 %indvars.iv675, -1         ; 4 uses
  %i.ach = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.acg
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !68
  %i.acj = fadd float %i.acf, %i.aci
  %i.ack = fmul float %i.acj, 5.000000e-01
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv675
  store float %i.ack, ptr %i.acl, align 4, !tbaa !68
  %i.acm = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.acd
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !68
  %i.aco = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.acg
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !68
  %i.acq = fadd float %i.acn, %i.acp
  %i.acr = fmul float %i.acq, 5.000000e-01
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv675
  store float %i.acr, ptr %i.acs, align 4, !tbaa !68
  %i.act = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.acd
  %i.acu = load float, ptr %i.act, align 4, !tbaa !68
  %i.acv = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.acg
  %i.acw = load float, ptr %i.acv, align 4, !tbaa !68
  %i.acx = fadd float %i.acu, %i.acw
  %i.acy = fmul float %i.acx, 5.000000e-01
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv675
  store float %i.acy, ptr %i.acz, align 4, !tbaa !68
  %i.ada = getelementptr inbounds [12 x i8], ptr %i.ea, i64 %i.acd
  %i.adb = getelementptr inbounds [12 x i8], ptr %i.ea, i64 %i.acg
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 4
  %i.add = load <4 x float>, ptr %i.ada, align 4, !tbaa !68 ; 3 uses
  %i.ade = shufflevector <4 x float> %i.add, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.adf = fpext <2 x float> %i.ade to <2 x double> ; 4 uses
  %i.adg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adf, <2 x double> %i.adf, <2 x double> zeroinitializer)
  %i.adh = load <2 x float>, ptr %i.adc, align 4, !tbaa !68
  %i.adi = shufflevector <2 x float> %i.adh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.adj = shufflevector <4 x float> %i.add, <4 x float> %i.adi, <2 x i32> <i32 1, i32 4>
  %i.adk = fpext <2 x float> %i.adj to <2 x double> ; 4 uses
  %i.adl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adk, <2 x double> %i.adk, <2 x double> %i.adg)
  %i.adm = shufflevector <4 x float> %i.add, <4 x float> %i.adi, <2 x i32> <i32 2, i32 5>
  %i.adn = fpext <2 x float> %i.adm to <2 x double> ; 4 uses
  %i.ado = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adn, <2 x double> %i.adn, <2 x double> %i.adl) ; 2 uses
  %shift1250 = shufflevector <2 x double> %i.ado, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1251 = fmul <2 x double> %i.ado, %shift1250
  %i.adp = extractelement <2 x double> %foldExtExtBinop1251, i64 0 ; 2 uses
  %i.adq = fcmp ogt double %i.adp, 0.000000e+00
  br i1 %i.adq, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %.lr.ph639
  %i.adr = extractelement <2 x double> %i.adf, i64 0
  %i.ads = extractelement <2 x double> %i.adf, i64 1
  %i.adt = call double @llvm.fmuladd.f64(double %i.adr, double %i.ads, double 0.000000e+00)
  %i.adu = extractelement <2 x double> %i.adk, i64 0
  %i.adv = extractelement <2 x double> %i.adk, i64 1
  %i.adw = call double @llvm.fmuladd.f64(double %i.adu, double %i.adv, double %i.adt)
  %i.adx = extractelement <2 x double> %i.adn, i64 0
  %i.ady = extractelement <2 x double> %i.adn, i64 1
  %i.adz = call double @llvm.fmuladd.f64(double %i.adx, double %i.ady, double %i.adw)
  %i.aea = call nnan double @llvm.sqrt.f64(double %i.adp)
  %i.aeb = fdiv nnan double 1.000000e+00, %i.aea
  %i.aec = fmul double %i.adz, %i.aeb
  %i.aed = fptrunc double %i.aec to float
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.lr.ph639
  %.026.i481 = phi float [ %i.aed, %bb.dy ], [ 1.000000e+00, %.lr.ph639 ] ; 3 uses
  %i.aee = fcmp ogt float %.026.i481, 1.000000e+00
  %i.aef = fcmp olt float %.026.i481, -1.000000e+00
  %..026.i482 = select i1 %i.aef, float -1.000000e+00, float %.026.i481
  %.027.i483 = select i1 %i.aee, float 1.000000e+00, float %..026.i482
  %i.aeg = call noundef float @acosf(float noundef %.027.i483) #14
  %i.aeh = fpext float %i.aeg to double
  %i.aei = fmul double %i.aeh, f0x404CA5DC1A63C1F8
  %i.aej = fptrunc double %i.aei to float
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv675
  store float %i.aej, ptr %i.aek, align 4, !tbaa !68
  %indvars.iv.next676 = add nuw nsw i64 %indvars.iv675, 1 ; 2 uses
  %exitcond679.not = icmp eq i64 %indvars.iv.next676, %wide.trip.count678
  br i1 %exitcond679.not, label %._crit_edge640, label %.lr.ph639, !llvm.loop !24

._crit_edge640:                                   ; preds = %bb.dz, %._crit_edge
  %i.ael = sext i32 %i.rr to i64                  ; 9 uses
  %i.aem = getelementptr [4 x i8], ptr %i.ej, i64 %i.ael
  %i.aen = getelementptr i8, ptr %i.aem, i64 -16
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !68
  %i.aep = sext i32 %i.acb to i64                 ; 2 uses
  %i.aeq = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.aep
  store float %i.aeo, ptr %i.aeq, align 4, !tbaa !68
  %i.aer = getelementptr [4 x i8], ptr %i.ed, i64 %i.ael
  %i.aes = getelementptr i8, ptr %i.aer, i64 -16
  %i.aet = load float, ptr %i.aes, align 4, !tbaa !68
  %i.aeu = getelementptr [4 x i8], ptr %i.eg, i64 %i.ael ; 2 uses
  %i.aev = getelementptr i8, ptr %i.aeu, i64 -8
  store float %i.aet, ptr %i.aev, align 4, !tbaa !68
  %i.aew = getelementptr [4 x i8], ptr %i.ep, i64 %i.ael
  %i.aex = getelementptr i8, ptr %i.aew, i64 -16
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !68
  %i.aez = getelementptr [4 x i8], ptr %i.es, i64 %i.ael
  %i.afa = getelementptr i8, ptr %i.aez, i64 -8
  %i.afb = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aey, i64 0
  store <2 x float> %i.afb, ptr %i.afa, align 4, !tbaa !68
  %i.afc = getelementptr i8, ptr %i.aeu, i64 -4
  store float 0.000000e+00, ptr %i.afc, align 4, !tbaa !68
  %i.afd = getelementptr [4 x i8], ptr %i.em, i64 %i.ael
  %i.afe = getelementptr i8, ptr %i.afd, i64 -4
  store float 0.000000e+00, ptr %i.afe, align 4, !tbaa !68
  %i.aff = getelementptr [4 x i8], ptr %i.fh, i64 %i.ael
  %i.afg = getelementptr i8, ptr %i.aff, i64 -8
  store <2 x float> zeroinitializer, ptr %i.afg, align 4, !tbaa !68
  store <2 x float> zeroinitializer, ptr %i.ev, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.qo, align 4, !tbaa !68
  %i.afh = getelementptr [12 x i8], ptr %i.ev, i64 %i.ael ; 2 uses
  %i.afi = getelementptr i8, ptr %i.afh, i64 -12
  store <2 x float> zeroinitializer, ptr %i.afi, align 4, !tbaa !68
  %i.afj = getelementptr i8, ptr %i.afh, i64 -4
  store float 0.000000e+00, ptr %i.afj, align 4, !tbaa !68
  %i.afk = load float, ptr %i.ea, align 4, !tbaa !68
  store float %i.afk, ptr %i.ey, align 4, !tbaa !68
  %i.afl = load float, ptr %i.qp, align 4, !tbaa !68
  store float %i.afl, ptr %i.qq, align 4, !tbaa !68
  %i.afm = load float, ptr %i.qr, align 4, !tbaa !68
  store float %i.afm, ptr %i.qs, align 4, !tbaa !68
  %i.afn = load float, ptr %i.ea, align 4, !tbaa !68
  store float %i.afn, ptr %i.qt, align 4, !tbaa !68
  %i.afo = load float, ptr %i.qp, align 4, !tbaa !68
  store float %i.afo, ptr %i.qu, align 4, !tbaa !68
  %i.afp = load float, ptr %i.qr, align 4, !tbaa !68
  store float %i.afp, ptr %i.qv, align 4, !tbaa !68
  br i1 %i.acc, label %.lr.ph644.preheader, label %._crit_edge645

.lr.ph644.preheader:                              ; preds = %._crit_edge640
  %wide.trip.count683 = zext nneg i32 %i.acb to i64 ; 5 uses
  %i.afq = add nsw i64 %wide.trip.count683, -2    ; 3 uses
  %min.iters.check1223 = icmp ult i64 %i.afq, 8
  br i1 %min.iters.check1223, label %.lr.ph644.preheader1260, label %vector.memcheck1224

vector.memcheck1224:                              ; preds = %.lr.ph644.preheader
  %i.afr = mul nuw nsw i64 %wide.trip.count683, 12 ; 2 uses
  %i.afs = getelementptr i8, ptr %i.ey, i64 %i.afr
  %i.aft = getelementptr i8, ptr %i.ea, i64 %i.afr
  %i.afu = getelementptr i8, ptr %i.aft, i64 -12
  %bound01225 = icmp ult ptr %scevgep, %i.afu
  %bound11226 = icmp ult ptr %i.ea, %i.afs
  %found.conflict1227 = and i1 %bound01225, %bound11226
  br i1 %found.conflict1227, label %.lr.ph644.preheader1260, label %vector.ph1228

vector.ph1228:                                    ; preds = %vector.memcheck1224
  %n.vec1229 = and i64 %i.afq, -8                 ; 3 uses
  %i.afv = or disjoint i64 %n.vec1229, 2
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1228
  %index1231 = phi i64 [ 0, %vector.ph1228 ], [ %index.next1241, %vector.body1230 ] ; 2 uses
  %i.afw = or disjoint i64 %index1231, 2          ; 2 uses
  %i.afx = getelementptr [12 x i8], ptr %i.ea, i64 %i.afw ; 2 uses
  %i.afy = getelementptr i8, ptr %i.afx, i64 -24
  %i.afz = getelementptr i8, ptr %i.afx, i64 -12
  %i.aga = getelementptr inbounds nuw [12 x i8], ptr %i.ey, i64 %i.afw
  %wide.vec1232 = load <24 x float>, ptr %i.afy, align 4, !tbaa !68, !alias.scope !80
  %wide.vec1236 = load <24 x float>, ptr %i.afz, align 4, !tbaa !68, !alias.scope !80
  %i.agb = fadd <24 x float> %wide.vec1232, %wide.vec1236
  %interleaved.vec1240 = fmul <24 x float> %i.agb, splat (float 5.000000e-01)
  store <24 x float> %interleaved.vec1240, ptr %i.aga, align 4, !tbaa !68, !alias.scope !81, !noalias !80
  %index.next1241 = add nuw i64 %index1231, 8     ; 2 uses
  %i.agc = icmp eq i64 %index.next1241, %n.vec1229
  br i1 %i.agc, label %middle.block1242, label %vector.body1230, !llvm.loop !28

middle.block1242:                                 ; preds = %vector.body1230
  %cmp.n1243 = icmp eq i64 %i.afq, %n.vec1229
  br i1 %cmp.n1243, label %._crit_edge645, label %.lr.ph644.preheader1260

.lr.ph644.preheader1260:                          ; preds = %vector.memcheck1224, %.lr.ph644.preheader, %middle.block1242
  %indvars.iv680.ph = phi i64 [ 2, %vector.memcheck1224 ], [ 2, %.lr.ph644.preheader ], [ %i.afv, %middle.block1242 ] ; 6 uses
  %i.agd = sub nsw i64 %wide.trip.count683, %indvars.iv680.ph
  %xtraiter1265 = and i64 %i.agd, 1
  %lcmp.mod1266.not = icmp eq i64 %xtraiter1265, 0
  br i1 %lcmp.mod1266.not, label %.lr.ph644.prol.loopexit, label %.lr.ph644.prol

.lr.ph644.prol:                                   ; preds = %.lr.ph644.preheader1260
  %i.age = getelementptr [12 x i8], ptr %i.ea, i64 %indvars.iv680.ph ; 4 uses
  %i.agf = getelementptr i8, ptr %i.age, i64 -24
  %i.agg = getelementptr i8, ptr %i.age, i64 -12
  %i.agh = getelementptr inbounds nuw [12 x i8], ptr %i.ey, i64 %indvars.iv680.ph ; 2 uses
  %i.agi = getelementptr i8, ptr %i.age, i64 -16
  %i.agj = load float, ptr %i.agi, align 4, !tbaa !68
  %i.agk = getelementptr i8, ptr %i.age, i64 -4
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !68
  %i.agm = fadd float %i.agj, %i.agl
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.ago = load <2 x float>, ptr %i.agf, align 4, !tbaa !68
  %i.agp = load <2 x float>, ptr %i.agg, align 4, !tbaa !68
  %i.agq = fadd <2 x float> %i.ago, %i.agp
  %i.agr = fmul <2 x float> %i.agq, splat (float 5.000000e-01)
  store <2 x float> %i.agr, ptr %i.agh, align 4, !tbaa !68
  %i.ags = fmul float %i.agm, 5.000000e-01
  store float %i.ags, ptr %i.agn, align 4, !tbaa !68
  %indvars.iv.next681.prol = add nuw nsw i64 %indvars.iv680.ph, 1
  br label %.lr.ph644.prol.loopexit

.lr.ph644.prol.loopexit:                          ; preds = %.lr.ph644.prol, %.lr.ph644.preheader1260
  %indvars.iv680.unr = phi i64 [ %indvars.iv680.ph, %.lr.ph644.preheader1260 ], [ %indvars.iv.next681.prol, %.lr.ph644.prol ]
  %i.agt = add nsw i64 %wide.trip.count683, -1
  %i.agu = icmp eq i64 %indvars.iv680.ph, %i.agt
  br i1 %i.agu, label %._crit_edge645, label %.lr.ph644

.lr.ph644:                                        ; preds = %.lr.ph644.prol.loopexit, %.lr.ph644
  %indvars.iv680 = phi i64 [ %indvars.iv.next681.1, %.lr.ph644 ], [ %indvars.iv680.unr, %.lr.ph644.prol.loopexit ] ; 4 uses
  %i.agv = getelementptr [12 x i8], ptr %i.ea, i64 %indvars.iv680 ; 4 uses
  %i.agw = getelementptr i8, ptr %i.agv, i64 -24
  %i.agx = getelementptr i8, ptr %i.agv, i64 -12
  %i.agy = getelementptr inbounds nuw [12 x i8], ptr %i.ey, i64 %indvars.iv680 ; 2 uses
  %i.agz = getelementptr i8, ptr %i.agv, i64 -16
  %i.aha = load float, ptr %i.agz, align 4, !tbaa !68
  %i.ahb = getelementptr i8, ptr %i.agv, i64 -4
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !68
  %i.ahd = fadd float %i.aha, %i.ahc
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.agy, i64 8
  %i.ahf = load <2 x float>, ptr %i.agw, align 4, !tbaa !68
  %i.ahg = load <2 x float>, ptr %i.agx, align 4, !tbaa !68
  %i.ahh = fadd <2 x float> %i.ahf, %i.ahg
  %i.ahi = fmul <2 x float> %i.ahh, splat (float 5.000000e-01)
  store <2 x float> %i.ahi, ptr %i.agy, align 4, !tbaa !68
  %i.ahj = fmul float %i.ahd, 5.000000e-01
  store float %i.ahj, ptr %i.ahe, align 4, !tbaa !68
  %indvars.iv.next681 = add nuw nsw i64 %indvars.iv680, 1 ; 2 uses
  %i.ahk = getelementptr [12 x i8], ptr %i.ea, i64 %indvars.iv.next681 ; 4 uses
  %i.ahl = getelementptr i8, ptr %i.ahk, i64 -24
  %i.ahm = getelementptr i8, ptr %i.ahk, i64 -12
  %i.ahn = getelementptr inbounds nuw [12 x i8], ptr %i.ey, i64 %indvars.iv.next681 ; 2 uses
  %i.aho = getelementptr i8, ptr %i.ahk, i64 -16
  %i.ahp = load float, ptr %i.aho, align 4, !tbaa !68
  %i.ahq = getelementptr i8, ptr %i.ahk, i64 -4
  %i.ahr = load float, ptr %i.ahq, align 4, !tbaa !68
  %i.ahs = fadd float %i.ahp, %i.ahr
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8
  %i.ahu = load <2 x float>, ptr %i.ahl, align 4, !tbaa !68
  %i.ahv = load <2 x float>, ptr %i.ahm, align 4, !tbaa !68
  %i.ahw = fadd <2 x float> %i.ahu, %i.ahv
  %i.ahx = fmul <2 x float> %i.ahw, splat (float 5.000000e-01)
  store <2 x float> %i.ahx, ptr %i.ahn, align 4, !tbaa !68
  %i.ahy = fmul float %i.ahs, 5.000000e-01
  store float %i.ahy, ptr %i.aht, align 4, !tbaa !68
  %indvars.iv.next681.1 = add nuw nsw i64 %indvars.iv680, 2 ; 2 uses
  %exitcond684.not.1 = icmp eq i64 %indvars.iv.next681.1, %wide.trip.count683
  br i1 %exitcond684.not.1, label %._crit_edge645, label %.lr.ph644, !llvm.loop !29

._crit_edge645:                                   ; preds = %.lr.ph644.prol.loopexit, %.lr.ph644, %middle.block1242, %._crit_edge640
  %i.ahz = getelementptr [12 x i8], ptr %i.ea, i64 %i.ael ; 3 uses
  %i.aia = getelementptr i8, ptr %i.ahz, i64 -48
  %i.aib = getelementptr inbounds [12 x i8], ptr %i.ey, i64 %i.aep ; 3 uses
  %i.aic = load float, ptr %i.aia, align 4, !tbaa !68
  store float %i.aic, ptr %i.aib, align 4, !tbaa !68
  %i.aid = getelementptr i8, ptr %i.ahz, i64 -44
  %i.aie = load float, ptr %i.aid, align 4, !tbaa !68
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aib, i64 4
  store float %i.aie, ptr %i.aif, align 4, !tbaa !68
  %i.aig = getelementptr i8, ptr %i.ahz, i64 -40
  %i.aih = load float, ptr %i.aig, align 4, !tbaa !68
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  store float %i.aih, ptr %i.aii, align 4, !tbaa !68
end_hunk_0
begin_hunk_1_@_ZNSt10filesystem7__cxx114pathC2IA71_cS1_EERKT_NS1_6formatE:bb.a

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !18
  store i8 %i.h, ptr %i.g, align 1, !tbaa !18
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !20
  %i.k = load ptr, ptr %0, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !14   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #14
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !18
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA11_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(11) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(11) %1) #14 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.b, ptr %i.a, align 8, !tbaa !21
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !17
  %i.f = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.f, ptr %i.c, align 8, !tbaa !18
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !18
  store i8 %i.h, ptr %i.g, align 1, !tbaa !18
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !20
  %i.k = load ptr, ptr %0, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !14   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #14
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !18
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare void @_Z10calc_fit_RiiPKfPA3_S_PA3_fS4_(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #3

declare void @_Z9xvgrcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #3

declare void @_Z9close_trxP11t_trxstatus(ptr noundef) local_unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #10

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @asinf(float noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!10, !10, i64 0}
!13 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !11, i64 8, !5, i64 16}
!17 = !{!16, !10, i64 0}
!18 = !{!5, !5, i64 0}
!19 = !{!15, !10, i64 0}
!20 = !{!16, !11, i64 8}
!21 = !{!11, !11, i64 0}
!22 = distinct !{!22, !79}
!23 = distinct !{!23, !79}
!24 = distinct !{!24, !79}
!25 = distinct !{!25, i1 false, !"LVerDomain"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !79, !82, !83}
!29 = distinct !{!29, !79, !82}
!30 = distinct !{!30, !79, !82, !83}
!31 = distinct !{!31, !79, !83, !82}
!32 = distinct !{!32, !79, !84}
!33 = distinct !{!33, i1 false, !"LVerDomain"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = distinct !{!39, !33}
!40 = distinct !{!40, !79, !82, !83}
!41 = distinct !{!41, !79, !82}
!42 = distinct !{!42, !79}
!43 = distinct !{!43, i1 false, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !43}
!47 = distinct !{!47, !43}
!48 = distinct !{!48, !43}
!49 = distinct !{!49, !43}
!50 = distinct !{!50, !79, !82, !83}
!51 = distinct !{!51, !79, !82}
!52 = distinct !{!52, !79}
!53 = distinct !{!53, !79}
!54 = !{!6, !6, i64 0}
!55 = !{!"p1 float", !9, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !60, i64 0}
!62 = !{!"_ZTS8t_filenm", !6, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !61, i64 32}
!63 = !{!62, !6, i64 0}
!64 = !{!62, !11, i64 24}
!65 = !{!62, !10, i64 8}
!66 = !{!62, !10, i64 16}
!67 = !{!"float", !5, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!"bool", !5, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{i8 0, i8 2}
!72 = !{}
!73 = !{!"p1 _ZTS16gmx_output_env_t", !9, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"_ZTS7PbcType", !5, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"p1 int", !9, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!26}
!81 = !{!27}
!82 = !{!"llvm.loop.isvectorized", i32 1}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = !{!"llvm.loop.peeled.count", i32 1}
!85 = !{!34}
!86 = !{!35}
!87 = !{!39, !38, !34, !37, !36}
!88 = !{!37}
!89 = !{!39}
!90 = !{!38, !34, !37, !36}
!91 = !{!36}
!92 = !{!38}
!93 = !{!34, !37, !36}
!94 = !{!44}
!95 = !{!45}
!96 = !{!49, !48, !44, !47, !46}
!97 = !{!47}
!98 = !{!49}
!99 = !{!48, !44, !47, !46}
!100 = !{!46}
!101 = !{!48}
!102 = !{!44, !47, !46}
!103 = !{!"p1 _ZTS11t_trxstatus", !9, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!58, !57, i64 0}
!106 = !{!58, !57, i64 8}
!107 = !{!58, !57, i64 16}
end_hunk_1
