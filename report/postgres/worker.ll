Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/worker?download=true
inline.NumInlined: 283
inline.NumDeleted: 99
begin_hunk_0_@apply_spooled_messages:bb.a
  call void @PopActiveSnapshot() #15
  call void @CommandCounterIncrement() #15
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.s, %bb.f
  %.018 = phi i32 [ 0, %bb.f ], [ %i.bh, %bb.s ]  ; 2 uses
  %.017 = phi ptr [ %i.ak, %bb.f ], [ %i.ay, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  %i.ao = load volatile i32, ptr @InterruptPending, align 4
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.i, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  call void @ProcessInterrupts() #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = load ptr, ptr @stream_fd, align 8
  %i.aq = call i64 @BufFileReadMaybeEOF(ptr noundef %i.ap, ptr noundef nonnull %i.g, i64 noundef 4, i1 noundef zeroext true) #15
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load i32, ptr %i.g, align 4             ; 2 uses
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.av = load i32, ptr %i.g, align 4
  %i.aw = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %i.av, ptr noundef nonnull %i.d) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2354, ptr noundef nonnull @__func__.apply_spooled_messages) #15
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ax = zext nneg i32 %i.as to i64
  %i.ay = call ptr @repalloc(ptr noundef %.017, i64 noundef %i.ax) #15 ; 3 uses
  %i.az = load ptr, ptr @stream_fd, align 8
  %i.ba = load i32, ptr %i.g, align 4
  %i.bb = sext i32 %i.ba to i64
  call void @BufFileReadExact(ptr noundef %i.az, ptr noundef %i.ay, i64 noundef %i.bb) #15
  %i.bc = load ptr, ptr @stream_fd, align 8
  call void @BufFileTell(ptr noundef %i.bc, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #15
  %i.bd = load i32, ptr %i.g, align 4
  store ptr %i.ay, ptr %3, align 8
  store i32 %i.bd, ptr %i.al, align 8
  store i32 0, ptr %i.am, align 4
  store i32 0, ptr %i.an, align 8
  %i.be = load ptr, ptr @ApplyMessageContext, align 8
  %i.bf = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.be, ptr @CurrentMemoryContext, align 8
  call void @apply_dispatch(ptr noundef nonnull %3)
  %i.bg = load ptr, ptr @ApplyMessageContext, align 8
  call void @MemoryContextReset(ptr noundef %i.bg) #15
  store ptr %i.bf, ptr @CurrentMemoryContext, align 8
  %i.bh = add i32 %.018, 1                        ; 4 uses
  %i.bi = load ptr, ptr @stream_fd, align 8
  %.not21 = icmp eq ptr %i.bi, null
  br i1 %.not21, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bj = load i32, ptr %i.e, align 4
  %i.bk = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @SetCurrentStatementStartTimestamp() #15
  %i.bl = call zeroext i1 @IsTransactionState() #15
  br i1 %i.bl, label %begin_replication_step.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @StartTransactionCommand() #15
  call void @maybe_reread_subscription()
  br label %begin_replication_step.exit.i

begin_replication_step.exit.i:                    ; preds = %bb.n, %bb.m
  %i.bm = call ptr @GetTransactionSnapshot() #15
  call void @PushActiveSnapshot(ptr noundef %i.bm) #15
  %i.bn = load ptr, ptr @ApplyMessageContext, align 8
  store ptr %i.bn, ptr @CurrentMemoryContext, align 8
  %i.bo = load ptr, ptr @MyLogicalRepWorker, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.78, i32 noundef %i.bq, i32 noundef %1) #15 ; 0 uses
  %i.bs = call ptr @BufFileOpenFileSet(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 0, i1 noundef zeroext false) #15 ; 3 uses
  %i.bt = call i32 @BufFileSeek(ptr noundef %i.bs, i32 noundef 0, i64 noundef 0, i32 noundef 2) #15 ; 0 uses
  call void @BufFileTell(ptr noundef %i.bs, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #15
  call void @BufFileClose(ptr noundef %i.bs) #15
  call void @PopActiveSnapshot() #15
  call void @CommandCounterIncrement() #15
  %i.bu = load i32, ptr %i.b, align 4
  %.not.i23 = icmp eq i32 %i.bu, %i.bj
  %i.bv = load i64, ptr %i.c, align 8
  %.not6.i = icmp eq i64 %i.bv, %i.bk
  %or.cond.i = select i1 %.not.i23, i1 %.not6.i, i1 false
  br i1 %or.cond.i, label %ensure_last_message.exit, label %bb.o

bb.o:                                             ; preds = %begin_replication_step.exit.i
  %i.bw = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.bx = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.40, ptr noundef nonnull %i.a) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2270, ptr noundef nonnull @__func__.ensure_last_message) #15
  unreachable

ensure_last_message.exit:                         ; preds = %begin_replication_step.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.loopexit

