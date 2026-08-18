inline.NumInlined: 4597
inline.NumDeleted: 2529
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN3g2o13EdgeSE3Expmap12computeErrorEv:._crit_edge.i.i
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.y, double %.sroa.027.8.vec.extract.i.i.i.i5, double %i.bp)
  %.sroa.0.0.vec.insert.i.i.i.i7 = insertelement <2 x double> poison, double %i.bk, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i8 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i7, double %i.bn, i64 1
  %i.br = fmul <2 x double> %i.aq, %i.bg
  %i.bs = fadd <2 x double> %.sroa.5.32.copyload, %i.br
  %i.bt = fadd <2 x double> %i.bs, %.sroa.0.8.vec.insert.i.i.i.i8
  %i.bu = fmul double %i.ag, %i.bh
  %i.bv = fadd double %.sroa.949.32.copyload, %i.bu
  %i.bw = fadd double %i.bv, %i.bq
  %i.bx = fadd <2 x double> %i.at, %i.bt
  %i.by = fadd double %i.aw, %i.bw
  %i.bz = bitcast <2 x i64> %i.j to <2 x double>
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.019.sroa.0.8.vec.extract = extractelement <2 x i64> %i.j, i64 1
  %i.cb = bitcast i64 %.sroa.019.sroa.0.8.vec.extract to <1 x double>
  %i.cc = shufflevector <1 x double> %i.cb, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cd = bitcast <2 x i64> %i.m to <2 x double>
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.019.sroa.8.24.vec.extract = extractelement <2 x i64> %i.m, i64 1
  %i.cf = bitcast i64 %.sroa.019.sroa.8.24.vec.extract to <1 x double>
  %i.cg = shufflevector <1 x double> %i.cf, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = fmul <2 x double> %.sroa.047.0.copyload, %i.cg
  %i.ci = fmul <2 x double> %.sroa.4.0.copyload, %i.cc
  %i.cj = fadd <2 x double> %i.ci, %i.ch
  %i.ck = fmul <2 x double> %.sroa.047.0.copyload, %i.ce
  %i.cl = fmul <2 x double> %.sroa.4.0.copyload, %i.ca
  %i.cm = fsub <2 x double> %i.ck, %i.cl
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.co = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.cj, <2 x double> %i.cn) ; 3 uses
  %i.cp = fmul <2 x double> %.sroa.4.0.copyload, %i.cg
  %i.cq = fmul <2 x double> %.sroa.047.0.copyload, %i.cc
  %i.cr = fsub <2 x double> %i.cp, %i.cq
  %i.cs = fmul <2 x double> %.sroa.4.0.copyload, %i.ce
  %i.ct = fmul <2 x double> %.sroa.047.0.copyload, %i.ca
  %i.cu = fadd <2 x double> %i.ct, %i.cs
  %i.cv = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cw = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.cv, <2 x double> %i.cu) ; 3 uses
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cy = extractelement <2 x double> %i.cw, i64 0
  %i.cz = fcmp olt double %i.cy, 0.000000e+00     ; 3 uses
  %i.da = shufflevector <2 x double> %i.co, <2 x double> %i.cw, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.db = fneg <2 x double> %i.co                 ; 2 uses
  %i.dc = fneg <2 x double> %i.cx                 ; 2 uses
  %i.dd = shufflevector <2 x double> %i.db, <2 x double> %i.dc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.de = select i1 %i.cz, <2 x double> %i.dc, <2 x double> %i.cx ; 4 uses
  %i.df = select i1 %i.cz, <2 x double> %i.db, <2 x double> %i.co ; 4 uses
  %i.dg = select i1 %i.cz, <4 x double> %i.dd, <4 x double> %i.da
  %i.dh = fmul <2 x double> %i.df, %i.df
  %i.di = fmul <2 x double> %i.de, %i.de
  %i.dj = fadd <2 x double> %i.di, %i.dh          ; 2 uses
  %shift = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.dj, %shift
  %i.dk = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.dl = fcmp ogt double %i.dk, 0.000000e+00     ; 3 uses
  %.scalar.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.dk)
  %i.dm = insertelement <2 x double> poison, double %.scalar.i.i.i.i, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.do = fdiv <2 x double> %i.df, %i.dn          ; 2 uses
  %i.dp = fdiv <2 x double> %i.de, %i.dn          ; 2 uses
  %i.dq = shufflevector <2 x double> %i.do, <2 x double> %i.dp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.019.sroa.8.1.in = select i1 %i.dl, <2 x double> %i.dp, <2 x double> %i.de
  %.sroa.019.sroa.0.1.in = select i1 %i.dl, <2 x double> %i.do, <2 x double> %i.df
  %i.dr = select i1 %i.dl, <4 x double> %i.dq, <4 x double> %i.dg ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  store <2 x double> %.sroa.019.sroa.0.1.in, ptr %1, align 16
  %.sroa.019.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x double> %.sroa.019.sroa.8.1.in, ptr %.sroa.019.sroa.8.0..sroa_idx, align 16, !tbaa !58
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store <2 x double> %i.bx, ptr %i.dt, align 16
  %.sroa.23.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 224 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.dw = extractelement <4 x double> %i.dr, i64 2 ; 2 uses
  %i.dx = extractelement <4 x double> %i.dr, i64 1 ; 3 uses
  %i.dy = load double, ptr %i.du, align 8, !tbaa !8, !noalias !99 ; 2 uses
  %i.dz = extractelement <4 x double> %i.dr, i64 0 ; 3 uses
  %i.ea = load <2 x double>, ptr %i.dv, align 8, !tbaa !8, !noalias !99 ; 4 uses
  %i.eb = fneg <2 x double> %i.ea
  %i.ec = shufflevector <4 x double> %i.dr, <4 x double> poison, <2 x i32> <i32 2, i32 0>
  %i.ed = fmul <2 x double> %i.ec, %i.eb
  %i.ee = shufflevector <4 x double> %i.dr, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.ef = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.eg = insertelement <2 x double> %i.ef, double %i.dy, i64 1
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %i.eg, <2 x double> %i.ed) ; 2 uses
  %i.ei = fneg double %i.dy
  %i.ej = fmul double %i.dx, %i.ei
  %i.ek = extractelement <2 x double> %i.ea, i64 0
  %i.el = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.ek, double %i.ej) ; 2 uses
  %i.em = fadd <2 x double> %i.eh, %i.eh          ; 3 uses
  %i.en = fadd double %i.el, %i.el                ; 3 uses
  %.sroa.027.8.vec.extract.i.i.i.i11 = extractelement <2 x double> %i.em, i64 1 ; 2 uses
  %i.eo = fneg double %.sroa.027.8.vec.extract.i.i.i.i11
  %i.ep = fmul double %i.dw, %i.eo
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.en, double %i.ep)
  %.sroa.027.0.vec.extract.i.i.i.i12 = extractelement <2 x double> %i.em, i64 0 ; 2 uses
  %i.er = fneg double %i.en
  %i.es = fmul double %i.dz, %i.er
  %i.et = tail call double @llvm.fmuladd.f64(double %i.dw, double %.sroa.027.0.vec.extract.i.i.i.i12, double %i.es)
  %i.eu = fneg double %.sroa.027.0.vec.extract.i.i.i.i12
  %i.ev = fmul double %i.dx, %i.eu
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.dz, double %.sroa.027.8.vec.extract.i.i.i.i11, double %i.ev)
  %.sroa.0.0.vec.insert.i.i.i.i13 = insertelement <2 x double> poison, double %i.eq, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i14 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i13, double %i.et, i64 1
  %i.ex = load <2 x double>, ptr %i.du, align 8, !tbaa !58, !noalias !108
  %i.ey = shufflevector <4 x double> %i.dr, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.ez = fmul <2 x double> %i.ey, %i.em
  %i.fa = fadd <2 x double> %i.ex, %i.ez
  %i.fb = fadd <2 x double> %i.fa, %.sroa.0.8.vec.insert.i.i.i.i14
  %i.fc = extractelement <4 x double> %i.dr, i64 3
  %i.fd = fmul double %i.fc, %i.en
  %i.fe = extractelement <2 x double> %i.ea, i64 1
  %i.ff = fadd double %i.fe, %i.fd
  %i.fg = fadd double %i.ff, %i.ew
  %i.fh = load <2 x double>, ptr %i.dt, align 16, !tbaa !58, !alias.scope !96
  %i.fi = fadd <2 x double> %i.fh, %i.fb
  store <2 x double> %i.fi, ptr %i.dt, align 16, !tbaa !58, !alias.scope !96
  %i.fj = fadd double %i.by, %i.fg
  store double %i.fj, ptr %.sroa.23.32..sroa_idx, align 16, !tbaa !8, !alias.scope !96
  %i.fk = load <2 x double>, ptr %i.ds, align 16, !tbaa !58, !noalias !109 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.fm = load <2 x double>, ptr %i.fl, align 16, !tbaa !58, !noalias !109 ; 4 uses
  %i.fn = load <1 x double>, ptr %1, align 16, !alias.scope !96
  %i.fo = shufflevector <1 x double> %i.fn, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fq = load <1 x double>, ptr %i.fp, align 8, !alias.scope !96
  %i.fr = shufflevector <1 x double> %i.fq, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ft = load <1 x double>, ptr %i.fs, align 16, !alias.scope !96
  %i.fu = shufflevector <1 x double> %i.ft, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fw = load <1 x double>, ptr %i.fv, align 8, !alias.scope !96
  %i.fx = shufflevector <1 x double> %i.fw, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fy = fmul <2 x double> %i.fk, %i.fx
  %i.fz = fmul <2 x double> %i.fm, %i.fr
  %i.ga = fadd <2 x double> %i.fz, %i.fy
  %i.gb = fmul <2 x double> %i.fk, %i.fu
  %i.gc = fmul <2 x double> %i.fm, %i.fo
  %i.gd = fsub <2 x double> %i.gb, %i.gc
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gf = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.ga, <2 x double> %i.ge) ; 3 uses
  %i.gg = fmul <2 x double> %i.fm, %i.fx
  %i.gh = fmul <2 x double> %i.fk, %i.fr
  %i.gi = fsub <2 x double> %i.gg, %i.gh
  %i.gj = fmul <2 x double> %i.fm, %i.fu
  %i.gk = fmul <2 x double> %i.fk, %i.fo
  %i.gl = fadd <2 x double> %i.gk, %i.gj
  %i.gm = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gn = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.gm, <2 x double> %i.gl) ; 2 uses
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  store <2 x double> %i.gf, ptr %1, align 16, !alias.scope !96
  store <2 x double> %i.go, ptr %i.fs, align 16, !tbaa !58, !alias.scope !96
  %i.gp = extractelement <2 x double> %i.gn, i64 0
  %i.gq = fcmp olt double %i.gp, 0.000000e+00
  br i1 %i.gq, label %bb.a, label %._crit_edge.i.i16

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.gr = fneg <2 x double> %i.gf                 ; 2 uses
  store <2 x double> %i.gr, ptr %1, align 16, !tbaa !58, !alias.scope !96
  %i.gs = fneg <2 x double> %i.go                 ; 2 uses
  store <2 x double> %i.gs, ptr %i.fs, align 16, !tbaa !58, !alias.scope !96
  br label %._crit_edge.i.i16

