inline.NumInlined: 4004
inline.NumDeleted: 562
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 35
begin_hunk_0_@nl80211_send_wiphy:bb.a
  br i1 %.not589, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dl = call i32 @nla_put(ptr noundef %2, i32 noundef 139, i32 noundef 0, ptr noundef null) #27
  %.not590 = icmp eq i32 %i.dl, 0
  br i1 %.not590, label %._crit_edge852, label %.thread730

._crit_edge852:                                   ; preds = %bb.ab
  %.pre853 = load i32, ptr %i.cw, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge852, %bb.aa
  %i.dm = phi i32 [ %.pre853, %._crit_edge852 ], [ %i.dj, %bb.aa ]
  %i.dn = and i32 %i.dm, 65536
  %.not591 = icmp eq i32 %i.dn, 0
  br i1 %.not591, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = call i32 @nla_put(ptr noundef %2, i32 noundef 140, i32 noundef 0, ptr noundef null) #27
  %.not592 = icmp eq i32 %i.do, 0
  br i1 %.not592, label %bb.ae, label %.thread730

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dp = load i64, ptr %i.bp, align 8
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %i.bp, align 8
  %i.dr = getelementptr i8, ptr %6, i64 48
  %i.ds = load i8, ptr %i.dr, align 8, !range !16, !noundef !17
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.hq, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.h
  %i.du = getelementptr i8, ptr %0, i64 1124
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = shl i32 %i.dv, 2
  %i.dx = getelementptr i8, ptr %0, i64 1128
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call i32 @nla_put(ptr noundef %2, i32 noundef 57, i32 noundef %i.dw, ptr noundef %i.dy) #27
  %.not593 = icmp eq i32 %i.dz, 0
  br i1 %.not593, label %bb.ag, label %.thread730

bb.ag:                                            ; preds = %bb.af
  %i.ea = getelementptr i8, ptr %0, i64 1234
  %i.eb = load i8, ptr %i.ea, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #29
  store i8 %i.eb, ptr %i.aj, align 1
  %i.ec = call i32 @nla_put(ptr noundef %2, i32 noundef 86, i32 noundef 1, ptr noundef nonnull %i.aj) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #29
  %.not594 = icmp eq i32 %i.ec, 0
  br i1 %.not594, label %bb.ah, label %.thread730

bb.ah:                                            ; preds = %bb.ag
  %i.ed = getelementptr i8, ptr %0, i64 1068      ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = and i32 %i.ee, 128
  %.not595 = icmp eq i32 %i.ef, 0
  br i1 %.not595, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = call i32 @nla_put(ptr noundef %2, i32 noundef 102, i32 noundef 0, ptr noundef null) #27
  %.not596 = icmp eq i32 %i.eg, 0
  br i1 %.not596, label %bb.aj, label %.thread730

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.eh = getelementptr i8, ptr %0, i64 1236      ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #29
  store i32 %i.ei, ptr %i.ai, align 4
  %i.ej = call i32 @nla_put(ptr noundef %2, i32 noundef 113, i32 noundef 4, ptr noundef nonnull %i.ai) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #29
  %.not597 = icmp eq i32 %i.ej, 0
  br i1 %.not597, label %bb.ak, label %.thread730

bb.ak:                                            ; preds = %bb.aj
  %i.ek = getelementptr i8, ptr %0, i64 1240      ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #29
  store i32 %i.el, ptr %i.ah, align 4
  %i.em = call i32 @nla_put(ptr noundef %2, i32 noundef 114, i32 noundef 4, ptr noundef nonnull %i.ah) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #29
  %.not598 = icmp eq i32 %i.em, 0
  br i1 %.not598, label %bb.al, label %.thread730

