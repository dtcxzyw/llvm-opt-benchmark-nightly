Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/compute?download=true
inline.NumInlined: 17
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Compute_Branch:bb.a
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !34 ; 3 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !17
  store double %i.cz, ptr @P, align 8, !tbaa !14
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !18
  store double %i.db, ptr @Q, align 8, !tbaa !14
  tail call void @optimize_node(double noundef %i.o, double noundef %i.n)
  %i.dc = load double, ptr @P, align 8, !tbaa !14 ; 2 uses
  %i.dd = fcmp olt double %i.dc, 0.000000e+00     ; 2 uses
  %.pre.i.9 = load double, ptr @Q, align 8
  %i.de = select i1 %i.dd, double 0.000000e+00, double %.pre.i.9 ; 2 uses
  %i.df = select i1 %i.dd, double 0.000000e+00, double %i.dc ; 2 uses
  store double %i.df, ptr %i.cy, align 8, !tbaa !17
  store double %i.de, ptr %i.da, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !34 ; 3 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !17
  store double %i.di, ptr @P, align 8, !tbaa !14
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !18
  store double %i.dk, ptr @Q, align 8, !tbaa !14
  tail call void @optimize_node(double noundef %i.o, double noundef %i.n)
  %i.dl = load double, ptr @P, align 8, !tbaa !14 ; 2 uses
  %i.dm = fcmp olt double %i.dl, 0.000000e+00     ; 2 uses
  %.pre.i.10 = load double, ptr @Q, align 8
  %i.dn = select i1 %i.dm, double 0.000000e+00, double %.pre.i.10 ; 2 uses
  %i.do = select i1 %i.dm, double 0.000000e+00, double %i.dl ; 2 uses
  store double %i.do, ptr %i.dh, align 8, !tbaa !17
  store double %i.dn, ptr %i.dj, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !34 ; 3 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !17
  store double %i.dr, ptr @P, align 8, !tbaa !14
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !18
  store double %i.dt, ptr @Q, align 8, !tbaa !14
  tail call void @optimize_node(double noundef %i.o, double noundef %i.n)
  %i.du = load double, ptr @P, align 8, !tbaa !14 ; 2 uses
  %i.dv = fcmp olt double %i.du, 0.000000e+00
  br i1 %i.dv, label %bb.c, label %._crit_edge.i.11

._crit_edge.i.11:                                 ; preds = %Compute_Leaf.exit
  %.pre.i.11 = load double, ptr @Q, align 8, !tbaa !14
  br label %Compute_Leaf.exit.11

bb.c:                                             ; preds = %Compute_Leaf.exit
  store double 0.000000e+00, ptr @P, align 8, !tbaa !14
  store double 0.000000e+00, ptr @Q, align 8, !tbaa !14
  br label %Compute_Leaf.exit.11

