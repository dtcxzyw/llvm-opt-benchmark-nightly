Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientmap?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE:bb.a
  %i.dk = load float, ptr %i.dg, align 4, !tbaa !481 ; 2 uses
  %i.dl = load float, ptr %i.di, align 4, !tbaa !483 ; 2 uses
  %i.dm = load <2 x float>, ptr %i.bb, align 8, !tbaa !82
  %i.dn = load <2 x float>, ptr %i.bc, align 8, !tbaa !82
  %i.do = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul nsz <2 x float> %i.dp, %i.dn
  %i.dr = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.dm, <2 x float> %i.dq)
  %i.du = load <2 x float>, ptr %i.bd, align 8, !tbaa !82
  %i.dv = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.du, <2 x float> %i.dt)
  %i.dy = load <2 x float>, ptr %i.be, align 8, !tbaa !82
  %i.dz = fadd nsz <2 x float> %i.dx, %i.dy
  %i.ea = load float, ptr %i.bf, align 8, !tbaa !82
  %i.eb = load float, ptr %i.bg, align 8, !tbaa !82
  %i.ec = fmul nsz float %i.dj, %i.eb
  %i.ed = tail call nsz float @llvm.fmuladd.f32(float %i.dk, float %i.ea, float %i.ec)
  %i.ee = load float, ptr %i.bh, align 8, !tbaa !82
  %i.ef = tail call nsz float @llvm.fmuladd.f32(float %i.dl, float %i.ee, float %i.ed)
  %i.eg = load float, ptr %i.bi, align 8, !tbaa !82
  %i.eh = fadd nsz float %i.eg, %i.ef
  store <2 x float> %i.dz, ptr %i.dg, align 4
  store float %i.eh, ptr %i.di, align 4, !tbaa !82
  %i.ei = load ptr, ptr %1, align 8, !tbaa !655   ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 36 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 44 ; 2 uses
  %i.em = load float, ptr %i.ek, align 4, !tbaa !482 ; 2 uses
  %i.en = load float, ptr %i.ej, align 4, !tbaa !481 ; 2 uses
  %i.eo = load float, ptr %i.el, align 4, !tbaa !483 ; 2 uses
  %i.ep = load <2 x float>, ptr %i.bb, align 8, !tbaa !82
  %i.eq = load <2 x float>, ptr %i.bc, align 8, !tbaa !82
  %i.er = insertelement <2 x float> poison, float %i.em, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fmul nsz <2 x float> %i.es, %i.eq
  %i.eu = insertelement <2 x float> poison, float %i.en, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.ep, <2 x float> %i.et)
  %i.ex = load <2 x float>, ptr %i.bd, align 8, !tbaa !82
  %i.ey = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.ex, <2 x float> %i.ew)
  %i.fb = load <2 x float>, ptr %i.be, align 8, !tbaa !82
  %i.fc = fadd nsz <2 x float> %i.fa, %i.fb
  %i.fd = load float, ptr %i.bf, align 8, !tbaa !82
  %i.fe = load float, ptr %i.bg, align 8, !tbaa !82
  %i.ff = fmul nsz float %i.em, %i.fe
  %i.fg = tail call nsz float @llvm.fmuladd.f32(float %i.en, float %i.fd, float %i.ff)
  %i.fh = load float, ptr %i.bh, align 8, !tbaa !82
  %i.fi = tail call nsz float @llvm.fmuladd.f32(float %i.eo, float %i.fh, float %i.fg)
  %i.fj = load float, ptr %i.bi, align 8, !tbaa !82
  %i.fk = fadd nsz float %i.fj, %i.fi
  store <2 x float> %i.fc, ptr %i.ej, align 4
  store float %i.fk, ptr %i.el, align 4, !tbaa !82
  %i.fl = load ptr, ptr %1, align 8, !tbaa !655   ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 48 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 52
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 56 ; 2 uses
  %i.fp = load float, ptr %i.fn, align 4, !tbaa !482 ; 2 uses
  %i.fq = load float, ptr %i.fm, align 4, !tbaa !481 ; 2 uses
  %i.fr = load float, ptr %i.fo, align 4, !tbaa !483 ; 2 uses
  %i.fs = load <2 x float>, ptr %i.bb, align 8, !tbaa !82
  %i.ft = load <2 x float>, ptr %i.bc, align 8, !tbaa !82
  %i.fu = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = fmul nsz <2 x float> %i.fv, %i.ft
  %i.fx = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.fs, <2 x float> %i.fw)
  %i.ga = load <2 x float>, ptr %i.bd, align 8, !tbaa !82
  %i.gb = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.ga, <2 x float> %i.fz)
  %i.ge = load <2 x float>, ptr %i.be, align 8, !tbaa !82
  %i.gf = fadd nsz <2 x float> %i.gd, %i.ge
  %i.gg = load float, ptr %i.bf, align 8, !tbaa !82
  %i.gh = load float, ptr %i.bg, align 8, !tbaa !82
  %i.gi = fmul nsz float %i.fp, %i.gh
  %i.gj = tail call nsz float @llvm.fmuladd.f32(float %i.fq, float %i.gg, float %i.gi)
  %i.gk = load float, ptr %i.bh, align 8, !tbaa !82
  %i.gl = tail call nsz float @llvm.fmuladd.f32(float %i.fr, float %i.gk, float %i.gj)
  %i.gm = load float, ptr %i.bi, align 8, !tbaa !82
  %i.gn = fadd nsz float %i.gm, %i.gl
  store <2 x float> %i.gf, ptr %i.fm, align 4
  store float %i.gn, ptr %i.fo, align 4, !tbaa !82
  %i.go = load ptr, ptr %1, align 8, !tbaa !655   ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 60 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 68 ; 2 uses
  %i.gs = load float, ptr %i.gq, align 4, !tbaa !482 ; 2 uses
  %i.gt = load float, ptr %i.gp, align 4, !tbaa !481 ; 2 uses
  %i.gu = load float, ptr %i.gr, align 4, !tbaa !483 ; 2 uses
  %i.gv = load <2 x float>, ptr %i.bb, align 8, !tbaa !82
  %i.gw = load <2 x float>, ptr %i.bc, align 8, !tbaa !82
  %i.gx = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = fmul nsz <2 x float> %i.gy, %i.gw
  %i.ha = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.gv, <2 x float> %i.gz)
  %i.hd = load <2 x float>, ptr %i.bd, align 8, !tbaa !82
  %i.he = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.hd, <2 x float> %i.hc)
  %i.hh = load <2 x float>, ptr %i.be, align 8, !tbaa !82
  %i.hi = fadd nsz <2 x float> %i.hg, %i.hh
  %i.hj = load float, ptr %i.bf, align 8, !tbaa !82
  %i.hk = load float, ptr %i.bg, align 8, !tbaa !82
  %i.hl = fmul nsz float %i.gs, %i.hk
  %i.hm = tail call nsz float @llvm.fmuladd.f32(float %i.gt, float %i.hj, float %i.hl)
  %i.hn = load float, ptr %i.bh, align 8, !tbaa !82
  %i.ho = tail call nsz float @llvm.fmuladd.f32(float %i.gu, float %i.hn, float %i.hm)
  %i.hp = load float, ptr %i.bi, align 8, !tbaa !82
  %i.hq = fadd nsz float %i.hp, %i.ho
  store <2 x float> %i.hi, ptr %i.gp, align 4
  store float %i.hq, ptr %i.gr, align 4, !tbaa !82
  %i.hr = load ptr, ptr %1, align 8, !tbaa !655   ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 72 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 76
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 80 ; 2 uses
  %i.hv = load float, ptr %i.ht, align 4, !tbaa !482 ; 2 uses
  %i.hw = load float, ptr %i.hs, align 4, !tbaa !481 ; 2 uses
  %i.hx = load float, ptr %i.hu, align 4, !tbaa !483 ; 2 uses
  %i.hy = load <2 x float>, ptr %i.bb, align 8, !tbaa !82
  %i.hz = load <2 x float>, ptr %i.bc, align 8, !tbaa !82
  %i.ia = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = fmul nsz <2 x float> %i.ib, %i.hz
  %i.id = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> %i.hy, <2 x float> %i.ic)
  %i.ig = load <2 x float>, ptr %i.bd, align 8, !tbaa !82
  %i.ih = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.ig, <2 x float> %i.if)
  %i.ik = load <2 x float>, ptr %i.be, align 8, !tbaa !82
  %i.il = fadd nsz <2 x float> %i.ij, %i.ik
  %i.im = load float, ptr %i.bf, align 8, !tbaa !82
  %i.in = load float, ptr %i.bg, align 8, !tbaa !82
  %i.io = fmul nsz float %i.hv, %i.in
  %i.ip = tail call nsz float @llvm.fmuladd.f32(float %i.hw, float %i.im, float %i.io)
  %i.iq = load float, ptr %i.bh, align 8, !tbaa !82
  %i.ir = tail call nsz float @llvm.fmuladd.f32(float %i.hx, float %i.iq, float %i.ip)
  %i.is = load float, ptr %i.bi, align 8, !tbaa !82
  %i.it = fadd nsz float %i.is, %i.ir
  store <2 x float> %i.il, ptr %i.hs, align 4
  store float %i.it, ptr %i.hu, align 4, !tbaa !82
  %i.iu = load ptr, ptr %1, align 8, !tbaa !655   ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 84 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 88
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 92 ; 2 uses
  %i.iy = load float, ptr %i.iw, align 4, !tbaa !482 ; 2 uses
  %i.iz = load float, ptr %i.iv, align 4, !tbaa !481 ; 2 uses
  %i.ja = load float, ptr %i.ix, align 4, !tbaa !483 ; 2 uses
  %i.jb = load <2 x float>, ptr %i.bb, align 8, !tbaa !82
  %i.jc = load <2 x float>, ptr %i.bc, align 8, !tbaa !82
  %i.jd = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = fmul nsz <2 x float> %i.je, %i.jc
  %i.jg = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> %i.jb, <2 x float> %i.jf)
  %i.jj = load <2 x float>, ptr %i.bd, align 8, !tbaa !82
  %i.jk = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jl, <2 x float> %i.jj, <2 x float> %i.ji)
  %i.jn = load <2 x float>, ptr %i.be, align 8, !tbaa !82
  %i.jo = fadd nsz <2 x float> %i.jm, %i.jn
  %i.jp = load float, ptr %i.bf, align 8, !tbaa !82
  %i.jq = load float, ptr %i.bg, align 8, !tbaa !82
  %i.jr = fmul nsz float %i.iy, %i.jq
  %i.js = tail call nsz float @llvm.fmuladd.f32(float %i.iz, float %i.jp, float %i.jr)
  %i.jt = load float, ptr %i.bh, align 8, !tbaa !82
  %i.ju = tail call nsz float @llvm.fmuladd.f32(float %i.ja, float %i.jt, float %i.js)
  %i.jv = load float, ptr %i.bi, align 8, !tbaa !82
  %i.jw = fadd nsz float %i.jv, %i.ju
  store <2 x float> %i.jo, ptr %i.iv, align 4
  store float %i.jw, ptr %i.ix, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.f = load float, ptr %i.e, align 4, !tbaa !483
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
  %2 = load <2 x float>, ptr %i.d, align 4, !tbaa !82
  %3 = fmul nsz <2 x float> %2, splat (float f0x3C8EFA35)
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %5 = fpext <2 x float> %4 to <2 x double>
  %6 = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %5) ; 2 uses
  %7 = extractvalue { <2 x double>, <2 x double> } %6, 0 ; 5 uses
  %8 = extractvalue { <2 x double>, <2 x double> } %6, 1 ; 5 uses
  %i.q = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.s = insertelement <2 x double> %i.r, double %sin40.i.i, i64 1 ; 4 uses
  %i.t = fmul nsz <2 x double> %i.q, %i.s
  %i.u = fptrunc <2 x double> %i.t to <2 x float> ; 4 uses
  store <2 x float> %i.u, ptr %0, align 4, !tbaa !82
  %9 = extractelement <2 x double> %7, i64 0
  %i.v = fptrunc nsz double %9 to float
  %i.w = fneg nsz float %i.v                      ; 4 uses
  store float %i.w, ptr %i.i, align 4, !tbaa !82
  %10 = shufflevector <2 x double> %8, <2 x double> %7, <2 x i32> <i32 1, i32 2>
  %11 = fmul nsz <2 x double> %7, %10             ; 2 uses
  %12 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.x = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.y = insertelement <2 x double> %i.x, double %i.j, i64 0
  %i.z = fmul nsz <2 x double> %12, %i.y
  %13 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aa = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %i.s, <2 x double> %i.z)
  %i.ab = fptrunc <2 x double> %i.aa to <2 x float> ; 3 uses
  store <2 x float> %i.ab, ptr %i.k, align 4, !tbaa !82
  %14 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %15 = insertelement <2 x double> %i.x, double %i.n, i64 1
  %16 = fmul nsz <2 x double> %14, %15
  %17 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %i.s, <2 x double> %16)
  %19 = fptrunc <2 x double> %18 to <2 x float>   ; 5 uses
  store <2 x float> %19, ptr %i.m, align 4, !tbaa !82
  %20 = shufflevector <2 x double> %7, <2 x double> %8, <2 x i32> <i32 1, i32 2>
  %21 = fmul nsz <2 x double> %8, %20             ; 2 uses
  %22 = extractelement <2 x double> %21, i64 0
  %23 = fptrunc nsz double %22 to float           ; 3 uses
  store float %23, ptr %i.l, align 4, !tbaa !82
  %24 = extractelement <2 x double> %21, i64 1
  %i.ac = fptrunc nsz double %24 to float         ; 5 uses
  store float %i.ac, ptr %i.c, align 4, !tbaa !82
  %i.ad = load <2 x float>, ptr %i.o, align 8, !tbaa !82 ; 5 uses
  store <2 x float> %i.ad, ptr %i.p, align 4, !tbaa !82
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.af = load float, ptr %i.ae, align 8, !tbaa !483 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store float %i.af, ptr %i.ag, align 4, !tbaa !82
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !481 ; 4 uses
  %i.aj = fcmp nsz oeq float %i.ai, 1.000000e+00
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.al = load float, ptr %i.ak, align 4, !tbaa !482 ; 2 uses
  %i.am = fcmp nsz oeq float %i.al, 1.000000e+00
  %or.cond = select i1 %i.aj, i1 %i.am, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ao = load float, ptr %i.an, align 8, !tbaa !483
  %i.ap = fcmp nsz une float %i.ao, 1.000000e+00
  br i1 %i.ap, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.b

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.a, %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.aq = phi float [ 1.000000e+00, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ %i.al, %bb.a ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.as = load float, ptr %i.ar, align 8, !tbaa !483 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.4788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.at = fmul nsz <2 x float> %i.ab, zeroinitializer ; 2 uses
  %i.au = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.av, <2 x float> %i.at)
  %i.ax = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> zeroinitializer, <2 x float> %i.aw)
  %i.ay = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> zeroinitializer, <2 x float> %i.ax)
  store <2 x float> %i.ay, ptr %0, align 4, !tbaa !82
  %i.az = fmul nsz float %23, 0.000000e+00        ; 2 uses
  %i.ba = tail call nsz float @llvm.fmuladd.f32(float %i.w, float %i.ai, float %i.az)
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float 0.000000e+00, float %i.ba)
  %i.bc = tail call nsz float @llvm.fmuladd.f32(float %i.af, float 0.000000e+00, float %i.bb)
  store float %i.bc, ptr %i.i, align 4, !tbaa !82
  %i.bd = fmul nsz float %i.ai, 0.000000e+00
  store float %i.bd, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !82
  %i.be = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul nsz <2 x float> %i.bf, %i.ab
  %i.bh = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> zeroinitializer, <2 x float> %i.bg)
  %i.bi = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> zeroinitializer, <2 x float> %i.bh)
  %i.bj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> zeroinitializer, <2 x float> %i.bi)
  store <2 x float> %i.bj, ptr %i.k, align 4, !tbaa !82
  %i.bk = fmul nsz float %i.aq, %23
  %i.bl = tail call nsz float @llvm.fmuladd.f32(float %i.w, float 0.000000e+00, float %i.bk)
  %i.bm = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float 0.000000e+00, float %i.bl)
  %i.bn = tail call nsz float @llvm.fmuladd.f32(float %i.af, float 0.000000e+00, float %i.bm)
  store float %i.bn, ptr %i.l, align 4, !tbaa !82
  %i.bo = fmul nsz float %i.aq, 0.000000e+00
  store float %i.bo, ptr %.sroa.3172.0..sroa_idx, align 4, !tbaa !82
  %i.bp = tail call nsz float @llvm.fmuladd.f32(float %i.w, float 0.000000e+00, float %i.az) ; 2 uses
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float %i.as, float %i.bp)
  %i.br = tail call nsz float @llvm.fmuladd.f32(float %i.af, float 0.000000e+00, float %i.bq)
  store float %i.br, ptr %i.c, align 4, !tbaa !82
  %i.bs = fmul nsz float %i.as, 0.000000e+00
  store float %i.bs, ptr %.sroa.4788.0..sroa_idx, align 4, !tbaa !82
  %i.bt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> zeroinitializer, <2 x float> %i.at) ; 2 uses
  %i.bu = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %i.bv, <2 x float> %i.bt)
  %i.bx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> zeroinitializer, <2 x float> %i.bw)
  store <2 x float> %i.bx, ptr %i.m, align 4, !tbaa !82
  %i.by = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> zeroinitializer, <2 x float> %i.bt)
  %i.bz = fadd nsz <2 x float> %i.ad, %i.by
  store <2 x float> %i.bz, ptr %i.p, align 4, !tbaa !82
  %i.ca = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float 0.000000e+00, float %i.bp)
  %i.cb = fadd nsz float %i.ca, %i.af
  store float %i.cb, ptr %i.ag, align 4, !tbaa !82
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !82
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !112, !range !174, !noundef !175
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !112, !range !174, !noundef !175
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
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
  store i8 %i.a, ptr %i.b, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5scene10ISceneNode5getIDEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !109
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode5setIDEi(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !58     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !60
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !257
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !656
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !656
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !90, !range !174, !noundef !175
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = ptrtoint ptr %i.q to i64
  br i1 %i.y, label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.w, align 8, !tbaa !90
  br label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit

_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.z, ptr %i.v, align 8, !tbaa !657
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %0, ptr %i.aa, align 8, !tbaa !107
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN5scene10ISceneNode11removeChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107
  %.not = icmp eq ptr %i.b, %0                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = load i64, ptr %i.c, align 8, !tbaa !657
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i8 0, ptr %i.f, align 8, !tbaa !90
  store ptr null, ptr %i.a, align 8, !tbaa !107
  %i.g = load ptr, ptr %1, align 8, !tbaa !58
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !60
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !60
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.c, label %_ZNK17IReferenceCounted4dropEv.exit

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.j) #2, !inline_history !0
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !656
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !656
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 24) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode9removeAllEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  %.sroa.06.09 = load ptr, ptr %i.a, align 8, !tbaa !86 ; 3 uses
  %.not10 = icmp eq ptr %.sroa.06.09, %i.a
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !86
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.b = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %.sroa.06.09, %bb.a ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %._crit_edge ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i, align 8, !tbaa !86 ; 2 uses
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_clientmap.cpp:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 48), ptr noundef nonnull align 1 dereferenceable(15) @.str.3, i64 15, i1 false)
  store i64 15, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 40), align 8, !tbaa !176
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 63), align 1, !tbaa !65
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 80), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 64), align 16, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #2
  store i64 18, ptr %i.e, align 8, !tbaa !178
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 64), ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc28.i unwind label %bb.b ; 2 uses