bb.al:                                            ; preds = %bb.ak
  %i.en = load i32, ptr %i.ed, align 4
  %i.eo = and i32 %i.en, 524288
  %.not599 = icmp eq i32 %i.eo, 0
  br i1 %.not599, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ep = getelementptr i8, ptr %0, i64 1244
  %i.eq = load i32, ptr %i.ep, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #29
  store i32 %i.eq, ptr %i.ag, align 4
  %i.er = call i32 @nla_put(ptr noundef %2, i32 noundef 144, i32 noundef 4, ptr noundef nonnull %i.ag) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #29
  %.not600 = icmp eq i32 %i.er, 0
  br i1 %.not600, label %bb.an, label %.thread730

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.es = load i32, ptr %i.eh, align 4
  %.not601 = icmp eq i32 %i.es, 0
  br i1 %.not601, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.et = load i32, ptr %i.ek, align 8
  %.not602 = icmp eq i32 %i.et, 0
  br i1 %.not602, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.eu = load ptr, ptr %0, align 32
  %i.ev = getelementptr i8, ptr %i.eu, i64 568
  %i.ew = load ptr, ptr %i.ev, align 8
  %.not603 = icmp eq ptr %i.ew, null
  br i1 %.not603, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #29
  store i32 0, ptr %i.aw, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #29
  store i32 0, ptr %i.ax, align 4
  %i.ex = call fastcc i32 @rdev_get_antenna(ptr noundef %0, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax) #28
  %.not604 = icmp eq i32 %i.ex, 0
  br i1 %.not604, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.ey = load i32, ptr %i.aw, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #29
  store i32 %i.ey, ptr %i.af, align 4
  %i.ez = call i32 @nla_put(ptr noundef %2, i32 noundef 105, i32 noundef 4, ptr noundef nonnull %i.af) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #29
  %.not605 = icmp eq i32 %i.ez, 0
  br i1 %.not605, label %bb.as, label %.thread

bb.as:                                            ; preds = %bb.ar
  %i.fa = load i32, ptr %i.ax, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #29
  store i32 %i.fa, ptr %i.ae, align 4
  %i.fb = call i32 @nla_put(ptr noundef %2, i32 noundef 106, i32 noundef 4, ptr noundef nonnull %i.ae) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #29
  %.not606 = icmp eq i32 %i.fb, 0
  br i1 %.not606, label %bb.at, label %.thread

.thread:                                          ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #29
  br label %.thread730

bb.at:                                            ; preds = %bb.aq, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #29
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ap, %bb.ao
  %i.fc = load i64, ptr %i.bp, align 8
  %i.fd = add i64 %i.fc, 1
  store i64 %i.fd, ptr %i.bp, align 8
  %i.fe = getelementptr i8, ptr %6, i64 48
  %i.ff = load i8, ptr %i.fe, align 8, !range !16, !noundef !17
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.hq, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.h
  %i.fh = getelementptr i8, ptr %0, i64 1064
  %i.fi = load i16, ptr %i.fh, align 8
  %i.fj = call fastcc i32 @nl80211_put_iftypes(ptr noundef %2, i32 noundef 32, i16 noundef zeroext %i.fi) #28, !srcloc !85
  %.not607 = icmp eq i32 %i.fj, 0
  br i1 %.not607, label %bb.aw, label %.thread730

bb.aw:                                            ; preds = %bb.av
  %i.fk = load i64, ptr %i.bp, align 8
  %i.fl = add i64 %i.fk, 1
  store i64 %i.fl, ptr %i.bp, align 8
  %i.fm = getelementptr i8, ptr %6, i64 48
  %i.fn = load i8, ptr %i.fm, align 8, !range !16, !noundef !17
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.hq, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.h
  %i.fp = getelementptr i8, ptr %2, i64 188       ; 8 uses
  %.val.i = load i32, ptr %i.fp, align 4
  %i.fq = getelementptr i8, ptr %2, i64 200       ; 8 uses
  %.val4.i = load ptr, ptr %i.fq, align 8
  %i.fr = zext i32 %.val.i to i64
  %i.fs = getelementptr i8, ptr %.val4.i, i64 %i.fr ; 3 uses
  %i.ft = call i32 @nla_put(ptr noundef %2, i32 noundef 22, i32 noundef 0, ptr noundef null) #27
  %i.fu = icmp slt i32 %i.ft, 0
  %.not608771 = icmp eq ptr %i.fs, null
  %.not608 = select i1 %i.fu, i1 true, i1 %.not608771
  br i1 %.not608, label %.thread730, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fv = getelementptr i8, ptr %6, i64 24        ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8            ; 2 uses
  %i.fx = trunc i64 %i.fw to i32                  ; 3 uses
  %i.fy = getelementptr i8, ptr %6, i64 48        ; 7 uses
  %i.fz = load i8, ptr %i.fy, align 8, !range !16, !noundef !17 ; 2 uses
  %i.ga = trunc nuw i8 %i.fz to i1                ; 2 uses
  %i.gb = select i1 %i.ga, i32 6, i32 3
  %i.gc = icmp ugt i32 %i.gb, %i.fx
  %i.gd = icmp ult i32 %i.fx, 2
  %brmerge810 = or i1 %i.gd, %i.ga
  %or.cond811 = and i1 %brmerge810, %i.gc
  br i1 %or.cond811, label %.lr.ph814, label %.loopexit

