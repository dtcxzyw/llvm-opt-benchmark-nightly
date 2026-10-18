Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 194
begin_hunk_0_@vorbis_encode_tonemask_setup:bb.a
  %i.ct = fptrunc double %i.cs to float
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store float %i.ct, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = sitofp i32 %i.cw to double
  %i.cy = fmul double %i.l, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = sitofp i32 %i.da to double
  %i.dc = fmul double %i.c, %i.db
  %i.dd = fadd double %i.cy, %i.dc
  %i.de = fptrunc double %i.dd to float
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  store float %i.de, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = sitofp i32 %i.dh to double
  %i.dj = fmul double %i.l, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = sitofp i32 %i.dl to double
  %i.dn = fmul double %i.c, %i.dm
  %i.do = fadd double %i.dj, %i.dn
  %i.dp = fptrunc double %i.do to float
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store float %i.dp, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = sitofp i32 %i.ds to double
  %i.du = fmul double %i.l, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = sitofp i32 %i.dw to double
  %i.dy = fmul double %i.c, %i.dx
  %i.dz = fadd double %i.du, %i.dy
  %i.ea = fptrunc double %i.dz to float
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  store float %i.ea, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = sitofp i32 %i.ed to double
  %i.ef = fmul double %i.l, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = sitofp i32 %i.eh to double
  %i.ej = fmul double %i.c, %i.ei
  %i.ek = fadd double %i.ef, %i.ej
  %i.el = fptrunc double %i.ek to float
  %i.em = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store float %i.el, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = sitofp i32 %i.eo to double
  %i.eq = fmul double %i.l, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.es = load i32, ptr %i.er, align 4
  %i.et = sitofp i32 %i.es to double
  %i.eu = fmul double %i.c, %i.et
  %i.ev = fadd double %i.eq, %i.eu
  %i.ew = fptrunc double %i.ev to float
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  store float %i.ew, ptr %i.ex, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = sitofp i32 %i.ez to double
  %i.fb = fmul double %i.l, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = sitofp i32 %i.fd to double
  %i.ff = fmul double %i.c, %i.fe
  %i.fg = fadd double %i.fb, %i.ff
  %i.fh = fptrunc double %i.fg to float
  %i.fi = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store float %i.fh, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = sitofp i32 %i.fk to double
  %i.fm = fmul double %i.l, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = sitofp i32 %i.fo to double
  %i.fq = fmul double %i.c, %i.fp
  %i.fr = fadd double %i.fm, %i.fq
  %i.fs = fptrunc double %i.fr to float
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  store float %i.fs, ptr %i.ft, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bz, i64 36
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = sitofp i32 %i.fv to double
  %i.fx = fmul double %i.l, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ca, i64 36
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = sitofp i32 %i.fz to double
  %i.gb = fmul double %i.c, %i.ga
  %i.gc = fadd double %i.fx, %i.gb
  %i.gd = fptrunc double %i.gc to float
  %i.ge = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store float %i.gd, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.gg = load i32, ptr %i.gf, align 4
  %i.gh = sitofp i32 %i.gg to double
  %i.gi = fmul double %i.l, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = sitofp i32 %i.gk to double
  %i.gm = fmul double %i.c, %i.gl
  %i.gn = fadd double %i.gi, %i.gm
  %i.go = fptrunc double %i.gn to float
  %i.gp = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  store float %i.go, ptr %i.gp, align 4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = sitofp i32 %i.gr to double
  %i.gt = fmul double %i.l, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ca, i64 44
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = sitofp i32 %i.gv to double
  %i.gx = fmul double %i.c, %i.gw
  %i.gy = fadd double %i.gt, %i.gx
  %i.gz = fptrunc double %i.gy to float
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store float %i.gz, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = sitofp i32 %i.hc to double
  %i.he = fmul double %i.l, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = sitofp i32 %i.hg to double
  %i.hi = fmul double %i.c, %i.hh
  %i.hj = fadd double %i.he, %i.hi
  %i.hk = fptrunc double %i.hj to float
  %i.hl = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  store float %i.hk, ptr %i.hl, align 4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bz, i64 52
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = sitofp i32 %i.hn to double
  %i.hp = fmul double %i.l, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ca, i64 52
  %i.hr = load i32, ptr %i.hq, align 4
  %i.hs = sitofp i32 %i.hr to double
  %i.ht = fmul double %i.c, %i.hs
  %i.hu = fadd double %i.hp, %i.ht
  %i.hv = fptrunc double %i.hu to float
  %i.hw = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store float %i.hv, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = sitofp i32 %i.hy to double
  %i.ia = fmul double %i.l, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = sitofp i32 %i.ic to double
  %i.ie = fmul double %i.c, %i.id
  %i.if = fadd double %i.ia, %i.ie
  %i.ig = fptrunc double %i.if to float
  %i.ih = getelementptr inbounds nuw i8, ptr %i.g, i64 92
  store float %i.ig, ptr %i.ih, align 4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bz, i64 60
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = sitofp i32 %i.ij to double
  %i.il = fmul double %i.l, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.ca, i64 60
  %i.in = load i32, ptr %i.im, align 4
  %i.io = sitofp i32 %i.in to double
  %i.ip = fmul double %i.c, %i.io
  %i.iq = fadd double %i.il, %i.ip
  %i.ir = fptrunc double %i.iq to float
  %i.is = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store float %i.ir, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.iu = load i32, ptr %i.it, align 4
  %i.iv = sitofp i32 %i.iu to double
  %i.iw = fmul double %i.l, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = sitofp i32 %i.iy to double
  %i.ja = fmul double %i.c, %i.iz
  %i.jb = fadd double %i.iw, %i.ja
  %i.jc = fptrunc double %i.jb to float
  %i.jd = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  store float %i.jc, ptr %i.jd, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @vorbis_encode_noisebias_setup(ptr nofree readonly captures(none) %.48.val, double noundef %0, i32 noundef range(i32 0, 4) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, double noundef %5) unnamed_addr #25 {
