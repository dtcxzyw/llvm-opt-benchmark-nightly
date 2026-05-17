inline.NumInlined: 22
begin_hunk_0_@main:bb.a
  %i.to = load double, ptr @A3, align 8, !tbaa !8
  %i.tp = tail call double @llvm.fmuladd.f64(double %i.tn, double %i.ti, double %i.to)
  %i.tq = load double, ptr @A2, align 8, !tbaa !8
  %i.tr = tail call double @llvm.fmuladd.f64(double %i.tp, double %i.ti, double %i.tq)
  %i.ts = load double, ptr @A1, align 8, !tbaa !8
  %i.tt = tail call double @llvm.fmuladd.f64(double %i.tr, double %i.ti, double %i.ts)
  %i.tu = load double, ptr @one, align 8, !tbaa !8 ; 3 uses
  %i.tv = tail call double @llvm.fmuladd.f64(double %i.tt, double %i.ti, double %i.tu)
  %i.tw = fmul double %i.th, %i.tv
  %i.tx = load double, ptr @B6, align 8, !tbaa !8
  %i.ty = load double, ptr @B5, align 8, !tbaa !8
  %i.tz = tail call double @llvm.fmuladd.f64(double %i.tx, double %i.ti, double %i.ty)
  %i.ua = load double, ptr @B4, align 8, !tbaa !8
  %i.ub = tail call double @llvm.fmuladd.f64(double %i.ti, double %i.tz, double %i.ua)
  %i.uc = load double, ptr @B3, align 8, !tbaa !8
  %i.ud = tail call double @llvm.fmuladd.f64(double %i.ti, double %i.ub, double %i.uc)
  %i.ue = load double, ptr @B2, align 8, !tbaa !8
  %i.uf = tail call double @llvm.fmuladd.f64(double %i.ti, double %i.ud, double %i.ue)
  %i.ug = load double, ptr @B1, align 8, !tbaa !8
  %i.uh = tail call double @llvm.fmuladd.f64(double %i.ti, double %i.uf, double %i.ug)
  %i.ui = tail call double @llvm.fmuladd.f64(double %i.ti, double %i.uh, double %i.tu)
  %i.uj = fmul double %i.tw, %i.ui
  %i.uk = fdiv double %i.te, 2.900000e+01         ; 2 uses
  store double %i.uk, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8, !tbaa !8
  %i.ul = load double, ptr @two, align 8, !tbaa !8 ; 2 uses
  %i.um = tail call double @llvm.fmuladd.f64(double %i.ul, double %.8281.lcssa, double %i.uj)
  %i.un = fmul double %i.rg, %i.um
  %i.uo = fdiv double %i.un, %i.ul                ; 2 uses
  store double %i.uo, ptr @sa, align 8, !tbaa !8
  store double 2.500000e-01, ptr @sb, align 8, !tbaa !8
  %i.up = fadd double %i.uo, -2.500000e-01        ; 2 uses
  store double %i.up, ptr @sc, align 8, !tbaa !8
  %i.uq = fdiv double %i.tu, %i.uk                ; 2 uses
  store double %i.uq, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16, !tbaa !8
  %i.ur = fmul double %i.up, 1.000000e-30
  %i.us = fmul double %i.te, 1.000000e-30
  %i.ut = fmul double %i.uq, 1.000000e-30
  %i.uu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %i.ur, double noundef %i.us, double noundef %i.ut) ; 0 uses
  %i.uv = load double, ptr @one, align 8, !tbaa !8 ; 9 uses
  store double f0x40599541F7F192A4, ptr @sa, align 8, !tbaa !8
  %i.uw = fdiv double f0x40599541F7F192A4, %i.hf  ; 2 uses
  %i.ux = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.uy = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.uz = load i64, ptr @tnow, align 8, !tbaa !10
  %i.va = sitofp i64 %i.uz to double
  %i.vb = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.vc = sitofp i64 %i.vb to double
  %i.vd = tail call double @llvm.fmuladd.f64(double %i.vc, double f0x3EB0C6F7A0B5ED8D, double %i.va) ; 3 uses
  store double %i.vd, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.ve = fsub double %i.vd, %i.ux
  store double %i.ve, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !8
  br i1 %.not300.not344, label %.lr.ph377, label %._crit_edge378

