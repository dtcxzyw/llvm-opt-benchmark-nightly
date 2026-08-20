inline.NumInlined: 6988
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 118
loop-unroll.NumUnrolled: 560
begin_hunk_0_@_ZN10tetgenmesh11scout_pointEPdPNS_7trifaceEi:bb.a
bb.ab:                                            ; preds = %._crit_edge145, %.thread110
  %.sroa.5.0132 = phi i32 [ %.sroa.5.0132.pre, %._crit_edge145 ], [ %.sroa.7.0128.lcssa, %.thread110 ] ; 2 uses
  %i.mj = phi double [ %.pre150, %._crit_edge145 ], [ %i.hs, %.thread110 ] ; 2 uses
  %i.mk = phi double [ %.pre148, %._crit_edge145 ], [ %i.ht, %.thread110 ] ; 2 uses
  %i.ml = phi double [ %.pre147, %._crit_edge145 ], [ %i.hu, %.thread110 ] ; 2 uses
  %.sroa.0.0.copyload = phi ptr [ %.sroa.0.0.copyload.pre, %._crit_edge145 ], [ %.sroa.085.0.copyload, %.thread110 ] ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 68840
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !488 ; 2 uses
  %i.mo = sext i32 %.sroa.5.0132 to i64           ; 2 uses
  %i.mp = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.mo
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !33
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.mr
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !306 ; 3 uses
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !30
  %i.mv = fsub double %i.mu, %i.ml                ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !30
  %i.my = fsub double %i.mx, %i.mk                ; 2 uses
  %i.mz = fmul double %i.my, %i.my
  %i.na = tail call double @llvm.fmuladd.f64(double %i.mv, double %i.mv, double %i.mz)
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !30
  %i.nd = fsub double %i.nc, %i.mj                ; 2 uses
  %i.ne = tail call double @llvm.fmuladd.f64(double %i.nd, double %i.nd, double %i.na)
  %sqrt.i81 = tail call noundef double @llvm.sqrt.f64(double %i.ne)
  %i.nf = fcmp uge double %sqrt.i81, %i.mn
  br i1 %i.nf, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %.sroa.5.0132.lcssa = phi i32 [ %.sroa.5.0132, %bb.ab ], [ %.sroa.5.0132.1, %bb.ad ]
  store ptr %.sroa.0.0.copyload, ptr %2, align 8, !tbaa !330
  store i32 %.sroa.5.0132.lcssa, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !335
  br label %.thread112

bb.ad:                                            ; preds = %bb.ab
  %i.ng = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.mo
  %.sroa.5.0132.1 = load i32, ptr %i.ng, align 4, !tbaa !33 ; 2 uses
  %i.nh = sext i32 %.sroa.5.0132.1 to i64
  %i.ni = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !33
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.nk
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !306 ; 3 uses
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !30
  %i.no = fsub double %i.nn, %i.ml                ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.nq = load double, ptr %i.np, align 8, !tbaa !30
  %i.nr = fsub double %i.nq, %i.mk                ; 2 uses
  %i.ns = fmul double %i.nr, %i.nr
  %i.nt = tail call double @llvm.fmuladd.f64(double %i.no, double %i.no, double %i.ns)
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !30
  %i.nw = fsub double %i.nv, %i.mj                ; 2 uses
  %i.nx = tail call double @llvm.fmuladd.f64(double %i.nw, double %i.nw, double %i.nt)
  %sqrt.i81.1 = tail call noundef double @llvm.sqrt.f64(double %i.nx)
  %i.ny = fcmp uge double %sqrt.i81.1, %i.mn
  br i1 %i.ny, label %.thread112, label %bb.ac

.thread112:                                       ; preds = %.thread, %.thread.1, %bb.ad, %.thread108.1, %_ZN10tetgenmesh17cos_interiorangleEPdS0_S0_.exit.2, %.thread.2, %.thread.2.thread169, %bb.q, %bb.m, %bb.r, %bb.k, %bb.l, %bb.ac
  %.13 = phi i32 [ 2, %bb.m ], [ %i.ap, %bb.k ], [ 5, %bb.ac ], [ 3, %bb.r ], [ 1, %bb.l ], [ 3, %.thread108.1 ], [ 2, %.thread.2 ], [ 4, %bb.ad ], [ 2, %bb.q ], [ 2, %.thread.2.thread169 ], [ 3, %_ZN10tetgenmesh17cos_interiorangleEPdS0_S0_.exit.2 ], [ 2, %.thread.1 ], [ 2, %.thread ]
  ret i32 %.13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZN10tetgenmesh16getpointmeshsizeEPdPNS_7trifaceEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #22 align 2 {
