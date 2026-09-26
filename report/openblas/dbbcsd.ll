Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dbbcsd?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dbbcsd_:bb.a
  %i.qg = getelementptr i8, ptr %i.qf, i64 -8
  call void @dlartgs_(ptr noundef nonnull %i.qa, ptr noundef nonnull %i.qb, ptr noundef nonnull %i.j, ptr noundef nonnull %i.qc, ptr noundef %i.qg) #7
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.an
  %i.qh = load double, ptr %i.gi, align 8, !tbaa !36 ; 2 uses
  %i.qi = load double, ptr %i.o, align 8, !tbaa !36 ; 2 uses
  %i.qj = fmul double %i.qi, %i.qi
  %i.qk = call double @llvm.fmuladd.f64(double %i.qh, double %i.qh, double %i.qj)
  %i.ql = fcmp ogt double %i.qk, %i.fs
  br i1 %i.ql, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.qm = add nsw i32 %.218421992, %i.bp
  %i.qn = sext i32 %i.qm to i64                   ; 2 uses
  %i.qo = getelementptr [8 x i8], ptr %i.am, i64 %i.qn
  %i.qp = getelementptr i8, ptr %i.qo, i64 -8
  %i.qq = add nsw i32 %.218421992, %i.bo
  %i.qr = sext i32 %i.qq to i64                   ; 2 uses
  %i.qs = getelementptr [8 x i8], ptr %i.am, i64 %i.qr
  %i.qt = getelementptr i8, ptr %i.qs, i64 -8
  call void @dlartgp_(ptr noundef nonnull %i.o, ptr noundef nonnull %i.gi, ptr noundef %i.qp, ptr noundef %i.qt, ptr noundef nonnull %i.c) #7
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.qu = load double, ptr %i.j, align 8, !tbaa !36
  %i.qv = load double, ptr %i.i, align 8, !tbaa !36
  %i.qw = fcmp olt double %i.qu, %i.qv
  br i1 %i.qw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.qx = add nsw i32 %.218421992, %i.bo
  %i.qy = sext i32 %i.qx to i64                   ; 2 uses
  %i.qz = getelementptr [8 x i8], ptr %i.am, i64 %i.qy
  %i.ra = getelementptr i8, ptr %i.qz, i64 -8
  %i.rb = add nsw i32 %.218421992, %i.bp
  %i.rc = sext i32 %i.rb to i64                   ; 2 uses
  %i.rd = getelementptr [8 x i8], ptr %i.am, i64 %i.rc
  %i.re = getelementptr i8, ptr %i.rd, i64 -8
  call void @dlartgs_(ptr noundef nonnull %i.oh, ptr noundef nonnull %i.on, ptr noundef nonnull %i.j, ptr noundef %i.ra, ptr noundef %i.re) #7
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.rf = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ga
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ga
  %i.rh = add nsw i32 %.218421992, %i.bo
  %i.ri = sext i32 %i.rh to i64                   ; 2 uses
  %i.rj = getelementptr [8 x i8], ptr %i.am, i64 %i.ri
  %i.rk = getelementptr i8, ptr %i.rj, i64 -8
  %i.rl = add nsw i32 %.218421992, %i.bp
  %i.rm = sext i32 %i.rl to i64                   ; 2 uses
  %i.rn = getelementptr [8 x i8], ptr %i.am, i64 %i.rm
  %i.ro = getelementptr i8, ptr %i.rn, i64 -8
  call void @dlartgs_(ptr noundef nonnull %i.rf, ptr noundef nonnull %i.rg, ptr noundef nonnull %i.i, ptr noundef %i.rk, ptr noundef %i.ro) #7
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.as
  %.pre-phi2100 = phi i64 [ %i.rc, %bb.au ], [ %i.rm, %bb.av ], [ %i.qn, %bb.as ]
  %.pre-phi2098 = phi i64 [ %i.qy, %bb.au ], [ %i.ri, %bb.av ], [ %i.qr, %bb.as ]
  %i.rp = getelementptr [8 x i8], ptr %i.am, i64 %.pre-phi2098
  %i.rq = getelementptr i8, ptr %i.rp, i64 -8     ; 8 uses
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !36
  %i.rs = fneg double %i.rr
  store double %i.rs, ptr %i.rq, align 8, !tbaa !36
  %i.rt = getelementptr [8 x i8], ptr %i.am, i64 %.pre-phi2100
  %i.ru = getelementptr i8, ptr %i.rt, i64 -8     ; 8 uses
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !36
  %i.rw = fneg double %i.rv
  store double %i.rw, ptr %i.ru, align 8, !tbaa !36
  %i.rx = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ga ; 6 uses
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !36 ; 2 uses
  %i.rz = load double, ptr %i.nr, align 8, !tbaa !36 ; 2 uses
  %i.sa = add nsw i32 %.218421992, %i.bn
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr [8 x i8], ptr %i.am, i64 %i.sb
  %i.sd = getelementptr i8, ptr %i.sc, i64 -8     ; 6 uses
  %i.se = load double, ptr %i.sd, align 8, !tbaa !36 ; 2 uses
  %i.sf = load double, ptr %i.oa, align 8, !tbaa !36 ; 2 uses
  %i.sg = fmul double %i.se, %i.sf
  %i.sh = call double @llvm.fmuladd.f64(double %i.ry, double %i.rz, double %i.sg)
  %i.si = fneg double %i.rz
  %i.sj = fmul double %i.se, %i.si
  %i.sk = call double @llvm.fmuladd.f64(double %i.ry, double %i.sf, double %i.sj)
  store double %i.sk, ptr %i.oa, align 8, !tbaa !36
  store double %i.sh, ptr %i.nr, align 8, !tbaa !36
  %i.sl = icmp sgt i32 %.118351993, %i.jz         ; 2 uses
  br i1 %i.sl, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.sm = load double, ptr %i.sd, align 8, !tbaa !36
  %i.sn = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.nz ; 2 uses
  %i.so = load double, ptr %i.sn, align 8, !tbaa !36 ; 2 uses
  %i.sp = fmul double %i.sm, %i.so
  store double %i.sp, ptr %i.m, align 8, !tbaa !36
  %i.sq = load double, ptr %i.rx, align 8, !tbaa !36
  %i.sr = fmul double %i.so, %i.sq
  store double %i.sr, ptr %i.sn, align 8, !tbaa !36
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ss = load double, ptr %i.rx, align 8, !tbaa !36 ; 2 uses
  %i.st = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ga ; 2 uses
  %i.su = load double, ptr %i.st, align 8, !tbaa !36 ; 2 uses
  %i.sv = load double, ptr %i.sd, align 8, !tbaa !36 ; 2 uses
  %i.sw = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ga ; 2 uses
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !36 ; 2 uses
  %i.sy = fmul double %i.sv, %i.sx
  %i.sz = call double @llvm.fmuladd.f64(double %i.ss, double %i.su, double %i.sy)
  %i.ta = fneg double %i.su
  %i.tb = fmul double %i.sv, %i.ta
  %i.tc = call double @llvm.fmuladd.f64(double %i.ss, double %i.sx, double %i.tb)
  store double %i.tc, ptr %i.sw, align 8, !tbaa !36
  store double %i.sz, ptr %i.st, align 8, !tbaa !36
  %i.td = load double, ptr %i.sd, align 8, !tbaa !36
  %i.te = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.nz ; 2 uses
  %i.tf = load double, ptr %i.te, align 8, !tbaa !36 ; 2 uses
  %i.tg = fmul double %i.td, %i.tf                ; 3 uses
  store double %i.tg, ptr %i.n, align 8, !tbaa !36
  %i.th = load double, ptr %i.rx, align 8, !tbaa !36
  %i.ti = fmul double %i.tf, %i.th
  store double %i.ti, ptr %i.te, align 8, !tbaa !36
  %i.tj = load double, ptr %i.rq, align 8, !tbaa !36 ; 2 uses
  %i.tk = load double, ptr %i.oh, align 8, !tbaa !36 ; 2 uses
  %i.tl = load double, ptr %i.ru, align 8, !tbaa !36 ; 2 uses
  %i.tm = load double, ptr %i.on, align 8, !tbaa !36 ; 2 uses
  %i.tn = fmul double %i.tl, %i.tm
  %i.to = call double @llvm.fmuladd.f64(double %i.tj, double %i.tk, double %i.tn)
  %i.tp = fneg double %i.tk
  %i.tq = fmul double %i.tl, %i.tp
  %i.tr = call double @llvm.fmuladd.f64(double %i.tj, double %i.tm, double %i.tq)
  store double %i.tr, ptr %i.on, align 8, !tbaa !36
  store double %i.to, ptr %i.oh, align 8, !tbaa !36
  br i1 %i.sl, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ts = load double, ptr %i.ru, align 8, !tbaa !36
  %i.tt = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.nz ; 2 uses
  %i.tu = load double, ptr %i.tt, align 8, !tbaa !36 ; 2 uses
  %i.tv = fmul double %i.ts, %i.tu
  store double %i.tv, ptr %i.o, align 8, !tbaa !36
  %i.tw = load double, ptr %i.rq, align 8, !tbaa !36
  %i.tx = fmul double %i.tu, %i.tw
  store double %i.tx, ptr %i.tt, align 8, !tbaa !36
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ty = load double, ptr %i.rq, align 8, !tbaa !36 ; 2 uses
  %i.tz = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ga ; 2 uses
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !36 ; 2 uses
  %i.ub = load double, ptr %i.ru, align 8, !tbaa !36 ; 2 uses
  %i.uc = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ga ; 2 uses
  %i.ud = load double, ptr %i.uc, align 8, !tbaa !36 ; 2 uses
  %i.ue = fmul double %i.ub, %i.ud
  %i.uf = call double @llvm.fmuladd.f64(double %i.ty, double %i.ua, double %i.ue) ; 2 uses
  %i.ug = fneg double %i.ua
  %i.uh = fmul double %i.ub, %i.ug
  %i.ui = call double @llvm.fmuladd.f64(double %i.ty, double %i.ud, double %i.uh)
  store double %i.ui, ptr %i.uc, align 8, !tbaa !36
  store double %i.uf, ptr %i.tz, align 8, !tbaa !36
  %i.uj = load double, ptr %i.ru, align 8, !tbaa !36
  %i.uk = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.nz ; 2 uses
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !36 ; 2 uses
  %i.um = fmul double %i.uj, %i.ul                ; 3 uses
  store double %i.um, ptr %i.p, align 8, !tbaa !36
  %i.un = load double, ptr %i.rq, align 8, !tbaa !36
  %i.uo = fmul double %i.ul, %i.un
  store double %i.uo, ptr %i.uk, align 8, !tbaa !36
  store i32 %i.gj, ptr %i.a, align 4, !tbaa !34
  %.not18941977.not = icmp slt i32 %.218421992, %i.gj
  br i1 %.not18941977.not, label %.lr.ph1980.preheader, label %._crit_edge1981