bb.p:                                             ; preds = %bb.l
  %i.by = srem i32 %i.bh, 1000
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ca = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #15
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cb = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5, i32 noundef %i.bh, ptr noundef nonnull %i.d) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2391, ptr noundef nonnull @__func__.apply_spooled_messages) #15
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.g

.loopexit:                                        ; preds = %bb.i, %ensure_last_message.exit
  %.119.ph = phi i32 [ %i.bh, %ensure_last_message.exit ], [ %.018, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.cc = load ptr, ptr @stream_fd, align 8       ; 2 uses
  %.not22 = icmp eq ptr %i.cc, null
  br i1 %.not22, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit
  call void @BufFileClose(ptr noundef nonnull %i.cc) #15
  store ptr null, ptr @stream_fd, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit
  %i.cd = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #15
  br i1 %i.cd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ce = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6, i32 noundef %.119.ph, ptr noundef nonnull %i.d) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2398, ptr noundef nonnull @__func__.apply_spooled_messages) #15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  ret void
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #1

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BufFileOpenFileSet(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @pgstat_report_activity(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ProcessInterrupts() local_unnamed_addr #1

declare i64 @BufFileReadMaybeEOF(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @repalloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @BufFileReadExact(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @BufFileTell(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @apply_dispatch(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.LogicalRepPreparedTxnData, align 8 ; 13 uses
  %2 = alloca %struct.StringInfoData, align 8     ; 4 uses
  %3 = alloca %struct.LogicalRepRollbackPreparedTxnData, align 8 ; 8 uses
  %i.a = alloca [200 x i8], align 16              ; 5 uses
  %4 = alloca %struct.LogicalRepCommitPreparedTxnData, align 8 ; 6 uses
  %i.b = alloca [200 x i8], align 16              ; 4 uses
  %i.c = alloca [200 x i8], align 16              ; 4 uses
  %5 = alloca %struct.LogicalRepPreparedTxnData, align 8 ; 8 uses
  %6 = alloca %struct.LogicalRepPreparedTxnData, align 8 ; 5 uses
  %7 = alloca %struct.LogicalRepCommitData, align 8 ; 10 uses
  %8 = alloca %struct.StringInfoData, align 8     ; 4 uses
  %i.d = alloca [1024 x i8], align 16             ; 6 uses
  %i.e = alloca [1024 x i8], align 16             ; 4 uses
  %9 = alloca %struct.LogicalRepStreamAbortData, align 8 ; 8 uses
  %10 = alloca %struct.StringInfoData, align 8    ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 8 uses
  %11 = alloca %struct.LogicalRepTyp, align 8     ; 3 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 5 uses
  %12 = alloca %struct.LogicalRepTupleData, align 8 ; 4 uses
  %13 = alloca %struct.UserContext, align 4       ; 4 uses
  %14 = alloca %struct.EPQState, align 8          ; 6 uses
  %15 = alloca %struct.ConflictTupleInfo, align 8 ; 12 uses
  %16 = alloca %struct.UserContext, align 4       ; 4 uses
  %17 = alloca %struct.LogicalRepTupleData, align 8 ; 4 uses
  %18 = alloca %struct.LogicalRepTupleData, align 8 ; 10 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %19 = alloca %struct.LogicalRepTupleData, align 8 ; 4 uses
  %20 = alloca %struct.UserContext, align 4       ; 4 uses
  %21 = alloca %struct.LogicalRepCommitData, align 8 ; 7 uses
  %22 = alloca %struct.LogicalRepBeginData, align 8 ; 5 uses
  %i.n = tail call i32 @pq_getmsgbyte(ptr noundef %0) #15 ; 3 uses
  %i.o = load i32, ptr @apply_error_callback_arg.0, align 8
  store i32 %i.n, ptr @apply_error_callback_arg.0, align 8
  switch i32 %i.n, label %bb.ha [
    i32 66, label %bb.b
    i32 67, label %bb.e
    i32 73, label %bb.g
    i32 85, label %bb.ad
    i32 68, label %bb.bh
    i32 84, label %bb.bv
    i32 82, label %bb.cw
    i32 89, label %bb.cy
    i32 79, label %bb.da
    i32 77, label %apply_handle_relation.exit
    i32 83, label %bb.de
    i32 69, label %bb.dv
    i32 65, label %bb.ef
    i32 99, label %bb.fd
    i32 98, label %bb.fp
    i32 80, label %bb.ft
    i32 75, label %bb.gc
    i32 114, label %bb.gf
    i32 112, label %bb.gk
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  call void @logicalrep_read_begin(ptr noundef %0, ptr noundef nonnull %22) #15
  %i.p = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.q = load i32, ptr %i.p, align 8
  %i.r = load i64, ptr %22, align 8               ; 4 uses
  store i32 %i.q, ptr @apply_error_callback_arg.3, align 4
  store i64 %i.r, ptr @apply_error_callback_arg.4, align 8
  store i64 %i.r, ptr @remote_final_lsn, align 8
  %i.s = load ptr, ptr @MySubscription, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  %i.v = icmp ne i64 %i.u, %i.r
  %spec.select.i.i = or i1 %.not.i.i, %i.v
  br i1 %spec.select.i.i, label %apply_handle_begin.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  store i64 %i.r, ptr @skip_xact_finish_lsn, align 8
  %i.w = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #15
  br i1 %i.w, label %bb.d, label %apply_handle_begin.exit

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr @skip_xact_finish_lsn, align 8 ; 2 uses
  %i.y = lshr i64 %i.x, 32
  %i.z = trunc nuw i64 %i.y to i32
  %i.aa = trunc i64 %i.x to i32
  %i.ab = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.103, i32 noundef %i.z, i32 noundef %i.aa) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 6120, ptr noundef nonnull @__func__.maybe_start_skipping_changes) #15
  br label %apply_handle_begin.exit

apply_handle_begin.exit:                          ; preds = %bb.b, %bb.c, %bb.d
  store i8 1, ptr @in_remote_transaction, align 1
  call void @pgstat_report_activity(i32 noundef 3, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  br label %apply_handle_relation.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  call void @logicalrep_read_commit(ptr noundef %0, ptr noundef nonnull %21) #15
  %i.ac = load i64, ptr %21, align 8
  %i.ad = load i64, ptr @remote_final_lsn, align 8
  %.not.i = icmp eq i64 %i.ac, %i.ad
  br i1 %.not.i, label %apply_handle_commit.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.af = call i32 @errcode(i32 noundef 16908800) #15 ; 0 uses
  %i.ag = load i64, ptr %21, align 8              ; 2 uses
  %i.ah = lshr i64 %i.ag, 32
  %i.ai = trunc nuw i64 %i.ah to i32
  %i.aj = trunc i64 %i.ag to i32
  %i.ak = load i64, ptr @remote_final_lsn, align 8 ; 2 uses
  %i.al = lshr i64 %i.ak, 32
  %i.am = trunc nuw i64 %i.al to i32
  %i.an = trunc i64 %i.ak to i32
  %i.ao = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.42, i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.am, i32 noundef %i.an) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1264, ptr noundef nonnull @__func__.apply_handle_commit) #15
  unreachable

apply_handle_commit.exit:                         ; preds = %bb.e
  call fastcc void @apply_handle_commit_internal(ptr noundef %21)
  %i.ap = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  call void @ProcessSyncingRelations(i64 noundef %i.aq) #15
  call void @pgstat_report_activity(i32 noundef 2, ptr noundef null) #15
  store ptr null, ptr @apply_error_callback_arg.1, align 8
  store i32 -1, ptr @apply_error_callback_arg.2, align 8
  store i32 0, ptr @apply_error_callback_arg.3, align 4
  store i64 0, ptr @apply_error_callback_arg.4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %apply_handle_relation.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %i.ar = load i64, ptr @skip_xact_finish_lsn, align 8
  %.not.i22 = icmp eq i64 %i.ar, 0
  br i1 %.not.i22, label %bb.h, label %apply_handle_insert.exit, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.as = tail call fastcc zeroext i1 @handle_streamed_transaction(i32 noundef 73, ptr noundef %0)
  br i1 %i.as, label %apply_handle_insert.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @SetCurrentStatementStartTimestamp() #15
  %i.at = tail call zeroext i1 @IsTransactionState() #15
  br i1 %i.at, label %begin_replication_step.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @StartTransactionCommand() #15
  tail call void @maybe_reread_subscription()
  br label %begin_replication_step.exit.i

begin_replication_step.exit.i:                    ; preds = %bb.j, %bb.i
  %i.au = tail call ptr @GetTransactionSnapshot() #15
  tail call void @PushActiveSnapshot(ptr noundef %i.au) #15
  %i.av = load ptr, ptr @ApplyMessageContext, align 8
  store ptr %i.av, ptr @CurrentMemoryContext, align 8
  %i.aw = call i32 @logicalrep_read_insert(ptr noundef %0, ptr noundef nonnull %19) #15
  %i.ax = call ptr @logicalrep_rel_open(i32 noundef %i.aw, i32 noundef 3) #15 ; 9 uses
  %i.ay = call fastcc zeroext i1 @should_apply_changes_for_rel(ptr noundef %i.ax)
  br i1 %i.ay, label %bb.k, label %.sink.split.i

bb.k:                                             ; preds = %begin_replication_step.exit.i
  %i.az = load ptr, ptr @MySubscription, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 43
  %i.bb = load i8, ptr %i.ba, align 1, !range !6, !noundef !7
  %i.bc = trunc nuw i8 %i.bb to i1                ; 2 uses
  br i1 %i.bc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bi = load i32, ptr %i.bh, align 4
  call void @SwitchToUntrustedUser(i32 noundef %i.bi, ptr noundef nonnull %20) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr %i.ax, ptr @apply_error_callback_arg.1, align 8
  %i.bj = call fastcc ptr @create_edata_for_relation(ptr noundef %i.ax) ; 8 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 72 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call ptr @ExecInitExtraTupleSlot(ptr noundef %i.bk, ptr noundef %i.bo, ptr noundef nonnull @TTSOpsVirtual) #15 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 264 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not32.i = icmp eq ptr %i.br, null
  br i1 %.not32.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = call ptr @MakePerTupleExprContext(ptr noundef nonnull %i.bk) #15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bt = phi ptr [ %i.bs, %bb.n ], [ %i.br, %bb.m ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.bv, ptr @CurrentMemoryContext, align 8
  call fastcc void @slot_store_data(ptr noundef %i.bp, ptr noundef nonnull %i.ax, ptr noundef nonnull %19)
  %i.bx = load ptr, ptr %i.bl, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8            ; 4 uses
  %i.cb = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i23, label %bb.p, label %bb.q

end_hunk_0
begin_hunk_1_@apply_dispatch:bb.a
  %i.vq = load i64, ptr %i.vp, align 8
  store i32 %i.vn, ptr @apply_error_callback_arg.3, align 4
  store i64 %i.vq, ptr @apply_error_callback_arg.4, align 8
  %i.vr = load ptr, ptr @MyLogicalRepWorker, align 8 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  %i.vt = load i8, ptr %i.vs, align 8, !range !6, !noundef !7
  %i.vu = trunc nuw i8 %i.vt to i1
  br i1 %i.vu, label %am_parallel_apply_worker.exit.i.i63, label %am_parallel_apply_worker.exit.thread.i.i57

am_parallel_apply_worker.exit.i.i63:              ; preds = %bb.eh
  %i.vv = load i32, ptr %i.vr, align 8
  %i.vw = icmp eq i32 %i.vv, 4
  br i1 %i.vw, label %get_transaction_apply_action.exit.thread32.i, label %am_parallel_apply_worker.exit.thread.i.i57

am_parallel_apply_worker.exit.thread.i.i57:       ; preds = %am_parallel_apply_worker.exit.i.i63, %bb.eh
  %i.vx = call ptr @pa_find_worker(i32 noundef %i.vl) #15 ; 9 uses
  %.not.i.i58 = icmp eq ptr %i.vx, null
  br i1 %.not.i.i58, label %get_transaction_apply_action.exit.i60, label %bb.ei

bb.ei:                                            ; preds = %am_parallel_apply_worker.exit.thread.i.i57
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  %i.vz = load i8, ptr %i.vy, align 8, !range !6, !noundef !7
  %i.wa = trunc nuw i8 %i.vz to i1
  br i1 %i.wa, label %get_transaction_apply_action.exit.thread29.i, label %get_transaction_apply_action.exit.thread.i59

get_transaction_apply_action.exit.i60:            ; preds = %am_parallel_apply_worker.exit.thread.i.i57
  %.b.i.i61 = load i1, ptr @in_streamed_transaction, align 1
  br i1 %.b.i.i61, label %bb.fc, label %bb.ej

bb.ej:                                            ; preds = %get_transaction_apply_action.exit.i60
  br i1 %i.vo, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.wb = load ptr, ptr @MyLogicalRepWorker, align 8
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 40
  %i.wd = load i32, ptr %i.wc, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.we = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.d, i64 noundef 1024, ptr noundef nonnull @.str.78, i32 noundef %i.wd, i32 noundef %i.vl) #15 ; 0 uses
  %i.wf = load ptr, ptr @MyLogicalRepWorker, align 8
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 72
  %i.wh = load ptr, ptr %i.wg, align 8
  call void @BufFileDeleteFileSet(ptr noundef %i.wh, ptr noundef nonnull %i.d, i1 noundef zeroext false) #15
  %i.wi = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.d, i64 noundef 1024, ptr noundef nonnull @.str.79, i32 noundef %i.wd, i32 noundef %i.vl) #15 ; 0 uses
  %i.wj = load ptr, ptr @MyLogicalRepWorker, align 8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 72
  %i.wl = load ptr, ptr %i.wk, align 8
  call void @BufFileDeleteFileSet(ptr noundef %i.wl, ptr noundef nonnull %i.d, i1 noundef zeroext true) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %stream_abort_internal.exit.i

bb.el:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @SetCurrentStatementStartTimestamp() #15
  %i.wm = call zeroext i1 @IsTransactionState() #15
  br i1 %i.wm, label %begin_replication_step.exit.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @StartTransactionCommand() #15
  call void @maybe_reread_subscription()
  br label %begin_replication_step.exit.i.i

begin_replication_step.exit.i.i:                  ; preds = %bb.em, %bb.el
  %i.wn = call ptr @GetTransactionSnapshot() #15
  call void @PushActiveSnapshot(ptr noundef %i.wn) #15
  %i.wo = load ptr, ptr @ApplyMessageContext, align 8
  store ptr %i.wo, ptr @CurrentMemoryContext, align 8
  %i.wp = load ptr, ptr @MyLogicalRepWorker, align 8
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 40
  %i.wr = load i32, ptr %i.wq, align 8
  call fastcc void @subxact_info_read(i32 noundef %i.wr, i32 noundef %i.vl)
  %i.ws = load i32, ptr @subxact_data, align 8    ; 2 uses
  %i.wt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @subxact_data, i64 16), align 8 ; 3 uses
  %.not = icmp eq i32 %i.ws, 0
  br i1 %.not, label %.critedge.i.i, label %.lr.ph197

.lr.ph197:                                        ; preds = %begin_replication_step.exit.i.i
  %i.wu = zext i32 %i.ws to i64
  br label %bb.eo

bb.en:                                            ; preds = %bb.eo
  %i.wv = icmp sgt i64 %.017.i.i196, 1
  br i1 %i.wv, label %bb.eo, label %.critedge.i.i, !llvm.loop !16

bb.eo:                                            ; preds = %.lr.ph197, %bb.en
  %.017.i.i196 = phi i64 [ %i.wu, %.lr.ph197 ], [ %i.ww, %bb.en ] ; 2 uses
  %i.ww = add nsw i64 %.017.i.i196, -1            ; 4 uses
  %i.wx = getelementptr inbounds nuw [16 x i8], ptr %i.wt, i64 %i.ww
  %i.wy = load i32, ptr %i.wx, align 8
  %i.wz = icmp eq i32 %i.wy, %i.vn
  br i1 %i.wz, label %bb.eq, label %bb.en, !llvm.loop !16

.critedge.i.i:                                    ; preds = %bb.en, %begin_replication_step.exit.i.i
  %.not.i.i.i62 = icmp eq ptr %i.wt, null
  br i1 %.not.i.i.i62, label %cleanup_subxact_info.exit.i.i, label %bb.ep

bb.ep:                                            ; preds = %.critedge.i.i
  call void @pfree(ptr noundef nonnull %i.wt) #15
  br label %cleanup_subxact_info.exit.i.i

cleanup_subxact_info.exit.i.i:                    ; preds = %bb.ep, %.critedge.i.i
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @subxact_data, i64 16), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @subxact_data, i64 8), align 8
  store i32 0, ptr @subxact_data, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @subxact_data, i64 4), align 4
  br label %bb.er

