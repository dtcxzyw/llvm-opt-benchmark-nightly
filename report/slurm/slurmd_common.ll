Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/slurmd_common?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0_@terminate_all_steps:bb.a
}

declare i32 @usleep(i32 noundef) local_unnamed_addr #2

declare i32 @sleep(i32 noundef) local_unnamed_addr #2

declare ptr @stepd_available(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @list_iterator_create(ptr noundef) local_unnamed_addr #2

declare ptr @list_next(ptr noundef) local_unnamed_addr #2

declare i32 @stepd_connect(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @stepd_terminate(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare void @list_iterator_destroy(ptr noundef) local_unnamed_addr #2

declare void @list_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @run_prolog(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %union.pthread_cond_t, align 8      ; 5 uses
  %3 = alloca %union.pthread_mutex_t, align 8     ; 6 uses
  %4 = alloca %struct.timer_struct_t, align 8     ; 8 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = tail call i64 @time(ptr noundef null) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i8 0, ptr %i.b, align 1
  %i.d = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1024), align 8
  %i.e = and i16 %i.d, 8
  %.not.not = icmp eq i16 %i.e, 0                 ; 2 uses
  br i1 %.not.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @prolog_serial_mutex) #10 ; 2 uses
  %.not28 = icmp eq i32 %i.f, 0
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__errno_location() #11
  store i32 %i.f, ptr %i.g, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.run_prolog) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  store i32 %i.i, ptr %4, align 8
  %i.j = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.j, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %3, ptr %i.n, align 8
  %i.o = call i32 @threadpool_create(ptr noundef nonnull @_prolog_timer, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull @__func__.run_prolog) #10 ; 2 uses
  %.not29 = icmp eq i32 %i.o, 0
  br i1 %.not29, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = call ptr @slurm_strerror(i32 noundef %i.o) #10
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.run_prolog, ptr noundef %i.p) #12
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = call i32 @prep_g_prolog(ptr noundef nonnull %0, ptr noundef %1) #10
  %i.r = call i32 @pthread_mutex_lock(ptr noundef nonnull %3) #10 ; 2 uses
  %.not30 = icmp eq i32 %i.r, 0
  br i1 %.not30, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call ptr @__errno_location() #11
  store i32 %i.r, ptr %i.s, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.run_prolog) #12
  unreachable

bb.h:                                             ; preds = %bb.f
  store i8 1, ptr %i.b, align 1
  %i.t = call i32 @pthread_cond_broadcast(ptr noundef nonnull %2) #10 ; 2 uses
  %.not31 = icmp eq i32 %i.t, 0
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = tail call ptr @__errno_location() #11
  store i32 %i.t, ptr %i.u, align 4
  %i.v = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 401, ptr noundef nonnull @__func__.run_prolog) #10 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = call i32 @pthread_mutex_unlock(ptr noundef nonnull %3) #10 ; 2 uses
  %.not32 = icmp eq i32 %i.w, 0
  br i1 %.not32, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = tail call ptr @__errno_location() #11
  store i32 %i.w, ptr %i.x, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.run_prolog) #12
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.y = call i64 @time(ptr noundef null) #10
  %i.z = call double @difftime(i64 noundef %i.y, i64 noundef %i.c) #11
  %i.aa = fptosi double %i.z to i32               ; 2 uses
  %i.ab = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.ac = lshr i16 %i.ab, 1
  %i.ad = zext nneg i16 %i.ac to i32
  %.not33 = icmp slt i32 %i.aa, %i.ad
  br i1 %.not33, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = call i32 @get_log_level() #10
  %i.af = icmp sgt i32 %i.ae, 2
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.13, ptr noundef nonnull %0, i32 noundef %i.aa) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m
  %i.ag = load i64, ptr %i.a, align 8
  %i.ah = call i32 @threadpool_join(i64 noundef %i.ag, ptr noundef nonnull @__func__.run_prolog) #10 ; 2 uses
  %.not34 = icmp eq i32 %i.ah, 0
  br i1 %.not34, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = tail call ptr @__errno_location() #11
  store i32 %i.ah, ptr %i.ai, align 4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store i64 0, ptr %i.a, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.not.not, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = call i32 @pthread_mutex_unlock(ptr noundef nonnull @prolog_serial_mutex) #10 ; 2 uses
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = tail call ptr @__errno_location() #11
  store i32 %i.aj, ptr %i.ak, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.run_prolog) #12
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.q
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #6

