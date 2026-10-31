Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/wieldmesh?download=true
inline.NumInlined: 2216
inline.NumDeleted: 845
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE:bb.a
  %i.di = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.db, <2 x float> %i.df)
  %i.dj = load <2 x float>, ptr %i.bf, align 8, !tbaa !88
  %i.dk = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dj, <2 x float> %i.di)
  %i.dn = load <2 x float>, ptr %i.bg, align 8, !tbaa !88
  %i.do = fadd nsz <2 x float> %i.dm, %i.dn
  %i.dp = load float, ptr %i.bh, align 8, !tbaa !88
  %i.dq = load float, ptr %i.bi, align 8, !tbaa !88
  %i.dr = fmul nsz float %i.cz, %i.dq
  %i.ds = tail call nsz float @llvm.fmuladd.f32(float %i.cy, float %i.dp, float %i.dr)
  %i.dt = load float, ptr %i.bj, align 8, !tbaa !88
  %i.du = tail call nsz float @llvm.fmuladd.f32(float %i.da, float %i.dt, float %i.ds)
  %i.dv = load float, ptr %i.bk, align 8, !tbaa !88
  %i.dw = fadd nsz float %i.dv, %i.du
  store <2 x float> %i.do, ptr %i.x, align 4, !tbaa !88
  store float %i.dw, ptr %i.cx, align 4, !tbaa !88
  %i.dx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 44 ; 2 uses
  %i.dz = load float, ptr %i.aa, align 4, !tbaa !194 ; 2 uses
  %i.ea = load float, ptr %i.dx, align 4, !tbaa !195 ; 2 uses
  %i.eb = load float, ptr %i.dy, align 4, !tbaa !159 ; 2 uses
  %i.ec = load <2 x float>, ptr %i.bd, align 8, !tbaa !88
  %i.ed = load <2 x float>, ptr %i.be, align 8, !tbaa !88
  %i.ee = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fmul nsz <2 x float> %i.ef, %i.ed
  %i.eh = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ec, <2 x float> %i.eg)
  %i.ek = load <2 x float>, ptr %i.bf, align 8, !tbaa !88
  %i.el = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.ek, <2 x float> %i.ej)
  %i.eo = load <2 x float>, ptr %i.bg, align 8, !tbaa !88
  %i.ep = fadd nsz <2 x float> %i.en, %i.eo
  %i.eq = load float, ptr %i.bh, align 8, !tbaa !88
  %i.er = load float, ptr %i.bi, align 8, !tbaa !88
  %i.es = fmul nsz float %i.ea, %i.er
  %i.et = tail call nsz float @llvm.fmuladd.f32(float %i.dz, float %i.eq, float %i.es)
  %i.eu = load float, ptr %i.bj, align 8, !tbaa !88
  %i.ev = tail call nsz float @llvm.fmuladd.f32(float %i.eb, float %i.eu, float %i.et)
  %i.ew = load float, ptr %i.bk, align 8, !tbaa !88
  %i.ex = fadd nsz float %i.ew, %i.ev
  store <2 x float> %i.ep, ptr %i.aa, align 4, !tbaa !88
  store float %i.ex, ptr %i.dy, align 4, !tbaa !88
  %i.ey = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.ez = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.fa = load float, ptr %i.ad, align 4, !tbaa !194 ; 2 uses
  %i.fb = load float, ptr %i.ey, align 4, !tbaa !195 ; 2 uses
  %i.fc = load float, ptr %i.ez, align 4, !tbaa !159 ; 2 uses
  %i.fd = load <2 x float>, ptr %i.bd, align 8, !tbaa !88
  %i.fe = load <2 x float>, ptr %i.be, align 8, !tbaa !88
  %i.ff = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = fmul nsz <2 x float> %i.fg, %i.fe
  %i.fi = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.fd, <2 x float> %i.fh)
  %i.fl = load <2 x float>, ptr %i.bf, align 8, !tbaa !88
  %i.fm = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fl, <2 x float> %i.fk)
  %i.fp = load <2 x float>, ptr %i.bg, align 8, !tbaa !88
  %i.fq = fadd nsz <2 x float> %i.fo, %i.fp
  %i.fr = load float, ptr %i.bh, align 8, !tbaa !88
  %i.fs = load float, ptr %i.bi, align 8, !tbaa !88
  %i.ft = fmul nsz float %i.fb, %i.fs
  %i.fu = tail call nsz float @llvm.fmuladd.f32(float %i.fa, float %i.fr, float %i.ft)
  %i.fv = load float, ptr %i.bj, align 8, !tbaa !88
  %i.fw = tail call nsz float @llvm.fmuladd.f32(float %i.fc, float %i.fv, float %i.fu)
  %i.fx = load float, ptr %i.bk, align 8, !tbaa !88
  %i.fy = fadd nsz float %i.fx, %i.fw
  store <2 x float> %i.fq, ptr %i.ad, align 4, !tbaa !88
  store float %i.fy, ptr %i.ez, align 4, !tbaa !88
  %i.fz = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.o, i64 68 ; 2 uses
  %i.gb = load float, ptr %i.ae, align 4, !tbaa !194 ; 2 uses
  %i.gc = load float, ptr %i.fz, align 4, !tbaa !195 ; 2 uses
  %i.gd = load float, ptr %i.ga, align 4, !tbaa !159 ; 2 uses
  %i.ge = load <2 x float>, ptr %i.bd, align 8, !tbaa !88
  %i.gf = load <2 x float>, ptr %i.be, align 8, !tbaa !88
  %i.gg = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fmul nsz <2 x float> %i.gh, %i.gf
  %i.gj = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.ge, <2 x float> %i.gi)
  %i.gm = load <2 x float>, ptr %i.bf, align 8, !tbaa !88
  %i.gn = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.gm, <2 x float> %i.gl)
  %i.gq = load <2 x float>, ptr %i.bg, align 8, !tbaa !88
  %i.gr = fadd nsz <2 x float> %i.gp, %i.gq
  %i.gs = load float, ptr %i.bh, align 8, !tbaa !88
  %i.gt = load float, ptr %i.bi, align 8, !tbaa !88
  %i.gu = fmul nsz float %i.gc, %i.gt
  %i.gv = tail call nsz float @llvm.fmuladd.f32(float %i.gb, float %i.gs, float %i.gu)
  %i.gw = load float, ptr %i.bj, align 8, !tbaa !88
  %i.gx = tail call nsz float @llvm.fmuladd.f32(float %i.gd, float %i.gw, float %i.gv)
  %i.gy = load float, ptr %i.bk, align 8, !tbaa !88
  %i.gz = fadd nsz float %i.gy, %i.gx
  store <2 x float> %i.gr, ptr %i.ae, align 4, !tbaa !88
  store float %i.gz, ptr %i.ga, align 4, !tbaa !88
  %i.ha = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  %i.hb = getelementptr inbounds nuw i8, ptr %i.o, i64 80 ; 2 uses
  %i.hc = load float, ptr %i.af, align 4, !tbaa !194 ; 2 uses
  %i.hd = load float, ptr %i.ha, align 4, !tbaa !195 ; 2 uses
  %i.he = load float, ptr %i.hb, align 4, !tbaa !159 ; 2 uses
  %i.hf = load <2 x float>, ptr %i.bd, align 8, !tbaa !88
  %i.hg = load <2 x float>, ptr %i.be, align 8, !tbaa !88
  %i.hh = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = fmul nsz <2 x float> %i.hi, %i.hg
  %i.hk = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> %i.hf, <2 x float> %i.hj)
  %i.hn = load <2 x float>, ptr %i.bf, align 8, !tbaa !88
  %i.ho = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.hn, <2 x float> %i.hm)
  %i.hr = load <2 x float>, ptr %i.bg, align 8, !tbaa !88
  %i.hs = fadd nsz <2 x float> %i.hq, %i.hr
  %i.ht = load float, ptr %i.bh, align 8, !tbaa !88
  %i.hu = load float, ptr %i.bi, align 8, !tbaa !88
  %i.hv = fmul nsz float %i.hd, %i.hu
  %i.hw = tail call nsz float @llvm.fmuladd.f32(float %i.hc, float %i.ht, float %i.hv)
  %i.hx = load float, ptr %i.bj, align 8, !tbaa !88
  %i.hy = tail call nsz float @llvm.fmuladd.f32(float %i.he, float %i.hx, float %i.hw)
  %i.hz = load float, ptr %i.bk, align 8, !tbaa !88
  %i.ia = fadd nsz float %i.hz, %i.hy
  store <2 x float> %i.hs, ptr %i.af, align 4, !tbaa !88
  store float %i.ia, ptr %i.hb, align 4, !tbaa !88
  %i.ib = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.ic = getelementptr inbounds nuw i8, ptr %i.o, i64 92 ; 2 uses
  %i.id = load float, ptr %i.az, align 4, !tbaa !194 ; 2 uses
  %i.ie = load float, ptr %i.ib, align 4, !tbaa !195 ; 2 uses
  %i.if = load float, ptr %i.ic, align 4, !tbaa !159 ; 2 uses
  %i.ig = load <2 x float>, ptr %i.bd, align 8, !tbaa !88
  %i.ih = load <2 x float>, ptr %i.be, align 8, !tbaa !88
  %i.ii = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = fmul nsz <2 x float> %i.ij, %i.ih
  %i.il = insertelement <2 x float> poison, float %i.id, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.im, <2 x float> %i.ig, <2 x float> %i.ik)
  %i.io = load <2 x float>, ptr %i.bf, align 8, !tbaa !88
  %i.ip = insertelement <2 x float> poison, float %i.if, i64 0
  %i.iq = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ir = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iq, <2 x float> %i.io, <2 x float> %i.in)
  %i.is = load <2 x float>, ptr %i.bg, align 8, !tbaa !88
  %i.it = fadd nsz <2 x float> %i.ir, %i.is
  %i.iu = load float, ptr %i.bh, align 8, !tbaa !88
  %i.iv = load float, ptr %i.bi, align 8, !tbaa !88
  %i.iw = fmul nsz float %i.ie, %i.iv
  %i.ix = tail call nsz float @llvm.fmuladd.f32(float %i.id, float %i.iu, float %i.iw)
  %i.iy = load float, ptr %i.bj, align 8, !tbaa !88
  %i.iz = tail call nsz float @llvm.fmuladd.f32(float %i.if, float %i.iy, float %i.ix)
  %i.ja = load float, ptr %i.bk, align 8, !tbaa !88
  %i.jb = fadd nsz float %i.ja, %i.iz
  store <2 x float> %i.it, ptr %i.az, align 4, !tbaa !88
  store float %i.jb, ptr %i.ic, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.g = load float, ptr %i.f, align 4, !tbaa !159
  %i.h = fmul nsz float %i.g, f0x3C8EFA35
  %i.i = fpext nsz float %i.h to double
  %sincos39.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.i) ; 2 uses
  %sin40.i.i = extractvalue { double, double } %sincos39.i.i, 0 ; 4 uses
  %cos41.i.i = extractvalue { double, double } %sincos39.i.i, 1 ; 5 uses
  %i.j = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.k = insertelement <2 x double> %i.j, double %sin40.i.i, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = fneg nsz double %sin40.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = fneg nsz double %cos41.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load <2 x float>, ptr %i.e, align 4, !tbaa !88
  %i.t = fmul nsz <2 x float> %i.s, splat (float f0x3C8EFA35)
  %i.u = fpext nsz <2 x float> %i.t to <2 x double>
  %i.v = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.u) ; 2 uses
  %i.w = extractvalue { <2 x double>, <2 x double> } %i.v, 0 ; 5 uses
  %i.x = extractvalue { <2 x double>, <2 x double> } %i.v, 1 ; 5 uses
  %i.y = extractelement <2 x double> %i.x, i64 0  ; 2 uses
  %i.z = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aa = fmul nsz <2 x double> %i.z, %i.k
  %i.ab = fptrunc nsz <2 x double> %i.aa to <2 x float> ; 5 uses
  store <2 x float> %i.ab, ptr %0, align 4, !tbaa !88
  %i.ac = extractelement <2 x double> %i.w, i64 1
  %i.ad = fptrunc nsz double %i.ac to float
  %i.ae = fneg nsz float %i.ad                    ; 4 uses
  store float %i.ae, ptr %i.l, align 4, !tbaa !88
  %i.af = shufflevector <2 x double> %i.w, <2 x double> %i.x, <2 x i32> <i32 1, i32 2>
  %i.ag = fmul nsz <2 x double> %i.af, %i.w       ; 3 uses
  %i.ah = fmul nsz double %i.y, %i.m
  %i.ai = extractelement <2 x double> %i.ag, i64 0
  %i.aj = tail call nsz double @llvm.fmuladd.f64(double %i.ai, double %cos41.i.i, double %i.ah)
  %i.ak = fptrunc nsz double %i.aj to float       ; 3 uses
  store float %i.ak, ptr %i.n, align 4, !tbaa !88
  %i.al = fmul nsz double %i.y, %cos41.i.i
  %i.am = extractelement <2 x double> %i.w, i64 0 ; 2 uses
  %i.an = fmul nsz double %i.am, %sin40.i.i
  %i.ao = extractelement <2 x double> %i.ag, i64 1
  %i.ap = tail call nsz double @llvm.fmuladd.f64(double %i.ao, double %cos41.i.i, double %i.an)
  %i.aq = fptrunc nsz double %i.ap to float       ; 3 uses
  store float %i.aq, ptr %i.p, align 4, !tbaa !88
  %i.ar = fmul nsz double %i.am, %i.q
  %i.as = insertelement <2 x double> poison, double %sin40.i.i, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = insertelement <2 x double> poison, double %i.al, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.ar, i64 1
  %i.aw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.at, <2 x double> %i.av) ; 2 uses
  %i.ax = shufflevector <2 x double> %i.x, <2 x double> %i.w, <2 x i32> <i32 1, i32 2>
  %i.ay = fmul nsz <2 x double> %i.x, %i.ax       ; 2 uses
  %i.az = shufflevector <2 x double> %i.aw, <2 x double> %i.ay, <2 x i32> <i32 0, i32 3>
  %i.ba = fptrunc nsz <2 x double> %i.az to <2 x float> ; 4 uses
  store <2 x float> %i.ba, ptr %i.d, align 4, !tbaa !88
  %i.bb = shufflevector <2 x double> %i.aw, <2 x double> %i.ay, <2 x i32> <i32 1, i32 2>
  %i.bc = fptrunc nsz <2 x double> %i.bb to <2 x float> ; 4 uses
  store <2 x float> %i.bc, ptr %i.r, align 4, !tbaa !88
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bf = load <2 x float>, ptr %i.bd, align 8, !tbaa !88 ; 5 uses
  store <2 x float> %i.bf, ptr %i.be, align 4, !tbaa !88
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !159 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store float %i.bh, ptr %i.bi, align 4, !tbaa !88
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !194 ; 4 uses
  %i.bl = fcmp nsz oeq float %i.bk, 1.000000e+00
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !195 ; 2 uses
  %i.bo = fcmp nsz oeq float %i.bn, 1.000000e+00
  %or.cond = select i1 %i.bl, i1 %i.bo, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !159
  %i.br = fcmp nsz une float %i.bq, 1.000000e+00
  br i1 %i.br, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.b

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.a, %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.bs = phi float [ 1.000000e+00, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ %i.bn, %bb.a ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !159 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.4788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bv = fmul nsz float %i.ak, 0.000000e+00      ; 2 uses
  %i.bw = fmul nsz <2 x float> %i.ba, zeroinitializer ; 3 uses
  %i.bx = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ca = insertelement <2 x float> %i.bz, float %i.bv, i64 0
  %i.cb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.by, <2 x float> %i.ca)
  %i.cc = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cd = insertelement <2 x float> %i.cc, float %i.aq, i64 0 ; 3 uses
  %i.ce = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> zeroinitializer, <2 x float> %i.cb)
  %i.cf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> zeroinitializer, <2 x float> %i.ce)
  store <2 x float> %i.cf, ptr %0, align 4, !tbaa !88
  %i.cg = extractelement <2 x float> %i.bw, i64 1
  %i.ch = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.bk, float %i.cg)
  %i.ci = extractelement <2 x float> %i.bc, i64 1 ; 3 uses
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float 0.000000e+00, float %i.ch)
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.cj)
  store float %i.ck, ptr %i.l, align 4, !tbaa !88
  %i.cl = fmul nsz float %i.bk, 0.000000e+00
  store float %i.cl, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !88
  %i.cm = extractelement <2 x float> %i.ab, i64 0
  %i.cn = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cq = insertelement <2 x float> %i.cp, float %i.ak, i64 0
  %i.cr = fmul nsz <2 x float> %i.co, %i.cq
  %i.cs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> zeroinitializer, <2 x float> %i.cr)
  %i.ct = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> zeroinitializer, <2 x float> %i.cs)
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> zeroinitializer, <2 x float> %i.ct)
  store <2 x float> %i.cu, ptr %i.n, align 4, !tbaa !88
  %i.cv = extractelement <2 x float> %i.ba, i64 1
  %i.cw = fmul nsz float %i.bs, %i.cv
  %i.cx = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.cw)
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float 0.000000e+00, float %i.cx)
  %i.cz = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.cy)
  store float %i.cz, ptr %i.o, align 4, !tbaa !88
  %i.da = fmul nsz float %i.bs, 0.000000e+00
  store float %i.da, ptr %.sroa.3172.0..sroa_idx, align 4, !tbaa !88
  %i.db = tail call nsz float @llvm.fmuladd.f32(float %i.cm, float 0.000000e+00, float %i.bv) ; 2 uses
  %i.dc = fmul nsz float %i.bu, 0.000000e+00
  store float %i.dc, ptr %.sroa.4788.0..sroa_idx, align 4, !tbaa !88
  %i.dd = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float 0.000000e+00, float %i.db)
  %i.de = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.df = insertelement <2 x float> %i.de, float %i.ae, i64 1
  %i.dg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> zeroinitializer, <2 x float> %i.bw) ; 3 uses
  %i.dh = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dk = insertelement <2 x float> %i.dj, float %i.db, i64 0
  %i.dl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.di, <2 x float> %i.dk)
  %i.dm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> zeroinitializer, <2 x float> %i.dl)
  store <2 x float> %i.dm, ptr %i.p, align 4, !tbaa !88
  %i.dn = extractelement <2 x float> %i.dg, i64 1
  %i.do = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float %i.bu, float %i.dn)
  %i.dp = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.do)
  store float %i.dp, ptr %i.c, align 4, !tbaa !88
  %i.dq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> zeroinitializer, <2 x float> %i.dg) ; 2 uses
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ds = insertelement <2 x float> %i.dr, float %i.dd, i64 0
  %i.dt = fadd nsz <2 x float> %i.bf, %i.ds
  store <2 x float> %i.dt, ptr %i.be, align 4, !tbaa !88
  %i.du = extractelement <2 x float> %i.dq, i64 1
  %i.dv = fadd nsz float %i.du, %i.bh
  store float %i.dv, ptr %i.bi, align 4, !tbaa !88
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !88
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !117, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !117, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !112  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(218) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(218) %0, i1 noundef zeroext %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.a, ptr %i.b, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5scene10ISceneNode5getIDEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !114
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode5setIDEi(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !144
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !144
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !287
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5scene10ISceneNode5cloneEPS0_PNS_13ISceneManagerE
define linkonce_odr dso_local noundef ptr @_ZN5scene10ISceneNode5cloneEPS0_PNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5scene10ISceneNode15getSceneManagerEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N5scene10ISceneNodeD1Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N5scene10ISceneNodeD0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(24) ptr @_ZNK18WieldMeshSceneNode14getBoundingBoxEv(ptr noundef nonnull align 8 dereferenceable(352) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  ret ptr %i.a
}

; Function Attrs: nofree nounwind uwtable
define internal void @__cxx_global_var_init() #14 section ".text.startup" comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev, ptr nonnull @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr nonnull @__dso_handle) #27 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !612    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit

_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #27, !inline_history !610
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !87, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !87
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !60
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #29
  br label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull ptr @_ZL19createExtrusionMeshii(i32 noundef %0, i32 noundef %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [8 x %"struct.video::S3DVertex"], align 16 ; 43 uses
  %i.a = alloca [12 x i16], align 16              ; 4 uses
  %3 = alloca [8 x %"struct.video::S3DVertex"], align 16 ; 59 uses
  %i.b = alloca [12 x i16], align 16              ; 4 uses
  %4 = alloca [8 x %"struct.video::S3DVertex"], align 16 ; 59 uses
  %i.c = alloca [12 x i16], align 16              ; 4 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #26 ; 11 uses
  invoke void @_ZN5scene11CMeshBufferIN5video9S3DVertexEEC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.d)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store <4 x float> <float -5.000000e-01, float 5.000000e-01, float -5.000000e-01, float 0.000000e+00>, ptr %2, align 16, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %i.e, align 16, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 -1, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 28
  store <2 x float> zeroinitializer, ptr %i.g, align 4, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i16 0, ptr %i.h, align 4, !tbaa !617
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float -5.000000e-01, float 0.000000e+00>, ptr %i.i, align 8, !tbaa !88
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %i.j, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 -1, ptr %i.k, align 16, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 68
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.l, align 4, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i16 0, ptr %i.m, align 4, !tbaa !617
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 80
  store <4 x float> <float 5.000000e-01, float -5.000000e-01, float -5.000000e-01, float 0.000000e+00>, ptr %i.n, align 16, !tbaa !88
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 96
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %i.o, align 16, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 -1, ptr %i.p, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 108
  store <2 x float> splat (float 1.000000e+00), ptr %i.q, align 4, !tbaa !88
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 116
  store i16 0, ptr %i.r, align 4, !tbaa !617
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 120
  store <4 x float> <float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float 0.000000e+00>, ptr %i.s, align 8, !tbaa !88
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 136
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %i.t, align 8, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i32 -1, ptr %i.u, align 16, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 148
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.v, align 4, !tbaa !88
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 156
  store i16 0, ptr %i.w, align 4, !tbaa !617
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 160
  store <4 x float> <float -5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00>, ptr %i.x, align 16, !tbaa !88
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 176
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.y, align 16, !tbaa !88
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i32 -1, ptr %i.z, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 188
  store <2 x float> zeroinitializer, ptr %i.aa, align 4, !tbaa !88
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 196
  store i16 0, ptr %i.ab, align 4, !tbaa !617
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 200
  store <4 x float> <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 0.000000e+00>, ptr %i.ac, align 8, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 216
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.ad, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 224
  store i32 -1, ptr %i.ae, align 16, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 228
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.af, align 4, !tbaa !88
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 236
  store i16 0, ptr %i.ag, align 4, !tbaa !617
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 240
  store <4 x float> <float 5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 0.000000e+00>, ptr %i.ah, align 16, !tbaa !88
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 256
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.ai, align 16, !tbaa !88
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 264
  store i32 -1, ptr %i.aj, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 268
  store <2 x float> splat (float 1.000000e+00), ptr %i.ak, align 4, !tbaa !88
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 276
  store i16 0, ptr %i.al, align 4, !tbaa !617
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 280
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00>, ptr %i.am, align 8, !tbaa !88
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 296
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.an, align 8, !tbaa !88
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 304
  store i32 -1, ptr %i.ao, align 16, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 308
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ap, align 4, !tbaa !88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 316
  store i16 0, ptr %i.aq, align 4, !tbaa !617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZL19createExtrusionMeshii.indices.13, i64 24, i1 false)
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %2, i32 noundef 8, ptr noundef nonnull %i.a, i32 noundef 12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.au = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.av = insertelement <2 x i32> %i.au, i32 %1, i64 1
  %i.aw = sitofp nsz <2 x i32> %i.av to <2 x float>
  %i.ax = fdiv nsz <2 x float> splat (float 1.000000e+00), %i.aw ; 2 uses
  %i.ay = icmp sgt i32 %0, 0
  br i1 %i.ay, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.az = extractelement <2 x float> %i.ax, i64 0 ; 3 uses
  %i.ba = fpext nsz float %i.az to double
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 140
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 148
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 156
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 164
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 180
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 188
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 196
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 204
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 220
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 228
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 236
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 244
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 260
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 268
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 276
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 280
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 284
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 300
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 308
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 316
  %i.de = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %bb.b
  %i.dg = icmp sgt i32 %1, 0
  br i1 %i.dg, label %.lr.ph124, label %._crit_edge

