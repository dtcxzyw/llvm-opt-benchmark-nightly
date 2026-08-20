inline.NumInlined: 74
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 105
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 115
begin_hunk_0_@lanczos_kernel:bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 38
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 46
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 14
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 50
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 54
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 22
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 62
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 30
  %i.gj = insertelement <4 x float> poison, float %i.m, i64 0
  %i.gk = insertelement <4 x float> %i.gj, float %i.aa, i64 1
  %i.gl = insertelement <4 x float> %i.gk, float %i.ao, i64 2
  %i.gm = insertelement <4 x float> %i.gl, float %.sink30.i, i64 3 ; 2 uses
  %i.gn = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.go = shufflevector <4 x float> %i.gm, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gp = shufflevector <4 x float> %i.gm, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gq = shufflevector <8 x float> %i.go, <8 x float> %i.gp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gr = shufflevector <4 x float> %i.gn, <4 x float> poison, <16 x i32> zeroinitializer
  %i.gs = fdiv nsz <16 x float> %i.gq, %i.gr
  %i.gt = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.gu = insertelement <4 x float> %i.gt, float %i.cc, i64 1
  %i.gv = insertelement <4 x float> %i.gu, float %i.cq, i64 2
  %i.gw = insertelement <4 x float> %i.gv, float %.sink30.i23, i64 3
  %i.gx = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gz = fdiv nsz <4 x float> %i.gw, %i.gy
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.hb = fmul nsz <16 x float> %i.gs, %i.ha
  %i.hc = fmul nsz <16 x float> %i.hb, splat (float 1.638500e+04)
  %i.hd = tail call <16 x i64> @llvm.lrint.v16i64.v16f32(<16 x float> %i.hc)
  %i.he = trunc <16 x i64> %i.hd to <16 x i16>    ; 16 uses
  %i.hf = extractelement <16 x i16> %i.he, i64 0
  store i16 %i.hf, ptr %5, align 2, !tbaa !17
  %i.hg = load i16, ptr %i.dn, align 2, !tbaa !17
  store i16 %i.hg, ptr %i.do, align 2, !tbaa !17
  %i.hh = load i16, ptr %i.dp, align 2, !tbaa !17
  store i16 %i.hh, ptr %i.dq, align 2, !tbaa !17
  %i.hi = extractelement <16 x i16> %i.he, i64 1
  store i16 %i.hi, ptr %i.dr, align 2, !tbaa !17
  %i.hj = load i16, ptr %i.ds, align 2, !tbaa !17
  store i16 %i.hj, ptr %i.dt, align 2, !tbaa !17
  %i.hk = load i16, ptr %i.du, align 2, !tbaa !17
  store i16 %i.hk, ptr %i.dv, align 2, !tbaa !17
  %i.hl = extractelement <16 x i16> %i.he, i64 2
  store i16 %i.hl, ptr %i.dw, align 2, !tbaa !17
  %i.hm = load i16, ptr %i.dx, align 2, !tbaa !17
  store i16 %i.hm, ptr %i.dy, align 2, !tbaa !17
  %i.hn = load i16, ptr %i.dz, align 2, !tbaa !17
  store i16 %i.hn, ptr %i.ea, align 2, !tbaa !17
  %i.ho = extractelement <16 x i16> %i.he, i64 3
  store i16 %i.ho, ptr %i.eb, align 2, !tbaa !17
  %i.hp = load i16, ptr %i.ec, align 2, !tbaa !17
  store i16 %i.hp, ptr %i.ee, align 2, !tbaa !17
  %i.hq = load i16, ptr %i.ed, align 2, !tbaa !17
  store i16 %i.hq, ptr %i.ef, align 2, !tbaa !17
  %i.hr = extractelement <16 x i16> %i.he, i64 4
  store i16 %i.hr, ptr %i.eg, align 2, !tbaa !17
  %i.hs = load i16, ptr %i.eh, align 2, !tbaa !17
  store i16 %i.hs, ptr %i.ei, align 2, !tbaa !17
  %i.ht = load i16, ptr %i.ej, align 2, !tbaa !17
  store i16 %i.ht, ptr %i.ek, align 2, !tbaa !17
  %i.hu = extractelement <16 x i16> %i.he, i64 5
  store i16 %i.hu, ptr %i.el, align 2, !tbaa !17
  %i.hv = load i16, ptr %i.em, align 2, !tbaa !17
  store i16 %i.hv, ptr %i.en, align 2, !tbaa !17
  %i.hw = load i16, ptr %i.eo, align 2, !tbaa !17
  store i16 %i.hw, ptr %i.ep, align 2, !tbaa !17
  %i.hx = extractelement <16 x i16> %i.he, i64 6
  store i16 %i.hx, ptr %i.eq, align 2, !tbaa !17
  %i.hy = load i16, ptr %i.er, align 2, !tbaa !17
  store i16 %i.hy, ptr %i.es, align 2, !tbaa !17
  %i.hz = load i16, ptr %i.et, align 2, !tbaa !17
  store i16 %i.hz, ptr %i.eu, align 2, !tbaa !17
  %i.ia = extractelement <16 x i16> %i.he, i64 7
  store i16 %i.ia, ptr %i.ev, align 2, !tbaa !17
  %i.ib = load i16, ptr %i.ew, align 2, !tbaa !17
  store i16 %i.ib, ptr %i.ey, align 2, !tbaa !17
  %i.ic = load i16, ptr %i.ex, align 2, !tbaa !17
  store i16 %i.ic, ptr %i.ez, align 2, !tbaa !17
  %i.id = extractelement <16 x i16> %i.he, i64 8
  store i16 %i.id, ptr %i.fa, align 2, !tbaa !17
  %i.ie = load i16, ptr %i.fb, align 2, !tbaa !17
  store i16 %i.ie, ptr %i.fc, align 2, !tbaa !17
  %i.if = load i16, ptr %i.fd, align 2, !tbaa !17
  store i16 %i.if, ptr %i.fe, align 2, !tbaa !17
  %i.ig = extractelement <16 x i16> %i.he, i64 9
  store i16 %i.ig, ptr %i.ff, align 2, !tbaa !17
  %i.ih = load i16, ptr %i.fg, align 2, !tbaa !17
  store i16 %i.ih, ptr %i.fh, align 2, !tbaa !17
  %i.ii = load i16, ptr %i.fi, align 2, !tbaa !17
  store i16 %i.ii, ptr %i.fj, align 2, !tbaa !17
  %i.ij = extractelement <16 x i16> %i.he, i64 10
  store i16 %i.ij, ptr %i.fk, align 2, !tbaa !17
  %i.ik = load i16, ptr %i.fl, align 2, !tbaa !17
  store i16 %i.ik, ptr %i.fm, align 2, !tbaa !17
  %i.il = load i16, ptr %i.fn, align 2, !tbaa !17
  store i16 %i.il, ptr %i.fo, align 2, !tbaa !17
  %i.im = extractelement <16 x i16> %i.he, i64 11
  store i16 %i.im, ptr %i.fp, align 2, !tbaa !17
  %i.in = load i16, ptr %i.fq, align 2, !tbaa !17
  store i16 %i.in, ptr %i.fs, align 2, !tbaa !17
  %i.io = load i16, ptr %i.fr, align 2, !tbaa !17
  store i16 %i.io, ptr %i.ft, align 2, !tbaa !17
  %i.ip = extractelement <16 x i16> %i.he, i64 12
  store i16 %i.ip, ptr %i.fu, align 2, !tbaa !17
  %i.iq = load i16, ptr %i.fv, align 2, !tbaa !17
  store i16 %i.iq, ptr %i.fw, align 2, !tbaa !17
  %i.ir = load i16, ptr %i.fx, align 2, !tbaa !17
  store i16 %i.ir, ptr %i.fy, align 2, !tbaa !17
  %i.is = extractelement <16 x i16> %i.he, i64 13
  store i16 %i.is, ptr %i.fz, align 2, !tbaa !17
  %i.it = load i16, ptr %i.ga, align 2, !tbaa !17
  store i16 %i.it, ptr %i.gb, align 2, !tbaa !17
  %i.iu = load i16, ptr %i.gc, align 2, !tbaa !17
  store i16 %i.iu, ptr %i.gd, align 2, !tbaa !17
  %i.iv = extractelement <16 x i16> %i.he, i64 14
  store i16 %i.iv, ptr %i.ge, align 2, !tbaa !17
  %i.iw = load i16, ptr %i.gf, align 2, !tbaa !17
  store i16 %i.iw, ptr %i.gg, align 2, !tbaa !17
  %i.ix = load i16, ptr %i.gh, align 2, !tbaa !17
  store i16 %i.ix, ptr %i.gi, align 2, !tbaa !17
  %i.iy = getelementptr inbounds nuw i8, ptr %5, i64 30
  %i.iz = extractelement <16 x i16> %i.he, i64 15
  store i16 %i.iz, ptr %i.iy, align 2, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @spline16_kernel(float noundef %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %5) #0 {
