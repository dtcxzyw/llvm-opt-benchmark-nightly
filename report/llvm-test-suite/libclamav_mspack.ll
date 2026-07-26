inline.NumInlined: 60
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 47
begin_hunk_0_@qtm_decompress:bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k
  %.2855 = phi ptr [ %i.cr, %bb.q ], [ %.18541442, %bb.k ] ; 3 uses
  %.2823 = phi ptr [ %i.ct, %bb.q ], [ %.18221443, %bb.k ]
  %i.cu = load i8, ptr %.2855, align 1, !tbaa !31
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.2855, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !31
  %i.cz = zext i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cw, %i.cz
  %i.db = sub nuw nsw i32 16, %i.cg
  %i.dc = shl nuw i32 %i.da, %i.db
  %i.dd = or i32 %i.dc, %.17001445
  %narrow = add nuw nsw i8 %.16941446, 16         ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2855, i64 2
  %.pre1744 = zext nneg i8 %narrow to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader
  %.pre-phi = phi i32 [ %.pre1744, %bb.r ], [ %i.cg, %.preheader ]
  %.3856 = phi ptr [ %i.de, %bb.r ], [ %.18541442, %.preheader ] ; 2 uses
  %.3824 = phi ptr [ %.2823, %bb.r ], [ %.18221443, %.preheader ] ; 2 uses
  %.2701 = phi i32 [ %i.dd, %bb.r ], [ %.17001445, %.preheader ] ; 2 uses
  %.2695 = phi i8 [ %narrow, %bb.r ], [ %.16941446, %.preheader ]
  %i.df = tail call i32 @llvm.umin.i32(i32 %i.cf, i32 %.pre-phi) ; 5 uses
  %i.dg = shl i32 %.17321444, %i.df
  %i.dh = sub nsw i32 32, %i.df
  %i.di = lshr i32 %.2701, %i.dh
  %i.dj = or disjoint i32 %i.di, %i.dg            ; 2 uses
  %i.dk = shl i32 %.2701, %i.df                   ; 2 uses
  %i.dl = trunc nuw i32 %i.df to i8
  %i.dm = sub i8 %.2695, %i.dl                    ; 2 uses
  %i.dn = sub nsw i32 %i.cf, %i.df
  %i.do = and i32 %i.dn, 255                      ; 2 uses
  %.not944 = icmp eq i32 %i.do, 0
  br i1 %.not944, label %bb.t, label %.preheader, !llvm.loop !222

bb.t:                                             ; preds = %bb.s
  %i.dp = trunc i32 %i.dj to i16
  store i8 1, ptr %i.ax, align 2, !tbaa !199
  %.pre1737 = load ptr, ptr %i.e, align 8, !tbaa !203
  %.pre1738 = load ptr, ptr %i.g, align 8, !tbaa !204
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.j
  %i.dq = phi ptr [ %i.cc, %bb.j ], [ %.pre1738, %bb.t ]
  %i.dr = phi ptr [ %i.cd, %bb.j ], [ %.pre1737, %bb.t ]
  %.4857 = phi ptr [ %.08531588, %bb.j ], [ %.3856, %bb.t ] ; 2 uses
  %.4825 = phi ptr [ %.08211589, %bb.j ], [ %.3824, %bb.t ] ; 2 uses
  %.1769 = phi i16 [ %.07681591, %bb.j ], [ -1, %bb.t ] ; 2 uses
  %.1751 = phi i16 [ %.07501592, %bb.j ], [ 0, %bb.t ] ; 2 uses
  %.2733 = phi i16 [ %.07311593, %bb.j ], [ %i.dp, %bb.t ] ; 2 uses
  %.3702 = phi i32 [ %.06991594, %bb.j ], [ %i.dk, %bb.t ] ; 2 uses
  %.3696 = phi i8 [ %.06931595, %bb.j ], [ %i.dm, %bb.t ] ; 2 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dq to i64
  %.neg = sub i64 %.17921590, %i.ds
  %i.du = add i64 %.neg, %i.dt
  %i.dv = trunc i64 %i.du to i32
  %i.dw = add i32 %.08991586, %i.dv
  %i.dx = add i32 %.08961587, 32768
  %spec.select1015 = tail call i32 @llvm.umin.i32(i32 %i.dx, i32 %i.dw) ; 2 uses
  %i.dy = icmp ult i32 %.08991586, %spec.select1015
  br i1 %i.dy, label %.lr.ph1571, label %._crit_edge1572

.lr.ph1571:                                       ; preds = %bb.u, %bb.gc
  %.46971569 = phi i8 [ %.26, %bb.gc ], [ %.3696, %bb.u ]
  %.47031568 = phi i32 [ %.26725, %bb.gc ], [ %.3702, %bb.u ]
  %.37341567 = phi i16 [ %.18749, %bb.gc ], [ %.2733, %bb.u ] ; 2 uses
  %.27521566 = phi i16 [ %.17767, %bb.gc ], [ %.1751, %bb.u ] ; 3 uses
  %.27701565 = phi i16 [ %.17785, %bb.gc ], [ %.1769, %bb.u ]
  %.58261564 = phi ptr [ %.37, %bb.gc ], [ %.4825, %bb.u ]
  %.58581563 = phi ptr [ %.37890, %bb.gc ], [ %.4857, %bb.u ]
  %.19001562 = phi i32 [ %.3902, %bb.gc ], [ %.08991586, %bb.u ] ; 6 uses
  %i.dz = zext i16 %.27701565 to i32
  %i.ea = zext i16 %.27521566 to i32              ; 2 uses
  %i.eb = sub nsw i32 %i.dz, %i.ea                ; 2 uses
  %i.ec = load ptr, ptr %i.bd, align 8, !tbaa !223 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 2 ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !212
  %i.ef = zext i16 %i.ee to i32                   ; 3 uses
  %i.eg = load i32, ptr %i.be, align 4, !tbaa !224 ; 3 uses
  %i.eh = icmp sgt i32 %i.eg, 1
  br i1 %i.eh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph1571
  %i.ei = zext i16 %.37341567 to i32
  %reass.sub = sub nsw i32 %i.ei, %i.ea
  %i.ej = add nsw i32 %reass.sub, 1
  %i.ek = mul nsw i32 %i.ej, %i.ef
  %i.el = add nsw i32 %i.ek, -1
  %i.em = and i32 %i.eb, 65535
  %i.en = add nuw nsw i32 %i.em, 1
  %i.eo = udiv i32 %i.el, %i.en
  %i.ep = trunc i32 %i.eo to i16
  %wide.trip.count = zext nneg i32 %i.eg to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  %i.es = load i16, ptr %i.er, align 2, !tbaa !212
  %.not957 = icmp ugt i16 %i.es, %i.ep
  br i1 %.not957, label %bb.w, label %._crit_edge.loopexit.split.loop.exit

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !225

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.v
  %i.et = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.w, %._crit_edge.loopexit.split.loop.exit, %.lr.ph1571
  %.1797.lcssa = phi i32 [ 1, %.lr.ph1571 ], [ %i.et, %._crit_edge.loopexit.split.loop.exit ], [ %i.eg, %bb.w ] ; 2 uses
  %i.eu = zext nneg i32 %.1797.lcssa to i64
  %i.ev = getelementptr [4 x i8], ptr %i.ec, i64 %i.eu ; 3 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 -4
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !210 ; 4 uses
  %i.ey = getelementptr i8, ptr %i.ev, i64 -2
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !212
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !212
  %i.fc = sext i32 %.1797.lcssa to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %._crit_edge
  %indvars.iv1693 = phi i64 [ %indvars.iv.next1694, %bb.x ], [ %i.fc, %._crit_edge ] ; 2 uses
  %indvars.iv.next1694 = add nsw i64 %indvars.iv1693, -1 ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv.next1694
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 2 ; 2 uses
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !212
  %i.fg = add i16 %i.ff, 8
  store i16 %i.fg, ptr %i.fe, align 2, !tbaa !212
  %i.fh = icmp sgt i64 %indvars.iv1693, 1
  br i1 %i.fh, label %bb.x, label %bb.y, !llvm.loop !226

bb.y:                                             ; preds = %bb.x
  %i.fi = add nsw i32 %i.eb, 1                    ; 2 uses
  %i.fj = zext i16 %i.ez to i32
  %i.fk = mul i32 %i.fi, %i.fj
  %i.fl = udiv i32 %i.fk, %i.ef
  %i.fm = trunc i32 %i.fl to i16
  %i.fn = add i16 %.27521566, -1
  %i.fo = add i16 %i.fn, %i.fm
  %i.fp = zext i16 %i.fb to i32
  %i.fq = mul i32 %i.fi, %i.fp
  %i.fr = udiv i32 %i.fq, %i.ef
  %i.fs = trunc i32 %i.fr to i16
  %i.ft = add i16 %.27521566, %i.fs
  %i.fu = load i16, ptr %i.ed, align 2, !tbaa !212
  %i.fv = icmp ugt i16 %i.fu, 3800
  br i1 %i.fv, label %bb.z, label %.preheader2073

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @qtm_update_model(ptr noundef %i.bc)
  br label %.preheader2073

.preheader2073:                                   ; preds = %bb.z, %bb.y
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader2073, %bb.am
  %.6859 = phi ptr [ %.8861, %bb.am ], [ %.58581563, %.preheader2073 ] ; 7 uses
  %.6827 = phi ptr [ %.8829, %bb.am ], [ %.58261564, %.preheader2073 ] ; 7 uses
  %.3771 = phi i16 [ %i.gg, %bb.am ], [ %i.fo, %.preheader2073 ] ; 3 uses
  %.3753 = phi i16 [ %i.ge, %bb.am ], [ %i.ft, %.preheader2073 ] ; 11 uses
  %.4735 = phi i16 [ %i.hi, %bb.am ], [ %.37341567, %.preheader2073 ] ; 10 uses
  %.5704 = phi i32 [ %i.hj, %bb.am ], [ %.47031568, %.preheader2073 ] ; 6 uses
  %.5698 = phi i8 [ %i.hk, %bb.am ], [ %.46971569, %.preheader2073 ] ; 8 uses
  %i.fw = zext i16 %.3753 to i32                  ; 10 uses
  %i.fx = zext i16 %.3771 to i32                  ; 6 uses
  %i.fy = xor i32 %i.fw, %i.fx
  %.not958 = icmp samesign ult i32 %i.fy, 32768
  br i1 %.not958, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fz = and i32 %i.fw, 16384
  %.not959 = icmp ne i32 %i.fz, 0
  %i.ga = and i32 %i.fx, 16384
  %.not960 = icmp eq i32 %i.ga, 0
  %or.cond1016 = and i1 %.not960, %.not959
  br i1 %or.cond1016, label %bb.ac, label %bb.an

bb.ac:                                            ; preds = %bb.ab
  %i.gb = xor i16 %.4735, 16384
  %i.gc = and i16 %.3753, 16383
  %i.gd = or i16 %.3771, 16384
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.4772 = phi i16 [ %i.gd, %bb.ac ], [ %.3771, %bb.aa ]
  %.4754 = phi i16 [ %i.gc, %bb.ac ], [ %.3753, %bb.aa ]
  %.5736 = phi i16 [ %i.gb, %bb.ac ], [ %.4735, %bb.aa ]
  %i.ge = shl i16 %.4754, 1
  %i.gf = shl i16 %.4772, 1
  %i.gg = or disjoint i16 %i.gf, 1
  %i.gh = zext i8 %.5698 to i32
  %i.gi = icmp ult i8 %.5698, 17
  br i1 %i.gi, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %.not961 = icmp ult ptr %.6859, %.6827
  br i1 %.not961, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gj = load ptr, ptr %i.ay, align 8, !tbaa !217 ; 2 uses
  %.not.i1022 = icmp eq ptr %i.gj, null
  %i.gk = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 2 uses
  %i.gl = load i32, ptr %i.bb, align 4, !tbaa !195 ; 2 uses
  br i1 %.not.i1022, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gm = load ptr, ptr %i.az, align 8, !tbaa !216
  %i.gn = tail call i32 %i.gj(ptr noundef %i.gm, ptr noundef %i.gk, i32 noundef %i.gl) #11, !inline_history !221
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.go = load i32, ptr %0, align 8, !tbaa !192
  %i.gp = tail call i32 @cli_readn(i32 noundef %i.go, ptr noundef %i.gk, i32 noundef %i.gl) #11
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gq = phi i32 [ %i.gn, %bb.ag ], [ %i.gp, %bb.ah ] ; 2 uses
  %i.gr = icmp slt i32 %i.gq, 0
  br i1 %i.gr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.ak:                                            ; preds = %bb.ai
  %i.gs = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 3 uses
  store ptr %i.gs, ptr %i.y, align 8, !tbaa !202
  %i.gt = zext nneg i32 %i.gq to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gt ; 2 uses
  store ptr %i.gu, ptr %i.aa, align 8, !tbaa !201
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ae
  %.7860 = phi ptr [ %i.gs, %bb.ak ], [ %.6859, %bb.ae ] ; 3 uses
  %.7828 = phi ptr [ %i.gu, %bb.ak ], [ %.6827, %bb.ae ]
  %i.gv = load i8, ptr %.7860, align 1, !tbaa !31
  %i.gw = zext i8 %i.gv to i32
  %i.gx = shl nuw nsw i32 %i.gw, 8
  %i.gy = getelementptr inbounds nuw i8, ptr %.7860, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !31
  %i.ha = zext i8 %i.gz to i32
  %i.hb = or disjoint i32 %i.gx, %i.ha
  %i.hc = sub nuw nsw i32 16, %i.gh
  %i.hd = shl nuw i32 %i.hb, %i.hc
  %i.he = or i32 %i.hd, %.5704
  %narrow963 = add nuw nsw i8 %.5698, 16
  %i.hf = getelementptr inbounds nuw i8, ptr %.7860, i64 2
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ad
  %.8861 = phi ptr [ %i.hf, %bb.al ], [ %.6859, %bb.ad ]
  %.8829 = phi ptr [ %.7828, %bb.al ], [ %.6827, %bb.ad ]
  %.6705 = phi i32 [ %i.he, %bb.al ], [ %.5704, %bb.ad ] ; 2 uses
  %.6 = phi i8 [ %narrow963, %bb.al ], [ %.5698, %bb.ad ]
  %i.hg = zext i16 %.5736 to i32
  %i.hh = tail call i32 @llvm.fshl.i32(i32 %i.hg, i32 %.6705, i32 1)
  %i.hi = trunc i32 %i.hh to i16
  %i.hj = shl i32 %.6705, 1
  %i.hk = add i8 %.6, -1
  br label %bb.aa

