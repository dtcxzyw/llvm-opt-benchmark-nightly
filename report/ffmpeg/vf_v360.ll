Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_v360?download=true
inline.NumInlined: 74
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 107
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 117
begin_hunk_0_@lanczos_kernel:bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 38
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 46
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 14
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 50
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 54
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 22
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 62
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 30
  %i.gf = fadd nsz float %i.de, %i.ao
  %i.gg = fadd nsz float %i.gf, %.sink30.i
  %i.gh = insertelement <4 x float> poison, float %i.m, i64 0
  %i.gi = insertelement <4 x float> %i.gh, float %i.aa, i64 1
  %i.gj = insertelement <4 x float> %i.gi, float %i.ao, i64 2
  %i.gk = insertelement <4 x float> %i.gj, float %.sink30.i, i64 3 ; 2 uses
  %i.gl = insertelement <4 x float> poison, float %i.gg, i64 0
  %i.gm = shufflevector <4 x float> %i.gk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gn = shufflevector <4 x float> %i.gk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.go = shufflevector <8 x float> %i.gm, <8 x float> %i.gn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gp = shufflevector <4 x float> %i.gl, <4 x float> poison, <16 x i32> zeroinitializer
  %i.gq = fdiv nsz <16 x float> %i.go, %i.gp
  %i.gr = fadd nsz float %i.df, %i.cq
  %i.gs = fadd nsz float %i.gr, %.sink30.i23
  %i.gt = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.gu = insertelement <4 x float> %i.gt, float %i.cc, i64 1
  %i.gv = insertelement <4 x float> %i.gu, float %i.cq, i64 2
  %i.gw = insertelement <4 x float> %i.gv, float %.sink30.i23, i64 3
  %i.gx = insertelement <4 x float> poison, float %i.gs, i64 0
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gz = fdiv nsz <4 x float> %i.gw, %i.gy
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.hb = fmul nsz <16 x float> %i.gq, %i.ha
  %i.hc = fmul nsz <16 x float> %i.hb, splat (float 1.638500e+04)
  %i.hd = tail call <16 x i64> @llvm.lrint.v16i64.v16f32(<16 x float> %i.hc)
  %i.he = trunc <16 x i64> %i.hd to <16 x i16>    ; 16 uses
  %i.hf = extractelement <16 x i16> %i.he, i64 0
  store i16 %i.hf, ptr %5, align 2, !tbaa !18
  %i.hg = load i16, ptr %i.dj, align 2, !tbaa !18
  store i16 %i.hg, ptr %i.dk, align 2, !tbaa !18
  %i.hh = load i16, ptr %i.dl, align 2, !tbaa !18
  store i16 %i.hh, ptr %i.dm, align 2, !tbaa !18
  %i.hi = extractelement <16 x i16> %i.he, i64 1
  store i16 %i.hi, ptr %i.dn, align 2, !tbaa !18
  %i.hj = load i16, ptr %i.do, align 2, !tbaa !18
  store i16 %i.hj, ptr %i.dp, align 2, !tbaa !18
  %i.hk = load i16, ptr %i.dq, align 2, !tbaa !18
  store i16 %i.hk, ptr %i.dr, align 2, !tbaa !18
  %i.hl = extractelement <16 x i16> %i.he, i64 2
  store i16 %i.hl, ptr %i.ds, align 2, !tbaa !18
  %i.hm = load i16, ptr %i.dt, align 2, !tbaa !18
  store i16 %i.hm, ptr %i.du, align 2, !tbaa !18
  %i.hn = load i16, ptr %i.dv, align 2, !tbaa !18
  store i16 %i.hn, ptr %i.dw, align 2, !tbaa !18
  %i.ho = extractelement <16 x i16> %i.he, i64 3
  store i16 %i.ho, ptr %i.dx, align 2, !tbaa !18
  %i.hp = load i16, ptr %i.dy, align 2, !tbaa !18
  store i16 %i.hp, ptr %i.ea, align 2, !tbaa !18
  %i.hq = load i16, ptr %i.dz, align 2, !tbaa !18
  store i16 %i.hq, ptr %i.eb, align 2, !tbaa !18
  %i.hr = extractelement <16 x i16> %i.he, i64 4
  store i16 %i.hr, ptr %i.ec, align 2, !tbaa !18
  %i.hs = load i16, ptr %i.ed, align 2, !tbaa !18
  store i16 %i.hs, ptr %i.ee, align 2, !tbaa !18
  %i.ht = load i16, ptr %i.ef, align 2, !tbaa !18
  store i16 %i.ht, ptr %i.eg, align 2, !tbaa !18
  %i.hu = extractelement <16 x i16> %i.he, i64 5
  store i16 %i.hu, ptr %i.eh, align 2, !tbaa !18
  %i.hv = load i16, ptr %i.ei, align 2, !tbaa !18
  store i16 %i.hv, ptr %i.ej, align 2, !tbaa !18
  %i.hw = load i16, ptr %i.ek, align 2, !tbaa !18
  store i16 %i.hw, ptr %i.el, align 2, !tbaa !18
  %i.hx = extractelement <16 x i16> %i.he, i64 6
  store i16 %i.hx, ptr %i.em, align 2, !tbaa !18
  %i.hy = load i16, ptr %i.en, align 2, !tbaa !18
  store i16 %i.hy, ptr %i.eo, align 2, !tbaa !18
  %i.hz = load i16, ptr %i.ep, align 2, !tbaa !18
  store i16 %i.hz, ptr %i.eq, align 2, !tbaa !18
  %i.ia = extractelement <16 x i16> %i.he, i64 7
  store i16 %i.ia, ptr %i.er, align 2, !tbaa !18
  %i.ib = load i16, ptr %i.es, align 2, !tbaa !18
  store i16 %i.ib, ptr %i.eu, align 2, !tbaa !18
  %i.ic = load i16, ptr %i.et, align 2, !tbaa !18
  store i16 %i.ic, ptr %i.ev, align 2, !tbaa !18
  %i.id = extractelement <16 x i16> %i.he, i64 8
  store i16 %i.id, ptr %i.ew, align 2, !tbaa !18
  %i.ie = load i16, ptr %i.ex, align 2, !tbaa !18
  store i16 %i.ie, ptr %i.ey, align 2, !tbaa !18
  %i.if = load i16, ptr %i.ez, align 2, !tbaa !18
  store i16 %i.if, ptr %i.fa, align 2, !tbaa !18
  %i.ig = extractelement <16 x i16> %i.he, i64 9
  store i16 %i.ig, ptr %i.fb, align 2, !tbaa !18
  %i.ih = load i16, ptr %i.fc, align 2, !tbaa !18
  store i16 %i.ih, ptr %i.fd, align 2, !tbaa !18
  %i.ii = load i16, ptr %i.fe, align 2, !tbaa !18
  store i16 %i.ii, ptr %i.ff, align 2, !tbaa !18
  %i.ij = extractelement <16 x i16> %i.he, i64 10
  store i16 %i.ij, ptr %i.fg, align 2, !tbaa !18
  %i.ik = load i16, ptr %i.fh, align 2, !tbaa !18
  store i16 %i.ik, ptr %i.fi, align 2, !tbaa !18
  %i.il = load i16, ptr %i.fj, align 2, !tbaa !18
  store i16 %i.il, ptr %i.fk, align 2, !tbaa !18
  %i.im = extractelement <16 x i16> %i.he, i64 11
  store i16 %i.im, ptr %i.fl, align 2, !tbaa !18
  %i.in = load i16, ptr %i.fm, align 2, !tbaa !18
  store i16 %i.in, ptr %i.fo, align 2, !tbaa !18
  %i.io = load i16, ptr %i.fn, align 2, !tbaa !18
  store i16 %i.io, ptr %i.fp, align 2, !tbaa !18
  %i.ip = extractelement <16 x i16> %i.he, i64 12
  store i16 %i.ip, ptr %i.fq, align 2, !tbaa !18
  %i.iq = load i16, ptr %i.fr, align 2, !tbaa !18
  store i16 %i.iq, ptr %i.fs, align 2, !tbaa !18
  %i.ir = load i16, ptr %i.ft, align 2, !tbaa !18
  store i16 %i.ir, ptr %i.fu, align 2, !tbaa !18
  %i.is = extractelement <16 x i16> %i.he, i64 13
  store i16 %i.is, ptr %i.fv, align 2, !tbaa !18
  %i.it = load i16, ptr %i.fw, align 2, !tbaa !18
  store i16 %i.it, ptr %i.fx, align 2, !tbaa !18
  %i.iu = load i16, ptr %i.fy, align 2, !tbaa !18
  store i16 %i.iu, ptr %i.fz, align 2, !tbaa !18
  %i.iv = extractelement <16 x i16> %i.he, i64 14
  store i16 %i.iv, ptr %i.ga, align 2, !tbaa !18
  %i.iw = load i16, ptr %i.gb, align 2, !tbaa !18
  store i16 %i.iw, ptr %i.gc, align 2, !tbaa !18
  %i.ix = load i16, ptr %i.gd, align 2, !tbaa !18
  store i16 %i.ix, ptr %i.ge, align 2, !tbaa !18
  %i.iy = getelementptr inbounds nuw i8, ptr %5, i64 30
  %i.iz = extractelement <16 x i16> %i.he, i64 15
  store i16 %i.iz, ptr %i.iy, align 2, !tbaa !18
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
  %i.g = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.d, <4 x float> %i.f, <4 x float> <float 8.000000e-01, float -2.000000e-01, float 8.000000e-01, float -2.000000e-01>) ; 3 uses
  %i.h = fadd nsz float %1, -1.800000e+00
  %i.i = fsub nsz float 1.200000e+00, %1
  %i.j = insertelement <4 x float> poison, float %1, i64 0
  %6 = shufflevector <4 x float> %i.g, <4 x float> %i.j, <4 x i32> <i32 3, i32 4, i32 4, i32 4>
  %7 = insertelement <4 x float> <float poison, float f0xBEAAAAAB, float poison, float poison>, float %0, i64 0
  %i.k = insertelement <4 x float> %7, float %i.h, i64 2
  %i.l = insertelement <4 x float> %i.k, float %i.i, i64 3
  %i.m = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %6, <4 x float> %i.l, <4 x float> <float f0xBE088889, float 8.000000e-01, float -2.000000e-01, float 8.000000e-01>) ; 4 uses
  %i.n = extractelement <4 x float> %i.m, i64 1
  %8 = tail call nsz float @llvm.fmuladd.f32(float %i.n, float %1, float f0xBEEEEEEF)
  %i.o = fmul nsz float %1, %8
  %i.p = extractelement <4 x float> %i.m, i64 2
  %i.q = tail call nsz float @llvm.fmuladd.f32(float %i.p, float %1, float 1.000000e+00) ; 4 uses
  %i.r = extractelement <4 x float> %i.m, i64 3
  %i.s = fmul nsz float %1, %i.r                  ; 4 uses
  %9 = tail call nsz float @llvm.fmuladd.f32(float %1, float f0x3EAAAAAB, float -2.000000e-01)
  %i.t = tail call nsz float @llvm.fmuladd.f32(float %9, float %1, float f0xBE088889)
  %i.u = fmul nsz float %1, %i.t                  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load i16, ptr %2, align 2, !tbaa !18
  store i16 %i.w, ptr %3, align 2, !tbaa !18
  %i.x = load i16, ptr %i.v, align 2, !tbaa !18
  store i16 %i.x, ptr %4, align 2, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 38
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 6
  %10 = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %11 = insertelement <2 x float> poison, float %0, i64 0 ; 2 uses
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %12, <2 x float> <float f0xBEEEEEEF, float 1.000000e+00>) ; 2 uses
  %14 = shufflevector <2 x float> %11, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 3, i32 0, i32 0>
  %15 = shufflevector <4 x float> %i.g, <4 x float> %i.m, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %16 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %17 = shufflevector <4 x float> %16, <4 x float> %15, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.am = fmul nsz <4 x float> %14, %17           ; 4 uses
  %i.an = insertelement <4 x float> poison, float %i.o, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ap = fmul nsz <4 x float> %i.am, %i.ao       ; 4 uses
  %18 = extractelement <4 x float> %i.ap, i64 0
  %19 = fmul nsz float %18, 1.638500e+04
  %i.aq = tail call i64 @llvm.lrint.i64.f32(float %19)
  %i.ar = trunc i64 %i.aq to i16
  store i16 %i.ar, ptr %5, align 2, !tbaa !18
  %i.as = load i16, ptr %i.y, align 2, !tbaa !18
  store i16 %i.as, ptr %i.z, align 2, !tbaa !18
  %i.at = load i16, ptr %i.aa, align 2, !tbaa !18
  store i16 %i.at, ptr %i.ab, align 2, !tbaa !18
  %i.au = extractelement <4 x float> %i.ap, i64 1
  %20 = fmul nsz float %i.au, 1.638500e+04
  %i.av = tail call i64 @llvm.lrint.i64.f32(float %20)
  %i.aw = trunc i64 %i.av to i16
  store i16 %i.aw, ptr %i.ac, align 2, !tbaa !18
  %i.ax = load i16, ptr %i.ad, align 2, !tbaa !18
  store i16 %i.ax, ptr %i.ae, align 2, !tbaa !18
  %i.ay = load i16, ptr %i.af, align 2, !tbaa !18
  store i16 %i.ay, ptr %i.ag, align 2, !tbaa !18
  %i.az = extractelement <4 x float> %i.ap, i64 2
  %21 = fmul nsz float %i.az, 1.638500e+04
  %i.ba = tail call i64 @llvm.lrint.i64.f32(float %21)
  %i.bb = trunc i64 %i.ba to i16
  store i16 %i.bb, ptr %i.ah, align 2, !tbaa !18
  %i.bc = load i16, ptr %i.ai, align 2, !tbaa !18
  store i16 %i.bc, ptr %i.aj, align 2, !tbaa !18
  %i.bd = load i16, ptr %i.ak, align 2, !tbaa !18
  store i16 %i.bd, ptr %i.al, align 2, !tbaa !18
  %i.be = extractelement <4 x float> %i.ap, i64 3
  %22 = fmul nsz float %i.be, 1.638500e+04
  %i.bf = tail call i64 @llvm.lrint.i64.f32(float %22)
  %i.bg = trunc i64 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bk = load i16, ptr %i.bi, align 2, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !18
  %i.bm = load i16, ptr %i.bj, align 2, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !18
  %i.bo = extractelement <4 x float> %i.am, i64 0 ; 3 uses
  %i.bp = fmul nsz float %i.bo, %i.q
  %i.bq = fmul nsz float %i.bp, 1.638500e+04
  %i.br = tail call i64 @llvm.lrint.i64.f32(float %i.bq)
  %i.bs = trunc i64 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !18
  %23 = extractelement <2 x float> %13, i64 1     ; 3 uses
  %i.ca = fmul nsz float %23, %i.q
  %i.cb = fmul nsz float %i.ca, 1.638500e+04
  %i.cc = tail call i64 @llvm.lrint.i64.f32(float %i.cb)
  %i.cd = trunc i64 %i.cc to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !18
  %i.cl = extractelement <4 x float> %i.am, i64 2 ; 3 uses
  %i.cm = fmul nsz float %i.cl, %i.q
  %i.cn = fmul nsz float %i.cm, 1.638500e+04
  %i.co = tail call i64 @llvm.lrint.i64.f32(float %i.cn)
  %i.cp = trunc i64 %i.co to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 46
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !18
  %i.cx = extractelement <4 x float> %i.am, i64 3 ; 3 uses
  %i.cy = fmul nsz float %i.cx, %i.q
  %i.cz = fmul nsz float %i.cy, 1.638500e+04
  %i.da = tail call i64 @llvm.lrint.i64.f32(float %i.cz)
  %i.db = trunc i64 %i.da to i16
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %i.db, ptr %i.dc, align 2, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.df = load i16, ptr %i.dd, align 2, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i16 %i.df, ptr %i.dg, align 2, !tbaa !18
  %i.dh = load i16, ptr %i.de, align 2, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.dh, ptr %i.di, align 2, !tbaa !18
  %i.dj = fmul nsz float %i.bo, %i.s
  %i.dk = fmul nsz float %i.dj, 1.638500e+04
  %i.dl = tail call i64 @llvm.lrint.i64.f32(float %i.dk)
  %i.dm = trunc i64 %i.dl to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 50
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !18
  %i.du = fmul nsz float %23, %i.s
  %i.dv = fmul nsz float %i.du, 1.638500e+04
  %i.dw = tail call i64 @llvm.lrint.i64.f32(float %i.dv)
  %i.dx = trunc i64 %i.dw to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !18
  %i.ef = fmul nsz float %i.cl, %i.s
  %i.eg = fmul nsz float %i.ef, 1.638500e+04
  %i.eh = tail call i64 @llvm.lrint.i64.f32(float %i.eg)
  %i.ei = trunc i64 %i.eh to i16
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %i.ei, ptr %i.ej, align 2, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !18
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i16 %i.el, ptr %i.em, align 2, !tbaa !18
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 54
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i16 %i.eo, ptr %i.ep, align 2, !tbaa !18
  %i.eq = fmul nsz float %i.cx, %i.s
  %i.er = fmul nsz float %i.eq, 1.638500e+04
  %i.es = tail call i64 @llvm.lrint.i64.f32(float %i.er)
  %i.et = trunc i64 %i.es to i16
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %i.et, ptr %i.eu, align 2, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ex = load i16, ptr %i.ev, align 2, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !18
  %i.ez = load i16, ptr %i.ew, align 2, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !18
  %i.fb = fmul nsz float %i.bo, %i.u
  %i.fc = fmul nsz float %i.fb, 1.638500e+04
  %i.fd = tail call i64 @llvm.lrint.i64.f32(float %i.fc)
  %i.fe = trunc i64 %i.fd to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !18
  %i.fm = fmul nsz float %23, %i.u
  %i.fn = fmul nsz float %i.fm, 1.638500e+04
  %i.fo = tail call i64 @llvm.lrint.i64.f32(float %i.fn)
  %i.fp = trunc i64 %i.fo to i16
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !18
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !18
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !18
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i16 %i.fv, ptr %i.fw, align 2, !tbaa !18
  %i.fx = fmul nsz float %i.cl, %i.u
  %i.fy = fmul nsz float %i.fx, 1.638500e+04
  %i.fz = tail call i64 @llvm.lrint.i64.f32(float %i.fy)
  %i.ga = trunc i64 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !18
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !18
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 62
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 30
  store i16 %i.gg, ptr %i.gh, align 2, !tbaa !18
  %i.gi = fmul nsz float %i.cx, %i.u
  %i.gj = fmul nsz float %i.gi, 1.638500e+04
  %i.gk = tail call i64 @llvm.lrint.i64.f32(float %i.gj)
  %i.gl = trunc i64 %i.gk to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !18
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
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = phi float [ %i.ae, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ag = fadd nsz float %0, -2.000000e+00        ; 5 uses
  %i.ah = fcmp nsz oeq float %i.ag, 0.000000e+00
  br i1 %i.ah, label %calculate_gaussian_coeffs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = fmul nsz float %i.ag, -2.000000e+00
  %i.aj = fmul nsz float %i.ag, %i.ai
  %i.ak = tail call nsz float @llvm.exp.f32(float %i.aj)
  %i.al = fneg nsz float %i.ag
  %i.am = fmul nsz float %i.ag, %i.al
  %i.an = fmul nsz float %i.am, 5.000000e-01
  %i.ao = tail call nsz float @llvm.exp.f32(float %i.an)
  %i.ap = fmul nsz float %i.ak, %i.ao
  br label %calculate_gaussian_coeffs.exit

calculate_gaussian_coeffs.exit:                   ; preds = %bb.g, %bb.h
  %.sink30.i = phi float [ %i.ap, %bb.h ], [ 1.000000e+00, %bb.g ] ; 2 uses
  %i.aq = fadd nsz float %1, 1.000000e+00         ; 5 uses
  %i.ar = fcmp nsz oeq float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %calculate_gaussian_coeffs.exit
  %i.as = fmul nsz float %i.aq, -2.000000e+00
  %i.at = fmul nsz float %i.aq, %i.as
  %i.au = tail call nsz float @llvm.exp.f32(float %i.at)
  %i.av = fneg nsz float %i.aq
  %i.aw = fmul nsz float %i.aq, %i.av
  %i.ax = fmul nsz float %i.aw, 5.000000e-01
  %i.ay = tail call nsz float @llvm.exp.f32(float %i.ax)
  %i.az = fmul nsz float %i.au, %i.ay
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %calculate_gaussian_coeffs.exit
  %i.ba = phi float [ %i.az, %bb.i ], [ 1.000000e+00, %calculate_gaussian_coeffs.exit ] ; 2 uses
  %i.bb = fcmp nsz oeq float %1, 0.000000e+00
  br i1 %i.bb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = fmul nsz float %1, -2.000000e+00
  %i.bd = fmul nsz float %1, %i.bc
  %i.be = tail call nsz float @llvm.exp.f32(float %i.bd)
  %i.bf = fneg nsz float %1
  %i.bg = fmul nsz float %1, %i.bf
  %i.bh = fmul nsz float %i.bg, 5.000000e-01
  %i.bi = tail call nsz float @llvm.exp.f32(float %i.bh)
  %i.bj = fmul nsz float %i.be, %i.bi
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bk = phi float [ %i.bj, %bb.k ], [ 1.000000e+00, %bb.j ] ; 2 uses
  %i.bl = fadd nsz float %1, -1.000000e+00        ; 5 uses
  %i.bm = fcmp nsz oeq float %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = fmul nsz float %i.bl, -2.000000e+00
  %i.bo = fmul nsz float %i.bl, %i.bn
  %i.bp = tail call nsz float @llvm.exp.f32(float %i.bo)
  %i.bq = fneg nsz float %i.bl
  %i.br = fmul nsz float %i.bl, %i.bq
  %i.bs = fmul nsz float %i.br, 5.000000e-01
  %i.bt = tail call nsz float @llvm.exp.f32(float %i.bs)
  %i.bu = fmul nsz float %i.bp, %i.bt
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bv = phi float [ %i.bu, %bb.m ], [ 1.000000e+00, %bb.l ] ; 2 uses
  %i.bw = fadd nsz float %1, -2.000000e+00        ; 5 uses
  %i.bx = fcmp nsz oeq float %i.bw, 0.000000e+00
  br i1 %i.bx, label %calculate_gaussian_coeffs.exit24, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = fmul nsz float %i.bw, -2.000000e+00
  %i.bz = fmul nsz float %i.bw, %i.by
  %i.ca = tail call nsz float @llvm.exp.f32(float %i.bz)
  %i.cb = fneg nsz float %i.bw
  %i.cc = fmul nsz float %i.bw, %i.cb
  %i.cd = fmul nsz float %i.cc, 5.000000e-01
  %i.ce = tail call nsz float @llvm.exp.f32(float %i.cd)
  %i.cf = fmul nsz float %i.ca, %i.ce
  br label %calculate_gaussian_coeffs.exit24

calculate_gaussian_coeffs.exit24:                 ; preds = %bb.n, %bb.o
  %.sink30.i23 = phi float [ %i.cf, %bb.o ], [ 1.000000e+00, %bb.n ] ; 2 uses
  %i.cg = fadd nsz float %i.k, %i.u
  %i.ch = fadd nsz float %i.ba, %i.bk
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cj = load i16, ptr %2, align 2, !tbaa !18
  store i16 %i.cj, ptr %3, align 2, !tbaa !18
  %i.ck = load i16, ptr %i.ci, align 2, !tbaa !18
  store i16 %i.ck, ptr %4, align 2, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 38
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_0
begin_hunk_1_@process_cube_coordinates:bb.a
  br label %bb.as

bb.ap:                                            ; preds = %bb.aj
  %i.ak = fneg nsz float %.1
  store float %i.ak, ptr %4, align 4, !tbaa !29
  %i.al = fneg nsz float %i.af
  br label %bb.as

bb.aq:                                            ; preds = %bb.aj
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1382) #17
  tail call void @abort() #18
  unreachable