bb.eq:                                            ; preds = %bb.eo
  %i.xa = load ptr, ptr @MyLogicalRepWorker, align 8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 40
  %i.xc = load i32, ptr %i.xb, align 8
  %i.xd = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.e, i64 noundef 1024, ptr noundef nonnull @.str.78, i32 noundef %i.xc, i32 noundef %i.vl) #15 ; 0 uses
  %i.xe = load ptr, ptr @MyLogicalRepWorker, align 8
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 72
  %i.xg = load ptr, ptr %i.xf, align 8
  %i.xh = call ptr @BufFileOpenFileSet(ptr noundef %i.xg, ptr noundef nonnull %i.e, i32 noundef 2, i1 noundef zeroext false) #15 ; 2 uses
  %i.xi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @subxact_data, i64 16), align 8
  %i.xj = getelementptr inbounds nuw [16 x i8], ptr %i.xi, i64 %i.ww ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 4
  %i.xl = load i32, ptr %i.xk, align 4
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  %i.xn = load i64, ptr %i.xm, align 8
  call void @BufFileTruncateFileSet(ptr noundef %i.xh, i32 noundef %i.xl, i64 noundef %i.xn) #15
  call void @BufFileClose(ptr noundef %i.xh) #15
  %i.xo = trunc nuw i64 %i.ww to i32
  store i32 %i.xo, ptr @subxact_data, align 8
  %i.xp = load ptr, ptr @MyLogicalRepWorker, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 40
  %i.xr = load i32, ptr %i.xq, align 8
  call fastcc void @subxact_info_write(i32 noundef %i.xr, i32 noundef %i.vl)
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %cleanup_subxact_info.exit.i.i
  call void @PopActiveSnapshot() #15
  call void @CommandCounterIncrement() #15
  call void @CommitTransactionCommand() #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %stream_abort_internal.exit.i

