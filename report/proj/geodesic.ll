inline.NumInlined: 173
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumUnrolled: 71
begin_hunk_0_@geod_geninverse_int:bb.a
  %i.ks = fdiv <2 x double> %i.kp, %i.kr
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.kt = fneg double %i.gz
  %i.ku = call double @llvm.fmuladd.f64(double %.0476, double %i.dg, double %i.kt)
  %i.kv = call double @atan2(double noundef %i.hg, double noundef %i.ku) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.kw = fadd double %i.jg, %i.kv
  %i.kx = fneg double %i.dg
  call fastcc void @Lengths(ptr noundef nonnull readonly %0, double noundef %i.jb, double noundef %i.kw, double noundef %i.dd, double noundef %i.kx, double noundef %i.et, double noundef %.0477, double noundef %.0476, double noundef %i.ev, double noundef %i.dg, double noundef %.0476, ptr noundef null, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.r)
  %i.ky = load double, ptr %i.b, align 8, !tbaa !8
  %i.kz = load double, ptr %i.c, align 8, !tbaa !8
  %i.la = fmul double %i.if, %i.kz
  %i.lb = fmul double %i.jg, %i.la
  %i.lc = fdiv double %i.ky, %i.lb
  %i.ld = fneg double %i.jp
  %i.le = fmul double %i.ji, %i.ld
  %i.lf = fmul double %i.jg, %i.le
  %i.lg = fadd double %i.lc, -1.000000e+00        ; 3 uses
  %i.lh = fcmp olt double %i.lg, -1.000000e-02
  %i.li = fdiv double %i.hg, %i.lg
  %i.lj = select i1 %i.lh, double %i.li, double %i.lf
  %i.lk = fdiv double %i.lj, %i.dg                ; 2 uses
  %i.ll = fdiv double %i.jn, %i.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.lm = insertelement <2 x double> poison, double %i.lg, i64 0
  %i.ln = insertelement <2 x double> %i.lm, double %i.ll, i64 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0153.i = phi double [ %i.km, %bb.aq ], [ %i.lk, %bb.ar ]
  %i.lo = phi <2 x double> [ %i.ks, %bb.aq ], [ %i.ln, %bb.ar ] ; 4 uses
  %i.lp = extractelement <2 x double> %i.lo, i64 0 ; 5 uses
  %i.lq = load double, ptr @tol1, align 8, !tbaa !8
  %i.lr = fneg double %i.lq                       ; 2 uses
  %i.ls = extractelement <2 x double> %i.lo, i64 1 ; 2 uses
  %i.lt = fcmp ogt double %i.ls, %i.lr
  br i1 %i.lt, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.lu = load double, ptr @xthresh, align 8, !tbaa !8
  %i.lv = fsub double -1.000000e+00, %i.lu
  %i.lw = fcmp ogt double %i.lp, %i.lv
  br i1 %i.lw, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  br i1 %i.jq, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lx = fneg nsz double %i.lp
  %i.ly = call nsz double @llvm.minnum.f64(double %i.lx, double 1.000000e+00) ; 3 uses
  %i.lz = fmul double %i.ly, %i.ly
  %i.ma = fsub double 1.000000e+00, %i.lz
  %i.mb = call double @sqrt(double noundef %i.ma) #15
  %i.mc = fneg double %i.mb
  br label %bb.bf

bb.aw:                                            ; preds = %bb.au
  %i.md = fcmp nsz ogt double %i.lp, %i.lr
  %i.me = select nsz i1 %i.md, double 0.000000e+00, double -1.000000e+00
  %i.mf = call nsz double @llvm.maxnum.f64(double %i.me, double %i.lp) ; 3 uses
  %i.mg = fmul double %i.mf, %i.mf
  %i.mh = fsub double 1.000000e+00, %i.mg
  %i.mi = call double @sqrt(double noundef %i.mh) #15
  br label %bb.bf