._crit_edge.i.i16:                                ; preds = %bb.a, %._crit_edge.i.i
  %i.gt = phi <2 x double> [ %i.gs, %bb.a ], [ %i.go, %._crit_edge.i.i ] ; 3 uses
  %i.gu = phi <2 x double> [ %i.gr, %bb.a ], [ %i.gf, %._crit_edge.i.i ] ; 3 uses
  %i.gv = fmul <2 x double> %i.gu, %i.gu
  %i.gw = fmul <2 x double> %i.gt, %i.gt
  %i.gx = fadd <2 x double> %i.gw, %i.gv          ; 2 uses
  %shift85 = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop86 = fadd <2 x double> %i.gx, %shift85
  %i.gy = extractelement <2 x double> %foldExtExtBinop86, i64 0 ; 2 uses
  %i.gz = fcmp ogt double %i.gy, 0.000000e+00
  br i1 %i.gz, label %bb.b, label %_ZNK3g2o7SE3QuatmlERKS0_.exit18

bb.b:                                             ; preds = %._crit_edge.i.i16
  %.scalar.i.i.i.i17 = tail call double @llvm.sqrt.f64(double %i.gy)
  %i.ha = insertelement <2 x double> poison, double %.scalar.i.i.i.i17, i64 0
  %i.hb = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hc = fdiv <2 x double> %i.gu, %i.hb
  store <2 x double> %i.hc, ptr %1, align 16, !tbaa !58, !alias.scope !96
  %i.hd = fdiv <2 x double> %i.gt, %i.hb
  store <2 x double> %i.hd, ptr %i.fs, align 16, !tbaa !58, !alias.scope !96
  br label %_ZNK3g2o7SE3QuatmlERKS0_.exit18

