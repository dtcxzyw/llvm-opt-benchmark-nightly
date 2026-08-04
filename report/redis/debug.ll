inline.NumInlined: 93
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@debugCommand:bb.a
  br label %.loopexit

.loopexit883:                                     ; preds = %bb.ah, %bb.aj, %.loopexit927
  %indvars.iv826918 = phi i64 [ %indvars.iv826.lcssa, %.loopexit927 ], [ %indvars.iv826.ph, %bb.ah ], [ %indvars.iv826, %bb.aj ]
  %.0517790914 = phi i32 [ %.0517790.lcssa, %.loopexit927 ], [ %.0517790.ph, %bb.ah ], [ 0, %bb.aj ] ; 2 uses
  %.2523.ph = phi i32 [ %i.cq, %.loopexit927 ], [ %.0521789.ph, %bb.aj ], [ %.0521789.ph, %bb.ah ] ; 4 uses
  %.2515.ph = phi i32 [ %.0513791.ph, %.loopexit927 ], [ 0, %bb.aj ], [ 0, %bb.ah ] ; 2 uses
  %indvars.iv.next827 = add nuw nsw i64 %indvars.iv826918, 1 ; 2 uses
  %exitcond829.not = icmp eq i64 %indvars.iv.next827, %wide.trip.count
  br i1 %exitcond829.not, label %._crit_edge793, label %.outer, !llvm.loop !122

.thread:                                          ; preds = %bb.ak
  %indvars.iv.next827872 = add nuw nsw i64 %indvars.iv826, 1 ; 2 uses
  %exitcond829.not873 = icmp eq i64 %indvars.iv.next827872, %wide.trip.count
  br i1 %exitcond829.not873, label %._crit_edge793.thread877, label %.outer.peel.newph, !llvm.loop !123

._crit_edge793.thread877:                         ; preds = %.thread.peel, %.thread
  %i.ct = icmp eq i32 %.0513791.ph, 0
  br i1 %i.ct, label %bb.ao, label %bb.an

._crit_edge793:                                   ; preds = %.loopexit883
  %i.cu = icmp eq i32 %.0517790914, 0
  %i.cv = icmp eq i32 %.2515.ph, 0                ; 2 uses
  br i1 %i.cu, label %bb.am, label %._crit_edge793.thread

._crit_edge793.thread:                            ; preds = %.preheader, %._crit_edge793
  %.0513.lcssa867 = phi i1 [ %i.cv, %._crit_edge793 ], [ false, %.preheader ]
  %.0521.lcssa865 = phi i32 [ %.2523.ph, %._crit_edge793 ], [ 0, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.cw = call ptr @rdbPopulateSaveInfo(ptr noundef nonnull %1) #24
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6944), align 8, !tbaa !125
  %i.cy = call i32 @rdbSave(i32 noundef 0, ptr noundef %i.cx, ptr noundef %i.cw, i32 noundef 0) #24
  %.not589 = icmp eq i32 %i.cy, 0
  br i1 %.not589, label %.critedge, label %bb.al

bb.al:                                            ; preds = %._crit_edge793.thread
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 8), align 8, !tbaa !126
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.cz) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.loopexit

.critedge:                                        ; preds = %._crit_edge793.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0513.lcssa867, label %bb.ao, label %bb.an

bb.am:                                            ; preds = %._crit_edge793
  br i1 %i.cv, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %._crit_edge793.thread877, %.critedge, %bb.am
  %.0521.lcssa866881 = phi i32 [ %.0521.lcssa865, %.critedge ], [ %.2523.ph, %bb.am ], [ %.0521789.ph, %._crit_edge793.thread877 ]
  %i.da = call i64 @emptyData(i32 noundef -1, i32 noundef 0, ptr noundef null) #24 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge793.thread877, %.critedge, %bb.an, %bb.am
  %.0521.lcssa866882 = phi i32 [ %.0521.lcssa865, %.critedge ], [ %.0521.lcssa866881, %bb.an ], [ %.2523.ph, %bb.am ], [ %.0521789.ph, %._crit_edge793.thread877 ]
  call void @protectClient(ptr noundef nonnull %0) #24
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6944), align 8, !tbaa !125
  %i.dc = call i32 @rdbLoad(ptr noundef %i.db, ptr noundef null, i32 noundef %.0521.lcssa866882) #24
  call void @unprotectClient(ptr noundef nonnull %0) #24
  %.not591 = icmp eq i32 %i.dc, 0
  br i1 %.not591, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.155) #24
  br label %.loopexit