bb.a:
  %i.a = fptosi double %0 to i32                  ; 3 uses
  %i.b = sitofp i32 %i.a to double
  %i.c = fsub double %0, %i.b                     ; 19 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.48.val, i64 4912
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8              ; 19 uses
  %i.h = sext i32 %i.a to i64                     ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %2, i64 %i.h
  %i.j = fsub double 1.000000e+00, %i.c           ; 18 uses
  %i.k = load <2 x i32>, ptr %i.i, align 4
  %i.l = sitofp <2 x i32> %i.k to <2 x double>
  %6 = insertelement <2 x double> poison, double %i.j, i64 0
  %7 = insertelement <2 x double> %6, double %i.c, i64 1
  %8 = fmul <2 x double> %7, %i.l
  %9 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %8)
  %i.m = fptrunc double %9 to float
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  store float %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %i.e ; 3 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store i32 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 124
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load i32, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store i32 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds [204 x i8], ptr %3, i64 %i.h
  %i.y = sext i32 %i.a to i64
  %i.z = getelementptr [204 x i8], ptr %3, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 204
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 132 ; 3 uses
  br label %.preheader1

.preheader1:                                      ; preds = %bb.a, %.preheader1
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader1 ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [68 x i8], ptr %i.x, i64 %indvars.iv ; 17 uses
  %i.ad = getelementptr inbounds nuw [68 x i8], ptr %i.aa, i64 %indvars.iv ; 17 uses
  %i.ae = getelementptr inbounds nuw [68 x i8], ptr %i.ab, i64 %indvars.iv ; 17 uses
  %i.af = load i32, ptr %i.ac, align 4
  %i.ag = sitofp i32 %i.af to double
  %i.ah = fmul double %i.j, %i.ag
  %i.ai = load i32, ptr %i.ad, align 4
  %i.aj = sitofp i32 %i.ai to double
  %i.ak = fmul double %i.c, %i.aj
  %i.al = fadd double %i.ah, %i.ak
  %i.am = fptrunc double %i.al to float
  store float %i.am, ptr %i.ae, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = fmul double %i.j, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = sitofp i32 %i.as to double
  %i.au = fmul double %i.c, %i.at
  %i.av = fadd double %i.aq, %i.au
  %i.aw = fptrunc double %i.av to float
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store float %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = sitofp i32 %i.az to double
  %i.bb = fmul double %i.j, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = sitofp i32 %i.bd to double
  %i.bf = fmul double %i.c, %i.be
  %i.bg = fadd double %i.bb, %i.bf
  %i.bh = fptrunc double %i.bg to float
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store float %i.bh, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = sitofp i32 %i.bk to double
  %i.bm = fmul double %i.j, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = sitofp i32 %i.bo to double
  %i.bq = fmul double %i.c, %i.bp
  %i.br = fadd double %i.bm, %i.bq
  %i.bs = fptrunc double %i.br to float
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store float %i.bs, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = sitofp i32 %i.bv to double
  %i.bx = fmul double %i.j, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = sitofp i32 %i.bz to double
  %i.cb = fmul double %i.c, %i.ca
  %i.cc = fadd double %i.bx, %i.cb
  %i.cd = fptrunc double %i.cc to float
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store float %i.cd, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = sitofp i32 %i.cg to double
  %i.ci = fmul double %i.j, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = sitofp i32 %i.ck to double
  %i.cm = fmul double %i.c, %i.cl
  %i.cn = fadd double %i.ci, %i.cm
  %i.co = fptrunc double %i.cn to float
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  store float %i.co, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = sitofp i32 %i.cr to double
  %i.ct = fmul double %i.j, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = sitofp i32 %i.cv to double
  %i.cx = fmul double %i.c, %i.cw
  %i.cy = fadd double %i.ct, %i.cx
  %i.cz = fptrunc double %i.cy to float
  %i.da = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store float %i.cz, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = sitofp i32 %i.dc to double
  %i.de = fmul double %i.j, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = sitofp i32 %i.dg to double
  %i.di = fmul double %i.c, %i.dh
  %i.dj = fadd double %i.de, %i.di
  %i.dk = fptrunc double %i.dj to float
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  store float %i.dk, ptr %i.dl, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = sitofp i32 %i.dn to double
  %i.dp = fmul double %i.j, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = sitofp i32 %i.dr to double
  %i.dt = fmul double %i.c, %i.ds
  %i.du = fadd double %i.dp, %i.dt
  %i.dv = fptrunc double %i.du to float
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store float %i.dv, ptr %i.dw, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = sitofp i32 %i.dy to double
  %i.ea = fmul double %i.j, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = sitofp i32 %i.ec to double
  %i.ee = fmul double %i.c, %i.ed
  %i.ef = fadd double %i.ea, %i.ee
  %i.eg = fptrunc double %i.ef to float
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  store float %i.eg, ptr %i.eh, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = sitofp i32 %i.ej to double
  %i.el = fmul double %i.j, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = sitofp i32 %i.en to double
  %i.ep = fmul double %i.c, %i.eo
  %i.eq = fadd double %i.el, %i.ep
  %i.er = fptrunc double %i.eq to float
  %i.es = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store float %i.er, ptr %i.es, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = sitofp i32 %i.eu to double
  %i.ew = fmul double %i.j, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = sitofp i32 %i.ey to double
  %i.fa = fmul double %i.c, %i.ez
  %i.fb = fadd double %i.ew, %i.fa
  %i.fc = fptrunc double %i.fb to float
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  store float %i.fc, ptr %i.fd, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ff = load i32, ptr %i.fe, align 4
  %i.fg = sitofp i32 %i.ff to double
  %i.fh = fmul double %i.j, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = sitofp i32 %i.fj to double
  %i.fl = fmul double %i.c, %i.fk
  %i.fm = fadd double %i.fh, %i.fl
  %i.fn = fptrunc double %i.fm to float
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store float %i.fn, ptr %i.fo, align 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = sitofp i32 %i.fq to double
  %i.fs = fmul double %i.j, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = sitofp i32 %i.fu to double
  %i.fw = fmul double %i.c, %i.fv
  %i.fx = fadd double %i.fs, %i.fw
  %i.fy = fptrunc double %i.fx to float
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ae, i64 52
  store float %i.fy, ptr %i.fz, align 4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.gb = load i32, ptr %i.ga, align 4
  %i.gc = sitofp i32 %i.gb to double
  %i.gd = fmul double %i.j, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = sitofp i32 %i.gf to double
  %i.gh = fmul double %i.c, %i.gg
  %i.gi = fadd double %i.gd, %i.gh
end_hunk_0
