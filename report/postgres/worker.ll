Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/worker?download=true
inline.NumInlined: 285
inline.NumDeleted: 100
begin_hunk_0_@maybe_advance_nonremovable_xid:bb.a
bb.af:                                            ; preds = %bb.ad
  %i.dc = tail call zeroext i1 @HasSubscriptionTablesCached() #15, !inline_history !35
  br i1 %i.dc, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.dd = tail call zeroext i1 @AllTablesyncsReady() #15, !inline_history !35
  br i1 %i.dd, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.de = load i64, ptr %i.j, align 8             ; 2 uses
  %.not.i9.i = icmp eq i64 %i.de, 0
  br i1 %.not.i9.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.df = tail call i64 @GetCurrentTimestamp() #15, !inline_history !35
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dg = phi i64 [ %i.df, %bb.ai ], [ %i.de, %bb.ah ]
  %i.dh = load i64, ptr %i.i, align 8
  %i.di = tail call i64 @TimestampDifferenceMilliseconds(i64 noundef %i.dh, i64 noundef %i.dg) #15, !inline_history !35
  store i64 %i.di, ptr %i.k, align 8
  br label %process_rdt_phase_transition.exit

bb.ak:                                            ; preds = %bb.ag, %bb.af
  %i.dj = load ptr, ptr @MySubscription, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dl = load i32, ptr %i.dk, align 8            ; 2 uses
  %.not.i21.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i21.i, label %should_stop_conflict_info_retention.exit27.thread.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dm = load i64, ptr %i.j, align 8             ; 2 uses
  %.not6.i22.i = icmp eq i64 %i.dm, 0
  br i1 %.not6.i22.i, label %bb.am, label %should_stop_conflict_info_retention.exit27.i

bb.am:                                            ; preds = %bb.al
  %i.dn = tail call i64 @GetCurrentTimestamp() #15, !inline_history !29
  %.pre.i24.i = load ptr, ptr @MySubscription, align 8
  %.phi.trans.insert.i25.i = getelementptr inbounds nuw i8, ptr %.pre.i24.i, i64 48
  %.pre7.i26.i = load i32, ptr %.phi.trans.insert.i25.i, align 8
  br label %should_stop_conflict_info_retention.exit27.i

should_stop_conflict_info_retention.exit27.i:     ; preds = %bb.am, %bb.al
  %i.do = phi i32 [ %.pre7.i26.i, %bb.am ], [ %i.dl, %bb.al ]
  %i.dp = phi i64 [ %i.dn, %bb.am ], [ %i.dm, %bb.al ]
  %i.dq = load i64, ptr %i.i, align 8
  %i.dr = load i64, ptr %i.k, align 8
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = add i32 %i.do, %i.ds
  %i.du = tail call zeroext i1 @TimestampDifferenceExceeds(i64 noundef %i.dq, i64 noundef %i.dp, i32 noundef %i.dt) #15, !inline_history !29
  br i1 %i.du, label %bb.an, label %should_stop_conflict_info_retention.exit27.thread.i

bb.an:                                            ; preds = %should_stop_conflict_info_retention.exit27.i
  store i32 4, ptr %0, align 8
  br label %process_rdt_phase_transition.exit

