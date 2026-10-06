Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/geodsigntest?download=true
inline.NumInlined: 458
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumUnrolled: 76
begin_hunk_0_@geod_geninverse_int:bb.a
  %i.kp = insertelement <2 x double> %i.ko, double %i.hg, i64 1
  %i.kq = insertelement <2 x double> poison, double %i.km, i64 0
  %i.kr = insertelement <2 x double> %i.kq, double %i.kn, i64 1
  %i.ks = fdiv <2 x double> %i.kp, %i.kr
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.kt = fneg double %i.gz
  %i.ku = call double @llvm.fmuladd.f64(double %.0476, double %i.dg, double %i.kt)
  %i.kv = call double @atan2(double noundef %i.hg, double noundef %i.ku) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.kw = fadd double %i.jg, %i.kv
  %i.kx = fneg double %i.dg
  call fastcc void @Lengths(ptr noundef nonnull readonly %0, double noundef %i.jb, double noundef %i.kw, double noundef %i.dd, double noundef %i.kx, double noundef %i.et, double noundef %.0477, double noundef %.0476, double noundef %i.ev, double noundef %i.dg, double noundef %.0476, ptr noundef null, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.r)
  %i.ky = load double, ptr %i.b, align 8, !tbaa !10
  %i.kz = load double, ptr %i.c, align 8, !tbaa !10
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.lm = insertelement <2 x double> poison, double %i.lg, i64 0
  %i.ln = insertelement <2 x double> %i.lm, double %i.ll, i64 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0153.i = phi double [ %i.km, %bb.aq ], [ %i.lk, %bb.ar ]
  %i.lo = phi <2 x double> [ %i.ks, %bb.aq ], [ %i.ln, %bb.ar ] ; 4 uses
  %i.lp = extractelement <2 x double> %i.lo, i64 0 ; 5 uses
  %i.lq = load double, ptr @tol1, align 8, !tbaa !10
  %i.lr = fneg double %i.lq                       ; 2 uses
  %i.ls = extractelement <2 x double> %i.lo, i64 1 ; 2 uses
  %i.lt = fcmp ogt double %i.ls, %i.lr
  br i1 %i.lt, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.lu = load double, ptr @xthresh, align 8, !tbaa !10
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
  %i.mb = call double @sqrt(double noundef %i.ma) #17
  %i.mc = fneg double %i.mb
  br label %bb.bf

