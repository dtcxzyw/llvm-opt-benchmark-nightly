inline.NumInlined: 17
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Compute_Branch:bb.a
  %i.ej = fadd double %i.ac, 0.000000e+00
  %i.ek = fadd double %i.ej, %i.al
  %i.el = fadd double %i.ek, %i.au
  %i.em = fadd double %i.el, %i.bd
  %i.en = fadd double %i.em, %i.bm
  %i.eo = fadd double %i.en, %i.bv
  %i.ep = fadd double %i.eo, %i.ce
  %i.eq = fadd double %i.ep, %i.cn
  %i.er = fadd double %i.eq, %i.cw
  %i.es = fadd double %i.er, %i.df
  %i.et = fadd double %i.es, %i.do
  store double %i.dx, ptr %i.dq, align 8, !tbaa !29
  store double %i.dw, ptr %i.ds, align 8, !tbaa !31
  %i.eu = fadd double %i.et, %i.dx                ; 2 uses
  %i.ev = fadd double %i.ei, %i.dw                ; 2 uses
  %i.ew = fadd double %.sroa.03.0, %i.eu
  %i.ex = fadd double %.sroa.44.0, %i.ev
  %.sink94 = select i1 %.not, double %i.eu, double %i.ew ; 3 uses
  %.sink = select i1 %.not, double %i.ev, double %i.ex ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ez = fneg double %.sink94                    ; 2 uses
  %i.fa = load <2 x double>, ptr %i.b, align 8, !tbaa !18 ; 4 uses
  %i.fb = extractelement <2 x double> %i.fa, i64 1 ; 5 uses
  %i.fc = fmul double %i.fb, %i.fb
  %i.fd = extractelement <2 x double> %i.fa, i64 0 ; 6 uses
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.fd, double %i.fd, double %i.fc) ; 2 uses
  %i.ff = fmul <2 x double> %i.fa, splat (double 2.000000e+00) ; 3 uses
  %i.fg = extractelement <2 x double> %i.ff, i64 0
  %i.fh = fmul double %i.fg, %i.fb
  %foldExtExtBinop = fmul <2 x double> %i.fa, %i.ff
  %i.fi = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.fj = fmul double %i.fi, %i.ez
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fh, double %.sink, double %i.fj)
  %i.fl = fsub double %i.fk, %i.fd                ; 3 uses
  %i.fm = fmul double %i.fb, %i.ez
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fd, double %.sink, double %i.fm) ; 2 uses
  %i.fo = fmul double %i.fd, %.sink94
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fn, double %i.fn, double %i.fo)
  %i.fq = fneg double %i.fl
  %i.fr = fmul double %i.fe, 4.000000e+00
  %i.fs = fneg double %i.fp
  %i.ft = fmul double %i.fr, %i.fs
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.fl, double %i.ft)
  %i.fv = tail call double @sqrt(double noundef %i.fu) #10, !tbaa !4
  %i.fw = fsub double %i.fq, %i.fv
  %i.fx = fmul double %i.fe, 2.000000e+00
  %i.fy = fdiv double %i.fw, %i.fx                ; 4 uses
  %i.fz = fsub double %i.fy, %.sink94
  %i.ga = fmul double %i.fb, %i.fz
  %i.gb = fdiv double %i.ga, %i.fd
  %i.gc = fadd double %.sink, %i.gb               ; 3 uses
  store double %i.gc, ptr %i.ey, align 8, !tbaa !32
  store double %i.fy, ptr %0, align 8, !tbaa !33
  %i.gd = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.ge = insertelement <2 x double> %i.gd, double %i.gc, i64 1
  %i.gf = fmul <2 x double> %i.ff, %i.ge          ; 3 uses
  %i.gg = extractelement <2 x double> %i.gf, i64 0
  %i.gh = fsub double 1.000000e+00, %i.gg
  %i.gi = extractelement <2 x double> %i.gf, i64 1
  %i.gj = fsub double %i.gh, %i.gi
  %i.gk = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gm = fdiv <2 x double> %i.gf, %i.gl
  store <2 x double> %i.gm, ptr %i.a, align 8, !tbaa !18
  %.fca.0.insert = insertvalue { double, double } poison, double %i.fy, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.gc, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @Compute_Leaf(ptr nofree noundef captures(none) %0, double noundef %1, double noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !29
  store double %i.a, ptr @P, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !31
  store double %i.c, ptr @Q, align 8, !tbaa !18
  tail call void @optimize_node(double noundef %1, double noundef %2)
  %i.d = load double, ptr @P, align 8, !tbaa !18  ; 2 uses
  %i.e = fcmp olt double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load double, ptr @Q, align 8, !tbaa !18
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr @P, align 8, !tbaa !18
  store double 0.000000e+00, ptr @Q, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.f = phi double [ 0.000000e+00, %bb.b ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.g = phi double [ 0.000000e+00, %bb.b ], [ %i.d, %._crit_edge ] ; 2 uses
  store double %i.g, ptr %0, align 8, !tbaa !29
  store double %i.f, ptr %i.b, align 8, !tbaa !31
  %.fca.0.insert = insertvalue { double, double } poison, double %i.g, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.f, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @optimize_node(double noundef %0, double noundef %1) local_unnamed_addr #4 {
bb.a:
  %P.promoted = load double, ptr @P, align 8, !tbaa !18
  %Q.promoted = load double, ptr @Q, align 8, !tbaa !18
  %i.a = insertelement <2 x double> poison, double %P.promoted, i64 0
  %i.b = insertelement <2 x double> %i.a, double %Q.promoted, i64 1
  %i.c = insertelement <2 x double> poison, double %0, i64 0
  %i.d = insertelement <2 x double> %i.c, double %1, i64 1 ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.e = phi <2 x double> [ %i.b, %bb.a ], [ %i.dp, %.critedge.backedge ] ; 4 uses
  %i.f = extractelement <2 x double> %i.e, i64 0
  %i.g = extractelement <2 x double> %i.e, i64 1
  %i.h = tail call double @llvm.fmuladd.f64(double %i.g, double -5.000000e+00, double %i.f) ; 2 uses
  %i.i = tail call double @llvm.fabs.f64(double %i.h)
  %i.j = fcmp ogt double %i.i, f0x3EB0C6F7A0B5ED8D
  %i.k = fdiv double %i.h, f0xC01465655F122FF6
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> <double f0x3FC91A556151761C, double f0xBFEF60EAB9A5D3A3>, <2 x double> %i.e)
  %i.o = select i1 %i.j, <2 x double> %i.n, <2 x double> %i.e ; 6 uses
  %foldExtExtBinop = fmul <2 x double> %i.o, %i.o
  %i.p = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.q = extractelement <2 x double> %i.o, i64 0  ; 2 uses
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.p)
  %i.s = fadd double %i.r, -8.000000e-01          ; 2 uses
  %i.t = fcmp ogt double %i.s, f0x3EB0C6F7A0B5ED8D
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.critedge
  %i.u = fmul <2 x double> %i.o, splat (double 2.000000e+00) ; 3 uses
  %i.v = extractelement <2 x double> %i.u, i64 0  ; 2 uses
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.v, double 0.000000e+00)
  %i.x = extractelement <2 x double> %i.u, i64 1  ; 2 uses
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.w)
  %sqrt59 = tail call double @llvm.sqrt.f64(double %i.y) ; 2 uses
  %i.z = insertelement <2 x double> poison, double %sqrt59, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fdiv <2 x double> %i.u, %i.aa           ; 3 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double f0x3FC91A556151761C, double 0.000000e+00)
  %i.ae = extractelement <2 x double> %i.ab, i64 1
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double f0xBFEF60EAB9A5D3A3, double %i.ad) ; 2 uses
  %i.ag = fneg double %i.af                       ; 2 uses
  %i.ah = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> <double f0x3FC91A556151761C, double f0xBFEF60EAB9A5D3A3>, <2 x double> %i.ab) ; 3 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0 ; 2 uses
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double 0.000000e+00)
  %i.am = extractelement <2 x double> %i.aj, i64 1 ; 2 uses
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %i.al)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.an)
  %i.ao = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fdiv <2 x double> %i.aj, %i.ap
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.af, double 1.000000e+00) ; 2 uses
  %i.as = fcmp olt double %i.ar, 0.000000e+00
  br i1 %i.as, label %make_orthogonal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = tail call double @sqrt(double noundef %i.ar) #10, !tbaa !4
  br label %make_orthogonal.exit

