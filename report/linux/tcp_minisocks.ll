Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tcp_minisocks?download=true
inline.NumInlined: 161
inline.NumDeleted: 98
begin_hunk_0_@tcp_create_openreq_child:bb.a
  %i.bk = or disjoint i16 %i.bj, %i.bi            ; 2 uses
  store i16 %i.bk, ptr %i.bf, align 4
  %i.bl = load i16, ptr %i.bc, align 8
  %i.bm = lshr i16 %i.bl, 5
  %i.bn = and i16 %i.bm, 16
  %i.bo = and i16 %i.bk, -113
  %i.bp = or disjoint i16 %i.bn, %i.bo            ; 3 uses
  store i16 %i.bp, ptr %i.bf, align 4
  %i.bq = getelementptr i8, ptr %1, i64 132
  %i.br = load i32, ptr %i.bq, align 4            ; 2 uses
  %i.bs = getelementptr i8, ptr %i.a, i64 1716    ; 2 uses
  store i32 %i.br, ptr %i.bs, align 4
  %i.bt = getelementptr i8, ptr %1, i64 124       ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4            ; 2 uses
  %i.bv = getelementptr i8, ptr %i.a, i64 1412
  store i32 %i.bu, ptr %i.bv, align 4
  %i.bw = getelementptr i8, ptr %i.a, i64 1752
  store i32 %i.bu, ptr %i.bw, align 8
  %i.bx = load i32, ptr %i.f, align 4
  %i.by = load i32, ptr %i.bt, align 4
  %i.bz = add i32 %i.by, %i.bx
  %i.ca = getelementptr i8, ptr %i.a, i64 1756
  store i32 %i.bz, ptr %i.ca, align 4
  %i.cb = load i16, ptr %i.bc, align 8            ; 2 uses
  %i.cc = lshr i16 %i.cb, 7
  %i.cd = and i16 %i.cc, 8
  %i.ce = and i16 %i.bp, -105
  %i.cf = or disjoint i16 %i.cd, %i.ce            ; 2 uses
  store i16 %i.cf, ptr %i.bf, align 4
  %i.cg = and i16 %i.cb, 1024
  %.not140 = icmp eq i16 %i.cg, 0
  br i1 %.not140, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ch = load i16, ptr %i.bc, align 8
  %i.ci = shl i16 %i.ch, 8
  %i.cj = and i16 %i.ci, 3840
  %i.ck = and i16 %i.cf, -3937
  %i.cl = or disjoint i16 %i.cj, %i.ck            ; 2 uses
  store i16 %i.cl, ptr %i.bf, align 4
  %i.cm = load i16, ptr %i.bc, align 8
  %i.cn = shl i16 %i.cm, 8
  %i.co = and i16 %i.cn, -4096
  %i.cp = and i16 %i.cl, 3999
  %i.cq = or disjoint i16 %i.cp, %i.co
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cr = and i16 %i.bp, 151
  %i.cs = tail call i32 @llvm.umin.i32(i32 %i.br, i32 65535)
  store i32 %i.cs, ptr %i.bs, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i16 [ %i.cr, %bb.f ], [ %i.cq, %bb.e ] ; 3 uses
  store i16 %.sink, ptr %i.bf, align 4
  %i.ct = getelementptr i8, ptr %2, i64 182       ; 2 uses
  %.val145 = load i16, ptr %i.ct, align 2
  %i.cu = getelementptr i8, ptr %2, i64 200       ; 3 uses
  %.val146 = load ptr, ptr %i.cu, align 8
  %i.cv = zext i16 %.val145 to i64
  %i.cw = getelementptr i8, ptr %.val146, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 14
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = tail call i16 @llvm.bswap.i16(i16 %i.cy)
  %i.da = zext i16 %i.cz to i32
  %i.db = lshr i16 %.sink, 8
  %i.dc = and i16 %i.db, 15
  %i.dd = zext nneg i16 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.da, %i.dd            ; 2 uses
  %i.df = getelementptr i8, ptr %i.a, i64 1444
  store i32 %i.de, ptr %i.df, align 4
  %i.dg = getelementptr i8, ptr %i.a, i64 1408
  store i32 %i.de, ptr %i.dg, align 64
  %i.dh = and i16 %.sink, 2
  %.not141 = icmp eq i16 %i.dh, 0
  br i1 %.not141, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.di = getelementptr i8, ptr %1, i64 274
  %i.dj = load i8, ptr %i.di, align 2, !range !12, !noundef !13
  %i.dk = getelementptr i8, ptr %i.a, i64 1471    ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = shl nuw nsw i8 %i.dj, 1
  %i.dn = and i8 %i.dl, -3
  %i.do = or disjoint i8 %i.dn, %i.dm
  store i8 %i.do, ptr %i.dk, align 1
  %i.dp = getelementptr i8, ptr %1, i64 148
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = getelementptr i8, ptr %i.a, i64 1768
  store i32 %i.dq, ptr %i.dr, align 8
  %i.ds = tail call i64 @ktime_get_seconds() #9
  %i.dt = trunc i64 %i.ds to i32
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.du = getelementptr i8, ptr %i.a, i64 1471    ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = and i8 %i.dv, -3
  store i8 %i.dw, ptr %i.du, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink150 = phi i32 [ 0, %bb.i ], [ %i.dt, %bb.h ]
  %.sink149 = phi i16 [ 20, %bb.i ], [ 32, %bb.h ] ; 2 uses
  store i32 %.sink150, ptr %i.be, align 4
  %i.dx = getelementptr i8, ptr %i.a, i64 1468    ; 2 uses
  store i16 %.sink149, ptr %i.dx, align 4
  %i.dy = getelementptr i8, ptr %1, i64 147
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = lshr i8 %i.dz, 1                        ; 2 uses
  %.not142 = icmp eq i8 %i.ea, 0
  br i1 %.not142, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eb = zext nneg i8 %i.ea to i16
  %i.ec = getelementptr i8, ptr %i.a, i64 2248
  store i16 %i.eb, ptr %i.ec, align 8
  %i.ed = load i32, ptr %i.j, align 4
  %i.ee = getelementptr i8, ptr %i.a, i64 2220
  store i32 %i.ed, ptr %i.ee, align 4
  %i.ef = getelementptr i8, ptr %i.a, i64 1471
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = and i8 %i.eg, 2
  %.not143 = icmp eq i8 %i.eh, 0
  %i.ei = getelementptr i8, ptr %1, i64 264
  %i.ej = load i64, ptr %i.ei, align 8            ; 2 uses
  br i1 %.not143, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ek = trunc i64 %i.ej to i32
  %i.el = getelementptr i8, ptr %i.a, i64 2216    ; 2 uses
  store i32 %i.ek, ptr %i.el, align 8
  %i.em = tail call i64 @ktime_get() #9
  %i.en = udiv i64 %i.em, 1000
  %i.eo = load i32, ptr %i.el, align 8
  %i.ep = trunc i64 %i.en to i32
  %i.eq = sub i32 %i.ep, %i.eo
  %i.er = udiv i32 %i.eq, 1000
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.es = udiv i64 %i.ej, 1000
  %i.et = trunc i64 %i.es to i32
  %i.eu = getelementptr i8, ptr %i.a, i64 2216    ; 2 uses
  store i32 %i.et, ptr %i.eu, align 8
  %i.ev = tail call i64 @ktime_get() #9
  %i.ew = udiv i64 %i.ev, 1000000
  %i.ex = load i32, ptr %i.eu, align 8
  %i.ey = trunc i64 %i.ew to i32
  %i.ez = sub i32 %i.ey, %i.ex
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink151 = phi i32 [ %i.ez, %bb.m ], [ %i.er, %bb.l ]
  %i.fa = getelementptr i8, ptr %i.a, i64 2252
  store i32 %.sink151, ptr %i.fa, align 4
  %i.fb = getelementptr i8, ptr %i.a, i64 2250
  store i16 1, ptr %i.fb, align 2
  %.pre = load i16, ptr %i.dx, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.fc = phi i16 [ %.pre, %bb.n ], [ %.sink149, %bb.j ] ; 2 uses
  %i.fd = getelementptr i8, ptr %1, i64 288
  %i.fe = load i32, ptr %i.fd, align 8
  %i.ff = getelementptr i8, ptr %i.a, i64 1440
  store i32 %i.fe, ptr %i.ff, align 32
  %i.fg = getelementptr i8, ptr %i.a, i64 2304
  store ptr null, ptr %i.fg, align 64
  %i.fh = getelementptr i8, ptr %2, i64 112       ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8            ; 2 uses
  %i.fj = zext i16 %i.fc to i32
  %i.fk = add nuw nsw i32 %i.fj, 536
  %.not144 = icmp ult i32 %i.fi, %i.fk
  br i1 %.not144, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fl = trunc i32 %i.fi to i16
  %i.fm = sub i16 %i.fl, %i.fc
  %i.fn = getelementptr i8, ptr %i.a, i64 1276
  store i16 %i.fm, ptr %i.fn, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fo = getelementptr i8, ptr %1, i64 144
  %i.fp = load i16, ptr %i.fo, align 8
  %i.fq = getelementptr i8, ptr %i.a, i64 1786
  store i16 %i.fp, ptr %i.fq, align 2
  %i.fr = getelementptr i8, ptr %1, i64 309
  %i.fs = load i8, ptr %i.fr, align 1, !range !12, !noundef !13
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.r, label %bb.ak