.lr.ph1980.preheader:                             ; preds = %bb.ba
  %i.up = zext nneg i32 %i.gj to i64
  br label %.lr.ph1980

.lr.ph1980:                                       ; preds = %.lr.ph1980.preheader, %bb.co
  %i.uq = phi double [ %i.um, %.lr.ph1980.preheader ], [ %i.aic, %bb.co ] ; 3 uses
  %i.ur = phi double [ %i.tg, %.lr.ph1980.preheader ], [ %i.ahn, %bb.co ] ; 3 uses
  %i.us = phi double [ %i.uf, %.lr.ph1980.preheader ], [ %i.ahv, %bb.co ]
  %indvars.iv2051.in = phi i64 [ %i.ga, %.lr.ph1980.preheader ], [ %indvars.iv2051, %bb.co ] ; 37 uses
  %indvars.iv2051 = add nsw i64 %indvars.iv2051.in, 1 ; 34 uses
  %i.ut = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv2051.in
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !36 ; 8 uses
  %i.uv = call double @sin(double noundef %i.uu) #7
  %i.uw = getelementptr inbounds [8 x i8], ptr %i.af, i64 %indvars.iv2051.in ; 3 uses
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !36
  %i.uy = call double @cos(double noundef %i.uu) #7
  %i.uz = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv2051.in ; 3 uses
  %i.va = load double, ptr %i.uz, align 8, !tbaa !36
  %i.vb = call double @sin(double noundef %i.uu) #7
  %i.vc = load double, ptr %i.m, align 8, !tbaa !36 ; 3 uses
  %i.vd = call double @cos(double noundef %i.uu) #7
  %i.ve = load double, ptr %i.o, align 8, !tbaa !36 ; 3 uses
  %i.vf = call double @sin(double noundef %i.uu) #7
  %i.vg = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %indvars.iv2051.in ; 3 uses
  %i.vh = load double, ptr %i.vg, align 8, !tbaa !36
  %i.vi = call double @cos(double noundef %i.uu) #7
  %i.vj = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv2051.in ; 2 uses
  %i.vk = call double @sin(double noundef %i.uu) #7
  %i.vl = call double @cos(double noundef %i.uu) #7
  %29 = fmul double %i.uy, %i.va
  %30 = call double @llvm.fmuladd.f64(double %i.uv, double %i.ux, double %29) ; 2 uses
  store double %30, ptr %i.e, align 8, !tbaa !36
  %31 = fmul double %i.vd, %i.ve
  %32 = call double @llvm.fmuladd.f64(double %i.vb, double %i.vc, double %31) ; 2 uses
  store double %32, ptr %i.f, align 8, !tbaa !36
  %33 = fmul double %i.vi, %i.us
  %34 = call double @llvm.fmuladd.f64(double %i.vf, double %i.vh, double %33) ; 2 uses
  store double %34, ptr %i.g, align 8, !tbaa !36
  %35 = fmul double %i.vl, %i.uq
  %36 = call double @llvm.fmuladd.f64(double %i.vk, double %i.ur, double %35) ; 2 uses
  store double %36, ptr %i.h, align 8, !tbaa !36
  %i.vm = insertelement <2 x double> poison, double %32, i64 0
  %i.vn = insertelement <2 x double> %i.vm, double %36, i64 1 ; 2 uses
  %i.vo = fmul <2 x double> %i.vn, %i.vn
  %i.vp = insertelement <2 x double> poison, double %30, i64 0
  %i.vq = insertelement <2 x double> %i.vp, double %34, i64 1 ; 2 uses
  %i.vr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vq, <2 x double> %i.vq, <2 x double> %i.vo)
  %i.vs = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.vr) ; 2 uses
  %i.vt = extractelement <2 x double> %i.vs, i64 0
  %i.vu = extractelement <2 x double> %i.vs, i64 1
  %i.vv = call double @atan2(double noundef %i.vt, double noundef %i.vu) #7
  %i.vw = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv2051.in ; 2 uses
  store double %i.vv, ptr %i.vw, align 8, !tbaa !36
  %i.vx = load double, ptr %i.uw, align 8, !tbaa !36 ; 2 uses
  %i.vy = fmul double %i.vc, %i.vc
  %i.vz = call double @llvm.fmuladd.f64(double %i.vx, double %i.vx, double %i.vy)
  %i.wa = fcmp ole double %i.vz, %i.fs            ; 2 uses
  %i.wb = load double, ptr %i.uz, align 8, !tbaa !36 ; 2 uses
  %i.wc = fmul double %i.ve, %i.ve
  %i.wd = call double @llvm.fmuladd.f64(double %i.wb, double %i.wb, double %i.wc)
  %i.we = fcmp ole double %i.wd, %i.fs            ; 3 uses
  %i.wf = load double, ptr %i.vg, align 8, !tbaa !36 ; 2 uses
  %i.wg = fmul double %i.ur, %i.ur
  %i.wh = call double @llvm.fmuladd.f64(double %i.wf, double %i.wf, double %i.wg)
  %i.wi = fcmp ole double %i.wh, %i.fs            ; 2 uses
  %i.wj = load double, ptr %i.vj, align 8, !tbaa !36 ; 2 uses
  %i.wk = fmul double %i.uq, %i.uq
  %i.wl = call double @llvm.fmuladd.f64(double %i.wj, double %i.wj, double %i.wk)
  %i.wm = fcmp ole double %i.wl, %i.fs            ; 3 uses
  %or.cond3 = select i1 %i.wa, i1 true, i1 %i.we
  br i1 %or.cond3, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph1980
  %i.wn = add nsw i64 %indvars.iv2051, %i.ft      ; 2 uses
  %i.wo = getelementptr [8 x i8], ptr %i.am, i64 %i.wn
  %i.wp = getelementptr i8, ptr %i.wo, i64 -8
  %i.wq = add nsw i64 %indvars.iv2051, %i.fu      ; 2 uses
  %i.wr = getelementptr [8 x i8], ptr %i.am, i64 %i.wq
  %i.ws = getelementptr i8, ptr %i.wr, i64 -8
  call void @dlartgp_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef %i.wp, ptr noundef %i.ws, ptr noundef nonnull %i.c) #7
  br label %bb.bj

