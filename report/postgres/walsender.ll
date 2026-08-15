inline.NumInlined: 189
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@InitWalSender:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 512
  tail call void @LWLockRelease(ptr noundef nonnull %i.aq) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %InitWalSenderSlot.exit
  %i.ar = load ptr, ptr @TopMemoryContext, align 8
  %i.as = tail call ptr @MemoryContextAllocZero(ptr noundef %i.ar, i64 noundef 131192) #15
  store ptr %i.as, ptr @lag_tracker, align 8
  ret void
}

declare zeroext i1 @RecoveryInProgress() local_unnamed_addr #1

declare void @CreateAuxProcessResourceOwner() local_unnamed_addr #1

declare void @MarkPostmasterChildWalSender() local_unnamed_addr #1

declare void @SendPostmasterSignal(i32 noundef) local_unnamed_addr #1

declare zeroext i1 @LWLockAcquire(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @LWLockRelease(ptr noundef) local_unnamed_addr #1

declare ptr @MemoryContextAllocZero(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @WalSndErrorCleanup() local_unnamed_addr #0 {
bb.a:
  tail call void @LWLockReleaseAll() #15
  %i.a = tail call zeroext i1 @ConditionVariableCancelSleep() #15 ; 0 uses
  %i.b = load ptr, ptr @my_wait_event_info, align 8
  store volatile i32 0, ptr %i.b, align 4
  tail call void @pgaio_error_cleanup() #15
  %i.c = load ptr, ptr @xlogreader, align 8       ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1208
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @wal_segment_close(ptr noundef nonnull %i.c) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load ptr, ptr @MyReplicationSlot, align 8
  %.not1 = icmp eq ptr %i.g, null
  br i1 %.not1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ReplicationSlotRelease() #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @ReplicationSlotCleanup(i1 noundef zeroext false) #15
  store volatile i32 0, ptr @replication_active, align 4
  %i.h = tail call zeroext i1 @IsTransactionOrTransactionBlock() #15
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @ReleaseAuxProcessResources(i1 noundef zeroext false) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.i = load volatile i32, ptr @got_STOPPING, align 4
  %.not2 = icmp eq i32 %i.i, 0
  br i1 %.not2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.j = load volatile i32, ptr @got_SIGUSR2, align 4
  %.not3 = icmp eq i32 %i.j, 0
  br i1 %.not3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @proc_exit(i32 noundef 0) #16
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.k = load ptr, ptr @MyWalSnd, align 8         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %WalSndSetState.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 76 ; 4 uses
  %i.p = tail call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.o, i8 1, ptr nonnull elementtype(i8) %i.o) #15, !srcloc !7
  %.not.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i, label %SpinLockAcquire.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = tail call i32 @s_lock(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.99, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #15 ; 0 uses
  br label %SpinLockAcquire.exit.i

SpinLockAcquire.exit.i:                           ; preds = %bb.m, %bb.l
  store i32 0, ptr %i.l, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !8
  store volatile i8 0, ptr %i.o, align 4
  br label %WalSndSetState.exit

WalSndSetState.exit:                              ; preds = %bb.k, %SpinLockAcquire.exit.i
  ret void
}

declare void @LWLockReleaseAll() local_unnamed_addr #1

declare zeroext i1 @ConditionVariableCancelSleep() local_unnamed_addr #1

declare void @pgaio_error_cleanup() local_unnamed_addr #1

declare void @wal_segment_close(ptr noundef) #1

declare void @ReplicationSlotRelease() local_unnamed_addr #1

declare void @ReplicationSlotCleanup(i1 noundef zeroext) local_unnamed_addr #1

declare zeroext i1 @IsTransactionOrTransactionBlock() local_unnamed_addr #1

declare void @ReleaseAuxProcessResources(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @proc_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WalSndSetState(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @MyWalSnd, align 8         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, %0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 4 uses
  %i.f = tail call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.e, i8 1, ptr nonnull elementtype(i8) %i.e) #15, !srcloc !7
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %SpinLockAcquire.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @s_lock(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.99, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #15 ; 0 uses
  br label %SpinLockAcquire.exit

SpinLockAcquire.exit:                             ; preds = %bb.b, %bb.c
  store i32 %0, ptr %i.b, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !8
  store volatile i8 0, ptr %i.e, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %SpinLockAcquire.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PhysicalWakeupLogicalWalSnd() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @RecoveryInProgress() #15
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @MyReplicationSlot, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = tail call zeroext i1 @SlotExistsInSyncStandbySlots(ptr noundef nonnull %i.c) #15
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @WalSndCtl, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  tail call void @ConditionVariableBroadcast(ptr noundef nonnull %i.f) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

declare zeroext i1 @SlotExistsInSyncStandbySlots(ptr noundef) local_unnamed_addr #1

declare void @ConditionVariableBroadcast(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @exec_replication_command(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.StringInfoData, align 8     ; 12 uses
  %2 = alloca %struct.StringInfoData, align 8     ; 13 uses
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 10 uses
  %3 = alloca %struct.PGAlignedBlock, align 8     ; 4 uses
  %4 = alloca %struct.StringInfoData, align 8     ; 9 uses
  %5 = alloca %struct.QueryCompletion, align 8    ; 5 uses
  %6 = alloca %struct.XLogReaderRoutine, align 8  ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca [64 x i8], align 16               ; 4 uses
  %i.f = alloca [4 x i64], align 16               ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 6 uses
  %7 = alloca %struct.XLogReaderRoutine, align 8  ; 6 uses
  %i.h = alloca [3 x i64], align 16               ; 7 uses
  %i.i = alloca [3 x i8], align 1                 ; 7 uses
  %.sroa.0.i = alloca [88 x i8], align 8          ; 3 uses
  %.sroa.3.i = alloca i32, align 8                ; 3 uses
  %.sroa.4.i.sroa.0 = alloca <3 x i32>, align 16  ; 3 uses
  %.sroa.410.i = alloca i64, align 8              ; 3 uses
  %.sroa.9.i = alloca [184 x i8], align 8         ; 3 uses
  %i.j = alloca [64 x i8], align 16               ; 4 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca [32 x i8], align 16               ; 4 uses
  %i.o = alloca [64 x i8], align 16               ; 4 uses
  %i.p = alloca [4 x i64], align 16               ; 7 uses
  %i.q = alloca [4 x i8], align 4                 ; 5 uses
  %i.r = alloca i32, align 4                      ; 5 uses
  %i.s = alloca ptr, align 8                      ; 6 uses
  %i.t = alloca ptr, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #15
  %i.u = load ptr, ptr @CurrentMemoryContext, align 8 ; 2 uses
  %i.v = load volatile i32, ptr @got_STOPPING, align 4
  %.not = icmp eq i32 %i.v, 0
  %.pre103 = load ptr, ptr @MyWalSnd, align 8     ; 4 uses
  br i1 %.not, label %WalSndSetState.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %.pre103, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.x, 4
  br i1 %i.y, label %WalSndSetState.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.pre103, i64 76 ; 4 uses
  %i.aa = tail call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.z, i8 1, ptr nonnull elementtype(i8) %i.z) #15, !srcloc !7
  %.not.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i, label %SpinLockAcquire.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = tail call i32 @s_lock(ptr noundef nonnull %i.z, ptr noundef nonnull @.str.99, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #15 ; 0 uses
  br label %SpinLockAcquire.exit.i

SpinLockAcquire.exit.i:                           ; preds = %bb.d, %bb.c
  store i32 4, ptr %i.w, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !8
  store volatile i8 0, ptr %i.z, align 4
  %.pre = load ptr, ptr @MyWalSnd, align 8
  br label %WalSndSetState.exit

WalSndSetState.exit:                              ; preds = %SpinLockAcquire.exit.i, %bb.b, %bb.a
  %i.ac = phi ptr [ %.pre, %SpinLockAcquire.exit.i ], [ %.pre103, %bb.b ], [ %.pre103, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ae, 4
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %WalSndSetState.exit
  %i.ag = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.ah = tail call i32 @errcode(i32 noundef 325) #15 ; 0 uses
  %i.ai = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str) #15 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2113, ptr noundef nonnull @__func__.exec_replication_command) #15
  unreachable

bb.f:                                             ; preds = %WalSndSetState.exit
  tail call void @SnapBuildClearExportedSnapshot() #15
  %i.aj = load volatile i32, ptr @InterruptPending, align 4
  %.not39 = icmp eq i32 %i.aj, 0
  br i1 %.not39, label %bb.h, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  tail call void @ProcessInterrupts() #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = load ptr, ptr @exec_replication_command.cmd_context, align 8 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr @TopMemoryContext, align 8
  %i.an = tail call ptr @AllocSetContextCreateInternal(ptr noundef %i.am, ptr noundef nonnull @.str.2, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #15 ; 2 uses
  store ptr %i.an, ptr @exec_replication_command.cmd_context, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @MemoryContextReset(ptr noundef nonnull %i.ak) #15
  %.pre104 = load ptr, ptr @exec_replication_command.cmd_context, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = phi ptr [ %.pre104, %bb.j ], [ %i.an, %bb.i ]
  store ptr %i.ao, ptr @CurrentMemoryContext, align 8
  call void @replication_scanner_init(ptr noundef %0, ptr noundef nonnull %i.s) #15
  %i.ap = load ptr, ptr %i.s, align 8
  %i.aq = call zeroext i1 @replication_scanner_is_replication_command(ptr noundef %i.ap) #15 ; 2 uses
  %i.ar = load ptr, ptr %i.s, align 8             ; 2 uses
  br i1 %i.aq, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @replication_scanner_finish(ptr noundef %i.ar) #15
  store ptr %i.u, ptr @CurrentMemoryContext, align 8
  %i.as = load ptr, ptr @exec_replication_command.cmd_context, align 8
  call void @MemoryContextReset(ptr noundef %i.as) #15
  %i.at = load i32, ptr @MyDatabaseId, align 4
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.m, label %bb.en

bb.m:                                             ; preds = %bb.l
  %i.av = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.aw = call i32 @errcode(i32 noundef 1088) #15 ; 0 uses
  %i.ax = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2167, ptr noundef nonnull @__func__.exec_replication_command) #15
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ay = call i32 @replication_yyparse(ptr noundef nonnull %i.t, ptr noundef %i.ar) #15 ; 2 uses
  %.not40 = icmp eq i32 %i.ay, 0
  br i1 %.not40, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.ba = call i32 @errcode(i32 noundef 16801924) #15 ; 0 uses
  %i.bb = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %i.ay) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2181, ptr noundef nonnull @__func__.exec_replication_command) #15
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bc = load ptr, ptr %i.s, align 8
  call void @replication_scanner_finish(ptr noundef %i.bc) #15
  store ptr %0, ptr @debug_query_string, align 8
  call void @pgstat_report_activity(i32 noundef 3, ptr noundef %0) #15
  %i.bd = load i8, ptr @log_replication_commands, align 1, !range !11, !noundef !12
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = select i1 %i.be, i32 15, i32 14
  %i.bg = call zeroext i1 @errstart(i32 noundef %i.bf, ptr noundef null) #15
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5, ptr noundef %0) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2198, ptr noundef nonnull @__func__.exec_replication_command) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bi = call zeroext i1 @IsAbortedTransactionBlockState() #15
  br i1 %i.bi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bj = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.bk = call i32 @errcode(i32 noundef 33685826) #15 ; 0 uses
  %i.bl = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2207, ptr noundef nonnull @__func__.exec_replication_command) #15
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bm = load volatile i32, ptr @InterruptPending, align 4
  %.not41 = icmp eq i32 %i.bm, 0
  br i1 %.not41, label %bb.v, label %bb.u, !prof !10

