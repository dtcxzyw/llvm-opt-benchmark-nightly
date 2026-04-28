inline.NumInlined: 90
inline.NumDeleted: 14
begin_hunk_0_@WebPYuv444ToRgba4444_C:bb.a
  %i.y = sub nsw <8 x i32> %i.k, %i.x             ; 2 uses
  %i.z = add nsw <8 x i32> %i.y, splat (i32 8708) ; 2 uses
  %i.aa = icmp ult <8 x i32> %i.z, splat (i32 16384)
  %i.ab = lshr <8 x i32> %i.z, splat (i32 6)
  %i.ac = icmp slt <8 x i32> %i.y, splat (i32 -8708)
  %i.ad = select <8 x i1> %i.ac, <8 x i32> zeroinitializer, <8 x i32> splat (i32 240)
  %i.ae = select <8 x i1> %i.aa, <8 x i32> %i.ab, <8 x i32> %i.ad
  %i.af = mul nuw nsw <8 x i32> %i.e, splat (i32 33050)
  %i.ag = lshr <8 x i32> %i.af, splat (i32 8)
end_hunk_0
begin_hunk_1_@WebPYuv444ToRgba4444_C:bb.a
  %i.an = select <8 x i1> %i.aj, <8 x i32> %i.ak, <8 x i32> %i.am
  %i.ao = and <8 x i32> %i.q, splat (i32 240)
  %i.ap = select <8 x i1> %i.p, <8 x i32> %i.ao, <8 x i32> %i.s
  %5 = lshr <8 x i32> %i.ae, splat (i32 4)
  %i.aq = or <8 x i32> %i.ap, %5
  %i.ar = trunc <8 x i32> %i.aq to <8 x i8>
  %i.as = trunc <8 x i32> %i.an to <8 x i8>
  %i.at = or <8 x i8> %i.as, splat (i8 15)
end_hunk_1
begin_hunk_2_@WebPYuv444ToRgba4444_C:bb.a
  %i.bv = sub nsw i32 %i.bh, %i.bu                ; 2 uses
  %i.bw = add nsw i32 %i.bv, 8708                 ; 2 uses
  %i.bx = icmp ult i32 %i.bw, 16384
  %i.by = lshr i32 %i.bw, 6
  %i.bz = icmp slt i32 %i.bv, -8708
  %i.ca = select i1 %i.bz, i32 0, i32 240
  %i.cb = select i1 %i.bx, i32 %i.by, i32 %i.ca
  %i.cc = mul nuw nsw i32 %i.ba, 33050
  %i.cd = lshr i32 %i.cc, 8
end_hunk_2
begin_hunk_3_@WebPYuv444ToRgba4444_C:bb.a
  %i.ck = select i1 %i.cg, i32 %i.ch, i32 %i.cj
  %i.cl = and i32 %i.bn, 240
  %i.cm = select i1 %i.bm, i32 %i.cl, i32 %i.bp
  %6 = lshr i32 %i.cb, 4
  %i.cn = or i32 %i.cm, %6
  %i.co = trunc i32 %i.cn to i8
  store i8 %i.co, ptr %i.bf, align 1, !tbaa !10
  %i.cp = trunc i32 %i.ck to i8
end_hunk_3
begin_hunk_4_@WebPYuv444ToRgb565_C:bb.a
  %i.ah = add nuw nsw <8 x i32> %i.ag, %i.k       ; 2 uses
  %i.ai = add nsw <8 x i32> %i.ah, splat (i32 -17685) ; 2 uses
  %i.aj = icmp ult <8 x i32> %i.ai, splat (i32 16384)
  %i.ak = lshr <8 x i32> %i.ai, splat (i32 6)
  %i.al = icmp samesign ult <8 x i32> %i.ah, splat (i32 17685)
  %i.am = select <8 x i1> %i.al, <8 x i32> zeroinitializer, <8 x i32> splat (i32 248)
  %i.an = select <8 x i1> %i.aj, <8 x i32> %i.ak, <8 x i32> %i.am
  %i.ao = and <8 x i32> %i.q, splat (i32 248)
  %i.ap = select <8 x i1> %i.p, <8 x i32> %i.ao, <8 x i32> %i.s