bb.a:
  switch i32 %3, label %.loopexit [
    i32 2, label %bb.b
    i32 3, label %bb.f
    i32 4, label %bb.j
    i32 5, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !330    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !131  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68652
  %i.e = load i32, ptr %i.d, align 4, !tbaa !342
  %i.f = sext i32 %i.e to i64                     ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load double, ptr %i.g, align 8, !tbaa !30 ; 2 uses
  %i.i = fcmp ogt double %i.h, 0.000000e+00
  br i1 %i.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131  ; 5 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.f
  %i.m = load double, ptr %i.l, align 8, !tbaa !30 ; 2 uses
  %i.n = fcmp ogt double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131  ; 5 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.f
  %i.r = load double, ptr %i.q, align 8, !tbaa !30 ; 2 uses
  %i.s = fcmp ogt double %i.r, 0.000000e+00
  br i1 %i.s, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131  ; 5 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.f
  %i.w = load double, ptr %i.v, align 8, !tbaa !30 ; 2 uses
  %i.x = fcmp ogt double %i.w, 0.000000e+00
  br i1 %i.x, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.e
  %i.y = tail call noundef double @_ZN10tetgenmesh12orient3dfastEPdS0_S0_S0_(ptr nonnull align 8 poison, ptr noundef nonnull %i.c, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull %i.u)
  %i.z = tail call noundef double @_ZN10tetgenmesh12orient3dfastEPdS0_S0_S0_(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull %i.u)
  %i.aa = tail call noundef double @_ZN10tetgenmesh12orient3dfastEPdS0_S0_S0_(ptr nonnull align 8 poison, ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef nonnull %i.p, ptr noundef nonnull %i.u)
  %i.ab = tail call noundef double @_ZN10tetgenmesh12orient3dfastEPdS0_S0_S0_(ptr nonnull align 8 poison, ptr noundef nonnull %i.c, ptr noundef nonnull %i.k, ptr noundef %1, ptr noundef nonnull %i.u)
  %i.ac = tail call noundef double @_ZN10tetgenmesh12orient3dfastEPdS0_S0_S0_(ptr nonnull align 8 poison, ptr noundef nonnull %i.c, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef %1)
  %i.ad = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.aa, i64 1
  %i.af = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ah = fdiv <2 x double> %i.ae, %i.ag
  %i.ai = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ah) ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.h, double 0.000000e+00)
  %i.al = extractelement <2 x double> %i.ai, i64 1
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double %i.m, double %i.ak)
  %i.an = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.ac, i64 1
  %i.ap = fdiv <2 x double> %i.ao, %i.ag
  %i.aq = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ap) ; 2 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.r, double %i.am)
  %i.at = extractelement <2 x double> %i.aq, i64 1
  %i.au = tail call double @llvm.fmuladd.f64(double %i.at, double %i.w, double %i.as)
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.av = load ptr, ptr %2, align 8, !tbaa !330   ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !335
  %i.ay = sext i32 %i.ax to i64                   ; 3 uses
  %i.az = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !33
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !306 ; 3 uses
  %i.be = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.ay
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !306 ; 3 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.ay
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !33
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !306 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 68652
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !342
  %i.bq = sext i32 %i.bp to i64                   ; 3 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !30 ; 2 uses
  %i.bt = fcmp ogt double %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bq
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !30 ; 2 uses
  %i.bw = fcmp ogt double %i.bv, 0.000000e+00
  br i1 %i.bw, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bq
  %i.by = load double, ptr %i.bx, align 8, !tbaa !30 ; 2 uses
  %i.bz = fcmp ogt double %i.by, 0.000000e+00
  br i1 %i.bz, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ca = load double, ptr %i.bi, align 8, !tbaa !30 ; 2 uses
  %i.cb = load double, ptr %i.bd, align 8, !tbaa !30 ; 3 uses
  %i.cc = fsub double %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !30 ; 2 uses
  %i.ci = load <2 x double>, ptr %i.cd, align 8, !tbaa !30 ; 3 uses
  %i.cj = load <2 x double>, ptr %i.ce, align 8, !tbaa !30 ; 3 uses
  %i.ck = fsub <2 x double> %i.ci, %i.cj          ; 2 uses
  %i.cl = fneg <2 x double> %i.ck                 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.co = load double, ptr %i.cn, align 8, !tbaa !30 ; 3 uses
  %i.cp = extractelement <2 x double> %i.ci, i64 1
  %i.cq = fsub double %i.cp, %i.co
  %i.cr = fsub double %i.ch, %i.co
  %i.cs = load <2 x double>, ptr %i.bn, align 8, !tbaa !30 ; 3 uses
  %i.ct = load double, ptr %i.cf, align 8, !tbaa !30
  %i.cu = load <2 x double>, ptr %1, align 8, !tbaa !30 ; 4 uses
  %i.cv = load double, ptr %i.cm, align 8, !tbaa !30 ; 2 uses
  %i.cw = extractelement <2 x double> %i.cu, i64 0
  %i.cx = fsub double %i.ca, %i.cw
  %i.cy = shufflevector <2 x double> %i.cu, <2 x double> %i.cs, <2 x i32> <i32 0, i32 2>
  %i.cz = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = fsub <2 x double> %i.cy, %i.da          ; 3 uses
  %i.dc = shufflevector <2 x double> %i.cu, <2 x double> %i.cs, <2 x i32> <i32 1, i32 3>
  %i.dd = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fsub <2 x double> %i.dc, %i.dd          ; 4 uses
  %i.df = insertelement <2 x double> poison, double %i.co, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %i.ch, i64 1
  %i.dh = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.di = fsub <2 x double> %i.dg, %i.dh          ; 4 uses
  %i.dj = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dk = fmul <2 x double> %i.de, %i.dj
  %i.dl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.di, <2 x double> %i.dk) ; 2 uses
  %i.dn = fmul <2 x double> %i.db, %i.dj
  %i.do = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.di, <2 x double> %i.dn) ; 2 uses
  %i.dr = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x double> %i.db, %i.dr
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.de, <2 x double> %i.ds) ; 2 uses
  %i.du = fmul <2 x double> %i.dq, %i.dq
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.dm, <2 x double> %i.du)
  %i.dw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.dt, <2 x double> %i.dv)
  %i.dx = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dw)
  %i.dy = fmul <2 x double> %i.dx, splat (double 5.000000e-01) ; 3 uses
  %4 = extractelement <2 x double> %i.dy, i64 1
  %i.dz = extractelement <2 x double> %i.ci, i64 0
  %5 = fsub double %i.dz, %i.cv
  %6 = fsub double %i.ct, %i.cv
  %i.ea = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.eb = insertelement <2 x double> %i.ea, double %i.cq, i64 0
  %i.ec = fneg <2 x double> %i.eb                 ; 2 uses
  %i.ed = insertelement <2 x double> %i.de, double %6, i64 0 ; 2 uses
  %i.ee = fmul <2 x double> %i.ed, %i.ec
  %i.ef = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.eg = insertelement <2 x double> %i.ef, double %5, i64 0 ; 2 uses
  %i.eh = insertelement <2 x double> %i.di, double %i.cr, i64 0 ; 2 uses
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.eh, <2 x double> %i.ee) ; 2 uses
  %i.ej = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = insertelement <2 x double> %i.cu, double %i.cb, i64 1
  %i.el = fsub <2 x double> %i.ej, %i.ek          ; 2 uses
  %i.em = fmul <2 x double> %i.el, %i.ec
  %i.en = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.eo = insertelement <2 x double> %i.en, double %i.cx, i64 0 ; 2 uses
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.eh, <2 x double> %i.em) ; 2 uses
  %i.eq = fneg <2 x double> %i.eg
  %i.er = fmul <2 x double> %i.el, %i.eq
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.ed, <2 x double> %i.er) ; 2 uses
  %i.et = fmul <2 x double> %i.ep, %i.ep
  %i.eu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.ei, <2 x double> %i.et)
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.es, <2 x double> %i.eu)
  %i.ew = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ev)
  %i.ex = fmul <2 x double> %i.ew, splat (double 5.000000e-01)
  %i.ey = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ez = fdiv <2 x double> %i.ex, %i.ey          ; 2 uses
  %i.fa = extractelement <2 x double> %i.ez, i64 1
  %i.fb = fmul double %i.bv, %i.fa
  %i.fc = extractelement <2 x double> %i.ez, i64 0
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.bs, double %i.fb)
  %i.fe = extractelement <2 x double> %i.dy, i64 0
  %i.ff = fdiv double %i.fe, %4
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.by, double %i.fd)
  br label %.loopexit

