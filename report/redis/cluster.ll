inline.NumInlined: 95
inline.NumDeleted: 16
begin_hunk_0_@migrateCommand:bb.a
  br label %bb.ab

._crit_edge.thread:                               ; preds = %bb.x, %._crit_edge
  call void @zfree(ptr noundef %i.bz) #21
  call void @zfree(ptr noundef %i.ca) #21
  %i.dh = call ptr @sdsnew(ptr noundef nonnull @.str.25) #21
  call void @addReplySds(ptr noundef nonnull %0, ptr noundef %i.dh) #21
  br label %.thread

bb.ab:                                            ; preds = %.preheader, %bb.do
  %i.di = phi i1 [ false, %bb.do ], [ true, %.preheader ]
  %.0280 = phi i32 [ 0, %bb.do ], [ 1, %.preheader ] ; 3 uses
  %.0275 = phi i32 [ %.3278557, %bb.do ], [ 0, %.preheader ] ; 2 uses
  %.3271 = phi i32 [ %.0250.lcssa, %bb.do ], [ %.1261, %.preheader ] ; 2 uses
  %i.dj = load ptr, ptr %i.bm, align 8, !tbaa !70 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !71
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !71
  %i.do = load i64, ptr %i.a, align 8, !tbaa !50
  %i.dp = call ptr @migrateGetSocket(ptr noundef nonnull %0, ptr noundef %i.dl, ptr noundef %i.dn, i64 noundef %i.do) ; 6 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @zfree(ptr noundef %i.bz) #21
  call void @zfree(ptr noundef %i.ca) #21
  br label %.thread

bb.ad:                                            ; preds = %bb.ab
  %i.dr = call ptr @sdsempty() #21
  call void @rioInitWithBuffer(ptr noundef nonnull %1, ptr noundef %i.dr) #21
  br i1 %i.cr, label %bb.ae, label %bb.ax

bb.ae:                                            ; preds = %bb.ad
  %i.ds = call i64 @rioWriteBulkCount(ptr noundef nonnull %1, i8 noundef signext 42, i64 noundef %i.cs) #21
  %.not302 = icmp eq i64 %i.ds, 0
  br i1 %.not302, label %bb.af, label %bb.ag, !prof !51

bb.af:                                            ; preds = %bb.ae
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 548) #21
  call void @abort() #22
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dt = call i64 @rioWriteBulkString(ptr noundef nonnull %1, ptr noundef nonnull @.str.27, i64 noundef 4) #21
  %.not303 = icmp eq i64 %i.dt, 0
  br i1 %.not303, label %bb.ah, label %bb.ai, !prof !51

bb.ah:                                            ; preds = %bb.ag
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 549) #21
  call void @abort() #22
  unreachable

bb.ai:                                            ; preds = %bb.ag
  br i1 %.not301, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val.i329 = load i8, ptr %i.ct, align 1, !tbaa !13 ; 2 uses
  %i.du = and i8 %.val.i329, 7
  switch i8 %i.du, label %sdslen.exit331 [
    i8 0, label %bb.ak
    i8 1, label %bb.al
    i8 2, label %bb.am
    i8 3, label %bb.an
    i8 4, label %bb.ao
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.dv = lshr i8 %.val.i329, 3
  %i.dw = zext nneg i8 %i.dv to i64
  br label %sdslen.exit331

bb.al:                                            ; preds = %bb.aj
  %i.dx = load i8, ptr %i.cx, align 1, !tbaa !13
  %i.dy = zext i8 %i.dx to i64
  br label %sdslen.exit331

bb.am:                                            ; preds = %bb.aj
  %i.dz = load i16, ptr %i.cw, align 1, !tbaa !52
  %i.ea = zext i16 %i.dz to i64
  br label %sdslen.exit331

bb.an:                                            ; preds = %bb.aj
  %i.eb = load i32, ptr %i.cv, align 1, !tbaa !9
  %i.ec = zext i32 %i.eb to i64
  br label %sdslen.exit331

bb.ao:                                            ; preds = %bb.aj
  %i.ed = load i64, ptr %i.cu, align 1, !tbaa !50
  br label %sdslen.exit331

sdslen.exit331:                                   ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao
  %.0.i330 = phi i64 [ %i.ed, %bb.ao ], [ %i.dw, %bb.ak ], [ %i.dy, %bb.al ], [ %i.ea, %bb.am ], [ %i.ec, %bb.an ], [ 0, %bb.aj ]
  %i.ee = call i64 @rioWriteBulkString(ptr noundef nonnull %1, ptr noundef nonnull %.0256428, i64 noundef %.0.i330) #21
  %.not304 = icmp eq i64 %i.ee, 0
  br i1 %.not304, label %bb.ap, label %bb.aq, !prof !51

bb.ap:                                            ; preds = %sdslen.exit331
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.2, i32 noundef 552) #21
  call void @abort() #22
  unreachable

bb.aq:                                            ; preds = %sdslen.exit331, %bb.ai
  %.val.i332 = load i8, ptr %i.cy, align 1, !tbaa !13 ; 2 uses
  %i.ef = and i8 %.val.i332, 7
  switch i8 %i.ef, label %sdslen.exit334 [
    i8 0, label %bb.ar
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.au
    i8 4, label %bb.av
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.eg = lshr i8 %.val.i332, 3
  %i.eh = zext nneg i8 %i.eg to i64
  br label %sdslen.exit334

bb.as:                                            ; preds = %bb.aq
  %i.ei = load i8, ptr %i.dc, align 1, !tbaa !13
  %i.ej = zext i8 %i.ei to i64
  br label %sdslen.exit334

bb.at:                                            ; preds = %bb.aq
  %i.ek = load i16, ptr %i.db, align 1, !tbaa !52
  %i.el = zext i16 %i.ek to i64
  br label %sdslen.exit334

bb.au:                                            ; preds = %bb.aq
  %i.em = load i32, ptr %i.da, align 1, !tbaa !9
  %i.en = zext i32 %i.em to i64
  br label %sdslen.exit334

bb.av:                                            ; preds = %bb.aq
  %i.eo = load i64, ptr %i.cz, align 1, !tbaa !50
  br label %sdslen.exit334

sdslen.exit334:                                   ; preds = %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av
  %.0.i333 = phi i64 [ %i.eo, %bb.av ], [ %i.eh, %bb.ar ], [ %i.ej, %bb.as ], [ %i.el, %bb.at ], [ %i.en, %bb.au ], [ 0, %bb.aq ]
  %i.ep = call i64 @rioWriteBulkString(ptr noundef nonnull %1, ptr noundef nonnull %.0264432, i64 noundef %.0.i333) #21
  %.not305 = icmp eq i64 %i.ep, 0
  br i1 %.not305, label %bb.aw, label %bb.ax, !prof !51

bb.aw:                                            ; preds = %sdslen.exit334
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.2, i32 noundef 555) #21
  call void @abort() #22
  unreachable