.lr.ph814:                                        ; preds = %bb.ay
  %i.ge = getelementptr i8, ptr %0, i64 1296
  %i.gf = getelementptr i8, ptr %6, i64 32        ; 6 uses
  %i.gg = and i64 %i.fw, 4294967295
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph814, %bb.bl
  %i.gh = phi i8 [ %i.fz, %.lr.ph814 ], [ %i.iw, %bb.bl ]
  %indvars.iv839 = phi i64 [ %i.gg, %.lr.ph814 ], [ %indvars.iv.next840, %bb.bl ] ; 4 uses
  %i.gi = getelementptr [8 x i8], ptr %i.ge, i64 %indvars.iv839
  %i.gj = load ptr, ptr %i.gi, align 8            ; 4 uses
  %.not609 = icmp eq ptr %i.gj, null
  br i1 %.not609, label %bb.bl, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.val.i673 = load i32, ptr %i.fp, align 4
  %.val4.i674 = load ptr, ptr %i.fq, align 8
  %i.gk = zext i32 %.val.i673 to i64
  %i.gl = getelementptr i8, ptr %.val4.i674, i64 %i.gk ; 3 uses
  %i.gm = trunc nuw nsw i64 %indvars.iv839 to i32 ; 2 uses
  %i.gn = call i32 @nla_put(ptr noundef %2, i32 noundef %i.gm, i32 noundef 0, ptr noundef null) #27
  %i.go = icmp slt i32 %i.gn, 0
  %.not610772 = icmp eq ptr %i.gl, null
  %.not610 = select i1 %i.go, i1 true, i1 %.not610772
  br i1 %.not610, label %.thread730, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gp = load i64, ptr %i.gf, align 8
  %cond = icmp eq i64 %i.gp, 0
  br i1 %cond, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.gq = load i8, ptr %i.fy, align 8, !range !16, !noundef !17
  %i.gr = trunc nuw i8 %i.gq to i1
  %i.gs = call fastcc i32 @nl80211_send_band_rateinfo(ptr noundef %2, ptr noundef %i.gj, i1 noundef zeroext %i.gr) #28, !srcloc !86
  %.not611 = icmp eq i32 %i.gs, 0
  br i1 %.not611, label %bb.bd, label %.thread730

bb.bd:                                            ; preds = %bb.bc
  %i.gt = load i64, ptr %i.gf, align 8
  %i.gu = add i64 %i.gt, 1
  store i64 %i.gu, ptr %i.gf, align 8
  %i.gv = load i8, ptr %i.fy, align 8, !range !16, !noundef !17
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb
  %.val.i676 = load i32, ptr %i.fp, align 4
  %.val4.i677 = load ptr, ptr %i.fq, align 8
  %i.gx = zext i32 %.val.i676 to i64
  %i.gy = getelementptr i8, ptr %.val4.i677, i64 %i.gx ; 3 uses
  %i.gz = call i32 @nla_put(ptr noundef %2, i32 noundef 1, i32 noundef 0, ptr noundef null) #27
  %i.ha = icmp slt i32 %i.gz, 0
  %.not612773 = icmp eq ptr %i.gy, null
  %.not612 = select i1 %i.ha, i1 true, i1 %.not612773
  br i1 %.not612, label %.thread730, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hb = load i64, ptr %i.gf, align 8
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = add i32 %i.hc, -1                       ; 2 uses
  %i.he = getelementptr i8, ptr %i.gj, i64 20     ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4
  %i.hg = icmp slt i32 %i.hd, %i.hf
  br i1 %i.hg, label %.lr.ph805.preheader, label %._crit_edge806.thread

