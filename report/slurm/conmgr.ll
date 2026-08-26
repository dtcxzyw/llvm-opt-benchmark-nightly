Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/conmgr?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@conmgr_timeouts_init_default:bb.a
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i64, ptr %i.w, align 8
  %i.y = tail call zeroext i1 @timespec_is_zero(i64 %i.v, i64 %i.x) #11
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.aa = zext i16 %i.z to i64
  store i64 %i.aa, ptr %i.u, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = tail call zeroext i1 @timespec_is_zero(i64 %i.ac, i64 %i.ae) #11
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.ah = zext i16 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ab, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

declare zeroext i1 @timespec_is_zero(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @conmgr_init(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.conmgr_callback_t, align 8  ; 4 uses
  %4 = alloca %struct.conmgr_work_control_t, align 8 ; 6 uses
  %5 = alloca %struct.timespec_ctime_str_t, align 1 ; 4 uses
  %i.a = tail call i32 @url_parser_g_init() #11   ; 0 uses
  %i.b = load i32, ptr @mgr, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = icmp slt i32 %2, 1
  %spec.store.select = select i1 %i.d, i32 150, i32 %2
  %.0 = select i1 %i.c, i32 %i.b, i32 %spec.store.select
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #11 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #12
  store i32 %i.e, ptr %i.f, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.conmgr_init) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 120), align 8, !range !8, !noundef !9
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #11 ; 2 uses
  %.not18 = icmp eq i32 %i.i, 0
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @__errno_location() #12
  store i32 %i.i, ptr %i.j, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.conmgr_init) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = tail call i32 @get_log_level() #11
  %i.l = icmp sgt i32 %i.k, 8
  br i1 %i.l, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @log_var(i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.conmgr_init) #11
  br label %bb.o

bb.h:                                             ; preds = %bb.c
  store i8 1, ptr @enabled_status, align 1
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 153), align 1
  tail call void @workers_init(i32 noundef %0, i32 noundef %1) #11
  %i.m = tail call i32 @pthread_atfork(ptr noundef null, ptr noundef null, ptr noundef nonnull @_atfork_child) #11 ; 2 uses
  %.not16 = icmp eq i32 %i.m, 0
  br i1 %.not16, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call ptr @slurm_strerror(i32 noundef %i.m) #11
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.conmgr_init, ptr noundef %i.n) #13
  unreachable

bb.j:                                             ; preds = %bb.h
  store ptr @on_signal_alarm, ptr %3, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.10, ptr %i.p, align 8
  store i32 1, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 16, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 14, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %i.t, align 4
  tail call void @add_work(i1 noundef zeroext true, ptr noundef null, ptr noundef nonnull byval(%struct.conmgr_callback_t) align 8 %3, ptr noundef nonnull byval(%struct.conmgr_work_control_t) align 8 %4, i32 noundef 0, ptr noundef nonnull @__func__.conmgr_init) #11
  tail call void @conmgr_timeouts_init_default(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 8))
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 56), align 8
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 64), align 8
  %i.w = tail call zeroext i1 @timespec_is_infinite(i64 %i.u, i64 %i.v) #11
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 56), align 8
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 64), align 8
  call void @timespec_ctime_str(ptr dead_on_unwind nonnull writable sret(%struct.timespec_ctime_str_t) align 1 %5, i64 %i.x, i64 %i.y, i1 noundef zeroext false) #11
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 %.0, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 88), align 8
  %i.z = call ptr @list_create(ptr noundef null) #11
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 96), align 8
  %i.aa = call ptr @list_create(ptr noundef null) #11
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 104), align 8
  %i.ab = call ptr @list_create(ptr noundef null) #11
  store ptr %i.ab, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 112), align 8
  %i.ac = call ptr @list_create(ptr noundef null) #11
  store ptr %i.ac, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 168), align 8
  call void @init_delayed_work() #11
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 88), align 8
  call void @pollctl_init(i32 noundef %i.ad) #11
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 120), align 8
  %i.ae = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #11 ; 2 uses
  %.not17 = icmp eq i32 %i.ae, 0
  br i1 %.not17, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = tail call ptr @__errno_location() #12
  store i32 %i.ae, ptr %i.af, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.conmgr_init) #13
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ag = call i32 @atexit(ptr noundef nonnull @_at_exit) #11 ; 0 uses
  call void @atomic_log_features() #11
  call void @probe_register(ptr noundef nonnull @.str.13, ptr noundef nonnull @_probe, ptr noundef null) #11
  call void @probe_register(ptr noundef nonnull @.str.14, ptr noundef nonnull @probe_connections, ptr noundef null) #11
  call void @probe_register(ptr noundef nonnull @.str.15, ptr noundef nonnull @probe_work, ptr noundef null) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.g, %bb.n
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @url_parser_g_init() local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare i32 @get_log_level() local_unnamed_addr #1

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @workers_init(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_atfork(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_atfork_child() #6 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 120), align 8, !range !8, !noundef !9
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 96), align 8
  %i.d = icmp ne ptr %i.c, null
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr @mgr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) getelementptr inbounds nuw (i8, ptr @mgr, i64 4), i8 0, i64 84, i1 false)
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 88), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(61) getelementptr inbounds nuw (i8, ptr @mgr, i64 92), i8 0, i64 61, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) getelementptr inbounds nuw (i8, ptr @mgr, i64 154), i8 0, i64 62, i1 false)
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 216), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) getelementptr inbounds nuw (i8, ptr @mgr, i64 220), i8 0, i64 52, i1 false)
  store ptr @.str, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 272), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @mgr, i64 280), i8 0, i64 56, i1 false)
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 336), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @mgr, i64 344), i8 0, i64 56, i1 false)
  store ptr @.str.2, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 400), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @mgr, i64 408), i8 0, i64 56, i1 false)
  store ptr @.str.3, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 464), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @mgr, i64 472), i8 0, i64 56, i1 false)
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 528), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @mgr, i64 536), i8 0, i64 56, i1 false)
  store ptr @.str.5, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 592), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @mgr, i64 600), i8 0, i64 56, i1 false)
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 120), align 8
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 153), align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @slurm_strerror(i32 noundef) local_unnamed_addr #1

