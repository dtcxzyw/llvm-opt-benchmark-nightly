Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaed6?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dlaed6_:bb.a
  store double 0.000000e+00, ptr %6, align 8, !tbaa !11
  %i.f = load i32, ptr %0, align 4, !tbaa !9
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.h = load double, ptr %i.b, align 8, !tbaa !11 ; 10 uses
  %i.i = load double, ptr %2, align 8, !tbaa !11  ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load double, ptr %i.c, align 8, !tbaa !11 ; 4 uses
  %i.k = fsub double %i.j, %i.h
  %i.l = fmul double %i.k, 5.000000e-01
  %i.m = load double, ptr %4, align 8, !tbaa !11
  %i.n = load double, ptr %3, align 8, !tbaa !11
  %i.o = fsub double %i.n, %i.h
  %i.p = fsub double %i.o, %i.l
  %i.q = fdiv double %i.m, %i.p
  %i.r = fadd double %i.i, %i.q                   ; 3 uses
  %i.s = fadd double %i.j, %i.h
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !11 ; 2 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.r, double %i.s, double %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !11 ; 2 uses
  %i.y = fadd double %i.x, %i.v
  %i.z = fmul double %i.h, %i.r
  %i.aa = fmul double %i.j, %i.u
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.z, double %i.j, double %i.aa)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.x, double %i.h, double %i.ab)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ad = load double, ptr %3, align 8, !tbaa !11 ; 4 uses
  %i.ae = fsub double %i.ad, %i.h
  %i.af = fmul double %i.ae, 5.000000e-01
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !11
  %i.ai = load double, ptr %i.c, align 8, !tbaa !11
  %i.aj = fsub double %i.ai, %i.h
  %i.ak = fsub double %i.aj, %i.af
  %i.al = fdiv double %i.ah, %i.ak
  %i.am = fadd double %i.i, %i.al                 ; 3 uses
  %i.an = fadd double %i.ad, %i.h
  %i.ao = load double, ptr %4, align 8, !tbaa !11 ; 2 uses
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.am, double %i.an, double %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !11 ; 2 uses
  %i.as = fadd double %i.ar, %i.ap
  %i.at = fmul double %i.ad, %i.am
  %i.au = fmul double %i.h, %i.ao
  %i.av = tail call double @llvm.fmuladd.f64(double %i.at, double %i.h, double %i.au)
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.ad, double %i.av)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0402 = phi double [ %i.y, %bb.f ], [ %i.as, %bb.g ] ; 4 uses
  %.0401 = phi double [ %i.ac, %bb.f ], [ %i.aw, %bb.g ] ; 4 uses
  %.0400 = phi double [ %i.r, %bb.f ], [ %i.am, %bb.g ] ; 4 uses
  %i.ax = fcmp oge double %.0402, 0.000000e+00
  %i.ay = fneg double %.0402
  %i.az = select i1 %i.ax, double %.0402, double %i.ay ; 2 uses
  %i.ba = fcmp oge double %.0401, 0.000000e+00
  %i.bb = fneg double %.0401
  %i.bc = select i1 %i.ba, double %.0401, double %i.bb ; 2 uses
  %i.bd = fcmp oge double %i.az, %i.bc
  %i.be = select i1 %i.bd, double %i.az, double %i.bc ; 2 uses
  %i.bf = fcmp oge double %.0400, 0.000000e+00
  %i.bg = fneg double %.0400
  %i.bh = select i1 %i.bf, double %.0400, double %i.bg ; 2 uses
  %i.bi = fcmp oge double %i.be, %i.bh
  %i.bj = select i1 %i.bi, double %i.be, double %i.bh ; 2 uses
  %i.bk = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = insertelement <2 x double> poison, double %.0402, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %.0401, i64 1
  %i.bo = fdiv <2 x double> %i.bn, %i.bl          ; 5 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 0 ; 7 uses
  %i.bq = fdiv double %.0400, %i.bj               ; 4 uses
  %i.br = fcmp oeq double %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %shift = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv <2 x double> %shift, %i.bo
  %i.bs = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.bt = fcmp ugt double %i.bp, 0.000000e+00
  br i1 %i.bt, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = extractelement <2 x double> %i.bo, i64 1
  %i.bv = fmul double %i.bu, 4.000000e+00
  %i.bw = fneg double %i.bq
  %i.bx = fmul double %i.bv, %i.bw
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double %i.bx) ; 3 uses
  %i.bz = fcmp oge double %i.by, 0.000000e+00
  %i.ca = fneg double %i.by
  %i.cb = select i1 %i.bz, double %i.by, double %i.ca
  %i.cc = tail call double @sqrt(double noundef %i.cb) #5
  %i.cd = fsub double %i.bp, %i.cc
  %i.ce = fmul double %i.bq, 2.000000e+00
  %i.cf = fdiv double %i.cd, %i.ce
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cg = extractelement <2 x double> %i.bo, i64 1 ; 2 uses
  %i.ch = fmul double %i.cg, 2.000000e+00
  %i.ci = fmul double %i.cg, 4.000000e+00
  %i.cj = fneg double %i.bq
  %i.ck = fmul double %i.ci, %i.cj
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double %i.ck) ; 3 uses
  %i.cm = fcmp oge double %i.cl, 0.000000e+00
  %i.cn = fneg double %i.cl
  %i.co = select i1 %i.cm, double %i.cl, double %i.cn
  %i.cp = tail call double @sqrt(double noundef %i.co) #5
  %i.cq = fadd double %i.bp, %i.cp
  %i.cr = fdiv double %i.ch, %i.cq
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %.sink = phi double [ %i.cf, %bb.k ], [ %i.cr, %bb.l ], [ %i.bs, %bb.i ] ; 3 uses
  %i.cs = fcmp olt double %.sink, %.1374
  %i.ct = fcmp ogt double %.sink, %.1
  %or.cond = select i1 %i.cs, i1 true, i1 %i.ct
  %i.cu = fadd double %.1374, %.1
  %i.cv = fmul double %i.cu, 5.000000e-01
  %storemerge512 = select i1 %or.cond, double %i.cv, double %.sink ; 9 uses
  store double %storemerge512, ptr %6, align 8, !tbaa !11
  %i.cw = load double, ptr %3, align 8, !tbaa !11 ; 3 uses
  %i.cx = fcmp oeq double %i.cw, %storemerge512
  br i1 %i.cx, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cy = load double, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  %i.cz = fcmp oeq double %i.cy, %storemerge512
  br i1 %i.cz, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = load double, ptr %i.c, align 8, !tbaa !11 ; 2 uses
  %i.db = fcmp oeq double %i.da, %storemerge512
  br i1 %i.db, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = load double, ptr %5, align 8, !tbaa !11 ; 2 uses
  %i.dd = load double, ptr %4, align 8, !tbaa !11
  %i.de = fmul double %storemerge512, %i.dd
  %i.df = fsub double %i.cw, %storemerge512
  %i.dg = fmul double %i.cw, %i.df
  %i.dh = fdiv double %i.de, %i.dg
  %i.di = fadd double %i.dc, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dk = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.da, i64 1 ; 2 uses
  %i.dm = insertelement <2 x double> poison, double %storemerge512, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.do = fsub <2 x double> %i.dl, %i.dn
  %i.dp = load <2 x double>, ptr %i.dj, align 8, !tbaa !11
  %i.dq = fmul <2 x double> %i.dn, %i.dp
  %i.dr = fmul <2 x double> %i.dl, %i.do
  %i.ds = fdiv <2 x double> %i.dq, %i.dr          ; 2 uses
  %i.dt = extractelement <2 x double> %i.ds, i64 0
  %i.du = fadd double %i.di, %i.dt
  %i.dv = extractelement <2 x double> %i.ds, i64 1
  %i.dw = fadd double %i.du, %i.dv                ; 2 uses
  %i.dx = fcmp ugt double %i.dw, 0.000000e+00     ; 2 uses
  %.1374. = select i1 %i.dx, double %.1374, double %storemerge512 ; 2 uses
  %..1 = select i1 %i.dx, double %storemerge512, double %.1 ; 2 uses
  %i.dy = tail call double @llvm.fabs.f64(double %i.dc)
  %i.dz = tail call double @llvm.fabs.f64(double %i.dw)
  %i.ea = fcmp ugt double %i.dy, %i.dz
  br i1 %i.ea, label %bb.q, label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.m, %bb.n, %bb.o
  %.3376.ph = phi double [ %.1374, %bb.m ], [ %.1374, %bb.o ], [ %.1374, %bb.n ], [ %.1374., %bb.p ]
  %.3.ph = phi double [ %.1, %bb.m ], [ %.1, %bb.o ], [ %.1, %bb.n ], [ %..1, %bb.p ]
  store double 0.000000e+00, ptr %6, align 8, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p, %bb.d
  %.3376 = phi double [ %.1374., %bb.p ], [ %.1374, %bb.d ], [ %.3376.ph, %.sink.split ] ; 2 uses
  %.3 = phi double [ %..1, %bb.p ], [ %.1, %bb.d ], [ %.3.ph, %.sink.split ] ; 2 uses
  %i.eb = tail call double @dlamch_(ptr noundef nonnull @.str) #5
  %i.ec = tail call double @dlamch_(ptr noundef nonnull @.str.1) #5 ; 3 uses
  %i.ed = tail call double @dlamch_(ptr noundef nonnull @.str.2) #5
  %i.ee = tail call double @log(double noundef %i.ed) #5
  %i.ef = tail call double @log(double noundef %i.ec) #5
  %i.eg = fdiv double %i.ee, %i.ef
  %i.eh = fdiv double %i.eg, 3.000000e+00
  %i.ei = fptosi double %i.eh to i32              ; 3 uses
  %.not.i = icmp eq i32 %i.ei, 0
  br i1 %.not.i, label %dpow_ui.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ej = icmp slt i32 %i.ei, 0
  %i.ek = fdiv double 1.000000e+00, %i.ec
  %.013.i = select i1 %i.ej, double %i.ek, double %i.ec ; 2 uses
  %.012.i = tail call i32 @llvm.abs.i32(i32 %i.ei, i1 true)
  %8 = zext nneg i32 %.012.i to i64               ; 2 uses
  %9 = and i64 %8, 1
  %.not1719.i = icmp eq i64 %9, 0
  %spec.select20.i = select i1 %.not1719.i, double 1.000000e+00, double %.013.i ; 2 uses
  %10 = lshr i64 %8, 1                            ; 2 uses
  %.not1821.i = icmp eq i64 %10, 0
  br i1 %.not1821.i, label %dpow_ui.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.i
  %i.el = phi i64 [ %i.eo, %.lr.ph.i ], [ %10, %bb.r ] ; 2 uses
  %spec.select23.i = phi double [ %spec.select.i, %.lr.ph.i ], [ %spec.select20.i, %bb.r ] ; 2 uses
  %.11422.i = phi double [ %i.em, %.lr.ph.i ], [ %.013.i, %bb.r ] ; 2 uses
  %i.em = fmul double %.11422.i, %.11422.i        ; 2 uses
  %11 = and i64 %i.el, 1
  %.not17.i = icmp eq i64 %11, 0
  %i.en = fmul double %spec.select23.i, %i.em
  %spec.select.i = select i1 %.not17.i, double %spec.select23.i, double %i.en ; 2 uses
  %i.eo = lshr i64 %i.el, 1                       ; 2 uses
  %.not18.i = icmp eq i64 %i.eo, 0
  br i1 %.not18.i, label %dpow_ui.exit, label %.lr.ph.i