bb.aw:                                            ; preds = %bb.au
  %i.md = fcmp nsz ogt double %i.lp, %i.lr
  %i.me = select nsz i1 %i.md, double 0.000000e+00, double -1.000000e+00
  %i.mf = call nsz double @llvm.maxnum.f64(double %i.me, double %i.lp) ; 3 uses
  %i.mg = fmul double %i.mf, %i.mf
  %i.mh = fsub double 1.000000e+00, %i.mg
  %i.mi = call double @sqrt(double noundef %i.mh) #17
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
  %i.na = call double @sqrt(double noundef %i.mw) #17 ; 2 uses
  %i.nb = fneg double %i.na
  %i.nc = select i1 %i.mz, double %i.nb, double %i.na
  %i.nd = fadd double %i.my, %i.nc
  %i.ne = call double @cbrt(double noundef %i.nd) #18 ; 3 uses
  %i.nf = fcmp une double %i.ne, 0.000000e+00
  %i.ng = fdiv double %i.mt, %i.ne
  %i.nh = select i1 %i.nf, double %i.ng, double 0.000000e+00
  %i.ni = fadd double %i.ne, %i.nh
  %i.nj = fadd double %i.mo, %i.ni
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.nk = fneg double %i.mw
  %i.nl = call double @sqrt(double noundef %i.nk) #17
  %i.nm = fadd double %i.ms, %i.mu
  %i.nn = fneg double %i.nm
  %i.no = call double @atan2(double noundef %i.nl, double noundef %i.nn) #17
  %i.np = fmul double %i.mo, 2.000000e+00
  %i.nq = fdiv double %i.no, 3.000000e+00
  %i.nr = call double @cos(double noundef %i.nq) #17
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
  %i.of = call double @sqrt(double noundef %i.oe) #17
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
  %i.os = call double @sin(double noundef %i.or) #17 ; 3 uses
  %i.ot = call double @cos(double noundef %i.or) #17
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
  %i.pc = call double @hypot(double noundef %.0177.i, double noundef %.0176.i) #17
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
  %or.cond568 = or i1 %i.pl, %i.pn
  %i.po = fneg double %.1475
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !10
  %.19.i.i.i296 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.pr = load double, ptr %.19.i.i.i296, align 8, !tbaa !10
  %.19.i.119.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ps = load double, ptr %.19.i.119.i.i, align 8, !tbaa !10
  %.19.i.221.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.pt = load double, ptr %.19.i.221.i.i, align 8, !tbaa !10
  %.19.i.323.i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.pu = load double, ptr %.19.i.323.i.i, align 8, !tbaa !10
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.19.i.1.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.pw = load double, ptr %.19.i.1.1.i.i, align 8, !tbaa !10
  %.19.i.1.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.px = load double, ptr %.19.i.1.2.i.i, align 8, !tbaa !10
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.pz = load <2 x double>, ptr %i.pv, align 8, !tbaa !10 ; 2 uses
  %i.qa = load <2 x double>, ptr %i.py, align 8, !tbaa !10 ; 2 uses
  %.19.i.2.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.qb = load double, ptr %.19.i.2.1.i.i, align 8, !tbaa !10
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !10
  %.19.i.3.i.i299 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.qe = load double, ptr %.19.i.3.i.i299, align 8, !tbaa !10
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !10
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !13
  %i.qj = fneg double %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !10
  %.19.i.i114.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.qm = load double, ptr %.19.i.i114.i, align 8, !tbaa !10
  %.19.i.1.i115.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.qn = load double, ptr %.19.i.1.i115.i, align 8, !tbaa !10
  %.19.i.2.i116.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.qo = load double, ptr %.19.i.2.i116.i, align 8, !tbaa !10
  %.19.i.3.i117.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.qp = load double, ptr %.19.i.3.i117.i, align 8, !tbaa !10
  %.19.i.4.i.i300 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.qq = load double, ptr %.19.i.4.i.i300, align 8, !tbaa !10
  %i.qr = fsub double %i.dd, %.0477
  %i.qs = fadd double %i.dd, %.0477
  %i.qt = fmul double %i.qr, %i.qs
  %i.qu = fsub double %.0476, %i.dg
  %i.qv = fadd double %i.dg, %.0476
  %i.qw = fmul double %i.qu, %i.qv
  %i.qx = load double, ptr @tol0, align 8         ; 2 uses
  %.b = load i1, ptr @maxit2, align 4
  %i.qy = select i1 %.b, i32 83, i32 0
  %i.qz = select i1 %.b272, i32 20, i32 0         ; 2 uses
  %i.ra = load double, ptr @pi, align 8
  %i.rb = fmul double %i.qx, 1.600000e+01
  %i.rc = load double, ptr @tolb, align 8         ; 2 uses
  %.587 = select i1 %i.eg, double %i.qw, double %i.qt
  %i.rd = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.de, i64 0
  %i.re = insertelement <2 x double> <double poison, double -1.000000e+00>, double %i.de, i64 0
  %i.rf = insertelement <2 x double> %i.pz, double 0.000000e+00, i64 1
  %i.rg = shufflevector <2 x double> %i.pz, <2 x double> %i.qa, <2 x i32> <i32 1, i32 2>
  %i.rh = insertelement <2 x double> %i.qa, double %i.pw, i64 0
  %i.ri = insertelement <2 x double> poison, double %i.px, i64 0
  %i.rj = insertelement <2 x double> %i.ri, double %i.qb, i64 1
  %i.rk = insertelement <2 x double> poison, double %.1475, i64 1
  %i.rl = insertelement <2 x double> poison, double %i.ax, i64 1
  br label %bb.bk

InverseStart.exit:                                ; preds = %bb.bh
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !16 ; 2 uses
  %i.ro = fmul double %.0152.i, %i.rn
  %i.rp = fmul double %.0446, %i.ro
  %i.rq = fmul double %.0446, %.0446
  %i.rr = fmul double %i.rq, %i.rn
  %i.rs = fdiv double %.0152.i, %.0446            ; 2 uses
  %i.rt = call double @sin(double noundef %i.rs) #17
  %i.ru = fmul double %i.rr, %i.rt
  br i1 %i.u, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %InverseStart.exit
  %i.rv = call double @cos(double noundef %i.rs) #17 ; 2 uses
  store double %i.rv, ptr %i.n, align 8, !tbaa !10
  store double %i.rv, ptr %i.m, align 8, !tbaa !10
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %InverseStart.exit
  %i.rw = fmul double %i.cu, %.0446
  %i.rx = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ry = insertelement <2 x double> %i.rx, double %.0152.i, i64 1
  %i.rz = insertelement <2 x double> poison, double %i.rw, i64 0
  %i.sa = insertelement <2 x double> %i.rz, double %i.ad, i64 1
  %i.sb = fdiv <2 x double> %i.ry, %i.sa
  br label %bb.ce