bb.ax:                                            ; preds = %sdslen.exit334, %bb.ad
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 3 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !107
  %i.es = load i64, ptr %i.b, align 8, !tbaa !50
  %i.et = icmp ne i64 %i.er, %i.es                ; 4 uses
  br i1 %i.et, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  %i.eu = call i64 @rioWriteBulkCount(ptr noundef nonnull %1, i8 noundef signext 42, i64 noundef 2) #21
  %.not306 = icmp eq i64 %i.eu, 0
  br i1 %.not306, label %bb.az, label %bb.ba, !prof !51

bb.az:                                            ; preds = %bb.ay
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 561) #21
  call void @abort() #22
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.ev = call i64 @rioWriteBulkString(ptr noundef nonnull %1, ptr noundef nonnull @.str.32, i64 noundef 6) #21
  %.not307 = icmp eq i64 %i.ev, 0
  br i1 %.not307, label %bb.bb, label %bb.bc, !prof !51

bb.bb:                                            ; preds = %bb.ba
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 562) #21
  call void @abort() #22
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.ew = load i64, ptr %i.b, align 8, !tbaa !50
  %i.ex = call i64 @rioWriteBulkLongLong(ptr noundef nonnull %1, i64 noundef %i.ew) #21
  %.not308 = icmp eq i64 %i.ex, 0
  br i1 %.not308, label %bb.bd, label %bb.be, !prof !51

bb.bd:                                            ; preds = %bb.bc
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 563) #21
  call void @abort() #22
  unreachable

bb.be:                                            ; preds = %bb.bc, %bb.ax
  %i.ey = icmp sgt i32 %.3271, 0
  br i1 %i.ey, label %.lr.ph457.preheader, label %._crit_edge458

.lr.ph457.preheader:                              ; preds = %bb.be
  %wide.trip.count518 = zext nneg i32 %.3271 to i64
  br label %.lr.ph457

.lr.ph457:                                        ; preds = %.lr.ph457.preheader, %bb.cj
  %indvars.iv515 = phi i64 [ 0, %.lr.ph457.preheader ], [ %indvars.iv.next516, %bb.cj ] ; 3 uses
  %.0250455 = phi i32 [ 0, %.lr.ph457.preheader ], [ %.1251, %bb.cj ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv515 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !71
  %i.fb = call i64 @kvobjGetExpire(ptr noundef %i.fa) #21 ; 2 uses
  %.not317 = icmp eq i64 %i.fb, -1
  br i1 %.not317, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph457
  %i.fc = call i64 @commandTimeSnapshot() #21
  %i.fd = sub nsw i64 %i.fb, %i.fc                ; 2 uses
  %i.fe = icmp slt i64 %i.fd, 0
  br i1 %i.fe, label %bb.cj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %3 = call i64 @llvm.umax.i64(i64 %i.fd, i64 1)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.lr.ph457
  %.0249 = phi i64 [ %3, %bb.bg ], [ 0, %.lr.ph457 ]
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !71
  %i.fg = sext i32 %.0250455 to i64               ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.fg
  store ptr %i.ff, ptr %i.fh, align 8, !tbaa !71
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv515 ; 3 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !71
  %i.fk = add nsw i32 %.0250455, 1                ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.fg
  store ptr %i.fj, ptr %i.fl, align 8, !tbaa !71
  %i.fm = call i64 @rioWriteBulkCount(ptr noundef nonnull %1, i8 noundef signext 42, i64 noundef %i.dd) #21
  %.not319 = icmp eq i64 %i.fm, 0
  br i1 %.not319, label %bb.bi, label %bb.bj, !prof !51

bb.bi:                                            ; preds = %bb.bh
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 591) #21
  call void @abort() #22
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.fn = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !111
  %.not320 = icmp eq i32 %i.fn, 0
  br i1 %.not320, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fo = call i64 @rioWriteBulkString(ptr noundef nonnull %1, ptr noundef nonnull @.str.36, i64 noundef 14) #21
  %.not322 = icmp eq i64 %i.fo, 0
  br i1 %.not322, label %bb.bl, label %bb.bo, !prof !51

bb.bl:                                            ; preds = %bb.bk
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2, i32 noundef 595) #21
  call void @abort() #22
  unreachable

bb.bm:                                            ; preds = %bb.bj
  %i.fp = call i64 @rioWriteBulkString(ptr noundef nonnull %1, ptr noundef nonnull @.str.38, i64 noundef 7) #21
  %.not321 = icmp eq i64 %i.fp, 0
  br i1 %.not321, label %bb.bn, label %bb.bo, !prof !51

bb.bn:                                            ; preds = %bb.bm
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.2, i32 noundef 597) #21
  call void @abort() #22
  unreachable

bb.bo:                                            ; preds = %bb.bm, %bb.bk
  %i.fq = load ptr, ptr %i.fi, align 8, !tbaa !71 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = lshr i32 %i.fs, 4
  %i.fu = and i32 %i.ft, 15
  switch i32 %i.fu, label %bb.bp [
    i32 8, label %bb.bq
    i32 0, label %bb.bq
  ], !prof !112