dpow_ui.exit:                                     ; preds = %.lr.ph.i, %bb.q, %bb.r
  %.2.i = phi double [ 1.000000e+00, %bb.q ], [ %spec.select20.i, %bb.r ], [ %spec.select.i, %.lr.ph.i ] ; 5 uses
  %i.ep = fdiv double 1.000000e+00, %.2.i         ; 3 uses
  %i.eq = fmul double %.2.i, %.2.i                ; 2 uses
  %i.er = fmul double %i.ep, %i.ep
  %i.es = load i32, ptr %1, align 4, !tbaa !9
  %.not432 = icmp eq i32 %i.es, 0
  %i.et = load double, ptr %6, align 8, !tbaa !11 ; 5 uses
  br i1 %.not432, label %bb.t, label %bb.s

bb.s:                                             ; preds = %dpow_ui.exit
  %i.eu = load double, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  %i.ev = fsub double %i.eu, %i.et                ; 3 uses
  %i.ew = fcmp oge double %i.ev, 0.000000e+00
  %i.ex = fneg double %i.ev
  %i.ey = select i1 %i.ew, double %i.ev, double %i.ex
  %i.ez = load double, ptr %i.c, align 8, !tbaa !11
  br label %bb.u

bb.t:                                             ; preds = %dpow_ui.exit
  %i.fa = load double, ptr %3, align 8, !tbaa !11
  %i.fb = fsub double %i.fa, %i.et                ; 3 uses
  %i.fc = fcmp oge double %i.fb, 0.000000e+00
  %i.fd = fneg double %i.fb
  %i.fe = select i1 %i.fc, double %i.fb, double %i.fd
  %i.ff = load double, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink510 = phi double [ %i.ff, %bb.t ], [ %i.ez, %bb.s ]
  %.sink503 = phi double [ %i.fe, %bb.t ], [ %i.ey, %bb.s ] ; 2 uses
  %.sroa.7.0.copyload = phi double [ %i.ff, %bb.t ], [ %i.eu, %bb.s ] ; 2 uses
  %i.fg = fsub double %.sink510, %i.et            ; 3 uses
  %i.fh = fcmp oge double %i.fg, 0.000000e+00
  %i.fi = fneg double %i.fg
  %i.fj = select i1 %i.fh, double %i.fg, double %i.fi ; 2 uses
  %i.fk = fcmp ole double %.sink503, %i.fj
  %i.fl = select i1 %i.fk, double %.sink503, double %i.fj ; 2 uses
  %i.fm = fcmp ugt double %i.fl, %.2.i            ; 2 uses
  br i1 %i.fm, label %.preheader.preheader, label %bb.v

