inline.NumInlined: 90
inline.NumDeleted: 14
begin_hunk_0_@UpsampleRgbLinePair_C:bb.a
  %i.d = zext i8 %i.c to i32
  %i.e = load i8, ptr %3, align 1, !tbaa !10
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %i.h = or disjoint i32 %i.g, %i.d               ; 4 uses
  %i.i = load i8, ptr %4, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i32
  %i.k = load i8, ptr %5, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.j               ; 4 uses
  %i.o = mul nuw nsw i32 %i.h, 3
  %i.p = add nuw nsw i32 %i.o, 131074
  %i.q = add nuw nsw i32 %i.p, %i.n               ; 2 uses
  %i.r = lshr i32 %i.q, 2
  %i.s = load i8, ptr %0, align 1, !tbaa !10
  %i.t = zext i8 %i.s to i32
  %i.u = and i32 %i.r, 255                        ; 2 uses
  %i.v = lshr i32 %i.q, 18                        ; 2 uses
  %i.w = mul nuw nsw i32 %i.t, 19077
  %i.x = lshr i32 %i.w, 8                         ; 3 uses
  %i.y = mul nuw nsw i32 %i.v, 26149
  %i.z = lshr i32 %i.y, 8
  %i.aa = add nuw nsw i32 %i.z, %i.x              ; 2 uses
  %i.ab = add nsw i32 %i.aa, -14234               ; 2 uses
  %i.ac = icmp ult i32 %i.ab, 16384
  %i.ad = lshr i32 %i.ab, 6
  %i.ae = icmp samesign ult i32 %i.aa, 14234
  %i.af = select i1 %i.ae, i32 0, i32 255
  %i.ag = select i1 %i.ac, i32 %i.ad, i32 %i.af
  %i.ah = trunc i32 %i.ag to i8
  store i8 %i.ah, ptr %6, align 1, !tbaa !10
  %i.ai = mul nuw nsw i32 %i.u, 6419
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = mul nuw nsw i32 %i.v, 13320
  %i.al = lshr i32 %i.ak, 8
  %i.am = add nuw nsw i32 %i.al, %i.aj
  %i.an = sub nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = add nsw i32 %i.an, 8708                 ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 16384
  %i.aq = lshr i32 %i.ao, 6
  %i.ar = icmp slt i32 %i.an, -8708
  %i.as = select i1 %i.ar, i32 0, i32 255
  %i.at = select i1 %i.ap, i32 %i.aq, i32 %i.as
  %i.au = trunc i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !10
  %i.aw = mul nuw nsw i32 %i.u, 33050
  %i.ax = lshr i32 %i.aw, 8
  %i.ay = add nuw nsw i32 %i.ax, %i.x             ; 2 uses
  %i.az = add nsw i32 %i.ay, -17685               ; 2 uses
  %i.ba = icmp ult i32 %i.az, 16384
  %i.bb = lshr i32 %i.az, 6
  %i.bc = icmp samesign ult i32 %i.ay, 17685
  %i.bd = select i1 %i.bc, i32 0, i32 255
  %i.be = select i1 %i.ba, i32 %i.bb, i32 %i.bd
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !10
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bh = mul nuw nsw i32 %i.n, 3
  %i.bi = add nuw nsw i32 %i.h, 131074
  %i.bj = add nuw nsw i32 %i.bi, %i.bh            ; 2 uses
  %i.bk = lshr i32 %i.bj, 2
  %i.bl = load i8, ptr %1, align 1, !tbaa !10
  %i.bm = zext i8 %i.bl to i32
  %i.bn = and i32 %i.bk, 255                      ; 2 uses
  %i.bo = lshr i32 %i.bj, 18                      ; 2 uses
  %i.bp = mul nuw nsw i32 %i.bm, 19077
  %i.bq = lshr i32 %i.bp, 8                       ; 3 uses
  %i.br = mul nuw nsw i32 %i.bo, 26149
  %i.bs = lshr i32 %i.br, 8
  %i.bt = add nuw nsw i32 %i.bq, %i.bs            ; 2 uses
  %i.bu = add nsw i32 %i.bt, -14234               ; 2 uses
  %i.bv = icmp ult i32 %i.bu, 16384
  %i.bw = lshr i32 %i.bu, 6
  %i.bx = icmp samesign ult i32 %i.bt, 14234
  %i.by = select i1 %i.bx, i32 0, i32 255
  %i.bz = select i1 %i.bv, i32 %i.bw, i32 %i.by
  %i.ca = trunc i32 %i.bz to i8
  store i8 %i.ca, ptr %7, align 1, !tbaa !10
  %i.cb = mul nuw nsw i32 %i.bn, 6419
  %i.cc = lshr i32 %i.cb, 8
  %i.cd = mul nuw nsw i32 %i.bo, 13320
  %i.ce = lshr i32 %i.cd, 8
  %i.cf = add nuw nsw i32 %i.cc, %i.ce
  %i.cg = sub nsw i32 %i.bq, %i.cf                ; 2 uses
  %i.ch = add nsw i32 %i.cg, 8708                 ; 2 uses
  %i.ci = icmp ult i32 %i.ch, 16384
  %i.cj = lshr i32 %i.ch, 6
  %i.ck = icmp slt i32 %i.cg, -8708
  %i.cl = select i1 %i.ck, i32 0, i32 255
  %i.cm = select i1 %i.ci, i32 %i.cj, i32 %i.cl
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !10
  %i.cp = mul nuw nsw i32 %i.bn, 33050
  %i.cq = lshr i32 %i.cp, 8
  %i.cr = add nuw nsw i32 %i.bq, %i.cq            ; 2 uses
  %i.cs = add nsw i32 %i.cr, -17685               ; 2 uses
  %i.ct = icmp ult i32 %i.cs, 16384
  %i.cu = lshr i32 %i.cs, 6
  %i.cv = icmp samesign ult i32 %i.cr, 17685
  %i.cw = select i1 %i.cv, i32 0, i32 255
  %i.cx = select i1 %i.ct, i32 %i.cu, i32 %i.cw
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not94119 = icmp slt i32 %i.b, 1
  br i1 %.not94119, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.da = add nuw nsw i32 %i.b, 1
  %wide.trip.count = zext nneg i32 %i.da to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 7 uses
  %.091121 = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.di, %bb.e ] ; 3 uses
  %.092120 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %i.dq, %bb.e ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !10
  %i.dd = zext i8 %i.dc to i32
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !10
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 16
  %i.di = or disjoint i32 %i.dh, %i.dd            ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !10
  %i.dl = zext i8 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !10
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 16
  %i.dq = or disjoint i32 %i.dp, %i.dl            ; 5 uses
  %i.dr = add nuw nsw i32 %.092120, 524296
  %i.ds = add nuw nsw i32 %i.dr, %.091121
  %i.dt = add nuw nsw i32 %i.ds, %i.di
  %i.du = add nuw nsw i32 %i.dt, %i.dq            ; 2 uses
  %i.dv = add nuw nsw i32 %i.di, %.092120
  %i.dw = shl nuw nsw i32 %i.dv, 1
  %i.dx = add nuw nsw i32 %i.du, %i.dw
  %i.dy = lshr i32 %i.dx, 3                       ; 2 uses
  %i.dz = add nuw nsw i32 %i.dq, %.091121
  %i.ea = shl nuw nsw i32 %i.dz, 1
  %i.eb = add nuw nsw i32 %i.du, %i.ea
  %i.ec = lshr i32 %i.eb, 3                       ; 2 uses
  %i.ed = add nuw nsw i32 %i.dy, %.091121         ; 2 uses
  %i.ee = lshr i32 %i.ed, 1
  %i.ef = add nuw nsw i32 %i.ec, %i.di            ; 2 uses
  %i.eg = lshr i32 %i.ef, 1
  %i.eh = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.ei = add nsw i64 %i.eh, -1                   ; 3 uses
  %i.ej = getelementptr inbounds i8, ptr %0, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !10
  %i.el = mul nuw nsw i64 %i.ei, 3                ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 %i.eh
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !10
  %i.ep = zext i8 %i.eo to i32
  %i.eq = and i32 %i.eg, 255                      ; 2 uses
  %i.er = mul nuw nsw i64 %indvars.iv, 6          ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 %i.er ; 2 uses
  %i.et = zext i8 %i.ek to i32
  %i.eu = and i32 %i.ee, 255                      ; 2 uses
  %i.ev = mul nuw nsw i32 %i.eu, 6419
  %i.ew = lshr i32 %i.ev, 8
  %i.ex = lshr i32 %i.ef, 17                      ; 2 uses
  %i.ey = lshr i32 %i.ed, 17                      ; 2 uses
  %i.ez = mul nuw nsw i32 %i.ey, 13320
  %i.fa = mul nuw nsw i32 %i.ep, 19077
  %i.fb = lshr i32 %i.ez, 8
  %i.fc = mul nuw nsw i32 %i.ex, 26149
  %i.fd = mul nuw nsw i32 %i.eu, 33050
  %i.fe = mul nuw nsw i32 %i.et, 19077
  %i.ff = mul nuw nsw i32 %i.ey, 26149
  %i.fg = lshr i32 %i.fa, 8                       ; 3 uses
  %i.fh = add nuw nsw i32 %i.fb, %i.ew
  %i.fi = lshr i32 %i.fc, 8
  %i.fj = lshr i32 %i.fd, 8
  %i.fk = lshr i32 %i.fe, 8                       ; 3 uses
  %i.fl = lshr i32 %i.ff, 8
  %i.fm = add nuw nsw i32 %i.fi, %i.fg
  %i.fn = add nuw nsw i32 %i.fj, %i.fk
  %i.fo = sub nsw i32 %i.fk, %i.fh
  %i.fp = add nuw nsw i32 %i.fl, %i.fk
  %i.fq = insertelement <4 x i32> poison, i32 %i.fp, i64 0
  %i.fr = insertelement <4 x i32> %i.fq, i32 %i.fo, i64 1
  %i.fs = insertelement <4 x i32> %i.fr, i32 %i.fn, i64 2
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.fm, i64 3 ; 3 uses
  %i.fu = add nsw <4 x i32> %i.ft, <i32 -14234, i32 8708, i32 -17685, i32 -14234> ; 2 uses
  %i.fv = icmp ult <4 x i32> %i.fu, splat (i32 16384)
  %i.fw = lshr <4 x i32> %i.fu, splat (i32 6)
  %i.fx = icmp ult <4 x i32> %i.ft, <i32 14234, i32 -8708, i32 17685, i32 14234>
  %i.fy = icmp slt <4 x i32> %i.ft, <i32 14234, i32 -8708, i32 17685, i32 14234>
  %i.fz = shufflevector <4 x i1> %i.fx, <4 x i1> %i.fy, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.ga = select <4 x i1> %i.fz, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.gb = select <4 x i1> %i.fv, <4 x i32> %i.fw, <4 x i32> %i.ga
  %i.gc = trunc <4 x i32> %i.gb to <4 x i8>
  store <4 x i8> %i.gc, ptr %i.em, align 1, !tbaa !10
  %i.gd = mul nuw nsw i32 %i.eq, 6419
  %i.ge = lshr i32 %i.gd, 8
  %i.gf = mul nuw nsw i32 %i.ex, 13320
  %i.gg = lshr i32 %i.gf, 8
  %i.gh = add nuw nsw i32 %i.gg, %i.ge
  %i.gi = sub nsw i32 %i.fg, %i.gh                ; 2 uses
  %i.gj = add nsw i32 %i.gi, 8708                 ; 2 uses
  %i.gk = icmp ult i32 %i.gj, 16384
  %i.gl = lshr i32 %i.gj, 6
  %i.gm = icmp slt i32 %i.gi, -8708
  %i.gn = select i1 %i.gm, i32 0, i32 255
  %i.go = select i1 %i.gk, i32 %i.gl, i32 %i.gn
  %i.gp = trunc i32 %i.go to i8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !10
  %i.gr = mul nuw nsw i32 %i.eq, 33050
  %i.gs = lshr i32 %i.gr, 8
  %i.gt = add nuw nsw i32 %i.gs, %i.fg            ; 2 uses
  %i.gu = add nsw i32 %i.gt, -17685               ; 2 uses
  %i.gv = icmp ult i32 %i.gu, 16384
  %i.gw = lshr i32 %i.gu, 6
  %i.gx = icmp samesign ult i32 %i.gt, 17685
  %i.gy = select i1 %i.gx, i32 0, i32 255
  %i.gz = select i1 %i.gv, i32 %i.gw, i32 %i.gy
  %i.ha = trunc i32 %i.gz to i8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !10
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.hc = add nuw nsw i32 %i.ec, %.092120         ; 2 uses
  %i.hd = lshr i32 %i.hc, 1
  %i.he = add nuw nsw i32 %i.dy, %i.dq            ; 2 uses
  %i.hf = lshr i32 %i.he, 1
  %i.hg = getelementptr inbounds i8, ptr %1, i64 %i.ei
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !10
  %i.hi = getelementptr inbounds nuw i8, ptr %7, i64 %i.el
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 %i.eh
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !10
  %i.hl = zext i8 %i.hk to i32
  %i.hm = and i32 %i.hf, 255                      ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 %i.er ; 2 uses
  %i.ho = zext i8 %i.hh to i32
  %i.hp = and i32 %i.hd, 255                      ; 2 uses
  %i.hq = mul nuw nsw i32 %i.hp, 6419
  %i.hr = lshr i32 %i.he, 17                      ; 2 uses
  %i.hs = lshr i32 %i.hc, 17                      ; 2 uses
  %i.ht = mul nuw nsw i32 %i.hs, 13320
  %i.hu = lshr i32 %i.ht, 8
  %i.hv = mul nuw nsw i32 %i.hl, 19077
  %i.hw = lshr i32 %i.hq, 8
  %i.hx = mul nuw nsw i32 %i.hr, 26149
  %i.hy = mul nuw nsw i32 %i.hp, 33050
  %i.hz = mul nuw nsw i32 %i.ho, 19077
  %i.ia = mul nuw nsw i32 %i.hs, 26149
  %i.ib = lshr i32 %i.hv, 8                       ; 3 uses
  %i.ic = add nuw nsw i32 %i.hw, %i.hu
  %i.id = lshr i32 %i.hx, 8
  %i.ie = lshr i32 %i.hy, 8
  %i.if = lshr i32 %i.hz, 8                       ; 3 uses
  %i.ig = lshr i32 %i.ia, 8
  %i.ih = add nuw nsw i32 %i.ib, %i.id
  %i.ii = add nuw nsw i32 %i.if, %i.ie
  %i.ij = sub nsw i32 %i.if, %i.ic
  %i.ik = add nuw nsw i32 %i.if, %i.ig
  %i.il = insertelement <4 x i32> poison, i32 %i.ik, i64 0
  %i.im = insertelement <4 x i32> %i.il, i32 %i.ij, i64 1
  %i.in = insertelement <4 x i32> %i.im, i32 %i.ii, i64 2
  %i.io = insertelement <4 x i32> %i.in, i32 %i.ih, i64 3 ; 3 uses
  %i.ip = add nsw <4 x i32> %i.io, <i32 -14234, i32 8708, i32 -17685, i32 -14234> ; 2 uses
  %i.iq = icmp ult <4 x i32> %i.ip, splat (i32 16384)
  %i.ir = lshr <4 x i32> %i.ip, splat (i32 6)
  %i.is = icmp ult <4 x i32> %i.io, <i32 14234, i32 -8708, i32 17685, i32 14234>
  %i.it = icmp slt <4 x i32> %i.io, <i32 14234, i32 -8708, i32 17685, i32 14234>
  %i.iu = shufflevector <4 x i1> %i.is, <4 x i1> %i.it, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.iv = select <4 x i1> %i.iu, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.iw = select <4 x i1> %i.iq, <4 x i32> %i.ir, <4 x i32> %i.iv
  %i.ix = trunc <4 x i32> %i.iw to <4 x i8>
  store <4 x i8> %i.ix, ptr %i.hi, align 1, !tbaa !10
  %i.iy = mul nuw nsw i32 %i.hm, 6419
  %i.iz = lshr i32 %i.iy, 8
  %i.ja = mul nuw nsw i32 %i.hr, 13320
  %i.jb = lshr i32 %i.ja, 8
  %i.jc = add nuw nsw i32 %i.iz, %i.jb
  %i.jd = sub nsw i32 %i.ib, %i.jc                ; 2 uses
  %i.je = add nsw i32 %i.jd, 8708                 ; 2 uses
  %i.jf = icmp ult i32 %i.je, 16384
  %i.jg = lshr i32 %i.je, 6
  %i.jh = icmp slt i32 %i.jd, -8708
  %i.ji = select i1 %i.jh, i32 0, i32 255
  %i.jj = select i1 %i.jf, i32 %i.jg, i32 %i.ji
  %i.jk = trunc i32 %i.jj to i8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !10
  %i.jm = mul nuw nsw i32 %i.hm, 33050
  %i.jn = lshr i32 %i.jm, 8
  %i.jo = add nuw nsw i32 %i.ib, %i.jn            ; 2 uses
  %i.jp = add nsw i32 %i.jo, -17685               ; 2 uses
  %i.jq = icmp ult i32 %i.jp, 16384
  %i.jr = lshr i32 %i.jp, 6
  %i.js = icmp samesign ult i32 %i.jo, 17685
  %i.jt = select i1 %i.js, i32 0, i32 255
  %i.ju = select i1 %i.jq, i32 %i.jr, i32 %i.jt
  %i.jv = trunc i32 %i.ju to i8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  store i8 %i.jv, ptr %i.jw, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.092.lcssa = phi i32 [ %i.n, %bb.c ], [ %i.dq, %bb.e ] ; 2 uses
  %.091.lcssa = phi i32 [ %i.h, %bb.c ], [ %i.di, %bb.e ] ; 2 uses
  %i.jx = and i32 %8, 1
  %.not95 = icmp eq i32 %i.jx, 0
  br i1 %.not95, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.jy = mul nuw nsw i32 %.091.lcssa, 3
  %i.jz = add nuw nsw i32 %.092.lcssa, 131074
  %i.ka = add nuw nsw i32 %i.jz, %i.jy            ; 2 uses
  %i.kb = lshr i32 %i.ka, 2
  %i.kc = sext i32 %i.a to i64                    ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %0, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !10
  %i.kf = zext i8 %i.ke to i32
  %i.kg = and i32 %i.kb, 255                      ; 2 uses
  %i.kh = lshr i32 %i.ka, 18                      ; 2 uses
  %i.ki = mul nsw i32 %i.a, 3
  %i.kj = sext i32 %i.ki to i64                   ; 2 uses
  %i.kk = getelementptr inbounds i8, ptr %6, i64 %i.kj ; 3 uses
  %i.kl = mul nuw nsw i32 %i.kf, 19077
  %i.km = lshr i32 %i.kl, 8                       ; 3 uses
  %i.kn = mul nuw nsw i32 %i.kh, 26149
  %i.ko = lshr i32 %i.kn, 8
  %i.kp = add nuw nsw i32 %i.km, %i.ko            ; 2 uses
  %i.kq = add nsw i32 %i.kp, -14234               ; 2 uses
  %i.kr = icmp ult i32 %i.kq, 16384
  %i.ks = lshr i32 %i.kq, 6
  %i.kt = icmp samesign ult i32 %i.kp, 14234
  %i.ku = select i1 %i.kt, i32 0, i32 255
  %i.kv = select i1 %i.kr, i32 %i.ks, i32 %i.ku
  %i.kw = trunc i32 %i.kv to i8
  store i8 %i.kw, ptr %i.kk, align 1, !tbaa !10
  %i.kx = mul nuw nsw i32 %i.kg, 6419
  %i.ky = lshr i32 %i.kx, 8
  %i.kz = mul nuw nsw i32 %i.kh, 13320
  %i.la = lshr i32 %i.kz, 8
  %i.lb = add nuw nsw i32 %i.ky, %i.la
  %i.lc = sub nsw i32 %i.km, %i.lb                ; 2 uses
  %i.ld = add nsw i32 %i.lc, 8708                 ; 2 uses
  %i.le = icmp ult i32 %i.ld, 16384
  %i.lf = lshr i32 %i.ld, 6
  %i.lg = icmp slt i32 %i.lc, -8708
  %i.lh = select i1 %i.lg, i32 0, i32 255
  %i.li = select i1 %i.le, i32 %i.lf, i32 %i.lh
  %i.lj = trunc i32 %i.li to i8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !10
  %i.ll = mul nuw nsw i32 %i.kg, 33050
  %i.lm = lshr i32 %i.ll, 8
  %i.ln = add nuw nsw i32 %i.km, %i.lm            ; 2 uses
  %i.lo = add nsw i32 %i.ln, -17685               ; 2 uses
  %i.lp = icmp ult i32 %i.lo, 16384
  %i.lq = lshr i32 %i.lo, 6
  %i.lr = icmp samesign ult i32 %i.ln, 17685
  %i.ls = select i1 %i.lr, i32 0, i32 255
  %i.lt = select i1 %i.lp, i32 %i.lq, i32 %i.ls
  %i.lu = trunc i32 %i.lt to i8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kk, i64 2
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !10
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.lw = mul nuw nsw i32 %.092.lcssa, 3
  %i.lx = add nuw nsw i32 %.091.lcssa, 131074
  %i.ly = add nuw nsw i32 %i.lx, %i.lw            ; 2 uses
  %i.lz = lshr i32 %i.ly, 2
  %i.ma = getelementptr inbounds i8, ptr %1, i64 %i.kc
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !10
  %i.mc = zext i8 %i.mb to i32
  %i.md = and i32 %i.lz, 255                      ; 2 uses
  %i.me = lshr i32 %i.ly, 18                      ; 2 uses
  %i.mf = getelementptr inbounds i8, ptr %7, i64 %i.kj ; 3 uses
  %i.mg = mul nuw nsw i32 %i.mc, 19077
  %i.mh = lshr i32 %i.mg, 8                       ; 3 uses
  %i.mi = mul nuw nsw i32 %i.me, 26149
  %i.mj = lshr i32 %i.mi, 8
  %i.mk = add nuw nsw i32 %i.mh, %i.mj            ; 2 uses
  %i.ml = add nsw i32 %i.mk, -14234               ; 2 uses
  %i.mm = icmp ult i32 %i.ml, 16384
  %i.mn = lshr i32 %i.ml, 6
  %i.mo = icmp samesign ult i32 %i.mk, 14234
  %i.mp = select i1 %i.mo, i32 0, i32 255
  %i.mq = select i1 %i.mm, i32 %i.mn, i32 %i.mp
  %i.mr = trunc i32 %i.mq to i8
  store i8 %i.mr, ptr %i.mf, align 1, !tbaa !10
  %i.ms = mul nuw nsw i32 %i.md, 6419
  %i.mt = lshr i32 %i.ms, 8
  %i.mu = mul nuw nsw i32 %i.me, 13320
  %i.mv = lshr i32 %i.mu, 8
  %i.mw = add nuw nsw i32 %i.mt, %i.mv
  %i.mx = sub nsw i32 %i.mh, %i.mw                ; 2 uses
  %i.my = add nsw i32 %i.mx, 8708                 ; 2 uses
  %i.mz = icmp ult i32 %i.my, 16384
  %i.na = lshr i32 %i.my, 6
  %i.nb = icmp slt i32 %i.mx, -8708
  %i.nc = select i1 %i.nb, i32 0, i32 255
  %i.nd = select i1 %i.mz, i32 %i.na, i32 %i.nc
  %i.ne = trunc i32 %i.nd to i8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  store i8 %i.ne, ptr %i.nf, align 1, !tbaa !10
  %i.ng = mul nuw nsw i32 %i.md, 33050
  %i.nh = lshr i32 %i.ng, 8
  %i.ni = add nuw nsw i32 %i.mh, %i.nh            ; 2 uses
  %i.nj = add nsw i32 %i.ni, -17685               ; 2 uses
  %i.nk = icmp ult i32 %i.nj, 16384
  %i.nl = lshr i32 %i.nj, 6
  %i.nm = icmp samesign ult i32 %i.ni, 17685
  %i.nn = select i1 %i.nm, i32 0, i32 255
  %i.no = select i1 %i.nk, i32 %i.nl, i32 %i.nn
  %i.np = trunc i32 %i.no to i8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  store i8 %i.np, ptr %i.nq, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @UpsampleBgrLinePair_C(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef readonly captures(address_is_null) %1, ptr noalias noundef readonly captures(none) %2, ptr noalias noundef readonly captures(none) %3, ptr noalias noundef readonly captures(none) %4, ptr noalias noundef readonly captures(none) %5, ptr noalias noundef writeonly captures(none) initializes((0, 3)) %6, ptr noalias noundef writeonly captures(none) %7, i32 noundef %8) #1 {