.lr.ph377:                                        ; preds = %._crit_edge371, %.lr.ph377
  %.8375 = phi i64 [ %i.vr, %.lr.ph377 ], [ 1, %._crit_edge371 ] ; 2 uses
  %.9282374 = phi double [ %i.vq, %.lr.ph377 ], [ 0.000000e+00, %._crit_edge371 ]
  %i.vf = uitofp nneg i64 %.8375 to double
  %i.vg = fmul double %i.uw, %i.vf                ; 5 uses
  %i.vh = fmul double %i.vg, %i.vg                ; 3 uses
  %i.vi = fadd double %i.uv, %i.vg
  %i.vj = fdiv double %i.uv, %i.vi
  %i.vk = fsub double %.9282374, %i.vj
  %i.vl = fadd double %i.uv, %i.vh
  %i.vm = fdiv double %i.vg, %i.vl
  %i.vn = fsub double %i.vk, %i.vm
  %i.vo = tail call double @llvm.fmuladd.f64(double %i.vg, double %i.vh, double %i.uv)
  %i.vp = fdiv double %i.vh, %i.vo
  %i.vq = fsub double %i.vn, %i.vp                ; 2 uses
  %i.vr = add nuw nsw i64 %.8375, 1               ; 2 uses
  %exitcond411.not = icmp eq i64 %i.vr, %i.gk
  br i1 %exitcond411.not, label %._crit_edge378, label %.lr.ph377, !llvm.loop !25