.preheader:
  %i.a = fadd nsz float %0, -1.800000e+00
  %i.b = fsub nsz float 1.200000e+00, %0
  %i.c = insertelement <4 x float> poison, float %0, i64 0
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> zeroinitializer
  %i.e = insertelement <4 x float> <float f0xBEAAAAAB, float poison, float poison, float f0x3EAAAAAB>, float %i.a, i64 1
  %i.f = insertelement <4 x float> %i.e, float %i.b, i64 2
  %i.g = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.d, <4 x float> %i.f, <4 x float> <float 8.000000e-01, float -2.000000e-01, float 8.000000e-01, float -2.000000e-01>) ; 2 uses
  %i.h = fadd nsz float %1, -1.800000e+00
  %i.i = fsub nsz float 1.200000e+00, %1
  %i.j = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.k = insertelement <2 x float> %i.j, float %1, i64 1
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.m = insertelement <4 x float> <float poison, float f0xBEAAAAAB, float poison, float poison>, float %0, i64 0
  %i.n = insertelement <4 x float> %i.m, float %i.h, i64 2
  %i.o = insertelement <4 x float> %i.n, float %i.i, i64 3
  %i.p = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.l, <4 x float> %i.o, <4 x float> <float f0xBE088889, float 8.000000e-01, float -2.000000e-01, float 8.000000e-01>) ; 4 uses
  %i.q = extractelement <4 x float> %i.p, i64 1
  %i.r = tail call nsz float @llvm.fmuladd.f32(float %i.q, float %1, float f0xBEEEEEEF)
  %i.s = fmul nsz float %1, %i.r
  %i.t = extractelement <4 x float> %i.p, i64 2
  %i.u = tail call nsz float @llvm.fmuladd.f32(float %i.t, float %1, float 1.000000e+00) ; 4 uses
  %i.v = extractelement <4 x float> %i.p, i64 3
  %i.w = fmul nsz float %1, %i.v                  ; 4 uses
  %i.x = tail call nsz float @llvm.fmuladd.f32(float %1, float f0x3EAAAAAB, float -2.000000e-01)
  %i.y = tail call nsz float @llvm.fmuladd.f32(float %i.x, float %1, float f0xBE088889)
  %i.z = fmul nsz float %1, %i.y                  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = load i16, ptr %2, align 2, !tbaa !17
  store i16 %i.ab, ptr %3, align 2, !tbaa !17
  %i.ac = load i16, ptr %i.aa, align 2, !tbaa !17
  store i16 %i.ac, ptr %4, align 2, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 38
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 6
  %6 = shufflevector <4 x float> %i.g, <4 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %7 = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, float %0, i64 0 ; 2 uses
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %9 = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %6, <4 x float> %8, <4 x float> <float f0xBEEEEEEF, float 1.000000e+00, float -0.000000e+00, float -0.000000e+00>) ; 2 uses
  %10 = shufflevector <4 x float> %7, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 5, i32 0, i32 0>
  %i.ar = fmul nsz <4 x float> %10, %9            ; 4 uses
  %i.as = insertelement <4 x float> poison, float %i.s, i64 0
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = fmul nsz <4 x float> %i.ar, %i.at       ; 4 uses
  %i.av = extractelement <4 x float> %i.au, i64 0
  %i.aw = fmul nsz float %i.av, 1.638500e+04
  %i.ax = tail call i64 @llvm.lrint.i64.f32(float %i.aw)
  %i.ay = trunc i64 %i.ax to i16
  store i16 %i.ay, ptr %5, align 2, !tbaa !17
  %i.az = load i16, ptr %i.ad, align 2, !tbaa !17
  store i16 %i.az, ptr %i.ae, align 2, !tbaa !17
  %i.ba = load i16, ptr %i.af, align 2, !tbaa !17
  store i16 %i.ba, ptr %i.ag, align 2, !tbaa !17
  %i.bb = extractelement <4 x float> %i.au, i64 1
  %i.bc = fmul nsz float %i.bb, 1.638500e+04
  %i.bd = tail call i64 @llvm.lrint.i64.f32(float %i.bc)
  %i.be = trunc i64 %i.bd to i16
  store i16 %i.be, ptr %i.ah, align 2, !tbaa !17
  %i.bf = load i16, ptr %i.ai, align 2, !tbaa !17
  store i16 %i.bf, ptr %i.aj, align 2, !tbaa !17
  %i.bg = load i16, ptr %i.ak, align 2, !tbaa !17
  store i16 %i.bg, ptr %i.al, align 2, !tbaa !17
  %i.bh = extractelement <4 x float> %i.au, i64 2
  %i.bi = fmul nsz float %i.bh, 1.638500e+04
  %i.bj = tail call i64 @llvm.lrint.i64.f32(float %i.bi)
  %i.bk = trunc i64 %i.bj to i16
  store i16 %i.bk, ptr %i.am, align 2, !tbaa !17
  %i.bl = load i16, ptr %i.an, align 2, !tbaa !17
  store i16 %i.bl, ptr %i.ao, align 2, !tbaa !17
  %i.bm = load i16, ptr %i.ap, align 2, !tbaa !17
  store i16 %i.bm, ptr %i.aq, align 2, !tbaa !17
  %i.bn = extractelement <4 x float> %i.au, i64 3
  %i.bo = fmul nsz float %i.bn, 1.638500e+04
  %i.bp = tail call i64 @llvm.lrint.i64.f32(float %i.bo)
  %i.bq = trunc i64 %i.bp to i16
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bu = load i16, ptr %i.bs, align 2, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !17
  %i.bw = load i16, ptr %i.bt, align 2, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !17
  %i.by = extractelement <4 x float> %i.ar, i64 0 ; 3 uses
  %i.bz = fmul nsz float %i.by, %i.u
  %i.ca = fmul nsz float %i.bz, 1.638500e+04
  %i.cb = tail call i64 @llvm.lrint.i64.f32(float %i.ca)
  %i.cc = trunc i64 %i.cb to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !17
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !17
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !17
  %i.ck = extractelement <4 x float> %9, i64 1    ; 3 uses
  %i.cl = fmul nsz float %i.ck, %i.u
  %i.cm = fmul nsz float %i.cl, 1.638500e+04
  %i.cn = tail call i64 @llvm.lrint.i64.f32(float %i.cm)
  %i.co = trunc i64 %i.cn to i16
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !17
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !17
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !17
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i16 %i.cu, ptr %i.cv, align 2, !tbaa !17
  %i.cw = extractelement <4 x float> %i.ar, i64 2 ; 3 uses
  %i.cx = fmul nsz float %i.cw, %i.u
  %i.cy = fmul nsz float %i.cx, 1.638500e+04
  %i.cz = tail call i64 @llvm.lrint.i64.f32(float %i.cy)
  %i.da = trunc i64 %i.cz to i16
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %i.da, ptr %i.db, align 2, !tbaa !17
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !17
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !17
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 46
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !17
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !17
  %i.di = extractelement <4 x float> %i.ar, i64 3 ; 3 uses
  %i.dj = fmul nsz float %i.di, %i.u
  %i.dk = fmul nsz float %i.dj, 1.638500e+04
  %i.dl = tail call i64 @llvm.lrint.i64.f32(float %i.dk)
  %i.dm = trunc i64 %i.dl to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !17
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dq = load i16, ptr %i.do, align 2, !tbaa !17
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i16 %i.dq, ptr %i.dr, align 2, !tbaa !17
  %i.ds = load i16, ptr %i.dp, align 2, !tbaa !17
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !17
  %i.du = fmul nsz float %i.by, %i.w
  %i.dv = fmul nsz float %i.du, 1.638500e+04
  %i.dw = tail call i64 @llvm.lrint.i64.f32(float %i.dv)
  %i.dx = trunc i64 %i.dw to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !17
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !17
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !17
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 50
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !17
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !17
  %i.ef = fmul nsz float %i.ck, %i.w
  %i.eg = fmul nsz float %i.ef, 1.638500e+04
  %i.eh = tail call i64 @llvm.lrint.i64.f32(float %i.eg)
  %i.ei = trunc i64 %i.eh to i16
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %i.ei, ptr %i.ej, align 2, !tbaa !17
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !17
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i16 %i.el, ptr %i.em, align 2, !tbaa !17
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i16 %i.eo, ptr %i.ep, align 2, !tbaa !17
  %i.eq = fmul nsz float %i.cw, %i.w
  %i.er = fmul nsz float %i.eq, 1.638500e+04
  %i.es = tail call i64 @llvm.lrint.i64.f32(float %i.er)
  %i.et = trunc i64 %i.es to i16
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %i.et, ptr %i.eu, align 2, !tbaa !17
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !17
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !17
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 54
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !17
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !17
  %i.fb = fmul nsz float %i.di, %i.w
  %i.fc = fmul nsz float %i.fb, 1.638500e+04
  %i.fd = tail call i64 @llvm.lrint.i64.f32(float %i.fc)
  %i.fe = trunc i64 %i.fd to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !17
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fi = load i16, ptr %i.fg, align 2, !tbaa !17
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !17
  %i.fk = load i16, ptr %i.fh, align 2, !tbaa !17
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !17
  %i.fm = fmul nsz float %i.by, %i.z
  %i.fn = fmul nsz float %i.fm, 1.638500e+04
  %i.fo = tail call i64 @llvm.lrint.i64.f32(float %i.fn)
  %i.fp = trunc i64 %i.fo to i16
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !17
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !17
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !17
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !17
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i16 %i.fv, ptr %i.fw, align 2, !tbaa !17
  %i.fx = fmul nsz float %i.ck, %i.z
  %i.fy = fmul nsz float %i.fx, 1.638500e+04
  %i.fz = tail call i64 @llvm.lrint.i64.f32(float %i.fy)
  %i.ga = trunc i64 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !17
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !17
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !17
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !17
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i16 %i.gg, ptr %i.gh, align 2, !tbaa !17
  %i.gi = fmul nsz float %i.cw, %i.z
  %i.gj = fmul nsz float %i.gi, 1.638500e+04
  %i.gk = tail call i64 @llvm.lrint.i64.f32(float %i.gj)
  %i.gl = trunc i64 %i.gk to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !17
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !17
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !17
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 62
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !17
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 30
  store i16 %i.gr, ptr %i.gs, align 2, !tbaa !17
  %i.gt = fmul nsz float %i.di, %i.z
  %i.gu = fmul nsz float %i.gt, 1.638500e+04
  %i.gv = tail call i64 @llvm.lrint.i64.f32(float %i.gu)
  %i.gw = trunc i64 %i.gv to i16
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %i.gw, ptr %i.gx, align 2, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @gaussian_kernel(float noundef %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %5) #0 {
bb.a:
  %i.a = fadd nsz float %0, 1.000000e+00          ; 5 uses
  %i.b = fcmp nsz oeq float %i.a, 0.000000e+00
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fmul nsz float %i.a, -2.000000e+00
  %i.d = fmul nsz float %i.a, %i.c
  %i.e = tail call nsz float @llvm.exp.f32(float %i.d)
  %i.f = fneg nsz float %i.a
  %i.g = fmul nsz float %i.a, %i.f
  %i.h = fmul nsz float %i.g, 5.000000e-01
  %i.i = tail call nsz float @llvm.exp.f32(float %i.h)
  %i.j = fmul nsz float %i.e, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi float [ %i.j, %bb.b ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %i.l = fcmp nsz oeq float %0, 0.000000e+00
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = fmul nsz float %0, -2.000000e+00
  %i.n = fmul nsz float %0, %i.m
  %i.o = tail call nsz float @llvm.exp.f32(float %i.n)
  %i.p = fneg nsz float %0
  %i.q = fmul nsz float %0, %i.p
  %i.r = fmul nsz float %i.q, 5.000000e-01
  %i.s = tail call nsz float @llvm.exp.f32(float %i.r)
  %i.t = fmul nsz float %i.o, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = phi float [ %i.t, %bb.d ], [ 1.000000e+00, %bb.c ] ; 2 uses
  %i.v = fadd nsz float %0, -1.000000e+00         ; 5 uses
  %i.w = fcmp nsz oeq float %i.v, 0.000000e+00
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = fmul nsz float %i.v, -2.000000e+00
  %i.y = fmul nsz float %i.v, %i.x
  %i.z = tail call nsz float @llvm.exp.f32(float %i.y)
  %i.aa = fneg nsz float %i.v
  %i.ab = fmul nsz float %i.v, %i.aa
  %i.ac = fmul nsz float %i.ab, 5.000000e-01
  %i.ad = tail call nsz float @llvm.exp.f32(float %i.ac)
  %i.ae = fmul nsz float %i.z, %i.ad
end_hunk_0
begin_hunk_1_@process_cube_coordinates:bb.a

bb.ao:                                            ; preds = %bb.aj
  store float %.1, ptr %4, align 4, !tbaa !37
  br label %bb.as

bb.ap:                                            ; preds = %bb.aj
  %i.al = fneg nsz float %.1
  store float %i.al, ptr %4, align 4, !tbaa !37
  %i.am = fneg nsz float %i.ag
  br label %bb.as

bb.aq:                                            ; preds = %bb.aj
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1382) #17
  tail call void @abort() #18
  unreachable