bb.u:                                             ; preds = %bb.t
  call void @ProcessInterrupts() #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @initStringInfo(ptr noundef nonnull @output_message) #15
  call void @initStringInfo(ptr noundef nonnull @reply_message) #15
  call void @initStringInfo(ptr noundef nonnull @tmpbuf) #15
  %i.bn = load ptr, ptr %i.t, align 8             ; 6 uses
  %i.bo = load i32, ptr %i.bn, align 4
  switch i32 %i.bo, label %bb.el [
    i32 469, label %bb.w
    i32 475, label %bb.ae
    i32 470, label %bb.ap
    i32 471, label %bb.aq
    i32 472, label %bb.cq
    i32 473, label %bb.cr
    i32 474, label %bb.cy
    i32 476, label %bb.dn
    i32 167, label %bb.dz
    i32 477, label %bb.ea
  ]

bb.w:                                             ; preds = %bb.v
  call void @set_ps_display_with_len(ptr noundef nonnull @.str.7, i64 noundef 15) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #15
  store i32 0, ptr %i.q, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #15
  %i.bp = call i64 @GetSystemIdentifier() #15
  %i.bq = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.n, i64 noundef 32, ptr noundef nonnull @.str.22, i64 noundef %i.bp) #15 ; 0 uses
  %i.br = call zeroext i1 @RecoveryInProgress() #15 ; 2 uses
  %i.bs = zext i1 %i.br to i8
  store i8 %i.bs, ptr @am_cascading_walsender, align 1
  br i1 %i.br, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #15
  %i.bt = call i64 @GetWalRcvFlushRecPtr(ptr noundef null, ptr noundef nonnull %i.m) #15
  %i.bu = call i64 @GetXLogReplayRecPtr(ptr noundef nonnull %i.l) #15 ; 2 uses
  %.pre.i.i = load i32, ptr %i.l, align 4         ; 2 uses
  store i32 %.pre.i.i, ptr %i.r, align 4
  %i.bv = load i32, ptr %i.m, align 4
  %i.bw = icmp eq i32 %i.bv, %.pre.i.i
  %i.bx = call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bu)
  %.0.i.i = select i1 %i.bw, i64 %i.bx, i64 %i.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.by = call i64 @GetFlushRecPtr(ptr noundef nonnull %i.r) #15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i = phi i64 [ %.0.i.i, %bb.x ], [ %i.by, %bb.y ] ; 2 uses
  %i.bz = lshr i64 %.0.i, 32
  %i.ca = trunc nuw i64 %i.bz to i32
  %i.cb = trunc i64 %.0.i to i32
  %i.cc = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.o, i64 noundef 64, ptr noundef nonnull @.str.23, i32 noundef %i.ca, i32 noundef %i.cb) #15 ; 0 uses
  %i.cd = load i32, ptr @MyDatabaseId, align 4
  %.not.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = load ptr, ptr @CurrentMemoryContext, align 8
  call void @StartTransactionCommand() #15
  %i.cf = load i32, ptr @MyDatabaseId, align 4
  %i.cg = call ptr @get_database_name(i32 noundef %i.cf) #15
  %i.ch = call ptr @MemoryContextStrdup(ptr noundef %i.ce, ptr noundef %i.cg) #15
  call void @CommitTransactionCommand() #15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.014.i = phi ptr [ %i.ch, %bb.aa ], [ null, %bb.z ] ; 2 uses
  %i.ci = call ptr @CreateDestReceiver(i32 noundef 4) #15
  %i.cj = call ptr @CreateTemplateTupleDesc(i32 noundef 4) #15 ; 6 uses
  call void @TupleDescInitBuiltinEntry(ptr noundef %i.cj, i16 noundef signext 1, ptr noundef nonnull @.str.24, i32 noundef 25, i32 noundef -1, i32 noundef 0) #15
  call void @TupleDescInitBuiltinEntry(ptr noundef %i.cj, i16 noundef signext 2, ptr noundef nonnull @.str.25, i32 noundef 20, i32 noundef -1, i32 noundef 0) #15
  call void @TupleDescInitBuiltinEntry(ptr noundef %i.cj, i16 noundef signext 3, ptr noundef nonnull @.str.26, i32 noundef 25, i32 noundef -1, i32 noundef 0) #15
  call void @TupleDescInitBuiltinEntry(ptr noundef %i.cj, i16 noundef signext 4, ptr noundef nonnull @.str.27, i32 noundef 25, i32 noundef -1, i32 noundef 0) #15
  call void @TupleDescFinalize(ptr noundef %i.cj) #15
  %i.ck = call ptr @begin_tup_output_tupdesc(ptr noundef %i.ci, ptr noundef %i.cj, ptr noundef nonnull @TTSOpsVirtual) #15 ; 2 uses
  %i.cl = call ptr @cstring_to_text(ptr noundef nonnull %i.n) #15
  %i.cm = ptrtoint ptr %i.cl to i64
  store i64 %i.cm, ptr %i.p, align 16
  %i.cn = load i32, ptr %i.r, align 4
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.co, ptr %i.cp, align 8
  %i.cq = call ptr @cstring_to_text(ptr noundef nonnull %i.o) #15
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.cr, ptr %i.cs, align 16
  %.not15.i = icmp eq ptr %.014.i, null
  br i1 %.not15.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = call ptr @cstring_to_text(ptr noundef nonnull %.014.i) #15
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %i.cu, ptr %i.cv, align 8
  br label %IdentifySystem.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  store i8 1, ptr %i.cw, align 1
  br label %IdentifySystem.exit