declare void @add_work(i1 noundef zeroext, ptr noundef, ptr noundef byval(%struct.conmgr_callback_t) align 8, ptr noundef byval(%struct.conmgr_work_control_t) align 8, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @on_signal_alarm(ptr noundef byval(%struct.conmgr_callback_args_s) align 8, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare zeroext i1 @timespec_is_infinite(i64, i64) local_unnamed_addr #1

declare void @warning(ptr noundef, ...) local_unnamed_addr #1

declare void @timespec_ctime_str(ptr dead_on_unwind writable sret(%struct.timespec_ctime_str_t) align 1, i64, i64, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @list_create(ptr noundef) local_unnamed_addr #1

declare void @init_delayed_work() local_unnamed_addr #1

declare void @pollctl_init(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_at_exit() #9 {
bb.a:
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 153), align 1
  ret void
}

declare void @atomic_log_features() local_unnamed_addr #1

declare void @probe_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 1, 6) i32 @_probe(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.timespec_ctime_str_t, align 1 ; 4 uses
  %3 = alloca %struct.timespec_ctime_str_t, align 1 ; 4 uses
  %4 = alloca %struct.timespec_ctime_str_t, align 1 ; 4 uses
  %5 = alloca %struct.timespec_ctime_str_t, align 1 ; 4 uses
  %6 = alloca %struct.timespec_ctime_str_t, align 1 ; 4 uses
  %7 = alloca %struct.timespec_ctime_str_t, align 1 ; 4 uses
  %8 = alloca %struct.timespec_ctime_str_t, align 1 ; 4 uses
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #11 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #12
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__._probe) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not9 = icmp eq ptr %0, null
  br i1 %.not9, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i32, ptr @mgr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 72), align 8
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 80), align 8
  call void @timespec_ctime_str(ptr dead_on_unwind nonnull writable sret(%struct.timespec_ctime_str_t) align 1 %2, i64 %i.d, i64 %i.e, i1 noundef zeroext false) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 8), align 8
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 16), align 8
  call void @timespec_ctime_str(ptr dead_on_unwind nonnull writable sret(%struct.timespec_ctime_str_t) align 1 %3, i64 %i.f, i64 %i.g, i1 noundef zeroext false) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 24), align 8
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 32), align 8
  call void @timespec_ctime_str(ptr dead_on_unwind nonnull writable sret(%struct.timespec_ctime_str_t) align 1 %4, i64 %i.h, i64 %i.i, i1 noundef zeroext false) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 40), align 8
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 48), align 8
  call void @timespec_ctime_str(ptr dead_on_unwind nonnull writable sret(%struct.timespec_ctime_str_t) align 1 %5, i64 %i.j, i64 %i.k, i1 noundef zeroext false) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 56), align 8
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 64), align 8
  call void @timespec_ctime_str(ptr dead_on_unwind nonnull writable sret(%struct.timespec_ctime_str_t) align 1 %6, i64 %i.l, i64 %i.m, i1 noundef zeroext false) #11
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 216), align 8
  call void (ptr, ptr, ptr, ...) @probe_logger(ptr noundef nonnull %0, ptr noundef nonnull @__func__._probe_verbose, ptr noundef nonnull @.str.40, i32 noundef %i.c, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %i.n) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.o = load i8, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 120), align 8, !range !8, !noundef !9
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = select i1 %i.p, i32 84, i32 70
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 153), align 1, !range !8, !noundef !9
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = select i1 %i.s, i32 84, i32 70
  call void (ptr, ptr, ptr, ...) @probe_logger(ptr noundef nonnull %0, ptr noundef nonnull @__func__._probe_verbose, ptr noundef nonnull @.str.41, i32 noundef %i.q, i32 noundef %i.t) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 136), align 8
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 144), align 8
  call void @timespec_ctime_str(ptr dead_on_unwind nonnull writable sret(%struct.timespec_ctime_str_t) align 1 %7, i64 %i.u, i64 %i.v, i1 noundef zeroext true) #11
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 152), align 8, !range !8, !noundef !9
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = select i1 %i.x, i32 84, i32 70
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 154), align 2, !range !8, !noundef !9
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = select i1 %i.aa, i32 84, i32 70
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 155), align 1, !range !8, !noundef !9
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = select i1 %i.ad, i32 84, i32 70
  call void (ptr, ptr, ptr, ...) @probe_logger(ptr noundef nonnull %0, ptr noundef nonnull @__func__._probe_verbose, ptr noundef nonnull @.str.42, ptr noundef nonnull %7, i32 noundef %i.y, i32 noundef %i.ab, i32 noundef %i.ae) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 248), align 8, !range !8, !noundef !9
  %i.ag = trunc nuw i8 %i.af to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  br i1 %i.ag, label %bb.e, label %_probe_verbose.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 256), align 8
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 264), align 8
  call void @timespec_ctime_str(ptr dead_on_unwind nonnull writable sret(%struct.timespec_ctime_str_t) align 1 %8, i64 %i.ah, i64 %i.ai, i1 noundef zeroext true) #11
  br label %_probe_verbose.exit