.noexc28.i:                                       ; preds = %bb.a
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 64), align 16, !tbaa !64
  %i.l = load i64, ptr %i.e, align 8, !tbaa !178  ; 3 uses
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 80), align 16, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.k, ptr noundef nonnull align 1 dereferenceable(18) @.str.4, i64 18, i1 false)
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 72), align 8, !tbaa !176
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 64), align 16, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #2
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 96), align 16, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #2
  store i64 37, ptr %i.d, align 8, !tbaa !178
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 96), ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc32.i unwind label %bb.c ; 2 uses

.noexc32.i:                                       ; preds = %.noexc28.i
  store ptr %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 96), align 16, !tbaa !64
  %i.p = load i64, ptr %i.d, align 8, !tbaa !178  ; 3 uses
  store i64 %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 112), align 16, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.o, ptr noundef nonnull align 1 dereferenceable(37) @.str.5, i64 37, i1 false)
  store i64 %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 104), align 8, !tbaa !176
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 96), align 16, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #2
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 128), align 16, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #2
  store i64 29, ptr %i.c, align 8, !tbaa !178
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 128), ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc36.i unwind label %bb.d ; 2 uses

.noexc36.i:                                       ; preds = %.noexc32.i
  store ptr %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 128), align 16, !tbaa !64
  %i.t = load i64, ptr %i.c, align 8, !tbaa !178  ; 3 uses
  store i64 %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 144), align 16, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.s, ptr noundef nonnull align 1 dereferenceable(29) @.str.6, i64 29, i1 false)
  store i64 %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 136), align 8, !tbaa !176
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 128), align 16, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.v, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #2
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 160), align 16, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #2
  store i64 16, ptr %i.b, align 8, !tbaa !178
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 160), ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc40.i unwind label %bb.e ; 2 uses

