Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/backfill?download=true
inline.NumInlined: 92
inline.NumDeleted: 25
begin_hunk_0_@_attempt_backfill:bb.a
bb.wg:                                            ; preds = %bb.wf
  %i.bis = load i32, ptr %i.b, align 4            ; 2 uses
  %i.bit = load i32, ptr @bf_node_space_size, align 4
  %.not9542433 = icmp sgt i32 %i.bis, %i.bit
  br i1 %.not9542433, label %._crit_edge2437, label %.lr.ph2436.preheader

.lr.ph2436.preheader:                             ; preds = %bb.wg
  %i.biu = sext i32 %i.bis to i64
  br label %.lr.ph2436

.lr.ph2436:                                       ; preds = %.lr.ph2436.preheader, %bb.wh
  %indvars.iv = phi i64 [ %i.biu, %.lr.ph2436.preheader ], [ %indvars.iv.next, %bb.wh ] ; 3 uses
  %i.biv = getelementptr inbounds [40 x i8], ptr %.pre3668, i64 %indvars.iv
  %i.biw = getelementptr inbounds nuw i8, ptr %i.biv, i64 16 ; 3 uses
  %i.bix = load ptr, ptr %i.biw, align 8
  %.not955 = icmp eq ptr %i.bix, null
  br i1 %.not955, label %._crit_edge2437, label %bb.wh

bb.wh:                                            ; preds = %.lr.ph2436
  call void @slurm_bit_free(ptr noundef nonnull %i.biw) #14
  store ptr null, ptr %i.biw, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.biy = load i32, ptr @bf_node_space_size, align 4
  %i.biz = sext i32 %i.biy to i64
  %.not954.not = icmp slt i64 %indvars.iv, %i.biz
  br i1 %.not954.not, label %.lr.ph2436, label %._crit_edge2437, !llvm.loop !23

._crit_edge2437:                                  ; preds = %bb.wh, %.lr.ph2436, %bb.wg
  call void @slurm_xfree(ptr noundef nonnull %i.o) #14
  %.not956 = icmp eq ptr %i.aj, null
  br i1 %.not956, label %bb.wj, label %bb.wi

bb.wi:                                            ; preds = %._crit_edge2437
  call void @list_destroy(ptr noundef nonnull %i.aj) #14
  br label %bb.wj

bb.wj:                                            ; preds = %bb.wi, %._crit_edge2437
  %.not957 = icmp eq ptr %i.cs, null
  br i1 %.not957, label %bb.wl, label %bb.wk

bb.wk:                                            ; preds = %bb.wj
  call void @list_destroy(ptr noundef nonnull %i.cs) #14
  br label %bb.wl

bb.wl:                                            ; preds = %bb.wk, %bb.wj
  call void @slurm_xfree(ptr noundef nonnull %i.p) #14
  %.b750 = load i1, ptr @bf_topopt_enable, align 1
  br i1 %.b750, label %bb.wm, label %bb.wn

bb.wm:                                            ; preds = %bb.wl
  call void @fini_oracle() #14
  br label %bb.wn

bb.wn:                                            ; preds = %bb.wm, %bb.wl
  %i.bja = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #14 ; 0 uses
  %i.bjb = load i32, ptr %i.b, align 4            ; 2 uses
  %.val995 = load i64, ptr %0, align 8
  %i.bjc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val996 = load i64, ptr %i.bjc, align 8
  %.val997 = load i64, ptr %1, align 8
  %i.bjd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val998 = load i64, ptr %i.bjd, align 8
  %i.bje = sub nsw i64 %.val997, %.val995
  %i.bjf = mul i64 %i.bje, 1000000
  %i.bjg = sub i64 %.val998, %.val996
  %i.bjh = add i64 %i.bjg, %i.bjf
  %i.bji = trunc i64 %i.bjh to i32
  %i.bjj = load i32, ptr @bf_sleep_usec, align 4
  %i.bjk = sub i32 %i.bji, %i.bjj                 ; 4 uses
  %i.bjl = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 112), align 8
  %i.bjm = add i32 %i.bjl, 1
  store i32 %i.bjm, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 112), align 8
  %i.bjn = zext i32 %i.bjk to i64
  %i.bjo = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 128), align 8
  %i.bjp = add i64 %i.bjo, %i.bjn
  store i64 %i.bjp, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 128), align 8
  store i32 %i.bjk, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 116), align 4
  %i.bjq = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 168), align 8
  %i.bjr = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 136), align 8
  %i.bjs = add <2 x i32> %i.bjr, %i.bjq
  store <2 x i32> %i.bjs, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 136), align 8
  %i.bjt = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 120), align 8
  %i.bju = icmp ugt i32 %i.bjk, %i.bjt
  br i1 %i.bju, label %bb.wo, label %_do_diag_stats.exit