bb.j:                                             ; preds = %bb.a
  %i.fh = load ptr, ptr %2, align 8, !tbaa !330   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !335
  %i.fk = sext i32 %i.fj to i64                   ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !33
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.fn
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !306 ; 4 uses
  %i.fq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.fk
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !33
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.fs
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !306 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 68652
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !342
  %i.fx = sext i32 %i.fw to i64                   ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.fx
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !30 ; 2 uses
  %i.ga = fcmp ogt double %i.fz, 0.000000e+00
  br i1 %i.ga, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.fx
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !30 ; 2 uses
  %i.gd = fcmp ogt double %i.gc, 0.000000e+00
  br i1 %i.gd, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ge = load double, ptr %i.fu, align 8, !tbaa !30
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !30
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !30
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !30 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.go = load double, ptr %i.gn, align 8, !tbaa !30 ; 2 uses
  %i.gp = load <2 x double>, ptr %i.fp, align 8, !tbaa !30 ; 3 uses
  %i.gq = load double, ptr %i.gh, align 8, !tbaa !30
  %i.gr = load <2 x double>, ptr %1, align 8, !tbaa !30 ; 3 uses
  %i.gs = load double, ptr %i.gm, align 8, !tbaa !30
  %i.gt = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gu = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gv = shufflevector <2 x double> %i.gr, <2 x double> %i.gp, <2 x i32> <i32 0, i32 2>
  %i.gw = fsub <2 x double> %i.gu, %i.gv          ; 2 uses
  %i.gx = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = shufflevector <2 x double> %i.gr, <2 x double> %i.gp, <2 x i32> <i32 1, i32 3>
  %i.ha = fsub <2 x double> %i.gy, %i.gz          ; 2 uses
  %i.hb = fmul <2 x double> %i.ha, %i.ha
  %i.hc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %i.gw, <2 x double> %i.hb)
  %i.hd = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.he = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hf = insertelement <2 x double> poison, double %i.go, i64 0
  %i.hg = insertelement <2 x double> %i.hf, double %i.gl, i64 1
  %i.hh = fsub <2 x double> %i.he, %i.hg          ; 2 uses
  %i.hi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hh, <2 x double> %i.hh, <2 x double> %i.hc)
  %i.hj = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.hi) ; 2 uses
  %foldExtExtBinop102 = fsub <2 x double> %i.gr, %i.gp
  %i.hk = extractelement <2 x double> %foldExtExtBinop102, i64 0 ; 2 uses
  %i.hl = fsub double %i.gs, %i.gq                ; 2 uses
  %i.hm = fmul double %i.hl, %i.hl
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.hk, double %i.hk, double %i.hm)
  %i.ho = fsub double %i.go, %i.gl                ; 2 uses
  %i.hp = tail call double @llvm.fmuladd.f64(double %i.ho, double %i.ho, double %i.hn)
  %sqrt.i88 = tail call noundef double @llvm.sqrt.f64(double %i.hp)
  %i.hq = insertelement <2 x double> %i.hj, double %sqrt.i88, i64 1
  %i.hr = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hs = fdiv <2 x double> %i.hq, %i.hr          ; 2 uses
  %i.ht = extractelement <2 x double> %i.hs, i64 1
  %i.hu = fmul double %i.gc, %i.ht
  %i.hv = extractelement <2 x double> %i.hs, i64 0
  %i.hw = tail call double @llvm.fmuladd.f64(double %i.hv, double %i.fz, double %i.hu)
  br label %.loopexit

bb.m:                                             ; preds = %bb.a
  %i.hx = load ptr, ptr %2, align 8, !tbaa !330
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !335
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !33
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %i.id
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !306
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 68652
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !342
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.ii
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !30 ; 2 uses
  %i.il = fcmp ogt double %i.ik, 0.000000e+00
  br i1 %i.il, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.n, %bb.m, %bb.j, %bb.k, %bb.l, %bb.b, %bb.c, %bb.d, %bb.e
  %.1 = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.b ], [ %i.fg, %bb.i ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.f ], [ %i.hw, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ], [ %i.ik, %bb.n ], [ 0.000000e+00, %bb.m ], [ %i.au, %.loopexit.loopexit ]
  ret double %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN10tetgenmesh18check_encroachmentEPdS0_S0_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !30
  %i.b = load double, ptr %3, align 8, !tbaa !30  ; 2 uses
  %i.c = fsub double %i.a, %i.b
  %i.d = load double, ptr %2, align 8, !tbaa !30
  %i.e = fsub double %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !30 ; 2 uses
  %i.j = fsub double %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !30
  %i.m = fsub double %i.l, %i.i
  %i.n = fmul double %i.j, %i.m
  %i.o = tail call double @llvm.fmuladd.f64(double %i.c, double %i.e, double %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !30 ; 2 uses
  %i.t = fsub double %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !30
  %i.w = fsub double %i.v, %i.s
  %i.x = tail call double @llvm.fmuladd.f64(double %i.t, double %i.w, double %i.o)
  %i.y = fcmp olt double %i.x, 0.000000e+00
  ret i1 %i.y
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN10tetgenmesh17get_subface_ccentEPNS_4faceEPd(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !316    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !306
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !306
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !306
  %i.h = tail call noundef zeroext i1 @_ZN10tetgenmesh12circumsphereEPdS0_S0_S0_S0_S0_(ptr nonnull align 8 poison, ptr noundef %i.c, ptr noundef %i.e, ptr noundef %i.g, ptr noundef null, ptr noundef %2, ptr noundef null)
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 2, ptr %i.i, align 16, !tbaa !33
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN10tetgenmesh17check_enc_subfaceEPNS_4faceEPPdS2_S2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.b = load ptr, ptr %1, align 8, !tbaa !316    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !317  ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !306  ; 3 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !30
  %i.l = load double, ptr %3, align 8, !tbaa !30
  %i.m = fsub double %i.k, %i.l                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !30
  %i.r = fsub double %i.o, %i.q                   ; 2 uses
  %i.s = fmul double %i.r, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !30
  %i.y = fsub double %i.v, %i.x                   ; 2 uses
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.t)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.z) ; 9 uses
  store double %sqrt.i, ptr %4, align 8, !tbaa !30
  %i.aa = load ptr, ptr %2, align 8, !tbaa !131   ; 4 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !30
end_hunk_0
begin_hunk_1_@_ZN10tetgenmesh13repairencsegsEPdii:bb.a
  %i.ic = phi ptr [ %i.hr, %.lr.ph93 ], [ %i.jb, %_ZN10tetgenmesh10memorypool8traverseEv.exit62 ] ; 2 uses
  %i.id = phi ptr [ %i.hy, %.lr.ph93 ], [ %i.ji, %_ZN10tetgenmesh10memorypool8traverseEv.exit62 ] ; 2 uses
  %.092 = phi ptr [ %i.hs, %.lr.ph93 ], [ %i.jd, %_ZN10tetgenmesh10memorypool8traverseEv.exit62 ]
  %i.ie = load ptr, ptr %.092, align 8, !tbaa !316 ; 3 uses
  %.not53 = icmp eq ptr %i.ie, null
  br i1 %.not53, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !306
  %.not54 = icmp eq ptr %i.ig, null
  br i1 %.not54, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ih = load i32, ptr %i.ia, align 8, !tbaa !338
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr [4 x i8], ptr %i.ie, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ij, i64 4      ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !33 ; 2 uses
  %i.im = and i32 %i.il, 4
  %.not64 = icmp eq i32 %i.im, 0
  br i1 %.not64, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.in = and i32 %i.il, -5
  store i32 %i.in, ptr %i.ik, align 4, !tbaa !33
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab, %bb.aa
  %i.io = icmp eq ptr %i.id, %i.hh
  br i1 %i.io, label %._crit_edge94.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ip = load i32, ptr %i.hf, align 4, !tbaa !291 ; 2 uses
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.ag, label %_ZN10tetgenmesh10memorypool8traverseEv.exit62

