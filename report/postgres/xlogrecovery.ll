Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/xlogrecovery?download=true
inline.NumInlined: 100
inline.NumDeleted: 46
begin_hunk_0_@PerformWalRecovery:bb.a

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load i8, ptr %i.an, align 8
  %i.ap = and i8 %i.ao, -16
  %.not15 = icmp eq i8 %i.ap, -32
  br i1 %.not15, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aq = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.ar = load ptr, ptr @xlogreader, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = lshr i64 %i.at, 32
  %i.av = trunc nuw i64 %i.au to i32
  %i.aw = trunc i64 %i.at to i32
  %i.ax = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.50, i32 noundef %i.av, i32 noundef %i.aw) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1678, ptr noundef nonnull @__func__.PerformWalRecovery) #18
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.ay = load i32, ptr @CheckPointTLI, align 4   ; 2 uses
  %i.az = tail call fastcc ptr @ReadRecord(ptr noundef %i.ah, i32 noundef 15, i1 noundef zeroext false, i32 noundef %i.ay) ; 2 uses
  %.not16 = icmp eq ptr %i.az, null
  br i1 %.not16, label %bb.ej, label %.thread

.thread:                                          ; preds = %bb.i, %bb.k
  %.01148 = phi ptr [ %i.az, %bb.k ], [ %i.ak, %bb.i ]
  %.04247 = phi i32 [ %i.ay, %bb.k ], [ %i.ai, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @pg_rusage_init(ptr noundef nonnull %6) #18
  store i1 true, ptr @InRedo, align 1
  call void @RmgrStartup() #18
  %i.ba = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread
  %i.bb = load ptr, ptr @xlogreader, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = lshr i64 %i.bd, 32
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = trunc i64 %i.bd to i32
  %i.bh = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.51, i32 noundef %i.bf, i32 noundef %i.bg) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1701, ptr noundef nonnull @__func__.PerformWalRecovery) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread
  %i.bi = load i8, ptr @StandbyMode, align 1, !range !4, !noundef !5
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @begin_startup_progress_phase() #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.p

bb.p:                                             ; preds = %recoveryStopsAfter.exit, %bb.o
  %.143 = phi i32 [ %.04247, %bb.o ], [ %.2, %recoveryStopsAfter.exit ] ; 8 uses
  %.112 = phi ptr [ %.01148, %bb.o ], [ %i.qv, %recoveryStopsAfter.exit ] ; 4 uses
  %i.bq = load i8, ptr @StandbyMode, align 1, !range !4, !noundef !5
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.bs = call zeroext i1 @has_startup_progress_timeout_expired(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #18
  br i1 %i.bs, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bt = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18
  br i1 %i.bt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bu = load i64, ptr %i.c, align 8
  %i.bv = load i32, ptr %i.d, align 4
  %i.bw = sdiv i32 %i.bv, 10000
  %i.bx = load ptr, ptr @xlogreader, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i64, ptr %i.by, align 8            ; 2 uses
  %i.ca = lshr i64 %i.bz, 32
  %i.cb = trunc nuw i64 %i.ca to i32
  %i.cc = trunc i64 %i.bz to i32
  %i.cd = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.52, i64 noundef %i.bu, i32 noundef %i.bw, i32 noundef %i.cb, i32 noundef %i.cc) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1714, ptr noundef nonnull @__func__.PerformWalRecovery) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  call void @ProcessStartupProcInterrupts() #18
  %i.ce = load ptr, ptr @XLogRecoveryCtl, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  %i.cg = load volatile i32, ptr %i.cf, align 8
  %.not17 = icmp eq i32 %i.cg, 0
  br i1 %.not17, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call fastcc void @recoveryPausesHere(i1 noundef zeroext false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ch = load ptr, ptr @xlogreader, align 8      ; 2 uses
  %i.ci = load i8, ptr @ArchiveRecoveryRequested, align 1, !range !4, !noundef !5
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.x, label %recoveryStopsBefore.exit

bb.x:                                             ; preds = %bb.w
  %i.ck = load i32, ptr @recoveryTarget, align 4  ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 5
  %i.cm = load i8, ptr @reachedConsistency, align 1, !range !4
  %i.cn = trunc nuw i8 %i.cm to i1
  %or.cond.i = select i1 %i.cl, i1 %i.cn, i1 false
  br i1 %or.cond.i, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.co = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18
  br i1 %i.co, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cp = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.139) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 2569, ptr noundef nonnull @__func__.recoveryStopsBefore) #18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  store i1 false, ptr @recoveryStopAfter, align 1
  store i32 0, ptr @recoveryStopXid, align 4
  store i64 0, ptr @recoveryStopLSN, align 8
  store i64 0, ptr @recoveryStopTime, align 8
  store i8 0, ptr @recoveryStopName, align 16
  br label %recoveryStopsBefore.exit.thread