bb.bc:                                            ; preds = %.lr.ph1980
  %i.wt = xor i1 %i.wa, true                      ; 2 uses
  %or.cond5 = select i1 %i.wt, i1 %i.we, i1 false
  br i1 %or.cond5, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.wu = add nsw i64 %indvars.iv2051, %i.ft      ; 2 uses
  %i.wv = getelementptr [8 x i8], ptr %i.am, i64 %i.wu
  %i.ww = getelementptr i8, ptr %i.wv, i64 -8
  %i.wx = add nsw i64 %indvars.iv2051, %i.fu      ; 2 uses
  %i.wy = getelementptr [8 x i8], ptr %i.am, i64 %i.wx
  %i.wz = getelementptr i8, ptr %i.wy, i64 -8
  call void @dlartgp_(ptr noundef nonnull %i.m, ptr noundef nonnull %i.uw, ptr noundef %i.ww, ptr noundef %i.wz, ptr noundef nonnull %i.c) #7
  br label %bb.bj

bb.be:                                            ; preds = %bb.bc
  %or.cond7 = select i1 %i.wt, i1 true, i1 %i.we
  %i.xa = add nsw i64 %indvars.iv2051, %i.fu      ; 4 uses
  %i.xb = getelementptr [8 x i8], ptr %i.am, i64 %i.xa
  %i.xc = getelementptr i8, ptr %i.xb, i64 -8     ; 3 uses
  br i1 %or.cond7, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.xd = add nsw i64 %indvars.iv2051, %i.ft      ; 2 uses
  %i.xe = getelementptr [8 x i8], ptr %i.am, i64 %i.xd
  %i.xf = getelementptr i8, ptr %i.xe, i64 -8
  call void @dlartgp_(ptr noundef nonnull %i.o, ptr noundef nonnull %i.uz, ptr noundef %i.xf, ptr noundef %i.xc, ptr noundef nonnull %i.c) #7
  br label %bb.bj