.preheader.preheader:                             ; preds = %bb.u
  %.sroa.0474.0.copyload = load double, ptr %3, align 8, !tbaa !11
  %.sroa.11.0.copyload = load double, ptr %i.c, align 8, !tbaa !11
  %.sroa.0.0.copyload = load double, ptr %4, align 8, !tbaa !11
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fn = load <2 x double>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !11
  %i.fo = insertelement <2 x double> poison, double %.sroa.7.0.copyload, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %.sroa.11.0.copyload, i64 1
  br label %.loopexit438

bb.v:                                             ; preds = %bb.u
  %i.fq = fcmp ugt double %i.fl, %i.eq            ; 2 uses
  %. = select i1 %i.fq, double %i.ep, double %i.er ; 6 uses
  %i.fr = load double, ptr %3, align 8, !tbaa !11
  %i.fs = fmul double %., %i.fr
  %i.ft = load double, ptr %4, align 8, !tbaa !11
  %i.fu = fmul double %., %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !11
  %i.fy = insertelement <2 x double> poison, double %., i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ga = insertelement <2 x double> poison, double %.sroa.7.0.copyload, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.fx, i64 1
  %i.gc = fmul <2 x double> %i.fz, %i.gb
  %i.gd = load <2 x double>, ptr %i.fv, align 8, !tbaa !11
  %i.ge = fmul <2 x double> %i.fz, %i.gd
  %.435 = select i1 %i.fq, double %.2.i, double %i.eq
  %i.gf = fmul double %., %i.et                   ; 2 uses
  store double %i.gf, ptr %6, align 8, !tbaa !11
  %i.gg = fmul double %.3376, %.
  %i.gh = fmul double %.3, %.
  br label %.loopexit438