.lr.ph805.preheader:                              ; preds = %bb.bf
  %i.hh = sext i32 %i.hd to i64
  br label %.lr.ph805

.lr.ph805:                                        ; preds = %.lr.ph805.preheader, %bb.bi
  %indvars.iv836 = phi i64 [ %i.hh, %.lr.ph805.preheader ], [ %indvars.iv.next837, %bb.bi ] ; 3 uses
  %.val.i679 = load i32, ptr %i.fp, align 4
  %.val4.i680 = load ptr, ptr %i.fq, align 8
  %i.hi = zext i32 %.val.i679 to i64
  %i.hj = getelementptr i8, ptr %.val4.i680, i64 %i.hi ; 3 uses
  %i.hk = trunc nsw i64 %indvars.iv836 to i32     ; 2 uses
  %i.hl = call i32 @nla_put(ptr noundef %2, i32 noundef %i.hk, i32 noundef 0, ptr noundef null) #27
  %i.hm = icmp slt i32 %i.hl, 0
  %.not613774 = icmp eq ptr %i.hj, null
  %.not613 = select i1 %i.hm, i1 true, i1 %.not613774
  br i1 %.not613, label %.thread730, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph805
  %i.hn = load ptr, ptr %i.gj, align 8
  %i.ho = getelementptr [80 x i8], ptr %i.hn, i64 %indvars.iv836
  %i.hp = load i8, ptr %i.fy, align 8, !range !16, !noundef !17
  %i.hq = trunc nuw i8 %i.hp to i1
  %i.hr = call fastcc i32 @nl80211_msg_put_channel(ptr noundef %2, ptr noundef %i.ay, ptr noundef %i.ho, i1 noundef zeroext %i.hq) #28, !srcloc !87
  %.not614 = icmp eq i32 %i.hr, 0
  br i1 %.not614, label %bb.bh, label %.thread730

bb.bh:                                            ; preds = %bb.bg
  %.val.i682 = load i32, ptr %i.fp, align 4
  %.val4.i683 = load ptr, ptr %i.fq, align 8
  %i.hs = zext i32 %.val.i682 to i64
  %i.ht = getelementptr i8, ptr %.val4.i683, i64 %i.hs
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = ptrtoint ptr %i.hj to i64
  %i.hw = sub i64 %i.hu, %i.hv
  %i.hx = trunc i64 %i.hw to i16
  store i16 %i.hx, ptr %i.hj, align 2
  %i.hy = load i8, ptr %i.fy, align 8, !range !16, !noundef !17
  %i.hz = trunc nuw i8 %i.hy to i1
  %.pre854.pre = load i32, ptr %i.he, align 4     ; 2 uses
  br i1 %i.hz, label %._crit_edge806, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %indvars.iv.next837 = add nsw i64 %indvars.iv836, 1 ; 3 uses
  %i.ia = sext i32 %.pre854.pre to i64
  %i.ib = icmp slt i64 %indvars.iv.next837, %i.ia
  br i1 %i.ib, label %.lr.ph805, label %._crit_edge806.split.loop.exit, !llvm.loop !88

._crit_edge806.split.loop.exit:                   ; preds = %bb.bi
  %indvars.le = trunc i64 %indvars.iv.next837 to i32
  br label %._crit_edge806

._crit_edge806:                                   ; preds = %bb.bh, %._crit_edge806.split.loop.exit
  %.0445.lcssa.ph = phi i32 [ %indvars.le, %._crit_edge806.split.loop.exit ], [ %i.hk, %bb.bh ] ; 2 uses
  %i.ic = icmp slt i32 %.0445.lcssa.ph, %.pre854.pre
  %i.id = add i32 %.0445.lcssa.ph, 2
  %i.ie = sext i32 %i.id to i64
  %cond.fr = freeze i1 %i.ic
  %spec.select933 = select i1 %cond.fr, i64 %i.ie, i64 0
  br label %._crit_edge806.thread