end_hunk_4
begin_hunk_5_@WebPYuv444ToRgb565_C:bb.a
  %i.ar = or <8 x i32> %i.ap, %i.aq
  %i.as = shl nuw nsw <8 x i32> %i.ae, splat (i32 3)
  %i.at = and <8 x i32> %i.as, splat (i32 224)
  %5 = lshr <8 x i32> %i.an, splat (i32 3)
  %i.au = or <8 x i32> %i.at, %5
  %i.av = shufflevector <8 x i32> %i.ar, <8 x i32> %i.au, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = trunc <16 x i32> %i.av to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %i.i, align 1, !tbaa !10
end_hunk_5
begin_hunk_6_@WebPYuv444ToRgb565_C:bb.a
  %i.cg = add nuw nsw i32 %i.cf, %i.bj            ; 2 uses
  %i.ch = add nsw i32 %i.cg, -17685               ; 2 uses
  %i.ci = icmp ult i32 %i.ch, 16384
  %i.cj = lshr i32 %i.ch, 6
  %i.ck = icmp samesign ult i32 %i.cg, 17685
  %i.cl = select i1 %i.ck, i32 0, i32 248
  %i.cm = select i1 %i.ci, i32 %i.cj, i32 %i.cl
  %i.cn = and i32 %i.bp, 248
  %i.co = select i1 %i.bo, i32 %i.cn, i32 %i.br
end_hunk_6
begin_hunk_7_@WebPYuv444ToRgb565_C:bb.a
  %i.cq = or i32 %i.co, %i.cp
  %i.cr = shl nuw nsw i32 %i.cd, 3
  %i.cs = and i32 %i.cr, 224
  %6 = lshr i32 %i.cm, 3
  %i.ct = or i32 %i.cs, %6
  %i.cu = trunc i32 %i.cq to i8
  store i8 %i.cu, ptr %i.bh, align 1, !tbaa !10
  %i.cv = trunc i32 %i.ct to i8
end_hunk_7
begin_hunk_8_@UpsampleRgba4444LinePair_C:bb.a
  %i.al = sub nsw i32 %i.x, %i.ak                 ; 2 uses
  %i.am = add nsw i32 %i.al, 8708                 ; 2 uses
  %i.an = icmp ult i32 %i.am, 16384
  %i.ao = lshr i32 %i.am, 6
  %i.ap = icmp slt i32 %i.al, -8708
  %i.aq = select i1 %i.ap, i32 0, i32 240
  %i.ar = select i1 %i.an, i32 %i.ao, i32 %i.aq
  %i.as = mul nuw nsw i32 %i.u, 33050
  %i.at = lshr i32 %i.as, 8
end_hunk_8
begin_hunk_9_@UpsampleRgba4444LinePair_C:bb.a
  %i.ba = select i1 %i.aw, i32 %i.ax, i32 %i.az
  %i.bb = and i32 %i.ad, 240
  %i.bc = select i1 %i.ac, i32 %i.bb, i32 %i.af
  %9 = lshr i32 %i.ar, 4
  %i.bd = or i32 %9, %i.bc
  %i.be = trunc i32 %i.bd to i8
  store i8 %i.be, ptr %6, align 1, !tbaa !10
  %i.bf = trunc i32 %i.ba to i8
