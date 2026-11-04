Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaed6?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dlaed6_:bb.a
  %.1 = phi double [ %.0, %bb.b ], [ 0.000000e+00, %bb.c ] ; 7 uses
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
  %i.cy = load double, ptr %i.b, align 8, !tbaa !11
  %i.cz = fcmp oeq double %i.cy, %storemerge512
  br i1 %i.cz, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = load double, ptr %i.c, align 8, !tbaa !11
  %i.db = fcmp oeq double %i.da, %storemerge512
  br i1 %i.db, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = load <2 x double>, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  %i.dd = load double, ptr %5, align 8, !tbaa !11 ; 2 uses
  %i.de = load double, ptr %4, align 8, !tbaa !11
  %i.df = fmul double %storemerge512, %i.de
  %i.dg = fsub double %i.cw, %storemerge512
  %i.dh = fmul double %i.cw, %i.dg
  %i.di = fdiv double %i.df, %i.dh
  %i.dj = fadd double %i.dd, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dl = insertelement <2 x double> poison, double %storemerge512, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = fsub <2 x double> %i.dc, %i.dm
  %i.do = load <2 x double>, ptr %i.dk, align 8, !tbaa !11
  %i.dp = fmul <2 x double> %i.dm, %i.do
  %i.dq = fmul <2 x double> %i.dc, %i.dn
  %i.dr = fdiv <2 x double> %i.dp, %i.dq          ; 2 uses
  %i.ds = extractelement <2 x double> %i.dr, i64 0
  %i.dt = fadd double %i.dj, %i.ds
  %i.du = extractelement <2 x double> %i.dr, i64 1
  %i.dv = fadd double %i.dt, %i.du                ; 2 uses
  %i.dw = fcmp ugt double %i.dv, 0.000000e+00     ; 2 uses
  %.1374. = select i1 %i.dw, double %.1374, double %storemerge512 ; 2 uses
  %..1 = select i1 %i.dw, double %storemerge512, double %.1 ; 2 uses
  %i.dx = tail call double @llvm.fabs.f64(double %i.dd)
  %i.dy = tail call double @llvm.fabs.f64(double %i.dv)
  %i.dz = fcmp ugt double %i.dx, %i.dy
  br i1 %i.dz, label %bb.q, label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.m, %bb.n, %bb.o
  %.3376.ph = phi double [ %.1374, %bb.m ], [ %.1374, %bb.o ], [ %.1374, %bb.n ], [ %.1374., %bb.p ]
  %.3.ph = phi double [ %.1, %bb.m ], [ %.1, %bb.o ], [ %.1, %bb.n ], [ %..1, %bb.p ]
  store double 0.000000e+00, ptr %6, align 8, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p, %bb.d
  %.3376 = phi double [ %.1374., %bb.p ], [ %.1374, %bb.d ], [ %.3376.ph, %.sink.split ] ; 2 uses
  %.3 = phi double [ %..1, %bb.p ], [ %.1, %bb.d ], [ %.3.ph, %.sink.split ] ; 2 uses
  %i.ea = tail call double @dlamch_(ptr noundef nonnull @.str) #5
  %i.eb = tail call double @dlamch_(ptr noundef nonnull @.str.1) #5 ; 3 uses
  %i.ec = tail call double @dlamch_(ptr noundef nonnull @.str.2) #5
  %i.ed = tail call double @log(double noundef %i.ec) #5
  %i.ee = tail call double @log(double noundef %i.eb) #5
  %i.ef = fdiv double %i.ed, %i.ee
  %i.eg = fdiv double %i.ef, 3.000000e+00
  %i.eh = fptosi double %i.eg to i32              ; 3 uses
  %.not.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i, label %dpow_ui.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ei = icmp slt i32 %i.eh, 0
  %i.ej = fdiv double 1.000000e+00, %i.eb
  %.013.i = select i1 %i.ei, double %i.ej, double %i.eb ; 2 uses
  %.012.i = tail call i32 @llvm.abs.i32(i32 %i.eh, i1 true) ; 2 uses
  %.not1719.i = trunc i32 %.012.i to i1
  %spec.select20.i = select i1 %.not1719.i, double %.013.i, double 1.000000e+00 ; 2 uses
  %8 = lshr i32 %.012.i, 1                        ; 2 uses
  %.not1821.i = icmp eq i32 %8, 0
  br i1 %.not1821.i, label %dpow_ui.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  %9 = zext nneg i32 %8 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.ek = phi i64 [ %i.en, %.lr.ph.i ], [ %9, %.lr.ph.preheader.i ] ; 2 uses
  %spec.select23.i = phi double [ %spec.select.i, %.lr.ph.i ], [ %spec.select20.i, %.lr.ph.preheader.i ] ; 2 uses
  %.11422.i = phi double [ %i.el, %.lr.ph.i ], [ %.013.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.el = fmul double %.11422.i, %.11422.i        ; 2 uses
  %.not17.i = trunc i64 %i.ek to i1
  %i.em = fmul double %spec.select23.i, %i.el
  %spec.select.i = select i1 %.not17.i, double %i.em, double %spec.select23.i ; 2 uses
  %i.en = lshr i64 %i.ek, 1                       ; 2 uses
  %.not18.i = icmp eq i64 %i.en, 0
  br i1 %.not18.i, label %dpow_ui.exit, label %.lr.ph.i

dpow_ui.exit:                                     ; preds = %.lr.ph.i, %bb.q, %bb.r
  %.2.i = phi double [ 1.000000e+00, %bb.q ], [ %spec.select20.i, %bb.r ], [ %spec.select.i, %.lr.ph.i ] ; 5 uses
  %i.eo = fdiv double 1.000000e+00, %.2.i         ; 3 uses
  %i.ep = fmul double %.2.i, %.2.i                ; 2 uses
  %i.eq = fmul double %i.eo, %i.eo
  %i.er = load i32, ptr %1, align 4, !tbaa !9
  %.not432 = icmp eq i32 %i.er, 0
  %i.es = load double, ptr %6, align 8, !tbaa !11 ; 5 uses
  br i1 %.not432, label %bb.t, label %bb.s

bb.s:                                             ; preds = %dpow_ui.exit
  %i.et = load double, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  %i.eu = fsub double %i.et, %i.es                ; 3 uses
  %i.ev = fcmp oge double %i.eu, 0.000000e+00
  %i.ew = fneg double %i.eu
  %i.ex = select i1 %i.ev, double %i.eu, double %i.ew
  %i.ey = load double, ptr %i.c, align 8, !tbaa !11
  br label %bb.u

bb.t:                                             ; preds = %dpow_ui.exit
  %i.ez = load double, ptr %3, align 8, !tbaa !11
  %i.fa = fsub double %i.ez, %i.es                ; 3 uses
  %i.fb = fcmp oge double %i.fa, 0.000000e+00
  %i.fc = fneg double %i.fa
  %i.fd = select i1 %i.fb, double %i.fa, double %i.fc
  %i.fe = load double, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink510 = phi double [ %i.fe, %bb.t ], [ %i.ey, %bb.s ]
  %.sink503 = phi double [ %i.fd, %bb.t ], [ %i.ex, %bb.s ] ; 2 uses
  %.sroa.7.0.copyload = phi double [ %i.fe, %bb.t ], [ %i.et, %bb.s ] ; 2 uses
  %i.ff = fsub double %.sink510, %i.es            ; 3 uses
  %i.fg = fcmp oge double %i.ff, 0.000000e+00
  %i.fh = fneg double %i.ff
  %i.fi = select i1 %i.fg, double %i.ff, double %i.fh ; 2 uses
  %i.fj = fcmp ole double %.sink503, %i.fi
  %i.fk = select i1 %i.fj, double %.sink503, double %i.fi ; 2 uses
  %i.fl = fcmp ugt double %i.fk, %.2.i            ; 2 uses
  br i1 %i.fl, label %.preheader.preheader, label %bb.v

.preheader.preheader:                             ; preds = %bb.u
  %.sroa.0474.0.copyload = load double, ptr %3, align 8, !tbaa !11
  %.sroa.11.0.copyload = load double, ptr %i.c, align 8, !tbaa !11
  %.sroa.0.0.copyload = load double, ptr %4, align 8, !tbaa !11
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fm = load <2 x double>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !11
  %i.fn = insertelement <2 x double> poison, double %.sroa.7.0.copyload, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %.sroa.11.0.copyload, i64 1
  br label %.loopexit438

bb.v:                                             ; preds = %bb.u
  %i.fp = fcmp ugt double %i.fk, %i.ep            ; 2 uses
  %. = select i1 %i.fp, double %i.eo, double %i.eq ; 6 uses
  %i.fq = load double, ptr %3, align 8, !tbaa !11
  %i.fr = fmul double %., %i.fq
  %i.fs = load double, ptr %4, align 8, !tbaa !11
  %i.ft = fmul double %., %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !11
  %i.fx = insertelement <2 x double> poison, double %., i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fz = insertelement <2 x double> poison, double %.sroa.7.0.copyload, i64 0
  %i.ga = insertelement <2 x double> %i.fz, double %i.fw, i64 1
  %i.gb = fmul <2 x double> %i.fy, %i.ga
  %i.gc = load <2 x double>, ptr %i.fu, align 8, !tbaa !11
  %i.gd = fmul <2 x double> %i.fy, %i.gc
  %.435 = select i1 %i.fp, double %.2.i, double %i.ep
  %i.ge = fmul double %., %i.es                   ; 2 uses
  store double %i.ge, ptr %6, align 8, !tbaa !11
  %i.gf = fmul double %.3376, %.
  %i.gg = fmul double %.3, %.
  br label %.loopexit438

.loopexit438:                                     ; preds = %.preheader.preheader, %bb.v
  %i.gh = phi double [ %i.es, %.preheader.preheader ], [ %i.ge, %bb.v ] ; 7 uses
  %.sroa.0474.0 = phi double [ %.sroa.0474.0.copyload, %.preheader.preheader ], [ %i.fr, %bb.v ] ; 5 uses
  %.sroa.0.0 = phi double [ %.sroa.0.0.copyload, %.preheader.preheader ], [ %i.ft, %bb.v ] ; 2 uses
  %.1385 = phi double [ undef, %.preheader.preheader ], [ %.435, %bb.v ]
  %.4377 = phi double [ %.3376, %.preheader.preheader ], [ %i.gf, %bb.v ]
  %.4 = phi double [ %.3, %.preheader.preheader ], [ %i.gg, %bb.v ]
  %i.gi = phi <2 x double> [ %i.fm, %.preheader.preheader ], [ %i.gd, %bb.v ] ; 2 uses
  %i.gj = phi <2 x double> [ %i.fo, %.preheader.preheader ], [ %i.gb, %bb.v ] ; 5 uses
  %i.gk = fsub double %.sroa.0474.0, %i.gh
  %i.gl = fdiv double 1.000000e+00, %i.gk         ; 3 uses
  %i.gm = fmul double %.sroa.0.0, %i.gl           ; 2 uses
  %i.gn = fdiv double %i.gm, %.sroa.0474.0
  %i.go = fadd double %i.gn, 0.000000e+00
  %i.gp = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = fsub <2 x double> %i.gj, %i.gq
  %i.gs = fdiv <2 x double> splat (double 1.000000e+00), %i.gr ; 3 uses
  %i.gt = fmul <2 x double> %i.gi, %i.gs          ; 2 uses
  %i.gu = fdiv <2 x double> %i.gt, %i.gj          ; 2 uses
  %i.gv = extractelement <2 x double> %i.gu, i64 0
  %i.gw = fadd double %i.go, %i.gv
  %i.gx = extractelement <2 x double> %i.gu, i64 1
  %i.gy = fadd double %i.gw, %i.gx
  %i.gz = load double, ptr %5, align 8, !tbaa !11
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.gy, double %i.gz) ; 3 uses
  %i.hb = fcmp oeq double %i.ha, 0.000000e+00
  br i1 %i.hb, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %.loopexit438
  %i.hc = fmul double %i.gl, %i.gm                ; 2 uses
  %i.hd = fmul double %i.gl, %i.hc
  %i.he = fadd double %i.hd, 0.000000e+00
  %i.hf = fmul <2 x double> %i.gs, %i.gt          ; 3 uses
  %i.hg = fmul <2 x double> %i.gs, %i.hf          ; 2 uses
  %i.hh = extractelement <2 x double> %i.hg, i64 0
  %i.hi = fadd double %i.he, %i.hh
  %i.hj = extractelement <2 x double> %i.hg, i64 1
  %i.hk = fadd double %i.hi, %i.hj
  %i.hl = fadd double %i.hc, 0.000000e+00
  %i.hm = extractelement <2 x double> %i.hf, i64 0
  %i.hn = fadd double %i.hl, %i.hm
  %i.ho = extractelement <2 x double> %i.hf, i64 1
  %i.hp = fadd double %i.hn, %i.ho
  %i.hq = fcmp ugt double %i.ha, 0.000000e+00     ; 2 uses
  %.4377. = select i1 %i.hq, double %.4377, double %i.gh
  %..4 = select i1 %i.hq, double %i.gh, double %.4
  %i.hr = fmul double %i.ea, 4.000000e+00         ; 2 uses
  %i.hs = extractelement <2 x double> %i.gj, i64 0 ; 3 uses
  %i.ht = extractelement <2 x double> %i.gj, i64 1 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.ah
  %i.hu = phi double [ %i.gh, %bb.w ], [ %storemerge, %bb.ah ] ; 3 uses
  %.6459 = phi double [ %..4, %bb.w ], [ %..6, %bb.ah ] ; 4 uses
  %.6379458 = phi double [ %.4377., %bb.w ], [ %.6379., %bb.ah ] ; 4 uses
  %.1382457 = phi double [ %i.hk, %bb.w ], [ %i.lu, %bb.ah ]
  %.1389456 = phi double [ %i.hp, %bb.w ], [ %i.lt, %bb.ah ] ; 3 uses
  %.0393455 = phi i32 [ 2, %bb.w ], [ %i.mn, %bb.ah ]
  %.0399454 = phi double [ %i.ha, %bb.w ], [ %i.lw, %bb.ah ] ; 5 uses
  %i.hv = load i32, ptr %1, align 4, !tbaa !9
  %.not433 = icmp eq i32 %i.hv, 0                 ; 2 uses
  %spec.select = select i1 %.not433, double %.sroa.0474.0, double %i.hs
  %spec.select511 = select i1 %.not433, double %i.hs, double %i.ht
  %.0403 = fsub double %spec.select511, %i.hu     ; 2 uses
  %.0404 = fsub double %spec.select, %i.hu        ; 2 uses
  %i.hw = fadd double %.0404, %.0403              ; 2 uses
  %i.hx = fmul double %.0404, %.0403              ; 3 uses
  %i.hy = fneg double %.1389456
  %i.hz = fmul double %i.hx, %i.hy
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.hw, double %.0399454, double %i.hz) ; 4 uses
  %i.ib = fmul double %.0399454, %i.hx            ; 4 uses
  %i.ic = fneg double %i.hw
  %i.id = tail call double @llvm.fmuladd.f64(double %i.ic, double %.1389456, double %.0399454)
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.hx, double %.1382457, double %i.id) ; 4 uses
  %i.if = fcmp oge double %i.ia, 0.000000e+00
  %i.ig = fneg double %i.ia
  %i.ih = select i1 %i.if, double %i.ia, double %i.ig ; 2 uses
  %i.ii = fcmp oge double %i.ib, 0.000000e+00
  %i.ij = fneg double %i.ib
  %i.ik = select i1 %i.ii, double %i.ib, double %i.ij ; 2 uses
  %i.il = fcmp oge double %i.ih, %i.ik
  %i.im = select i1 %i.il, double %i.ih, double %i.ik ; 2 uses
  %i.in = fcmp oge double %i.ie, 0.000000e+00
  %i.io = fneg double %i.ie
  %i.ip = select i1 %i.in, double %i.ie, double %i.io ; 2 uses
  %i.iq = fcmp oge double %i.im, %i.ip
  %i.ir = select i1 %i.iq, double %i.im, double %i.ip ; 3 uses
  %i.is = fdiv double %i.ia, %i.ir                ; 8 uses
  %i.it = fdiv double %i.ib, %i.ir                ; 4 uses
  %i.iu = fdiv double %i.ie, %i.ir                ; 4 uses
  %i.iv = fcmp oeq double %i.iu, 0.000000e+00
  br i1 %i.iv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.iw = fdiv double %i.it, %i.is
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.ix = fcmp ugt double %i.is, 0.000000e+00
  br i1 %i.ix, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.iy = fmul double %i.it, 4.000000e+00
  %i.iz = fneg double %i.iu
  %i.ja = fmul double %i.iy, %i.iz
  %i.jb = tail call double @llvm.fmuladd.f64(double %i.is, double %i.is, double %i.ja) ; 3 uses
  %i.jc = fcmp oge double %i.jb, 0.000000e+00
  %i.jd = fneg double %i.jb
  %i.je = select i1 %i.jc, double %i.jb, double %i.jd
  %i.jf = tail call double @sqrt(double noundef %i.je) #5
  %i.jg = fsub double %i.is, %i.jf
  %i.jh = fmul double %i.iu, 2.000000e+00
  %i.ji = fdiv double %i.jg, %i.jh
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.jj = fmul double %i.it, 2.000000e+00
  %i.jk = fmul double %i.it, 4.000000e+00
  %i.jl = fneg double %i.iu
  %i.jm = fmul double %i.jk, %i.jl
end_hunk_0