make_orthogonal.exit:                             ; preds = %bb.b, %bb.c
  %.031.i = phi double [ %i.at, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.au = fmul double %sqrt59, %.031.i
  %i.av = fneg double %i.s
  %i.aw = fdiv double %i.av, %i.au
  %i.ax = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.aq, <2 x double> %i.o)
  br label %bb.d

bb.d:                                             ; preds = %make_orthogonal.exit, %.critedge
  %i.ba = phi <2 x double> [ %i.az, %make_orthogonal.exit ], [ %i.o, %.critedge ] ; 6 uses
  %i.bb = fadd <2 x double> %i.ba, splat (double 1.000000e+00)
  %i.bc = fdiv <2 x double> splat (double 1.000000e+00), %i.bb ; 3 uses
  %i.bd = fsub <2 x double> %i.bc, %i.d           ; 7 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0 ; 2 uses
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.be, double %i.be, double 0.000000e+00)
  %foldExtExtBinop87 = fmul <2 x double> %i.bd, %i.bd
  %i.bg = shufflevector <2 x double> %foldExtExtBinop87, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bh = insertelement <2 x double> %i.bg, double %i.bf, i64 1
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bd, <2 x double> %i.bh)
  %i.bj = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bi) ; 3 uses
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bl = fdiv <2 x double> %i.bd, %i.bk          ; 4 uses
  %i.bm = fneg <2 x double> %i.bc
  %i.bn = fmul <2 x double> %i.bc, %i.bm
  %i.bo = fmul <2 x double> %i.bn, %i.bd
  %i.bp = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fdiv <2 x double> %i.bo, %i.bp          ; 2 uses
  %i.br = extractelement <2 x double> %i.bl, i64 0
  %i.bs = extractelement <2 x double> %i.bq, i64 0
  %2 = tail call double @llvm.fmuladd.f64(double %i.br, double %i.bs, double 0.000000e+00)
  %3 = extractelement <2 x double> %i.bl, i64 1
  %i.bt = insertelement <2 x double> %i.bq, double f0x3FC91A556151761C, i64 0
  %i.bu = insertelement <2 x double> <double 0.000000e+00, double poison>, double %2, i64 1
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.bt, <2 x double> %i.bu) ; 2 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 1
  %i.bx = tail call double @llvm.fabs.f64(double %i.bw)
  %i.by = extractelement <2 x double> %i.bj, i64 1
  %i.bz = fdiv double %i.by, %i.bx
  %i.ca = extractelement <2 x double> %i.bv, i64 0
  %i.cb = tail call double @llvm.fmuladd.f64(double %3, double f0xBFEF60EAB9A5D3A3, double %i.ca) ; 2 uses
  %i.cc = fneg double %i.cb                       ; 2 uses
  %i.cd = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> <double f0x3FC91A556151761C, double f0xBFEF60EAB9A5D3A3>, <2 x double> %i.bl) ; 3 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 0 ; 2 uses
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cg, double 0.000000e+00)
  %i.ci = extractelement <2 x double> %i.cf, i64 1 ; 2 uses
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.ci, double %i.ch)
  %sqrt61 = tail call double @llvm.sqrt.f64(double %i.cj)
  %i.ck = insertelement <2 x double> poison, double %sqrt61, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fdiv <2 x double> %i.cf, %i.cl          ; 3 uses
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cb, double 1.000000e+00) ; 2 uses
  %i.co = fcmp olt double %i.cn, 0.000000e+00
  br i1 %i.co, label %make_orthogonal.exit50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cp = tail call double @sqrt(double noundef %i.cn) #10, !tbaa !4
  br label %make_orthogonal.exit50

