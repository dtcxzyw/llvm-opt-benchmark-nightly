Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/checkpointer?download=true
inline.NumInlined: 28
inline.NumDeleted: 9
begin_hunk_0_@CheckpointerMain:bb.a
  %i.ay = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.bf, %bb.k ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %.1.i, i64 %indvars.iv.i
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds [32 x i8], ptr %i.av, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false)
  %i.bc = load i32, ptr %i.aw, align 8
  %i.bd = add i32 %i.bc, 1
  %i.be = load i32, ptr %i.ax, align 4
  %i.bf = srem i32 %i.bd, %i.be                   ; 2 uses
  store i32 %i.bf, ptr %i.aw, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.k, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.k
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %.pre32.i = load i32, ptr %.phi.trans.insert.i, align 8
  %i.bg = sub i32 %.pre32.i, %spec.select.i       ; 2 uses
  store i32 %i.bg, ptr %.phi.trans.insert.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i, %.preheader.i
  %i.bh = phi i32 [ %i.bg, %._crit_edge.i ], [ %i.ap, %.preheader.i ]
  %.2.i = phi ptr [ %.1.i, %._crit_edge.i ], [ %.019.i, %.preheader.i ] ; 4 uses
  %i.bi = load volatile i32, ptr @CritSectionCount, align 4
  %i.bj = add i32 %i.bi, 1
  store volatile i32 %i.bj, ptr @CritSectionCount, align 4
  %.not22.i = icmp eq i32 %i.bh, 0
  %i.bk = load ptr, ptr @MainLWLockArray, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2176
  call void @LWLockRelease(ptr noundef nonnull %i.bl) #11
  br i1 %i.aq, label %.lr.ph28.i, label %._crit_edge29.i

.lr.ph28.i:                                       ; preds = %bb.l, %.lr.ph28.i
  %.01726.i = phi i32 [ %i.bp, %.lr.ph28.i ], [ %spec.select.i, %bb.l ] ; 2 uses
  %.01825.i = phi ptr [ %i.bo, %.lr.ph28.i ], [ %.2.i, %bb.l ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01825.i, i64 8
  %i.bn = load i32, ptr %.01825.i, align 8
  call void @RememberSyncRequest(ptr noundef nonnull %i.bm, i32 noundef %i.bn) #11
  %i.bo = getelementptr inbounds nuw i8, ptr %.01825.i, i64 32
  %i.bp = add nsw i32 %.01726.i, -1
  %i.bq = icmp sgt i32 %.01726.i, 1
  br i1 %i.bq, label %.lr.ph28.i, label %._crit_edge29.i, !llvm.loop !1

._crit_edge29.i:                                  ; preds = %.lr.ph28.i, %bb.l
  %i.br = load volatile i32, ptr @CritSectionCount, align 4
  %i.bs = add i32 %i.br, -1
  store volatile i32 %i.bs, ptr @CritSectionCount, align 4
  br i1 %.not22.i, label %bb.m, label %.preheader.i, !llvm.loop !2

bb.m:                                             ; preds = %._crit_edge29.i
  %.not23.i = icmp eq ptr %.2.i, null
  br i1 %.not23.i, label %AbsorbSyncRequests.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @pfree(ptr noundef nonnull %.2.i) #11
  br label %AbsorbSyncRequests.exit

AbsorbSyncRequests.exit:                          ; preds = %bb.h, %bb.m, %bb.n
  %i.bt = load volatile i32, ptr @ProcSignalBarrierPending, align 4
  %.not.i74 = icmp eq i32 %i.bt, 0
  br i1 %.not.i74, label %bb.p, label %bb.o

bb.o:                                             ; preds = %AbsorbSyncRequests.exit
  call void @ProcessProcSignalBarrier() #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %AbsorbSyncRequests.exit
  %i.bu = load volatile i32, ptr @ConfigReloadPending, align 4
  %.not1.i = icmp eq i32 %i.bu, 0
  br i1 %.not1.i, label %UpdateSharedMemoryConfig.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store volatile i32 0, ptr @ConfigReloadPending, align 4
  call void @ProcessConfigFile(i32 noundef 2) #11
  call void @SyncRepUpdateSyncStandbysDefined() #11
  call void @UpdateFullPageWrites() #11
  %i.bv = call zeroext i1 @errstart(i32 noundef 13, ptr noundef null) #11
  br i1 %i.bv, label %bb.r, label %UpdateSharedMemoryConfig.exit.i

bb.r:                                             ; preds = %bb.q
  %i.bw = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.25) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1513, ptr noundef nonnull @__func__.UpdateSharedMemoryConfig) #11
  br label %UpdateSharedMemoryConfig.exit.i

