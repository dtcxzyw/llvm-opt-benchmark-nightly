Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/geodsigntest?download=true
inline.NumInlined: 458
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumUnrolled: 76
begin_hunk_0_@geod_geninverse_int:bb.a
bb.am:                                            ; preds = %bb.al
  %i.il = fmul double %i.dg, %.0157.i             ; 2 uses
  %i.im = fadd double %.0156.i, 1.000000e+00
  %i.in = fdiv double %i.hv, %i.im
  %i.io = fsub double 1.000000e+00, %.0156.i
  %i.ip = select i1 %i.hu, double %i.in, double %i.io
  %i.iq = fneg double %.0477
  %i.ir = fmul double %i.dg, %i.iq
  %i.is = call double @llvm.fmuladd.f64(double %i.ir, double %i.ip, double %i.gy) ; 2 uses
  %i.it = call double @hypot(double noundef %i.il, double noundef %i.is) #17
  %i.iu = insertelement <2 x double> poison, double %i.il, i64 0
  %i.iv = insertelement <2 x double> %i.iu, double %i.is, i64 1
  %i.iw = insertelement <2 x double> poison, double %i.it, i64 0
  %i.ix = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iy = fdiv <2 x double> %i.iv, %i.ix
  %i.iz = call double @atan2(double noundef %i.ie, double noundef %i.ih) #17
  br label %bb.bf

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !57 ; 2 uses
  %i.jc = call double @llvm.fabs.f64(double %i.jb) ; 2 uses
  %i.jd = fcmp ogt double %i.jc, 1.000000e-01
  %i.je = fcmp oge double %i.ih, 0.000000e+00
  %or.cond3.i = or i1 %i.je, %i.jd
  br i1 %or.cond3.i, label %bb.bf, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jf = fmul double %i.jc, 6.000000e+00
  %i.jg = load double, ptr @pi, align 8, !tbaa !10 ; 5 uses
  %i.jh = fmul double %i.jf, %i.jg
  %i.ji = fmul double %i.dg, %i.dg                ; 2 uses
  %i.jj = fmul double %i.ji, %i.jh
  %i.jk = fcmp ult double %i.ie, %i.jj
  br i1 %i.jk, label %bb.ap, label %bb.bf

bb.ap:                                            ; preds = %bb.ao
  %i.jl = fneg double %.1475
  %i.jm = fneg double %i.ax
  %i.jn = call double @atan2(double noundef %i.jl, double noundef %i.jm) #17 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !13 ; 3 uses
  %i.jq = fcmp ult double %i.jp, 0.000000e+00     ; 3 uses
  br i1 %i.jq, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jr = extractelement <2 x double> %i.eo, i64 0
  %i.js = fmul double %i.jr, %i.em                ; 3 uses
  %i.jt = fadd double %i.js, 1.000000e+00
  %i.ju = call double @sqrt(double noundef %i.jt) #17
  %i.jv = fadd double %i.ju, 1.000000e+00
  %i.jw = call double @llvm.fmuladd.f64(double %i.jv, double 2.000000e+00, double %i.js)
  %i.jx = fdiv double %i.js, %i.jw                ; 5 uses
  %i.jy = fmul double %i.dg, %i.jp
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !10
  %.19.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.kb = load double, ptr %.19.i.i.i, align 8, !tbaa !10
  %i.kc = call double @llvm.fmuladd.f64(double %i.ka, double %i.jx, double %i.kb)
  %.19.i.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.kd = load double, ptr %.19.i.1.i.i, align 8, !tbaa !10
  %i.ke = call double @llvm.fmuladd.f64(double %i.kc, double %i.jx, double %i.kd)
  %.19.i.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.kf = load double, ptr %.19.i.2.i.i, align 8, !tbaa !10
  %i.kg = call double @llvm.fmuladd.f64(double %i.ke, double %i.jx, double %i.kf)
  %.19.i.3.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.kh = load double, ptr %.19.i.3.i.i, align 8, !tbaa !10
  %i.ki = call double @llvm.fmuladd.f64(double %i.kg, double %i.jx, double %i.kh)
  %.19.i.4.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.kj = load double, ptr %.19.i.4.i.i, align 8, !tbaa !10
  %i.kk = call double @llvm.fmuladd.f64(double %i.ki, double %i.jx, double %i.kj)
  %i.kl = fmul double %i.jy, %i.kk
  %i.km = fmul double %i.jg, %i.kl                ; 3 uses
  %i.kn = fmul double %i.dg, %i.km
  %i.ko = insertelement <2 x double> poison, double %i.jn, i64 0
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
  %i.nv = call double @llvm.sqrt.f64(double %i.nu) ; 3 uses
  %i.nw = fcmp olt double %.051.i.i, 0.000000e+00
  %i.nx = fsub double %i.nv, %.051.i.i
  %i.ny = fdiv double %i.mk, %i.nx
  %i.nz = fadd double %.051.i.i, %i.nv
  %i.oa = select i1 %i.nw, double %i.ny, double %i.nz ; 3 uses
  %i.ob = fsub double %i.oa, %i.mk
  %i.oc = fmul double %i.nv, 2.000000e+00
  %i.od = fdiv double %i.ob, %i.oc                ; 3 uses
  %i.oe = fmul double %i.od, %i.od
  %i.of = fadd double %i.oa, %i.oe
  %i.og = call double @sqrt(double noundef %i.of) #17
  %i.oh = fadd double %i.og, %i.od
  %i.oi = fdiv double %i.oa, %i.oh
  br label %Astroid.exit.i