bb.wo:                                            ; preds = %bb.wn
  store i32 %i.bjk, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 120), align 8
  br label %_do_diag_stats.exit

_do_diag_stats.exit:                              ; preds = %bb.wn, %bb.wo
  store i32 %i.bjb, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 184), align 8
  %i.bjv = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 188), align 4
  %i.bjw = add i32 %i.bjv, %i.bjb
  store i32 %i.bjw, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 188), align 4
  %i.bjx = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bjy = and i64 %i.bjx, 4096
  %.not958 = icmp eq i64 %i.bjy, 0
  br i1 %.not958, label %bb.wr, label %bb.wp

bb.wp:                                            ; preds = %_do_diag_stats.exit
  %i.bjz = call { i64, i64 } @timespec_now() #14  ; 2 uses
  %i.bka = call i32 @get_log_level() #14
  %i.bkb = icmp sgt i32 %i.bka, 2
  br i1 %i.bkb, label %bb.wq, label %bb.wr

bb.wq:                                            ; preds = %bb.wp
  %i.bkc = extractvalue { i64, i64 } %i.bjz, 1
  %i.bkd = extractvalue { i64, i64 } %i.bjz, 0
  %i.bke = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 168), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @timer_duration_str(ptr dead_on_unwind nonnull writable sret(%struct.timer_str_t) align 1 %13, i64 %.sroa.0472.611961231, i64 %.sroa.9475.611951232, i64 %i.bkd, i64 %i.bkc) #14
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.121, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._attempt_backfill, i32 noundef %i.bke, i32 noundef %.760411911235, ptr noundef nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.wr

bb.wr:                                            ; preds = %_do_diag_stats.exit, %bb.wq, %bb.wp
  %i.bkf = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 480)) #14 ; 2 uses
  %.not959 = icmp eq i32 %i.bkf, 0
  br i1 %.not959, label %bb.wt, label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  %i.bkg = tail call ptr @__errno_location() #15
  store i32 %i.bkf, ptr %i.bkg, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._attempt_backfill) #16
  unreachable

bb.wt:                                            ; preds = %bb.wr
  %i.bkh = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 324), align 4
  %i.bki = icmp sgt i32 %i.bkh, 149
  br i1 %i.bki, label %bb.wu, label %bb.ww

bb.wu:                                            ; preds = %bb.wt
  %i.bkj = call i32 @get_log_level() #14
  %i.bkk = icmp sgt i32 %i.bkj, 2
  br i1 %i.bkk, label %bb.wv, label %bb.ww

bb.wv:                                            ; preds = %bb.wu
  %i.bkl = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 324), align 4
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.122, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._attempt_backfill, i32 noundef %i.bkl) #14
  br label %bb.ww

bb.ww:                                            ; preds = %bb.wt, %bb.wv, %bb.wu
  %i.bkm = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 480)) #14 ; 2 uses
  %.not960 = icmp eq i32 %i.bkm, 0
  br i1 %.not960, label %bb.wy, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.bkn = tail call ptr @__errno_location() #15
  store i32 %i.bkm, ptr %i.bkn, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._attempt_backfill) #16
  unreachable

