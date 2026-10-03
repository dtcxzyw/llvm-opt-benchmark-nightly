Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@ImageFormat:bb.a

bb.f:                                             ; preds = %bb.t, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.t ] ; 18 uses
  %.0159174.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.t ] ; 23 uses
  switch i32 %i.k, label %bb.t [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 5, label %bb.i
    i32 3, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.l
    i32 4, label %bb.m
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 10, label %bb.p
    i32 11, label %bb.q
    i32 12, label %bb.r
    i32 13, label %bb.s
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.t = load i8, ptr %i.s, align 1
  %i.u = uitofp i8 %i.t to float
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.w = fdiv float %i.u, 2.550000e+02
  %i.x = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.w, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.y, ptr %i.v, align 4
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.z = sext i32 %.0159174.i to i64
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = uitofp i8 %i.ab to float
  %i.ad = fdiv float %i.ac, 2.550000e+02          ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 4 uses
  store float %i.ad, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store float %i.ad, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store float %i.ad, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %i.aa, i64 1
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = uitofp i8 %i.ai to float
  %i.ak = fdiv float %i.aj, 2.550000e+02
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store float %i.ak, ptr %i.al, align 4
  %i.am = add nsw i32 %.0159174.i, 2
  br label %bb.t

bb.i:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = zext i16 %i.ao to i32                   ; 4 uses
  %i.aq = lshr i32 %i.ap, 11
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.at = lshr i32 %i.ap, 6
  %i.au = and i32 %i.at, 31
  %i.av = uitofp nneg i32 %i.au to float
  %i.aw = lshr i32 %i.ap, 1
  %i.ax = and i32 %i.aw, 31
  %i.ay = uitofp nneg i32 %i.ax to float
  %i.az = and i32 %i.ap, 1
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = select i1 %i.ba, float 0.000000e+00, float 1.000000e+00
  %i.bc = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.av, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.ay, i64 2
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 3
  %i.bg = fmul <4 x float> %i.bf, <float f0x3D042108, float f0x3D042108, float f0x3D042108, float 1.000000e+00>
  store <4 x float> %i.bg, ptr %i.as, align 4
  br label %bb.t

bb.j:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = zext i16 %i.bi to i32                   ; 3 uses
  %i.bk = lshr i32 %i.bj, 11
  %i.bl = uitofp nneg i32 %i.bk to float
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.bn = lshr i32 %i.bj, 5
  %i.bo = and i32 %i.bn, 63
  %i.bp = uitofp nneg i32 %i.bo to float
  %i.bq = and i32 %i.bj, 31
  %i.br = uitofp nneg i32 %i.bq to float
  %i.bs = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bl, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.br, i64 2
  %i.bv = fmul nnan <4 x float> %i.bu, <float f0x3D042108, float f0x3C820821, float f0x3D042108, float 1.000000e+00>
  store <4 x float> %i.bv, ptr %i.bm, align 4
  br label %bb.t

bb.k:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = zext i16 %i.bx to i32                   ; 4 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.ca = lshr i32 %i.by, 12
  %i.cb = lshr i32 %i.by, 8
  %i.cc = lshr i32 %i.by, 4
  %i.cd = insertelement <4 x i32> poison, i32 %i.ca, i64 0
  %i.ce = insertelement <4 x i32> %i.cd, i32 %i.cb, i64 1
  %i.cf = insertelement <4 x i32> %i.ce, i32 %i.cc, i64 2
  %i.cg = insertelement <4 x i32> %i.cf, i32 %i.by, i64 3
  %i.ch = and <4 x i32> %i.cg, <i32 -1, i32 15, i32 15, i32 15>
  %i.ci = uitofp nneg <4 x i32> %i.ch to <4 x float>
  %i.cj = fmul nnan <4 x float> %i.ci, splat (float f0x3D888889)
  store <4 x float> %i.cj, ptr %i.bz, align 4
  br label %bb.t

bb.l:                                             ; preds = %bb.f
  %i.ck = sext i32 %.0159174.i to i64
  %i.cl = getelementptr inbounds i8, ptr %i.a, i64 %i.ck ; 4 uses
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = uitofp i8 %i.cm to float
  %i.co = fdiv float %i.cn, 2.550000e+02
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 4 uses
  store float %i.co, ptr %i.cp, align 4
  %i.cq = getelementptr i8, ptr %i.cl, i64 1
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = uitofp i8 %i.cr to float
  %i.ct = fdiv float %i.cs, 2.550000e+02
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store float %i.ct, ptr %i.cu, align 4
  %i.cv = getelementptr i8, ptr %i.cl, i64 2
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = uitofp i8 %i.cw to float
  %i.cy = fdiv float %i.cx, 2.550000e+02
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store float %i.cy, ptr %i.cz, align 4
  %i.da = getelementptr i8, ptr %i.cl, i64 3
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = uitofp i8 %i.db to float
  %i.dd = fdiv float %i.dc, 2.550000e+02
  %i.de = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store float %i.dd, ptr %i.de, align 4
  %i.df = add nsw i32 %.0159174.i, 4
  br label %bb.t

bb.m:                                             ; preds = %bb.f
  %i.dg = sext i32 %.0159174.i to i64
  %i.dh = getelementptr inbounds i8, ptr %i.a, i64 %i.dg ; 3 uses
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = uitofp i8 %i.di to float
  %i.dk = fdiv float %i.dj, 2.550000e+02
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 4 uses
  store float %i.dk, ptr %i.dl, align 4
  %i.dm = getelementptr i8, ptr %i.dh, i64 1
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = uitofp i8 %i.dn to float
  %i.dp = fdiv float %i.do, 2.550000e+02
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store float %i.dp, ptr %i.dq, align 4
  %i.dr = getelementptr i8, ptr %i.dh, i64 2
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = uitofp i8 %i.ds to float
  %i.du = fdiv float %i.dt, 2.550000e+02
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store float %i.du, ptr %i.dv, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store float 1.000000e+00, ptr %i.dw, align 4
  %i.dx = add nsw i32 %.0159174.i, 3
  br label %bb.t

bb.n:                                             ; preds = %bb.f
  %i.dy = sext i32 %.0159174.i to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 3 uses
  store float %i.ea, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store <2 x float> zeroinitializer, ptr %i.ec, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store float 1.000000e+00, ptr %i.ed, align 4
  %i.ee = add nsw i32 %.0159174.i, 1
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ef = sext i32 %.0159174.i to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ef ; 3 uses
  %i.eh = load float, ptr %i.eg, align 4
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 3 uses
  store float %i.eh, ptr %i.ei, align 4
  %i.ej = getelementptr i8, ptr %i.eg, i64 4
  %i.ek = load float, ptr %i.ej, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store float %i.ek, ptr %i.el, align 4
  %i.em = getelementptr i8, ptr %i.eg, i64 8
  %i.en = load float, ptr %i.em, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ep = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.en, i64 0
  store <2 x float> %i.ep, ptr %i.eo, align 4
  %i.eq = add nsw i32 %.0159174.i, 3
  br label %bb.t

bb.p:                                             ; preds = %bb.f
  %i.er = sext i32 %.0159174.i to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.er ; 4 uses
  %2 = load float, ptr %i.es, align 4
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 4 uses
  store float %2, ptr %i.et, align 4
  %3 = getelementptr i8, ptr %i.es, i64 4
  %4 = load float, ptr %3, align 4
  %5 = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  store float %4, ptr %5, align 4
  %6 = getelementptr i8, ptr %i.es, i64 8
  %7 = load float, ptr %6, align 4
  %8 = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store float %7, ptr %8, align 4
  %9 = getelementptr i8, ptr %i.es, i64 12
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  store float %10, ptr %11, align 4
  %i.eu = add nsw i32 %.0159174.i, 4
  br label %bb.t

bb.q:                                             ; preds = %bb.f
  %i.ev = sext i32 %.0159174.i to i64
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2            ; 2 uses
  %i.ey = zext i16 %i.ex to i32                   ; 2 uses
  %i.ez = lshr i32 %i.ey, 10
  %i.fa = and i32 %i.ez, 31                       ; 2 uses
  %i.fb = shl nuw nsw i32 %i.ey, 13               ; 2 uses
  %i.fc = and i32 %i.fb, 8380416                  ; 3 uses
  %i.fd = uitofp nneg i32 %i.fc to float
  %i.fe = bitcast float %i.fd to i32              ; 2 uses
  %i.ff = lshr i32 %i.fe, 23
  %.signext.i.i = sext i16 %i.ex to i32
  %i.fg = and i32 %.signext.i.i, -2147483648
  %.not.i.i = icmp eq i32 %i.fa, 0                ; 2 uses
  %i.fh = shl nuw nsw i32 %i.fa, 23
  %i.fi = add nuw nsw i32 %i.fh, 939524096
  %i.fj = or disjoint i32 %i.fi, %i.fc
  %i.fk = select i1 %.not.i.i, i32 0, i32 %i.fj
  %i.fl = or disjoint i32 %i.fk, %i.fg
  %i.fm = icmp ne i32 %i.fc, 0
  %i.fn = and i1 %.not.i.i, %i.fm
  %i.fo = and i32 %i.fe, 2139095040
  %i.fp = add nsw i32 %i.fo, -310378496
  %i.fq = sub nsw i32 150, %i.ff
  %i.fr = shl i32 %i.fb, %i.fq
  %i.fs = and i32 %i.fr, 8380416
  %i.ft = or disjoint i32 %i.fs, %i.fp
  %i.fu = select i1 %i.fn, i32 %i.ft, i32 0
  %i.fv = or i32 %i.fl, %i.fu
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 3 uses
  store i32 %i.fv, ptr %i.fw, align 4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store <2 x float> zeroinitializer, ptr %i.fx, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store float 1.000000e+00, ptr %i.fy, align 4
  %i.fz = add nsw i32 %.0159174.i, 1
  br label %bb.t

bb.r:                                             ; preds = %bb.f
  %i.ga = sext i32 %.0159174.i to i64
  %i.gb = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ga ; 3 uses
  %i.gc = load i16, ptr %i.gb, align 2            ; 2 uses
  %i.gd = zext i16 %i.gc to i32                   ; 2 uses
  %i.ge = lshr i32 %i.gd, 10
  %i.gf = and i32 %i.ge, 31                       ; 2 uses
  %i.gg = shl nuw nsw i32 %i.gd, 13               ; 2 uses
  %i.gh = and i32 %i.gg, 8380416                  ; 3 uses
  %i.gi = uitofp nneg i32 %i.gh to float
  %i.gj = bitcast float %i.gi to i32              ; 2 uses
  %i.gk = lshr i32 %i.gj, 23
  %.signext.i160.i = sext i16 %i.gc to i32
  %i.gl = and i32 %.signext.i160.i, -2147483648
  %.not.i161.i = icmp eq i32 %i.gf, 0             ; 2 uses
  %i.gm = shl nuw nsw i32 %i.gf, 23
  %i.gn = add nuw nsw i32 %i.gm, 939524096
  %i.go = or disjoint i32 %i.gn, %i.gh
  %i.gp = select i1 %.not.i161.i, i32 0, i32 %i.go
  %i.gq = or disjoint i32 %i.gp, %i.gl
  %i.gr = icmp ne i32 %i.gh, 0
  %i.gs = and i1 %.not.i161.i, %i.gr
  %i.gt = and i32 %i.gj, 2139095040
  %i.gu = add nsw i32 %i.gt, -310378496
  %i.gv = sub nsw i32 150, %i.gk
  %i.gw = shl i32 %i.gg, %i.gv
  %i.gx = and i32 %i.gw, 8380416
  %i.gy = or disjoint i32 %i.gx, %i.gu
  %i.gz = select i1 %i.gs, i32 %i.gy, i32 0
  %i.ha = or i32 %i.gq, %i.gz
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 4 uses
  store i32 %i.ha, ptr %i.hb, align 4
  %i.hc = getelementptr i8, ptr %i.gb, i64 2
  %i.hd = load i16, ptr %i.hc, align 2            ; 2 uses
  %i.he = zext i16 %i.hd to i32                   ; 2 uses
  %i.hf = lshr i32 %i.he, 10
  %i.hg = and i32 %i.hf, 31                       ; 2 uses
  %i.hh = shl nuw nsw i32 %i.he, 13               ; 2 uses
  %i.hi = and i32 %i.hh, 8380416                  ; 3 uses
  %i.hj = uitofp nneg i32 %i.hi to float
  %i.hk = bitcast float %i.hj to i32              ; 2 uses
  %i.hl = lshr i32 %i.hk, 23
  %.signext.i162.i = sext i16 %i.hd to i32
  %i.hm = and i32 %.signext.i162.i, -2147483648
  %.not.i163.i = icmp eq i32 %i.hg, 0             ; 2 uses
  %i.hn = shl nuw nsw i32 %i.hg, 23
  %i.ho = add nuw nsw i32 %i.hn, 939524096
  %i.hp = or disjoint i32 %i.ho, %i.hi
  %i.hq = select i1 %.not.i163.i, i32 0, i32 %i.hp
  %i.hr = or disjoint i32 %i.hq, %i.hm
  %i.hs = icmp ne i32 %i.hi, 0
  %i.ht = and i1 %.not.i163.i, %i.hs
  %i.hu = and i32 %i.hk, 2139095040
  %i.hv = add nsw i32 %i.hu, -310378496
  %i.hw = sub nsw i32 150, %i.hl
  %i.hx = shl i32 %i.hh, %i.hw
  %i.hy = and i32 %i.hx, 8380416
  %i.hz = or disjoint i32 %i.hy, %i.hv
  %i.ia = select i1 %i.ht, i32 %i.hz, i32 0
  %i.ib = or i32 %i.hr, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store i32 %i.ib, ptr %i.ic, align 4
  %i.id = getelementptr i8, ptr %i.gb, i64 4
  %i.ie = load i16, ptr %i.id, align 2            ; 2 uses
  %i.if = zext i16 %i.ie to i32                   ; 2 uses
  %i.ig = lshr i32 %i.if, 10
  %i.ih = and i32 %i.ig, 31                       ; 2 uses
  %i.ii = shl nuw nsw i32 %i.if, 13               ; 2 uses
  %i.ij = and i32 %i.ii, 8380416                  ; 3 uses
  %i.ik = uitofp nneg i32 %i.ij to float
  %i.il = bitcast float %i.ik to i32              ; 2 uses
  %i.im = lshr i32 %i.il, 23
  %.signext.i164.i = sext i16 %i.ie to i32
  %i.in = and i32 %.signext.i164.i, -2147483648
  %.not.i165.i = icmp eq i32 %i.ih, 0             ; 2 uses
  %i.io = shl nuw nsw i32 %i.ih, 23
  %i.ip = add nuw nsw i32 %i.io, 939524096
  %i.iq = or disjoint i32 %i.ip, %i.ij
  %i.ir = select i1 %.not.i165.i, i32 0, i32 %i.iq
  %i.is = or disjoint i32 %i.ir, %i.in
  %i.it = icmp ne i32 %i.ij, 0
  %i.iu = and i1 %.not.i165.i, %i.it
  %i.iv = and i32 %i.il, 2139095040
  %i.iw = add nsw i32 %i.iv, -310378496
  %i.ix = sub nsw i32 150, %i.im
  %i.iy = shl i32 %i.ii, %i.ix
  %i.iz = and i32 %i.iy, 8380416
  %i.ja = or disjoint i32 %i.iz, %i.iw
  %i.jb = select i1 %i.iu, i32 %i.ja, i32 0
  %i.jc = or i32 %i.is, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i32 %i.jc, ptr %i.jd, align 4
  %i.je = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store float 1.000000e+00, ptr %i.je, align 4
  %i.jf = add nsw i32 %.0159174.i, 3
  br label %bb.t

bb.s:                                             ; preds = %bb.f
  %i.jg = sext i32 %.0159174.i to i64
  %i.jh = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.jg ; 4 uses
  %12 = load i16, ptr %i.jh, align 2              ; 2 uses
  %13 = zext i16 %12 to i32                       ; 2 uses
  %14 = lshr i32 %13, 10
  %15 = and i32 %14, 31                           ; 2 uses
  %16 = shl nuw nsw i32 %13, 13                   ; 2 uses
  %17 = and i32 %16, 8380416                      ; 3 uses
  %18 = uitofp nneg i32 %17 to float
  %19 = bitcast float %18 to i32                  ; 2 uses
  %20 = lshr i32 %19, 23
  %.signext.i166.i = sext i16 %12 to i32
  %21 = and i32 %.signext.i166.i, -2147483648
  %.not.i167.i = icmp eq i32 %15, 0               ; 2 uses
  %22 = shl nuw nsw i32 %15, 23
  %23 = add nuw nsw i32 %22, 939524096
  %24 = or disjoint i32 %23, %17
  %25 = select i1 %.not.i167.i, i32 0, i32 %24
  %26 = or disjoint i32 %25, %21
  %27 = icmp ne i32 %17, 0
  %28 = and i1 %.not.i167.i, %27
  %29 = and i32 %19, 2139095040
  %30 = add nsw i32 %29, -310378496
  %31 = sub nsw i32 150, %20
  %32 = shl i32 %16, %31
  %33 = and i32 %32, 8380416
  %34 = or disjoint i32 %33, %30
  %35 = select i1 %28, i32 %34, i32 0
  %36 = or i32 %26, %35
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 4 uses
  store i32 %36, ptr %i.ji, align 4
  %37 = getelementptr i8, ptr %i.jh, i64 2
  %38 = load i16, ptr %37, align 2                ; 2 uses
  %39 = zext i16 %38 to i32                       ; 2 uses
  %40 = lshr i32 %39, 10
  %41 = and i32 %40, 31                           ; 2 uses
  %42 = shl nuw nsw i32 %39, 13                   ; 2 uses
  %43 = and i32 %42, 8380416                      ; 3 uses
  %44 = uitofp nneg i32 %43 to float
  %45 = bitcast float %44 to i32                  ; 2 uses
  %46 = lshr i32 %45, 23
  %.signext.i168.i = sext i16 %38 to i32
  %47 = and i32 %.signext.i168.i, -2147483648
  %.not.i169.i = icmp eq i32 %41, 0               ; 2 uses
  %48 = shl nuw nsw i32 %41, 23
  %49 = add nuw nsw i32 %48, 939524096
  %50 = or disjoint i32 %49, %43
  %51 = select i1 %.not.i169.i, i32 0, i32 %50
  %52 = or disjoint i32 %51, %47
  %53 = icmp ne i32 %43, 0
  %54 = and i1 %.not.i169.i, %53
  %55 = and i32 %45, 2139095040
  %56 = add nsw i32 %55, -310378496
  %57 = sub nsw i32 150, %46
  %58 = shl i32 %42, %57
  %59 = and i32 %58, 8380416
  %60 = or disjoint i32 %59, %56
  %61 = select i1 %54, i32 %60, i32 0
  %62 = or i32 %52, %61
  %63 = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  store i32 %62, ptr %63, align 4
  %64 = getelementptr i8, ptr %i.jh, i64 4
  %65 = load i16, ptr %64, align 2                ; 2 uses
  %66 = zext i16 %65 to i32                       ; 2 uses
  %67 = lshr i32 %66, 10
  %68 = and i32 %67, 31                           ; 2 uses
  %69 = shl nuw nsw i32 %66, 13                   ; 2 uses
  %70 = and i32 %69, 8380416                      ; 3 uses
  %71 = uitofp nneg i32 %70 to float
  %72 = bitcast float %71 to i32                  ; 2 uses
  %73 = lshr i32 %72, 23
  %.signext.i170.i = sext i16 %65 to i32
  %74 = and i32 %.signext.i170.i, -2147483648
  %.not.i171.i = icmp eq i32 %68, 0               ; 2 uses
  %75 = shl nuw nsw i32 %68, 23
  %76 = add nuw nsw i32 %75, 939524096
  %77 = or disjoint i32 %76, %70
  %78 = select i1 %.not.i171.i, i32 0, i32 %77
  %79 = or disjoint i32 %78, %74
  %80 = icmp ne i32 %70, 0
  %81 = and i1 %.not.i171.i, %80
  %82 = and i32 %72, 2139095040
  %83 = add nsw i32 %82, -310378496
  %84 = sub nsw i32 150, %73
  %85 = shl i32 %69, %84
  %86 = and i32 %85, 8380416
  %87 = or disjoint i32 %86, %83
  %88 = select i1 %81, i32 %87, i32 0
  %89 = or i32 %79, %88
  %90 = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store i32 %89, ptr %90, align 4
  %91 = getelementptr i8, ptr %i.jh, i64 6
  %92 = load i16, ptr %91, align 2                ; 2 uses
  %93 = zext i16 %92 to i32                       ; 2 uses
  %94 = lshr i32 %93, 10
  %95 = and i32 %94, 31                           ; 2 uses
  %96 = shl nuw nsw i32 %93, 13                   ; 2 uses
  %97 = and i32 %96, 8380416                      ; 3 uses
  %98 = uitofp nneg i32 %97 to float
  %99 = bitcast float %98 to i32                  ; 2 uses
  %100 = lshr i32 %99, 23
  %.signext.i172.i = sext i16 %92 to i32
  %101 = and i32 %.signext.i172.i, -2147483648
  %.not.i173.i = icmp eq i32 %95, 0               ; 2 uses
  %102 = shl nuw nsw i32 %95, 23
  %103 = add nuw nsw i32 %102, 939524096
  %104 = or disjoint i32 %103, %97
  %105 = select i1 %.not.i173.i, i32 0, i32 %104
  %106 = or disjoint i32 %105, %101
  %107 = icmp ne i32 %97, 0
  %108 = and i1 %.not.i173.i, %107
  %109 = and i32 %99, 2139095040
  %110 = add nsw i32 %109, -310378496
  %111 = sub nsw i32 150, %100
  %112 = shl i32 %96, %111
  %113 = and i32 %112, 8380416
  %114 = or disjoint i32 %113, %110
  %115 = select i1 %108, i32 %114, i32 0
  %116 = or i32 %106, %115
  %117 = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  store i32 %116, ptr %117, align 4
  %i.jj = add nsw i32 %.0159174.i, 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.1.i = phi i32 [ %.0159174.i, %bb.f ], [ %.0159174.i, %bb.g ], [ %i.am, %bb.h ], [ %.0159174.i, %bb.i ], [ %.0159174.i, %bb.j ], [ %.0159174.i, %bb.k ], [ %i.df, %bb.l ], [ %i.dx, %bb.m ], [ %i.ee, %bb.n ], [ %i.eq, %bb.o ], [ %i.eu, %bb.p ], [ %i.fz, %bb.q ], [ %i.jf, %bb.r ], [ %i.jj, %bb.s ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %LoadImageDataNormalized.exit.loopexit, label %bb.f

LoadImageDataNormalized.exit.loopexit:            ; preds = %bb.t
  %.pre = load ptr, ptr %0, align 8
  br label %LoadImageDataNormalized.exit

LoadImageDataNormalized.exit:                     ; preds = %LoadImageDataNormalized.exit.loopexit, %.preheader.i
  %i.jk = phi ptr [ %.pre, %LoadImageDataNormalized.exit.loopexit ], [ %i.a, %.preheader.i ]
  tail call void @free(ptr noundef %i.jk) #52
  store ptr null, ptr %0, align 8
  store i32 %1, ptr %i.j, align 4
  switch i32 %1, label %.loopexit [
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
    i32 4, label %bb.x
    i32 5, label %bb.y
    i32 6, label %bb.z
    i32 7, label %bb.aa
    i32 8, label %bb.ab
    i32 9, label %bb.ac
    i32 10, label %bb.ad
    i32 11, label %bb.ae
    i32 12, label %bb.af
    i32 13, label %bb.ag
  ]

bb.u:                                             ; preds = %LoadImageDataNormalized.exit
  %i.jl = load i32, ptr %i.c, align 8
  %i.jm = load i32, ptr %i.f, align 4
  %i.jn = mul nsw i32 %i.jm, %i.jl
  %i.jo = sext i32 %i.jn to i64
  %i.jp = tail call noalias ptr @malloc(i64 noundef %i.jo) #53
  store ptr %i.jp, ptr %0, align 8
  %i.jq = load i32, ptr %i.c, align 8
  %i.jr = load i32, ptr %i.f, align 4
  %i.js = mul nsw i32 %i.jr, %i.jq
  %i.jt = icmp sgt i32 %i.js, 0
  br i1 %i.jt, label %.lr.ph344, label %.loopexit

.lr.ph344:                                        ; preds = %bb.u, %.lr.ph344
  %indvars.iv419 = phi i64 [ %indvars.iv.next420, %.lr.ph344 ], [ 0, %bb.u ] ; 3 uses
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv419 ; 2 uses
  %i.jv = load float, ptr %i.ju, align 4
  %i.jw = fmul float %i.jv, 2.990000e-01
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %i.jy = load <2 x float>, ptr %i.jx, align 4
  %i.jz = fmul <2 x float> %i.jy, <float 5.870000e-01, float 1.140000e-01> ; 2 uses
  %i.ka = extractelement <2 x float> %i.jz, i64 0
  %i.kb = fadd float %i.jw, %i.ka
  %i.kc = extractelement <2 x float> %i.jz, i64 1
  %i.kd = fadd float %i.kb, %i.kc
  %i.ke = fmul float %i.kd, 2.550000e+02
  %i.kf = fptoui float %i.ke to i8
  %i.kg = load ptr, ptr %0, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %indvars.iv419
  store i8 %i.kf, ptr %i.kh, align 1
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 2 uses
  %i.ki = load i32, ptr %i.c, align 8
  %i.kj = load i32, ptr %i.f, align 4
  %i.kk = mul nsw i32 %i.kj, %i.ki
  %i.kl = sext i32 %i.kk to i64
  %i.km = icmp slt i64 %indvars.iv.next420, %i.kl
  br i1 %i.km, label %.lr.ph344, label %.loopexit

bb.v:                                             ; preds = %LoadImageDataNormalized.exit
  %i.kn = load i32, ptr %i.c, align 8
  %i.ko = load i32, ptr %i.f, align 4
  %i.kp = shl i32 %i.kn, 1
  %i.kq = mul i32 %i.kp, %i.ko
  %i.kr = sext i32 %i.kq to i64
  %i.ks = tail call noalias ptr @malloc(i64 noundef %i.kr) #53
  store ptr %i.ks, ptr %0, align 8
  %i.kt = load i32, ptr %i.c, align 8
  %i.ku = load i32, ptr %i.f, align 4
  %i.kv = shl i32 %i.kt, 1
  %i.kw = mul i32 %i.kv, %i.ku
  %i.kx = icmp sgt i32 %i.kw, 0
  br i1 %i.kx, label %.lr.ph342, label %.loopexit

.lr.ph342:                                        ; preds = %bb.v, %.lr.ph342
  %indvars.iv414 = phi i64 [ %indvars.iv.next415, %.lr.ph342 ], [ 0, %bb.v ] ; 3 uses
  %indvars.iv412 = phi i64 [ %indvars.iv.next413, %.lr.ph342 ], [ 0, %bb.v ] ; 2 uses
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv412 ; 3 uses
  %i.kz = load float, ptr %i.ky, align 4
  %i.la = fmul float %i.kz, 2.990000e-01
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.lc = load <2 x float>, ptr %i.lb, align 4
  %i.ld = fmul <2 x float> %i.lc, <float 5.870000e-01, float 1.140000e-01> ; 2 uses
  %i.le = extractelement <2 x float> %i.ld, i64 0
  %i.lf = fadd float %i.la, %i.le
  %i.lg = extractelement <2 x float> %i.ld, i64 1
  %i.lh = fadd float %i.lf, %i.lg
  %i.li = fmul float %i.lh, 2.550000e+02
  %i.lj = fptoui float %i.li to i8
  %i.lk = load ptr, ptr %0, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %indvars.iv414
  store i8 %i.lj, ptr %i.ll, align 1
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.ln = load float, ptr %i.lm, align 4
  %i.lo = fmul float %i.ln, 2.550000e+02
  %i.lp = fptoui float %i.lo to i8
  %i.lq = load ptr, ptr %0, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 %indvars.iv414
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 1
  store i8 %i.lp, ptr %i.ls, align 1
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 2 ; 2 uses
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 1
  %i.lt = load i32, ptr %i.c, align 8
  %i.lu = load i32, ptr %i.f, align 4
  %i.lv = shl i32 %i.lt, 1
  %i.lw = mul i32 %i.lv, %i.lu
  %i.lx = sext i32 %i.lw to i64
  %i.ly = icmp slt i64 %indvars.iv.next415, %i.lx
  br i1 %i.ly, label %.lr.ph342, label %.loopexit

bb.w:                                             ; preds = %LoadImageDataNormalized.exit
  %i.lz = load i32, ptr %i.c, align 8
  %i.ma = load i32, ptr %i.f, align 4
  %i.mb = mul nsw i32 %i.ma, %i.lz
  %i.mc = sext i32 %i.mb to i64
  %i.md = shl nsw i64 %i.mc, 1
  %i.me = tail call noalias ptr @malloc(i64 noundef %i.md) #53
  store ptr %i.me, ptr %0, align 8
  %i.mf = load i32, ptr %i.c, align 8
  %i.mg = load i32, ptr %i.f, align 4
  %i.mh = mul nsw i32 %i.mg, %i.mf
  %i.mi = icmp sgt i32 %i.mh, 0
  br i1 %i.mi, label %.lr.ph339, label %.loopexit

.lr.ph339:                                        ; preds = %bb.w, %.lr.ph339
  %indvars.iv409 = phi i64 [ %indvars.iv.next410, %.lr.ph339 ], [ 0, %bb.w ] ; 3 uses
  %i.mj = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv409 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load float, ptr %i.mk, align 4
  %i.mm = fmul float %i.ml, 3.100000e+01
  %i.mn = tail call float @llvm.round.f32(float %i.mm)
  %i.mo = fptoui float %i.mn to i8
  %i.mp = load <2 x float>, ptr %i.mj, align 4
  %i.mq = fmul <2 x float> %i.mp, <float 3.100000e+01, float 6.300000e+01>
  %i.mr = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.mq)
  %i.ms = fptoui <2 x float> %i.mr to <2 x i8>
  %i.mt = zext <2 x i8> %i.ms to <2 x i16>
  %i.mu = shl <2 x i16> %i.mt, <i16 11, i16 5>    ; 2 uses
  %shift = shufflevector <2 x i16> %i.mu, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or <2 x i16> %shift, %i.mu
  %i.mv = extractelement <2 x i16> %foldExtExtBinop, i64 0
  %i.mw = zext i8 %i.mo to i16
  %i.mx = or i16 %i.mv, %i.mw
  %i.my = load ptr, ptr %0, align 8
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %i.my, i64 %indvars.iv409
  store i16 %i.mx, ptr %i.mz, align 2
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %i.na = load i32, ptr %i.c, align 8
  %i.nb = load i32, ptr %i.f, align 4
  %i.nc = mul nsw i32 %i.nb, %i.na
  %i.nd = sext i32 %i.nc to i64
  %i.ne = icmp slt i64 %indvars.iv.next410, %i.nd
  br i1 %i.ne, label %.lr.ph339, label %.loopexit

bb.x:                                             ; preds = %LoadImageDataNormalized.exit
  %i.nf = load i32, ptr %i.c, align 8
  %i.ng = load i32, ptr %i.f, align 4
  %i.nh = mul i32 %i.nf, 3
  %i.ni = mul i32 %i.nh, %i.ng
  %i.nj = sext i32 %i.ni to i64
  %i.nk = tail call noalias ptr @malloc(i64 noundef %i.nj) #53
  store ptr %i.nk, ptr %0, align 8
  %i.nl = load i32, ptr %i.c, align 8
  %i.nm = load i32, ptr %i.f, align 4
  %i.nn = mul i32 %i.nl, 3
  %i.no = mul i32 %i.nn, %i.nm
  %i.np = icmp sgt i32 %i.no, 0
  br i1 %i.np, label %.lr.ph337, label %.loopexit

.lr.ph337:                                        ; preds = %bb.x, %.lr.ph337
  %indvars.iv404 = phi i64 [ %indvars.iv.next405, %.lr.ph337 ], [ 0, %bb.x ] ; 4 uses
  %indvars.iv402 = phi i64 [ %indvars.iv.next403, %.lr.ph337 ], [ 0, %bb.x ] ; 2 uses
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv402 ; 3 uses
  %i.nr = load float, ptr %i.nq, align 4
  %i.ns = fmul float %i.nr, 2.550000e+02
  %i.nt = fptoui float %i.ns to i8
  %i.nu = load ptr, ptr %0, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %indvars.iv404
  store i8 %i.nt, ptr %i.nv, align 1
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %118 = load float, ptr %i.nw, align 4
  %119 = fmul float %118, 2.550000e+02
  %120 = fptoui float %119 to i8
  %121 = load ptr, ptr %0, align 8
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 %indvars.iv404
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 1
  store i8 %120, ptr %123, align 1
  %124 = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %125 = load float, ptr %124, align 4
  %126 = fmul float %125, 2.550000e+02
  %i.nx = fptoui float %126 to i8
  %i.ny = load ptr, ptr %0, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 %indvars.iv404
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 2
  store i8 %i.nx, ptr %i.oa, align 1
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 3 ; 2 uses
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1
  %i.ob = load i32, ptr %i.c, align 8
  %i.oc = load i32, ptr %i.f, align 4
  %i.od = mul i32 %i.ob, 3
  %i.oe = mul i32 %i.od, %i.oc
  %i.of = sext i32 %i.oe to i64
  %i.og = icmp slt i64 %indvars.iv.next405, %i.of
  br i1 %i.og, label %.lr.ph337, label %.loopexit

bb.y:                                             ; preds = %LoadImageDataNormalized.exit
  %i.oh = load i32, ptr %i.c, align 8
  %i.oi = load i32, ptr %i.f, align 4
  %i.oj = mul nsw i32 %i.oi, %i.oh
  %i.ok = sext i32 %i.oj to i64
  %i.ol = shl nsw i64 %i.ok, 1
  %i.om = tail call noalias ptr @malloc(i64 noundef %i.ol) #53
  store ptr %i.om, ptr %0, align 8
  %i.on = load i32, ptr %i.c, align 8
  %i.oo = load i32, ptr %i.f, align 4
  %i.op = mul nsw i32 %i.oo, %i.on
  %i.oq = icmp sgt i32 %i.op, 0
  br i1 %i.oq, label %.lr.ph334, label %.loopexit

.lr.ph334:                                        ; preds = %bb.y, %.lr.ph334
  %indvars.iv399 = phi i64 [ %indvars.iv.next400, %.lr.ph334 ], [ 0, %bb.y ] ; 3 uses
  %i.or = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv399 ; 3 uses
  %i.os = load float, ptr %i.or, align 4
  %i.ot = fmul float %i.os, 3.100000e+01
  %i.ou = tail call float @llvm.round.f32(float %i.ot)
  %i.ov = fptoui float %i.ou to i8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %i.ox = getelementptr inbounds nuw i8, ptr %i.or, i64 12
  %i.oy = load float, ptr %i.ox, align 4
  %i.oz = fcmp ogt float %i.oy, f0x3E48C8C9
  %i.pa = zext i8 %i.ov to i16
  %i.pb = shl i16 %i.pa, 11
  %i.pc = load <2 x float>, ptr %i.ow, align 4
  %i.pd = fmul <2 x float> %i.pc, splat (float 3.100000e+01)
  %i.pe = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.pd)
  %i.pf = fptoui <2 x float> %i.pe to <2 x i8>
  %i.pg = zext <2 x i8> %i.pf to <2 x i16>
  %i.ph = shl nuw nsw <2 x i16> %i.pg, <i16 6, i16 1> ; 2 uses
  %i.pi = zext i1 %i.oz to i16
  %i.pj = or disjoint i16 %i.pb, %i.pi
  %i.pk = extractelement <2 x i16> %i.ph, i64 0
  %i.pl = or i16 %i.pj, %i.pk
  %i.pm = extractelement <2 x i16> %i.ph, i64 1
  %i.pn = or i16 %i.pl, %i.pm
  %i.po = load ptr, ptr %0, align 8
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %i.po, i64 %indvars.iv399
  store i16 %i.pn, ptr %i.pp, align 2
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %i.pq = load i32, ptr %i.c, align 8
  %i.pr = load i32, ptr %i.f, align 4
  %i.ps = mul nsw i32 %i.pr, %i.pq
  %i.pt = sext i32 %i.ps to i64
  %i.pu = icmp slt i64 %indvars.iv.next400, %i.pt
  br i1 %i.pu, label %.lr.ph334, label %.loopexit