bb.r:                                             ; preds = %bb.q
  %i.fu = getelementptr i8, ptr %i.a, i64 1680    ; 3 uses
  %i.fv = load i8, ptr %i.fu, align 16
  %i.fw = and i8 %i.fv, -18                       ; 2 uses
  %i.fx = or disjoint i8 %i.fw, 16
  store i8 %i.fx, ptr %i.fu, align 16
  %i.fy = getelementptr i8, ptr %1, i64 310       ; 6 uses
  %i.fz = load i16, ptr %i.fy, align 2
  %i.ga = getelementptr i8, ptr %i.a, i64 1921    ; 2 uses
  %i.gb = load i16, ptr %i.ga, align 1
  %i.gc = shl i16 %i.fz, 3
  %i.gd = and i16 %i.gc, 24
  %i.ge = and i16 %i.gb, -25
  %i.gf = or disjoint i16 %i.ge, %i.gd
  store i16 %i.gf, ptr %i.ga, align 1
  %i.gg = load i16, ptr %i.fy, align 2
  %i.gh = trunc i16 %i.gg to i8
  %i.gi = and i8 %i.gh, 3                         ; 2 uses
  %.val.i.i = load i16, ptr %i.ct, align 2
  %.val17.i.i = load ptr, ptr %i.cu, align 8
  %i.gj = zext i16 %.val.i.i to i64
  %i.gk = getelementptr i8, ptr %.val17.i.i, i64 %i.gj
  %i.gl = getelementptr i8, ptr %i.gk, i64 12
  %.val18.i.i = load i16, ptr %i.gl, align 4      ; 2 uses
  %i.gm = shl i16 %.val18.i.i, 2
  %i.gn = and i16 %i.gm, 4
  %i.go = lshr i16 %.val18.i.i, 14
  %i.gp = or disjoint i16 %i.gn, %i.go            ; 2 uses
  %i.gq = trunc nuw nsw i16 %i.gp to i8
  switch i8 %i.gq, label %bb.u [
    i8 0, label %bb.s
    i8 7, label %tcp_accecn_third_ack.exit.i
    i8 5, label %tcp_accecn_third_ack.exit.i
    i8 1, label %tcp_accecn_third_ack.exit.i
  ]