bb.ax:                                            ; preds = %bb.at, %bb.as
  %i.mj = fmul <2 x double> %i.lo, %i.lo          ; 2 uses
  %i.mk = extractelement <2 x double> %i.mj, i64 1 ; 6 uses
  %i.ml = extractelement <2 x double> %i.mj, i64 0 ; 2 uses
  %i.mm = fadd double %i.ml, %i.mk
  %i.mn = fadd double %i.mm, -1.000000e+00
  %i.mo = fdiv double %i.mn, 6.000000e+00         ; 7 uses
  %i.mp = fcmp oeq double %i.mk, 0.000000e+00
  %i.mq = fcmp ole double %i.mo, 0.000000e+00
  %or.cond.i.i = and i1 %i.mp, %i.mq
  br i1 %or.cond.i.i, label %Astroid.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mr = fmul double %i.ml, %i.mk
  %i.ms = fmul double %i.mr, 2.500000e-01         ; 4 uses
  %i.mt = fmul double %i.mo, %i.mo                ; 2 uses
  %i.mu = fmul double %i.mo, %i.mt                ; 3 uses
  %i.mv = call double @llvm.fmuladd.f64(double %i.mu, double 2.000000e+00, double %i.ms)
  %i.mw = fmul double %i.ms, %i.mv                ; 3 uses
  %i.mx = fcmp ult double %i.mw, 0.000000e+00
  br i1 %i.mx, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.my = fadd double %i.ms, %i.mu                ; 2 uses
  %i.mz = fcmp olt double %i.my, 0.000000e+00
  %i.na = call double @sqrt(double noundef %i.mw) #15 ; 2 uses
  %i.nb = fneg double %i.na
  %i.nc = select i1 %i.mz, double %i.nb, double %i.na
  %i.nd = fadd double %i.my, %i.nc
  %i.ne = call double @cbrt(double noundef %i.nd) #16 ; 3 uses
  %i.nf = fcmp une double %i.ne, 0.000000e+00
  %i.ng = fdiv double %i.mt, %i.ne
  %i.nh = select i1 %i.nf, double %i.ng, double 0.000000e+00
  %i.ni = fadd double %i.ne, %i.nh
  %i.nj = fadd double %i.mo, %i.ni
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.nk = fneg double %i.mw
  %i.nl = call double @sqrt(double noundef %i.nk) #15
  %i.nm = fadd double %i.ms, %i.mu
  %i.nn = fneg double %i.nm
  %i.no = call double @atan2(double noundef %i.nl, double noundef %i.nn) #15
  %i.np = fmul double %i.mo, 2.000000e+00
  %i.nq = fdiv double %i.no, 3.000000e+00
  %i.nr = call double @cos(double noundef %i.nq) #15
  %i.ns = call double @llvm.fmuladd.f64(double %i.np, double %i.nr, double %i.mo)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.051.i.i = phi double [ %i.nj, %bb.az ], [ %i.ns, %bb.ba ] ; 5 uses
  %i.nt = fmul double %.051.i.i, %.051.i.i
  %i.nu = fadd double %i.mk, %i.nt
  %sqrt.i.i = call double @llvm.sqrt.f64(double %i.nu) ; 3 uses
  %i.nv = fcmp olt double %.051.i.i, 0.000000e+00
  %i.nw = fsub double %sqrt.i.i, %.051.i.i
  %i.nx = fdiv double %i.mk, %i.nw
  %i.ny = fadd double %.051.i.i, %sqrt.i.i
  %i.nz = select i1 %i.nv, double %i.nx, double %i.ny ; 3 uses
  %i.oa = fsub double %i.nz, %i.mk
  %i.ob = fmul double %sqrt.i.i, 2.000000e+00
  %i.oc = fdiv double %i.oa, %i.ob                ; 3 uses
  %i.od = fmul double %i.oc, %i.oc
  %i.oe = fadd double %i.nz, %i.od
  %i.of = call double @sqrt(double noundef %i.oe) #15
  %i.og = fadd double %i.of, %i.oc
  %i.oh = fdiv double %i.nz, %i.og
  br label %Astroid.exit.i

Astroid.exit.i:                                   ; preds = %bb.bb, %bb.ax
  %.0.i.i = phi double [ %i.oh, %bb.bb ], [ 0.000000e+00, %bb.ax ] ; 4 uses
  br i1 %i.jq, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %Astroid.exit.i
  %i.oi = fneg double %i.lp
  %i.oj = fmul double %.0.i.i, %i.oi
  %i.ok = fadd double %.0.i.i, 1.000000e+00
  %i.ol = fdiv double %i.oj, %i.ok
  br label %bb.be

