Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/controller?download=true
inline.NumInlined: 31
inline.NumDeleted: 19
begin_hunk_0_@main:bb.a
  %.not197 = icmp eq i32 %i.lk, 0
  br i1 %.not197, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.ll = call ptr @slurm_strerror(i32 noundef %i.lk) #18
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.main, ptr noundef %i.ll) #19
  unreachable

bb.io:                                            ; preds = %bb.im
  %i.lm = call i32 @controller_init_scheduling(i1 noundef zeroext %.b145)
  %.not198 = icmp eq i32 %i.lm, 0
  br i1 %.not198, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.63) #19
  unreachable

bb.iq:                                            ; preds = %bb.io
  %.b = load i1, ptr @original, align 1
  %not..b = xor i1 %.b, true
  %or.cond32 = select i1 %not..b, i1 true, i1 %.b145
  br i1 %or.cond32, label %bb.it, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  call void @notify_parent_of_success()
  %.b140 = load i1, ptr @under_systemd, align 1
  br i1 %.b140, label %.thread218, label %bb.is

bb.is:                                            ; preds = %bb.ir
  call fastcc void @_update_pidfile()
  br label %.thread218

bb.it:                                            ; preds = %bb.iq
  br i1 %.1102, label %.thread218, label %bb.iu

.thread218:                                       ; preds = %bb.ir, %bb.is, %bb.it
  call fastcc void @_post_reconfig()
  br label %bb.iu

bb.iu:                                            ; preds = %.thread218, %bb.it
  %.2103220 = phi i1 [ true, %.thread218 ], [ false, %bb.it ] ; 2 uses
  call fastcc void @_slurmctld_background()
  call void @controller_fini_scheduling()
  call void @agent_fini() #18
  call void @track_script_flush() #18
  call void @slurmscriptd_flush() #18
  %i.ln = call i32 @switch_g_save() #18           ; 0 uses
  %i.lo = call i32 @priority_g_fini() #18         ; 0 uses
  call void @shutdown_state_save() #18
  %i.lp = call i32 @pthread_mutex_lock(ptr noundef nonnull @purge_thread_lock) #18 ; 2 uses
  %.not199 = icmp eq i32 %i.lp, 0
  br i1 %.not199, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.lq = tail call ptr @__errno_location() #20
  store i32 %i.lp, ptr %i.lq, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.main) #19
  unreachable

bb.iw:                                            ; preds = %bb.iu
  %i.lr = call i32 @pthread_cond_signal(ptr noundef nonnull @purge_thread_cond) #18 ; 2 uses
  %.not200 = icmp eq i32 %i.lr, 0
  br i1 %.not200, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.ls = tail call ptr @__errno_location() #20
  store i32 %i.lr, ptr %i.ls, align 4
  %i.lt = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef 1154, ptr noundef nonnull @__func__.main) #18 ; 0 uses
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  %i.lu = call i32 @pthread_mutex_unlock(ptr noundef nonnull @purge_thread_lock) #18 ; 2 uses
  %.not201 = icmp eq i32 %i.lu, 0
  br i1 %.not201, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.lv = tail call ptr @__errno_location() #20
  store i32 %i.lu, ptr %i.lv, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.main) #19
  unreachable

bb.ja:                                            ; preds = %bb.iy
  %i.lw = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 544), align 8
  %i.lx = call i32 @threadpool_join(i64 noundef %i.lw, ptr noundef nonnull @__func__.main) #18 ; 2 uses
  %.not202 = icmp eq i32 %i.lx, 0
  br i1 %.not202, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.ly = tail call ptr @__errno_location() #20
  store i32 %i.lx, ptr %i.ly, align 4
  br label %bb.jd

bb.jc:                                            ; preds = %bb.ja
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 544), align 8
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %i.lz = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 536), align 8
  %i.ma = call i32 @threadpool_join(i64 noundef %i.lz, ptr noundef nonnull @__func__.main) #18 ; 2 uses
  %.not203 = icmp eq i32 %i.ma, 0
  br i1 %.not203, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.mb = tail call ptr @__errno_location() #20
  store i32 %i.ma, ptr %i.mb, align 4
  br label %bb.jg

bb.jf:                                            ; preds = %bb.jd
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 536), align 8
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.je
  %i.mc = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 56)) #18 ; 2 uses
  %.not204 = icmp eq i32 %i.mc, 0
  br i1 %.not204, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.md = tail call ptr @__errno_location() #20
  store i32 %i.mc, ptr %i.md, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.main) #19
  unreachable