Compute_Leaf.exit.11:                             ; preds = %bb.c, %._crit_edge.i.11
  %i.dw = phi double [ 0.000000e+00, %bb.c ], [ %.pre.i.11, %._crit_edge.i.11 ] ; 2 uses
  %i.dx = phi double [ 0.000000e+00, %bb.c ], [ %i.du, %._crit_edge.i.11 ] ; 2 uses
  %i.dy = fadd double %i.ab, 0.000000e+00
  %i.dz = fadd double %i.dy, %i.ak
  %i.ea = fadd double %i.dz, %i.at
  %i.eb = fadd double %i.ea, %i.bc
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
  store double %i.dx, ptr %i.dq, align 8, !tbaa !17
  store double %i.dw, ptr %i.ds, align 8, !tbaa !18
  %i.eu = fadd double %i.et, %i.dx                ; 2 uses
  %i.ev = fadd double %i.ei, %i.dw                ; 2 uses
  %i.ew = fadd double %.sroa.03.0, %i.eu
  %i.ex = fadd double %.sroa.44.0, %i.ev
  %.sink94 = select i1 %.not, double %i.eu, double %i.ew ; 3 uses
  %.sink = select i1 %.not, double %i.ev, double %i.ex ; 3 uses
  %i.ey = fneg double %.sink94                    ; 2 uses
  %i.ez = load <2 x double>, ptr %i.b, align 8, !tbaa !14 ; 4 uses
  %i.fa = extractelement <2 x double> %i.ez, i64 1 ; 4 uses
  %i.fb = fmul double %i.fa, %i.fa
  %i.fc = extractelement <2 x double> %i.ez, i64 0 ; 6 uses
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.fc, double %i.fb) ; 2 uses
  %i.fe = fmul <2 x double> %i.ez, splat (double 2.000000e+00) ; 2 uses
  %i.ff = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fg = fmul <2 x double> %i.ff, %i.fe          ; 2 uses
  %i.fh = extractelement <2 x double> %i.fg, i64 1
  %i.fi = fmul double %i.fh, %i.ey
  %i.fj = extractelement <2 x double> %i.fg, i64 0
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fj, double %.sink, double %i.fi)
  %i.fl = fsub double %i.fk, %i.fc                ; 3 uses
  %i.fm = fmul double %i.fa, %i.ey
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fc, double %.sink, double %i.fm) ; 2 uses
  %i.fo = fmul double %i.fc, %.sink94
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fn, double %i.fn, double %i.fo)
  %i.fq = fneg double %i.fl
  %i.fr = fmul double %i.fd, 4.000000e+00
  %i.fs = fneg double %i.fp
  %i.ft = fmul double %i.fr, %i.fs
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.fl, double %i.ft)
  %i.fv = tail call double @sqrt(double noundef %i.fu) #10, !tbaa !7
  %i.fw = fsub double %i.fq, %i.fv
  %i.fx = fmul double %i.fd, 2.000000e+00
  %i.fy = fdiv double %i.fw, %i.fx                ; 4 uses
  %i.fz = fsub double %i.fy, %.sink94
  %i.ga = fmul double %i.fa, %i.fz
  %i.gb = fdiv double %i.ga, %i.fc
  %i.gc = fadd double %.sink, %i.gb               ; 3 uses
  %i.gd = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.ge = insertelement <2 x double> %i.gd, double %i.gc, i64 1
  %i.gf = fmul <2 x double> %i.fe, %i.ge          ; 3 uses
  %i.gg = extractelement <2 x double> %i.gf, i64 0
  %i.gh = fsub double 1.000000e+00, %i.gg
  %i.gi = extractelement <2 x double> %i.gf, i64 1
  %i.gj = fsub double %i.gh, %i.gi
  %i.gk = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gm = fdiv <2 x double> %i.gf, %i.gl
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.go = insertelement <4 x double> %i.gn, double %i.fy, i64 0
  %i.gp = insertelement <4 x double> %i.go, double %i.gc, i64 1
  store <4 x double> %i.gp, ptr %0, align 8, !tbaa !14
  %.fca.0.insert = insertvalue { double, double } poison, double %i.fy, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.gc, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @Compute_Leaf(ptr nofree noundef captures(none) %0, double noundef %1, double noundef %2) local_unnamed_addr #3 !guid !35 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !17
  store double %i.a, ptr @P, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !18
  store double %i.c, ptr @Q, align 8, !tbaa !14
  tail call void @optimize_node(double noundef %1, double noundef %2)
  %i.d = load double, ptr @P, align 8, !tbaa !14  ; 2 uses
  %i.e = fcmp olt double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load double, ptr @Q, align 8, !tbaa !14
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr @P, align 8, !tbaa !14
  store double 0.000000e+00, ptr @Q, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.f = phi double [ 0.000000e+00, %bb.b ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.g = phi double [ 0.000000e+00, %bb.b ], [ %i.d, %._crit_edge ] ; 2 uses
  store double %i.g, ptr %0, align 8, !tbaa !17
  store double %i.f, ptr %i.b, align 8, !tbaa !18
  %.fca.0.insert = insertvalue { double, double } poison, double %i.g, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.f, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @optimize_node(double noundef %0, double noundef %1) local_unnamed_addr #4 !guid !37 {
bb.a:
  %P.promoted = load double, ptr @P, align 8, !tbaa !14
  %Q.promoted = load double, ptr @Q, align 8, !tbaa !14
  %i.a = insertelement <2 x double> poison, double %P.promoted, i64 0
  %i.b = insertelement <2 x double> %i.a, double %Q.promoted, i64 1
  %i.c = insertelement <2 x double> poison, double %0, i64 0
  %i.d = insertelement <2 x double> %i.c, double %1, i64 1 ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.e = phi <2 x double> [ %i.b, %bb.a ], [ %i.cy, %.critedge.backedge ] ; 4 uses
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
  %2 = extractelement <2 x double> %i.u, i64 0    ; 2 uses
  %3 = tail call double @llvm.fmuladd.f64(double %2, double %2, double 0.000000e+00)
  %i.v = extractelement <2 x double> %i.u, i64 1  ; 2 uses
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.v, double %3)
  %sqrt59 = tail call double @llvm.sqrt.f64(double %i.w) ; 2 uses
  %i.x = insertelement <2 x double> poison, double %sqrt59, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = fdiv <2 x double> %i.u, %i.y             ; 3 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double f0x3FC91A556151761C, double 0.000000e+00)
  %i.ac = extractelement <2 x double> %i.z, i64 1
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double f0xBFEF60EAB9A5D3A3, double %i.ab) ; 2 uses
  %i.ae = fneg double %i.ad                       ; 2 uses
  %i.af = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> <double f0x3FC91A556151761C, double f0xBFEF60EAB9A5D3A3>, <2 x double> %i.z) ; 4 uses
  %4 = extractelement <2 x double> %i.ah, i64 1   ; 2 uses
  %5 = insertelement <2 x double> %i.ah, double %i.ae, i64 1
  %6 = insertelement <2 x double> %i.ah, double %i.ad, i64 1
  %7 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %6, <2 x double> <double 0.000000e+00, double 1.000000e+00>) ; 2 uses
  %i.ai = extractelement <2 x double> %7, i64 0
  %i.aj = tail call double @llvm.fmuladd.f64(double %4, double %4, double %i.ai)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.aj)
  %i.ak = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fdiv <2 x double> %i.ah, %i.al
  %8 = extractelement <2 x double> %7, i64 1      ; 2 uses
  %i.an = fcmp olt double %8, 0.000000e+00
  br i1 %i.an, label %make_orthogonal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = tail call double @sqrt(double noundef %8) #10, !tbaa !7
  br label %make_orthogonal.exit