bb.a:
  %i.a = add nsw i32 %8, -1                       ; 3 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = load i8, ptr %2, align 1, !tbaa !10
  %i.d = zext i8 %i.c to i32
  %i.e = load i8, ptr %3, align 1, !tbaa !10
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %i.h = or disjoint i32 %i.g, %i.d               ; 4 uses
  %i.i = load i8, ptr %4, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i32
  %i.k = load i8, ptr %5, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.j               ; 4 uses
  %i.o = mul nuw nsw i32 %i.h, 3
  %i.p = add nuw nsw i32 %i.o, 131074
  %i.q = add nuw nsw i32 %i.p, %i.n               ; 2 uses
  %i.r = lshr i32 %i.q, 2
  %i.s = load i8, ptr %0, align 1, !tbaa !10
  %i.t = zext i8 %i.s to i32
  %i.u = and i32 %i.r, 255                        ; 2 uses
  %i.v = lshr i32 %i.q, 18                        ; 2 uses
  %i.w = mul nuw nsw i32 %i.t, 19077
  %i.x = lshr i32 %i.w, 8                         ; 3 uses
  %i.y = mul nuw nsw i32 %i.u, 33050
  %i.z = lshr i32 %i.y, 8
  %i.aa = add nuw nsw i32 %i.z, %i.x              ; 2 uses
  %i.ab = add nsw i32 %i.aa, -17685               ; 2 uses
  %i.ac = icmp ult i32 %i.ab, 16384
  %i.ad = lshr i32 %i.ab, 6
  %i.ae = icmp samesign ult i32 %i.aa, 17685
  %i.af = select i1 %i.ae, i32 0, i32 255
  %i.ag = select i1 %i.ac, i32 %i.ad, i32 %i.af
  %i.ah = trunc i32 %i.ag to i8
  store i8 %i.ah, ptr %6, align 1, !tbaa !10
  %i.ai = mul nuw nsw i32 %i.u, 6419
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = mul nuw nsw i32 %i.v, 13320
  %i.al = lshr i32 %i.ak, 8
  %i.am = add nuw nsw i32 %i.al, %i.aj
  %i.an = sub nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = add nsw i32 %i.an, 8708                 ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 16384
  %i.aq = lshr i32 %i.ao, 6
  %i.ar = icmp slt i32 %i.an, -8708
  %i.as = select i1 %i.ar, i32 0, i32 255
  %i.at = select i1 %i.ap, i32 %i.aq, i32 %i.as
  %i.au = trunc i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !10
  %i.aw = mul nuw nsw i32 %i.v, 26149
  %i.ax = lshr i32 %i.aw, 8
  %i.ay = add nuw nsw i32 %i.ax, %i.x             ; 2 uses
  %i.az = add nsw i32 %i.ay, -14234               ; 2 uses
  %i.ba = icmp ult i32 %i.az, 16384
  %i.bb = lshr i32 %i.az, 6
  %i.bc = icmp samesign ult i32 %i.ay, 14234
  %i.bd = select i1 %i.bc, i32 0, i32 255
  %i.be = select i1 %i.ba, i32 %i.bb, i32 %i.bd
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !10
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bh = mul nuw nsw i32 %i.n, 3
  %i.bi = add nuw nsw i32 %i.h, 131074
  %i.bj = add nuw nsw i32 %i.bi, %i.bh            ; 2 uses
  %i.bk = lshr i32 %i.bj, 2
  %i.bl = load i8, ptr %1, align 1, !tbaa !10
  %i.bm = zext i8 %i.bl to i32
  %i.bn = and i32 %i.bk, 255                      ; 2 uses
  %i.bo = lshr i32 %i.bj, 18                      ; 2 uses
  %i.bp = mul nuw nsw i32 %i.bm, 19077
  %i.bq = lshr i32 %i.bp, 8                       ; 3 uses
  %i.br = mul nuw nsw i32 %i.bn, 33050
  %i.bs = lshr i32 %i.br, 8
  %i.bt = add nuw nsw i32 %i.bq, %i.bs            ; 2 uses
  %i.bu = add nsw i32 %i.bt, -17685               ; 2 uses
  %i.bv = icmp ult i32 %i.bu, 16384
  %i.bw = lshr i32 %i.bu, 6
  %i.bx = icmp samesign ult i32 %i.bt, 17685
  %i.by = select i1 %i.bx, i32 0, i32 255
  %i.bz = select i1 %i.bv, i32 %i.bw, i32 %i.by
  %i.ca = trunc i32 %i.bz to i8
  store i8 %i.ca, ptr %7, align 1, !tbaa !10
  %i.cb = mul nuw nsw i32 %i.bn, 6419
  %i.cc = lshr i32 %i.cb, 8
  %i.cd = mul nuw nsw i32 %i.bo, 13320
  %i.ce = lshr i32 %i.cd, 8
  %i.cf = add nuw nsw i32 %i.cc, %i.ce
  %i.cg = sub nsw i32 %i.bq, %i.cf                ; 2 uses
  %i.ch = add nsw i32 %i.cg, 8708                 ; 2 uses
  %i.ci = icmp ult i32 %i.ch, 16384
  %i.cj = lshr i32 %i.ch, 6
  %i.ck = icmp slt i32 %i.cg, -8708
  %i.cl = select i1 %i.ck, i32 0, i32 255
  %i.cm = select i1 %i.ci, i32 %i.cj, i32 %i.cl
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !10
  %i.cp = mul nuw nsw i32 %i.bo, 26149
  %i.cq = lshr i32 %i.cp, 8
  %i.cr = add nuw nsw i32 %i.bq, %i.cq            ; 2 uses
  %i.cs = add nsw i32 %i.cr, -14234               ; 2 uses
  %i.ct = icmp ult i32 %i.cs, 16384
  %i.cu = lshr i32 %i.cs, 6
  %i.cv = icmp samesign ult i32 %i.cr, 14234
  %i.cw = select i1 %i.cv, i32 0, i32 255
  %i.cx = select i1 %i.ct, i32 %i.cu, i32 %i.cw
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not94119 = icmp slt i32 %i.b, 1
  br i1 %.not94119, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.da = add nuw nsw i32 %i.b, 1
  %wide.trip.count = zext nneg i32 %i.da to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 7 uses
  %.091121 = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.di, %bb.e ] ; 3 uses
  %.092120 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %i.dq, %bb.e ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !10
  %i.dd = zext i8 %i.dc to i32
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !10
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 16
  %i.di = or disjoint i32 %i.dh, %i.dd            ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !10
  %i.dl = zext i8 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !10
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 16
  %i.dq = or disjoint i32 %i.dp, %i.dl            ; 5 uses
  %i.dr = add nuw nsw i32 %.092120, 524296
  %i.ds = add nuw nsw i32 %i.dr, %.091121
  %i.dt = add nuw nsw i32 %i.ds, %i.di
  %i.du = add nuw nsw i32 %i.di, %.092120
  %i.dv = add nuw nsw i32 %i.dq, %.091121
  %i.dw = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.dx = add nsw i64 %i.dw, -1                   ; 3 uses
  %i.dy = getelementptr inbounds i8, ptr %0, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !10
  %i.ea = mul nuw nsw i64 %i.dx, 3                ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %i.dw
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !10
  %i.ee = zext i8 %i.ed to i32
  %i.ef = mul nuw nsw i64 %indvars.iv, 6          ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 %i.ef ; 2 uses
  %i.eh = shl nuw nsw i32 %i.dv, 1
  %i.ei = shl nuw nsw i32 %i.du, 1
  %i.ej = zext i8 %i.dz to i32
  %i.ek = add nuw nsw i32 %i.dt, %i.dq            ; 2 uses
  %i.el = add nuw nsw i32 %i.ek, %i.eh
  %i.em = add nuw nsw i32 %i.ek, %i.ei
  %i.en = lshr i32 %i.el, 3                       ; 2 uses
  %i.eo = lshr i32 %i.em, 3                       ; 2 uses
  %i.ep = add nuw nsw i32 %i.en, %i.di            ; 2 uses
  %i.eq = add nuw nsw i32 %i.eo, %.091121         ; 2 uses
  %i.er = lshr i32 %i.ep, 1
  %i.es = lshr i32 %i.eq, 17                      ; 2 uses
  %i.et = lshr i32 %i.eq, 1
  %i.eu = and i32 %i.er, 255                      ; 2 uses
  %i.ev = and i32 %i.et, 255                      ; 2 uses
  %i.ew = mul nuw nsw i32 %i.ev, 6419
  %i.ex = lshr i32 %i.ew, 8
  %i.ey = mul nuw nsw i32 %i.es, 13320
  %i.ez = lshr i32 %i.ep, 17                      ; 2 uses
  %i.fa = mul nuw nsw i32 %i.ee, 19077
  %i.fb = lshr i32 %i.ey, 8
  %i.fc = mul nuw nsw i32 %i.eu, 33050
  %i.fd = mul nuw nsw i32 %i.es, 26149
  %i.fe = mul nuw nsw i32 %i.ej, 19077
  %i.ff = mul nuw nsw i32 %i.ev, 33050
  %i.fg = lshr i32 %i.fa, 8                       ; 3 uses
  %i.fh = add nuw nsw i32 %i.fb, %i.ex
  %i.fi = lshr i32 %i.fc, 8
  %i.fj = lshr i32 %i.fd, 8
  %i.fk = lshr i32 %i.fe, 8                       ; 3 uses
  %i.fl = lshr i32 %i.ff, 8
  %i.fm = add nuw nsw i32 %i.fi, %i.fg
  %i.fn = add nuw nsw i32 %i.fj, %i.fk
  %i.fo = sub nsw i32 %i.fk, %i.fh
  %i.fp = add nuw nsw i32 %i.fl, %i.fk
  %i.fq = insertelement <4 x i32> poison, i32 %i.fp, i64 0
  %i.fr = insertelement <4 x i32> %i.fq, i32 %i.fo, i64 1
  %i.fs = insertelement <4 x i32> %i.fr, i32 %i.fn, i64 2
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.fm, i64 3 ; 3 uses
  %i.fu = add nsw <4 x i32> %i.ft, <i32 -17685, i32 8708, i32 -14234, i32 -17685> ; 2 uses
  %i.fv = icmp ult <4 x i32> %i.fu, splat (i32 16384)
  %i.fw = lshr <4 x i32> %i.fu, splat (i32 6)
  %i.fx = icmp ult <4 x i32> %i.ft, <i32 17685, i32 -8708, i32 14234, i32 17685>
  %i.fy = icmp slt <4 x i32> %i.ft, <i32 17685, i32 -8708, i32 14234, i32 17685>
  %i.fz = shufflevector <4 x i1> %i.fx, <4 x i1> %i.fy, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.ga = select <4 x i1> %i.fz, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.gb = select <4 x i1> %i.fv, <4 x i32> %i.fw, <4 x i32> %i.ga
  %i.gc = trunc <4 x i32> %i.gb to <4 x i8>
  store <4 x i8> %i.gc, ptr %i.eb, align 1, !tbaa !10
  %i.gd = mul nuw nsw i32 %i.eu, 6419
  %i.ge = lshr i32 %i.gd, 8
  %i.gf = mul nuw nsw i32 %i.ez, 13320
  %i.gg = lshr i32 %i.gf, 8
  %i.gh = add nuw nsw i32 %i.gg, %i.ge
  %i.gi = sub nsw i32 %i.fg, %i.gh                ; 2 uses
  %i.gj = add nsw i32 %i.gi, 8708                 ; 2 uses
  %i.gk = icmp ult i32 %i.gj, 16384
  %i.gl = lshr i32 %i.gj, 6
  %i.gm = icmp slt i32 %i.gi, -8708
  %i.gn = select i1 %i.gm, i32 0, i32 255
  %i.go = select i1 %i.gk, i32 %i.gl, i32 %i.gn
  %i.gp = trunc i32 %i.go to i8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !10
  %i.gr = mul nuw nsw i32 %i.ez, 26149
  %i.gs = lshr i32 %i.gr, 8
  %i.gt = add nuw nsw i32 %i.gs, %i.fg            ; 2 uses
  %i.gu = add nsw i32 %i.gt, -14234               ; 2 uses
  %i.gv = icmp ult i32 %i.gu, 16384
  %i.gw = lshr i32 %i.gu, 6
  %i.gx = icmp samesign ult i32 %i.gt, 14234
  %i.gy = select i1 %i.gx, i32 0, i32 255
  %i.gz = select i1 %i.gv, i32 %i.gw, i32 %i.gy
  %i.ha = trunc i32 %i.gz to i8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !10
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.hc = getelementptr inbounds i8, ptr %1, i64 %i.dx
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !10
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 %i.ea
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 %i.dw
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !10
  %i.hh = zext i8 %i.hg to i32
  %i.hi = getelementptr inbounds nuw i8, ptr %7, i64 %i.ef ; 2 uses
  %i.hj = zext i8 %i.hd to i32
  %i.hk = add nuw nsw i32 %i.eo, %i.dq            ; 2 uses
  %i.hl = add nuw nsw i32 %i.en, %.092120         ; 2 uses
  %i.hm = lshr i32 %i.hk, 1
  %i.hn = lshr i32 %i.hl, 17                      ; 2 uses
  %i.ho = lshr i32 %i.hl, 1
  %i.hp = and i32 %i.hm, 255                      ; 2 uses
  %i.hq = and i32 %i.ho, 255                      ; 2 uses
  %i.hr = mul nuw nsw i32 %i.hq, 6419
  %i.hs = mul nuw nsw i32 %i.hn, 13320
  %i.ht = lshr i32 %i.hs, 8
  %i.hu = lshr i32 %i.hk, 17                      ; 2 uses
  %i.hv = mul nuw nsw i32 %i.hh, 19077
  %i.hw = lshr i32 %i.hr, 8
  %i.hx = mul nuw nsw i32 %i.hp, 33050
  %i.hy = mul nuw nsw i32 %i.hn, 26149
  %i.hz = mul nuw nsw i32 %i.hj, 19077
  %i.ia = mul nuw nsw i32 %i.hq, 33050
  %i.ib = lshr i32 %i.hv, 8                       ; 3 uses
  %i.ic = add nuw nsw i32 %i.hw, %i.ht
  %i.id = lshr i32 %i.hx, 8
  %i.ie = lshr i32 %i.hy, 8
  %i.if = lshr i32 %i.hz, 8                       ; 3 uses
  %i.ig = lshr i32 %i.ia, 8
  %i.ih = add nuw nsw i32 %i.ib, %i.id
  %i.ii = add nuw nsw i32 %i.if, %i.ie
  %i.ij = sub nsw i32 %i.if, %i.ic
  %i.ik = add nuw nsw i32 %i.if, %i.ig
  %i.il = insertelement <4 x i32> poison, i32 %i.ik, i64 0
  %i.im = insertelement <4 x i32> %i.il, i32 %i.ij, i64 1
  %i.in = insertelement <4 x i32> %i.im, i32 %i.ii, i64 2
  %i.io = insertelement <4 x i32> %i.in, i32 %i.ih, i64 3 ; 3 uses
  %i.ip = add nsw <4 x i32> %i.io, <i32 -17685, i32 8708, i32 -14234, i32 -17685> ; 2 uses
  %i.iq = icmp ult <4 x i32> %i.ip, splat (i32 16384)
  %i.ir = lshr <4 x i32> %i.ip, splat (i32 6)
  %i.is = icmp ult <4 x i32> %i.io, <i32 17685, i32 -8708, i32 14234, i32 17685>
  %i.it = icmp slt <4 x i32> %i.io, <i32 17685, i32 -8708, i32 14234, i32 17685>
  %i.iu = shufflevector <4 x i1> %i.is, <4 x i1> %i.it, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.iv = select <4 x i1> %i.iu, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.iw = select <4 x i1> %i.iq, <4 x i32> %i.ir, <4 x i32> %i.iv
  %i.ix = trunc <4 x i32> %i.iw to <4 x i8>
  store <4 x i8> %i.ix, ptr %i.he, align 1, !tbaa !10
  %i.iy = mul nuw nsw i32 %i.hp, 6419
  %i.iz = lshr i32 %i.iy, 8
  %i.ja = mul nuw nsw i32 %i.hu, 13320
  %i.jb = lshr i32 %i.ja, 8
  %i.jc = add nuw nsw i32 %i.iz, %i.jb
  %i.jd = sub nsw i32 %i.ib, %i.jc                ; 2 uses
  %i.je = add nsw i32 %i.jd, 8708                 ; 2 uses
  %i.jf = icmp ult i32 %i.je, 16384
  %i.jg = lshr i32 %i.je, 6
  %i.jh = icmp slt i32 %i.jd, -8708
  %i.ji = select i1 %i.jh, i32 0, i32 255
  %i.jj = select i1 %i.jf, i32 %i.jg, i32 %i.ji
  %i.jk = trunc i32 %i.jj to i8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !10
  %i.jm = mul nuw nsw i32 %i.hu, 26149
  %i.jn = lshr i32 %i.jm, 8
  %i.jo = add nuw nsw i32 %i.ib, %i.jn            ; 2 uses
  %i.jp = add nsw i32 %i.jo, -14234               ; 2 uses
  %i.jq = icmp ult i32 %i.jp, 16384
  %i.jr = lshr i32 %i.jp, 6
  %i.js = icmp samesign ult i32 %i.jo, 14234
  %i.jt = select i1 %i.js, i32 0, i32 255
  %i.ju = select i1 %i.jq, i32 %i.jr, i32 %i.jt
  %i.jv = trunc i32 %i.ju to i8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  store i8 %i.jv, ptr %i.jw, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.092.lcssa = phi i32 [ %i.n, %bb.c ], [ %i.dq, %bb.e ] ; 2 uses
  %.091.lcssa = phi i32 [ %i.h, %bb.c ], [ %i.di, %bb.e ] ; 2 uses
  %i.jx = and i32 %8, 1
  %.not95 = icmp eq i32 %i.jx, 0
  br i1 %.not95, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.jy = mul nuw nsw i32 %.091.lcssa, 3
  %i.jz = add nuw nsw i32 %.092.lcssa, 131074
  %i.ka = add nuw nsw i32 %i.jz, %i.jy            ; 2 uses
  %i.kb = lshr i32 %i.ka, 2
  %i.kc = sext i32 %i.a to i64                    ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %0, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !10
  %i.kf = zext i8 %i.ke to i32
  %i.kg = and i32 %i.kb, 255                      ; 2 uses
  %i.kh = lshr i32 %i.ka, 18                      ; 2 uses
  %i.ki = mul nsw i32 %i.a, 3
  %i.kj = sext i32 %i.ki to i64                   ; 2 uses
  %i.kk = getelementptr inbounds i8, ptr %6, i64 %i.kj ; 3 uses
  %i.kl = mul nuw nsw i32 %i.kf, 19077
  %i.km = lshr i32 %i.kl, 8                       ; 3 uses
  %i.kn = mul nuw nsw i32 %i.kg, 33050
  %i.ko = lshr i32 %i.kn, 8
  %i.kp = add nuw nsw i32 %i.km, %i.ko            ; 2 uses
  %i.kq = add nsw i32 %i.kp, -17685               ; 2 uses
  %i.kr = icmp ult i32 %i.kq, 16384
  %i.ks = lshr i32 %i.kq, 6
  %i.kt = icmp samesign ult i32 %i.kp, 17685
  %i.ku = select i1 %i.kt, i32 0, i32 255
  %i.kv = select i1 %i.kr, i32 %i.ks, i32 %i.ku
  %i.kw = trunc i32 %i.kv to i8
  store i8 %i.kw, ptr %i.kk, align 1, !tbaa !10
  %i.kx = mul nuw nsw i32 %i.kg, 6419
  %i.ky = lshr i32 %i.kx, 8
  %i.kz = mul nuw nsw i32 %i.kh, 13320
  %i.la = lshr i32 %i.kz, 8
  %i.lb = add nuw nsw i32 %i.ky, %i.la
  %i.lc = sub nsw i32 %i.km, %i.lb                ; 2 uses
  %i.ld = add nsw i32 %i.lc, 8708                 ; 2 uses
  %i.le = icmp ult i32 %i.ld, 16384
  %i.lf = lshr i32 %i.ld, 6
  %i.lg = icmp slt i32 %i.lc, -8708
  %i.lh = select i1 %i.lg, i32 0, i32 255
  %i.li = select i1 %i.le, i32 %i.lf, i32 %i.lh
  %i.lj = trunc i32 %i.li to i8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !10
  %i.ll = mul nuw nsw i32 %i.kh, 26149
  %i.lm = lshr i32 %i.ll, 8
  %i.ln = add nuw nsw i32 %i.km, %i.lm            ; 2 uses
  %i.lo = add nsw i32 %i.ln, -14234               ; 2 uses
  %i.lp = icmp ult i32 %i.lo, 16384
  %i.lq = lshr i32 %i.lo, 6
  %i.lr = icmp samesign ult i32 %i.ln, 14234
  %i.ls = select i1 %i.lr, i32 0, i32 255
  %i.lt = select i1 %i.lp, i32 %i.lq, i32 %i.ls
  %i.lu = trunc i32 %i.lt to i8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kk, i64 2
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !10
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.lw = mul nuw nsw i32 %.092.lcssa, 3
  %i.lx = add nuw nsw i32 %.091.lcssa, 131074
  %i.ly = add nuw nsw i32 %i.lx, %i.lw            ; 2 uses
  %i.lz = lshr i32 %i.ly, 2
  %i.ma = getelementptr inbounds i8, ptr %1, i64 %i.kc
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !10
  %i.mc = zext i8 %i.mb to i32
  %i.md = and i32 %i.lz, 255                      ; 2 uses
  %i.me = lshr i32 %i.ly, 18                      ; 2 uses
  %i.mf = getelementptr inbounds i8, ptr %7, i64 %i.kj ; 3 uses
  %i.mg = mul nuw nsw i32 %i.mc, 19077
  %i.mh = lshr i32 %i.mg, 8                       ; 3 uses
  %i.mi = mul nuw nsw i32 %i.md, 33050
  %i.mj = lshr i32 %i.mi, 8
  %i.mk = add nuw nsw i32 %i.mh, %i.mj            ; 2 uses
  %i.ml = add nsw i32 %i.mk, -17685               ; 2 uses
  %i.mm = icmp ult i32 %i.ml, 16384
  %i.mn = lshr i32 %i.ml, 6
  %i.mo = icmp samesign ult i32 %i.mk, 17685
  %i.mp = select i1 %i.mo, i32 0, i32 255
  %i.mq = select i1 %i.mm, i32 %i.mn, i32 %i.mp
  %i.mr = trunc i32 %i.mq to i8
  store i8 %i.mr, ptr %i.mf, align 1, !tbaa !10
  %i.ms = mul nuw nsw i32 %i.md, 6419
  %i.mt = lshr i32 %i.ms, 8
  %i.mu = mul nuw nsw i32 %i.me, 13320
  %i.mv = lshr i32 %i.mu, 8
  %i.mw = add nuw nsw i32 %i.mt, %i.mv
  %i.mx = sub nsw i32 %i.mh, %i.mw                ; 2 uses
  %i.my = add nsw i32 %i.mx, 8708                 ; 2 uses
  %i.mz = icmp ult i32 %i.my, 16384
  %i.na = lshr i32 %i.my, 6
  %i.nb = icmp slt i32 %i.mx, -8708
  %i.nc = select i1 %i.nb, i32 0, i32 255
  %i.nd = select i1 %i.mz, i32 %i.na, i32 %i.nc
  %i.ne = trunc i32 %i.nd to i8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  store i8 %i.ne, ptr %i.nf, align 1, !tbaa !10
  %i.ng = mul nuw nsw i32 %i.me, 26149
  %i.nh = lshr i32 %i.ng, 8
  %i.ni = add nuw nsw i32 %i.mh, %i.nh            ; 2 uses
  %i.nj = add nsw i32 %i.ni, -14234               ; 2 uses
  %i.nk = icmp ult i32 %i.nj, 16384
  %i.nl = lshr i32 %i.nj, 6
  %i.nm = icmp samesign ult i32 %i.ni, 14234
  %i.nn = select i1 %i.nm, i32 0, i32 255
  %i.no = select i1 %i.nk, i32 %i.nl, i32 %i.nn
  %i.np = trunc i32 %i.no to i8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  store i8 %i.np, ptr %i.nq, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @UpsampleArgbLinePair_C(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef readonly captures(address_is_null) %1, ptr noalias noundef readonly captures(none) %2, ptr noalias noundef readonly captures(none) %3, ptr noalias noundef readonly captures(none) %4, ptr noalias noundef readonly captures(none) %5, ptr noalias noundef writeonly captures(none) initializes((0, 4)) %6, ptr noalias noundef writeonly captures(none) %7, i32 noundef %8) #1 {