IdentifySystem.exit:                              ; preds = %bb.ac, %bb.ad
  call void @do_tup_output(ptr noundef %i.ck, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #15
  call void @end_tup_output(ptr noundef %i.ck) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  br label %bb.em

bb.ae:                                            ; preds = %bb.v
  call void @set_ps_display_with_len(ptr noundef nonnull @.str.8, i64 noundef 21) #15
  %i.cx = load ptr, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  %i.cy = call ptr @CreateTemplateTupleDesc(i32 noundef 3) #15 ; 5 uses
  call void @TupleDescInitBuiltinEntry(ptr noundef %i.cy, i16 noundef signext 1, ptr noundef nonnull @.str.28, i32 noundef 25, i32 noundef -1, i32 noundef 0) #15
  call void @TupleDescInitBuiltinEntry(ptr noundef %i.cy, i16 noundef signext 2, ptr noundef nonnull @.str.29, i32 noundef 25, i32 noundef -1, i32 noundef 0) #15
  call void @TupleDescInitBuiltinEntry(ptr noundef %i.cy, i16 noundef signext 3, ptr noundef nonnull @.str.30, i32 noundef 20, i32 noundef -1, i32 noundef 0) #15
  call void @TupleDescFinalize(ptr noundef %i.cy) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.i, i8 1, i64 3, i1 false)
  %i.cz = load ptr, ptr @MainLWLockArray, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4736
  %i.db = call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.da, i32 noundef 1) #15 ; 0 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call ptr @SearchNamedReplicationSlot(ptr noundef %i.dd, i1 noundef zeroext false) #15 ; 11 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !range !11, !noundef !12
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dj = load ptr, ptr @MainLWLockArray, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4736
  call void @LWLockRelease(ptr noundef nonnull %i.dk) #15
  br label %ReadReplicationSlot.exit

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.dl = call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.de, i8 1, ptr nonnull elementtype(i8) %i.de) #15, !srcloc !7
  %.not.i.i43 = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i43, label %SpinLockAcquire.exit.i44, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dm = call i32 @s_lock(ptr noundef nonnull %i.de, ptr noundef nonnull @.str.99, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #15 ; 0 uses
  br label %SpinLockAcquire.exit.i44

SpinLockAcquire.exit.i44:                         ; preds = %bb.ai, %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i, ptr nonnull align 8 %i.de, i64 88, i1 true)
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 88
  %.sroa.3.0.copyload.i = load volatile i32, ptr %.sroa.3.0..sroa_idx.i, align 8 ; 2 uses
  store volatile i32 %.sroa.3.0.copyload.i, ptr %.sroa.3.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 92
  %.sroa.4.i.sroa.0.0.copyload = load volatile <3 x i32>, ptr %.sroa.4.0..sroa_idx.i, align 4
  store volatile <3 x i32> %.sroa.4.i.sroa.0.0.copyload, ptr %.sroa.4.i.sroa.0, align 16
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 104
  %.sroa.410.0.copyload.i = load volatile i64, ptr %.sroa.410.0..sroa_idx.i, align 8 ; 5 uses
  store volatile i64 %.sroa.410.0.copyload.i, ptr %.sroa.410.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.9.i, ptr nonnull align 8 %.sroa.9.0..sroa_idx.i, i64 184, i1 true)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !8
  store volatile i8 0, ptr %i.de, align 8
  %i.dn = load ptr, ptr @MainLWLockArray, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4736
  call void @LWLockRelease(ptr noundef nonnull %i.do) #15
  %.not.i45 = icmp eq i32 %.sroa.3.0.copyload.i, 0
  br i1 %.not.i45, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %SpinLockAcquire.exit.i44
  %i.dp = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.dq = call i32 @errcode(i32 noundef 1088) #15 ; 0 uses
  %i.dr = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.8) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 554, ptr noundef nonnull @__func__.ReadReplicationSlot) #15
  unreachable