bb.ar:                                            ; preds = %bb.ai
  store float %.1, ptr %4, align 4, !tbaa !29
  br label %bb.as

bb.as:                                            ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.ar, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.g
  %.0122.sink = phi float [ %.0122, %bb.o ], [ %.0122, %bb.n ], [ %i.q, %bb.m ], [ %i.r, %bb.l ], [ %.0122, %bb.k ], [ %.0122, %bb.j ], [ %i.ad, %bb.ag ], [ %i.x, %bb.af ], [ %i.x, %bb.ae ], [ %i.ab, %bb.ad ], [ %.1, %bb.ac ], [ %i.y, %bb.ab ], [ %.1, %bb.ak ], [ %i.ah, %bb.al ], [ %i.af, %bb.am ], [ %i.aj, %bb.an ], [ %i.af, %bb.ao ], [ %i.al, %bb.ap ], [ %.0122, %bb.ar ], [ %.0122, %bb.s ], [ %.0122, %bb.t ], [ %i.t, %bb.u ], [ %i.v, %bb.v ], [ %.0122, %bb.w ], [ %.0122, %bb.x ], [ %.0122, %bb.g ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.l ], [ 5, %bb.k ], [ 4, %bb.j ], [ 2, %bb.ag ], [ 2, %bb.af ], [ 4, %bb.ae ], [ 5, %bb.ad ], [ 2, %bb.ac ], [ 2, %bb.ab ], [ 3, %bb.ak ], [ 3, %bb.al ], [ 4, %bb.am ], [ 5, %bb.an ], [ 3, %bb.ao ], [ 3, %bb.ap ], [ %3, %bb.ar ], [ 5, %bb.s ], [ 4, %bb.t ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %bb.w ], [ 1, %bb.x ], [ %3, %bb.g ]
  store float %.0122.sink, ptr %5, align 4, !tbaa !29
  %i.am = sext i32 %.0 to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !57 ; 2 uses
  store i32 %i.ao, ptr %6, align 4, !tbaa !57
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !57
  switch i32 %i.ar, label %bb.aw [
    i32 0, label %rotate_cube_face.exit
    i32 1, label %bb.at
    i32 2, label %bb.au
    i32 3, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  %i.as = load float, ptr %4, align 4, !tbaa !29
  %i.at = fneg nsz float %.0122.sink
  store float %i.at, ptr %4, align 4, !tbaa !29
  br label %.sink.split.i73

bb.au:                                            ; preds = %bb.as
  %i.au = load float, ptr %4, align 4, !tbaa !29
  %i.av = fneg nsz float %i.au
  store float %i.av, ptr %4, align 4, !tbaa !29
  %i.aw = load float, ptr %5, align 4, !tbaa !29
  %i.ax = fneg nsz float %i.aw
  br label %.sink.split.i73

bb.av:                                            ; preds = %bb.as
  %i.ay = load float, ptr %4, align 4, !tbaa !29
  %i.az = fneg nsz float %i.ay
  store float %.0122.sink, ptr %4, align 4, !tbaa !29
  br label %.sink.split.i73

bb.aw:                                            ; preds = %bb.as
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1008) #17
  tail call void @abort() #18
  unreachable

