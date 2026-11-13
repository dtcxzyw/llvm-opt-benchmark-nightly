Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 114
begin_hunk_0_@LoadImageColors:bb.a
    i32 6, label %bb.l
    i32 7, label %bb.m
    i32 4, label %bb.n
    i32 8, label %bb.o
    i32 9, label %bb.p
    i32 10, label %bb.q
    i32 11, label %bb.r
    i32 12, label %bb.s
    i32 13, label %bb.t
  ]

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1               ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.s, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 %i.s, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i8 %i.s, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  store i8 -1, ptr %i.w, align 1
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.x = sext i32 %.0175195 to i64
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1               ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 %i.z, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i8 %i.z, ptr %i.ac, align 1
  %i.ad = getelementptr i8, ptr %i.y, i64 1
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = add nsw i32 %.0175195, 2
  br label %bb.u

bb.j:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2            ; 4 uses
  %i.aj = lshr i16 %i.ai, 8
  %i.ak = trunc nuw i16 %i.aj to i8
  %i.al = and i8 %i.ak, -8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.al, ptr %i.am, align 1
  %i.an = lshr i16 %i.ai, 3
  %i.ao = trunc i16 %i.an to i8
  %i.ap = and i8 %i.ao, -8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %i.ap, ptr %i.aq, align 1
  %.tr179 = trunc i16 %i.ai to i8
  %i.ar = shl i8 %.tr179, 2
  %i.as = and i8 %i.ar, -8
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i8 %i.as, ptr %i.at, align 1
  %i.au = trunc i16 %i.ai to i1
  %i.av = sext i1 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  store i8 %i.av, ptr %i.aw, align 1
  br label %bb.u

bb.k:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv
  %i.ay = load i16, ptr %i.ax, align 2            ; 3 uses
  %i.az = lshr i16 %i.ay, 8
  %i.ba = trunc nuw i16 %i.az to i8
  %i.bb = and i8 %i.ba, -8
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = lshr i16 %i.ay, 3
  %i.be = trunc i16 %i.bd to i8
  %i.bf = and i8 %i.be, -4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store i8 %i.bf, ptr %i.bg, align 1
  %.tr = trunc i16 %i.ay to i8
  %i.bh = shl i8 %.tr, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  store i8 -1, ptr %i.bj, align 1
  br label %bb.u

bb.l:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv
  %i.bl = load i16, ptr %i.bk, align 2            ; 3 uses
  %i.bm = lshr i16 %i.bl, 12
  %i.bn = trunc nuw nsw i16 %i.bm to i8
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.bp = lshr i16 %i.bl, 8
  %i.bq = trunc nuw i16 %i.bp to i8
  %i.br = and i8 %i.bq, 15
  %i.bs = trunc i16 %i.bl to i8                   ; 2 uses
  %i.bt = lshr i8 %i.bs, 4
  %i.bu = and i8 %i.bs, 15
  %i.bv = insertelement <4 x i8> poison, i8 %i.bn, i64 0
  %i.bw = insertelement <4 x i8> %i.bv, i8 %i.br, i64 1
  %i.bx = insertelement <4 x i8> %i.bw, i8 %i.bt, i64 2
  %i.by = insertelement <4 x i8> %i.bx, i8 %i.bu, i64 3
  %i.bz = mul nuw <4 x i8> %i.by, splat (i8 17)
  store <4 x i8> %i.bz, ptr %i.bo, align 1
  br label %bb.u

bb.m:                                             ; preds = %bb.g
  %i.ca = sext i32 %.0175195 to i64
  %i.cb = getelementptr inbounds i8, ptr %i.q, i64 %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.cd = load <4 x i8>, ptr %i.cb, align 1
  store <4 x i8> %i.cd, ptr %i.cc, align 1
  %i.ce = add nsw i32 %.0175195, 4
  br label %bb.u

bb.n:                                             ; preds = %bb.g
  %i.cf = sext i32 %.0175195 to i64
  %i.cg = getelementptr inbounds i8, ptr %i.q, i64 %i.cf ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.ch, ptr %i.ci, align 1
  %i.cj = getelementptr i8, ptr %i.cg, i64 1
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store i8 %i.ck, ptr %i.cl, align 1
  %i.cm = getelementptr i8, ptr %i.cg, i64 2
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store i8 %i.cn, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 3
  store i8 -1, ptr %i.cp, align 1
  %i.cq = add nsw i32 %.0175195, 3
  br label %bb.u

bb.o:                                             ; preds = %bb.g
  %i.cr = sext i32 %.0175195 to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4
  %i.cu = fmul float %i.ct, 2.550000e+02
  %i.cv = fptoui float %i.cu to i8
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.cv, ptr %i.cw, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 0, ptr %i.cx, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i8 0, ptr %i.cy, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 3
  store i8 -1, ptr %i.cz, align 1
  %i.da = add nsw i32 %.0175195, 1
  br label %bb.u

bb.p:                                             ; preds = %bb.g
  %i.db = sext i32 %.0175195 to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.db ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4
  %i.de = fmul float %i.dd, 2.550000e+02
  %i.df = fptoui float %i.de to i8
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.df, ptr %i.dg, align 1
  %i.dh = getelementptr i8, ptr %i.dc, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.dj = load <2 x float>, ptr %i.dh, align 4
  %i.dk = fmul <2 x float> %i.dj, splat (float 2.550000e+02) ; 2 uses
  %i.dl = extractelement <2 x float> %i.dk, i64 0
  %i.dm = fptoui float %i.dl to i8
  store i8 %i.dm, ptr %i.di, align 1
  %i.dn = extractelement <2 x float> %i.dk, i64 1
  %i.do = fptoui float %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  store i8 %i.do, ptr %i.dp, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 3
  store i8 -1, ptr %i.dq, align 1
  %i.dr = add nsw i32 %.0175195, 3
  br label %bb.u

bb.q:                                             ; preds = %bb.g
  %i.ds = sext i32 %.0175195 to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ds
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.dv = load <4 x float>, ptr %i.dt, align 4
  %i.dw = fmul <4 x float> %i.dv, splat (float 2.550000e+02)
  %i.dx = fptoui <4 x float> %i.dw to <4 x i8>
  store <4 x i8> %i.dx, ptr %i.du, align 1
  %i.dy = add nsw i32 %.0175195, 4
  br label %bb.u

bb.r:                                             ; preds = %bb.g
  %i.dz = sext i32 %.0175195 to i64
  %i.ea = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2            ; 2 uses
  %i.ec = zext i16 %i.eb to i32                   ; 2 uses
  %i.ed = lshr i32 %i.ec, 10
  %i.ee = and i32 %i.ed, 31                       ; 2 uses
  %i.ef = shl nuw nsw i32 %i.ec, 13               ; 2 uses
  %i.eg = and i32 %i.ef, 8380416                  ; 3 uses
  %i.eh = uitofp nneg i32 %i.eg to float
  %i.ei = bitcast float %i.eh to i32              ; 2 uses
  %i.ej = lshr i32 %i.ei, 23
  %.signext.i = sext i16 %i.eb to i32
  %i.ek = and i32 %.signext.i, -2147483648
  %.not.i = icmp eq i32 %i.ee, 0
  %i.el = shl nuw nsw i32 %i.ee, 23
  %i.em = add nuw nsw i32 %i.el, 939524096
  %i.en = or disjoint i32 %i.em, %i.eg
  %.not12.i = icmp eq i32 %i.eg, 0
  %i.eo = and i32 %i.ei, 2139095040
  %i.ep = add nsw i32 %i.eo, -310378496
  %i.eq = sub nsw i32 150, %i.ej
  %i.er = shl i32 %i.ef, %i.eq
  %i.es = and i32 %i.er, 8380416
  %i.et = or disjoint i32 %i.es, %i.ep
  %1 = select i1 %.not12.i, i32 0, i32 %i.et
  %i.eu = select i1 %.not.i, i32 %1, i32 %i.en
  %i.ev = or i32 %i.eu, %i.ek
  %i.ew = bitcast i32 %i.ev to float
  %i.ex = fmul float %i.ew, 2.550000e+02
  %i.ey = fptoui float %i.ex to i8
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.ey, ptr %i.ez, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  store i8 0, ptr %i.fa, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  store i8 0, ptr %i.fb, align 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 3
  store i8 -1, ptr %i.fc, align 1
  %i.fd = add nsw i32 %.0175195, 1
  br label %bb.u

bb.s:                                             ; preds = %bb.g
  %i.fe = sext i32 %.0175195 to i64
  %i.ff = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.fe ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 2            ; 2 uses
  %i.fh = zext i16 %i.fg to i32                   ; 2 uses
  %i.fi = lshr i32 %i.fh, 10
  %i.fj = and i32 %i.fi, 31                       ; 2 uses
  %i.fk = shl nuw nsw i32 %i.fh, 13               ; 2 uses
  %i.fl = and i32 %i.fk, 8380416                  ; 3 uses
  %i.fm = uitofp nneg i32 %i.fl to float
  %i.fn = bitcast float %i.fm to i32              ; 2 uses
  %i.fo = lshr i32 %i.fn, 23
  %.signext.i180 = sext i16 %i.fg to i32
  %i.fp = and i32 %.signext.i180, -2147483648
  %.not.i181 = icmp eq i32 %i.fj, 0
  %i.fq = shl nuw nsw i32 %i.fj, 23
  %i.fr = add nuw nsw i32 %i.fq, 939524096
  %i.fs = or disjoint i32 %i.fr, %i.fl
  %.not12.i182 = icmp eq i32 %i.fl, 0
  %i.ft = and i32 %i.fn, 2139095040
  %i.fu = add nsw i32 %i.ft, -310378496
  %i.fv = sub nsw i32 150, %i.fo
  %i.fw = shl i32 %i.fk, %i.fv
  %i.fx = and i32 %i.fw, 8380416
  %i.fy = or disjoint i32 %i.fx, %i.fu
  %2 = select i1 %.not12.i182, i32 0, i32 %i.fy
  %i.fz = select i1 %.not.i181, i32 %2, i32 %i.fs
  %i.ga = or i32 %i.fz, %i.fp
  %i.gb = bitcast i32 %i.ga to float
  %i.gc = fmul float %i.gb, 2.550000e+02
  %i.gd = fptoui float %i.gc to i8
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.gd, ptr %i.ge, align 1
  %i.gf = getelementptr i8, ptr %i.ff, i64 2
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  %i.gh = load <2 x i16>, ptr %i.gf, align 2      ; 2 uses
  %i.gi = zext <2 x i16> %i.gh to <2 x i32>       ; 2 uses
  %i.gj = shl nuw nsw <2 x i32> %i.gi, splat (i32 13) ; 3 uses
  %i.gk = and <2 x i32> %i.gj, splat (i32 8380416) ; 3 uses
  %i.gl = extractelement <2 x i32> %i.gj, i64 0
  %3 = lshr <2 x i32> %i.gi, splat (i32 10)
  %4 = and <2 x i32> %3, splat (i32 31)           ; 2 uses
  %i.gm = uitofp nneg <2 x i32> %i.gk to <2 x float>
  %i.gn = bitcast <2 x float> %i.gm to <2 x i32>  ; 2 uses
  %i.go = lshr <2 x i32> %i.gn, splat (i32 23)
  %i.gp = sext <2 x i16> %i.gh to <2 x i32>
  %i.gq = and <2 x i32> %i.gp, splat (i32 -2147483648)
  %i.gr = icmp eq <2 x i32> %4, zeroinitializer
  %i.gs = shl nuw nsw <2 x i32> %4, splat (i32 23)
  %i.gt = add nuw nsw <2 x i32> %i.gs, splat (i32 939524096)
  %i.gu = or disjoint <2 x i32> %i.gt, %i.gk
  %5 = icmp eq <2 x i32> %i.gk, zeroinitializer
  %i.gv = and <2 x i32> %i.gn, splat (i32 2139095040)
  %i.gw = add nsw <2 x i32> %i.gv, splat (i32 -310378496)
  %i.gx = sub nsw <2 x i32> splat (i32 150), %i.go ; 2 uses
  %i.gy = extractelement <2 x i32> %i.gx, i64 0
  %i.gz = shl i32 %i.gl, %i.gy
  %i.ha = extractelement <2 x i32> %i.gj, i64 1
  %i.hb = extractelement <2 x i32> %i.gx, i64 1
  %i.hc = shl i32 %i.ha, %i.hb
  %i.hd = insertelement <2 x i32> poison, i32 %i.gz, i64 0
  %i.he = insertelement <2 x i32> %i.hd, i32 %i.hc, i64 1
  %i.hf = and <2 x i32> %i.he, splat (i32 8380416)
  %i.hg = or disjoint <2 x i32> %i.hf, %i.gw
  %6 = select <2 x i1> %5, <2 x i32> zeroinitializer, <2 x i32> %i.hg
  %i.hh = select <2 x i1> %i.gr, <2 x i32> %6, <2 x i32> %i.gu
  %i.hi = or <2 x i32> %i.hh, %i.gq
  %i.hj = bitcast <2 x i32> %i.hi to <2 x float>
  %i.hk = fmul <2 x float> %i.hj, splat (float 2.550000e+02) ; 2 uses
  %i.hl = extractelement <2 x float> %i.hk, i64 0
  %i.hm = fptoui float %i.hl to i8
  store i8 %i.hm, ptr %i.gg, align 1
  %i.hn = extractelement <2 x float> %i.hk, i64 1
  %i.ho = fptoui float %i.hn to i8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  store i8 %i.ho, ptr %i.hp, align 1
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ge, i64 3
  store i8 -1, ptr %i.hq, align 1
  %i.hr = add nsw i32 %.0175195, 3
  br label %bb.u

bb.t:                                             ; preds = %bb.g
  %i.hs = sext i32 %.0175195 to i64
  %i.ht = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.hs
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.hv = load <4 x i16>, ptr %i.ht, align 2      ; 3 uses
  %7 = lshr <4 x i16> %i.hv, splat (i16 10)
  %8 = and <4 x i16> %7, splat (i16 31)           ; 2 uses
  %9 = zext <4 x i16> %i.hv to <4 x i32>
  %i.hw = shl nuw nsw <4 x i32> %9, splat (i32 13) ; 2 uses
  %i.hx = and <4 x i32> %i.hw, splat (i32 8380416) ; 3 uses
  %i.hy = uitofp nneg <4 x i32> %i.hx to <4 x float>
  %i.hz = bitcast <4 x float> %i.hy to <4 x i32>  ; 2 uses
  %i.ia = lshr <4 x i32> %i.hz, splat (i32 23)
  %i.ib = sext <4 x i16> %i.hv to <4 x i32>
  %i.ic = and <4 x i32> %i.ib, splat (i32 -2147483648)
  %i.id = icmp eq <4 x i16> %8, zeroinitializer
  %10 = zext nneg <4 x i16> %8 to <4 x i32>
  %11 = shl nuw nsw <4 x i32> %10, splat (i32 23)
  %12 = add nuw nsw <4 x i32> %11, splat (i32 939524096)
  %i.ie = or disjoint <4 x i32> %12, %i.hx
  %13 = icmp eq <4 x i32> %i.hx, zeroinitializer
  %i.if = and <4 x i32> %i.hz, splat (i32 2139095040)
  %i.ig = add nsw <4 x i32> %i.if, splat (i32 -310378496)
  %i.ih = sub nsw <4 x i32> splat (i32 150), %i.ia
  %i.ii = shl <4 x i32> %i.hw, %i.ih
  %i.ij = and <4 x i32> %i.ii, splat (i32 8380416)
  %i.ik = or disjoint <4 x i32> %i.ij, %i.ig
  %14 = select <4 x i1> %13, <4 x i32> zeroinitializer, <4 x i32> %i.ik
  %i.il = select <4 x i1> %i.id, <4 x i32> %14, <4 x i32> %i.ie
  %i.im = or <4 x i32> %i.il, %i.ic
  %i.in = bitcast <4 x i32> %i.im to <4 x float>
  %i.io = fmul <4 x float> %i.in, splat (float 2.550000e+02)
  %i.ip = fptoui <4 x float> %i.io to <4 x i8>
  store <4 x i8> %i.ip, ptr %i.hu, align 1
  %i.iq = add nsw i32 %.0175195, 4
  br label %bb.u

bb.u:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.g
  %.1 = phi i32 [ %.0175195, %bb.g ], [ %.0175195, %bb.h ], [ %i.ag, %bb.i ], [ %.0175195, %bb.j ], [ %.0175195, %bb.k ], [ %.0175195, %bb.l ], [ %i.ce, %bb.m ], [ %i.cq, %bb.n ], [ %i.da, %bb.o ], [ %i.dr, %bb.p ], [ %i.dy, %bb.q ], [ %i.fd, %bb.r ], [ %i.hr, %bb.s ], [ %i.iq, %bb.t ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %bb.u, %bb.f, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.j, %bb.c ], [ %i.j, %bb.f ], [ %i.j, %bb.u ]
  ret ptr %.0
}

declare zeroext i1 @SaveFileData(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @ExportImageToMemory(ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #9 {
bb.a:
  store i32 0, ptr %2, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.h
  br i1 %or.cond5, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4
  %switch.tableidx = add i32 %i.j, -1             ; 2 uses
  %i.k = icmp ult i32 %switch.tableidx, 4
  br i1 %i.k, label %switch.lookup, label %.fold.split

switch.lookup:                                    ; preds = %bb.b
  %i.l = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ExportImageToMemory, i64 %i.l
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.fold.split

.fold.split:                                      ; preds = %bb.b, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 4, %bb.b ] ; 2 uses
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.13) #55
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.fold.split
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.14) #55
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %.fold.split
  %i.q = mul nsw i32 %.0, %i.b
  %i.r = tail call ptr @stbi_write_png_to_mem(ptr noundef nonnull %i.g, i32 noundef %i.q, i32 noundef %i.b, i32 noundef %i.e, i32 noundef %.0, ptr noundef nonnull %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.014 = phi ptr [ null, %bb.a ], [ %i.r, %bb.d ], [ null, %bb.c ]
  ret ptr %.014
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @ExportImageAsCode(ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4              ; 4 uses
  %switch.tableidx = add i32 %i.g, -1             ; 2 uses
  %i.h = icmp ult i32 %switch.tableidx, 24
  br i1 %i.h, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.i = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ImageDraw.30, i64 %i.i
  %switch.load = load double, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0.i = phi double [ 0.000000e+00, %bb.a ], [ %switch.load, %switch.lookup ]
  %i.j = sitofp i32 %i.c to double
  %i.k = fmul nnan double %.0.i, %i.j
  %i.l = sitofp i32 %i.e to double
  %i.m = fmul double %i.k, %i.l
  %i.n = fptosi double %i.m to i32                ; 2 uses
  %i.o = icmp slt i32 %i.c, 4
  %i.p = icmp slt i32 %i.e, 4
  %or.cond.i = and i1 %i.o, %i.p
  br i1 %or.cond.i, label %bb.c, label %GetPixelDataSize.exit

bb.c:                                             ; preds = %bb.b
  %i.q = and i32 %i.g, -2
  %or.cond3.i = icmp eq i32 %i.q, 14
  br i1 %or.cond3.i, label %GetPixelDataSize.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = and i32 %i.g, -8
  %or.cond5.i = icmp eq i32 %i.r, 16
  %spec.select.i = select i1 %or.cond5.i, i32 16, i32 %i.n
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.b, %bb.c, %bb.d
  %.016.i = phi i32 [ %i.n, %bb.b ], [ 8, %bb.c ], [ %spec.select.i, %bb.d ] ; 4 uses
  %i.s = mul nsw i32 %.016.i, 6
  %i.t = add nsw i32 %i.s, 2000
  %i.u = sext i32 %i.t to i64
  %i.v = tail call noalias ptr @calloc(i64 noundef %i.u, i64 noundef 1) #56 ; 19 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.v, ptr noundef nonnull align 1 dereferenceable(90) @.str.32, i64 89, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.w, ptr noundef nonnull align 1 dereferenceable(90) @.str.33, i64 89, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.x, ptr noundef nonnull align 1 dereferenceable(90) @.str.34, i64 89, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 267
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.y, ptr noundef nonnull align 1 dereferenceable(90) @.str.33, i64 89, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 356
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.z, ptr noundef nonnull align 1 dereferenceable(90) @.str.35, i64 89, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 445
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.aa, ptr noundef nonnull align 1 dereferenceable(90) @.str.36, i64 89, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 534
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.ab, ptr noundef nonnull align 1 dereferenceable(90) @.str.33, i64 89, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 623
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.ac, ptr noundef nonnull align 1 dereferenceable(90) @.str.37, i64 89, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 712
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.ad, ptr noundef nonnull align 1 dereferenceable(90) @.str.33, i64 89, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 801
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(91) %i.ae, ptr noundef nonnull align 1 dereferenceable(91) @.str.38, i64 90, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = tail call ptr @GetFileNameWithoutExt(ptr noundef %1) #52
  %i.ah = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.ag, i64 noundef 255) #52 ; 0 uses
  %i.ai = load i8, ptr %i.a, align 16             ; 2 uses
  %.not76 = icmp eq i8 %i.ai, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %GetPixelDataSize.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.aj, ptr noundef nonnull align 1 dereferenceable(27) @.str.39, i64 27, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 917
  %i.al = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(1) @.str.40, ptr noundef nonnull %i.a, i32 noundef %i.c) #52
  %i.am = add nsw i32 %i.al, 917                  ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.v, i64 %i.an
  %i.ap = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) @.str.41, ptr noundef nonnull %i.a, i32 noundef %i.e) #52
  %i.aq = add nsw i32 %i.am, %i.ap                ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.v, i64 %i.ar
  %i.at = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef nonnull %i.a, i32 noundef %i.g) #52
  %i.au = add nsw i32 %i.aq, %i.at                ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.v, i64 %i.av
  %i.ax = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef nonnull %i.a, i32 noundef %.016.i) #52
  %i.ay = add nsw i32 %i.au, %i.ax                ; 2 uses
  %i.az = add i32 %.016.i, -1                     ; 2 uses
  %i.ba = icmp sgt i32 %.016.i, 1
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.ba, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %i.az to i64
  br label %bb.g

.lr.ph:                                           ; preds = %GetPixelDataSize.exit, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %GetPixelDataSize.exit ] ; 2 uses
  %i.bb = phi i8 [ %i.bf, %bb.f ], [ %i.ai, %GetPixelDataSize.exit ] ; 2 uses
  %i.bc = add i8 %i.bb, -97
  %or.cond = icmp ult i8 %i.bc, 26
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %narrow = add nsw i8 %i.bb, -32
  store i8 %narrow, ptr %i.bd, align 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  %i.bf = load i8, ptr %i.be, align 1             ; 2 uses
  %.not = icmp eq i8 %i.bf, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge82:                                    ; preds = %bb.g, %._crit_edge
  %.073.lcssa = phi i32 [ %i.ay, %._crit_edge ], [ %i.by, %bb.g ]
  %i.bg = sext i32 %.073.lcssa to i64
  %i.bh = getelementptr inbounds i8, ptr %i.v, i64 %i.bg
  %i.bi = sext i32 %i.az to i64