UpdateSharedMemoryConfig.exit.i:                  ; preds = %bb.r, %bb.q, %bb.p
  %i.bx = load volatile i32, ptr @LogMemoryContextPending, align 4
  %.not2.i = icmp eq i32 %i.bx, 0
  br i1 %.not2.i, label %ProcessCheckpointerInterrupts.exit, label %bb.s

bb.s:                                             ; preds = %UpdateSharedMemoryConfig.exit.i
  call void @ProcessLogMemoryContextInterrupt() #11
  br label %ProcessCheckpointerInterrupts.exit

ProcessCheckpointerInterrupts.exit:               ; preds = %UpdateSharedMemoryConfig.exit.i, %bb.s
  %i.by = load volatile i32, ptr @ShutdownXLOGPending, align 4
  %.not55 = icmp eq i32 %i.by, 0
  br i1 %.not55, label %bb.t, label %.thread98

bb.t:                                             ; preds = %ProcessCheckpointerInterrupts.exit
  %i.bz = load volatile i32, ptr @ShutdownRequestPending, align 4
  %.not56 = icmp eq i32 %i.bz, 0
  br i1 %.not56, label %bb.u, label %.thread98

bb.u:                                             ; preds = %bb.t
  %i.ca = load ptr, ptr @CheckpointerShmem, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.cc = load volatile i32, ptr %i.cb, align 4
  %.not57 = icmp ne i32 %i.cc, 0                  ; 3 uses
  %i.cd = call i64 @time(ptr noundef null) #11    ; 6 uses
  %i.ce = load i64, ptr @last_checkpoint_time, align 8
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = trunc i64 %i.cf to i32                  ; 3 uses
  %i.ch = load i32, ptr @CheckPointTimeout, align 4
  %.not58 = icmp sle i32 %i.ch, %i.cg             ; 3 uses
  %narrow = select i1 %.not58, i1 true, i1 %.not57
  %.047 = select i1 %.not58, i32 256, i32 0
  br i1 %narrow, label %bb.v, label %bb.au

bb.v:                                             ; preds = %bb.u
  %i.ci = call zeroext i1 @RecoveryInProgress() #11
  %i.cj = load ptr, ptr @CheckpointerShmem, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 3 uses
  %i.cl = call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ck, i8 1, ptr nonnull elementtype(i8) %i.ck) #11, !srcloc !7
  %.not.i75 = icmp eq i8 %i.cl, 0
  br i1 %.not.i75, label %SpinLockAcquire.exit76, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = call i32 @s_lock(ptr noundef nonnull %i.ck, ptr noundef nonnull @.str.20, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #11 ; 0 uses
  br label %SpinLockAcquire.exit76

SpinLockAcquire.exit76:                           ; preds = %bb.v, %bb.w
  %i.cn = load ptr, ptr @CheckpointerShmem, align 8 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 20 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4            ; 3 uses
  %i.cq = or i32 %i.cp, %.047                     ; 2 uses
  store i32 0, ptr %i.co, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !8
  store volatile i8 0, ptr %i.cu, align 4
  %i.cv = load ptr, ptr @CheckpointerShmem, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  call void @ConditionVariableBroadcast(ptr noundef nonnull %i.cw) #11
  %i.cx = and i32 %i.cp, 2
  %.not59 = icmp eq i32 %i.cx, 0
  %spec.select68 = select i1 %.not59, i1 %i.ci, i1 false ; 5 uses
  %not..not58 = xor i1 %.not58, true
  %i.cy = select i1 %not..not58, i1 true, i1 %.not57
  br i1 %i.cy, label %bb.y, label %bb.x

bb.x:                                             ; preds = %SpinLockAcquire.exit76
  br i1 %spec.select68, label %.thread91, label %.thread

bb.y:                                             ; preds = %SpinLockAcquire.exit76
  br i1 %.not57, label %bb.z, label %bb.aa

.thread91:                                        ; preds = %bb.x
  %i.cz = load i64, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 24), align 8
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 24), align 8
  br label %bb.aa

.thread:                                          ; preds = %bb.x
  %i.db = load i64, ptr @PendingCheckpointerStats, align 8
  %i.dc = add i64 %i.db, 1
  store i64 %i.dc, ptr @PendingCheckpointerStats, align 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  br i1 %spec.select68, label %.thread92, label %.thread90

.thread92:                                        ; preds = %bb.z
  %i.dd = load i64, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 32), align 8
  %i.de = add i64 %i.dd, 1
  store i64 %i.de, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 32), align 8
  br label %bb.aa

.thread90:                                        ; preds = %bb.z
  %i.df = load i64, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 8), align 8
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 8), align 8
  br label %bb.aa