bb.bp:                                            ; preds = %bb.bo
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.2, i32 noundef 598) #21
  call void @abort() #22
  unreachable

bb.bq:                                            ; preds = %bb.bo, %bb.bo
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !77 ; 6 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 -1
  %.val.i335 = load i8, ptr %i.fx, align 1, !tbaa !13 ; 2 uses
  %i.fy = and i8 %.val.i335, 7
  switch i8 %i.fy, label %sdslen.exit337 [
    i8 0, label %bb.br
    i8 1, label %bb.bs
    i8 2, label %bb.bt
    i8 3, label %bb.bu
    i8 4, label %bb.bv
  ]

bb.br:                                            ; preds = %bb.bq
  %i.fz = lshr i8 %.val.i335, 3
  %i.ga = zext nneg i8 %i.fz to i64
  br label %sdslen.exit337

bb.bs:                                            ; preds = %bb.bq
  %i.gb = getelementptr inbounds i8, ptr %i.fw, i64 -3
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !13
  %i.gd = zext i8 %i.gc to i64
  br label %sdslen.exit337

bb.bt:                                            ; preds = %bb.bq
  %i.ge = getelementptr inbounds i8, ptr %i.fw, i64 -5
  %i.gf = load i16, ptr %i.ge, align 1, !tbaa !52
  %i.gg = zext i16 %i.gf to i64
  br label %sdslen.exit337

bb.bu:                                            ; preds = %bb.bq
  %i.gh = getelementptr inbounds i8, ptr %i.fw, i64 -9
  %i.gi = load i32, ptr %i.gh, align 1, !tbaa !9
  %i.gj = zext i32 %i.gi to i64
  br label %sdslen.exit337

bb.bv:                                            ; preds = %bb.bq
  %i.gk = getelementptr inbounds i8, ptr %i.fw, i64 -17
  %i.gl = load i64, ptr %i.gk, align 1, !tbaa !50
  br label %sdslen.exit337

sdslen.exit337:                                   ; preds = %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv
  %.0.i336 = phi i64 [ %i.gl, %bb.bv ], [ %i.ga, %bb.br ], [ %i.gd, %bb.bs ], [ %i.gg, %bb.bt ], [ %i.gj, %bb.bu ], [ 0, %bb.bq ]
  %i.gm = call i64 @rioWriteBulkString(ptr noundef nonnull %1, ptr noundef nonnull %i.fw, i64 noundef %.0.i336) #21
  %.not323 = icmp eq i64 %i.gm, 0
  br i1 %.not323, label %bb.bw, label %bb.bx, !prof !51

bb.bw:                                            ; preds = %sdslen.exit337
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.2, i32 noundef 600) #21
  call void @abort() #22
  unreachable

bb.bx:                                            ; preds = %sdslen.exit337
  %i.gn = call i64 @rioWriteBulkLongLong(ptr noundef nonnull %1, i64 noundef %.0249) #21
  %.not324 = icmp eq i64 %i.gn, 0
  br i1 %.not324, label %bb.by, label %bb.bz, !prof !51

bb.by:                                            ; preds = %bb.bx
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.2, i32 noundef 601) #21
  call void @abort() #22
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.go = load ptr, ptr %i.ez, align 8, !tbaa !71
  %i.gp = load ptr, ptr %i.fi, align 8, !tbaa !71
  %i.gq = load i64, ptr %i.b, align 8, !tbaa !50
  %i.gr = trunc i64 %i.gq to i32
  call void @createDumpPayload(ptr noundef nonnull %2, ptr noundef %i.go, ptr noundef %i.gp, i32 noundef %i.gr, i32 noundef 0)
  %i.gs = load ptr, ptr %i.de, align 8, !tbaa !13 ; 6 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 -1
  %.val.i338 = load i8, ptr %i.gt, align 1, !tbaa !13 ; 2 uses
  %i.gu = and i8 %.val.i338, 7
  switch i8 %i.gu, label %sdslen.exit340 [
    i8 0, label %bb.ca
    i8 1, label %bb.cb
    i8 2, label %bb.cc
    i8 3, label %bb.cd
    i8 4, label %bb.ce
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.gv = lshr i8 %.val.i338, 3
  %i.gw = zext nneg i8 %i.gv to i64
  br label %sdslen.exit340

bb.cb:                                            ; preds = %bb.bz
  %i.gx = getelementptr inbounds i8, ptr %i.gs, i64 -3
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !13
  %i.gz = zext i8 %i.gy to i64
  br label %sdslen.exit340

bb.cc:                                            ; preds = %bb.bz
  %i.ha = getelementptr inbounds i8, ptr %i.gs, i64 -5
  %i.hb = load i16, ptr %i.ha, align 1, !tbaa !52
  %i.hc = zext i16 %i.hb to i64
  br label %sdslen.exit340

bb.cd:                                            ; preds = %bb.bz
  %i.hd = getelementptr inbounds i8, ptr %i.gs, i64 -9
  %i.he = load i32, ptr %i.hd, align 1, !tbaa !9
  %i.hf = zext i32 %i.he to i64
  br label %sdslen.exit340

bb.ce:                                            ; preds = %bb.bz
  %i.hg = getelementptr inbounds i8, ptr %i.gs, i64 -17
  %i.hh = load i64, ptr %i.hg, align 1, !tbaa !50
  br label %sdslen.exit340

sdslen.exit340:                                   ; preds = %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce
  %.0.i339 = phi i64 [ %i.hh, %bb.ce ], [ %i.gw, %bb.ca ], [ %i.gz, %bb.cb ], [ %i.hc, %bb.cc ], [ %i.hf, %bb.cd ], [ 0, %bb.bz ]
  %i.hi = call i64 @rioWriteBulkString(ptr noundef nonnull %1, ptr noundef nonnull %i.gs, i64 noundef %.0.i339) #21
  %.not325 = icmp eq i64 %i.hi, 0
  br i1 %.not325, label %bb.cf, label %bb.cg, !prof !51

bb.cf:                                            ; preds = %sdslen.exit340
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.2, i32 noundef 608) #21
  call void @abort() #22
  unreachable