bb.wy:                                            ; preds = %bb.ww, %bb.k, %bb.l, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare void @list_destroy(ptr noundef) local_unnamed_addr #5

declare void @slurm_bit_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @backfill_agent(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_load_config()
  %i.a = tail call i64 @time(ptr noundef null) #14
  store i64 %i.a, ptr @backfill_agent.last_backfill_time, align 8
  tail call fastcc void @_init_planned_bitmap()
  %i.b = tail call ptr @list_create(ptr noundef nonnull @_het_job_map_del) #14
  store ptr %i.b, ptr @het_job_list, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.backedge, %bb.a
  %.018.ph = phi i1 [ false, %bb.a ], [ %.018.ph.be, %thread-pre-split.backedge ] ; 4 uses
  %.0.ph = phi i32 [ 0, %bb.a ], [ %.0.ph.be, %thread-pre-split.backedge ] ; 9 uses
  %.b29.pr = load i1, ptr @stop_backfill, align 1
  br i1 %.b29.pr, label %.split.us, label %thread-pre-split.split.us

thread-pre-split.split.us:                        ; preds = %thread-pre-split
  br i1 %.018.ph, label %.critedge, label %.critedge179

.critedge:                                        ; preds = %thread-pre-split.split.us, %bb.b
  %i.c = tail call fastcc i32 @_my_sleep(i64 noundef 1000000) ; 0 uses
  %.b.us = load i1, ptr @stop_backfill, align 1
  br i1 %.b.us, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 321), align 1, !range !12, !noundef !13
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.critedge, label %.split75.us, !llvm.loop !24

.critedge179:                                     ; preds = %thread-pre-split.split.us, %bb.c
  %i.f = load i32, ptr @backfill_interval, align 4 ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  %i.h = sext i32 %i.f to i64
  %i.i = mul nsw i64 %i.h, 1000000
  %.sink = select i1 %i.g, i64 30000000, i64 %i.i
  %i.j = tail call fastcc i32 @_my_sleep(i64 noundef %.sink) ; 0 uses
  %.b = load i1, ptr @stop_backfill, align 1
  br i1 %.b, label %.split.us, label %bb.c

bb.c:                                             ; preds = %.critedge179
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 321), align 1, !range !12, !noundef !13
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.critedge179, label %.split75.us, !llvm.loop !24

.split75.us:                                      ; preds = %bb.c, %bb.b
  %i.m = load ptr, ptr @het_job_list, align 8
  %i.n = tail call i32 @list_flush(ptr noundef %i.m) #14 ; 0 uses
  %i.o = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @config_lock) #14 ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split75.us
  %i.p = tail call ptr @__errno_location() #15
  store i32 %i.o, ptr %i.p, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.backfill_agent) #16
  unreachable

bb.e:                                             ; preds = %.split75.us
  %.b30 = load i1, ptr @config_flag, align 1
  br i1 %.b30, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  store i1 false, ptr @config_flag, align 1
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @config_lock) #14 ; 2 uses
  %.not31 = icmp eq i32 %i.q, 0
  br i1 %.not31, label %bb.h, label %bb.g

.thread:                                          ; preds = %bb.e
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @config_lock) #14 ; 2 uses
  %.not3144 = icmp eq i32 %i.r, 0
  br i1 %.not3144, label %.thread45, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.s = phi i32 [ %i.r, %.thread ], [ %i.q, %bb.f ]
  %i.t = tail call ptr @__errno_location() #15
  store i32 %i.s, ptr %i.t, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.backfill_agent) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @_load_config()
  br label %.thread45

.thread45:                                        ; preds = %.thread, %bb.h
  %i.u = load i32, ptr @backfill_interval, align 4
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.thread45
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.x = and i64 %i.w, 4096
  %.not37 = icmp eq i64 %i.x, 0
  br i1 %.not37, label %thread-pre-split.backedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call i32 @get_log_level() #14
  %i.z = icmp sgt i32 %i.y, 3
  br i1 %i.z, label %bb.k, label %thread-pre-split.backedge

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.4, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.backfill_agent, i32 noundef 30) #14
  br label %thread-pre-split.backedge