._crit_edge806.thread:                            ; preds = %._crit_edge806, %bb.bf
  %i.if = phi i64 [ 0, %bb.bf ], [ %spec.select933, %._crit_edge806 ]
  store i64 %i.if, ptr %i.gf, align 8
  %.val.i684 = load i32, ptr %i.fp, align 4
  %.val4.i685 = load ptr, ptr %i.fq, align 8
  %i.ig = zext i32 %.val.i684 to i64
  %i.ih = getelementptr i8, ptr %.val4.i685, i64 %i.ig
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = ptrtoint ptr %i.gy to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = trunc i64 %i.ik to i16
  store i16 %i.il, ptr %i.gy, align 2
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bd, %._crit_edge806.thread
  %.val.i686 = load i32, ptr %i.fp, align 4
  %.val4.i687 = load ptr, ptr %i.fq, align 8
  %i.im = zext i32 %.val.i686 to i64
  %i.in = getelementptr i8, ptr %.val4.i687, i64 %i.im
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = ptrtoint ptr %i.gl to i64
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = trunc i64 %i.iq to i16
  store i16 %i.ir, ptr %i.gl, align 2
  %i.is = load i8, ptr %i.fy, align 8, !range !16, !noundef !17
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.iu = load i64, ptr %i.gf, align 8
  %.not615 = icmp ne i64 %i.iu, 0
  %i.iv = sext i1 %.not615 to i32
  %spec.select = add nsw i32 %i.gm, %i.iv
  br label %.loopexit

bb.bl:                                            ; preds = %bb.bj, %bb.az
  %i.iw = phi i8 [ 0, %bb.bj ], [ %i.gh, %bb.az ] ; 2 uses
  %indvars.iv.next840 = add nuw nsw i64 %indvars.iv839, 1 ; 3 uses
  %i.ix = trunc nuw i8 %i.iw to i1                ; 2 uses
  %i.iy = select i1 %i.ix, i64 6, i64 3
  %i.iz = icmp samesign ult i64 %indvars.iv.next840, %i.iy
  %8 = icmp eq i64 %indvars.iv839, 0
  %brmerge = or i1 %8, %i.ix
  %or.cond = and i1 %brmerge, %i.iz
  br i1 %or.cond, label %bb.az, label %.loopexit.loopexit, !llvm.loop !89

.loopexit.loopexit:                               ; preds = %bb.bl
  %i.ja = trunc nuw nsw i64 %indvars.iv.next840 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ay, %bb.bk
  %.3458 = phi i32 [ %spec.select, %bb.bk ], [ %i.fx, %bb.ay ], [ %i.ja, %.loopexit.loopexit ] ; 2 uses
  %.val.i688 = load i32, ptr %i.fp, align 4
  %.val4.i689 = load ptr, ptr %i.fq, align 8
  %i.jb = zext i32 %.val.i688 to i64
  %i.jc = getelementptr i8, ptr %.val4.i689, i64 %i.jb
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = ptrtoint ptr %i.fs to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = trunc i64 %i.jf to i16
  store i16 %i.jg, ptr %i.fs, align 2
  %i.jh = icmp ugt i32 %.3458, 5                  ; 2 uses
  %i.ji = add nuw nsw i32 %.3458, 1
  %narrow775 = select i1 %i.jh, i32 0, i32 %i.ji
  %storemerge616 = zext nneg i32 %narrow775 to i64
  store i64 %storemerge616, ptr %i.fv, align 8
  br i1 %i.jh, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %.loopexit
  %i.jj = getelementptr i8, ptr %6, i64 32
  %i.jk = load i64, ptr %i.jj, align 8
  %i.jl = icmp eq i64 %i.jk, 0
  br i1 %i.jl, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.jm = load i64, ptr %i.bp, align 8
  %i.jn = add i64 %i.jm, 1
  store i64 %i.jn, ptr %i.bp, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %.loopexit
  %i.jo = load i8, ptr %i.fy, align 8, !range !16, !noundef !17
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %bb.hq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.h
  %i.jq = getelementptr i8, ptr %2, i64 188       ; 2 uses
  %.val.i690 = load i32, ptr %i.jq, align 4
  %i.jr = getelementptr i8, ptr %2, i64 200       ; 2 uses
  %.val4.i691 = load ptr, ptr %i.jr, align 8
  %i.js = zext i32 %.val.i690 to i64
  %i.jt = getelementptr i8, ptr %.val4.i691, i64 %i.js ; 3 uses
  %i.ju = call i32 @nla_put(ptr noundef %2, i32 noundef 50, i32 noundef 0, ptr noundef null) #27
  %i.jv = icmp slt i32 %i.ju, 0
  %.not617776 = icmp eq ptr %i.jt, null
  %.not617 = select i1 %i.jv, i1 true, i1 %.not617776
  br i1 %.not617, label %.thread730, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jw = call fastcc i32 @nl80211_add_commands_unsplit(ptr noundef %0, ptr noundef %2) #28, !srcloc !90 ; 3 uses
  %i.jx = icmp slt i32 %i.jw, 0
  br i1 %i.jx, label %.thread730, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jy = getelementptr i8, ptr %6, i64 48        ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 8, !range !16, !noundef !17
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %bb.bs, label %bb.cp

