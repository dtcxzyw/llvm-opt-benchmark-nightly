Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/backfill?download=true
inline.NumInlined: 92
inline.NumDeleted: 25
begin_hunk_0_@backfill_agent:bb.a
  tail call void @list_destroy(ptr noundef nonnull %i.bv) #14
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.split.us
  store ptr null, ptr @het_job_list, align 8
  tail call void @xhash_free_ptr(ptr noundef nonnull @user_usage_map) #14
  %i.bw = load ptr, ptr @planned_bitmap, align 8
  %.not39 = icmp eq ptr %i.bw, null
  br i1 %.not39, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @slurm_bit_free(ptr noundef nonnull @planned_bitmap) #14
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store ptr null, ptr @planned_bitmap, align 8
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_my_sleep(i64 noundef range(i64 -2147483648000000, 2147483647000001) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timeval, align 8            ; 6 uses
  %3 = alloca %struct.timeval, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #14
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @sleep(i32 noundef 1) #14  ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add nsw i64 %i.d, %0                     ; 2 uses
  %i.f = mul nsw i64 %i.e, 1000
  %i.g = load i64, ptr %2, align 8                ; 2 uses
  %i.h = sdiv i64 %i.e, 1000000
  %i.i = add nsw i64 %i.h, %i.g
  store i64 %i.i, ptr %1, align 8
  %i.j = srem i64 %i.f, 1000000000
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @term_lock) #14 ; 2 uses
  %.not20 = icmp eq i32 %i.l, 0
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__errno_location() #15
  store i32 %i.l, ptr %i.m, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._my_sleep) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %.b = load i1, ptr @stop_backfill, align 1
  br i1 %.b, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 @pthread_cond_timedwait(ptr noundef nonnull @term_cond, ptr noundef nonnull @term_lock, ptr noundef nonnull %1) #14 ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 110, label %bb.h
    i32 0, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @__errno_location() #15
  store i32 %i.n, ptr %i.o, align 4
  %i.p = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.2, i32 noundef 719, ptr noundef nonnull @__func__._my_sleep) #14 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.f, %bb.e
  %i.q = call i32 @pthread_mutex_unlock(ptr noundef nonnull @term_lock) #14 ; 2 uses
  %.not21 = icmp eq i32 %i.q, 0
  br i1 %.not21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @__errno_location() #15
  store i32 %i.q, ptr %i.r, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._my_sleep) #16
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.s = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #14
  %.not22 = icmp eq i32 %i.s, 0
  br i1 %.not22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = trunc i64 %0 to i32
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.u = load i64, ptr %3, align 8
  %i.v = sub nsw i64 %i.u, %i.g
  %i.w = mul i64 %i.v, 1000000
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = sub i64 %i.y, %i.d
  %i.aa = add i64 %i.z, %i.w
  %i.ab = trunc i64 %i.aa to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.b
  %.0 = phi i32 [ 1000000, %bb.b ], [ %i.t, %bb.k ], [ %i.ab, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret i32 %.0
}

declare i32 @list_flush(ptr noundef) local_unnamed_addr #5