bb.l:                                             ; preds = %.thread45
  %i.aa = tail call i64 @time(ptr noundef null) #14
  %i.ab = load i64, ptr @backfill_agent.last_backfill_time, align 8
  %i.ac = tail call double @difftime(i64 noundef %i.aa, i64 noundef %i.ab) #15
  %i.ad = load i32, ptr @backfill_interval, align 4
  %i.ae = sitofp i32 %i.ad to double
  %i.af = fcmp olt double %i.ac, %i.ae
  br i1 %i.af, label %thread-pre-split.backedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call zeroext i1 @job_is_completing(ptr noundef null) #14
  br i1 %i.ag, label %thread-pre-split.backedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 480)) #14 ; 2 uses
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call ptr @__errno_location() #15
  store i32 %i.ah, ptr %i.ai, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._many_pending_rpcs) #16
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aj = load i32, ptr @max_rpc_cnt, align 4     ; 2 uses
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 324), align 4
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 480)) #14 ; 2 uses
  %.not9.i = icmp eq i32 %i.al, 0
  br i1 %.not9.i, label %_many_pending_rpcs.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = tail call ptr @__errno_location() #15
  store i32 %i.al, ptr %i.am, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._many_pending_rpcs) #16
  unreachable

_many_pending_rpcs.exit:                          ; preds = %bb.p
  %.not8.i = icmp sge i32 %i.ak, %i.aj
  %i.an = icmp sgt i32 %i.aj, 0
  %or.cond.not.i = select i1 %i.an, i1 %.not8.i, i1 false
  br i1 %or.cond.not.i, label %thread-pre-split.backedge, label %bb.r

bb.r:                                             ; preds = %_many_pending_rpcs.exit
  %i.ao = load i64, ptr @backfill_agent.last_backfill_time, align 8 ; 4 uses
  %i.ap = load i64, ptr @last_job_update, align 8
  %.not.i40 = icmp sge i64 %i.ap, %i.ao
  %i.aq = load i64, ptr @last_node_update, align 8
  %.not6.i = icmp sge i64 %i.aq, %i.ao
  %or.cond.not12.i = select i1 %.not.i40, i1 true, i1 %.not6.i
  %i.ar = load i64, ptr @last_part_update, align 8
  %.not7.i = icmp sge i64 %i.ar, %i.ao
  %or.cond9.not11.i = select i1 %or.cond.not12.i, i1 true, i1 %.not7.i
  %i.as = load i64, ptr @last_resv_update, align 8
  %.not8.i41 = icmp sge i64 %i.as, %i.ao
  %or.cond10.not.i = select i1 %or.cond9.not11.i, i1 true, i1 %.not8.i41
  br i1 %or.cond10.not.i, label %bb.s, label %thread-pre-split.backedge

bb.s:                                             ; preds = %bb.r
  %i.at = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @check_bf_running_lock) #14 ; 2 uses
  %.not32 = icmp eq i32 %i.at, 0
  br i1 %.not32, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = tail call ptr @__errno_location() #15
  store i32 %i.at, ptr %i.au, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.backfill_agent) #16
  unreachable

bb.u:                                             ; preds = %bb.s
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 108), align 4
  %i.av = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @check_bf_running_lock) #14 ; 2 uses
  %.not33 = icmp eq i32 %i.av, 0
  br i1 %.not33, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = tail call ptr @__errno_location() #15
  store i32 %i.av, ptr %i.aw, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.backfill_agent) #16
  unreachable