bb.bk:                                            ; preds = %.preheader, %bb.cc
  %.0235 = phi i32 [ %i.aaj, %bb.cc ], [ 0, %.preheader ] ; 5 uses
  %.0232 = phi double [ %.1233, %bb.cc ], [ %i.de, %.preheader ] ; 5 uses
  %.0229 = phi double [ %i.yq, %bb.cc ], [ 1.000000e+00, %.preheader ]
  %.0226 = phi double [ %.1227, %bb.cc ], [ %i.de, %.preheader ] ; 4 uses
  %.0223 = phi double [ %i.yp, %bb.cc ], [ -1.000000e+00, %.preheader ]
  %.0220 = phi i32 [ %.4.ph, %bb.cc ], [ 0, %.preheader ]
  %.0218 = phi i32 [ %.1219.ph, %bb.cc ], [ 0, %.preheader ]
  %i.sc = phi <2 x double> [ %i.aai, %bb.cc ], [ %i.pi, %.preheader ] ; 8 uses
  %i.sd = phi <2 x double> [ %i.yn, %bb.cc ], [ %i.rd, %.preheader ] ; 4 uses
  %i.se = phi <2 x double> [ %i.yo, %bb.cc ], [ %i.re, %.preheader ] ; 3 uses
  %i.sf = extractelement <2 x double> %i.sc, i64 0 ; 11 uses
  %i.sg = icmp ult i32 %.0235, 20
  %i.sh = select i1 %.b272, i1 %i.sg, i1 false    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.si = extractelement <2 x double> %i.sc, i64 1 ; 6 uses
  %i.sj = fcmp oeq double %i.si, 0.000000e+00
  %or.cond.i294 = and i1 %i.gf, %i.sj
  %.0.i295 = select i1 %or.cond.i294, double %i.pk, double %i.si ; 3 uses
  %i.sk = fmul double %i.dg, %i.sf                ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %i.dc, %i.sc
  %i.sl = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.sm = call double @hypot(double noundef %.0.i295, double noundef %i.sl) #17 ; 2 uses
  %i.sn = fmul double %i.dd, %i.sk                ; 2 uses
  %i.so = fmul double %i.dg, %.0.i295             ; 6 uses
  %i.sp = call double @hypot(double noundef %i.dd, double noundef %i.so) #17 ; 2 uses
  %i.sq = fdiv double %i.dd, %i.sp                ; 6 uses
  %i.sr = fdiv double %i.so, %i.sp                ; 5 uses
  br i1 %or.cond568, label %._crit_edge.i, label %bb.bl

._crit_edge.i:                                    ; preds = %bb.bk
  %i.ss = fmul double %i.so, %i.so
  %i.st = fadd double %i.ss, %.587
  %i.su = call double @sqrt(double noundef %i.st) #17
  %i.sv = fdiv double %i.su, %.0476
  br label %SinCosSeries.exit.i

bb.bl:                                            ; preds = %bb.bk
  %i.sw = call double @llvm.fabs.f64(double %.0.i295)
  br label %SinCosSeries.exit.i

SinCosSeries.exit.i:                              ; preds = %bb.bl, %._crit_edge.i
  %i.sx = phi double [ %i.sv, %._crit_edge.i ], [ %i.sw, %bb.bl ] ; 4 uses
  %i.sy = fmul double %.0476, %i.sx               ; 5 uses
  %i.sz = call double @hypot(double noundef %.0477, double noundef %i.sy) #17 ; 2 uses
  %i.ta = fdiv double %i.sy, %i.sz                ; 6 uses
  %i.tb = fmul double %.0477, %i.sk               ; 2 uses
  %i.tc = insertelement <2 x double> poison, double %i.sy, i64 0
  %i.td = insertelement <2 x double> %i.tc, double %i.ta, i64 1
  %i.te = fneg nsz <2 x double> %i.td
  %i.tf = insertelement <2 x double> poison, double %i.sn, i64 0
  %i.tg = insertelement <2 x double> %i.tf, double %i.sq, i64 1
  %i.th = fmul nsz <2 x double> %i.tg, %i.te
  %i.ti = fdiv double %.0477, %i.sz               ; 6 uses
  %i.tj = insertelement <2 x double> poison, double %i.so, i64 0
  %i.tk = insertelement <2 x double> %i.tj, double %i.sr, i64 1
  %i.tl = insertelement <2 x double> poison, double %i.tb, i64 0
  %i.tm = insertelement <2 x double> %i.tl, double %i.ti, i64 1
  %i.tn = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tk, <2 x double> %i.tm, <2 x double> %i.th)
  %i.to = fmul double %i.sn, %i.tb
  %i.tp = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.tn, <2 x double> zeroinitializer) ; 2 uses
  %i.tq = extractelement <2 x double> %i.tp, i64 1
  %i.tr = fadd double %i.tq, 0.000000e+00
  %i.ts = extractelement <2 x double> %i.tp, i64 0
  %i.tt = fadd double %i.ts, 0.000000e+00         ; 2 uses
  %i.tu = call double @llvm.fmuladd.f64(double %i.so, double %i.sy, double %i.to) ; 2 uses
  %i.tv = insertelement <2 x double> %i.rk, double %i.sq, i64 0
  %i.tw = insertelement <2 x double> poison, double %i.ti, i64 0
  %i.tx = insertelement <2 x double> %i.tw, double %i.tt, i64 1
  %i.ty = fmul <2 x double> %i.tv, %i.tx
  %i.tz = insertelement <2 x double> poison, double %i.sr, i64 0 ; 2 uses
  %i.ua = insertelement <2 x double> %i.tz, double %i.tu, i64 1
  %i.ub = insertelement <2 x double> %i.rl, double %i.ta, i64 0
  %i.uc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ua, <2 x double> %i.ub, <2 x double> %i.ty) ; 2 uses
  %i.ud = extractelement <2 x double> %i.uc, i64 0
  %i.ue = call double @atan2(double noundef %i.tr, double noundef %i.ud) #17 ; 4 uses
  %i.uf = fmul double %i.tu, %i.po
  %i.ug = call double @llvm.fmuladd.f64(double %i.tt, double %i.ax, double %i.uf)
  %i.uh = extractelement <2 x double> %i.uc, i64 1
  %i.ui = call double @atan2(double noundef %i.ug, double noundef %i.uh) #17
  %i.uj = fmul double %i.sm, %i.sm
  %i.uk = fmul double %i.uj, %i.em                ; 3 uses
  %i.ul = fadd double %i.uk, 1.000000e+00
  %i.um = call double @sqrt(double noundef %i.ul) #17
  %i.un = fadd double %i.um, 1.000000e+00
  %i.uo = call double @llvm.fmuladd.f64(double %i.un, double 2.000000e+00, double %i.uk)
  %i.up = fdiv double %i.uk, %i.uo                ; 20 uses
  %i.uq = call double @llvm.fmuladd.f64(double %i.pq, double %i.up, double %i.pr)
  %i.ur = call double @llvm.fmuladd.f64(double %i.uq, double %i.up, double %i.ps)
  %i.us = call double @llvm.fmuladd.f64(double %i.ur, double %i.up, double %i.pt)
  %i.ut = call double @llvm.fmuladd.f64(double %i.us, double %i.up, double %i.pu)
  %i.uu = fmul double %i.up, %i.ut                ; 2 uses
  %i.uv = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.up, i64 0 ; 2 uses
  %i.uw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rf, <2 x double> %i.uv, <2 x double> %i.rg)
  %i.ux = shufflevector <2 x double> %i.uv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uw, <2 x double> %i.ux, <2 x double> %i.rh)
  %i.uz = insertelement <2 x double> poison, double %i.up, i64 0
  %i.va = shufflevector <2 x double> %i.uz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uy, <2 x double> %i.va, <2 x double> %i.rj) ; 2 uses
  %i.vc = extractelement <2 x double> %i.vb, i64 1
  %i.vd = call double @llvm.fmuladd.f64(double %i.qd, double %i.up, double %i.qe)
  %i.ve = fmul double %i.up, %i.up                ; 2 uses
  %i.vf = fmul double %i.up, %i.ve                ; 2 uses
  %i.vg = fmul double %i.vf, %i.vc                ; 2 uses
  %i.vh = fmul double %i.up, %i.vf                ; 2 uses
  %i.vi = fmul double %i.vh, %i.vd                ; 2 uses