stream_abort_internal.exit.i:                     ; preds = %bb.er, %bb.ek
  %i.xs = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #15
  br i1 %i.xs, label %bb.es, label %apply_handle_stream_abort.exit

bb.es:                                            ; preds = %stream_abort_internal.exit.i
  %i.xt = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.68) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2127, ptr noundef nonnull @__func__.apply_handle_stream_abort) #15
  br label %apply_handle_stream_abort.exit

get_transaction_apply_action.exit.thread.i59:     ; preds = %bb.ei
  br i1 %i.vo, label %bb.et, label %.thread.i

bb.et:                                            ; preds = %get_transaction_apply_action.exit.thread.i59
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xv = load i32, ptr %i.xu, align 8
  %i.xw = sext i32 %i.xv to i64
  %i.xx = load ptr, ptr %0, align 8
  %i.xy = call zeroext i1 @pa_send_data(ptr noundef nonnull %i.vx, i64 noundef %i.xw, ptr noundef %i.xx) #15
  br i1 %i.xy, label %bb.eu, label %bb.ev

.thread.i:                                        ; preds = %get_transaction_apply_action.exit.thread.i59
  call void @pa_unlock_stream(i32 noundef %i.vl, i32 noundef 8) #15
  %i.xz = getelementptr inbounds nuw i8, ptr %i.vx, i64 32
  %i.ya = load ptr, ptr %i.xz, align 8
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 20 ; 2 uses
  %i.yc = call i32 asm sideeffect "\09lock\09\09\09\09\0A\09xaddl\09$0,$1\09\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.yb, i32 1, ptr nonnull elementtype(i32) %i.yb) #15, !srcloc !19 ; 0 uses
  call void @pa_lock_stream(i32 noundef %i.vl, i32 noundef 8) #15
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ye = load i32, ptr %i.yd, align 8
  %i.yf = sext i32 %i.ye to i64
  %i.yg = load ptr, ptr %0, align 8
  %i.yh = call zeroext i1 @pa_send_data(ptr noundef nonnull %i.vx, i64 noundef %i.yf, ptr noundef %i.yg) #15
  br i1 %i.yh, label %apply_handle_stream_abort.exit, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  call void @pa_xact_finish(ptr noundef nonnull %i.vx, i64 noundef 0) #15
  br label %apply_handle_stream_abort.exit