bb.an:                                            ; preds = %bb.ab
  %i.hl = icmp ult i16 %i.ex, 4
  br i1 %i.hl, label %bb.ao, label %bb.bk

bb.ao:                                            ; preds = %bb.an
  switch i16 %i.ex, label %bb.aq [
    i16 0, label %bb.ar
    i16 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.hm = icmp eq i16 %i.ex, 2
  %.v = select i1 %i.hm, i64 400, i64 416
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 %.v
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ao, %bb.ap, %bb.aq
  %i.ho = phi ptr [ %i.hn, %bb.aq ], [ %i.bw, %bb.ap ], [ %i.bx, %bb.ao ] ; 3 uses
  %i.hp = sub nsw i32 %i.fx, %i.fw                ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !209 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 2 ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !212
  %i.hu = zext i16 %i.ht to i32                   ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !208 ; 3 uses
  %i.hx = icmp sgt i32 %i.hw, 1
  br i1 %i.hx, label %.lr.ph1557, label %._crit_edge1558

.lr.ph1557:                                       ; preds = %bb.ar
  %i.hy = zext i16 %.4735 to i32
  %reass.sub1614 = sub nsw i32 %i.hy, %i.fw
  %i.hz = add nsw i32 %reass.sub1614, 1
  %i.ia = mul nsw i32 %i.hz, %i.hu
  %i.ib = add nsw i32 %i.ia, -1
  %i.ic = and i32 %i.hp, 65535
  %i.id = add nuw nsw i32 %i.ic, 1
  %i.ie = udiv i32 %i.ib, %i.id
  %i.if = trunc i32 %i.ie to i16
  %wide.trip.count1731 = zext nneg i32 %i.hw to i64
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph1557, %bb.at
  %indvars.iv1728 = phi i64 [ 1, %.lr.ph1557 ], [ %indvars.iv.next1729, %bb.at ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv1728
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !212
  %.not1008 = icmp ugt i16 %i.ii, %i.if
  br i1 %.not1008, label %bb.at, label %._crit_edge1558.loopexit.split.loop.exit

bb.at:                                            ; preds = %bb.as
  %indvars.iv.next1729 = add nuw nsw i64 %indvars.iv1728, 1 ; 2 uses
  %exitcond1732.not = icmp eq i64 %indvars.iv.next1729, %wide.trip.count1731
  br i1 %exitcond1732.not, label %._crit_edge1558, label %bb.as, !llvm.loop !227

._crit_edge1558.loopexit.split.loop.exit:         ; preds = %bb.as
  %i.ij = trunc nuw nsw i64 %indvars.iv1728 to i32
  br label %._crit_edge1558

._crit_edge1558:                                  ; preds = %bb.at, %._crit_edge1558.loopexit.split.loop.exit, %bb.ar
  %.3799.lcssa = phi i32 [ 1, %bb.ar ], [ %i.ij, %._crit_edge1558.loopexit.split.loop.exit ], [ %i.hw, %bb.at ] ; 2 uses
  %i.ik = zext nneg i32 %.3799.lcssa to i64
  %i.il = getelementptr [4 x i8], ptr %i.hr, i64 %i.ik ; 3 uses
  %i.im = getelementptr i8, ptr %i.il, i64 -4
  %i.in = load i16, ptr %i.im, align 2, !tbaa !210
  %i.io = getelementptr i8, ptr %i.il, i64 -2
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !212
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !212
  %i.is = sext i32 %.3799.lcssa to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %._crit_edge1558
  %indvars.iv1733 = phi i64 [ %indvars.iv.next1734, %bb.au ], [ %i.is, %._crit_edge1558 ] ; 2 uses
  %indvars.iv.next1734 = add nsw i64 %indvars.iv1733, -1 ; 2 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv.next1734
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 2 ; 2 uses
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !212
  %i.iw = add i16 %i.iv, 8
  store i16 %i.iw, ptr %i.iu, align 2, !tbaa !212
  %i.ix = icmp sgt i64 %indvars.iv1733, 1
  br i1 %i.ix, label %bb.au, label %bb.av, !llvm.loop !228

bb.av:                                            ; preds = %bb.au
  %i.iy = add nsw i32 %i.hp, 1                    ; 2 uses
  %i.iz = zext i16 %i.ip to i32
  %i.ja = mul i32 %i.iy, %i.iz
  %i.jb = udiv i32 %i.ja, %i.hu
  %i.jc = trunc i32 %i.jb to i16
  %i.jd = add i16 %.3753, -1
  %i.je = add i16 %i.jd, %i.jc
  %i.jf = zext i16 %i.ir to i32
  %i.jg = mul i32 %i.iy, %i.jf
  %i.jh = udiv i32 %i.jg, %i.hu
  %i.ji = trunc i32 %i.jh to i16
  %i.jj = add i16 %.3753, %i.ji
  %i.jk = load i16, ptr %i.hs, align 2, !tbaa !212
  %i.jl = icmp ugt i16 %i.jk, 3800
  br i1 %i.jl, label %bb.aw, label %.preheader2065

bb.aw:                                            ; preds = %bb.av
  tail call fastcc void @qtm_update_model(ptr noundef %i.ho)
  br label %.preheader2065

.preheader2065:                                   ; preds = %bb.aw, %bb.av
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader2065, %bb.bi
  %.9862 = phi ptr [ %.11864, %bb.bi ], [ %.6859, %.preheader2065 ] ; 4 uses
  %.9830 = phi ptr [ %.11832, %bb.bi ], [ %.6827, %.preheader2065 ] ; 4 uses
  %.5773 = phi i16 [ %i.jw, %bb.bi ], [ %i.je, %.preheader2065 ] ; 4 uses
  %.5755 = phi i16 [ %i.ju, %bb.bi ], [ %i.jj, %.preheader2065 ] ; 4 uses
  %.6737 = phi i16 [ %i.ky, %bb.bi ], [ %.4735, %.preheader2065 ] ; 3 uses
  %.7706 = phi i32 [ %i.kz, %bb.bi ], [ %.5704, %.preheader2065 ] ; 3 uses
  %.7 = phi i8 [ %i.la, %bb.bi ], [ %.5698, %.preheader2065 ] ; 5 uses
  %i.jm = zext i16 %.5755 to i32                  ; 2 uses
  %i.jn = zext i16 %.5773 to i32                  ; 2 uses
  %i.jo = xor i32 %i.jm, %i.jn
  %.not1009 = icmp samesign ult i32 %i.jo, 32768
  br i1 %.not1009, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jp = and i32 %i.jm, 16384
  %.not1010 = icmp ne i32 %i.jp, 0
  %i.jq = and i32 %i.jn, 16384
  %.not1011 = icmp eq i32 %i.jq, 0
  %or.cond1017 = and i1 %.not1011, %.not1010
  br i1 %or.cond1017, label %bb.az, label %.thread

bb.az:                                            ; preds = %bb.ay
  %i.jr = xor i16 %.6737, 16384
  %i.js = and i16 %.5755, 16383
  %i.jt = or i16 %.5773, 16384
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.6774 = phi i16 [ %i.jt, %bb.az ], [ %.5773, %bb.ax ]
  %.6756 = phi i16 [ %i.js, %bb.az ], [ %.5755, %bb.ax ]
  %.7738 = phi i16 [ %i.jr, %bb.az ], [ %.6737, %bb.ax ]
  %i.ju = shl i16 %.6756, 1
  %i.jv = shl i16 %.6774, 1
  %i.jw = or disjoint i16 %i.jv, 1
  %i.jx = zext i8 %.7 to i32
  %i.jy = icmp ult i8 %.7, 17
  br i1 %i.jy, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %.not1012 = icmp ult ptr %.9862, %.9830
  br i1 %.not1012, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jz = load ptr, ptr %i.ay, align 8, !tbaa !217 ; 2 uses
  %.not.i1025 = icmp eq ptr %i.jz, null
  %i.ka = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 2 uses
  %i.kb = load i32, ptr %i.bb, align 4, !tbaa !195 ; 2 uses
  br i1 %.not.i1025, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kc = load ptr, ptr %i.az, align 8, !tbaa !216
  %i.kd = tail call i32 %i.jz(ptr noundef %i.kc, ptr noundef %i.ka, i32 noundef %i.kb) #11, !inline_history !221
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.ke = load i32, ptr %0, align 8, !tbaa !192
  %i.kf = tail call i32 @cli_readn(i32 noundef %i.ke, ptr noundef %i.ka, i32 noundef %i.kb) #11
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.kg = phi i32 [ %i.kd, %bb.bd ], [ %i.kf, %bb.be ] ; 2 uses
  %i.kh = icmp slt i32 %i.kg, 0
  br i1 %i.kh, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ki = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 3 uses
  store ptr %i.ki, ptr %i.y, align 8, !tbaa !202
  %i.kj = zext nneg i32 %i.kg to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kj ; 2 uses
  store ptr %i.kk, ptr %i.aa, align 8, !tbaa !201
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bb
  %.10863 = phi ptr [ %i.ki, %bb.bg ], [ %.9862, %bb.bb ] ; 3 uses
  %.10831 = phi ptr [ %i.kk, %bb.bg ], [ %.9830, %bb.bb ]
  %i.kl = load i8, ptr %.10863, align 1, !tbaa !31
  %i.km = zext i8 %i.kl to i32
  %i.kn = shl nuw nsw i32 %i.km, 8
  %i.ko = getelementptr inbounds nuw i8, ptr %.10863, i64 1
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !31
  %i.kq = zext i8 %i.kp to i32
  %i.kr = or disjoint i32 %i.kn, %i.kq
  %i.ks = sub nuw nsw i32 16, %i.jx
  %i.kt = shl nuw i32 %i.kr, %i.ks
  %i.ku = or i32 %i.kt, %.7706
  %narrow1014 = add nuw nsw i8 %.7, 16
  %i.kv = getelementptr inbounds nuw i8, ptr %.10863, i64 2
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.ba
  %.11864 = phi ptr [ %i.kv, %bb.bh ], [ %.9862, %bb.ba ]
  %.11832 = phi ptr [ %.10831, %bb.bh ], [ %.9830, %bb.ba ]
  %.8707 = phi i32 [ %i.ku, %bb.bh ], [ %.7706, %bb.ba ] ; 2 uses
  %.8 = phi i8 [ %narrow1014, %bb.bh ], [ %.7, %bb.ba ]
  %i.kw = zext i16 %.7738 to i32
  %i.kx = tail call i32 @llvm.fshl.i32(i32 %i.kw, i32 %.8707, i32 1)
  %i.ky = trunc i32 %i.kx to i16
  %i.kz = shl i32 %.8707, 1
  %i.la = add i8 %.8, -1
  br label %bb.ax

.thread:                                          ; preds = %bb.ay
  %i.lb = trunc i16 %i.in to i8
  %i.lc = add i32 %.19001562, 1
  %i.ld = zext i32 %.19001562 to i64
  %i.le = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ld
  store i8 %i.lb, ptr %i.le, align 1, !tbaa !31
  br label %bb.gc

bb.bj:                                            ; preds = %bb.bf
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.bk:                                            ; preds = %bb.an
  switch i16 %i.ex, label %bb.fw [
    i16 4, label %bb.bl
    i16 5, label %bb.co
    i16 6, label %bb.dr
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.lf = sub nsw i32 %i.fx, %i.fw                ; 2 uses
  %i.lg = load ptr, ptr %i.bt, align 8, !tbaa !229 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 2 ; 2 uses
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !212
  %i.lj = zext i16 %i.li to i32                   ; 3 uses
  %i.lk = load i32, ptr %i.bu, align 4, !tbaa !230 ; 3 uses
  %i.ll = icmp sgt i32 %i.lk, 1
  br i1 %i.ll, label %.lr.ph1519, label %._crit_edge1520

.lr.ph1519:                                       ; preds = %bb.bl
  %i.lm = zext i16 %.4735 to i32
  %reass.sub1613 = sub nsw i32 %i.lm, %i.fw
  %i.ln = add nsw i32 %reass.sub1613, 1
  %i.lo = mul nsw i32 %i.ln, %i.lj
  %i.lp = add nsw i32 %i.lo, -1
  %i.lq = and i32 %i.lf, 65535
  %i.lr = add nuw nsw i32 %i.lq, 1
  %i.ls = udiv i32 %i.lp, %i.lr
  %i.lt = trunc i32 %i.ls to i16
  %wide.trip.count1723 = zext nneg i32 %i.lk to i64
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph1519, %bb.bn
  %indvars.iv1720 = phi i64 [ 1, %.lr.ph1519 ], [ %indvars.iv.next1721, %bb.bn ] ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv1720
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 2
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !212
  %.not997 = icmp ugt i16 %i.lw, %i.lt
  br i1 %.not997, label %bb.bn, label %._crit_edge1520.loopexit.split.loop.exit

bb.bn:                                            ; preds = %bb.bm
  %indvars.iv.next1721 = add nuw nsw i64 %indvars.iv1720, 1 ; 2 uses
  %exitcond1724.not = icmp eq i64 %indvars.iv.next1721, %wide.trip.count1723
  br i1 %exitcond1724.not, label %._crit_edge1520, label %bb.bm, !llvm.loop !231

._crit_edge1520.loopexit.split.loop.exit:         ; preds = %bb.bm
  %i.lx = trunc nuw nsw i64 %indvars.iv1720 to i32
  br label %._crit_edge1520

._crit_edge1520:                                  ; preds = %bb.bn, %._crit_edge1520.loopexit.split.loop.exit, %bb.bl
  %.5801.lcssa = phi i32 [ 1, %bb.bl ], [ %i.lx, %._crit_edge1520.loopexit.split.loop.exit ], [ %i.lk, %bb.bn ] ; 2 uses
  %i.ly = zext nneg i32 %.5801.lcssa to i64
  %i.lz = getelementptr [4 x i8], ptr %i.lg, i64 %i.ly ; 3 uses
  %i.ma = getelementptr i8, ptr %i.lz, i64 -4
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !210
  %i.mc = getelementptr i8, ptr %i.lz, i64 -2
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !212
  %i.me = getelementptr inbounds nuw i8, ptr %i.lz, i64 2
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !212
  %i.mg = sext i32 %.5801.lcssa to i64
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %._crit_edge1520
  %indvars.iv1725 = phi i64 [ %indvars.iv.next1726, %bb.bo ], [ %i.mg, %._crit_edge1520 ] ; 2 uses
  %indvars.iv.next1726 = add nsw i64 %indvars.iv1725, -1 ; 2 uses
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %indvars.iv.next1726
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 2 ; 2 uses
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !212
  %i.mk = add i16 %i.mj, 8
  store i16 %i.mk, ptr %i.mi, align 2, !tbaa !212
  %i.ml = icmp sgt i64 %indvars.iv1725, 1
  br i1 %i.ml, label %bb.bo, label %bb.bp, !llvm.loop !232

bb.bp:                                            ; preds = %bb.bo
  %i.mm = add nsw i32 %i.lf, 1                    ; 2 uses
  %i.mn = zext i16 %i.md to i32
  %i.mo = mul i32 %i.mm, %i.mn
  %i.mp = udiv i32 %i.mo, %i.lj
  %i.mq = trunc i32 %i.mp to i16
  %i.mr = add i16 %.3753, -1
  %i.ms = add i16 %i.mr, %i.mq
  %i.mt = zext i16 %i.mf to i32
  %i.mu = mul i32 %i.mm, %i.mt
  %i.mv = udiv i32 %i.mu, %i.lj
  %i.mw = trunc i32 %i.mv to i16
  %i.mx = add i16 %.3753, %i.mw
  %i.my = load i16, ptr %i.lh, align 2, !tbaa !212
  %i.mz = icmp ugt i16 %i.my, 3800
  br i1 %i.mz, label %bb.bq, label %.preheader2067

bb.bq:                                            ; preds = %bb.bp
  tail call fastcc void @qtm_update_model(ptr noundef %i.bs)
  br label %.preheader2067

.preheader2067:                                   ; preds = %bb.bq, %bb.bp
  br label %bb.br

bb.br:                                            ; preds = %.preheader2067, %bb.cd
  %.12865 = phi ptr [ %.14867, %bb.cd ], [ %.6859, %.preheader2067 ] ; 5 uses
  %.12833 = phi ptr [ %.14835, %bb.cd ], [ %.6827, %.preheader2067 ] ; 5 uses
  %.8776 = phi i16 [ %i.nk, %bb.cd ], [ %i.ms, %.preheader2067 ] ; 5 uses
  %.8758 = phi i16 [ %i.ni, %bb.cd ], [ %i.mx, %.preheader2067 ] ; 5 uses
  %.9740 = phi i16 [ %i.om, %bb.cd ], [ %.4735, %.preheader2067 ] ; 4 uses
  %.9708 = phi i32 [ %i.on, %bb.cd ], [ %.5704, %.preheader2067 ] ; 4 uses
  %.9 = phi i8 [ %i.oo, %bb.cd ], [ %.5698, %.preheader2067 ] ; 6 uses
  %i.na = zext i16 %.8758 to i32                  ; 2 uses
  %i.nb = zext i16 %.8776 to i32                  ; 2 uses
  %i.nc = xor i32 %i.na, %i.nb
  %.not998 = icmp samesign ult i32 %i.nc, 32768
  br i1 %.not998, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.nd = and i32 %i.na, 16384
  %.not999 = icmp ne i32 %i.nd, 0
  %i.ne = and i32 %i.nb, 16384
  %.not1000 = icmp eq i32 %i.ne, 0
  %or.cond1018 = and i1 %.not1000, %.not999
  br i1 %or.cond1018, label %bb.bt, label %bb.ce

bb.bt:                                            ; preds = %bb.bs
  %i.nf = xor i16 %.9740, 16384
  %i.ng = and i16 %.8758, 16383
  %i.nh = or i16 %.8776, 16384
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.br
  %.9777 = phi i16 [ %i.nh, %bb.bt ], [ %.8776, %bb.br ]
  %.9759 = phi i16 [ %i.ng, %bb.bt ], [ %.8758, %bb.br ]
  %.10741 = phi i16 [ %i.nf, %bb.bt ], [ %.9740, %bb.br ]
  %i.ni = shl i16 %.9759, 1
  %i.nj = shl i16 %.9777, 1
  %i.nk = or disjoint i16 %i.nj, 1
  %i.nl = zext i8 %.9 to i32
  %i.nm = icmp ult i8 %.9, 17
  br i1 %i.nm, label %bb.bv, label %bb.cd

bb.bv:                                            ; preds = %bb.bu
  %.not1001 = icmp ult ptr %.12865, %.12833
  br i1 %.not1001, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nn = load ptr, ptr %i.ay, align 8, !tbaa !217 ; 2 uses
  %.not.i1028 = icmp eq ptr %i.nn, null
  %i.no = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 2 uses
  %i.np = load i32, ptr %i.bb, align 4, !tbaa !195 ; 2 uses
  br i1 %.not.i1028, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nq = load ptr, ptr %i.az, align 8, !tbaa !216
  %i.nr = tail call i32 %i.nn(ptr noundef %i.nq, ptr noundef %i.no, i32 noundef %i.np) #11, !inline_history !221
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.ns = load i32, ptr %0, align 8, !tbaa !192
  %i.nt = tail call i32 @cli_readn(i32 noundef %i.ns, ptr noundef %i.no, i32 noundef %i.np) #11
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.nu = phi i32 [ %i.nr, %bb.bx ], [ %i.nt, %bb.by ] ; 2 uses
  %i.nv = icmp slt i32 %i.nu, 0
  br i1 %i.nv, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.cb:                                            ; preds = %bb.bz
  %i.nw = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 3 uses
  store ptr %i.nw, ptr %i.y, align 8, !tbaa !202
  %i.nx = zext nneg i32 %i.nu to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.nx ; 2 uses
  store ptr %i.ny, ptr %i.aa, align 8, !tbaa !201
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bv
  %.13866 = phi ptr [ %i.nw, %bb.cb ], [ %.12865, %bb.bv ] ; 3 uses
  %.13834 = phi ptr [ %i.ny, %bb.cb ], [ %.12833, %bb.bv ]
  %i.nz = load i8, ptr %.13866, align 1, !tbaa !31
  %i.oa = zext i8 %i.nz to i32
  %i.ob = shl nuw nsw i32 %i.oa, 8
  %i.oc = getelementptr inbounds nuw i8, ptr %.13866, i64 1
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !31
  %i.oe = zext i8 %i.od to i32
  %i.of = or disjoint i32 %i.ob, %i.oe
  %i.og = sub nuw nsw i32 16, %i.nl
  %i.oh = shl nuw i32 %i.of, %i.og
  %i.oi = or i32 %i.oh, %.9708
  %narrow1003 = add nuw nsw i8 %.9, 16
  %i.oj = getelementptr inbounds nuw i8, ptr %.13866, i64 2
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bu
  %.14867 = phi ptr [ %i.oj, %bb.cc ], [ %.12865, %bb.bu ]
  %.14835 = phi ptr [ %.13834, %bb.cc ], [ %.12833, %bb.bu ]
  %.10709 = phi i32 [ %i.oi, %bb.cc ], [ %.9708, %bb.bu ] ; 2 uses
  %.10 = phi i8 [ %narrow1003, %bb.cc ], [ %.9, %bb.bu ]
  %i.ok = zext i16 %.10741 to i32
  %i.ol = tail call i32 @llvm.fshl.i32(i32 %i.ok, i32 %.10709, i32 1)
  %i.om = trunc i32 %i.ol to i16
  %i.on = shl i32 %.10709, 1
  %i.oo = add i8 %.10, -1
  br label %bb.br

bb.ce:                                            ; preds = %bb.bs
  %i.op = zext i16 %i.mb to i64                   ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !31  ; 2 uses
  %.not10041524 = icmp eq i8 %i.or, 0
  br i1 %.not10041524, label %._crit_edge1533, label %.lr.ph1532

.lr.ph1532:                                       ; preds = %bb.ce, %bb.cn
  %.16891530 = phi i8 [ %i.pz, %bb.cn ], [ %i.or, %bb.ce ] ; 2 uses
  %.111529 = phi i8 [ %i.py, %bb.cn ], [ %.9, %bb.ce ] ; 4 uses
  %.117101528 = phi i32 [ %i.px, %bb.cn ], [ %.9708, %bb.ce ] ; 2 uses
  %.07871527 = phi i32 [ %i.pw, %bb.cn ], [ 0, %bb.ce ]
  %.158361526 = phi ptr [ %.17838, %bb.cn ], [ %.12833, %bb.ce ] ; 3 uses
  %.158681525 = phi ptr [ %.17870, %bb.cn ], [ %.12865, %bb.ce ] ; 3 uses
  %i.os = zext i8 %.111529 to i32
  %i.ot = icmp ult i8 %.111529, 17
  br i1 %i.ot, label %bb.cf, label %bb.cn

bb.cf:                                            ; preds = %.lr.ph1532
  %.not1005 = icmp ult ptr %.158681525, %.158361526
  br i1 %.not1005, label %bb.cm, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ou = load ptr, ptr %i.ay, align 8, !tbaa !217 ; 2 uses
  %.not.i1031 = icmp eq ptr %i.ou, null
  %i.ov = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 2 uses
  %i.ow = load i32, ptr %i.bb, align 4, !tbaa !195 ; 2 uses
  br i1 %.not.i1031, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ox = load ptr, ptr %i.az, align 8, !tbaa !216
  %i.oy = tail call i32 %i.ou(ptr noundef %i.ox, ptr noundef %i.ov, i32 noundef %i.ow) #11, !inline_history !221
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.oz = load i32, ptr %0, align 8, !tbaa !192
  %i.pa = tail call i32 @cli_readn(i32 noundef %i.oz, ptr noundef %i.ov, i32 noundef %i.ow) #11
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.pb = phi i32 [ %i.oy, %bb.ch ], [ %i.pa, %bb.ci ] ; 2 uses
  %i.pc = icmp slt i32 %i.pb, 0
  br i1 %i.pc, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.cl:                                            ; preds = %bb.cj
  %i.pd = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 3 uses
  store ptr %i.pd, ptr %i.y, align 8, !tbaa !202
  %i.pe = zext nneg i32 %i.pb to i64
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.pe ; 2 uses
  store ptr %i.pf, ptr %i.aa, align 8, !tbaa !201
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cf
  %.16869 = phi ptr [ %i.pd, %bb.cl ], [ %.158681525, %bb.cf ] ; 3 uses
  %.16837 = phi ptr [ %i.pf, %bb.cl ], [ %.158361526, %bb.cf ]
  %i.pg = load i8, ptr %.16869, align 1, !tbaa !31
  %i.ph = zext i8 %i.pg to i32
  %i.pi = shl nuw nsw i32 %i.ph, 8
  %i.pj = getelementptr inbounds nuw i8, ptr %.16869, i64 1
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !31
  %i.pl = zext i8 %i.pk to i32
  %i.pm = or disjoint i32 %i.pi, %i.pl
  %i.pn = sub nuw nsw i32 16, %i.os
  %i.po = shl nuw i32 %i.pm, %i.pn
  %i.pp = or i32 %i.po, %.117101528
  %narrow1007 = add nuw nsw i8 %.111529, 16
  %i.pq = getelementptr inbounds nuw i8, ptr %.16869, i64 2
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.lr.ph1532
  %.17870 = phi ptr [ %i.pq, %bb.cm ], [ %.158681525, %.lr.ph1532 ] ; 2 uses
  %.17838 = phi ptr [ %.16837, %bb.cm ], [ %.158361526, %.lr.ph1532 ] ; 2 uses
  %.12711 = phi i32 [ %i.pp, %bb.cm ], [ %.117101528, %.lr.ph1532 ] ; 2 uses
  %.12 = phi i8 [ %narrow1007, %bb.cm ], [ %.111529, %.lr.ph1532 ] ; 2 uses
  %i.pr = tail call i8 @llvm.umin.i8(i8 %.12, i8 %.16891530) ; 3 uses
  %i.ps = zext i8 %i.pr to i32                    ; 3 uses
  %i.pt = shl i32 %.07871527, %i.ps
  %i.pu = sub nsw i32 32, %i.ps
  %i.pv = lshr i32 %.12711, %i.pu
  %i.pw = or disjoint i32 %i.pv, %i.pt            ; 2 uses
  %i.px = shl i32 %.12711, %i.ps                  ; 2 uses
  %i.py = sub i8 %.12, %i.pr                      ; 2 uses
  %i.pz = sub i8 %.16891530, %i.pr                ; 2 uses
  %.not1004 = icmp eq i8 %i.pz, 0
  br i1 %.not1004, label %._crit_edge1533, label %.lr.ph1532, !llvm.loop !233

bb.co:                                            ; preds = %bb.bk
  %i.qa = sub nsw i32 %i.fx, %i.fw                ; 2 uses
  %i.qb = load ptr, ptr %i.bq, align 8, !tbaa !234 ; 4 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 2 ; 2 uses
  %i.qd = load i16, ptr %i.qc, align 2, !tbaa !212
  %i.qe = zext i16 %i.qd to i32                   ; 3 uses
  %i.qf = load i32, ptr %i.br, align 4, !tbaa !235 ; 3 uses
  %i.qg = icmp sgt i32 %i.qf, 1
  br i1 %i.qg, label %.lr.ph1497, label %._crit_edge1498

.lr.ph1497:                                       ; preds = %bb.co
  %i.qh = zext i16 %.4735 to i32
  %reass.sub1612 = sub nsw i32 %i.qh, %i.fw
  %i.qi = add nsw i32 %reass.sub1612, 1
  %i.qj = mul nsw i32 %i.qi, %i.qe
  %i.qk = add nsw i32 %i.qj, -1
  %i.ql = and i32 %i.qa, 65535
  %i.qm = add nuw nsw i32 %i.ql, 1
  %i.qn = udiv i32 %i.qk, %i.qm
  %i.qo = trunc i32 %i.qn to i16
  %wide.trip.count1715 = zext nneg i32 %i.qf to i64
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph1497, %bb.cq
  %indvars.iv1712 = phi i64 [ 1, %.lr.ph1497 ], [ %indvars.iv.next1713, %bb.cq ] ; 3 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %indvars.iv1712
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 2
  %i.qr = load i16, ptr %i.qq, align 2, !tbaa !212
  %.not986 = icmp ugt i16 %i.qr, %i.qo
  br i1 %.not986, label %bb.cq, label %._crit_edge1498.loopexit.split.loop.exit

bb.cq:                                            ; preds = %bb.cp
  %indvars.iv.next1713 = add nuw nsw i64 %indvars.iv1712, 1 ; 2 uses
  %exitcond1716.not = icmp eq i64 %indvars.iv.next1713, %wide.trip.count1715
  br i1 %exitcond1716.not, label %._crit_edge1498, label %bb.cp, !llvm.loop !236

._crit_edge1498.loopexit.split.loop.exit:         ; preds = %bb.cp
  %i.qs = trunc nuw nsw i64 %indvars.iv1712 to i32
  br label %._crit_edge1498

._crit_edge1498:                                  ; preds = %bb.cq, %._crit_edge1498.loopexit.split.loop.exit, %bb.co
  %.7803.lcssa = phi i32 [ 1, %bb.co ], [ %i.qs, %._crit_edge1498.loopexit.split.loop.exit ], [ %i.qf, %bb.cq ] ; 2 uses
  %i.qt = zext nneg i32 %.7803.lcssa to i64
  %i.qu = getelementptr [4 x i8], ptr %i.qb, i64 %i.qt ; 3 uses
  %i.qv = getelementptr i8, ptr %i.qu, i64 -4
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !210
  %i.qx = getelementptr i8, ptr %i.qu, i64 -2
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !212
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qu, i64 2
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !212
  %i.rb = sext i32 %.7803.lcssa to i64
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %._crit_edge1498
  %indvars.iv1717 = phi i64 [ %indvars.iv.next1718, %bb.cr ], [ %i.rb, %._crit_edge1498 ] ; 2 uses
  %indvars.iv.next1718 = add nsw i64 %indvars.iv1717, -1 ; 2 uses
  %i.rc = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %indvars.iv.next1718
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 2 ; 2 uses
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !212
  %i.rf = add i16 %i.re, 8
  store i16 %i.rf, ptr %i.rd, align 2, !tbaa !212
  %i.rg = icmp sgt i64 %indvars.iv1717, 1
  br i1 %i.rg, label %bb.cr, label %bb.cs, !llvm.loop !237

bb.cs:                                            ; preds = %bb.cr
  %i.rh = add nsw i32 %i.qa, 1                    ; 2 uses
  %i.ri = zext i16 %i.qy to i32
  %i.rj = mul i32 %i.rh, %i.ri
  %i.rk = udiv i32 %i.rj, %i.qe
  %i.rl = trunc i32 %i.rk to i16
  %i.rm = add i16 %.3753, -1
  %i.rn = add i16 %i.rm, %i.rl
  %i.ro = zext i16 %i.ra to i32
  %i.rp = mul i32 %i.rh, %i.ro
  %i.rq = udiv i32 %i.rp, %i.qe
  %i.rr = trunc i32 %i.rq to i16
  %i.rs = add i16 %.3753, %i.rr
  %i.rt = load i16, ptr %i.qc, align 2, !tbaa !212
  %i.ru = icmp ugt i16 %i.rt, 3800
  br i1 %i.ru, label %bb.ct, label %.preheader2069

bb.ct:                                            ; preds = %bb.cs
  tail call fastcc void @qtm_update_model(ptr noundef %i.bp)
  br label %.preheader2069

.preheader2069:                                   ; preds = %bb.ct, %bb.cs
  br label %bb.cu

bb.cu:                                            ; preds = %.preheader2069, %bb.dg
  %.18871 = phi ptr [ %.20873, %bb.dg ], [ %.6859, %.preheader2069 ] ; 5 uses
  %.18839 = phi ptr [ %.20841, %bb.dg ], [ %.6827, %.preheader2069 ] ; 5 uses
  %.10778 = phi i16 [ %i.sf, %bb.dg ], [ %i.rn, %.preheader2069 ] ; 5 uses
  %.10760 = phi i16 [ %i.sd, %bb.dg ], [ %i.rs, %.preheader2069 ] ; 5 uses
  %.11742 = phi i16 [ %i.th, %bb.dg ], [ %.4735, %.preheader2069 ] ; 4 uses
  %.13712 = phi i32 [ %i.ti, %bb.dg ], [ %.5704, %.preheader2069 ] ; 4 uses
  %.13 = phi i8 [ %i.tj, %bb.dg ], [ %.5698, %.preheader2069 ] ; 6 uses
  %i.rv = zext i16 %.10760 to i32                 ; 2 uses
  %i.rw = zext i16 %.10778 to i32                 ; 2 uses
  %i.rx = xor i32 %i.rv, %i.rw
  %.not987 = icmp samesign ult i32 %i.rx, 32768
  br i1 %.not987, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ry = and i32 %i.rv, 16384
  %.not988 = icmp ne i32 %i.ry, 0
  %i.rz = and i32 %i.rw, 16384
  %.not989 = icmp eq i32 %i.rz, 0
  %or.cond1019 = and i1 %.not989, %.not988
  br i1 %or.cond1019, label %bb.cw, label %bb.dh

bb.cw:                                            ; preds = %bb.cv
  %i.sa = xor i16 %.11742, 16384
  %i.sb = and i16 %.10760, 16383
  %i.sc = or i16 %.10778, 16384
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cu
  %.11779 = phi i16 [ %i.sc, %bb.cw ], [ %.10778, %bb.cu ]
  %.11761 = phi i16 [ %i.sb, %bb.cw ], [ %.10760, %bb.cu ]
  %.12743 = phi i16 [ %i.sa, %bb.cw ], [ %.11742, %bb.cu ]
  %i.sd = shl i16 %.11761, 1
  %i.se = shl i16 %.11779, 1
  %i.sf = or disjoint i16 %i.se, 1
  %i.sg = zext i8 %.13 to i32
  %i.sh = icmp ult i8 %.13, 17
  br i1 %i.sh, label %bb.cy, label %bb.dg

bb.cy:                                            ; preds = %bb.cx
  %.not990 = icmp ult ptr %.18871, %.18839
  br i1 %.not990, label %bb.df, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.si = load ptr, ptr %i.ay, align 8, !tbaa !217 ; 2 uses
  %.not.i1034 = icmp eq ptr %i.si, null
  %i.sj = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 2 uses
  %i.sk = load i32, ptr %i.bb, align 4, !tbaa !195 ; 2 uses
  br i1 %.not.i1034, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.sl = load ptr, ptr %i.az, align 8, !tbaa !216
  %i.sm = tail call i32 %i.si(ptr noundef %i.sl, ptr noundef %i.sj, i32 noundef %i.sk) #11, !inline_history !221
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.sn = load i32, ptr %0, align 8, !tbaa !192
  %i.so = tail call i32 @cli_readn(i32 noundef %i.sn, ptr noundef %i.sj, i32 noundef %i.sk) #11
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.sp = phi i32 [ %i.sm, %bb.da ], [ %i.so, %bb.db ] ; 2 uses
  %i.sq = icmp slt i32 %i.sp, 0
  br i1 %i.sq, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.de:                                            ; preds = %bb.dc
  %i.sr = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 3 uses
  store ptr %i.sr, ptr %i.y, align 8, !tbaa !202
  %i.ss = zext nneg i32 %i.sp to i64
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.ss ; 2 uses
  store ptr %i.st, ptr %i.aa, align 8, !tbaa !201
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.cy
  %.19872 = phi ptr [ %i.sr, %bb.de ], [ %.18871, %bb.cy ] ; 3 uses
  %.19840 = phi ptr [ %i.st, %bb.de ], [ %.18839, %bb.cy ]
  %i.su = load i8, ptr %.19872, align 1, !tbaa !31
  %i.sv = zext i8 %i.su to i32
  %i.sw = shl nuw nsw i32 %i.sv, 8
  %i.sx = getelementptr inbounds nuw i8, ptr %.19872, i64 1
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !31
  %i.sz = zext i8 %i.sy to i32
  %i.ta = or disjoint i32 %i.sw, %i.sz
  %i.tb = sub nuw nsw i32 16, %i.sg
  %i.tc = shl nuw i32 %i.ta, %i.tb
  %i.td = or i32 %i.tc, %.13712
  %narrow992 = add nuw nsw i8 %.13, 16
  %i.te = getelementptr inbounds nuw i8, ptr %.19872, i64 2
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.cx
  %.20873 = phi ptr [ %i.te, %bb.df ], [ %.18871, %bb.cx ]
  %.20841 = phi ptr [ %.19840, %bb.df ], [ %.18839, %bb.cx ]
  %.14713 = phi i32 [ %i.td, %bb.df ], [ %.13712, %bb.cx ] ; 2 uses
  %.14 = phi i8 [ %narrow992, %bb.df ], [ %.13, %bb.cx ]
  %i.tf = zext i16 %.12743 to i32
  %i.tg = tail call i32 @llvm.fshl.i32(i32 %i.tf, i32 %.14713, i32 1)
  %i.th = trunc i32 %i.tg to i16
  %i.ti = shl i32 %.14713, 1
  %i.tj = add i8 %.14, -1
  br label %bb.cu

bb.dh:                                            ; preds = %bb.cv
  %i.tk = zext i16 %i.qw to i64                   ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.tk
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !31  ; 2 uses
  %.not9931502 = icmp eq i8 %i.tm, 0
  br i1 %.not9931502, label %._crit_edge1533, label %.lr.ph1510

.lr.ph1510:                                       ; preds = %bb.dh, %bb.dq
  %.26901508 = phi i8 [ %i.uu, %bb.dq ], [ %i.tm, %bb.dh ] ; 2 uses
  %.151507 = phi i8 [ %i.ut, %bb.dq ], [ %.13, %bb.dh ] ; 4 uses
  %.157141506 = phi i32 [ %i.us, %bb.dq ], [ %.13712, %bb.dh ] ; 2 uses
  %.17881505 = phi i32 [ %i.ur, %bb.dq ], [ 0, %bb.dh ]
  %.218421504 = phi ptr [ %.23844, %bb.dq ], [ %.18839, %bb.dh ] ; 3 uses
  %.218741503 = phi ptr [ %.23876, %bb.dq ], [ %.18871, %bb.dh ] ; 3 uses
  %i.tn = zext i8 %.151507 to i32
  %i.to = icmp ult i8 %.151507, 17
  br i1 %i.to, label %bb.di, label %bb.dq

bb.di:                                            ; preds = %.lr.ph1510
  %.not994 = icmp ult ptr %.218741503, %.218421504
  br i1 %.not994, label %bb.dp, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.tp = load ptr, ptr %i.ay, align 8, !tbaa !217 ; 2 uses
  %.not.i1037 = icmp eq ptr %i.tp, null
  %i.tq = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 2 uses
  %i.tr = load i32, ptr %i.bb, align 4, !tbaa !195 ; 2 uses
  br i1 %.not.i1037, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ts = load ptr, ptr %i.az, align 8, !tbaa !216
  %i.tt = tail call i32 %i.tp(ptr noundef %i.ts, ptr noundef %i.tq, i32 noundef %i.tr) #11, !inline_history !221
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.tu = load i32, ptr %0, align 8, !tbaa !192
  %i.tv = tail call i32 @cli_readn(i32 noundef %i.tu, ptr noundef %i.tq, i32 noundef %i.tr) #11
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.tw = phi i32 [ %i.tt, %bb.dk ], [ %i.tv, %bb.dl ] ; 2 uses
  %i.tx = icmp slt i32 %i.tw, 0
  br i1 %i.tx, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.do:                                            ; preds = %bb.dm
  %i.ty = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 3 uses
  store ptr %i.ty, ptr %i.y, align 8, !tbaa !202
  %i.tz = zext nneg i32 %i.tw to i64
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.tz ; 2 uses
  store ptr %i.ua, ptr %i.aa, align 8, !tbaa !201
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.di
  %.22875 = phi ptr [ %i.ty, %bb.do ], [ %.218741503, %bb.di ] ; 3 uses
  %.22843 = phi ptr [ %i.ua, %bb.do ], [ %.218421504, %bb.di ]
  %i.ub = load i8, ptr %.22875, align 1, !tbaa !31
  %i.uc = zext i8 %i.ub to i32
  %i.ud = shl nuw nsw i32 %i.uc, 8
  %i.ue = getelementptr inbounds nuw i8, ptr %.22875, i64 1
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !31
  %i.ug = zext i8 %i.uf to i32
  %i.uh = or disjoint i32 %i.ud, %i.ug
  %i.ui = sub nuw nsw i32 16, %i.tn
  %i.uj = shl nuw i32 %i.uh, %i.ui
  %i.uk = or i32 %i.uj, %.157141506
  %narrow996 = add nuw nsw i8 %.151507, 16
  %i.ul = getelementptr inbounds nuw i8, ptr %.22875, i64 2
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %.lr.ph1510
  %.23876 = phi ptr [ %i.ul, %bb.dp ], [ %.218741503, %.lr.ph1510 ] ; 2 uses
  %.23844 = phi ptr [ %.22843, %bb.dp ], [ %.218421504, %.lr.ph1510 ] ; 2 uses
  %.16715 = phi i32 [ %i.uk, %bb.dp ], [ %.157141506, %.lr.ph1510 ] ; 2 uses
  %.16 = phi i8 [ %narrow996, %bb.dp ], [ %.151507, %.lr.ph1510 ] ; 2 uses
  %i.um = tail call i8 @llvm.umin.i8(i8 %.16, i8 %.26901508) ; 3 uses
  %i.un = zext i8 %i.um to i32                    ; 3 uses
  %i.uo = shl i32 %.17881505, %i.un
  %i.up = sub nsw i32 32, %i.un
  %i.uq = lshr i32 %.16715, %i.up
  %i.ur = or disjoint i32 %i.uq, %i.uo            ; 2 uses
  %i.us = shl i32 %.16715, %i.un                  ; 2 uses
  %i.ut = sub i8 %.16, %i.um                      ; 2 uses
  %i.uu = sub i8 %.26901508, %i.um                ; 2 uses
  %.not993 = icmp eq i8 %i.uu, 0
  br i1 %.not993, label %._crit_edge1533, label %.lr.ph1510, !llvm.loop !238

bb.dr:                                            ; preds = %bb.bk
  %i.uv = sub nsw i32 %i.fx, %i.fw                ; 2 uses
  %i.uw = load ptr, ptr %i.bg, align 8, !tbaa !239 ; 4 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 2 ; 2 uses
  %i.uy = load i16, ptr %i.ux, align 2, !tbaa !212
  %i.uz = zext i16 %i.uy to i32                   ; 3 uses
  %i.va = load i32, ptr %i.bh, align 4, !tbaa !240 ; 3 uses
  %i.vb = icmp sgt i32 %i.va, 1
  br i1 %i.vb, label %.lr.ph1453, label %._crit_edge1454

.lr.ph1453:                                       ; preds = %bb.dr
  %i.vc = zext i16 %.4735 to i32
  %reass.sub1610 = sub nsw i32 %i.vc, %i.fw
  %i.vd = add nsw i32 %reass.sub1610, 1
  %i.ve = mul nsw i32 %i.vd, %i.uz
  %i.vf = add nsw i32 %i.ve, -1
  %i.vg = and i32 %i.uv, 65535
  %i.vh = add nuw nsw i32 %i.vg, 1
  %i.vi = udiv i32 %i.vf, %i.vh
  %i.vj = trunc i32 %i.vi to i16
  %wide.trip.count1699 = zext nneg i32 %i.va to i64
  br label %bb.ds

bb.ds:                                            ; preds = %.lr.ph1453, %bb.dt
  %indvars.iv1696 = phi i64 [ 1, %.lr.ph1453 ], [ %indvars.iv.next1697, %bb.dt ] ; 3 uses
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv1696
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 2
  %i.vm = load i16, ptr %i.vl, align 2, !tbaa !212
  %.not964 = icmp ugt i16 %i.vm, %i.vj
  br i1 %.not964, label %bb.dt, label %._crit_edge1454.loopexit.split.loop.exit

bb.dt:                                            ; preds = %bb.ds
  %indvars.iv.next1697 = add nuw nsw i64 %indvars.iv1696, 1 ; 2 uses
  %exitcond1700.not = icmp eq i64 %indvars.iv.next1697, %wide.trip.count1699
  br i1 %exitcond1700.not, label %._crit_edge1454, label %bb.ds, !llvm.loop !241

._crit_edge1454.loopexit.split.loop.exit:         ; preds = %bb.ds
  %i.vn = trunc nuw nsw i64 %indvars.iv1696 to i32
  br label %._crit_edge1454

._crit_edge1454:                                  ; preds = %bb.dt, %._crit_edge1454.loopexit.split.loop.exit, %bb.dr
  %.9805.lcssa = phi i32 [ 1, %bb.dr ], [ %i.vn, %._crit_edge1454.loopexit.split.loop.exit ], [ %i.va, %bb.dt ] ; 2 uses
  %i.vo = zext nneg i32 %.9805.lcssa to i64
  %i.vp = getelementptr [4 x i8], ptr %i.uw, i64 %i.vo ; 3 uses
  %i.vq = getelementptr i8, ptr %i.vp, i64 -4
  %i.vr = load i16, ptr %i.vq, align 2, !tbaa !210
  %i.vs = getelementptr i8, ptr %i.vp, i64 -2
  %i.vt = load i16, ptr %i.vs, align 2, !tbaa !212
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vp, i64 2
  %i.vv = load i16, ptr %i.vu, align 2, !tbaa !212
  %i.vw = sext i32 %.9805.lcssa to i64
  br label %bb.du

bb.du:                                            ; preds = %bb.du, %._crit_edge1454
  %indvars.iv1701 = phi i64 [ %indvars.iv.next1702, %bb.du ], [ %i.vw, %._crit_edge1454 ] ; 2 uses
  %indvars.iv.next1702 = add nsw i64 %indvars.iv1701, -1 ; 2 uses
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %indvars.iv.next1702
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 2 ; 2 uses
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !212
  %i.wa = add i16 %i.vz, 8
  store i16 %i.wa, ptr %i.vy, align 2, !tbaa !212
  %i.wb = icmp sgt i64 %indvars.iv1701, 1
  br i1 %i.wb, label %bb.du, label %bb.dv, !llvm.loop !242

bb.dv:                                            ; preds = %bb.du
  %i.wc = add nsw i32 %i.uv, 1                    ; 2 uses
  %i.wd = zext i16 %i.vt to i32
  %i.we = mul i32 %i.wc, %i.wd
  %i.wf = udiv i32 %i.we, %i.uz
  %i.wg = trunc i32 %i.wf to i16
  %i.wh = add i16 %.3753, -1
  %i.wi = add i16 %i.wh, %i.wg
  %i.wj = zext i16 %i.vv to i32
  %i.wk = mul i32 %i.wc, %i.wj
  %i.wl = udiv i32 %i.wk, %i.uz
  %i.wm = trunc i32 %i.wl to i16
  %i.wn = add i16 %.3753, %i.wm
  %i.wo = load i16, ptr %i.ux, align 2, !tbaa !212
  %i.wp = icmp ugt i16 %i.wo, 3800
  br i1 %i.wp, label %bb.dw, label %.preheader2072

bb.dw:                                            ; preds = %bb.dv
  tail call fastcc void @qtm_update_model(ptr noundef %i.bf)
  br label %.preheader2072

.preheader2072:                                   ; preds = %bb.dw, %bb.dv
  br label %bb.dx

bb.dx:                                            ; preds = %.preheader2072, %bb.ej
  %.24877 = phi ptr [ %.26879, %bb.ej ], [ %.6859, %.preheader2072 ] ; 5 uses
  %.24845 = phi ptr [ %.26847, %bb.ej ], [ %.6827, %.preheader2072 ] ; 5 uses
  %.12780 = phi i16 [ %i.xa, %bb.ej ], [ %i.wi, %.preheader2072 ] ; 3 uses
  %.12762 = phi i16 [ %i.wy, %bb.ej ], [ %i.wn, %.preheader2072 ] ; 5 uses
  %.13744 = phi i16 [ %i.yc, %bb.ej ], [ %.4735, %.preheader2072 ] ; 4 uses
  %.17716 = phi i32 [ %i.yd, %bb.ej ], [ %.5704, %.preheader2072 ] ; 4 uses
  %.17 = phi i8 [ %i.ye, %bb.ej ], [ %.5698, %.preheader2072 ] ; 6 uses
  %i.wq = zext i16 %.12762 to i32                 ; 4 uses
  %i.wr = zext i16 %.12780 to i32                 ; 3 uses
  %i.ws = xor i32 %i.wq, %i.wr
  %.not965 = icmp samesign ult i32 %i.ws, 32768
  br i1 %.not965, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.wt = and i32 %i.wq, 16384
  %.not966 = icmp ne i32 %i.wt, 0
  %i.wu = and i32 %i.wr, 16384
  %.not967 = icmp eq i32 %i.wu, 0
  %or.cond1020 = and i1 %.not967, %.not966
  br i1 %or.cond1020, label %bb.dz, label %bb.ek

bb.dz:                                            ; preds = %bb.dy
  %i.wv = xor i16 %.13744, 16384
  %i.ww = and i16 %.12762, 16383
  %i.wx = or i16 %.12780, 16384
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dx
  %.13781 = phi i16 [ %i.wx, %bb.dz ], [ %.12780, %bb.dx ]
  %.13763 = phi i16 [ %i.ww, %bb.dz ], [ %.12762, %bb.dx ]
  %.14745 = phi i16 [ %i.wv, %bb.dz ], [ %.13744, %bb.dx ]
  %i.wy = shl i16 %.13763, 1
  %i.wz = shl i16 %.13781, 1
  %i.xa = or disjoint i16 %i.wz, 1
  %i.xb = zext i8 %.17 to i32
  %i.xc = icmp ult i8 %.17, 17
  br i1 %i.xc, label %bb.eb, label %bb.ej

bb.eb:                                            ; preds = %bb.ea
  %.not968 = icmp ult ptr %.24877, %.24845
  br i1 %.not968, label %bb.ei, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.xd = load ptr, ptr %i.ay, align 8, !tbaa !217 ; 2 uses
  %.not.i1040 = icmp eq ptr %i.xd, null
  %i.xe = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 2 uses
  %i.xf = load i32, ptr %i.bb, align 4, !tbaa !195 ; 2 uses
  br i1 %.not.i1040, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.xg = load ptr, ptr %i.az, align 8, !tbaa !216
  %i.xh = tail call i32 %i.xd(ptr noundef %i.xg, ptr noundef %i.xe, i32 noundef %i.xf) #11, !inline_history !221
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.xi = load i32, ptr %0, align 8, !tbaa !192
  %i.xj = tail call i32 @cli_readn(i32 noundef %i.xi, ptr noundef %i.xe, i32 noundef %i.xf) #11
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.xk = phi i32 [ %i.xh, %bb.ed ], [ %i.xj, %bb.ee ] ; 2 uses
  %i.xl = icmp slt i32 %i.xk, 0
  br i1 %i.xl, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.eh:                                            ; preds = %bb.ef
  %i.xm = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 3 uses
  store ptr %i.xm, ptr %i.y, align 8, !tbaa !202
  %i.xn = zext nneg i32 %i.xk to i64
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.xn ; 2 uses
  store ptr %i.xo, ptr %i.aa, align 8, !tbaa !201
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eb
  %.25878 = phi ptr [ %i.xm, %bb.eh ], [ %.24877, %bb.eb ] ; 3 uses
  %.25846 = phi ptr [ %i.xo, %bb.eh ], [ %.24845, %bb.eb ]
  %i.xp = load i8, ptr %.25878, align 1, !tbaa !31
  %i.xq = zext i8 %i.xp to i32
  %i.xr = shl nuw nsw i32 %i.xq, 8
  %i.xs = getelementptr inbounds nuw i8, ptr %.25878, i64 1
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !31
  %i.xu = zext i8 %i.xt to i32
  %i.xv = or disjoint i32 %i.xr, %i.xu
  %i.xw = sub nuw nsw i32 16, %i.xb
  %i.xx = shl nuw i32 %i.xv, %i.xw
  %i.xy = or i32 %i.xx, %.17716
  %narrow970 = add nuw nsw i8 %.17, 16
  %i.xz = getelementptr inbounds nuw i8, ptr %.25878, i64 2
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.ea
  %.26879 = phi ptr [ %i.xz, %bb.ei ], [ %.24877, %bb.ea ]
  %.26847 = phi ptr [ %.25846, %bb.ei ], [ %.24845, %bb.ea ]
  %.18717 = phi i32 [ %i.xy, %bb.ei ], [ %.17716, %bb.ea ] ; 2 uses
  %.18 = phi i8 [ %narrow970, %bb.ei ], [ %.17, %bb.ea ]
  %i.ya = zext i16 %.14745 to i32
  %i.yb = tail call i32 @llvm.fshl.i32(i32 %i.ya, i32 %.18717, i32 1)
  %i.yc = trunc i32 %i.yb to i16
  %i.yd = shl i32 %.18717, 1
  %i.ye = add i8 %.18, -1
  br label %bb.dx

bb.ek:                                            ; preds = %bb.dy
  %i.yf = zext i16 %i.vr to i64                   ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.yf
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !31  ; 2 uses
  %.not9711458 = icmp eq i8 %i.yh, 0
  br i1 %.not9711458, label %._crit_edge1467, label %.lr.ph1466

.lr.ph1466:                                       ; preds = %bb.ek, %bb.et
  %.36911464 = phi i8 [ %i.zp, %bb.et ], [ %i.yh, %bb.ek ] ; 2 uses
  %.191463 = phi i8 [ %i.zo, %bb.et ], [ %.17, %bb.ek ] ; 4 uses
  %.197181462 = phi i32 [ %i.zn, %bb.et ], [ %.17716, %bb.ek ] ; 2 uses
  %.27891461 = phi i32 [ %i.zm, %bb.et ], [ 0, %bb.ek ]
  %.278481460 = phi ptr [ %.29850, %bb.et ], [ %.24845, %bb.ek ] ; 3 uses
  %.278801459 = phi ptr [ %.29882, %bb.et ], [ %.24877, %bb.ek ] ; 3 uses
  %i.yi = zext i8 %.191463 to i32
  %i.yj = icmp ult i8 %.191463, 17
  br i1 %i.yj, label %bb.el, label %bb.et

bb.el:                                            ; preds = %.lr.ph1466
  %.not983 = icmp ult ptr %.278801459, %.278481460
  br i1 %.not983, label %bb.es, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.yk = load ptr, ptr %i.ay, align 8, !tbaa !217 ; 2 uses
  %.not.i1043 = icmp eq ptr %i.yk, null
  %i.yl = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 2 uses
  %i.ym = load i32, ptr %i.bb, align 4, !tbaa !195 ; 2 uses
  br i1 %.not.i1043, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.yn = load ptr, ptr %i.az, align 8, !tbaa !216
  %i.yo = tail call i32 %i.yk(ptr noundef %i.yn, ptr noundef %i.yl, i32 noundef %i.ym) #11, !inline_history !221
  br label %bb.ep

bb.eo:                                            ; preds = %bb.em
  %i.yp = load i32, ptr %0, align 8, !tbaa !192
  %i.yq = tail call i32 @cli_readn(i32 noundef %i.yp, ptr noundef %i.yl, i32 noundef %i.ym) #11
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.yr = phi i32 [ %i.yo, %bb.en ], [ %i.yq, %bb.eo ] ; 2 uses
  %i.ys = icmp slt i32 %i.yr, 0
  br i1 %i.ys, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.er:                                            ; preds = %bb.ep
  %i.yt = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 3 uses
  store ptr %i.yt, ptr %i.y, align 8, !tbaa !202
  %i.yu = zext nneg i32 %i.yr to i64
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.yu ; 2 uses
  store ptr %i.yv, ptr %i.aa, align 8, !tbaa !201
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.el
  %.28881 = phi ptr [ %i.yt, %bb.er ], [ %.278801459, %bb.el ] ; 3 uses
  %.28849 = phi ptr [ %i.yv, %bb.er ], [ %.278481460, %bb.el ]
  %i.yw = load i8, ptr %.28881, align 1, !tbaa !31
  %i.yx = zext i8 %i.yw to i32
  %i.yy = shl nuw nsw i32 %i.yx, 8
  %i.yz = getelementptr inbounds nuw i8, ptr %.28881, i64 1
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !31
  %i.zb = zext i8 %i.za to i32
  %i.zc = or disjoint i32 %i.yy, %i.zb
  %i.zd = sub nuw nsw i32 16, %i.yi
  %i.ze = shl nuw i32 %i.zc, %i.zd
  %i.zf = or i32 %i.ze, %.197181462
  %narrow985 = add nuw nsw i8 %.191463, 16
  %i.zg = getelementptr inbounds nuw i8, ptr %.28881, i64 2
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %.lr.ph1466
  %.29882 = phi ptr [ %i.zg, %bb.es ], [ %.278801459, %.lr.ph1466 ] ; 2 uses
  %.29850 = phi ptr [ %.28849, %bb.es ], [ %.278481460, %.lr.ph1466 ] ; 2 uses
  %.20719 = phi i32 [ %i.zf, %bb.es ], [ %.197181462, %.lr.ph1466 ] ; 2 uses
  %.20 = phi i8 [ %narrow985, %bb.es ], [ %.191463, %.lr.ph1466 ] ; 2 uses
  %i.zh = tail call i8 @llvm.umin.i8(i8 %.20, i8 %.36911464) ; 3 uses
  %i.zi = zext i8 %i.zh to i32                    ; 3 uses
  %i.zj = shl i32 %.27891461, %i.zi
  %i.zk = sub nsw i32 32, %i.zi
  %i.zl = lshr i32 %.20719, %i.zk
  %i.zm = or disjoint i32 %i.zl, %i.zj            ; 2 uses
  %i.zn = shl i32 %.20719, %i.zi                  ; 2 uses
  %i.zo = sub i8 %.20, %i.zh                      ; 2 uses
  %i.zp = sub i8 %.36911464, %i.zh                ; 2 uses
  %.not971 = icmp eq i8 %i.zp, 0
  br i1 %.not971, label %._crit_edge1467.loopexit, label %.lr.ph1466, !llvm.loop !243

._crit_edge1467.loopexit:                         ; preds = %bb.et
  %i.zq = add i32 %i.zm, 5
  br label %._crit_edge1467

._crit_edge1467:                                  ; preds = %._crit_edge1467.loopexit, %bb.ek
  %.27880.lcssa = phi ptr [ %.24877, %bb.ek ], [ %.29882, %._crit_edge1467.loopexit ]
  %.27848.lcssa = phi ptr [ %.24845, %bb.ek ], [ %.29850, %._crit_edge1467.loopexit ]
  %.2789.lcssa = phi i32 [ 5, %bb.ek ], [ %i.zq, %._crit_edge1467.loopexit ]
  %.19718.lcssa = phi i32 [ %.17716, %bb.ek ], [ %i.zn, %._crit_edge1467.loopexit ]
  %.19.lcssa = phi i8 [ %.17, %bb.ek ], [ %i.zo, %._crit_edge1467.loopexit ]
  %i.zr = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.yf
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !31
  %i.zt = zext i8 %i.zs to i32
  %i.zu = add i32 %.2789.lcssa, %i.zt             ; 2 uses
  %i.zv = sub nsw i32 %i.wr, %i.wq                ; 2 uses
  %i.zw = load ptr, ptr %i.bl, align 8, !tbaa !244 ; 4 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 2 ; 2 uses
  %i.zy = load i16, ptr %i.zx, align 2, !tbaa !212
  %i.zz = zext i16 %i.zy to i32                   ; 3 uses
  %i.aaa = load i32, ptr %i.bm, align 4, !tbaa !245 ; 3 uses
  %i.aab = icmp sgt i32 %i.aaa, 1
  br i1 %i.aab, label %.lr.ph1475, label %._crit_edge1476

.lr.ph1475:                                       ; preds = %._crit_edge1467
  %i.aac = zext i16 %.13744 to i32
  %reass.sub1611 = sub nsw i32 %i.aac, %i.wq
  %i.aad = add nsw i32 %reass.sub1611, 1
  %i.aae = mul nsw i32 %i.aad, %i.zz
  %i.aaf = add nsw i32 %i.aae, -1
  %i.aag = and i32 %i.zv, 65535
  %i.aah = add nuw nsw i32 %i.aag, 1
  %i.aai = udiv i32 %i.aaf, %i.aah
  %i.aaj = trunc i32 %i.aai to i16
  %wide.trip.count1707 = zext nneg i32 %i.aaa to i64
  br label %bb.eu

bb.eu:                                            ; preds = %.lr.ph1475, %bb.ev
  %indvars.iv1704 = phi i64 [ 1, %.lr.ph1475 ], [ %indvars.iv.next1705, %bb.ev ] ; 3 uses
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv1704
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 2
  %i.aam = load i16, ptr %i.aal, align 2, !tbaa !212
  %.not972 = icmp ugt i16 %i.aam, %i.aaj
  br i1 %.not972, label %bb.ev, label %._crit_edge1476.loopexit.split.loop.exit

bb.ev:                                            ; preds = %bb.eu
  %indvars.iv.next1705 = add nuw nsw i64 %indvars.iv1704, 1 ; 2 uses
  %exitcond1708.not = icmp eq i64 %indvars.iv.next1705, %wide.trip.count1707
  br i1 %exitcond1708.not, label %._crit_edge1476, label %bb.eu, !llvm.loop !246

._crit_edge1476.loopexit.split.loop.exit:         ; preds = %bb.eu
  %i.aan = trunc nuw nsw i64 %indvars.iv1704 to i32
  br label %._crit_edge1476

._crit_edge1476:                                  ; preds = %bb.ev, %._crit_edge1476.loopexit.split.loop.exit, %._crit_edge1467
  %.11807.lcssa = phi i32 [ 1, %._crit_edge1467 ], [ %i.aan, %._crit_edge1476.loopexit.split.loop.exit ], [ %i.aaa, %bb.ev ] ; 2 uses
  %i.aao = zext nneg i32 %.11807.lcssa to i64
  %i.aap = getelementptr [4 x i8], ptr %i.zw, i64 %i.aao ; 3 uses
  %i.aaq = getelementptr i8, ptr %i.aap, i64 -4
  %i.aar = load i16, ptr %i.aaq, align 2, !tbaa !210
  %i.aas = getelementptr i8, ptr %i.aap, i64 -2
  %i.aat = load i16, ptr %i.aas, align 2, !tbaa !212
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aap, i64 2
  %i.aav = load i16, ptr %i.aau, align 2, !tbaa !212
  %i.aaw = sext i32 %.11807.lcssa to i64
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ew, %._crit_edge1476
  %indvars.iv1709 = phi i64 [ %indvars.iv.next1710, %bb.ew ], [ %i.aaw, %._crit_edge1476 ] ; 2 uses
  %indvars.iv.next1710 = add nsw i64 %indvars.iv1709, -1 ; 2 uses
  %i.aax = getelementptr inbounds [4 x i8], ptr %i.zw, i64 %indvars.iv.next1710
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 2 ; 2 uses
  %i.aaz = load i16, ptr %i.aay, align 2, !tbaa !212
  %i.aba = add i16 %i.aaz, 8
  store i16 %i.aba, ptr %i.aay, align 2, !tbaa !212
  %i.abb = icmp sgt i64 %indvars.iv1709, 1
  br i1 %i.abb, label %bb.ew, label %bb.ex, !llvm.loop !247

bb.ex:                                            ; preds = %bb.ew
  %i.abc = add nsw i32 %i.zv, 1                   ; 2 uses
  %i.abd = zext i16 %i.aat to i32
  %i.abe = mul i32 %i.abc, %i.abd
  %i.abf = udiv i32 %i.abe, %i.zz
  %i.abg = trunc i32 %i.abf to i16
  %i.abh = add i16 %.12762, -1
  %i.abi = add i16 %i.abh, %i.abg
  %i.abj = zext i16 %i.aav to i32
  %i.abk = mul i32 %i.abc, %i.abj
  %i.abl = udiv i32 %i.abk, %i.zz
  %i.abm = trunc i32 %i.abl to i16
  %i.abn = add i16 %.12762, %i.abm
  %i.abo = load i16, ptr %i.zx, align 2, !tbaa !212
  %i.abp = icmp ugt i16 %i.abo, 3800
  br i1 %i.abp, label %bb.ey, label %.preheader2071

bb.ey:                                            ; preds = %bb.ex
  tail call fastcc void @qtm_update_model(ptr noundef %i.bk)
  br label %.preheader2071

.preheader2071:                                   ; preds = %bb.ey, %bb.ex
  br label %bb.ez

bb.ez:                                            ; preds = %.preheader2071, %bb.fl
  %.30883 = phi ptr [ %.32885, %bb.fl ], [ %.27880.lcssa, %.preheader2071 ] ; 5 uses
  %.30851 = phi ptr [ %.32, %bb.fl ], [ %.27848.lcssa, %.preheader2071 ] ; 5 uses
  %.14782 = phi i16 [ %i.aca, %bb.fl ], [ %i.abi, %.preheader2071 ] ; 5 uses
  %.14764 = phi i16 [ %i.aby, %bb.fl ], [ %i.abn, %.preheader2071 ] ; 5 uses
  %.15746 = phi i16 [ %i.adc, %bb.fl ], [ %.13744, %.preheader2071 ] ; 4 uses
  %.21720 = phi i32 [ %i.add, %bb.fl ], [ %.19718.lcssa, %.preheader2071 ] ; 4 uses
  %.21 = phi i8 [ %i.ade, %bb.fl ], [ %.19.lcssa, %.preheader2071 ] ; 6 uses
  %i.abq = zext i16 %.14764 to i32                ; 2 uses
  %i.abr = zext i16 %.14782 to i32                ; 2 uses
  %i.abs = xor i32 %i.abq, %i.abr
  %.not973 = icmp samesign ult i32 %i.abs, 32768
  br i1 %.not973, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.abt = and i32 %i.abq, 16384
  %.not974 = icmp ne i32 %i.abt, 0
  %i.abu = and i32 %i.abr, 16384
  %.not975 = icmp eq i32 %i.abu, 0
  %or.cond1021 = and i1 %.not975, %.not974
  br i1 %or.cond1021, label %bb.fb, label %bb.fm

bb.fb:                                            ; preds = %bb.fa
  %i.abv = xor i16 %.15746, 16384
  %i.abw = and i16 %.14764, 16383
  %i.abx = or i16 %.14782, 16384
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.ez
  %.15783 = phi i16 [ %i.abx, %bb.fb ], [ %.14782, %bb.ez ]
  %.15765 = phi i16 [ %i.abw, %bb.fb ], [ %.14764, %bb.ez ]
  %.16747 = phi i16 [ %i.abv, %bb.fb ], [ %.15746, %bb.ez ]
  %i.aby = shl i16 %.15765, 1
  %i.abz = shl i16 %.15783, 1
  %i.aca = or disjoint i16 %i.abz, 1
  %i.acb = zext i8 %.21 to i32
  %i.acc = icmp ult i8 %.21, 17
  br i1 %i.acc, label %bb.fd, label %bb.fl

bb.fd:                                            ; preds = %bb.fc
  %.not976 = icmp ult ptr %.30883, %.30851
  br i1 %.not976, label %bb.fk, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.acd = load ptr, ptr %i.ay, align 8, !tbaa !217 ; 2 uses
  %.not.i1046 = icmp eq ptr %i.acd, null
  %i.ace = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 2 uses
  %i.acf = load i32, ptr %i.bb, align 4, !tbaa !195 ; 2 uses
  br i1 %.not.i1046, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.acg = load ptr, ptr %i.az, align 8, !tbaa !216
  %i.ach = tail call i32 %i.acd(ptr noundef %i.acg, ptr noundef %i.ace, i32 noundef %i.acf) #11, !inline_history !221
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe
  %i.aci = load i32, ptr %0, align 8, !tbaa !192
  %i.acj = tail call i32 @cli_readn(i32 noundef %i.aci, ptr noundef %i.ace, i32 noundef %i.acf) #11
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.ack = phi i32 [ %i.ach, %bb.ff ], [ %i.acj, %bb.fg ] ; 2 uses
  %i.acl = icmp slt i32 %i.ack, 0
  br i1 %i.acl, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.fj:                                            ; preds = %bb.fh
  %i.acm = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 3 uses
  store ptr %i.acm, ptr %i.y, align 8, !tbaa !202
  %i.acn = zext nneg i32 %i.ack to i64
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acm, i64 %i.acn ; 2 uses
  store ptr %i.aco, ptr %i.aa, align 8, !tbaa !201
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fd
  %.31884 = phi ptr [ %i.acm, %bb.fj ], [ %.30883, %bb.fd ] ; 3 uses
  %.31852 = phi ptr [ %i.aco, %bb.fj ], [ %.30851, %bb.fd ]
  %i.acp = load i8, ptr %.31884, align 1, !tbaa !31
  %i.acq = zext i8 %i.acp to i32
  %i.acr = shl nuw nsw i32 %i.acq, 8
  %i.acs = getelementptr inbounds nuw i8, ptr %.31884, i64 1
  %i.act = load i8, ptr %i.acs, align 1, !tbaa !31
  %i.acu = zext i8 %i.act to i32
  %i.acv = or disjoint i32 %i.acr, %i.acu
  %i.acw = sub nuw nsw i32 16, %i.acb
  %i.acx = shl nuw i32 %i.acv, %i.acw
  %i.acy = or i32 %i.acx, %.21720
  %narrow978 = add nuw nsw i8 %.21, 16
  %i.acz = getelementptr inbounds nuw i8, ptr %.31884, i64 2
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fc
  %.32885 = phi ptr [ %i.acz, %bb.fk ], [ %.30883, %bb.fc ]
  %.32 = phi ptr [ %.31852, %bb.fk ], [ %.30851, %bb.fc ]
  %.22721 = phi i32 [ %i.acy, %bb.fk ], [ %.21720, %bb.fc ] ; 2 uses
  %.22 = phi i8 [ %narrow978, %bb.fk ], [ %.21, %bb.fc ]
  %i.ada = zext i16 %.16747 to i32
  %i.adb = tail call i32 @llvm.fshl.i32(i32 %i.ada, i32 %.22721, i32 1)
  %i.adc = trunc i32 %i.adb to i16
  %i.add = shl i32 %.22721, 1
  %i.ade = add i8 %.22, -1
  br label %bb.ez

bb.fm:                                            ; preds = %bb.fa
  %i.adf = zext i16 %i.aar to i64                 ; 3 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.adf
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !31 ; 2 uses
  %.not9791480 = icmp eq i8 %i.adh, 0
  br i1 %.not9791480, label %._crit_edge1533, label %.lr.ph1488

.lr.ph1488:                                       ; preds = %bb.fm, %bb.fv
  %.46921486 = phi i8 [ %i.aep, %bb.fv ], [ %i.adh, %bb.fm ] ; 2 uses
  %.231485 = phi i8 [ %i.aeo, %bb.fv ], [ %.21, %bb.fm ] ; 4 uses
  %.237221484 = phi i32 [ %i.aen, %bb.fv ], [ %.21720, %bb.fm ] ; 2 uses
  %.37901483 = phi i32 [ %i.aem, %bb.fv ], [ 0, %bb.fm ]
  %.331482 = phi ptr [ %.35, %bb.fv ], [ %.30851, %bb.fm ] ; 3 uses
  %.338861481 = phi ptr [ %.35888, %bb.fv ], [ %.30883, %bb.fm ] ; 3 uses
  %i.adi = zext i8 %.231485 to i32
  %i.adj = icmp ult i8 %.231485, 17
  br i1 %i.adj, label %bb.fn, label %bb.fv

bb.fn:                                            ; preds = %.lr.ph1488
  %.not980 = icmp ult ptr %.338861481, %.331482
  br i1 %.not980, label %bb.fu, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.adk = load ptr, ptr %i.ay, align 8, !tbaa !217 ; 2 uses
  %.not.i1049 = icmp eq ptr %i.adk, null
  %i.adl = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 2 uses
  %i.adm = load i32, ptr %i.bb, align 4, !tbaa !195 ; 2 uses
  br i1 %.not.i1049, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.adn = load ptr, ptr %i.az, align 8, !tbaa !216
  %i.ado = tail call i32 %i.adk(ptr noundef %i.adn, ptr noundef %i.adl, i32 noundef %i.adm) #11, !inline_history !221
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fo
  %i.adp = load i32, ptr %0, align 8, !tbaa !192
  %i.adq = tail call i32 @cli_readn(i32 noundef %i.adp, ptr noundef %i.adl, i32 noundef %i.adm) #11
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.adr = phi i32 [ %i.ado, %bb.fp ], [ %i.adq, %bb.fq ] ; 2 uses
  %i.ads = icmp slt i32 %i.adr, 0
  br i1 %i.ads, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.ft:                                            ; preds = %bb.fr
  %i.adt = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 3 uses
  store ptr %i.adt, ptr %i.y, align 8, !tbaa !202
  %i.adu = zext nneg i32 %i.adr to i64
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.adu ; 2 uses
  store ptr %i.adv, ptr %i.aa, align 8, !tbaa !201
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fn
  %.34887 = phi ptr [ %i.adt, %bb.ft ], [ %.338861481, %bb.fn ] ; 3 uses
  %.34 = phi ptr [ %i.adv, %bb.ft ], [ %.331482, %bb.fn ]
  %i.adw = load i8, ptr %.34887, align 1, !tbaa !31
  %i.adx = zext i8 %i.adw to i32
  %i.ady = shl nuw nsw i32 %i.adx, 8
  %i.adz = getelementptr inbounds nuw i8, ptr %.34887, i64 1
  %i.aea = load i8, ptr %i.adz, align 1, !tbaa !31
  %i.aeb = zext i8 %i.aea to i32
  %i.aec = or disjoint i32 %i.ady, %i.aeb
  %i.aed = sub nuw nsw i32 16, %i.adi
  %i.aee = shl nuw i32 %i.aec, %i.aed
  %i.aef = or i32 %i.aee, %.237221484
  %narrow982 = add nuw nsw i8 %.231485, 16
  %i.aeg = getelementptr inbounds nuw i8, ptr %.34887, i64 2
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %.lr.ph1488
  %.35888 = phi ptr [ %i.aeg, %bb.fu ], [ %.338861481, %.lr.ph1488 ] ; 2 uses
  %.35 = phi ptr [ %.34, %bb.fu ], [ %.331482, %.lr.ph1488 ] ; 2 uses
  %.24723 = phi i32 [ %i.aef, %bb.fu ], [ %.237221484, %.lr.ph1488 ] ; 2 uses
  %.24 = phi i8 [ %narrow982, %bb.fu ], [ %.231485, %.lr.ph1488 ] ; 2 uses
  %i.aeh = tail call i8 @llvm.umin.i8(i8 %.24, i8 %.46921486) ; 3 uses
  %i.aei = zext i8 %i.aeh to i32                  ; 3 uses
  %i.aej = shl i32 %.37901483, %i.aei
  %i.aek = sub nsw i32 32, %i.aei
  %i.ael = lshr i32 %.24723, %i.aek
  %i.aem = or disjoint i32 %i.ael, %i.aej         ; 2 uses
  %i.aen = shl i32 %.24723, %i.aei                ; 2 uses
  %i.aeo = sub i8 %.24, %i.aeh                    ; 2 uses
  %i.aep = sub i8 %.46921486, %i.aeh              ; 2 uses
  %.not979 = icmp eq i8 %i.aep, 0
  br i1 %.not979, label %._crit_edge1533, label %.lr.ph1488, !llvm.loop !248

bb.fw:                                            ; preds = %bb.bk
  store i32 -124, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

._crit_edge1533:                                  ; preds = %bb.fv, %bb.dq, %bb.cn, %bb.fm, %bb.dh, %bb.ce
  %.sink = phi i64 [ %i.tk, %bb.dh ], [ %i.op, %bb.ce ], [ %i.adf, %bb.fm ], [ %i.tk, %bb.dq ], [ %i.op, %bb.cn ], [ %i.adf, %bb.fv ]
  %.3790.lcssa.sink = phi i32 [ 0, %bb.dh ], [ 0, %bb.ce ], [ 0, %bb.fm ], [ %i.ur, %bb.dq ], [ %i.pw, %bb.cn ], [ %i.aem, %bb.fv ]
  %.36889 = phi ptr [ %.18871, %bb.dh ], [ %.12865, %bb.ce ], [ %.30883, %bb.fm ], [ %.23876, %bb.dq ], [ %.17870, %bb.cn ], [ %.35888, %bb.fv ]
  %.36 = phi ptr [ %.18839, %bb.dh ], [ %.12833, %bb.ce ], [ %.30851, %bb.fm ], [ %.23844, %bb.dq ], [ %.17838, %bb.cn ], [ %.35, %bb.fv ]
  %.0786 = phi i32 [ 4, %bb.dh ], [ 3, %bb.ce ], [ %i.zu, %bb.fm ], [ 4, %bb.dq ], [ 3, %bb.cn ], [ %i.zu, %bb.fv ] ; 11 uses
  %.16784 = phi i16 [ %.10778, %bb.dh ], [ %.8776, %bb.ce ], [ %.14782, %bb.fm ], [ %.10778, %bb.dq ], [ %.8776, %bb.cn ], [ %.14782, %bb.fv ]
  %.16766 = phi i16 [ %.10760, %bb.dh ], [ %.8758, %bb.ce ], [ %.14764, %bb.fm ], [ %.10760, %bb.dq ], [ %.8758, %bb.cn ], [ %.14764, %bb.fv ]
  %.17748 = phi i16 [ %.11742, %bb.dh ], [ %.9740, %bb.ce ], [ %.15746, %bb.fm ], [ %.11742, %bb.dq ], [ %.9740, %bb.cn ], [ %.15746, %bb.fv ]
  %.25724 = phi i32 [ %.13712, %bb.dh ], [ %.9708, %bb.ce ], [ %.21720, %bb.fm ], [ %i.us, %bb.dq ], [ %i.px, %bb.cn ], [ %i.aen, %bb.fv ]
  %.25 = phi i8 [ %.13, %bb.dh ], [ %.9, %bb.ce ], [ %.21, %bb.fm ], [ %i.ut, %bb.dq ], [ %i.py, %bb.cn ], [ %i.aeo, %bb.fv ]
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sink
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !4
  %i.aes = add i32 %i.aer, %.3790.lcssa.sink      ; 2 uses
  %.0898 = add i32 %i.aes, 1                      ; 3 uses
  %i.aet = zext i32 %.19001562 to i64             ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aet ; 13 uses
  %i.aev = icmp ugt i32 %.0898, %.19001562
  br i1 %i.aev, label %bb.fx, label %bb.gb

bb.fx:                                            ; preds = %._crit_edge1533
  %i.aew = sub nuw i32 %.0898, %.19001562         ; 11 uses
  %i.aex = load i32, ptr %i.bv, align 8, !tbaa !196 ; 2 uses
  %i.aey = icmp sgt i32 %i.aew, %i.aex
  br i1 %i.aey, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.17) #11
  store i32 -124, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.fz:                                            ; preds = %bb.fx
  %i.aez = sub i32 %i.aex, %i.aew
  %i.afa = zext i32 %i.aez to i64                 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.afa ; 6 uses
  %i.afc = icmp slt i32 %i.aew, %.0786
  br i1 %i.afc, label %bb.ga, label %.loopexit1089

bb.ga:                                            ; preds = %bb.fz
  %i.afd = sub nsw i32 %.0786, %i.aew             ; 4 uses
  %i.afe = icmp sgt i32 %i.aew, 0
  br i1 %i.afe, label %iter.check2006, label %.loopexit1089

iter.check2006:                                   ; preds = %bb.ga
  %i.aff = zext nneg i32 %i.aew to i64            ; 5 uses
  %min.iters.check1988 = icmp ult i32 %i.aew, 4
  %i.afg = sub nsw i64 %i.afa, %i.aet
  %diff.check1987 = icmp ugt i64 %i.afg, -32
  %or.cond2062 = select i1 %min.iters.check1988, i1 true, i1 %diff.check1987
  br i1 %or.cond2062, label %.lr.ph1548.preheader, label %vector.main.loop.iter.check1989

vector.main.loop.iter.check1989:                  ; preds = %iter.check2006
  %min.iters.check1990 = icmp ult i32 %i.aew, 32
  br i1 %min.iters.check1990, label %vec.epilog.ph2010, label %vector.ph1991

vector.ph1991:                                    ; preds = %vector.main.loop.iter.check1989
  %n.mod.vf1992 = and i64 %i.aff, 28
  %n.vec1993 = and i64 %i.aff, 2147483616         ; 6 uses
  %i.afh = trunc nuw nsw i64 %n.vec1993 to i32
  %i.afi = sub nsw i32 %i.aew, %i.afh
  %i.afj = getelementptr i8, ptr %i.aeu, i64 %n.vec1993 ; 2 uses
  %i.afk = getelementptr i8, ptr %i.afb, i64 %n.vec1993
  br label %vector.body1994

vector.body1994:                                  ; preds = %vector.body1994, %vector.ph1991
  %index1995 = phi i64 [ 0, %vector.ph1991 ], [ %index.next2000, %vector.body1994 ] ; 3 uses
  %next.gep1996 = getelementptr i8, ptr %i.aeu, i64 %index1995 ; 2 uses
  %next.gep1997 = getelementptr i8, ptr %i.afb, i64 %index1995 ; 2 uses
  %i.afl = getelementptr i8, ptr %next.gep1997, i64 16
  %wide.load1998 = load <16 x i8>, ptr %next.gep1997, align 1, !tbaa !31
  %wide.load1999 = load <16 x i8>, ptr %i.afl, align 1, !tbaa !31
  %i.afm = getelementptr i8, ptr %next.gep1996, i64 16
  store <16 x i8> %wide.load1998, ptr %next.gep1996, align 1, !tbaa !31
  store <16 x i8> %wide.load1999, ptr %i.afm, align 1, !tbaa !31
  %index.next2000 = add nuw i64 %index1995, 32    ; 2 uses
  %i.afn = icmp eq i64 %index.next2000, %n.vec1993
  br i1 %i.afn, label %middle.block2001, label %vector.body1994, !llvm.loop !249

middle.block2001:                                 ; preds = %vector.body1994
  %cmp.n2002 = icmp eq i64 %n.vec1993, %i.aff
  br i1 %cmp.n2002, label %.loopexit1089, label %vec.epilog.iter.check2008

vec.epilog.iter.check2008:                        ; preds = %middle.block2001
  %min.epilog.iters.check2009 = icmp eq i64 %n.mod.vf1992, 0
  br i1 %min.epilog.iters.check2009, label %.lr.ph1548.preheader, label %vec.epilog.ph2010, !prof !70

vec.epilog.ph2010:                                ; preds = %vector.main.loop.iter.check1989, %vec.epilog.iter.check2008
  %vec.epilog.resume.val2003 = phi i64 [ %n.vec1993, %vec.epilog.iter.check2008 ], [ 0, %vector.main.loop.iter.check1989 ]
  %n.vec2012 = and i64 %i.aff, 2147483644         ; 5 uses
  %i.afo = trunc nuw nsw i64 %n.vec2012 to i32
  %i.afp = sub nsw i32 %i.aew, %i.afo
  %i.afq = getelementptr i8, ptr %i.aeu, i64 %n.vec2012 ; 2 uses
  %i.afr = getelementptr i8, ptr %i.afb, i64 %n.vec2012
  br label %vec.epilog.vector.body2013

vec.epilog.vector.body2013:                       ; preds = %vec.epilog.vector.body2013, %vec.epilog.ph2010
  %index2014 = phi i64 [ %vec.epilog.resume.val2003, %vec.epilog.ph2010 ], [ %index.next2018, %vec.epilog.vector.body2013 ] ; 3 uses
  %next.gep2015 = getelementptr i8, ptr %i.aeu, i64 %index2014
  %next.gep2016 = getelementptr i8, ptr %i.afb, i64 %index2014
  %wide.load2017 = load <4 x i8>, ptr %next.gep2016, align 1, !tbaa !31
  store <4 x i8> %wide.load2017, ptr %next.gep2015, align 1, !tbaa !31
  %index.next2018 = add nuw i64 %index2014, 4     ; 2 uses
  %i.afs = icmp eq i64 %index.next2018, %n.vec2012
  br i1 %i.afs, label %vec.epilog.middle.block2019, label %vec.epilog.vector.body2013, !llvm.loop !250

vec.epilog.middle.block2019:                      ; preds = %vec.epilog.vector.body2013
  %cmp.n2020 = icmp eq i64 %n.vec2012, %i.aff
  br i1 %cmp.n2020, label %.loopexit1089, label %.lr.ph1548.preheader

.lr.ph1548.preheader:                             ; preds = %iter.check2006, %vec.epilog.iter.check2008, %vec.epilog.middle.block2019
  %.07951546.ph = phi i32 [ %i.aew, %iter.check2006 ], [ %i.afi, %vec.epilog.iter.check2008 ], [ %i.afp, %vec.epilog.middle.block2019 ]
  %.08131545.ph = phi ptr [ %i.aeu, %iter.check2006 ], [ %i.afj, %vec.epilog.iter.check2008 ], [ %i.afq, %vec.epilog.middle.block2019 ]
  %.08171544.ph = phi ptr [ %i.afb, %iter.check2006 ], [ %i.afk, %vec.epilog.iter.check2008 ], [ %i.afr, %vec.epilog.middle.block2019 ]
  br label %.lr.ph1548

.lr.ph1548:                                       ; preds = %.lr.ph1548.preheader, %.lr.ph1548
  %.07951546 = phi i32 [ %i.aft, %.lr.ph1548 ], [ %.07951546.ph, %.lr.ph1548.preheader ] ; 2 uses
  %.08131545 = phi ptr [ %i.afw, %.lr.ph1548 ], [ %.08131545.ph, %.lr.ph1548.preheader ] ; 2 uses
  %.08171544 = phi ptr [ %i.afu, %.lr.ph1548 ], [ %.08171544.ph, %.lr.ph1548.preheader ] ; 2 uses
  %i.aft = add nsw i32 %.07951546, -1
  %i.afu = getelementptr inbounds nuw i8, ptr %.08171544, i64 1
end_hunk_0