should_stop_conflict_info_retention.exit27.thread.i: ; preds = %should_stop_conflict_info_retention.exit27.i, %bb.ak
  %i.dv = load i64, ptr @last_flushpos, align 8   ; 3 uses
  %i.dw = load i64, ptr %i.l, align 8
  %i.dx = icmp ult i64 %i.dv, %i.dw
  br i1 %i.dx, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %should_stop_conflict_info_retention.exit27.thread.i
  %i.dy = load i64, ptr %i.j, align 8             ; 2 uses
  %.not24.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not24.i.i, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dz = load i64, ptr %i.m, align 8
  %i.ea = load i32, ptr @WalWriterDelay, align 4
  %i.eb = tail call zeroext i1 @TimestampDifferenceExceeds(i64 noundef %i.dz, i64 noundef %i.dy, i32 noundef %i.ea) #15, !inline_history !35
  br i1 %i.eb, label %bb.aq, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ap
  %.pre35.i = load i64, ptr @last_flushpos, align 8
  br label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.ec = tail call i64 @GetFlushRecPtr(ptr noundef null) #15, !inline_history !29 ; 2 uses
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lsn_mapping, i64 8), align 8 ; 4 uses
  %.not.i52.i = icmp eq ptr %i.ed, null
  %.not212731.i.i = icmp eq ptr %i.ed, @lsn_mapping
  %.not2127.i.i = or i1 %.not.i52.i, %.not212731.i.i
  br i1 %.not2127.i.i, label %get_flush_position.exit.thread.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.aq
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i64, ptr %i.ee, align 8
  %.not22.not.i56.i = icmp ugt i64 %i.ef, %i.ec
  br i1 %.not22.not.i56.i, label %get_flush_position.exit.thread.i, label %select.unfold.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.9.030.i.i, i64 16
  %i.eh = load i64, ptr %i.eg, align 8
  %.not22.not.i.i = icmp ugt i64 %i.eh, %i.ec
  br i1 %.not22.not.i.i, label %get_flush_position.exit.i, label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i
  %.sroa.0.028.i57.i = phi ptr [ %.sroa.9.030.i.i, %.lr.ph.i.i ], [ %i.ed, %.lr.ph.i.preheader.i ] ; 5 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i57.i, i64 24
  %i.ei = load i64, ptr %.in.i, align 8           ; 3 uses
  %.sroa.9.0.in29.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i57.i, i64 8
  %.sroa.9.030.i.i = load ptr, ptr %.sroa.9.0.in29.i.i, align 8 ; 5 uses
  %i.ej = load ptr, ptr %.sroa.0.028.i57.i, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %.sroa.9.030.i.i, ptr %i.ek, align 8
  %i.el = load ptr, ptr %.sroa.0.028.i57.i, align 8
  store ptr %i.el, ptr %.sroa.9.030.i.i, align 8
  tail call void @pfree(ptr noundef nonnull %.sroa.0.028.i57.i) #15, !inline_history !29
  %.not21.i.i = icmp eq ptr %.sroa.9.030.i.i, @lsn_mapping
  br i1 %.not21.i.i, label %get_flush_position.exit.i, label %.lr.ph.i.i

get_flush_position.exit.thread.i:                 ; preds = %.lr.ph.i.preheader.i, %bb.aq
  %i.em = load i64, ptr @last_flushpos, align 8
  br label %bb.as

get_flush_position.exit.i:                        ; preds = %select.unfold.i.i, %.lr.ph.i.i
  %i.en = load i64, ptr @last_flushpos, align 8   ; 2 uses
  %i.eo = icmp ugt i64 %i.ei, %i.en
  br i1 %i.eo, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %get_flush_position.exit.i
  store i64 %i.ei, ptr @last_flushpos, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %get_flush_position.exit.i, %get_flush_position.exit.thread.i
  %i.ep = phi i64 [ %i.ei, %bb.ar ], [ %i.en, %get_flush_position.exit.i ], [ %i.em, %get_flush_position.exit.thread.i ]
  %i.eq = load i64, ptr %i.j, align 8
  store i64 %i.eq, ptr %i.m, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge.i, %bb.ao, %should_stop_conflict_info_retention.exit27.thread.i
  %i.er = phi i64 [ %.pre35.i, %._crit_edge.i ], [ %i.ep, %bb.as ], [ %i.dv, %bb.ao ], [ %i.dv, %should_stop_conflict_info_retention.exit27.thread.i ]
  %i.es = load i64, ptr %i.l, align 8
  %i.et = icmp ult i64 %i.er, %i.es
  br i1 %i.et, label %process_rdt_phase_transition.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eu = load ptr, ptr @MySubscription, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 52
  %i.ew = load i8, ptr %i.ev, align 4, !range !6, !noundef !7
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i32 5, ptr %0, align 8
  br label %process_rdt_phase_transition.exit