bb.ev:                                            ; preds = %.thread.i, %bb.et
  call void @pa_switch_to_partial_serialize(ptr noundef nonnull %i.vx, i1 noundef zeroext true) #15
  br label %get_transaction_apply_action.exit.thread29.i

get_transaction_apply_action.exit.thread29.i:     ; preds = %bb.ev, %bb.ei
  call fastcc void @stream_open_and_write_change(i32 noundef %i.vl, i8 noundef signext 65, ptr noundef %10)
  br i1 %i.vo, label %bb.ew, label %apply_handle_stream_abort.exit

bb.ew:                                            ; preds = %get_transaction_apply_action.exit.thread29.i
  %i.yi = getelementptr inbounds nuw i8, ptr %i.vx, i64 32
  %i.yj = load ptr, ptr %i.yi, align 8
  call void @pa_set_fileset_state(ptr noundef %i.yj, i32 noundef 2) #15
  call void @pa_xact_finish(ptr noundef nonnull %i.vx, i64 noundef 0) #15
  br label %apply_handle_stream_abort.exit

get_transaction_apply_action.exit.thread32.i:     ; preds = %am_parallel_apply_worker.exit.i.i63
  %i.yk = load ptr, ptr @stream_fd, align 8       ; 2 uses
  %i.yl = icmp ne ptr %i.yk, null
  %or.cond.i64 = select i1 %i.vo, i1 %i.yl, i1 false
  br i1 %or.cond.i64, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %get_transaction_apply_action.exit.thread32.i
  call void @BufFileClose(ptr noundef nonnull %i.yk) #15
  store ptr null, ptr @stream_fd, align 8
  call void @pa_stream_abort(ptr noundef nonnull %9) #15
  br label %bb.fa