bb.z:                                             ; preds = %LoadImageDataNormalized.exit
  %i.pv = load i32, ptr %i.c, align 8
  %i.pw = load i32, ptr %i.f, align 4
  %i.px = mul nsw i32 %i.pw, %i.pv
  %i.py = sext i32 %i.px to i64
  %i.pz = shl nsw i64 %i.py, 1
  %i.qa = tail call noalias ptr @malloc(i64 noundef %i.pz) #53
  store ptr %i.qa, ptr %0, align 8
  %i.qb = load i32, ptr %i.c, align 8
  %i.qc = load i32, ptr %i.f, align 4
  %i.qd = mul nsw i32 %i.qc, %i.qb
  %i.qe = icmp sgt i32 %i.qd, 0
  br i1 %i.qe, label %.lr.ph332, label %.loopexit

.lr.ph332:                                        ; preds = %bb.z, %.lr.ph332
  %indvars.iv396 = phi i64 [ %indvars.iv.next397, %.lr.ph332 ], [ 0, %bb.z ] ; 3 uses
  %i.qf = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv396
  %i.qg = load <4 x float>, ptr %i.qf, align 4
  %i.qh = fmul <4 x float> %i.qg, splat (float 1.500000e+01)
  %i.qi = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.qh)
  %i.qj = fptoui <4 x float> %i.qi to <4 x i8>
  %i.qk = zext <4 x i8> %i.qj to <4 x i16>
  %i.ql = shl <4 x i16> %i.qk, <i16 12, i16 8, i16 4, i16 0>
  %i.qm = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.ql)
  %i.qn = load ptr, ptr %0, align 8
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %indvars.iv396
  store i16 %i.qm, ptr %i.qo, align 2
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 2 uses
  %i.qp = load i32, ptr %i.c, align 8
  %i.qq = load i32, ptr %i.f, align 4
  %i.qr = mul nsw i32 %i.qq, %i.qp
  %i.qs = sext i32 %i.qr to i64
  %i.qt = icmp slt i64 %indvars.iv.next397, %i.qs
  br i1 %i.qt, label %.lr.ph332, label %.loopexit