bb.ji:                                            ; preds = %bb.jg
  %i.me = call i32 @pthread_cond_broadcast(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 8)) #18 ; 2 uses
  %.not205 = icmp eq i32 %i.me, 0
  br i1 %.not205, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.mf = tail call ptr @__errno_location() #20
  store i32 %i.me, ptr %i.mf, align 4
  %i.mg = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i32 noundef 1159, ptr noundef nonnull @__func__.main) #18 ; 0 uses
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %i.mh = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 56)) #18 ; 2 uses
  %.not206 = icmp eq i32 %i.mh, 0
  br i1 %.not206, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.mi = tail call ptr @__errno_location() #20
  store i32 %i.mh, ptr %i.mi, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.main) #19
  unreachable

bb.jm:                                            ; preds = %bb.jk
  %i.mj = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 520), align 8
  %i.mk = call i32 @threadpool_join(i64 noundef %i.mj, ptr noundef nonnull @__func__.main) #18 ; 2 uses
  %.not207 = icmp eq i32 %i.mk, 0
  br i1 %.not207, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.ml = tail call ptr @__errno_location() #20
  store i32 %i.mk, ptr %i.ml, align 4
  br label %bb.jp

bb.jo:                                            ; preds = %bb.jm
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 520), align 8
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  call void @run_command_shutdown() #18
  %i.mm = call i32 @bb_g_fini() #18               ; 0 uses
  %i.mn = call i32 @mcs_g_fini() #18              ; 0 uses
  %i.mo = call i32 @fed_mgr_fini() #18            ; 0 uses
  call void @ctld_assoc_mgr_fini()
  %i.mp = load ptr, ptr @acct_db_conn, align 8
  %.not.i217 = icmp eq ptr %i.mp, null
  br i1 %.not.i217, label %_close_acct_storage_conn.exit, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.mq = call i32 @acct_storage_g_close_connection(ptr noundef nonnull @acct_db_conn) #18 ; 0 uses
  br label %_close_acct_storage_conn.exit

_close_acct_storage_conn.exit:                    ; preds = %bb.jp, %bb.jq
  %i.mr = call i32 @acct_storage_g_fini() #18     ; 0 uses
  call void @slurm_persist_conn_recv_server_fini() #18
  call void @power_save_fini() #18
  %.b144 = load i1, ptr @reconfig, align 1
  br i1 %.b144, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %_close_acct_storage_conn.exit
  call fastcc void @_attempt_reconfig()
  br label %bb.gx, !llvm.loop !15

bb.js:                                            ; preds = %_close_acct_storage_conn.exit
  call void @config_power_mgr_fini() #18
  call void @heartbeat_stop() #18
  %i.ms = load i8, ptr @slurmctld_primary, align 1, !range !12, !noundef !13
  %i.mt = trunc nuw i8 %i.ms to i1
  br i1 %i.mt, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  call fastcc void @_run_primary_prog(i1 noundef zeroext false)
  %.pre = load i8, ptr @slurmctld_primary, align 1, !range !12
  %i.mu = trunc nuw i8 %.pre to i1
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  %i.mv = phi i1 [ %i.mu, %bb.jt ], [ false, %bb.js ]
  %i.mw = load i8, ptr getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 320), align 8, !range !12, !noundef !13
  %11 = trunc nuw i8 %i.mw to i1
  %.not209 = xor i1 %11, true
  %or.cond = select i1 %.not209, i1 true, i1 %i.mv
  br i1 %or.cond, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  store i32 2, ptr @recover, align 4
  %i.mx = call i32 @run_command_init(i32 noundef 0, ptr noundef null, ptr noundef null) #18 ; 0 uses
  br label %.outer

bb.jw:                                            ; preds = %bb.ju
  %i.my = call i32 @slurmscriptd_fini() #18       ; 0 uses
  %i.mz = call i32 @jobcomp_g_fini() #18          ; 0 uses
  %.b139 = load i1, ptr @under_systemd, align 1
  br i1 %.b139, label %bb.ka, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.na = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1296), align 8
  %i.nb = call i32 @unlink(ptr noundef %i.na) #18
  %i.nc = icmp slt i32 %i.nb, 0
  br i1 %i.nc, label %bb.jy, label %bb.ka

bb.jy:                                            ; preds = %bb.jx
  %i.nd = call i32 @get_log_level() #18
  %i.ne = icmp sgt i32 %i.nd, 3
  br i1 %i.ne, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.nf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1296), align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.67, ptr noundef %i.nf) #18
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jy, %bb.jz, %bb.jx, %bb.jw
  call void @conmgr_request_shutdown() #18
  call void @forward_fini() #18
  call void @conmgr_fini() #18
  call void @http_fini() #18
  call void @http_switch_fini() #18
  call void @threadpool_fini() #18
  call void @rate_limit_shutdown() #18
  call void @probe_fini() #18
  call void @log_fini() #18
  call void @sched_log_fini() #18
  %.b146 = load i1, ptr @dump_core, align 1
  br i1 %.b146, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  call void @abort() #19
  unreachable

