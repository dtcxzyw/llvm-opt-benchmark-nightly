Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_expmap?download=true
inline.NumInlined: 4597
inline.NumDeleted: 2529
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN3g2o13EdgeSE3Expmap12computeErrorEv:._crit_edge.i.i
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
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load double, ptr %i.a, align 16, !tbaa !8, !noalias !115 ; 2 uses
  %i.c = fmul double %i.b, 2.000000e+00           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !8, !noalias !115 ; 2 uses
  %i.f = fmul double %i.c, %i.e                   ; 2 uses
  %i.g = fmul double %i.b, %i.c                   ; 2 uses
  %i.h = load <2 x double>, ptr %1, align 16, !tbaa !8, !noalias !115 ; 4 uses
  %i.i = fmul <2 x double> %i.h, splat (double 2.000000e+00) ; 3 uses
  %i.j = insertelement <2 x double> poison, double %i.e, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.i, %i.k             ; 2 uses
  %shift = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.h, %shift
  %i.m = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.n = fmul <2 x double> %i.h, %i.i             ; 2 uses
  %i.o = insertelement <2 x double> poison, double %i.c, i64 0
  %i.p = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.q = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x double> %i.p, %i.q             ; 2 uses
  %i.s = extractelement <2 x double> %i.n, i64 1  ; 2 uses
  %i.t = fadd double %i.s, %i.g
  %i.u = fsub double 1.000000e+00, %i.t
  %i.v = fsub double %i.m, %i.f
  %i.w = fadd double %i.m, %i.f
  %i.x = extractelement <2 x double> %i.n, i64 0  ; 2 uses
  %i.y = fadd double %i.x, %i.g
  %i.z = fsub double 1.000000e+00, %i.y
  %i.aa = fsub <2 x double> %i.r, %i.l
  %i.ab = fadd <2 x double> %i.r, %i.l
  %i.ac = fadd double %i.x, %i.s
  %i.ad = fsub double 1.000000e+00, %i.ac
  %i.ae = fadd double %i.u, %i.z
  %i.af = fadd double %i.ad, %i.ae
  %i.ag = fadd double %i.af, -1.000000e+00
  %i.ah = fmul double %i.ag, 5.000000e-01         ; 4 uses
  %i.ai = fsub <2 x double> %i.ab, %i.aa          ; 2 uses
  %i.aj = fsub double %i.w, %i.v                  ; 2 uses
  %i.ak = tail call noundef double @llvm.fabs.f64(double %i.ah)
  %i.al = fcmp ogt double %i.ak, 9.999900e-01
  br i1 %i.al, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.am = fmul <2 x double> %i.ai, splat (double 5.000000e-01) ; 7 uses
  %i.an = fmul double %i.aj, 5.000000e-01         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0120)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.0120, i8 0, i64 40, i1 false), !alias.scope !118
  %i.ao = fneg double %i.an
  %.sroa.0120.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i.sroa_idx193 = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 24
  store double %i.ao, ptr %.sroa.0120.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i.sroa_idx193, align 8, !tbaa !8, !alias.scope !118
  %.sroa.0164.8.vec.extract = extractelement <2 x double> %i.am, i64 1 ; 2 uses
  %i.ap = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %.sroa.0120.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i.sroa_idx191 = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 8
  store double %i.an, ptr %.sroa.0120.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i.sroa_idx191, align 8, !tbaa !8, !alias.scope !118
  %i.aq = fneg double %.sroa.0164.8.vec.extract
  %.sroa.0120.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx192 = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 16
  store double %i.aq, ptr %.sroa.0120.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx192, align 16, !tbaa !8, !alias.scope !118
  %.sroa.0120.0..sroa.0120.0..sroa.0120.0. = load <2 x double>, ptr %.sroa.0120, align 16 ; 4 uses
  %i.ar = fmul <2 x double> %.sroa.0120.0..sroa.0120.0..sroa.0120.0., splat (double f0x3FB5555555555555) ; 3 uses
  %i.as = shufflevector <2 x double> %.sroa.0120.0..sroa.0120.0..sroa.0120.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x double> %i.ar, %i.as
  %.sroa.0120.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 24
  %.sroa.0120.24..sroa.0120.24..sroa.0120.24. = load <2 x double>, ptr %.sroa.0120.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i.sroa_idx, align 8 ; 4 uses
  %i.au = fmul <2 x double> %.sroa.0120.24..sroa.0120.24..sroa.0120.24., splat (double f0x3FB5555555555555) ; 3 uses
  %.sroa.0120.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 8
  %.sroa.0120.8..sroa.0120.8..sroa.0120.8. = load <2 x double>, ptr %.sroa.0120.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i.sroa_idx, align 8 ; 3 uses
  %i.av = shufflevector <2 x double> %.sroa.0120.8..sroa.0120.8..sroa.0120.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x double> %i.au, %i.av
  %i.ax = fadd <2 x double> %i.at, %i.aw
  %.sroa.0120.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0120, i64 16
  %.sroa.0120.16..sroa.0120.16..sroa.0120.16. = load <2 x double>, ptr %.sroa.0120.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx, align 16 ; 6 uses
  %i.ay = shufflevector <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., <2 x double> poison, <2 x i32> zeroinitializer
  %2 = extractelement <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., i64 0
  %3 = fmul double %2, f0x3FB5555555555555        ; 2 uses
  %i.az = shufflevector <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ba = fmul <2 x double> %i.ar, %i.az
  %i.bb = shufflevector <2 x double> %.sroa.0120.24..sroa.0120.24..sroa.0120.24., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = fmul <2 x double> %i.au, %i.bb
  %i.bd = fadd <2 x double> %i.ba, %i.bc
  %i.be = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x double> %i.ar, %i.ap
  %4 = fmul double %3, %.sroa.0164.8.vec.extract
  %.sroa.0164.0.vec.extract = extractelement <2 x double> %i.am, i64 0 ; 3 uses
  %i.bg = fneg double %.sroa.0164.0.vec.extract   ; 2 uses
  %.sroa.16132.56.vec.insert = insertelement <2 x double> %i.ap, double %i.bg, i64 1
  %i.bh = fmul <2 x double> %.sroa.16132.56.vec.insert, splat (double f0x3FB5555555555555) ; 3 uses
  %i.bi = fmul <2 x double> %i.bh, %i.ay
  %i.bj = fadd <2 x double> %i.ax, %i.bi
  %5 = fmul double %.sroa.0164.0.vec.extract, f0x3FB5555555555555 ; 2 uses
  %i.bk = fmul <2 x double> %i.be, %i.bh
  %i.bl = fadd <2 x double> %i.bk, %i.bd
  %i.bm = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x double> %i.bn, %i.au
  %i.bp = fadd <2 x double> %i.bo, %i.bf
  %i.bq = fmul <2 x double> %i.bh, zeroinitializer
  %i.br = fadd <2 x double> %i.bq, %i.bp
  %6 = fmul double %.sroa.0164.0.vec.extract, %5
  %7 = fsub double 0.000000e+00, %6
  %8 = fadd double %4, %7
  %i.bs = shufflevector <2 x double> %.sroa.0120.0..sroa.0120.0..sroa.0120.0., <2 x double> %.sroa.0120.8..sroa.0120.8..sroa.0120.8., <2 x i32> <i32 0, i32 2>
  %i.bt = fmul <2 x double> %i.bs, splat (double 5.000000e-01)
  %i.bu = fsub <2 x double> <double 1.000000e+00, double 0.000000e+00>, %i.bt
  %i.bv = fadd <2 x double> %i.bj, %i.bu
  %i.bw = shufflevector <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., <2 x double> %.sroa.0120.24..sroa.0120.24..sroa.0120.24., <2 x i32> <i32 1, i32 3>
  %i.bx = fmul <2 x double> %i.bw, splat (double 5.000000e-01)
  %i.by = fsub <2 x double> <double 0.000000e+00, double 1.000000e+00>, %i.bx
  %i.bz = fadd <2 x double> %i.bl, %i.by
  %i.ca = fmul <2 x double> %i.am, <double 1.000000e+00, double 5.000000e-01> ; 2 uses
  %i.cb = fsub <2 x double> <double poison, double 0.000000e+00>, %i.ca
  %i.cc = fmul <2 x double> %i.ca, <double 5.000000e-01, double poison>
  %i.cd = shufflevector <2 x double> %i.cb, <2 x double> %i.cc, <2 x i32> <i32 1, i32 2>
  %i.ce = shufflevector <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., <2 x double> %.sroa.0120.0..sroa.0120.0..sroa.0120.0., <2 x i32> <i32 1, i32 2>
  %9 = insertelement <2 x double> poison, double %3, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %foldExtExtBinop182.a = fmul <2 x double> %i.ce, %10
  %11 = insertelement <2 x double> poison, double %5, i64 0
  %i.cf = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = shufflevector <2 x double> %.sroa.0120.24..sroa.0120.24..sroa.0120.24., <2 x double> %.sroa.0120.8..sroa.0120.8..sroa.0120.8., <2 x i32> <i32 1, i32 2>
  %i.ch = fmul <2 x double> %i.cf, %i.cg
  %12 = shufflevector <2 x double> %i.am, <2 x double> %.sroa.0120.16..sroa.0120.16..sroa.0120.16., <2 x i32> <i32 0, i32 2> ; 2 uses
  %foldExtExtBinop184 = fmul <2 x double> %12, zeroinitializer
  %13 = fadd <2 x double> %i.ch, %foldExtExtBinop184
  %14 = fadd <2 x double> %foldExtExtBinop182.a, %13
  %i.ci = fmul <2 x double> %12, splat (double 5.000000e-01)
  %i.cj = fsub <2 x double> zeroinitializer, %i.ci
  %i.ck = fadd <2 x double> %i.cj, %14
  %i.cl = fadd <2 x double> %i.cd, <double -0.000000e+00, double 0.000000e+00>
  %i.cm = fadd <2 x double> %i.cl, %i.br
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0120)
  br label %.preheader.preheader