bb.ey:                                            ; preds = %get_transaction_apply_action.exit.thread32.i
  call void @pa_stream_abort(ptr noundef nonnull %9) #15
  br i1 %i.vo, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @pa_decr_and_wait_stream_block() #15
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey, %bb.ex
  %i.ym = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #15
  br i1 %i.ym, label %bb.fb, label %apply_handle_stream_abort.exit

bb.fb:                                            ; preds = %bb.fa
  %i.yn = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.68) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2230, ptr noundef nonnull @__func__.apply_handle_stream_abort) #15
  br label %apply_handle_stream_abort.exit

bb.fc:                                            ; preds = %get_transaction_apply_action.exit.i60
  %i.yo = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.yp = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.48, i32 noundef 1) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2234, ptr noundef nonnull @__func__.apply_handle_stream_abort) #15
  unreachable

apply_handle_stream_abort.exit:                   ; preds = %stream_abort_internal.exit.i, %bb.es, %.thread.i, %bb.eu, %get_transaction_apply_action.exit.thread29.i, %bb.ew, %bb.fa, %bb.fb
  store i32 0, ptr @apply_error_callback_arg.0, align 8
  store ptr null, ptr @apply_error_callback_arg.1, align 8
  store i32 -1, ptr @apply_error_callback_arg.2, align 8
  store i32 0, ptr @apply_error_callback_arg.3, align 4
  store i64 0, ptr @apply_error_callback_arg.4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %apply_handle_relation.exit

bb.fd:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.b.i65 = load i1, ptr @in_streamed_transaction, align 1
  br i1 %.b.i65, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.yq = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16, !inline_history !17 ; 0 uses
  %i.yr = tail call i32 @errcode(i32 noundef 16908800) #15, !inline_history !17 ; 0 uses
  %i.ys = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.69) #15, !inline_history !17 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2420, ptr noundef nonnull @__func__.apply_handle_stream_commit) #15, !inline_history !17
  unreachable