bb.aa:                                            ; preds = %LoadImageDataNormalized.exit
  %i.qu = load i32, ptr %i.c, align 8
  %i.qv = load i32, ptr %i.f, align 4
  %i.qw = shl i32 %i.qu, 2
  %i.qx = mul i32 %i.qw, %i.qv
  %i.qy = sext i32 %i.qx to i64
  %i.qz = tail call noalias ptr @malloc(i64 noundef %i.qy) #53
  store ptr %i.qz, ptr %0, align 8
  %i.ra = load i32, ptr %i.c, align 8
  %i.rb = load i32, ptr %i.f, align 4
  %i.rc = shl i32 %i.ra, 2
  %i.rd = mul i32 %i.rc, %i.rb
  %i.re = icmp sgt i32 %i.rd, 0
  br i1 %i.re, label %.lr.ph330, label %.loopexit

.lr.ph330:                                        ; preds = %bb.aa, %.lr.ph330
  %indvars.iv391 = phi i64 [ %indvars.iv.next392, %.lr.ph330 ], [ 0, %bb.aa ] ; 5 uses
  %indvars.iv389 = phi i64 [ %indvars.iv.next390, %.lr.ph330 ], [ 0, %bb.aa ] ; 2 uses
  %i.rf = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv389 ; 4 uses
  %127 = load float, ptr %i.rf, align 4
  %128 = fmul float %127, 2.550000e+02
  %129 = fptoui float %128 to i8
  %130 = load ptr, ptr %0, align 8
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 %indvars.iv391
  store i8 %129, ptr %131, align 1
  %132 = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  %133 = load float, ptr %132, align 4
  %134 = fmul float %133, 2.550000e+02
  %i.rg = fptoui float %134 to i8
  %i.rh = load ptr, ptr %0, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 %indvars.iv391
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 1
  store i8 %i.rg, ptr %i.rj, align 1
  %135 = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %136 = load float, ptr %135, align 4
  %137 = fmul float %136, 2.550000e+02
  %i.rk = fptoui float %137 to i8
  %i.rl = load ptr, ptr %0, align 8
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 %indvars.iv391
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 2
  store i8 %i.rk, ptr %i.rn, align 1
  %138 = getelementptr inbounds nuw i8, ptr %i.rf, i64 12
  %139 = load float, ptr %138, align 4
  %140 = fmul float %139, 2.550000e+02
  %i.ro = fptoui float %140 to i8
  %i.rp = load ptr, ptr %0, align 8
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 %indvars.iv391
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 3
  store i8 %i.ro, ptr %i.rr, align 1
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 4 ; 2 uses
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1
  %i.rs = load i32, ptr %i.c, align 8
  %i.rt = load i32, ptr %i.f, align 4
  %i.ru = shl i32 %i.rs, 2
  %i.rv = mul i32 %i.ru, %i.rt
  %i.rw = sext i32 %i.rv to i64
  %i.rx = icmp slt i64 %indvars.iv.next392, %i.rw
  br i1 %i.rx, label %.lr.ph330, label %.loopexit