.sink.split.i73:                                  ; preds = %bb.av, %bb.au, %bb.at
  %.sink.i74 = phi float [ %i.az, %bb.av ], [ %i.ax, %bb.au ], [ %i.as, %bb.at ]
  store float %.sink.i74, ptr %5, align 4, !tbaa !29
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
  %i.d = load i32, ptr %i.c, align 4, !tbaa !57
  %i.e = fdiv nsz float %1, %5                    ; 4 uses
  %i.f = fdiv nsz float %2, %6                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.b
  %i.i = load i32, ptr %i.h, align 4, !tbaa !57
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
  store float %.013, ptr %4, align 4, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %.012, ptr %i.q, align 4, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %.0, ptr %i.r, align 4, !tbaa !29
  ret void
}

declare ptr @av_default_item_name(ptr noundef) #6

declare void @av_freep(ptr noundef) local_unnamed_addr #6

declare i32 @ff_set_pixel_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i64> @llvm.lrint.v16i64.v16f32(<16 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.asin.v2f32(<2 x float>) #12

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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #10

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
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"float", !5, i64 0}
!13 = !{!"p1 _ZTS12SliceXYRemap", !9, i64 0}
!14 = !{!"V360Context", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !5, i64 80, !5, i64 104, !5, i64 128, !5, i64 152, !5, i64 176, !6, i64 188, !6, i64 192, !12, i64 196, !12, i64 200, !6, i64 204, !6, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !5, i64 284, !5, i64 292, !5, i64 300, !5, i64 332, !6, i64 344, !6, i64 348, !6, i64 352, !6, i64 356, !5, i64 360, !5, i64 376, !5, i64 392, !5, i64 408, !5, i64 424, !5, i64 440, !5, i64 456, !5, i64 472, !5, i64 488, !5, i64 504, !5, i64 520, !6, i64 536, !6, i64 540, !6, i64 544, !6, i64 548, !6, i64 552, !6, i64 556, !13, i64 560, !5, i64 568, !9, i64 584, !9, i64 592, !9, i64 600, !9, i64 608, !9, i64 616}
!15 = !{!14, !6, i64 16}
!16 = !{!14, !9, i64 616}
!17 = !{!"short", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!22 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!23 = !{!"any p2 pointer", !9, i64 0}
!24 = !{!"p2 _ZTS12AVFilterLink", !23, i64 0}
!25 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!26 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!27 = !{!"AVFilterContext", !10, i64 0, !21, i64 8, !11, i64 16, !22, i64 24, !24, i64 32, !6, i64 40, !22, i64 48, !24, i64 56, !6, i64 64, !9, i64 72, !25, i64 80, !6, i64 88, !6, i64 92, !11, i64 96, !6, i64 104, !26, i64 112, !6, i64 120}
!28 = !{!27, !9, i64 72}
!29 = !{!12, !12, i64 0}
!30 = !{!14, !6, i64 556}
!31 = !{!14, !13, i64 560}
!32 = !{!14, !6, i64 540}
!33 = !{!14, !6, i64 20}
!34 = !{!14, !12, i64 220}
!35 = !{!27, !24, i64 56}
!36 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!39 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!40 = !{!"AVRational", !6, i64 0, !6, i64 4}
!41 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!42 = !{!"p2 _ZTS15AVFrameSideData", !23, i64 0}
!43 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!44 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!45 = !{!"AVFilterFormatsConfig", !43, i64 0, !43, i64 8, !44, i64 16, !43, i64 24, !43, i64 32, !43, i64 40}
!46 = !{!"AVFilterLink", !39, i64 0, !22, i64 8, !39, i64 16, !22, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !40, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !41, i64 72, !40, i64 96, !42, i64 104, !6, i64 112, !6, i64 116, !45, i64 120, !45, i64 168}
!47 = !{!46, !6, i64 40}
!48 = !{!46, !6, i64 44}
!49 = !{!"ThreadData", !38, i64 0, !38, i64 8}
!50 = !{!49, !38, i64 0}
!51 = !{!49, !38, i64 8}
!52 = !{!14, !9, i64 608}
!53 = !{!14, !6, i64 548}
!54 = !{!14, !6, i64 552}
!55 = !{!14, !9, i64 600}
!56 = !{!14, !6, i64 544}
!57 = !{!6, !6, i64 0}
!58 = !{!14, !12, i64 272}
!59 = !{!14, !12, i64 276}
!60 = !{!14, !6, i64 252}
!61 = !{!14, !9, i64 584}
!62 = !{!14, !9, i64 592}
!63 = !{!14, !12, i64 260}
!64 = !{!14, !12, i64 264}
!65 = !{!14, !6, i64 256}
!66 = !{!14, !6, i64 192}
!67 = !{!14, !6, i64 536}
!68 = !{!"p1 short", !9, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"SliceXYRemap", !5, i64 0, !5, i64 16, !5, i64 32, !11, i64 48}
!71 = !{!70, !11, i64 48}
!72 = !{!"llvm.loop.unswitch.partial.disable"}
!73 = !{!11, !11, i64 0}
!74 = !{!14, !6, i64 204}
!75 = !{!14, !12, i64 196}
!76 = !{!"branch_weights", i32 1, i32 1048575}
!77 = !{!14, !6, i64 208}
!78 = !{!14, !12, i64 200}
!79 = distinct !{!79, !20}
!80 = distinct !{!80, !20}
!81 = distinct !{!81, !20}
!82 = distinct !{!82, !20}
!83 = distinct !{!83, !20}
!84 = distinct !{!84, !20}
!85 = distinct !{!85, !20}
!86 = distinct !{!86, !20}
!87 = distinct !{!87, !20}
!88 = distinct !{!88, !20}
!89 = !{!14, !6, i64 24}
!90 = !{!38, !38, i64 0}
!91 = !{!46, !39, i64 16}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !20, !72}
!94 = !{!46, !39, i64 0}
!95 = !{!27, !24, i64 32}
!96 = !{!46, !6, i64 36}
!97 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!98 = !{!97, !6, i64 16}
!99 = !{!14, !11, i64 72}
!100 = !{!14, !6, i64 188}
!101 = !{!"long", !5, i64 0}
!102 = !{!"AVPixFmtDescriptor", !11, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !101, i64 16, !5, i64 24, !11, i64 104}
!103 = !{!102, !5, i64 9}
!104 = !{!102, !5, i64 10}
!105 = !{!14, !6, i64 344}
!106 = !{!14, !6, i64 348}
!107 = !{!14, !6, i64 8}
!108 = !{!14, !12, i64 280}
!109 = !{!14, !6, i64 12}
!110 = !{!14, !6, i64 28}
!111 = !{!14, !6, i64 32}
!112 = !{!14, !12, i64 268}
!113 = !{!102, !101, i64 16}
!114 = !{!14, !12, i64 212}
!115 = !{!14, !12, i64 216}
!116 = !{!14, !6, i64 248}
!117 = distinct !{!117, !20, !72}
!118 = distinct !{!118, !20}
!119 = distinct !{!119, !20}
!120 = distinct !{!120, !20}
!121 = distinct !{!121, !20, !72}
!122 = distinct !{!122, !20}
!123 = distinct !{!123, !20}
!124 = distinct !{!124, !20}
!125 = distinct !{!125, !20, !72}
!126 = distinct !{!126, !20}
!127 = distinct !{!127, !20}
!128 = distinct !{!128, !20}
!129 = distinct !{!129, !20, !72}
!130 = distinct !{!130, !20}
!131 = distinct !{!131, !20}
!132 = distinct !{!132, !20}
!133 = distinct !{!133, !20, !72}
!134 = distinct !{!134, !20}
!135 = distinct !{!135, !20}
end_hunk_1