.noexc40.i:                                       ; preds = %.noexc36.i
  store ptr %i.w, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 160), align 16, !tbaa !64
  %i.x = load i64, ptr %i.b, align 8, !tbaa !178  ; 3 uses
  store i64 %i.x, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 176), align 16, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.w, ptr noundef nonnull align 1 dereferenceable(16) @.str.7, i64 16, i1 false)
  store i64 %i.x, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 168), align 8, !tbaa !176
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 160), align 16, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 0, ptr %i.z, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #2
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 192), align 16, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i64 24, ptr %i.a, align 8, !tbaa !178
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 192), ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %__cxx_global_var_init.2.exit unwind label %bb.f ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.c:                                             ; preds = %.noexc28.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %.noexc32.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %.noexc36.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %.noexc40.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.515.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 160), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 192), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 64), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 96), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 128), %bb.d ]
  %.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %bb.f ], [ %i.ab, %bb.b ], [ %i.ac, %bb.c ], [ %i.ad, %bb.d ]
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.g
  %i.ag = phi ptr [ %.515.i, %bb.g ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !65
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.an = icmp eq ptr %i.ah, @_ZL18ClientMap_settingsB5cxx11
  br i1 %i.an, label %bb.i, label %bb.h

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.i

__cxx_global_var_init.2.exit:                     ; preds = %.noexc40.i
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 192), align 16, !tbaa !64
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !178 ; 3 uses
  store i64 %i.ao, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 208), align 16, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aa, ptr noundef nonnull align 1 dereferenceable(24) @.str.8, i64 24, i1 false)
  store i64 %i.ao, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 200), align 8, !tbaa !176
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 192), align 16, !tbaa !64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 0, ptr %i.aq, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  %i.ar = call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor, ptr null, ptr nonnull @__dso_handle) #2 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #4

