inline.NumInlined: 90
inline.NumDeleted: 14
begin_hunk_0_@UpsampleBgraLinePair_C:bb.a
  %i.oy = add nsw i32 %i.ox, -14234               ; 2 uses
  %i.oz = icmp ult i32 %i.oy, 16384
  %i.pa = lshr i32 %i.oy, 6
  %i.pb = icmp samesign ult i32 %i.ox, 14234
  %i.pc = select i1 %i.pb, i32 0, i32 255
  %i.pd = select i1 %i.oz, i32 %i.pa, i32 %i.pc
  %i.pe = trunc i32 %i.pd to i8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ns, i64 2
  store i8 %i.pe, ptr %i.pf, align 1, !tbaa !10
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ns, i64 3
  store i8 -1, ptr %i.pg, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @UpsampleRgbLinePair_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, ptr noalias nofree noundef readonly captures(none) %5, ptr noalias nofree noundef writeonly captures(none) initializes((0, 3)) %6, ptr noalias nofree noundef writeonly captures(none) %7, i32 noundef %8) #1 {
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
  %9 = lshr i32 %i.ez, 8
  %10 = mul nuw nsw i32 %i.ep, 19077
  %i.fa = mul nuw nsw i32 %i.ex, 26149
  %i.fb = mul nuw nsw i32 %i.eu, 33050
  %i.fc = mul nuw nsw i32 %i.et, 19077
  %i.fd = mul nuw nsw i32 %i.ey, 26149
  %i.fe = lshr i32 %10, 8                         ; 3 uses
  %i.ff = add nuw nsw i32 %9, %i.ew
  %i.fg = lshr i32 %i.fa, 8
  %i.fh = lshr i32 %i.fb, 8
  %i.fi = lshr i32 %i.fc, 8                       ; 3 uses
  %i.fj = lshr i32 %i.fd, 8
  %i.fk = add nuw nsw i32 %i.fg, %i.fe
  %i.fl = add nuw nsw i32 %i.fh, %i.fi
  %i.fm = sub nsw i32 %i.fi, %i.ff
  %i.fn = add nuw nsw i32 %i.fj, %i.fi
  %i.fo = insertelement <4 x i32> poison, i32 %i.fn, i64 0
  %i.fp = insertelement <4 x i32> %i.fo, i32 %i.fm, i64 1
  %i.fq = insertelement <4 x i32> %i.fp, i32 %i.fl, i64 2
  %i.fr = insertelement <4 x i32> %i.fq, i32 %i.fk, i64 3 ; 3 uses
  %i.fs = add nsw <4 x i32> %i.fr, <i32 -14234, i32 8708, i32 -17685, i32 -14234> ; 2 uses
  %i.ft = icmp ult <4 x i32> %i.fs, splat (i32 16384)
  %i.fu = lshr <4 x i32> %i.fs, splat (i32 6)
  %i.fv = icmp ult <4 x i32> %i.fr, <i32 14234, i32 -8708, i32 17685, i32 14234>
  %i.fw = icmp slt <4 x i32> %i.fr, <i32 14234, i32 -8708, i32 17685, i32 14234>
  %i.fx = shufflevector <4 x i1> %i.fv, <4 x i1> %i.fw, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.fy = select <4 x i1> %i.fx, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.fz = select <4 x i1> %i.ft, <4 x i32> %i.fu, <4 x i32> %i.fy
  %i.ga = trunc <4 x i32> %i.fz to <4 x i8>
  store <4 x i8> %i.ga, ptr %i.em, align 1, !tbaa !10
  %i.gb = mul nuw nsw i32 %i.eq, 6419
  %i.gc = lshr i32 %i.gb, 8
  %i.gd = mul nuw nsw i32 %i.ex, 13320
  %i.ge = lshr i32 %i.gd, 8
  %i.gf = add nuw nsw i32 %i.ge, %i.gc
  %i.gg = sub nsw i32 %i.fe, %i.gf                ; 2 uses
  %i.gh = add nsw i32 %i.gg, 8708                 ; 2 uses
  %i.gi = icmp ult i32 %i.gh, 16384
  %i.gj = lshr i32 %i.gh, 6
  %i.gk = icmp slt i32 %i.gg, -8708
  %i.gl = select i1 %i.gk, i32 0, i32 255
  %i.gm = select i1 %i.gi, i32 %i.gj, i32 %i.gl
  %i.gn = trunc i32 %i.gm to i8
  %i.go = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !10
  %i.gp = mul nuw nsw i32 %i.eq, 33050
  %i.gq = lshr i32 %i.gp, 8
  %i.gr = add nuw nsw i32 %i.gq, %i.fe            ; 2 uses
  %i.gs = add nsw i32 %i.gr, -17685               ; 2 uses
  %i.gt = icmp ult i32 %i.gs, 16384
  %i.gu = lshr i32 %i.gs, 6
  %i.gv = icmp samesign ult i32 %i.gr, 17685
  %i.gw = select i1 %i.gv, i32 0, i32 255
  %i.gx = select i1 %i.gt, i32 %i.gu, i32 %i.gw
  %i.gy = trunc i32 %i.gx to i8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !10
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ha = add nuw nsw i32 %i.dy, %i.dq            ; 2 uses
  %i.hb = lshr i32 %i.ha, 1
  %i.hc = getelementptr inbounds i8, ptr %1, i64 %i.ei
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !10
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 %i.el
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 %i.eh
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !10
  %i.hh = zext i8 %i.hg to i32
  %i.hi = and i32 %i.hb, 255                      ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %7, i64 %i.er ; 2 uses
  %11 = add nuw nsw i32 %i.ec, %.092120           ; 2 uses
  %12 = lshr i32 %11, 1
  %i.hk = zext i8 %i.hd to i32
  %i.hl = and i32 %12, 255                        ; 2 uses
  %i.hm = mul nuw nsw i32 %i.hl, 6419
  %13 = lshr i32 %i.hm, 8
  %i.hn = lshr i32 %i.ha, 17                      ; 2 uses
  %i.ho = lshr i32 %11, 17                        ; 2 uses
  %i.hp = mul nuw nsw i32 %i.ho, 13320
  %i.hq = lshr i32 %i.hp, 8
  %i.hr = mul nuw nsw i32 %i.hh, 19077
  %i.hs = mul nuw nsw i32 %i.hn, 26149
  %i.ht = mul nuw nsw i32 %i.hl, 33050
  %i.hu = mul nuw nsw i32 %i.hk, 19077
  %i.hv = mul nuw nsw i32 %i.ho, 26149
  %i.hw = lshr i32 %i.hr, 8                       ; 3 uses
  %i.hx = add nuw nsw i32 %13, %i.hq
  %i.hy = lshr i32 %i.hs, 8
  %i.hz = lshr i32 %i.ht, 8
  %i.ia = lshr i32 %i.hu, 8                       ; 3 uses
  %i.ib = lshr i32 %i.hv, 8
  %i.ic = add nuw nsw i32 %i.hw, %i.hy
  %i.id = add nuw nsw i32 %i.ia, %i.hz
  %i.ie = sub nsw i32 %i.ia, %i.hx
  %i.if = add nuw nsw i32 %i.ia, %i.ib
  %i.ig = insertelement <4 x i32> poison, i32 %i.if, i64 0
  %i.ih = insertelement <4 x i32> %i.ig, i32 %i.ie, i64 1
  %i.ii = insertelement <4 x i32> %i.ih, i32 %i.id, i64 2
  %i.ij = insertelement <4 x i32> %i.ii, i32 %i.ic, i64 3 ; 3 uses
  %i.ik = add nsw <4 x i32> %i.ij, <i32 -14234, i32 8708, i32 -17685, i32 -14234> ; 2 uses
  %i.il = icmp ult <4 x i32> %i.ik, splat (i32 16384)
  %i.im = lshr <4 x i32> %i.ik, splat (i32 6)
  %i.in = icmp ult <4 x i32> %i.ij, <i32 14234, i32 -8708, i32 17685, i32 14234>
  %i.io = icmp slt <4 x i32> %i.ij, <i32 14234, i32 -8708, i32 17685, i32 14234>
  %i.ip = shufflevector <4 x i1> %i.in, <4 x i1> %i.io, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.iq = select <4 x i1> %i.ip, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.ir = select <4 x i1> %i.il, <4 x i32> %i.im, <4 x i32> %i.iq
  %i.is = trunc <4 x i32> %i.ir to <4 x i8>
  store <4 x i8> %i.is, ptr %i.he, align 1, !tbaa !10
  %i.it = mul nuw nsw i32 %i.hi, 6419
  %i.iu = lshr i32 %i.it, 8
  %i.iv = mul nuw nsw i32 %i.hn, 13320
  %i.iw = lshr i32 %i.iv, 8
  %i.ix = add nuw nsw i32 %i.iu, %i.iw
  %i.iy = sub nsw i32 %i.hw, %i.ix                ; 2 uses
  %i.iz = add nsw i32 %i.iy, 8708                 ; 2 uses
  %i.ja = icmp ult i32 %i.iz, 16384
  %i.jb = lshr i32 %i.iz, 6
  %i.jc = icmp slt i32 %i.iy, -8708
  %i.jd = select i1 %i.jc, i32 0, i32 255
  %i.je = select i1 %i.ja, i32 %i.jb, i32 %i.jd
  %i.jf = trunc i32 %i.je to i8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !10
  %i.jh = mul nuw nsw i32 %i.hi, 33050
  %i.ji = lshr i32 %i.jh, 8
  %i.jj = add nuw nsw i32 %i.hw, %i.ji            ; 2 uses
  %i.jk = add nsw i32 %i.jj, -17685               ; 2 uses
  %i.jl = icmp ult i32 %i.jk, 16384
  %i.jm = lshr i32 %i.jk, 6
  %i.jn = icmp samesign ult i32 %i.jj, 17685
  %i.jo = select i1 %i.jn, i32 0, i32 255
  %i.jp = select i1 %i.jl, i32 %i.jm, i32 %i.jo
  %i.jq = trunc i32 %i.jp to i8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  store i8 %i.jq, ptr %i.jr, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.092.lcssa = phi i32 [ %i.n, %bb.c ], [ %i.dq, %bb.e ] ; 2 uses
  %.091.lcssa = phi i32 [ %i.h, %bb.c ], [ %i.di, %bb.e ] ; 2 uses
  %i.js = and i32 %8, 1
  %.not95 = icmp eq i32 %i.js, 0
  br i1 %.not95, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.jt = mul nuw nsw i32 %.091.lcssa, 3
  %i.ju = add nuw nsw i32 %.092.lcssa, 131074
  %i.jv = add nuw nsw i32 %i.ju, %i.jt            ; 2 uses
  %i.jw = lshr i32 %i.jv, 2
  %i.jx = sext i32 %i.a to i64                    ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %0, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !10
  %i.ka = zext i8 %i.jz to i32
  %i.kb = and i32 %i.jw, 255                      ; 2 uses
  %i.kc = lshr i32 %i.jv, 18                      ; 2 uses
  %i.kd = mul nsw i32 %i.a, 3
  %i.ke = sext i32 %i.kd to i64                   ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %6, i64 %i.ke ; 3 uses
  %i.kg = mul nuw nsw i32 %i.ka, 19077
  %i.kh = lshr i32 %i.kg, 8                       ; 3 uses
  %i.ki = mul nuw nsw i32 %i.kc, 26149
  %i.kj = lshr i32 %i.ki, 8
  %i.kk = add nuw nsw i32 %i.kh, %i.kj            ; 2 uses
  %i.kl = add nsw i32 %i.kk, -14234               ; 2 uses
  %i.km = icmp ult i32 %i.kl, 16384
  %i.kn = lshr i32 %i.kl, 6
  %i.ko = icmp samesign ult i32 %i.kk, 14234
  %i.kp = select i1 %i.ko, i32 0, i32 255
  %i.kq = select i1 %i.km, i32 %i.kn, i32 %i.kp
  %i.kr = trunc i32 %i.kq to i8
  store i8 %i.kr, ptr %i.kf, align 1, !tbaa !10
  %i.ks = mul nuw nsw i32 %i.kb, 6419
  %i.kt = lshr i32 %i.ks, 8
  %i.ku = mul nuw nsw i32 %i.kc, 13320
  %i.kv = lshr i32 %i.ku, 8
  %i.kw = add nuw nsw i32 %i.kt, %i.kv
  %i.kx = sub nsw i32 %i.kh, %i.kw                ; 2 uses
  %i.ky = add nsw i32 %i.kx, 8708                 ; 2 uses
  %i.kz = icmp ult i32 %i.ky, 16384
  %i.la = lshr i32 %i.ky, 6
  %i.lb = icmp slt i32 %i.kx, -8708
  %i.lc = select i1 %i.lb, i32 0, i32 255
  %i.ld = select i1 %i.kz, i32 %i.la, i32 %i.lc
  %i.le = trunc i32 %i.ld to i8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kf, i64 1
  store i8 %i.le, ptr %i.lf, align 1, !tbaa !10
  %i.lg = mul nuw nsw i32 %i.kb, 33050
  %i.lh = lshr i32 %i.lg, 8
  %i.li = add nuw nsw i32 %i.kh, %i.lh            ; 2 uses
  %i.lj = add nsw i32 %i.li, -17685               ; 2 uses
  %i.lk = icmp ult i32 %i.lj, 16384
  %i.ll = lshr i32 %i.lj, 6
  %i.lm = icmp samesign ult i32 %i.li, 17685
  %i.ln = select i1 %i.lm, i32 0, i32 255
  %i.lo = select i1 %i.lk, i32 %i.ll, i32 %i.ln
  %i.lp = trunc i32 %i.lo to i8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kf, i64 2
  store i8 %i.lp, ptr %i.lq, align 1, !tbaa !10
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.lr = mul nuw nsw i32 %.092.lcssa, 3
  %i.ls = add nuw nsw i32 %.091.lcssa, 131074
  %i.lt = add nuw nsw i32 %i.ls, %i.lr            ; 2 uses
  %i.lu = lshr i32 %i.lt, 2
  %i.lv = getelementptr inbounds i8, ptr %1, i64 %i.jx
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !10
  %i.lx = zext i8 %i.lw to i32
  %i.ly = and i32 %i.lu, 255                      ; 2 uses
  %i.lz = lshr i32 %i.lt, 18                      ; 2 uses
  %i.ma = getelementptr inbounds i8, ptr %7, i64 %i.ke ; 3 uses
  %i.mb = mul nuw nsw i32 %i.lx, 19077
  %i.mc = lshr i32 %i.mb, 8                       ; 3 uses
  %i.md = mul nuw nsw i32 %i.lz, 26149
  %i.me = lshr i32 %i.md, 8
  %i.mf = add nuw nsw i32 %i.mc, %i.me            ; 2 uses
  %i.mg = add nsw i32 %i.mf, -14234               ; 2 uses
  %i.mh = icmp ult i32 %i.mg, 16384
  %i.mi = lshr i32 %i.mg, 6
  %i.mj = icmp samesign ult i32 %i.mf, 14234
  %i.mk = select i1 %i.mj, i32 0, i32 255
  %i.ml = select i1 %i.mh, i32 %i.mi, i32 %i.mk
  %i.mm = trunc i32 %i.ml to i8
  store i8 %i.mm, ptr %i.ma, align 1, !tbaa !10
  %i.mn = mul nuw nsw i32 %i.ly, 6419
  %i.mo = lshr i32 %i.mn, 8
  %i.mp = mul nuw nsw i32 %i.lz, 13320
  %i.mq = lshr i32 %i.mp, 8
  %i.mr = add nuw nsw i32 %i.mo, %i.mq
  %i.ms = sub nsw i32 %i.mc, %i.mr                ; 2 uses
  %i.mt = add nsw i32 %i.ms, 8708                 ; 2 uses
  %i.mu = icmp ult i32 %i.mt, 16384
  %i.mv = lshr i32 %i.mt, 6
  %i.mw = icmp slt i32 %i.ms, -8708
  %i.mx = select i1 %i.mw, i32 0, i32 255
  %i.my = select i1 %i.mu, i32 %i.mv, i32 %i.mx
  %i.mz = trunc i32 %i.my to i8
  %i.na = getelementptr inbounds nuw i8, ptr %i.ma, i64 1
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !10
  %i.nb = mul nuw nsw i32 %i.ly, 33050
  %i.nc = lshr i32 %i.nb, 8
  %i.nd = add nuw nsw i32 %i.mc, %i.nc            ; 2 uses
  %i.ne = add nsw i32 %i.nd, -17685               ; 2 uses
  %i.nf = icmp ult i32 %i.ne, 16384
  %i.ng = lshr i32 %i.ne, 6
  %i.nh = icmp samesign ult i32 %i.nd, 17685
  %i.ni = select i1 %i.nh, i32 0, i32 255
  %i.nj = select i1 %i.nf, i32 %i.ng, i32 %i.ni
  %i.nk = trunc i32 %i.nj to i8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ma, i64 2
  store i8 %i.nk, ptr %i.nl, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @UpsampleBgrLinePair_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, ptr noalias nofree noundef readonly captures(none) %5, ptr noalias nofree noundef writeonly captures(none) initializes((0, 3)) %6, ptr noalias nofree noundef writeonly captures(none) %7, i32 noundef %8) #1 {
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
  %i.ez = lshr i32 %i.ey, 8
  %9 = lshr i32 %i.ep, 17                         ; 2 uses
  %10 = mul nuw nsw i32 %i.ee, 19077
  %i.fa = mul nuw nsw i32 %i.eu, 33050
  %i.fb = mul nuw nsw i32 %i.es, 26149
  %i.fc = mul nuw nsw i32 %i.ej, 19077
  %i.fd = mul nuw nsw i32 %i.ev, 33050
  %i.fe = lshr i32 %10, 8                         ; 3 uses
  %i.ff = add nuw nsw i32 %i.ez, %i.ex
  %i.fg = lshr i32 %i.fa, 8
  %i.fh = lshr i32 %i.fb, 8
  %i.fi = lshr i32 %i.fc, 8                       ; 3 uses
  %i.fj = lshr i32 %i.fd, 8
  %i.fk = add nuw nsw i32 %i.fg, %i.fe
  %i.fl = add nuw nsw i32 %i.fh, %i.fi
  %i.fm = sub nsw i32 %i.fi, %i.ff
  %i.fn = add nuw nsw i32 %i.fj, %i.fi
  %i.fo = insertelement <4 x i32> poison, i32 %i.fn, i64 0
  %i.fp = insertelement <4 x i32> %i.fo, i32 %i.fm, i64 1
  %i.fq = insertelement <4 x i32> %i.fp, i32 %i.fl, i64 2
  %i.fr = insertelement <4 x i32> %i.fq, i32 %i.fk, i64 3 ; 3 uses
  %i.fs = add nsw <4 x i32> %i.fr, <i32 -17685, i32 8708, i32 -14234, i32 -17685> ; 2 uses
  %i.ft = icmp ult <4 x i32> %i.fs, splat (i32 16384)
  %i.fu = lshr <4 x i32> %i.fs, splat (i32 6)
  %i.fv = icmp ult <4 x i32> %i.fr, <i32 17685, i32 -8708, i32 14234, i32 17685>
  %i.fw = icmp slt <4 x i32> %i.fr, <i32 17685, i32 -8708, i32 14234, i32 17685>
  %i.fx = shufflevector <4 x i1> %i.fv, <4 x i1> %i.fw, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.fy = select <4 x i1> %i.fx, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.fz = select <4 x i1> %i.ft, <4 x i32> %i.fu, <4 x i32> %i.fy
  %i.ga = trunc <4 x i32> %i.fz to <4 x i8>
  store <4 x i8> %i.ga, ptr %i.eb, align 1, !tbaa !10
  %i.gb = mul nuw nsw i32 %i.eu, 6419
  %i.gc = lshr i32 %i.gb, 8
  %i.gd = mul nuw nsw i32 %9, 13320
  %i.ge = lshr i32 %i.gd, 8
  %i.gf = add nuw nsw i32 %i.ge, %i.gc
  %i.gg = sub nsw i32 %i.fe, %i.gf                ; 2 uses
  %i.gh = add nsw i32 %i.gg, 8708                 ; 2 uses
  %i.gi = icmp ult i32 %i.gh, 16384
  %i.gj = lshr i32 %i.gh, 6
  %i.gk = icmp slt i32 %i.gg, -8708
  %i.gl = select i1 %i.gk, i32 0, i32 255
  %i.gm = select i1 %i.gi, i32 %i.gj, i32 %i.gl
  %i.gn = trunc i32 %i.gm to i8
  %i.go = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !10
  %i.gp = mul nuw nsw i32 %9, 26149
  %i.gq = lshr i32 %i.gp, 8
  %i.gr = add nuw nsw i32 %i.gq, %i.fe            ; 2 uses
  %i.gs = add nsw i32 %i.gr, -14234               ; 2 uses
  %i.gt = icmp ult i32 %i.gs, 16384
  %i.gu = lshr i32 %i.gs, 6
  %i.gv = icmp samesign ult i32 %i.gr, 14234
  %i.gw = select i1 %i.gv, i32 0, i32 255
  %i.gx = select i1 %i.gt, i32 %i.gu, i32 %i.gw
  %i.gy = trunc i32 %i.gx to i8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !10
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ha = getelementptr inbounds i8, ptr %1, i64 %i.dx
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !10
  %i.hc = getelementptr inbounds nuw i8, ptr %7, i64 %i.ea
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 %i.dw
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !10
  %i.hf = zext i8 %i.he to i32
  %i.hg = getelementptr inbounds nuw i8, ptr %7, i64 %i.ef ; 2 uses
  %i.hh = zext i8 %i.hb to i32
  %i.hi = add nuw nsw i32 %i.eo, %i.dq            ; 2 uses
  %i.hj = add nuw nsw i32 %i.en, %.092120         ; 2 uses
  %i.hk = lshr i32 %i.hi, 1
  %i.hl = lshr i32 %i.hj, 17                      ; 2 uses
  %i.hm = lshr i32 %i.hj, 1
  %i.hn = and i32 %i.hk, 255                      ; 2 uses
  %i.ho = and i32 %i.hm, 255                      ; 2 uses
  %i.hp = mul nuw nsw i32 %i.ho, 6419
  %11 = lshr i32 %i.hp, 8
  %i.hq = mul nuw nsw i32 %i.hl, 13320
  %i.hr = lshr i32 %i.hq, 8
  %i.hs = lshr i32 %i.hi, 17                      ; 2 uses
  %i.ht = mul nuw nsw i32 %i.hf, 19077
  %i.hu = mul nuw nsw i32 %i.hn, 33050
  %i.hv = mul nuw nsw i32 %i.hl, 26149
  %i.hw = mul nuw nsw i32 %i.hh, 19077
  %i.hx = mul nuw nsw i32 %i.ho, 33050
  %i.hy = lshr i32 %i.ht, 8                       ; 3 uses
  %i.hz = add nuw nsw i32 %11, %i.hr
  %i.ia = lshr i32 %i.hu, 8
  %i.ib = lshr i32 %i.hv, 8
  %i.ic = lshr i32 %i.hw, 8                       ; 3 uses
  %i.id = lshr i32 %i.hx, 8
  %i.ie = add nuw nsw i32 %i.hy, %i.ia
  %i.if = add nuw nsw i32 %i.ic, %i.ib
  %i.ig = sub nsw i32 %i.ic, %i.hz
  %i.ih = add nuw nsw i32 %i.ic, %i.id
  %i.ii = insertelement <4 x i32> poison, i32 %i.ih, i64 0
  %i.ij = insertelement <4 x i32> %i.ii, i32 %i.ig, i64 1
  %i.ik = insertelement <4 x i32> %i.ij, i32 %i.if, i64 2
  %i.il = insertelement <4 x i32> %i.ik, i32 %i.ie, i64 3 ; 3 uses
  %i.im = add nsw <4 x i32> %i.il, <i32 -17685, i32 8708, i32 -14234, i32 -17685> ; 2 uses
  %i.in = icmp ult <4 x i32> %i.im, splat (i32 16384)
  %i.io = lshr <4 x i32> %i.im, splat (i32 6)
  %i.ip = icmp ult <4 x i32> %i.il, <i32 17685, i32 -8708, i32 14234, i32 17685>
  %i.iq = icmp slt <4 x i32> %i.il, <i32 17685, i32 -8708, i32 14234, i32 17685>
  %i.ir = shufflevector <4 x i1> %i.ip, <4 x i1> %i.iq, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.is = select <4 x i1> %i.ir, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.it = select <4 x i1> %i.in, <4 x i32> %i.io, <4 x i32> %i.is
  %i.iu = trunc <4 x i32> %i.it to <4 x i8>
  store <4 x i8> %i.iu, ptr %i.hc, align 1, !tbaa !10
  %i.iv = mul nuw nsw i32 %i.hn, 6419
  %i.iw = lshr i32 %i.iv, 8
  %i.ix = mul nuw nsw i32 %i.hs, 13320
  %i.iy = lshr i32 %i.ix, 8
  %i.iz = add nuw nsw i32 %i.iw, %i.iy
  %i.ja = sub nsw i32 %i.hy, %i.iz                ; 2 uses
  %i.jb = add nsw i32 %i.ja, 8708                 ; 2 uses
  %i.jc = icmp ult i32 %i.jb, 16384
  %i.jd = lshr i32 %i.jb, 6
  %i.je = icmp slt i32 %i.ja, -8708
  %i.jf = select i1 %i.je, i32 0, i32 255
  %i.jg = select i1 %i.jc, i32 %i.jd, i32 %i.jf
  %i.jh = trunc i32 %i.jg to i8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !10
  %i.jj = mul nuw nsw i32 %i.hs, 26149
  %i.jk = lshr i32 %i.jj, 8
  %i.jl = add nuw nsw i32 %i.hy, %i.jk            ; 2 uses
  %i.jm = add nsw i32 %i.jl, -14234               ; 2 uses
  %i.jn = icmp ult i32 %i.jm, 16384
  %i.jo = lshr i32 %i.jm, 6
  %i.jp = icmp samesign ult i32 %i.jl, 14234
  %i.jq = select i1 %i.jp, i32 0, i32 255
  %i.jr = select i1 %i.jn, i32 %i.jo, i32 %i.jq
  %i.js = trunc i32 %i.jr to i8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hg, i64 2
  store i8 %i.js, ptr %i.jt, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.092.lcssa = phi i32 [ %i.n, %bb.c ], [ %i.dq, %bb.e ] ; 2 uses
  %.091.lcssa = phi i32 [ %i.h, %bb.c ], [ %i.di, %bb.e ] ; 2 uses
  %i.ju = and i32 %8, 1
  %.not95 = icmp eq i32 %i.ju, 0
  br i1 %.not95, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.jv = mul nuw nsw i32 %.091.lcssa, 3
  %i.jw = add nuw nsw i32 %.092.lcssa, 131074
  %i.jx = add nuw nsw i32 %i.jw, %i.jv            ; 2 uses
  %i.jy = lshr i32 %i.jx, 2
  %i.jz = sext i32 %i.a to i64                    ; 2 uses
  %i.ka = getelementptr inbounds i8, ptr %0, i64 %i.jz
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !10
  %i.kc = zext i8 %i.kb to i32
  %i.kd = and i32 %i.jy, 255                      ; 2 uses
  %i.ke = lshr i32 %i.jx, 18                      ; 2 uses
  %i.kf = mul nsw i32 %i.a, 3
  %i.kg = sext i32 %i.kf to i64                   ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %6, i64 %i.kg ; 3 uses
  %i.ki = mul nuw nsw i32 %i.kc, 19077
  %i.kj = lshr i32 %i.ki, 8                       ; 3 uses
  %i.kk = mul nuw nsw i32 %i.kd, 33050
  %i.kl = lshr i32 %i.kk, 8
  %i.km = add nuw nsw i32 %i.kj, %i.kl            ; 2 uses
  %i.kn = add nsw i32 %i.km, -17685               ; 2 uses
  %i.ko = icmp ult i32 %i.kn, 16384
  %i.kp = lshr i32 %i.kn, 6
  %i.kq = icmp samesign ult i32 %i.km, 17685
  %i.kr = select i1 %i.kq, i32 0, i32 255
  %i.ks = select i1 %i.ko, i32 %i.kp, i32 %i.kr
  %i.kt = trunc i32 %i.ks to i8
  store i8 %i.kt, ptr %i.kh, align 1, !tbaa !10
  %i.ku = mul nuw nsw i32 %i.kd, 6419
  %i.kv = lshr i32 %i.ku, 8
  %i.kw = mul nuw nsw i32 %i.ke, 13320
  %i.kx = lshr i32 %i.kw, 8
  %i.ky = add nuw nsw i32 %i.kv, %i.kx
  %i.kz = sub nsw i32 %i.kj, %i.ky                ; 2 uses
  %i.la = add nsw i32 %i.kz, 8708                 ; 2 uses
  %i.lb = icmp ult i32 %i.la, 16384
  %i.lc = lshr i32 %i.la, 6
  %i.ld = icmp slt i32 %i.kz, -8708
  %i.le = select i1 %i.ld, i32 0, i32 255
  %i.lf = select i1 %i.lb, i32 %i.lc, i32 %i.le
  %i.lg = trunc i32 %i.lf to i8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !10
  %i.li = mul nuw nsw i32 %i.ke, 26149
  %i.lj = lshr i32 %i.li, 8
  %i.lk = add nuw nsw i32 %i.kj, %i.lj            ; 2 uses
  %i.ll = add nsw i32 %i.lk, -14234               ; 2 uses
  %i.lm = icmp ult i32 %i.ll, 16384
  %i.ln = lshr i32 %i.ll, 6
  %i.lo = icmp samesign ult i32 %i.lk, 14234
  %i.lp = select i1 %i.lo, i32 0, i32 255
  %i.lq = select i1 %i.lm, i32 %i.ln, i32 %i.lp
  %i.lr = trunc i32 %i.lq to i8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kh, i64 2
  store i8 %i.lr, ptr %i.ls, align 1, !tbaa !10
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.lt = mul nuw nsw i32 %.092.lcssa, 3
  %i.lu = add nuw nsw i32 %.091.lcssa, 131074
  %i.lv = add nuw nsw i32 %i.lu, %i.lt            ; 2 uses
  %i.lw = lshr i32 %i.lv, 2
  %i.lx = getelementptr inbounds i8, ptr %1, i64 %i.jz
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !10
  %i.lz = zext i8 %i.ly to i32
  %i.ma = and i32 %i.lw, 255                      ; 2 uses
  %i.mb = lshr i32 %i.lv, 18                      ; 2 uses
  %i.mc = getelementptr inbounds i8, ptr %7, i64 %i.kg ; 3 uses
  %i.md = mul nuw nsw i32 %i.lz, 19077
  %i.me = lshr i32 %i.md, 8                       ; 3 uses
  %i.mf = mul nuw nsw i32 %i.ma, 33050
  %i.mg = lshr i32 %i.mf, 8
  %i.mh = add nuw nsw i32 %i.me, %i.mg            ; 2 uses
  %i.mi = add nsw i32 %i.mh, -17685               ; 2 uses
  %i.mj = icmp ult i32 %i.mi, 16384
  %i.mk = lshr i32 %i.mi, 6
  %i.ml = icmp samesign ult i32 %i.mh, 17685
  %i.mm = select i1 %i.ml, i32 0, i32 255
  %i.mn = select i1 %i.mj, i32 %i.mk, i32 %i.mm
  %i.mo = trunc i32 %i.mn to i8
  store i8 %i.mo, ptr %i.mc, align 1, !tbaa !10
  %i.mp = mul nuw nsw i32 %i.ma, 6419
  %i.mq = lshr i32 %i.mp, 8
  %i.mr = mul nuw nsw i32 %i.mb, 13320
  %i.ms = lshr i32 %i.mr, 8
  %i.mt = add nuw nsw i32 %i.mq, %i.ms
  %i.mu = sub nsw i32 %i.me, %i.mt                ; 2 uses
  %i.mv = add nsw i32 %i.mu, 8708                 ; 2 uses
  %i.mw = icmp ult i32 %i.mv, 16384
  %i.mx = lshr i32 %i.mv, 6
  %i.my = icmp slt i32 %i.mu, -8708
  %i.mz = select i1 %i.my, i32 0, i32 255
  %i.na = select i1 %i.mw, i32 %i.mx, i32 %i.mz
  %i.nb = trunc i32 %i.na to i8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mc, i64 1
  store i8 %i.nb, ptr %i.nc, align 1, !tbaa !10
  %i.nd = mul nuw nsw i32 %i.mb, 26149
  %i.ne = lshr i32 %i.nd, 8
  %i.nf = add nuw nsw i32 %i.me, %i.ne            ; 2 uses
  %i.ng = add nsw i32 %i.nf, -14234               ; 2 uses
  %i.nh = icmp ult i32 %i.ng, 16384
  %i.ni = lshr i32 %i.ng, 6
  %i.nj = icmp samesign ult i32 %i.nf, 14234
  %i.nk = select i1 %i.nj, i32 0, i32 255
  %i.nl = select i1 %i.nh, i32 %i.ni, i32 %i.nk
  %i.nm = trunc i32 %i.nl to i8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mc, i64 2
  store i8 %i.nm, ptr %i.nn, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @UpsampleArgbLinePair_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, ptr noalias nofree noundef readonly captures(none) %5, ptr noalias nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr noalias nofree noundef writeonly captures(none) %7, i32 noundef %8) #1 {
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
end_hunk_0