bb.bg:                                            ; preds = %bb.be
  %i.xg = load double, ptr %i.i, align 8, !tbaa !36
  %i.xh = load double, ptr %i.j, align 8, !tbaa !36
  %i.xi = fcmp ugt double %i.xg, %i.xh
  %i.xj = add nsw i64 %indvars.iv2051, %i.ft      ; 3 uses
  %i.xk = getelementptr [8 x i8], ptr %i.am, i64 %i.xj
  %i.xl = getelementptr i8, ptr %i.xk, i64 -8     ; 2 uses
  br i1 %i.xi, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.xm = getelementptr [8 x i8], ptr %18, i64 %indvars.iv2051.in
  %i.xn = getelementptr [8 x i8], ptr %19, i64 %indvars.iv2051.in
  call void @dlartgs_(ptr noundef nonnull %i.xm, ptr noundef nonnull %i.xn, ptr noundef nonnull %i.i, ptr noundef %i.xc, ptr noundef %i.xl) #7
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.xo = getelementptr [8 x i8], ptr %22, i64 %indvars.iv2051.in
  %i.xp = getelementptr [8 x i8], ptr %23, i64 %indvars.iv2051.in
  call void @dlartgs_(ptr noundef nonnull %i.xo, ptr noundef nonnull %i.xp, ptr noundef nonnull %i.j, ptr noundef %i.xc, ptr noundef %i.xl) #7
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bd, %bb.bh, %bb.bi, %bb.bf, %bb.bb
  %.pre-phi2102 = phi i64 [ %i.wu, %bb.bd ], [ %i.xj, %bb.bh ], [ %i.xj, %bb.bi ], [ %i.xd, %bb.bf ], [ %i.wn, %bb.bb ]
  %.pre-phi2101 = phi i64 [ %i.wx, %bb.bd ], [ %i.xa, %bb.bh ], [ %i.xa, %bb.bi ], [ %i.xa, %bb.bf ], [ %i.wq, %bb.bb ]
  %i.xq = getelementptr [8 x i8], ptr %i.am, i64 %.pre-phi2101
  %i.xr = getelementptr i8, ptr %i.xq, i64 -8     ; 6 uses
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !36
  %i.xt = fneg double %i.xs
  store double %i.xt, ptr %i.xr, align 8, !tbaa !36
  %i.xu = getelementptr [8 x i8], ptr %i.am, i64 %.pre-phi2102
  %i.xv = getelementptr i8, ptr %i.xu, i64 -8     ; 6 uses
  %i.xw = load double, ptr %i.xv, align 8, !tbaa !36
  %i.xx = fneg double %i.xw
  store double %i.xx, ptr %i.xv, align 8, !tbaa !36
  %or.cond9 = select i1 %i.wi, i1 true, i1 %i.wm
  br i1 %or.cond9, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.xy = add nsw i64 %indvars.iv2051, %i.fv      ; 2 uses
  %i.xz = getelementptr [8 x i8], ptr %i.am, i64 %i.xy
  %i.ya = getelementptr i8, ptr %i.xz, i64 -16
  %i.yb = add nsw i64 %indvars.iv2051, %i.fw      ; 2 uses
  %i.yc = getelementptr [8 x i8], ptr %i.am, i64 %i.yb
  %i.yd = getelementptr i8, ptr %i.yc, i64 -16
  call void @dlartgp_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef %i.ya, ptr noundef %i.yd, ptr noundef nonnull %i.c) #7
  br label %bb.bs