end_hunk_0
begin_hunk_1_@ImageFormat:bb.a
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
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.bz = zext i16 %i.bx to i32                   ; 4 uses
  %i.ca = lshr i32 %i.bz, 12
  %i.cb = lshr i32 %i.bz, 8
  %i.cc = lshr i32 %i.bz, 4
  %i.cd = insertelement <4 x i32> poison, i32 %i.ca, i64 0
  %i.ce = insertelement <4 x i32> %i.cd, i32 %i.cb, i64 1
  %i.cf = insertelement <4 x i32> %i.ce, i32 %i.cc, i64 2
  %i.cg = insertelement <4 x i32> %i.cf, i32 %i.bz, i64 3
  %i.ch = and <4 x i32> %i.cg, <i32 -1, i32 15, i32 15, i32 15>
  %i.ci = uitofp nneg <4 x i32> %i.ch to <4 x float>
  %i.cj = fmul nnan <4 x float> %i.ci, splat (float f0x3D888889)
  store <4 x float> %i.cj, ptr %i.by, align 4
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
  %i.es = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.er
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.eu = load <4 x float>, ptr %i.es, align 4
  store <4 x float> %i.eu, ptr %i.et, align 4
  %i.ev = add nsw i32 %.0159174.i, 4
  br label %bb.t

bb.q:                                             ; preds = %bb.f
  %i.ew = sext i32 %.0159174.i to i64
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ew
  %i.ey = load i16, ptr %i.ex, align 2            ; 2 uses
  %i.ez = zext i16 %i.ey to i32                   ; 2 uses
  %i.fa = lshr i32 %i.ez, 10
  %i.fb = and i32 %i.fa, 31                       ; 2 uses
  %i.fc = shl nuw nsw i32 %i.ez, 13               ; 2 uses
  %i.fd = and i32 %i.fc, 8380416                  ; 3 uses
  %i.fe = uitofp nneg i32 %i.fd to float
  %i.ff = bitcast float %i.fe to i32              ; 2 uses
  %i.fg = lshr i32 %i.ff, 23
  %.signext.i.i = sext i16 %i.ey to i32
  %i.fh = and i32 %.signext.i.i, -2147483648
  %.not.i.i = icmp eq i32 %i.fb, 0
  %i.fi = shl nuw nsw i32 %i.fb, 23
  %i.fj = add nuw nsw i32 %i.fi, 939524096
  %i.fk = or disjoint i32 %i.fj, %i.fd
  %.not12.i.i = icmp eq i32 %i.fd, 0
  %i.fl = and i32 %i.ff, 2139095040
  %i.fm = add nsw i32 %i.fl, -310378496
  %i.fn = sub nsw i32 150, %i.fg
  %i.fo = shl i32 %i.fc, %i.fn
  %i.fp = and i32 %i.fo, 8380416
  %i.fq = or disjoint i32 %i.fp, %i.fm
  %2 = select i1 %.not12.i.i, i32 0, i32 %i.fq
  %i.fr = select i1 %.not.i.i, i32 %2, i32 %i.fk
  %i.fs = or i32 %i.fr, %i.fh
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 3 uses
  store i32 %i.fs, ptr %i.ft, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store <2 x float> zeroinitializer, ptr %i.fu, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  store float 1.000000e+00, ptr %i.fv, align 4
  %i.fw = add nsw i32 %.0159174.i, 1
  br label %bb.t

bb.r:                                             ; preds = %bb.f
  %i.fx = sext i32 %.0159174.i to i64
  %i.fy = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.fx ; 3 uses
  %i.fz = load i16, ptr %i.fy, align 2            ; 2 uses
  %i.ga = zext i16 %i.fz to i32                   ; 2 uses
  %i.gb = lshr i32 %i.ga, 10
  %i.gc = and i32 %i.gb, 31                       ; 2 uses
  %i.gd = shl nuw nsw i32 %i.ga, 13               ; 2 uses
  %i.ge = and i32 %i.gd, 8380416                  ; 3 uses
  %i.gf = uitofp nneg i32 %i.ge to float
  %i.gg = bitcast float %i.gf to i32              ; 2 uses
  %i.gh = lshr i32 %i.gg, 23
  %.signext.i160.i = sext i16 %i.fz to i32
  %i.gi = and i32 %.signext.i160.i, -2147483648
  %.not.i161.i = icmp eq i32 %i.gc, 0
  %i.gj = shl nuw nsw i32 %i.gc, 23
  %i.gk = add nuw nsw i32 %i.gj, 939524096
  %i.gl = or disjoint i32 %i.gk, %i.ge
  %.not12.i162.i = icmp eq i32 %i.ge, 0
  %i.gm = and i32 %i.gg, 2139095040
  %i.gn = add nsw i32 %i.gm, -310378496
  %i.go = sub nsw i32 150, %i.gh
  %i.gp = shl i32 %i.gd, %i.go
  %i.gq = and i32 %i.gp, 8380416
  %i.gr = or disjoint i32 %i.gq, %i.gn
  %3 = select i1 %.not12.i162.i, i32 0, i32 %i.gr
  %i.gs = select i1 %.not.i161.i, i32 %3, i32 %i.gl
  %i.gt = or i32 %i.gs, %i.gi
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 4 uses
  store i32 %i.gt, ptr %i.gu, align 4
  %i.gv = getelementptr i8, ptr %i.fy, i64 2
  %i.gw = load i16, ptr %i.gv, align 2            ; 2 uses
  %i.gx = zext i16 %i.gw to i32                   ; 2 uses
  %i.gy = lshr i32 %i.gx, 10
  %i.gz = and i32 %i.gy, 31                       ; 2 uses
  %i.ha = shl nuw nsw i32 %i.gx, 13               ; 2 uses
  %i.hb = and i32 %i.ha, 8380416                  ; 3 uses
  %i.hc = uitofp nneg i32 %i.hb to float
  %i.hd = bitcast float %i.hc to i32              ; 2 uses
  %i.he = lshr i32 %i.hd, 23
  %.signext.i162.i = sext i16 %i.gw to i32
  %i.hf = and i32 %.signext.i162.i, -2147483648
  %.not.i163.i = icmp eq i32 %i.gz, 0
  %i.hg = shl nuw nsw i32 %i.gz, 23
  %i.hh = add nuw nsw i32 %i.hg, 939524096
  %i.hi = or disjoint i32 %i.hh, %i.hb
  %.not12.i165.i = icmp eq i32 %i.hb, 0
  %i.hj = and i32 %i.hd, 2139095040
  %i.hk = add nsw i32 %i.hj, -310378496
  %i.hl = sub nsw i32 150, %i.he
  %i.hm = shl i32 %i.ha, %i.hl
  %i.hn = and i32 %i.hm, 8380416
  %i.ho = or disjoint i32 %i.hn, %i.hk
  %4 = select i1 %.not12.i165.i, i32 0, i32 %i.ho
  %i.hp = select i1 %.not.i163.i, i32 %4, i32 %i.hi
  %i.hq = or i32 %i.hp, %i.hf
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  store i32 %i.hq, ptr %i.hr, align 4
  %i.hs = getelementptr i8, ptr %i.fy, i64 4
  %i.ht = load i16, ptr %i.hs, align 2            ; 2 uses
  %i.hu = zext i16 %i.ht to i32                   ; 2 uses
  %i.hv = lshr i32 %i.hu, 10
  %i.hw = and i32 %i.hv, 31                       ; 2 uses
  %i.hx = shl nuw nsw i32 %i.hu, 13               ; 2 uses
  %i.hy = and i32 %i.hx, 8380416                  ; 3 uses
  %i.hz = uitofp nneg i32 %i.hy to float
  %i.ia = bitcast float %i.hz to i32              ; 2 uses
  %i.ib = lshr i32 %i.ia, 23
  %.signext.i164.i = sext i16 %i.ht to i32
  %i.ic = and i32 %.signext.i164.i, -2147483648
  %.not.i165.i = icmp eq i32 %i.hw, 0
  %i.id = shl nuw nsw i32 %i.hw, 23
  %i.ie = add nuw nsw i32 %i.id, 939524096
  %i.if = or disjoint i32 %i.ie, %i.hy
  %.not12.i168.i = icmp eq i32 %i.hy, 0
  %i.ig = and i32 %i.ia, 2139095040
  %i.ih = add nsw i32 %i.ig, -310378496
  %i.ii = sub nsw i32 150, %i.ib
  %i.ij = shl i32 %i.hx, %i.ii
  %i.ik = and i32 %i.ij, 8380416
  %i.il = or disjoint i32 %i.ik, %i.ih
  %5 = select i1 %.not12.i168.i, i32 0, i32 %i.il
  %i.im = select i1 %.not.i165.i, i32 %5, i32 %i.if
  %i.in = or i32 %i.im, %i.ic
  %i.io = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store i32 %i.in, ptr %i.io, align 4
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store float 1.000000e+00, ptr %i.ip, align 4
  %i.iq = add nsw i32 %.0159174.i, 3
  br label %bb.t

bb.s:                                             ; preds = %bb.f
  %i.ir = sext i32 %.0159174.i to i64
  %i.is = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ir
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.iu = load <4 x i16>, ptr %i.is, align 2      ; 3 uses
  %i.iv = lshr <4 x i16> %i.iu, splat (i16 10)
  %i.iw = and <4 x i16> %i.iv, splat (i16 31)     ; 2 uses
  %i.ix = zext <4 x i16> %i.iu to <4 x i32>
  %i.iy = shl nuw nsw <4 x i32> %i.ix, splat (i32 13) ; 2 uses
  %i.iz = and <4 x i32> %i.iy, splat (i32 8380416) ; 3 uses
  %i.ja = uitofp nneg <4 x i32> %i.iz to <4 x float>
  %i.jb = bitcast <4 x float> %i.ja to <4 x i32>  ; 2 uses
  %i.jc = lshr <4 x i32> %i.jb, splat (i32 23)
  %i.jd = sext <4 x i16> %i.iu to <4 x i32>
  %i.je = and <4 x i32> %i.jd, splat (i32 -2147483648)
  %i.jf = icmp eq <4 x i16> %i.iw, zeroinitializer
  %i.jg = zext nneg <4 x i16> %i.iw to <4 x i32>
  %i.jh = shl nuw nsw <4 x i32> %i.jg, splat (i32 23)
  %i.ji = add nuw nsw <4 x i32> %i.jh, splat (i32 939524096)
  %i.jj = or disjoint <4 x i32> %i.ji, %i.iz
  %6 = icmp eq <4 x i32> %i.iz, zeroinitializer
  %i.jk = and <4 x i32> %i.jb, splat (i32 2139095040)
  %i.jl = add nsw <4 x i32> %i.jk, splat (i32 -310378496)
  %i.jm = sub nsw <4 x i32> splat (i32 150), %i.jc
  %i.jn = shl <4 x i32> %i.iy, %i.jm
  %i.jo = and <4 x i32> %i.jn, splat (i32 8380416)
  %i.jp = or disjoint <4 x i32> %i.jo, %i.jl
  %7 = select <4 x i1> %6, <4 x i32> zeroinitializer, <4 x i32> %i.jp
  %i.jq = select <4 x i1> %i.jf, <4 x i32> %7, <4 x i32> %i.jj
  %i.jr = or <4 x i32> %i.jq, %i.je
  store <4 x i32> %i.jr, ptr %i.it, align 4
  %i.js = add nsw i32 %.0159174.i, 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.1.i = phi i32 [ %.0159174.i, %bb.f ], [ %.0159174.i, %bb.g ], [ %i.am, %bb.h ], [ %.0159174.i, %bb.i ], [ %.0159174.i, %bb.j ], [ %.0159174.i, %bb.k ], [ %i.df, %bb.l ], [ %i.dx, %bb.m ], [ %i.ee, %bb.n ], [ %i.eq, %bb.o ], [ %i.ev, %bb.p ], [ %i.fw, %bb.q ], [ %i.iq, %bb.r ], [ %i.js, %bb.s ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %LoadImageDataNormalized.exit.loopexit, label %bb.f

LoadImageDataNormalized.exit.loopexit:            ; preds = %bb.t
  %.pre = load ptr, ptr %0, align 8
  br label %LoadImageDataNormalized.exit

LoadImageDataNormalized.exit:                     ; preds = %LoadImageDataNormalized.exit.loopexit, %.preheader.i
  %i.jt = phi ptr [ %.pre, %LoadImageDataNormalized.exit.loopexit ], [ %i.a, %.preheader.i ]
  tail call void @free(ptr noundef %i.jt) #52
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
  %i.ju = load i32, ptr %i.c, align 8
  %i.jv = load i32, ptr %i.f, align 4
  %i.jw = mul nsw i32 %i.jv, %i.ju
  %i.jx = sext i32 %i.jw to i64
  %i.jy = tail call noalias ptr @malloc(i64 noundef %i.jx) #53
  store ptr %i.jy, ptr %0, align 8
  %i.jz = load i32, ptr %i.c, align 8
  %i.ka = load i32, ptr %i.f, align 4
  %i.kb = mul nsw i32 %i.ka, %i.jz
  %i.kc = icmp sgt i32 %i.kb, 0
  br i1 %i.kc, label %.lr.ph344, label %.loopexit

.lr.ph344:                                        ; preds = %bb.u, %.lr.ph344
  %indvars.iv419 = phi i64 [ %indvars.iv.next420, %.lr.ph344 ], [ 0, %bb.u ] ; 3 uses
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv419 ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4
  %i.kf = fmul float %i.ke, 2.990000e-01
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kh = load <2 x float>, ptr %i.kg, align 4
  %i.ki = fmul <2 x float> %i.kh, <float 5.870000e-01, float 1.140000e-01> ; 2 uses
  %i.kj = extractelement <2 x float> %i.ki, i64 0
  %i.kk = fadd float %i.kf, %i.kj
  %i.kl = extractelement <2 x float> %i.ki, i64 1
  %i.km = fadd float %i.kk, %i.kl
  %i.kn = fmul float %i.km, 2.550000e+02
  %i.ko = fptoui float %i.kn to i8
  %i.kp = load ptr, ptr %0, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv419
  store i8 %i.ko, ptr %i.kq, align 1
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 2 uses
  %i.kr = load i32, ptr %i.c, align 8
  %i.ks = load i32, ptr %i.f, align 4
  %i.kt = mul nsw i32 %i.ks, %i.kr
  %i.ku = sext i32 %i.kt to i64
  %i.kv = icmp slt i64 %indvars.iv.next420, %i.ku
  br i1 %i.kv, label %.lr.ph344, label %.loopexit

bb.v:                                             ; preds = %LoadImageDataNormalized.exit
  %i.kw = load i32, ptr %i.c, align 8
  %i.kx = load i32, ptr %i.f, align 4
  %i.ky = shl i32 %i.kw, 1
  %i.kz = mul i32 %i.ky, %i.kx
  %i.la = sext i32 %i.kz to i64
  %i.lb = tail call noalias ptr @malloc(i64 noundef %i.la) #53
  store ptr %i.lb, ptr %0, align 8
  %i.lc = load i32, ptr %i.c, align 8
  %i.ld = load i32, ptr %i.f, align 4
  %i.le = shl i32 %i.lc, 1
  %i.lf = mul i32 %i.le, %i.ld
  %i.lg = icmp sgt i32 %i.lf, 0
  br i1 %i.lg, label %.lr.ph342, label %.loopexit

.lr.ph342:                                        ; preds = %bb.v, %.lr.ph342
  %indvars.iv414 = phi i64 [ %indvars.iv.next415, %.lr.ph342 ], [ 0, %bb.v ] ; 3 uses
  %indvars.iv412 = phi i64 [ %indvars.iv.next413, %.lr.ph342 ], [ 0, %bb.v ] ; 2 uses
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv412 ; 3 uses
  %i.li = load float, ptr %i.lh, align 4
  %i.lj = fmul float %i.li, 2.990000e-01
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %i.ll = load <2 x float>, ptr %i.lk, align 4
  %i.lm = fmul <2 x float> %i.ll, <float 5.870000e-01, float 1.140000e-01> ; 2 uses
  %i.ln = extractelement <2 x float> %i.lm, i64 0
  %i.lo = fadd float %i.lj, %i.ln
  %i.lp = extractelement <2 x float> %i.lm, i64 1
  %i.lq = fadd float %i.lo, %i.lp
  %i.lr = fmul float %i.lq, 2.550000e+02
  %i.ls = fptoui float %i.lr to i8
  %i.lt = load ptr, ptr %0, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 %indvars.iv414
  store i8 %i.ls, ptr %i.lu, align 1
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lh, i64 12
  %i.lw = load float, ptr %i.lv, align 4
  %i.lx = fmul float %i.lw, 2.550000e+02
  %i.ly = fptoui float %i.lx to i8
  %i.lz = load ptr, ptr %0, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %indvars.iv414
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 1
  store i8 %i.ly, ptr %i.mb, align 1
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 2 ; 2 uses
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 1
  %i.mc = load i32, ptr %i.c, align 8
  %i.md = load i32, ptr %i.f, align 4
  %i.me = shl i32 %i.mc, 1
  %i.mf = mul i32 %i.me, %i.md
  %i.mg = sext i32 %i.mf to i64
  %i.mh = icmp slt i64 %indvars.iv.next415, %i.mg
  br i1 %i.mh, label %.lr.ph342, label %.loopexit

bb.w:                                             ; preds = %LoadImageDataNormalized.exit
  %i.mi = load i32, ptr %i.c, align 8
  %i.mj = load i32, ptr %i.f, align 4
  %i.mk = mul nsw i32 %i.mj, %i.mi
  %i.ml = sext i32 %i.mk to i64
  %i.mm = shl nsw i64 %i.ml, 1
  %i.mn = tail call noalias ptr @malloc(i64 noundef %i.mm) #53
  store ptr %i.mn, ptr %0, align 8
  %i.mo = load i32, ptr %i.c, align 8
  %i.mp = load i32, ptr %i.f, align 4
  %i.mq = mul nsw i32 %i.mp, %i.mo
  %i.mr = icmp sgt i32 %i.mq, 0
  br i1 %i.mr, label %.lr.ph339, label %.loopexit

.lr.ph339:                                        ; preds = %bb.w, %.lr.ph339
  %indvars.iv409 = phi i64 [ %indvars.iv.next410, %.lr.ph339 ], [ 0, %bb.w ] ; 3 uses
  %i.ms = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv409 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load float, ptr %i.mt, align 4
  %i.mv = fmul float %i.mu, 3.100000e+01
  %i.mw = tail call float @llvm.round.f32(float %i.mv)
  %i.mx = fptoui float %i.mw to i8
  %i.my = load <2 x float>, ptr %i.ms, align 4
  %i.mz = fmul <2 x float> %i.my, <float 3.100000e+01, float 6.300000e+01>
  %i.na = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.mz)
  %i.nb = fptoui <2 x float> %i.na to <2 x i8>
  %i.nc = zext <2 x i8> %i.nb to <2 x i16>
  %i.nd = shl <2 x i16> %i.nc, <i16 11, i16 5>    ; 2 uses
  %shift = shufflevector <2 x i16> %i.nd, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or <2 x i16> %shift, %i.nd
  %i.ne = extractelement <2 x i16> %foldExtExtBinop, i64 0
  %i.nf = zext i8 %i.mx to i16
  %i.ng = or i16 %i.ne, %i.nf
  %i.nh = load ptr, ptr %0, align 8
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.nh, i64 %indvars.iv409
  store i16 %i.ng, ptr %i.ni, align 2
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %i.nj = load i32, ptr %i.c, align 8
  %i.nk = load i32, ptr %i.f, align 4
  %i.nl = mul nsw i32 %i.nk, %i.nj
  %i.nm = sext i32 %i.nl to i64
  %i.nn = icmp slt i64 %indvars.iv.next410, %i.nm
  br i1 %i.nn, label %.lr.ph339, label %.loopexit

bb.x:                                             ; preds = %LoadImageDataNormalized.exit
  %i.no = load i32, ptr %i.c, align 8
  %i.np = load i32, ptr %i.f, align 4
  %i.nq = mul i32 %i.no, 3
  %i.nr = mul i32 %i.nq, %i.np
  %i.ns = sext i32 %i.nr to i64
  %i.nt = tail call noalias ptr @malloc(i64 noundef %i.ns) #53
  store ptr %i.nt, ptr %0, align 8
  %i.nu = load i32, ptr %i.c, align 8
  %i.nv = load i32, ptr %i.f, align 4
  %i.nw = mul i32 %i.nu, 3
  %i.nx = mul i32 %i.nw, %i.nv
  %i.ny = icmp sgt i32 %i.nx, 0
  br i1 %i.ny, label %.lr.ph337, label %.loopexit

.lr.ph337:                                        ; preds = %bb.x, %.lr.ph337
  %indvars.iv404 = phi i64 [ %indvars.iv.next405, %.lr.ph337 ], [ 0, %bb.x ] ; 4 uses
  %indvars.iv402 = phi i64 [ %indvars.iv.next403, %.lr.ph337 ], [ 0, %bb.x ] ; 2 uses
  %i.nz = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv402 ; 2 uses
  %i.oa = load float, ptr %i.nz, align 4
  %i.ob = fmul float %i.oa, 2.550000e+02
  %i.oc = fptoui float %i.ob to i8
  %i.od = load ptr, ptr %0, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %indvars.iv404
  store i8 %i.oc, ptr %i.oe, align 1
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.og = load ptr, ptr %0, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %indvars.iv404
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 1
  %i.oj = load <2 x float>, ptr %i.of, align 4
  %i.ok = fmul <2 x float> %i.oj, splat (float 2.550000e+02) ; 2 uses
  %i.ol = extractelement <2 x float> %i.ok, i64 0
end_hunk_1
begin_hunk_2_@ImageFormat:bb.a
  %i.sf = load ptr, ptr %0, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 %indvars.iv391
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 1
  store i8 %i.se, ptr %i.sh, align 1
  %i.si = extractelement <4 x float> %i.sa, i64 2
  %i.sj = fptoui float %i.si to i8
  %i.sk = load ptr, ptr %0, align 8
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 %indvars.iv391
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 2
  store i8 %i.sj, ptr %i.sm, align 1
  %i.sn = extractelement <4 x float> %i.sa, i64 3
  %i.so = fptoui float %i.sn to i8
  %i.sp = load ptr, ptr %0, align 8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 %indvars.iv391
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 3
  store i8 %i.so, ptr %i.sr, align 1
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 4 ; 2 uses
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1
  %i.ss = load i32, ptr %i.c, align 8
  %i.st = load i32, ptr %i.f, align 4
  %i.su = shl i32 %i.ss, 2
  %i.sv = mul i32 %i.su, %i.st
  %i.sw = sext i32 %i.sv to i64
  %i.sx = icmp slt i64 %indvars.iv.next392, %i.sw
  br i1 %i.sx, label %.lr.ph330, label %.loopexit

bb.ab:                                            ; preds = %LoadImageDataNormalized.exit
  %i.sy = load i32, ptr %i.c, align 8
  %i.sz = load i32, ptr %i.f, align 4
  %i.ta = mul nsw i32 %i.sz, %i.sy
  %i.tb = sext i32 %i.ta to i64
  %i.tc = shl nsw i64 %i.tb, 2
  %i.td = tail call noalias ptr @malloc(i64 noundef %i.tc) #53
  store ptr %i.td, ptr %0, align 8
  %i.te = load i32, ptr %i.c, align 8
  %i.tf = load i32, ptr %i.f, align 4
  %i.tg = mul nsw i32 %i.tf, %i.te
  %i.th = icmp sgt i32 %i.tg, 0
  br i1 %i.th, label %.lr.ph327, label %.loopexit