bb.ab:                                            ; preds = %bb.x
  %i.cq = icmp ne i32 %i.ck, 4
  %i.cr = load i8, ptr @recoveryTargetInclusive, align 1, !range !4
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond3.i = select i1 %i.cq, i1 true, i1 %i.cs
  br i1 %or.cond3.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cu = load i64, ptr %i.ct, align 8            ; 2 uses
  %i.cv = load i64, ptr @recoveryTargetLSN, align 8
  %.not.i21 = icmp ult i64 %i.cu, %i.cv
  br i1 %.not.i21, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i1 false, ptr @recoveryStopAfter, align 1
  store i32 0, ptr @recoveryStopXid, align 4
  store i64 %i.cu, ptr @recoveryStopLSN, align 8
  store i64 0, ptr @recoveryStopTime, align 8
  store i8 0, ptr @recoveryStopName, align 16
  %i.cw = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18
  br i1 %i.cw, label %bb.ae, label %recoveryStopsBefore.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.cx = load i64, ptr @recoveryStopLSN, align 8 ; 2 uses
  %i.cy = lshr i64 %i.cx, 32
  %i.cz = trunc nuw i64 %i.cy to i32
  %i.da = trunc i64 %i.cx to i32
  %i.db = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.140, i32 noundef %i.cz, i32 noundef %i.da) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 2591, ptr noundef nonnull @__func__.recoveryStopsBefore) #18
  br label %recoveryStopsBefore.exit.thread

bb.af:                                            ; preds = %bb.ac, %bb.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ch, i64 104 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 57
  %i.df = load i8, ptr %i.de, align 1
  %.not33.i = icmp eq i8 %i.df, 1
  br i1 %.not33.i, label %bb.ag, label %recoveryStopsBefore.exit