_probe_verbose.exit:                              ; preds = %bb.d, %bb.e
  %i.aj = phi ptr [ @.str.45, %bb.d ], [ @.str.44, %bb.e ]
  %i.ak = phi i32 [ 70, %bb.d ], [ 84, %bb.e ]
  %i.al = phi ptr [ @.str.45, %bb.d ], [ %8, %bb.e ]
  %i.am = load i8, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 249), align 1, !range !8, !noundef !9
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = select i1 %i.an, i32 84, i32 70
  call void (ptr, ptr, ptr, ...) @probe_logger(ptr noundef nonnull %0, ptr noundef nonnull @__func__._probe_verbose, ptr noundef nonnull @.str.43, i32 noundef %i.ak, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.al, i32 noundef %i.ao) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.f

bb.f:                                             ; preds = %_probe_verbose.exit, %bb.c
  %i.ap = load i8, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 120), align 8, !range !8, !noundef !9
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 128), align 8
  %.not10 = icmp eq i64 %i.ar, 0
  br i1 %.not10, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load i8, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 153), align 1, !range !8, !noundef !9
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 248), align 8, !range !8, !noundef !9
  %i.av = trunc nuw i8 %i.au to i1
  %. = select i1 %i.av, i32 4, i32 5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i32 [ 2, %bb.g ], [ %., %bb.i ], [ 3, %bb.h ], [ 1, %bb.f ]
  %i.aw = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #11 ; 2 uses
  %.not11 = icmp eq i32 %i.aw, 0
  br i1 %.not11, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call ptr @__errno_location() #12
  store i32 %i.aw, ptr %i.ax, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__._probe) #13
  unreachable

bb.l:                                             ; preds = %bb.j
  ret i32 %.0
}

declare i32 @probe_connections(ptr noundef, ptr noundef) #1

declare i32 @probe_work(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @conmgr_fini() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #11 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #12
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.conmgr_fini) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 120), align 8, !range !8, !noundef !9
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