.lr.ph327:                                        ; preds = %bb.ab, %.lr.ph327
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %.lr.ph327 ], [ 0, %bb.ab ] ; 3 uses
  %i.ti = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv386 ; 2 uses
  %i.tj = load float, ptr %i.ti, align 4
  %i.tk = fmul float %i.tj, 2.990000e-01
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  %i.tm = load <2 x float>, ptr %i.tl, align 4
  %i.tn = fmul <2 x float> %i.tm, <float 5.870000e-01, float 1.140000e-01> ; 2 uses
  %i.to = extractelement <2 x float> %i.tn, i64 0
  %i.tp = fadd float %i.tk, %i.to
  %i.tq = extractelement <2 x float> %i.tn, i64 1
  %i.tr = fadd float %i.tp, %i.tq
  %i.ts = load ptr, ptr %0, align 8
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %indvars.iv386
  store float %i.tr, ptr %i.tt, align 4
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %i.tu = load i32, ptr %i.c, align 8
  %i.tv = load i32, ptr %i.f, align 4
  %i.tw = mul nsw i32 %i.tv, %i.tu
  %i.tx = sext i32 %i.tw to i64
  %i.ty = icmp slt i64 %indvars.iv.next387, %i.tx
  br i1 %i.ty, label %.lr.ph327, label %.loopexit

bb.ac:                                            ; preds = %LoadImageDataNormalized.exit
  %i.tz = load i32, ptr %i.c, align 8
  %i.ua = load i32, ptr %i.f, align 4
  %i.ub = mul i32 %i.tz, 3
  %i.uc = mul i32 %i.ub, %i.ua
  %i.ud = sext i32 %i.uc to i64
  %i.ue = shl nsw i64 %i.ud, 2
  %i.uf = tail call noalias ptr @malloc(i64 noundef %i.ue) #53
  store ptr %i.uf, ptr %0, align 8
  %i.ug = load i32, ptr %i.c, align 8
  %i.uh = load i32, ptr %i.f, align 4
  %i.ui = mul i32 %i.ug, 3
  %i.uj = mul i32 %i.ui, %i.uh
  %i.uk = icmp sgt i32 %i.uj, 0
  br i1 %i.uk, label %.lr.ph325, label %.loopexit

.lr.ph325:                                        ; preds = %bb.ac, %.lr.ph325
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %.lr.ph325 ], [ 0, %bb.ac ] ; 4 uses
  %indvars.iv379 = phi i64 [ %indvars.iv.next380, %.lr.ph325 ], [ 0, %bb.ac ] ; 2 uses
  %i.ul = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv379 ; 3 uses
  %i.um = load float, ptr %i.ul, align 4
  %i.un = load ptr, ptr %0, align 8
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %indvars.iv381
  store float %i.um, ptr %i.uo, align 4
  %i.up = getelementptr inbounds nuw i8, ptr %i.ul, i64 4
  %i.uq = load float, ptr %i.up, align 4
  %i.ur = load ptr, ptr %0, align 8
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv381
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  store float %i.uq, ptr %i.ut, align 4
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.uv = load float, ptr %i.uu, align 4
  %i.uw = load ptr, ptr %0, align 8
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv381
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  store float %i.uv, ptr %i.uy, align 4
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 3 ; 2 uses
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1
  %i.uz = load i32, ptr %i.c, align 8
  %i.va = load i32, ptr %i.f, align 4
  %i.vb = mul i32 %i.uz, 3
  %i.vc = mul i32 %i.vb, %i.va
  %i.vd = sext i32 %i.vc to i64
  %i.ve = icmp slt i64 %indvars.iv.next382, %i.vd
  br i1 %i.ve, label %.lr.ph325, label %.loopexit

bb.ad:                                            ; preds = %LoadImageDataNormalized.exit
  %i.vf = load i32, ptr %i.c, align 8
  %i.vg = load i32, ptr %i.f, align 4
  %i.vh = shl i32 %i.vf, 2
  %i.vi = mul i32 %i.vh, %i.vg
  %i.vj = sext i32 %i.vi to i64
  %i.vk = shl nsw i64 %i.vj, 2
  %i.vl = tail call noalias ptr @malloc(i64 noundef %i.vk) #53
  store ptr %i.vl, ptr %0, align 8
  %i.vm = load i32, ptr %i.c, align 8
  %i.vn = load i32, ptr %i.f, align 4
  %i.vo = shl i32 %i.vm, 2
  %i.vp = mul i32 %i.vo, %i.vn
  %i.vq = icmp sgt i32 %i.vp, 0
  br i1 %i.vq, label %.lr.ph322, label %.loopexit

.lr.ph322:                                        ; preds = %bb.ad, %.lr.ph322
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %.lr.ph322 ], [ 0, %bb.ad ] ; 5 uses
  %indvars.iv372 = phi i64 [ %indvars.iv.next373, %.lr.ph322 ], [ 0, %bb.ad ] ; 2 uses
  %i.vr = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv372 ; 4 uses
  %i.vs = load float, ptr %i.vr, align 4
  %i.vt = load ptr, ptr %0, align 8
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv374
  store float %i.vs, ptr %i.vu, align 4
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vr, i64 4
  %i.vw = load float, ptr %i.vv, align 4
  %i.vx = load ptr, ptr %0, align 8
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vx, i64 %indvars.iv374
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 4
  store float %i.vw, ptr %i.vz, align 4
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.wb = load float, ptr %i.wa, align 4
  %i.wc = load ptr, ptr %0, align 8
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %indvars.iv374
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  store float %i.wb, ptr %i.we, align 4
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vr, i64 12
  %i.wg = load float, ptr %i.wf, align 4
  %i.wh = load ptr, ptr %0, align 8
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv374
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 12
  store float %i.wg, ptr %i.wj, align 4
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 4 ; 2 uses
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1
  %i.wk = load i32, ptr %i.c, align 8
  %i.wl = load i32, ptr %i.f, align 4
  %i.wm = shl i32 %i.wk, 2
  %i.wn = mul i32 %i.wm, %i.wl
  %i.wo = sext i32 %i.wn to i64
  %i.wp = icmp slt i64 %indvars.iv.next375, %i.wo
  br i1 %i.wp, label %.lr.ph322, label %.loopexit

bb.ae:                                            ; preds = %LoadImageDataNormalized.exit
  %i.wq = load i32, ptr %i.c, align 8
  %i.wr = load i32, ptr %i.f, align 4
  %i.ws = mul nsw i32 %i.wr, %i.wq
  %i.wt = sext i32 %i.ws to i64
  %i.wu = shl nsw i64 %i.wt, 1
  %i.wv = tail call noalias ptr @malloc(i64 noundef %i.wu) #53
  store ptr %i.wv, ptr %0, align 8
  %i.ww = load i32, ptr %i.c, align 8
  %i.wx = load i32, ptr %i.f, align 4
  %i.wy = mul nsw i32 %i.wx, %i.ww
  %i.wz = icmp sgt i32 %i.wy, 0
  br i1 %i.wz, label %.lr.ph319, label %.loopexit

.lr.ph319:                                        ; preds = %bb.ae, %.lr.ph319
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %.lr.ph319 ], [ 0, %bb.ae ] ; 3 uses
  %i.xa = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv369 ; 2 uses
  %i.xb = load float, ptr %i.xa, align 4
  %i.xc = fmul float %i.xb, 2.990000e-01
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xa, i64 4
  %i.xe = load <2 x float>, ptr %i.xd, align 4
  %i.xf = fmul <2 x float> %i.xe, <float 5.870000e-01, float 1.140000e-01> ; 2 uses
  %i.xg = extractelement <2 x float> %i.xf, i64 0
  %i.xh = fadd float %i.xc, %i.xg
  %i.xi = extractelement <2 x float> %i.xf, i64 1
  %i.xj = fadd float %i.xh, %i.xi
  %i.xk = bitcast float %i.xj to i32
  %i.xl = add i32 %i.xk, 4096                     ; 3 uses
  %i.xm = lshr i32 %i.xl, 23                      ; 2 uses
  %i.xn = and i32 %i.xm, 255                      ; 4 uses
  %i.xo = and i32 %i.xl, 8388607                  ; 2 uses
  %i.xp = lshr i32 %i.xl, 16
  %i.xq = and i32 %i.xp, 32768
  %i.xr = icmp samesign ugt i32 %i.xn, 112
  %i.xs = shl nuw nsw i32 %i.xm, 10
  %i.xt = and i32 %i.xs, 31744
  %i.xu = lshr i32 %i.xo, 13
  %i.xv = or disjoint i32 %i.xt, %i.xu
  %i.xw = xor i32 %i.xv, 16384
  %i.xx = add nsw i32 %i.xn, -102
  %i.xy = icmp ult i32 %i.xx, 11
  %i.xz = add nuw nsw i32 %i.xo, 8384512
  %i.ya = sub nsw i32 125, %i.xn
  %i.yb = lshr i32 %i.xz, %i.ya
  %i.yc = add nuw nsw i32 %i.yb, 1
  %i.yd = lshr i32 %i.yc, 1
  %i.ye = select i1 %i.xy, i32 %i.yd, i32 0
  %i.yf = icmp samesign ugt i32 %i.xn, 143
  %i.yg = select i1 %i.yf, i32 32767, i32 0
  %i.yh = or i32 %i.xw, %i.yg
  %8 = select i1 %i.xr, i32 %i.yh, i32 0
  %i.yi = or i32 %8, %i.xq
  %i.yj = or i32 %i.yi, %i.ye
  %i.yk = trunc i32 %i.yj to i16
  %i.yl = load ptr, ptr %0, align 8
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %i.yl, i64 %indvars.iv369
  store i16 %i.yk, ptr %i.ym, align 2
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.yn = load i32, ptr %i.c, align 8
  %i.yo = load i32, ptr %i.f, align 4
  %i.yp = mul nsw i32 %i.yo, %i.yn
  %i.yq = sext i32 %i.yp to i64
  %i.yr = icmp slt i64 %indvars.iv.next370, %i.yq
  br i1 %i.yr, label %.lr.ph319, label %.loopexit

bb.af:                                            ; preds = %LoadImageDataNormalized.exit
  %i.ys = load i32, ptr %i.c, align 8
  %i.yt = load i32, ptr %i.f, align 4
  %i.yu = mul i32 %i.ys, 3
  %i.yv = mul i32 %i.yu, %i.yt
  %i.yw = sext i32 %i.yv to i64
  %i.yx = shl nsw i64 %i.yw, 1
  %i.yy = tail call noalias ptr @malloc(i64 noundef %i.yx) #53
  store ptr %i.yy, ptr %0, align 8
  %i.yz = load i32, ptr %i.c, align 8
  %i.za = load i32, ptr %i.f, align 4
  %i.zb = mul i32 %i.yz, 3
  %i.zc = mul i32 %i.zb, %i.za
  %i.zd = icmp sgt i32 %i.zc, 0
  br i1 %i.zd, label %.lr.ph317, label %.loopexit

.lr.ph317:                                        ; preds = %bb.af, %.lr.ph317
  %indvars.iv364 = phi i64 [ %indvars.iv.next365, %.lr.ph317 ], [ 0, %bb.af ] ; 4 uses
  %indvars.iv362 = phi i64 [ %indvars.iv.next363, %.lr.ph317 ], [ 0, %bb.af ] ; 2 uses
  %i.ze = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv362 ; 3 uses
  %i.zf = load i32, ptr %i.ze, align 4
  %i.zg = add i32 %i.zf, 4096                     ; 3 uses
  %i.zh = lshr i32 %i.zg, 23                      ; 2 uses
  %i.zi = and i32 %i.zh, 255                      ; 4 uses
  %i.zj = and i32 %i.zg, 8388607                  ; 2 uses
  %i.zk = lshr i32 %i.zg, 16
  %i.zl = and i32 %i.zk, 32768
  %i.zm = icmp samesign ugt i32 %i.zi, 112
  %i.zn = shl nuw nsw i32 %i.zh, 10
  %i.zo = and i32 %i.zn, 31744
  %i.zp = lshr i32 %i.zj, 13
  %i.zq = or disjoint i32 %i.zo, %i.zp
  %i.zr = xor i32 %i.zq, 16384
  %i.zs = add nsw i32 %i.zi, -102
  %i.zt = icmp ult i32 %i.zs, 11
  %i.zu = add nuw nsw i32 %i.zj, 8384512
  %i.zv = sub nsw i32 125, %i.zi
  %i.zw = lshr i32 %i.zu, %i.zv
  %i.zx = add nuw nsw i32 %i.zw, 1
  %i.zy = lshr i32 %i.zx, 1
  %i.zz = select i1 %i.zt, i32 %i.zy, i32 0
  %i.aaa = icmp samesign ugt i32 %i.zi, 143
  %i.aab = select i1 %i.aaa, i32 32767, i32 0
  %i.aac = or i32 %i.zr, %i.aab
  %9 = select i1 %i.zm, i32 %i.aac, i32 0
  %i.aad = or i32 %9, %i.zl
  %i.aae = or i32 %i.aad, %i.zz
  %i.aaf = trunc i32 %i.aae to i16
  %i.aag = load ptr, ptr %0, align 8
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %i.aag, i64 %indvars.iv364
  store i16 %i.aaf, ptr %i.aah, align 2
  %i.aai = getelementptr inbounds nuw i8, ptr %i.ze, i64 4
  %i.aaj = load i32, ptr %i.aai, align 4
  %i.aak = add i32 %i.aaj, 4096                   ; 3 uses
  %i.aal = lshr i32 %i.aak, 23                    ; 2 uses
  %i.aam = and i32 %i.aal, 255                    ; 4 uses
  %i.aan = and i32 %i.aak, 8388607                ; 2 uses
  %i.aao = lshr i32 %i.aak, 16
  %i.aap = and i32 %i.aao, 32768
  %i.aaq = icmp samesign ugt i32 %i.aam, 112
  %i.aar = shl nuw nsw i32 %i.aal, 10
  %i.aas = and i32 %i.aar, 31744
  %i.aat = lshr i32 %i.aan, 13
  %i.aau = or disjoint i32 %i.aas, %i.aat
  %i.aav = xor i32 %i.aau, 16384
  %i.aaw = add nsw i32 %i.aam, -102
  %i.aax = icmp ult i32 %i.aaw, 11
  %i.aay = add nuw nsw i32 %i.aan, 8384512
  %i.aaz = sub nsw i32 125, %i.aam
  %i.aba = lshr i32 %i.aay, %i.aaz
  %i.abb = add nuw nsw i32 %i.aba, 1
  %i.abc = lshr i32 %i.abb, 1
  %i.abd = select i1 %i.aax, i32 %i.abc, i32 0
  %i.abe = icmp samesign ugt i32 %i.aam, 143
  %i.abf = select i1 %i.abe, i32 32767, i32 0
  %i.abg = or i32 %i.aav, %i.abf
  %10 = select i1 %i.aaq, i32 %i.abg, i32 0
  %i.abh = or i32 %10, %i.aap
  %i.abi = or i32 %i.abh, %i.abd
  %i.abj = trunc i32 %i.abi to i16
  %i.abk = load ptr, ptr %0, align 8
  %i.abl = getelementptr inbounds nuw [2 x i8], ptr %i.abk, i64 %indvars.iv364
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 2
  store i16 %i.abj, ptr %i.abm, align 2
  %i.abn = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  %i.abo = load i32, ptr %i.abn, align 4
  %i.abp = add i32 %i.abo, 4096                   ; 3 uses
  %i.abq = lshr i32 %i.abp, 23                    ; 2 uses
  %i.abr = and i32 %i.abq, 255                    ; 4 uses
  %i.abs = and i32 %i.abp, 8388607                ; 2 uses
  %i.abt = lshr i32 %i.abp, 16
  %i.abu = and i32 %i.abt, 32768
  %i.abv = icmp samesign ugt i32 %i.abr, 112
  %i.abw = shl nuw nsw i32 %i.abq, 10
  %i.abx = and i32 %i.abw, 31744
  %i.aby = lshr i32 %i.abs, 13
  %i.abz = or disjoint i32 %i.abx, %i.aby
  %i.aca = xor i32 %i.abz, 16384
  %i.acb = add nsw i32 %i.abr, -102
  %i.acc = icmp ult i32 %i.acb, 11
  %i.acd = add nuw nsw i32 %i.abs, 8384512
  %i.ace = sub nsw i32 125, %i.abr
  %i.acf = lshr i32 %i.acd, %i.ace
  %i.acg = add nuw nsw i32 %i.acf, 1
  %i.ach = lshr i32 %i.acg, 1
  %i.aci = select i1 %i.acc, i32 %i.ach, i32 0
  %i.acj = icmp samesign ugt i32 %i.abr, 143
  %i.ack = select i1 %i.acj, i32 32767, i32 0
  %i.acl = or i32 %i.aca, %i.ack
  %11 = select i1 %i.abv, i32 %i.acl, i32 0
  %i.acm = or i32 %11, %i.abu
  %i.acn = or i32 %i.acm, %i.aci
  %i.aco = trunc i32 %i.acn to i16
  %i.acp = load ptr, ptr %0, align 8
  %i.acq = getelementptr inbounds nuw [2 x i8], ptr %i.acp, i64 %indvars.iv364
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 4
  store i16 %i.aco, ptr %i.acr, align 2
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 3 ; 2 uses
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 1
  %i.acs = load i32, ptr %i.c, align 8
  %i.act = load i32, ptr %i.f, align 4
  %i.acu = mul i32 %i.acs, 3
  %i.acv = mul i32 %i.acu, %i.act
  %i.acw = sext i32 %i.acv to i64
  %i.acx = icmp slt i64 %indvars.iv.next365, %i.acw
  br i1 %i.acx, label %.lr.ph317, label %.loopexit