bb.ag:                                            ; preds = %bb.af
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.dh = load i8, ptr %i.dg, align 8             ; 3 uses
  %i.di = lshr i8 %i.dh, 4
  %i.dj = and i8 %i.di, 7
  switch i8 %i.dj, label %recoveryStopsBefore.exit [
    i8 0, label %bb.ah
    i8 3, label %bb.ai
    i8 2, label %bb.aj
    i8 4, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 44
  %i.dl = load i32, ptr %i.dk, align 4
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %i.dn = load ptr, ptr %i.dm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @ParseCommitRecord(i8 noundef zeroext %i.dh, ptr noundef %i.dn, ptr noundef nonnull %4) #18
  %i.do = load i32, ptr %i.bl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.al

bb.aj:                                            ; preds = %bb.ag
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 44
  %i.dq = load i32, ptr %i.dp, align 4
  br label %bb.al

bb.ak:                                            ; preds = %bb.ag
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %i.ds = load ptr, ptr %i.dr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @ParseAbortRecord(i8 noundef zeroext %i.dh, ptr noundef %i.ds, ptr noundef nonnull %5) #18
  %i.dt = load i32, ptr %i.bk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.031.i = phi i1 [ true, %bb.ah ], [ true, %bb.ai ], [ false, %bb.aj ], [ false, %bb.ak ]
  %.030.i = phi i32 [ %i.dl, %bb.ah ], [ %i.do, %bb.ai ], [ %i.dq, %bb.aj ], [ %i.dt, %bb.ak ] ; 2 uses
  %7 = load i32, ptr @recoveryTarget, align 4     ; 2 uses
  %8 = icmp ne i32 %7, 1
  %9 = load i8, ptr @recoveryTargetInclusive, align 1, !range !4
  %10 = trunc nuw i8 %9 to i1                     ; 2 uses
  %or.cond5.i = select i1 %8, i1 true, i1 %10
  %11 = load i32, ptr @recoveryTargetXid, align 4
  %12 = icmp ne i32 %.030.i, %11
  %.029.not.i = select i1 %or.cond5.i, i1 true, i1 %12 ; 2 uses
  %.val.i = load ptr, ptr %i.dc, align 8          ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.val.i, i64 56
  %i.dv = load i8, ptr %i.du, align 8             ; 2 uses
  %i.dw = and i8 %i.dv, -16
  %i.dx = getelementptr inbounds nuw i8, ptr %.val.i, i64 57
  %i.dy = load i8, ptr %i.dx, align 1             ; 2 uses
  %i.dz = icmp eq i8 %i.dy, 0
  %i.ea = icmp eq i8 %i.dw, 112
  %or.cond.i.i = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond.i.i, label %getRecordTimestamp.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eb = icmp eq i8 %i.dy, 1
  br i1 %i.eb, label %bb.an, label %getRecordTimestamp.exit.thread.i

bb.an:                                            ; preds = %bb.am
  %i.ec = lshr i8 %i.dv, 4
  %i.ed = and i8 %i.ec, 7
  switch i8 %i.ed, label %getRecordTimestamp.exit.thread.i [
    i8 3, label %getRecordTimestamp.exit.i
    i8 0, label %getRecordTimestamp.exit.i
    i8 4, label %getRecordTimestamp.exit.i
    i8 2, label %getRecordTimestamp.exit.i
  ]

getRecordTimestamp.exit.thread.i:                 ; preds = %bb.an, %bb.am
  br i1 %.029.not.i, label %recoveryStopsBefore.exit, label %bb.aq

getRecordTimestamp.exit.i:                        ; preds = %bb.an, %bb.an, %bb.an, %bb.an, %bb.al
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = load i64, ptr %i.ef, align 8            ; 5 uses
  %i.eh = icmp eq i32 %7, 2
  br i1 %i.eh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %getRecordTimestamp.exit.i
  %i.ei = load i64, ptr @recoveryTargetTime, align 8 ; 2 uses
  br i1 %10, label %.split.i, label %.split43.i

.split.i:                                         ; preds = %bb.ao
  %i.ej = icmp sgt i64 %i.eg, %i.ei
  br i1 %i.ej, label %bb.aq, label %recoveryStopsBefore.exit

.split43.i:                                       ; preds = %bb.ao
  %.not45.i.a = icmp slt i64 %i.eg, %i.ei
  br i1 %.not45.i.a, label %recoveryStopsBefore.exit, label %bb.aq

bb.ap:                                            ; preds = %getRecordTimestamp.exit.i
  br i1 %.029.not.i, label %recoveryStopsBefore.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.split43.i, %.split.i, %getRecordTimestamp.exit.thread.i
  %.0364041.i = phi i64 [ %i.eg, %.split.i ], [ %i.eg, %bb.ap ], [ 0, %getRecordTimestamp.exit.thread.i ], [ %i.eg, %.split43.i ]
  store i1 false, ptr @recoveryStopAfter, align 1
  store i32 %.030.i, ptr @recoveryStopXid, align 4
  store i64 %.0364041.i, ptr @recoveryStopTime, align 8
  store i64 0, ptr @recoveryStopLSN, align 8
  store i8 0, ptr @recoveryStopName, align 16
  %i.ek = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18 ; 2 uses
  br i1 %.031.i, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.ek, label %bb.as, label %recoveryStopsBefore.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.el = load i32, ptr @recoveryStopXid, align 4
  %i.em = load i64, ptr @recoveryStopTime, align 8
  %i.en = call ptr @timestamptz_to_str(i64 noundef %i.em) #18
  %i.eo = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.141, i32 noundef %i.el, ptr noundef %i.en) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 2682, ptr noundef nonnull @__func__.recoveryStopsBefore) #18
  br label %recoveryStopsBefore.exit.thread