bb.cg:                                            ; preds = %sdslen.exit340
  %i.hj = load ptr, ptr %i.de, align 8, !tbaa !13
  call void @sdsfree(ptr noundef %i.hj) #21
  br i1 %.not318, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hk = call i64 @rioWriteBulkString(ptr noundef nonnull %1, ptr noundef nonnull @.str.44, i64 noundef 7) #21
  %.not326 = icmp eq i64 %i.hk, 0
  br i1 %.not326, label %bb.ci, label %bb.cj, !prof !51

bb.ci:                                            ; preds = %bb.ch
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.2, i32 noundef 614) #21
  call void @abort() #22
  unreachable

bb.cj:                                            ; preds = %bb.cg, %bb.ch, %bb.bf
  %.1251 = phi i32 [ %.0250455, %bb.bf ], [ %i.fk, %bb.ch ], [ %i.fk, %bb.cg ] ; 2 uses
  %indvars.iv.next516 = add nuw nsw i64 %indvars.iv515, 1 ; 2 uses
  %exitcond519.not = icmp eq i64 %indvars.iv.next516, %wide.trip.count518
  br i1 %exitcond519.not, label %._crit_edge458, label %.lr.ph457, !llvm.loop !113

end_hunk_0
begin_hunk_1_@sflushCommand:bb.a
  %i.cf = load i16, ptr %i.ce, align 4, !tbaa !180
  %i.cg = zext i16 %i.cf to i64
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.cg) #21
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !182
  %i.cj = zext i16 %i.ci to i64
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.cj) #21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ck = load i32, ptr %.044.lcssa, align 4, !tbaa !9
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp slt i64 %indvars.iv.next.i, %i.cl
  br i1 %i.cm, label %bb.ae, label %.sink.split, !llvm.loop !185

.sink.split:                                      ; preds = %bb.ae, %bb.ad, %.thread
  tail call void @zfree(ptr noundef %.044.lcssa) #21
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.j, %bb.i, %bb.b
  ret void
}

declare i32 @flushCommandCommon(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @readwriteCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !111
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.96) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !154
  %i.e = and i64 %i.d, -131073
  store i64 %i.e, ptr %i.c, align 8, !tbaa !154
  %i.f = load ptr, ptr @shared, align 8, !tbaa !88
  tail call void @addReply(ptr noundef %0, ptr noundef %i.f) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @resetClusterStats() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !111
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @clusterSlotStatResetAll() #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @clusterSlotStatResetAll() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clusterCommonInit() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !111
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %resetClusterStats.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @clusterSlotStatResetAll() #21
  br label %resetClusterStats.exit

resetClusterStats.exit:                           ; preds = %bb.a, %bb.b
  tail call void @asmInit() #21
  ret void
}

declare void @asmInit() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clusterDeleteKeysInUnownedSlots() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @getMyClusterNode() #21
  %i.b = tail call i32 @clusterNodeIsSlave(ptr noundef %i.a) #21
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a, %bb.g
  %.011 = phi i32 [ %i.m, %bb.g ], [ 0, %bb.a ]   ; 6 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !124
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125
  %i.e = tail call i64 @kvstoreDictSize(ptr noundef %i.d, i32 noundef %.011) #21
  %i.f = and i64 %i.e, 4294967295
  %.not7 = icmp eq i64 %i.f, 0
  br i1 %.not7, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.g = tail call ptr @getMyClusterNode() #21
  %i.h = tail call ptr @getNodeBySlot(i32 noundef %.011) #21
  %.not10 = icmp eq ptr %i.g, %i.h
  br i1 %.not10, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @getImportingSlotSource(i32 noundef %.011) #21
  %.not9 = icmp eq ptr %i.i, null
  br i1 %.not9, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !205
  %i.k = icmp sgt i32 %i.j, 2
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.138, i32 noundef %.011) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.l = tail call i32 @clusterDelKeysInSlot(i32 noundef %.011, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.b, %bb.c, %bb.f
  %i.m = add nuw nsw i32 %.011, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.m, 16384
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !206

.loopexit:                                        ; preds = %bb.g, %bb.a
  ret void
}

declare void @_serverLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @verifyClusterConfigWithData() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8296), align 8, !tbaa !147
  %i.b = and i32 %i.a, 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @getMyClusterNode() #21
  %i.d = tail call i32 @clusterNodeIsSlave(ptr noundef %i.c) #21
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !207
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !207
  %i.h = sext i32 %i.g to i64
  %i.i = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !208

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 1, %.preheader ] ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !124
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !125
  %i.m = tail call i64 @kvstoreSize(ptr noundef %i.l) #21
  %.not8 = icmp eq i64 %i.m, 0
  br i1 %.not8, label %bb.c, label %.loopexit

._crit_edge:                                      ; preds = %bb.c, %.preheader
  tail call void @clusterClaimUnassignedSlots() #21
  tail call void @clusterDeleteKeysInUnownedSlots()
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a, %._crit_edge
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %._crit_edge ], [ -1, %.lr.ph ]
  ret i32 %.1
}

declare i64 @kvstoreSize(ptr noundef) local_unnamed_addr #2