bb.bd:                                            ; preds = %Astroid.exit.i
  %i.om = fneg double %i.ls
  %i.on = fadd double %.0.i.i, 1.000000e+00
  %i.oo = fmul double %i.on, %i.om
  %i.op = fdiv double %i.oo, %.0.i.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.oq = phi double [ %i.ol, %bb.bc ], [ %i.op, %bb.bd ]
  %i.or = fmul double %.0153.i, %i.oq             ; 2 uses
  %i.os = call double @sin(double noundef %i.or) #15 ; 3 uses
  %i.ot = call double @cos(double noundef %i.or) #15
  %i.ou = fmul double %.0476, %i.os
  %i.ov = fmul double %i.os, %i.os
  %i.ow = fmul double %i.gw, %i.ov
  %i.ox = fadd double %i.ot, 1.000000e+00
  %i.oy = fdiv double %i.ow, %i.ox
  %i.oz = fsub double %i.hg, %i.oy
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.aw, %bb.av, %bb.ao, %bb.an, %bb.am
  %.0177.i = phi double [ %i.ht, %bb.am ], [ %i.ht, %bb.an ], [ %i.mi, %bb.aw ], [ %i.ly, %bb.av ], [ %i.ou, %bb.be ], [ %i.ht, %bb.ao ] ; 3 uses
  %.0176.i = phi double [ %i.id, %bb.am ], [ %i.id, %bb.an ], [ %i.mf, %bb.aw ], [ %i.mc, %bb.av ], [ %i.oz, %bb.be ], [ %i.id, %bb.ao ] ; 2 uses
  %.0152.i = phi double [ %i.iz, %bb.am ], [ -1.000000e+00, %bb.an ], [ -1.000000e+00, %bb.aw ], [ -1.000000e+00, %bb.av ], [ -1.000000e+00, %bb.be ], [ -1.000000e+00, %bb.ao ] ; 4 uses
  %i.pa = phi <2 x double> [ %i.iy, %bb.am ], [ zeroinitializer, %bb.an ], [ zeroinitializer, %bb.aw ], [ zeroinitializer, %bb.av ], [ zeroinitializer, %bb.be ], [ zeroinitializer, %bb.ao ]
  %i.pb = fcmp ugt double %.0177.i, 0.000000e+00
  br i1 %i.pb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.pc = call double @hypot(double noundef %.0177.i, double noundef %.0176.i) #15
  %i.pd = insertelement <2 x double> poison, double %i.pc, i64 0
  %i.pe = shufflevector <2 x double> %i.pd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pf = insertelement <2 x double> poison, double %.0177.i, i64 0
  %i.pg = insertelement <2 x double> %i.pf, double %.0176.i, i64 1
  %i.ph = fdiv <2 x double> %i.pg, %i.pe
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.pi = phi <2 x double> [ %i.ph, %bb.bg ], [ <double 1.000000e+00, double 0.000000e+00>, %bb.bf ] ; 2 uses
  %i.pj = fcmp ult double %.0152.i, 0.000000e+00
  br i1 %i.pj, label %.preheader, label %InverseStart.exit

.preheader:                                       ; preds = %bb.bh
  %.b272 = load i1, ptr @maxit1, align 4          ; 2 uses
  %i.pk = fneg double %i.de
  %i.pl = fcmp une double %.0476, %i.dg           ; 2 uses
  %i.pm = call double @llvm.fabs.f64(double %.0477)
  %i.pn = fcmp une double %i.pm, %i.ef
  %or.cond571 = select i1 %i.pl, i1 true, i1 %i.pn
  %i.po = fneg double %.1475
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %14 = load double, ptr %i.pp, align 8, !tbaa !8
  %.19.i.119.i.i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %15 = load double, ptr %.19.i.119.i.i.a, align 8, !tbaa !8
  %.19.i.119.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.pq = load double, ptr %.19.i.119.i.i, align 8, !tbaa !8
  %.19.i.221.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.pr = load double, ptr %.19.i.221.i.i, align 8, !tbaa !8
  %.19.i.323.i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ps = load double, ptr %.19.i.323.i.i, align 8, !tbaa !8
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.19.i.1.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.pu = load double, ptr %.19.i.1.1.i.i, align 8, !tbaa !8
  %.19.i.1.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.pv = load double, ptr %.19.i.1.2.i.i, align 8, !tbaa !8
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.px = load <2 x double>, ptr %i.pt, align 8, !tbaa !8 ; 2 uses
  %i.py = load <2 x double>, ptr %i.pw, align 8, !tbaa !8 ; 2 uses
  %.19.i.2.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.pz = load <2 x double>, ptr %.19.i.2.1.i.i, align 8, !tbaa !8 ; 2 uses
  %.19.i.3.i.i299 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.qa = load double, ptr %.19.i.3.i.i299, align 8, !tbaa !8
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !8
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !12
  %i.qf = fneg double %i.qe
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !8
  %.19.i.i114.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.qi = load double, ptr %.19.i.i114.i, align 8, !tbaa !8
  %.19.i.1.i115.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.qj = load double, ptr %.19.i.1.i115.i, align 8, !tbaa !8
  %.19.i.2.i116.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.qk = load double, ptr %.19.i.2.i116.i, align 8, !tbaa !8
  %.19.i.3.i117.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ql = load double, ptr %.19.i.3.i117.i, align 8, !tbaa !8
  %.19.i.4.i.i300 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.qm = load double, ptr %.19.i.4.i.i300, align 8, !tbaa !8
  %i.qn = fsub double %i.dd, %.0477
  %i.qo = fadd double %i.dd, %.0477
  %i.qp = fmul double %i.qn, %i.qo
  %i.qq = fsub double %.0476, %i.dg
  %i.qr = fadd double %i.dg, %.0476
  %i.qs = fmul double %i.qq, %i.qr
  %i.qt = load double, ptr @tol0, align 8         ; 2 uses
  %.b = load i1, ptr @maxit2, align 4
  %i.qu = select i1 %.b, i32 83, i32 0
  %i.qv = select i1 %.b272, i32 20, i32 0         ; 2 uses
  %i.qw = load double, ptr @pi, align 8
  %i.qx = fmul double %i.qt, 1.600000e+01
  %i.qy = load double, ptr @tolb, align 8         ; 2 uses
  %.590 = select i1 %i.eg, double %i.qs, double %i.qp
  %i.qz = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.de, i64 0
  %i.ra = insertelement <2 x double> <double poison, double -1.000000e+00>, double %i.de, i64 0
  %i.rb = insertelement <2 x double> %i.px, double 0.000000e+00, i64 1
  %i.rc = shufflevector <2 x double> %i.px, <2 x double> %i.py, <2 x i32> <i32 1, i32 2>
  %i.rd = insertelement <2 x double> %i.py, double %i.pu, i64 0
  %i.re = insertelement <2 x double> %i.pz, double %i.qa, i64 1
  %i.rf = insertelement <2 x double> poison, double %i.ps, i64 0
  %i.rg = insertelement <2 x double> %i.rf, double %i.pv, i64 1
  %i.rh = insertelement <2 x double> poison, double %.1475, i64 1
  %i.ri = insertelement <2 x double> poison, double %i.ax, i64 1
  br label %bb.bk