end_hunk_0
begin_hunk_1_@geod_geninverse_int:bb.a
  %i.aca = phi i1 [ %i.abr, %._crit_edge ], [ true, %.thread541 ] ; 2 uses
  %i.acb = phi <2 x double> [ %i.abs, %._crit_edge ], [ %i.abo, %.thread541 ] ; 4 uses
  %i.acc = phi <2 x double> [ %i.abt, %._crit_edge ], [ %i.sc, %.thread541 ] ; 4 uses
  %i.acd = phi <2 x double> [ <double 2.000000e+00, double 0.000000e+00>, %._crit_edge ], [ %i.abk, %.thread541 ] ; 2 uses
  %i.ace = extractelement <2 x double> %i.acc, i64 1 ; 2 uses
  %i.acf = call double @hypot(double noundef %i.ace, double noundef %.pre-phi602) #17 ; 4 uses
  %i.acg = fcmp une double %i.acf, 0.000000e+00
  %i.ach = fcmp une double %.pre-phi, 0.000000e+00
  %or.cond11 = select i1 %i.acg, i1 %i.ach, i1 false
  br i1 %or.cond11, label %SinCosSeries.exit, label %bb.cg

SinCosSeries.exit:                                ; preds = %bb.cf
  %i.aci = fmul double %i.acf, %i.acf
  %i.acj = load double, ptr %i.el, align 8, !tbaa !26
  %i.ack = fmul double %i.aci, %i.acj             ; 3 uses
  %i.acl = fadd double %i.ack, 1.000000e+00
  %i.acm = call double @sqrt(double noundef %i.acl) #17
  %i.acn = fadd double %i.acm, 1.000000e+00
  %i.aco = load double, ptr %0, align 8, !tbaa !12 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.acq = load double, ptr %i.acp, align 8, !tbaa !15
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.19.i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.19.i.119.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.19.i.221.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.19.i.323.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.19.i.425.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.19.i.1.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.19.i.1.1.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.19.i.1.2.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.19.i.1.3.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.19.i.3.1.i = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.19.i.4.i = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.acx = fmul double %i.aco, %i.aco
  %i.acy = fmul double %i.acf, %i.acx
  %i.acz = fmul double %.pre-phi, %i.acy
  %i.ada = fmul double %i.acq, %i.acz
  %i.adb = insertelement <2 x double> poison, double %.0476, i64 0
  %i.adc = insertelement <2 x double> %i.adb, double %i.dg, i64 1
  %i.add = shufflevector <2 x double> %i.acb, <2 x double> %i.acc, <2 x i32> <i32 1, i32 3>
  %i.ade = fmul <2 x double> %i.adc, %i.add       ; 3 uses
  %i.adf = call double @llvm.fmuladd.f64(double %i.acn, double 2.000000e+00, double %i.ack)
  %i.adg = fdiv double %i.ack, %i.adf             ; 17 uses
  %i.adh = extractelement <2 x double> %i.ade, i64 1
  %i.adi = call double @hypot(double noundef %i.dd, double noundef %i.adh) #17
  %i.adj = extractelement <2 x double> %i.ade, i64 0
  %i.adk = call double @hypot(double noundef %.0477, double noundef %i.adj) #17
  %i.adl = load double, ptr %i.acr, align 8, !tbaa !10
  %i.adm = load double, ptr %.19.i.i, align 8, !tbaa !10
  %i.adn = call double @llvm.fmuladd.f64(double %i.adl, double %i.adg, double %i.adm)
  %i.ado = load double, ptr %.19.i.119.i, align 8, !tbaa !10
  %i.adp = call double @llvm.fmuladd.f64(double %i.adn, double %i.adg, double %i.ado)
  %i.adq = load double, ptr %.19.i.221.i, align 8, !tbaa !10
  %i.adr = call double @llvm.fmuladd.f64(double %i.adp, double %i.adg, double %i.adq)
  %i.ads = load double, ptr %.19.i.323.i, align 8, !tbaa !10
  %i.adt = call double @llvm.fmuladd.f64(double %i.adr, double %i.adg, double %i.ads)
  %i.adu = load double, ptr %.19.i.425.i, align 8, !tbaa !10
  %i.adv = call double @llvm.fmuladd.f64(double %i.adt, double %i.adg, double %i.adu)
  %i.adw = load double, ptr %i.acs, align 8, !tbaa !10
  %i.adx = load double, ptr %.19.i.1.i, align 8, !tbaa !10
  %i.ady = call double @llvm.fmuladd.f64(double %i.adw, double %i.adg, double %i.adx)
  %i.adz = load double, ptr %.19.i.1.1.i, align 8, !tbaa !10
  %i.aea = call double @llvm.fmuladd.f64(double %i.ady, double %i.adg, double %i.adz)
  %i.aeb = load double, ptr %.19.i.1.2.i, align 8, !tbaa !10
  %i.aec = call double @llvm.fmuladd.f64(double %i.aea, double %i.adg, double %i.aeb)
  %i.aed = load double, ptr %.19.i.1.3.i, align 8, !tbaa !10
  %i.aee = call double @llvm.fmuladd.f64(double %i.aec, double %i.adg, double %i.aed)
  %i.aef = fmul double %i.adg, %i.aee
  %i.aeg = fmul double %i.adg, %i.adg             ; 2 uses
  %i.aeh = fmul double %i.adg, %i.aeg             ; 2 uses
  %i.aei = load double, ptr %.19.i.3.1.i, align 8, !tbaa !10
  %i.aej = load <4 x double>, ptr %i.act, align 8, !tbaa !10 ; 4 uses
  %i.aek = load <2 x double>, ptr %i.acu, align 8, !tbaa !10
  %i.ael = shufflevector <4 x double> %i.aej, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.aem = insertelement <2 x double> %i.ael, double -0.000000e+00, i64 1
  %i.aen = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.adg, i64 0 ; 2 uses
  %i.aeo = shufflevector <2 x double> %i.aek, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aep = shufflevector <4 x double> %i.aej, <4 x double> %i.aeo, <2 x i32> <i32 1, i32 4>
  %i.aeq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aem, <2 x double> %i.aen, <2 x double> %i.aep)
  %i.aer = shufflevector <2 x double> %i.aen, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aes = shufflevector <4 x double> %i.aej, <4 x double> %i.aeo, <2 x i32> <i32 2, i32 5>
  %i.aet = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeq, <2 x double> %i.aer, <2 x double> %i.aes)
  %i.aeu = shufflevector <4 x double> %i.aej, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.aev = insertelement <2 x double> %i.aeu, double %i.aei, i64 1
  %i.aew = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aet, <2 x double> %i.aer, <2 x double> %i.aev)
  %i.aex = insertelement <2 x double> poison, double %i.aeg, i64 0
  %i.aey = insertelement <2 x double> %i.aex, double %i.aeh, i64 1
  %i.aez = fmul <2 x double> %i.aey, %i.aew       ; 2 uses
  %i.afa = fmul double %i.adg, %i.aeh             ; 2 uses
  %i.afb = load double, ptr %i.acv, align 8, !tbaa !10
  %i.afc = load double, ptr %.19.i.4.i, align 8, !tbaa !10
  %i.afd = call double @llvm.fmuladd.f64(double %i.afb, double %i.adg, double %i.afc)
  %i.afe = fmul double %i.afa, %i.afd
  %i.aff = load double, ptr %i.acw, align 8, !tbaa !10
  %i.afg = fmul double %i.adg, %i.afa
  %i.afh = fmul double %i.afg, %i.aff
  %i.afi = insertelement <2 x double> poison, double %.0477, i64 0
  %i.afj = shufflevector <2 x double> %i.afi, <2 x double> %i.dc, <2 x i32> <i32 0, i32 2>
  %i.afk = insertelement <2 x double> poison, double %i.adk, i64 0
  %i.afl = insertelement <2 x double> %i.afk, double %i.adi, i64 1 ; 2 uses
  %i.afm = fdiv <2 x double> %i.afj, %i.afl       ; 2 uses
  %i.afn = fdiv <2 x double> %i.ade, %i.afl       ; 3 uses
  %i.afo = fsub <2 x double> %i.afn, %i.afm
  %i.afp = fmul <2 x double> %i.afo, splat (double 2.000000e+00)
  %i.afq = fadd <2 x double> %i.afm, %i.afn
  %i.afr = fmul <2 x double> %i.afq, %i.afp       ; 6 uses
  %i.afs = fmul <2 x double> %i.afr, zeroinitializer
  %i.aft = insertelement <2 x double> poison, double %i.afh, i64 0
  %i.afu = shufflevector <2 x double> %i.aft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afv = fadd <2 x double> %i.afs, %i.afu       ; 2 uses
  %i.afw = fmul <2 x double> %i.afr, %i.afv
  %i.afx = insertelement <2 x double> poison, double %i.afe, i64 0
  %i.afy = shufflevector <2 x double> %i.afx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afz = fadd <2 x double> %i.afy, %i.afw       ; 2 uses
  %i.aga = fneg <2 x double> %i.afv
  %i.agb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afr, <2 x double> %i.afz, <2 x double> %i.aga)
  %i.agc = shufflevector <2 x double> %i.aez, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.agd = fadd <2 x double> %i.agb, %i.agc       ; 2 uses
  %i.age = fneg <2 x double> %i.afz
  %i.agf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afr, <2 x double> %i.agd, <2 x double> %i.age)
  %i.agg = shufflevector <2 x double> %i.aez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agh = fadd <2 x double> %i.agg, %i.agf       ; 2 uses
  %i.agi = fneg <2 x double> %i.agd
  %i.agj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afr, <2 x double> %i.agh, <2 x double> %i.agi)
  %i.agk = insertelement <2 x double> poison, double %i.aef, i64 0
  %i.agl = shufflevector <2 x double> %i.agk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agm = fadd <2 x double> %i.agj, %i.agl       ; 2 uses
  %i.agn = fneg <2 x double> %i.agh
  %i.ago = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afr, <2 x double> %i.agm, <2 x double> %i.agn)
  %i.agp = insertelement <2 x double> poison, double %i.adv, i64 0
  %i.agq = shufflevector <2 x double> %i.agp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agr = fadd <2 x double> %i.agq, %i.ago
  %i.ags = fsub <2 x double> %i.agr, %i.agm
  %i.agt = fmul <2 x double> %i.afn, %i.ags       ; 2 uses
  %shift = shufflevector <2 x double> %i.agt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop655 = fsub <2 x double> %i.agt, %shift
  %i.agu = extractelement <2 x double> %foldExtExtBinop655, i64 0
  %i.agv = fmul double %i.ada, %i.agu
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %SinCosSeries.exit
  %.0213 = phi double [ %i.agv, %SinCosSeries.exit ], [ 0.000000e+00, %bb.cf ]
  %i.agw = extractelement <2 x double> %i.acd, i64 0 ; 2 uses
  %i.agx = fcmp oeq double %i.agw, 2.000000e+00
  %or.cond13 = select i1 %i.aca, i1 %i.agx, i1 false
  %i.agy = extractelement <2 x double> %i.acd, i64 1
  br i1 %or.cond13, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.agz = call double @sin(double noundef %.1245557) #17
  %i.aha = call double @cos(double noundef %.1245557) #17
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.3243 = phi double [ %i.agz, %bb.ch ], [ %i.agw, %bb.cg ]
  %.3239 = phi double [ %i.aha, %bb.ch ], [ %i.agy, %bb.cg ] ; 2 uses
  %i.ahb = fcmp ogt double %.3239, -7.071000e-01
  %or.cond15 = select i1 %i.aca, i1 %i.ahb, i1 false
  %i.ahc = fsub double %.0477, %i.dd
  %i.ahd = fcmp olt double %i.ahc, 1.750000e+00
  %or.cond570 = select i1 %or.cond15, i1 %i.ahd, i1 false
  br i1 %or.cond570, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ahe = fadd nnan double %.3239, 1.000000e+00
  %i.ahf = fadd double %i.dg, 1.000000e+00
  %i.ahg = fadd double %.0476, 1.000000e+00
  %i.ahh = insertelement <2 x double> poison, double %i.ahf, i64 0
  %i.ahi = shufflevector <2 x double> %i.ahh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahj = insertelement <2 x double> poison, double %i.ahg, i64 0
  %i.ahk = insertelement <2 x double> %i.ahj, double %.0477, i64 1 ; 2 uses
  %i.ahl = fmul <2 x double> %i.ahi, %i.ahk
  %i.ahm = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahn = shufflevector <2 x double> %i.ahk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahm, <2 x double> %i.ahn, <2 x double> %i.ahl) ; 2 uses
  %i.ahp = extractelement <2 x double> %i.aho, i64 1
  %i.ahq = fmul double %i.ahp, %.3243
  %i.ahr = extractelement <2 x double> %i.aho, i64 0
  %i.ahs = fmul double %i.ahr, %i.ahe
  %i.aht = call double @atan2(double noundef %i.ahq, double noundef %i.ahs) #17
  %i.ahu = fmul double %i.aht, 2.000000e+00
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.ahv = fneg double %.6553
  %i.ahw = insertelement <2 x double> poison, double %.6553, i64 0
  %i.ahx = insertelement <2 x double> %i.ahw, double %i.ahv, i64 1
  %i.ahy = fmul <2 x double> %i.acb, %i.ahx
  %i.ahz = shufflevector <2 x double> %i.ahy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aia = shufflevector <2 x double> %i.acc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aib = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acb, <2 x double> %i.aia, <2 x double> %i.ahz) ; 2 uses
  %i.aic = extractelement <2 x double> %i.aib, i64 0 ; 2 uses
  %i.aid = fcmp oeq double %i.aic, 0.000000e+00
  %i.aie = extractelement <2 x double> %i.aib, i64 1 ; 2 uses
  %i.aif = fcmp olt double %i.aie, 0.000000e+00
  %or.cond17 = and i1 %i.aid, %i.aif              ; 2 uses
  %i.aig = load double, ptr @tiny, align 8
  %i.aih = fmul double %i.ace, %i.aig
  %.0210 = select i1 %or.cond17, double %i.aih, double %i.aic
  %.0 = select i1 %or.cond17, double -1.000000e+00, double %i.aie
  %i.aii = call double @atan2(double noundef %.0210, double noundef %.0) #17
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.0215 = phi double [ %i.ahu, %bb.cj ], [ %i.aii, %bb.ck ]
  %i.aij = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aik = load double, ptr %i.aij, align 8, !tbaa !17
  %i.ail = call double @llvm.fmuladd.f64(double %i.aik, double %.0215, double %.0213)
  %i.aim = mul nsw i32 %i.cc, %i.y
  %i.ain = sitofp i32 %i.aim to double
  %i.aio = fmul double %i.ail, %i.ain
  %i.aip = fadd double %i.aio, 0.000000e+00
  br label %bb.cm