bb.ff:                                            ; preds = %bb.fd
  %i.yt = call i32 @logicalrep_read_stream_commit(ptr noundef nonnull %0, ptr noundef nonnull %7) #15, !inline_history !17 ; 6 uses
  %i.yu = load i64, ptr %7, align 8
  store i32 %i.yt, ptr @apply_error_callback_arg.3, align 4
  store i64 %i.yu, ptr @apply_error_callback_arg.4, align 8
  %i.yv = load ptr, ptr @MyLogicalRepWorker, align 8 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  %i.yx = load i8, ptr %i.yw, align 8, !range !6, !noundef !7
  %i.yy = trunc nuw i8 %i.yx to i1
  br i1 %i.yy, label %am_parallel_apply_worker.exit.i, label %am_parallel_apply_worker.exit.thread.i

am_parallel_apply_worker.exit.i:                  ; preds = %bb.ff
  %i.yz = load i32, ptr %i.yv, align 8
  %i.za = icmp eq i32 %i.yz, 4
  br i1 %i.za, label %get_transaction_apply_action.exit.thread124, label %am_parallel_apply_worker.exit.thread.i

am_parallel_apply_worker.exit.thread.i:           ; preds = %am_parallel_apply_worker.exit.i, %bb.ff
  %i.zb = call ptr @pa_find_worker(i32 noundef %i.yt) #15 ; 7 uses
  %.not.i95 = icmp eq ptr %i.zb, null
  br i1 %.not.i95, label %get_transaction_apply_action.exit, label %bb.fg

bb.fg:                                            ; preds = %am_parallel_apply_worker.exit.thread.i
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 24
  %i.zd = load i8, ptr %i.zc, align 8, !range !6, !noundef !7
  %i.ze = trunc nuw i8 %i.zd to i1
  br i1 %i.ze, label %get_transaction_apply_action.exit.thread121, label %get_transaction_apply_action.exit.thread

get_transaction_apply_action.exit:                ; preds = %am_parallel_apply_worker.exit.thread.i
  %.b.i96 = load i1, ptr @in_streamed_transaction, align 1
  br i1 %.b.i96, label %bb.fo, label %bb.fh

bb.fh:                                            ; preds = %get_transaction_apply_action.exit
  %i.zf = load ptr, ptr @MyLogicalRepWorker, align 8
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 72
  %i.zh = load ptr, ptr %i.zg, align 8
  %i.zi = load i64, ptr %7, align 8
  call void @apply_spooled_messages(ptr noundef %i.zh, i32 noundef %i.yt, i64 noundef %i.zi), !inline_history !17
  call fastcc void @apply_handle_commit_internal(ptr noundef %7), !inline_history !17
  %i.zj = load ptr, ptr @MyLogicalRepWorker, align 8
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 40
  %i.zl = load i32, ptr %i.zk, align 8
  call void @stream_cleanup_files(i32 noundef %i.zl, i32 noundef %i.yt), !inline_history !17
  %i.zm = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #15, !inline_history !17
  br i1 %i.zm, label %bb.fi, label %apply_handle_stream_commit.exit

bb.fi:                                            ; preds = %bb.fh
  %i.zn = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.70) #15, !inline_history !17 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2443, ptr noundef nonnull @__func__.apply_handle_stream_commit) #15, !inline_history !17
  br label %apply_handle_stream_commit.exit

get_transaction_apply_action.exit.thread:         ; preds = %bb.fg
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.zp = load i32, ptr %i.zo, align 8
  %i.zq = sext i32 %i.zp to i64
  %i.zr = load ptr, ptr %0, align 8
  %i.zs = call zeroext i1 @pa_send_data(ptr noundef nonnull %i.zb, i64 noundef %i.zq, ptr noundef %i.zr) #15, !inline_history !17
  br i1 %i.zs, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %get_transaction_apply_action.exit.thread
  %i.zt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.zu = load i64, ptr %i.zt, align 8
  call void @pa_xact_finish(ptr noundef nonnull %i.zb, i64 noundef %i.zu) #15, !inline_history !17
  br label %apply_handle_stream_commit.exit

bb.fk:                                            ; preds = %get_transaction_apply_action.exit.thread
  call void @pa_switch_to_partial_serialize(ptr noundef nonnull %i.zb, i1 noundef zeroext true) #15, !inline_history !17
  br label %get_transaction_apply_action.exit.thread121

get_transaction_apply_action.exit.thread121:      ; preds = %bb.fg, %bb.fk
  call fastcc void @stream_open_and_write_change(i32 noundef %i.yt, i8 noundef signext 99, ptr noundef %8), !inline_history !17
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zb, i64 32
  %i.zw = load ptr, ptr %i.zv, align 8
  call void @pa_set_fileset_state(ptr noundef %i.zw, i32 noundef 2) #15, !inline_history !17
  %i.zx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.zy = load i64, ptr %i.zx, align 8
  call void @pa_xact_finish(ptr noundef nonnull %i.zb, i64 noundef %i.zy) #15, !inline_history !17
  br label %apply_handle_stream_commit.exit