InverseStart.exit:                                ; preds = %bb.bh
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !15 ; 2 uses
  %i.rl = fmul double %.0152.i, %i.rk
  %i.rm = fmul double %.0446, %i.rl
  %i.rn = fmul double %.0446, %.0446
  %i.ro = fmul double %i.rn, %i.rk
  %i.rp = fdiv double %.0152.i, %.0446            ; 2 uses
  %i.rq = call double @sin(double noundef %i.rp) #15
  %i.rr = fmul double %i.ro, %i.rq
  br i1 %i.u, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %InverseStart.exit
  %i.rs = call double @cos(double noundef %i.rp) #15 ; 2 uses
  store double %i.rs, ptr %i.n, align 8, !tbaa !8
  store double %i.rs, ptr %i.m, align 8, !tbaa !8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %InverseStart.exit
  %i.rt = fmul double %i.cu, %.0446
  %i.ru = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.rv = insertelement <2 x double> %i.ru, double %.0152.i, i64 1
  %i.rw = insertelement <2 x double> poison, double %i.rt, i64 0
  %i.rx = insertelement <2 x double> %i.rw, double %i.ad, i64 1
  %i.ry = fdiv <2 x double> %i.rv, %i.rx
  br label %bb.ce

bb.bk:                                            ; preds = %.preheader, %bb.cc
  %.0235 = phi i32 [ %i.aac, %bb.cc ], [ 0, %.preheader ] ; 5 uses
  %.0232 = phi double [ %.1233, %bb.cc ], [ %i.de, %.preheader ] ; 5 uses
  %.0229 = phi double [ %i.yj, %bb.cc ], [ 1.000000e+00, %.preheader ]
  %.0226 = phi double [ %.1227, %bb.cc ], [ %i.de, %.preheader ] ; 4 uses
  %.0223 = phi double [ %i.yi, %bb.cc ], [ -1.000000e+00, %.preheader ]
  %.0220 = phi i32 [ %.4.ph, %bb.cc ], [ 0, %.preheader ]
  %.0218 = phi i32 [ %.1219.ph, %bb.cc ], [ 0, %.preheader ]
  %i.rz = phi <2 x double> [ %i.aab, %bb.cc ], [ %i.pi, %.preheader ] ; 8 uses
  %i.sa = phi <2 x double> [ %i.yg, %bb.cc ], [ %i.qz, %.preheader ] ; 4 uses
  %i.sb = phi <2 x double> [ %i.yh, %bb.cc ], [ %i.ra, %.preheader ] ; 3 uses
  %i.sc = extractelement <2 x double> %i.rz, i64 0 ; 11 uses
  %i.sd = icmp ult i32 %.0235, 20
  %i.se = select i1 %.b272, i1 %i.sd, i1 false    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.sf = extractelement <2 x double> %i.rz, i64 1 ; 6 uses
  %i.sg = fcmp oeq double %i.sf, 0.000000e+00
  %or.cond.i294 = and i1 %i.gf, %i.sg
  %.0.i295 = select i1 %or.cond.i294, double %i.pk, double %i.sf ; 3 uses
  %i.sh = fmul double %i.dg, %i.sc                ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %i.dc, %i.rz
  %i.si = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.sj = call double @hypot(double noundef %.0.i295, double noundef %i.si) #15 ; 2 uses
  %i.sk = fmul double %i.dd, %i.sh                ; 2 uses
  %i.sl = fmul double %i.dg, %.0.i295             ; 6 uses
  %i.sm = call double @hypot(double noundef %i.dd, double noundef %i.sl) #15 ; 2 uses
  %i.sn = fdiv double %i.dd, %i.sm                ; 6 uses
  %i.so = fdiv double %i.sl, %i.sm                ; 5 uses
  br i1 %or.cond571, label %._crit_edge.i, label %bb.bl