._crit_edge378:                                   ; preds = %.lr.ph377, %._crit_edge371
  %.9282.lcssa = phi double [ 0.000000e+00, %._crit_edge371 ], [ %i.vq, %.lr.ph377 ]
  %i.vs = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.vt = load i64, ptr @tnow, align 8, !tbaa !10
  %i.vu = sitofp i64 %i.vt to double
  %i.vv = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.vw = sitofp i64 %i.vv to double
  %i.vx = tail call double @llvm.fmuladd.f64(double %i.vw, double f0x3EB0C6F7A0B5ED8D, double %i.vu) ; 2 uses
  store double %i.vx, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.vy = fsub double %i.vx, %i.vd                ; 2 uses
  store double %i.vy, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !8
  %i.vz = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8, !tbaa !8
  %i.wa = load double, ptr @nulltime, align 8, !tbaa !8
  %i.wb = fneg double %i.wa
  %i.wc = tail call double @llvm.fmuladd.f64(double %i.vz, double %i.vy, double %i.wb) ; 3 uses
  store double %i.wc, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8, !tbaa !8
  %i.wd = fdiv double %i.wc, 1.200000e+01         ; 2 uses
  store double %i.wd, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16, !tbaa !8
  %i.we = load double, ptr @sa, align 8, !tbaa !8 ; 5 uses
  %i.wf = fmul double %i.we, %i.we                ; 3 uses
  %i.wg = fneg double %i.uv
  %i.wh = fadd double %i.uv, %i.we
  %i.wi = fdiv double %i.uv, %i.wh
  %i.wj = fsub double %i.wg, %i.wi
  %i.wk = fadd double %i.uv, %i.wf
  %i.wl = fdiv double %i.we, %i.wk
  %i.wm = fsub double %i.wj, %i.wl
  %i.wn = tail call double @llvm.fmuladd.f64(double %i.we, double %i.wf, double %i.uv)
  %i.wo = fdiv double %i.wf, %i.wn
  %i.wp = fsub double %i.wm, %i.wo
  %i.wq = fmul nnan double %i.uw, 1.800000e+01
  %i.wr = load double, ptr @two, align 8, !tbaa !8
  %i.ws = tail call double @llvm.fmuladd.f64(double %i.wr, double %.9282.lcssa, double %i.wp)
  %i.wt = fmul double %i.wq, %i.ws                ; 3 uses
  store double %i.wt, ptr @sa, align 8, !tbaa !8
  %i.wu = fptosi double %i.wt to i64
  %i.wv = mul nsw i64 %i.wu, -2000
  %i.ww = sitofp i64 %i.wv to double
  %i.wx = load double, ptr @scale, align 8, !tbaa !8
  %i.wy = fdiv double %i.ww, %i.wx
  %i.wz = fptosi double %i.wy to i64              ; 4 uses
  %i.xa = fadd double %i.wt, 5.002000e+02         ; 2 uses
  store double %i.xa, ptr @sc, align 8, !tbaa !8
  %i.xb = load double, ptr @one, align 8, !tbaa !8
  %i.xc = fdiv double %i.xb, %i.wd                ; 2 uses
  store double %i.xc, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8, !tbaa !8
  %i.xd = fmul double %i.xa, 1.000000e-30
  %i.xe = fmul double %i.wc, 1.000000e-30
  %i.xf = fmul double %i.xc, 1.000000e-30
  %i.xg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %i.xd, double noundef %i.xe, double noundef %i.xf) ; 0 uses
  %i.xh = load double, ptr @piref, align 8, !tbaa !8
  %i.xi = load double, ptr @three, align 8, !tbaa !8
  %i.xj = sitofp i64 %i.wz to double
  %i.xk = fmul double %i.xi, %i.xj
  %i.xl = fdiv double %i.xh, %i.xk                ; 2 uses
  %i.xm = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.xn = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.xo = load i64, ptr @tnow, align 8, !tbaa !10
  %i.xp = sitofp i64 %i.xo to double
  %i.xq = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.xr = sitofp i64 %i.xq to double
  %i.xs = tail call double @llvm.fmuladd.f64(double %i.xr, double f0x3EB0C6F7A0B5ED8D, double %i.xp) ; 3 uses
  store double %i.xs, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.xt = fsub double %i.xs, %i.xm
  store double %i.xt, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !8
  %.not305.not380 = icmp sgt i64 %i.wz, 1
  br i1 %.not305.not380, label %.lr.ph384, label %._crit_edge385