bb.ab:                                            ; preds = %LoadImageDataNormalized.exit
  %i.ry = load i32, ptr %i.c, align 8
  %i.rz = load i32, ptr %i.f, align 4
  %i.sa = mul nsw i32 %i.rz, %i.ry
  %i.sb = sext i32 %i.sa to i64
  %i.sc = shl nsw i64 %i.sb, 2
  %i.sd = tail call noalias ptr @malloc(i64 noundef %i.sc) #53
  store ptr %i.sd, ptr %0, align 8
  %i.se = load i32, ptr %i.c, align 8
  %i.sf = load i32, ptr %i.f, align 4
  %i.sg = mul nsw i32 %i.sf, %i.se
  %i.sh = icmp sgt i32 %i.sg, 0
  br i1 %i.sh, label %.lr.ph327, label %.loopexit

.lr.ph327:                                        ; preds = %bb.ab, %.lr.ph327
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %.lr.ph327 ], [ 0, %bb.ab ] ; 3 uses
  %i.si = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv386 ; 2 uses
  %i.sj = load float, ptr %i.si, align 4
  %i.sk = fmul float %i.sj, 2.990000e-01
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 4
  %i.sm = load <2 x float>, ptr %i.sl, align 4
  %i.sn = fmul <2 x float> %i.sm, <float 5.870000e-01, float 1.140000e-01> ; 2 uses
  %i.so = extractelement <2 x float> %i.sn, i64 0
  %i.sp = fadd float %i.sk, %i.so
  %i.sq = extractelement <2 x float> %i.sn, i64 1
  %i.sr = fadd float %i.sp, %i.sq
  %i.ss = load ptr, ptr %0, align 8
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %indvars.iv386
  store float %i.sr, ptr %i.st, align 4
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %i.su = load i32, ptr %i.c, align 8
  %i.sv = load i32, ptr %i.f, align 4
  %i.sw = mul nsw i32 %i.sv, %i.su
  %i.sx = sext i32 %i.sw to i64
  %i.sy = icmp slt i64 %indvars.iv.next387, %i.sx
  br i1 %i.sy, label %.lr.ph327, label %.loopexit

