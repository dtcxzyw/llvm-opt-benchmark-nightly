Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/slurmdbd?download=true
inline.NumInlined: 11
inline.NumDeleted: 11
begin_hunk_0_@_rollup_handler:bb.a
  %i.af = call i32 @pthread_cond_timedwait(ptr noundef nonnull @rollup_handler_cond, ptr noundef nonnull @rollup_lock, ptr noundef nonnull %1) #14 ; 2 uses
  switch i32 %i.af, label %bb.m [
    i32 110, label %bb.n
    i32 0, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call ptr @__errno_location() #18
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.27, i32 noundef 936, ptr noundef nonnull @.str.14) #14 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.l, %bb.k
  %i.ai = call i32 @pthread_mutex_unlock(ptr noundef nonnull @rollup_lock) #14 ; 2 uses
  %.not23 = icmp eq i32 %i.ai, 0
  br i1 %.not23, label %.split, label %bb.o, !llvm.loop !17

bb.o:                                             ; preds = %bb.n
  %i.aj = tail call ptr @__errno_location() #18
  store i32 %i.ai, ptr %i.aj, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.14) #16
  unreachable

.split26:                                         ; preds = %.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret ptr null
}

declare i32 @threadpool_join(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @conmgr_request_shutdown() local_unnamed_addr #2

declare void @forward_fini() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #8

declare void @list_destroy(ptr noundef) local_unnamed_addr #2

declare void @conmgr_fini() local_unnamed_addr #2

declare i32 @assoc_mgr_fini(i1 noundef zeroext) local_unnamed_addr #2

declare i32 @acct_storage_g_fini() local_unnamed_addr #2

declare i32 @auth_g_fini() local_unnamed_addr #2

declare i32 @hash_g_fini() local_unnamed_addr #2

declare i32 @conn_g_fini() local_unnamed_addr #2

declare void @free_slurmdbd_conf() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #4

declare void @slurmdb_destroy_stats_rec(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare void @log_fini() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @reconfig(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  tail call void @conmgr_quiesce(ptr noundef nonnull @__func__.reconfig) #14
  %i.a = tail call i32 @read_slurmdbd_conf() #14  ; 0 uses
  %i.b = tail call i32 @assoc_mgr_set_missing_uids(ptr noundef null) #14 ; 0 uses
  %i.c = tail call i32 @acct_storage_g_reconfig(ptr noundef null, i1 noundef zeroext false) #14 ; 0 uses
  tail call fastcc void @_update_logging(i1 noundef zeroext false)
  tail call void @conmgr_unquiesce(ptr noundef nonnull @__func__.reconfig) #14
  ret ptr null
}

declare void @conmgr_quiesce(ptr noundef) local_unnamed_addr #2

declare i32 @assoc_mgr_set_missing_uids(ptr noundef) local_unnamed_addr #2

declare i32 @acct_storage_g_reconfig(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @conmgr_unquiesce(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @handle_rollup_stats(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @rpc_mutex) #14 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #18
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.handle_rollup_stats) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @rpc_stats, align 8        ; 2 uses
  %.not73 = icmp eq ptr %i.c, null
  br i1 %.not73, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @rpc_mutex) #14 ; 2 uses
  %.not74 = icmp eq i32 %i.d, 0
  br i1 %.not74, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @__errno_location() #18
  store i32 %i.d, ptr %i.e, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.handle_rollup_stats) #16
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = sext i32 %2 to i64                       ; 5 uses
  %i.i = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = load i16, ptr %i.i, align 2
  %i.k = add i16 %i.j, 1
  store i16 %i.k, ptr %i.i, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.h ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, %1
  store i64 %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.h
  store i64 %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.h ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %. = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %1)
  store i64 %., ptr %i.s, align 8
  %i.u = tail call i64 @time(ptr noundef null) #14
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.h
  store i64 %i.u, ptr %i.w, align 8
  %.not75 = icmp eq ptr %0, null
  br i1 %.not75, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = tail call i32 @list_count(ptr noundef nonnull %0) #14
  %.not76 = icmp eq i32 %i.x, 0
  br i1 %.not76, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.y = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @rpc_mutex) #14 ; 2 uses
  %.not77 = icmp eq i32 %i.y, 0
  br i1 %.not77, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = tail call ptr @__errno_location() #18
  store i32 %i.y, ptr %i.z, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.handle_rollup_stats) #16
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.aa = tail call ptr @list_iterator_create(ptr noundef nonnull %0) #14 ; 4 uses
  %i.ab = tail call ptr @list_next(ptr noundef %i.aa) #14 ; 2 uses
  %.not7883 = icmp eq ptr %i.ab, null
  br i1 %.not7883, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.backedge
  %i.ac = phi ptr [ %i.as, %.backedge ], [ %i.ab, %bb.j ] ; 4 uses
  %i.ad = load ptr, ptr @rpc_stats, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call ptr @list_find_first(ptr noundef %i.af, ptr noundef nonnull @_find_rollup_stats_in_list, ptr noundef nonnull %i.ac) #14 ; 6 uses
  %.not80 = icmp eq ptr %i.ag, null
  br i1 %.not80, label %bb.k, label %.preheader