bb.at:                                            ; preds = %bb.aq
  br i1 %i.ek, label %bb.au, label %recoveryStopsBefore.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.ep = load i32, ptr @recoveryStopXid, align 4
  %i.eq = load i64, ptr @recoveryStopTime, align 8
  %i.er = call ptr @timestamptz_to_str(i64 noundef %i.eq) #18
  %i.es = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.142, i32 noundef %i.ep, ptr noundef %i.er) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 2689, ptr noundef nonnull @__func__.recoveryStopsBefore) #18
  br label %recoveryStopsBefore.exit.thread

recoveryStopsBefore.exit:                         ; preds = %bb.ap, %.split43.i, %.split.i, %getRecordTimestamp.exit.thread.i, %bb.ag, %bb.af, %bb.w
  %i.et = load i32, ptr @recovery_min_apply_delay, align 4 ; 2 uses
  %i.eu = icmp sgt i32 %i.et, 0
  %i.ev = load i8, ptr @reachedConsistency, align 1, !range !4
  %i.ew = trunc nuw i8 %i.ev to i1
  %or.cond.i22 = select i1 %i.eu, i1 %i.ew, i1 false
  %i.ex = load i8, ptr @ArchiveRecoveryRequested, align 1, !range !4
  %i.ey = trunc nuw i8 %i.ex to i1
  %or.cond16.i = select i1 %or.cond.i22, i1 %i.ey, i1 false
  br i1 %or.cond16.i, label %bb.av, label %recoveryApplyDelay.exit.thread

bb.av:                                            ; preds = %recoveryStopsBefore.exit
  %i.ez = load ptr, ptr @xlogreader, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 104
  %i.fb = load ptr, ptr %i.fa, align 8            ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 57
  %i.fd = load i8, ptr %i.fc, align 1
  %.not.i25 = icmp eq i8 %i.fd, 1
  br i1 %.not.i25, label %bb.aw, label %recoveryApplyDelay.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  %i.ff = load i8, ptr %i.fe, align 8             ; 2 uses
  %i.fg = and i8 %i.ff, 112
  switch i8 %i.fg, label %recoveryApplyDelay.exit.thread [
    i8 48, label %bb.ax
    i8 0, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw
  %i.fh = lshr i8 %i.ff, 4
  %i.fi = and i8 %i.fh, 7
  switch i8 %i.fi, label %recoveryApplyDelay.exit.thread [
    i8 3, label %bb.ay
    i8 0, label %bb.ay
    i8 4, label %bb.ay
    i8 2, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax, %bb.ax, %bb.ax, %bb.ax
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 72
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = load i64, ptr %i.fk, align 8            ; 2 uses
  %i.fm = zext nneg i32 %i.et to i64
  %i.fn = mul nuw nsw i64 %i.fm, 1000
  %i.fo = add i64 %i.fl, %i.fn
  %i.fp = call i64 @GetCurrentTimestamp() #18
  %i.fq = call i64 @TimestampDifferenceMilliseconds(i64 noundef %i.fp, i64 noundef %i.fo) #18
  %i.fr = icmp slt i64 %i.fq, 1
  br i1 %i.fr, label %recoveryApplyDelay.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ay
  %i.fs = load ptr, ptr @XLogRecoveryCtl, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  call void @ResetLatch(ptr noundef nonnull %i.ft) #18
  call void @ProcessStartupProcInterrupts() #18
  %i.fu = call fastcc zeroext i1 @CheckForStandbyTrigger()
  br i1 %i.fu, label %recoveryApplyDelay.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.bb
  %i.fv = load i32, ptr @recovery_min_apply_delay, align 4
  %i.fw = sext i32 %i.fv to i64
  %i.fx = mul nsw i64 %i.fw, 1000
  %i.fy = add i64 %i.fx, %i.fl
  %i.fz = call i64 @GetCurrentTimestamp() #18
  %i.ga = call i64 @TimestampDifferenceMilliseconds(i64 noundef %i.fz, i64 noundef %i.fy) #18 ; 3 uses
  %i.gb = icmp slt i64 %i.ga, 1
  br i1 %i.gb, label %recoveryApplyDelay.exit, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i
  %i.gc = call zeroext i1 @errstart(i32 noundef 13, ptr noundef null) #18
  br i1 %i.gc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gd = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.158, i64 noundef %i.ga) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 3033, ptr noundef nonnull @__func__.recoveryApplyDelay) #18
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ge = load ptr, ptr @XLogRecoveryCtl, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gg = call i32 @WaitLatch(ptr noundef nonnull %i.gf, i32 noundef 41, i64 noundef %i.ga, i32 noundef 150994948) #18 ; 0 uses
  %i.gh = load ptr, ptr @XLogRecoveryCtl, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  call void @ResetLatch(ptr noundef nonnull %i.gi) #18
  call void @ProcessStartupProcInterrupts() #18
  %i.gj = call fastcc zeroext i1 @CheckForStandbyTrigger()
  br i1 %i.gj, label %recoveryApplyDelay.exit, label %.lr.ph.i