bb.s:                                             ; preds = %bb.r
  %i.gr = getelementptr i8, ptr %2, i64 54
  %i.gs = load i8, ptr %i.gr, align 2
  %.not.i.i = icmp eq i8 %i.gs, 0
  br i1 %.not.i.i, label %bb.t, label %tcp_accecn_third_ack.exit.i

bb.t:                                             ; preds = %bb.s
  %i.gt = getelementptr i8, ptr %i.a, i64 1926    ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 2
  %i.gv = or i8 %i.gu, 10
  store i8 %i.gv, ptr %i.gt, align 2
  br label %tcp_accecn_third_ack.exit.i

bb.u:                                             ; preds = %bb.r
  %i.gw = getelementptr i8, ptr %2, i64 40
  %i.gx = load i32, ptr %i.gw, align 8
  %i.gy = getelementptr i8, ptr %2, i64 44
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = icmp eq i32 %i.gx, %i.gz
  br i1 %i.ha, label %bb.v, label %tcp_accecn_third_ack.exit.i

bb.v:                                             ; preds = %bb.u
  %i.hb = getelementptr i8, ptr %2, i64 54
  %i.hc = load i8, ptr %i.hb, align 2
  %.not15.i.i = icmp eq i8 %i.hc, 0
  br i1 %.not15.i.i, label %bb.w, label %tcp_accecn_third_ack.exit.i

bb.w:                                             ; preds = %bb.v
  %i.hd = zext nneg i16 %i.gp to i64
  %i.he = getelementptr [4 x i8], ptr @tcp_accecn_extract_syn_ect.ace_to_ecn, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4
  %.fr10.i.i.i = freeze i32 %i.hf                 ; 2 uses
  %i.hg = getelementptr i8, ptr %i.a, i64 48
  %.val.i.i.i = load ptr, ptr %i.hg, align 16
  %i.hh = getelementptr i8, ptr %.val.i.i.i, i64 1447
  %i.hi = load volatile i8, ptr %i.hh, align 1
  %.not.i.i.i = icmp eq i8 %i.hi, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hj = trunc i32 %.fr10.i.i.i to i8            ; 2 uses
  %i.hk = icmp eq i8 %i.gi, %i.hj
  br i1 %i.hk, label %bb.y, label %tcp_ect_transition_valid.exit.i.i.i

tcp_ect_transition_valid.exit.i.i.i:              ; preds = %bb.x
  %i.hl = icmp ne i8 %i.hj, 0
  %.off.i.i.i = add nsw i8 %i.gi, -1
  %switch.i.i.i = icmp ult i8 %.off.i.i.i, 2
  %or.cond.i.i.i = and i1 %switch.i.i.i, %i.hl
  br i1 %or.cond.i.i.i, label %bb.y, label %tcp_accecn_validate_syn_feedback.exit.i.i

tcp_accecn_validate_syn_feedback.exit.i.i:        ; preds = %tcp_ect_transition_valid.exit.i.i.i
  %i.hm = getelementptr i8, ptr %i.a, i64 1926    ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 2
  %i.ho = or i8 %i.hn, 2
  store i8 %i.ho, ptr %i.hm, align 2
  br label %tcp_accecn_third_ack.exit.i

bb.y:                                             ; preds = %tcp_ect_transition_valid.exit.i.i.i, %bb.x, %bb.w
  %i.hp = icmp eq i32 %.fr10.i.i.i, 3
  br i1 %i.hp, label %bb.z, label %tcp_accecn_third_ack.exit.i

bb.z:                                             ; preds = %bb.y
  %i.hq = getelementptr i8, ptr %i.a, i64 1540    ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4
  %.not16.i.i = icmp eq i32 %i.hr, 0
  br i1 %.not16.i.i, label %bb.aa, label %tcp_accecn_third_ack.exit.i

bb.aa:                                            ; preds = %bb.z
  store volatile i32 1, ptr %i.hq, align 4
  br label %tcp_accecn_third_ack.exit.i