_ZNK3g2o7SE3QuatmlERKS0_.exit18:                  ; preds = %._crit_edge.i.i16, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNK3g2o7SE3Quat3logEv(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.38") align 16 %2, ptr noundef nonnull align 16 dereferenceable(56) %1)
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.he, ptr noundef nonnull align 16 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !114
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK3g2o7SE3Quat3logEv(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.38") align 16 %0, ptr noundef nonnull align 16 dereferenceable(56) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0120 = alloca [5 x double], align 16     ; 10 uses
  %.sroa.0 = alloca [5 x double], align 16        ; 10 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.a = load double, ptr %2, align 16, !tbaa !8, !noalias !115 ; 2 uses
  %i.b = fmul double %i.a, 2.000000e+00           ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !8, !noalias !115 ; 2 uses
  %3 = fmul double %i.b, %i.d                     ; 2 uses
  %i.e = fmul double %i.a, %i.b                   ; 2 uses
  %4 = load <2 x double>, ptr %1, align 16, !tbaa !8, !noalias !115 ; 4 uses
  %5 = fmul <2 x double> %4, splat (double 2.000000e+00) ; 3 uses
  %6 = insertelement <2 x double> poison, double %i.d, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x double> %5, %7                   ; 2 uses
  %shift = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %4, %shift
  %9 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %10 = fmul <2 x double> %4, %5                  ; 2 uses
  %11 = insertelement <2 x double> poison, double %i.b, i64 0
  %12 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %13 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = fmul <2 x double> %12, %13                ; 2 uses
  %15 = extractelement <2 x double> %10, i64 1    ; 2 uses
  %i.f = fadd double %15, %i.e
  %i.g = fsub double 1.000000e+00, %i.f
  %i.h = fsub double %9, %3
  %i.i = fadd double %9, %3
  %16 = extractelement <2 x double> %10, i64 0    ; 2 uses
  %i.j = fadd double %16, %i.e
  %i.k = fsub double 1.000000e+00, %i.j
  %17 = fsub <2 x double> %14, %8
  %18 = fadd <2 x double> %14, %8
  %i.l = fadd double %16, %15
  %i.m = fsub double 1.000000e+00, %i.l
  %i.n = fadd double %i.g, %i.k
  %i.o = fadd double %i.m, %i.n
  %i.p = fadd double %i.o, -1.000000e+00
  %i.q = fmul double %i.p, 5.000000e-01           ; 4 uses
  %19 = fsub <2 x double> %18, %17                ; 2 uses
  %i.r = fsub double %i.i, %i.h                   ; 2 uses
  %i.s = tail call noundef double @llvm.fabs.f64(double %i.q)
  %i.t = fcmp ogt double %i.s, 9.999900e-01
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = fmul <2 x double> %19, splat (double 5.000000e-01) ; 7 uses
  %i.v = fmul double %i.r, 5.000000e-01           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0120)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.0120, i8 0, i64 40, i1 false), !alias.scope !118
  %i.w = fneg double %i.v
  %.sroa.0120.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i.sroa_idx187 = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 24
  store double %i.w, ptr %.sroa.0120.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i.sroa_idx187, align 8, !tbaa !8, !alias.scope !118
  %.sroa.0164.8.vec.extract = extractelement <2 x double> %i.u, i64 1 ; 2 uses
  %i.x = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %.sroa.0120.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i.sroa_idx185 = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 8
  store double %i.v, ptr %.sroa.0120.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i.sroa_idx185, align 8, !tbaa !8, !alias.scope !118
  %i.y = fneg double %.sroa.0164.8.vec.extract
  %.sroa.0120.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx186 = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 16
  store double %i.y, ptr %.sroa.0120.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx186, align 16, !tbaa !8, !alias.scope !118
  %.sroa.0120.0..sroa.0120.0..sroa.0120.0. = load <2 x double>, ptr %.sroa.0120, align 16 ; 4 uses
  %i.z = fmul <2 x double> %.sroa.0120.0..sroa.0120.0..sroa.0120.0., splat (double f0x3FB5555555555555) ; 3 uses
  %i.aa = shufflevector <2 x double> %.sroa.0120.0..sroa.0120.0..sroa.0120.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %i.z, %i.aa
  %.sroa.0120.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 24
  %.sroa.0120.24..sroa.0120.24..sroa.0120.24. = load <2 x double>, ptr %.sroa.0120.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i.sroa_idx, align 8 ; 4 uses
  %i.ac = fmul <2 x double> %.sroa.0120.24..sroa.0120.24..sroa.0120.24., splat (double f0x3FB5555555555555) ; 3 uses
  %.sroa.0120.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 8
  %.sroa.0120.8..sroa.0120.8..sroa.0120.8. = load <2 x double>, ptr %.sroa.0120.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i.sroa_idx, align 8 ; 3 uses
  %i.ad = shufflevector <2 x double> %.sroa.0120.8..sroa.0120.8..sroa.0120.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x double> %i.ac, %i.ad
  %i.af = fadd <2 x double> %i.ab, %i.ae
  %.sroa.0120.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 16
  %.sroa.0120.16..sroa.0120.16..sroa.0120.16. = load <2 x double>, ptr %.sroa.0120.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx, align 16 ; 6 uses
  %i.ag = shufflevector <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = extractelement <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., i64 0
  %i.ai = fmul double %i.ah, f0x3FB5555555555555  ; 2 uses
  %i.aj = shufflevector <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ak = fmul <2 x double> %i.z, %i.aj
  %i.al = shufflevector <2 x double> %.sroa.0120.24..sroa.0120.24..sroa.0120.24., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.am = fmul <2 x double> %i.ac, %i.al
  %i.an = fadd <2 x double> %i.ak, %i.am
  %i.ao = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.z, %i.x
  %i.aq = fmul double %i.ai, %.sroa.0164.8.vec.extract
  %.sroa.0164.0.vec.extract = extractelement <2 x double> %i.u, i64 0 ; 3 uses
  %i.ar = fneg double %.sroa.0164.0.vec.extract   ; 2 uses
  %.sroa.16132.56.vec.insert = insertelement <2 x double> %i.x, double %i.ar, i64 1
  %i.as = fmul <2 x double> %.sroa.16132.56.vec.insert, splat (double f0x3FB5555555555555) ; 3 uses
  %i.at = fmul <2 x double> %i.as, %i.ag
  %i.au = fadd <2 x double> %i.af, %i.at
  %i.av = fmul double %.sroa.0164.0.vec.extract, f0x3FB5555555555555 ; 2 uses
  %i.aw = fmul <2 x double> %i.ao, %i.as
  %i.ax = fadd <2 x double> %i.aw, %i.an
  %i.ay = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x double> %i.az, %i.ac
  %i.bb = fadd <2 x double> %i.ba, %i.ap
  %i.bc = fmul <2 x double> %i.as, zeroinitializer
  %i.bd = fadd <2 x double> %i.bc, %i.bb
  %i.be = fmul double %.sroa.0164.0.vec.extract, %i.av
  %i.bf = fsub double 0.000000e+00, %i.be
  %i.bg = fadd double %i.aq, %i.bf
  %i.bh = shufflevector <2 x double> %.sroa.0120.0..sroa.0120.0..sroa.0120.0., <2 x double> %.sroa.0120.8..sroa.0120.8..sroa.0120.8., <2 x i32> <i32 0, i32 2>
  %i.bi = fmul <2 x double> %i.bh, splat (double 5.000000e-01)
  %i.bj = fsub <2 x double> <double 1.000000e+00, double 0.000000e+00>, %i.bi
  %i.bk = fadd <2 x double> %i.au, %i.bj
  %i.bl = shufflevector <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., <2 x double> %.sroa.0120.24..sroa.0120.24..sroa.0120.24., <2 x i32> <i32 1, i32 3>
  %i.bm = fmul <2 x double> %i.bl, splat (double 5.000000e-01)
  %i.bn = fsub <2 x double> <double 0.000000e+00, double 1.000000e+00>, %i.bm
  %i.bo = fadd <2 x double> %i.ax, %i.bn
  %i.bp = fmul <2 x double> %i.u, <double 1.000000e+00, double 5.000000e-01> ; 2 uses
  %i.bq = fsub <2 x double> <double poison, double 0.000000e+00>, %i.bp
  %i.br = fmul <2 x double> %i.bp, <double 5.000000e-01, double poison>
  %i.bs = shufflevector <2 x double> %i.bq, <2 x double> %i.br, <2 x i32> <i32 1, i32 2>
  %i.bt = shufflevector <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., <2 x double> %.sroa.0120.0..sroa.0120.0..sroa.0120.0., <2 x i32> <i32 1, i32 2>
  %i.bu = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x double> %i.bt, %i.bv
  %i.bx = insertelement <2 x double> poison, double %i.av, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = shufflevector <2 x double> %.sroa.0120.24..sroa.0120.24..sroa.0120.24., <2 x double> %.sroa.0120.8..sroa.0120.8..sroa.0120.8., <2 x i32> <i32 1, i32 2>
  %i.ca = fmul <2 x double> %i.by, %i.bz
  %i.cb = shufflevector <2 x double> %i.u, <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cc = fmul <2 x double> %i.cb, zeroinitializer
  %i.cd = fadd <2 x double> %i.ca, %i.cc
  %i.ce = fadd <2 x double> %i.bw, %i.cd
  %i.cf = fmul <2 x double> %i.cb, splat (double 5.000000e-01)
  %i.cg = fsub <2 x double> zeroinitializer, %i.cf
  %i.ch = fadd <2 x double> %i.cg, %i.ce
  %i.ci = fadd <2 x double> %i.bs, <double -0.000000e+00, double 0.000000e+00>
  %i.cj = fadd <2 x double> %i.ci, %i.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0120)
  br label %.preheader.preheader