declare i32 @threadpool_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_prolog_timer(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %3 = alloca %struct.slurm_msg, align 8          ; 6 uses
  %4 = alloca %struct.job_notify_msg, align 8     ; 8 uses
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i16, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp ult i16 %i.c, 4
  %i.e = zext i16 %i.c to i64
  %i.f = add nsw i64 %i.e, -2
  %i.g = select i1 %i.d, i64 2, i64 %i.f
  %i.h = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #10 ; 0 uses
  %i.i = load i64, ptr %2, align 8
  %i.j = add nsw i64 %i.g, %i.i
  store i64 %i.j, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = mul nsw i64 %i.l, 1000
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i32 @pthread_mutex_lock(ptr noundef %i.p) #10 ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call ptr @__errno_location() #11
  store i32 %i.q, ptr %i.r, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load i8, ptr %i.t, align 1, !range !14, !noundef !15
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.o, align 8
  %i.z = call i32 @pthread_cond_timedwait(ptr noundef %i.x, ptr noundef %i.y, ptr noundef nonnull %1) #10
  %i.aa = load ptr, ptr %i.o, align 8
  %i.ab = call i32 @pthread_mutex_unlock(ptr noundef %i.aa) #10 ; 2 uses
  %.not19 = icmp eq i32 %i.ab, 0
  br i1 %.not19, label %bb.f, label %bb.e

.thread:                                          ; preds = %bb.c
  %i.ac = load ptr, ptr %i.o, align 8
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef %i.ac) #10 ; 2 uses
  %.not1922 = icmp eq i32 %i.ad, 0
  br i1 %.not1922, label %.thread24, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.ae = phi i32 [ %i.ad, %.thread ], [ %i.ab, %bb.d ]
  %i.af = tail call ptr @__errno_location() #11
  store i32 %i.ae, ptr %i.af, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8) #12
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ag = icmp eq i32 %i.z, 110
  br i1 %i.ag, label %bb.g, label %.thread24

bb.g:                                             ; preds = %bb.f
  call void @slurm_msg_t_init(ptr noundef nonnull %3) #10
  %i.ah = load ptr, ptr @conf, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4264
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.17, ptr noundef %i.aj) #10 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.am = load i32, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 -2, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 -2, ptr %i.ap, align 4
  store ptr %i.a, ptr %4, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 226
  store i16 4022, ptr %i.aq, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %4, ptr %i.ar, align 8
  %i.as = load ptr, ptr @working_cluster_rec, align 8
  %i.at = call i32 @slurm_send_only_controller_msg(ptr noundef nonnull %3, ptr noundef %i.as) #10 ; 0 uses
  br label %.thread24

.thread24:                                        ; preds = %.thread, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret ptr null
}

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #6

declare ptr @slurm_strerror(i32 noundef) local_unnamed_addr #2

declare i32 @prep_g_prolog(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @difftime(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @threadpool_join(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @run_epilog(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @time(ptr noundef null) #10
  %i.b = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1024), align 8
  %i.c = and i16 %i.b, 8
  %.not.not = icmp eq i16 %i.c, 0                 ; 2 uses
  br i1 %.not.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @prolog_serial_mutex) #10 ; 2 uses
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #11
  store i32 %i.d, ptr %i.e, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.run_epilog) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call i32 @prep_g_epilog(ptr noundef %0, ptr noundef %1) #10
  %i.g = tail call i64 @time(ptr noundef null) #10
  %i.h = tail call double @difftime(i64 noundef %i.g, i64 noundef %i.a) #11
  %i.i = fptosi double %i.h to i32                ; 2 uses
  %i.j = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.k = lshr i16 %i.j, 1
  %i.l = zext nneg i16 %i.k to i32
  %.not15 = icmp slt i32 %i.i, %i.l
  br i1 %.not15, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @get_log_level() #10
  %i.n = icmp sgt i32 %i.m, 2
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.14, ptr noundef %0, i32 noundef %i.i) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  br i1 %.not.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @prolog_serial_mutex) #10 ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @__errno_location() #11
  store i32 %i.o, ptr %i.p, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.run_epilog) #12
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  ret i32 %i.f
}

declare i32 @prep_g_epilog(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @notify_slurmctld_mem_update_fini(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %4 = alloca %struct.slurm_msg, align 8          ; 6 uses
  %5 = alloca %struct.response_update_job_mem_msg, align 8 ; 9 uses
  %i.b = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr @conf, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4264
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %2, ptr %i.i, align 8
  store i8 %i.b, ptr %5, align 8
  call void @slurm_msg_t_init(ptr noundef nonnull %4) #10
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 226
  store i16 6015, ptr %i.j, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 192
  store ptr %5, ptr %i.k, align 8
  %i.l = load ptr, ptr @working_cluster_rec, align 8
  %i.m = call i32 @slurm_send_recv_controller_rc_msg(ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef %i.l) #10 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