declare i32 @get_log_level() local_unnamed_addr #5

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @difftime(i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @job_is_completing(ptr noundef) local_unnamed_addr #5

declare void @lock_slurmctld(ptr noundef byval(%struct.slurmctld_lock_t) align 8) local_unnamed_addr #5

declare void @validate_all_reservations(i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

declare i32 @bb_g_job_try_stage_in() local_unnamed_addr #5

declare void @unlock_slurmctld(ptr noundef byval(%struct.slurmctld_lock_t) align 8) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #2

declare void @xhash_free_ptr(ptr noundef) local_unnamed_addr #5

declare ptr @xstrcasestr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #4

declare void @warning(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoull(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #6

declare i32 @xstrncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #6

declare ptr @bit_alloc(i64 noundef) local_unnamed_addr #5

declare ptr @next_node(ptr noundef) local_unnamed_addr #5

declare void @bit_set(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare i32 @sleep(i32 noundef) local_unnamed_addr #5

declare i32 @pthread_cond_timedwait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @fed_mgr_sibs_synced() local_unnamed_addr #5

declare i32 @bb_g_load_state(i1 noundef zeroext) local_unnamed_addr #5

declare { i64, i64 } @timespec_now() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @_handle_planned(i1 noundef zeroext %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @planned_bitmap, align 8   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = tail call i64 @bit_ffs_from_bit(ptr noundef nonnull %i.a, i64 noundef 0) #14 ; 3 uses
  %i.c = and i64 %i.b, 2147483648
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  br i1 %0, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.k
  %i.e = phi i64 [ %i.ap, %bb.k ], [ %i.b, %.lr.ph ] ; 2 uses
  %.02339.us = phi i1 [ %.4.us, %bb.k ], [ false, %.lr.ph ] ; 3 uses
  %.02438.us = phi i1 [ %.327.us, %bb.k ], [ false, %.lr.ph ]
  %i.f = load ptr, ptr @node_record_table_ptr, align 8
  %i.g = and i64 %i.e, 2147483647                 ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %.not32.us = icmp eq ptr %i.i, null
  br i1 %.not32.us, label %bb.j, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 328 ; 5 uses
  %i.k = load i32, ptr %i.j, align 8              ; 3 uses
  %i.l = and i32 %i.k, 15
  %i.m = icmp eq i32 %i.l, 3
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @node_select_stats_array, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.p = load i32, ptr %i.o, align 8
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8
  br i1 %.02339.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i32 @select_g_select_nodeinfo_set_all() #14 ; 0 uses
  %.pre.pre = load i32, ptr %i.j, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre = phi i32 [ %.pre.pre, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 122
  %i.v = load i16, ptr %i.u, align 2              ; 3 uses
  %i.w = load i16, ptr %i.s, align 8              ; 2 uses
  %.not33.us = icmp ne i16 %i.v, %i.w
  %i.x = sub i16 %i.v, %i.w
  %i.y = icmp ult i16 %i.x, %i.v
  %or.cond.us = and i1 %.not33.us, %i.y
  br i1 %or.cond.us, label %bb.f, label %.thread.us

.thread.us:                                       ; preds = %bb.e
  %i.z = and i32 %.pre, -2097153
  store i32 %i.z, ptr %i.j, align 8
  %i.aa = load ptr, ptr @planned_bitmap, align 8
  tail call void @bit_clear(ptr noundef %i.aa, i64 noundef %i.g) #14
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.ab = phi i32 [ %i.k, %bb.b ], [ %.pre, %bb.e ]
  %.2.us = phi i1 [ %.02339.us, %bb.b ], [ true, %bb.e ]
  %i.ac = or i32 %i.ab, 2097152
  store i32 %i.ac, ptr %i.j, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.us
  %.3.us = phi i1 [ true, %.thread.us ], [ %.2.us, %bb.f ] ; 3 uses
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ae = and i64 %i.ad, 4096
  %.not34.us = icmp eq i64 %i.ae, 0
  br i1 %.not34.us, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = tail call i32 @get_log_level() #14
  %i.ag = icmp sgt i32 %i.af, 3
  br i1 %i.ag, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load i32, ptr %i.j, align 8
  %i.ak = tail call ptr @node_state_string(i32 noundef %i.aj) #14
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.123, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._handle_planned, ptr noundef nonnull @.str.124, ptr noundef %i.ai, ptr noundef %i.ak) #14
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.us
  %i.al = load ptr, ptr @planned_bitmap, align 8
  tail call void @bit_clear(ptr noundef %i.al, i64 noundef %i.g) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.327.us = phi i1 [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ %.02438.us, %bb.j ] ; 2 uses
  %.4.us = phi i1 [ %.3.us, %bb.i ], [ %.3.us, %bb.h ], [ %.3.us, %bb.g ], [ %.02339.us, %bb.j ]
  %i.am = add nuw nsw i64 %i.e, 1
  %i.an = load ptr, ptr @planned_bitmap, align 8
  %i.ao = and i64 %i.am, 4294967295
  %i.ap = tail call i64 @bit_ffs_from_bit(ptr noundef %i.an, i64 noundef %i.ao) #14 ; 2 uses
  %i.aq = and i64 %i.ap, 2147483648
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !26

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.p
  %i.as = phi i64 [ %i.bn, %bb.p ], [ %i.b, %.lr.ph ] ; 2 uses
  %.02438 = phi i1 [ %.327, %bb.p ], [ false, %.lr.ph ]
  %i.at = load ptr, ptr @node_record_table_ptr, align 8
  %i.au = and i64 %i.as, 2147483647               ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %.not32 = icmp eq ptr %i.aw, null
  br i1 %.not32, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.split
  %i.ax = load ptr, ptr @planned_bitmap, align 8
  tail call void @bit_clear(ptr noundef %i.ax, i64 noundef %i.au) #14
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph.split
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 328 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = and i32 %i.az, -2097153
  store i32 %i.ba, ptr %i.ay, align 8
  %i.bb = load ptr, ptr @planned_bitmap, align 8
  tail call void @bit_clear(ptr noundef %i.bb, i64 noundef %i.au) #14
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bd = and i64 %i.bc, 4096
  %.not34 = icmp eq i64 %i.bd, 0
  br i1 %.not34, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = tail call i32 @get_log_level() #14
  %i.bf = icmp sgt i32 %i.be, 3
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 280
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = load i32, ptr %i.ay, align 8
  %i.bj = tail call ptr @node_state_string(i32 noundef %i.bi) #14
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.123, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._handle_planned, ptr noundef nonnull @.str.125, ptr noundef %i.bh, ptr noundef %i.bj) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n, %bb.l
  %.327 = phi i1 [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ %.02438, %bb.l ] ; 2 uses
  %i.bk = add nuw nsw i64 %i.as, 1
  %i.bl = load ptr, ptr @planned_bitmap, align 8
  %i.bm = and i64 %i.bk, 4294967295
  %i.bn = tail call i64 @bit_ffs_from_bit(ptr noundef %i.bl, i64 noundef %i.bm) #14 ; 2 uses
  %i.bo = and i64 %i.bn, 2147483648
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.split, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.p, %bb.k
  %.024.lcssa = phi i1 [ %.327.us, %bb.k ], [ %.327, %bb.p ]
  br i1 %.024.lcssa, label %bb.q, label %.critedge

bb.q:                                             ; preds = %._crit_edge
  %i.bq = tail call i64 @time(ptr noundef null) #14
  store i64 %i.bq, ptr @last_node_update, align 8
  br label %.critedge

.critedge:                                        ; preds = %.preheader, %._crit_edge, %bb.q, %bb.a
  ret void
}

declare ptr @build_job_queue(i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

declare i32 @list_count(ptr noundef) local_unnamed_addr #5

declare i32 @list_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @_clear_job_estimates(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 255
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 976
  tail call void @slurm_xfree(ptr noundef nonnull %i.f) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_set_hetjob_details(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 255
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.ar

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.ar, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.h = load i32, ptr %i.g, align 8
  %.not16 = icmp eq i32 %i.h, 0
  br i1 %.not16, label %bb.d, label %bb.ar

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %bb.ar, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.l, null
  br i1 %.not18, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 12, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 1637, ptr noundef nonnull @__func__._set_hetjob_details) #14 ; 2 uses
  store ptr %i.m, ptr %i.k, align 8
  %.val.pre = load ptr, ptr %i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.val = phi ptr [ %.val.pre, %bb.f ], [ %i.j, %bb.e ]
  %i.n = phi ptr [ %i.m, %bb.f ], [ %i.l, %bb.e ] ; 4 uses
  %i.o = tail call ptr @list_iterator_create(ptr noundef %.val) #14 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.p = tail call ptr @list_next(ptr noundef %i.o) #14 ; 2 uses
  %.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.p, null ; 2 uses
  br i1 %.not.not.not.i.not.not.not.not.not, label %bb.i, label %_hetjob_any_resv.exit

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 912
  %i.r = load i32, ptr %i.q, align 8
  %.not6.not.i = icmp eq i32 %i.r, 0
  br i1 %.not6.not.i, label %bb.h, label %_hetjob_any_resv.exit, !llvm.loop !27

_hetjob_any_resv.exit:                            ; preds = %bb.h, %bb.i
  tail call void @list_iterator_destroy(ptr noundef %i.o) #14
  %i.s = zext i1 %.not.not.not.i.not.not.not.not.not to i8
  store i8 %i.s, ptr %i.n, align 4
  %.val19 = load ptr, ptr %i.i, align 8
  %i.t = load i16, ptr @bf_hetjob_prio, align 2
  %i.u = and i16 %i.t, 1
  %.not.i = icmp eq i16 %i.u, 0
  %spec.store.select.i = select i1 %.not.i, i32 0, i32 65533
  %i.v = tail call ptr @list_iterator_create(ptr noundef %.val19) #14 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.z, %_hetjob_any_resv.exit
  %.05.i = phi i32 [ %spec.store.select.i, %_hetjob_any_resv.exit ], [ %.4.i, %bb.z ] ; 7 uses
  %.0.i = phi i32 [ 0, %_hetjob_any_resv.exit ], [ %.2.i, %bb.z ] ; 4 uses
  %i.w = tail call ptr @list_next(ptr noundef %i.v) #14 ; 3 uses
  %.not24.i = icmp eq ptr %i.w, null
  br i1 %.not24.i, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 760 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not25.i = icmp eq ptr %i.y, null
  br i1 %.not25.i, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = tail call i32 @list_count(ptr noundef nonnull %i.y) #14
  %.not26.i = icmp eq i32 %i.z, 0
  br i1 %.not26.i, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %i.x, align 8
  %i.ab = tail call ptr @list_iterator_create(ptr noundef %i.aa) #14 ; 3 uses
  %i.ac = tail call ptr @list_next(ptr noundef %i.ab) #14 ; 2 uses
  %.not2710.i = icmp eq ptr %i.ac, null
  br i1 %.not2710.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %_adjust_hetjob_prio.exit.i
  %i.ad = phi ptr [ %i.ao, %_adjust_hetjob_prio.exit.i ], [ %i.ac, %bb.m ]
  %.112.i = phi i32 [ %i.an, %_adjust_hetjob_prio.exit.i ], [ %.0.i, %bb.m ]
  %.1611.i = phi i32 [ %.27.i, %_adjust_hetjob_prio.exit.i ], [ %.05.i, %bb.m ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 278
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = zext i16 %i.af to i32                   ; 4 uses
  %.not.i.i = icmp eq i32 %.1611.i, 0
  br i1 %.not.i.i, label %_adjust_hetjob_prio.exit.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.ah = load i16, ptr @bf_hetjob_prio, align 2
  %i.ai = zext nneg i16 %i.ah to i32              ; 3 uses
  %i.aj = and i32 %i.ai, 1
  %.not15.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not15.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %..i.i = tail call i32 @llvm.umin.i32(i32 %.1611.i, i32 %i.ag)
  br label %_adjust_hetjob_prio.exit.i

bb.p:                                             ; preds = %bb.n
  %i.ak = and i32 %i.ai, 2
  %.not16.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not16.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.18.i.i = tail call i32 @llvm.umax.i32(i32 %.1611.i, i32 %i.ag)
  br label %_adjust_hetjob_prio.exit.i

bb.r:                                             ; preds = %bb.p
  %i.al = and i32 %i.ai, 4
  %.not17.i.i = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not17.i.i, i32 0, i32 %i.ag
  %spec.select.i = add i32 %i.am, %.1611.i
  br label %_adjust_hetjob_prio.exit.i

_adjust_hetjob_prio.exit.i:                       ; preds = %bb.r, %bb.q, %bb.o, %.lr.ph.i
  %.27.i = phi i32 [ %spec.select.i, %bb.r ], [ %..i.i, %bb.o ], [ %i.ag, %.lr.ph.i ], [ %.18.i.i, %bb.q ] ; 2 uses
  %i.an = add i32 %.112.i, 1                      ; 2 uses
  %i.ao = tail call ptr @list_next(ptr noundef %i.ab) #14 ; 2 uses
  %.not27.i = icmp eq ptr %i.ao, null
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !28

._crit_edge.i:                                    ; preds = %_adjust_hetjob_prio.exit.i, %bb.m
  %.16.lcssa.i = phi i32 [ %.05.i, %bb.m ], [ %.27.i, %_adjust_hetjob_prio.exit.i ]
  %.1.lcssa.i = phi i32 [ %.0.i, %bb.m ], [ %i.an, %_adjust_hetjob_prio.exit.i ]
  tail call void @list_iterator_destroy(ptr noundef %i.ab) #14
  br label %bb.y

bb.s:                                             ; preds = %bb.l, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 776
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 278
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = zext i16 %i.as to i32                   ; 4 uses
end_hunk_0