declare void @clusterClaimUnassignedSlots() local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16, i16) #19

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind allocsize(1) }
attributes #26 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !10, i64 8488}
!17 = !{!"redisServer", !10, i64 0, !18, i64 8, !19, i64 16, !19, i64 24, !21, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !23, i64 64, !24, i64 72, !24, i64 80, !25, i64 88, !26, i64 96, !10, i64 104, !10, i64 108, !11, i64 112, !11, i64 116, !27, i64 120, !11, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !19, i64 144, !10, i64 152, !10, i64 156, !11, i64 160, !10, i64 204, !18, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !19, i64 232, !19, i64 240, !10, i64 248, !10, i64 252, !18, i64 256, !11, i64 264, !24, i64 272, !24, i64 280, !24, i64 288, !28, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !11, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !11, i64 336, !10, i64 464, !19, i64 472, !19, i64 480, !10, i64 488, !11, i64 496, !10, i64 1328, !29, i64 1336, !28, i64 1440, !28, i64 1448, !28, i64 1456, !28, i64 1464, !28, i64 1472, !28, i64 1480, !28, i64 1488, !31, i64 1496, !31, i64 1504, !20, i64 1512, !26, i64 1520, !10, i64 1528, !26, i64 1536, !10, i64 1544, !28, i64 1552, !11, i64 1560, !11, i64 1624, !24, i64 1880, !11, i64 1888, !10, i64 1896, !10, i64 1900, !11, i64 1904, !10, i64 2416, !10, i64 2420, !32, i64 2424, !10, i64 2448, !27, i64 2456, !10, i64 2464, !10, i64 2468, !10, i64 2472, !10, i64 2476, !10, i64 2480, !18, i64 2488, !18, i64 2496, !18, i64 2504, !18, i64 2512, !18, i64 2520, !18, i64 2528, !27, i64 2536, !27, i64 2544, !27, i64 2552, !27, i64 2560, !27, i64 2568, !27, i64 2576, !34, i64 2584, !27, i64 2592, !27, i64 2600, !27, i64 2608, !27, i64 2616, !27, i64 2624, !27, i64 2632, !18, i64 2640, !27, i64 2648, !27, i64 2656, !27, i64 2664, !27, i64 2672, !27, i64 2680, !27, i64 2688, !27, i64 2696, !27, i64 2704, !18, i64 2712, !18, i64 2720, !18, i64 2728, !27, i64 2736, !27, i64 2744, !27, i64 2752, !27, i64 2760, !27, i64 2768, !34, i64 2776, !27, i64 2784, !27, i64 2792, !27, i64 2800, !27, i64 2808, !27, i64 2816, !28, i64 2824, !27, i64 2832, !27, i64 2840, !18, i64 2848, !35, i64 2856, !11, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !18, i64 2976, !18, i64 2984, !18, i64 2992, !18, i64 3000, !18, i64 3008, !18, i64 3016, !18, i64 3024, !18, i64 3032, !34, i64 3040, !11, i64 3048, !18, i64 3080, !27, i64 3088, !27, i64 3096, !27, i64 3104, !11, i64 3112, !11, i64 4136, !11, i64 5160, !27, i64 5168, !27, i64 5176, !27, i64 5184, !27, i64 5192, !11, i64 5200, !27, i64 6264, !27, i64 6272, !18, i64 6280, !27, i64 6288, !27, i64 6296, !18, i64 6304, !11, i64 6312, !36, i64 6408, !10, i64 6416, !10, i64 6420, !10, i64 6424, !10, i64 6428, !10, i64 6432, !10, i64 6436, !10, i64 6440, !10, i64 6444, !10, i64 6448, !10, i64 6452, !10, i64 6456, !10, i64 6460, !10, i64 6464, !18, i64 6472, !10, i64 6480, !10, i64 6484, !10, i64 6488, !10, i64 6492, !18, i64 6496, !18, i64 6504, !10, i64 6512, !10, i64 6516, !10, i64 6520, !10, i64 6524, !10, i64 6528, !10, i64 6532, !19, i64 6536, !11, i64 6544, !10, i64 6616, !10, i64 6620, !10, i64 6624, !37, i64 6632, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660, !10, i64 6664, !10, i64 6668, !10, i64 6672, !19, i64 6680, !19, i64 6688, !10, i64 6696, !10, i64 6700, !18, i64 6704, !18, i64 6712, !18, i64 6720, !18, i64 6728, !18, i64 6736, !10, i64 6744, !10, i64 6748, !19, i64 6752, !10, i64 6760, !10, i64 6764, !27, i64 6768, !27, i64 6776, !18, i64 6784, !18, i64 6792, !18, i64 6800, !10, i64 6808, !10, i64 6812, !18, i64 6816, !10, i64 6824, !10, i64 6828, !10, i64 6832, !10, i64 6836, !10, i64 6840, !18, i64 6848, !10, i64 6856, !11, i64 6860, !11, i64 6864, !20, i64 6872, !10, i64 6880, !27, i64 6888, !27, i64 6896, !27, i64 6904, !27, i64 6912, !10, i64 6920, !38, i64 6928, !10, i64 6936, !19, i64 6944, !10, i64 6952, !10, i64 6956, !10, i64 6960, !18, i64 6968, !18, i64 6976, !18, i64 6984, !18, i64 6992, !10, i64 7000, !10, i64 7004, !10, i64 7008, !10, i64 7012, !10, i64 7016, !10, i64 7020, !39, i64 7024, !10, i64 7032, !10, i64 7036, !19, i64 7040, !10, i64 7048, !10, i64 7052, !10, i64 7056, !11, i64 7060, !10, i64 7068, !40, i64 7072, !10, i64 7088, !19, i64 7096, !10, i64 7104, !19, i64 7112, !10, i64 7120, !10, i64 7124, !10, i64 7128, !10, i64 7132, !10, i64 7136, !10, i64 7140, !10, i64 7144, !11, i64 7148, !11, i64 7189, !27, i64 7232, !27, i64 7240, !11, i64 7248, !27, i64 7256, !10, i64 7264, !10, i64 7268, !42, i64 7272, !27, i64 7280, !27, i64 7288, !43, i64 7296, !18, i64 7344, !18, i64 7352, !10, i64 7360, !10, i64 7364, !10, i64 7368, !10, i64 7372, !10, i64 7376, !10, i64 7380, !10, i64 7384, !10, i64 7388, !10, i64 7392, !18, i64 7400, !28, i64 7408, !18, i64 7416, !19, i64 7424, !19, i64 7432, !19, i64 7440, !10, i64 7448, !10, i64 7452, !31, i64 7456, !31, i64 7464, !10, i64 7472, !10, i64 7476, !10, i64 7480, !10, i64 7484, !18, i64 7488, !18, i64 7496, !18, i64 7504, !18, i64 7512, !18, i64 7520, !44, i64 7528, !44, i64 7536, !10, i64 7544, !19, i64 7552, !18, i64 7560, !10, i64 7568, !10, i64 7572, !10, i64 7576, !18, i64 7584, !18, i64 7592, !10, i64 7600, !10, i64 7604, !10, i64 7608, !10, i64 7612, !19, i64 7616, !10, i64 7624, !10, i64 7628, !11, i64 7632, !27, i64 7680, !10, i64 7688, !28, i64 7696, !10, i64 7704, !27, i64 7712, !27, i64 7720, !18, i64 7728, !18, i64 7736, !10, i64 7744, !27, i64 7752, !18, i64 7760, !10, i64 7768, !10, i64 7772, !10, i64 7776, !10, i64 7780, !10, i64 7784, !27, i64 7792, !11, i64 7800, !10, i64 7812, !10, i64 7816, !10, i64 7820, !11, i64 7824, !28, i64 7872, !28, i64 7880, !10, i64 7888, !18, i64 7896, !28, i64 7904, !28, i64 7912, !10, i64 7920, !10, i64 7924, !10, i64 7928, !10, i64 7932, !18, i64 7936, !18, i64 7944, !18, i64 7952, !18, i64 7960, !18, i64 7968, !18, i64 7976, !18, i64 7984, !18, i64 7992, !18, i64 8000, !27, i64 8008, !27, i64 8016, !27, i64 8024, !10, i64 8032, !10, i64 8036, !11, i64 8040, !18, i64 8048, !11, i64 8056, !27, i64 8064, !27, i64 8072, !10, i64 8080, !18, i64 8088, !27, i64 8096, !18, i64 8104, !27, i64 8112, !45, i64 8120, !24, i64 8128, !10, i64 8136, !45, i64 8144, !10, i64 8152, !10, i64 8156, !10, i64 8160, !10, i64 8164, !27, i64 8168, !27, i64 8176, !19, i64 8184, !27, i64 8192, !27, i64 8200, !27, i64 8208, !10, i64 8216, !46, i64 8224, !10, i64 8232, !10, i64 8236, !10, i64 8240, !10, i64 8244, !10, i64 8248, !19, i64 8256, !19, i64 8264, !19, i64 8272, !10, i64 8280, !10, i64 8284, !10, i64 8288, !10, i64 8292, !10, i64 8296, !10, i64 8300, !10, i64 8304, !10, i64 8308, !27, i64 8312, !10, i64 8320, !10, i64 8324, !10, i64 8328, !27, i64 8336, !10, i64 8344, !10, i64 8348, !10, i64 8352, !10, i64 8356, !10, i64 8360, !10, i64 8364, !10, i64 8368, !10, i64 8372, !10, i64 8376, !27, i64 8384, !24, i64 8392, !19, i64 8400, !18, i64 8408, !19, i64 8416, !10, i64 8424, !47, i64 8432, !10, i64 8472, !18, i64 8480, !10, i64 8488, !10, i64 8492, !10, i64 8496, !48, i64 8504, !19, i64 8624, !19, i64 8632, !19, i64 8640, !19, i64 8648, !49, i64 8656, !27, i64 8664, !10, i64 8672, !19, i64 8680, !10, i64 8688, !10, i64 8692, !10, i64 8696, !18, i64 8704, !10, i64 8712, !10, i64 8716, !19, i64 8720, !10, i64 8728, !10, i64 8732}
!18 = !{!"long", !11, i64 0}
!19 = !{!"p1 omnipotent char", !20, i64 0}
!20 = !{!"any pointer", !11, i64 0}
!21 = !{!"p2 omnipotent char", !22, i64 0}
!22 = !{!"any p2 pointer", !20, i64 0}
!23 = !{!"p1 _ZTS7redisDb", !20, i64 0}
!24 = !{!"p1 _ZTS4dict", !20, i64 0}
!25 = !{!"p1 _ZTS11aeEventLoop", !20, i64 0}
!26 = !{!"p1 _ZTS3rax", !20, i64 0}
!27 = !{!"long long", !11, i64 0}
!28 = !{!"p1 _ZTS4list", !20, i64 0}
!29 = !{!"connListener", !11, i64 0, !10, i64 64, !21, i64 72, !10, i64 80, !10, i64 84, !30, i64 88, !20, i64 96}
!30 = !{!"p1 _ZTS14ConnectionType", !20, i64 0}
!31 = !{!"p1 _ZTS6client", !20, i64 0}
!32 = !{!"pendingCommandPool", !33, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!33 = !{!"p2 _ZTS14pendingCommand", !22, i64 0}
!34 = !{!"double", !11, i64 0}
!35 = !{!"malloc_stats", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80}
!36 = !{!"p1 _ZTS11hotkeyStats", !20, i64 0}
!37 = !{!"p1 double", !20, i64 0}
!38 = !{!"p1 _ZTS9saveparam", !20, i64 0}
!39 = !{!"p2 _ZTS10connection", !22, i64 0}
!40 = !{!"redisOpArray", !41, i64 0, !10, i64 8, !10, i64 12}
!41 = !{!"p1 _ZTS7redisOp", !20, i64 0}
!42 = !{!"p1 _ZTS11replBacklog", !20, i64 0}
!43 = !{!"replDataBuf", !28, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40}
!44 = !{!"p1 _ZTS10connection", !20, i64 0}
!45 = !{!"p1 _ZTS8_kvstore", !20, i64 0}
!46 = !{!"p1 _ZTS12clusterState", !20, i64 0}
!47 = !{!"aclInfo", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32}
!48 = !{!"redisTLSContextConfig", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !10, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116}
!49 = !{!"p1 _ZTS14sentinelConfig", !20, i64 0}
!50 = !{!18, !18, i64 0}
!51 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!52 = !{!53, !53, i64 0}
!53 = !{!"short", !11, i64 0}
!54 = !{!17, !10, i64 6456}
!55 = !{!56, !23, i64 32}
!56 = !{!"client", !18, i64 0, !18, i64 8, !44, i64 16, !11, i64 24, !11, i64 25, !11, i64 26, !11, i64 27, !10, i64 28, !23, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !19, i64 64, !18, i64 72, !18, i64 80, !10, i64 88, !58, i64 96, !10, i64 104, !10, i64 108, !58, i64 112, !18, i64 120, !59, i64 128, !60, i64 152, !61, i64 160, !10, i64 168, !58, i64 176, !10, i64 184, !10, i64 188, !62, i64 192, !62, i64 200, !62, i64 208, !62, i64 216, !20, i64 224, !10, i64 232, !10, i64 236, !18, i64 240, !28, i64 248, !27, i64 256, !28, i64 264, !18, i64 272, !18, i64 280, !18, i64 288, !10, i64 296, !10, i64 300, !63, i64 304, !18, i64 312, !18, i64 320, !18, i64 328, !27, i64 336, !27, i64 344, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !18, i64 368, !18, i64 376, !19, i64 384, !27, i64 392, !27, i64 400, !27, i64 408, !27, i64 416, !27, i64 424, !27, i64 432, !27, i64 440, !27, i64 448, !27, i64 456, !27, i64 464, !27, i64 472, !11, i64 480, !10, i64 524, !19, i64 528, !10, i64 536, !10, i64 540, !18, i64 544, !64, i64 552, !65, i64 592, !27, i64 664, !28, i64 672, !24, i64 680, !24, i64 688, !24, i64 696, !19, i64 704, !19, i64 712, !66, i64 720, !66, i64 728, !66, i64 736, !20, i64 744, !20, i64 752, !20, i64 760, !20, i64 768, !20, i64 776, !18, i64 784, !26, i64 792, !18, i64 800, !10, i64 808, !66, i64 816, !20, i64 824, !66, i64 832, !18, i64 840, !66, i64 848, !18, i64 856, !66, i64 864, !18, i64 872, !67, i64 880, !67, i64 904, !18, i64 928, !18, i64 936, !18, i64 944, !27, i64 952, !18, i64 960, !18, i64 968, !19, i64 976, !11, i64 984, !68, i64 992, !27, i64 1000, !27, i64 1008, !27, i64 1016, !69, i64 1024, !19, i64 1032, !11, i64 1040}
!57 = !{!"p1 _ZTS11redisObject", !20, i64 0}
!58 = !{!"p2 _ZTS11redisObject", !22, i64 0}
!59 = !{!"pendingCommandList", !60, i64 0, !60, i64 8, !10, i64 16, !10, i64 20}
!60 = !{!"p1 _ZTS14pendingCommand", !20, i64 0}
!61 = !{!"p1 _ZTS14deferredObject", !20, i64 0}
!62 = !{!"p1 _ZTS12redisCommand", !20, i64 0}
!63 = !{!"p1 _ZTS9dictEntry", !20, i64 0}
!64 = !{!"multiState", !33, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !18, i64 24, !10, i64 32}
!65 = !{!"blockingState", !10, i64 0, !27, i64 8, !10, i64 16, !24, i64 24, !10, i64 32, !10, i64 36, !27, i64 40, !20, i64 48, !20, i64 56, !18, i64 64}
!66 = !{!"p1 _ZTS8listNode", !20, i64 0}
!67 = !{!"listNode", !66, i64 0, !66, i64 8, !20, i64 16}
!68 = !{!"p1 _ZTS13payloadHeader", !20, i64 0}
!69 = !{!"p1 _ZTS7asmTask", !20, i64 0}
!70 = !{!56, !58, i64 96}
!71 = !{!57, !57, i64 0}
!72 = !{!73, !10, i64 72}
!73 = !{!"redisDb", !45, i64 0, !45, i64 8, !74, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64, !10, i64 72, !27, i64 80, !18, i64 88}
!74 = !{!"p1 _ZTS7_estore", !20, i64 0}
!75 = !{!27, !27, i64 0}
!76 = !{!56, !10, i64 88}
!77 = !{!78, !20, i64 8}
!78 = !{!"redisObject", !10, i64 0, !10, i64 0, !10, i64 1, !10, i64 3, !10, i64 4, !10, i64 5, !20, i64 8}
!79 = !{!80, !57, i64 216}
!80 = !{!"sharedObjectsStruct", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !11, i64 64, !11, i64 96, !11, i64 128, !11, i64 160, !57, i64 192, !57, i64 200, !57, i64 208, !57, i64 216, !57, i64 224, !57, i64 232, !57, i64 240, !57, i64 248, !57, i64 256, !57, i64 264, !57, i64 272, !57, i64 280, !57, i64 288, !57, i64 296, !57, i64 304, !57, i64 312, !57, i64 320, !57, i64 328, !57, i64 336, !57, i64 344, !57, i64 352, !57, i64 360, !57, i64 368, !57, i64 376, !57, i64 384, !57, i64 392, !57, i64 400, !57, i64 408, !57, i64 416, !57, i64 424, !57, i64 432, !57, i64 440, !57, i64 448, !57, i64 456, !57, i64 464, !57, i64 472, !57, i64 480, !57, i64 488, !57, i64 496, !57, i64 504, !57, i64 512, !57, i64 520, !57, i64 528, !57, i64 536, !57, i64 544, !57, i64 552, !57, i64 560, !57, i64 568, !57, i64 576, !57, i64 584, !57, i64 592, !57, i64 600, !57, i64 608, !57, i64 616, !57, i64 624, !57, i64 632, !57, i64 640, !57, i64 648, !57, i64 656, !57, i64 664, !57, i64 672, !57, i64 680, !57, i64 688, !57, i64 696, !57, i64 704, !57, i64 712, !57, i64 720, !57, i64 728, !57, i64 736, !57, i64 744, !57, i64 752, !57, i64 760, !57, i64 768, !57, i64 776, !57, i64 784, !57, i64 792, !57, i64 800, !57, i64 808, !11, i64 816, !11, i64 896, !11, i64 80896, !11, i64 81152, !11, i64 81408, !11, i64 81664, !19, i64 81920, !19, i64 81928}
!81 = distinct !{!81, !15}
!82 = !{!80, !57, i64 328}
!83 = !{!84, !53, i64 2}
!84 = !{!"KeyMetaSpec", !53, i64 0, !53, i64 2, !11, i64 8}
!85 = !{!84, !53, i64 0}
!86 = !{!17, !10, i64 8368}
!87 = !{!17, !27, i64 6888}
!88 = !{!80, !57, i64 0}
!89 = !{!73, !74, i64 16}
!90 = !{!80, !57, i64 656}
!91 = !{!17, !24, i64 1880}
!92 = !{!17, !11, i64 8040}
!93 = !{!94, !18, i64 16}
!94 = !{!"migrateCachedSocket", !44, i64 0, !18, i64 8, !18, i64 16}
!95 = !{!94, !44, i64 0}
!96 = !{!97, !30, i64 0}
!97 = !{!"connection", !30, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !53, i64 20, !53, i64 22, !53, i64 24, !20, i64 32, !25, i64 40, !20, i64 48, !20, i64 56, !20, i64 64}
!98 = !{!99, !20, i64 96}
!99 = !{!"ConnectionType", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !20, i64 120, !20, i64 128, !20, i64 136, !20, i64 144, !20, i64 152, !20, i64 160, !20, i64 168, !20, i64 176, !20, i64 184, !20, i64 192, !20, i64 200, !20, i64 208, !20, i64 216, !20, i64 224, !20, i64 232, !20, i64 240}
!100 = distinct !{null}
!101 = !{!17, !25, i64 88}
!102 = !{!99, !20, i64 72}
!103 = distinct !{null}
!104 = distinct !{null}
!105 = !{!99, !20, i64 112}
!106 = distinct !{null}
!107 = !{!94, !18, i64 8}
!108 = distinct !{!108, !15}
!109 = distinct !{!109, !15}
!110 = distinct !{!110, !15}
!111 = !{!17, !10, i64 8160}
!112 = !{!"branch_weights", i32 1, i32 1000, i32 1000}
!113 = distinct !{!113, !15}
!114 = !{!99, !20, i64 176}
!115 = distinct !{null}
!116 = distinct !{!116, !15}
!117 = !{!99, !20, i64 192}
!118 = distinct !{null}
!119 = distinct !{!119, !15}
!120 = distinct !{!120, !15}
!121 = !{!122, !122, i64 0}
!122 = !{!"p1 short", !20, i64 0}
!123 = distinct !{!123, !15}
!124 = !{!17, !23, i64 64}
!125 = !{!73, !45, i64 0}
!126 = !{!17, !27, i64 7232}
!127 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!128 = distinct !{!128, !15}
!129 = distinct !{!129, !15}
!130 = distinct !{!130, !15}
!131 = distinct !{!131, !15}
!132 = !{!17, !31, i64 1496}
!133 = !{!56, !44, i64 16}
!134 = distinct !{!134, !15}
!135 = !{!"branch_weights", !"expected", i32 2145486172, i32 1997476}
!136 = distinct !{!136, !15}
!137 = distinct !{!137, !15}
!138 = distinct !{!138, !15}
!139 = distinct !{!139, !15}
!140 = !{!141, !10, i64 0}
!141 = !{!"", !10, i64 0, !10, i64 4, !11, i64 8, !20, i64 56}
!142 = !{!141, !20, i64 56}
!143 = !{!144, !10, i64 0}
!144 = !{!"", !10, i64 0, !10, i64 4}
!145 = distinct !{!145, !15}
!146 = !{!60, !60, i64 0}
!147 = !{!17, !10, i64 8296}
!148 = !{!149, !20, i64 96}
!149 = !{!"redisCommand", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !10, i64 32, !19, i64 40, !19, i64 48, !10, i64 56, !20, i64 64, !10, i64 72, !21, i64 80, !10, i64 88, !20, i64 96, !10, i64 104, !18, i64 112, !18, i64 120, !20, i64 128, !10, i64 136, !20, i64 144, !10, i64 152, !62, i64 160, !150, i64 168, !27, i64 176, !27, i64 184, !27, i64 192, !27, i64 200, !10, i64 208, !19, i64 216, !151, i64 224, !152, i64 232, !24, i64 288, !62, i64 296, !153, i64 304}
!150 = !{!"p1 _ZTS15redisCommandArg", !20, i64 0}
!151 = !{!"p1 _ZTS13hdr_histogram", !20, i64 0}
!152 = !{!"", !19, i64 0, !18, i64 8, !10, i64 16, !11, i64 24, !10, i64 40, !11, i64 44}
!153 = !{!"p1 _ZTS18RedisModuleCommand", !20, i64 0}
!154 = !{!56, !18, i64 8}
!155 = !{!64, !33, i64 0}
!156 = !{!64, !10, i64 12}
!157 = !{!158, !58, i64 8}
!158 = !{!"pendingCommand", !10, i64 0, !10, i64 4, !58, i64 8, !18, i64 16, !27, i64 24, !62, i64 32, !141, i64 40, !27, i64 104, !10, i64 112, !10, i64 116, !11, i64 120, !60, i64 128, !60, i64 136}
!159 = !{!158, !10, i64 0}
!160 = !{!158, !62, i64 32}
!161 = !{!158, !10, i64 116}
!162 = !{!158, !11, i64 120}
!163 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 48, !13, i64 56, i64 8, !164}
!164 = !{!20, !20, i64 0}
!165 = !{!158, !10, i64 112}
end_hunk_1
