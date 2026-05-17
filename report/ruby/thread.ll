inline.NumInlined: 1396
inline.NumDeleted: 321
begin_hunk_0_@rb_thread_sched_mark_zombies:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.not11 = icmp eq ptr %.pn15, %i.a
  br i1 %.not11, label %.loopexit, label %.preheader, !llvm.loop !165

.loopexit:                                        ; preds = %bb.d, %bb.a
  ret void
}

declare void @rb_gc_mark(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_thread_wakeup_timer_thread(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @timer_th, i64 20), align 4, !tbaa !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 1, ptr %i.a, align 8, !tbaa !144
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %.preheader.i.i, label %timer_thread_wakeup_force.exit

.preheader.i.i:                                   ; preds = %bb.a, %bb.b
  %i.d = call i64 @write(i32 noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 8) #17
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %timer_thread_wakeup_force.exit

bb.b:                                             ; preds = %.preheader.i.i
  %i.f = tail call ptr @rb_errno_ptr() #17
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7    ; 2 uses
  switch i32 %i.g, label %bb.c [
    i32 4, label %.preheader.i.i
    i32 11, label %timer_thread_wakeup_force.exit
  ]

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @async_bug_fd(ptr noundef nonnull @.str.132, i32 noundef %i.g, i32 noundef %i.b) #47
  unreachable

timer_thread_wakeup_force.exit:                   ; preds = %.preheader.i.i, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.h = load atomic volatile i32, ptr @system_working seq_cst, align 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %timer_thread_wakeup_force.exit
  %i.i = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !166  ; 4 uses
  %.not11 = icmp eq ptr %i.k, null
  br i1 %.not11, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !147  ; 2 uses
  %.not12 = icmp eq ptr %i.m, null
  br i1 %.not12, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %i.o = atomicrmw volatile or ptr %i.n, i32 8 seq_cst, align 4 ; 0 uses
  %i.p = getelementptr i8, ptr %i.i, i64 504
  %i.q = load volatile i32, ptr %i.p, align 8, !tbaa !167
  %.not13 = icmp eq i32 %i.q, 0
  br i1 %.not13, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %i.k, i64 336
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 2 uses
  %.not14 = icmp eq ptr %i.s, null
  br i1 %.not14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.k, i64 344
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77
  tail call void %i.s(ptr noundef %i.u) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.h, %bb.e, %timer_thread_wakeup_force.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_assert_sig() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.__sigset_t, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  %i.a = call i32 @pthread_sigmask(i32 noundef 0, ptr noundef null, ptr noundef nonnull %0) #17 ; 0 uses
  %i.b = call i32 @sigismember(ptr noundef nonnull %0, i32 noundef 26) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.23) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigismember(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @ruby_stack_overflowed_p(ptr noundef readonly captures(address_is_null) %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %union.pthread_attr_t, align 8      ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 192
  %i.g = getelementptr i8, ptr %i.e, i64 176
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !144
  %i.h = tail call i64 @pthread_self() #46
  %i.i = call i32 @pthread_getattr_np(i64 noundef %i.h, ptr noundef nonnull %2) #17
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.d, label %get_stack.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 @pthread_attr_getstack(ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17
  %.not21.i = icmp eq i32 %i.j, 0
  br i1 %.not21.i, label %bb.e, label %get_stack.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.l = load i64, ptr %i.c, align 8, !tbaa !144
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l
  store ptr %i.m, ptr %i.b, align 8, !tbaa !52
  %i.n = call i32 @pthread_attr_getguardsize(ptr noundef nonnull %2, ptr noundef nonnull %i.a) #17
  %.not22.i = icmp eq i32 %i.n, 0
  br i1 %.not22.i, label %bb.f, label %get_stack.exit.thread

get_stack.exit.thread:                            ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %i.a, align 8, !tbaa !144
  %i.p = load i64, ptr %i.c, align 8, !tbaa !144
  %i.q = sub i64 %i.p, %i.o
  store i64 %i.q, ptr %i.c, align 8, !tbaa !144
  %i.r = call i32 @pthread_attr_destroy(ptr noundef nonnull %2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.sink15.in = phi ptr [ %i.c, %bb.f ], [ %i.f, %bb.b ]
  %.sink.in = phi ptr [ %i.b, %bb.f ], [ %i.g, %bb.b ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !52
  %.sink15 = load i64, ptr %.sink15.in, align 8, !tbaa !144 ; 2 uses
  %i.s = sub i64 0, %.sink15
  %i.t = getelementptr i8, ptr %.sink, i64 %i.s   ; 3 uses
  %i.u = udiv i64 %.sink15, 5
  %i.v = ptrtoint ptr %i.t to i64
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.v)
  %spec.select = call i64 @llvm.umin.i64(i64 %spec.store.select, i64 1048576)
  %i.w = sub nsw i64 0, %spec.select
  %i.x = getelementptr i8, ptr %i.t, i64 %i.w
  %i.y = icmp ugt ptr %1, %i.x
  %.not9 = icmp ule ptr %1, %i.t
  %or.cond.not = and i1 %.not9, %i.y
  %spec.select10 = zext i1 %or.cond.not to i32
  br label %bb.h

bb.h:                                             ; preds = %get_stack.exit.thread, %bb.g
  %.0 = phi i32 [ 0, %get_stack.exit.thread ], [ %spec.select10, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @rb_reserved_fd_p(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = load <3 x i32>, ptr getelementptr inbounds nuw (i8, ptr @timer_th, i64 16), align 8
  %2 = insertelement <3 x i32> poison, i32 %0, i64 0
  %3 = shufflevector <3 x i32> %2, <3 x i32> poison, <3 x i32> zeroinitializer
  %.fr = freeze <3 x i32> %1
  %4 = icmp eq <3 x i32> %3, %.fr
  %5 = bitcast <3 x i1> %4 to i3
  %i.b = icmp eq i3 %5, 0
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr @timer_th, align 8, !tbaa !140
  %i.d = load i64, ptr @current_fork_gen, align 8, !tbaa !142
  %i.e = icmp eq i64 %i.c, %i.d
  %. = zext i1 %i.e to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %., %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @rb_nativethread_self() local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i64 @pthread_self() #46
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_thread_release_fork_lock() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull @rb_thread_fork_rw_lock) #17 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.24, i32 noundef %i.a) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_thread_reset_fork_lock() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_rwlock_destroy(ptr noundef nonnull @rb_thread_fork_rw_lock) #17 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.25, i32 noundef %i.a) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_rwlock_init(ptr noundef nonnull @rb_thread_fork_rw_lock, ptr noundef null) #17 ; 2 uses
  %.not3 = icmp eq i32 %i.b, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.26, i32 noundef %i.b) #41
  unreachable

bb.e:                                             ; preds = %bb.c
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_rwlock_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_thread_prevent_fork(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_rwlock_rdlock(ptr noundef nonnull @rb_thread_fork_rw_lock) #17 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.27, i32 noundef %i.a) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr %0(ptr noundef %1) #17
  %i.c = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull @rb_thread_fork_rw_lock) #17 ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %rb_thread_release_fork_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.24, i32 noundef %i.c) #41
  unreachable

rb_thread_release_fork_lock.exit:                 ; preds = %bb.c
  ret ptr %i.b
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_rdlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_thread_acquire_fork_lock() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_rwlock_wrlock(ptr noundef nonnull @rb_thread_fork_rw_lock) #17 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.28, i32 noundef %i.a) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef nonnull ptr @rb_internal_thread_add_event_hook(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias nonnull dereferenceable(32) ptr @ruby_xmalloc2(i64 noundef 1, i64 noundef 32) #49 ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !84
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.c, align 8, !tbaa !78
  %i.d = tail call i32 @pthread_rwlock_wrlock(ptr noundef nonnull @rb_internal_thread_event_hooks_rw_lock) #17 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.28, i32 noundef %i.d) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @rb_internal_thread_event_hooks, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %i.f, align 8, !tbaa !85
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = atomicrmw volatile xchg ptr @rb_internal_thread_event_hooks, i64 %i.g seq_cst, align 8 ; 0 uses
  %i.i = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull @rb_internal_thread_event_hooks_rw_lock) #17 ; 2 uses
  %.not11 = icmp eq i32 %i.i, 0
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.24, i32 noundef %i.i) #41
  unreachable

bb.e:                                             ; preds = %bb.c
  ret ptr %i.a
}

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @rb_internal_thread_remove_event_hook(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_rwlock_wrlock(ptr noundef nonnull @rb_internal_thread_event_hooks_rw_lock) #17 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.28, i32 noundef %i.a) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @rb_internal_thread_event_hooks, align 8, !tbaa !70 ; 2 uses
  %i.c = icmp eq ptr %i.b, %0
  br i1 %i.c, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = atomicrmw volatile xchg ptr @rb_internal_thread_event_hooks, i64 %i.f seq_cst, align 8 ; 0 uses
  br label %bb.g

.preheader:                                       ; preds = %bb.c, %bb.f
  %.0 = phi ptr [ %i.i, %bb.f ], [ %i.b, %bb.c ]  ; 2 uses
  %i.h = getelementptr i8, ptr %.0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !85   ; 3 uses
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.k = getelementptr i8, ptr %.0, i64 24
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !85
  store ptr %i.m, ptr %i.k, align 8, !tbaa !85
  br label %bb.g

bb.f:                                             ; preds = %.preheader
  %.not18 = icmp eq ptr %i.i, null
  br i1 %.not18, label %.thread, label %.preheader, !llvm.loop !168

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.n = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull @rb_internal_thread_event_hooks_rw_lock) #17 ; 2 uses
  %.not19 = icmp eq i32 %i.n, 0
  br i1 %.not19, label %bb.i, label %bb.h

.thread:                                          ; preds = %bb.f
  %i.o = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull @rb_internal_thread_event_hooks_rw_lock) #17 ; 2 uses
end_hunk_0