end_hunk_9
begin_hunk_10_@UpsampleRgba4444LinePair_C:bb.a
  %i.cf = sub nsw i32 %i.br, %i.ce                ; 2 uses
  %i.cg = add nsw i32 %i.cf, 8708                 ; 2 uses
  %i.ch = icmp ult i32 %i.cg, 16384
  %i.ci = lshr i32 %i.cg, 6
  %i.cj = icmp slt i32 %i.cf, -8708
  %i.ck = select i1 %i.cj, i32 0, i32 240
  %i.cl = select i1 %i.ch, i32 %i.ci, i32 %i.ck
  %i.cm = mul nuw nsw i32 %i.bo, 33050
  %i.cn = lshr i32 %i.cm, 8
end_hunk_10
begin_hunk_11_@UpsampleRgba4444LinePair_C:bb.a
  %i.cu = select i1 %i.cq, i32 %i.cr, i32 %i.ct
  %i.cv = and i32 %i.bx, 240
  %i.cw = select i1 %i.bw, i32 %i.cv, i32 %i.bz
  %10 = lshr i32 %i.cl, 4
  %i.cx = or i32 %i.cw, %10
  %i.cy = trunc i32 %i.cx to i8
  store i8 %i.cy, ptr %7, align 1, !tbaa !10
  %i.cz = trunc i32 %i.cu to i8
end_hunk_11
begin_hunk_12_@UpsampleRgba4444LinePair_C:bb.a
  %i.fh = sub nsw i32 %i.et, %i.fg                ; 2 uses
  %i.fi = add nsw i32 %i.fh, 8708                 ; 2 uses
  %i.fj = icmp ult i32 %i.fi, 16384
  %i.fk = lshr i32 %i.fi, 6
  %i.fl = icmp slt i32 %i.fh, -8708
  %i.fm = select i1 %i.fl, i32 0, i32 240
  %i.fn = select i1 %i.fj, i32 %i.fk, i32 %i.fm
  %i.fo = mul nuw nsw i32 %i.eo, 33050
  %i.fp = lshr i32 %i.fo, 8
end_hunk_12
begin_hunk_13_@UpsampleRgba4444LinePair_C:bb.a
  %i.fw = select i1 %i.fs, i32 %i.ft, i32 %i.fv
  %i.fx = and i32 %i.ez, 240
  %i.fy = select i1 %i.ey, i32 %i.fx, i32 %i.fb
  %11 = lshr i32 %i.fn, 4
  %i.fz = or i32 %11, %i.fy
  %i.ga = trunc i32 %i.fz to i8
  store i8 %i.ga, ptr %i.er, align 1, !tbaa !10
  %i.gb = trunc i32 %i.fw to i8
end_hunk_13
begin_hunk_14_@UpsampleRgba4444LinePair_C:bb.a
  %i.ha = sub nsw i32 %i.gm, %i.gz                ; 2 uses
  %i.hb = add nsw i32 %i.ha, 8708                 ; 2 uses
  %i.hc = icmp ult i32 %i.hb, 16384
  %i.hd = lshr i32 %i.hb, 6
  %i.he = icmp slt i32 %i.ha, -8708
  %i.hf = select i1 %i.he, i32 0, i32 240
  %i.hg = select i1 %i.hc, i32 %i.hd, i32 %i.hf
  %i.hh = mul nuw nsw i32 %i.gh, 33050
  %i.hi = lshr i32 %i.hh, 8
end_hunk_14
begin_hunk_15_@UpsampleRgba4444LinePair_C:bb.a
  %i.hp = select i1 %i.hl, i32 %i.hm, i32 %i.ho
  %i.hq = and i32 %i.gs, 240
  %i.hr = select i1 %i.gr, i32 %i.hq, i32 %i.gu
  %12 = lshr i32 %i.hg, 4
  %i.hs = or i32 %12, %i.hr
  %i.ht = trunc i32 %i.hs to i8
  store i8 %i.ht, ptr %i.gk, align 1, !tbaa !10
  %i.hu = trunc i32 %i.hp to i8