tcp_accecn_third_ack.exit.i:                      ; preds = %bb.aa, %bb.z, %bb.y, %tcp_accecn_validate_syn_feedback.exit.i.i, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.r, %bb.r
  %3 = load i16, ptr %i.fy, align 2
  %i.hs = getelementptr i8, ptr %i.a, i64 1926    ; 4 uses
  %i.ht = load i8, ptr %i.hs, align 2
  %sh.diff.i = lshr i16 %3, 4
  %tr.sh.diff.i = trunc i16 %sh.diff.i to i8
  %i.hu = and i8 %tr.sh.diff.i, 48
  %i.hv = and i8 %i.ht, -49
  %i.hw = or disjoint i8 %i.hu, %i.hv             ; 3 uses
  store i8 %i.hw, ptr %i.hs, align 2
  %i.hx = load i16, ptr %i.fy, align 2            ; 2 uses
  %i.hy = and i16 %i.hx, 16
  %.not30.i = icmp eq i16 %i.hy, 0
  br i1 %.not30.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %tcp_accecn_third_ack.exit.i
  %i.hz = or i8 %i.hw, 1                          ; 2 uses
  store i8 %i.hz, ptr %i.hs, align 2
  %.pre.i = load i16, ptr %i.fy, align 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %tcp_accecn_third_ack.exit.i
  %i.ia = phi i8 [ %i.hz, %bb.ab ], [ %i.hw, %tcp_accecn_third_ack.exit.i ]
  %i.ib = phi i16 [ %.pre.i, %bb.ab ], [ %i.hx, %tcp_accecn_third_ack.exit.i ] ; 2 uses
  %i.ic = and i16 %i.ib, 32
  %.not31.i = icmp eq i16 %i.ic, 0
  br i1 %.not31.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.id = or i8 %i.ia, 2
  store i8 %i.id, ptr %i.hs, align 2
  %.pre36.i = load i16, ptr %i.fy, align 2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ie = phi i16 [ %.pre36.i, %bb.ad ], [ %i.ib, %bb.ac ]
  %i.if = trunc i16 %i.ie to i8
  %i.ig = getelementptr i8, ptr %i.a, i64 1683    ; 4 uses
  %i.ih = load i8, ptr %i.ig, align 1             ; 2 uses
  %i.ii = shl i8 %i.if, 4
  %i.ij = and i8 %i.ih, 15
  %.masked.i = and i8 %i.ii, -64
  %i.ik = or disjoint i8 %i.ij, %.masked.i
  %i.il = or disjoint i8 %i.ik, 16                ; 4 uses
  store i8 %i.il, ptr %i.ig, align 1
  %i.im = getelementptr i8, ptr %2, i64 208
  %i.in = load ptr, ptr %i.im, align 8
  %i.io = load i32, ptr %i.fh, align 8            ; 2 uses
  %i.ip = getelementptr i8, ptr %i.in, i64 12
  %i.iq = load i16, ptr %i.ip, align 4
  %i.ir = lshr i16 %i.iq, 2
  %i.is = and i16 %i.ir, 60
  %i.it = zext nneg i16 %i.is to i32              ; 2 uses
  %i.iu = sub i32 %i.io, %i.it
  %i.iv = getelementptr i8, ptr %2, i64 55
  %i.iw = load i8, ptr %i.iv, align 1
  %i.ix = and i8 %i.iw, 3                         ; 6 uses
  %i.iy = icmp eq i8 %i.ix, 3                     ; 2 uses
  %.not.i.i32.i = icmp eq i8 %i.ix, 0
  br i1 %.not.i.i32.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iz = getelementptr i8, ptr %2, i64 192
  %.val.i.i33.i = load i32, ptr %i.iz, align 8
  %.val60.i.i.i = load ptr, ptr %i.cu, align 8
  %i.ja = zext i32 %.val.i.i33.i to i64
  %i.jb = getelementptr i8, ptr %.val60.i.i.i, i64 %i.ja
  %i.jc = getelementptr i8, ptr %i.jb, i64 6
  %i.jd = load i16, ptr %i.jc, align 2
  %narrow.i.i.i = tail call i16 @llvm.umax.i16(i16 %i.jd, i16 1)
  %i.je = zext i16 %narrow.i.i.i to i32
  %i.jf = select i1 %i.iy, i32 %i.je, i32 0       ; 2 uses
  %i.jg = or i8 %i.fw, 24
  store i8 %i.jg, ptr %i.fu, align 16
  %i.jh = getelementptr i8, ptr %i.a, i64 1732    ; 3 uses
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = add i32 %i.jf, %i.ji
  store i32 %i.jj, ptr %i.jh, align 4
  %i.jk = getelementptr i8, ptr %i.a, i64 1681    ; 2 uses
  %i.jl = load i16, ptr %i.jk, align 1            ; 2 uses
  %i.jm = lshr i16 %i.jl, 8
  %i.jn = and i16 %i.jm, 15
  %i.jo = zext nneg i16 %i.jn to i32
  %i.jp = add nuw nsw i32 %i.jf, %i.jo
  %i.jq = tail call i32 @llvm.umin.i32(i32 %i.jp, i32 15)
  %i.jr = trunc nuw nsw i32 %i.jq to i16
  %i.js = shl nuw nsw i16 %i.jr, 8
  %i.jt = and i16 %i.jl, -3841
  %i.ju = or disjoint i16 %i.js, %i.jt
  store i16 %i.ju, ptr %i.jk, align 1
  %.not58.i.i.i = icmp eq i32 %i.io, %i.it
  br i1 %.not58.i.i.i, label %bb.ag, label %switch.lookup

switch.lookup:                                    ; preds = %bb.af
  %switch.tableidx = add nsw i8 %i.ix, -1
  %switch.cast = zext i8 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 131841, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %i.jv = zext nneg i8 %i.ix to i64
  %i.jw = getelementptr [4 x i8], ptr %i.jh, i64 %i.jv ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4
  %i.jy = add i32 %i.iu, %i.jx
  store i32 %i.jy, ptr %i.jw, align 4
  %i.jz = and i8 %i.ih, 3
  %i.ka = tail call i8 @llvm.umax.i8(i8 %i.jz, i8 %switch.masked)
  %i.kb = and i8 %i.il, -36
  %i.kc = or disjoint i8 %i.ka, %i.kb             ; 2 uses
  store i8 %i.kc, ptr %i.ig, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %switch.lookup, %bb.af, %bb.ae
  %i.kd = phi i8 [ %i.kc, %switch.lookup ], [ %i.il, %bb.af ], [ %i.il, %bb.ae ] ; 2 uses
  %i.ke = lshr i8 %i.kd, 6
  %i.kf = icmp ne i8 %i.ke, %i.ix                 ; 2 uses
  %or.cond.i.i34.i = or i1 %i.iy, %i.kf
  br i1 %or.cond.i.i34.i, label %bb.ah, label %tcp_ecn_openreq_child.exit

