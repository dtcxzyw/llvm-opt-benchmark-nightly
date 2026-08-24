Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/req?download=true
inline.NumInlined: 11
inline.NumDeleted: 8
begin_hunk_0_@_decrement_message_connections:bb.a
bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @message_connections, align 4
  %i.d = add nsw i32 %i.c, -1
  store i32 %i.d, ptr @message_connections, align 4
  %i.e = tail call i32 @pthread_cond_signal(ptr noundef nonnull @message_cond) #11 ; 2 uses
  %.not8 = icmp eq i32 %i.e, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__errno_location() #12
  store i32 %i.e, ptr %i.f, align 4
  %i.g = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.6, i32 noundef 337, ptr noundef nonnull @__func__._decrement_message_connections) #11 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @message_lock) #11 ; 2 uses
  %.not9 = icmp eq i32 %i.h, 0
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @__errno_location() #12
  store i32 %i.h, ptr %i.i, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__._decrement_message_connections) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  ret void
}

declare void @free_buf(ptr noundef) local_unnamed_addr #3

declare ptr @rpc_num2string(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4028) i32 @_wait_for_job_running() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr @step, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.b) #11 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = load ptr, ptr @step, align 8             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp ult i32 %i.f, 2
  br i1 %i.g, label %.lr.ph, label %._crit_edge.thread

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__errno_location() #12
  store i32 %i.c, ptr %i.h, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__._wait_for_job_running) #13
  unreachable

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.i = phi i1 [ false, %bb.d ], [ true, %.preheader ]
  %i.j = call i64 @time(ptr noundef null) #11
  %i.k = add nsw i64 %i.j, 60
  store i64 %i.k, ptr %0, align 8
  %i.l = load ptr, ptr @step, align 8             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.o = call i32 @pthread_cond_timedwait(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %0) #11 ; 2 uses
  switch i32 %i.o, label %bb.c [
    i32 110, label %bb.d
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.p = tail call ptr @__errno_location() #12
  store i32 %i.o, ptr %i.p, align 4
  %i.q = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.6, i32 noundef 261, ptr noundef nonnull @__func__._wait_for_job_running) #11 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.lr.ph, %bb.c
  %i.r = load ptr, ptr @step, align 8             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp ult i32 %i.t, 2                     ; 2 uses
  %i.v = and i1 %i.u, %i.i
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !150

._crit_edge:                                      ; preds = %bb.d
  br i1 %i.u, label %bb.e, label %._crit_edge.thread

bb.e:                                             ; preds = %._crit_edge
  %i.w = call i32 @get_log_level() #11
  %i.x = icmp sgt i32 %i.w, 4
  %.pre18 = load ptr, ptr @step, align 8          ; 4 uses
  br i1 %i.x, label %bb.f, label %._crit_edge.thread

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.pre18, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %.pre18, i64 16
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre18, i64 704
  %i.ac = load i64, ptr %i.ab, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.69, ptr noundef nonnull %i.y, i32 noundef %i.aa, i64 noundef %i.ac) #11
  %.pre = load ptr, ptr @step, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %bb.e, %bb.f, %._crit_edge
  %i.ad = phi ptr [ %i.r, %._crit_edge ], [ %.pre, %bb.f ], [ %.pre18, %bb.e ], [ %i.d, %.preheader ]
  %.0 = phi i32 [ 0, %._crit_edge ], [ 4027, %bb.f ], [ 4027, %bb.e ], [ 0, %.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ae) #11 ; 2 uses
  %.not15 = icmp eq i32 %i.af, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread
  %i.ag = tail call ptr @__errno_location() #12
  store i32 %i.af, ptr %i.ag, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__._wait_for_job_running) #13
  unreachable