bb.aa:                                            ; preds = %.thread91, %.thread, %.thread92, %.thread90, %bb.y
  %i.dh = and i32 %i.cp, 128
  %.not60 = icmp ne i32 %i.dh, 0
  %not.spec.select68 = xor i1 %spec.select68, true
  %or.cond = select i1 %not.spec.select68, i1 %.not60, i1 false
  %i.di = load i32, ptr @CheckPointWarning, align 4
  %i.dj = icmp sgt i32 %i.di, %i.cg
  %or.cond70 = select i1 %or.cond, i1 %i.dj, i1 false
  br i1 %or.cond70, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dk = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #11
  br i1 %i.dk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %sext = shl i64 %i.cf, 32
  %i.dl = ashr exact i64 %sext, 32
  %i.dm = call i32 (ptr, ptr, i64, ...) @errmsg_plural(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef %i.dl, i32 noundef %i.cg) #11 ; 0 uses
  %i.dn = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 484, ptr noundef nonnull @__func__.CheckpointerMain) #11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  store i1 true, ptr @ckpt_active, align 1
  br i1 %spec.select68, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.do = call i64 @GetInsertRecPtr() #11
  store i64 %i.do, ptr @ckpt_start_recptr, align 8
  store i64 %i.cd, ptr @ckpt_start_time, align 8
  store double 0.000000e+00, ptr @ckpt_cached_elapsed, align 8
  %i.dp = call zeroext i1 @CreateCheckPoint(i32 noundef %i.cq) #11
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.dq = call i64 @GetXLogReplayRecPtr(ptr noundef null) #11
  store i64 %i.dq, ptr @ckpt_start_recptr, align 8
  store i64 %i.cd, ptr @ckpt_start_time, align 8
  store double 0.000000e+00, ptr @ckpt_cached_elapsed, align 8
  %i.dr = call zeroext i1 @CreateRestartPoint(i32 noundef %i.cq) #11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.041.in = phi i1 [ %i.dr, %bb.af ], [ %i.dp, %bb.ae ] ; 2 uses
  call void @smgrdestroyall() #11
  %i.ds = load ptr, ptr @CheckpointerShmem, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 3 uses
  %i.du = call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.dt, i8 1, ptr nonnull elementtype(i8) %i.dt) #11, !srcloc !7
  %.not.i77 = icmp eq i8 %i.du, 0
  br i1 %.not.i77, label %SpinLockAcquire.exit78, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dv = call i32 @s_lock(ptr noundef nonnull %i.dt, ptr noundef nonnull @.str.20, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #11 ; 0 uses
  br label %SpinLockAcquire.exit78

SpinLockAcquire.exit78:                           ; preds = %bb.ag, %bb.ah
  %i.dw = load ptr, ptr @CheckpointerShmem, align 8 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 %i.dy, ptr %i.dz, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !8
  store volatile i8 0, ptr %i.ea, align 4
  %i.eb = load ptr, ptr @CheckpointerShmem, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 36
  call void @ConditionVariableBroadcast(ptr noundef nonnull %i.ec) #11
  br i1 %spec.select68, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %SpinLockAcquire.exit78
  store i64 %i.cd, ptr @last_checkpoint_time, align 8
  br i1 %.041.in, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.ed = load i64, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 16), align 8
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 16), align 8
  br label %bb.an

bb.ak:                                            ; preds = %SpinLockAcquire.exit78
  br i1 %.041.in, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i64 %i.cd, ptr @last_checkpoint_time, align 8
  %i.ef = load i64, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 40), align 8
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 40), align 8
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.eh = load i32, ptr @CheckPointTimeout, align 4
  %i.ei = sext i32 %i.eh to i64
  %i.ej = add i64 %i.cd, 15
  %i.ek = sub i64 %i.ej, %i.ei
  store i64 %i.ek, ptr @last_checkpoint_time, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %bb.ai, %bb.aj
  store i1 false, ptr @ckpt_active, align 1
  %i.el = load volatile i32, ptr @ProcSignalBarrierPending, align 4
  %.not.i79 = icmp eq i32 %i.el, 0
  br i1 %.not.i79, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @ProcessProcSignalBarrier() #11
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.em = load volatile i32, ptr @ConfigReloadPending, align 4
  %.not1.i80 = icmp eq i32 %i.em, 0
  br i1 %.not1.i80, label %UpdateSharedMemoryConfig.exit.i81, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store volatile i32 0, ptr @ConfigReloadPending, align 4
  call void @ProcessConfigFile(i32 noundef 2) #11
  call void @SyncRepUpdateSyncStandbysDefined() #11
  call void @UpdateFullPageWrites() #11
  %i.en = call zeroext i1 @errstart(i32 noundef 13, ptr noundef null) #11
  br i1 %i.en, label %bb.ar, label %UpdateSharedMemoryConfig.exit.i81

bb.ar:                                            ; preds = %bb.aq
  %i.eo = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.25) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1513, ptr noundef nonnull @__func__.UpdateSharedMemoryConfig) #11
  br label %UpdateSharedMemoryConfig.exit.i81