bb.bl:                                            ; preds = %bb.bj
  %i.ye = xor i1 %i.wi, true                      ; 2 uses
  %or.cond11 = select i1 %i.ye, i1 %i.wm, i1 false
  br i1 %or.cond11, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.yf = add nsw i64 %indvars.iv2051, %i.fv      ; 2 uses
  %i.yg = getelementptr [8 x i8], ptr %i.am, i64 %i.yf
  %i.yh = getelementptr i8, ptr %i.yg, i64 -16
  %i.yi = add nsw i64 %indvars.iv2051, %i.fw      ; 2 uses
  %i.yj = getelementptr [8 x i8], ptr %i.am, i64 %i.yi
  %i.yk = getelementptr i8, ptr %i.yj, i64 -16
  call void @dlartgp_(ptr noundef nonnull %i.n, ptr noundef nonnull %i.vg, ptr noundef %i.yh, ptr noundef %i.yk, ptr noundef nonnull %i.c) #7
  br label %bb.bs

bb.bn:                                            ; preds = %bb.bl
  %or.cond13 = select i1 %i.ye, i1 true, i1 %i.wm
  %i.yl = add nsw i64 %indvars.iv2051, %i.fw      ; 4 uses
  %i.ym = getelementptr [8 x i8], ptr %i.am, i64 %i.yl
  %i.yn = getelementptr i8, ptr %i.ym, i64 -16    ; 3 uses
  br i1 %or.cond13, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.yo = add nsw i64 %indvars.iv2051, %i.fv      ; 2 uses
  %i.yp = getelementptr [8 x i8], ptr %i.am, i64 %i.yo
  %i.yq = getelementptr i8, ptr %i.yp, i64 -16
  call void @dlartgp_(ptr noundef nonnull %i.p, ptr noundef nonnull %i.vj, ptr noundef %i.yq, ptr noundef %i.yn, ptr noundef nonnull %i.c) #7
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bn
  %i.yr = load double, ptr %i.j, align 8, !tbaa !36
  %i.ys = load double, ptr %i.i, align 8, !tbaa !36
  %i.yt = fcmp olt double %i.yr, %i.ys
  %i.yu = add nsw i64 %indvars.iv2051, %i.fv      ; 3 uses
  %i.yv = getelementptr [8 x i8], ptr %i.am, i64 %i.yu
  %i.yw = getelementptr i8, ptr %i.yv, i64 -16    ; 2 uses
  br i1 %i.yt, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.yx = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %indvars.iv2051.in
  %i.yy = getelementptr [8 x i8], ptr %20, i64 %indvars.iv2051.in
  call void @dlartgs_(ptr noundef nonnull %i.yx, ptr noundef nonnull %i.yy, ptr noundef nonnull %i.j, ptr noundef %i.yn, ptr noundef %i.yw) #7
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.yz = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv2051.in
  %i.za = getelementptr [8 x i8], ptr %24, i64 %indvars.iv2051.in
  call void @dlartgs_(ptr noundef nonnull %i.yz, ptr noundef nonnull %i.za, ptr noundef nonnull %i.i, ptr noundef %i.yn, ptr noundef %i.yw) #7
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bm, %bb.bq, %bb.br, %bb.bo, %bb.bk
  %.pre-phi2104 = phi i64 [ %i.yf, %bb.bm ], [ %i.yu, %bb.bq ], [ %i.yu, %bb.br ], [ %i.yo, %bb.bo ], [ %i.xy, %bb.bk ]
  %.pre-phi2103 = phi i64 [ %i.yi, %bb.bm ], [ %i.yl, %bb.bq ], [ %i.yl, %bb.br ], [ %i.yl, %bb.bo ], [ %i.yb, %bb.bk ]
  %i.zb = load double, ptr %i.xr, align 8, !tbaa !36 ; 2 uses
  %i.zc = getelementptr [8 x i8], ptr %18, i64 %indvars.iv2051.in ; 5 uses
  %i.zd = load double, ptr %i.zc, align 8, !tbaa !36 ; 2 uses
  %i.ze = load double, ptr %i.xv, align 8, !tbaa !36 ; 2 uses
  %i.zf = getelementptr [8 x i8], ptr %19, i64 %indvars.iv2051.in ; 5 uses
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !36 ; 2 uses
  %i.zh = fmul double %i.ze, %i.zg
  %i.zi = call double @llvm.fmuladd.f64(double %i.zb, double %i.zd, double %i.zh)
  %i.zj = fneg double %i.zd
  %i.zk = fmul double %i.ze, %i.zj
  %i.zl = call double @llvm.fmuladd.f64(double %i.zb, double %i.zg, double %i.zk)
  store double %i.zl, ptr %i.zf, align 8, !tbaa !36
  store double %i.zi, ptr %i.zc, align 8, !tbaa !36
  %i.zm = load double, ptr %i.xv, align 8, !tbaa !36
  %i.zn = getelementptr [8 x i8], ptr %18, i64 %indvars.iv2051 ; 5 uses
  %i.zo = load double, ptr %i.zn, align 8, !tbaa !36 ; 2 uses
  %i.zp = load double, ptr %i.xr, align 8, !tbaa !36
  %i.zq = fmul double %i.zo, %i.zp
  store double %i.zq, ptr %i.zn, align 8, !tbaa !36
  %i.zr = load double, ptr %i.xr, align 8, !tbaa !36 ; 2 uses
  %i.zs = getelementptr [8 x i8], ptr %22, i64 %indvars.iv2051.in ; 5 uses
  %i.zt = load double, ptr %i.zs, align 8, !tbaa !36 ; 2 uses
  %i.zu = load double, ptr %i.xv, align 8, !tbaa !36 ; 2 uses
  %i.zv = getelementptr [8 x i8], ptr %23, i64 %indvars.iv2051.in ; 5 uses
  %i.zw = load double, ptr %i.zv, align 8, !tbaa !36 ; 2 uses
  %i.zx = fmul double %i.zu, %i.zw
  %i.zy = call double @llvm.fmuladd.f64(double %i.zr, double %i.zt, double %i.zx)
  %i.zz = fneg double %i.zt
  %i.aaa = fmul double %i.zu, %i.zz
  %i.aab = call double @llvm.fmuladd.f64(double %i.zr, double %i.zw, double %i.aaa)
  store double %i.aab, ptr %i.zv, align 8, !tbaa !36
  store double %i.zy, ptr %i.zs, align 8, !tbaa !36
  %i.aac = load double, ptr %i.xv, align 8, !tbaa !36
  %i.aad = getelementptr [8 x i8], ptr %22, i64 %indvars.iv2051 ; 4 uses
  %i.aae = load double, ptr %i.aad, align 8, !tbaa !36 ; 2 uses
  %i.aaf = load double, ptr %i.xr, align 8, !tbaa !36
end_hunk_0