bb.ak:                                            ; preds = %SpinLockAcquire.exit.i44
  %i.ds = call ptr @cstring_to_text(ptr noundef nonnull @.str.32) #15
  %i.dt = ptrtoint ptr %i.ds to i64
  store i64 %i.dt, ptr %i.h, align 16
  store i8 0, ptr %i.i, align 1
  %.not29.i = icmp eq i64 %.sroa.410.0.copyload.i, 0
  br i1 %.not29.i, label %.thread.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  %i.du = lshr i64 %.sroa.410.0.copyload.i, 32
  %i.dv = trunc nuw i64 %i.du to i32
  %i.dw = trunc i64 %.sroa.410.0.copyload.i to i32
  %i.dx = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.j, i64 noundef 64, ptr noundef nonnull @.str.23, i32 noundef %i.dv, i32 noundef %i.dw) #15 ; 0 uses
  %i.dy = call ptr @cstring_to_text(ptr noundef nonnull %i.j) #15
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.dz, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 0, ptr %i.eb, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #15
  %i.ec = call zeroext i1 @RecoveryInProgress() #15
  br i1 %i.ec, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ed = call i64 @GetXLogReplayRecPtr(ptr noundef nonnull %i.k) #15 ; 0 uses
  %.pre.i = load i32, ptr %i.k, align 4
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.ee = call i32 @GetWALInsertionTimeLine() #15 ; 2 uses
  store i32 %i.ee, ptr %i.k, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ef = phi i32 [ %i.ee, %bb.an ], [ %.pre.i, %bb.am ]
  %i.eg = call ptr @readTimeLineHistory(i32 noundef %i.ef) #15
  %i.eh = call i32 @tliOfPointInHistory(i64 noundef %.sroa.410.0.copyload.i, ptr noundef %i.eg) #15
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.ei, ptr %i.ej, align 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 0, ptr %i.ek, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ao, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %ReadReplicationSlot.exit