make_orthogonal.exit:                             ; preds = %bb.b, %bb.c
  %.031.i = phi double [ %i.ao, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.ap = fmul double %sqrt59, %.031.i
  %i.aq = fneg double %i.s
  %i.ar = fdiv double %i.aq, %i.ap
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.am, <2 x double> %i.o)
  br label %bb.d

bb.d:                                             ; preds = %make_orthogonal.exit, %.critedge
  %i.av = phi <2 x double> [ %i.au, %make_orthogonal.exit ], [ %i.o, %.critedge ] ; 6 uses
  %i.aw = fadd <2 x double> %i.av, splat (double 1.000000e+00)
  %i.ax = fdiv <2 x double> splat (double 1.000000e+00), %i.aw ; 3 uses
  %i.ay = fsub <2 x double> %i.ax, %i.d           ; 4 uses
  %9 = extractelement <2 x double> %i.ay, i64 1   ; 4 uses
  %10 = fmul double %9, %9
  %11 = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %12 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %10, i64 1
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> %11, <2 x double> %12) ; 2 uses
  %13 = extractelement <2 x double> %i.az, i64 0
  %14 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %13)
  %sqrt60 = tail call double @llvm.sqrt.f64(double %14) ; 2 uses
  %15 = insertelement <2 x double> poison, double %sqrt60, i64 0
  %i.ba = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fdiv <2 x double> %i.ay, %i.ba          ; 3 uses
  %16 = extractelement <2 x double> %i.az, i64 1
  %sqrt.i = tail call double @llvm.sqrt.f64(double %16)
  %i.bc = fneg <2 x double> %i.ax
  %i.bd = fmul <2 x double> %i.ax, %i.bc
  %i.be = fmul <2 x double> %i.bd, %i.ay
  %17 = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fdiv <2 x double> %i.be, %18            ; 2 uses
  %i.bg = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = insertelement <2 x double> %i.bf, double f0x3FC91A556151761C, i64 1
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bh, <2 x double> zeroinitializer)
  %i.bj = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = shufflevector <2 x double> %i.bf, <2 x double> <double poison, double f0xBFEF60EAB9A5D3A3>, <2 x i32> <i32 1, i32 3>
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bk, <2 x double> %i.bi) ; 3 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0
  %i.bn = tail call double @llvm.fabs.f64(double %i.bm)
  %i.bo = fdiv double %sqrt60, %i.bn
  %i.bp = extractelement <2 x double> %i.bl, i64 1
  %i.bq = fneg double %i.bp                       ; 2 uses
  %i.br = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> <double f0x3FC91A556151761C, double f0xBFEF60EAB9A5D3A3>, <2 x double> %i.bb) ; 4 uses
  %19 = extractelement <2 x double> %i.bt, i64 1  ; 2 uses
  %20 = insertelement <2 x double> %i.bt, double %i.bq, i64 1
  %21 = shufflevector <2 x double> %i.bt, <2 x double> %i.bl, <2 x i32> <i32 0, i32 3>
  %22 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %21, <2 x double> <double 0.000000e+00, double 1.000000e+00>) ; 2 uses
  %i.bu = extractelement <2 x double> %22, i64 0
  %i.bv = tail call double @llvm.fmuladd.f64(double %19, double %19, double %i.bu)
  %sqrt61 = tail call double @llvm.sqrt.f64(double %i.bv)
  %i.bw = insertelement <2 x double> poison, double %sqrt61, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fdiv <2 x double> %i.bt, %i.bx          ; 3 uses
  %23 = extractelement <2 x double> %22, i64 1    ; 2 uses
  %i.bz = fcmp olt double %23, 0.000000e+00
  br i1 %i.bz, label %make_orthogonal.exit50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ca = tail call double @sqrt(double noundef %23) #10, !tbaa !7
  br label %make_orthogonal.exit50