.lr.ph384:                                        ; preds = %._crit_edge378
  %i.xu = load double, ptr @B6, align 8, !tbaa !8
  %i.xv = load double, ptr @B5, align 8, !tbaa !8
  %i.xw = load double, ptr @B4, align 8, !tbaa !8
  %i.xx = load double, ptr @B3, align 8, !tbaa !8
  %i.xy = load double, ptr @B2, align 8, !tbaa !8
  %i.xz = load double, ptr @B1, align 8, !tbaa !8
  %i.ya = load double, ptr @one, align 8, !tbaa !8 ; 2 uses
  %i.yb = load double, ptr @A6, align 8, !tbaa !8
  %i.yc = load double, ptr @A5, align 8, !tbaa !8
  %i.yd = load double, ptr @A4, align 8, !tbaa !8
  %i.ye = load double, ptr @A3, align 8, !tbaa !8
  %i.yf = load double, ptr @A2, align 8, !tbaa !8
  %i.yg = load double, ptr @A1, align 8, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph384, %bb.k
  %.9382 = phi i64 [ 1, %.lr.ph384 ], [ %i.yz, %bb.k ] ; 2 uses
  %.10381 = phi double [ 0.000000e+00, %.lr.ph384 ], [ %i.yy, %bb.k ]
  %i.yh = uitofp nneg i64 %.9382 to double
  %i.yi = fmul double %i.xl, %i.yh                ; 3 uses
  %i.yj = fmul double %i.yi, %i.yi                ; 12 uses
  %i.yk = tail call double @llvm.fmuladd.f64(double %i.xu, double %i.yj, double %i.xv)
  %i.yl = tail call double @llvm.fmuladd.f64(double %i.yj, double %i.yk, double %i.xw)
  %i.ym = tail call double @llvm.fmuladd.f64(double %i.yj, double %i.yl, double %i.xx)
  %i.yn = tail call double @llvm.fmuladd.f64(double %i.yj, double %i.ym, double %i.xy)
  %i.yo = tail call double @llvm.fmuladd.f64(double %i.yj, double %i.yn, double %i.xz)
  %i.yp = tail call double @llvm.fmuladd.f64(double %i.yj, double %i.yo, double %i.ya) ; 2 uses
  %i.yq = fmul double %i.yp, %i.yp
  %i.yr = fmul double %i.yi, %i.yq
  %i.ys = tail call double @llvm.fmuladd.f64(double %i.yb, double %i.yj, double %i.yc)
  %i.yt = tail call double @llvm.fmuladd.f64(double %i.ys, double %i.yj, double %i.yd)
  %i.yu = tail call double @llvm.fmuladd.f64(double %i.yt, double %i.yj, double %i.ye)
  %i.yv = tail call double @llvm.fmuladd.f64(double %i.yu, double %i.yj, double %i.yf)
  %i.yw = tail call double @llvm.fmuladd.f64(double %i.yv, double %i.yj, double %i.yg)
  %i.yx = tail call double @llvm.fmuladd.f64(double %i.yw, double %i.yj, double %i.ya)
  %i.yy = tail call double @llvm.fmuladd.f64(double %i.yr, double %i.yx, double %.10381) ; 2 uses
  %i.yz = add nuw nsw i64 %.9382, 1               ; 2 uses
  %exitcond412.not = icmp eq i64 %i.yz, %i.wz
  br i1 %exitcond412.not, label %._crit_edge385, label %bb.k, !llvm.loop !26