Astroid.exit.i:                                   ; preds = %bb.bb, %bb.ax
  %.0.i.i = phi double [ %i.oi, %bb.bb ], [ 0.000000e+00, %bb.ax ] ; 4 uses
  br i1 %i.jq, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %Astroid.exit.i
  %i.oj = fneg double %i.lp
  %i.ok = fmul double %.0.i.i, %i.oj
  %i.ol = fadd double %.0.i.i, 1.000000e+00
  %i.om = fdiv double %i.ok, %i.ol
  br label %bb.be

bb.bd:                                            ; preds = %Astroid.exit.i
  %i.on = fneg double %i.ls
  %i.oo = fadd double %.0.i.i, 1.000000e+00
  %i.op = fmul double %i.oo, %i.on
  %i.oq = fdiv double %i.op, %.0.i.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.or = phi double [ %i.om, %bb.bc ], [ %i.oq, %bb.bd ]
  %i.os = fmul double %.0153.i, %i.or             ; 2 uses
  %i.ot = call double @sin(double noundef %i.os) #17 ; 3 uses
  %i.ou = call double @cos(double noundef %i.os) #17
  %i.ov = fmul double %.0476, %i.ot
  %i.ow = fmul double %i.ot, %i.ot
  %i.ox = fmul double %i.gw, %i.ow
  %i.oy = fadd double %i.ou, 1.000000e+00
  %i.oz = fdiv double %i.ox, %i.oy
  %i.pa = fsub double %i.hg, %i.oz
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.aw, %bb.av, %bb.ao, %bb.an, %bb.am
  %.0177.i = phi double [ %i.ht, %bb.am ], [ %i.ht, %bb.an ], [ %i.mi, %bb.aw ], [ %i.ly, %bb.av ], [ %i.ov, %bb.be ], [ %i.ht, %bb.ao ] ; 3 uses
  %.0176.i = phi double [ %i.id, %bb.am ], [ %i.id, %bb.an ], [ %i.mf, %bb.aw ], [ %i.mc, %bb.av ], [ %i.pa, %bb.be ], [ %i.id, %bb.ao ] ; 2 uses
  %.0152.i = phi double [ %i.iz, %bb.am ], [ -1.000000e+00, %bb.an ], [ -1.000000e+00, %bb.aw ], [ -1.000000e+00, %bb.av ], [ -1.000000e+00, %bb.be ], [ -1.000000e+00, %bb.ao ] ; 4 uses
  %i.pb = phi <2 x double> [ %i.iy, %bb.am ], [ zeroinitializer, %bb.an ], [ zeroinitializer, %bb.aw ], [ zeroinitializer, %bb.av ], [ zeroinitializer, %bb.be ], [ zeroinitializer, %bb.ao ]
  %i.pc = fcmp ugt double %.0177.i, 0.000000e+00
  br i1 %i.pc, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.pd = call double @hypot(double noundef %.0177.i, double noundef %.0176.i) #17
  %i.pe = insertelement <2 x double> poison, double %i.pd, i64 0
  %i.pf = shufflevector <2 x double> %i.pe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pg = insertelement <2 x double> poison, double %.0177.i, i64 0
  %i.ph = insertelement <2 x double> %i.pg, double %.0176.i, i64 1
  %i.pi = fdiv <2 x double> %i.ph, %i.pf
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.pj = phi <2 x double> [ %i.pi, %bb.bg ], [ <double 1.000000e+00, double 0.000000e+00>, %bb.bf ] ; 2 uses
  %i.pk = fcmp ult double %.0152.i, 0.000000e+00
  br i1 %i.pk, label %.preheader, label %InverseStart.exit