ReadReplicationSlot.exit:                         ; preds = %bb.ag, %.thread.i
  %i.el = call ptr @CreateDestReceiver(i32 noundef 4) #15
  %i.em = call ptr @begin_tup_output_tupdesc(ptr noundef %i.el, ptr noundef %i.cy, ptr noundef nonnull @TTSOpsVirtual) #15 ; 2 uses
  call void @do_tup_output(ptr noundef %i.em, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #15
  call void @end_tup_output(ptr noundef %i.em) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  br label %bb.em

bb.ap:                                            ; preds = %bb.v
  call void @set_ps_display_with_len(ptr noundef nonnull @.str.9, i64 noundef 11) #15
  call void @PreventInTransactionBlock(i1 noundef zeroext true, ptr noundef nonnull @.str.9) #15
  %i.en = load ptr, ptr %i.t, align 8
  %i.eo = load ptr, ptr @uploaded_manifest, align 8
  call void @SendBaseBackup(ptr noundef %i.en, ptr noundef %i.eo) #15
  br label %bb.em

bb.aq:                                            ; preds = %bb.v
  call void @set_ps_display_with_len(ptr noundef nonnull @.str.10, i64 noundef 23) #15
  %i.ep = load ptr, ptr %i.t, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  store i32 0, ptr %i.g, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.er = load ptr, ptr %i.eq, align 8            ; 3 uses
  %.not.i.i46 = icmp eq ptr %i.er, null
  br i1 %.not.i.i46, label %parseCreateReplSlotOptions.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 4 uses
  %i.ev = load i32, ptr %i.es, align 4
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph.i, label %parseCreateReplSlotOptions.exit.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.bo
  %.03854.i89.i = phi i1 [ %.139.i.i, %bb.bo ], [ false, %.lr.ph.i.i ] ; 6 uses
  %.03655.i88.i = phi i1 [ %.137.i.i, %bb.bo ], [ false, %.lr.ph.i.i ] ; 6 uses
  %.03457.i87.i = phi i1 [ %.135.i.i, %bb.bo ], [ false, %.lr.ph.i.i ] ; 6 uses
  %.03358.i86.i = phi i1 [ %.1.i.i, %bb.bo ], [ false, %.lr.ph.i.i ] ; 4 uses
  %indvars.iv.i85.i = phi i64 [ %indvars.iv.next.i.i, %bb.bo ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.03884.i = phi i32 [ %.139.i, %bb.bo ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %.04083.i = phi i1 [ %.141.i, %bb.bo ], [ false, %.lr.ph.i.i ] ; 5 uses
  %.04382.i = phi i1 [ %.144.i, %bb.bo ], [ false, %.lr.ph.i.i ] ; 5 uses
  %.04681.i = phi i1 [ %.147.i, %bb.bo ], [ false, %.lr.ph.i.i ] ; 5 uses
  %i.ex = load ptr, ptr %i.et, align 8
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.i85.i
  %i.ez = load ptr, ptr %i.ey, align 8            ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8            ; 4 uses
  %i.fc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fb, ptr noundef nonnull dereferenceable(9) @.str.45) #18
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %.lr.ph.i
  br i1 %.03358.i86.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fe = load i32, ptr %i.eu, align 8
  %.not45.i.i = icmp eq i32 %i.fe, 1
  br i1 %.not45.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ff = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.fg = call i32 @errcode(i32 noundef 16801924) #15 ; 0 uses
  %i.fh = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.46) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1195, ptr noundef nonnull @__func__.parseCreateReplSlotOptions) #15
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.fi = call ptr @defGetString(ptr noundef nonnull %i.ez) #15 ; 4 uses
  %i.fj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fi, ptr noundef nonnull dereferenceable(7) @.str.47) #18
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.bo, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fi, ptr noundef nonnull dereferenceable(8) @.str.48) #18
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.bo, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fi, ptr noundef nonnull dereferenceable(4) @.str.49) #18
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.bo, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.fr = call i32 @errcode(i32 noundef 50856066) #15 ; 0 uses
  %i.fs = load ptr, ptr %i.fp, align 8
  %i.ft = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.10, ptr noundef %i.fs, ptr noundef nonnull %i.fi) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1210, ptr noundef nonnull @__func__.parseCreateReplSlotOptions) #15
  unreachable