end_hunk_15
begin_hunk_16_@UpsampleRgba4444LinePair_C:bb.a
  %i.iw = sub nsw i32 %i.ii, %i.iv                ; 2 uses
  %i.ix = add nsw i32 %i.iw, 8708                 ; 2 uses
  %i.iy = icmp ult i32 %i.ix, 16384
  %i.iz = lshr i32 %i.ix, 6
  %i.ja = icmp slt i32 %i.iw, -8708
  %i.jb = select i1 %i.ja, i32 0, i32 240
  %i.jc = select i1 %i.iy, i32 %i.iz, i32 %i.jb
  %i.jd = mul nuw nsw i32 %i.ie, 33050
  %i.je = lshr i32 %i.jd, 8
end_hunk_16
begin_hunk_17_@UpsampleRgba4444LinePair_C:bb.a
  %i.jl = select i1 %i.jh, i32 %i.ji, i32 %i.jk
  %i.jm = and i32 %i.io, 240
  %i.jn = select i1 %i.in, i32 %i.jm, i32 %i.iq
  %13 = lshr i32 %i.jc, 4
  %i.jo = or i32 %i.jn, %13
  %i.jp = trunc i32 %i.jo to i8
  store i8 %i.jp, ptr %i.ig, align 1, !tbaa !10
  %i.jq = trunc i32 %i.jl to i8
end_hunk_17
begin_hunk_18_@UpsampleRgba4444LinePair_C:bb.a
  %i.ko = sub nsw i32 %i.ka, %i.kn                ; 2 uses
  %i.kp = add nsw i32 %i.ko, 8708                 ; 2 uses
  %i.kq = icmp ult i32 %i.kp, 16384
  %i.kr = lshr i32 %i.kp, 6
  %i.ks = icmp slt i32 %i.ko, -8708
  %i.kt = select i1 %i.ks, i32 0, i32 240
  %i.ku = select i1 %i.kq, i32 %i.kr, i32 %i.kt
  %i.kv = mul nuw nsw i32 %i.jw, 33050
  %i.kw = lshr i32 %i.kv, 8
end_hunk_18
begin_hunk_19_@UpsampleRgba4444LinePair_C:bb.a
  %i.ld = select i1 %i.kz, i32 %i.la, i32 %i.lc
  %i.le = and i32 %i.kg, 240
  %i.lf = select i1 %i.kf, i32 %i.le, i32 %i.ki
  %14 = lshr i32 %i.ku, 4
  %i.lg = or i32 %i.lf, %14
  %i.lh = trunc i32 %i.lg to i8
  store i8 %i.lh, ptr %i.jy, align 1, !tbaa !10
  %i.li = trunc i32 %i.ld to i8
end_hunk_19
begin_hunk_20_@UpsampleRgba4444LinePair_C:bb.a
  %i.mo = sub nsw i32 %i.ma, %i.mn                ; 2 uses
  %i.mp = add nsw i32 %i.mo, 8708                 ; 2 uses
  %i.mq = icmp ult i32 %i.mp, 16384
  %i.mr = lshr i32 %i.mp, 6
  %i.ms = icmp slt i32 %i.mo, -8708
  %i.mt = select i1 %i.ms, i32 0, i32 240
  %i.mu = select i1 %i.mq, i32 %i.mr, i32 %i.mt
  %i.mv = mul nuw nsw i32 %i.lu, 33050
  %i.mw = lshr i32 %i.mv, 8
end_hunk_20
begin_hunk_21_@UpsampleRgba4444LinePair_C:bb.a
  %i.nd = select i1 %i.mz, i32 %i.na, i32 %i.nc
  %i.ne = and i32 %i.mg, 240
  %i.nf = select i1 %i.mf, i32 %i.ne, i32 %i.mi
  %15 = lshr i32 %i.mu, 4
  %i.ng = or i32 %i.nf, %15
  %i.nh = trunc i32 %i.ng to i8
  store i8 %i.nh, ptr %i.ly, align 1, !tbaa !10
  %i.ni = trunc i32 %i.nd to i8