bb.a:
  %i.a = add nsw i32 %8, -1                       ; 3 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = load i8, ptr %2, align 1, !tbaa !10
  %i.d = zext i8 %i.c to i32
  %i.e = load i8, ptr %3, align 1, !tbaa !10
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %i.h = or disjoint i32 %i.g, %i.d               ; 4 uses
  %i.i = load i8, ptr %4, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i32
  %i.k = load i8, ptr %5, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.j               ; 4 uses
  %i.o = mul nuw nsw i32 %i.h, 3
  %i.p = add nuw nsw i32 %i.o, 131074
  %i.q = add nuw nsw i32 %i.p, %i.n               ; 2 uses
  %i.r = lshr i32 %i.q, 2
  %i.s = load i8, ptr %0, align 1, !tbaa !10
  %i.t = lshr i32 %i.q, 18                        ; 2 uses
  store i8 -1, ptr %6, align 1, !tbaa !10
  %i.u = zext i8 %i.s to i32
  %i.v = and i32 %i.r, 255                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.x = mul nuw nsw i32 %i.u, 19077
  %i.y = lshr i32 %i.x, 8                         ; 3 uses
  %i.z = mul nuw nsw i32 %i.t, 26149
  %i.aa = lshr i32 %i.z, 8
  %i.ab = add nuw nsw i32 %i.aa, %i.y             ; 2 uses
  %i.ac = add nsw i32 %i.ab, -14234               ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 16384
  %i.ae = lshr i32 %i.ac, 6
  %i.af = icmp samesign ult i32 %i.ab, 14234
  %i.ag = select i1 %i.af, i32 0, i32 255
  %i.ah = select i1 %i.ad, i32 %i.ae, i32 %i.ag
  %i.ai = trunc i32 %i.ah to i8
  store i8 %i.ai, ptr %i.w, align 1, !tbaa !10
end_hunk_0