bb.ah:                                            ; preds = %bb.ag
  %i.kg = shl nuw i8 %i.ix, 6
  %i.kh = and i8 %i.kd, 15
  %i.ki = or disjoint i8 %i.kh, %i.kg
  br i1 %i.kf, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.kj = getelementptr i8, ptr %i.a, i64 1264    ; 2 uses
  %i.kk = load i8, ptr %i.kj, align 16
  %i.kl = or i8 %i.kk, 16
  store i8 %i.kl, ptr %i.kj, align 16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.km = or disjoint i8 %i.ki, 32
  store i8 %i.km, ptr %i.ig, align 1
  br label %tcp_ecn_openreq_child.exit

bb.ak:                                            ; preds = %bb.q
  %i.kn = load i16, ptr %i.bc, align 8
  %i.ko = and i16 %i.kn, 2048
  %.not.i147 = icmp eq i16 %i.ko, 0
  br i1 %.not.i147, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kp = getelementptr i8, ptr %i.a, i64 1216
  %.val.i148 = load ptr, ptr %i.kp, align 64
  %i.kq = getelementptr i8, ptr %.val.i148, i64 140
  %.val.val.i = load i32, ptr %i.kq, align 4
  %i.kr = and i32 %.val.val.i, 16
  %.not35.i = icmp eq i32 %i.kr, 0
  br i1 %.not35.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ks = getelementptr i8, ptr %i.a, i64 1680    ; 2 uses
  %i.kt = load i8, ptr %i.ks, align 16
  %i.ku = and i8 %i.kt, -18
  %i.kv = or disjoint i8 %i.ku, 1
  store i8 %i.kv, ptr %i.ks, align 16
  br label %tcp_ecn_openreq_child.exit

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.kw = getelementptr i8, ptr %i.a, i64 1680    ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 16
  %i.ky = and i8 %i.kx, -18
  store i8 %i.ky, ptr %i.kw, align 16
  br label %tcp_ecn_openreq_child.exit