bb.bs:                                            ; preds = %bb.br
  %i.kb = load ptr, ptr %0, align 32              ; 2 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 688
  %i.kd = load ptr, ptr %i.kc, align 8
  %.not618 = icmp eq ptr %i.kd, null
  br i1 %.not618, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ke = add nuw nsw i32 %i.jw, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #29
  store i32 98, ptr %i.ad, align 4
  %i.kf = call i32 @nla_put(ptr noundef %2, i32 noundef %i.ke, i32 noundef 4, ptr noundef nonnull %i.ad) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #29
  %.not619 = icmp eq i32 %i.kf, 0
  br i1 %.not619, label %._crit_edge855, label %.thread730

._crit_edge855:                                   ; preds = %bb.bt
  %.pre856 = load ptr, ptr %0, align 32
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge855, %bb.bs
  %i.kg = phi ptr [ %.pre856, %._crit_edge855 ], [ %i.kb, %bb.bs ] ; 2 uses
  %.1446 = phi i32 [ %i.ke, %._crit_edge855 ], [ %i.jw, %bb.bs ] ; 2 uses
  %i.kh = getelementptr i8, ptr %i.kg, i64 696
  %i.ki = load ptr, ptr %i.kh, align 8
  %.not620 = icmp eq ptr %i.ki, null
  br i1 %.not620, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kj = add nuw nsw i32 %.1446, 1               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #29
  store i32 99, ptr %i.ac, align 4
  %i.kk = call i32 @nla_put(ptr noundef %2, i32 noundef %i.kj, i32 noundef 4, ptr noundef nonnull %i.ac) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #29
  %.not621 = icmp eq i32 %i.kk, 0
  br i1 %.not621, label %._crit_edge872, label %.thread730

._crit_edge872:                                   ; preds = %bb.bv
  %.pre859.pre = load ptr, ptr %0, align 32
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge872, %bb.bu
  %.pre859 = phi ptr [ %.pre859.pre, %._crit_edge872 ], [ %i.kg, %bb.bu ] ; 3 uses
  %.2447 = phi i32 [ %i.kj, %._crit_edge872 ], [ %.1446, %bb.bu ] ; 3 uses
  %i.kl = getelementptr i8, ptr %0, i64 1068
  %i.km = load i32, ptr %i.kl, align 4
  %i.kn = and i32 %i.km, 8388608
  %.not622 = icmp eq i32 %i.kn, 0
  br i1 %.not622, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ko = getelementptr i8, ptr %.pre859, i64 712
  %i.kp = load ptr, ptr %i.ko, align 8
  %.not623 = icmp eq ptr %i.kp, null
  br i1 %.not623, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kq = add nuw nsw i32 %.2447, 1               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #29
  store i32 102, ptr %i.ab, align 4
  %i.kr = call i32 @nla_put(ptr noundef %2, i32 noundef %i.kq, i32 noundef 4, ptr noundef nonnull %i.ab) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #29
  %.not624 = icmp eq i32 %i.kr, 0
  br i1 %.not624, label %._crit_edge857, label %.thread730