._crit_edge.i:                                    ; preds = %bb.bk
  %i.sp = fmul double %i.sl, %i.sl
  %i.sq = fadd double %i.sp, %.590
  %i.sr = call double @sqrt(double noundef %i.sq) #15
  %i.ss = fdiv double %i.sr, %.0476
  br label %SinCosSeries.exit.i

bb.bl:                                            ; preds = %bb.bk
  %i.st = call double @llvm.fabs.f64(double %.0.i295)
  br label %SinCosSeries.exit.i

SinCosSeries.exit.i:                              ; preds = %bb.bl, %._crit_edge.i
  %i.su = phi double [ %i.ss, %._crit_edge.i ], [ %i.st, %bb.bl ] ; 4 uses
  %i.sv = fmul double %.0476, %i.su               ; 5 uses
  %i.sw = call double @hypot(double noundef %.0477, double noundef %i.sv) #15 ; 2 uses
  %i.sx = fdiv double %i.sv, %i.sw                ; 6 uses
  %i.sy = insertelement <2 x double> poison, double %i.sv, i64 0
  %i.sz = insertelement <2 x double> %i.sy, double %i.sx, i64 1
  %i.ta = fneg nsz <2 x double> %i.sz
  %i.tb = insertelement <2 x double> poison, double %i.sk, i64 0
  %i.tc = insertelement <2 x double> %i.tb, double %i.sn, i64 1
  %i.td = fmul nsz <2 x double> %i.tc, %i.ta
  %i.te = fdiv double %.0477, %i.sw               ; 6 uses
  %i.tf = fmul double %.0477, %i.sh               ; 2 uses
  %i.tg = insertelement <2 x double> poison, double %i.sl, i64 0
  %i.th = insertelement <2 x double> %i.tg, double %i.so, i64 1
  %i.ti = insertelement <2 x double> poison, double %i.tf, i64 0
  %i.tj = insertelement <2 x double> %i.ti, double %i.te, i64 1
  %i.tk = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.th, <2 x double> %i.tj, <2 x double> %i.td)
  %i.tl = fmul double %i.sk, %i.tf
  %i.tm = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.tk, <2 x double> zeroinitializer) ; 2 uses
  %i.tn = extractelement <2 x double> %i.tm, i64 0
  %i.to = fadd double %i.tn, 0.000000e+00         ; 2 uses
  %i.tp = extractelement <2 x double> %i.tm, i64 1
  %i.tq = fadd double %i.tp, 0.000000e+00
  %i.tr = call double @llvm.fmuladd.f64(double %i.sl, double %i.sv, double %i.tl) ; 2 uses
  %i.ts = insertelement <2 x double> %i.rh, double %i.sn, i64 0
  %i.tt = insertelement <2 x double> poison, double %i.te, i64 0
  %i.tu = insertelement <2 x double> %i.tt, double %i.to, i64 1
  %i.tv = fmul <2 x double> %i.ts, %i.tu
  %i.tw = insertelement <2 x double> poison, double %i.so, i64 0 ; 2 uses
  %i.tx = insertelement <2 x double> %i.tw, double %i.tr, i64 1
  %i.ty = insertelement <2 x double> %i.ri, double %i.sx, i64 0
  %i.tz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tx, <2 x double> %i.ty, <2 x double> %i.tv) ; 2 uses
  %i.ua = extractelement <2 x double> %i.tz, i64 0
  %i.ub = call double @atan2(double noundef %i.tq, double noundef %i.ua) #15 ; 4 uses
  %i.uc = fmul double %i.tr, %i.po
  %i.ud = call double @llvm.fmuladd.f64(double %i.to, double %i.ax, double %i.uc)
  %i.ue = extractelement <2 x double> %i.tz, i64 1
  %i.uf = call double @atan2(double noundef %i.ud, double noundef %i.ue) #15
  %i.ug = fmul double %i.sj, %i.sj
  %i.uh = fmul double %i.ug, %i.em                ; 3 uses
  %i.ui = fadd double %i.uh, 1.000000e+00
  %i.uj = call double @sqrt(double noundef %i.ui) #15
  %i.uk = fadd double %i.uj, 1.000000e+00
  %i.ul = call double @llvm.fmuladd.f64(double %i.uk, double 2.000000e+00, double %i.uh)
  %i.um = fdiv double %i.uh, %i.ul                ; 17 uses
  %16 = call double @llvm.fmuladd.f64(double %14, double %i.um, double %15)
  %17 = call double @llvm.fmuladd.f64(double %16, double %i.um, double %i.pq)
  %18 = call double @llvm.fmuladd.f64(double %17, double %i.um, double %i.pr)
  %i.un = fmul double %i.um, %i.um                ; 2 uses
  %i.uo = fmul double %i.um, %i.un                ; 2 uses
  %i.up = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.um, i64 0 ; 2 uses
  %i.uq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rb, <2 x double> %i.up, <2 x double> %i.rc)
  %i.ur = shufflevector <2 x double> %i.up, <2 x double> poison, <2 x i32> zeroinitializer
  %i.us = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uq, <2 x double> %i.ur, <2 x double> %i.rd) ; 2 uses
  %i.ut = fmul double %i.um, %i.uo                ; 2 uses
  %i.uu = shufflevector <2 x double> %i.us, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.uv = shufflevector <2 x double> %i.us, <2 x double> %i.pz, <2 x i32> <i32 1, i32 3>
  %i.uw = insertelement <2 x double> poison, double %i.um, i64 0 ; 2 uses
  %i.ux = shufflevector <2 x double> %i.uw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uv, <2 x double> %i.ux, <2 x double> %i.re)
  %i.uz = fmul double %i.um, %i.ut
  %i.va = insertelement <2 x double> %i.uu, double %18, i64 0
  %i.vb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.va, <2 x double> %i.ux, <2 x double> %i.rg)
  %i.vc = insertelement <2 x double> %i.uw, double %i.un, i64 1
  %i.vd = fmul <2 x double> %i.vc, %i.vb          ; 3 uses
  %i.ve = insertelement <2 x double> poison, double %i.uo, i64 0
  %i.vf = insertelement <2 x double> %i.ve, double %i.ut, i64 1
  %i.vg = fmul <2 x double> %i.vf, %i.uy          ; 3 uses
  %i.vh = fmul double %i.uz, %i.qc                ; 4 uses
  %i.vi = insertelement <2 x double> %i.tw, double %i.sx, i64 1 ; 2 uses
  %i.vj = insertelement <2 x double> poison, double %i.sn, i64 0
  %i.vk = insertelement <2 x double> %i.vj, double %i.te, i64 1 ; 2 uses
  %i.vl = fsub <2 x double> %i.vi, %i.vk
  %i.vm = fmul <2 x double> %i.vl, splat (double 2.000000e+00)
  %i.vn = fadd <2 x double> %i.vk, %i.vi
  %i.vo = fmul <2 x double> %i.vn, %i.vm          ; 4 uses
  %i.vp = extractelement <2 x double> %i.vo, i64 0 ; 2 uses
  %i.vq = fmul double %i.vp, %i.vh
  %i.vr = extractelement <2 x double> %i.vg, i64 1
  %i.vs = fadd double %i.vr, %i.vq                ; 2 uses
  %i.vt = fneg double %i.vh
  %i.vu = insertelement <2 x double> poison, double %i.vs, i64 0
  %i.vv = insertelement <2 x double> %i.vu, double %i.vh, i64 1
  %i.vw = fneg <2 x double> %i.vv
  %i.vx = extractelement <2 x double> %i.vo, i64 1 ; 2 uses
  %i.vy = fmul double %i.vx, %i.vh
  %i.vz = call double @llvm.fmuladd.f64(double %i.vp, double %i.vs, double %i.vt)
  %i.wa = insertelement <2 x double> poison, double %i.vz, i64 0
  %i.wb = insertelement <2 x double> %i.wa, double %i.vy, i64 1
  %i.wc = fadd <2 x double> %i.vg, %i.wb          ; 2 uses
  %i.wd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vo, <2 x double> %i.wc, <2 x double> %i.vw)
  %i.we = shufflevector <2 x double> %i.vd, <2 x double> %i.vg, <2 x i32> <i32 1, i32 2>
  %i.wf = fadd <2 x double> %i.we, %i.wd          ; 2 uses
  %i.wg = fneg <2 x double> %i.wc
  %i.wh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vo, <2 x double> %i.wf, <2 x double> %i.wg)
  %i.wi = fadd <2 x double> %i.vd, %i.wh          ; 2 uses
  %i.wj = extractelement <2 x double> %i.wf, i64 1
  %i.wk = fneg double %i.wj
  %i.wl = extractelement <2 x double> %i.wi, i64 1
  %i.wm = call double @llvm.fmuladd.f64(double %i.vx, double %i.wl, double %i.wk)
  %i.wn = extractelement <2 x double> %i.vd, i64 0
  %i.wo = fadd double %i.wn, %i.wm
  %i.wp = fmul double %i.te, 2.000000e+00
  %i.wq = fmul double %i.sx, %i.wp
  %i.wr = fmul double %i.wq, %i.wo
  %i.ws = fmul double %i.sn, 2.000000e+00
  %i.wt = fmul double %i.so, %i.ws
  %i.wu = extractelement <2 x double> %i.wi, i64 0
  %i.wv = fmul double %i.wt, %i.wu
  %i.ww = fsub double %i.wr, %i.wv
  %i.wx = call double @llvm.fmuladd.f64(double %i.qh, double %i.um, double %i.qi)
  %i.wy = call double @llvm.fmuladd.f64(double %i.wx, double %i.um, double %i.qj)
  %i.wz = call double @llvm.fmuladd.f64(double %i.wy, double %i.um, double %i.qk)
  %i.xa = call double @llvm.fmuladd.f64(double %i.wz, double %i.um, double %i.ql)
  %i.xb = call double @llvm.fmuladd.f64(double %i.xa, double %i.um, double %i.qm)
  %i.xc = fmul double %i.xb, %i.qf
  %i.xd = fmul double %i.sh, %i.xc
  %i.xe = fadd double %i.ub, %i.ww
  %i.xf = fmul double %i.xd, %i.xe                ; 3 uses
  br i1 %i.se, label %bb.bm, label %Lambda12.exit