bb.ag:                                            ; preds = %LoadImageDataNormalized.exit
  %i.acy = load i32, ptr %i.c, align 8
  %i.acz = load i32, ptr %i.f, align 4
  %i.ada = shl i32 %i.acy, 2
  %i.adb = mul i32 %i.ada, %i.acz
  %i.adc = sext i32 %i.adb to i64
  %i.add = shl nsw i64 %i.adc, 1
  %i.ade = tail call noalias ptr @malloc(i64 noundef %i.add) #53
  store ptr %i.ade, ptr %0, align 8
  %i.adf = load i32, ptr %i.c, align 8
  %i.adg = load i32, ptr %i.f, align 4
  %i.adh = shl i32 %i.adf, 2
  %i.adi = mul i32 %i.adh, %i.adg
  %i.adj = icmp sgt i32 %i.adi, 0
  br i1 %i.adj, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ag, %.lr.ph
  %indvars.iv357 = phi i64 [ %indvars.iv.next358, %.lr.ph ], [ 0, %bb.ag ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.ag ] ; 2 uses
  %i.adk = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv ; 4 uses
  %i.adl = load i32, ptr %i.adk, align 4
  %i.adm = add i32 %i.adl, 4096                   ; 3 uses
  %i.adn = lshr i32 %i.adm, 23                    ; 2 uses
  %i.ado = and i32 %i.adn, 255                    ; 4 uses
  %i.adp = and i32 %i.adm, 8388607                ; 2 uses
  %i.adq = lshr i32 %i.adm, 16
  %i.adr = and i32 %i.adq, 32768
  %i.ads = icmp samesign ugt i32 %i.ado, 112
  %i.adt = shl nuw nsw i32 %i.adn, 10
  %i.adu = and i32 %i.adt, 31744
  %i.adv = lshr i32 %i.adp, 13
  %i.adw = or disjoint i32 %i.adu, %i.adv
  %i.adx = xor i32 %i.adw, 16384
  %i.ady = add nsw i32 %i.ado, -102
  %i.adz = icmp ult i32 %i.ady, 11
  %i.aea = add nuw nsw i32 %i.adp, 8384512
  %i.aeb = sub nsw i32 125, %i.ado
  %i.aec = lshr i32 %i.aea, %i.aeb
  %i.aed = add nuw nsw i32 %i.aec, 1
  %i.aee = lshr i32 %i.aed, 1
  %i.aef = select i1 %i.adz, i32 %i.aee, i32 0
  %i.aeg = icmp samesign ugt i32 %i.ado, 143
  %i.aeh = select i1 %i.aeg, i32 32767, i32 0
  %i.aei = or i32 %i.adx, %i.aeh
  %12 = select i1 %i.ads, i32 %i.aei, i32 0
  %i.aej = or i32 %12, %i.adr
  %i.aek = or i32 %i.aej, %i.aef
  %i.ael = trunc i32 %i.aek to i16
  %i.aem = load ptr, ptr %0, align 8
  %i.aen = getelementptr inbounds nuw [2 x i8], ptr %i.aem, i64 %indvars.iv357
  store i16 %i.ael, ptr %i.aen, align 2
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.adk, i64 4
  %i.aep = load i32, ptr %i.aeo, align 4
  %i.aeq = add i32 %i.aep, 4096                   ; 3 uses
  %i.aer = lshr i32 %i.aeq, 23                    ; 2 uses
  %i.aes = and i32 %i.aer, 255                    ; 4 uses
  %i.aet = and i32 %i.aeq, 8388607                ; 2 uses
  %i.aeu = lshr i32 %i.aeq, 16
  %i.aev = and i32 %i.aeu, 32768
  %i.aew = icmp samesign ugt i32 %i.aes, 112
  %i.aex = shl nuw nsw i32 %i.aer, 10
  %i.aey = and i32 %i.aex, 31744
  %i.aez = lshr i32 %i.aet, 13
  %i.afa = or disjoint i32 %i.aey, %i.aez
  %i.afb = xor i32 %i.afa, 16384
  %i.afc = add nsw i32 %i.aes, -102
  %i.afd = icmp ult i32 %i.afc, 11
  %i.afe = add nuw nsw i32 %i.aet, 8384512
  %i.aff = sub nsw i32 125, %i.aes
  %i.afg = lshr i32 %i.afe, %i.aff
  %i.afh = add nuw nsw i32 %i.afg, 1
  %i.afi = lshr i32 %i.afh, 1
  %i.afj = select i1 %i.afd, i32 %i.afi, i32 0
  %i.afk = icmp samesign ugt i32 %i.aes, 143
  %i.afl = select i1 %i.afk, i32 32767, i32 0
  %i.afm = or i32 %i.afb, %i.afl
  %13 = select i1 %i.aew, i32 %i.afm, i32 0
  %i.afn = or i32 %13, %i.aev
  %i.afo = or i32 %i.afn, %i.afj
  %i.afp = trunc i32 %i.afo to i16
  %i.afq = load ptr, ptr %0, align 8
  %i.afr = getelementptr inbounds nuw [2 x i8], ptr %i.afq, i64 %indvars.iv357
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 2
  store i16 %i.afp, ptr %i.afs, align 2
  %i.aft = getelementptr inbounds nuw i8, ptr %i.adk, i64 8
  %i.afu = load i32, ptr %i.aft, align 4
  %i.afv = add i32 %i.afu, 4096                   ; 3 uses
  %i.afw = lshr i32 %i.afv, 23                    ; 2 uses
  %i.afx = and i32 %i.afw, 255                    ; 4 uses
  %i.afy = and i32 %i.afv, 8388607                ; 2 uses
  %i.afz = lshr i32 %i.afv, 16
  %i.aga = and i32 %i.afz, 32768
  %i.agb = icmp samesign ugt i32 %i.afx, 112
  %i.agc = shl nuw nsw i32 %i.afw, 10
  %i.agd = and i32 %i.agc, 31744
  %i.age = lshr i32 %i.afy, 13
  %i.agf = or disjoint i32 %i.agd, %i.age
  %i.agg = xor i32 %i.agf, 16384
  %i.agh = add nsw i32 %i.afx, -102
  %i.agi = icmp ult i32 %i.agh, 11
  %i.agj = add nuw nsw i32 %i.afy, 8384512
  %i.agk = sub nsw i32 125, %i.afx
  %i.agl = lshr i32 %i.agj, %i.agk
  %i.agm = add nuw nsw i32 %i.agl, 1
  %i.agn = lshr i32 %i.agm, 1
  %i.ago = select i1 %i.agi, i32 %i.agn, i32 0
  %i.agp = icmp samesign ugt i32 %i.afx, 143
  %i.agq = select i1 %i.agp, i32 32767, i32 0
  %i.agr = or i32 %i.agg, %i.agq
  %14 = select i1 %i.agb, i32 %i.agr, i32 0
  %i.ags = or i32 %14, %i.aga
  %i.agt = or i32 %i.ags, %i.ago
  %i.agu = trunc i32 %i.agt to i16
  %i.agv = load ptr, ptr %0, align 8
  %i.agw = getelementptr inbounds nuw [2 x i8], ptr %i.agv, i64 %indvars.iv357
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 4
  store i16 %i.agu, ptr %i.agx, align 2
  %i.agy = getelementptr inbounds nuw i8, ptr %i.adk, i64 12
  %i.agz = load i32, ptr %i.agy, align 4
  %i.aha = add i32 %i.agz, 4096                   ; 3 uses
  %i.ahb = lshr i32 %i.aha, 23                    ; 2 uses
  %i.ahc = and i32 %i.ahb, 255                    ; 4 uses
  %i.ahd = and i32 %i.aha, 8388607                ; 2 uses
  %i.ahe = lshr i32 %i.aha, 16
  %i.ahf = and i32 %i.ahe, 32768
  %i.ahg = icmp samesign ugt i32 %i.ahc, 112
  %i.ahh = shl nuw nsw i32 %i.ahb, 10
  %i.ahi = and i32 %i.ahh, 31744
  %i.ahj = lshr i32 %i.ahd, 13
  %i.ahk = or disjoint i32 %i.ahi, %i.ahj
  %i.ahl = xor i32 %i.ahk, 16384
  %i.ahm = add nsw i32 %i.ahc, -102
  %i.ahn = icmp ult i32 %i.ahm, 11
  %i.aho = add nuw nsw i32 %i.ahd, 8384512
  %i.ahp = sub nsw i32 125, %i.ahc
  %i.ahq = lshr i32 %i.aho, %i.ahp
  %i.ahr = add nuw nsw i32 %i.ahq, 1
  %i.ahs = lshr i32 %i.ahr, 1
  %i.aht = select i1 %i.ahn, i32 %i.ahs, i32 0
  %i.ahu = icmp samesign ugt i32 %i.ahc, 143
  %i.ahv = select i1 %i.ahu, i32 32767, i32 0
  %i.ahw = or i32 %i.ahl, %i.ahv
  %15 = select i1 %i.ahg, i32 %i.ahw, i32 0
  %i.ahx = or i32 %15, %i.ahf
  %i.ahy = or i32 %i.ahx, %i.aht
  %i.ahz = trunc i32 %i.ahy to i16
  %i.aia = load ptr, ptr %0, align 8
  %i.aib = getelementptr inbounds nuw [2 x i8], ptr %i.aia, i64 %indvars.iv357
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 6
  store i16 %i.ahz, ptr %i.aic, align 2
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.aid = load i32, ptr %i.c, align 8
  %i.aie = load i32, ptr %i.f, align 4
  %i.aif = shl i32 %i.aid, 2
  %i.aig = mul i32 %i.aif, %i.aie
  %i.aih = sext i32 %i.aig to i64
  %i.aii = icmp slt i64 %indvars.iv.next358, %i.aih
  br i1 %i.aii, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph317, %.lr.ph319, %.lr.ph322, %.lr.ph325, %.lr.ph327, %.lr.ph330, %.lr.ph332, %.lr.ph334, %.lr.ph337, %.lr.ph339, %.lr.ph342, %.lr.ph344, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %LoadImageDataNormalized.exit
  tail call void @free(ptr noundef %i.q) #52
  %i.aij = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %i.aik = icmp sgt i32 %i.aij, 1
  br i1 %i.aik, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %.loopexit
  store i32 1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ail = load ptr, ptr %0, align 8
  %.not299 = icmp eq ptr %i.ail, null
  br i1 %.not299, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @ImageMipmaps(ptr noundef nonnull %0)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.e
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.52) #52
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %bb.ai, %bb.ah, %bb.aj, %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc zeroext i16 @FloatToHalf(float noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = bitcast float %0 to i32
  %i.b = add i32 %i.a, 4096                       ; 3 uses
  %i.c = lshr i32 %i.b, 23                        ; 2 uses
  %i.d = and i32 %i.c, 255                        ; 4 uses
  %i.e = and i32 %i.b, 8388607                    ; 2 uses
  %i.f = lshr i32 %i.b, 16
  %i.g = and i32 %i.f, 32768
  %i.h = icmp samesign ugt i32 %i.d, 112
  %i.i = shl nuw nsw i32 %i.c, 10
  %i.j = and i32 %i.i, 31744
  %i.k = lshr i32 %i.e, 13
  %i.l = or disjoint i32 %i.j, %i.k
  %i.m = xor i32 %i.l, 16384
  %i.n = add nsw i32 %i.d, -102
  %i.o = icmp ult i32 %i.n, 11
  %i.p = add nuw nsw i32 %i.e, 8384512
  %i.q = sub nsw i32 125, %i.d
  %i.r = lshr i32 %i.p, %i.q
  %i.s = add nuw nsw i32 %i.r, 1
  %i.t = lshr i32 %i.s, 1
  %i.u = select i1 %i.o, i32 %i.t, i32 0
  %i.v = icmp samesign ugt i32 %i.d, 143
  %i.w = select i1 %i.v, i32 32767, i32 0
  %i.x = or i32 %i.w, %i.m
  %1 = select i1 %i.h, i32 %i.x, i32 0
  %i.y = or i32 %1, %i.g
  %i.z = or i32 %i.y, %i.u
  %i.aa = trunc i32 %i.z to i16
  ret i16 %i.aa
}

; Function Attrs: nounwind uwtable
define void @ImageMipmaps(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.Image, align 8              ; 6 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8              ; 5 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4              ; 5 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %switch.tableidx = add i32 %i.j, -1             ; 2 uses
  %i.k = icmp ult i32 %switch.tableidx, 24
  br i1 %i.k, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %bb.d
  %i.l = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ImageDraw.30, i64 %i.l
  %switch.load = load double, ptr %switch.gep, align 8
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %bb.d
  %.0.i = phi double [ 0.000000e+00, %bb.d ], [ %switch.load, %switch.lookup ]
  %i.m = sitofp i32 %i.d to double
  %i.n = fmul nnan double %.0.i, %i.m
  %i.o = sitofp i32 %i.g to double
  %i.p = fmul double %i.n, %i.o
  %i.q = fptosi double %i.p to i32                ; 2 uses
  %i.r = icmp slt i32 %i.d, 4
  %i.s = icmp slt i32 %i.g, 4
  %or.cond.i = and i1 %i.r, %i.s
  br i1 %or.cond.i, label %bb.f, label %GetPixelDataSize.exit

bb.f:                                             ; preds = %bb.e
  %i.t = and i32 %i.j, -2
  %or.cond3.i = icmp eq i32 %i.t, 14
  br i1 %or.cond3.i, label %GetPixelDataSize.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = and i32 %i.j, -8
  %or.cond5.i = icmp eq i32 %i.u, 16
  %spec.select.i = select i1 %or.cond5.i, i32 16, i32 %i.q
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.e, %bb.f, %bb.g
  %.016.i = phi i32 [ %i.q, %bb.e ], [ 8, %bb.f ], [ %spec.select.i, %bb.g ] ; 2 uses
  %i.v = icmp ne i32 %i.d, 1                      ; 2 uses
  %i.w = icmp ne i32 %i.g, 1                      ; 2 uses
  %i.x = or i1 %i.v, %i.w
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %GetPixelDataSize.exit, %GetPixelDataSize.exit85
  %i.y = phi i1 [ %i.as, %GetPixelDataSize.exit85 ], [ %i.w, %GetPixelDataSize.exit ]
  %i.z = phi i1 [ %i.ar, %GetPixelDataSize.exit85 ], [ %i.v, %GetPixelDataSize.exit ]
  %.070110 = phi i32 [ %i.aq, %GetPixelDataSize.exit85 ], [ %.016.i, %GetPixelDataSize.exit ] ; 2 uses
  %.071109 = phi i32 [ %.172, %GetPixelDataSize.exit85 ], [ %i.g, %GetPixelDataSize.exit ]
  %.073108 = phi i32 [ %.174, %GetPixelDataSize.exit85 ], [ %i.d, %GetPixelDataSize.exit ]
  %.076107 = phi i32 [ %i.ae, %GetPixelDataSize.exit85 ], [ 1, %GetPixelDataSize.exit ]
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.aa = sdiv i32 %.073108, 2
  %i.ab = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.174 = phi i32 [ %i.ab, %bb.h ], [ 1, %.lr.ph ] ; 5 uses
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = sdiv i32 %.071109, 2
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.172 = phi i32 [ %i.ad, %bb.j ], [ 1, %bb.i ]  ; 5 uses
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 2, ptr noundef nonnull @.str.63, i32 noundef %.174, i32 noundef %.172, i32 noundef %.070110) #52
  %i.ae = add nuw nsw i32 %.076107, 1             ; 2 uses
  %i.af = load i32, ptr %i.i, align 4             ; 3 uses
  %switch.tableidx124 = add i32 %i.af, -1         ; 2 uses
  %i.ag = icmp ult i32 %switch.tableidx124, 24
  br i1 %i.ag, label %switch.lookup125, label %bb.l

switch.lookup125:                                 ; preds = %bb.k
  %i.ah = zext nneg i32 %switch.tableidx124 to i64
  %switch.gep126 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ImageDraw.30, i64 %i.ah
  %switch.load127 = load double, ptr %switch.gep126, align 8
  br label %bb.l

bb.l:                                             ; preds = %switch.lookup125, %bb.k
  %.0.i79 = phi double [ 0.000000e+00, %bb.k ], [ %switch.load127, %switch.lookup125 ]
  %i.ai = uitofp nneg i32 %.174 to double
  %i.aj = fmul nnan double %.0.i79, %i.ai
  %i.ak = uitofp nneg i32 %.172 to double
  %i.al = fmul double %i.aj, %i.ak
  %i.am = fptosi double %i.al to i32              ; 2 uses
  %i.an = or i32 %.172, %.174
  %or.cond.i80 = icmp samesign ult i32 %i.an, 4
  br i1 %or.cond.i80, label %bb.m, label %GetPixelDataSize.exit85

bb.m:                                             ; preds = %bb.l
  %i.ao = and i32 %i.af, -2
  %or.cond3.i82 = icmp eq i32 %i.ao, 14
  br i1 %or.cond3.i82, label %GetPixelDataSize.exit85, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = and i32 %i.af, -8
  %or.cond5.i83 = icmp eq i32 %i.ap, 16
  %spec.select.i84 = select i1 %or.cond5.i83, i32 16, i32 %i.am
  br label %GetPixelDataSize.exit85

GetPixelDataSize.exit85:                          ; preds = %bb.l, %bb.m, %bb.n
  %.016.i81 = phi i32 [ %i.am, %bb.l ], [ 8, %bb.m ], [ %spec.select.i84, %bb.n ]
  %i.aq = add nsw i32 %.016.i81, %.070110         ; 2 uses
  %i.ar = icmp ne i32 %.174, 1                    ; 2 uses
  %i.as = icmp ne i32 %.172, 1                    ; 2 uses
  %i.at = or i1 %i.ar, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %GetPixelDataSize.exit85, %GetPixelDataSize.exit
  %.076.lcssa = phi i32 [ 1, %GetPixelDataSize.exit ], [ %i.ae, %GetPixelDataSize.exit85 ] ; 4 uses
  %.070.lcssa = phi i32 [ %.016.i, %GetPixelDataSize.exit ], [ %i.aq, %GetPixelDataSize.exit85 ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp slt i32 %i.av, %.076.lcssa
  br i1 %i.aw, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %._crit_edge
  %i.ax = sext i32 %.070.lcssa to i64
  %i.ay = tail call noalias ptr @calloc(i64 noundef %i.ax, i64 noundef 1) #56 ; 3 uses
  %i.az = load ptr, ptr %0, align 8               ; 2 uses
  %i.ba = load i32, ptr %i.c, align 8             ; 2 uses
  %i.bb = load i32, ptr %i.f, align 4             ; 2 uses
  %i.bc = load i32, ptr %i.i, align 4             ; 3 uses
  %switch.tableidx128 = add i32 %i.bc, -1         ; 2 uses
  %i.bd = icmp ult i32 %switch.tableidx128, 24
  br i1 %i.bd, label %switch.lookup129, label %bb.p

switch.lookup129:                                 ; preds = %bb.o
  %i.be = zext nneg i32 %switch.tableidx128 to i64
  %switch.gep130 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ImageDraw.30, i64 %i.be
  %switch.load131 = load double, ptr %switch.gep130, align 8
  br label %bb.p

bb.p:                                             ; preds = %switch.lookup129, %bb.o
  %.0.i86 = phi double [ 0.000000e+00, %bb.o ], [ %switch.load131, %switch.lookup129 ]
  %i.bf = sitofp i32 %i.ba to double
  %i.bg = fmul nnan double %.0.i86, %i.bf
  %i.bh = sitofp i32 %i.bb to double
  %i.bi = fmul double %i.bg, %i.bh
  %i.bj = fptosi double %i.bi to i32              ; 2 uses
  %i.bk = icmp slt i32 %i.ba, 4
  %i.bl = icmp slt i32 %i.bb, 4
  %or.cond.i87 = and i1 %i.bk, %i.bl
  br i1 %or.cond.i87, label %bb.q, label %GetPixelDataSize.exit92

bb.q:                                             ; preds = %bb.p
  %i.bm = and i32 %i.bc, -2
  %or.cond3.i89 = icmp eq i32 %i.bm, 14
  br i1 %or.cond3.i89, label %GetPixelDataSize.exit92, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = and i32 %i.bc, -8
  %or.cond5.i90 = icmp eq i32 %i.bn, 16
  %spec.select.i91 = select i1 %or.cond5.i90, i32 16, i32 %i.bj
  br label %GetPixelDataSize.exit92

GetPixelDataSize.exit92:                          ; preds = %bb.p, %bb.q, %bb.r
  %.016.i88 = phi i32 [ %i.bj, %bb.p ], [ 8, %bb.q ], [ %spec.select.i91, %bb.r ]
  %i.bo = sext i32 %.016.i88 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.az, i64 %i.bo, i1 false)
  tail call void @free(ptr noundef %i.az) #52
  store ptr %i.ay, ptr %0, align 8
  %i.bp = load i32, ptr %i.c, align 8             ; 3 uses
  %i.bq = load i32, ptr %i.f, align 4             ; 3 uses
  %i.br = load i32, ptr %i.i, align 4             ; 3 uses
  %switch.tableidx132 = add i32 %i.br, -1         ; 2 uses
  %i.bs = icmp ult i32 %switch.tableidx132, 24
  br i1 %i.bs, label %switch.lookup133, label %bb.s

switch.lookup133:                                 ; preds = %GetPixelDataSize.exit92
  %i.bt = zext nneg i32 %switch.tableidx132 to i64
  %switch.gep134 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ImageDraw.30, i64 %i.bt
end_hunk_2
begin_hunk_3_@ImageFromChannel:bb.a

bb.i:                                             ; preds = %.thread
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.59) #52
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ai ] ; 6 uses
  %.084100 = phi i32 [ 0, %.lr.ph.preheader ], [ %.185, %bb.ai ] ; 29 uses
  switch i32 %i.l, label %bb.ai [
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 5, label %bb.l
    i32 3, label %bb.q
    i32 6, label %bb.u
    i32 7, label %bb.aa
    i32 4, label %bb.ab
    i32 8, label %bb.ac
    i32 9, label %bb.ad
    i32 10, label %bb.ae
    i32 11, label %bb.af
    i32 12, label %bb.ag
    i32 13, label %bb.ah
  ]

bb.j:                                             ; preds = %.lr.ph
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.aa = load i8, ptr %gep, align 1
  %i.ab = uitofp i8 %i.aa to float
  %i.ac = fdiv nnan float %i.ab, 2.550000e+02
  br label %bb.ai

bb.k:                                             ; preds = %.lr.ph
  %i.ad = add nsw i32 %.084100, %.289
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.a, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = uitofp i8 %i.ag to float
  %i.ai = fdiv nnan float %i.ah, 2.550000e+02
  %i.aj = add nsw i32 %.084100, 2
  br label %bb.ai