tcp_ecn_openreq_child.exit:                       ; preds = %bb.ag, %bb.aj, %bb.am, %bb.an
  %i.kz = getelementptr i8, ptr %i.a, i64 2312
  store ptr null, ptr %i.kz, align 8
  %i.la = getelementptr i8, ptr %i.a, i64 2320
  store volatile ptr null, ptr %i.la, align 16
  %i.lb = getelementptr i8, ptr %i.a, i64 2273    ; 2 uses
  %i.lc = load i8, ptr %i.lb, align 1
  %i.ld = and i8 %i.lc, -2
  store i8 %i.ld, ptr %i.lb, align 1
  %i.le = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.le, align 8
  %i.lf = getelementptr i8, ptr %.val, i64 736
  %i.lg = load ptr, ptr %i.lf, align 16
  %i.lh = getelementptr i8, ptr %i.lg, i64 48     ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.lh, ptr elementtype(i64) %i.lh) #8, !srcloc !26
  %i.li = getelementptr i8, ptr %i.a, i64 760
  store i32 0, ptr %i.li, align 8
  %i.lj = getelementptr i8, ptr %i.a, i64 764
  store i32 12, ptr %i.lj, align 4
  %i.lk = getelementptr i8, ptr %i.a, i64 768
  store ptr null, ptr %i.lk, align 64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %tcp_ecn_openreq_child.exit
  ret ptr %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @inet_csk_clone_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tcp_init_xmit_timers(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tcp_reset_keepalive_timer(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @tcp_check_req(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %6 = alloca %struct.tcp_options_received, align 4 ; 13 uses
end_hunk_0
begin_hunk_1_@tcp_check_req:bb.a
  %i.dd = icmp ugt i8 %i.dc, 1
  br i1 %i.dd, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.de = load i8, ptr %i.ce, align 1, !range !12, !noundef !13
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr i8, ptr %2, i64 310       ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = or i16 %i.dh, 16
  store i16 %i.di, ptr %i.dg, align 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.dj = getelementptr i8, ptr %2, i64 224
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr i8, ptr %2, i64 147
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = lshr i8 %i.dn, 1
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = shl i64 %i.dl, %i.dp
  %i.dr = getelementptr i8, ptr %2, i64 96
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr i8, ptr %i.ds, i64 1200
  %i.du = load volatile i32, ptr %i.dt, align 8
  %i.dv = zext i32 %i.du to i64
  %i.dw = call range(i64 0, 4294967296) i64 @llvm.umin.i64(i64 %i.dq, i64 %i.dv)
  %i.dx = add i64 %i.dw, %i.da                    ; 2 uses
  br i1 %3, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dy = getelementptr i8, ptr %2, i64 152
  %i.dz = call i32 @mod_timer_pending(ptr noundef %i.dy, i64 noundef %i.dx) #9 ; 0 uses
  br label %bb.bj

bb.u:                                             ; preds = %bb.s
  %i.ea = getelementptr i8, ptr %2, i64 168
  store i64 %i.dx, ptr %i.ea, align 8
  br label %bb.bj

bb.v:                                             ; preds = %tcp_paws_reject.exit.thread, %tcp_paws_reject.exit
  %i.eb = phi i32 [ %i.bu, %tcp_paws_reject.exit.thread ], [ %i.by, %tcp_paws_reject.exit ] ; 3 uses
  %i.ec = phi ptr [ %i.bt, %tcp_paws_reject.exit.thread ], [ %i.bx, %tcp_paws_reject.exit ]
  %i.ed = phi i32 [ %i.bs, %tcp_paws_reject.exit.thread ], [ %i.bw, %tcp_paws_reject.exit ] ; 7 uses
  %i.ee = phi ptr [ %i.br, %tcp_paws_reject.exit.thread ], [ %i.bv, %tcp_paws_reject.exit ]
  %.2259 = phi i1 [ %.1, %tcp_paws_reject.exit.thread ], [ %.2, %tcp_paws_reject.exit ] ; 2 uses
  %.0213258 = phi i1 [ true, %tcp_paws_reject.exit.thread ], [ false, %tcp_paws_reject.exit ] ; 2 uses
  %i.ef = and i32 %i.g, 4096
  %.not222 = icmp eq i32 %i.ef, 0
  br i1 %.not222, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = and i32 %i.g, 1024
  %i.eh = icmp ne i32 %i.eg, 0
  %or.cond7 = or i1 %3, %i.eh
  br i1 %or.cond7, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ei = getelementptr i8, ptr %1, i64 60
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = getelementptr i8, ptr %2, i64 284
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = add i32 %i.el, 1
  %.not223 = icmp eq i32 %i.ej, %i.em
  br i1 %.not223, label %bb.y, label %bb.bj

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %or.cond9 = select i1 %.0213258, i1 true, i1 %.2259
  br i1 %or.cond9, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.en = getelementptr i8, ptr %1, i64 44        ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4            ; 2 uses
  %i.ep = getelementptr i8, ptr %2, i64 304       ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8            ; 3 uses
  %i.er = getelementptr i8, ptr %2, i64 124
  %.val249 = load i32, ptr %i.er, align 4
  %i.es = call range(i32 0, 65536) i32 @llvm.umin.i32(i32 %.val249, i32 65535)
  %i.et = add i32 %i.es, %i.eq                    ; 2 uses
  %i.eu = icmp eq i32 %i.ed, %i.eq
  br i1 %i.eu, label %tcp_in_window.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ev = sub i32 %i.eq, %i.eo
  %i.ew = sub i32 %i.ed, %i.et
  %i.ex = and i32 %i.ew, %i.ev
  %or.cond.not.i = icmp sgt i32 %i.ex, -1
  br i1 %or.cond.not.i, label %tcp_in_window.exit, label %tcp_in_window.exit.thread.thread

tcp_in_window.exit:                               ; preds = %bb.aa
  %i.ey = icmp eq i32 %i.ed, %i.et
  %i.ez = icmp eq i32 %i.ed, %i.eo
  %i.fa = and i1 %i.ez, %i.ey
  br i1 %i.fa, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %tcp_in_window.exit, %bb.y
  %i.fb = and i32 %i.g, 1024
  %.not234 = icmp eq i32 %i.fb, 0
  br i1 %.not234, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.fc = getelementptr i8, ptr %0, i64 48
  %.val241 = load ptr, ptr %i.fc, align 8
  %i.fd = getelementptr i8, ptr %2, i64 300
  %i.fe = call zeroext i1 @tcp_oow_rate_limited(ptr noundef %.val241, ptr noundef %1, i32 noundef 107, ptr noundef %i.fd) #9
  br i1 %i.fe, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ff = getelementptr i8, ptr %2, i64 192
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = getelementptr i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  br i1 %.0213258, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 36, ptr %5, align 4
  %i.fj = getelementptr i8, ptr %0, i64 48
  %.val240 = load ptr, ptr %i.fj, align 8
  %i.fk = getelementptr i8, ptr %.val240, i64 744
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = getelementptr i8, ptr %i.fl, i64 120    ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fm, ptr elementtype(i64) %i.fm) #8, !srcloc !27
  br label %bb.bj

bb.ag:                                            ; preds = %bb.ae
  br i1 %.2259, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 39, ptr %5, align 4
  %i.fn = getelementptr i8, ptr %0, i64 48
  %.val239 = load ptr, ptr %i.fn, align 8
  %i.fo = getelementptr i8, ptr %.val239, i64 744
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = getelementptr i8, ptr %i.fp, i64 136    ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fq, ptr elementtype(i64) %i.fq) #8, !srcloc !28
  br label %bb.bj

bb.ai:                                            ; preds = %bb.ag
  store i32 34, ptr %5, align 4
  br label %bb.bj

tcp_in_window.exit.thread:                        ; preds = %bb.z
  %i.fr = icmp eq i32 %i.ed, %i.eb
  %i.fs = and i32 %i.g, 5120
  %spec.select = select i1 %i.fr, i32 %i.fs, i32 %i.h ; 2 uses
  %i.ft = and i32 %spec.select, 1024
  %.not224 = icmp eq i32 %i.ft, 0
  br label %bb.aj

tcp_in_window.exit.thread.thread:                 ; preds = %bb.aa
  %i.fu = icmp eq i32 %i.ed, %i.eb
  %i.fv = and i32 %i.g, 5120
  %spec.select275 = select i1 %i.fu, i32 %i.fv, i32 %i.h ; 2 uses
  %i.fw = and i32 %spec.select275, 1024
  %.not224276 = icmp eq i32 %i.fw, 0
  br i1 %.not224276, label %bb.aj, label %.thread267

.thread:                                          ; preds = %tcp_in_window.exit
  %i.fx = icmp eq i32 %i.ed, %i.eb
  %i.fy = and i32 %i.g, 5120
  %spec.select261 = select i1 %i.fx, i32 %i.fy, i32 %i.h ; 2 uses
  %i.fz = and i32 %spec.select261, 1024
  %.not224262 = icmp eq i32 %i.fz, 0
  br i1 %.not224262, label %bb.aj, label %.thread267

.thread267:                                       ; preds = %tcp_in_window.exit.thread.thread, %.thread
  call void @tcp_reqsk_send_challenge_ack(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  br label %bb.bj

bb.aj:                                            ; preds = %tcp_in_window.exit.thread, %tcp_in_window.exit.thread.thread, %.thread
  %.not224266 = phi i1 [ true, %.thread ], [ true, %tcp_in_window.exit.thread.thread ], [ %.not224, %tcp_in_window.exit.thread ] ; 2 uses
  %spec.select264 = phi i32 [ %spec.select261, %.thread ], [ %spec.select275, %tcp_in_window.exit.thread.thread ], [ %spec.select, %tcp_in_window.exit.thread ] ; 2 uses
  %i.ga = and i32 %spec.select264, 1536
  %.not226 = icmp eq i32 %i.ga, 0
  br i1 %.not226, label %bb.ak, label %bb.be

bb.ak:                                            ; preds = %bb.aj
  %.not227 = icmp eq i32 %spec.select264, 0
  br i1 %.not227, label %bb.bj, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gb = getelementptr i8, ptr %2, i64 309
  %i.gc = load i8, ptr %i.gb, align 1, !range !12, !noundef !13
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.ge = load i8, ptr %i.j, align 2
  %i.gf = and i8 %i.ge, 63                        ; 2 uses
  %.not228 = icmp eq i8 %i.gf, 0
  br i1 %.not228, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gg = getelementptr i8, ptr %2, i64 310       ; 3 uses
  %7 = load i16, ptr %i.gg, align 2
  %8 = and i16 %7, 512
  %.not229.not = icmp eq i16 %8, 0
  br i1 %.not229.not, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.val250 = load i16, ptr %i.b, align 2
  %.val251 = load ptr, ptr %i.c, align 8
  %i.gh = call fastcc zeroext i8 @tcp_accecn_option_init(i16 %.val250, ptr %.val251, i8 noundef zeroext %i.gf) #11 ; 2 uses
  %i.gi = zext nneg i8 %i.gh to i16
  %i.gj = load i16, ptr %i.gg, align 2            ; 2 uses
  %i.gk = shl nuw nsw i16 %i.gi, 8
  %i.gl = and i16 %i.gj, -769
  %i.gm = or disjoint i16 %i.gl, %i.gk            ; 2 uses
  %i.gn = icmp eq i8 %i.gh, 3
  %i.go = and i16 %i.gj, 112
  %i.gp = and i16 %i.gm, -241
  %i.gq = or disjoint i16 %i.go, %i.gp
  %i.gr = or disjoint i16 %i.gq, 128
  %storemerge = select i1 %i.gn, i16 %i.gr, i16 %i.gm
  store i16 %storemerge, ptr %i.gg, align 2
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  br i1 %3, label %bb.bj, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gs = getelementptr i8, ptr %2, i64 147
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = lshr i8 %i.gt, 1
  %i.gv = getelementptr i8, ptr %0, i64 1028
  %i.gw = load volatile i8, ptr %i.gv, align 4
  %i.gx = icmp ult i8 %i.gu, %i.gw
  br i1 %i.gx, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.gy = load i32, ptr %i.en, align 4
  %i.gz = load i32, ptr %i.ec, align 8
  %i.ha = add i32 %i.gz, 1
  %i.hb = icmp eq i32 %i.gy, %i.ha
  br i1 %i.hb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hc = getelementptr i8, ptr %2, i64 232       ; 2 uses
  %i.hd = load i16, ptr %i.hc, align 8
  %i.he = or i16 %i.hd, 4096
  store i16 %i.he, ptr %i.hc, align 8
  %i.hf = getelementptr i8, ptr %0, i64 48
  %.val237 = load ptr, ptr %i.hf, align 8
  %i.hg = getelementptr i8, ptr %.val237, i64 744
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = getelementptr i8, ptr %i.hh, i64 600    ; 2 uses
  call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hi, ptr elementtype(i64) %i.hi) #8, !srcloc !29
  br label %bb.bj

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.hj = getelementptr i8, ptr %0, i64 1224
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = getelementptr i8, ptr %i.hk, i64 40
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = call ptr %i.hm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef null) #9 ; 5 uses
  %.not230 = icmp eq ptr %i.hn, null
  br i1 %.not230, label %bb.ba, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ho = load i8, ptr %i.a, align 1, !range !12, !noundef !13
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.hq = load i16, ptr %i.i, align 4
  %i.hr = and i16 %i.hq, 1
  %.not233 = icmp eq i16 %i.hr, 0
  br i1 %.not233, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hs = load i32, ptr %i.ep, align 8
  %i.ht = load i32, ptr %i.ee, align 8
  %i.hu = sub i32 %i.hs, %i.ht
  %i.hv = icmp slt i32 %i.hu, 0
  br i1 %i.hv, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hx = load i32, ptr %i.hw, align 4
  %i.hy = getelementptr i8, ptr %i.hn, i64 1768
  store i32 %i.hx, ptr %i.hy, align 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.aw, %bb.ax, %bb.au
  %i.hz = getelementptr i8, ptr %i.hn, i64 132    ; 2 uses
  %i.ia = load volatile i32, ptr %i.hz, align 4
  %i.ib = getelementptr i8, ptr %1, i64 152
  %i.ic = load i32, ptr %i.ib, align 8            ; 2 uses
  %.not.i253 = icmp eq i32 %i.ia, %i.ic
  br i1 %.not.i253, label %sock_rps_save_rxhash.exit, label %bb.az, !prof !16

