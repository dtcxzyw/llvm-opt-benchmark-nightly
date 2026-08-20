inline.NumInlined: 17
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Compute_Branch:bb.a
  %i.ec = fadd double %i.eb, %i.bl
  %i.ed = fadd double %i.ec, %i.bu
  %i.ee = fadd double %i.ed, %i.cd
  %i.ef = fadd double %i.ee, %i.cm
  %i.eg = fadd double %i.ef, %i.cv
  %i.eh = fadd double %i.eg, %i.de
  %i.ei = fadd double %i.eh, %i.dn
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
  %i.fb = extractelement <2 x double> %i.fa, i64 1 ; 4 uses
  %i.fc = fmul double %i.fb, %i.fb
  %i.fd = extractelement <2 x double> %i.fa, i64 0 ; 6 uses
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.fd, double %i.fd, double %i.fc) ; 2 uses
  %i.ff = fmul <2 x double> %i.fa, splat (double 2.000000e+00) ; 2 uses
  %i.fg = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fh = fmul <2 x double> %i.fg, %i.ff          ; 2 uses
  %i.fi = extractelement <2 x double> %i.fh, i64 1
  %i.fj = fmul double %i.fi, %i.ez
  %i.fk = extractelement <2 x double> %i.fh, i64 0
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.fk, double %.sink, double %i.fj)
  %i.fm = fsub double %i.fl, %i.fd                ; 3 uses
  %i.fn = fmul double %i.fb, %i.ez
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.fd, double %.sink, double %i.fn) ; 2 uses
  %i.fp = fmul double %i.fd, %.sink94
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fo, double %i.fo, double %i.fp)
  %i.fr = fneg double %i.fm
  %i.fs = fmul double %i.fe, 4.000000e+00
  %i.ft = fneg double %i.fq
  %i.fu = fmul double %i.fs, %i.ft
  %i.fv = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.fm, double %i.fu)
  %i.fw = tail call double @sqrt(double noundef %i.fv) #10, !tbaa !4
  %i.fx = fsub double %i.fr, %i.fw
  %i.fy = fmul double %i.fe, 2.000000e+00
  %i.fz = fdiv double %i.fx, %i.fy                ; 4 uses
  %i.ga = fsub double %i.fz, %.sink94
  %i.gb = fmul double %i.fb, %i.ga
  %i.gc = fdiv double %i.gb, %i.fd
  %i.gd = fadd double %.sink, %i.gc               ; 3 uses
  store double %i.gd, ptr %i.ey, align 8, !tbaa !32
  store double %i.fz, ptr %0, align 8, !tbaa !33
  %i.ge = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.gd, i64 1
  %i.gg = fmul <2 x double> %i.ff, %i.gf          ; 3 uses
  %i.gh = extractelement <2 x double> %i.gg, i64 0
  %i.gi = fsub double 1.000000e+00, %i.gh
  %i.gj = extractelement <2 x double> %i.gg, i64 1
  %i.gk = fsub double %i.gi, %i.gj
  %i.gl = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = fdiv <2 x double> %i.gg, %i.gm
  store <2 x double> %i.gn, ptr %i.a, align 8, !tbaa !18
  %.fca.0.insert = insertvalue { double, double } poison, double %i.fz, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.gd, 1
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
  %i.e = phi <2 x double> [ %i.b, %bb.a ], [ %i.ds, %.critedge.backedge ] ; 4 uses
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
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> <double f0x3FC91A556151761C, double f0xBFEF60EAB9A5D3A3>, <2 x double> %i.ab) ; 4 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 1 ; 2 uses
  %i.al = insertelement <2 x double> %i.aj, double %i.ag, i64 1
  %i.am = insertelement <2 x double> %i.aj, double %i.af, i64 1
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.am, <2 x double> <double 0.000000e+00, double 1.000000e+00>) ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %i.ao)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ap)
  %i.aq = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fdiv <2 x double> %i.aj, %i.ar
  %i.at = extractelement <2 x double> %i.an, i64 1 ; 2 uses
  %i.au = fcmp olt double %i.at, 0.000000e+00
  br i1 %i.au, label %make_orthogonal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = tail call double @sqrt(double noundef %i.at) #10, !tbaa !4
  br label %make_orthogonal.exit