bb.kc:                                            ; preds = %bb.ka
  call void @exit(i32 noundef 0) #19
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @prep_prolog_slurmctld_callback(i32 noundef, i32 noundef, i1 noundef zeroext) #2

declare void @prep_epilog_slurmctld_callback(i32 noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @agent_queue_request(ptr noundef) #2

declare ptr @find_job(ptr noundef) #2

declare ptr @find_job_array_rec(i32 noundef, i32 noundef) #2

declare ptr @find_job_record(i32 noundef) #2

declare void @job_config_fini(ptr noundef) #2

declare void @stepmgr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #4

declare void @closeall_init() local_unnamed_addr #2

declare void @closeall(i32 noundef) local_unnamed_addr #2

declare i32 @log_init(ptr noundef, ptr noundef byval(%struct.log_options_t) align 8, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sched_log_init(ptr noundef, ptr noundef byval(%struct.log_options_t) align 8, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @slurm_conf_init(ptr noundef) local_unnamed_addr #2

declare void @lock_slurmctld(ptr noundef byval(%struct.slurmctld_lock_t) align 8) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @update_logging() local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1232), align 8 ; 5 uses
  %i.b = tail call i32 @gid_from_uid(i32 noundef %i.a) #18 ; 4 uses
  %i.c = load i32, ptr @debug_level, align 4      ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %thread-pre-split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @llvm.smin.i32(i32 %i.c, i32 6)
  %i.e = trunc i32 %i.d to i16
  %i.f = add i16 %i.e, 3                          ; 2 uses
  store i16 %i.f, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1272), align 8
  br label %bb.c

thread-pre-split:                                 ; preds = %bb.a
  %.pr = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1272), align 8
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.b
  %i.g = phi i16 [ %.pr, %thread-pre-split ], [ %i.f, %bb.b ] ; 2 uses
  %.not19 = icmp eq i16 %i.g, -2
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = zext i16 %i.g to i32
  store i32 %i.h, ptr getelementptr inbounds nuw (i8, ptr @log_opts, i64 8), align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = load ptr, ptr @debug_logfile, align 8
  %.not20 = icmp eq ptr %i.i, null
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1288)) #18
  %i.j = load ptr, ptr @debug_logfile, align 8
  %i.k = tail call ptr @xstrdup(ptr noundef %i.j) #18
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1288), align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 664), align 8
  %i.m = zext i16 %i.l to i32
  tail call void @log_set_timefmt(i32 noundef %i.m) #18
  %i.n = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1272), align 8
  %i.o = zext i16 %i.n to i32
  %i.p = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1328), align 8
  %i.q = zext i16 %i.p to i32
  tail call void @update_log_levels(i32 noundef %i.o, i32 noundef %i.q)
  %i.r = tail call i32 @get_log_level() #18
  %i.s = icmp sgt i32 %i.r, 4
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.86) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1144), align 8 ; 2 uses
  %.not21 = icmp eq i16 %i.t, -2
  br i1 %.not21, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = zext i16 %i.t to i32
  store i32 %i.u, ptr getelementptr inbounds nuw (i8, ptr @sched_log_opts, i64 8), align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1136), align 8
  %i.w = tail call i32 @sched_log_alter(ptr noundef nonnull byval(%struct.log_options_t) align 8 @sched_log_opts, i32 noundef 24, ptr noundef %i.v) #18 ; 0 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1288), align 8 ; 2 uses
  %.not22 = icmp eq ptr %i.x, null
  br i1 %.not22, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = tail call i32 @chown(ptr noundef nonnull %i.x, i32 noundef %i.a, i32 noundef %i.b) #18
  %i.z = icmp eq i32 %i.y, 0
  %.b18 = load i1, ptr @daemonize, align 1
  %or.cond.not = select i1 %i.z, i1 true, i1 %.b18
  br i1 %or.cond.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1288), align 8
  %i.ab = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.87, ptr noundef %i.aa, i32 noundef %i.a, i32 noundef %i.b) #18 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1136), align 8 ; 2 uses
  %.not24 = icmp eq ptr %i.ac, null
  br i1 %.not24, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = tail call i32 @chown(ptr noundef nonnull %i.ac, i32 noundef %i.a, i32 noundef %i.b) #18
  %i.ae = icmp eq i32 %i.ad, 0
  %.b = load i1, ptr @daemonize, align 1
  %or.cond3.not = select i1 %i.ae, i1 true, i1 %.b
  br i1 %or.cond3.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1136), align 8
  %i.ag = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.87, ptr noundef %i.af, i32 noundef %i.a, i32 noundef %i.b) #18 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  ret void
}
end_hunk_0