bb.c:                                             ; preds = %bb.a
  %i.ck = tail call double @acos(double noundef %i.q) #20 ; 4 uses
  %i.cl = fneg double %i.q
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.q, double 1.000000e+00)
  %i.cn = tail call double @sqrt(double noundef %i.cm) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.0, i8 0, i64 40, i1 false), !alias.scope !121
  %i.co = fmul double %i.ck, 5.000000e-01
  %i.cp = tail call double @tan(double noundef %i.co) #20
  %i.cq = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.cp, i64 1
  %i.cs = fmul <2 x double> %i.cr, splat (double 2.000000e+00)
  %i.ct = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = fdiv <2 x double> %i.cu, %i.cs          ; 3 uses
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x double> %19, %i.cw            ; 10 uses
  %i.cy = extractelement <2 x double> %i.cv, i64 0
  %i.cz = fmul double %i.r, %i.cy                 ; 3 uses
  %i.da = fneg double %i.cz
  %.sroa.0.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i21.sroa_idx184 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  store double %i.da, ptr %.sroa.0.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i21.sroa_idx184, align 8, !tbaa !8, !alias.scope !121
  %.sroa.0164.8.vec.extract168 = extractelement <2 x double> %i.cx, i64 1 ; 2 uses
  %i.db = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %.sroa.0.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i19.sroa_idx182 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  store double %i.cz, ptr %.sroa.0.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i19.sroa_idx182, align 8, !tbaa !8, !alias.scope !121
  %i.dc = fneg double %.sroa.0164.8.vec.extract168
  %.sroa.0.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i20.sroa_idx183 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store double %i.dc, ptr %.sroa.0.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i20.sroa_idx183, align 16, !tbaa !8, !alias.scope !121
  %i.dd = extractelement <2 x double> %i.cv, i64 1
  %i.de = fsub double 1.000000e+00, %i.dd
  %i.df = fmul double %i.ck, %i.ck
  %i.dg = fdiv double %i.de, %i.df                ; 2 uses
  %.sroa.1525.56.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i27 = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dh = shufflevector <2 x double> %.sroa.1525.56.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i27, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0. = load <2 x double>, ptr %.sroa.0, align 16 ; 4 uses
  %i.di = fmul <2 x double> %.sroa.0.0..sroa.0.0..sroa.0.0., %i.dh ; 3 uses
  %i.dj = shufflevector <2 x double> %.sroa.0.0..sroa.0.0..sroa.0.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = fmul <2 x double> %i.dj, %i.di
  %.sroa.0.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i21.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24..sroa.0.24. = load <2 x double>, ptr %.sroa.0.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i21.sroa_idx, align 8 ; 4 uses
  %i.dl = fmul <2 x double> %.sroa.0.24..sroa.0.24..sroa.0.24., %i.dh ; 3 uses
  %.sroa.0.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i19.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..sroa.0.8. = load <2 x double>, ptr %.sroa.0.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i19.sroa_idx, align 8 ; 3 uses
  %i.dm = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x double> %i.dm, %i.dl
  %i.do = fadd <2 x double> %i.dk, %i.dn
  %.sroa.0.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i20.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16..sroa.0.16. = load <2 x double>, ptr %.sroa.0.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i20.sroa_idx, align 16 ; 7 uses
  %i.dp = shufflevector <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = extractelement <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., i64 0
  %i.dr = fmul double %i.dg, %i.dq                ; 2 uses
  %i.ds = shufflevector <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dt = fmul <2 x double> %i.ds, %i.di
  %i.du = shufflevector <2 x double> %.sroa.0.24..sroa.0.24..sroa.0.24., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dv = fmul <2 x double> %i.dl, %i.du
  %i.dw = fadd <2 x double> %i.dt, %i.dv
  %i.dx = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x double> %i.di, %i.db
  %i.dz = fmul double %i.dr, %.sroa.0164.8.vec.extract168
  %.sroa.0164.0.vec.extract166 = extractelement <2 x double> %i.cx, i64 0
  %i.ea = fneg double %.sroa.0164.0.vec.extract166 ; 2 uses
  %.sroa.16.56.vec.insert = insertelement <2 x double> %i.db, double %i.ea, i64 1
  %i.eb = fmul <2 x double> %.sroa.16.56.vec.insert, %i.dh ; 3 uses
  %i.ec = fmul <2 x double> %i.dp, %i.eb
  %i.ed = fadd <2 x double> %i.ec, %i.do
  %i.ee = fmul <2 x double> %i.dx, %i.eb
  %i.ef = fadd <2 x double> %i.ee, %i.dw
  %i.eg = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fmul <2 x double> %i.eh, %i.dl
  %i.ej = fadd <2 x double> %i.ei, %i.dy
  %i.ek = fmul <2 x double> %i.eb, zeroinitializer
  %i.el = fadd <2 x double> %i.ek, %i.ej
  %i.em = shufflevector <2 x double> %.sroa.0.0..sroa.0.0..sroa.0.0., <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x i32> <i32 0, i32 2>
  %i.en = fmul <2 x double> %i.em, splat (double 5.000000e-01)
  %i.eo = fsub <2 x double> <double 1.000000e+00, double 0.000000e+00>, %i.en
  %i.ep = fadd <2 x double> %i.ed, %i.eo
  %i.eq = shufflevector <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x double> %.sroa.0.24..sroa.0.24..sroa.0.24., <2 x i32> <i32 1, i32 3>
  %i.er = fmul <2 x double> %i.eq, splat (double 5.000000e-01)
  %i.es = fsub <2 x double> <double 0.000000e+00, double 1.000000e+00>, %i.er
  %i.et = fadd <2 x double> %i.ef, %i.es
  %i.eu = fmul <2 x double> %i.cx, <double 1.000000e+00, double 5.000000e-01> ; 2 uses
  %i.ev = fsub <2 x double> <double poison, double 0.000000e+00>, %i.eu
  %i.ew = fmul <2 x double> %i.eu, <double 5.000000e-01, double poison>
  %i.ex = shufflevector <2 x double> %i.ev, <2 x double> %i.ew, <2 x i32> <i32 1, i32 2>
  %i.ey = shufflevector <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x double> %.sroa.0.0..sroa.0.0..sroa.0.0., <2 x i32> <i32 1, i32 2>
  %i.ez = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x double> %i.ey, %i.fa
  %i.fc = insertelement <2 x double> %i.cx, double 0.000000e+00, i64 1
  %i.fd = fmul <2 x double> %i.fc, %i.dh          ; 4 uses
  %i.fe = extractelement <2 x double> %i.fd, i64 1
  %i.ff = fmul ninf double %i.fe, 0.000000e+00
  %i.fg = shufflevector <2 x double> %.sroa.0.24..sroa.0.24..sroa.0.24., <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x i32> <i32 1, i32 2>
  %i.fh = fmul <2 x double> %i.fg, %i.fd
  %i.fi = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> %i.cx, <2 x i32> <i32 2, i32 0>
  %i.fj = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fk = fmul <2 x double> %i.fi, %i.fj
  %i.fl = fadd <2 x double> %i.fh, %i.fk
  %i.fm = fadd <2 x double> %i.fb, %i.fl
  %foldExtExtBinop.a = fmul <2 x double> %i.cx, %i.fd
  %i.fn = extractelement <2 x double> %foldExtExtBinop.a, i64 0
  %i.fo = fsub double %i.ff, %i.fn
  %i.fp = fadd double %i.dz, %i.fo
  %i.fq = shufflevector <2 x double> %i.cx, <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x i32> <i32 0, i32 2>
  %i.fr = fmul <2 x double> %i.fq, splat (double 5.000000e-01)
  %i.fs = fsub <2 x double> zeroinitializer, %i.fr
  %i.ft = fadd <2 x double> %i.fs, %i.fm
  %i.fu = fadd <2 x double> %i.ex, <double -0.000000e+00, double 0.000000e+00>
  %i.fv = fadd <2 x double> %i.fu, %i.el
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c, %bb.b
  %.sroa.10.0 = phi <2 x double> [ %i.bo, %bb.b ], [ %i.et, %bb.c ]
  %.sroa.0146.0 = phi <2 x double> [ %i.bk, %bb.b ], [ %i.ep, %bb.c ]
  %.sroa.18.0 = phi <2 x double> [ %i.cj, %bb.b ], [ %i.fv, %bb.c ]
  %.sroa.23.0.in = phi double [ %i.bg, %bb.b ], [ %i.fp, %bb.c ]
  %.sroa.0164.0 = phi <2 x double> [ %i.u, %bb.b ], [ %i.cx, %bb.c ]
  %.sroa.9.0 = phi double [ %i.v, %bb.b ], [ %i.cz, %bb.c ]
  %i.fw = phi <2 x double> [ %i.ch, %bb.b ], [ %i.ft, %bb.c ]
  %.sroa.23.0 = fadd double %.sroa.23.0.in, 1.000000e+00
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fy = load <2 x double>, ptr %i.fx, align 16  ; 2 uses
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ga = fmul <2 x double> %.sroa.0146.0, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gc = load <2 x double>, ptr %i.gb, align 8   ; 4 uses
  %i.gd = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ge = fmul <2 x double> %.sroa.10.0, %i.gd
  %i.gf = fadd <2 x double> %i.ga, %i.ge
  %i.gg = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gh = fmul <2 x double> %.sroa.18.0, %i.gg
  %i.gi = fadd <2 x double> %i.gh, %i.gf
  %i.gj = shufflevector <2 x double> %i.gc, <2 x double> %i.fy, <2 x i32> <i32 0, i32 2>
  %i.gk = fmul <2 x double> %i.gj, %i.fw          ; 2 uses
  %i.gl = extractelement <2 x double> %i.gc, i64 1
  %i.gm = fmul double %i.gl, %.sroa.23.0
  %i.gn = extractelement <2 x double> %i.gk, i64 0
  %i.go = fadd double %i.gn, %i.gm
  %i.gp = extractelement <2 x double> %i.gk, i64 1
  %i.gq = fadd double %i.gp, %i.go
  store <2 x double> %.sroa.0164.0, ptr %0, align 16, !tbaa !8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 16, !tbaa !8
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> %i.gi, ptr %scevgep, align 8, !tbaa !8
  %.sroa.4.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.gq, ptr %.sroa.4.0.scevgep.sroa_idx, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @_ZN3g2o13EdgeSE3Expmap14linearizeOplusEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(664) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %.sroa.0105.i49 = alloca [6 x double], align 16 ; 13 uses
  %.sroa.19.i50 = alloca [3 x double], align 16   ; 7 uses
  %.sroa.0105.i = alloca [6 x double], align 16   ; 13 uses
  %.sroa.19.i = alloca [3 x double], align 16     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %.sroa.0174.0.copyload = load <2 x i64>, ptr %i.d, align 16
  %.sroa.4175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %.sroa.4175.0.copyload = load <2 x i64>, ptr %.sroa.4175.0..sroa_idx, align 16, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %.sroa.5176.32.copyload = load <2 x double>, ptr %i.e, align 16 ; 2 uses
  %.sroa.7177.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %.sroa.7177.32.copyload = load double, ptr %.sroa.7177.32..sroa_idx, align 16, !tbaa !58 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %.sroa.0171.0.copyload = load <2 x i64>, ptr %i.h, align 16
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %.sroa.4172.0.copyload = load <2 x i64>, ptr %.sroa.4172.0..sroa_idx, align 16, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %.sroa.5.32.copyload = load <2 x double>, ptr %i.i, align 16 ; 2 uses
  %.sroa.7173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %.sroa.7173.32.copyload = load double, ptr %.sroa.7173.32..sroa_idx, align 16, !tbaa !58 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.k = load <2 x i64>, ptr %i.j, align 16, !tbaa !58, !noalias !124
  %i.l = xor <2 x i64> %i.k, splat (i64 -9223372036854775808)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.n = load <2 x i64>, ptr %i.m, align 16, !tbaa !58, !noalias !124
  %i.o = xor <2 x i64> %i.n, <i64 -9223372036854775808, i64 0>
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.q = load <2 x double>, ptr %i.p, align 16, !noalias !131 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = load double, ptr %i.r, align 16, !tbaa !8, !noalias !131 ; 5 uses
  %bc.i = bitcast <2 x i64> %i.l to <2 x double>  ; 6 uses
  %bc7.i = bitcast <2 x i64> %i.o to <2 x double> ; 7 uses
  %i.t = xor <2 x i64> %.sroa.0171.0.copyload, splat (i64 -9223372036854775808) ; 5 uses
  %i.u = xor <2 x i64> %.sroa.4172.0.copyload, <i64 -9223372036854775808, i64 0> ; 5 uses
  %i.v = load <2 x double>, ptr %i.p, align 16, !tbaa !58, !noalias !136
  %i.w = load <2 x double>, ptr %i.j, align 16, !tbaa !58, !noalias !145 ; 4 uses
  %i.x = load <2 x double>, ptr %i.m, align 16, !tbaa !58, !noalias !145 ; 4 uses
  %i.y = bitcast <2 x i64> %i.t to <2 x double>
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.0131.sroa.0.8.vec.extract290 = extractelement <2 x i64> %i.t, i64 1
  %i.aa = bitcast i64 %.sroa.0131.sroa.0.8.vec.extract290 to <1 x double>
  %i.ab = shufflevector <1 x double> %i.aa, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = bitcast <2 x i64> %i.u to <2 x double>
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.0131.sroa.9.24.vec.extract295 = extractelement <2 x i64> %i.u, i64 1
  %i.ae = bitcast i64 %.sroa.0131.sroa.9.24.vec.extract295 to <1 x double>
  %i.af = shufflevector <1 x double> %i.ae, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ag = fmul <2 x double> %i.w, %i.af
  %i.ah = fmul <2 x double> %i.x, %i.ab
  %i.ai = fadd <2 x double> %i.ah, %i.ag
  %i.aj = fmul <2 x double> %i.w, %i.ad
  %i.ak = fmul <2 x double> %i.x, %i.z
  %i.al = fsub <2 x double> %i.aj, %i.ak
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.an = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.ai, <2 x double> %i.am) ; 2 uses
  %i.ao = fmul <2 x double> %i.x, %i.af
end_hunk_0