._crit_edge857:                                   ; preds = %bb.by
  %.pre858 = load ptr, ptr %0, align 32
  br label %bb.bz

bb.bz:                                            ; preds = %._crit_edge857, %bb.bw, %bb.bx
  %i.ks = phi ptr [ %.pre858, %._crit_edge857 ], [ %.pre859, %bb.bx ], [ %.pre859, %bb.bw ] ; 2 uses
  %.3448 = phi i32 [ %i.kq, %._crit_edge857 ], [ %.2447, %bb.bx ], [ %.2447, %bb.bw ] ; 2 uses
  %i.kt = getelementptr i8, ptr %i.ks, i64 720
  %i.ku = load ptr, ptr %i.kt, align 8
  %.not625 = icmp eq ptr %i.ku, null
  br i1 %.not625, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kv = add nuw nsw i32 %.3448, 1               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #29
  store i32 104, ptr %i.aa, align 4
  %i.kw = call i32 @nla_put(ptr noundef %2, i32 noundef %i.kv, i32 noundef 4, ptr noundef nonnull %i.aa) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #29
  %.not626 = icmp eq i32 %i.kw, 0
  br i1 %.not626, label %._crit_edge874, label %.thread730

._crit_edge874:                                   ; preds = %bb.ca
  %.pre862.pre = load ptr, ptr %0, align 32
  br label %bb.cb

bb.cb:                                            ; preds = %._crit_edge874, %bb.bz
  %.pre862 = phi ptr [ %.pre862.pre, %._crit_edge874 ], [ %i.ks, %bb.bz ] ; 3 uses
  %.4449 = phi i32 [ %i.kv, %._crit_edge874 ], [ %.3448, %bb.bz ] ; 3 uses
  %i.kx = getelementptr i8, ptr %0, i64 1076
  %i.ky = load i32, ptr %i.kx, align 4
  %i.kz = and i32 %i.ky, 67108864
  %.not627 = icmp eq i32 %i.kz, 0
  br i1 %.not627, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.la = getelementptr i8, ptr %.pre862, i64 736
  %i.lb = load ptr, ptr %i.la, align 8
  %.not628 = icmp eq ptr %i.lb, null
  br i1 %.not628, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.lc = add nuw nsw i32 %.4449, 1               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #29
  store i32 105, ptr %i.z, align 4
  %i.ld = call i32 @nla_put(ptr noundef %2, i32 noundef %i.lc, i32 noundef 4, ptr noundef nonnull %i.z) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #29
  %.not629 = icmp eq i32 %i.ld, 0
  br i1 %.not629, label %._crit_edge860, label %.thread730

._crit_edge860:                                   ; preds = %bb.cd
  %.pre861 = load ptr, ptr %0, align 32
  br label %bb.ce

bb.ce:                                            ; preds = %._crit_edge860, %bb.cb, %bb.cc
  %i.le = phi ptr [ %.pre861, %._crit_edge860 ], [ %.pre862, %bb.cc ], [ %.pre862, %bb.cb ] ; 2 uses
  %.5450 = phi i32 [ %i.lc, %._crit_edge860 ], [ %.4449, %bb.cc ], [ %.4449, %bb.cb ] ; 2 uses
  %i.lf = getelementptr i8, ptr %i.le, i64 824
  %i.lg = load ptr, ptr %i.lf, align 8
  %.not630 = icmp eq ptr %i.lg, null
  br i1 %.not630, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lh = add nuw nsw i32 %.5450, 1               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #29
  store i32 121, ptr %i.y, align 4
  %i.li = call i32 @nla_put(ptr noundef %2, i32 noundef %i.lh, i32 noundef 4, ptr noundef nonnull %i.y) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #29
  %.not631 = icmp eq i32 %i.li, 0
  br i1 %.not631, label %._crit_edge863, label %.thread730

end_hunk_0