bb.aw:                                            ; preds = %bb.au
  %i.ey = load ptr, ptr @MyLogicalRepWorker, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 64 ; 3 uses
  %i.fa = tail call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ez, i8 1, ptr nonnull elementtype(i8) %i.ez) #15, !inline_history !29, !srcloc !10
  %.not.i54.i = icmp eq i8 %i.fa, 0
  br i1 %.not.i54.i, label %SpinLockAcquire.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fb = tail call i32 @s_lock(ptr noundef nonnull %i.ez, ptr noundef nonnull @.str.60, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #15, !inline_history !29 ; 0 uses
  br label %SpinLockAcquire.exit.i

SpinLockAcquire.exit.i:                           ; preds = %bb.ax, %bb.aw
  %i.fc = load i32, ptr %i.n, align 8
  %i.fd = load ptr, ptr @MyLogicalRepWorker, align 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 88
  store i32 %i.fc, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 64
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !inline_history !29, !srcloc !11
  store volatile i8 0, ptr %i.ff, align 8
  %i.fg = tail call zeroext i1 @errstart(i32 noundef 13, ptr noundef null) #15, !inline_history !35
  br i1 %i.fg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %SpinLockAcquire.exit.i
  %i.fh = load i64, ptr %i.l, align 8             ; 2 uses
  %i.fi = lshr i64 %i.fh, 32
  %i.fj = trunc nuw i64 %i.fi to i32
  %i.fk = trunc i64 %i.fh to i32
  %i.fl = load i32, ptr %i.n, align 8
  %i.fm = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.89, i32 noundef %i.fj, i32 noundef %i.fk, i32 noundef %i.fl) #15, !inline_history !35 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 4773, ptr noundef nonnull @__func__.wait_for_local_flush) #15, !inline_history !35
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %SpinLockAcquire.exit.i
  tail call void @ApplyLauncherWakeup() #15, !inline_history !35
  store i32 0, ptr %0, align 8
  store i64 0, ptr %i.k, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.l, i8 0, i64 44, i1 false)
  br label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %bb.az, %bb.ac, %adjust_xid_advance_interval.exit.i
  %.be = phi i32 [ 1, %adjust_xid_advance_interval.exit.i ], [ %..i.i, %bb.ac ], [ 0, %bb.az ]
  br label %tailrecurse.i

bb.ba:                                            ; preds = %tailrecurse.i
  %i.fn = load ptr, ptr @MySubscription, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 52
  %i.fp = load i8, ptr %i.fo, align 4, !range !6, !noundef !7
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %2 = tail call zeroext i1 @IsTransactionState() #15, !inline_history !29
  br i1 %2, label %process_rdt_phase_transition.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @StartTransactionCommand() #15, !inline_history !29
  %3 = tail call ptr @GetTransactionSnapshot() #15, !inline_history !29
  tail call void @PushActiveSnapshot(ptr noundef %3) #15, !inline_history !29
  %4 = load ptr, ptr @MySubscription, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = load i32, ptr %5, align 8
  tail call void @UpdateDeadTupleRetentionStatus(i32 noundef %6, i1 noundef zeroext false) #15, !inline_history !29
  tail call void @PopActiveSnapshot() #15, !inline_history !29
  tail call void @CommitTransactionCommand() #15, !inline_history !29
  tail call void @ApplyLauncherWakeup() #15, !inline_history !29
  %7 = load ptr, ptr @MySubscription, align 8
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 52
  store i8 0, ptr %8, align 4
  %i.fr = load ptr, ptr @MyLogicalRepWorker, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 64 ; 3 uses
  %i.ft = tail call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.fs, i8 1, ptr nonnull elementtype(i8) %i.fs) #15, !inline_history !29, !srcloc !10
  %.not.i.i.i = icmp eq i8 %i.ft, 0
  br i1 %.not.i.i.i, label %SpinLockAcquire.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fu = tail call i32 @s_lock(ptr noundef nonnull %i.fs, ptr noundef nonnull @.str.60, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #15, !inline_history !29 ; 0 uses
  br label %SpinLockAcquire.exit.i.i

SpinLockAcquire.exit.i.i:                         ; preds = %bb.bd, %bb.bc
  %i.fv = load ptr, ptr @MyLogicalRepWorker, align 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 88
  store i32 0, ptr %i.fw, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 64
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !inline_history !29, !srcloc !11
  store volatile i8 0, ptr %i.fx, align 8
  %i.fy = tail call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #15, !inline_history !29
  br i1 %i.fy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %SpinLockAcquire.exit.i.i
  %i.fz = load ptr, ptr @MySubscription, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.90, ptr noundef %i.gb) #15, !inline_history !29 ; 0 uses
  %i.gd = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.91) #15, !inline_history !29 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 4846, ptr noundef nonnull @__func__.stop_conflict_info_retention) #15, !inline_history !29
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %SpinLockAcquire.exit.i.i, %bb.ba
  store i32 0, ptr %0, align 8
  store i64 0, ptr %i.k, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.l, i8 0, i64 44, i1 false)
  br label %process_rdt_phase_transition.exit