._crit_edge385:                                   ; preds = %bb.k, %._crit_edge378
  %.10.lcssa = phi double [ 0.000000e+00, %._crit_edge378 ], [ %i.yy, %bb.k ]
  %i.za = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.zb = load i64, ptr @tnow, align 8, !tbaa !10
  %i.zc = sitofp i64 %i.zb to double
  %i.zd = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.ze = sitofp i64 %i.zd to double
  %i.zf = tail call double @llvm.fmuladd.f64(double %i.ze, double f0x3EB0C6F7A0B5ED8D, double %i.zc) ; 2 uses
  store double %i.zf, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.zg = fsub double %i.zf, %i.xs                ; 2 uses
  store double %i.zg, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !8
  %i.zh = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8, !tbaa !8
  %i.zi = load double, ptr @nulltime, align 8, !tbaa !8
  %i.zj = fneg double %i.zi
  %i.zk = tail call double @llvm.fmuladd.f64(double %i.zh, double %i.zg, double %i.zj) ; 3 uses
  store double %i.zk, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16, !tbaa !8
  %i.zl = load double, ptr @piref, align 8, !tbaa !8
  %i.zm = load double, ptr @three, align 8, !tbaa !8
  %i.zn = fdiv double %i.zl, %i.zm                ; 3 uses
  %i.zo = fmul double %i.zn, %i.zn                ; 12 uses
  %i.zp = load double, ptr @A6, align 8, !tbaa !8
  %i.zq = load double, ptr @A5, align 8, !tbaa !8
  %0 = tail call double @llvm.fmuladd.f64(double %i.zp, double %i.zo, double %i.zq)
  %i.zr = load double, ptr @A4, align 8, !tbaa !8
  %1 = tail call double @llvm.fmuladd.f64(double %0, double %i.zo, double %i.zr)
  %i.zs = load double, ptr @A3, align 8, !tbaa !8
  %2 = tail call double @llvm.fmuladd.f64(double %1, double %i.zo, double %i.zs)
  %i.zt = load double, ptr @A2, align 8, !tbaa !8
  %3 = tail call double @llvm.fmuladd.f64(double %2, double %i.zo, double %i.zt)
  %i.zu = load double, ptr @A1, align 8, !tbaa !8
  %4 = tail call double @llvm.fmuladd.f64(double %3, double %i.zo, double %i.zu)
  %i.zv = load double, ptr @one, align 8, !tbaa !8 ; 3 uses
  %5 = tail call double @llvm.fmuladd.f64(double %4, double %i.zo, double %i.zv)
  %6 = fmul double %i.zn, %5
  %7 = load double, ptr @B6, align 8, !tbaa !8
  %8 = load double, ptr @B5, align 8, !tbaa !8
  %9 = tail call double @llvm.fmuladd.f64(double %7, double %i.zo, double %8)
  %10 = load double, ptr @B4, align 8, !tbaa !8
  %11 = tail call double @llvm.fmuladd.f64(double %i.zo, double %9, double %10)
  %12 = load double, ptr @B3, align 8, !tbaa !8
  %13 = tail call double @llvm.fmuladd.f64(double %i.zo, double %11, double %12)
  %14 = load double, ptr @B2, align 8, !tbaa !8
  %15 = tail call double @llvm.fmuladd.f64(double %i.zo, double %13, double %14)
  %16 = load double, ptr @B1, align 8, !tbaa !8
  %17 = tail call double @llvm.fmuladd.f64(double %i.zo, double %15, double %16)
  %18 = tail call double @llvm.fmuladd.f64(double %i.zo, double %17, double %i.zv) ; 2 uses
  %i.zw = fmul double %6, %18
  %i.zx = fmul double %18, %i.zw
  %i.zy = fdiv double %i.zk, 3.000000e+01         ; 2 uses
  store double %i.zy, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8, !tbaa !8
  %i.zz = load double, ptr @two, align 8, !tbaa !8 ; 2 uses
  %i.aaa = tail call double @llvm.fmuladd.f64(double %i.zz, double %.10.lcssa, double %i.zx)
  %i.aab = fmul double %i.xl, %i.aaa
  %i.aac = fdiv double %i.aab, %i.zz              ; 2 uses
  store double %i.aac, ptr @sa, align 8, !tbaa !8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8, !tbaa !8
  %i.aad = fadd double %i.aac, f0xBFD2AAAAAAAAAAAB ; 2 uses
  store double %i.aad, ptr @sc, align 8, !tbaa !8
  %i.aae = fdiv double %i.zv, %i.zy               ; 2 uses
  store double %i.aae, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16, !tbaa !8
  %i.aaf = fmul double %i.aad, 1.000000e-30
  %i.aag = fmul double %i.zk, 1.000000e-30
  %i.aah = fmul double %i.aae, 1.000000e-30
  %i.aai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %i.aaf, double noundef %i.aag, double noundef %i.aah) ; 0 uses
  %i.aaj = load double, ptr @five, align 8, !tbaa !8
  %i.aak = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16, !tbaa !8
  %i.aal = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8, !tbaa !8
  %i.aam = fsub double %i.aak, %i.aal
  %i.aan = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8, !tbaa !8 ; 3 uses
  %i.aao = tail call double @llvm.fmuladd.f64(double %i.aaj, double %i.aam, double %i.aan)
  %i.aap = fdiv double %i.aao, 5.200000e+01       ; 2 uses
  store double %i.aap, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8, !tbaa !8
  %i.aaq = load double, ptr @one, align 8, !tbaa !8 ; 2 uses
  %i.aar = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16, !tbaa !8
  %i.aas = fadd double %i.aan, %i.aar
  %i.aat = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16, !tbaa !8 ; 2 uses
  %i.aau = fadd double %i.aas, %i.aat
  %i.aav = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8, !tbaa !8
  %i.aaw = fadd double %i.aau, %i.aav
  %i.aax = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16, !tbaa !8 ; 2 uses
  %i.aay = fadd double %i.aaw, %i.aax             ; 2 uses
  %i.aaz = load double, ptr @four, align 8, !tbaa !8
  %i.aba = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8, !tbaa !8 ; 2 uses
  %i.abb = tail call double @llvm.fmuladd.f64(double %i.aaz, double %i.aba, double %i.aay)
  %i.abc = insertelement <2 x double> poison, double %i.aaq, i64 0 ; 3 uses
  %i.abd = insertelement <2 x double> %i.abc, double %i.abb, i64 1
  %i.abe = insertelement <2 x double> <double poison, double 1.520000e+02>, double %i.aap, i64 0
  %i.abf = fdiv <2 x double> %i.abd, %i.abe       ; 2 uses
  store <2 x double> %i.abf, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16, !tbaa !8
  %i.abg = fadd double %i.aay, %i.aba
  %i.abh = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16, !tbaa !8 ; 2 uses
  %i.abi = fadd double %i.abg, %i.abh
  %i.abj = insertelement <2 x double> %i.abc, double %i.abi, i64 1
  %i.abk = shufflevector <2 x double> %i.abf, <2 x double> <double poison, double 1.460000e+02>, <2 x i32> <i32 1, i32 3>
  %i.abl = fdiv <2 x double> %i.abj, %i.abk       ; 2 uses
  store <2 x double> %i.abl, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16, !tbaa !8
  %i.abm = fadd double %i.aan, %i.aat
  %i.abn = fadd double %i.abm, %i.aax
  %i.abo = fadd double %i.abn, %i.abh
  %i.abp = insertelement <2 x double> %i.abc, double %i.abo, i64 1
  %i.abq = shufflevector <2 x double> %i.abl, <2 x double> <double poison, double 9.100000e+01>, <2 x i32> <i32 1, i32 3>
  %i.abr = fdiv <2 x double> %i.abp, %i.abq       ; 2 uses
  store <2 x double> %i.abr, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16, !tbaa !8
  %i.abs = extractelement <2 x double> %i.abr, i64 1
  %i.abt = fdiv double %i.aaq, %i.abs
  store double %i.abt, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16, !tbaa !8
  %putchar306 = tail call i32 @putchar(i32 10)    ; 0 uses
  %i.abu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %i.wz) ; 0 uses
  %i.abv = load double, ptr @nulltime, align 8, !tbaa !8
  %i.abw = fmul double %i.abv, 1.000000e-30
  %i.abx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.abw) ; 0 uses
  %i.aby = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16, !tbaa !8
  %i.abz = fmul double %i.aby, 1.000000e-30
  %i.aca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %i.abz) ; 0 uses
  %i.acb = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16, !tbaa !8
  %i.acc = fmul double %i.acb, 1.000000e-30
  %i.acd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %i.acc) ; 0 uses
  %i.ace = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16, !tbaa !8
  %i.acf = fmul double %i.ace, 1.000000e-30
  %i.acg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %i.acf) ; 0 uses
  %i.ach = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16, !tbaa !8
  %i.aci = fmul double %i.ach, 1.000000e-30
  %i.acj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %i.aci) ; 0 uses
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @dtime(ptr noundef captures(none) initializes((8, 16)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !8
  %i.c = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.d = load i64, ptr @tnow, align 8, !tbaa !10
  %i.e = sitofp i64 %i.d to double
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.g = sitofp i64 %i.f to double
  %i.h = tail call double @llvm.fmuladd.f64(double %i.g, double f0x3EB0C6F7A0B5ED8D, double %i.e) ; 2 uses
  store double %i.h, ptr %i.a, align 8, !tbaa !8
  %i.i = fsub double %i.h, %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.i, ptr %i.j, align 8, !tbaa !8
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"timeval", !12, i64 0, !12, i64 8}
!12 = !{!"long", !6, i64 0}
!13 = !{!11, !12, i64 8}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
end_hunk_0