bb.bm:                                            ; preds = %SinCosSeries.exit.i
  %i.xg = fcmp oeq double %i.su, 0.000000e+00
  br i1 %i.xg, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.xh = load double, ptr %i.ct, align 8, !tbaa !13
  %i.xi = fmul double %i.xh, -2.000000e+00
  %i.xj = fmul double %i.et, %i.xi
  %i.xk = fdiv double %i.xj, %i.dd
  br label %Lambda12.exit

bb.bo:                                            ; preds = %bb.bm
  call fastcc void @Lengths(ptr noundef nonnull readonly %0, double noundef %i.um, double noundef %i.ub, double noundef %i.sn, double noundef %i.so, double noundef %i.et, double noundef %i.te, double noundef %i.sx, double noundef %i.ev, double noundef %i.dg, double noundef %.0476, ptr noundef null, ptr noundef %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.r)
  %i.xl = load double, ptr %i.ct, align 8, !tbaa !13
  %i.xm = fdiv double %i.xl, %i.sv
  %i.xn = load double, ptr %i.a, align 8, !tbaa !8
  %i.xo = fmul double %i.xn, %i.xm
  br label %Lambda12.exit

Lambda12.exit:                                    ; preds = %SinCosSeries.exit.i, %bb.bn, %bb.bo
  %.0439 = phi double [ %i.xk, %bb.bn ], [ %i.xo, %bb.bo ], [ 0.000000e+00, %SinCosSeries.exit.i ] ; 2 uses
  %i.xp = fadd double %i.uf, %i.xf                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.not276 = icmp eq i32 %.0218, 0
  br i1 %.not276, label %bb.bp, label %bb.cd

