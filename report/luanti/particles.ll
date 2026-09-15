Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/particles?download=true
inline.NumInlined: 2466
inline.NumDeleted: 1098
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE:bb.a
  %i.dk = load float, ptr %i.dg, align 4, !tbaa !202 ; 2 uses
  %i.dl = load float, ptr %i.di, align 4, !tbaa !141 ; 2 uses
  %i.dm = load <2 x float>, ptr %i.bb, align 8, !tbaa !95
  %i.dn = load <2 x float>, ptr %i.bc, align 8, !tbaa !95
  %i.do = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul nsz <2 x float> %i.dp, %i.dn
  %i.dr = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.dm, <2 x float> %i.dq)
  %i.du = load <2 x float>, ptr %i.bd, align 8, !tbaa !95
  %i.dv = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.du, <2 x float> %i.dt)
  %i.dy = load <2 x float>, ptr %i.be, align 8, !tbaa !95
  %i.dz = fadd nsz <2 x float> %i.dx, %i.dy
  %i.ea = load float, ptr %i.bf, align 8, !tbaa !95
  %i.eb = load float, ptr %i.bg, align 8, !tbaa !95
  %i.ec = fmul nsz float %i.dj, %i.eb
  %i.ed = tail call nsz float @llvm.fmuladd.f32(float %i.dk, float %i.ea, float %i.ec)
  %i.ee = load float, ptr %i.bh, align 8, !tbaa !95
  %i.ef = tail call nsz float @llvm.fmuladd.f32(float %i.dl, float %i.ee, float %i.ed)
  %i.eg = load float, ptr %i.bi, align 8, !tbaa !95
  %i.eh = fadd nsz float %i.eg, %i.ef
  store <2 x float> %i.dz, ptr %i.dg, align 4
  store float %i.eh, ptr %i.di, align 4, !tbaa !95
  %i.ei = load ptr, ptr %1, align 8, !tbaa !434   ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 36 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 44 ; 2 uses
  %i.em = load float, ptr %i.ek, align 4, !tbaa !203 ; 2 uses
  %i.en = load float, ptr %i.ej, align 4, !tbaa !202 ; 2 uses
  %i.eo = load float, ptr %i.el, align 4, !tbaa !141 ; 2 uses
  %i.ep = load <2 x float>, ptr %i.bb, align 8, !tbaa !95
  %i.eq = load <2 x float>, ptr %i.bc, align 8, !tbaa !95
  %i.er = insertelement <2 x float> poison, float %i.em, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fmul nsz <2 x float> %i.es, %i.eq
  %i.eu = insertelement <2 x float> poison, float %i.en, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.ep, <2 x float> %i.et)
  %i.ex = load <2 x float>, ptr %i.bd, align 8, !tbaa !95
  %i.ey = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.ex, <2 x float> %i.ew)
  %i.fb = load <2 x float>, ptr %i.be, align 8, !tbaa !95
  %i.fc = fadd nsz <2 x float> %i.fa, %i.fb
  %i.fd = load float, ptr %i.bf, align 8, !tbaa !95
  %i.fe = load float, ptr %i.bg, align 8, !tbaa !95
  %i.ff = fmul nsz float %i.em, %i.fe
  %i.fg = tail call nsz float @llvm.fmuladd.f32(float %i.en, float %i.fd, float %i.ff)
  %i.fh = load float, ptr %i.bh, align 8, !tbaa !95
  %i.fi = tail call nsz float @llvm.fmuladd.f32(float %i.eo, float %i.fh, float %i.fg)
  %i.fj = load float, ptr %i.bi, align 8, !tbaa !95
  %i.fk = fadd nsz float %i.fj, %i.fi
  store <2 x float> %i.fc, ptr %i.ej, align 4
  store float %i.fk, ptr %i.el, align 4, !tbaa !95
  %i.fl = load ptr, ptr %1, align 8, !tbaa !434   ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 48 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 52
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 56 ; 2 uses
  %i.fp = load float, ptr %i.fn, align 4, !tbaa !203 ; 2 uses
  %i.fq = load float, ptr %i.fm, align 4, !tbaa !202 ; 2 uses
  %i.fr = load float, ptr %i.fo, align 4, !tbaa !141 ; 2 uses
  %i.fs = load <2 x float>, ptr %i.bb, align 8, !tbaa !95
  %i.ft = load <2 x float>, ptr %i.bc, align 8, !tbaa !95
  %i.fu = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = fmul nsz <2 x float> %i.fv, %i.ft
  %i.fx = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.fs, <2 x float> %i.fw)
  %i.ga = load <2 x float>, ptr %i.bd, align 8, !tbaa !95
  %i.gb = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.ga, <2 x float> %i.fz)
  %i.ge = load <2 x float>, ptr %i.be, align 8, !tbaa !95
  %i.gf = fadd nsz <2 x float> %i.gd, %i.ge
  %i.gg = load float, ptr %i.bf, align 8, !tbaa !95
  %i.gh = load float, ptr %i.bg, align 8, !tbaa !95
  %i.gi = fmul nsz float %i.fp, %i.gh
  %i.gj = tail call nsz float @llvm.fmuladd.f32(float %i.fq, float %i.gg, float %i.gi)
  %i.gk = load float, ptr %i.bh, align 8, !tbaa !95
  %i.gl = tail call nsz float @llvm.fmuladd.f32(float %i.fr, float %i.gk, float %i.gj)
  %i.gm = load float, ptr %i.bi, align 8, !tbaa !95
  %i.gn = fadd nsz float %i.gm, %i.gl
  store <2 x float> %i.gf, ptr %i.fm, align 4
  store float %i.gn, ptr %i.fo, align 4, !tbaa !95
  %i.go = load ptr, ptr %1, align 8, !tbaa !434   ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 60 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 68 ; 2 uses
  %i.gs = load float, ptr %i.gq, align 4, !tbaa !203 ; 2 uses
  %i.gt = load float, ptr %i.gp, align 4, !tbaa !202 ; 2 uses
  %i.gu = load float, ptr %i.gr, align 4, !tbaa !141 ; 2 uses
  %i.gv = load <2 x float>, ptr %i.bb, align 8, !tbaa !95
  %i.gw = load <2 x float>, ptr %i.bc, align 8, !tbaa !95
  %i.gx = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = fmul nsz <2 x float> %i.gy, %i.gw
  %i.ha = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.gv, <2 x float> %i.gz)
  %i.hd = load <2 x float>, ptr %i.bd, align 8, !tbaa !95
  %i.he = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.hd, <2 x float> %i.hc)
  %i.hh = load <2 x float>, ptr %i.be, align 8, !tbaa !95
  %i.hi = fadd nsz <2 x float> %i.hg, %i.hh
  %i.hj = load float, ptr %i.bf, align 8, !tbaa !95
  %i.hk = load float, ptr %i.bg, align 8, !tbaa !95
  %i.hl = fmul nsz float %i.gs, %i.hk
  %i.hm = tail call nsz float @llvm.fmuladd.f32(float %i.gt, float %i.hj, float %i.hl)
  %i.hn = load float, ptr %i.bh, align 8, !tbaa !95
  %i.ho = tail call nsz float @llvm.fmuladd.f32(float %i.gu, float %i.hn, float %i.hm)
  %i.hp = load float, ptr %i.bi, align 8, !tbaa !95
  %i.hq = fadd nsz float %i.hp, %i.ho
  store <2 x float> %i.hi, ptr %i.gp, align 4
  store float %i.hq, ptr %i.gr, align 4, !tbaa !95
  %i.hr = load ptr, ptr %1, align 8, !tbaa !434   ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 72 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 76
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 80 ; 2 uses
  %i.hv = load float, ptr %i.ht, align 4, !tbaa !203 ; 2 uses
  %i.hw = load float, ptr %i.hs, align 4, !tbaa !202 ; 2 uses
  %i.hx = load float, ptr %i.hu, align 4, !tbaa !141 ; 2 uses
  %i.hy = load <2 x float>, ptr %i.bb, align 8, !tbaa !95
  %i.hz = load <2 x float>, ptr %i.bc, align 8, !tbaa !95
  %i.ia = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = fmul nsz <2 x float> %i.ib, %i.hz
  %i.id = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> %i.hy, <2 x float> %i.ic)
  %i.ig = load <2 x float>, ptr %i.bd, align 8, !tbaa !95
  %i.ih = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.ig, <2 x float> %i.if)
  %i.ik = load <2 x float>, ptr %i.be, align 8, !tbaa !95
  %i.il = fadd nsz <2 x float> %i.ij, %i.ik
  %i.im = load float, ptr %i.bf, align 8, !tbaa !95
  %i.in = load float, ptr %i.bg, align 8, !tbaa !95
  %i.io = fmul nsz float %i.hv, %i.in
  %i.ip = tail call nsz float @llvm.fmuladd.f32(float %i.hw, float %i.im, float %i.io)
  %i.iq = load float, ptr %i.bh, align 8, !tbaa !95
  %i.ir = tail call nsz float @llvm.fmuladd.f32(float %i.hx, float %i.iq, float %i.ip)
  %i.is = load float, ptr %i.bi, align 8, !tbaa !95
  %i.it = fadd nsz float %i.is, %i.ir
  store <2 x float> %i.il, ptr %i.hs, align 4
  store float %i.it, ptr %i.hu, align 4, !tbaa !95
  %i.iu = load ptr, ptr %1, align 8, !tbaa !434   ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 84 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 88
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 92 ; 2 uses
  %i.iy = load float, ptr %i.iw, align 4, !tbaa !203 ; 2 uses
  %i.iz = load float, ptr %i.iv, align 4, !tbaa !202 ; 2 uses
  %i.ja = load float, ptr %i.ix, align 4, !tbaa !141 ; 2 uses
  %i.jb = load <2 x float>, ptr %i.bb, align 8, !tbaa !95
  %i.jc = load <2 x float>, ptr %i.bc, align 8, !tbaa !95
  %i.jd = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = fmul nsz <2 x float> %i.je, %i.jc
  %i.jg = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> %i.jb, <2 x float> %i.jf)
  %i.jj = load <2 x float>, ptr %i.bd, align 8, !tbaa !95
  %i.jk = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jl, <2 x float> %i.jj, <2 x float> %i.ji)
  %i.jn = load <2 x float>, ptr %i.be, align 8, !tbaa !95
  %i.jo = fadd nsz <2 x float> %i.jm, %i.jn
  %i.jp = load float, ptr %i.bf, align 8, !tbaa !95
  %i.jq = load float, ptr %i.bg, align 8, !tbaa !95
  %i.jr = fmul nsz float %i.iy, %i.jq
  %i.js = tail call nsz float @llvm.fmuladd.f32(float %i.iz, float %i.jp, float %i.jr)
  %i.jt = load float, ptr %i.bh, align 8, !tbaa !95
  %i.ju = tail call nsz float @llvm.fmuladd.f32(float %i.ja, float %i.jt, float %i.js)
  %i.jv = load float, ptr %i.bi, align 8, !tbaa !95
  %i.jw = fadd nsz float %i.jv, %i.ju
  store <2 x float> %i.jo, ptr %i.iv, align 4
  store float %i.jw, ptr %i.ix, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 124
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.f = load float, ptr %i.e, align 4, !tbaa !141
  %i.g = fmul nsz float %i.f, f0x3C8EFA35
  %i.h = fpext nsz float %i.g to double
  %sincos39.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.h) ; 2 uses
  %sin40.i.i = extractvalue { double, double } %sincos39.i.i, 0 ; 2 uses
  %cos41.i.i = extractvalue { double, double } %sincos39.i.i, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = fneg nsz double %sin40.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = fneg nsz double %cos41.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %3 = load float, ptr %i.d, align 4, !tbaa !202
  %4 = load float, ptr %2, align 8, !tbaa !203
  %5 = fmul nsz float %3, f0x3C8EFA35
  %6 = fmul nsz float %4, f0x3C8EFA35
  %7 = fpext nsz float %5 to double
  %8 = fpext nsz float %6 to double
  %sincos.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %7) ; 2 uses
  %sincos36.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %8) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0 ; 3 uses
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1 ; 3 uses
  %sin37.i.i = extractvalue { double, double } %sincos36.i.i, 0 ; 3 uses
  %cos38.i.i = extractvalue { double, double } %sincos36.i.i, 1 ; 3 uses
  %9 = insertelement <2 x double> poison, double %cos38.i.i, i64 0
  %i.q = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.s = insertelement <2 x double> %i.r, double %sin40.i.i, i64 1 ; 4 uses
  %i.t = fmul nsz <2 x double> %i.q, %i.s
  %i.u = fptrunc <2 x double> %i.t to <2 x float> ; 4 uses
  store <2 x float> %i.u, ptr %0, align 4, !tbaa !95
  %i.v = fptrunc nsz double %sin37.i.i to float
  %i.w = fneg nsz float %i.v                      ; 4 uses
  store float %i.w, ptr %i.i, align 4, !tbaa !95
  %10 = fmul nsz double %sin.i.i, %sin37.i.i
  %11 = fmul nsz double %cos.i.i, %sin37.i.i
  %12 = insertelement <2 x double> poison, double %cos.i.i, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.y = insertelement <2 x double> %i.x, double %i.j, i64 0
  %i.z = fmul nsz <2 x double> %13, %i.y
  %14 = insertelement <2 x double> poison, double %10, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %i.s, <2 x double> %i.z)
  %i.ab = fptrunc <2 x double> %i.aa to <2 x float> ; 3 uses
  store <2 x float> %i.ab, ptr %i.k, align 4, !tbaa !95
  %16 = fmul nsz double %sin.i.i, %cos38.i.i
  %17 = fptrunc nsz double %16 to float           ; 3 uses
  store float %17, ptr %i.l, align 4, !tbaa !95
  %18 = insertelement <2 x double> poison, double %sin.i.i, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = insertelement <2 x double> %i.x, double %i.n, i64 1
  %21 = fmul nsz <2 x double> %19, %20
  %22 = insertelement <2 x double> poison, double %11, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %24 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.s, <2 x double> %21)
  %25 = fptrunc <2 x double> %24 to <2 x float>   ; 5 uses
  store <2 x float> %25, ptr %i.m, align 4, !tbaa !95
  %26 = fmul nsz double %cos.i.i, %cos38.i.i
  %i.ac = fptrunc nsz double %26 to float         ; 5 uses
  store float %i.ac, ptr %i.c, align 4, !tbaa !95
  %i.ad = load <2 x float>, ptr %i.o, align 8, !tbaa !95 ; 5 uses
  store <2 x float> %i.ad, ptr %i.p, align 4, !tbaa !95
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.af = load float, ptr %i.ae, align 8, !tbaa !141 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store float %i.af, ptr %i.ag, align 4, !tbaa !95
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !202 ; 4 uses
  %i.aj = fcmp nsz oeq float %i.ai, 1.000000e+00
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.al = load float, ptr %i.ak, align 4, !tbaa !203 ; 2 uses
  %i.am = fcmp nsz oeq float %i.al, 1.000000e+00
  %or.cond = select i1 %i.aj, i1 %i.am, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ao = load float, ptr %i.an, align 8, !tbaa !141
  %i.ap = fcmp nsz une float %i.ao, 1.000000e+00
  br i1 %i.ap, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.b

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.a, %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.aq = phi float [ 1.000000e+00, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ %i.al, %bb.a ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.as = load float, ptr %i.ar, align 8, !tbaa !141 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.4788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.at = fmul nsz <2 x float> %i.ab, zeroinitializer ; 2 uses
  %i.au = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.av, <2 x float> %i.at)
  %i.ax = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> zeroinitializer, <2 x float> %i.aw)
  %i.ay = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> zeroinitializer, <2 x float> %i.ax)
  store <2 x float> %i.ay, ptr %0, align 4, !tbaa !95
  %i.az = fmul nsz float %17, 0.000000e+00        ; 2 uses
  %i.ba = tail call nsz float @llvm.fmuladd.f32(float %i.w, float %i.ai, float %i.az)
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float 0.000000e+00, float %i.ba)
  %i.bc = tail call nsz float @llvm.fmuladd.f32(float %i.af, float 0.000000e+00, float %i.bb)
  store float %i.bc, ptr %i.i, align 4, !tbaa !95
  %i.bd = fmul nsz float %i.ai, 0.000000e+00
  store float %i.bd, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !95
  %i.be = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul nsz <2 x float> %i.bf, %i.ab
  %i.bh = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> zeroinitializer, <2 x float> %i.bg)
  %i.bi = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> zeroinitializer, <2 x float> %i.bh)
  %i.bj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> zeroinitializer, <2 x float> %i.bi)
  store <2 x float> %i.bj, ptr %i.k, align 4, !tbaa !95
  %i.bk = fmul nsz float %i.aq, %17
  %i.bl = tail call nsz float @llvm.fmuladd.f32(float %i.w, float 0.000000e+00, float %i.bk)
  %i.bm = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float 0.000000e+00, float %i.bl)
  %i.bn = tail call nsz float @llvm.fmuladd.f32(float %i.af, float 0.000000e+00, float %i.bm)
  store float %i.bn, ptr %i.l, align 4, !tbaa !95
  %i.bo = fmul nsz float %i.aq, 0.000000e+00
  store float %i.bo, ptr %.sroa.3172.0..sroa_idx, align 4, !tbaa !95
  %i.bp = tail call nsz float @llvm.fmuladd.f32(float %i.w, float 0.000000e+00, float %i.az) ; 2 uses
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float %i.as, float %i.bp)
  %i.br = tail call nsz float @llvm.fmuladd.f32(float %i.af, float 0.000000e+00, float %i.bq)
  store float %i.br, ptr %i.c, align 4, !tbaa !95
  %i.bs = fmul nsz float %i.as, 0.000000e+00
  store float %i.bs, ptr %.sroa.4788.0..sroa_idx, align 4, !tbaa !95
  %i.bt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> zeroinitializer, <2 x float> %i.at) ; 2 uses
  %i.bu = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %i.bv, <2 x float> %i.bt)
  %i.bx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> zeroinitializer, <2 x float> %i.bw)
  store <2 x float> %i.bx, ptr %i.m, align 4, !tbaa !95
  %i.by = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> zeroinitializer, <2 x float> %i.bt)
  %i.bz = fadd nsz <2 x float> %i.ad, %i.by
  store <2 x float> %i.bz, ptr %i.p, align 4, !tbaa !95
  %i.ca = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float 0.000000e+00, float %i.bp)
  %i.cb = fadd nsz float %i.ca, %i.af
  store float %i.cb, ptr %i.ag, align 4, !tbaa !95
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !95
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !394, !range !142, !noundef !143
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !394, !range !142, !noundef !143
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !389  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(218) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(218) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.a, ptr %i.b, align 8, !tbaa !394
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5scene10ISceneNode5getIDEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !391
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode5setIDEi(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !391
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !390  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !390
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !48     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !348
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !348
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !413
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !435
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !435
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !388, !range !142, !noundef !143
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = ptrtoint ptr %i.q to i64
  br i1 %i.y, label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.w, align 8, !tbaa !388
  br label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit

_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.z, ptr %i.v, align 8, !tbaa !436
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %0, ptr %i.aa, align 8, !tbaa !389
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN5scene10ISceneNode11removeChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389
  %.not = icmp eq ptr %i.b, %0                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = load i64, ptr %i.c, align 8, !tbaa !436
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i8 0, ptr %i.f, align 8, !tbaa !388
  store ptr null, ptr %i.a, align 8, !tbaa !389
  %i.g = load ptr, ptr %1, align 8, !tbaa !48
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !348
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !348
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.c, label %_ZNK17IReferenceCounted4dropEv.exit

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.j) #27, !inline_history !16
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !435
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !435
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 24) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode9removeAllEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  %.sroa.06.09 = load ptr, ptr %i.a, align 8, !tbaa !386 ; 3 uses
  %.not10 = icmp eq ptr %.sroa.06.09, %i.a
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !386
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.b = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %.sroa.06.09, %bb.a ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %._crit_edge ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i, align 8, !tbaa !386 ; 2 uses
end_hunk_0