bb.l:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.al = load i16, ptr %i.ak, align 2            ; 4 uses
  switch i32 %.289, label %default.unreachable [
    i32 0, label %bb.m
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.am = lshr i16 %i.al, 11
  %i.an = uitofp nneg i16 %i.am to float
  %i.ao = fmul nnan float %i.an, f0x3D042108
  br label %bb.ai

bb.n:                                             ; preds = %bb.l
  %i.ap = lshr i16 %i.al, 6
  %i.aq = and i16 %i.ap, 31
  %i.ar = uitofp nneg i16 %i.aq to float
  %i.as = fmul nnan float %i.ar, f0x3D042108
  br label %bb.ai

bb.o:                                             ; preds = %bb.l
  %i.at = lshr i16 %i.al, 1
  %i.au = and i16 %i.at, 31
  %i.av = uitofp nneg i16 %i.au to float
  %i.aw = fmul nnan float %i.av, f0x3D042108
  br label %bb.ai

default.unreachable:                              ; preds = %bb.u, %bb.q, %bb.l
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.ax = and i16 %i.al, 1
  %i.ay = icmp eq i16 %i.ax, 0
  %i.az = select i1 %i.ay, float 0.000000e+00, float 1.000000e+00
  br label %bb.ai

bb.q:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.bb = load i16, ptr %i.ba, align 2            ; 3 uses
  switch i32 %.289, label %default.unreachable [
    i32 0, label %bb.r
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.ai
  ]

bb.r:                                             ; preds = %bb.q
  %i.bc = lshr i16 %i.bb, 11
  %i.bd = uitofp nneg i16 %i.bc to float
  %i.be = fmul nnan float %i.bd, f0x3D042108
  br label %bb.ai

bb.s:                                             ; preds = %bb.q
  %i.bf = lshr i16 %i.bb, 5
  %i.bg = and i16 %i.bf, 63
  %i.bh = uitofp nneg i16 %i.bg to float
  %i.bi = fmul nnan float %i.bh, f0x3C820821
  br label %bb.ai

bb.t:                                             ; preds = %bb.q
  %i.bj = and i16 %i.bb, 31
  %i.bk = uitofp nneg i16 %i.bj to float
  %i.bl = fmul nnan float %i.bk, f0x3D042108
  br label %bb.ai

bb.u:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.bn = load i16, ptr %i.bm, align 2            ; 4 uses
  switch i32 %.289, label %default.unreachable [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  %i.bo = lshr i16 %i.bn, 12
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.bp = lshr i16 %i.bn, 8
  %i.bq = and i16 %i.bp, 15
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.br = lshr i16 %i.bn, 4
  %i.bs = and i16 %i.br, 15
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.bt = and i16 %i.bn, 15
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y, %bb.x, %bb.v
  %.2.in.in = phi i16 [ %i.bo, %bb.v ], [ %i.bq, %bb.w ], [ %i.bs, %bb.x ], [ %i.bt, %bb.y ]
  %.2.in = uitofp nneg i16 %.2.in.in to float
  %.2 = fmul nnan float %.2.in, f0x3D888889
  br label %bb.ai

bb.aa:                                            ; preds = %.lr.ph
  %i.bu = add nsw i32 %.084100, %.289
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.a, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = uitofp i8 %i.bx to float
  %i.bz = fdiv nnan float %i.by, 2.550000e+02
  %i.ca = add nsw i32 %.084100, 4
  br label %bb.ai

bb.ab:                                            ; preds = %.lr.ph
  %i.cb = add nsw i32 %.084100, %.289
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.a, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = uitofp i8 %i.ce to float
  %i.cg = fdiv nnan float %i.cf, 2.550000e+02
  %i.ch = add nsw i32 %.084100, 3
  br label %bb.ai

bb.ac:                                            ; preds = %.lr.ph
  %i.ci = sext i32 %.084100 to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4
  %i.cl = add nsw i32 %.084100, 1
  br label %bb.ai

bb.ad:                                            ; preds = %.lr.ph
  %i.cm = add nsw i32 %.084100, %.289
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4
  %i.cq = add nsw i32 %.084100, 3
  br label %bb.ai

bb.ae:                                            ; preds = %.lr.ph
  %i.cr = add nsw i32 %.084100, %.289
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4
  %i.cv = add nsw i32 %.084100, 4
  br label %bb.ai

bb.af:                                            ; preds = %.lr.ph
  %i.cw = sext i32 %.084100 to i64
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2            ; 2 uses
  %i.cz = zext i16 %i.cy to i32                   ; 2 uses
  %i.da = lshr i32 %i.cz, 10
  %i.db = and i32 %i.da, 31                       ; 2 uses
  %i.dc = shl nuw nsw i32 %i.cz, 13               ; 2 uses
  %i.dd = and i32 %i.dc, 8380416                  ; 3 uses
  %i.de = uitofp nneg i32 %i.dd to float
  %i.df = bitcast float %i.de to i32              ; 2 uses
  %i.dg = lshr i32 %i.df, 23
  %.signext.i = sext i16 %i.cy to i32
  %i.dh = and i32 %.signext.i, -2147483648
  %.not.i = icmp eq i32 %i.db, 0
  %i.di = shl nuw nsw i32 %i.db, 23
  %i.dj = add nuw nsw i32 %i.di, 939524096
  %i.dk = or disjoint i32 %i.dj, %i.dd
  %.not12.i = icmp eq i32 %i.dd, 0
  %i.dl = and i32 %i.df, 2139095040
  %i.dm = add nsw i32 %i.dl, -310378496
  %i.dn = sub nsw i32 150, %i.dg
  %i.do = shl i32 %i.dc, %i.dn
  %i.dp = and i32 %i.do, 8380416
  %i.dq = or disjoint i32 %i.dp, %i.dm
  %3 = select i1 %.not12.i, i32 0, i32 %i.dq
  %i.dr = select i1 %.not.i, i32 %3, i32 %i.dk
  %i.ds = or i32 %i.dr, %i.dh
  %i.dt = bitcast i32 %i.ds to float
  %i.du = add nsw i32 %.084100, 1
  br label %bb.ai

bb.ag:                                            ; preds = %.lr.ph
  %i.dv = add nsw i32 %.084100, %.289
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2            ; 2 uses
  %i.dz = zext i16 %i.dy to i32                   ; 2 uses
  %i.ea = lshr i32 %i.dz, 10
  %i.eb = and i32 %i.ea, 31                       ; 2 uses
  %i.ec = shl nuw nsw i32 %i.dz, 13               ; 2 uses
  %i.ed = and i32 %i.ec, 8380416                  ; 3 uses
  %i.ee = uitofp nneg i32 %i.ed to float
  %i.ef = bitcast float %i.ee to i32              ; 2 uses
  %i.eg = lshr i32 %i.ef, 23
  %.signext.i92 = sext i16 %i.dy to i32
  %i.eh = and i32 %.signext.i92, -2147483648
  %.not.i93 = icmp eq i32 %i.eb, 0
  %i.ei = shl nuw nsw i32 %i.eb, 23
  %i.ej = add nuw nsw i32 %i.ei, 939524096
  %i.ek = or disjoint i32 %i.ej, %i.ed
  %.not12.i94 = icmp eq i32 %i.ed, 0
  %i.el = and i32 %i.ef, 2139095040
  %i.em = add nsw i32 %i.el, -310378496
  %i.en = sub nsw i32 150, %i.eg
  %i.eo = shl i32 %i.ec, %i.en
  %i.ep = and i32 %i.eo, 8380416
  %i.eq = or disjoint i32 %i.ep, %i.em
  %4 = select i1 %.not12.i94, i32 0, i32 %i.eq
  %i.er = select i1 %.not.i93, i32 %4, i32 %i.ek
  %i.es = or i32 %i.er, %i.eh
  %i.et = bitcast i32 %i.es to float
  %i.eu = add nsw i32 %.084100, 3
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph
  %i.ev = add nsw i32 %.084100, %.289
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ew
  %i.ey = load i16, ptr %i.ex, align 2            ; 2 uses
  %i.ez = zext i16 %i.ey to i32                   ; 2 uses
  %i.fa = lshr i32 %i.ez, 10
  %i.fb = and i32 %i.fa, 31                       ; 2 uses
  %i.fc = shl nuw nsw i32 %i.ez, 13               ; 2 uses
  %i.fd = and i32 %i.fc, 8380416                  ; 3 uses
  %i.fe = uitofp nneg i32 %i.fd to float
  %i.ff = bitcast float %i.fe to i32              ; 2 uses
  %i.fg = lshr i32 %i.ff, 23
  %.signext.i94 = sext i16 %i.ey to i32
  %i.fh = and i32 %.signext.i94, -2147483648
  %.not.i95 = icmp eq i32 %i.fb, 0
  %i.fi = shl nuw nsw i32 %i.fb, 23
  %i.fj = add nuw nsw i32 %i.fi, 939524096
  %i.fk = or disjoint i32 %i.fj, %i.fd
  %.not12.i97 = icmp eq i32 %i.fd, 0
  %i.fl = and i32 %i.ff, 2139095040
  %i.fm = add nsw i32 %i.fl, -310378496
  %i.fn = sub nsw i32 150, %i.fg
  %i.fo = shl i32 %i.fc, %i.fn
  %i.fp = and i32 %i.fo, 8380416
  %i.fq = or disjoint i32 %i.fp, %i.fm
  %5 = select i1 %.not12.i97, i32 0, i32 %i.fq
  %i.fr = select i1 %.not.i95, i32 %5, i32 %i.fk
  %i.fs = or i32 %i.fr, %i.fh
  %i.ft = bitcast i32 %i.fs to float
  %i.fu = add nsw i32 %.084100, 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.q, %bb.r, %bb.t, %bb.s, %bb.m, %bb.o, %bb.p, %bb.n, %.lr.ph, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.k, %bb.j
  %.185 = phi i32 [ %.084100, %.lr.ph ], [ %.084100, %bb.j ], [ %i.aj, %bb.k ], [ %i.fu, %bb.ah ], [ %.084100, %bb.m ], [ %.084100, %bb.z ], [ %i.ca, %bb.aa ], [ %i.ch, %bb.ab ], [ %i.cl, %bb.ac ], [ %i.cq, %bb.ad ], [ %i.cv, %bb.ae ], [ %i.du, %bb.af ], [ %i.eu, %bb.ag ], [ %.084100, %bb.n ], [ %.084100, %bb.p ], [ %.084100, %bb.o ], [ %.084100, %bb.q ], [ %.084100, %bb.s ], [ %.084100, %bb.t ], [ %.084100, %bb.r ]
  %.3 = phi float [ -1.000000e+00, %.lr.ph ], [ %i.ac, %bb.j ], [ %i.ai, %bb.k ], [ %i.ft, %bb.ah ], [ %i.ao, %bb.m ], [ %.2, %bb.z ], [ %i.bz, %bb.aa ], [ %i.cg, %bb.ab ], [ %i.ck, %bb.ac ], [ %i.cp, %bb.ad ], [ %i.cu, %bb.ae ], [ %i.dt, %bb.af ], [ %i.et, %bb.ag ], [ %i.as, %bb.n ], [ %i.az, %bb.p ], [ %i.aw, %bb.o ], [ -1.000000e+00, %bb.q ], [ %i.bi, %bb.s ], [ %i.bl, %bb.t ], [ %i.be, %bb.r ]
  %i.fv = fmul float %.3, 2.550000e+02
  %i.fw = fptoui float %i.fv to i8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  store i8 %i.fw, ptr %i.fx, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.ai, %.preheader, %bb.i
  store ptr %i.w, ptr %0, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @UnloadImageColors(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @free(ptr noundef %0) #52
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageResizeCanvas(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 %5) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.50) #52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp sgt i32 %i.m, 13
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.51) #52
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq i32 %1, %i.o
  %.pre = load i32, ptr %i.f, align 4             ; 3 uses
  %.not96 = icmp eq i32 %2, %.pre
  %or.cond = select i1 %.not, i1 %.not96, i1 false
  br i1 %or.cond, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = sitofp i32 %i.o to float                 ; 2 uses
  %i.q = sitofp i32 %.pre to float                ; 2 uses
  %i.r = sitofp i32 %3 to float                   ; 3 uses
  %i.s = sitofp i32 %4 to float                   ; 3 uses
  %i.t = icmp slt i32 %3, 0
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = sub nsw i32 0, %3
  %i.v = uitofp nneg i32 %i.u to float
  %i.w = fadd float %i.r, %i.p
  %i.x = fptosi float %i.v to i32
  %i.y = zext nneg i32 %i.x to i64
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.z = add nsw i32 %i.o, %3
  %i.aa = icmp sgt i32 %i.z, %1
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = sub nsw i32 %1, %3
  %i.ac = sitofp i32 %i.ab to float
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.sroa.8.0 = phi float [ %i.w, %bb.j ], [ %i.ac, %bb.l ], [ %i.p, %bb.k ] ; 2 uses
  %.sroa.026.0 = phi i64 [ %i.y, %bb.j ], [ 0, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.j ], [ %i.r, %bb.l ], [ %i.r, %bb.k ]
  %i.ad = icmp slt i32 %4, 0
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ae = sub nsw i32 0, %4
  %i.af = uitofp nneg i32 %i.ae to float
  %i.ag = fadd float %i.s, %i.q
  %i.ah = fptosi float %i.af to i32
  %i.ai = zext nneg i32 %i.ah to i64
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.aj = add nsw i32 %.pre, %4
  %i.ak = icmp sgt i32 %i.aj, %2
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = sub nsw i32 %2, %4
  %i.am = sitofp i32 %i.al to float
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.sroa.15.0 = phi float [ %i.ag, %bb.n ], [ %i.am, %bb.p ], [ %i.q, %bb.o ] ; 2 uses
  %.sroa.527.0 = phi i64 [ %i.ai, %bb.n ], [ 0, %bb.p ], [ 0, %bb.o ] ; 3 uses
  %.sroa.5.0 = phi float [ 0.000000e+00, %bb.n ], [ %i.s, %bb.p ], [ %i.s, %bb.o ]
  %i.an = sitofp i32 %1 to float                  ; 2 uses
  %i.ao = fcmp ogt float %.sroa.8.0, %i.an
  %.sroa.8.1 = select i1 %i.ao, float %i.an, float %.sroa.8.0
  %i.ap = sitofp i32 %2 to float                  ; 2 uses
  %i.aq = fcmp ogt float %.sroa.15.0, %i.ap
  %.sroa.15.1 = select i1 %i.aq, float %i.ap, float %.sroa.15.0
  %switch.tableidx = add i32 %i.m, -1             ; 2 uses
  %i.ar = icmp ult i32 %switch.tableidx, 13
  br i1 %i.ar, label %switch.lookup, label %GetPixelDataSize.exit

switch.lookup:                                    ; preds = %bb.q
  %i.as = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ImageFlipVertical, i64 %i.as
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.q, %switch.lookup
  %i.at = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.q ] ; 7 uses
  %i.au = mul nsw i32 %2, %1
  %i.av = mul nsw i32 %i.au, %i.at
  %i.aw = sext i32 %i.av to i64
  %i.ax = tail call noalias ptr @calloc(i64 noundef %i.aw, i64 noundef 1) #56 ; 21 uses
  %i.ay = load i32, ptr %i.l, align 4
  tail call void @SetPixelColor(ptr noundef %i.ax, i32 %5, i32 noundef %i.ay)
  %i.az = icmp sgt i32 %1, 1
  br i1 %i.az, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %GetPixelDataSize.exit
  %i.ba = zext nneg i32 %i.at to i64              ; 10 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.bb = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.bb, 3                    ; 3 uses
  %i.bc = add nsw i32 %1, -2
  %i.bd = icmp ult i32 %i.bc, 3
  br i1 %i.bd, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bb, -4
  br label %bb.s

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.r ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.be = mul nuw nsw i64 %indvars.iv.epil, %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.be
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.ax, i64 %i.ba, i1 false)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.r, !llvm.loop !113

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.r, %GetPixelDataSize.exit
  %i.bg = icmp sgt i32 %2, 1
  br i1 %i.bg, label %.lr.ph101, label %._crit_edge

.lr.ph101:                                        ; preds = %.preheader
  %i.bh = mul i32 %i.at, %1                       ; 4 uses
end_hunk_3
begin_hunk_4_@GetImageAlphaBorder:bb.a
  %.155.us = phi i32 [ %.3.us.1, %bb.e ], [ %.063.us, %.preheader.us ] ; 2 uses
  %.13753.us = phi i32 [ %.238.us.1, %bb.e ], [ %.03661.us, %.preheader.us ] ; 2 uses
  %.14052.us = phi i32 [ %.342.us.1, %bb.e ], [ %.03960.us, %.preheader.us ] ; 2 uses
  %.14451.us = phi i32 [ %.346.us.1, %bb.e ], [ %.04359.us, %.preheader.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.preheader.us ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp ugt i8 %i.q, %i.i
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.us.new
  %i.s = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %spec.select.us = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %.155.us)
  %.245.us = tail call i32 @llvm.smax.i32(i32 %i.s, i32 %.14451.us)
  %.241.us = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.14052.us)
  %spec.select49.us = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %.13753.us)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.us.new
  %.346.us = phi i32 [ %.14451.us, %.preheader.us.new ], [ %.245.us, %bb.b ] ; 2 uses
  %.342.us = phi i32 [ %.14052.us, %.preheader.us.new ], [ %.241.us, %bb.b ] ; 2 uses
  %.238.us = phi i32 [ %.13753.us, %.preheader.us.new ], [ %spec.select49.us, %bb.b ] ; 2 uses
  %.3.us = phi i32 [ %.155.us, %.preheader.us.new ], [ %spec.select.us, %bb.b ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp ugt i8 %i.v, %i.i
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %spec.select.us.1 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.3.us)
  %.245.us.1 = tail call i32 @llvm.smax.i32(i32 %i.x, i32 %.346.us)
  %.241.us.1 = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.342.us)
  %spec.select49.us.1 = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %.238.us)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.346.us.1 = phi i32 [ %.346.us, %bb.c ], [ %.245.us.1, %bb.d ] ; 3 uses
  %.342.us.1 = phi i32 [ %.342.us, %bb.c ], [ %.241.us.1, %bb.d ] ; 3 uses
  %.238.us.1 = phi i32 [ %.238.us, %bb.c ], [ %spec.select49.us.1, %bb.d ] ; 3 uses
  %.3.us.1 = phi i32 [ %.3.us, %bb.c ], [ %spec.select.us.1, %bb.d ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new

._crit_edge.us.unr-lcssa:                         ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.155.us.epil.init = phi i32 [ %.063.us, %.preheader.us ], [ %.3.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.13753.us.epil.init = phi i32 [ %.03661.us, %.preheader.us ], [ %.238.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.14052.us.epil.init = phi i32 [ %.03960.us, %.preheader.us ], [ %.342.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.14451.us.epil.init = phi i32 [ %.04359.us, %.preheader.us ], [ %.346.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.epil.init
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp ugt i8 %i.aa, %i.i
  br i1 %i.ab, label %bb.f, label %._crit_edge.us

bb.f:                                             ; preds = %.epil.preheader
  %i.ac = trunc nuw nsw i64 %indvars.iv.epil.init to i32 ; 2 uses
  %spec.select.us.epil = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %.155.us.epil.init)
  %.245.us.epil = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 %.14451.us.epil.init)
  %.241.us.epil = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.14052.us.epil.init)
  %spec.select49.us.epil = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %.13753.us.epil.init)
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.epil.preheader, %bb.f, %._crit_edge.us.unr-lcssa
  %.346.us.lcssa = phi i32 [ %.346.us.1, %._crit_edge.us.unr-lcssa ], [ %.14451.us.epil.init, %.epil.preheader ], [ %.245.us.epil, %bb.f ] ; 3 uses
  %.342.us.lcssa = phi i32 [ %.342.us.1, %._crit_edge.us.unr-lcssa ], [ %.14052.us.epil.init, %.epil.preheader ], [ %.241.us.epil, %bb.f ] ; 3 uses
  %.238.us.lcssa = phi i32 [ %.238.us.1, %._crit_edge.us.unr-lcssa ], [ %.13753.us.epil.init, %.epil.preheader ], [ %spec.select49.us.epil, %bb.f ] ; 2 uses
  %.3.us.lcssa = phi i32 [ %.3.us.1, %._crit_edge.us.unr-lcssa ], [ %.155.us.epil.init, %.epil.preheader ], [ %spec.select.us.epil, %bb.f ] ; 4 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge64, label %.preheader.us

._crit_edge64:                                    ; preds = %._crit_edge.us
  %i.ad = icmp ne i32 %.3.us.lcssa, 65536
  %i.ae = icmp ne i32 %.346.us.lcssa, 65536
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.g, label %._crit_edge64.thread

bb.g:                                             ; preds = %._crit_edge64
  %i.af = add nuw nsw i32 %.346.us.lcssa, 1
  %i.ag = sub i32 %i.af, %.3.us.lcssa
  %reass.sub = sub i32 %.238.us.lcssa, %.342.us.lcssa
  %i.ah = add i32 %reass.sub, 1
  %i.ai = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.ag, i64 1
  %i.ak = insertelement <4 x i32> %i.aj, i32 %.342.us.lcssa, i64 2
  %i.al = insertelement <4 x i32> %i.ak, i32 %.3.us.lcssa, i64 3
  %i.am = sitofp <4 x i32> %i.al to <4 x float>   ; 2 uses
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %._crit_edge64.thread

._crit_edge64.thread:                             ; preds = %.preheader.lr.ph, %.preheader50, %bb.g, %._crit_edge64
  %.sroa.030.0 = phi <2 x float> [ %i.an, %bb.g ], [ zeroinitializer, %._crit_edge64 ], [ zeroinitializer, %.preheader50 ], [ zeroinitializer, %.preheader.lr.ph ]
  %.sroa.432.0 = phi <2 x float> [ %i.ao, %bb.g ], [ zeroinitializer, %._crit_edge64 ], [ zeroinitializer, %.preheader50 ], [ zeroinitializer, %.preheader.lr.ph ]
  tail call void @free(ptr noundef nonnull %i.a) #52
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge64.thread, %bb.a
  %.sroa.030.1 = phi <2 x float> [ %.sroa.030.0, %._crit_edge64.thread ], [ zeroinitializer, %bb.a ]
  %.sroa.432.1 = phi <2 x float> [ %.sroa.432.0, %._crit_edge64.thread ], [ zeroinitializer, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.030.1, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.432.1, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define void @ImageAlphaClear(ptr nofree noundef readonly captures(none) %0, i32 %1, float noundef %2) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %1 to i8   ; 3 uses
  %.sroa.7.0.extract.shift = lshr i32 %1, 8
  %.sroa.7.0.extract.trunc = trunc i32 %.sroa.7.0.extract.shift to i8 ; 2 uses
  %.sroa.12.0.extract.shift = lshr i32 %1, 16
  %.sroa.12.0.extract.trunc = trunc i32 %.sroa.12.0.extract.shift to i8 ; 2 uses
  %.sroa.17.0.extract.shift = lshr i32 %1, 24
  %.sroa.17.0.extract.trunc = trunc nuw i32 %.sroa.17.0.extract.shift to i8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 13 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.50) #52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp sgt i32 %i.m, 13
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.51) #52
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  switch i32 %i.m, label %.loopexit [
    i32 2, label %bb.i
    i32 5, label %bb.l
    i32 6, label %bb.p
    i32 7, label %bb.t
    i32 10, label %.preheader
    i32 13, label %.preheader122
  ]

.preheader122:                                    ; preds = %bb.h
  %i.o = load i32, ptr %i.c, align 8
  %i.p = load i32, ptr %i.f, align 4
  %i.q = shl i32 %i.o, 2
  %i.r = mul i32 %i.q, %i.p
  %i.s = icmp sgt i32 %i.r, 3
  br i1 %i.s, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader122
  %i.t = tail call i32 @llvm.bswap.i32(i32 %1)
  %i.u = bitcast i32 %i.t to <4 x i8>
  %i.v = uitofp <4 x i8> %i.u to <4 x float>
  %i.w = fdiv <4 x float> %i.v, splat (float 2.550000e+02)
  %i.x = bitcast <4 x float> %i.w to <4 x i32>
  %i.y = add nuw <4 x i32> %i.x, splat (i32 4096) ; 3 uses
  %i.z = lshr <4 x i32> %i.y, splat (i32 23)      ; 2 uses
  %i.aa = and <4 x i32> %i.z, splat (i32 255)     ; 4 uses
  %i.ab = add nsw <4 x i32> %i.aa, splat (i32 -102)
  %i.ac = icmp ult <4 x i32> %i.ab, splat (i32 11)
  %i.ad = and <4 x i32> %i.y, splat (i32 8388607) ; 2 uses
  %i.ae = lshr <4 x i32> %i.y, splat (i32 16)
  %i.af = and <4 x i32> %i.ae, splat (i32 32768)
  %i.ag = icmp samesign ugt <4 x i32> %i.aa, splat (i32 112)
  %i.ah = shl nuw nsw <4 x i32> %i.z, splat (i32 10)
  %i.ai = and <4 x i32> %i.ah, splat (i32 31744)
  %i.aj = lshr <4 x i32> %i.ad, splat (i32 13)
  %i.ak = or disjoint <4 x i32> %i.ai, %i.aj
  %i.al = xor <4 x i32> %i.ak, splat (i32 16384)
  %i.am = add nuw nsw <4 x i32> %i.ad, splat (i32 8384512)
  %i.an = sub nsw <4 x i32> splat (i32 125), %i.aa
  %i.ao = lshr <4 x i32> %i.am, %i.an
  %i.ap = add nuw nsw <4 x i32> %i.ao, splat (i32 1)
  %i.aq = lshr <4 x i32> %i.ap, splat (i32 1)
  %i.ar = select <4 x i1> %i.ac, <4 x i32> %i.aq, <4 x i32> zeroinitializer
  %i.as = icmp samesign ugt <4 x i32> %i.aa, splat (i32 143)
  %i.at = select <4 x i1> %i.as, <4 x i32> splat (i32 32767), <4 x i32> zeroinitializer
  %i.au = or <4 x i32> %i.al, %i.at
  %3 = select <4 x i1> %i.ag, <4 x i32> %i.au, <4 x i32> zeroinitializer
  %i.av = or <4 x i32> %3, %i.af
  %i.aw = or <4 x i32> %i.av, %i.ar
  %i.ax = trunc <4 x i32> %i.aw to <4 x i16>      ; 4 uses
  %i.ay = extractelement <4 x i16> %i.ax, i64 0
  %i.az = extractelement <4 x i16> %i.ax, i64 1
  %i.ba = extractelement <4 x i16> %i.ax, i64 2
  %i.bb = extractelement <4 x i16> %i.ax, i64 3
  br label %bb.z

.preheader:                                       ; preds = %bb.h
  %i.bc = load i32, ptr %i.c, align 8             ; 2 uses
  %i.bd = load i32, ptr %i.f, align 4             ; 2 uses
  %i.be = shl i32 %i.bc, 2
  %i.bf = mul i32 %i.be, %i.bd
  %i.bg = icmp sgt i32 %i.bf, 3
  br i1 %i.bg, label %.lr.ph126, label %.loopexit

.lr.ph126:                                        ; preds = %.preheader
  %i.bh = bitcast i32 %1 to <4 x i8>
  %i.bi = uitofp <4 x i8> %i.bh to <4 x float>
  %i.bj = fdiv <4 x float> %i.bi, splat (float 2.550000e+02) ; 4 uses
  %.pre156 = load ptr, ptr %0, align 8
  %i.bk = extractelement <4 x float> %i.bj, i64 0
  %i.bl = extractelement <4 x float> %i.bj, i64 1
  %i.bm = extractelement <4 x float> %i.bj, i64 2
  %i.bn = extractelement <4 x float> %i.bj, i64 3
  br label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.bo = fmul float %2, 2.550000e+02
  %i.bp = fptoui float %i.bo to i8
  %i.bq = load i32, ptr %i.c, align 8             ; 2 uses
  %i.br = load i32, ptr %i.f, align 4             ; 2 uses
  %i.bs = shl i32 %i.bq, 1
  %i.bt = mul i32 %i.bs, %i.br
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %.lr.ph134.preheader, label %.loopexit