end_hunk_21
begin_hunk_22_@UpsampleRgba4444LinePair_C:bb.a
  %i.ok = sub nsw i32 %i.nw, %i.oj                ; 2 uses
  %i.ol = add nsw i32 %i.ok, 8708                 ; 2 uses
  %i.om = icmp ult i32 %i.ol, 16384
  %i.on = lshr i32 %i.ol, 6
  %i.oo = icmp slt i32 %i.ok, -8708
  %i.op = select i1 %i.oo, i32 0, i32 240
  %i.oq = select i1 %i.om, i32 %i.on, i32 %i.op
  %i.or = mul nuw nsw i32 %i.ns, 33050
  %i.os = lshr i32 %i.or, 8
end_hunk_22
begin_hunk_23_@UpsampleRgba4444LinePair_C:bb.a
  %i.oz = select i1 %i.ov, i32 %i.ow, i32 %i.oy
  %i.pa = and i32 %i.oc, 240
  %i.pb = select i1 %i.ob, i32 %i.pa, i32 %i.oe
  %16 = lshr i32 %i.oq, 4
  %i.pc = or i32 %i.pb, %16
  %i.pd = trunc i32 %i.pc to i8
  store i8 %i.pd, ptr %i.nu, align 1, !tbaa !10
  %i.pe = trunc i32 %i.oz to i8
end_hunk_23
begin_hunk_24_@UpsampleRgb565LinePair_C:bb.a
  %i.au = add nuw nsw i32 %i.at, %i.x             ; 2 uses
  %i.av = add nsw i32 %i.au, -17685               ; 2 uses
  %i.aw = icmp ult i32 %i.av, 16384
  %i.ax = lshr i32 %i.av, 6
  %i.ay = icmp samesign ult i32 %i.au, 17685
  %i.az = select i1 %i.ay, i32 0, i32 248
  %i.ba = select i1 %i.aw, i32 %i.ax, i32 %i.az
  %i.bb = and i32 %i.ad, 248
  %i.bc = select i1 %i.ac, i32 %i.bb, i32 %i.af
end_hunk_24
begin_hunk_25_@UpsampleRgb565LinePair_C:bb.a
  %i.be = or i32 %i.bd, %i.bc
  %i.bf = shl nuw nsw i32 %i.ar, 3
  %i.bg = and i32 %i.bf, 224
  %9 = lshr i32 %i.ba, 3
  %i.bh = or i32 %i.bg, %9
  %i.bi = trunc i32 %i.be to i8
  store i8 %i.bi, ptr %6, align 1, !tbaa !10
  %i.bj = trunc i32 %i.bh to i8
end_hunk_25
begin_hunk_26_@UpsampleRgb565LinePair_C:bb.a
  %i.cr = add nuw nsw i32 %i.bu, %i.cq            ; 2 uses
  %i.cs = add nsw i32 %i.cr, -17685               ; 2 uses
  %i.ct = icmp ult i32 %i.cs, 16384
  %i.cu = lshr i32 %i.cs, 6
  %i.cv = icmp samesign ult i32 %i.cr, 17685
  %i.cw = select i1 %i.cv, i32 0, i32 248
  %i.cx = select i1 %i.ct, i32 %i.cu, i32 %i.cw
  %i.cy = and i32 %i.ca, 248
  %i.cz = select i1 %i.bz, i32 %i.cy, i32 %i.cc
end_hunk_26
begin_hunk_27_@UpsampleRgb565LinePair_C:bb.a
  %i.db = or i32 %i.cz, %i.da
  %i.dc = shl nuw nsw i32 %i.co, 3
  %i.dd = and i32 %i.dc, 224
  %10 = lshr i32 %i.cx, 3
  %i.de = or i32 %i.dd, %10
  %i.df = trunc i32 %i.db to i8
  store i8 %i.df, ptr %7, align 1, !tbaa !10
  %i.dg = trunc i32 %i.de to i8