UpdateSharedMemoryConfig.exit.i81:                ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.ep = load volatile i32, ptr @LogMemoryContextPending, align 4
  %.not2.i82 = icmp eq i32 %i.ep, 0
  br i1 %.not2.i82, label %ProcessCheckpointerInterrupts.exit83, label %bb.as

bb.as:                                            ; preds = %UpdateSharedMemoryConfig.exit.i81
  call void @ProcessLogMemoryContextInterrupt() #11
  br label %ProcessCheckpointerInterrupts.exit83

ProcessCheckpointerInterrupts.exit83:             ; preds = %UpdateSharedMemoryConfig.exit.i81, %bb.as
  %i.eq = load volatile i32, ptr @ShutdownXLOGPending, align 4
  %.not61 = icmp eq i32 %i.eq, 0
  br i1 %.not61, label %bb.at, label %.thread98

bb.at:                                            ; preds = %ProcessCheckpointerInterrupts.exit83
  %i.er = load volatile i32, ptr @ShutdownRequestPending, align 4
  %.not62 = icmp eq i32 %i.er, 0
  br i1 %.not62, label %bb.au, label %.thread98

bb.au:                                            ; preds = %bb.at, %bb.u
  call void @DisableLogicalDecodingIfNecessary() #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.es = load i32, ptr @XLogArchiveTimeout, align 4
  %i.et = icmp slt i32 %i.es, 1
  br i1 %i.et, label %CheckArchiveTimeout.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eu = call zeroext i1 @RecoveryInProgress() #11
  br i1 %i.eu, label %CheckArchiveTimeout.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ev = call i64 @time(ptr noundef null) #11    ; 3 uses
  %i.ew = load i64, ptr @last_xlog_switch_time, align 8
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = load i32, ptr @XLogArchiveTimeout, align 4
  %i.fa = icmp sgt i32 %i.ez, %i.ey
  br i1 %i.fa, label %CheckArchiveTimeout.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fb = call i64 @GetLastSegSwitchData(ptr noundef nonnull %i.a) #11
  %i.fc = load i64, ptr @last_xlog_switch_time, align 8
  %i.fd = call i64 @llvm.smax.i64(i64 %i.fc, i64 %i.fb) ; 2 uses
  store i64 %i.fd, ptr @last_xlog_switch_time, align 8
  %i.fe = sub i64 %i.ev, %i.fd
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = load i32, ptr @XLogArchiveTimeout, align 4
  %.not.i84 = icmp sgt i32 %i.fg, %i.ff
  br i1 %.not.i84, label %CheckArchiveTimeout.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fh = call i64 @GetLastImportantRecPtr() #11
  %i.fi = load i64, ptr %i.a, align 8
  %i.fj = icmp ugt i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.fk = call i64 @RequestXLogSwitch(i1 noundef zeroext true) #11
  %i.fl = load i32, ptr @wal_segment_size, align 4
  %i.fm = add i32 %i.fl, -1
  %i.fn = sext i32 %i.fm to i64
  %i.fo = and i64 %i.fk, %i.fn
  %.not6.i = icmp eq i64 %i.fo, 0
  br i1 %.not6.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fp = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #11
  br i1 %i.fp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fq = load i32, ptr @XLogArchiveTimeout, align 4
  %i.fr = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.21, i32 noundef %i.fq) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 756, ptr noundef nonnull @__func__.CheckArchiveTimeout) #11
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  store i64 %i.ev, ptr @last_xlog_switch_time, align 8
  br label %CheckArchiveTimeout.exit

CheckArchiveTimeout.exit:                         ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @pgstat_report_checkpointer() #11
  call void @pgstat_report_wal(i1 noundef zeroext true) #11
  %i.fs = load ptr, ptr @CheckpointerShmem, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 20
  %i.fu = load volatile i32, ptr %i.ft, align 4
  %.not63 = icmp eq i32 %i.fu, 0
  br i1 %.not63, label %bb.bd, label %.backedge

bb.bd:                                            ; preds = %CheckArchiveTimeout.exit
  %i.fv = call i64 @time(ptr noundef null) #11    ; 2 uses
  %i.fw = load i64, ptr @last_checkpoint_time, align 8
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = trunc i64 %i.fx to i32                  ; 2 uses
  %i.fz = load i32, ptr @CheckPointTimeout, align 4 ; 2 uses
  %.not64 = icmp sgt i32 %i.fz, %i.fy
  br i1 %.not64, label %bb.be, label %.backedge

bb.be:                                            ; preds = %bb.bd
  %i.ga = sub i32 %i.fz, %i.fy                    ; 3 uses
  %i.gb = load i32, ptr @XLogArchiveTimeout, align 4
  %i.gc = icmp sgt i32 %i.gb, 0
end_hunk_0