bb.bg:                                            ; preds = %tailrecurse.i
  %9 = tail call zeroext i1 @IsTransactionState() #15, !inline_history !29
  br i1 %9, label %process_rdt_phase_transition.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @StartTransactionCommand() #15, !inline_history !29
  %10 = tail call ptr @GetTransactionSnapshot() #15, !inline_history !29
  tail call void @PushActiveSnapshot(ptr noundef %10) #15, !inline_history !29
  %11 = load ptr, ptr @MySubscription, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = load i32, ptr %12, align 8
  tail call void @UpdateDeadTupleRetentionStatus(i32 noundef %13, i1 noundef zeroext true) #15, !inline_history !29
  tail call void @PopActiveSnapshot() #15, !inline_history !29
  tail call void @CommitTransactionCommand() #15, !inline_history !29
  tail call void @ApplyLauncherWakeup() #15, !inline_history !29
  %14 = load ptr, ptr @MySubscription, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 52
  store i8 1, ptr %15, align 4
  %i.ge = tail call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #15, !inline_history !29
  br i1 %i.ge, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gf = load ptr, ptr @MySubscription, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.92, ptr noundef %i.gh) #15, !inline_history !29 ; 0 uses
  %i.gj = load ptr, ptr @MySubscription, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  %i.gl = load i32, ptr %i.gk, align 8
  %.not.i10.i = icmp eq i32 %i.gl, 0
  %.str.94..str.93.i.i = select i1 %.not.i10.i, ptr @.str.94, ptr @.str.93
  %i.gm = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull %.str.94..str.93.i.i) #15, !inline_history !29 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 4875, ptr noundef nonnull @__func__.resume_conflict_info_retention) #15, !inline_history !29
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.gn = load ptr, ptr @MyLogicalRepWorker, align 8 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load i8, ptr %i.go, align 8, !range !6, !noundef !7
  %i.gq = trunc nuw i8 %i.gp to i1
  %i.gr = load i32, ptr %i.gn, align 8            ; 2 uses
  %i.gs = icmp eq i32 %i.gr, 4
  %or.cond.i.i.i = select i1 %i.gq, i1 %i.gs, i1 false
  br i1 %or.cond.i.i.i, label %process_rdt_phase_transition.exit, label %am_parallel_apply_worker.exit.thread.i.i.i

am_parallel_apply_worker.exit.thread.i.i.i:       ; preds = %bb.bj
  %i.gt = icmp eq i32 %i.gr, 3
  br i1 %i.gt, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %am_parallel_apply_worker.exit.thread.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  %i.gv = load i32, ptr %i.gu, align 8
  tail call void @ApplyLauncherForgetWorkerStartTime(i32 noundef %i.gv) #15, !inline_history !29
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %am_parallel_apply_worker.exit.thread.i.i.i
  tail call void @proc_exit(i32 noundef 0) #17, !inline_history !29
  unreachable

process_rdt_phase_transition.exit:                ; preds = %bb.at, %bb.w, %bb.e, %tailrecurse.i, %bb.a, %bb.bj, %bb.bg, %bb.bf, %bb.bb, %bb.av, %bb.an, %bb.aj, %bb.aa, %request_publisher_status.exit.i, %bb.k, %bb.j, %bb.i, %can_advance_nonremovable_xid.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @send_feedback(i64 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = load i32, ptr @wal_receiver_status_interval, align 4
  %i.c = icmp sgt i32 %i.b, 0
  %or.cond.not = select i1 %1, i1 true, i1 %i.c
  br i1 %or.cond.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @send_feedback.last_recvpos, align 8
  %spec.select = tail call i64 @llvm.umax.i64(i64 %0, i64 %i.d) ; 6 uses
  %i.e = tail call i64 @GetFlushRecPtr(ptr noundef null) #15 ; 2 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lsn_mapping, i64 8), align 8 ; 5 uses
  %.not.i = icmp eq ptr %i.f, null
  %.not212731.i = icmp eq ptr %i.f, @lsn_mapping
  %.not2127.i = or i1 %.not.i, %.not212731.i
  br i1 %.not2127.i, label %get_flush_position.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %.not22.not.i49 = icmp ugt i64 %i.h, %i.e
  br i1 %.not22.not.i49, label %get_flush_position.exit.thread, label %select.unfold.i

.lr.ph.i:                                         ; preds = %select.unfold.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.9.030.i, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %.not22.not.i = icmp ugt i64 %i.j, %i.e
  br i1 %.not22.not.i, label %get_flush_position.exit.thread, label %select.unfold.i

get_flush_position.exit.thread:                   ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.2.lcssa = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i ]
  %i.k = load ptr, ptr @lsn_mapping, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8
  br label %bb.c