bb.ar:                                            ; preds = %bb.ai
  store float %.1, ptr %4, align 4, !tbaa !37
  br label %bb.as

bb.as:                                            ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.ar, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.g
  %.0122.sink = phi float [ %.0122, %bb.o ], [ %.0122, %bb.n ], [ %i.q, %bb.m ], [ %i.r, %bb.l ], [ %.0122, %bb.k ], [ %.0122, %bb.j ], [ %i.ae, %bb.ag ], [ %i.y, %bb.af ], [ %i.y, %bb.ae ], [ %i.ac, %bb.ad ], [ %.1, %bb.ac ], [ %i.z, %bb.ab ], [ %.1, %bb.ak ], [ %i.ai, %bb.al ], [ %i.ag, %bb.am ], [ %i.ak, %bb.an ], [ %i.ag, %bb.ao ], [ %i.am, %bb.ap ], [ %.0122, %bb.ar ], [ %.0122, %bb.s ], [ %.0122, %bb.t ], [ %i.u, %bb.u ], [ %i.w, %bb.v ], [ %.0122, %bb.w ], [ %.0122, %bb.x ], [ %.0122, %bb.g ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.l ], [ 5, %bb.k ], [ 4, %bb.j ], [ 2, %bb.ag ], [ 2, %bb.af ], [ 4, %bb.ae ], [ 5, %bb.ad ], [ 2, %bb.ac ], [ 2, %bb.ab ], [ 3, %bb.ak ], [ 3, %bb.al ], [ 4, %bb.am ], [ 5, %bb.an ], [ 3, %bb.ao ], [ 3, %bb.ap ], [ %3, %bb.ar ], [ 5, %bb.s ], [ 4, %bb.t ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %bb.w ], [ 1, %bb.x ], [ %3, %bb.g ]
  store float %.0122.sink, ptr %5, align 4, !tbaa !37
  %i.an = sext i32 %.0 to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !76 ; 2 uses
  store i32 %i.ap, ptr %6, align 4, !tbaa !76
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !76
  switch i32 %i.as, label %bb.aw [
    i32 0, label %rotate_cube_face.exit
    i32 1, label %bb.at
    i32 2, label %bb.au
    i32 3, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  %i.at = load float, ptr %4, align 4, !tbaa !37
  %i.au = fneg nsz float %.0122.sink
  store float %i.au, ptr %4, align 4, !tbaa !37
  br label %.sink.split.i73

bb.au:                                            ; preds = %bb.as
  %i.av = load float, ptr %4, align 4, !tbaa !37
  %i.aw = fneg nsz float %i.av
  store float %i.aw, ptr %4, align 4, !tbaa !37
  %i.ax = load float, ptr %5, align 4, !tbaa !37
  %i.ay = fneg nsz float %i.ax
  br label %.sink.split.i73

bb.av:                                            ; preds = %bb.as
  %i.az = load float, ptr %4, align 4, !tbaa !37
  %i.ba = fneg nsz float %i.az
  store float %.0122.sink, ptr %4, align 4, !tbaa !37
  br label %.sink.split.i73

bb.aw:                                            ; preds = %bb.as
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1008) #17
  tail call void @abort() #18
  unreachable