.lr.ph124:                                        ; preds = %.preheader
  %i.dh = extractelement <2 x float> %i.ax, i64 1 ; 3 uses
  %i.di = fpext nsz float %i.dh to double
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 116
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 148
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 156
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 164
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 188
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 196
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 204
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 236
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 244
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 268
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 276
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 284
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 304
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 308
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 312
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 316
  %i.fm = insertelement <2 x double> poison, double %i.di, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.fo = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 200) #29
  resume { ptr, i32 } %i.fo

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.094122 = phi i32 [ 0, %.lr.ph ], [ %i.gf, %bb.d ] ; 3 uses
  %i.fp = uitofp nsz nneg i32 %.094122 to float
  %i.fq = fmul nsz float %i.az, %i.fp
  %i.fr = fadd nsz float %i.fq, -5.000000e-01     ; 5 uses
  %i.fs = fadd nsz float %i.az, %i.fr             ; 4 uses
  %i.ft = uitofp nsz nneg i32 %.094122 to double
  %i.fu = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fw = fadd nnan nsz <2 x double> %i.fv, <double 1.000000e-01, double 9.000000e-01>
  %i.fx = fmul nsz <2 x double> %i.fw, %i.df      ; 2 uses
  %i.fy = extractelement <2 x double> %i.fx, i64 0
  %i.fz = fptrunc nsz double %i.fy to float       ; 4 uses
  %i.ga = extractelement <2 x double> %i.fx, i64 1
  %i.gb = fptrunc nsz double %i.ga to float       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store float %i.fr, ptr %3, align 16, !tbaa !194
  store <4 x float> <float -5.000000e-01, float -5.000000e-01, float -1.000000e+00, float 0.000000e+00>, ptr %i.bb, align 4, !tbaa !88
  store float 0.000000e+00, ptr %i.bc, align 4, !tbaa !159
  store i32 -1, ptr %i.bd, align 8, !tbaa !18
  store float %i.fz, ptr %i.be, align 4, !tbaa !618
  store float 1.000000e+00, ptr %i.bf, align 16, !tbaa !619
  store i16 0, ptr %i.bg, align 4, !tbaa !617
  store float %i.fr, ptr %i.bh, align 8, !tbaa !194
  store <4 x float> <float -5.000000e-01, float 5.000000e-01, float -1.000000e+00, float 0.000000e+00>, ptr %i.bi, align 4, !tbaa !88
  store float 0.000000e+00, ptr %i.bj, align 4, !tbaa !159
  store i32 -1, ptr %i.bk, align 16, !tbaa !18
  store float %i.gb, ptr %i.bl, align 4, !tbaa !618
  store float 1.000000e+00, ptr %i.bm, align 8, !tbaa !619
  store i16 0, ptr %i.bn, align 4, !tbaa !617
  store float %i.fr, ptr %i.bo, align 16, !tbaa !194
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float -1.000000e+00, float 0.000000e+00>, ptr %i.bp, align 4, !tbaa !88
  store float 0.000000e+00, ptr %i.bq, align 4, !tbaa !159
  store i32 -1, ptr %i.br, align 8, !tbaa !18
  store float %i.gb, ptr %i.bs, align 4, !tbaa !618
  store float 0.000000e+00, ptr %i.bt, align 16, !tbaa !619
  store i16 0, ptr %i.bu, align 4, !tbaa !617
  store float %i.fr, ptr %i.bv, align 8, !tbaa !194
  store <4 x float> <float 5.000000e-01, float -5.000000e-01, float -1.000000e+00, float 0.000000e+00>, ptr %i.bw, align 4, !tbaa !88
  store float 0.000000e+00, ptr %i.bx, align 4, !tbaa !159
  store i32 -1, ptr %i.by, align 16, !tbaa !18
  store float %i.fz, ptr %i.bz, align 4, !tbaa !618
  store float 0.000000e+00, ptr %i.ca, align 8, !tbaa !619
  store i16 0, ptr %i.cb, align 4, !tbaa !617
  store float %i.fs, ptr %i.cc, align 16, !tbaa !194
  store <4 x float> <float -5.000000e-01, float -5.000000e-01, float 1.000000e+00, float 0.000000e+00>, ptr %i.cd, align 4, !tbaa !88
  store float 0.000000e+00, ptr %i.ce, align 4, !tbaa !159
  store i32 -1, ptr %i.cf, align 8, !tbaa !18
  store float %i.fz, ptr %i.cg, align 4, !tbaa !618
  store float 1.000000e+00, ptr %i.ch, align 16, !tbaa !619
  store i16 0, ptr %i.ci, align 4, !tbaa !617
  store float %i.fs, ptr %i.cj, align 8, !tbaa !194
  store <4 x float> <float 5.000000e-01, float -5.000000e-01, float 1.000000e+00, float 0.000000e+00>, ptr %i.ck, align 4, !tbaa !88
  store float 0.000000e+00, ptr %i.cl, align 4, !tbaa !159
  store i32 -1, ptr %i.cm, align 16, !tbaa !18
  store float %i.fz, ptr %i.cn, align 4, !tbaa !618
  store float 0.000000e+00, ptr %i.co, align 8, !tbaa !619
  store i16 0, ptr %i.cp, align 4, !tbaa !617
  store float %i.fs, ptr %i.cq, align 16, !tbaa !194
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 0.000000e+00>, ptr %i.cr, align 4, !tbaa !88
  store float 0.000000e+00, ptr %i.cs, align 4, !tbaa !159
  store i32 -1, ptr %i.ct, align 8, !tbaa !18
end_hunk_1