make_orthogonal.exit50:                           ; preds = %bb.d, %bb.e
  %.031.i49 = phi double [ %i.cp, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.cq = fmul <2 x double> %i.ba, splat (double 2.000000e+00) ; 3 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 0 ; 2 uses
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cr, double 0.000000e+00)
  %i.ct = extractelement <2 x double> %i.cq, i64 1 ; 2 uses
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double %i.cs)
  %sqrt62 = tail call double @llvm.sqrt.f64(double %i.cu)
  %i.cv = insertelement <2 x double> poison, double %sqrt62, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fdiv <2 x double> %i.cq, %i.cw          ; 2 uses
  %i.cy = extractelement <2 x double> %i.cm, i64 0
  %i.cz = extractelement <2 x double> %i.cx, i64 0
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.cz, double 0.000000e+00)
  %i.db = extractelement <2 x double> %i.cm, i64 1
  %i.dc = extractelement <2 x double> %i.cx, i64 1
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.db, double %i.dc, double %i.da) ; 2 uses
  %i.de = fmul double %i.bz, %.031.i49            ; 3 uses
  %i.df = fcmp ogt double %i.dd, 0.000000e+00
  br i1 %i.df, label %bb.f, label %bb.h

bb.f:                                             ; preds = %make_orthogonal.exit50
  %foldExtExtBinop89 = fmul <2 x double> %i.ba, %i.ba
  %i.dg = extractelement <2 x double> %foldExtExtBinop89, i64 1
  %i.dh = extractelement <2 x double> %i.ba, i64 0 ; 2 uses
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dh, double %i.dg)
  %i.dj = fadd double %i.di, -8.000000e-01
  %i.dk = fneg double %i.dj
  %i.dl = fdiv double %i.dk, %i.dd                ; 2 uses
  %i.dm = fcmp ogt double %i.de, %i.dl
  br i1 %i.dm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %make_orthogonal.exit50
  %.044 = phi double [ %i.dl, %bb.g ], [ %i.de, %bb.f ], [ %i.de, %make_orthogonal.exit50 ]
  %i.dn = insertelement <2 x double> poison, double %.044, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.cm, <2 x double> %i.ba) ; 5 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 0 ; 2 uses
  %i.dr = extractelement <2 x double> %i.dp, i64 1 ; 4 uses
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dr, double -5.000000e+00, double %i.dq)
  %i.dt = fmul double %i.dr, %i.dr
  %i.du = fadd <2 x double> %i.dp, splat (double 1.000000e+00)
  %i.dv = fdiv <2 x double> splat (double 1.000000e+00), %i.du
  %i.dw = fsub <2 x double> %i.dv, %i.d           ; 3 uses
  %i.dx = shufflevector <2 x double> %i.dp, <2 x double> %i.dw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dy = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.dt, i64 0
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.dx, <2 x double> %i.dy) ; 2 uses
  %i.ea = extractelement <2 x double> %i.dz, i64 0
  %i.eb = fadd double %i.ea, -8.000000e-01        ; 2 uses
  %i.ec = extractelement <2 x double> %i.dw, i64 1 ; 2 uses
  %i.ed = extractelement <2 x double> %i.dz, i64 1
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.ec, double %i.ed)
  %sqrt63 = tail call double @llvm.sqrt.f64(double %i.ee)
  %i.ef = insertelement <2 x double> poison, double %sqrt63, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = fdiv <2 x double> %i.dw, %i.eg          ; 2 uses
  %i.ei = tail call double @llvm.fabs.f64(double %i.ds)
  %i.ej = fcmp ogt double %i.ei, f0x3EB0C6F7A0B5ED8D
  %i.ek = fcmp ogt double %i.eb, f0x3EB0C6F7A0B5ED8D
  %or.cond = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %or.cond, label %.critedge.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.el = tail call double @llvm.fabs.f64(double %i.eb)
  %i.em = fcmp ogt double %i.el, f0x3EB0C6F7A0B5ED8D
  br i1 %i.em, label %bb.j, label %.critedge3