bb.c:                                             ; preds = %bb.a
  %i.cn = tail call double @acos(double noundef %i.ah) #20 ; 4 uses
  %i.co = fneg double %i.ah
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.co, double %i.ah, double 1.000000e+00)
  %i.cq = tail call double @sqrt(double noundef %i.cp) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.0, i8 0, i64 40, i1 false), !alias.scope !121
  %i.cr = fmul double %i.cn, 5.000000e-01
  %i.cs = tail call double @tan(double noundef %i.cr) #20
  %i.ct = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cs, i64 1
  %i.cv = fmul <2 x double> %i.cu, splat (double 2.000000e+00)
  %i.cw = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fdiv <2 x double> %i.cx, %i.cv          ; 3 uses
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x double> %i.ai, %i.cz          ; 10 uses
  %i.db = extractelement <2 x double> %i.cy, i64 0
  %i.dc = fmul double %i.aj, %i.db                ; 3 uses
  %i.dd = fneg double %i.dc
  %.sroa.0.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i21.sroa_idx190 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  store double %i.dd, ptr %.sroa.0.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i21.sroa_idx190, align 8, !tbaa !8, !alias.scope !121
  %.sroa.0164.8.vec.extract168 = extractelement <2 x double> %i.da, i64 1 ; 2 uses
  %i.de = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %.sroa.0.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i19.sroa_idx188 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  store double %i.dc, ptr %.sroa.0.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i19.sroa_idx188, align 8, !tbaa !8, !alias.scope !121
  %i.df = fneg double %.sroa.0164.8.vec.extract168
  %.sroa.0.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i20.sroa_idx189 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store double %i.df, ptr %.sroa.0.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i20.sroa_idx189, align 16, !tbaa !8, !alias.scope !121
  %i.dg = extractelement <2 x double> %i.cy, i64 1
  %i.dh = fsub double 1.000000e+00, %i.dg
  %i.di = fmul double %i.cn, %i.cn
  %i.dj = fdiv double %i.dh, %i.di                ; 2 uses
  %.sroa.1525.56.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i27 = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dk = shufflevector <2 x double> %.sroa.1525.56.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i27, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0. = load <2 x double>, ptr %.sroa.0, align 16 ; 4 uses
  %i.dl = fmul <2 x double> %.sroa.0.0..sroa.0.0..sroa.0.0., %i.dk ; 3 uses
  %i.dm = shufflevector <2 x double> %.sroa.0.0..sroa.0.0..sroa.0.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x double> %i.dm, %i.dl
  %.sroa.0.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i21.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24..sroa.0.24. = load <2 x double>, ptr %.sroa.0.24..07.i.i.i.i.ptr.3.i.i.i.i.i.i.i.i.i.i21.sroa_idx, align 8 ; 4 uses
  %i.do = fmul <2 x double> %.sroa.0.24..sroa.0.24..sroa.0.24., %i.dk ; 3 uses
  %.sroa.0.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i19.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..sroa.0.8. = load <2 x double>, ptr %.sroa.0.8..07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i.i.i19.sroa_idx, align 8 ; 3 uses
  %i.dp = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x double> %i.dp, %i.do
  %i.dr = fadd <2 x double> %i.dn, %i.dq
  %.sroa.0.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i20.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16..sroa.0.16. = load <2 x double>, ptr %.sroa.0.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i20.sroa_idx, align 16 ; 7 uses
  %i.ds = shufflevector <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = extractelement <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., i64 0
  %i.du = fmul double %i.dj, %i.dt                ; 2 uses
  %i.dv = shufflevector <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dw = fmul <2 x double> %i.dv, %i.dl
  %i.dx = shufflevector <2 x double> %.sroa.0.24..sroa.0.24..sroa.0.24., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dy = fmul <2 x double> %i.do, %i.dx
  %i.dz = fadd <2 x double> %i.dw, %i.dy
  %i.ea = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x double> %i.dl, %i.de
  %i.ec = fmul double %i.du, %.sroa.0164.8.vec.extract168
  %.sroa.0164.0.vec.extract166 = extractelement <2 x double> %i.da, i64 0
  %i.ed = fneg double %.sroa.0164.0.vec.extract166 ; 2 uses
  %.sroa.16.56.vec.insert = insertelement <2 x double> %i.de, double %i.ed, i64 1
  %i.ee = fmul <2 x double> %.sroa.16.56.vec.insert, %i.dk ; 3 uses
  %i.ef = fmul <2 x double> %i.ds, %i.ee
  %i.eg = fadd <2 x double> %i.ef, %i.dr
  %i.eh = fmul <2 x double> %i.ea, %i.ee
  %i.ei = fadd <2 x double> %i.eh, %i.dz
  %i.ej = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x double> %i.ek, %i.do
  %i.em = fadd <2 x double> %i.el, %i.eb
  %i.en = fmul <2 x double> %i.ee, zeroinitializer
  %i.eo = fadd <2 x double> %i.en, %i.em
  %i.ep = shufflevector <2 x double> %.sroa.0.0..sroa.0.0..sroa.0.0., <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x i32> <i32 0, i32 2>
  %i.eq = fmul <2 x double> %i.ep, splat (double 5.000000e-01)
  %i.er = fsub <2 x double> <double 1.000000e+00, double 0.000000e+00>, %i.eq
  %i.es = fadd <2 x double> %i.eg, %i.er
  %i.et = shufflevector <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x double> %.sroa.0.24..sroa.0.24..sroa.0.24., <2 x i32> <i32 1, i32 3>
  %i.eu = fmul <2 x double> %i.et, splat (double 5.000000e-01)
  %i.ev = fsub <2 x double> <double 0.000000e+00, double 1.000000e+00>, %i.eu
  %i.ew = fadd <2 x double> %i.ei, %i.ev
  %i.ex = fmul <2 x double> %i.da, <double 1.000000e+00, double 5.000000e-01> ; 2 uses
  %i.ey = fsub <2 x double> <double poison, double 0.000000e+00>, %i.ex
  %i.ez = fmul <2 x double> %i.ex, <double 5.000000e-01, double poison>
  %i.fa = shufflevector <2 x double> %i.ey, <2 x double> %i.ez, <2 x i32> <i32 1, i32 2>
  %i.fb = shufflevector <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x double> %.sroa.0.0..sroa.0.0..sroa.0.0., <2 x i32> <i32 1, i32 2>
  %i.fc = insertelement <2 x double> poison, double %i.du, i64 0
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = fmul <2 x double> %i.fb, %i.fd
  %i.ff = insertelement <2 x double> %i.da, double 0.000000e+00, i64 1
  %i.fg = fmul <2 x double> %i.ff, %i.dk          ; 4 uses
  %i.fh = extractelement <2 x double> %i.fg, i64 1
  %i.fi = fmul ninf double %i.fh, 0.000000e+00
  %i.fj = shufflevector <2 x double> %.sroa.0.24..sroa.0.24..sroa.0.24., <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x i32> <i32 1, i32 2>
  %i.fk = fmul <2 x double> %i.fj, %i.fg
  %i.fl = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> %i.da, <2 x i32> <i32 2, i32 0>
  %i.fm = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fn = fmul <2 x double> %i.fl, %i.fm
  %i.fo = fadd <2 x double> %i.fk, %i.fn
  %i.fp = fadd <2 x double> %i.fe, %i.fo
  %foldExtExtBinop186 = fmul <2 x double> %i.da, %i.fg
  %i.fq = extractelement <2 x double> %foldExtExtBinop186, i64 0
  %i.fr = fsub double %i.fi, %i.fq
  %i.fs = fadd double %i.ec, %i.fr
  %i.ft = shufflevector <2 x double> %i.da, <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16., <2 x i32> <i32 0, i32 2>
  %i.fu = fmul <2 x double> %i.ft, splat (double 5.000000e-01)
  %i.fv = fsub <2 x double> zeroinitializer, %i.fu
  %i.fw = fadd <2 x double> %i.fv, %i.fp
  %i.fx = fadd <2 x double> %i.fa, <double -0.000000e+00, double 0.000000e+00>
  %i.fy = fadd <2 x double> %i.fx, %i.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c, %bb.b
  %.sroa.10.0 = phi <2 x double> [ %i.bz, %bb.b ], [ %i.ew, %bb.c ]
  %.sroa.0146.0 = phi <2 x double> [ %i.bv, %bb.b ], [ %i.es, %bb.c ]
  %.sroa.18.0 = phi <2 x double> [ %i.cm, %bb.b ], [ %i.fy, %bb.c ]
  %.sroa.23.0.in = phi double [ %8, %bb.b ], [ %i.fs, %bb.c ]
  %.sroa.0164.0 = phi <2 x double> [ %i.am, %bb.b ], [ %i.da, %bb.c ]
  %.sroa.9.0 = phi double [ %i.an, %bb.b ], [ %i.dc, %bb.c ]
  %i.fz = phi <2 x double> [ %i.ck, %bb.b ], [ %i.fw, %bb.c ]
  %.sroa.23.0 = fadd double %.sroa.23.0.in, 1.000000e+00
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gb = load <2 x double>, ptr %i.ga, align 16  ; 2 uses
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gd = fmul <2 x double> %.sroa.0146.0, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gf = load <2 x double>, ptr %i.ge, align 8   ; 4 uses
  %i.gg = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gh = fmul <2 x double> %.sroa.10.0, %i.gg
  %i.gi = fadd <2 x double> %i.gd, %i.gh
  %i.gj = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gk = fmul <2 x double> %.sroa.18.0, %i.gj
  %i.gl = fadd <2 x double> %i.gk, %i.gi
  %i.gm = shufflevector <2 x double> %i.gf, <2 x double> %i.gb, <2 x i32> <i32 0, i32 2>
  %i.gn = fmul <2 x double> %i.gm, %i.fz          ; 2 uses
  %i.go = extractelement <2 x double> %i.gf, i64 1
  %i.gp = fmul double %i.go, %.sroa.23.0
  %i.gq = extractelement <2 x double> %i.gn, i64 0
  %i.gr = fadd double %i.gq, %i.gp
  %i.gs = extractelement <2 x double> %i.gn, i64 1
  %i.gt = fadd double %i.gs, %i.gr
  store <2 x double> %.sroa.0164.0, ptr %0, align 16, !tbaa !8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 16, !tbaa !8
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> %i.gl, ptr %scevgep, align 8, !tbaa !8
  %.sroa.4.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.gt, ptr %.sroa.4.0.scevgep.sroa_idx, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @_ZN3g2o13EdgeSE3Expmap14linearizeOplusEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(664) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %.sroa.0118.i49 = alloca [6 x double], align 16 ; 13 uses
  %.sroa.19.i50 = alloca [3 x double], align 16   ; 7 uses
  %.sroa.0118.i = alloca [6 x double], align 16   ; 13 uses
  %.sroa.19.i = alloca [3 x double], align 16     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %.sroa.0172.0.copyload = load <2 x i64>, ptr %i.d, align 16
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %.sroa.4173.0.copyload = load <2 x i64>, ptr %.sroa.4173.0..sroa_idx, align 16, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %.sroa.5174.32.copyload = load <2 x double>, ptr %i.e, align 16 ; 2 uses
  %.sroa.7175.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %.sroa.7175.32.copyload = load double, ptr %.sroa.7175.32..sroa_idx, align 16, !tbaa !58 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %.sroa.0169.0.copyload = load <2 x i64>, ptr %i.h, align 16
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %.sroa.4170.0.copyload = load <2 x i64>, ptr %.sroa.4170.0..sroa_idx, align 16, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %.sroa.5.32.copyload = load <2 x double>, ptr %i.i, align 16 ; 2 uses
  %.sroa.7171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %.sroa.7171.32.copyload = load double, ptr %.sroa.7171.32..sroa_idx, align 16, !tbaa !58 ; 3 uses
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
  %i.t = xor <2 x i64> %.sroa.0169.0.copyload, splat (i64 -9223372036854775808) ; 5 uses
  %i.u = xor <2 x i64> %.sroa.4170.0.copyload, <i64 -9223372036854775808, i64 0> ; 5 uses
  %i.v = load <2 x double>, ptr %i.p, align 16, !tbaa !58, !noalias !136
  %i.w = load <2 x double>, ptr %i.j, align 16, !tbaa !58, !noalias !145 ; 4 uses
  %i.x = load <2 x double>, ptr %i.m, align 16, !tbaa !58, !noalias !145 ; 4 uses
  %i.y = bitcast <2 x i64> %i.t to <2 x double>
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.0129.sroa.0.8.vec.extract288 = extractelement <2 x i64> %i.t, i64 1
  %i.aa = bitcast i64 %.sroa.0129.sroa.0.8.vec.extract288 to <1 x double>
  %i.ab = shufflevector <1 x double> %i.aa, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = bitcast <2 x i64> %i.u to <2 x double>
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.0129.sroa.9.24.vec.extract293 = extractelement <2 x i64> %i.u, i64 1
  %i.ae = bitcast i64 %.sroa.0129.sroa.9.24.vec.extract293 to <1 x double>
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
  %i.ap = fmul <2 x double> %i.w, %i.ab
  %i.aq = fsub <2 x double> %i.ao, %i.ap
  %i.ar = fmul <2 x double> %i.x, %i.ad
  %i.as = fmul <2 x double> %i.w, %i.z
  %i.at = fadd <2 x double> %i.as, %i.ar
  %i.au = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.av = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.au, <2 x double> %i.at) ; 2 uses
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ax = extractelement <2 x double> %i.av, i64 0
  %i.ay = fcmp olt double %i.ax, 0.000000e+00     ; 2 uses
  %i.az = fneg <2 x double> %i.an
  %i.ba = fneg <2 x double> %i.aw
  %i.bb = select i1 %i.ay, <2 x double> %i.ba, <2 x double> %i.aw ; 4 uses
  %i.bc = select i1 %i.ay, <2 x double> %i.az, <2 x double> %i.an ; 4 uses
  %i.bd = fmul <2 x double> %i.bc, %i.bc
  %i.be = fmul <2 x double> %i.bb, %i.bb
  %i.bf = fadd <2 x double> %i.be, %i.bd          ; 2 uses
  %shift = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.bf, %shift
  %i.bg = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bh = fcmp ogt double %i.bg, 0.000000e+00     ; 2 uses
  %.scalar.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.bg)
  %i.bi = insertelement <2 x double> poison, double %.scalar.i.i.i.i, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = fdiv <2 x double> %i.bc, %i.bj
  %i.bl = fdiv <2 x double> %i.bb, %i.bj
  %.sroa.0129.sroa.9.1.in = select i1 %i.bh, <2 x double> %i.bl, <2 x double> %i.bb ; 2 uses
  %.sroa.0129.sroa.0.1.in = select i1 %i.bh, <2 x double> %i.bk, <2 x double> %i.bc ; 2 uses
  %i.bm = xor <2 x i64> %.sroa.0172.0.copyload, splat (i64 -9223372036854775808) ; 5 uses
  %i.bn = xor <2 x i64> %.sroa.4173.0.copyload, <i64 -9223372036854775808, i64 0> ; 5 uses
  %i.bo = bitcast <2 x i64> %i.bm to <2 x double>
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.091.sroa.0.8.vec.extract278 = extractelement <2 x i64> %i.bm, i64 1
  %i.bq = bitcast i64 %.sroa.091.sroa.0.8.vec.extract278 to <1 x double>
  %i.br = shufflevector <1 x double> %i.bq, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = bitcast <2 x i64> %i.bn to <2 x double>
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.091.sroa.9.24.vec.extract283 = extractelement <2 x i64> %i.bn, i64 1
  %i.bu = bitcast i64 %.sroa.091.sroa.9.24.vec.extract283 to <1 x double>
  %i.bv = shufflevector <1 x double> %i.bu, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bw = fmul <2 x double> %i.bv, %bc.i
  %i.bx = fmul <2 x double> %i.br, %bc7.i
  %i.by = fadd <2 x double> %i.bx, %i.bw
  %i.bz = fmul <2 x double> %i.bt, %bc.i
  %i.ca = fmul <2 x double> %i.bp, %bc7.i
  %i.cb = fsub <2 x double> %i.bz, %i.ca
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cd = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.by, <2 x double> %i.cc) ; 2 uses
  %i.ce = fmul <2 x double> %i.bv, %bc7.i
  %i.cf = fmul <2 x double> %i.br, %bc.i
  %i.cg = fsub <2 x double> %i.ce, %i.cf
  %i.ch = fmul <2 x double> %i.bt, %bc7.i
  %i.ci = fmul <2 x double> %i.bp, %bc.i
  %i.cj = fadd <2 x double> %i.ci, %i.ch
  %i.ck = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cl = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.ck, <2 x double> %i.cj) ; 2 uses
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cn = extractelement <2 x double> %i.cl, i64 0
  %i.co = fcmp olt double %i.cn, 0.000000e+00     ; 2 uses
  %i.cp = fneg <2 x double> %i.cd
  %i.cq = fneg <2 x double> %i.cm
  %i.cr = select i1 %i.co, <2 x double> %i.cq, <2 x double> %i.cm ; 4 uses
  %i.cs = select i1 %i.co, <2 x double> %i.cp, <2 x double> %i.cd ; 4 uses
  %i.ct = fmul <2 x double> %i.cs, %i.cs
  %i.cu = fmul <2 x double> %i.cr, %i.cr
  %i.cv = fadd <2 x double> %i.cu, %i.ct          ; 2 uses
  %shift263 = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop264 = fadd <2 x double> %i.cv, %shift263
  %i.cw = extractelement <2 x double> %foldExtExtBinop264, i64 0 ; 2 uses
  %i.cx = fcmp ogt double %i.cw, 0.000000e+00     ; 2 uses
  %.scalar.i.i.i.i47 = tail call double @llvm.sqrt.f64(double %i.cw)
  %i.cy = insertelement <2 x double> poison, double %.scalar.i.i.i.i47, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.da = fdiv <2 x double> %i.cs, %i.cz
  %i.db = fdiv <2 x double> %i.cr, %i.cz
  %.sroa.091.sroa.9.1.in = select i1 %i.cx, <2 x double> %i.db, <2 x double> %i.cr ; 2 uses
  %.sroa.091.sroa.0.1.in = select i1 %i.cx, <2 x double> %i.da, <2 x double> %i.cs ; 2 uses
  %bc7.i27 = bitcast <2 x i64> %i.bn to <2 x double> ; 2 uses
  %i.dc = shufflevector <2 x double> %bc7.i27, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %bc.i26 = bitcast <2 x i64> %i.bm to <2 x double> ; 4 uses
  %i.dd = extractelement <2 x double> %bc.i26, i64 1 ; 2 uses
  %i.de = fneg double %.sroa.7175.32.copyload
  %i.df = extractelement <2 x double> %bc7.i27, i64 0 ; 4 uses
  %i.dg = fneg <2 x double> %.sroa.5174.32.copyload ; 4 uses
  %.sroa.0.8.vec.extract.i.i.i28 = extractelement <2 x double> %i.dg, i64 1
  %i.dh = fneg double %.sroa.0.8.vec.extract.i.i.i28
  %i.di = fmul double %i.df, %i.dh
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.de, double %i.di)
  %.sroa.027.0.vec.insert.i.i.i.i31 = insertelement <2 x double> poison, double %i.dj, i64 0
  %.sroa.0.0.vec.extract.i.i.i29 = extractelement <2 x double> %i.dg, i64 0
  %i.dk = extractelement <2 x double> %bc.i26, i64 0 ; 2 uses
  %i.dl = fmul double %.sroa.7175.32.copyload, %i.dk
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.df, double %.sroa.0.0.vec.extract.i.i.i29, double %i.dl)
  %.sroa.027.8.vec.insert.i.i.i.i32 = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i31, double %i.dm, i64 1 ; 2 uses
  %i.dn = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i32, %.sroa.027.8.vec.insert.i.i.i.i32 ; 5 uses
  %i.do = fmul <2 x double> %i.dc, %i.dn
  %i.dp = fsub <2 x double> %i.do, %.sroa.5174.32.copyload
  %i.dq = shufflevector <2 x i64> %i.bm, <2 x i64> %i.bn, <2 x i32> <i32 1, i32 2>
  %i.dr = bitcast <2 x i64> %i.dq to <2 x double> ; 2 uses
  %i.ds = shufflevector <2 x double> %bc.i26, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dt = shufflevector <2 x double> %bc7.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.du = extractelement <2 x double> %bc.i, i64 1 ; 4 uses
  %i.dv = fneg double %i.s                        ; 2 uses
  %i.dw = extractelement <2 x double> %bc7.i, i64 0 ; 4 uses
  %i.dx = fneg <2 x double> %i.q                  ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.dx, i64 1 ; 2 uses
  %i.dy = fneg double %.sroa.0.8.vec.extract.i.i.i
  %i.dz = fmul double %i.dw, %i.dy
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.du, double %i.dv, double %i.dz)
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.ea, i64 0
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x double> %i.dx, i64 0 ; 2 uses
  %i.eb = extractelement <2 x double> %bc.i, i64 0 ; 4 uses
  %i.ec = fmul double %i.s, %i.eb
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.dw, double %.sroa.0.0.vec.extract.i.i.i, double %i.ec)
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %i.ed, i64 1 ; 2 uses
  %i.ee = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 3 uses
  %i.ef = fmul <2 x double> %i.dt, %i.ee
  %i.eg = fsub <2 x double> %i.ef, %i.q
  %i.eh = fneg double %.sroa.0.0.vec.extract.i.i.i
  %i.ei = fmul double %i.du, %i.eh
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.eb, double %.sroa.0.8.vec.extract.i.i.i, double %i.ei) ; 2 uses
  %i.ek = fadd double %i.ej, %i.ej                ; 3 uses
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.ee, i64 1 ; 2 uses
  %i.el = fneg double %.sroa.027.8.vec.extract.i.i.i.i
  %i.em = fmul double %i.dw, %i.el
  %i.en = tail call double @llvm.fmuladd.f64(double %i.du, double %i.ek, double %i.em)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.en, i64 0
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.ee, i64 0 ; 2 uses
  %i.eo = fneg double %i.ek
  %i.ep = fmul double %i.eb, %i.eo
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.dw, double %.sroa.027.0.vec.extract.i.i.i.i, double %i.ep)
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.eq, i64 1
  %i.er = fadd <2 x double> %i.eg, %.sroa.0.8.vec.insert.i.i.i.i ; 5 uses
  %i.es = shufflevector <2 x double> %i.dg, <2 x double> %i.er, <2 x i32> <i32 1, i32 3>
  %i.et = shufflevector <2 x double> %bc.i26, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.eu = shufflevector <2 x double> %i.dg, <2 x double> %i.er, <2 x i32> <i32 0, i32 2>
  %i.ev = fneg <2 x double> %i.eu
  %i.ew = fmul <2 x double> %i.et, %i.ev
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.es, <2 x double> %i.ew) ; 2 uses
  %i.ey = fadd <2 x double> %i.ex, %i.ex          ; 5 uses
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> %i.dn, <2 x i32> <i32 0, i32 2>
  %i.fa = shufflevector <2 x i64> %i.bn, <2 x i64> %i.bm, <2 x i32> <i32 0, i32 2>
  %i.fb = bitcast <2 x i64> %i.fa to <2 x double> ; 2 uses
  %i.fc = shufflevector <2 x double> %i.dn, <2 x double> %i.ey, <2 x i32> <i32 1, i32 2>
  %i.fd = fneg <2 x double> %i.fc
  %i.fe = fmul <2 x double> %i.fb, %i.fd
  %i.ff = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.ez, <2 x double> %i.fe)
  %i.fg = fadd <2 x double> %i.dp, %i.ff
  %i.fh = extractelement <2 x double> %bc7.i, i64 1
  %i.fi = fmul double %i.fh, %i.ek
  %i.fj = fsub double %i.fi, %i.s
  %i.fk = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %i.fl = fmul double %i.du, %i.fk
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.eb, double %.sroa.027.8.vec.extract.i.i.i.i, double %i.fl)
  %i.fn = fadd double %i.fj, %i.fm                ; 3 uses
  %.sroa.6165.40.vec.extract = extractelement <2 x double> %i.er, i64 1
  %i.fo = fneg double %.sroa.6165.40.vec.extract
  %i.fp = fmul double %i.df, %i.fo
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.fn, double %i.fp)
  %.sroa.027.0.vec.insert.i.i.i.i39 = insertelement <2 x double> poison, double %i.fq, i64 0
  %.sroa.6165.32.vec.extract = extractelement <2 x double> %i.er, i64 0
  %i.fr = fneg double %i.fn
  %i.fs = fmul double %i.dk, %i.fr
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.df, double %.sroa.6165.32.vec.extract, double %i.fs)
  %.sroa.027.8.vec.insert.i.i.i.i40 = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i39, double %i.ft, i64 1 ; 2 uses
  %i.fu = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i40, %.sroa.027.8.vec.insert.i.i.i.i40 ; 5 uses
  %i.fv = fmul <2 x double> %i.dc, %i.fu
  %i.fw = fadd <2 x double> %i.er, %i.fv
  %i.fx = shufflevector <2 x double> %i.ey, <2 x double> %i.fu, <2 x i32> <i32 1, i32 2>
  %i.fy = shufflevector <2 x double> %i.fu, <2 x double> %i.ey, <2 x i32> <i32 1, i32 3>
  %i.fz = fneg <2 x double> %i.fy
  %i.ga = fmul <2 x double> %i.fb, %i.fz
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.fx, <2 x double> %i.ga)
  %i.gc = fadd <2 x double> %i.fw, %i.gb
  %i.gd = fadd <2 x double> %i.fg, %i.gc          ; 5 uses
  %bc7.i7 = bitcast <2 x i64> %i.u to <2 x double> ; 2 uses
  %i.ge = shufflevector <2 x double> %bc7.i7, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %bc.i6 = bitcast <2 x i64> %i.t to <2 x double> ; 4 uses
  %i.gf = extractelement <2 x double> %bc.i6, i64 1 ; 2 uses
  %i.gg = fneg double %.sroa.7171.32.copyload
  %i.gh = extractelement <2 x double> %bc7.i7, i64 0 ; 4 uses
  %i.gi = fneg <2 x double> %.sroa.5.32.copyload  ; 4 uses
  %.sroa.0.8.vec.extract.i.i.i8 = extractelement <2 x double> %i.gi, i64 1
  %i.gj = fneg double %.sroa.0.8.vec.extract.i.i.i8
  %i.gk = fmul double %i.gh, %i.gj
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.gg, double %i.gk)
  %.sroa.027.0.vec.insert.i.i.i.i11 = insertelement <2 x double> poison, double %i.gl, i64 0
  %.sroa.0.0.vec.extract.i.i.i9 = extractelement <2 x double> %i.gi, i64 0
  %i.gm = extractelement <2 x double> %bc.i6, i64 0 ; 2 uses
  %i.gn = fmul double %.sroa.7171.32.copyload, %i.gm
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gh, double %.sroa.0.0.vec.extract.i.i.i9, double %i.gn)
  %.sroa.027.8.vec.insert.i.i.i.i12 = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i11, double %i.go, i64 1 ; 2 uses
  %i.gp = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i12, %.sroa.027.8.vec.insert.i.i.i.i12 ; 5 uses
  %i.gq = fmul <2 x double> %i.ge, %i.gp
  %i.gr = fsub <2 x double> %i.gq, %.sroa.5.32.copyload
  %i.gs = shufflevector <2 x i64> %i.t, <2 x i64> %i.u, <2 x i32> <i32 1, i32 2>
  %i.gt = bitcast <2 x i64> %i.gs to <2 x double> ; 2 uses
  %i.gu = shufflevector <2 x double> %bc.i6, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gv = shufflevector <2 x double> %i.gi, <2 x double> %i.q, <2 x i32> <i32 1, i32 3>
  %i.gw = shufflevector <2 x double> %bc.i6, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gx = shufflevector <2 x double> %i.gi, <2 x double> %i.q, <2 x i32> <i32 0, i32 2>
  %i.gy = fneg <2 x double> %i.gx
  %i.gz = fmul <2 x double> %i.gw, %i.gy
  %i.ha = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.gv, <2 x double> %i.gz) ; 2 uses
  %i.hb = fadd <2 x double> %i.ha, %i.ha          ; 5 uses
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> %i.gp, <2 x i32> <i32 0, i32 2>
  %i.hd = shufflevector <2 x i64> %i.u, <2 x i64> %i.t, <2 x i32> <i32 0, i32 2>
  %i.he = bitcast <2 x i64> %i.hd to <2 x double> ; 2 uses
  %i.hf = shufflevector <2 x double> %i.gp, <2 x double> %i.hb, <2 x i32> <i32 1, i32 2>
  %i.hg = fneg <2 x double> %i.hf
  %i.hh = fmul <2 x double> %i.he, %i.hg
  %i.hi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.hc, <2 x double> %i.hh)
  %i.hj = fadd <2 x double> %i.gr, %i.hi
  %i.hk = extractelement <2 x double> %i.q, i64 1
  %i.hl = fneg double %i.hk
  %i.hm = fmul double %i.gh, %i.hl
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.s, double %i.hm)
  %.sroa.027.0.vec.insert.i.i.i.i19 = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.ho = extractelement <2 x double> %i.q, i64 0
  %i.hp = fmul double %i.gm, %i.dv
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.ho, double %i.hp)
  %.sroa.027.8.vec.insert.i.i.i.i20 = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i19, double %i.hq, i64 1 ; 2 uses
  %i.hr = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i20, %.sroa.027.8.vec.insert.i.i.i.i20 ; 5 uses
  %i.hs = fmul <2 x double> %i.ge, %i.hr
  %i.ht = fadd <2 x double> %i.v, %i.hs
  %i.hu = shufflevector <2 x double> %i.hb, <2 x double> %i.hr, <2 x i32> <i32 1, i32 2>
  %i.hv = shufflevector <2 x double> %i.hr, <2 x double> %i.hb, <2 x i32> <i32 1, i32 3>
  %i.hw = fneg <2 x double> %i.hv
  %i.hx = fmul <2 x double> %i.he, %i.hw
  %i.hy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.hu, <2 x double> %i.hx)
  %i.hz = fadd <2 x double> %i.ht, %i.hy
  %i.ia = fadd <2 x double> %i.hj, %i.hz          ; 2 uses
  %i.ib = shufflevector <2 x double> %i.dn, <2 x double> %i.fu, <2 x i32> <i32 0, i32 2>
  %i.ic = fneg <2 x double> %i.ib
  %i.id = fmul <2 x double> %i.dc, %i.ey          ; 2 uses
  %i.ie = insertelement <2 x double> poison, double %.sroa.7175.32.copyload, i64 0
  %i.if = insertelement <2 x double> %i.ie, double %i.fn, i64 1 ; 2 uses
  %i.ig = fsub <2 x double> %i.id, %i.if
  %i.ih = fadd <2 x double> %i.id, %i.if
  %i.ii = shufflevector <2 x double> %i.ig, <2 x double> %i.ih, <2 x i32> <i32 0, i32 3>
  %i.ij = fmul <2 x double> %i.et, %i.ic
  %i.ik = shufflevector <2 x double> %i.dn, <2 x double> %i.fu, <2 x i32> <i32 1, i32 3>
  %i.il = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.ik, <2 x double> %i.ij)
  %i.im = fadd <2 x double> %i.ii, %i.il          ; 2 uses
  %shift266 = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop267 = fadd <2 x double> %i.im, %shift266 ; 2 uses
  %i.in = shufflevector <2 x double> %i.gp, <2 x double> %i.hr, <2 x i32> <i32 0, i32 2>
  %i.io = fneg <2 x double> %i.in
  %i.ip = fmul <2 x double> %i.ge, %i.hb          ; 2 uses
  %i.iq = insertelement <2 x double> poison, double %.sroa.7171.32.copyload, i64 0
  %i.ir = insertelement <2 x double> %i.iq, double %i.s, i64 1 ; 2 uses
  %i.is = fsub <2 x double> %i.ip, %i.ir
  %i.it = fadd <2 x double> %i.ip, %i.ir
  %i.iu = shufflevector <2 x double> %i.is, <2 x double> %i.it, <2 x i32> <i32 0, i32 3>
  %i.iv = fmul <2 x double> %i.gw, %i.io
  %i.iw = shufflevector <2 x double> %i.gp, <2 x double> %i.hr, <2 x i32> <i32 1, i32 3>
  %i.ix = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.iw, <2 x double> %i.iv)
  %i.iy = fadd <2 x double> %i.iu, %i.ix          ; 2 uses
  %shift269 = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop270 = fadd <2 x double> %i.iy, %shift269 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0118.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  %i.iz = extractelement <2 x double> %.sroa.0129.sroa.0.1.in, i64 0 ; 4 uses
  %i.ja = fmul double %i.iz, 2.000000e+00         ; 2 uses
  %i.jb = extractelement <2 x double> %.sroa.0129.sroa.0.1.in, i64 1 ; 3 uses
  %i.jc = fmul double %i.jb, 2.000000e+00         ; 3 uses
  %i.jd = extractelement <2 x double> %.sroa.0129.sroa.9.1.in, i64 0 ; 2 uses
  %i.je = fmul double %i.jd, 2.000000e+00         ; 4 uses
  %i.jf = extractelement <2 x double> %.sroa.0129.sroa.9.1.in, i64 1 ; 3 uses
  %i.jg = fmul double %i.ja, %i.jf                ; 2 uses
  %i.jh = fmul double %i.jc, %i.jf                ; 2 uses
  %i.ji = fmul double %i.je, %i.jf                ; 2 uses
  %i.jj = fmul double %i.iz, %i.ja                ; 2 uses
  %i.jk = fmul double %i.iz, %i.jc                ; 2 uses
  %i.jl = fmul double %i.iz, %i.je                ; 2 uses
  %i.jm = fmul double %i.jb, %i.jc                ; 2 uses
  %i.jn = fmul double %i.jb, %i.je                ; 2 uses
  %i.jo = fmul double %i.jd, %i.je                ; 2 uses
  %i.jp = fadd double %i.jm, %i.jo
  %i.jq = fsub double 1.000000e+00, %i.jp
  store double %i.jq, ptr %.sroa.0118.i, align 16, !tbaa !8, !alias.scope !150, !noalias !153
  %i.jr = fsub double %i.jk, %i.ji
  %.sroa.0118.i.24.i.24.i.24..sroa_idx297 = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 24
  store double %i.jr, ptr %.sroa.0118.i.24.i.24.i.24..sroa_idx297, align 8, !tbaa !8, !alias.scope !150, !noalias !153
  %i.js = fadd double %i.jl, %i.jh                ; 3 uses
  store double %i.js, ptr %.sroa.19.i, align 16, !tbaa !8, !alias.scope !150, !noalias !153
  %i.jt = fadd double %i.jk, %i.ji
  %.sroa.0118.i.8.i.8.i.8..sroa_idx295 = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 8
  store double %i.jt, ptr %.sroa.0118.i.8.i.8.i.8..sroa_idx295, align 8, !tbaa !8, !alias.scope !150, !noalias !153
  %i.ju = fadd double %i.jj, %i.jo
  %i.jv = fsub double 1.000000e+00, %i.ju         ; 3 uses
  %.sroa.0118.i.32.i.32.i.32..sroa_idx298 = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 32
  store double %i.jv, ptr %.sroa.0118.i.32.i.32.i.32..sroa_idx298, align 16, !tbaa !8, !alias.scope !150, !noalias !153
  %i.jw = fsub double %i.jn, %i.jg                ; 3 uses
  %.sroa.19.i.8.i.8.i.8..sroa_idx294 = getelementptr inbounds nuw i8, ptr %.sroa.19.i, i64 8
  store double %i.jw, ptr %.sroa.19.i.8.i.8.i.8..sroa_idx294, align 8, !tbaa !8, !alias.scope !150, !noalias !153
  %i.jx = fsub double %i.jl, %i.jh                ; 2 uses
  %.sroa.0118.i.16.i.16.i.16..sroa_idx296 = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 16
  store double %i.jx, ptr %.sroa.0118.i.16.i.16.i.16..sroa_idx296, align 16, !tbaa !8, !alias.scope !150, !noalias !153
  %i.jy = fadd double %i.jn, %i.jg                ; 3 uses
  %.sroa.0118.i.40.i.40.i.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 40
  store double %i.jy, ptr %.sroa.0118.i.40.i.40.i.40..sroa_idx, align 8, !tbaa !8, !alias.scope !150, !noalias !153
  %i.jz = fadd double %i.jj, %i.jm
  %i.ka = fsub double 1.000000e+00, %i.jz         ; 3 uses
  %.sroa.19.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.19.i, i64 16
  store double %i.ka, ptr %.sroa.19.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !8, !alias.scope !150, !noalias !153
  %.sroa.0118.i.0..sroa.0118.i.0..sroa.0118.i.0..sroa.0118.0..sroa.0118.0.119.i = load <2 x double>, ptr %.sroa.0118.i, align 16, !noalias !153 ; 4 uses
  %.sroa.482.16.vec.insert = insertelement <2 x double> poison, double %i.jx, i64 0
  %.sroa.0118.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 24
  %.sroa.0118.i.24..sroa.0118.i.24..sroa.0118.i.24..sroa.0118.24..sroa.0118.24..i = load <2 x double>, ptr %.sroa.0118.i.24.i.24.i.24..sroa_idx, align 8, !noalias !153 ; 2 uses
  %.sroa.12.64.vec.insert = insertelement <2 x double> poison, double %i.jy, i64 0 ; 2 uses
  %.sroa.19.i.0..sroa.19.i.0..sroa.19.i.0..sroa.19.0..sroa.19.48..i = load <2 x double>, ptr %.sroa.19.i, align 16, !noalias !153 ; 2 uses
  %.sroa.20.112.vec.insert = insertelement <2 x double> poison, double %i.ka, i64 0 ; 2 uses
  %i.kb = extractelement <2 x double> %.sroa.0118.i.0..sroa.0118.i.0..sroa.0118.i.0..sroa.0118.0..sroa.0118.0.119.i, i64 0
  %.sroa.0118.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 8
  %.sroa.0118.i.8..sroa.0118.i.8..sroa.0118.i.8..sroa.0118.8..sroa.0118.8.121.i = load <2 x double>, ptr %.sroa.0118.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !58, !noalias !153 ; 3 uses
  %.sroa.0118.i.32.i.32.i.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 32
  %.sroa.0118.i.32..sroa.0118.i.32..sroa.0118.i.32..sroa.0118.32..sroa.0118.32..i = load <2 x double>, ptr %.sroa.0118.i.32.i.32.i.32..sroa_idx, align 16, !tbaa !58, !noalias !153
  %.sroa.19.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.19.i, i64 8
  %.sroa.19.i.8..sroa.19.i.8..sroa.19.i.8..sroa.19.8..sroa.19.56..i = load <2 x double>, ptr %.sroa.19.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !58, !noalias !153
  %i.kc = fneg <2 x double> %foldExtExtBinop270
  %.sroa.6.24.vec.insert.i272 = insertelement <2 x double> %i.kc, double 0.000000e+00, i64 1 ; 3 uses
  %.sroa.0129.sroa.16.40.vec.extract = extractelement <2 x double> %i.ia, i64 1 ; 4 uses
  %.sroa.9.48.vec.insert.i = insertelement <2 x double> poison, double %.sroa.0129.sroa.16.40.vec.extract, i64 0
  %.sroa.0129.sroa.16.32.vec.extract = extractelement <2 x double> %i.ia, i64 0 ; 4 uses
  %i.kd = fneg double %.sroa.0129.sroa.16.32.vec.extract
  %.sroa.9.56.vec.insert.i = insertelement <2 x double> %.sroa.9.48.vec.insert.i, double %i.kd, i64 1 ; 3 uses
  %.sroa.0.8.vec.insert.i = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %foldExtExtBinop270, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ke = shufflevector <2 x double> %.sroa.0118.i.0..sroa.0118.i.0..sroa.0118.i.0..sroa.0118.0..sroa.0118.0.119.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kf = fmul <2 x double> %.sroa.0.8.vec.insert.i, %i.ke
  %i.kg = shufflevector <2 x double> %.sroa.0118.i.8..sroa.0118.i.8..sroa.0118.i.8..sroa.0118.8..sroa.0118.8.121.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kh = fmul <2 x double> %.sroa.6.24.vec.insert.i272, %i.kg
  %i.ki = fadd <2 x double> %i.kf, %i.kh
  %.sroa.0118.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 16
  %.sroa.0118.i.16..sroa.0118.i.16..sroa.0118.i.16..sroa.0118.16..sroa.0118.16..i = load <2 x double>, ptr %.sroa.0118.i.16.i.16.i.16..sroa_idx, align 16, !noalias !153 ; 4 uses
  %i.kj = shufflevector <2 x double> %.sroa.0118.i.16..sroa.0118.i.16..sroa.0118.i.16..sroa.0118.16..sroa.0118.16..i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kk = fmul <2 x double> %.sroa.9.56.vec.insert.i, %i.kj
  %i.kl = fadd <2 x double> %i.ki, %i.kk          ; 2 uses
  %i.km = extractelement <2 x double> %.sroa.0118.i.8..sroa.0118.i.8..sroa.0118.i.8..sroa.0118.8..sroa.0118.8.121.i, i64 0
  %i.kn = fmul double %i.km, %.sroa.0129.sroa.16.32.vec.extract
  %i.ko = extractelement <2 x double> %.sroa.0118.i.16..sroa.0118.i.16..sroa.0118.i.16..sroa.0118.16..sroa.0118.16..i, i64 0
  %i.kp = fmul double %i.ko, 0.000000e+00
  %i.kq = fadd double %i.kn, %i.kp
  %i.kr = fmul double %i.kb, %.sroa.0129.sroa.16.40.vec.extract
  %i.ks = fsub double %i.kq, %i.kr
  %i.kt = extractelement <2 x double> %.sroa.0118.i.16..sroa.0118.i.16..sroa.0118.i.16..sroa.0118.16..sroa.0118.16..i, i64 1
  %i.ku = shufflevector <2 x double> %.sroa.0118.i.16..sroa.0118.i.16..sroa.0118.i.16..sroa.0118.16..sroa.0118.16..i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kv = fmul <2 x double> %.sroa.0.8.vec.insert.i, %i.ku
  %i.kw = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.kx = shufflevector <2 x double> %i.kw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ky = fmul <2 x double> %.sroa.6.24.vec.insert.i272, %i.kx
  %i.kz = fadd <2 x double> %i.ky, %i.kv
  %i.la = shufflevector <2 x double> %.sroa.12.64.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lb = fmul <2 x double> %i.la, %.sroa.9.56.vec.insert.i
  %i.lc = fadd <2 x double> %i.lb, %i.kz          ; 2 uses
  %i.ld = fmul double %i.jv, %.sroa.0129.sroa.16.32.vec.extract
  %i.le = fmul double %i.jy, 0.000000e+00
  %i.lf = fadd double %i.le, %i.ld
  %i.lg = fmul double %.sroa.0129.sroa.16.40.vec.extract, %i.kt
  %i.lh = fsub double %i.lf, %i.lg
  %i.li = insertelement <2 x double> poison, double %i.js, i64 0
  %i.lj = shufflevector <2 x double> %i.li, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lk = fmul <2 x double> %.sroa.0.8.vec.insert.i, %i.lj
  %i.ll = insertelement <2 x double> poison, double %i.jw, i64 0
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ln = fmul <2 x double> %.sroa.6.24.vec.insert.i272, %i.lm
  %i.lo = fadd <2 x double> %i.lk, %i.ln
  %i.lp = shufflevector <2 x double> %.sroa.20.112.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lq = fmul <2 x double> %i.lp, %.sroa.9.56.vec.insert.i
  %i.lr = fadd <2 x double> %i.lo, %i.lq          ; 2 uses
  %i.ls = fmul double %i.jw, %.sroa.0129.sroa.16.32.vec.extract
  %i.lt = fmul double %i.ka, 0.000000e+00
  %i.lu = fadd double %i.lt, %i.ls
  %i.lv = fmul double %i.js, %.sroa.0129.sroa.16.40.vec.extract
  %i.lw = fsub double %i.lu, %i.lv
  %.sroa.482.24.vec.insert = shufflevector <2 x double> %.sroa.482.16.vec.insert, <2 x double> %i.kl, <2 x i32> <i32 0, i32 2>
  %.sroa.7.32.vec.insert = shufflevector <2 x double> %i.kl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.7.40.vec.insert = insertelement <2 x double> %.sroa.7.32.vec.insert, double %i.ks, i64 1
  %.sroa.12.72.vec.insert = shufflevector <2 x double> %.sroa.12.64.vec.insert, <2 x double> %i.lc, <2 x i32> <i32 0, i32 2>
  %.sroa.15.80.vec.insert = shufflevector <2 x double> %i.lc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.15.88.vec.insert = insertelement <2 x double> %.sroa.15.80.vec.insert, double %i.lh, i64 1
  %.sroa.20.120.vec.insert = shufflevector <2 x double> %.sroa.20.112.vec.insert, <2 x double> %i.lr, <2 x i32> <i32 0, i32 2>
  %.sroa.23.128.vec.insert = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.23.136.vec.insert = insertelement <2 x double> %.sroa.23.128.vec.insert, double %i.lw, i64 1
  %.sroa.28.144.vec.insert = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %.sroa.0118.i.0..sroa.0118.i.0..sroa.0118.i.0..sroa.0118.0..sroa.0118.0.119.i, <2 x i32> <i32 0, i32 2>
  %.sroa.34.192.vec.insert = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %.sroa.0118.i.24..sroa.0118.i.24..sroa.0118.i.24..sroa.0118.24..sroa.0118.24..i, <2 x i32> <i32 0, i32 2>
  %.sroa.40.240.vec.insert = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %.sroa.19.i.0..sroa.19.i.0..sroa.19.i.0..sroa.19.0..sroa.19.48..i, <2 x i32> <i32 0, i32 2>
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0118.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !156, !nonnull !197, !align !198
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !199 ; 18 uses
  store <2 x double> %.sroa.0118.i.0..sroa.0118.i.0..sroa.0118.i.0..sroa.0118.0..sroa.0118.0.119.i, ptr %i.lz, align 16, !tbaa !58
  %i.ma = getelementptr i8, ptr %i.lz, i64 16
  store <2 x double> %.sroa.482.24.vec.insert, ptr %i.ma, align 16, !tbaa !58
  %i.mb = getelementptr i8, ptr %i.lz, i64 32
  store <2 x double> %.sroa.7.40.vec.insert, ptr %i.mb, align 16, !tbaa !58
  %i.mc = getelementptr i8, ptr %i.lz, i64 48
  store <2 x double> %.sroa.0118.i.24..sroa.0118.i.24..sroa.0118.i.24..sroa.0118.24..sroa.0118.24..i, ptr %i.mc, align 16, !tbaa !58
  %i.md = getelementptr i8, ptr %i.lz, i64 64
  store <2 x double> %.sroa.12.72.vec.insert, ptr %i.md, align 16, !tbaa !58
  %i.me = getelementptr i8, ptr %i.lz, i64 80
  store <2 x double> %.sroa.15.88.vec.insert, ptr %i.me, align 16, !tbaa !58
  %i.mf = getelementptr i8, ptr %i.lz, i64 96
  store <2 x double> %.sroa.19.i.0..sroa.19.i.0..sroa.19.i.0..sroa.19.0..sroa.19.48..i, ptr %i.mf, align 16, !tbaa !58
  %i.mg = getelementptr i8, ptr %i.lz, i64 112
  store <2 x double> %.sroa.20.120.vec.insert, ptr %i.mg, align 16, !tbaa !58
  %i.mh = getelementptr i8, ptr %i.lz, i64 128
  store <2 x double> %.sroa.23.136.vec.insert, ptr %i.mh, align 16, !tbaa !58
  %i.mi = getelementptr i8, ptr %i.lz, i64 144
  store <2 x double> zeroinitializer, ptr %i.mi, align 16, !tbaa !58
  %i.mj = getelementptr i8, ptr %i.lz, i64 160
  store <2 x double> %.sroa.28.144.vec.insert, ptr %i.mj, align 16, !tbaa !58
  %i.mk = getelementptr i8, ptr %i.lz, i64 176
  store <2 x double> %.sroa.0118.i.8..sroa.0118.i.8..sroa.0118.i.8..sroa.0118.8..sroa.0118.8.121.i, ptr %i.mk, align 16, !tbaa !58
  %i.ml = getelementptr i8, ptr %i.lz, i64 192
  store <2 x double> zeroinitializer, ptr %i.ml, align 16, !tbaa !58
  %i.mm = getelementptr i8, ptr %i.lz, i64 208
  store <2 x double> %.sroa.34.192.vec.insert, ptr %i.mm, align 16, !tbaa !58
  %i.mn = getelementptr i8, ptr %i.lz, i64 224
  store <2 x double> %.sroa.0118.i.32..sroa.0118.i.32..sroa.0118.i.32..sroa.0118.32..sroa.0118.32..i, ptr %i.mn, align 16, !tbaa !58
  %i.mo = getelementptr i8, ptr %i.lz, i64 240
  store <2 x double> zeroinitializer, ptr %i.mo, align 16, !tbaa !58
  %i.mp = getelementptr i8, ptr %i.lz, i64 256
  store <2 x double> %.sroa.40.240.vec.insert, ptr %i.mp, align 16, !tbaa !58
  %i.mq = getelementptr i8, ptr %i.lz, i64 272
  store <2 x double> %.sroa.19.i.8..sroa.19.i.8..sroa.19.i.8..sroa.19.8..sroa.19.56..i, ptr %i.mq, align 16, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0118.i49)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i50)
  %i.mr = extractelement <2 x double> %.sroa.091.sroa.0.1.in, i64 0 ; 4 uses
  %i.ms = fmul double %i.mr, 2.000000e+00         ; 2 uses
  %i.mt = extractelement <2 x double> %.sroa.091.sroa.0.1.in, i64 1 ; 3 uses
  %i.mu = fmul double %i.mt, 2.000000e+00         ; 3 uses
  %i.mv = extractelement <2 x double> %.sroa.091.sroa.9.1.in, i64 0 ; 2 uses
  %i.mw = fmul double %i.mv, 2.000000e+00         ; 4 uses
  %i.mx = extractelement <2 x double> %.sroa.091.sroa.9.1.in, i64 1 ; 3 uses
  %i.my = fmul double %i.ms, %i.mx                ; 2 uses
  %i.mz = fmul double %i.mu, %i.mx                ; 2 uses
  %i.na = fmul double %i.mw, %i.mx                ; 2 uses
  %i.nb = fmul double %i.mr, %i.ms                ; 2 uses
  %i.nc = fmul double %i.mr, %i.mu                ; 2 uses
  %i.nd = fmul double %i.mr, %i.mw                ; 2 uses
  %i.ne = fmul double %i.mt, %i.mu                ; 2 uses
  %i.nf = fmul double %i.mt, %i.mw                ; 2 uses
  %i.ng = fmul double %i.mv, %i.mw                ; 2 uses
  %i.nh = fadd double %i.ne, %i.ng
  %i.ni = fsub double 1.000000e+00, %i.nh
  store double %i.ni, ptr %.sroa.0118.i49, align 16, !tbaa !8, !alias.scope !200, !noalias !203
  %i.nj = fsub double %i.nc, %i.na
  %.sroa.0118.i49.24.i49.24.i49.24..sroa_idx302 = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 24
  store double %i.nj, ptr %.sroa.0118.i49.24.i49.24.i49.24..sroa_idx302, align 8, !tbaa !8, !alias.scope !200, !noalias !203
  %i.nk = fadd double %i.nd, %i.mz                ; 3 uses
  store double %i.nk, ptr %.sroa.19.i50, align 16, !tbaa !8, !alias.scope !200, !noalias !203
  %i.nl = fadd double %i.nc, %i.na
  %.sroa.0118.i49.8.i49.8.i49.8..sroa_idx300 = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 8
  store double %i.nl, ptr %.sroa.0118.i49.8.i49.8.i49.8..sroa_idx300, align 8, !tbaa !8, !alias.scope !200, !noalias !203
  %i.nm = fadd double %i.nb, %i.ng
  %i.nn = fsub double 1.000000e+00, %i.nm         ; 3 uses
  %.sroa.0118.i49.32.i49.32.i49.32..sroa_idx303 = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 32
  store double %i.nn, ptr %.sroa.0118.i49.32.i49.32.i49.32..sroa_idx303, align 16, !tbaa !8, !alias.scope !200, !noalias !203
  %i.no = fsub double %i.nf, %i.my                ; 3 uses
  %.sroa.19.i50.8.i50.8.i50.8..sroa_idx299 = getelementptr inbounds nuw i8, ptr %.sroa.19.i50, i64 8
  store double %i.no, ptr %.sroa.19.i50.8.i50.8.i50.8..sroa_idx299, align 8, !tbaa !8, !alias.scope !200, !noalias !203
  %i.np = fsub double %i.nd, %i.mz                ; 2 uses
  %.sroa.0118.i49.16.i49.16.i49.16..sroa_idx301 = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 16
  store double %i.np, ptr %.sroa.0118.i49.16.i49.16.i49.16..sroa_idx301, align 16, !tbaa !8, !alias.scope !200, !noalias !203
  %i.nq = fadd double %i.nf, %i.my                ; 3 uses
  %.sroa.0118.i49.40.i49.40.i49.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 40
  store double %i.nq, ptr %.sroa.0118.i49.40.i49.40.i49.40..sroa_idx, align 8, !tbaa !8, !alias.scope !200, !noalias !203
  %i.nr = fadd double %i.nb, %i.ne
  %i.ns = fsub double 1.000000e+00, %i.nr         ; 3 uses
  %.sroa.19.i50.16.i50.16.i50.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.19.i50, i64 16
  store double %i.ns, ptr %.sroa.19.i50.16.i50.16.i50.16..sroa_idx, align 16, !tbaa !8, !alias.scope !200, !noalias !203
  %.sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.0..sroa.0118.0.119.i58 = load <2 x double>, ptr %.sroa.0118.i49, align 16, !noalias !203 ; 4 uses
  %i.nt = insertelement <2 x double> poison, double %i.np, i64 0
  %.sroa.0118.i49.24.i49.24.i49.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 24
  %.sroa.0118.i49.24..sroa.0118.i49.24..sroa.0118.i49.24..sroa.0118.24..sroa.0118.24..i59 = load <2 x double>, ptr %.sroa.0118.i49.24.i49.24.i49.24..sroa_idx, align 8, !noalias !203 ; 2 uses
  %i.nu = insertelement <2 x double> poison, double %i.nq, i64 0 ; 2 uses
  %.sroa.19.i50.0..sroa.19.i50.0..sroa.19.i50.0..sroa.19.0..sroa.19.48..i60 = load <2 x double>, ptr %.sroa.19.i50, align 16, !noalias !203 ; 2 uses
  %i.nv = insertelement <2 x double> poison, double %i.ns, i64 0 ; 2 uses
  %i.nw = bitcast <2 x double> %.sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.0..sroa.0118.0.119.i58 to <2 x i64>
  %.sroa.28.168.vec.insert207 = shufflevector <2 x i64> %i.nw, <2 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %.sroa.0118.i49.8.i49.8.i49.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 8
  %.sroa.0118.i49.8..sroa.0118.i49.8..sroa.0118.i49.8..sroa.0118.8..sroa.0118.8.121.i61 = load <2 x double>, ptr %.sroa.0118.i49.8.i49.8.i49.8..sroa_idx, align 8, !tbaa !58, !noalias !203 ; 3 uses
  %bc222 = bitcast <2 x double> %.sroa.0118.i49.24..sroa.0118.i49.24..sroa.0118.i49.24..sroa.0118.24..sroa.0118.24..i59 to <2 x i64>
  %.sroa.0118.i49.32.i49.32.i49.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 32
  %.sroa.0118.i49.32..sroa.0118.i49.32..sroa.0118.i49.32..sroa.0118.32..sroa.0118.32..i62223 = load <2 x i64>, ptr %.sroa.0118.i49.32.i49.32.i49.32..sroa_idx, align 16, !tbaa !58, !noalias !203
  %bc224 = bitcast <2 x double> %.sroa.19.i50.0..sroa.19.i50.0..sroa.19.i50.0..sroa.19.0..sroa.19.48..i60 to <2 x i64>
  %.sroa.19.i50.8.i50.8.i50.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.19.i50, i64 8
  %.sroa.19.i50.8..sroa.19.i50.8..sroa.19.i50.8..sroa.19.8..sroa.19.56..i63225 = load <2 x i64>, ptr %.sroa.19.i50.8.i50.8.i50.8..sroa_idx, align 8, !tbaa !58, !noalias !203
  %i.nx = fneg <2 x double> %foldExtExtBinop267
  %.sroa.6.24.vec.insert.i64273 = insertelement <2 x double> %i.nx, double 0.000000e+00, i64 1 ; 3 uses
  %.sroa.091.sroa.16.40.vec.extract = extractelement <2 x double> %i.gd, i64 1
  %.sroa.9.48.vec.insert.i65 = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.091.sroa.16.32.vec.extract = extractelement <2 x double> %i.gd, i64 0 ; 2 uses
  %i.ny = fneg double %.sroa.091.sroa.16.32.vec.extract
  %.sroa.9.56.vec.insert.i66 = insertelement <2 x double> %.sroa.9.48.vec.insert.i65, double %i.ny, i64 1 ; 3 uses
  %.sroa.0.8.vec.insert.i67 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %foldExtExtBinop267, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.nz = shufflevector <2 x double> %.sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.0..sroa.0118.0.119.i58, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oa = fmul <2 x double> %.sroa.0.8.vec.insert.i67, %i.nz
  %i.ob = shufflevector <2 x double> %.sroa.0118.i49.8..sroa.0118.i49.8..sroa.0118.i49.8..sroa.0118.8..sroa.0118.8.121.i61, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oc = fmul <2 x double> %.sroa.6.24.vec.insert.i64273, %i.ob
  %i.od = fadd <2 x double> %i.oa, %i.oc
  %.sroa.0118.i49.16.i49.16.i49.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 16
  %.sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.16..sroa.0118.16..i68 = load <2 x double>, ptr %.sroa.0118.i49.16.i49.16.i49.16..sroa_idx, align 16, !noalias !203 ; 4 uses
  %i.oe = shufflevector <2 x double> %.sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.16..sroa.0118.16..i68, <2 x double> poison, <2 x i32> zeroinitializer
  %i.of = fmul <2 x double> %.sroa.9.56.vec.insert.i66, %i.oe
  %i.og = fadd <2 x double> %i.od, %i.of          ; 2 uses
  %i.oh = shufflevector <2 x double> %.sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.16..sroa.0118.16..i68, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oi = fmul <2 x double> %.sroa.0.8.vec.insert.i67, %i.oh
  %i.oj = insertelement <2 x double> poison, double %i.nn, i64 0
  %i.ok = shufflevector <2 x double> %i.oj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ol = fmul <2 x double> %.sroa.6.24.vec.insert.i64273, %i.ok
  %i.om = fadd <2 x double> %i.ol, %i.oi
  %i.on = shufflevector <2 x double> %i.nu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oo = fmul <2 x double> %i.on, %.sroa.9.56.vec.insert.i66
  %i.op = fadd <2 x double> %i.oo, %i.om          ; 2 uses
  %i.oq = insertelement <2 x double> poison, double %i.nk, i64 0
  %i.or = shufflevector <2 x double> %i.oq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.os = fmul <2 x double> %.sroa.0.8.vec.insert.i67, %i.or
  %i.ot = insertelement <2 x double> poison, double %i.no, i64 0
  %i.ou = shufflevector <2 x double> %i.ot, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ov = fmul <2 x double> %.sroa.6.24.vec.insert.i64273, %i.ou
  %i.ow = fadd <2 x double> %i.os, %i.ov
  %i.ox = shufflevector <2 x double> %i.nv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oy = fmul <2 x double> %i.ox, %.sroa.9.56.vec.insert.i66
  %i.oz = fadd <2 x double> %i.ow, %i.oy          ; 2 uses
  %i.pa = fmul double %i.no, %.sroa.091.sroa.16.32.vec.extract
  %i.pb = fmul double %i.ns, 0.000000e+00
  %i.pc = fadd double %i.pb, %i.pa
  %i.pd = fmul double %i.nk, %.sroa.091.sroa.16.40.vec.extract
  %i.pe = fsub double %i.pc, %i.pd
  %.sroa.4.24.vec.insert.uncasted = shufflevector <2 x double> %i.nt, <2 x double> %i.og, <2 x i32> <i32 0, i32 2>
  %.sroa.4.24.vec.insert.uncasted.a = shufflevector <2 x double> %i.nu, <2 x double> %i.op, <2 x i32> <i32 0, i32 2>
  %1 = insertelement <2 x double> %.sroa.0118.i49.8..sroa.0118.i49.8..sroa.0118.i49.8..sroa.0118.8..sroa.0118.8.121.i61, double %i.nn, i64 1
  %2 = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> zeroinitializer
  %3 = fmul <2 x double> %1, %2
  %4 = insertelement <2 x double> %.sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.16..sroa.0118.16..i68, double %i.nq, i64 1
  %5 = fmul <2 x double> %4, zeroinitializer
  %6 = fadd <2 x double> %5, %3
  %7 = shufflevector <2 x double> %.sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.0..sroa.0118.0.119.i58, <2 x double> %.sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.16..sroa.0118.16..i68, <2 x i32> <i32 0, i32 3>
  %8 = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %9 = fmul <2 x double> %7, %8
  %10 = fsub <2 x double> %6, %9                  ; 2 uses
  %11 = shufflevector <2 x double> %i.og, <2 x double> %10, <2 x i32> <i32 1, i32 2>
  %12 = shufflevector <2 x double> %i.op, <2 x double> %10, <2 x i32> <i32 1, i32 3>
  %.sroa.20.120.vec.insert202.uncasted = shufflevector <2 x double> %i.nv, <2 x double> %i.oz, <2 x i32> <i32 0, i32 2>
  %bc231 = bitcast <2 x double> %i.oz to <2 x i64>
  %.sroa.23.128.vec.insert204 = shufflevector <2 x i64> %bc231, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pf = bitcast double %i.pe to i64
  %.sroa.23.136.vec.insert205 = insertelement <2 x i64> %.sroa.23.128.vec.insert204, i64 %i.pf, i64 1
  %.sroa.28.144.vec.insert206 = insertelement <2 x i64> %.sroa.28.168.vec.insert207, i64 0, i64 0
  %.sroa.34.192.vec.insert209 = shufflevector <2 x i64> <i64 0, i64 poison>, <2 x i64> %bc222, <2 x i32> <i32 0, i32 2>
  %.sroa.40.240.vec.insert212 = shufflevector <2 x i64> <i64 0, i64 poison>, <2 x i64> %bc224, <2 x i32> <i32 0, i32 2>
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0118.i49)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i50)
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ph = load ptr, ptr %i.pg, align 16, !tbaa !206, !nonnull !197, !align !198
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !199 ; 18 uses
  %i.pj = fneg <2 x double> %.sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.0..sroa.0118.0.119.i58
  store <2 x double> %i.pj, ptr %i.pi, align 16, !tbaa !58
  %i.pk = getelementptr i8, ptr %i.pi, i64 16
  %i.pl = fneg <2 x double> %.sroa.4.24.vec.insert.uncasted
  store <2 x double> %i.pl, ptr %i.pk, align 16, !tbaa !58
  %i.pm = getelementptr i8, ptr %i.pi, i64 32
  %13 = fneg <2 x double> %11
  store <2 x double> %13, ptr %i.pm, align 16, !tbaa !58
  %i.pn = getelementptr i8, ptr %i.pi, i64 48
  %i.po = fneg <2 x double> %.sroa.0118.i49.24..sroa.0118.i49.24..sroa.0118.i49.24..sroa.0118.24..sroa.0118.24..i59
  store <2 x double> %i.po, ptr %i.pn, align 16, !tbaa !58
  %i.pp = getelementptr i8, ptr %i.pi, i64 64
  %i.pq = fneg <2 x double> %.sroa.4.24.vec.insert.uncasted.a
  store <2 x double> %i.pq, ptr %i.pp, align 16, !tbaa !58
  %i.pr = getelementptr i8, ptr %i.pi, i64 80
  %14 = fneg <2 x double> %12
  store <2 x double> %14, ptr %i.pr, align 16, !tbaa !58
  %i.ps = getelementptr i8, ptr %i.pi, i64 96
  %i.pt = fneg <2 x double> %.sroa.19.i50.0..sroa.19.i50.0..sroa.19.i50.0..sroa.19.0..sroa.19.48..i60
  store <2 x double> %i.pt, ptr %i.ps, align 16, !tbaa !58
  %i.pu = getelementptr i8, ptr %i.pi, i64 112
  %i.pv = fneg <2 x double> %.sroa.20.120.vec.insert202.uncasted
  store <2 x double> %i.pv, ptr %i.pu, align 16, !tbaa !58
  %i.pw = getelementptr i8, ptr %i.pi, i64 128
  %i.px = xor <2 x i64> %.sroa.23.136.vec.insert205, splat (i64 -9223372036854775808)
  store <2 x i64> %i.px, ptr %i.pw, align 16, !tbaa !58
  %i.py = getelementptr i8, ptr %i.pi, i64 144
  store <2 x i64> splat (i64 -9223372036854775808), ptr %i.py, align 16, !tbaa !58
  %i.pz = getelementptr i8, ptr %i.pi, i64 160
  %i.qa = xor <2 x i64> %.sroa.28.144.vec.insert206, splat (i64 -9223372036854775808)
  store <2 x i64> %i.qa, ptr %i.pz, align 16, !tbaa !58
  %i.qb = getelementptr i8, ptr %i.pi, i64 176
  %i.qc = fneg <2 x double> %.sroa.0118.i49.8..sroa.0118.i49.8..sroa.0118.i49.8..sroa.0118.8..sroa.0118.8.121.i61
  store <2 x double> %i.qc, ptr %i.qb, align 16, !tbaa !58
  %i.qd = getelementptr i8, ptr %i.pi, i64 192
  store <2 x i64> splat (i64 -9223372036854775808), ptr %i.qd, align 16, !tbaa !58
  %i.qe = getelementptr i8, ptr %i.pi, i64 208
  %i.qf = xor <2 x i64> %.sroa.34.192.vec.insert209, splat (i64 -9223372036854775808)
  store <2 x i64> %i.qf, ptr %i.qe, align 16, !tbaa !58
  %i.qg = getelementptr i8, ptr %i.pi, i64 224
  %i.qh = xor <2 x i64> %.sroa.0118.i49.32..sroa.0118.i49.32..sroa.0118.i49.32..sroa.0118.32..sroa.0118.32..i62223, splat (i64 -9223372036854775808)
  store <2 x i64> %i.qh, ptr %i.qg, align 16, !tbaa !58
  %i.qi = getelementptr i8, ptr %i.pi, i64 240
  store <2 x i64> splat (i64 -9223372036854775808), ptr %i.qi, align 16, !tbaa !58
  %i.qj = getelementptr i8, ptr %i.pi, i64 256
  %i.qk = xor <2 x i64> %.sroa.40.240.vec.insert212, splat (i64 -9223372036854775808)
  store <2 x i64> %i.qk, ptr %i.qj, align 16, !tbaa !58
  %i.ql = getelementptr i8, ptr %i.pi, i64 272
  %i.qm = xor <2 x i64> %.sroa.19.i50.8..sroa.19.i50.8..sroa.19.i50.8..sroa.19.8..sroa.19.56..i63225, splat (i64 -9223372036854775808)
  store <2 x i64> %i.qm, ptr %i.ql, align 16, !tbaa !58
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o13EdgeSE3ExpmapD0Ev(ptr noundef nonnull align 16 dereferenceable(664) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(664) dereferenceable(664) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 672) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Edge11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_15VertexSE3ExpmapES2_EE6resizeEm(ptr noundef nonnull align 16 dereferenceable(648) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o10HyperGraph4Edge6resizeEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_15VertexSE3ExpmapES2_EE16allVerticesFixedEv(ptr noundef nonnull align 16 dereferenceable(648) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !207, !range !223, !noundef !197
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_15VertexSE3ExpmapES2_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.j = load i8, ptr %i.i, align 4, !tbaa !207, !range !223, !noundef !197
  %i.k = trunc nuw i8 %i.j to i1
  br label %_ZNK3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_15VertexSE3ExpmapES2_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

_ZNK3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_15VertexSE3ExpmapES2_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o13EdgeSE3Expmap18setMeasurementDataEPKd(ptr noundef nonnull align 16 dereferenceable(664) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.g2o::SE3Quat", align 16     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load <2 x double>, ptr %1, align 8, !tbaa !8
  store <2 x double> %i.b, ptr %i.a, align 16, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  store double %i.d, ptr %i.e, align 16, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load <2 x double>, ptr %i.f, align 8, !tbaa !8
  store <2 x double> %i.g, ptr %2, align 16, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load double, ptr %i.j, align 8, !tbaa !8
  %i.l = load <2 x double>, ptr %i.h, align 8, !tbaa !8
  store <2 x double> %i.l, ptr %i.i, align 16, !tbaa !8
  %i.m = fcmp olt double %i.k, 0.000000e+00
  %.pre.i.i = load <2 x double>, ptr %2, align 16, !tbaa !58 ; 2 uses
  br i1 %i.m, label %bb.b, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %.pre1.i.i = load <2 x double>, ptr %i.i, align 16, !tbaa !58
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = fneg <2 x double> %.pre.i.i              ; 2 uses
  store <2 x double> %i.n, ptr %2, align 16, !tbaa !58
  %i.o = load <2 x double>, ptr %i.i, align 16, !tbaa !58
  %i.p = fneg <2 x double> %i.o                   ; 2 uses
  store <2 x double> %i.p, ptr %i.i, align 16, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  %i.q = phi <2 x double> [ %i.p, %bb.b ], [ %.pre1.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.r = phi <2 x double> [ %i.n, %bb.b ], [ %.pre.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.s = fmul <2 x double> %i.r, %i.r
  %i.t = fmul <2 x double> %i.q, %i.q
  %i.u = fadd <2 x double> %i.t, %i.s             ; 2 uses
  %shift = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.u, %shift
  %i.v = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.w = fcmp ogt double %i.v, 0.000000e+00
  br i1 %i.w, label %bb.d, label %_ZN3g2o7SE3QuatC2IN5Eigen3MapIKNS2_6MatrixIdLi7ELi1ELi0ELi7ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEEERKNS2_10MatrixBaseIT_EE.exit

bb.d:                                             ; preds = %bb.c
  %.scalar.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.v)
  %i.x = insertelement <2 x double> poison, double %.scalar.i.i.i.i, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fdiv <2 x double> %i.r, %i.y
  store <2 x double> %i.z, ptr %2, align 16, !tbaa !58
  %i.aa = fdiv <2 x double> %i.q, %i.y
  store <2 x double> %i.aa, ptr %i.i, align 16, !tbaa !58
  br label %_ZN3g2o7SE3QuatC2IN5Eigen3MapIKNS2_6MatrixIdLi7ELi1ELi0ELi7ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEEERKNS2_10MatrixBaseIT_EE.exit

_ZN3g2o7SE3QuatC2IN5Eigen3MapIKNS2_6MatrixIdLi7ELi1ELi0ELi7ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEEERKNS2_10MatrixBaseIT_EE.exit: ; preds = %bb.c, %bb.d
  %i.ab = load ptr, ptr %0, align 16, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 16 dereferenceable(576) %0, ptr noundef nonnull align 16 dereferenceable(56) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o13EdgeSE3Expmap18getMeasurementDataEPd(ptr noundef nonnull align 16 dereferenceable(664) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load <2 x double>, ptr %i.b, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load <2 x double>, ptr %i.d, align 16
  %i.f = load double, ptr %i.a, align 16, !tbaa !8, !noalias !224
  %.sroa.5.24.vec.insert = insertelement <2 x double> %i.e, double %i.f, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load <2 x double>, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load double, ptr %i.i, align 8, !tbaa !8, !noalias !224
  store <2 x double> %i.c, ptr %1, align 1, !tbaa !58
  %i.k = getelementptr i8, ptr %1, i64 16
  store <2 x double> %.sroa.5.24.vec.insert, ptr %i.k, align 1, !tbaa !58
  %i.l = getelementptr i8, ptr %1, i64 32
  store <2 x double> %i.h, ptr %i.l, align 1, !tbaa !58
  %i.m = getelementptr i8, ptr %1, i64 48
  store double %i.j, ptr %i.m, align 8, !tbaa !8
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o13EdgeSE3Expmap20measurementDimensionEv(ptr noundef nonnull align 16 dereferenceable(664) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 7
}

declare noundef zeroext i1 @_ZN3g2o16OptimizableGraph4Edge23setMeasurementFromStateEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi6ENS_7SE3QuatEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(576) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi6ENS_7SE3QuatEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(576) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi6ENS_7SE3QuatEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(576) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  ret ptr %i.a
end_hunk_0