make_orthogonal.exit:                             ; preds = %bb.b, %bb.c
  %.031.i = phi double [ %i.av, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.aw = fmul double %sqrt59, %.031.i
  %i.ax = fneg double %i.s
  %i.ay = fdiv double %i.ax, %i.aw
  %i.az = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.as, <2 x double> %i.o)
  br label %bb.d

bb.d:                                             ; preds = %make_orthogonal.exit, %.critedge
  %i.bc = phi <2 x double> [ %i.bb, %make_orthogonal.exit ], [ %i.o, %.critedge ] ; 6 uses
  %i.bd = fadd <2 x double> %i.bc, splat (double 1.000000e+00)
  %i.be = fdiv <2 x double> splat (double 1.000000e+00), %i.bd ; 3 uses
  %i.bf = fsub <2 x double> %i.be, %i.d           ; 4 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 1 ; 4 uses
  %i.bh = fmul double %i.bg, %i.bg
  %i.bi = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bj = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.bh, i64 1
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bi, <2 x double> %i.bj) ; 2 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 0
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bg, double %i.bl)
  %sqrt60 = tail call double @llvm.sqrt.f64(double %i.bm) ; 2 uses
  %2 = insertelement <2 x double> poison, double %sqrt60, i64 0
  %i.bn = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = fdiv <2 x double> %i.bf, %i.bn          ; 3 uses
  %3 = extractelement <2 x double> %i.bk, i64 1
  %sqrt.i = tail call double @llvm.sqrt.f64(double %3)
  %i.bp = fneg <2 x double> %i.be
  %i.bq = fmul <2 x double> %i.be, %i.bp
  %i.br = fmul <2 x double> %i.bq, %i.bf
  %4 = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fdiv <2 x double> %i.br, %5             ; 2 uses
  %i.bt = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = insertelement <2 x double> %i.bs, double f0x3FC91A556151761C, i64 1
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bu, <2 x double> zeroinitializer)
  %i.bw = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = shufflevector <2 x double> %i.bs, <2 x double> <double poison, double f0xBFEF60EAB9A5D3A3>, <2 x i32> <i32 1, i32 3>
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.bx, <2 x double> %i.bv) ; 3 uses
  %i.bz = extractelement <2 x double> %i.by, i64 0
  %i.ca = tail call double @llvm.fabs.f64(double %i.bz)
  %i.cb = fdiv double %sqrt60, %i.ca
  %i.cc = extractelement <2 x double> %i.by, i64 1
  %i.cd = fneg double %i.cc                       ; 2 uses
  %i.ce = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> <double f0x3FC91A556151761C, double f0xBFEF60EAB9A5D3A3>, <2 x double> %i.bo) ; 4 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 1 ; 2 uses
  %i.ci = insertelement <2 x double> %i.cg, double %i.cd, i64 1
  %i.cj = shufflevector <2 x double> %i.cg, <2 x double> %i.by, <2 x i32> <i32 0, i32 3>
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.cj, <2 x double> <double 0.000000e+00, double 1.000000e+00>) ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ch, double %i.cl)
  %sqrt61 = tail call double @llvm.sqrt.f64(double %i.cm)
  %i.cn = insertelement <2 x double> poison, double %sqrt61, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fdiv <2 x double> %i.cg, %i.co          ; 3 uses
  %i.cq = extractelement <2 x double> %i.ck, i64 1 ; 2 uses
  %i.cr = fcmp olt double %i.cq, 0.000000e+00
  br i1 %i.cr, label %make_orthogonal.exit50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cs = tail call double @sqrt(double noundef %i.cq) #10, !tbaa !4
  br label %make_orthogonal.exit50