bb.ac:                                            ; preds = %LoadImageDataNormalized.exit
  %i.sz = load i32, ptr %i.c, align 8
  %i.ta = load i32, ptr %i.f, align 4
  %i.tb = mul i32 %i.sz, 3
  %i.tc = mul i32 %i.tb, %i.ta
  %i.td = sext i32 %i.tc to i64
  %i.te = shl nsw i64 %i.td, 2
  %i.tf = tail call noalias ptr @malloc(i64 noundef %i.te) #53
  store ptr %i.tf, ptr %0, align 8
  %i.tg = load i32, ptr %i.c, align 8
  %i.th = load i32, ptr %i.f, align 4
  %i.ti = mul i32 %i.tg, 3
  %i.tj = mul i32 %i.ti, %i.th
  %i.tk = icmp sgt i32 %i.tj, 0
  br i1 %i.tk, label %.lr.ph325, label %.loopexit

.lr.ph325:                                        ; preds = %bb.ac, %.lr.ph325
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %.lr.ph325 ], [ 0, %bb.ac ] ; 4 uses
  %indvars.iv379 = phi i64 [ %indvars.iv.next380, %.lr.ph325 ], [ 0, %bb.ac ] ; 2 uses
  %i.tl = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv379 ; 3 uses
  %i.tm = load float, ptr %i.tl, align 4
  %i.tn = load ptr, ptr %0, align 8
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %indvars.iv381
  store float %i.tm, ptr %i.to, align 4
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 4
  %i.tq = load float, ptr %i.tp, align 4
  %i.tr = load ptr, ptr %0, align 8
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %indvars.iv381
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 4
  store float %i.tq, ptr %i.tt, align 4
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tv = load float, ptr %i.tu, align 4
  %i.tw = load ptr, ptr %0, align 8
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %indvars.iv381
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  store float %i.tv, ptr %i.ty, align 4
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 3 ; 2 uses
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1
  %i.tz = load i32, ptr %i.c, align 8
  %i.ua = load i32, ptr %i.f, align 4
  %i.ub = mul i32 %i.tz, 3
  %i.uc = mul i32 %i.ub, %i.ua
  %i.ud = sext i32 %i.uc to i64
  %i.ue = icmp slt i64 %indvars.iv.next382, %i.ud
  br i1 %i.ue, label %.lr.ph325, label %.loopexit