recoveryApplyDelay.exit:                          ; preds = %bb.bb, %.lr.ph.i, %.preheader.i
  %i.gk = load ptr, ptr @XLogRecoveryCtl, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 80
  %i.gm = load volatile i32, ptr %i.gl, align 8
  %.not18 = icmp eq i32 %i.gm, 0
  br i1 %.not18, label %recoveryApplyDelay.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %recoveryApplyDelay.exit
  call fastcc void @recoveryPausesHere(i1 noundef zeroext false)
  br label %recoveryApplyDelay.exit.thread

recoveryApplyDelay.exit.thread:                   ; preds = %bb.ay, %bb.ax, %bb.av, %bb.aw, %recoveryStopsBefore.exit, %recoveryApplyDelay.exit, %bb.bc
  %i.gn = load ptr, ptr @xlogreader, align 8      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr @rm_redo_error_callback, ptr %i.bm, align 8
  store ptr %i.gn, ptr %i.bn, align 8
  %i.go = load ptr, ptr @error_context_stack, align 8
  store ptr %i.go, ptr %3, align 8
  store ptr %3, ptr @error_context_stack, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.112, i64 4 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4
  call void @AdvanceNextFullTransactionIdPastXid(i32 noundef %i.gq) #18
  %i.gr = getelementptr inbounds nuw i8, ptr %.112, i64 17 ; 3 uses
  %i.gs = load i8, ptr %i.gr, align 1
  %i.gt = icmp eq i8 %i.gs, 0
  br i1 %i.gt, label %bb.bd, label %.thread.i

bb.bd:                                            ; preds = %recoveryApplyDelay.exit.thread
  %i.gu = getelementptr inbounds nuw i8, ptr %.112, i64 16
  %i.gv = load i8, ptr %i.gu, align 8
  %i.gw = and i8 %i.gv, -16
  switch i8 %i.gw, label %.thread.i [
    i8 0, label %bb.be
    i8 -112, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd, %bb.bd
  %.pn66.in.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 104
  %.pn66.i = load ptr, ptr %.pn66.in.i, align 8
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %.pn66.i, i64 72
  %.pn.i = load ptr, ptr %.pn.in.i, align 8       ; 2 uses
  %.040.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.040.i = load i32, ptr %.040.in.i, align 1     ; 7 uses
  %.not.not.i = icmp eq i32 %.040.i, %.143
  br i1 %.not.not.i, label %.thread.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.041.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 12
  %.041.i = load i32, ptr %.041.in.i, align 1     ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  %i.gy = load i64, ptr %i.gx, align 8
  %.not.i.i = icmp eq i32 %.041.i, %.143
  br i1 %.not.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gz = call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #19 ; 0 uses
  %i.ha = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.123, i32 noundef %.041.i, i32 noundef %.143) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 2361, ptr noundef nonnull @__func__.checkTimeLineSwitch) #18
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.hb = icmp ult i32 %.040.i, %.143
  br i1 %i.hb, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hc = load ptr, ptr @expectedTLEs, align 8
  %i.hd = call zeroext i1 @tliInHistory(i32 noundef %.040.i, ptr noundef %i.hc) #18
  br i1 %i.hd, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.he = call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #19 ; 0 uses
  %i.hf = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.124, i32 noundef %.040.i, i32 noundef %.143) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 2370, ptr noundef nonnull @__func__.checkTimeLineSwitch) #18
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.hg = load i64, ptr @minRecoveryPoint, align 8
  %i.hh = icmp ult i64 %i.gy, %i.hg
end_hunk_0