declare extern_weak void @_ZTH13verbosestream() #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.abs.v2i16(<2 x i16>, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i48 @llvm.vector.reduce.or.v2i48(<2 x i48>) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #28 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #34 = { builtin nounwind }
attributes #35 = { noreturn nounwind }
attributes #36 = { noreturn }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { builtin allocsize(0) }

!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}
!llvm.errno.tbaa = !{!33}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !114}
!3 = distinct !{ptr @_ZN16CachedMeshBuffer4dropEv, null}
!4 = distinct !{!4, !114}
!5 = distinct !{!5, !114}
!6 = distinct !{!6, !114}
!7 = distinct !{!7, !114}
!8 = distinct !{null}
!9 = distinct !{!9, !114}
!10 = distinct !{!10, !114}
!11 = distinct !{!11, !114}
!12 = distinct !{!12, !114}
!13 = distinct !{null}
!14 = distinct !{!14, !114}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{!17, !114}
!18 = distinct !{!18, !114}
!19 = distinct !{!19, !114}
!20 = distinct !{!20, !114}
!21 = distinct !{null}
!22 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev, null, null, null, null}
!23 = distinct !{!23, !114}
!24 = distinct !{!24, !114}
!25 = !{i32 8, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 2}
!28 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!29 = !{!"Simple C++ TBAA"}
!30 = !{!"omnipotent char", !29, i64 0}
!31 = !{!"int", !30, i64 0}
!32 = !{!"__libc_errno", !31, i64 0}
!33 = !{!32, !31, i64 0}
!34 = !{!"any pointer", !30, i64 0}
!35 = !{!"any p2 pointer", !34, i64 0}
!36 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !35, i64 0}
!37 = !{!"long", !30, i64 0}
!38 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !34, i64 0}
!39 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !38, i64 0}
!40 = !{!"float", !30, i64 0}
!41 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !40, i64 0, !37, i64 8}
!42 = !{!"_ZTSSt10_HashtableIN5video9SMaterialESt4pairIKS1_St6vectorIS2_IN4core8vector3dIsEEPN5scene11IMeshBufferEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE", !36, i64 0, !37, i64 8, !39, i64 16, !37, i64 24, !41, i64 32, !38, i64 48}
!43 = !{!42, !36, i64 0}
!44 = !{!42, !37, i64 8}
!45 = !{!41, !40, i64 0}
!46 = !{!"p1 _ZTSN12_GLOBAL__N_114DrawDescriptorE", !34, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!47, !46, i64 0}
!49 = !{!47, !46, i64 16}
!50 = !{!"p2 _ZTSN5scene11IMeshBufferE", !35, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIPN5scene11IMeshBufferESaIS2_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!53 = !{!52, !50, i64 0}
!54 = !{!52, !50, i64 8}
!55 = !{!"p1 _ZTSN5scene11IMeshBufferE", !34, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"vtable pointer", !29, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"_ZTS17IReferenceCounted", !31, i64 8}
!60 = !{!59, !31, i64 8}
!61 = !{!"p1 omnipotent char", !34, i64 0}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !61, i64 0}
!63 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !62, i64 0, !37, i64 8, !30, i64 16}
!64 = !{!63, !61, i64 0}
!65 = !{!30, !30, i64 0}
!66 = !{!"_ZTSN5video6SColorE", !31, i64 0}
!67 = !{!"p1 _ZTS13RenderingCore", !34, i64 0}
!68 = !{!"_ZTSSt10_Head_baseILm0EP13RenderingCoreLb0EE", !67, i64 0}
!69 = !{!"_ZTSSt11_Tuple_implILm0EJP13RenderingCoreSt14default_deleteIS0_EEE", !68, i64 0}
!70 = !{!"_ZTSSt5tupleIJP13RenderingCoreSt14default_deleteIS0_EEE", !69, i64 0}
!71 = !{!"_ZTSSt15__uniq_ptr_implI13RenderingCoreSt14default_deleteIS0_EE", !70, i64 0}
!72 = !{!"_ZTSSt15__uniq_ptr_dataI13RenderingCoreSt14default_deleteIS0_ELb1ELb1EE", !71, i64 0}
!73 = !{!"_ZTSSt10unique_ptrI13RenderingCoreSt14default_deleteIS0_EE", !72, i64 0}
!74 = !{!"p1 _ZTS14IrrlichtDevice", !34, i64 0}
!75 = !{!"p1 _ZTSN5video12IVideoDriverE", !34, i64 0}
!76 = !{!"p1 _ZTS15MyEventReceiver", !34, i64 0}
!77 = !{!"_ZTS15RenderingEngine", !66, i64 0, !66, i64 4, !73, i64 8, !74, i64 16, !75, i64 24, !76, i64 32}
!78 = !{!77, !74, i64 16}
!79 = !{!"bool", !30, i64 0}
!80 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !30, i64 0, !79, i64 32}
!81 = !{!80, !79, i64 32}
!82 = !{!40, !40, i64 0}
!83 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !34, i64 0}
!84 = !{!"_ZTSNSt8__detail15_List_node_baseE", !83, i64 0, !83, i64 8}
!85 = !{!84, !83, i64 8}
!86 = !{!84, !83, i64 0}
!87 = !{!"_ZTSNSt8__detail17_List_node_headerE", !84, i64 0, !37, i64 16}
!88 = !{!87, !37, i64 16}
!89 = !{!"_ZTSSt22_Optional_payload_baseISt14_List_iteratorIPN5scene10ISceneNodeEEE", !30, i64 0, !79, i64 8}
!90 = !{!89, !79, i64 8}
!91 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !80, i64 0}
!92 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !91, i64 0}
!93 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !92, i64 0}
!94 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !93, i64 0}
!95 = !{!"_ZTSN4core8CMatrix4IfEE", !30, i64 0}
!96 = !{!"_ZTSN4core8vector3dIfEE", !40, i64 0, !40, i64 4, !40, i64 8}
!97 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EE10_List_implE", !87, i64 0}
!98 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EEE", !97, i64 0}
!99 = !{!"_ZTSNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EEE", !98, i64 0}
!100 = !{!"_ZTSSt17_Optional_payloadISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1ELb1EE", !89, i64 0}
!101 = !{!"_ZTSSt14_Optional_baseISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1EE", !100, i64 0}
!102 = !{!"_ZTSSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEE", !101, i64 0}
!103 = !{!"p1 _ZTSN5scene10ISceneNodeE", !34, i64 0}
!104 = !{!"p1 _ZTSN5scene13ISceneManagerE", !34, i64 0}
!105 = !{!"short", !30, i64 0}
!106 = !{!"_ZTSN5scene10ISceneNodeE", !94, i64 8, !95, i64 48, !96, i64 112, !96, i64 124, !96, i64 136, !99, i64 152, !102, i64 176, !103, i64 192, !104, i64 200, !31, i64 208, !105, i64 212, !105, i64 214, !79, i64 216, !79, i64 217}
!107 = !{!106, !103, i64 192}
!108 = !{!106, !104, i64 200}
!109 = !{!106, !31, i64 208}
!110 = !{!106, !105, i64 212}
!111 = !{!106, !105, i64 214}
!112 = !{!106, !79, i64 216}
!113 = !{!106, !79, i64 217}
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!"p1 _ZTS8IGameDef", !34, i64 0}
!116 = !{!"_ZTSSt4lessIP16MapEventReceiverE"}
!117 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIP16MapEventReceiverEE", !116, i64 0}
!118 = !{!"_ZTSSt14_Rb_tree_color", !30, i64 0}
!119 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !34, i64 0}
!120 = !{!"_ZTSSt18_Rb_tree_node_base", !118, i64 0, !119, i64 8, !119, i64 16, !119, i64 24}
!121 = !{!"_ZTSSt15_Rb_tree_header", !120, i64 0, !37, i64 32}
!122 = !{!"_ZTSNSt8_Rb_treeIP16MapEventReceiverS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEE", !117, i64 0, !121, i64 8}
!123 = !{!"_ZTSSt8_Rb_treeIP16MapEventReceiverS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE", !122, i64 0}
!124 = !{!"_ZTSSt3setIP16MapEventReceiverSt4lessIS1_ESaIS1_EE", !123, i64 0}
!125 = !{!"_ZTSSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE", !36, i64 0, !37, i64 8, !39, i64 16, !37, i64 24, !41, i64 32, !38, i64 48}
!126 = !{!"_ZTSSt13unordered_mapIN4core8vector2dIsEEP9MapSectorSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE", !125, i64 0}
!127 = !{!"p1 _ZTS9MapSector", !34, i64 0}
!128 = !{!"_ZTSN4core8vector2dIsEE", !105, i64 0, !105, i64 2}
!129 = !{!"p1 _ZTS14NodeDefManager", !34, i64 0}
!130 = !{!"_ZTS3Map", !115, i64 8, !124, i64 16, !126, i64 64, !127, i64 120, !128, i64 128, !129, i64 136}
!131 = !{!"p1 _ZTS6Client", !34, i64 0}
!132 = !{!"p1 _ZTS15RenderingEngine", !34, i64 0}
!133 = !{!"_ZTSN4core8aabbox3dIfEE", !96, i64 0, !96, i64 12}
!134 = !{!"p1 _ZTS14MapDrawControl", !34, i64 0}
!135 = !{!"_ZTSN4core8vector3dIsEE", !105, i64 0, !105, i64 2, !105, i64 4}
!136 = !{!"_ZTSN9ClientMap16MapBlockComparerE", !135, i64 0}
!137 = !{!"_ZTSSt20_Rb_tree_key_compareIN9ClientMap16MapBlockComparerEE", !136, i64 0}
!138 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_EN9ClientMap16MapBlockComparerESaIS7_EE13_Rb_tree_implISB_Lb0EEE", !137, i64 0, !121, i64 8}
!139 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_EN9ClientMap16MapBlockComparerESaIS7_EE", !138, i64 0}
!140 = !{!"_ZTSSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEE", !139, i64 0}
!141 = !{!"p2 _ZTS8MapBlock", !35, i64 0}
!142 = !{!"_ZTSNSt12_Vector_baseIP8MapBlockSaIS1_EE17_Vector_impl_dataE", !141, i64 0, !141, i64 8, !141, i64 16}
!143 = !{!"_ZTSNSt12_Vector_baseIP8MapBlockSaIS1_EE12_Vector_implE", !142, i64 0}
!144 = !{!"_ZTSSt12_Vector_baseIP8MapBlockSaIS1_EE", !143, i64 0}
!145 = !{!"_ZTSSt6vectorIP8MapBlockSaIS1_EE", !144, i64 0}
!146 = !{!"_ZTSSt4lessIN4core8vector3dIsEEE"}
!147 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4core8vector3dIsEEEE", !146, i64 0}
!148 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !147, i64 0, !121, i64 8}
!149 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE", !148, i64 0}
end_hunk_1