.preheader:                                       ; preds = %bb.bh
  %.b272 = load i1, ptr @maxit1, align 4          ; 2 uses
  %i.pl = fneg double %i.de
  %i.pm = fcmp une double %.0476, %i.dg           ; 2 uses
  %i.pn = call double @llvm.fabs.f64(double %.0477)
  %i.po = fcmp une double %i.pn, %i.ef
  %or.cond568 = or i1 %i.pm, %i.po
  %i.pp = fneg double %.1475
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !10
  %.19.i.i.i296 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ps = load double, ptr %.19.i.i.i296, align 8, !tbaa !10
  %.19.i.119.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.pt = load double, ptr %.19.i.119.i.i, align 8, !tbaa !10
  %.19.i.221.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.pu = load double, ptr %.19.i.221.i.i, align 8, !tbaa !10
  %.19.i.323.i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.pv = load double, ptr %.19.i.323.i.i, align 8, !tbaa !10
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.19.i.1.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.px = load double, ptr %.19.i.1.1.i.i, align 8, !tbaa !10
  %.19.i.1.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.py = load double, ptr %.19.i.1.2.i.i, align 8, !tbaa !10
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.qa = load <2 x double>, ptr %i.pw, align 8, !tbaa !10 ; 2 uses
  %i.qb = load <2 x double>, ptr %i.pz, align 8, !tbaa !10 ; 2 uses
  %.19.i.2.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.qc = load double, ptr %.19.i.2.1.i.i, align 8, !tbaa !10
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !10
  %.19.i.3.i.i299 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.qf = load double, ptr %.19.i.3.i.i299, align 8, !tbaa !10
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !10
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !13
  %i.qk = fneg double %i.qj
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !10
  %.19.i.i114.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.qn = load double, ptr %.19.i.i114.i, align 8, !tbaa !10
  %.19.i.1.i115.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.qo = load double, ptr %.19.i.1.i115.i, align 8, !tbaa !10
  %.19.i.2.i116.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.qp = load double, ptr %.19.i.2.i116.i, align 8, !tbaa !10
  %.19.i.3.i117.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.qq = load double, ptr %.19.i.3.i117.i, align 8, !tbaa !10
  %.19.i.4.i.i300 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.qr = load double, ptr %.19.i.4.i.i300, align 8, !tbaa !10
  %i.qs = fsub double %i.dd, %.0477
  %i.qt = fadd double %i.dd, %.0477
  %i.qu = fmul double %i.qs, %i.qt
  %i.qv = fsub double %.0476, %i.dg
  %i.qw = fadd double %i.dg, %.0476
  %i.qx = fmul double %i.qv, %i.qw
  %i.qy = load double, ptr @tol0, align 8         ; 2 uses
  %.b = load i1, ptr @maxit2, align 4
  %i.qz = select i1 %.b, i32 83, i32 0
  %i.ra = select i1 %.b272, i32 20, i32 0         ; 2 uses
  %i.rb = load double, ptr @pi, align 8
  %i.rc = fmul double %i.qy, 1.600000e+01
  %i.rd = load double, ptr @tolb, align 8         ; 2 uses
  %.587 = select i1 %i.eg, double %i.qx, double %i.qu
  %i.re = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.de, i64 0
  %i.rf = insertelement <2 x double> <double poison, double -1.000000e+00>, double %i.de, i64 0
  %i.rg = insertelement <2 x double> %i.qa, double 0.000000e+00, i64 1
  %i.rh = shufflevector <2 x double> %i.qa, <2 x double> %i.qb, <2 x i32> <i32 1, i32 2>
  %i.ri = insertelement <2 x double> %i.qb, double %i.px, i64 0
  %i.rj = insertelement <2 x double> poison, double %i.py, i64 0
  %i.rk = insertelement <2 x double> %i.rj, double %i.qc, i64 1
  %i.rl = insertelement <2 x double> poison, double %.1475, i64 1
  %i.rm = insertelement <2 x double> poison, double %i.ax, i64 1
  br label %bb.bk