.loopexit438:                                     ; preds = %.preheader.preheader, %bb.v
  %i.gi = phi double [ %i.et, %.preheader.preheader ], [ %i.gf, %bb.v ] ; 7 uses
  %.sroa.0474.0 = phi double [ %.sroa.0474.0.copyload, %.preheader.preheader ], [ %i.fs, %bb.v ] ; 5 uses
  %.sroa.0.0 = phi double [ %.sroa.0.0.copyload, %.preheader.preheader ], [ %i.fu, %bb.v ] ; 2 uses
  %.1385 = phi double [ undef, %.preheader.preheader ], [ %.435, %bb.v ]
  %.4377 = phi double [ %.3376, %.preheader.preheader ], [ %i.gg, %bb.v ]
  %.4 = phi double [ %.3, %.preheader.preheader ], [ %i.gh, %bb.v ]
  %i.gj = phi <2 x double> [ %i.fn, %.preheader.preheader ], [ %i.ge, %bb.v ] ; 2 uses
  %i.gk = phi <2 x double> [ %i.fp, %.preheader.preheader ], [ %i.gc, %bb.v ] ; 5 uses
  %i.gl = fsub double %.sroa.0474.0, %i.gi
  %i.gm = fdiv double 1.000000e+00, %i.gl         ; 3 uses
  %i.gn = fmul double %.sroa.0.0, %i.gm           ; 2 uses
  %i.go = fdiv double %i.gn, %.sroa.0474.0
  %i.gp = fadd double %i.go, 0.000000e+00
  %i.gq = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gs = fsub <2 x double> %i.gk, %i.gr
  %i.gt = fdiv <2 x double> splat (double 1.000000e+00), %i.gs ; 3 uses
  %i.gu = fmul <2 x double> %i.gj, %i.gt          ; 2 uses
  %i.gv = fdiv <2 x double> %i.gu, %i.gk          ; 2 uses
  %i.gw = extractelement <2 x double> %i.gv, i64 0
  %i.gx = fadd double %i.gp, %i.gw
  %i.gy = extractelement <2 x double> %i.gv, i64 1
  %i.gz = fadd double %i.gx, %i.gy
  %i.ha = load double, ptr %5, align 8, !tbaa !11
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.gi, double %i.gz, double %i.ha) ; 3 uses
  %i.hc = fcmp oeq double %i.hb, 0.000000e+00
  br i1 %i.hc, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %.loopexit438
  %i.hd = fmul double %i.gm, %i.gn                ; 2 uses
  %i.he = fmul double %i.gm, %i.hd
  %i.hf = fadd double %i.he, 0.000000e+00
  %i.hg = fmul <2 x double> %i.gt, %i.gu          ; 3 uses
  %i.hh = fmul <2 x double> %i.gt, %i.hg          ; 2 uses
  %i.hi = extractelement <2 x double> %i.hh, i64 0
  %i.hj = fadd double %i.hf, %i.hi
  %i.hk = extractelement <2 x double> %i.hh, i64 1
  %i.hl = fadd double %i.hj, %i.hk
  %i.hm = fadd double %i.hd, 0.000000e+00
  %i.hn = extractelement <2 x double> %i.hg, i64 0
  %i.ho = fadd double %i.hm, %i.hn
  %i.hp = extractelement <2 x double> %i.hg, i64 1
  %i.hq = fadd double %i.ho, %i.hp
  %i.hr = fcmp ugt double %i.hb, 0.000000e+00     ; 2 uses
  %.4377. = select i1 %i.hr, double %.4377, double %i.gi
  %..4 = select i1 %i.hr, double %i.gi, double %.4
  %i.hs = fmul double %i.eb, 4.000000e+00         ; 2 uses
  %i.ht = extractelement <2 x double> %i.gk, i64 0 ; 3 uses
  %i.hu = extractelement <2 x double> %i.gk, i64 1 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.ah
  %i.hv = phi double [ %i.gi, %bb.w ], [ %storemerge, %bb.ah ] ; 3 uses
  %.6459 = phi double [ %..4, %bb.w ], [ %..6, %bb.ah ] ; 4 uses
  %.6379458 = phi double [ %.4377., %bb.w ], [ %.6379., %bb.ah ] ; 4 uses
  %.1382457 = phi double [ %i.hl, %bb.w ], [ %i.lv, %bb.ah ]
  %.1389456 = phi double [ %i.hq, %bb.w ], [ %i.lu, %bb.ah ] ; 3 uses
  %.0393455 = phi i32 [ 2, %bb.w ], [ %i.mo, %bb.ah ]
  %.0399454 = phi double [ %i.hb, %bb.w ], [ %i.lx, %bb.ah ] ; 5 uses
  %i.hw = load i32, ptr %1, align 4, !tbaa !9
  %.not433 = icmp eq i32 %i.hw, 0                 ; 2 uses
  %spec.select = select i1 %.not433, double %.sroa.0474.0, double %i.ht
  %spec.select511 = select i1 %.not433, double %i.ht, double %i.hu
  %.0403 = fsub double %spec.select511, %i.hv     ; 2 uses
  %.0404 = fsub double %spec.select, %i.hv        ; 2 uses
  %i.hx = fadd double %.0404, %.0403              ; 2 uses
  %i.hy = fmul double %.0404, %.0403              ; 3 uses
  %i.hz = fneg double %.1389456
  %i.ia = fmul double %i.hy, %i.hz
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.hx, double %.0399454, double %i.ia) ; 4 uses
  %i.ic = fmul double %.0399454, %i.hy            ; 4 uses
  %i.id = fneg double %i.hx
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.id, double %.1389456, double %.0399454)
  %i.if = tail call double @llvm.fmuladd.f64(double %i.hy, double %.1382457, double %i.ie) ; 4 uses
  %i.ig = fcmp oge double %i.ib, 0.000000e+00
  %i.ih = fneg double %i.ib
  %i.ii = select i1 %i.ig, double %i.ib, double %i.ih ; 2 uses
  %i.ij = fcmp oge double %i.ic, 0.000000e+00
  %i.ik = fneg double %i.ic
  %i.il = select i1 %i.ij, double %i.ic, double %i.ik ; 2 uses
  %i.im = fcmp oge double %i.ii, %i.il
  %i.in = select i1 %i.im, double %i.ii, double %i.il ; 2 uses
  %i.io = fcmp oge double %i.if, 0.000000e+00
  %i.ip = fneg double %i.if
  %i.iq = select i1 %i.io, double %i.if, double %i.ip ; 2 uses
  %i.ir = fcmp oge double %i.in, %i.iq
  %i.is = select i1 %i.ir, double %i.in, double %i.iq ; 3 uses
  %i.it = fdiv double %i.ib, %i.is                ; 8 uses
  %i.iu = fdiv double %i.ic, %i.is                ; 4 uses
  %i.iv = fdiv double %i.if, %i.is                ; 4 uses
  %i.iw = fcmp oeq double %i.iv, 0.000000e+00
  br i1 %i.iw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ix = fdiv double %i.iu, %i.it
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.iy = fcmp ugt double %i.it, 0.000000e+00
  br i1 %i.iy, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.iz = fmul double %i.iu, 4.000000e+00
  %i.ja = fneg double %i.iv
  %i.jb = fmul double %i.iz, %i.ja
  %i.jc = tail call double @llvm.fmuladd.f64(double %i.it, double %i.it, double %i.jb) ; 3 uses
  %i.jd = fcmp oge double %i.jc, 0.000000e+00
  %i.je = fneg double %i.jc
  %i.jf = select i1 %i.jd, double %i.jc, double %i.je
  %i.jg = tail call double @sqrt(double noundef %i.jf) #5
  %i.jh = fsub double %i.it, %i.jg
  %i.ji = fmul double %i.iv, 2.000000e+00
  %i.jj = fdiv double %i.jh, %i.ji
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.jk = fmul double %i.iu, 2.000000e+00
  %i.jl = fmul double %i.iu, 4.000000e+00
  %i.jm = fneg double %i.iv
  %i.jn = fmul double %i.jl, %i.jm
end_hunk_0