bb.bp:                                            ; preds = %Lambda12.exit
  %i.xq = call double @llvm.fabs.f64(double %i.xp) ; 2 uses
  %.not277 = icmp eq i32 %.0220, 0
  %i.xr = select i1 %.not277, i32 1, i32 8
  %i.xs = uitofp nneg i32 %i.xr to double
  %i.xt = fmul double %i.qt, %i.xs
  %i.xu = fcmp ult double %i.xq, %i.xt
  %i.xv = icmp eq i32 %.0235, %i.qu
  %or.cond285 = select i1 %i.xu, i1 true, i1 %i.xv
  br i1 %or.cond285, label %bb.cd, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.xw = fcmp ogt double %i.xp, 0.000000e+00
  br i1 %i.xw, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.xx = icmp ugt i32 %.0235, %i.qv
  br i1 %i.xx, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.xy = fdiv double %i.sf, %i.sc
  %i.xz = fdiv double %.0223, %.0226
  %i.ya = fcmp ogt double %i.xy, %i.xz
  br i1 %i.ya, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bq
  %i.yb = fcmp olt double %i.xp, 0.000000e+00
  br i1 %i.yb, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.yc = icmp ugt i32 %.0235, %i.qv
  br i1 %i.yc, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.yd = fdiv double %i.sf, %i.sc
  %i.ye = fdiv double %.0229, %.0232
  %i.yf = fcmp olt double %i.yd, %i.ye
  br i1 %i.yf, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  br label %bb.bx