InverseStart.exit:                                ; preds = %bb.bh
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !16 ; 2 uses
  %i.rp = fmul double %.0152.i, %i.ro
  %i.rq = fmul double %.0446, %i.rp
  %i.rr = fmul double %.0446, %.0446
  %i.rs = fmul double %i.rr, %i.ro
  %i.rt = fdiv double %.0152.i, %.0446            ; 2 uses
  %i.ru = call double @sin(double noundef %i.rt) #17
  %i.rv = fmul double %i.rs, %i.ru
  br i1 %i.u, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %InverseStart.exit
  %i.rw = call double @cos(double noundef %i.rt) #17 ; 2 uses
  store double %i.rw, ptr %i.n, align 8, !tbaa !10
  store double %i.rw, ptr %i.m, align 8, !tbaa !10
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %InverseStart.exit
  %i.rx = fmul double %i.cu, %.0446
  %i.ry = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.rz = insertelement <2 x double> %i.ry, double %.0152.i, i64 1
  %i.sa = insertelement <2 x double> poison, double %i.rx, i64 0
  %i.sb = insertelement <2 x double> %i.sa, double %i.ad, i64 1
  %i.sc = fdiv <2 x double> %i.rz, %i.sb
  br label %bb.ce

bb.bk:                                            ; preds = %.preheader, %bb.cc
  %.0235 = phi i32 [ %i.aak, %bb.cc ], [ 0, %.preheader ] ; 5 uses
  %.0232 = phi double [ %.1233, %bb.cc ], [ %i.de, %.preheader ] ; 5 uses
  %.0229 = phi double [ %i.yr, %bb.cc ], [ 1.000000e+00, %.preheader ]
  %.0226 = phi double [ %.1227, %bb.cc ], [ %i.de, %.preheader ] ; 4 uses
  %.0223 = phi double [ %i.yq, %bb.cc ], [ -1.000000e+00, %.preheader ]
  %.0220 = phi i32 [ %.4.ph, %bb.cc ], [ 0, %.preheader ]
  %.0218 = phi i32 [ %.1219.ph, %bb.cc ], [ 0, %.preheader ]
  %i.sd = phi <2 x double> [ %i.aaj, %bb.cc ], [ %i.pj, %.preheader ] ; 8 uses
  %i.se = phi <2 x double> [ %i.yo, %bb.cc ], [ %i.re, %.preheader ] ; 4 uses
  %i.sf = phi <2 x double> [ %i.yp, %bb.cc ], [ %i.rf, %.preheader ] ; 3 uses
  %i.sg = extractelement <2 x double> %i.sd, i64 0 ; 11 uses
  %i.sh = icmp ult i32 %.0235, 20
  %i.si = select i1 %.b272, i1 %i.sh, i1 false    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.sj = extractelement <2 x double> %i.sd, i64 1 ; 6 uses
  %i.sk = fcmp oeq double %i.sj, 0.000000e+00
  %or.cond.i294 = and i1 %i.gf, %i.sk
  %.0.i295 = select i1 %or.cond.i294, double %i.pl, double %i.sj ; 3 uses
  %i.sl = fmul double %i.dg, %i.sg                ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %i.dc, %i.sd
  %i.sm = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.sn = call double @hypot(double noundef %.0.i295, double noundef %i.sm) #17 ; 2 uses
  %i.so = fmul double %i.dd, %i.sl                ; 2 uses
  %i.sp = fmul double %i.dg, %.0.i295             ; 6 uses
  %i.sq = call double @hypot(double noundef %i.dd, double noundef %i.sp) #17 ; 2 uses
  %i.sr = fdiv double %i.dd, %i.sq                ; 6 uses
  %i.ss = fdiv double %i.sp, %i.sq                ; 5 uses
  br i1 %or.cond568, label %._crit_edge.i, label %bb.bl

._crit_edge.i:                                    ; preds = %bb.bk
end_hunk_0