make_orthogonal.exit50:                           ; preds = %bb.d, %bb.e
  %.031.i49 = phi double [ %i.ca, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.cb = fmul <2 x double> %i.av, splat (double 2.000000e+00) ; 3 uses
  %24 = extractelement <2 x double> %i.cb, i64 0  ; 2 uses
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %24, double 0.000000e+00)
  %i.cc = extractelement <2 x double> %i.cb, i64 1 ; 2 uses
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cc, double %25)
  %sqrt62 = tail call double @llvm.sqrt.f64(double %i.cd)
  %i.ce = insertelement <2 x double> poison, double %sqrt62, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = fdiv <2 x double> %i.cb, %i.cf          ; 2 uses
  %i.ch = extractelement <2 x double> %i.by, i64 0
  %i.ci = extractelement <2 x double> %i.cg, i64 0
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ci, double 0.000000e+00)
  %i.ck = extractelement <2 x double> %i.by, i64 1
  %i.cl = extractelement <2 x double> %i.cg, i64 1
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.cl, double %i.cj) ; 2 uses
  %i.cn = fmul double %i.bo, %.031.i49            ; 3 uses
  %i.co = fcmp ogt double %i.cm, 0.000000e+00
  br i1 %i.co, label %bb.f, label %bb.h

bb.f:                                             ; preds = %make_orthogonal.exit50
  %foldExtExtBinop87.a = fmul <2 x double> %i.av, %i.av
  %i.cp = extractelement <2 x double> %foldExtExtBinop87.a, i64 1
  %i.cq = extractelement <2 x double> %i.av, i64 0 ; 2 uses
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double %i.cp)
  %i.cs = fadd double %i.cr, -8.000000e-01
  %i.ct = fneg double %i.cs
  %i.cu = fdiv double %i.ct, %i.cm                ; 2 uses
  %i.cv = fcmp ogt double %i.cn, %i.cu
  br i1 %i.cv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %make_orthogonal.exit50
  %.044 = phi double [ %i.cu, %bb.g ], [ %i.cn, %bb.f ], [ %i.cn, %make_orthogonal.exit50 ]
  %i.cw = insertelement <2 x double> poison, double %.044, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.by, <2 x double> %i.av) ; 4 uses
  %i.cz = extractelement <2 x double> %i.cy, i64 0 ; 4 uses
  %i.da = extractelement <2 x double> %i.cy, i64 1 ; 4 uses
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double -5.000000e+00, double %i.cz)
  %i.dc = fmul double %i.da, %i.da
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.cz, double %i.dc)
  %i.de = fadd double %i.dd, -8.000000e-01        ; 2 uses
  %i.df = fadd <2 x double> %i.cy, splat (double 1.000000e+00)
  %i.dg = fdiv <2 x double> splat (double 1.000000e+00), %i.df
  %i.dh = fsub <2 x double> %i.dg, %i.d           ; 3 uses
  %26 = extractelement <2 x double> %i.dh, i64 0  ; 2 uses
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %26, double 0.000000e+00)
  %i.di = extractelement <2 x double> %i.dh, i64 1 ; 2 uses
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.di, double %i.di, double %27)
  %sqrt63 = tail call double @llvm.sqrt.f64(double %i.dj)
  %i.dk = insertelement <2 x double> poison, double %sqrt63, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fdiv <2 x double> %i.dh, %i.dl          ; 2 uses
  %i.dn = tail call double @llvm.fabs.f64(double %i.db)
  %i.do = fcmp ogt double %i.dn, f0x3EB0C6F7A0B5ED8D
  %i.dp = fcmp ogt double %i.de, f0x3EB0C6F7A0B5ED8D
  %or.cond = or i1 %i.do, %i.dp
  br i1 %or.cond, label %.critedge.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dq = tail call double @llvm.fabs.f64(double %i.de)
  %i.dr = fcmp ogt double %i.dq, f0x3EB0C6F7A0B5ED8D
  br i1 %i.dr, label %bb.j, label %.critedge3