bb.ag:                                            ; preds = %bb.af
  %i.ir = load ptr, ptr %i.ic, align 8, !tbaa !125 ; 3 uses
  store ptr %i.ir, ptr %i.gs, align 8, !tbaa !289
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = ptrtoint ptr %i.is to i64               ; 2 uses
  %i.iu = load i32, ptr %i.gv, align 8, !tbaa !276
  %i.iv = sext i32 %i.iu to i64                   ; 2 uses
  %i.iw = add i64 %i.iv, %i.it
  %i.ix = urem i64 %i.it, %i.iv
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = load i32, ptr %i.hd, align 4, !tbaa !280
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit62

_ZN10tetgenmesh10memorypool8traverseEv.exit62:    ; preds = %bb.af, %bb.ag
  %i.jb = phi ptr [ %i.ir, %bb.ag ], [ %i.ic, %bb.af ]
  %i.jc = phi i32 [ %i.ja, %bb.ag ], [ %i.ip, %bb.af ]
  %i.jd = phi ptr [ %i.iz, %bb.ag ], [ %i.id, %bb.af ] ; 3 uses
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = load i32, ptr %i.ib, align 4, !tbaa !279
  %i.jg = sext i32 %i.jf to i64
  %i.jh = add i64 %i.jg, %i.je
  %i.ji = inttoptr i64 %i.jh to ptr               ; 2 uses
  store ptr %i.ji, ptr %i.hc, align 8, !tbaa !290
  %i.jj = add nsw i32 %i.jc, -1
  store i32 %i.jj, ptr %i.hf, align 4, !tbaa !291
  %.not50 = icmp eq ptr %i.jd, null
  br i1 %.not50, label %._crit_edge94.loopexit, label %bb.aa, !llvm.loop !1281

._crit_edge94.loopexit:                           ; preds = %bb.ae, %_ZN10tetgenmesh10memorypool8traverseEv.exit62
  %.pre107 = load i32, ptr %i.gv, align 8, !tbaa !276
  %.pre108 = load i32, ptr %i.hd, align 4, !tbaa !280
  %.pre112 = sext i32 %.pre107 to i64             ; 2 uses
  %.pre113 = add i64 %.pre112, %i.gu
  %.pre115 = urem i64 %i.gu, %.pre112
  %.pre117 = sub i64 %.pre113, %.pre115
  %.pre119 = inttoptr i64 %.pre117 to ptr
  br label %._crit_edge94

._crit_edge94:                                    ; preds = %bb.x, %._crit_edge94.loopexit, %_ZN10tetgenmesh10memorypool8traverseEv.exit60
  %.pre-phi120 = phi ptr [ %.pre119, %._crit_edge94.loopexit ], [ %i.hb, %_ZN10tetgenmesh10memorypool8traverseEv.exit60 ], [ %i.hb, %bb.x ]
  %i.jk = phi i32 [ %.pre108, %._crit_edge94.loopexit ], [ %i.he, %_ZN10tetgenmesh10memorypool8traverseEv.exit60 ], [ %i.he, %bb.x ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.go, i8 0, i64 16, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %i.gr, ptr %i.jl, align 8, !tbaa !282
  store ptr %.pre-phi120, ptr %i.hg, align 8, !tbaa !283
  %i.jm = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  store i32 %i.jk, ptr %i.jm, align 8, !tbaa !284
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store ptr null, ptr %i.jn, align 8, !tbaa !285
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge94, %bb.w
  %i.jo = load ptr, ptr %i.h, align 8, !tbaa !1276
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 64
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !288
  %i.jr = icmp sgt i64 %i.jq, 0
  br i1 %i.jr, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.js = load i64, ptr %i.i, align 8, !tbaa !558
  %i.jt = icmp eq i64 %i.js, 0
  br i1 %i.jt, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ju = load ptr, ptr %i.c, align 8, !tbaa !292
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 156
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !258
  %.not52 = icmp eq i32 %i.jw, 0
  br i1 %.not52, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.147) ; 0 uses
  br label %bb.ao

bb.al:                                            ; preds = %bb.ai
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 68912
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !1280 ; 2 uses
  %i.jz = icmp sgt i64 %i.jy, 0
  br i1 %i.jz, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ka = load ptr, ptr %i.c, align 8, !tbaa !292
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 156
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !258
  %.not51 = icmp eq i32 %i.kc, 0
  br i1 %.not51, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.487, i64 noundef %i.jy) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.an, %bb.am, %bb.aj, %bb.ak
  %i.ke = load ptr, ptr %i.h, align 8, !tbaa !1276 ; 8 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, i8 0, i64 16, i1 false)
  %i.kg = load ptr, ptr %i.ke, align 8, !tbaa !281 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store ptr %i.kg, ptr %i.kh, align 8, !tbaa !282
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.kj = ptrtoint ptr %i.ki to i64               ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !276
  %i.km = sext i32 %i.kl to i64                   ; 2 uses
  %i.kn = add i64 %i.km, %i.kj
  %i.ko = urem i64 %i.kj, %i.km
  %i.kp = sub i64 %i.kn, %i.ko
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !283
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ke, i64 60
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !280
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ke, i64 80
  store i32 %i.kt, ptr %i.ku, align 8, !tbaa !284
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  store ptr null, ptr %i.kv, align 8, !tbaa !285
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.kw, align 8, !tbaa !1278
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ah
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN10tetgenmesh13check_subfaceEPNS_4faceEPddS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef captures(none) initializes((8, 12)) %1, ptr nofree readnone captures(none) %2, double noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #24 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !316    ; 8 uses
  %i.c = load i32, ptr @_ZN10tetgenmesh9sorgpivotE, align 16, !tbaa !33
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !306  ; 2 uses
  %i.g = load i32, ptr @_ZN10tetgenmesh10sdestpivotE, align 16, !tbaa !33
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !306  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !30
  %i.o = fsub double %i.l, %i.n                   ; 2 uses
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9sorgpivotE, i64 4), align 4, !tbaa !33
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !306  ; 2 uses
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh10sdestpivotE, i64 4), align 4, !tbaa !33
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !306  ; 2 uses
  %i.x = load <2 x double>, ptr %i.j, align 8, !tbaa !30 ; 2 uses
  %i.y = load <2 x double>, ptr %i.f, align 8, !tbaa !30 ; 2 uses
  %i.z = load <2 x double>, ptr %i.w, align 8, !tbaa !30 ; 2 uses
  %i.aa = load <2 x double>, ptr %i.s, align 8, !tbaa !30 ; 2 uses
  %i.ab = shufflevector <2 x double> %i.x, <2 x double> %i.z, <2 x i32> <i32 0, i32 2>
  %i.ac = shufflevector <2 x double> %i.y, <2 x double> %i.aa, <2 x i32> <i32 0, i32 2>
  %i.ad = fsub <2 x double> %i.ab, %i.ac          ; 2 uses
  %i.ae = shufflevector <2 x double> %i.x, <2 x double> %i.z, <2 x i32> <i32 1, i32 3>
  %i.af = shufflevector <2 x double> %i.y, <2 x double> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.ag = fsub <2 x double> %i.ae, %i.af          ; 2 uses
  %i.ah = fmul <2 x double> %i.ag, %i.ag
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.ad, <2 x double> %i.ah) ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  %5 = tail call double @llvm.fmuladd.f64(double %i.o, double %i.o, double %i.aj)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %5) ; 2 uses
  %6 = fcmp olt double %sqrt.i, 1.000000e+30
  %.133 = select i1 %6, double %sqrt.i, double 1.000000e+30 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.al = load double, ptr %i.ak, align 8, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !30
  store i32 2, ptr %i.a, align 8, !tbaa !317
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9sorgpivotE, i64 8), align 8, !tbaa !33
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !306 ; 3 uses
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh10sdestpivotE, i64 8), align 8, !tbaa !33
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !306 ; 3 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !30
  %i.ax = load double, ptr %i.ar, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !30
  %i.bc = fsub double %i.az, %i.bb                ; 2 uses
  %i.bd = fmul double %i.bc, %i.bc
  %i.be = insertelement <2 x double> poison, double %i.al, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.aw, i64 1
  %i.bg = insertelement <2 x double> poison, double %i.an, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.ax, i64 1
  %i.bi = fsub <2 x double> %i.bf, %i.bh          ; 2 uses
  %i.bj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bk = insertelement <2 x double> %i.bj, double %i.bd, i64 1
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bi, <2 x double> %i.bk) ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0
  %sqrt.i.1 = tail call noundef double @llvm.sqrt.f64(double %i.bm) ; 2 uses
  %i.bn = fcmp olt double %sqrt.i.1, %.133        ; 2 uses
  %.133.1 = select i1 %i.bn, double %sqrt.i.1, double %.133 ; 2 uses
  %.1.1 = zext i1 %i.bn to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.br = load double, ptr %i.bq, align 8, !tbaa !30
  %i.bs = fsub double %i.bp, %i.br                ; 2 uses
  %i.bt = extractelement <2 x double> %i.bl, i64 1
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bs, double %i.bt)
  %sqrt.i.2 = tail call noundef double @llvm.sqrt.f64(double %i.bu) ; 2 uses
  %i.bv = fcmp olt double %sqrt.i.2, %.133.1      ; 2 uses
  %.133.2 = select i1 %i.bv, double %sqrt.i.2, double %.133.1 ; 3 uses
  %.1.2 = select i1 %i.bv, i32 2, i32 %.1.1       ; 2 uses
  store i32 %.1.2, ptr %i.a, align 8, !tbaa !317
  %i.bw = fdiv double %3, %.133.2                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !292
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 312
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !184
  %i.cb = fcmp ogt double %i.bw, %i.ca            ; 2 uses
  br i1 %i.cb, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cc = zext nneg i32 %.1.2 to i64              ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !33
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !306
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.cc
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !33
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !306
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 68668
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !348
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !30 ; 3 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !30 ; 3 uses
  %i.cu = fcmp ogt double %i.cr, 0.000000e+00
  %i.cv = fcmp ogt double %i.cr, %.133.2
  %or.cond = and i1 %i.cu, %i.cv
  %.2 = select i1 %or.cond, double %i.cr, double %.133.2 ; 2 uses
  %i.cw = fcmp ogt double %i.ct, 0.000000e+00
  %i.cx = fcmp ogt double %i.ct, %.2
  %or.cond39 = select i1 %i.cw, i1 %i.cx, i1 false
  %.3 = select i1 %or.cond39, double %i.ct, double %.2
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %.3, ptr %i.cy, align 8, !tbaa !30
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double %i.bw, ptr %i.cz, align 8, !tbaa !30
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 40
  store double 0.000000e+00, ptr %i.da, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.cb
}