bb.ad:                                            ; preds = %LoadImageDataNormalized.exit
  %i.uf = load i32, ptr %i.c, align 8
  %i.ug = load i32, ptr %i.f, align 4
  %i.uh = shl i32 %i.uf, 2
  %i.ui = mul i32 %i.uh, %i.ug
  %i.uj = sext i32 %i.ui to i64
  %i.uk = shl nsw i64 %i.uj, 2
  %i.ul = tail call noalias ptr @malloc(i64 noundef %i.uk) #53
  store ptr %i.ul, ptr %0, align 8
  %i.um = load i32, ptr %i.c, align 8
  %i.un = load i32, ptr %i.f, align 4
  %i.uo = shl i32 %i.um, 2
  %i.up = mul i32 %i.uo, %i.un
  %i.uq = icmp sgt i32 %i.up, 0
  br i1 %i.uq, label %.lr.ph322, label %.loopexit

.lr.ph322:                                        ; preds = %bb.ad, %.lr.ph322
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %.lr.ph322 ], [ 0, %bb.ad ] ; 5 uses
  %indvars.iv372 = phi i64 [ %indvars.iv.next373, %.lr.ph322 ], [ 0, %bb.ad ] ; 2 uses
  %i.ur = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv372 ; 4 uses
  %i.us = load float, ptr %i.ur, align 4
  %i.ut = load ptr, ptr %0, align 8
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %indvars.iv374
  store float %i.us, ptr %i.uu, align 4
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ur, i64 4
  %i.uw = load float, ptr %i.uv, align 4
  %i.ux = load ptr, ptr %0, align 8
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %indvars.iv374
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 4
  store float %i.uw, ptr %i.uz, align 4
  %i.va = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.vb = load float, ptr %i.va, align 4
  %i.vc = load ptr, ptr %0, align 8
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %indvars.iv374
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  store float %i.vb, ptr %i.ve, align 4
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ur, i64 12
  %i.vg = load float, ptr %i.vf, align 4
  %i.vh = load ptr, ptr %0, align 8
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %indvars.iv374
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 12
  store float %i.vg, ptr %i.vj, align 4
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 4 ; 2 uses
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1
  %i.vk = load i32, ptr %i.c, align 8
  %i.vl = load i32, ptr %i.f, align 4
  %i.vm = shl i32 %i.vk, 2
  %i.vn = mul i32 %i.vm, %i.vl
  %i.vo = sext i32 %i.vn to i64
  %i.vp = icmp slt i64 %indvars.iv.next375, %i.vo
  br i1 %i.vp, label %.lr.ph322, label %.loopexit