bb.ay:                                            ; preds = %.lr.ph.i
  %i.fu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fb, ptr noundef nonnull dereferenceable(12) @.str.51) #18
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  br i1 %.03457.i87.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fw = load i32, ptr %i.eu, align 8
  %.not44.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not44.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fx = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.fy = call i32 @errcode(i32 noundef 16801924) #15 ; 0 uses
  %i.fz = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.46) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1217, ptr noundef nonnull @__func__.parseCreateReplSlotOptions) #15
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.ga = call zeroext i1 @defGetBoolean(ptr noundef nonnull %i.ez) #15
  br label %bb.bo

bb.bd:                                            ; preds = %bb.ay
  %i.gb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fb, ptr noundef nonnull dereferenceable(10) @.str.52) #18
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  br i1 %.03655.i88.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gd = load i32, ptr %i.eu, align 8
  %.not43.i.i = icmp eq i32 %i.gd, 1
  br i1 %.not43.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ge = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.gf = call i32 @errcode(i32 noundef 16801924) #15 ; 0 uses
  %i.gg = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.46) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1227, ptr noundef nonnull @__func__.parseCreateReplSlotOptions) #15
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.gh = call zeroext i1 @defGetBoolean(ptr noundef nonnull %i.ez) #15
  br label %bb.bo