end_hunk_27
begin_hunk_28_@UpsampleRgb565LinePair_C:bb.a
  %i.fw = add nuw nsw i32 %i.fv, %i.ez            ; 2 uses
  %i.fx = add nsw i32 %i.fw, -17685               ; 2 uses
  %i.fy = icmp ult i32 %i.fx, 16384
  %i.fz = lshr i32 %i.fx, 6
  %i.ga = icmp samesign ult i32 %i.fw, 17685
  %i.gb = select i1 %i.ga, i32 0, i32 248
  %i.gc = select i1 %i.fy, i32 %i.fz, i32 %i.gb
  %i.gd = and i32 %i.ff, 248
  %i.ge = select i1 %i.fe, i32 %i.gd, i32 %i.fh
end_hunk_28
begin_hunk_29_@UpsampleRgb565LinePair_C:bb.a
  %i.gg = or i32 %i.gf, %i.ge
  %i.gh = shl nuw nsw i32 %i.ft, 3
  %i.gi = and i32 %i.gh, 224
  %11 = lshr i32 %i.gc, 3
  %i.gj = or i32 %i.gi, %11
  %i.gk = trunc i32 %i.gg to i8
  store i8 %i.gk, ptr %i.ex, align 1, !tbaa !10
  %i.gl = trunc i32 %i.gj to i8
end_hunk_29
begin_hunk_30_@UpsampleRgb565LinePair_C:bb.a
  %i.hs = add nuw nsw i32 %i.hr, %i.gv            ; 2 uses
  %i.ht = add nsw i32 %i.hs, -17685               ; 2 uses
  %i.hu = icmp ult i32 %i.ht, 16384
  %i.hv = lshr i32 %i.ht, 6
  %i.hw = icmp samesign ult i32 %i.hs, 17685
  %i.hx = select i1 %i.hw, i32 0, i32 248
  %i.hy = select i1 %i.hu, i32 %i.hv, i32 %i.hx
  %i.hz = and i32 %i.hb, 248
  %i.ia = select i1 %i.ha, i32 %i.hz, i32 %i.hd
end_hunk_30
begin_hunk_31_@UpsampleRgb565LinePair_C:bb.a
  %i.ic = or i32 %i.ib, %i.ia
  %i.id = shl nuw nsw i32 %i.hp, 3
  %i.ie = and i32 %i.id, 224
  %12 = lshr i32 %i.hy, 3
  %i.if = or i32 %i.ie, %12
  %i.ig = trunc i32 %i.ic to i8
  store i8 %i.ig, ptr %i.gt, align 1, !tbaa !10
  %i.ih = trunc i32 %i.if to i8
end_hunk_31
begin_hunk_32_@UpsampleRgb565LinePair_C:bb.a
  %i.jr = add nuw nsw i32 %i.iu, %i.jq            ; 2 uses
  %i.js = add nsw i32 %i.jr, -17685               ; 2 uses
  %i.jt = icmp ult i32 %i.js, 16384
  %i.ju = lshr i32 %i.js, 6
  %i.jv = icmp samesign ult i32 %i.jr, 17685
  %i.jw = select i1 %i.jv, i32 0, i32 248
  %i.jx = select i1 %i.jt, i32 %i.ju, i32 %i.jw
  %i.jy = and i32 %i.ja, 248
  %i.jz = select i1 %i.iz, i32 %i.jy, i32 %i.jc
end_hunk_32
begin_hunk_33_@UpsampleRgb565LinePair_C:bb.a
  %i.kb = or i32 %i.jz, %i.ka
  %i.kc = shl nuw nsw i32 %i.jo, 3
  %i.kd = and i32 %i.kc, 224
  %13 = lshr i32 %i.jx, 3
  %i.ke = or i32 %i.kd, %13
  %i.kf = trunc i32 %i.kb to i8
  store i8 %i.kf, ptr %i.is, align 1, !tbaa !10
  %i.kg = trunc i32 %i.ke to i8