bb.ae:                                            ; preds = %LoadImageDataNormalized.exit
  %i.vq = load i32, ptr %i.c, align 8
  %i.vr = load i32, ptr %i.f, align 4
  %i.vs = mul nsw i32 %i.vr, %i.vq
  %i.vt = sext i32 %i.vs to i64
  %i.vu = shl nsw i64 %i.vt, 1
  %i.vv = tail call noalias ptr @malloc(i64 noundef %i.vu) #53
  store ptr %i.vv, ptr %0, align 8
  %i.vw = load i32, ptr %i.c, align 8
  %i.vx = load i32, ptr %i.f, align 4
  %i.vy = mul nsw i32 %i.vx, %i.vw
  %i.vz = icmp sgt i32 %i.vy, 0
  br i1 %i.vz, label %.lr.ph319, label %.loopexit

.lr.ph319:                                        ; preds = %bb.ae, %.lr.ph319
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %.lr.ph319 ], [ 0, %bb.ae ] ; 3 uses
  %i.wa = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv369 ; 2 uses
  %i.wb = load float, ptr %i.wa, align 4
  %i.wc = fmul float %i.wb, 2.990000e-01
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wa, i64 4
  %i.we = load <2 x float>, ptr %i.wd, align 4
  %i.wf = fmul <2 x float> %i.we, <float 5.870000e-01, float 1.140000e-01> ; 2 uses
  %i.wg = extractelement <2 x float> %i.wf, i64 0
  %i.wh = fadd float %i.wc, %i.wg
  %i.wi = extractelement <2 x float> %i.wf, i64 1
  %i.wj = fadd float %i.wh, %i.wi
  %i.wk = bitcast float %i.wj to i32
  %i.wl = add i32 %i.wk, 4096                     ; 3 uses
  %i.wm = lshr i32 %i.wl, 23                      ; 2 uses
  %i.wn = and i32 %i.wm, 255                      ; 4 uses
  %i.wo = and i32 %i.wl, 8388607                  ; 2 uses
  %i.wp = lshr i32 %i.wl, 16
  %i.wq = and i32 %i.wp, 32768
  %i.wr = icmp samesign ugt i32 %i.wn, 112
  %i.ws = shl nuw nsw i32 %i.wm, 10
  %i.wt = and i32 %i.ws, 31744
  %i.wu = lshr i32 %i.wo, 13
  %i.wv = or disjoint i32 %i.wt, %i.wu
  %i.ww = xor i32 %i.wv, 16384
  %i.wx = select i1 %i.wr, i32 %i.ww, i32 0
  %i.wy = add nsw i32 %i.wn, -102
  %i.wz = icmp ult i32 %i.wy, 11
  %i.xa = add nuw nsw i32 %i.wo, 8384512
  %i.xb = sub nsw i32 125, %i.wn
  %i.xc = lshr i32 %i.xa, %i.xb
  %i.xd = add nuw nsw i32 %i.xc, 1
  %i.xe = lshr i32 %i.xd, 1
  %i.xf = select i1 %i.wz, i32 %i.xe, i32 0
  %i.xg = icmp samesign ugt i32 %i.wn, 143
  %i.xh = select i1 %i.xg, i32 32767, i32 0
  %i.xi = or disjoint i32 %i.xh, %i.wq
end_hunk_0