bb.j:                                             ; preds = %bb.i
  %i.ds = extractelement <2 x double> %i.dm, i64 1
  %i.dt = fmul double %i.ds, f0xBFC91A556151761C
  %i.du = extractelement <2 x double> %i.dm, i64 0
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.du, double f0xBFEF60EAB9A5D3A3, double %i.dt)
  %i.dw = tail call double @llvm.fabs.f64(double %i.dv)
  %i.dx = fcmp ogt double %i.dw, f0x3EB0C6F7A0B5ED8D
  br i1 %i.dx, label %.critedge.backedge, label %.critedge3

.critedge.backedge:                               ; preds = %bb.j, %bb.h
  br label %.critedge, !llvm.loop !36

.critedge3:                                       ; preds = %bb.i, %bb.j
  store double %i.cz, ptr @P, align 8, !tbaa !14
  store double %i.da, ptr @Q, align 8, !tbaa !14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef double @find_gradient_h(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #5 !guid !39 {
bb.a:
  store <2 x double> <double f0x3FC91A556151761C, double f0xBFEF60EAB9A5D3A3>, ptr %0, align 8, !tbaa !14
  ret double f0x401465655F122FF6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local double @find_gradient_g(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #6 !guid !40 {
bb.a:
  %i.a = load double, ptr @P, align 8, !tbaa !14
  %i.b = load double, ptr @Q, align 8, !tbaa !14
  %i.c = insertelement <2 x double> poison, double %i.a, i64 0
  %i.d = insertelement <2 x double> %i.c, double %i.b, i64 1
  %i.e = fmul <2 x double> %i.d, splat (double 2.000000e+00) ; 3 uses
  %1 = extractelement <2 x double> %i.e, i64 0    ; 2 uses
  %2 = tail call double @llvm.fmuladd.f64(double %1, double %1, double 0.000000e+00)
  %i.f = extractelement <2 x double> %i.e, i64 1  ; 2 uses
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double %i.f, double %2)
  %i.h = tail call double @sqrt(double noundef %i.g) #10, !tbaa !7 ; 2 uses
  %i.i = insertelement <2 x double> poison, double %i.h, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.e, %i.j
  store <2 x double> %i.k, ptr %0, align 8, !tbaa !14
  ret double %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local double @make_orthogonal(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 !guid !41 {
.preheader:
  %i.a = load double, ptr %0, align 8, !tbaa !14  ; 2 uses
  %i.b = load double, ptr %1, align 8, !tbaa !14  ; 2 uses
  %i.c = tail call double @llvm.fmuladd.f64(double %i.a, double %i.b, double 0.000000e+00)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !14
  %i.h = tail call double @llvm.fmuladd.f64(double %i.e, double %i.g, double %i.c) ; 2 uses
  %i.i = fneg double %i.h                         ; 3 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.b, double %i.a) ; 4 uses
  store double %i.j, ptr %0, align 8, !tbaa !14
  %2 = tail call double @llvm.fmuladd.f64(double %i.j, double %i.j, double 0.000000e+00)
  %i.k = load double, ptr %i.f, align 8, !tbaa !14
  %i.l = tail call double @llvm.fmuladd.f64(double %i.i, double %i.k, double %i.e) ; 3 uses
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %2)
  %i.n = tail call double @sqrt(double noundef %i.m) #10, !tbaa !7
  %i.o = insertelement <2 x double> poison, double %i.j, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.l, i64 1
  %i.q = insertelement <2 x double> poison, double %i.n, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fdiv <2 x double> %i.p, %i.r
  store <2 x double> %i.s, ptr %0, align 8, !tbaa !14
  %i.t = tail call double @llvm.fmuladd.f64(double %i.i, double %i.h, double 1.000000e+00) ; 2 uses
  %i.u = fcmp olt double %i.t, 0.000000e+00
  br i1 %i.u, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.preheader
  %i.v = tail call double @sqrt(double noundef %i.t) #10, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.a
  %.031 = phi double [ %i.v, %bb.a ], [ 0.000000e+00, %.preheader ]
  ret double %.031
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local double @find_gradient_f(double noundef %0, double noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #6 !guid !42 {
bb.a:
  %i.a = load double, ptr @P, align 8, !tbaa !14
  %i.b = load double, ptr @Q, align 8, !tbaa !14
  %i.c = insertelement <2 x double> poison, double %i.a, i64 0
  %i.d = insertelement <2 x double> %i.c, double %i.b, i64 1
  %i.e = fadd <2 x double> %i.d, splat (double 1.000000e+00)
  %i.f = fdiv <2 x double> splat (double 1.000000e+00), %i.e
  %i.g = insertelement <2 x double> poison, double %0, i64 0
  %i.h = insertelement <2 x double> %i.g, double %1, i64 1
  %i.i = fsub <2 x double> %i.f, %i.h             ; 3 uses
  %3 = extractelement <2 x double> %i.i, i64 0    ; 2 uses
  %4 = tail call double @llvm.fmuladd.f64(double %3, double %3, double 0.000000e+00)
  %i.j = extractelement <2 x double> %i.i, i64 1  ; 2 uses
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.j, double %4)
  %i.l = tail call double @sqrt(double noundef %i.k) #10, !tbaa !7 ; 2 uses
  %i.m = insertelement <2 x double> poison, double %i.l, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x double> %i.i, %i.n
  store <2 x double> %i.o, ptr %2, align 8, !tbaa !14
  ret double %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @find_dd_grad_f(double noundef %0, double noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #8 !guid !43 {
bb.a:
  %i.a = load double, ptr @P, align 8, !tbaa !14
  %i.b = load double, ptr @Q, align 8, !tbaa !14
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
  store <2 x double> %i.r, ptr %2, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @find_g() local_unnamed_addr #9 !guid !44 {
bb.a:
  %i.a = load double, ptr @P, align 8, !tbaa !14  ; 2 uses
  %i.b = load double, ptr @Q, align 8, !tbaa !14  ; 2 uses
  %i.c = fmul double %i.b, %i.b
  %i.d = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.c)
  %i.e = fadd double %i.d, -8.000000e-01
  ret double %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @find_h() local_unnamed_addr #9 !guid !45 {
bb.a:
  %i.a = load double, ptr @P, align 8, !tbaa !14
  %i.b = load double, ptr @Q, align 8, !tbaa !14
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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 4588084535609358142}
!9 = !{i64 -412277660872609581}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS7lateral", !10, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!"demand", !12, i64 0, !12, i64 8}
!14 = !{!12, !12, i64 0}
!15 = !{!"p1 _ZTS6branch", !10, i64 0}
!16 = !{!"leaf", !13, i64 0, !12, i64 16, !12, i64 24}
!17 = !{!16, !12, i64 0}
!18 = !{!16, !12, i64 8}
!19 = !{i64 4393722449962035627}
!20 = !{!11, !11, i64 0}
!21 = !{!"root", !13, i64 0, !12, i64 16, !12, i64 24, !13, i64 32, !12, i64 48, !12, i64 56, !5, i64 64}
!22 = !{!21, !12, i64 16}
!23 = !{!21, !12, i64 24}
!24 = !{!21, !12, i64 0}
!25 = !{!21, !12, i64 8}
!26 = !{i64 3767769071079124033}
!27 = !{!"lateral", !13, i64 0, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !11, i64 48, !15, i64 56}
!28 = !{!27, !11, i64 48}
!29 = !{!27, !15, i64 56}
!30 = !{i64 -1941265637955269204}
!31 = !{!"branch", !13, i64 0, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !15, i64 48, !5, i64 56}
!32 = !{!31, !15, i64 48}
!33 = !{!"p1 _ZTS4leaf", !10, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{i64 7147207346160725164}
!36 = distinct !{!36, !38}
!37 = !{i64 2315401838534420707}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{i64 -8282196450203629010}
!40 = !{i64 -5907939722326445029}
!41 = !{i64 2484474665823718685}
!42 = !{i64 -1813826115287640342}
!43 = !{i64 -2647442352303572372}
!44 = !{i64 8416987988039623991}
!45 = !{i64 -5707002623957286816}
end_hunk_0