bb.bx:                                            ; preds = %bb.br, %bb.bs, %bb.bt, %bb.bv, %bb.bw
  %.1233 = phi double [ %.0232, %bb.bt ], [ %i.sc, %bb.bw ], [ %.0232, %bb.bv ], [ %.0232, %bb.bs ], [ %.0232, %bb.br ] ; 2 uses
  %.1227 = phi double [ %.0226, %bb.bt ], [ %.0226, %bb.bw ], [ %.0226, %bb.bv ], [ %i.sc, %bb.bs ], [ %i.sc, %bb.br ] ; 2 uses
  %i.yg = phi <2 x double> [ %i.sa, %bb.bt ], [ %i.rz, %bb.bw ], [ %i.sa, %bb.bv ], [ %i.sa, %bb.bs ], [ %i.sa, %bb.br ] ; 4 uses
  %i.yh = phi <2 x double> [ %i.sb, %bb.bt ], [ %i.sb, %bb.bw ], [ %i.sb, %bb.bv ], [ %i.rz, %bb.bs ], [ %i.rz, %bb.br ] ; 4 uses
  %i.yi = extractelement <2 x double> %i.yh, i64 1
  %i.yj = extractelement <2 x double> %i.yg, i64 1
  %i.yk = fcmp ogt double %.0439, 0.000000e+00
  %or.cond8 = select i1 %i.se, i1 %i.yk, i1 false
  br i1 %or.cond8, label %bb.by, label %.thread506

bb.by:                                            ; preds = %bb.bx
  %i.yl = fneg double %i.xp
  %i.ym = fdiv double %i.yl, %.0439               ; 3 uses
  %i.yn = call double @llvm.fabs.f64(double %i.ym)
  %i.yo = fcmp olt double %i.yn, %i.qw
  br i1 %i.yo, label %bb.bz, label %.thread506

bb.bz:                                            ; preds = %bb.by
  %i.yp = call double @sin(double noundef %i.ym) #15 ; 2 uses
  %i.yq = call double @cos(double noundef %i.ym) #15 ; 2 uses
  %i.yr = fmul double %i.sf, %i.yp
  %i.ys = call double @llvm.fmuladd.f64(double %i.sc, double %i.yq, double %i.yr) ; 3 uses
  %i.yt = fcmp ule double %i.ys, 0.000000e+00
  br i1 %i.yt, label %.thread506, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.yu = fneg double %i.yp
  %i.yv = fmul double %i.sc, %i.yu
  %i.yw = call double @llvm.fmuladd.f64(double %i.sf, double %i.yq, double %i.yv) ; 2 uses
  %i.yx = call double @hypot(double noundef %i.ys, double noundef %i.yw) #15
  %i.yy = insertelement <2 x double> poison, double %i.yx, i64 0
  %i.yz = shufflevector <2 x double> %i.yy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.za = insertelement <2 x double> poison, double %i.ys, i64 0
  %i.zb = insertelement <2 x double> %i.za, double %i.yw, i64 1
  %i.zc = fdiv <2 x double> %i.zb, %i.yz
  %i.zd = fcmp ole double %i.xq, %i.qx
  %i.ze = zext i1 %i.zd to i32
  br label %bb.cc

.thread506:                                       ; preds = %bb.bz, %bb.by, %bb.bx
  %i.zf = fadd <2 x double> %i.yg, %i.yh
  %i.zg = fmul <2 x double> %i.zf, splat (double 5.000000e-01) ; 3 uses
  %i.zh = extractelement <2 x double> %i.zg, i64 0
  %i.zi = extractelement <2 x double> %i.zg, i64 1
  %i.zj = call double @hypot(double noundef %i.zh, double noundef %i.zi) #15
  %i.zk = insertelement <2 x double> poison, double %i.zj, i64 0
  %i.zl = shufflevector <2 x double> %i.zk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zm = fdiv <2 x double> %i.zg, %i.zl          ; 5 uses
  %i.zn = extractelement <2 x double> %i.zm, i64 0
  %i.zo = fsub double %.1233, %i.zn
  %i.zp = call double @llvm.fabs.f64(double %i.zo)
  %foldExtExtBinop654 = fsub <2 x double> %i.yg, %i.zm
  %i.zq = extractelement <2 x double> %foldExtExtBinop654, i64 1
  %i.zr = fadd double %i.zq, %i.zp
  %i.zs = fcmp olt double %i.zr, %i.qy
  br i1 %i.zs, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.thread506
  %i.zt = insertelement <2 x double> %i.yh, double %.1227, i64 0
  %i.zu = fsub <2 x double> %i.zm, %i.zt          ; 2 uses
  %i.zv = extractelement <2 x double> %i.zu, i64 0
  %i.zw = call double @llvm.fabs.f64(double %i.zv)
  %i.zx = extractelement <2 x double> %i.zu, i64 1
  %i.zy = fadd double %i.zx, %i.zw
  %i.zz = fcmp olt double %i.zy, %i.qy
  %i.aaa = zext i1 %i.zz to i32
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb, %.thread506
  %.4.ph = phi i32 [ %i.ze, %bb.ca ], [ 0, %bb.cb ], [ 0, %.thread506 ]
  %.1219.ph = phi i32 [ 0, %bb.ca ], [ %i.aaa, %bb.cb ], [ 1, %.thread506 ]
end_hunk_0