bb.cm:                                            ; preds = %.thread523, %bb.cl, %bb.ce
  %.0212540 = phi double [ %.0212561, %bb.cl ], [ %.0212, %bb.ce ], [ %.0212533, %.thread523 ]
  %.0211539 = phi double [ %.0211560, %bb.cl ], [ %.0211, %bb.ce ], [ %.0211532, %.thread523 ]
  %.3251538 = phi double [ %.3251556, %bb.cl ], [ %i.aby, %bb.ce ], [ %i.aau, %.thread523 ]
  %.6535 = phi double [ %.6553, %bb.cl ], [ %i.abv, %bb.ce ], [ %i.sf, %.thread523 ] ; 2 uses
  %.1 = phi double [ %i.aip, %bb.cl ], [ 0.000000e+00, %bb.ce ], [ 0.000000e+00, %.thread523 ]
  %i.aiq = phi <2 x double> [ %i.acb, %bb.cl ], [ %i.abs, %bb.ce ], [ %i.aay, %.thread523 ] ; 4 uses
  %i.air = phi <2 x double> [ %i.acc, %bb.cl ], [ %i.abt, %bb.ce ], [ %i.sc, %.thread523 ] ; 2 uses
  %i.ais = extractelement <2 x double> %i.aiq, i64 0
  %i.ait = extractelement <2 x double> %i.aiq, i64 1
  br i1 %i.bz, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.aiu = extractelement <2 x double> %i.air, i64 1 ; 2 uses
  br i1 %i.u, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.aiv = load double, ptr %i.m, align 8, !tbaa !10
  %i.aiw = load double, ptr %i.n, align 8, !tbaa !10
  store double %i.aiw, ptr %i.m, align 8, !tbaa !10
  store double %i.aiv, ptr %i.n, align 8, !tbaa !10
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.co, %bb.cm
  %.3455 = phi double [ %i.aiu, %bb.co ], [ %i.aiu, %bb.cn ], [ %i.ait, %bb.cm ]
  %.3450 = phi double [ %.6535, %bb.co ], [ %.6535, %bb.cn ], [ %i.ais, %bb.cm ]
  %i.aix = phi <2 x double> [ %i.aiq, %bb.co ], [ %i.aiq, %bb.cn ], [ %i.air, %bb.cm ] ; 2 uses
  %i.aiy = extractelement <2 x double> %i.aix, i64 0
  %i.aiz = fmul double %i.aiy, %i.z
  %i.aja = sub nsw i32 0, %i.cc
  %i.ajb = select i1 %i.bz, i32 %i.aja, i32 %i.cc
  %i.ajc = sitofp i32 %i.ajb to double            ; 2 uses
  %i.ajd = extractelement <2 x double> %i.aix, i64 1
  %i.aje = fmul double %i.ajd, %i.ajc
  %i.ajf = fmul double %.3455, %i.ajc
  store double %i.aiz, ptr %6, align 8, !tbaa !10
  store double %i.aje, ptr %7, align 8, !tbaa !10
  %.not282 = icmp eq ptr %8, null
  br i1 %.not282, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ajg = fmul double %.3450, %i.z
  store double %i.ajg, ptr %8, align 8, !tbaa !10
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.not283 = icmp eq ptr %9, null
  br i1 %.not283, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store double %i.ajf, ptr %9, align 8, !tbaa !10
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  br i1 %.not, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store double %.0211539, ptr %5, align 8, !tbaa !10
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  br i1 %.not273, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store double %.0212540, ptr %10, align 8, !tbaa !10
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  br i1 %i.u, label %bb.cy, label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.s, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ajh = load double, ptr %i.m, align 8, !tbaa !10
  store double %i.ajh, ptr %11, align 8, !tbaa !10
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  br i1 %i.t, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.aji = load double, ptr %i.n, align 8, !tbaa !10
  store double %i.aji, ptr %12, align 8, !tbaa !10
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db, %bb.cx
  br i1 %.not274, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store double %.1, ptr %13, align 8, !tbaa !10
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #17
  ret double %.3251538
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @geod_inverseline(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = call fastcc double @geod_geninverse_int(ptr noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, ptr noundef null, ptr noundef %i.a, ptr noundef %i.b, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  %i.d = load double, ptr %i.a, align 8, !tbaa !10 ; 4 uses
  %i.e = load double, ptr %i.b, align 8, !tbaa !10 ; 4 uses
  %i.f = tail call double @llvm.fabs.f64(double %i.d)
  %i.g = tail call double @llvm.fabs.f64(double %i.e)
  %i.h = fcmp ogt double %i.f, %i.g               ; 3 uses
  %.013.i = select i1 %i.h, double %i.e, double %i.d ; 2 uses
  %.011.i = select i1 %i.h, double %i.d, double %i.e ; 2 uses
  %.05.i = select i1 %i.h, i32 2, i32 0
  %i.i = bitcast double %.011.i to i64
  %.112.i = tail call double @llvm.fabs.f64(double %.011.i)
  %.lobit.i = lshr i64 %i.i, 63
  %i.j = trunc nuw nsw i64 %.lobit.i to i32
  %.1.i = or disjoint i32 %.05.i, %i.j
  %i.k = tail call double @atan2(double noundef %.013.i, double noundef %.112.i) #17
  %i.l = load double, ptr @degree, align 8, !tbaa !10
  %i.m = fdiv double %i.k, %i.l                   ; 4 uses
  switch i32 %.1.i, label %default.unreachable [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 0, label %atan2dx.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.n = tail call double @llvm.copysign.f64(double 1.800000e+02, double %.013.i)
  %i.o = fsub double %i.n, %i.m
  br label %atan2dx.exit

bb.c:                                             ; preds = %bb.a
  %i.p = fsub double 9.000000e+01, %i.m
  br label %atan2dx.exit

bb.d:                                             ; preds = %bb.a
  %i.q = fadd double %i.m, -9.000000e+01
  br label %atan2dx.exit

default.unreachable:                              ; preds = %bb.a
  unreachable

atan2dx.exit:                                     ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi double [ %i.m, %bb.a ], [ %i.o, %bb.b ], [ %i.p, %bb.c ], [ %i.q, %bb.d ]
  %.not = icmp eq i32 %6, 0
  %i.r = select i1 %.not, i32 2315, i32 %6        ; 3 uses
  %i.s = and i32 %i.r, 2048
  %.not16 = icmp eq i32 %i.s, 0
  %i.t = or i32 %i.r, 1025
  %spec.select = select i1 %.not16, i32 %i.r, i32 %i.t
  tail call fastcc void @geod_lineinit_int(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, double noundef %.0.i, double noundef %i.d, double noundef %i.e, i32 noundef %spec.select)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.c, ptr %i.u, align 8, !tbaa !42
  %i.v = load double, ptr @NaN, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store double %i.v, ptr %i.w, align 8, !tbaa !41
  %i.x = tail call double @geod_genposition(ptr noundef %0, i32 noundef 1, double noundef %i.c, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.w, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @geod_inverse(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call double @geod_geninverse(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @geod_polygon_init(ptr nofree noundef writeonly captures(none) initializes((0, 76)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i32
end_hunk_1