.sink.split.i73:                                  ; preds = %bb.av, %bb.au, %bb.at
  %.sink.i74 = phi float [ %i.ba, %bb.av ], [ %i.ay, %bb.au ], [ %i.at, %bb.at ]
  store float %.sink.i74, ptr %5, align 4, !tbaa !37
  br label %rotate_cube_face.exit

rotate_cube_face.exit:                            ; preds = %bb.as, %.sink.split.i73
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.acos.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nounwind uwtable
define internal fastcc void @cube_to_xyz(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, float noundef %5, float noundef %6) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = sext i32 %3 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !76
  %i.e = fdiv nsz float %1, %5                    ; 4 uses
  %i.f = fdiv nsz float %2, %6                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.b
  %i.i = load i32, ptr %i.h, align 4, !tbaa !76
  switch i32 %i.i, label %bb.e [
    i32 0, label %rotate_cube_face_inverse.exit
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = fneg nsz float %i.e
  br label %rotate_cube_face_inverse.exit

bb.c:                                             ; preds = %bb.a
  %i.k = fneg nsz float %i.e
  %i.l = fneg nsz float %i.f
  br label %rotate_cube_face_inverse.exit

bb.d:                                             ; preds = %bb.a
  %i.m = fneg nsz float %i.f
  br label %rotate_cube_face_inverse.exit

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1034) #17
  tail call void @abort() #18
  unreachable