bb.bi:                                            ; preds = %bb.bd
  %i.gi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fb, ptr noundef nonnull dereferenceable(9) @.str.53) #18
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  br i1 %.03854.i89.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gk = load i32, ptr %i.eu, align 8
  %.not42.i.i = icmp eq i32 %i.gk, 1
  br i1 %.not42.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.gl = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.gm = call i32 @errcode(i32 noundef 16801924) #15 ; 0 uses
  %i.gn = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.46) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1236, ptr noundef nonnull @__func__.parseCreateReplSlotOptions) #15
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.go = call zeroext i1 @defGetBoolean(ptr noundef nonnull %i.ez) #15
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bi
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.gq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.gr = load ptr, ptr %i.gp, align 8
  %i.gs = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.54, ptr noundef %i.gr) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1241, ptr noundef nonnull @__func__.parseCreateReplSlotOptions) #15
  unreachable

bb.bo:                                            ; preds = %bb.bm, %bb.bh, %bb.bc, %bb.aw, %bb.av, %bb.au
  %.147.i = phi i1 [ %.04681.i, %bb.bm ], [ %.04681.i, %bb.au ], [ %.04681.i, %bb.av ], [ %i.ga, %bb.bc ], [ %.04681.i, %bb.bh ], [ %.04681.i, %bb.aw ] ; 2 uses
  %.144.i = phi i1 [ %.04382.i, %bb.bm ], [ %.04382.i, %bb.au ], [ %.04382.i, %bb.av ], [ %.04382.i, %bb.bc ], [ %i.gh, %bb.bh ], [ %.04382.i, %bb.aw ] ; 2 uses
  %.141.i = phi i1 [ %i.go, %bb.bm ], [ %.04083.i, %bb.au ], [ %.04083.i, %bb.av ], [ %.04083.i, %bb.bc ], [ %.04083.i, %bb.bh ], [ %.04083.i, %bb.aw ] ; 2 uses
  %.139.i = phi i32 [ %.03884.i, %bb.bm ], [ 0, %bb.au ], [ 1, %bb.av ], [ %.03884.i, %bb.bc ], [ %.03884.i, %bb.bh ], [ 2, %bb.aw ] ; 2 uses
  %.139.i.i = phi i1 [ true, %bb.bm ], [ %.03854.i89.i, %bb.au ], [ %.03854.i89.i, %bb.av ], [ %.03854.i89.i, %bb.bc ], [ %.03854.i89.i, %bb.bh ], [ %.03854.i89.i, %bb.aw ]
  %.137.i.i = phi i1 [ %.03655.i88.i, %bb.bm ], [ %.03655.i88.i, %bb.au ], [ %.03655.i88.i, %bb.av ], [ %.03655.i88.i, %bb.bc ], [ true, %bb.bh ], [ %.03655.i88.i, %bb.aw ]
  %.135.i.i = phi i1 [ %.03457.i87.i, %bb.bm ], [ %.03457.i87.i, %bb.au ], [ %.03457.i87.i, %bb.av ], [ true, %bb.bc ], [ %.03457.i87.i, %bb.bh ], [ %.03457.i87.i, %bb.aw ]
  %.1.i.i = phi i1 [ %.03358.i86.i, %bb.bm ], [ true, %bb.au ], [ true, %bb.av ], [ %.03358.i86.i, %bb.bc ], [ %.03358.i86.i, %bb.bh ], [ true, %bb.aw ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i85.i, 1 ; 2 uses
  %i.gt = load i32, ptr %i.es, align 4
  %i.gu = sext i32 %i.gt to i64
  %i.gv = icmp slt i64 %indvars.iv.next.i.i, %i.gu
  br i1 %i.gv, label %.lr.ph.i, label %parseCreateReplSlotOptions.exit.i

parseCreateReplSlotOptions.exit.i:                ; preds = %bb.bo, %.lr.ph.i.i, %bb.aq
  %.248.i = phi i1 [ false, %bb.aq ], [ false, %.lr.ph.i.i ], [ %.147.i, %bb.bo ]
  %.245.i = phi i1 [ false, %bb.aq ], [ false, %.lr.ph.i.i ], [ %.144.i, %bb.bo ]
  %.242.i = phi i1 [ false, %bb.aq ], [ false, %.lr.ph.i.i ], [ %.141.i, %bb.bo ]
  %.2.i = phi i32 [ 0, %bb.aq ], [ 0, %.lr.ph.i.i ], [ %.139.i, %bb.bo ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
end_hunk_0