select.unfold.i:                                  ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.028.i50 = phi ptr [ %.sroa.9.030.i, %.lr.ph.i ], [ %i.f, %.lr.ph.i.preheader ] ; 5 uses
  %.in = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i50, i64 24
  %i.n = load i64, ptr %.in, align 8              ; 2 uses
  %.sroa.9.0.in29.i = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i50, i64 8
  %.sroa.9.030.i = load ptr, ptr %.sroa.9.0.in29.i, align 8 ; 5 uses
  %i.o = load ptr, ptr %.sroa.0.028.i50, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.9.030.i, ptr %i.p, align 8
  %i.q = load ptr, ptr %.sroa.0.028.i50, align 8
  store ptr %i.q, ptr %.sroa.9.030.i, align 8
  tail call void @pfree(ptr noundef nonnull %.sroa.0.028.i50) #15
  %.not21.i = icmp eq ptr %.sroa.9.030.i, @lsn_mapping
  br i1 %.not21.i, label %select.unfold._crit_edge.loopexit.i, label %.lr.ph.i

select.unfold._crit_edge.loopexit.i:              ; preds = %select.unfold.i
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lsn_mapping, i64 8), align 8
  br label %get_flush_position.exit

get_flush_position.exit:                          ; preds = %bb.b, %select.unfold._crit_edge.loopexit.i
  %.235 = phi i64 [ 0, %bb.b ], [ %i.n, %select.unfold._crit_edge.loopexit.i ]
  %i.r = phi ptr [ %i.f, %bb.b ], [ %.pre.i, %select.unfold._crit_edge.loopexit.i ] ; 2 uses
  %i.s = icmp ne ptr %i.r, null
  %i.t = icmp ne ptr %i.r, @lsn_mapping
  %spec.select.i.not.i = and i1 %i.s, %i.t
  %spec.select40 = select i1 %spec.select.i.not.i, i64 %.235, i64 %spec.select ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %get_flush_position.exit, %get_flush_position.exit.thread
  %.033 = phi i64 [ %spec.select40, %get_flush_position.exit ], [ %i.m, %get_flush_position.exit.thread ]
  %.0 = phi i64 [ %spec.select40, %get_flush_position.exit ], [ %.2.lcssa, %get_flush_position.exit.thread ]
  %i.u = load i64, ptr @send_feedback.last_writepos, align 8
  %spec.select42 = tail call i64 @llvm.umax.i64(i64 %.033, i64 %i.u) ; 6 uses
  %i.v = load i64, ptr @last_flushpos, align 8
  %.1 = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.v) ; 6 uses
  %i.w = tail call i64 @GetCurrentTimestamp() #15 ; 3 uses
  %.not43 = xor i1 %1, true
  %i.x = load i64, ptr @send_feedback.last_writepos, align 8
  %i.y = icmp eq i64 %spec.select42, %i.x
  %or.cond = select i1 %.not43, i1 %i.y, i1 false
  %i.z = load i64, ptr @last_flushpos, align 8
  %i.aa = icmp eq i64 %.1, %i.z
  %or.cond46 = select i1 %or.cond, i1 %i.aa, i1 false
  br i1 %or.cond46, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = load i64, ptr @send_feedback.send_time, align 8
  %i.ac = load i32, ptr @wal_receiver_status_interval, align 4
  %i.ad = mul i32 %i.ac, 1000
  %i.ae = tail call zeroext i1 @TimestampDifferenceExceeds(i64 noundef %i.ab, i64 noundef %i.w, i32 noundef %i.ad) #15
  br i1 %i.ae, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d, %bb.c
  store i64 %i.w, ptr @send_feedback.send_time, align 8
  %i.af = load ptr, ptr @send_feedback.reply_message, align 8 ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr @ApplyContext, align 8
  %i.ah = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.ag, ptr @CurrentMemoryContext, align 8
  %i.ai = tail call ptr @makeStringInfo() #15     ; 2 uses
  store ptr %i.ai, ptr @send_feedback.reply_message, align 8
  store ptr %i.ah, ptr @CurrentMemoryContext, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @resetStringInfo(ptr noundef nonnull %i.af) #15
  %.pre = load ptr, ptr @send_feedback.reply_message, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = phi ptr [ %.pre, %bb.g ], [ %i.ai, %bb.f ] ; 3 uses
  tail call void @enlargeStringInfo(ptr noundef %i.aj, i32 noundef 1) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !50
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !alias.scope !50 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.an
  store i8 114, ptr %i.ao, align 1, !noalias !50
  %i.ap = add i32 %i.am, 1
  store i32 %i.ap, ptr %i.al, align 8, !alias.scope !50
  %i.aq = load ptr, ptr @send_feedback.reply_message, align 8 ; 3 uses
  tail call void @enlargeStringInfo(ptr noundef %i.aq, i32 noundef 8) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.ar = tail call i64 @llvm.bswap.i64(i64 %spec.select)
  %i.as = load ptr, ptr %i.aq, align 8, !alias.scope !51
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !alias.scope !51 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 %i.av
  store i64 %i.ar, ptr %i.aw, align 1, !noalias !51
  %i.ax = add i32 %i.au, 8
  store i32 %i.ax, ptr %i.at, align 8, !alias.scope !51
  %i.ay = load ptr, ptr @send_feedback.reply_message, align 8 ; 3 uses
  tail call void @enlargeStringInfo(ptr noundef %i.ay, i32 noundef 8) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.az = tail call i64 @llvm.bswap.i64(i64 %.1)
  %i.ba = load ptr, ptr %i.ay, align 8, !alias.scope !52
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !alias.scope !52 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  store i64 %i.az, ptr %i.be, align 1, !noalias !52
  %i.bf = add i32 %i.bc, 8
  store i32 %i.bf, ptr %i.bb, align 8, !alias.scope !52
  %i.bg = load ptr, ptr @send_feedback.reply_message, align 8 ; 3 uses
  tail call void @enlargeStringInfo(ptr noundef %i.bg, i32 noundef 8) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.bh = tail call i64 @llvm.bswap.i64(i64 %spec.select42)
  %i.bi = load ptr, ptr %i.bg, align 8, !alias.scope !53
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !alias.scope !53 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 %i.bl
  store i64 %i.bh, ptr %i.bm, align 1, !noalias !53
  %i.bn = add i32 %i.bk, 8
  store i32 %i.bn, ptr %i.bj, align 8, !alias.scope !53
  %i.bo = load ptr, ptr @send_feedback.reply_message, align 8 ; 3 uses
  tail call void @enlargeStringInfo(ptr noundef %i.bo, i32 noundef 8) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.bp = tail call i64 @llvm.bswap.i64(i64 %i.w)
  %i.bq = load ptr, ptr %i.bo, align 8, !alias.scope !54
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !alias.scope !54 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.bt
  store i64 %i.bp, ptr %i.bu, align 1, !noalias !54
  %i.bv = add i32 %i.bs, 8
  store i32 %i.bv, ptr %i.br, align 8, !alias.scope !54
  %i.bw = load ptr, ptr @send_feedback.reply_message, align 8 ; 3 uses
  tail call void @enlargeStringInfo(ptr noundef %i.bw, i32 noundef 1) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !55
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !alias.scope !55 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %i.bx, i64 %i.ca
  store i8 %i.a, ptr %i.cb, align 1, !noalias !55
  %i.cc = add i32 %i.bz, 1
  store i32 %i.cc, ptr %i.by, align 8, !alias.scope !55
  %i.cd = tail call zeroext i1 @errstart(i32 noundef 13, ptr noundef null) #15
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ce = zext i1 %1 to i32
  %i.cf = lshr i64 %spec.select, 32
  %i.cg = trunc nuw i64 %i.cf to i32
  %i.ch = trunc i64 %spec.select to i32
  %i.ci = lshr i64 %spec.select42, 32
  %i.cj = trunc nuw i64 %i.ci to i32
  %i.ck = trunc i64 %spec.select42 to i32
  %i.cl = lshr i64 %.1, 32
  %i.cm = trunc nuw i64 %i.cl to i32
  %i.cn = trunc i64 %.1 to i32
  %i.co = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.95, i32 noundef %i.ce, i32 noundef %i.cg, i32 noundef %i.ch, i32 noundef %i.cj, i32 noundef %i.ck, i32 noundef %i.cm, i32 noundef %i.cn) #15 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 4390, ptr noundef nonnull @__func__.send_feedback) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cp = load ptr, ptr @WalReceiverFunctions, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 88
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load ptr, ptr @LogRepWorkerWalRcvConn, align 8
  %i.ct = load ptr, ptr @send_feedback.reply_message, align 8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load i32, ptr %i.cv, align 8
  tail call void %i.cr(ptr noundef %i.cs, ptr noundef %i.cu, i32 noundef %i.cw) #15
  %i.cx = load i64, ptr @send_feedback.last_recvpos, align 8
  %i.cy = icmp ugt i64 %spec.select, %i.cx
  br i1 %i.cy, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %spec.select, ptr @send_feedback.last_recvpos, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cz = load i64, ptr @send_feedback.last_writepos, align 8
  %i.da = icmp ugt i64 %spec.select42, %i.cz
  br i1 %i.da, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %spec.select42, ptr @send_feedback.last_writepos, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.db = load i64, ptr @last_flushpos, align 8
  %i.dc = icmp ugt i64 %.1, %i.db
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 %.1, ptr @last_flushpos, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.d, %bb.a
  ret void
}