; Function Attrs: mustprogress uwtable
define void @_ZN10tetgenmesh15enqueue_subfaceEPNS_4faceEPdS2_S2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 align 2 {
.preheader53:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1275
  %i.c = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.b) ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.c, align 8, !tbaa !460
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !461
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !462
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !463
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  %i.h = load ptr, ptr %1, align 8, !tbaa !316    ; 4 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !316
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !317  ; 2 uses
  store i32 %i.j, ptr %i.g, align 8, !tbaa !317
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !306
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.p, ptr %i.q, align 8, !tbaa !421
  %i.r = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.k
  %i.s = load i32, ptr %i.r, align 4, !tbaa !33
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !306
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %i.v, ptr %i.w, align 8, !tbaa !422
  %i.x = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.k
  %i.y = load i32, ptr %i.x, align 4, !tbaa !33
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !306
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !464
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store ptr %2, ptr %i.ad, align 8, !tbaa !504
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.af = load double, ptr %3, align 8, !tbaa !30
  store double %i.af, ptr %i.ae, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double %i.ah, ptr %i.ai, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store double %i.ak, ptr %i.al, align 8, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store double %i.an, ptr %i.ao, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store double %i.aq, ptr %i.ar, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.at = load double, ptr %i.as, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store double %i.at, ptr %i.au, align 8, !tbaa !30
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.preheader53
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1282
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !393
  store ptr %i.c, ptr %i.av, align 8, !tbaa !1282
  br label %bb.k