.lr.ph134.preheader:                              ; preds = %bb.i
  %.pre172 = load ptr, ptr %0, align 8
  br label %.lr.ph134

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %bb.k
  %i.bv = phi i32 [ %i.br, %.lr.ph134.preheader ], [ %i.cd, %bb.k ]
  %i.bw = phi i32 [ %i.bq, %.lr.ph134.preheader ], [ %i.ce, %bb.k ]
  %i.bx = phi ptr [ %.pre172, %.lr.ph134.preheader ], [ %i.cf, %bb.k ] ; 2 uses
  %indvars.iv153 = phi i64 [ 1, %.lr.ph134.preheader ], [ %indvars.iv.next154, %bb.k ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv153 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1
  %.not117 = icmp ugt i8 %i.bz, %i.bp
  br i1 %.not117, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph134
  %i.ca = getelementptr i8, ptr %i.by, i64 -1
  store i8 %.sroa.0.0.extract.trunc, ptr %i.ca, align 1
  %i.cb = load ptr, ptr %0, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv153
  store i8 %.sroa.17.0.extract.trunc, ptr %i.cc, align 1
  %.pre171 = load ptr, ptr %0, align 8
  %.pre173 = load i32, ptr %i.c, align 8
  %.pre174 = load i32, ptr %i.f, align 4
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph134, %bb.j
  %i.cd = phi i32 [ %i.bv, %.lr.ph134 ], [ %.pre174, %bb.j ] ; 2 uses
  %i.ce = phi i32 [ %i.bw, %.lr.ph134 ], [ %.pre173, %bb.j ] ; 2 uses
  %i.cf = phi ptr [ %i.bx, %.lr.ph134 ], [ %.pre171, %bb.j ]
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 2 ; 2 uses
  %i.cg = shl i32 %i.ce, 1
  %i.ch = mul i32 %i.cg, %i.cd
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next154, %i.ci
  br i1 %i.cj, label %.lr.ph134, label %.loopexit

bb.l:                                             ; preds = %bb.h
  %i.ck = load i32, ptr %i.c, align 8             ; 2 uses
  %i.cl = load i32, ptr %i.f, align 4             ; 2 uses
  %i.cm = mul nsw i32 %i.cl, %i.ck
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph132, label %.loopexit

.lr.ph132:                                        ; preds = %bb.l
  %.lobit = lshr i32 %1, 31
  %i.co = uitofp i8 %.sroa.12.0.extract.trunc to float
  %i.cp = fmul nnan float %i.co, 3.100000e+01
  %i.cq = tail call float @llvm.round.f32(float %i.cp)
  %i.cr = fptoui float %i.cq to i8
  %i.cs = uitofp i8 %.sroa.7.0.extract.trunc to float
  %i.ct = fmul nnan float %i.cs, 3.100000e+01
  %i.cu = tail call float @llvm.round.f32(float %i.ct)
  %i.cv = fptoui float %i.cu to i8
  %i.cw = uitofp i8 %.sroa.0.0.extract.trunc to float
  %i.cx = fmul nnan float %i.cw, 3.100000e+01
  %i.cy = tail call float @llvm.round.f32(float %i.cx)
  %i.cz = fptoui float %i.cy to i8
  %i.da = fcmp uge float %2, 5.000000e-01
  %i.db = zext i1 %i.da to i16
  %i.dc = zext i8 %i.cz to i32
  %i.dd = shl nuw nsw i32 %i.dc, 11
  %i.de = zext i8 %i.cv to i32
  %i.df = shl nuw nsw i32 %i.de, 6
  %i.dg = zext i8 %i.cr to i32
  %i.dh = shl nuw nsw i32 %i.dg, 1
  %i.di = or disjoint i32 %i.dd, %.lobit
  %i.dj = or i32 %i.di, %i.df
  %i.dk = or i32 %i.dj, %i.dh
  %i.dl = trunc i32 %i.dk to i16
  %.pre168 = load ptr, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph132, %bb.o
  %i.dm = phi i32 [ %i.cl, %.lr.ph132 ], [ %i.ds, %bb.o ]
  %i.dn = phi i32 [ %i.ck, %.lr.ph132 ], [ %i.dt, %bb.o ]
  %i.do = phi ptr [ %.pre168, %.lr.ph132 ], [ %i.du, %bb.o ] ; 2 uses
  %indvars.iv150 = phi i64 [ 0, %.lr.ph132 ], [ %indvars.iv.next151, %bb.o ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv150 ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2
  %i.dr = and i16 %i.dq, 1
  %.not116 = icmp samesign ugt i16 %i.dr, %i.db
  br i1 %.not116, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i16 %i.dl, ptr %i.dp, align 2
  %.pre167 = load ptr, ptr %0, align 8
  %.pre169 = load i32, ptr %i.c, align 8
  %.pre170 = load i32, ptr %i.f, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ds = phi i32 [ %i.dm, %bb.m ], [ %.pre170, %bb.n ] ; 2 uses
  %i.dt = phi i32 [ %i.dn, %bb.m ], [ %.pre169, %bb.n ] ; 2 uses
  %i.du = phi ptr [ %i.do, %bb.m ], [ %.pre167, %bb.n ]
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.dv = mul nsw i32 %i.ds, %i.dt
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp slt i64 %indvars.iv.next151, %i.dw
  br i1 %i.dx, label %bb.m, label %.loopexit

bb.p:                                             ; preds = %bb.h
  %i.dy = load i32, ptr %i.c, align 8             ; 2 uses
  %i.dz = load i32, ptr %i.f, align 4             ; 2 uses
  %i.ea = mul nsw i32 %i.dz, %i.dy
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph130, label %.loopexit

.lr.ph130:                                        ; preds = %bb.p
  %i.ec = tail call i32 @llvm.bswap.i32(i32 %1)
  %i.ed = bitcast i32 %i.ec to <4 x i8>
  %i.ee = uitofp <4 x i8> %i.ed to <4 x float>
  %i.ef = fmul nnan <4 x float> %i.ee, splat (float 1.500000e+01) ; 3 uses
  %i.eg = extractelement <4 x float> %i.ef, i64 0
  %i.eh = tail call float @llvm.round.f32(float %i.eg)
  %i.ei = fptoui float %i.eh to i8
  %i.ej = extractelement <4 x float> %i.ef, i64 3
  %i.ek = tail call float @llvm.round.f32(float %i.ej)
  %i.el = fptoui float %i.ek to i8
  %i.em = fmul float %2, 1.500000e+01
  %i.en = fptoui float %i.em to i8
  %i.eo = zext i8 %i.en to i16
  %i.ep = zext i8 %i.el to i16
  %i.eq = shl i16 %i.ep, 12
  %i.er = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.ef)
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.et = fptoui <2 x float> %i.es to <2 x i8>
  %i.eu = zext <2 x i8> %i.et to <2 x i16>
  %i.ev = shl nuw <2 x i16> %i.eu, <i16 4, i16 8> ; 2 uses
  %i.ew = zext i8 %i.ei to i16
  %i.ex = or disjoint i16 %i.eq, %i.ew
  %i.ey = extractelement <2 x i16> %i.ev, i64 1
  %i.ez = or i16 %i.ex, %i.ey
  %i.fa = extractelement <2 x i16> %i.ev, i64 0
  %i.fb = or i16 %i.ez, %i.fa
  %.pre164 = load ptr, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph130, %bb.s
  %i.fc = phi i32 [ %i.dz, %.lr.ph130 ], [ %i.fi, %bb.s ]
  %i.fd = phi i32 [ %i.dy, %.lr.ph130 ], [ %i.fj, %bb.s ]
  %i.fe = phi ptr [ %.pre164, %.lr.ph130 ], [ %i.fk, %bb.s ] ; 2 uses
  %indvars.iv147 = phi i64 [ 0, %.lr.ph130 ], [ %indvars.iv.next148, %bb.s ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %indvars.iv147 ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 2
  %i.fh = and i16 %i.fg, 15
  %.not115 = icmp samesign ugt i16 %i.fh, %i.eo
  br i1 %.not115, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i16 %i.fb, ptr %i.ff, align 2
  %.pre163 = load ptr, ptr %0, align 8
  %.pre165 = load i32, ptr %i.c, align 8
  %.pre166 = load i32, ptr %i.f, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.fi = phi i32 [ %i.fc, %bb.q ], [ %.pre166, %bb.r ] ; 2 uses
  %i.fj = phi i32 [ %i.fd, %bb.q ], [ %.pre165, %bb.r ] ; 2 uses
  %i.fk = phi ptr [ %i.fe, %bb.q ], [ %.pre163, %bb.r ]
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.fl = mul nsw i32 %i.fi, %i.fj
  %i.fm = sext i32 %i.fl to i64
  %i.fn = icmp slt i64 %indvars.iv.next148, %i.fm
  br i1 %i.fn, label %bb.q, label %.loopexit

bb.t:                                             ; preds = %bb.h
  %i.fo = fmul float %2, 2.550000e+02
  %i.fp = fptoui float %i.fo to i8
  %i.fq = load i32, ptr %i.c, align 8             ; 2 uses
  %i.fr = load i32, ptr %i.f, align 4             ; 2 uses
  %i.fs = shl i32 %i.fq, 2
  %i.ft = mul i32 %i.fs, %i.fr
  %i.fu = icmp sgt i32 %i.ft, 3
  br i1 %i.fu, label %.lr.ph128.preheader, label %.loopexit

.lr.ph128.preheader:                              ; preds = %bb.t
  %.pre160 = load ptr, ptr %0, align 8
  br label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128.preheader, %bb.v
  %i.fv = phi i32 [ %i.fr, %.lr.ph128.preheader ], [ %i.gj, %bb.v ]
  %i.fw = phi i32 [ %i.fq, %.lr.ph128.preheader ], [ %i.gk, %bb.v ]
  %i.fx = phi ptr [ %.pre160, %.lr.ph128.preheader ], [ %i.gl, %bb.v ] ; 2 uses
  %indvars.iv144 = phi i64 [ 3, %.lr.ph128.preheader ], [ %indvars.iv.next145, %bb.v ] ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %indvars.iv144 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1
  %.not = icmp ugt i8 %i.fz, %i.fp
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph128
  %i.ga = getelementptr i8, ptr %i.fy, i64 -3
  store i8 %.sroa.0.0.extract.trunc, ptr %i.ga, align 1
  %i.gb = load ptr, ptr %0, align 8
  %i.gc = getelementptr i8, ptr %i.gb, i64 %indvars.iv144
  %i.gd = getelementptr i8, ptr %i.gc, i64 -2
  store i8 %.sroa.7.0.extract.trunc, ptr %i.gd, align 1
  %i.ge = load ptr, ptr %0, align 8
  %i.gf = getelementptr i8, ptr %i.ge, i64 %indvars.iv144
  %i.gg = getelementptr i8, ptr %i.gf, i64 -1
  store i8 %.sroa.12.0.extract.trunc, ptr %i.gg, align 1
  %i.gh = load ptr, ptr %0, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv144
  store i8 %.sroa.17.0.extract.trunc, ptr %i.gi, align 1
  %.pre159 = load ptr, ptr %0, align 8
  %.pre161 = load i32, ptr %i.c, align 8
  %.pre162 = load i32, ptr %i.f, align 4
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph128, %bb.u
  %i.gj = phi i32 [ %i.fv, %.lr.ph128 ], [ %.pre162, %bb.u ] ; 2 uses
  %i.gk = phi i32 [ %i.fw, %.lr.ph128 ], [ %.pre161, %bb.u ] ; 2 uses
  %i.gl = phi ptr [ %i.fx, %.lr.ph128 ], [ %.pre159, %bb.u ]
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 4 ; 2 uses
  %i.gm = shl i32 %i.gk, 2
  %i.gn = mul i32 %i.gm, %i.gj
  %i.go = sext i32 %i.gn to i64
  %i.gp = icmp slt i64 %indvars.iv.next145, %i.go
  br i1 %i.gp, label %.lr.ph128, label %.loopexit

bb.w:                                             ; preds = %.lr.ph126, %bb.y
  %i.gq = phi i32 [ %i.bd, %.lr.ph126 ], [ %i.hf, %bb.y ]
  %i.gr = phi i32 [ %i.bc, %.lr.ph126 ], [ %i.hg, %bb.y ]
  %i.gs = phi ptr [ %.pre156, %.lr.ph126 ], [ %i.hh, %bb.y ] ; 2 uses
  %indvars.iv141 = phi i64 [ 3, %.lr.ph126 ], [ %indvars.iv.next142, %bb.y ] ; 5 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv141 ; 2 uses
  %i.gu = load float, ptr %i.gt, align 4
  %i.gv = fcmp ugt float %i.gu, %2
  br i1 %i.gv, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gw = getelementptr i8, ptr %i.gt, i64 -12
  store float %i.bk, ptr %i.gw, align 4
  %i.gx = load ptr, ptr %0, align 8
  %i.gy = getelementptr [4 x i8], ptr %i.gx, i64 %indvars.iv141
  %i.gz = getelementptr i8, ptr %i.gy, i64 -8
  store float %i.bl, ptr %i.gz, align 4
  %i.ha = load ptr, ptr %0, align 8
  %i.hb = getelementptr [4 x i8], ptr %i.ha, i64 %indvars.iv141
  %i.hc = getelementptr i8, ptr %i.hb, i64 -4
  store float %i.bm, ptr %i.hc, align 4
  %i.hd = load ptr, ptr %0, align 8
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv141
  store float %i.bn, ptr %i.he, align 4
  %.pre = load ptr, ptr %0, align 8
  %.pre157 = load i32, ptr %i.c, align 8
  %.pre158 = load i32, ptr %i.f, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.hf = phi i32 [ %i.gq, %bb.w ], [ %.pre158, %bb.x ] ; 2 uses
  %i.hg = phi i32 [ %i.gr, %bb.w ], [ %.pre157, %bb.x ] ; 2 uses
  %i.hh = phi ptr [ %i.gs, %bb.w ], [ %.pre, %bb.x ]
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 4 ; 2 uses
  %i.hi = shl i32 %i.hg, 2
  %i.hj = mul i32 %i.hi, %i.hf
  %i.hk = sext i32 %i.hj to i64
  %i.hl = icmp slt i64 %indvars.iv.next142, %i.hk
  br i1 %i.hl, label %bb.w, label %.loopexit

bb.z:                                             ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ 3, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 5 uses
  %i.hm = load ptr, ptr %0, align 8
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %indvars.iv ; 2 uses
  %i.ho = load i16, ptr %i.hn, align 2            ; 2 uses
  %i.hp = zext i16 %i.ho to i32                   ; 2 uses
  %i.hq = lshr i32 %i.hp, 10
  %i.hr = and i32 %i.hq, 31                       ; 2 uses
  %i.hs = shl nuw nsw i32 %i.hp, 13               ; 2 uses
  %i.ht = and i32 %i.hs, 8380416                  ; 3 uses
  %i.hu = uitofp nneg i32 %i.ht to float
  %i.hv = bitcast float %i.hu to i32              ; 2 uses
  %i.hw = lshr i32 %i.hv, 23
  %.signext.i = sext i16 %i.ho to i32
  %i.hx = and i32 %.signext.i, -2147483648
  %.not.i = icmp eq i32 %i.hr, 0
  %i.hy = shl nuw nsw i32 %i.hr, 23
  %i.hz = add nuw nsw i32 %i.hy, 939524096
  %i.ia = or disjoint i32 %i.hz, %i.ht
  %.not12.i = icmp eq i32 %i.ht, 0
  %i.ib = and i32 %i.hv, 2139095040
  %i.ic = add nsw i32 %i.ib, -310378496
  %i.id = sub nsw i32 150, %i.hw
  %i.ie = shl i32 %i.hs, %i.id
  %i.if = and i32 %i.ie, 8380416
  %i.ig = or disjoint i32 %i.if, %i.ic
  %4 = select i1 %.not12.i, i32 0, i32 %i.ig
  %i.ih = select i1 %.not.i, i32 %4, i32 %i.ia
  %i.ii = or i32 %i.ih, %i.hx
  %i.ij = bitcast i32 %i.ii to float
  %i.ik = fcmp ult float %2, %i.ij
  br i1 %i.ik, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.il = getelementptr i8, ptr %i.hn, i64 -6
  store i16 %i.bb, ptr %i.il, align 2
  %i.im = load ptr, ptr %0, align 8
  %i.in = getelementptr [2 x i8], ptr %i.im, i64 %indvars.iv
  %i.io = getelementptr i8, ptr %i.in, i64 -4
  store i16 %i.ba, ptr %i.io, align 2
  %i.ip = load ptr, ptr %0, align 8
  %i.iq = getelementptr [2 x i8], ptr %i.ip, i64 %indvars.iv
  %i.ir = getelementptr i8, ptr %i.iq, i64 -2
  store i16 %i.az, ptr %i.ir, align 2
  %i.is = load ptr, ptr %0, align 8
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %indvars.iv
  store i16 %i.ay, ptr %i.it, align 2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.iu = load i32, ptr %i.c, align 8
  %i.iv = load i32, ptr %i.f, align 4
  %i.iw = shl i32 %i.iu, 2
  %i.ix = mul i32 %i.iw, %i.iv
  %i.iy = sext i32 %i.ix to i64
  %i.iz = icmp slt i64 %indvars.iv.next, %i.iy
  br i1 %i.iz, label %bb.z, label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %bb.y, %bb.v, %bb.s, %bb.o, %bb.k, %.preheader122, %.preheader, %bb.t, %bb.p, %bb.l, %bb.i, %bb.h, %bb.a, %bb.b, %bb.c, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageAlphaMask(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.Image, align 8              ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %.not39 = icmp eq i32 %i.f, %i.h
  br i1 %.not39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.60) #52
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp sgt i32 %i.j, 13
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.61) #52
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #52
  call void @ImageCopy(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %2, ptr noundef nonnull byval(%struct.Image) align 8 %1)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.m = load i32, ptr %i.l, align 4
  %.not40 = icmp eq i32 %i.m, 1
  br i1 %.not40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @ImageFormat(ptr noundef nonnull %2, i32 noundef 1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = load i32, ptr %i.i, align 4
  switch i32 %i.n, label %bb.m [
    i32 1, label %bb.i
    i32 7, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  %i.o = load i32, ptr %i.a, align 8
  %i.p = load i32, ptr %i.e, align 4
  %i.q = shl i32 %i.o, 1
  %i.r = mul i32 %i.q, %i.p
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #53 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.x = load i32, ptr %i.w, align 4
  %i.y = mul nsw i32 %i.x, %i.v
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = sext i32 %i.y to i64
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.critedge ], [ 0, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 0, %bb.i ] ; 5 uses
  %i.ab = icmp slt i64 %indvars.iv, %i.aa
  br i1 %i.ab, label %..critedge_crit_edge, label %bb.k

..critedge_crit_edge:                             ; preds = %bb.j
  %.pre = load ptr, ptr %0, align 8
  br label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr %i.a, align 8
  %i.ad = load i32, ptr %i.e, align 4
  %i.ae = mul nsw i32 %i.ad, %i.ac
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv, %i.af
  %.pre54 = load ptr, ptr %0, align 8             ; 2 uses
  br i1 %i.ag, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef %.pre54) #52
  store ptr %i.t, ptr %0, align 8
  store i32 2, ptr %i.i, align 4
  br label %.loopexit

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.k
  %i.ah = phi ptr [ %.pre, %..critedge_crit_edge ], [ %.pre54, %bb.k ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv42 ; 2 uses
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store i8 %i.am, ptr %i.an, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 2
  br label %bb.j

bb.m:                                             ; preds = %bb.h
  tail call void @ImageFormat(ptr noundef nonnull %0, i32 noundef 7)
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = mul nsw i32 %i.ar, %i.ap
  %i.at = load ptr, ptr %2, align 8               ; 2 uses
  %i.au = sext i32 %i.as to i64
  br label %bb.o

bb.o:                                             ; preds = %.critedge2, %bb.n
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %.critedge2 ], [ 3, %bb.n ] ; 2 uses
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %.critedge2 ], [ 0, %bb.n ] ; 4 uses
  %i.av = icmp slt i64 %indvars.iv47, %i.au
  br i1 %i.av, label %.critedge2, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load i32, ptr %i.a, align 8
  %i.ax = load i32, ptr %i.e, align 4
  %i.ay = mul nsw i32 %i.ax, %i.aw
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv47, %i.az
  br i1 %i.ba, label %.critedge2, label %.loopexit

.critedge2:                                       ; preds = %bb.o, %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv47
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = load ptr, ptr %0, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv49
  store i8 %i.bc, ptr %i.be, align 1
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 4
  br label %bb.o