bb.az:                                            ; preds = %bb.ay
  store volatile i32 %i.ic, ptr %i.hz, align 4
  br label %sock_rps_save_rxhash.exit

sock_rps_save_rxhash.exit:                        ; preds = %bb.ay, %bb.az
  call void @tcp_synack_rtt_meas(ptr noundef nonnull %i.hn, ptr noundef %2) #9
  %i.id = load i8, ptr %i.a, align 1, !range !12, !noundef !13 ; 2 uses
  %i.ie = xor i8 %i.id, 1
  store i8 %i.ie, ptr %4, align 1
  %i.if = trunc nuw i8 %i.id to i1
  %i.ig = call ptr @inet_csk_complete_hashdance(ptr noundef %0, ptr noundef nonnull %i.hn, ptr noundef %2, i1 noundef zeroext %i.if) #9
  br label %bb.bj

bb.ba:                                            ; preds = %bb.at
  store i32 40, ptr %5, align 4
  %i.ih = getelementptr i8, ptr %2, i64 96
  %i.ii = load ptr, ptr %i.ih, align 8
  %.not231 = icmp eq ptr %0, %i.ii
  br i1 %.not231, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ij = getelementptr i8, ptr %0, i64 48
  %.val236 = load ptr, ptr %i.ij, align 8
  %i.ik = getelementptr i8, ptr %.val236, i64 744
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = getelementptr i8, ptr %i.il, i64 1032   ; 2 uses
  call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.im, ptr elementtype(i64) %i.im) #8, !srcloc !30
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.in = getelementptr i8, ptr %0, i64 48
  %.val235 = load ptr, ptr %i.in, align 8
  %i.io = getelementptr i8, ptr %.val235, i64 1530
  %i.ip = load volatile i8, ptr %i.io, align 2
  %.not232 = icmp eq i8 %i.ip, 0
  br i1 %.not232, label %bb.bd, label %.thread271