bb.h:                                             ; preds = %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare ptr @log_build_step_id_str(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

declare void @slurm_make_time_str(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strsignal(i32 noundef) local_unnamed_addr #5

declare void @pdebug_wake_process(i32 noundef) local_unnamed_addr #3

declare i32 @proctrack_g_signal(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @killpg(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @set_job_state_from(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @task_g_update_mem_limit(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @list_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_cap_step_mem(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %i.c = load ptr, ptr @job_step_ptr, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 504
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %or.cond = icmp slt i64 %i.g, 1
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %. = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.b)
  store i64 %., ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.not34 = icmp eq ptr %i.i, null
  br i1 %.not34, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call ptr @next_node_bitmap(ptr noundef %i.k, ptr noundef nonnull %i.a) #11
  %.not3541 = icmp eq ptr %i.l, null
  br i1 %.not3541, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  br label %bb.e

._crit_edge:                                      ; preds = %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ -1, %.lr.ph ], [ %indvars.iv.next, %bb.h ]
  %.043.a = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.h ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = load i32, ptr %i.a, align 4
  %i.r = sext i32 %i.q to i64
  %i.s = call i32 @slurm_bit_test(ptr noundef %i.p, i64 noundef %i.r) #11
  %.not36 = icmp eq i32 %i.s, 0
  br i1 %.not36, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %.043.a, 1                   ; 3 uses
  %i.u = load ptr, ptr %i.h, align 8
  %i.v = sext i32 %i.t to i64                     ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %.39 = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.b)
  store i64 %.39, ptr %i.w, align 8
  %i.y = load i32, ptr %i.n, align 8
  %i.z = and i32 %i.y, 96
  %or.cond40 = icmp eq i32 %i.z, 0
  br i1 %or.cond40, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.h, align 8
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.v
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.o, align 8
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %indvars.iv.next ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i64 %i.af, %i.ac
  store i64 %i.ag, ptr %i.ae, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.1 = phi i32 [ %i.t, %bb.f ], [ %.043.a, %bb.e ], [ %i.t, %bb.g ]
  %i.ah = load i32, ptr %i.a, align 4
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.a, align 4
  %i.aj = load ptr, ptr %i.j, align 8
  %i.ak = call ptr @next_node_bitmap(ptr noundef %i.aj, ptr noundef nonnull %i.a) #11
  %.not35 = icmp eq ptr %i.ak, null
  br i1 %.not35, label %._crit_edge, label %bb.e, !llvm.loop !151

bb.i:                                             ; preds = %bb.c, %._crit_edge
  ret i32 0
}

declare ptr @next_node_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @slurm_bit_test(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @list_prepend(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @io_client_connect(ptr noundef) local_unnamed_addr #3

declare i32 @cgroup_g_bpf_get_token(...) local_unnamed_addr #3

declare void @send_fd_over_socket(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @receive_fd_over_socket(i32 noundef) local_unnamed_addr #3

declare i32 @cgroup_g_bpf_fsconfig(i32 noundef) local_unnamed_addr #3

declare void @cgroup_g_bpf_set_token(i32 noundef) local_unnamed_addr #3

declare zeroext i1 @proctrack_g_has_pid(i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @acct_gather_suspend_poll() local_unnamed_addr #3

declare ptr @xstrcasestr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @parse_uint32(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @acct_gather_resume_poll() local_unnamed_addr #3

declare void @cpu_freq_set(ptr noundef) local_unnamed_addr #3

declare i32 @get_job_state() local_unnamed_addr #3

declare void @step_terminate_monitor_start() local_unnamed_addr #3

declare ptr @create_buf(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @jobacctinfo_unpack(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @step_partial_comp(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @jobacctinfo_destroy(ptr noundef) local_unnamed_addr #3

declare i32 @bit_set_count_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @bit_nset(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @jobacctinfo_aggregate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @timespec_now() local_unnamed_addr #3

declare ptr @jobacctinfo_create(ptr noundef) local_unnamed_addr #3

declare void @jobacct_gather_stat_all_task(ptr noundef) local_unnamed_addr #3

declare ptr @jobacct_gather_stat_task(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @jobacctinfo_setinfo(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare i64 @timer_get_duration(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @timer_duration_str(ptr dead_on_unwind writable sret(%struct.timer_str_t) align 1, i64, i64, i64, i64) local_unnamed_addr #3

declare void @jobacct_gather_stat_job(ptr noundef) local_unnamed_addr #3

declare i32 @proctrack_g_get_pids(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @init_buf(i32 noundef) local_unnamed_addr #3

declare void @unpack_stepd_reconf(ptr noundef) local_unnamed_addr #3

declare i32 @log_alter(ptr noundef byval(%struct.log_options_t) align 8, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_handle_add_extern_pid_internal(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.jobacct_id_t, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.a = load ptr, ptr @step, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, -4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.e = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.110, ptr noundef nonnull @__func__._handle_add_extern_pid_internal, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #11 ; 0 uses
  br label %_wait_extern_thr_create.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @get_log_level() #11
  %i.g = icmp sgt i32 %i.f, 4
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @step, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.111, ptr noundef nonnull @__func__._handle_add_extern_pid_internal, ptr noundef nonnull %i.i, i32 noundef %0) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.6, i32 noundef 1732, ptr noundef nonnull @__func__._handle_add_extern_pid_internal) #11 ; 2 uses
  store i32 %0, ptr %i.j, align 4
  %i.k = load ptr, ptr @step, align 8             ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  store i32 %i.m, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.k, ptr %i.o, align 8
  %i.p = tail call i32 @proctrack_g_add(ptr noundef %i.k, i32 noundef %0) #11
  %.not11 = icmp eq i32 %i.p, 0
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @step, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.s = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__._handle_add_extern_pid_internal, ptr noundef nonnull %i.r, i32 noundef %0) #11 ; 0 uses
  br label %_wait_extern_thr_create.exit

bb.g:                                             ; preds = %bb.e
  %i.t = tail call i32 @task_g_add_pid(i32 noundef %0) #11
  %.not12 = icmp eq i32 %i.t, 0
  br i1 %.not12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr @step, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.w = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.113, ptr noundef nonnull @__func__._handle_add_extern_pid_internal, ptr noundef nonnull %i.v, i32 noundef %0) #11 ; 0 uses
  br label %_wait_extern_thr_create.exit

bb.i:                                             ; preds = %bb.g
  %i.x = call i32 @jobacct_gather_add_task(i32 noundef %0, ptr noundef nonnull %1, i32 noundef 1) #11
  %.not13 = icmp eq i32 %i.x, 0
  br i1 %.not13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr @step, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.aa = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.114, ptr noundef nonnull @__func__._handle_add_extern_pid_internal, ptr noundef nonnull %i.z, i32 noundef %0) #11 ; 0 uses
  br label %_wait_extern_thr_create.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 640), align 8
  %i.ac = call ptr @xstrcasestr(ptr noundef %i.ab, ptr noundef nonnull @.str.115) #11
  %.not14 = icmp eq ptr %i.ac, null
  br i1 %.not14, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @set_user_limits(i32 noundef %0) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = call i32 @pthread_mutex_lock(ptr noundef nonnull @extern_thread_lock) #11, !inline_history !152 ; 2 uses
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = tail call ptr @__errno_location() #12, !inline_history !152
  store i32 %i.ad, ptr %i.ae, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__._wait_extern_thr_create) #13, !inline_history !152
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.af = load i32, ptr @extern_thread_cnt, align 4
  %i.ag = add nsw i32 %i.af, 1                    ; 2 uses
  store i32 %i.ag, ptr @extern_thread_cnt, align 4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = call ptr @slurm_xrecalloc(ptr noundef nonnull @extern_threads, i64 noundef %i.ah, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.6, i32 noundef 1713, ptr noundef nonnull @__func__._wait_extern_thr_create) #11, !inline_history !152 ; 0 uses
  %i.aj = load ptr, ptr @extern_threads, align 8
  %i.ak = load i32, ptr @extern_thread_cnt, align 4
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr [8 x i8], ptr %i.aj, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -8
  %i.ao = call i32 @threadpool_create(ptr noundef nonnull @_wait_extern_pid, ptr noundef nonnull @.str.116, ptr noundef nonnull %i.j, i1 noundef zeroext false, ptr noundef null, ptr noundef %i.an, ptr noundef nonnull @__func__._wait_extern_thr_create) #11, !inline_history !152 ; 2 uses
  %.not7.i = icmp eq i32 %i.ao, 0
  br i1 %.not7.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = call ptr @slurm_strerror(i32 noundef %i.ao) #11, !inline_history !152
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._wait_extern_thr_create, ptr noundef %i.ap) #13, !inline_history !152
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.aq = call i32 @pthread_mutex_unlock(ptr noundef nonnull @extern_thread_lock) #11, !inline_history !152 ; 2 uses
end_hunk_0