bb.b:                                             ; preds = %.preheader53
  %i.ay = load double, ptr %i.ap, align 8, !tbaa !30 ; 2 uses
  %i.az = fcmp ogt double %i.ay, 1.000000e+00
  %i.ba = fdiv double 1.000000e+00, %i.ay
  %.049 = select i1 %i.az, double %i.ba, double 1.000000e+00 ; 2 uses
  %i.bb = fcmp olt double %.049, 1.000000e+00
  br i1 %i.bb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bc = fsub nnan double 1.000000e+00, %.049
  %i.bd = fmul nnan double %i.bc, 6.400000e+01
  %i.be = fptosi double %i.bd to i32
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.be, i32 63)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.048 = phi i32 [ %spec.store.select, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bg = sext i32 %.048 to i64                   ; 6 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !392
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !1283 ; 2 uses
  %i.bm = icmp sgt i32 %.048, %i.bl
  br i1 %i.bm, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bg
  store i32 %i.bl, ptr %i.bo, align 4, !tbaa !33
  store i32 %.048, ptr %i.bk, align 8, !tbaa !1283
  br label %bb.h

.preheader:                                       ; preds = %bb.e, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %i.bg, %bb.e ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv.next
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !392
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.preheader, label %bb.g, !llvm.loop !1284

bb.g:                                             ; preds = %.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv.next ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !33
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bg
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !33
  store i32 %.048, ptr %i.bt, align 4, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %i.c, ptr %i.bh, align 8, !tbaa !392
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bg
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !392
end_hunk_1
begin_hunk_2_@_ZN10tetgenmesh13split_subfaceEPNS_4faceEPdS2_S2_iiPi:bb.a
  %i.et = fmul <2 x double> %i.es, %i.es
  %i.eu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.ep, <2 x double> %i.et)
  %i.ev = load <2 x double>, ptr %i.ee, align 8, !tbaa !30 ; 3 uses
  %i.ew = load <2 x double>, ptr %i.ei, align 8, !tbaa !30 ; 3 uses
  %i.ex = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ey = insertelement <2 x double> %i.ex, double %i.eh, i64 1
  %i.ez = insertelement <2 x double> %i.ew, double %i.eh, i64 0
  %i.fa = fsub <2 x double> %i.ey, %i.ez          ; 4 uses
  %i.fb = shufflevector <2 x double> %i.em, <2 x double> %i.ew, <2 x i32> <i32 0, i32 2>
  %i.fc = shufflevector <2 x double> %i.ej, <2 x double> %i.ev, <2 x i32> <i32 0, i32 2>
  %i.fd = fsub <2 x double> %i.fb, %i.fc          ; 5 uses
  %i.fe = fsub <2 x double> %i.ew, %i.ev          ; 3 uses
  %i.ff = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.fa, <2 x double> %i.eu) ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.fd, %i.fd
  %i.fg = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.fh = extractelement <2 x double> %i.fd, i64 0 ; 2 uses
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.fh, double %i.fg)
  %i.fj = extractelement <2 x double> %i.fe, i64 1 ; 2 uses
  %i.fk = tail call noundef double @llvm.fmuladd.f64(double %i.fj, double %i.fj, double %i.fi)
  %i.fl = extractelement <2 x double> %i.ff, i64 0 ; 2 uses
  %i.fm = extractelement <2 x double> %i.ff, i64 1 ; 2 uses
  %i.fn = fcmp olt double %i.fl, %i.fm            ; 2 uses
  %..i.i = select i1 %i.fn, double %i.fm, double %i.fl
  %i.fo = fcmp olt double %..i.i, %i.fk
  %i.fp = insertelement <2 x i1> poison, i1 %i.fn, i64 0
  %i.fq = shufflevector <2 x i1> %i.fp, <2 x i1> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fr = shufflevector <2 x double> %i.es, <2 x double> %i.fa, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fs = select <2 x i1> %i.fq, <2 x double> %i.fr, <2 x double> %i.fe
  %i.ft = shufflevector <2 x double> %i.ep, <2 x double> %i.es, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fu = select <2 x i1> %i.fq, <2 x double> %i.ft, <2 x double> %i.fd
  %i.fv = insertelement <2 x i1> poison, i1 %i.fo, i64 0
  %i.fw = shufflevector <2 x i1> %i.fv, <2 x i1> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fx = shufflevector <2 x double> %i.es, <2 x double> %i.fa, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fy = select <2 x i1> %i.fw, <2 x double> %i.fx, <2 x double> %i.fs ; 2 uses
  %i.fz = select <2 x i1> %i.fq, <2 x double> %i.fe, <2 x double> %i.fx
  %i.ga = shufflevector <2 x double> %i.ep, <2 x double> %i.es, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gb = select <2 x i1> %i.fq, <2 x double> %i.fd, <2 x double> %i.ga
  %i.gc = select <2 x i1> %i.fw, <2 x double> %i.fr, <2 x double> %i.fz
  %i.gd = select <2 x i1> %i.fw, <2 x double> %i.ft, <2 x double> %i.gb ; 2 uses
  %i.ge = select <2 x i1> %i.fw, <2 x double> %i.ga, <2 x double> %i.fu ; 2 uses
  %i.gf = fneg <2 x double> %i.gc                 ; 2 uses
  %shift = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop234 = fmul <2 x double> %i.ge, %shift
  %i.gg = extractelement <2 x double> %foldExtExtBinop234, i64 0
  %i.gh = fmul <2 x double> %i.ge, %i.gf
  %i.gi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.fy, <2 x double> %i.gh) ; 3 uses
  %i.gj = extractelement <2 x double> %i.gi, i64 0 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gl = extractelement <2 x double> %i.gi, i64 1 ; 2 uses
  %i.gm = fneg <2 x double> %i.gi                 ; 2 uses
  %i.gn = extractelement <2 x double> %i.gd, i64 0
  %i.go = extractelement <2 x double> %i.fy, i64 1
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.go, double %i.gg) ; 3 uses
  %i.gq = fmul double %i.gp, %i.gp
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.gl, double %i.gl, double %i.gq)
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.gj, double %i.gj, double %i.gr)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.gs) ; 2 uses
  %i.gt = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gu = insertelement <2 x double> %i.gt, double %i.gp, i64 1
  %i.gv = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.gw = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = fdiv <2 x double> %i.gu, %i.gw          ; 3 uses
  %i.gy = extractelement <2 x double> %i.gm, i64 0
  %i.gz = fdiv double %i.gy, %sqrt.i              ; 2 uses
  %i.ha = load <2 x double>, ptr %2, align 8, !tbaa !30 ; 2 uses
  %i.hb = insertelement <2 x double> %i.ek, double %i.el, i64 1
  %i.hc = fsub <2 x double> %i.ha, %i.hb          ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !30 ; 2 uses
  %i.hf = fsub double %i.he, %i.eh
  %foldExtExtBinop236 = fmul <2 x double> %i.hc, %i.gx
  %i.hg = extractelement <2 x double> %foldExtExtBinop236, i64 1
  %i.hh = extractelement <2 x double> %i.gx, i64 0
  %i.hi = extractelement <2 x double> %i.hc, i64 0
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.hh, double %i.hi, double %i.hg)
  %i.hk = tail call noundef double @llvm.fmuladd.f64(double %i.gz, double %i.hf, double %i.hj)
  %i.hl = fneg double %i.hk                       ; 2 uses
  %i.hm = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %i.gx, <2 x double> %i.ha) ; 3 uses
  %i.hp = tail call double @llvm.fmuladd.f64(double %i.hl, double %i.gz, double %i.he) ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !305
  %i.hs = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.hr) ; 12 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 68640
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !340 ; 2 uses
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  %scevgep.i = getelementptr i8, ptr %i.hs, i64 24
  %i.hw = zext nneg i32 %i.hu to i64
  %i.hx = shl nuw nsw i64 %i.hw, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.hx, i1 false), !tbaa !30
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %bb.r
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 68648
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !341 ; 2 uses
  %i.ia = icmp sgt i32 %i.hz, 0
  br i1 %i.ia, label %.lr.ph23.i, label %._crit_edge.i

.lr.ph23.i:                                       ; preds = %.preheader.i
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 68652
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !342
  %i.id = sext i32 %i.ic to i64
  %i.ie = shl nsw i64 %i.id, 3
  %scevgep25.i = getelementptr i8, ptr %i.hs, i64 %i.ie
  %i.if = zext nneg i32 %i.hz to i64
  %i.ig = shl nuw nsw i64 %i.if, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep25.i, i8 0, i64 %i.ig, i1 false), !tbaa !30
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph23.i, %.preheader.i
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 68660
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !343
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.ij ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ik, i8 0, i64 16, i1 false)
  %i.il = load ptr, ptr %i.k, align 8, !tbaa !292 ; 3 uses
  %i.im = load i32, ptr %i.il, align 8, !tbaa !163
  %.not.i = icmp eq i32 %i.im, 0
  br i1 %.not.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.io = load i32, ptr %i.in, align 8, !tbaa !177
  %.not17.i = icmp eq i32 %i.io, 0
  br i1 %.not17.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i
  %i.ip = getelementptr i8, ptr %i.ik, i64 16
  store ptr null, ptr %i.ip, align 8, !tbaa !306
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 44
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !204
  %.not18.i = icmp eq i32 %i.ir, 0
  br i1 %.not18.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !344
  %.not19.i = icmp eq ptr %i.it, null
  br i1 %.not19.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.iu = getelementptr i8, ptr %i.ik, i64 24
  store ptr null, ptr %i.iu, align 8, !tbaa !306
  br label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit

_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit:  ; preds = %bb.s, %bb.t, %bb.u, %bb.v
  %i.iv = load ptr, ptr %i.hq, align 8, !tbaa !305
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 64
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !288
  %i.iy = trunc i64 %i.ix to i32
  %i.iz = load ptr, ptr %0, align 8, !tbaa !308
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !26
  %.not20.i = icmp eq i32 %i.ja, 0
  %.neg.i = sext i1 %.not20.i to i32
  %i.jb = add i32 %.neg.i, %i.iy
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 3 uses
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !312
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.je
  store i32 %i.jb, ptr %i.jf, align 4, !tbaa !33
  %i.jg = load i32, ptr %i.jc, align 8, !tbaa !312
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr [4 x i8], ptr %i.hs, i64 %i.jh
  %i.jj = getelementptr i8, ptr %i.ji, i64 4
  store i32 0, ptr %i.jj, align 4, !tbaa !33
  %i.jk = load i32, ptr %i.jc, align 8, !tbaa !312
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr [4 x i8], ptr %i.hs, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.jm, i64 4      ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !33
  %i.jp = and i32 %i.jo, 255
  %i.jq = or disjoint i32 %i.jp, 1536
  store i32 %i.jq, ptr %i.jn, align 4, !tbaa !33
  store <2 x double> %i.ho, ptr %i.hs, align 8, !tbaa !30
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 2 uses
  store double %i.hp, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !30
  %i.jr = load double, ptr %2, align 8, !tbaa !30
  %i.js = load double, ptr %i.gk, align 8, !tbaa !30
  %i.jt = load double, ptr %i.hd, align 8, !tbaa !30
  %i.ju = load ptr, ptr %i.dy, align 8, !tbaa !131 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !30
  %i.jx = fsub double %i.hp, %i.jw                ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.0163.0.copyload, i64 32
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !131 ; 2 uses
  %i.ka = load <2 x double>, ptr %i.ju, align 8, !tbaa !30 ; 2 uses
  %i.kb = load <2 x double>, ptr %i.jz, align 8, !tbaa !30 ; 2 uses
  %i.kc = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kd = shufflevector <2 x double> %i.ka, <2 x double> %i.kb, <2 x i32> <i32 0, i32 2>
  %i.ke = fsub <2 x double> %i.kc, %i.kd          ; 2 uses
  %i.kf = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.kg = shufflevector <2 x double> %i.ka, <2 x double> %i.kb, <2 x i32> <i32 1, i32 3>
  %i.kh = fsub <2 x double> %i.kf, %i.kg          ; 2 uses
  %i.ki = fmul <2 x double> %i.kh, %i.kh
  %i.kj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> %i.ke, <2 x double> %i.ki) ; 2 uses
  %i.kk = extractelement <2 x double> %i.kj, i64 0
  %12 = tail call double @llvm.fmuladd.f64(double %i.jx, double %i.jx, double %i.kk)
  %sqrt.i148 = tail call noundef double @llvm.sqrt.f64(double %12) ; 2 uses
  %13 = fcmp olt double %sqrt.i148, 1.000000e+30
  %.1 = select i1 %13, double %sqrt.i148, double 1.000000e+30 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.km = load double, ptr %i.kl, align 8, !tbaa !30
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0163.0.copyload, i64 40
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !131 ; 3 uses
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !30
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !30
  %i.ks = insertelement <2 x double> %i.kc, double %i.hp, i64 0 ; 2 uses
  %i.kt = insertelement <2 x double> poison, double %i.km, i64 0
  %i.ku = insertelement <2 x double> %i.kt, double %i.kp, i64 1
  %i.kv = fsub <2 x double> %i.ks, %i.ku          ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !30
  %i.ky = insertelement <2 x double> poison, double %i.kr, i64 0
  %i.kz = insertelement <2 x double> %i.ky, double %i.js, i64 1
  %i.la = fsub <2 x double> %i.kf, %i.kz          ; 2 uses
  %i.lb = fmul <2 x double> %i.la, %i.la          ; 2 uses
  %i.lc = shufflevector <2 x double> %i.kj, <2 x double> %i.lb, <2 x i32> <i32 1, i32 2>
  %i.ld = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kv, <2 x double> %i.kv, <2 x double> %i.lc) ; 2 uses
  %i.le = extractelement <2 x double> %i.ld, i64 0
  %sqrt.i148.1 = tail call noundef double @llvm.sqrt.f64(double %i.le) ; 2 uses
  %i.lf = fcmp olt double %sqrt.i148.1, %.1
  %.1.1 = select i1 %i.lf, double %sqrt.i148.1, double %.1 ; 2 uses
  %i.lg = insertelement <2 x double> poison, double %i.kx, i64 0
  %i.lh = insertelement <2 x double> %i.lg, double %i.jr, i64 1
  %i.li = fsub <2 x double> %i.ks, %i.lh          ; 2 uses
  %i.lj = shufflevector <2 x double> %i.ld, <2 x double> %i.lb, <2 x i32> <i32 1, i32 3>
  %i.lk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.li, <2 x double> %i.li, <2 x double> %i.lj) ; 2 uses
  %i.ll = fsub double %i.hp, %i.jt                ; 2 uses
  %i.lm = extractelement <2 x double> %i.lk, i64 1
  %i.ln = tail call double @llvm.fmuladd.f64(double %i.ll, double %i.ll, double %i.lm)
  %i.lo = insertelement <2 x double> %i.lk, double %i.ln, i64 1
  %i.lp = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.lo) ; 2 uses
  %i.lq = extractelement <2 x double> %i.lp, i64 0 ; 2 uses
  %i.lr = fcmp olt double %i.lq, %.1.1
  %.1.2 = select i1 %i.lr, double %i.lq, double %.1.1
  %i.ls = extractelement <2 x double> %i.lp, i64 1
  %i.lt = fcmp olt double %.1.2, %i.ls
  br i1 %i.lt, label %.preheader192.preheader, label %.loopexit191

.preheader192.preheader:                          ; preds = %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit
  %.sroa.4.0..sroa_idx211 = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.lu = load double, ptr %3, align 8, !tbaa !30
  store double %i.lu, ptr %i.hs, align 8, !tbaa !30
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !30
  store double %i.lw, ptr %.sroa.4.0..sroa_idx211, align 8, !tbaa !30
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !30
  store double %i.ly, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !30
  br label %.loopexit191

.thread180:                                       ; preds = %bb.p, %bb.q
  %i.lz = phi i1 [ %i.dw, %bb.q ], [ false, %bb.p ]
  %i.ma = phi i1 [ %i.dx, %bb.q ], [ false, %bb.p ]
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !305
  %i.md = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.mc) ; 10 uses
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 68640
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !340 ; 2 uses
  %i.mg = icmp sgt i32 %i.mf, 0
  br i1 %i.mg, label %.lr.ph.preheader.i159, label %.preheader.i149