bb.bd:                                            ; preds = %bb.bc
  %i.iq = getelementptr i8, ptr %2, i64 232       ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 8
  %i.is = or i16 %i.ir, 4096
  store i16 %i.is, ptr %i.iq, align 8
  br label %bb.bj

bb.be:                                            ; preds = %bb.aj
  %i.it = getelementptr i8, ptr %0, i64 48
  %.val238 = load ptr, ptr %i.it, align 8
  %i.iu = getelementptr i8, ptr %.val238, i64 736
  %i.iv = load ptr, ptr %i.iu, align 16
  %i.iw = getelementptr i8, ptr %i.iv, i64 56     ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.iw, ptr elementtype(i64) %i.iw) #8, !srcloc !31
  br i1 %.not224266, label %bb.bg, label %bb.bf

.thread271:                                       ; preds = %bb.bc
  br i1 %.not224266, label %.thread274, label %.critedge

.thread274:                                       ; preds = %.thread271
  %i.ix = getelementptr i8, ptr %2, i64 192
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = getelementptr i8, ptr %i.iy, i64 32
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef %0, ptr noundef %1, i32 noundef 10) #9
  br label %.critedge

bb.bf:                                            ; preds = %bb.be
  br i1 %3, label %.thread273, label %.critedge

.thread273:                                       ; preds = %bb.bf
  call void @reqsk_fastopen_remove(ptr noundef %0, ptr noundef %2, i1 noundef zeroext true) #9
  call void @tcp_reset(ptr noundef %0, ptr noundef %1) #9
  br label %bb.bj

bb.bg:                                            ; preds = %bb.be
  %i.jb = getelementptr i8, ptr %2, i64 192
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = getelementptr i8, ptr %i.jc, i64 32
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef %0, ptr noundef %1, i32 noundef 10) #9
  br i1 %3, label %bb.bj, label %.critedge

.critedge:                                        ; preds = %.thread271, %.thread274, %bb.bf, %bb.bg
  %i.jf = call zeroext i1 @inet_csk_reqsk_queue_drop(ptr noundef %0, ptr noundef %2) #9 ; 2 uses
  br i1 %i.jf, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.critedge
  %i.jg = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.jg, align 8
  %i.jh = getelementptr i8, ptr %.val, i64 744
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = getelementptr i8, ptr %i.ji, i64 32     ; 2 uses
  call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.jj, ptr elementtype(i64) %i.jj) #8, !srcloc !32
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.critedge
  %i.jk = xor i1 %i.jf, true
  %i.jl = zext i1 %i.jk to i8
  store i8 %i.jl, ptr %4, align 1
  br label %bb.bj

bb.bj:                                            ; preds = %.thread273, %bb.bg, %bb.bi, %bb.ap, %bb.ak, %bb.af, %bb.ai, %bb.ah, %bb.x, %bb.k, %bb.o, %bb.u, %bb.t, %bb.bd, %sock_rps_save_rxhash.exit, %bb.as, %.thread267
  %.0 = phi ptr [ %0, %bb.x ], [ null, %.thread267 ], [ %0, %bb.ap ], [ null, %bb.ak ], [ null, %bb.as ], [ null, %bb.k ], [ %i.ig, %sock_rps_save_rxhash.exit ], [ null, %bb.bd ], [ null, %bb.af ], [ null, %bb.t ], [ null, %bb.u ], [ null, %bb.o ], [ null, %bb.ah ], [ null, %bb.ai ], [ null, %bb.bi ], [ null, %bb.bg ], [ null, %.thread273 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @tcp_oow_rate_limited(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @tcp_rtx_synack(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mod_timer_pending(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tcp_reqsk_send_challenge_ack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc zeroext range(i8 1, 4) i8 @tcp_accecn_option_init(i16 %.182.val, ptr nofree readonly captures(none) %.200.val, i8 noundef zeroext range(i8 0, 64) %0) unnamed_addr #5 align 16 {
bb.a:
  %i.a = zext i16 %.182.val to i64
  %i.b = getelementptr i8, ptr %.200.val, i64 %i.a
  %i.c = zext nneg i8 %0 to i64
end_hunk_1