rotate_cube_face_inverse.exit:                    ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.1 = phi nsz float [ %i.e, %bb.a ], [ %i.f, %bb.b ], [ %i.k, %bb.c ], [ %i.m, %bb.d ] ; 6 uses
  %.032 = phi nsz float [ %i.f, %bb.a ], [ %i.j, %bb.b ], [ %i.l, %bb.c ], [ %i.e, %bb.d ] ; 6 uses
  switch i32 %i.d, label %bb.k [
    i32 0, label %bb.f
    i32 1, label %bb.l
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
  ]

bb.f:                                             ; preds = %rotate_cube_face_inverse.exit
  %i.n = fneg nsz float %.1
  br label %bb.l

bb.g:                                             ; preds = %rotate_cube_face_inverse.exit
  br label %bb.l

bb.h:                                             ; preds = %rotate_cube_face_inverse.exit
  %i.o = fneg nsz float %.032
  br label %bb.l

bb.i:                                             ; preds = %rotate_cube_face_inverse.exit
  br label %bb.l

bb.j:                                             ; preds = %rotate_cube_face_inverse.exit
  %i.p = fneg nsz float %.1
  br label %bb.l

bb.k:                                             ; preds = %rotate_cube_face_inverse.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1119) #17
  tail call void @abort() #18
  unreachable