.lr.ph.preheader.i159:                            ; preds = %.thread180
  %scevgep.i160 = getelementptr i8, ptr %i.md, i64 24
  %i.mh = zext nneg i32 %i.mf to i64
  %i.mi = shl nuw nsw i64 %i.mh, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i160, i8 0, i64 %i.mi, i1 false), !tbaa !30
  br label %.preheader.i149

.preheader.i149:                                  ; preds = %.lr.ph.preheader.i159, %.thread180
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 68648
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !341 ; 2 uses
  %i.ml = icmp sgt i32 %i.mk, 0
  br i1 %i.ml, label %.lr.ph23.i157, label %._crit_edge.i150

.lr.ph23.i157:                                    ; preds = %.preheader.i149
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 68652
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !342
  %i.mo = sext i32 %i.mn to i64
  %i.mp = shl nsw i64 %i.mo, 3
  %scevgep25.i158 = getelementptr i8, ptr %i.md, i64 %i.mp
  %i.mq = zext nneg i32 %i.mk to i64
  %i.mr = shl nuw nsw i64 %i.mq, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep25.i158, i8 0, i64 %i.mr, i1 false), !tbaa !30
  br label %._crit_edge.i150

._crit_edge.i150:                                 ; preds = %.lr.ph23.i157, %.preheader.i149
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 68660
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !343
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.mu ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mv, i8 0, i64 16, i1 false)
  %i.mw = load ptr, ptr %i.k, align 8, !tbaa !292 ; 3 uses
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !163
  %.not.i151 = icmp eq i32 %i.mx, 0
  br i1 %.not.i151, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i150
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !177
  %.not17.i156 = icmp eq i32 %i.mz, 0
  br i1 %.not17.i156, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161, label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i150
  %i.na = getelementptr i8, ptr %i.mv, i64 16
  store ptr null, ptr %i.na, align 8, !tbaa !306
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 44
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !204
  %.not18.i152 = icmp eq i32 %i.nc, 0
  br i1 %.not18.i152, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !344
  %.not19.i153 = icmp eq ptr %i.ne, null
  br i1 %.not19.i153, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.nf = getelementptr i8, ptr %i.mv, i64 24
  store ptr null, ptr %i.nf, align 8, !tbaa !306
  br label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161

_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161: ; preds = %bb.w, %bb.x, %bb.y, %bb.z
  %i.ng = load ptr, ptr %i.mb, align 8, !tbaa !305
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 64
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !288
  %i.nj = trunc i64 %i.ni to i32
  %i.nk = load ptr, ptr %0, align 8, !tbaa !308
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !26
  %.not20.i154 = icmp eq i32 %i.nl, 0
  %.neg.i155 = sext i1 %.not20.i154 to i32
  %i.nm = add i32 %.neg.i155, %i.nj
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 3 uses
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !312
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.md, i64 %i.np
  store i32 %i.nm, ptr %i.nq, align 4, !tbaa !33
  %i.nr = load i32, ptr %i.nn, align 8, !tbaa !312
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr [4 x i8], ptr %i.md, i64 %i.ns
  %i.nu = getelementptr i8, ptr %i.nt, i64 4
  store i32 0, ptr %i.nu, align 4, !tbaa !33
  %i.nv = load i32, ptr %i.nn, align 8, !tbaa !312
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr [4 x i8], ptr %i.md, i64 %i.nw
  %i.ny = getelementptr i8, ptr %i.nx, i64 4      ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !33
  %i.oa = and i32 %i.nz, 255
  %i.ob = or disjoint i32 %i.oa, 1536
  store i32 %i.ob, ptr %i.ny, align 4, !tbaa !33
  %i.oc = load double, ptr %3, align 8, !tbaa !30
  store double %i.oc, ptr %i.md, align 8, !tbaa !30
  %i.od = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oe = load double, ptr %i.od, align 8, !tbaa !30
  %i.of = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store double %i.oe, ptr %i.of, align 8, !tbaa !30
  %i.og = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.oh = load double, ptr %i.og, align 8, !tbaa !30
  %i.oi = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store double %i.oh, ptr %i.oi, align 8, !tbaa !30
  br label %.loopexit191

.loopexit191:                                     ; preds = %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, %.preheader192.preheader, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161
  %i.oj = phi i1 [ %i.lz, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161 ], [ %i.dw, %.preheader192.preheader ], [ %i.dw, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit ]
  %i.ok = phi i1 [ %i.ma, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161 ], [ %i.dx, %.preheader192.preheader ], [ %i.dx, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit ] ; 2 uses
  %.0178 = phi ptr [ %i.md, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161 ], [ %i.hs, %.preheader192.preheader ], [ %i.hs, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit ] ; 17 uses
  %i.ol = load ptr, ptr %1, align 8, !tbaa !316   ; 2 uses
  %i.om = ptrtoint ptr %i.ol to i64
  %i.on = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !317 ; 2 uses
  %i.oo = sext i32 %i.on to i64
  %i.op = or i64 %i.oo, %i.om
  %i.oq = inttoptr i64 %i.op to ptr
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 68660 ; 2 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !343
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr [8 x i8], ptr %.0178, i64 %i.ot
  %i.ov = getelementptr i8, ptr %i.ou, i64 16
  store ptr %i.oq, ptr %i.ov, align 8, !tbaa !306
  store ptr %i.ol, ptr %9, align 8, !tbaa !316
  store i32 %i.on, ptr %i.c, align 8, !tbaa !317
  %i.ow = call noundef i32 @_ZN10tetgenmesh17locate_on_surfaceEPdPNS_4faceE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %.0178, ptr noundef nonnull %9) ; 3 uses
  store i32 %i.ow, ptr %10, align 8, !tbaa !475
  switch i32 %i.ow, label %bb.ad [
    i32 7, label %bb.aa
    i32 5, label %bb.ab
    i32 16, label %bb.ac
  ]

bb.aa:                                            ; preds = %.loopexit191
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 68664
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !312
  %i.oz = sext i32 %i.oy to i64
  %i.pa = getelementptr [4 x i8], ptr %.0178, i64 %i.oz
  %i.pb = getelementptr i8, ptr %i.pa, i64 4      ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !33
  %i.pd = and i32 %i.pc, 255
  %i.pe = or disjoint i32 %i.pd, 2304
  store i32 %i.pe, ptr %i.pb, align 4, !tbaa !33
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !305 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 24 ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !285
  store ptr %i.pi, ptr %.0178, align 8, !tbaa !125
  store ptr %.0178, ptr %i.ph, align 8, !tbaa !285
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 64 ; 2 uses
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !288
  %i.pl = add nsw i64 %i.pk, -1
  store i64 %i.pl, ptr %i.pj, align 8, !tbaa !288
  br label %bb.bp

bb.ab:                                            ; preds = %.loopexit191
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 68664
  %i.pn = load i32, ptr %i.pm, align 8, !tbaa !312
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr [4 x i8], ptr %.0178, i64 %i.po
  %i.pq = getelementptr i8, ptr %i.pp, i64 4      ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !33
  %i.ps = and i32 %i.pr, 255
  %i.pt = or disjoint i32 %i.ps, 2304
  store i32 %i.pt, ptr %i.pq, align 4, !tbaa !33
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !305 ; 2 uses
end_hunk_2