bb.aq:                                            ; preds = %bb.ao
  call void @applyAppendOnlyConfig() #24
  %i.dd = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.de = icmp sgt i32 %i.dd, 2
  br i1 %i.de, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.156) #24
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.df = load ptr, ptr @shared, align 8, !tbaa !104
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.df) #24
  br label %.loopexit

bb.at:                                            ; preds = %bb.ag
  %i.dg = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.157) #25
  %.not592 = icmp eq i32 %i.dg, 0
  br i1 %.not592, label %bb.au, label %bb.bd

bb.au:                                            ; preds = %bb.at
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6668), align 4, !tbaa !127
  %.not593 = icmp eq i32 %i.dh, 0
  br i1 %.not593, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @flushAppendOnlyFile(i32 noundef 1) #24
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.di = tail call i64 @emptyData(i32 noundef -1, i32 noundef 0, ptr noundef null) #24 ; 0 uses
  tail call void @protectClient(ptr noundef nonnull %0) #24
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6872), align 8, !tbaa !128 ; 2 uses
  %.not594 = icmp eq ptr %i.dj, null
  br i1 %.not594, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @aofManifestFree(ptr noundef nonnull %i.dj) #24
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  tail call void @aofLoadManifestFromDisk() #24
  %i.dk = tail call i32 @aofDelHistoryFiles() #24 ; 0 uses
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6872), align 8, !tbaa !128
  %i.dm = tail call i32 @loadAppendOnlyFiles(ptr noundef %i.dl) #24
  tail call void @unprotectClient(ptr noundef nonnull %0) #24
  %i.dn = and i32 %i.dm, -3
  %or.cond.not = icmp eq i32 %i.dn, 0
  br i1 %or.cond.not, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.158) #24
  br label %.loopexit

bb.ba:                                            ; preds = %bb.ay
  tail call void @applyAppendOnlyConfig() #24
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !129
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.dp = icmp sgt i32 %i.do, 2
  br i1 %i.dp, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.159) #24
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.dq = load ptr, ptr @shared, align 8, !tbaa !104
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.dq) #24
  br label %.loopexit

bb.bd:                                            ; preds = %bb.at
  %i.dr = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.160) #25
  %.not595 = icmp eq i32 %i.dr, 0
  %or.cond720 = and i1 %i.ay, %.not595
  br i1 %or.cond720, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.ds = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !103
  %i.du = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.dt, ptr noundef nonnull %i.e, ptr noundef null) #24
  %.not596 = icmp eq i32 %i.du, 0
  br i1 %.not596, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.dv = load i64, ptr %i.e, align 8, !tbaa !19
  %i.dw = trunc i64 %i.dv to i32
  store i32 %i.dw, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8320), align 8, !tbaa !130
  %i.dx = load ptr, ptr @shared, align 8, !tbaa !104
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.dx) #24
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %.loopexit

bb.bh:                                            ; preds = %bb.bd
  %i.dy = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.161) #25
  %.not597 = icmp eq i32 %i.dy, 0
  %or.cond721 = and i1 %i.ay, %.not597
  br i1 %or.cond721, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !131
  %i.eb = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !103
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !14
  %i.ef = tail call ptr @dbFind(ptr noundef %i.ea, ptr noundef %i.ee) #24 ; 9 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 208), align 8, !tbaa !132
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.eh) #24
  br label %.loopexit