make_orthogonal.exit50:                           ; preds = %bb.d, %bb.e
  %.031.i49 = phi double [ %i.cs, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.ct = fmul <2 x double> %i.bc, splat (double 2.000000e+00) ; 3 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 0 ; 2 uses
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.cu, double 0.000000e+00)
  %i.cw = extractelement <2 x double> %i.ct, i64 1 ; 2 uses
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cw, double %i.cv)
  %sqrt62 = tail call double @llvm.sqrt.f64(double %i.cx)
  %i.cy = insertelement <2 x double> poison, double %sqrt62, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = fdiv <2 x double> %i.ct, %i.cz          ; 2 uses
  %i.db = extractelement <2 x double> %i.cp, i64 0
  %i.dc = extractelement <2 x double> %i.da, i64 0
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.db, double %i.dc, double 0.000000e+00)
  %i.de = extractelement <2 x double> %i.cp, i64 1
  %i.df = extractelement <2 x double> %i.da, i64 1
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.de, double %i.df, double %i.dd) ; 2 uses
  %i.dh = fmul double %i.cb, %.031.i49            ; 3 uses
  %i.di = fcmp ogt double %i.dg, 0.000000e+00
  br i1 %i.di, label %bb.f, label %bb.h

bb.f:                                             ; preds = %make_orthogonal.exit50
  %foldExtExtBinop87 = fmul <2 x double> %i.bc, %i.bc
  %i.dj = extractelement <2 x double> %foldExtExtBinop87, i64 1
  %i.dk = extractelement <2 x double> %i.bc, i64 0 ; 2 uses
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dk, double %i.dj)
  %i.dm = fadd double %i.dl, -8.000000e-01
  %i.dn = fneg double %i.dm
  %i.do = fdiv double %i.dn, %i.dg                ; 2 uses
  %i.dp = fcmp ogt double %i.dh, %i.do
  br i1 %i.dp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %make_orthogonal.exit50
  %.044 = phi double [ %i.do, %bb.g ], [ %i.dh, %bb.f ], [ %i.dh, %make_orthogonal.exit50 ]
  %i.dq = insertelement <2 x double> poison, double %.044, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.cp, <2 x double> %i.bc) ; 4 uses
  %i.dt = extractelement <2 x double> %i.ds, i64 0 ; 4 uses
  %i.du = extractelement <2 x double> %i.ds, i64 1 ; 4 uses
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.du, double -5.000000e+00, double %i.dt)
  %i.dw = fmul double %i.du, %i.du
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double %i.dw)
  %i.dy = fadd double %i.dx, -8.000000e-01        ; 2 uses
  %i.dz = fadd <2 x double> %i.ds, splat (double 1.000000e+00)
  %i.ea = fdiv <2 x double> splat (double 1.000000e+00), %i.dz
  %i.eb = fsub <2 x double> %i.ea, %i.d           ; 3 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 0 ; 2 uses
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.ec, double 0.000000e+00)
  %i.ee = extractelement <2 x double> %i.eb, i64 1 ; 2 uses
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ee, double %i.ed)
  %sqrt63 = tail call double @llvm.sqrt.f64(double %i.ef)
  %i.eg = insertelement <2 x double> poison, double %sqrt63, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fdiv <2 x double> %i.eb, %i.eh          ; 2 uses
  %i.ej = tail call double @llvm.fabs.f64(double %i.dv)
  %i.ek = fcmp ogt double %i.ej, f0x3EB0C6F7A0B5ED8D
  %i.el = fcmp ogt double %i.dy, f0x3EB0C6F7A0B5ED8D
  %or.cond = select i1 %i.ek, i1 true, i1 %i.el
  br i1 %or.cond, label %.critedge.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.em = tail call double @llvm.fabs.f64(double %i.dy)
  %i.en = fcmp ogt double %i.em, f0x3EB0C6F7A0B5ED8D
  br i1 %i.en, label %bb.j, label %.critedge3