.loopexit:                                        ; preds = %bb.p, %bb.l
  %.sroa.0.0.copyload = phi ptr [ %i.z, %bb.l ], [ %i.at, %bb.p ]
  tail call void @free(ptr noundef %.sroa.0.0.copyload) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #52
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %.loopexit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageAlphaPremultiply(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
end_hunk_4
begin_hunk_5_@GetImageColor:bb.a
  %i.e = icmp sgt i32 %2, -1
  %or.cond = and i1 %i.e, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp slt i32 %2, %i.g
  %or.cond89 = select i1 %or.cond, i1 %i.h, i1 false
  br i1 %or.cond89, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4
  switch i32 %i.j, label %bb.q [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 5, label %bb.f
    i32 3, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 4, label %bb.j
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.n
    i32 12, label %bb.o
    i32 13, label %bb.p
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8
  %i.l = mul nuw nsw i32 %i.c, %2
  %i.m = add nuw nsw i32 %i.l, %1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = insertelement <4 x i8> <i8 poison, i8 -1, i8 poison, i8 poison>, i8 %i.p, i64 0
  %i.r = shufflevector <4 x i8> %i.q, <4 x i8> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 8
  %i.t = mul nuw nsw i32 %i.c, %2
  %i.u = add nuw nsw i32 %i.t, %1
  %i.v = shl nuw nsw i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = load <2 x i8>, ptr %i.x, align 1
  %i.z = shufflevector <2 x i8> %i.y, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.s

bb.f:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = mul nuw nsw i32 %i.c, %2
  %i.ac = add nuw nsw i32 %i.ab, %1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2            ; 4 uses
  %i.ag = lshr i16 %i.af, 8
  %i.ah = trunc nuw i16 %i.ag to i8
  %i.ai = lshr i16 %i.af, 3
  %i.aj = trunc i16 %i.ai to i8
  %.tr86 = trunc i16 %i.af to i8
  %i.ak = shl i8 %.tr86, 2
  %i.al = trunc i16 %i.af to i1
  %i.am = sext i1 %i.al to i8
  %i.an = insertelement <4 x i8> poison, i8 %i.ah, i64 0
  %i.ao = insertelement <4 x i8> %i.an, i8 %i.aj, i64 1
  %i.ap = insertelement <4 x i8> %i.ao, i8 %i.ak, i64 2
  %i.aq = insertelement <4 x i8> %i.ap, i8 %i.am, i64 3
  %i.ar = and <4 x i8> %i.aq, <i8 -8, i8 -8, i8 -8, i8 -1>
  br label %bb.s

bb.g:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %0, align 8
  %i.at = mul nuw nsw i32 %i.c, %2
  %i.au = add nuw nsw i32 %i.at, %1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2            ; 3 uses
  %i.ay = lshr i16 %i.ax, 8
  %i.az = trunc nuw i16 %i.ay to i8
  %i.ba = lshr i16 %i.ax, 3
  %i.bb = trunc i16 %i.ba to i8
  %i.bc = insertelement <2 x i8> poison, i8 %i.az, i64 0
  %i.bd = insertelement <2 x i8> %i.bc, i8 %i.bb, i64 1
  %i.be = and <2 x i8> %i.bd, <i8 -8, i8 -4>
  %.tr = trunc i16 %i.ax to i8
  %i.bf = shl i8 %.tr, 3
  %i.bg = shufflevector <2 x i8> %i.be, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bh = insertelement <4 x i8> %i.bg, i8 -1, i64 3
  %i.bi = insertelement <4 x i8> %i.bh, i8 %i.bf, i64 2
  br label %bb.s

bb.h:                                             ; preds = %bb.c
  %i.bj = load ptr, ptr %0, align 8
  %i.bk = mul nuw nsw i32 %i.c, %2
  %i.bl = add nuw nsw i32 %i.bk, %1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2            ; 3 uses
  %i.bp = lshr i16 %i.bo, 12
  %i.bq = trunc nuw nsw i16 %i.bp to i8
  %i.br = lshr i16 %i.bo, 8
  %i.bs = trunc nuw i16 %i.br to i8
  %i.bt = insertelement <2 x i8> poison, i8 %i.bq, i64 0
  %i.bu = insertelement <2 x i8> %i.bt, i8 %i.bs, i64 1
  %i.bv = and <2 x i8> %i.bu, <i8 -1, i8 15>
  %i.bw = trunc i16 %i.bo to i8                   ; 2 uses
  %i.bx = lshr i8 %i.bw, 4
  %i.by = and i8 %i.bw, 15
  %i.bz = shufflevector <2 x i8> %i.bv, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ca = insertelement <4 x i8> %i.bz, i8 %i.bx, i64 2
  %i.cb = insertelement <4 x i8> %i.ca, i8 %i.by, i64 3
  %i.cc = mul nuw <4 x i8> %i.cb, splat (i8 17)
  br label %bb.s

bb.i:                                             ; preds = %bb.c
  %i.cd = load ptr, ptr %0, align 8
  %i.ce = mul nuw nsw i32 %i.c, %2
  %i.cf = add nuw nsw i32 %i.ce, %1
  %i.cg = shl nsw i32 %i.cf, 2
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ch
  %i.cj = load <4 x i8>, ptr %i.ci, align 1
  br label %bb.s

bb.j:                                             ; preds = %bb.c
  %i.ck = load ptr, ptr %0, align 8
  %i.cl = mul nuw nsw i32 %i.c, %2
  %i.cm = add nuw nsw i32 %i.cl, %1
  %i.cn = mul nsw i32 %i.cm, 3
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.co ; 2 uses
  %i.cq = load <2 x i8>, ptr %i.cp, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = shufflevector <2 x i8> %i.cq, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cu = insertelement <4 x i8> %i.ct, i8 -1, i64 3
  %i.cv = insertelement <4 x i8> %i.cu, i8 %i.cs, i64 2
  br label %bb.s

bb.k:                                             ; preds = %bb.c
  %i.cw = load ptr, ptr %0, align 8
  %i.cx = mul nuw nsw i32 %i.c, %2
  %i.cy = add nuw nsw i32 %i.cx, %1
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4
  %i.dc = fmul float %i.db, 2.550000e+02
  %i.dd = fptoui float %i.dc to i8
  %i.de = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 -1>, i8 %i.dd, i64 0
  br label %bb.s

bb.l:                                             ; preds = %bb.c
  %i.df = load ptr, ptr %0, align 8
  %i.dg = mul nuw nsw i32 %i.c, %2
  %i.dh = add nuw nsw i32 %i.dg, %1
  %i.di = mul nsw i32 %i.dh, 3
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dj ; 2 uses
  %i.dl = load <2 x float>, ptr %i.dk, align 4
  %i.dm = fmul <2 x float> %i.dl, splat (float 2.550000e+02)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = fmul float %i.do, 2.550000e+02
  %i.dq = fptoui float %i.dp to i8
  %i.dr = insertelement <4 x i8> <i8 poison, i8 poison, i8 poison, i8 -1>, i8 %i.dq, i64 2
  %i.ds = shufflevector <2 x float> %i.dm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dt = fptoui <4 x float> %i.ds to <4 x i8>
  %i.du = shufflevector <4 x i8> %i.dt, <4 x i8> %i.dr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.s

bb.m:                                             ; preds = %bb.c
  %i.dv = load ptr, ptr %0, align 8
  %i.dw = mul nuw nsw i32 %i.c, %2
  %i.dx = add nuw nsw i32 %i.dw, %1
  %i.dy = shl nsw i32 %i.dx, 2
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.dz
  %i.eb = load <4 x float>, ptr %i.ea, align 4
  %i.ec = fmul <4 x float> %i.eb, splat (float 2.550000e+02)
  %i.ed = fptoui <4 x float> %i.ec to <4 x i8>
  br label %bb.s

bb.n:                                             ; preds = %bb.c
  %i.ee = load ptr, ptr %0, align 8
  %i.ef = mul nuw nsw i32 %i.c, %2
  %i.eg = add nuw nsw i32 %i.ef, %1
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2            ; 2 uses
  %i.ek = zext i16 %i.ej to i32                   ; 2 uses
  %i.el = lshr i32 %i.ek, 10
  %i.em = and i32 %i.el, 31                       ; 2 uses
  %i.en = shl nuw nsw i32 %i.ek, 13               ; 2 uses
  %i.eo = and i32 %i.en, 8380416                  ; 3 uses
  %i.ep = uitofp nneg i32 %i.eo to float
  %i.eq = bitcast float %i.ep to i32              ; 2 uses
  %i.er = lshr i32 %i.eq, 23
  %.signext.i = sext i16 %i.ej to i32
  %i.es = and i32 %.signext.i, -2147483648
  %.not.i = icmp eq i32 %i.em, 0
  %i.et = shl nuw nsw i32 %i.em, 23
  %i.eu = add nuw nsw i32 %i.et, 939524096
  %i.ev = or disjoint i32 %i.eu, %i.eo
  %.not12.i = icmp eq i32 %i.eo, 0
  %i.ew = and i32 %i.eq, 2139095040
  %i.ex = add nsw i32 %i.ew, -310378496
  %i.ey = sub nsw i32 150, %i.er
  %i.ez = shl i32 %i.en, %i.ey
  %i.fa = and i32 %i.ez, 8380416
  %i.fb = or disjoint i32 %i.fa, %i.ex
  %3 = select i1 %.not12.i, i32 0, i32 %i.fb
  %i.fc = select i1 %.not.i, i32 %3, i32 %i.ev
  %i.fd = or i32 %i.fc, %i.es
  %i.fe = bitcast i32 %i.fd to float
  %i.ff = fmul float %i.fe, 2.550000e+02
  %i.fg = fptoui float %i.ff to i8
  %i.fh = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 -1>, i8 %i.fg, i64 0
  br label %bb.s

bb.o:                                             ; preds = %bb.c
  %i.fi = load ptr, ptr %0, align 8
  %i.fj = mul nuw nsw i32 %i.c, %2
  %i.fk = add nuw nsw i32 %i.fj, %1
  %i.fl = mul nsw i32 %i.fk, 3
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr [2 x i8], ptr %i.fi, i64 %i.fm ; 2 uses
  %i.fo = load i16, ptr %i.fn, align 2            ; 2 uses
  %i.fp = zext i16 %i.fo to i32                   ; 2 uses
  %i.fq = lshr i32 %i.fp, 10
  %i.fr = and i32 %i.fq, 31                       ; 2 uses
  %i.fs = shl nuw nsw i32 %i.fp, 13               ; 2 uses
  %i.ft = and i32 %i.fs, 8380416                  ; 3 uses
  %i.fu = uitofp nneg i32 %i.ft to float
  %i.fv = bitcast float %i.fu to i32              ; 2 uses
  %i.fw = lshr i32 %i.fv, 23
  %.signext.i90 = sext i16 %i.fo to i32
  %i.fx = and i32 %.signext.i90, -2147483648
  %.not.i91 = icmp eq i32 %i.fr, 0
  %i.fy = shl nuw nsw i32 %i.fr, 23
  %i.fz = add nuw nsw i32 %i.fy, 939524096
  %i.ga = or disjoint i32 %i.fz, %i.ft
  %.not12.i92 = icmp eq i32 %i.ft, 0
  %i.gb = and i32 %i.fv, 2139095040
  %i.gc = add nsw i32 %i.gb, -310378496
  %i.gd = sub nsw i32 150, %i.fw
  %i.ge = shl i32 %i.fs, %i.gd
  %i.gf = and i32 %i.ge, 8380416
  %i.gg = or disjoint i32 %i.gf, %i.gc
  %4 = select i1 %.not12.i92, i32 0, i32 %i.gg
  %i.gh = select i1 %.not.i91, i32 %4, i32 %i.ga
  %i.gi = or i32 %i.gh, %i.fx
  %i.gj = bitcast i32 %i.gi to float
  %i.gk = fmul float %i.gj, 2.550000e+02
  %i.gl = fptoui float %i.gk to i8
  %i.gm = getelementptr i8, ptr %i.fn, i64 2
  %i.gn = load <2 x i16>, ptr %i.gm, align 2      ; 3 uses
  %i.go = zext <2 x i16> %i.gn to <2 x i32>
  %i.gp = shl nuw nsw <2 x i32> %i.go, splat (i32 13) ; 3 uses
  %i.gq = and <2 x i32> %i.gp, splat (i32 8380416) ; 3 uses
  %i.gr = extractelement <2 x i32> %i.gp, i64 0
  %5 = lshr <2 x i16> %i.gn, splat (i16 10)
  %6 = and <2 x i16> %5, splat (i16 31)           ; 2 uses
  %i.gs = uitofp nneg <2 x i32> %i.gq to <2 x float>
  %i.gt = bitcast <2 x float> %i.gs to <2 x i32>  ; 2 uses
  %i.gu = lshr <2 x i32> %i.gt, splat (i32 23)
  %i.gv = sext <2 x i16> %i.gn to <2 x i32>
  %i.gw = and <2 x i32> %i.gv, splat (i32 -2147483648)
  %i.gx = icmp eq <2 x i16> %6, zeroinitializer
  %7 = zext nneg <2 x i16> %6 to <2 x i32>
  %8 = shl nuw nsw <2 x i32> %7, splat (i32 23)
  %9 = add nuw nsw <2 x i32> %8, splat (i32 939524096)
  %i.gy = or disjoint <2 x i32> %9, %i.gq
  %10 = icmp eq <2 x i32> %i.gq, zeroinitializer
  %i.gz = and <2 x i32> %i.gt, splat (i32 2139095040)
  %i.ha = add nsw <2 x i32> %i.gz, splat (i32 -310378496)
  %i.hb = sub nsw <2 x i32> splat (i32 150), %i.gu ; 2 uses
  %i.hc = extractelement <2 x i32> %i.hb, i64 0
  %i.hd = shl i32 %i.gr, %i.hc
  %i.he = extractelement <2 x i32> %i.gp, i64 1
  %i.hf = extractelement <2 x i32> %i.hb, i64 1
  %i.hg = shl i32 %i.he, %i.hf
  %i.hh = insertelement <2 x i32> poison, i32 %i.hd, i64 0
  %i.hi = insertelement <2 x i32> %i.hh, i32 %i.hg, i64 1
  %i.hj = and <2 x i32> %i.hi, splat (i32 8380416)
  %i.hk = or disjoint <2 x i32> %i.hj, %i.ha
  %11 = select <2 x i1> %10, <2 x i32> zeroinitializer, <2 x i32> %i.hk
  %i.hl = select <2 x i1> %i.gx, <2 x i32> %11, <2 x i32> %i.gy
  %i.hm = or <2 x i32> %i.hl, %i.gw
  %i.hn = bitcast <2 x i32> %i.hm to <2 x float>
  %i.ho = fmul <2 x float> %i.hn, splat (float 2.550000e+02)
  %i.hp = insertelement <4 x i8> <i8 poison, i8 poison, i8 poison, i8 -1>, i8 %i.gl, i64 0
  %i.hq = shufflevector <2 x float> %i.ho, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hr = fptoui <4 x float> %i.hq to <4 x i8>
  %i.hs = shufflevector <4 x i8> %i.hp, <4 x i8> %i.hr, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %bb.s

bb.p:                                             ; preds = %bb.c
  %i.ht = load ptr, ptr %0, align 8
  %i.hu = mul nuw nsw i32 %i.c, %2
  %i.hv = add nuw nsw i32 %i.hu, %1
  %i.hw = shl nsw i32 %i.hv, 2
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr [2 x i8], ptr %i.ht, i64 %i.hx
  %i.hz = load <4 x i16>, ptr %i.hy, align 2      ; 3 uses
  %i.ia = lshr <4 x i16> %i.hz, splat (i16 10)
  %i.ib = and <4 x i16> %i.ia, splat (i16 31)     ; 2 uses
  %i.ic = zext <4 x i16> %i.hz to <4 x i32>
  %i.id = shl nuw nsw <4 x i32> %i.ic, splat (i32 13) ; 2 uses
  %i.ie = and <4 x i32> %i.id, splat (i32 8380416) ; 3 uses
  %i.if = uitofp nneg <4 x i32> %i.ie to <4 x float>
  %i.ig = bitcast <4 x float> %i.if to <4 x i32>  ; 2 uses
  %i.ih = lshr <4 x i32> %i.ig, splat (i32 23)
  %i.ii = sext <4 x i16> %i.hz to <4 x i32>
  %i.ij = and <4 x i32> %i.ii, splat (i32 -2147483648)
  %i.ik = icmp eq <4 x i16> %i.ib, zeroinitializer
  %i.il = zext nneg <4 x i16> %i.ib to <4 x i32>
  %i.im = shl nuw nsw <4 x i32> %i.il, splat (i32 23)
  %i.in = add nuw nsw <4 x i32> %i.im, splat (i32 939524096)
  %i.io = or disjoint <4 x i32> %i.in, %i.ie
  %12 = icmp eq <4 x i32> %i.ie, zeroinitializer
  %i.ip = and <4 x i32> %i.ig, splat (i32 2139095040)
  %i.iq = add nsw <4 x i32> %i.ip, splat (i32 -310378496)
  %i.ir = sub nsw <4 x i32> splat (i32 150), %i.ih
  %i.is = shl <4 x i32> %i.id, %i.ir
  %i.it = and <4 x i32> %i.is, splat (i32 8380416)
  %i.iu = or disjoint <4 x i32> %i.it, %i.iq
  %13 = select <4 x i1> %12, <4 x i32> zeroinitializer, <4 x i32> %i.iu
  %i.iv = select <4 x i1> %i.ik, <4 x i32> %13, <4 x i32> %i.io
  %i.iw = or <4 x i32> %i.iv, %i.ij
  %i.ix = bitcast <4 x i32> %i.iw to <4 x float>
  %i.iy = fmul <4 x float> %i.ix, splat (float 2.550000e+02)
  %i.iz = fptoui <4 x float> %i.iy to <4 x i8>
  br label %bb.s

bb.q:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.73) #52
  br label %bb.s

bb.r:                                             ; preds = %bb.b, %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.74, i32 noundef %1, i32 noundef %2) #52
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %i.ja = phi <4 x i8> [ zeroinitializer, %bb.q ], [ %i.r, %bb.d ], [ %i.z, %bb.e ], [ %i.ar, %bb.f ], [ %i.bi, %bb.g ], [ %i.cc, %bb.h ], [ %i.cj, %bb.i ], [ %i.cv, %bb.j ], [ %i.de, %bb.k ], [ %i.du, %bb.l ], [ %i.ed, %bb.m ], [ %i.fh, %bb.n ], [ %i.hs, %bb.o ], [ %i.iz, %bb.p ], [ zeroinitializer, %bb.r ]
  %i.jb = bitcast <4 x i8> %i.ja to i32
  ret i32 %i.jb
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageClearBackground(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #35 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ImageDrawPixel(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 %1)
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  switch i32 %i.k, label %bb.m [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.f
    i32 5, label %bb.f
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 4, label %.thread
    i32 8, label %bb.g
    i32 9, label %bb.h
    i32 10, label %bb.i
    i32 11, label %bb.f
    i32 12, label %bb.j
    i32 13, label %bb.k
    i32 24, label %bb.l
    i32 23, label %bb.e
    i32 20, label %bb.e
    i32 17, label %bb.e
    i32 16, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %bb.m

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %bb.m

bb.g:                                             ; preds = %bb.d, %bb.d
  br label %bb.m

bb.h:                                             ; preds = %bb.d
  br label %.thread

bb.i:                                             ; preds = %bb.d
  br label %.thread

bb.j:                                             ; preds = %bb.d
  br label %.thread

bb.k:                                             ; preds = %bb.d
  br label %.thread

bb.l:                                             ; preds = %bb.d
  br label %.thread

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.0.i = phi i32 [ 0, %bb.d ], [ 1, %bb.e ], [ 2, %bb.f ], [ 4, %bb.g ]
  %i.l = and i32 %i.k, -2
  %or.cond3.i = icmp eq i32 %i.l, 14
  br i1 %or.cond3.i, label %GetPixelDataSize.exit, label %.thread

.thread:                                          ; preds = %bb.d, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %i.m = phi i32 [ %.0.i, %bb.m ], [ 8, %bb.k ], [ 6, %bb.j ], [ 16, %bb.i ], [ 12, %bb.h ], [ 0, %bb.l ], [ 3, %bb.d ]
  %i.n = and i32 %i.k, -8
  %or.cond5.i = icmp eq i32 %i.n, 16
  %spec.select.i = select i1 %or.cond5.i, i32 16, i32 %i.m
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.m, %.thread
  %.016.i = phi i32 [ %spec.select.i, %.thread ], [ 8, %bb.m ] ; 2 uses
  %i.o = load i32, ptr %i.c, align 8
  %i.p = load i32, ptr %i.f, align 4
  %i.q = mul nsw i32 %i.p, %i.o                   ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %GetPixelDataSize.exit, %.lr.ph
  %.025 = phi i32 [ %i.z, %.lr.ph ], [ 1, %GetPixelDataSize.exit ] ; 4 uses
  %i.s = sub nsw i32 %i.q, %.025
  %i.t = tail call i32 @llvm.smin.i32(i32 %.025, i32 %i.s)
  %i.u = mul nsw i32 %.025, %.016.i
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.i, i64 %i.v
  %i.x = mul nsw i32 %i.t, %.016.i
  %i.y = sext i32 %i.x to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.i, i64 %i.y, i1 false)
  %i.z = shl nsw i32 %.025, 1                     ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.q
  br i1 %i.aa, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %GetPixelDataSize.exit, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawPixel(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 %3) local_unnamed_addr #22 {
bb.a:
  %.sroa.0172.0.extract.trunc = trunc i32 %3 to i8 ; 4 uses
  %.sroa.14.0.extract.shift = lshr i32 %3, 8
  %.sroa.14.0.extract.trunc = trunc i32 %.sroa.14.0.extract.shift to i8 ; 6 uses
  %.sroa.27.0.extract.shift = lshr i32 %3, 16     ; 5 uses
  %i.a = trunc i32 %3 to i8
  %i.b = trunc i32 %.sroa.27.0.extract.shift to i8
  %i.c = insertelement <2 x i8> poison, i8 %i.b, i64 0
  %i.d = insertelement <2 x i8> %i.c, i8 %i.a, i64 1
  %i.e = trunc i32 %3 to i8
  %i.f = trunc i32 %.sroa.27.0.extract.shift to i8
  %i.g = insertelement <2 x i8> poison, i8 %i.f, i64 0
  %i.h = insertelement <2 x i8> %i.g, i8 %i.e, i64 1
  %i.i = trunc i32 %3 to i8
  %i.j = trunc i32 %.sroa.27.0.extract.shift to i8
  %i.k = insertelement <2 x i8> poison, i8 %i.j, i64 0
  %i.l = insertelement <2 x i8> %i.k, i8 %i.i, i64 1
  %i.m = trunc i32 %3 to i8
  %i.n = trunc i32 %.sroa.27.0.extract.shift to i8
  %i.o = insertelement <2 x i8> poison, i8 %i.n, i64 0
  %i.p = insertelement <2 x i8> %i.o, i8 %i.m, i64 1
  %.sroa.27.0.extract.trunc = trunc i32 %.sroa.27.0.extract.shift to i8 ; 3 uses
  %.sroa.40.0.extract.shift = lshr i32 %3, 24     ; 2 uses
  %i.q = trunc i32 %3 to i8
  %i.r = insertelement <2 x i8> poison, i8 %i.q, i64 0
  %i.s = trunc nuw i32 %.sroa.40.0.extract.shift to i8
  %i.t = insertelement <2 x i8> %i.r, i8 %i.s, i64 1
  %.sroa.40.0.extract.trunc = trunc nuw i32 %.sroa.40.0.extract.shift to i8 ; 2 uses
  %i.u = load ptr, ptr %0, align 8                ; 14 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = icmp slt i32 %1, 0
  %or.cond = or i1 %i.w, %i.v
  br i1 %or.cond, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.y = load i32, ptr %i.x, align 8              ; 14 uses
  %i.z = icmp sge i32 %1, %i.y
  %i.aa = icmp slt i32 %2, 0
  %or.cond3 = or i1 %i.aa, %i.z
  br i1 %or.cond3, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  %.not = icmp slt i32 %2, %i.ac
  br i1 %.not, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4
  switch i32 %i.ae, label %bb.r [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 4, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
  ]

bb.e:                                             ; preds = %bb.d
  %i.af = uitofp <2 x i8> %i.d to <2 x float>
  %i.ag = uitofp i8 %.sroa.14.0.extract.trunc to float
  %i.ah = fdiv nnan float %i.ag, 2.550000e+02
end_hunk_5
begin_hunk_6_@ImageDrawTriangleLines:bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawTriangleFan(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) local_unnamed_addr #38 {
bb.a:
  %i.a = icmp sgt i32 %2, 2
  br i1 %i.a, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nsw i32 %2, -1
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.e = load <2 x float>, ptr %1, align 4
  %i.f = load <2 x float>, ptr %i.c, align 4
  %i.g = load <2 x float>, ptr %i.d, align 4
  tail call void @ImageDrawTriangle(ptr noundef %0, <2 x float> %i.e, <2 x float> %i.f, <2 x float> %i.g, i32 %3)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawTriangleStrip(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) local_unnamed_addr #38 {
bb.a:
  %i.a = icmp sgt i32 %2, 2
  br i1 %i.a, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ 2, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %i.b = and i64 %indvars.iv, 1
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.e = load <2 x float>, ptr %i.d, align 4
  %. = select i1 %i.c, i64 -16, i64 -8
  %.26 = select i1 %i.c, i64 -8, i64 -16
  %i.f = getelementptr i8, ptr %i.d, i64 %.
  %i.g = getelementptr i8, ptr %i.d, i64 %.26
  %i.h = load <2 x float>, ptr %i.f, align 4
  %i.i = load <2 x float>, ptr %i.g, align 4
  tail call void @ImageDrawTriangle(ptr noundef %0, <2 x float> %i.e, <2 x float> %i.h, <2 x float> %i.i, i32 %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @GetPixelColor(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #26 {
bb.a:
  switch i32 %1, label %bb.o [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 4, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 13, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1
  %i.b = insertelement <4 x i8> <i8 poison, i8 -1, i8 poison, i8 poison>, i8 %i.a, i64 0
  %i.c = shufflevector <4 x i8> %i.b, <4 x i8> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.d = load <2 x i8>, ptr %0, align 1
  %i.e = shufflevector <2 x i8> %i.d, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.f = load i16, ptr %0, align 2                ; 3 uses
  %i.g = lshr i16 %i.f, 11
  %i.h = mul nuw nsw i16 %i.g, 255
  %i.i = udiv i16 %i.h, 31
  %i.j = trunc i16 %i.i to i8
  %i.k = lshr i16 %i.f, 5
  %i.l = insertelement <2 x i16> poison, i16 %i.k, i64 0
  %i.m = insertelement <2 x i16> %i.l, i16 %i.f, i64 1
  %i.n = and <2 x i16> %i.m, <i16 63, i16 31>
  %i.o = mul nuw nsw <2 x i16> %i.n, <i16 85, i16 255>
  %i.p = udiv <2 x i16> %i.o, <i16 21, i16 31>
  %i.q = insertelement <4 x i8> <i8 poison, i8 poison, i8 poison, i8 -1>, i8 %i.j, i64 0
  %i.r = shufflevector <2 x i16> %i.p, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.s = trunc <4 x i16> %i.r to <4 x i8>
  %i.t = shufflevector <4 x i8> %i.q, <4 x i8> %i.s, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.u = load i16, ptr %0, align 2                ; 4 uses
  %i.v = lshr i16 %i.u, 11
  %i.w = mul nuw nsw i16 %i.v, 255
  %i.x = udiv i16 %i.w, 31
  %i.y = trunc i16 %i.x to i8
  %i.z = lshr i16 %i.u, 6
  %i.aa = insertelement <2 x i16> poison, i16 %i.z, i64 0
  %i.ab = insertelement <2 x i16> %i.aa, i16 %i.u, i64 1
  %i.ac = and <2 x i16> %i.ab, splat (i16 31)
  %i.ad = mul nuw nsw <2 x i16> %i.ac, splat (i16 255)
  %i.ae = udiv <2 x i16> %i.ad, splat (i16 31)
  %.not = trunc i16 %i.u to i1
  %i.af = sext i1 %.not to i8
  %i.ag = insertelement <4 x i8> poison, i8 %i.y, i64 0
  %i.ah = shufflevector <2 x i16> %i.ae, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = trunc <4 x i16> %i.ah to <4 x i8>
  %i.aj = shufflevector <4 x i8> %i.ag, <4 x i8> %i.ai, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ak = insertelement <4 x i8> %i.aj, i8 %i.af, i64 3
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.al = load i16, ptr %0, align 2               ; 3 uses
  %i.am = lshr i16 %i.al, 12
  %i.an = trunc nuw nsw i16 %i.am to i8
  %i.ao = lshr i16 %i.al, 8
  %i.ap = trunc nuw i16 %i.ao to i8
  %i.aq = insertelement <2 x i8> poison, i8 %i.an, i64 0
  %i.ar = insertelement <2 x i8> %i.aq, i8 %i.ap, i64 1
  %i.as = and <2 x i8> %i.ar, <i8 -1, i8 15>
  %i.at = trunc i16 %i.al to i8                   ; 2 uses
  %i.au = lshr i8 %i.at, 4
  %i.av = and i8 %i.at, 15
  %i.aw = shufflevector <2 x i8> %i.as, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ax = insertelement <4 x i8> %i.aw, i8 %i.au, i64 2
  %i.ay = insertelement <4 x i8> %i.ax, i8 %i.av, i64 3
  %i.az = mul nuw <4 x i8> %i.ay, splat (i8 17)
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.ba = load <4 x i8>, ptr %0, align 1
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.bb = load <2 x i8>, ptr %0, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = shufflevector <2 x i8> %i.bb, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bf = insertelement <4 x i8> %i.be, i8 -1, i64 3
  %i.bg = insertelement <4 x i8> %i.bf, i8 %i.bd, i64 2
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.bh = load float, ptr %0, align 4
  %i.bi = fmul float %i.bh, 2.550000e+02
  %i.bj = fptoui float %i.bi to i8
  %i.bk = insertelement <4 x i8> <i8 poison, i8 -1, i8 poison, i8 poison>, i8 %i.bj, i64 0
  %i.bl = shufflevector <4 x i8> %i.bk, <4 x i8> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.bm = load <2 x float>, ptr %0, align 4
  %i.bn = fmul <2 x float> %i.bm, splat (float 2.550000e+02)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load float, ptr %i.bo, align 4
  %i.bq = fmul float %i.bp, 2.550000e+02
  %i.br = fptoui float %i.bq to i8
  %i.bs = insertelement <4 x i8> <i8 poison, i8 poison, i8 poison, i8 -1>, i8 %i.br, i64 2
  %i.bt = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bu = fptoui <4 x float> %i.bt to <4 x i8>
  %i.bv = shufflevector <4 x i8> %i.bu, <4 x i8> %i.bs, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.bw = load <4 x float>, ptr %0, align 4
  %i.bx = fmul <4 x float> %i.bw, splat (float 2.550000e+02)
  %i.by = fptoui <4 x float> %i.bx to <4 x i8>
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.bz = load i16, ptr %0, align 2               ; 2 uses
  %i.ca = zext i16 %i.bz to i32                   ; 2 uses
  %i.cb = lshr i32 %i.ca, 10
  %i.cc = and i32 %i.cb, 31                       ; 2 uses
  %i.cd = shl nuw nsw i32 %i.ca, 13               ; 2 uses
  %i.ce = and i32 %i.cd, 8380416                  ; 3 uses
  %i.cf = uitofp nneg i32 %i.ce to float
  %i.cg = bitcast float %i.cf to i32              ; 2 uses
  %i.ch = lshr i32 %i.cg, 23
  %.signext.i = sext i16 %i.bz to i32
  %i.ci = and i32 %.signext.i, -2147483648
  %.not.i = icmp eq i32 %i.cc, 0
  %i.cj = shl nuw nsw i32 %i.cc, 23
  %i.ck = add nuw nsw i32 %i.cj, 939524096
  %i.cl = or disjoint i32 %i.ck, %i.ce
  %.not12.i = icmp eq i32 %i.ce, 0
  %i.cm = and i32 %i.cg, 2139095040
  %i.cn = add nsw i32 %i.cm, -310378496
  %i.co = sub nsw i32 150, %i.ch
  %i.cp = shl i32 %i.cd, %i.co
  %i.cq = and i32 %i.cp, 8380416
  %i.cr = or disjoint i32 %i.cq, %i.cn
  %2 = select i1 %.not12.i, i32 0, i32 %i.cr
  %i.cs = select i1 %.not.i, i32 %2, i32 %i.cl
  %i.ct = or i32 %i.cs, %i.ci
  %i.cu = bitcast i32 %i.ct to float
  %i.cv = fmul float %i.cu, 2.550000e+02
  %i.cw = fptoui float %i.cv to i8
  %i.cx = insertelement <4 x i8> <i8 poison, i8 -1, i8 poison, i8 poison>, i8 %i.cw, i64 0
  %i.cy = shufflevector <4 x i8> %i.cx, <4 x i8> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.cz = load i16, ptr %0, align 2               ; 2 uses
  %i.da = zext i16 %i.cz to i32                   ; 2 uses
  %i.db = lshr i32 %i.da, 10
  %i.dc = and i32 %i.db, 31                       ; 2 uses
  %i.dd = shl nuw nsw i32 %i.da, 13               ; 2 uses
  %i.de = and i32 %i.dd, 8380416                  ; 3 uses
  %i.df = uitofp nneg i32 %i.de to float
  %i.dg = bitcast float %i.df to i32              ; 2 uses
  %i.dh = lshr i32 %i.dg, 23
  %.signext.i62 = sext i16 %i.cz to i32
  %i.di = and i32 %.signext.i62, -2147483648
  %.not.i63 = icmp eq i32 %i.dc, 0
  %i.dj = shl nuw nsw i32 %i.dc, 23
  %i.dk = add nuw nsw i32 %i.dj, 939524096
  %i.dl = or disjoint i32 %i.dk, %i.de
  %.not12.i66 = icmp eq i32 %i.de, 0
  %i.dm = and i32 %i.dg, 2139095040
  %i.dn = add nsw i32 %i.dm, -310378496
  %i.do = sub nsw i32 150, %i.dh
  %i.dp = shl i32 %i.dd, %i.do
  %i.dq = and i32 %i.dp, 8380416
  %i.dr = or disjoint i32 %i.dq, %i.dn
  %3 = select i1 %.not12.i66, i32 0, i32 %i.dr
  %i.ds = select i1 %.not.i63, i32 %3, i32 %i.dl
  %i.dt = or i32 %i.ds, %i.di
  %i.du = bitcast i32 %i.dt to float
  %i.dv = fmul float %i.du, 2.550000e+02
  %i.dw = fptoui float %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.dy = load <2 x i16>, ptr %i.dx, align 2      ; 3 uses
  %i.dz = zext <2 x i16> %i.dy to <2 x i32>
  %i.ea = shl nuw nsw <2 x i32> %i.dz, splat (i32 13) ; 3 uses
  %i.eb = and <2 x i32> %i.ea, splat (i32 8380416) ; 3 uses
  %i.ec = extractelement <2 x i32> %i.ea, i64 0
  %4 = lshr <2 x i16> %i.dy, splat (i16 10)
  %5 = and <2 x i16> %4, splat (i16 31)           ; 2 uses
  %i.ed = uitofp nneg <2 x i32> %i.eb to <2 x float>
  %i.ee = bitcast <2 x float> %i.ed to <2 x i32>  ; 2 uses
  %i.ef = lshr <2 x i32> %i.ee, splat (i32 23)
  %i.eg = sext <2 x i16> %i.dy to <2 x i32>
  %i.eh = and <2 x i32> %i.eg, splat (i32 -2147483648)
  %i.ei = icmp eq <2 x i16> %5, zeroinitializer
  %6 = zext nneg <2 x i16> %5 to <2 x i32>
  %7 = shl nuw nsw <2 x i32> %6, splat (i32 23)
  %8 = add nuw nsw <2 x i32> %7, splat (i32 939524096)
  %i.ej = or disjoint <2 x i32> %8, %i.eb
  %9 = icmp eq <2 x i32> %i.eb, zeroinitializer
  %i.ek = and <2 x i32> %i.ee, splat (i32 2139095040)
  %i.el = add nsw <2 x i32> %i.ek, splat (i32 -310378496)
  %i.em = sub nsw <2 x i32> splat (i32 150), %i.ef ; 2 uses
  %i.en = extractelement <2 x i32> %i.em, i64 0
  %i.eo = shl i32 %i.ec, %i.en
  %i.ep = extractelement <2 x i32> %i.ea, i64 1
  %i.eq = extractelement <2 x i32> %i.em, i64 1
  %i.er = shl i32 %i.ep, %i.eq
  %i.es = insertelement <2 x i32> poison, i32 %i.eo, i64 0
  %i.et = insertelement <2 x i32> %i.es, i32 %i.er, i64 1
  %i.eu = and <2 x i32> %i.et, splat (i32 8380416)
  %i.ev = or disjoint <2 x i32> %i.eu, %i.el
  %10 = select <2 x i1> %9, <2 x i32> zeroinitializer, <2 x i32> %i.ev
  %i.ew = select <2 x i1> %i.ei, <2 x i32> %10, <2 x i32> %i.ej
  %i.ex = or <2 x i32> %i.ew, %i.eh
  %i.ey = bitcast <2 x i32> %i.ex to <2 x float>
  %i.ez = fmul <2 x float> %i.ey, splat (float 2.550000e+02)
  %i.fa = insertelement <4 x i8> <i8 poison, i8 poison, i8 poison, i8 -1>, i8 %i.dw, i64 0
  %i.fb = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fc = fptoui <4 x float> %i.fb to <4 x i8>
  %i.fd = shufflevector <4 x i8> %i.fa, <4 x i8> %i.fc, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.fe = load <4 x i16>, ptr %0, align 2         ; 3 uses
  %i.ff = lshr <4 x i16> %i.fe, splat (i16 10)
  %i.fg = and <4 x i16> %i.ff, splat (i16 31)     ; 2 uses
  %i.fh = zext <4 x i16> %i.fe to <4 x i32>
  %i.fi = shl nuw nsw <4 x i32> %i.fh, splat (i32 13) ; 2 uses
  %i.fj = and <4 x i32> %i.fi, splat (i32 8380416) ; 3 uses
  %i.fk = uitofp nneg <4 x i32> %i.fj to <4 x float>
  %i.fl = bitcast <4 x float> %i.fk to <4 x i32>  ; 2 uses
  %i.fm = lshr <4 x i32> %i.fl, splat (i32 23)
  %i.fn = sext <4 x i16> %i.fe to <4 x i32>
  %i.fo = and <4 x i32> %i.fn, splat (i32 -2147483648)
  %i.fp = icmp eq <4 x i16> %i.fg, zeroinitializer
  %i.fq = zext nneg <4 x i16> %i.fg to <4 x i32>
  %i.fr = shl nuw nsw <4 x i32> %i.fq, splat (i32 23)
  %i.fs = add nuw nsw <4 x i32> %i.fr, splat (i32 939524096)
  %i.ft = or disjoint <4 x i32> %i.fs, %i.fj
  %11 = icmp eq <4 x i32> %i.fj, zeroinitializer
  %i.fu = and <4 x i32> %i.fl, splat (i32 2139095040)
  %i.fv = add nsw <4 x i32> %i.fu, splat (i32 -310378496)
  %i.fw = sub nsw <4 x i32> splat (i32 150), %i.fm
  %i.fx = shl <4 x i32> %i.fi, %i.fw
  %i.fy = and <4 x i32> %i.fx, splat (i32 8380416)
  %i.fz = or disjoint <4 x i32> %i.fy, %i.fv
  %12 = select <4 x i1> %11, <4 x i32> zeroinitializer, <4 x i32> %i.fz
  %i.ga = select <4 x i1> %i.fp, <4 x i32> %12, <4 x i32> %i.ft
  %i.gb = or <4 x i32> %i.ga, %i.fo
  %i.gc = bitcast <4 x i32> %i.gb to <4 x float>
  %i.gd = fmul <4 x float> %i.gc, splat (float 2.550000e+02)
  %i.ge = fptoui <4 x float> %i.gd to <4 x i8>
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.gf = phi <4 x i8> [ zeroinitializer, %bb.a ], [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ %i.t, %bb.d ], [ %i.ak, %bb.e ], [ %i.az, %bb.f ], [ %i.ba, %bb.g ], [ %i.bg, %bb.h ], [ %i.bl, %bb.i ], [ %i.bv, %bb.j ], [ %i.by, %bb.k ], [ %i.cy, %bb.l ], [ %i.fd, %bb.m ], [ %i.ge, %bb.n ]
  %i.gg = bitcast <4 x i8> %i.gf to i32
  ret i32 %i.gg
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @ColorAlphaBlend(i32 %0, i32 %1, i32 %2) local_unnamed_addr #7 {
bb.a:
  %.sroa.316.0.extract.shift = lshr i32 %0, 8     ; 2 uses
  %.sroa.417.0.extract.shift = lshr i32 %0, 16    ; 2 uses
  %.sroa.518.0.extract.shift = lshr i32 %0, 24    ; 5 uses
  %.sroa.5.0.extract.shift = lshr i32 %1, 8
  %.sroa.8.0.extract.shift = lshr i32 %1, 16
  %.sroa.11.0.extract.shift = lshr i32 %1, 24
  %.sroa.2.0.extract.shift = lshr i32 %2, 8
  %.sroa.3.0.extract.shift = lshr i32 %2, 16
  %.sroa.4.0.extract.shift = lshr i32 %2, 24
  %i.a = and i32 %1, 255
  %i.b = and i32 %2, 255
  %i.c = add nuw nsw i32 %i.b, 1
  %i.d = mul nuw nsw i32 %i.c, %i.a               ; 2 uses
  %i.e = and i32 %.sroa.5.0.extract.shift, 255
  %i.f = and i32 %.sroa.2.0.extract.shift, 255
  %i.g = add nuw nsw i32 %i.f, 1
  %i.h = mul nuw nsw i32 %i.g, %i.e
  %i.i = lshr i32 %i.h, 8                         ; 2 uses
  %i.j = and i32 %.sroa.8.0.extract.shift, 255
  %i.k = and i32 %.sroa.3.0.extract.shift, 255
  %i.l = add nuw nsw i32 %i.k, 1
  %i.m = mul nuw nsw i32 %i.l, %i.j
  %i.n = lshr i32 %i.m, 8                         ; 2 uses
  %i.o = add nuw nsw i32 %.sroa.4.0.extract.shift, 1
  %i.p = mul nuw nsw i32 %i.o, %.sroa.11.0.extract.shift
  %i.q = lshr i32 %i.p, 8                         ; 3 uses
  switch i32 %i.q, label %bb.c [
    i32 0, label %bb.e
    i32 255, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.r = lshr i32 %i.d, 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = add nuw nsw i32 %i.q, 1                  ; 3 uses
  %i.t = sub nuw nsw i32 255, %i.q                ; 4 uses
  %i.u = mul nuw nsw i32 %i.t, %.sroa.518.0.extract.shift
  %i.v = lshr i32 %i.u, 8
  %i.w = add nuw nsw i32 %i.v, %i.s
  %i.x = and i32 %i.w, 255                        ; 5 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = and i32 %i.d, 130816
  %i.z = mul nuw nsw i32 %i.y, %i.s
  %i.aa = and i32 %0, 255
  %i.ab = mul nuw nsw i32 %i.aa, %.sroa.518.0.extract.shift
  %i.ac = mul nuw nsw i32 %i.ab, %i.t
  %i.ad = add nuw nsw i32 %i.z, %i.ac
  %i.ae = udiv i32 %i.ad, %i.x
  %i.af = lshr i32 %i.ae, 8
  %i.ag = shl nuw nsw i32 %i.s, 8                 ; 2 uses
  %i.ah = mul nuw nsw i32 %i.ag, %i.i
  %i.ai = and i32 %.sroa.316.0.extract.shift, 255
  %i.aj = mul nuw nsw i32 %i.ai, %.sroa.518.0.extract.shift
  %i.ak = mul nuw nsw i32 %i.aj, %i.t
  %i.al = add nuw nsw i32 %i.ah, %i.ak
  %i.am = udiv i32 %i.al, %i.x
  %i.an = lshr i32 %i.am, 8
  %i.ao = mul nuw nsw i32 %i.ag, %i.n
  %i.ap = and i32 %.sroa.417.0.extract.shift, 255
  %i.aq = mul nuw nsw i32 %i.ap, %.sroa.518.0.extract.shift
  %i.ar = mul nuw nsw i32 %i.aq, %i.t
  %i.as = add nuw nsw i32 %i.ao, %i.ar
  %i.at = udiv i32 %i.as, %i.x
  %i.au = lshr i32 %i.at, 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  %.sroa.022.1 = phi i32 [ %0, %bb.a ], [ %i.r, %bb.b ], [ %i.af, %bb.d ], [ 255, %bb.c ]
  %.sroa.523.1 = phi i32 [ %.sroa.316.0.extract.shift, %bb.a ], [ %i.i, %bb.b ], [ %i.an, %bb.d ], [ 255, %bb.c ]
  %.sroa.824.1 = phi i32 [ %.sroa.417.0.extract.shift, %bb.a ], [ %i.n, %bb.b ], [ %i.au, %bb.d ], [ 255, %bb.c ]
  %.sroa.1125.0.in = phi i32 [ %.sroa.518.0.extract.shift, %bb.a ], [ 255, %bb.b ], [ %i.x, %bb.d ], [ 0, %bb.c ]
  %.sroa.1125.0.insert.shift = shl nuw i32 %.sroa.1125.0.in, 24
  %.sroa.824.0.insert.ext = shl i32 %.sroa.824.1, 16
  %.sroa.824.0.insert.shift = and i32 %.sroa.824.0.insert.ext, 16711680
  %.sroa.824.0.insert.insert = or disjoint i32 %.sroa.1125.0.insert.shift, %.sroa.824.0.insert.shift
  %.sroa.523.0.insert.ext = shl nuw i32 %.sroa.523.1, 8
  %.sroa.523.0.insert.shift = and i32 %.sroa.523.0.insert.ext, 65280
  %.sroa.523.0.insert.insert = or disjoint i32 %.sroa.824.0.insert.insert, %.sroa.523.0.insert.shift
  %.sroa.022.0.insert.ext = and i32 %.sroa.022.1, 255
  %.sroa.022.0.insert.insert = or disjoint i32 %.sroa.523.0.insert.insert, %.sroa.022.0.insert.ext
  ret i32 %.sroa.022.0.insert.insert
}

; Function Attrs: nounwind uwtable
define void @ImageDrawText(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 %5) local_unnamed_addr #34 {
bb.a:
  %6 = alloca %struct.Image, align 8              ; 6 uses
  %7 = alloca %struct.Font, align 8               ; 4 uses
  %8 = alloca %struct.Font, align 8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #52
  call void @GetFontDefault(ptr dead_on_unwind nonnull writable sret(%struct.Font) align 8 %7) #52
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #52
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @LoadFontDefault() #52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %3, i64 1
  %i.f = sitofp <2 x i32> %i.e to <2 x float>
  call void @GetFontDefault(ptr dead_on_unwind nonnull writable sret(%struct.Font) align 8 %8) #52
  %i.g = sitofp i32 %4 to float
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #52
  call void @ImageTextEx(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %6, ptr noundef nonnull byval(%struct.Font) align 8 %8, ptr noundef %1, float noundef %i.g, float noundef 1.000000e+00, i32 %5)
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = load <2 x i32>, ptr %i.h, align 8
  %i.j = sitofp <2 x i32> %i.i to <2 x float>     ; 2 uses
  call void @ImageDraw(ptr noundef readonly %0, ptr noundef nonnull byval(%struct.Image) align 8 %6, <2 x float> zeroinitializer, <2 x float> %i.j, <2 x float> %i.f, <2 x float> %i.j, i32 -1)
  %.sroa.0.0.copyload.i = load ptr, ptr %6, align 8
  call void @free(ptr noundef %.sroa.0.0.copyload.i) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #52
  ret void
}

declare void @LoadFontDefault() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @ImageDrawTextEx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly byval(%struct.Font) align 8 captures(none) %1, ptr noundef %2, <2 x float> %3, float noundef %4, float noundef %5, i32 %6) local_unnamed_addr #34 {
bb.a:
  %7 = alloca %struct.Image, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #52
  call void @ImageTextEx(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %7, ptr noundef nonnull byval(%struct.Font) align 8 %1, ptr noundef %2, float noundef %4, float noundef %5, i32 %6)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = load <2 x i32>, ptr %i.a, align 8
  %i.c = sitofp <2 x i32> %i.b to <2 x float>     ; 2 uses
  tail call void @ImageDraw(ptr noundef %0, ptr noundef nonnull byval(%struct.Image) align 8 %7, <2 x float> zeroinitializer, <2 x float> %i.c, <2 x float> %3, <2 x float> %i.c, i32 -1)
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8
  tail call void @free(ptr noundef %.sroa.0.0.copyload) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #52
  ret void
}

; Function Attrs: nounwind uwtable
define void @LoadTexture(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Texture) align 4 captures(none) initializes((0, 20)) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %struct.Image, align 8              ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52, !noalias !136
  store i32 0, ptr %i.a, align 4, !noalias !136
  %i.b = call ptr @LoadFileData(ptr noundef %1, ptr noundef nonnull %i.a) #52, !noalias !136 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %LoadImage.exit.thread, label %LoadImage.exit

LoadImage.exit.thread:                            ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52, !noalias !136
  br label %bb.e

LoadImage.exit:                                   ; preds = %bb.a
  %i.c = call ptr @GetFileExtension(ptr noundef %1) #52, !noalias !136
  %i.d = load i32, ptr %i.a, align 4, !noalias !136
  call void @LoadImageFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %2, ptr noundef %i.c, ptr noundef nonnull %i.b, i32 noundef %i.d)
  call void @UnloadFileData(ptr noundef nonnull %i.b) #52, !noalias !136
  %.pr = load ptr, ptr %2, align 8                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52, !noalias !136
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %LoadImage.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.52.0.copyload = load i32, ptr %.sroa.52.0..sroa_idx, align 4 ; 3 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.63.0.copyload = load i32, ptr %.sroa.63.0..sroa_idx, align 8 ; 2 uses
  %.sroa.84.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.84.0.copyload = load i32, ptr %.sroa.84.0..sroa_idx, align 4 ; 2 uses
  %i.e = icmp ne i32 %.sroa.4.0.copyload, 0
  %i.f = icmp ne i32 %.sroa.52.0.copyload, 0
  %or.cond.i = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @rlLoadTexture(ptr noundef nonnull %.pr, i32 noundef %.sroa.4.0.copyload, i32 noundef %.sroa.52.0.copyload, i32 noundef %.sroa.84.0.copyload, i32 noundef %.sroa.63.0.copyload) #52, !noalias !137
  br label %LoadTextureFromImage.exit
end_hunk_6