bb.bk:                                            ; preds = %bb.bi
  %i.ei = load i64, ptr %i.ef, align 8
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = lshr i32 %i.ej, 4
  %i.el = and i32 %i.ek, 15
  %i.em = tail call ptr @strEncoding(i32 noundef %i.el) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(138) %i.f, i8 0, i64 138, i1 false)
  %i.en = load i64, ptr %i.ef, align 8            ; 2 uses
  %i.eo = and i64 %i.en, 240
  %i.ep = icmp eq i64 %i.eo, 144
  br i1 %i.ep, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !14 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !19
  %i.eu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 138, ptr noundef nonnull @.str.162, i64 noundef %i.et) #24 ; 2 uses
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds i8, ptr %i.f, i64 %i.ev ; 2 uses
  %i.ex = sub nsw i32 138, %i.eu                  ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %4 = load i64, ptr %i.ey, align 8, !tbaa !19
  %5 = uitofp i64 %4 to double
  %6 = load i64, ptr %i.es, align 8, !tbaa !19
  %7 = uitofp i64 %6 to double
  %i.ez = fdiv double %5, %7
  %i.fa = sext i32 %i.ex to i64
  %i.fb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ew, i64 noundef %i.fa, ptr noundef nonnull @.str.163, double noundef %i.ez) #24 ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds i8, ptr %i.ew, i64 %i.fc ; 2 uses
  %i.fe = sub nsw i32 %i.ex, %i.fb                ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.er, i64 40 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = shl i64 %i.fh, 48
  %i.fj = ashr exact i64 %i.fi, 48
  %i.fk = trunc nsw i64 %i.fj to i32
  %i.fl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.fd, i64 noundef %i.ff, ptr noundef nonnull @.str.164, i32 noundef %i.fk) #24 ; 2 uses
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fd, i64 %i.fm ; 2 uses
  %i.fo = sub nsw i32 %i.fe, %i.fl                ; 2 uses
  %i.fp = load i64, ptr %i.fg, align 8
  %i.fq = and i64 %i.fp, 4294901760
  %i.fr = icmp ne i64 %i.fq, 0
  %i.fs = zext i1 %i.fr to i32
  %i.ft = sext i32 %i.fo to i64
  %i.fu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.fn, i64 noundef %i.ft, ptr noundef nonnull @.str.165, i32 noundef %i.fs) #24 ; 2 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds i8, ptr %i.fn, i64 %i.fv
  %i.fx = sub nsw i32 %i.fo, %i.fu
  %.0534780 = load ptr, ptr %i.er, align 8, !tbaa !133 ; 2 uses
  %.not598781 = icmp eq ptr %.0534780, null
  br i1 %.not598781, label %._crit_edge786, label %.lr.ph785

._crit_edge786:                                   ; preds = %.lr.ph785, %bb.bl
  %.0533.lcssa = phi i64 [ 0, %bb.bl ], [ %i.gc, %.lr.ph785 ]
  %i.fy = sext i32 %i.fx to i64
  %i.fz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.fw, i64 noundef %i.fy, ptr noundef nonnull @.str.166, i64 noundef %.0533.lcssa) #24 ; 0 uses
  %.pre847 = load i64, ptr %i.ef, align 8
  br label %bb.bm

.lr.ph785:                                        ; preds = %bb.bl, %.lr.ph785
  %.0534783 = phi ptr [ %.0534, %.lr.ph785 ], [ %.0534780, %bb.bl ] ; 2 uses
  %.0533782 = phi i64 [ %i.gc, %.lr.ph785 ], [ 0, %bb.bl ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.0534783, i64 24
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !135
  %i.gc = add i64 %i.gb, %.0533782                ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.0534783, i64 8
  %.0534 = load ptr, ptr %i.gd, align 8, !tbaa !133 ; 2 uses
  %.not598 = icmp eq ptr %.0534, null
  br i1 %.not598, label %._crit_edge786, label %.lr.ph785, !llvm.loop !137

bb.bm:                                            ; preds = %._crit_edge786, %bb.bk
  %i.ge = phi i64 [ %.pre847, %._crit_edge786 ], [ %i.en, %bb.bk ]
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = lshr i32 %i.gf, 8
  %i.gh = and i32 %i.gg, 8388607
  %i.gi = load ptr, ptr %i.w, align 8, !tbaa !119
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !103
  %i.gl = load ptr, ptr %i.dz, align 8, !tbaa !131
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 72
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !50
  %i.go = tail call i64 @rdbSavedObjectLen(ptr noundef nonnull %i.ef, ptr noundef %i.gk, i32 noundef %i.gn) #24
  %i.gp = load i64, ptr %i.ef, align 8
  %i.gq = lshr i64 %i.gp, 40
  %i.gr = trunc nuw nsw i64 %i.gq to i32
  %i.gs = tail call i64 @estimateObjectIdleTime(ptr noundef nonnull %i.ef) #24
  %i.gt = udiv i64 %i.gs, 1000
  call void (ptr, ptr, ...) @addReplyStatusFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.167, ptr noundef nonnull %i.ef, i32 noundef %i.gh, ptr noundef %i.em, i64 noundef %i.go, i32 noundef %i.gr, i64 noundef %i.gt, ptr noundef nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.loopexit

bb.bn:                                            ; preds = %bb.bh
  %i.gu = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.168) #25
  %.not599 = icmp eq i32 %i.gu, 0
  %or.cond722 = and i1 %i.ay, %.not599
  br i1 %or.cond722, label %bb.bo, label %bb.bv

bb.bo:                                            ; preds = %bb.bn
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !131
  %i.gx = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !103
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !14
  %i.hb = tail call ptr @dbFind(ptr noundef %i.gw, ptr noundef %i.ha) #24 ; 6 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 208), align 8, !tbaa !132
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.hd) #24
  br label %.loopexit