bb.l:                                             ; preds = %rotate_cube_face_inverse.exit, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.013 = phi nsz float [ 1.000000e+00, %bb.f ], [ %i.p, %bb.j ], [ %.1, %bb.g ], [ %.1, %bb.h ], [ %.1, %bb.i ], [ -1.000000e+00, %rotate_cube_face_inverse.exit ]
  %.012 = phi nsz float [ %.032, %bb.f ], [ %.032, %bb.j ], [ -1.000000e+00, %bb.g ], [ 1.000000e+00, %bb.h ], [ %.032, %bb.i ], [ %.032, %rotate_cube_face_inverse.exit ]
  %.0 = phi nsz float [ %i.n, %bb.f ], [ -1.000000e+00, %bb.j ], [ %.032, %bb.g ], [ %i.o, %bb.h ], [ 1.000000e+00, %bb.i ], [ %.1, %rotate_cube_face_inverse.exit ]
  store float %.013, ptr %4, align 4, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %.012, ptr %i.q, align 4, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %.0, ptr %i.r, align 4, !tbaa !37
  ret void
}

declare ptr @av_default_item_name(ptr noundef) #6

declare void @av_freep(ptr noundef) local_unnamed_addr #6

declare i32 @ff_set_pixel_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i64> @llvm.lrint.v16i64.v16f32(<16 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.asin.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.lrint.v2i64.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tan.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sin.v2f32(<2 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x float>, <2 x float> } @llvm.sincos.v2f32(<2 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.atan2.v2f32(<2 x float>, <2 x float>) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 16}
!10 = !{!"V360Context", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !7, i64 80, !7, i64 104, !7, i64 128, !7, i64 152, !7, i64 176, !6, i64 188, !6, i64 192, !14, i64 196, !14, i64 200, !6, i64 204, !6, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !14, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !14, i64 260, !14, i64 264, !14, i64 268, !14, i64 272, !14, i64 276, !14, i64 280, !7, i64 284, !7, i64 292, !7, i64 300, !7, i64 332, !6, i64 344, !6, i64 348, !6, i64 352, !6, i64 356, !7, i64 360, !7, i64 376, !7, i64 392, !7, i64 408, !7, i64 424, !7, i64 440, !7, i64 456, !7, i64 472, !7, i64 488, !7, i64 504, !7, i64 520, !6, i64 536, !6, i64 540, !6, i64 544, !6, i64 548, !6, i64 552, !6, i64 556, !15, i64 560, !7, i64 568, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !12, i64 616}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = !{!"p1 _ZTS12SliceXYRemap", !12, i64 0}
!16 = !{!10, !12, i64 616}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !7, i64 0}
!19 = !{!7, !7, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = distinct !{!25, !21}
!26 = distinct !{!26, !21}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, !21}
!29 = !{!30, !12, i64 72}
!30 = !{!"AVFilterContext", !11, i64 0, !31, i64 8, !13, i64 16, !32, i64 24, !33, i64 32, !6, i64 40, !32, i64 48, !33, i64 56, !6, i64 64, !12, i64 72, !35, i64 80, !6, i64 88, !6, i64 92, !13, i64 96, !6, i64 104, !36, i64 112, !6, i64 120}
!31 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!32 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!33 = !{!"p2 _ZTS12AVFilterLink", !34, i64 0}
!34 = !{!"any p2 pointer", !12, i64 0}
!35 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!36 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!37 = !{!14, !14, i64 0}
!38 = !{!10, !6, i64 556}
!39 = !{!10, !15, i64 560}
!40 = !{!10, !6, i64 540}
!41 = distinct !{!41, !21}
!42 = distinct !{!42, !21}
!43 = !{!10, !6, i64 20}
!44 = !{!10, !6, i64 24}
!45 = !{!10, !14, i64 220}
!46 = !{!30, !33, i64 56}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!51 = !{!52, !53, i64 16}
!52 = !{!"AVFilterLink", !53, i64 0, !32, i64 8, !53, i64 16, !32, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !54, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !55, i64 72, !54, i64 96, !56, i64 104, !6, i64 112, !6, i64 116, !57, i64 120, !57, i64 168}
!53 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!54 = !{!"AVRational", !6, i64 0, !6, i64 4}
!55 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!56 = !{!"p2 _ZTS15AVFrameSideData", !34, i64 0}
!57 = !{!"AVFilterFormatsConfig", !58, i64 0, !58, i64 8, !59, i64 16, !58, i64 24, !58, i64 32, !58, i64 40}
!58 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!59 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!60 = !{!52, !6, i64 40}
!61 = !{!52, !6, i64 44}
!62 = !{!63, !50, i64 0}
!63 = !{!"ThreadData", !50, i64 0, !50, i64 8}
!64 = !{!63, !50, i64 8}
!65 = !{!10, !12, i64 608}
!66 = !{!52, !53, i64 0}
!67 = !{!30, !33, i64 32}
!68 = !{!52, !6, i64 36}
!69 = !{!70, !6, i64 16}
!70 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!71 = !{!10, !6, i64 548}
!72 = !{!10, !6, i64 552}
!73 = !{!10, !12, i64 600}
!74 = !{!10, !6, i64 544}
!75 = !{!10, !13, i64 72}
!76 = !{!6, !6, i64 0}
!77 = !{!10, !6, i64 188}
!78 = !{!79, !7, i64 9}
!79 = !{!"AVPixFmtDescriptor", !13, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !80, i64 16, !7, i64 24, !13, i64 104}
!80 = !{!"long", !7, i64 0}
!81 = !{!79, !7, i64 10}
!82 = !{!10, !6, i64 344}
!83 = !{!10, !6, i64 348}
!84 = !{!10, !6, i64 8}
!85 = !{!10, !14, i64 272}
!86 = !{!10, !14, i64 276}
!87 = !{!10, !14, i64 280}
!88 = !{!10, !6, i64 252}
!89 = !{!10, !12, i64 584}
!90 = !{!10, !6, i64 12}
!91 = !{!10, !12, i64 592}
!92 = !{!10, !6, i64 28}
!93 = !{!10, !6, i64 32}
!94 = !{!10, !14, i64 260}
!95 = !{!10, !14, i64 264}
!96 = !{!10, !14, i64 268}
!97 = !{!10, !6, i64 256}
!98 = !{!10, !6, i64 192}
!99 = !{!10, !6, i64 536}
!100 = !{!79, !80, i64 16}
!101 = !{!102, !102, i64 0}
!102 = !{!"p1 short", !12, i64 0}
!103 = !{!104, !13, i64 48}
!104 = !{!"SliceXYRemap", !7, i64 0, !7, i64 16, !7, i64 32, !13, i64 48}
!105 = distinct !{!105, !21}
!106 = distinct !{!106, !21, !107}
!107 = !{!"llvm.loop.unswitch.partial.disable"}
!108 = !{!10, !14, i64 212}
!109 = !{!10, !14, i64 216}
!110 = !{!10, !6, i64 248}
!111 = distinct !{!111, !21, !107}
!112 = !{!13, !13, i64 0}
!113 = distinct !{!113, !21}
!114 = distinct !{!114, !21}
!115 = distinct !{!115, !21}
!116 = distinct !{!116, !21, !107}
!117 = distinct !{!117, !21}
!118 = distinct !{!118, !21}
!119 = distinct !{!119, !21}
!120 = distinct !{!120, !21, !107}
!121 = distinct !{!121, !21}
!122 = distinct !{!122, !21}
!123 = distinct !{!123, !21}
!124 = distinct !{!124, !21, !107}
!125 = distinct !{!125, !21}
!126 = distinct !{!126, !21}
!127 = distinct !{!127, !21}
!128 = distinct !{!128, !21, !107}
!129 = distinct !{!129, !21}
!130 = distinct !{!130, !21}
!131 = distinct !{!131, !21}
!132 = distinct !{!132, !21, !107}
!133 = distinct !{!133, !21}
!134 = distinct !{!134, !21}
!135 = distinct !{!135, !21}
!136 = distinct !{!136, !21, !107}
!137 = distinct !{!137, !21}
end_hunk_1