declare i32 @WaitLatchOrSocket(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @ResetLatch(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @TimestampDifferenceExceeds(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @GetOldestActiveTransactionId(i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @makeStringInfo() local_unnamed_addr #1

declare void @resetStringInfo(ptr noundef) local_unnamed_addr #1

declare void @enlargeStringInfo(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #13

declare i32 @errdetail_internal(ptr noundef, ...) local_unnamed_addr #1

declare zeroext i1 @HasSubscriptionTablesCached() local_unnamed_addr #1

declare zeroext i1 @AllTablesyncsReady() local_unnamed_addr #1

declare i64 @TimestampDifferenceMilliseconds(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @ApplyLauncherWakeup() local_unnamed_addr #1

declare i64 @GetFlushRecPtr(ptr noundef) local_unnamed_addr #1

declare void @UpdateDeadTupleRetentionStatus(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare zeroext i16 @replorigin_by_name(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare zeroext i16 @replorigin_create(ptr noundef) local_unnamed_addr #1

declare void @replorigin_session_setup(i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare i64 @replorigin_session_get_progress(i1 noundef zeroext) local_unnamed_addr #1

declare void @UpdateTwoPhaseState(i32 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind returns_twice }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{null}
!1 = distinct !{null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{i64 2616500, i64 2616516}
!11 = !{i64 2150114277}
!12 = distinct !{!12, !9}
!13 = distinct !{null, null, null}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = !{i64 2573937, i64 2573954}
!20 = distinct !{null}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.peeled.count", i32 1}
!23 = !{ptr @set_stream_options}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{null}
!27 = distinct !{!27, !9}
!28 = distinct !{null, null}
!29 = distinct !{null}
!30 = distinct !{!30, i1 true, !"pq_writeint8"}
!31 = distinct !{!31, !30, !"pq_writeint8: argument 0"}
!32 = distinct !{!32, i1 true, !"pq_writeint64"}
!33 = distinct !{!33, !32, !"pq_writeint64: argument 0"}
!34 = distinct !{null, null}
!35 = distinct !{null, null}
!36 = !{!31}
!37 = !{!33}
!38 = distinct !{!38, i1 true, !"pq_writeint8"}
!39 = distinct !{!39, !38, !"pq_writeint8: argument 0"}
!40 = distinct !{!40, i1 true, !"pq_writeint64"}
!41 = distinct !{!41, !40, !"pq_writeint64: argument 0"}
!42 = distinct !{!42, i1 true, !"pq_writeint64"}
!43 = distinct !{!43, !42, !"pq_writeint64: argument 0"}
!44 = distinct !{!44, i1 true, !"pq_writeint64"}
!45 = distinct !{!45, !44, !"pq_writeint64: argument 0"}
!46 = distinct !{!46, i1 true, !"pq_writeint64"}
!47 = distinct !{!47, !46, !"pq_writeint64: argument 0"}
!48 = distinct !{!48, i1 true, !"pq_writeint8"}
!49 = distinct !{!49, !48, !"pq_writeint8: argument 0"}
!50 = !{!39}
!51 = !{!41}
!52 = !{!43}
!53 = !{!45}
!54 = !{!47}
!55 = !{!49}
end_hunk_0