.preheader:                                       ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.ao = load ptr, ptr @rpc_stats, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void @list_append(ptr noundef %i.aq, ptr noundef nonnull %i.ac) #14
  %i.ar = tail call ptr @list_remove(ptr noundef %i.aa) #14 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.n, %bb.k
  %i.as = tail call ptr @list_next(ptr noundef %i.aa) #14 ; 2 uses
  %.not78 = icmp eq ptr %i.as, null
  br i1 %.not78, label %._crit_edge, label %.lr.ph, !llvm.loop !18

bb.l:                                             ; preds = %.preheader, %bb.n
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.n ] ; 8 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv ; 3 uses
  %i.au = load i64, ptr %i.at, align 8
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = add i16 %i.ax, 1
  store i16 %i.ay, ptr %i.aw, align 2
  %i.az = load i64, ptr %i.at, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = add i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.ba, align 8
  %i.bd = load i64, ptr %i.at, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  store i64 %i.bd, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %.81 = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.bd)
  store i64 %.81, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  store i64 %i.bi, ptr %i.bj, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %.backedge, label %bb.l, !llvm.loop !19

._crit_edge:                                      ; preds = %.backedge, %bb.j
  tail call void @list_iterator_destroy(ptr noundef %i.aa) #14
  %i.bk = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @rpc_mutex) #14 ; 2 uses
  %.not79 = icmp eq i32 %i.bk, 0
  br i1 %.not79, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bl = tail call ptr @__errno_location() #18
  store i32 %i.bk, ptr %i.bl, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.handle_rollup_stats) #16
  unreachable

bb.p:                                             ; preds = %._crit_edge, %bb.h, %bb.d
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #5

declare i32 @list_count(ptr noundef) local_unnamed_addr #2

declare ptr @list_iterator_create(ptr noundef) local_unnamed_addr #2

declare ptr @list_next(ptr noundef) local_unnamed_addr #2

declare ptr @list_find_first(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_find_rollup_stats_in_list(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = tail call i32 @xstrcmp(ptr noundef %i.a, ptr noundef %i.b) #14
  %.not = icmp eq i32 %i.c, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

declare void @list_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @list_remove(ptr noundef) local_unnamed_addr #2

declare void @list_iterator_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @shutdown_threads() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @shutdown_threads.shutdown_mutex) #14 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #18
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.shutdown_threads) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr @shutdown_time, align 8
  %.not26 = icmp eq i64 %i.c, 0
  br i1 %.not26, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @get_log_level() #14
  %i.e = icmp sgt i32 %i.d, 4
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.22) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @shutdown_threads.shutdown_mutex) #14 ; 2 uses
  %.not35 = icmp eq i32 %i.f, 0
  br i1 %.not35, label %bb.ai, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call ptr @__errno_location() #18
  store i32 %i.f, ptr %i.g, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.shutdown_threads) #16
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.h = tail call i64 @time(ptr noundef null) #14
  store i64 %i.h, ptr @shutdown_time, align 8
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @shutdown_threads.shutdown_mutex) #14 ; 2 uses
  %.not27 = icmp eq i32 %i.i, 0
  br i1 %.not27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = tail call ptr @__errno_location() #18
  store i32 %i.i, ptr %i.j, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.shutdown_threads) #16
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.k = load i64, ptr @commit_handler_thread, align 8
  %.not28 = icmp eq i64 %i.k, 0
  br i1 %.not28, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @registered_lock) #14
  %i.m = icmp eq i32 %i.l, 16
  br i1 %i.m, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.n = tail call i32 @get_log_level() #14
  %i.o = icmp sgt i32 %i.n, 4
  br i1 %i.o, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.23) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @registered_lock) #14 ; 2 uses
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = tail call ptr @__errno_location() #18
  store i32 %i.p, ptr %i.q, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.shutdown_threads) #16
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.k
  %i.r = load i64, ptr @commit_handler_thread, align 8
  %i.s = tail call i32 @pthread_cancel(i64 noundef %i.r) #14 ; 0 uses
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @registered_lock) #14 ; 2 uses
  %.not30 = icmp eq i32 %i.t, 0
  br i1 %.not30, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = tail call ptr @__errno_location() #18
  store i32 %i.t, ptr %i.u, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.shutdown_threads) #16
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.j
  tail call void @rpc_mgr_wake() #14
  %i.v = load i64, ptr @rollup_handler_thread, align 8
  %.not31 = icmp eq i64 %i.v, 0
  br i1 %.not31, label %bb.ah, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.w = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @rollup_lock) #14
  %i.x = icmp eq i32 %i.w, 16
  br i1 %i.x, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.y = load i8, ptr @backup, align 1, !range !10, !noundef !11
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = load i8, ptr @primary_resumed, align 1, !range !10
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond = select i1 %i.z, i1 %i.ab, i1 false
  %i.ac = tail call i32 @get_log_level() #14
  %i.ad = icmp sgt i32 %i.ac, 4                   ; 2 uses
  br i1 %or.cond, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  br i1 %i.ad, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.24) #14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store i1 true, ptr @restart_backup, align 1
  br label %bb.ab