bb.j:                                             ; preds = %bb.i
  %i.en = extractelement <2 x double> %i.eh, i64 1
  %i.eo = fmul double %i.en, f0xBFC91A556151761C
  %i.ep = extractelement <2 x double> %i.eh, i64 0
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.ep, double f0xBFEF60EAB9A5D3A3, double %i.eo)
  %i.er = tail call double @llvm.fabs.f64(double %i.eq)
  %i.es = fcmp ogt double %i.er, f0x3EB0C6F7A0B5ED8D
  br i1 %i.es, label %.critedge.backedge, label %.critedge3

.critedge.backedge:                               ; preds = %bb.j, %bb.h
  br label %.critedge, !llvm.loop !34

.critedge3:                                       ; preds = %bb.i, %bb.j
  store double %i.dq, ptr @P, align 8, !tbaa !18
  store double %i.dr, ptr @Q, align 8, !tbaa !18
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef double @find_gradient_h(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #5 {
bb.a:
  store <2 x double> <double f0x3FC91A556151761C, double f0xBFEF60EAB9A5D3A3>, ptr %0, align 8, !tbaa !18
  ret double f0x401465655F122FF6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local double @find_gradient_g(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load double, ptr @P, align 8, !tbaa !18
  %i.b = load double, ptr @Q, align 8, !tbaa !18
  %i.c = insertelement <2 x double> poison, double %i.a, i64 0
  %i.d = insertelement <2 x double> %i.c, double %i.b, i64 1
  %i.e = fmul <2 x double> %i.d, splat (double 2.000000e+00) ; 3 uses
  %i.f = extractelement <2 x double> %i.e, i64 0  ; 2 uses
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double %i.f, double 0.000000e+00)
  %i.h = extractelement <2 x double> %i.e, i64 1  ; 2 uses
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.g)
  %i.j = tail call double @sqrt(double noundef %i.i) #10, !tbaa !4 ; 2 uses
  %i.k = insertelement <2 x double> poison, double %i.j, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fdiv <2 x double> %i.e, %i.l
  store <2 x double> %i.m, ptr %0, align 8, !tbaa !18
  ret double %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local double @make_orthogonal(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
.preheader:
  %i.a = load double, ptr %0, align 8, !tbaa !18  ; 2 uses
  %i.b = load double, ptr %1, align 8, !tbaa !18  ; 2 uses
  %i.c = tail call double @llvm.fmuladd.f64(double %i.a, double %i.b, double 0.000000e+00)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !18
  %i.h = tail call double @llvm.fmuladd.f64(double %i.e, double %i.g, double %i.c) ; 2 uses
  %i.i = fneg double %i.h                         ; 3 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.b, double %i.a) ; 4 uses
  store double %i.j, ptr %0, align 8, !tbaa !18
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.j, double 0.000000e+00)
  %i.l = load double, ptr %i.f, align 8, !tbaa !18
  %i.m = tail call double @llvm.fmuladd.f64(double %i.i, double %i.l, double %i.e) ; 3 uses
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.k)
  %i.o = tail call double @sqrt(double noundef %i.n) #10, !tbaa !4
  %i.p = insertelement <2 x double> poison, double %i.j, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.m, i64 1
  %i.r = insertelement <2 x double> poison, double %i.o, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fdiv <2 x double> %i.q, %i.s
  store <2 x double> %i.t, ptr %0, align 8, !tbaa !18
  %i.u = tail call double @llvm.fmuladd.f64(double %i.i, double %i.h, double 1.000000e+00) ; 2 uses
  %i.v = fcmp olt double %i.u, 0.000000e+00
  br i1 %i.v, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.preheader
  %i.w = tail call double @sqrt(double noundef %i.u) #10, !tbaa !4
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.a
  %.031 = phi double [ %i.w, %bb.a ], [ 0.000000e+00, %.preheader ]
  ret double %.031
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local double @find_gradient_f(double noundef %0, double noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load double, ptr @P, align 8, !tbaa !18
  %i.b = load double, ptr @Q, align 8, !tbaa !18
  %i.c = insertelement <2 x double> poison, double %i.a, i64 0
  %i.d = insertelement <2 x double> %i.c, double %i.b, i64 1
  %i.e = fadd <2 x double> %i.d, splat (double 1.000000e+00)
  %i.f = fdiv <2 x double> splat (double 1.000000e+00), %i.e
  %i.g = insertelement <2 x double> poison, double %0, i64 0
  %i.h = insertelement <2 x double> %i.g, double %1, i64 1
  %i.i = fsub <2 x double> %i.f, %i.h             ; 3 uses
  %i.j = extractelement <2 x double> %i.i, i64 0  ; 2 uses
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.j, double 0.000000e+00)
  %i.l = extractelement <2 x double> %i.i, i64 1  ; 2 uses
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.k)
  %i.n = tail call double @sqrt(double noundef %i.m) #10, !tbaa !4 ; 2 uses
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.i, %i.p
  store <2 x double> %i.q, ptr %2, align 8, !tbaa !18
  ret double %i.n
}

end_hunk_0