bb.j:                                             ; preds = %bb.i
  %i.eo = extractelement <2 x double> %i.ei, i64 1
  %i.ep = fmul double %i.eo, f0xBFC91A556151761C
  %i.eq = extractelement <2 x double> %i.ei, i64 0
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eq, double f0xBFEF60EAB9A5D3A3, double %i.ep)
  %i.es = tail call double @llvm.fabs.f64(double %i.er)
  %i.et = fcmp ogt double %i.es, f0x3EB0C6F7A0B5ED8D
  br i1 %i.et, label %.critedge.backedge, label %.critedge3

.critedge.backedge:                               ; preds = %bb.j, %bb.h
  br label %.critedge, !llvm.loop !34

.critedge3:                                       ; preds = %bb.i, %bb.j
  store double %i.dt, ptr @P, align 8, !tbaa !18
  store double %i.du, ptr @Q, align 8, !tbaa !18
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @find_dd_grad_f(double noundef %0, double noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = load double, ptr @P, align 8, !tbaa !18
  %i.b = load double, ptr @Q, align 8, !tbaa !18
  %i.c = insertelement <2 x double> poison, double %i.a, i64 0
  %i.d = insertelement <2 x double> %i.c, double %i.b, i64 1
  %i.e = fadd <2 x double> %i.d, splat (double 1.000000e+00)
  %i.f = fdiv <2 x double> splat (double 1.000000e+00), %i.e ; 3 uses
  %i.g = insertelement <2 x double> poison, double %0, i64 0
  %i.h = insertelement <2 x double> %i.g, double %1, i64 1
  %i.i = fsub <2 x double> %i.f, %i.h             ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.i, %i.i
  %i.j = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.k = extractelement <2 x double> %i.i, i64 0  ; 2 uses
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.j)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.l)
  %i.m = fneg <2 x double> %i.f
  %i.n = fmul <2 x double> %i.f, %i.m
  %i.o = fmul <2 x double> %i.n, %i.i
  %i.p = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x double> %i.o, %i.q
  store <2 x double> %i.r, ptr %2, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @find_g() local_unnamed_addr #9 {
bb.a:
  %i.a = load double, ptr @P, align 8, !tbaa !18  ; 2 uses
  %i.b = load double, ptr @Q, align 8, !tbaa !18  ; 2 uses
  %i.c = fmul double %i.b, %i.b
  %i.d = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.c)
  %i.e = fadd double %i.d, -8.000000e-01
  ret double %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @find_h() local_unnamed_addr #9 {
bb.a:
  %i.a = load double, ptr @P, align 8, !tbaa !18
  %i.b = load double, ptr @Q, align 8, !tbaa !18
  %i.c = tail call double @llvm.fmuladd.f64(double %i.b, double -5.000000e+00, double %i.a)
  ret double %i.c
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }

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
!9 = !{!"p1 _ZTS7lateral", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !14, i64 16}
!12 = !{!"root", !13, i64 0, !14, i64 16, !14, i64 24, !13, i64 32, !14, i64 48, !14, i64 56, !6, i64 64}
!13 = !{!"demand", !14, i64 0, !14, i64 8}
!14 = !{!"double", !6, i64 0}
!15 = !{!12, !14, i64 24}
!16 = !{!12, !14, i64 0}
!17 = !{!12, !14, i64 8}
!18 = !{!14, !14, i64 0}
!19 = !{!20, !9, i64 48}
!20 = !{!"lateral", !13, i64 0, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !9, i64 48, !21, i64 56}
!21 = !{!"p1 _ZTS6branch", !10, i64 0}
!22 = !{!20, !21, i64 56}
!23 = !{!20, !14, i64 8}
!24 = !{!20, !14, i64 0}
!25 = !{!26, !21, i64 48}
!26 = !{!"branch", !13, i64 0, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !21, i64 48, !6, i64 56}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTS4leaf", !10, i64 0}
!29 = !{!30, !14, i64 0}
!30 = !{!"leaf", !13, i64 0, !14, i64 16, !14, i64 24}
!31 = !{!30, !14, i64 8}
!32 = !{!26, !14, i64 8}
!33 = !{!26, !14, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
end_hunk_0