bb.x:                                             ; preds = %bb.t
  br i1 %i.ad, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.25) #14
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ae = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @rollup_lock) #14 ; 2 uses
  %.not32 = icmp eq i32 %i.ae, 0
  br i1 %.not32, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.af = tail call ptr @__errno_location() #18
  store i32 %i.ae, ptr %i.af, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.shutdown_threads) #16
  unreachable

bb.ab:                                            ; preds = %bb.z, %bb.w, %bb.s
  %i.ag = load i8, ptr @backup, align 1, !range !10, !noundef !11
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = load i8, ptr @primary_resumed, align 1, !range !10
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond3 = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ak = load i64, ptr @rollup_handler_thread, align 8
  %i.al = tail call i32 @pthread_cancel(i64 noundef %i.ak) #14 ; 0 uses
end_hunk_0
begin_hunk_1_@_on_sigalrm:bb.a
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @get_log_level() #14
  %i.e = icmp sgt i32 %i.d, 8
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @log_var(i32 noundef 9, ptr noundef nonnull @.str.48) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @rlimits_use_max_nofile() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getrlimit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @setrlimit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @_usage(ptr noundef %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.52, ptr noundef %0) #19 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.53, i64 40, i64 1, ptr %i.c) #20 ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8
  %fwrite1 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 39, i64 1, ptr %i.d) #20 ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8
  %fwrite2 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 58, i64 1, ptr %i.e) #20 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8
  %fwrite3 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 72, i64 1, ptr %i.f) #20 ; 0 uses
  %i.g = load ptr, ptr @stderr, align 8
  %fwrite4 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 62, i64 1, ptr %i.g) #20 ; 0 uses
  %i.h = load ptr, ptr @stderr, align 8
  %fwrite5 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 164, i64 1, ptr %i.h) #20 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8
  %fwrite6 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 50, i64 1, ptr %i.i) #20 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #10

declare void @warning(ptr noundef, ...) local_unnamed_addr #2

declare void @print_slurm_version() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare i32 @log_alter(ptr noundef byval(%struct.log_options_t) align 8, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @log_set_timefmt(i32 noundef) local_unnamed_addr #2

declare i32 @gid_from_uid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @chown(ptr noundef readonly captures(none), i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @getpriority(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @setpriority(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @read_pidfile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @fd_get_readw_lock(i32 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare i32 @create_pidfile(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @xdaemon() local_unnamed_addr #2

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #5

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

declare ptr @acct_storage_g_get_clusters(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #5

declare i32 @clusteracct_storage_g_fini_ctld(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @slurm_msg_t_init(ptr noundef) local_unnamed_addr #2

declare void @slurm_set_addr(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare ptr @slurm_open_msg_conn(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @slurm_msg_set_r_uid(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @slurm_send_node_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @conn_g_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @pthread_setcancelstate(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pthread_setcanceltype(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #5

declare { i64, i64 } @timespec_now() local_unnamed_addr #2

declare i32 @acct_storage_g_roll_usage(ptr noundef, i64 noundef, i64 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare i64 @timer_get_duration(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @slurm_mktime(ptr noundef) local_unnamed_addr #2

declare i32 @pthread_cond_timedwait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { cold nounwind }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = distinct !{!12, !8, !9}
!13 = distinct !{!13, !8, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !8, !9}
!16 = distinct !{!16, !8, !9}
!17 = distinct !{!17, !8, !9}
!18 = distinct !{!18, !8, !9}
!19 = distinct !{!19, !8, !9}
end_hunk_1