get_transaction_apply_action.exit.thread124:      ; preds = %am_parallel_apply_worker.exit.i
  %i.zz = load ptr, ptr @stream_fd, align 8       ; 2 uses
  %.not.i66 = icmp eq ptr %i.zz, null
  br i1 %.not.i66, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %get_transaction_apply_action.exit.thread124
  call void @BufFileClose(ptr noundef nonnull %i.zz) #15
  store ptr null, ptr @stream_fd, align 8
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %get_transaction_apply_action.exit.thread124
  call fastcc void @apply_handle_commit_internal(ptr noundef %7), !inline_history !17
  %i.aaa = load i64, ptr @XactLastCommitEnd, align 8
  %i.aab = load ptr, ptr @MyParallelShared, align 8 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 24
  store i64 %i.aaa, ptr %i.aac, align 8
  call void @pa_set_xact_state(ptr noundef %i.aab, i32 noundef 2) #15, !inline_history !17
  call void @pa_unlock_transaction(i32 noundef %i.yt, i32 noundef 8) #15, !inline_history !17
  call void @pa_reset_subtrans() #15, !inline_history !17
  %i.aad = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #15, !inline_history !17
  br i1 %i.aad, label %bb.fn, label %apply_handle_stream_commit.exit

bb.fn:                                            ; preds = %bb.fm
  %i.aae = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.70) #15, !inline_history !17 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2497, ptr noundef nonnull @__func__.apply_handle_stream_commit) #15, !inline_history !17
  br label %apply_handle_stream_commit.exit

bb.fo:                                            ; preds = %get_transaction_apply_action.exit
  %i.aaf = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16, !inline_history !17 ; 0 uses
  %i.aag = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.48, i32 noundef 1) #15, !inline_history !17 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2501, ptr noundef nonnull @__func__.apply_handle_stream_commit) #15, !inline_history !17
  unreachable

apply_handle_stream_commit.exit:                  ; preds = %bb.fh, %bb.fi, %bb.fj, %get_transaction_apply_action.exit.thread121, %bb.fm, %bb.fn
  %i.aah = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aai = load i64, ptr %i.aah, align 8
  call void @ProcessSyncingRelations(i64 noundef %i.aai) #15, !inline_history !17
  call void @pgstat_report_activity(i32 noundef 2, ptr noundef null) #15, !inline_history !17
  store i32 0, ptr @apply_error_callback_arg.0, align 8
  store ptr null, ptr @apply_error_callback_arg.1, align 8
  store i32 -1, ptr @apply_error_callback_arg.2, align 8
  store i32 0, ptr @apply_error_callback_arg.3, align 4
  store i64 0, ptr @apply_error_callback_arg.4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %apply_handle_relation.exit

bb.fp:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.aaj = load ptr, ptr @MyLogicalRepWorker, align 8 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  %i.aal = load i8, ptr %i.aak, align 8, !range !6, !noundef !7
  %i.aam = trunc nuw i8 %i.aal to i1
  br i1 %i.aam, label %am_tablesync_worker.exit.i70, label %am_tablesync_worker.exit.thread.i67

am_tablesync_worker.exit.i70:                     ; preds = %bb.fp
  %i.aan = load i32, ptr %i.aaj, align 8
  %i.aao = icmp eq i32 %i.aan, 1
  br i1 %i.aao, label %bb.fq, label %am_tablesync_worker.exit.thread.i67

bb.fq:                                            ; preds = %am_tablesync_worker.exit.i70
  %i.aap = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.aaq = tail call i32 @errcode(i32 noundef 16908800) #15 ; 0 uses
  %i.aar = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.71) #15 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1290, ptr noundef nonnull @__func__.apply_handle_begin_prepare) #15
  unreachable

am_tablesync_worker.exit.thread.i67:              ; preds = %am_tablesync_worker.exit.i70, %bb.fp
  call void @logicalrep_read_begin_prepare(ptr noundef %0, ptr noundef nonnull %6) #15
  %i.aas = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aat = load i32, ptr %i.aas, align 8
  %i.aau = load i64, ptr %6, align 8              ; 4 uses
  store i32 %i.aat, ptr @apply_error_callback_arg.3, align 4
  store i64 %i.aau, ptr @apply_error_callback_arg.4, align 8
  store i64 %i.aau, ptr @remote_final_lsn, align 8
  %i.aav = load ptr, ptr @MySubscription, align 8
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  %i.aax = load i64, ptr %i.aaw, align 8          ; 2 uses
  %.not.i.i68 = icmp eq i64 %i.aax, 0
  %i.aay = icmp ne i64 %i.aax, %i.aau
  %spec.select.i.i69 = or i1 %.not.i.i68, %i.aay
  br i1 %spec.select.i.i69, label %apply_handle_begin_prepare.exit, label %bb.fr, !prof !8

bb.fr:                                            ; preds = %am_tablesync_worker.exit.thread.i67
end_hunk_1