bb.bq:                                            ; preds = %bb.bo
  %i.he = tail call ptr @kvobjGetKey(ptr noundef nonnull %i.hb) #24 ; 2 uses
  %i.hf = load i64, ptr %i.hb, align 8            ; 2 uses
  %i.hg = and i64 %i.hf, 15
  %.not600 = icmp eq i64 %i.hg, 0
  br i1 %.not600, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.hh = trunc i64 %i.hf to i32
  %i.hi = lshr exact i32 %i.hh, 4
  %i.hj = and i32 %i.hi, 15
  switch i32 %i.hj, label %bb.bs [
    i32 0, label %bb.bt
    i32 8, label %bb.bt
  ]

bb.bs:                                            ; preds = %bb.br, %bb.bq
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.169) #24
  br label %.loopexit

bb.bt:                                            ; preds = %bb.br, %bb.br
  %i.hk = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %i.hb) #24
  %i.hl = load i64, ptr %i.hb, align 8
  %i.hm = and i64 %i.hl, 240
  %i.hn = icmp eq i64 %i.hm, 0
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !14 ; 3 uses
  br i1 %i.hn, label %bb.bu, label %._crit_edge844

bb.bu:                                            ; preds = %bb.bt
  %i.hq = tail call fastcc i64 @sdsAllocSize(ptr noundef %i.hp)
  br label %._crit_edge844

._crit_edge844:                                   ; preds = %bb.bt, %bb.bu
  %i.hr = phi i64 [ %i.hq, %bb.bu ], [ 0, %bb.bt ]
  %i.hs = tail call fastcc i64 @sdslen(ptr noundef %i.he)
  %i.ht = tail call fastcc i64 @sdsavail(ptr noundef %i.he)
  %i.hu = tail call fastcc i64 @sdslen(ptr noundef %i.hp)
  %i.hv = tail call fastcc i64 @sdsavail(ptr noundef %i.hp)
  tail call void (ptr, ptr, ...) @addReplyStatusFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.170, i64 noundef %i.hs, i64 noundef %i.ht, i64 noundef %i.hk, i64 noundef %i.hu, i64 noundef %i.hv, i64 noundef %i.hr) #24
  br label %.loopexit

bb.bv:                                            ; preds = %bb.bn
  %i.hw = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.171) #25
  %.not601 = icmp eq i32 %i.hw, 0
  %or.cond723 = and i1 %i.ay, %.not601
  br i1 %or.cond723, label %bb.bw, label %bb.cc

bb.bw:                                            ; preds = %bb.bv
  %i.hx = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !103
  %i.hz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 208), align 8, !tbaa !132
  %i.ia = tail call ptr @kvobjCommandLookupOrReply(ptr noundef nonnull %0, ptr noundef %i.hy, ptr noundef %i.hz) #24 ; 3 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %.loopexit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ic = load i64, ptr %i.ia, align 8
  %i.id = trunc i64 %i.ic to i32
  %i.ie = lshr i32 %i.id, 4
  %i.if = and i32 %i.ie, 15                       ; 2 uses
  %.off = add nsw i32 %i.if, -11
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.172) #24
  br label %.loopexit

bb.bz:                                            ; preds = %bb.bx
  %i.ig = icmp eq i32 %i.if, 11
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !14 ; 2 uses
  br i1 %i.ig, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !138
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %.sink = phi ptr [ %i.ik, %bb.ca ], [ %i.ii, %bb.bz ]
  tail call void @lpRepr(ptr noundef %.sink) #24
  tail call void @addReplyStatus(ptr noundef nonnull %0, ptr noundef nonnull @.str.173) #24
  br label %.loopexit

bb.cc:                                            ; preds = %bb.bv
  %i.il = tail call i32 @strcasecmp(ptr noundef %.pre834, ptr noundef nonnull @.str.174) #25
  %.not604 = icmp eq i32 %i.il, 0
  %.off687 = add i32 %i.s, -3                     ; 2 uses
  %switch688 = icmp ult i32 %.off687, 2
  %or.cond724 = and i1 %switch688, %.not604
  br i1 %or.cond724, label %bb.cd, label %bb.cj

bb.cd:                                            ; preds = %bb.cc
  %i.im = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !103
  %i.io = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 208), align 8, !tbaa !132
  %i.ip = tail call ptr @kvobjCommandLookupOrReply(ptr noundef nonnull %0, ptr noundef %i.in, ptr noundef %i.io) #24 ; 3 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %.loopexit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ir = load i32, ptr %i.r, align 8, !tbaa !106
  %i.is = icmp eq i32 %i.ir, 4
  br i1 %i.is, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.it = load ptr, ptr %i.w, align 8, !tbaa !119
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !103
end_hunk_0