bb.w:                                             ; preds = %bb.u
  tail call void @lock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._yield_locks.all_locks) #14
  tail call void @validate_all_reservations(i1 noundef zeroext true, i1 noundef zeroext false) #14
  %i.ax = add nsw i32 %.0.ph, 1
  %i.ay = and i32 %.0.ph, 1
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ba = load ptr, ptr @het_job_list, align 8
  %i.bb = tail call ptr @list_iterator_create(ptr noundef %i.ba) #14 ; 4 uses
  %i.bc = tail call ptr @list_next(ptr noundef %i.bb) #14 ; 2 uses
  %.not6.i42 = icmp eq ptr %i.bc, null
  br i1 %.not6.i42, label %_het_job_start_clear.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %bb.aa
  %i.bd = phi ptr [ %i.bl, %bb.aa ], [ %i.bc, %bb.x ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i
  %i.bh = tail call i32 @list_delete_item(ptr noundef %i.bb) #14 ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i
  store i64 0, ptr %i.be, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call i32 @list_flush(ptr noundef %i.bj) #14 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bl = tail call ptr @list_next(ptr noundef %i.bb) #14 ; 2 uses
  %.not.i43 = icmp eq ptr %i.bl, null
  br i1 %.not.i43, label %_het_job_start_clear.exit, label %.lr.ph.i, !llvm.loop !25

_het_job_start_clear.exit:                        ; preds = %bb.aa, %bb.x
  tail call void @list_iterator_destroy(ptr noundef %i.bb) #14
  br label %bb.ab

bb.ab:                                            ; preds = %_het_job_start_clear.exit, %bb.w
  tail call fastcc void @_attempt_backfill()
  %i.bm = tail call i64 @time(ptr noundef null) #14
  store i64 %i.bm, ptr @backfill_agent.last_backfill_time, align 8
  %i.bn = tail call i32 @bb_g_job_try_stage_in() #14 ; 0 uses
  tail call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._yield_locks.all_locks) #14
  %i.bo = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @check_bf_running_lock) #14 ; 2 uses
  %.not34 = icmp eq i32 %i.bo, 0
  br i1 %.not34, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bp = tail call ptr @__errno_location() #15
  store i32 %i.bo, ptr %i.bp, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.backfill_agent) #16
  unreachable

bb.ad:                                            ; preds = %bb.ab
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_diag_stats, i64 108), align 4
  %i.bq = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull @check_bf_running_cond) #14 ; 2 uses
  %.not35 = icmp eq i32 %i.bq, 0
  br i1 %.not35, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.br = tail call ptr @__errno_location() #15
  store i32 %i.bq, ptr %i.br, align 4
  %i.bs = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 1208, ptr noundef nonnull @__func__.backfill_agent) #14 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bt = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @check_bf_running_lock) #14 ; 2 uses
  %.not36 = icmp eq i32 %i.bt, 0
  br i1 %.not36, label %thread-pre-split.backedge, label %bb.ag

thread-pre-split.backedge:                        ; preds = %bb.af, %bb.j, %bb.k, %bb.i, %bb.r, %_many_pending_rpcs.exit, %bb.m, %bb.l
  %.018.ph.be = phi i1 [ false, %bb.af ], [ %.018.ph, %bb.i ], [ %.018.ph, %bb.j ], [ %.018.ph, %bb.k ], [ true, %bb.r ], [ true, %_many_pending_rpcs.exit ], [ true, %bb.m ], [ true, %bb.l ]
  %.0.ph.be = phi i32 [ %i.ax, %bb.af ], [ %.0.ph, %bb.i ], [ %.0.ph, %bb.j ], [ %.0.ph, %bb.k ], [ %.0.ph, %bb.r ], [ %.0.ph, %_many_pending_rpcs.exit ], [ %.0.ph, %bb.m ], [ %.0.ph, %bb.l ]
  br label %thread-pre-split, !llvm.loop !24

bb.ag:                                            ; preds = %bb.af
  %i.bu = tail call ptr @__errno_location() #15
  store i32 %i.bt, ptr %i.bu, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.backfill_agent) #16
  unreachable

.split.us:                                        ; preds = %thread-pre-split, %.critedge179, %.critedge
  %i.bv = load ptr, ptr @het_job_list, align 8    ; 2 uses
  %.not38 = icmp eq ptr %i.bv, null
  br i1 %.not38, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.split.us
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
end_hunk_0
