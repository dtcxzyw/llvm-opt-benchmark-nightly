inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@LZWDecode:bb.a
  br i1 %i.s, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds i8, ptr %1, i64 %2
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.1348 = phi ptr [ %i.p, %bb.h ], [ %i.y, %bb.i ] ; 2 uses
  %.0346 = phi ptr [ %i.u, %bb.h ], [ %i.x, %bb.i ]
  %.0314 = phi i64 [ %2, %bb.h ], [ %i.z, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.1348, i64 11
  %i.w = load i8, ptr %i.v, align 1, !tbaa !52
  %i.x = getelementptr inbounds i8, ptr %.0346, i64 -1 ; 2 uses
  store i8 %i.w, ptr %i.x, align 1, !tbaa !58
  %i.y = load ptr, ptr %.1348, align 8, !tbaa !55 ; 2 uses
  %i.z = add nsw i64 %.0314, -1                   ; 2 uses
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = icmp ne ptr %i.y, null
  %i.ac = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.i, label %.thread

bb.j:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds i8, ptr %1, i64 %i.n ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.1351 = phi i64 [ %i.n, %bb.j ], [ %i.ai, %bb.k ]
  %.2349 = phi ptr [ %i.j, %bb.j ], [ %i.ah, %bb.k ] ; 2 uses
  %.0345 = phi ptr [ %i.ad, %bb.j ], [ %i.ag, %bb.k ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.2349, i64 11
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !52
  %i.ag = getelementptr inbounds i8, ptr %.0345, i64 -1 ; 2 uses
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !58
  %i.ah = load ptr, ptr %.2349, align 8, !tbaa !55 ; 2 uses
  %i.ai = add nsw i64 %.1351, -1                  ; 2 uses
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = icmp ne ptr %i.ah, null
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %bb.k, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = sub nsw i64 %2, %i.n
  store i64 0, ptr %i.g, align 8, !tbaa !61
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
  %.3317 = phi i64 [ %i.am, %bb.l ], [ %2, %bb.c ] ; 2 uses
  %.1311 = phi ptr [ %i.ad, %bb.l ], [ %1, %bb.c ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !69 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !56
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !70
  %i.at = sub i64 %i.aq, %i.as
  %i.au = shl i64 %i.at, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !71
  %i.ax = add i64 %i.au, %i.aw                    ; 3 uses
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !71
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !60
  %i.ba = zext i16 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !72 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !73 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !62 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !64 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !63 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !65 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !27 ; 8 uses
  %i.bp = icmp eq i64 %.3317, 0
  br i1 %i.bp, label %.thread451, label %.preheader544

.preheader544:                                    ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4128 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8160 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 81904 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 -16 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.backedge, %.preheader544
  %.0390 = phi i64 [ %i.ba, %.preheader544 ], [ %.0390.be, %.backedge ] ; 6 uses
  %.0382 = phi i64 [ %i.be, %.preheader544 ], [ %.0382.be, %.backedge ]
  %.0377 = phi i64 [ %i.bg, %.preheader544 ], [ %.0377.be, %.backedge ] ; 4 uses
  %.0369 = phi i64 [ %i.bc, %.preheader544 ], [ %.0369.be, %.backedge ] ; 3 uses
  %.0364 = phi ptr [ %i.bk, %.preheader544 ], [ %.0364.be, %.backedge ] ; 17 uses
  %.0359 = phi ptr [ %i.bm, %.preheader544 ], [ %.0359.be, %.backedge ] ; 5 uses
  %.0356 = phi ptr [ %i.bi, %.preheader544 ], [ %.0356.be, %.backedge ] ; 13 uses
  %.0337 = phi i64 [ %i.ax, %.preheader544 ], [ %.0337.be, %.backedge ] ; 7 uses
  %.0329 = phi ptr [ %i.ao, %.preheader544 ], [ %.0329.be, %.backedge ] ; 6 uses
  %.4318 = phi i64 [ %.3317, %.preheader544 ], [ %.4318.be, %.backedge ] ; 22 uses
  %.2312 = phi ptr [ %.1311, %.preheader544 ], [ %.2312.be, %.backedge ] ; 27 uses
  %i.bu = sub nsw i64 %.0382, %.0390              ; 7 uses
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.bw = icmp ugt i64 %.0337, 63
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bx = sub nsw i64 0, %i.bu
  %i.by = shl i64 %.0369, %i.bx
  %.0.copyload = load i64, ptr %.0329, align 1
  %i.bz = tail call i64 @llvm.bswap.i64(i64 %.0.copyload) ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0329, i64 8
  %i.cb = add nsw i64 %i.bu, 64                   ; 2 uses
  %i.cc = add i64 %.0337, -64
  %i.cd = and i64 %i.by, 4294967295
  %i.ce = lshr i64 %i.bz, %i.cb
  %i.cf = or i64 %i.ce, %i.cd
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.cg = icmp samesign ult i64 %.0337, 8
  br i1 %i.cg, label %.loopexit542, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = shl i64 %.0369, 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.0329, i64 1 ; 2 uses
  %i.cj = load i8, ptr %.0329, align 1, !tbaa !58
  %i.ck = zext i8 %i.cj to i64
  %i.cl = or disjoint i64 %i.ch, %i.ck            ; 2 uses
  %i.cm = add nsw i64 %i.bu, 8
  %i.cn = add nsw i64 %.0337, -8
  %i.co = icmp samesign ult i64 %i.bu, -8
  br i1 %i.co, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cp = icmp samesign ult i64 %.0337, 16
  br i1 %i.cp, label %.loopexit542, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = shl i64 %i.cl, 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.0329, i64 2
  %i.cs = load i8, ptr %i.ci, align 1, !tbaa !58
  %i.ct = zext i8 %i.cs to i64
  %i.cu = or disjoint i64 %i.cq, %i.ct
  %i.cv = add nsw i64 %i.bu, 16
  %i.cw = add nsw i64 %.0337, -16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.n
  %.1383 = phi i64 [ %i.cv, %bb.t ], [ %i.cm, %bb.r ], [ %i.bu, %bb.n ] ; 2 uses
  %.1370 = phi i64 [ %i.cu, %bb.t ], [ %i.cl, %bb.r ], [ %.0369, %bb.n ] ; 2 uses
  %.1338 = phi i64 [ %i.cw, %bb.t ], [ %i.cn, %bb.r ], [ %.0337, %bb.n ]
  %.1330 = phi ptr [ %i.cr, %bb.t ], [ %i.ci, %bb.r ], [ %.0329, %bb.n ]
  %i.cx = lshr i64 %.1370, %.1383
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p
  %.2384 = phi i64 [ %i.cb, %bb.p ], [ %.1383, %bb.u ] ; 14 uses
  %.2371 = phi i64 [ %i.bz, %bb.p ], [ %.1370, %bb.u ] ; 14 uses
  %.2339 = phi i64 [ %i.cc, %bb.p ], [ %.1338, %bb.u ] ; 14 uses
  %.2331 = phi ptr [ %i.ca, %bb.p ], [ %.1330, %bb.u ] ; 14 uses
  %.pn = phi i64 [ %i.cf, %bb.p ], [ %i.cx, %bb.u ]
  %.0320 = and i64 %.pn, %.0377                   ; 6 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0320 ; 31 uses
  %i.cz = icmp ugt i64 %.0320, 257
  br i1 %i.cz, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = icmp samesign ult i64 %.0320, 256
  br i1 %i.da, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = icmp eq i64 %.0320, 257
  br i1 %i.db, label %.thread451, label %.preheader632

bb.y:                                             ; preds = %bb.w
  %i.dc = icmp ugt ptr %i.cy, %.0364
  br i1 %i.dc, label %bb.bj, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %.0356, ptr %.0364, align 8, !tbaa !55
  %i.dd = getelementptr inbounds nuw i8, ptr %.0356, i64 10
  %i.de = load i8, ptr %i.dd, align 2, !tbaa !49
  %i.df = getelementptr inbounds nuw i8, ptr %.0364, i64 10
  store i8 %i.de, ptr %i.df, align 2, !tbaa !49
  %i.dg = getelementptr inbounds nuw i8, ptr %.0356, i64 8
  %i.dh = load i16, ptr %i.dg, align 8, !tbaa !54
  %i.di = add i16 %i.dh, 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.0364, i64 8
  store i16 %i.di, ptr %i.dj, align 8, !tbaa !54
  %i.dk = trunc nuw i64 %.0320 to i8              ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0364, i64 11
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !52
  %i.dm = getelementptr inbounds nuw i8, ptr %.0356, i64 12
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !53, !range !74, !noundef !75
  %i.do = getelementptr inbounds nuw i8, ptr %.0356, i64 11
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !52
  %i.dq = zext i8 %i.dp to i64
  %i.dr = icmp eq i64 %.0320, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %.0364, i64 12
  %4 = select i1 %i.dr, i8 %i.dn, i8 0
  store i8 %4, ptr %i.ds, align 4, !tbaa !53
  %i.dt = getelementptr inbounds nuw i8, ptr %.0364, i64 16 ; 4 uses
  %i.du = icmp ugt ptr %i.dt, %.0359
  br i1 %i.du, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dv = tail call i64 @llvm.smin.i64(i64 %.0390, i64 11) ; 2 uses
  %spec.store.select = add nuw nsw i64 %i.dv, 1
  %notmask = shl nsw i64 -2, %i.dv
  %i.dw = xor i64 %notmask, -1                    ; 2 uses
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.dw
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -16
  %.not432 = icmp ult ptr %i.dt, %i.bs
  %spec.select = select i1 %.not432, ptr %i.dt, ptr %i.bt
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1391 = phi i64 [ %.0390, %bb.z ], [ %spec.store.select, %bb.aa ] ; 2 uses
  %.1378 = phi i64 [ %.0377, %bb.z ], [ %i.dw, %bb.aa ] ; 2 uses
  %.1365 = phi ptr [ %i.dt, %bb.z ], [ %spec.select, %bb.aa ] ; 2 uses
  %.1360 = phi ptr [ %.0359, %bb.z ], [ %i.dy, %bb.aa ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.2312, i64 1 ; 2 uses
  store i8 %i.dk, ptr %.2312, align 1, !tbaa !58
  %i.ea = add nsw i64 %.4318, -1                  ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %.thread451, label %.backedge

bb.ac:                                            ; preds = %bb.v
  %.not433 = icmp ult ptr %i.cy, %.0364
  br i1 %.not433, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not434 = icmp eq ptr %i.cy, %.0364
  br i1 %.not434, label %bb.ae, label %bb.bj

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %.0356, i64 10
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !49  ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0364, i64 11
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !52
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cy, i64 10
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !49  ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0364, i64 11
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0356, i64 10
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !49
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ei = phi i8 [ %.pre, %bb.af ], [ %i.ed, %bb.ae ]
  %i.ej = phi i8 [ %i.eg, %bb.af ], [ %i.ed, %bb.ae ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.0356, i64 12
  %i.el = load i8, ptr %i.ek, align 4, !tbaa !53, !range !74, !noundef !75
  %i.em = getelementptr inbounds nuw i8, ptr %.0356, i64 11
  %i.en = load i8, ptr %i.em, align 1, !tbaa !52
  %i.eo = icmp eq i8 %i.en, %i.ej
  %i.ep = getelementptr inbounds nuw i8, ptr %.0364, i64 12
  %5 = select i1 %i.eo, i8 %i.el, i8 0
  store i8 %5, ptr %i.ep, align 4, !tbaa !53
  store ptr %.0356, ptr %.0364, align 8, !tbaa !55
  %i.eq = getelementptr inbounds nuw i8, ptr %.0364, i64 10
  store i8 %i.ei, ptr %i.eq, align 2, !tbaa !49
  %i.er = getelementptr inbounds nuw i8, ptr %.0356, i64 8
  %i.es = load i16, ptr %i.er, align 8, !tbaa !54
  %i.et = add i16 %i.es, 1
  %i.eu = getelementptr inbounds nuw i8, ptr %.0364, i64 8
  store i16 %i.et, ptr %i.eu, align 8, !tbaa !54
  %i.ev = getelementptr inbounds nuw i8, ptr %.0364, i64 16 ; 4 uses
  %i.ew = icmp ugt ptr %i.ev, %.0359
  br i1 %i.ew, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ex = tail call i64 @llvm.smin.i64(i64 %.0390, i64 11) ; 2 uses
  %spec.store.select1 = add nuw nsw i64 %i.ex, 1
  %notmask435 = shl nsw i64 -2, %i.ex
  %i.ey = xor i64 %notmask435, -1                 ; 2 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.ey
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -16
  %.not436 = icmp ult ptr %i.ev, %i.bs
  %spec.select439 = select i1 %.not436, ptr %i.ev, ptr %i.bt
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.2392 = phi i64 [ %.0390, %bb.ag ], [ %spec.store.select1, %bb.ah ] ; 10 uses
  %.2379 = phi i64 [ %.0377, %bb.ag ], [ %i.ey, %bb.ah ] ; 10 uses
  %.2366 = phi ptr [ %i.ev, %bb.ag ], [ %spec.select439, %bb.ah ] ; 10 uses
  %.2361 = phi ptr [ %.0359, %bb.ag ], [ %i.fa, %bb.ah ] ; 10 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.fc = load i16, ptr %i.fb, align 8, !tbaa !54 ; 4 uses
  %i.fd = icmp ult i16 %i.fc, 3
  br i1 %i.fd, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.fe = icmp slt i64 %.4318, 3
  br i1 %i.fe, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ff = icmp eq i64 %.4318, 2
  br i1 %i.ff, label %bb.al, label %.loopexit547

bb.al:                                            ; preds = %bb.ak
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cy, i64 10
  %i.fh = load i16, ptr %i.fg, align 2
  store i16 %i.fh, ptr %.2312, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %.2312, i64 2
  br label %.thread451

bb.am:                                            ; preds = %bb.aj
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cy, i64 10
  %i.fk = load i16, ptr %i.fj, align 2
  store i16 %i.fk, ptr %.2312, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %.2312, i64 2
  %i.fm = add nsw i64 %.4318, -2
  br label %.backedge

bb.an:                                            ; preds = %bb.ai
  %i.fn = icmp eq i16 %i.fc, 3
  br i1 %i.fn, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.fo = icmp slt i64 %.4318, 4
  br i1 %i.fo, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fp = icmp eq i64 %.4318, 3
  br i1 %i.fp, label %bb.aq, label %.loopexit547

bb.aq:                                            ; preds = %bb.ap
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cy, i64 10
  %i.fr = load i8, ptr %i.fq, align 2, !tbaa !49
  store i8 %i.fr, ptr %.2312, align 1, !tbaa !58
  %i.fs = load ptr, ptr %i.cy, align 8, !tbaa !55
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 11
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !52
  %i.fv = getelementptr inbounds nuw i8, ptr %.2312, i64 1
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !58
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cy, i64 11
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !52
  %i.fy = getelementptr inbounds nuw i8, ptr %.2312, i64 2
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !58
  %i.fz = getelementptr inbounds nuw i8, ptr %.2312, i64 3
  br label %.thread451

bb.ar:                                            ; preds = %bb.ao
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cy, i64 10
  %i.gb = load i8, ptr %i.ga, align 2, !tbaa !49
  store i8 %i.gb, ptr %.2312, align 1, !tbaa !58
  %i.gc = load ptr, ptr %i.cy, align 8, !tbaa !55
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 11
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !52
  %i.gf = getelementptr inbounds nuw i8, ptr %.2312, i64 1
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !58
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cy, i64 11
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !52
  %i.gi = getelementptr inbounds nuw i8, ptr %.2312, i64 2
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !58
  %i.gj = getelementptr inbounds nuw i8, ptr %.2312, i64 3
  %i.gk = add nsw i64 %.4318, -3
  br label %.backedge

bb.as:                                            ; preds = %bb.an
  %i.gl = zext i16 %i.fc to i64                   ; 6 uses
  %i.gm = icmp slt i64 %.4318, %i.gl
  br i1 %i.gm, label %.loopexit547, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %i.go = load i8, ptr %i.gn, align 4, !tbaa !53, !range !74, !noundef !75
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gq = getelementptr inbounds nuw i8, ptr %i.cy, i64 11
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr align 1 %.2312, i8 %i.gr, i64 %i.gl, i1 false)
  %i.gs = getelementptr inbounds nuw i8, ptr %.2312, i64 %i.gl ; 2 uses
  %i.gt = sub nsw i64 %.4318, %i.gl               ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %.thread451, label %.backedge

.backedge:                                        ; preds = %bb.au, %.loopexit, %bb.bf, %bb.ab, %bb.am, %bb.ar
  %.0390.be = phi i64 [ %.2392, %bb.au ], [ %.2392, %bb.am ], [ %.2392, %.loopexit ], [ %.1391, %bb.ab ], [ %.2392, %bb.ar ], [ 9, %bb.bf ]
  %.0382.be = phi i64 [ %.2384, %bb.au ], [ %.2384, %bb.am ], [ %.2384, %.loopexit ], [ %.2384, %bb.ab ], [ %.2384, %bb.ar ], [ %.5387, %bb.bf ]
  %.0377.be = phi i64 [ %.2379, %bb.au ], [ %.2379, %bb.am ], [ %.2379, %.loopexit ], [ %.1378, %bb.ab ], [ %.2379, %bb.ar ], [ 511, %bb.bf ]
  %.0369.be = phi i64 [ %.2371, %bb.au ], [ %.2371, %bb.am ], [ %.2371, %.loopexit ], [ %.2371, %bb.ab ], [ %.2371, %bb.ar ], [ %.5374, %bb.bf ]
  %.0364.be = phi ptr [ %.2366, %bb.au ], [ %.2366, %bb.am ], [ %.2366, %.loopexit ], [ %.1365, %bb.ab ], [ %.2366, %bb.ar ], [ %i.bq, %bb.bf ]
  %.0359.be = phi ptr [ %.2361, %bb.au ], [ %.2361, %bb.am ], [ %.2361, %.loopexit ], [ %.1360, %bb.ab ], [ %.2361, %bb.ar ], [ %i.br, %bb.bf ]
  %.0356.be = phi ptr [ %i.cy, %bb.au ], [ %i.cy, %bb.am ], [ %i.cy, %.loopexit ], [ %i.cy, %bb.ab ], [ %i.cy, %bb.ar ], [ %i.ja, %bb.bf ]
  %.0337.be = phi i64 [ %.2339, %bb.au ], [ %.2339, %bb.am ], [ %.2339, %.loopexit ], [ %.2339, %bb.ab ], [ %.2339, %bb.ar ], [ %.5342, %bb.bf ]
  %.0329.be = phi ptr [ %.2331, %bb.au ], [ %.2331, %bb.am ], [ %.2331, %.loopexit ], [ %.2331, %bb.ab ], [ %.2331, %bb.ar ], [ %.5334, %bb.bf ]
  %.4318.be = phi i64 [ %i.gt, %bb.au ], [ %i.fm, %bb.am ], [ %i.hr, %.loopexit ], [ %i.ea, %bb.ab ], [ %i.gk, %bb.ar ], [ %i.iz, %bb.bf ]
  %.2312.be = phi ptr [ %i.gs, %bb.au ], [ %i.fl, %bb.am ], [ %i.gv, %.loopexit ], [ %i.dz, %bb.ab ], [ %i.gj, %bb.ar ], [ %i.iy, %bb.bf ]
  br label %bb.n

bb.av:                                            ; preds = %bb.at
  %i.gv = getelementptr inbounds nuw i8, ptr %.2312, i64 %i.gl ; 6 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cy, i64 11
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !52
  %i.gy = getelementptr inbounds i8, ptr %i.gv, i64 -1
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !58
  %i.gz = load ptr, ptr %i.cy, align 8, !tbaa !55 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 11
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !52
  %i.hc = getelementptr inbounds i8, ptr %i.gv, i64 -2
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !58
  %i.hd = load ptr, ptr %i.gz, align 8, !tbaa !55 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 11
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !52
  %i.hg = getelementptr inbounds i8, ptr %i.gv, i64 -3
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !58
  %i.hh = load ptr, ptr %i.hd, align 8, !tbaa !55 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 11
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !52
  %i.hk = getelementptr inbounds i8, ptr %i.gv, i64 -4 ; 2 uses
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !58
  %i.hl = icmp ugt i16 %i.fc, 4
  br i1 %i.hl, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.av, %.preheader
  %.1323 = phi ptr [ %i.hm, %.preheader ], [ %i.hh, %bb.av ]
  %.0309 = phi ptr [ %i.hp, %.preheader ], [ %i.hk, %bb.av ]
  %i.hm = load ptr, ptr %.1323, align 8, !tbaa !55 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 11
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !52
  %i.hp = getelementptr inbounds i8, ptr %.0309, i64 -1 ; 3 uses
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !58
  %i.hq = icmp ugt ptr %i.hp, %.2312
  br i1 %i.hq, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.av
  %i.hr = sub nsw i64 %.4318, %i.gl               ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %.thread451, label %.backedge

.preheader632:                                    ; preds = %bb.x, %bb.bd
  %.3385 = phi i64 [ %.5387, %bb.bd ], [ %.2384, %bb.x ] ; 7 uses
  %.3372 = phi i64 [ %.5374, %bb.bd ], [ %.2371, %bb.x ] ; 3 uses
  %.3340 = phi i64 [ %.5342, %bb.bd ], [ %.2339, %bb.x ] ; 7 uses
  %.3332 = phi ptr [ %.5334, %bb.bd ], [ %.2331, %bb.x ] ; 6 uses
  %i.ht = add nsw i64 %.3385, -9
  %i.hu = icmp slt i64 %.3385, 9
  br i1 %i.hu, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %.preheader632
  %i.hv = icmp ugt i64 %.3340, 63
  br i1 %i.hv, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hw = sub nsw i64 9, %.3385
  %i.hx = shl i64 %.3372, %i.hw
  %.0.copyload146 = load i64, ptr %.3332, align 1
  %i.hy = tail call i64 @llvm.bswap.i64(i64 %.0.copyload146) ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.3332, i64 8
  %i.ia = add nsw i64 %.3385, 55                  ; 2 uses
  %i.ib = add i64 %.3340, -64
  %i.ic = lshr i64 %i.hy, %i.ia
  %i.id = or i64 %i.ic, %i.hx
  br label %bb.bd

end_hunk_0