end_hunk_33
begin_hunk_34_@UpsampleRgb565LinePair_C:bb.a
  %i.lm = add nuw nsw i32 %i.kp, %i.ll            ; 2 uses
  %i.ln = add nsw i32 %i.lm, -17685               ; 2 uses
  %i.lo = icmp ult i32 %i.ln, 16384
  %i.lp = lshr i32 %i.ln, 6
  %i.lq = icmp samesign ult i32 %i.lm, 17685
  %i.lr = select i1 %i.lq, i32 0, i32 248
  %i.ls = select i1 %i.lo, i32 %i.lp, i32 %i.lr
  %i.lt = and i32 %i.kv, 248
  %i.lu = select i1 %i.ku, i32 %i.lt, i32 %i.kx
end_hunk_34
begin_hunk_35_@UpsampleRgb565LinePair_C:bb.a
  %i.lw = or i32 %i.lu, %i.lv
  %i.lx = shl nuw nsw i32 %i.lj, 3
  %i.ly = and i32 %i.lx, 224
  %14 = lshr i32 %i.ls, 3
  %i.lz = or i32 %i.ly, %14
  %i.ma = trunc i32 %i.lw to i8
  store i8 %i.ma, ptr %i.kn, align 1, !tbaa !10
  %i.mb = trunc i32 %i.lz to i8
end_hunk_35
begin_hunk_36_@UpsampleRgb565LinePair_C:bb.a
  %i.np = add nuw nsw i32 %i.ms, %i.no            ; 2 uses
  %i.nq = add nsw i32 %i.np, -17685               ; 2 uses
  %i.nr = icmp ult i32 %i.nq, 16384
  %i.ns = lshr i32 %i.nq, 6
  %i.nt = icmp samesign ult i32 %i.np, 17685
  %i.nu = select i1 %i.nt, i32 0, i32 248
  %i.nv = select i1 %i.nr, i32 %i.ns, i32 %i.nu
  %i.nw = and i32 %i.my, 248
  %i.nx = select i1 %i.mx, i32 %i.nw, i32 %i.na
end_hunk_36
begin_hunk_37_@UpsampleRgb565LinePair_C:bb.a
  %i.nz = or i32 %i.nx, %i.ny
  %i.oa = shl nuw nsw i32 %i.nm, 3
  %i.ob = and i32 %i.oa, 224
  %15 = lshr i32 %i.nv, 3
  %i.oc = or i32 %i.ob, %15
  %i.od = trunc i32 %i.nz to i8
  store i8 %i.od, ptr %i.mq, align 1, !tbaa !10
  %i.oe = trunc i32 %i.oc to i8
end_hunk_37
begin_hunk_38_@UpsampleRgb565LinePair_C:bb.a
  %i.po = add nuw nsw i32 %i.or, %i.pn            ; 2 uses
  %i.pp = add nsw i32 %i.po, -17685               ; 2 uses
  %i.pq = icmp ult i32 %i.pp, 16384
  %i.pr = lshr i32 %i.pp, 6
  %i.ps = icmp samesign ult i32 %i.po, 17685
  %i.pt = select i1 %i.ps, i32 0, i32 248
  %i.pu = select i1 %i.pq, i32 %i.pr, i32 %i.pt
  %i.pv = and i32 %i.ox, 248
  %i.pw = select i1 %i.ow, i32 %i.pv, i32 %i.oz
end_hunk_38
begin_hunk_39_@UpsampleRgb565LinePair_C:bb.a
  %i.py = or i32 %i.pw, %i.px
  %i.pz = shl nuw nsw i32 %i.pl, 3
  %i.qa = and i32 %i.pz, 224
  %16 = lshr i32 %i.pu, 3
  %i.qb = or i32 %i.qa, %16
  %i.qc = trunc i32 %i.py to i8
  store i8 %i.qc, ptr %i.op, align 1, !tbaa !10
  %i.qd = trunc i32 %i.qb to i8
end_hunk_39
