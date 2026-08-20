inline.NumInlined: 24
inline.NumDeleted: 14
begin_hunk_0_@rcu_unregister_thread:bb.a

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @get_ptr_rcu_reader()
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @get_ptr_rcu_reader()
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.g, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = tail call ptr @get_ptr_rcu_reader()
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call ptr @get_ptr_rcu_reader()
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  store ptr %i.n, ptr %i.q, align 8
  %i.r = tail call ptr @get_ptr_rcu_reader()
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr null, ptr %i.s, align 8
  %i.t = tail call ptr @get_ptr_rcu_reader()
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr null, ptr %i.u, align 8
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @rcu_registry_lock, ptr noundef nonnull @.str, i32 noundef 408) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rcu_add_force_rcu_notifier(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.a(ptr noundef nonnull @rcu_registry_lock, ptr noundef nonnull @.str, i32 noundef 413) #11
  %i.b = tail call ptr @get_ptr_rcu_reader()
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @notifier_list_add(ptr noundef nonnull %i.c, ptr noundef %0) #11
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @rcu_registry_lock, ptr noundef nonnull @.str, i32 noundef 415) #11
  ret void
}

declare void @notifier_list_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rcu_remove_force_rcu_notifier(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.a(ptr noundef nonnull @rcu_registry_lock, ptr noundef nonnull @.str, i32 noundef 420) #11
  tail call void @notifier_remove(ptr noundef %0) #11
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @rcu_registry_lock, ptr noundef nonnull @.str, i32 noundef 422) #11
  ret void
}

declare void @notifier_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @rcu_enable_atfork() local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr @atfork_depth, align 4
  %i.b = add i32 %i.a, 1
  store i32 %i.b, ptr @atfork_depth, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @rcu_disable_atfork() local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr @atfork_depth, align 4
  %i.b = add i32 %i.a, -1
  store i32 %i.b, ptr @atfork_depth, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @rcu_init() #3 {
bb.a:
  %0 = alloca %struct.QemuThread, align 8         ; 4 uses
  %i.a = tail call i32 @pthread_atfork(ptr noundef nonnull @rcu_init_lock, ptr noundef nonnull @rcu_init_unlock, ptr noundef nonnull @rcu_init_child) #11 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  store i64 0, ptr %0, align 8, !annotation !17
  tail call void @qemu_mutex_init(ptr noundef nonnull @rcu_registry_lock) #11
  tail call void @qemu_mutex_init(ptr noundef nonnull @rcu_sync_lock) #11
  tail call void @qemu_event_init(ptr noundef nonnull @rcu_gp_event, i1 noundef zeroext true) #11
  tail call void @qemu_event_init(ptr noundef nonnull @rcu_call_ready_event, i1 noundef zeroext false) #11
  call void @qemu_thread_create(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @call_rcu_thread, ptr noundef null, i32 noundef 1) #11
  call void @rcu_register_thread()
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_atfork(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal void @rcu_init_lock() #3 {
bb.a:
  %i.a = load i32, ptr @atfork_depth, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.c(ptr noundef nonnull @rcu_sync_lock, ptr noundef nonnull @.str, i32 noundef 463) #11
  %i.d = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.d(ptr noundef nonnull @rcu_registry_lock, ptr noundef nonnull @.str, i32 noundef 464) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @rcu_init_unlock() #3 {
bb.a:
  %i.a = load i32, ptr @atfork_depth, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @rcu_registry_lock, ptr noundef nonnull @.str, i32 noundef 473) #11
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @rcu_sync_lock, ptr noundef nonnull @.str, i32 noundef 474) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @rcu_init_child() #3 {
bb.a:
  %0 = alloca %struct.QemuThread, align 8         ; 4 uses
  %i.a = load i32, ptr @atfork_depth, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr @registry, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  store i64 0, ptr %0, align 8, !annotation !17
  tail call void @qemu_mutex_init(ptr noundef nonnull @rcu_registry_lock) #11
  tail call void @qemu_mutex_init(ptr noundef nonnull @rcu_sync_lock) #11
  tail call void @qemu_event_init(ptr noundef nonnull @rcu_gp_event, i1 noundef zeroext true) #11
  tail call void @qemu_event_init(ptr noundef nonnull @rcu_call_ready_event, i1 noundef zeroext false) #11
  call void @qemu_thread_create(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @call_rcu_thread, ptr noundef null, i32 noundef 1) #11
  call void @rcu_register_thread()
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @notifier_list_notify(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @qemu_event_reset(ptr noundef) local_unnamed_addr #4

declare void @g_usleep(i64 noundef) local_unnamed_addr #4

declare void @qemu_mutex_init(ptr noundef) local_unnamed_addr #4

declare void @qemu_thread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal noalias noundef nonnull ptr @call_rcu_thread(ptr nofree readnone captures(none) %0) #9 {
bb.a:
  tail call void @rcu_register_thread()
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge41, %bb.a
  tail call void @qemu_event_reset(ptr noundef nonnull @rcu_call_ready_event) #11
  %i.a = load atomic i32, ptr @rcu_call_count monotonic, align 4 ; 2 uses
  %.not33 = icmp eq i32 %i.a, 0
  br i1 %.not33, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.b = tail call i32 @malloc_trim(i64 noundef 4194304) #11 ; 0 uses
  tail call void @qemu_event_wait(ptr noundef nonnull @rcu_call_ready_event) #11
  tail call void @qemu_event_reset(ptr noundef nonnull @rcu_call_ready_event) #11
  %i.c = load atomic i32, ptr @rcu_call_count monotonic, align 4 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.lcssa = phi i32 [ %i.a, %bb.b ], [ %i.c, %.lr.ph ] ; 3 uses
  tail call void @synchronize_rcu()
  %i.d = atomicrmw sub ptr @rcu_call_count, i32 %.lcssa seq_cst, align 4 ; 0 uses
  tail call void @bql_lock_impl(ptr noundef nonnull @.str, i32 noundef 309) #11
  %i.e = icmp sgt i32 %.lcssa, 0
  br i1 %i.e, label %.lr.ph40, label %._crit_edge41

.lr.ph40:                                         ; preds = %._crit_edge, %._crit_edge36
  %.01038 = phi i32 [ %i.ap, %._crit_edge36 ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %i.f = load ptr, ptr @head, align 8             ; 2 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8 ; 2 uses
  %.not13.i = icmp eq ptr %i.g, null
  br i1 %.not13.i, label %.lr.ph35.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph40, %bb.f
  %i.h = phi ptr [ %i.q, %bb.f ], [ %i.g, %.lr.ph40 ]
  %i.i = phi ptr [ %i.p, %bb.f ], [ %i.f, %.lr.ph40 ] ; 5 uses
  %i.j = load ptr, ptr @head, align 8
  %i.k = icmp eq ptr %i.j, @dummy
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = load atomic ptr, ptr @tail monotonic, align 8
  %i.m = icmp eq ptr %i.l, @dummy
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #12
  unreachable

bb.e:                                             ; preds = %bb.c, %.lr.ph.i
  store ptr %i.h, ptr @head, align 8
  %i.n = icmp eq ptr %i.i, @dummy
  br i1 %i.n, label %bb.f, label %._crit_edge36

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.i, align 8
  %i.o = atomicrmw xchg ptr @tail, ptr %i.i seq_cst, align 8
  store atomic ptr %i.i, ptr %i.o release, align 8
  %i.p = load ptr, ptr @head, align 8             ; 2 uses
  %i.q = load atomic ptr, ptr %i.p acquire, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %.lr.ph35.preheader, label %.lr.ph.i

.lr.ph35.preheader:                               ; preds = %bb.f, %.lr.ph40
  br label %.lr.ph35

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %try_dequeue.exit24
  tail call void @bql_unlock() #11
  tail call void @qemu_event_reset(ptr noundef nonnull @rcu_call_ready_event) #11
  %i.r = load ptr, ptr @head, align 8             ; 2 uses
  %i.s = load atomic ptr, ptr %i.r acquire, align 8 ; 2 uses
  %.not13.i15 = icmp eq ptr %i.s, null
  br i1 %.not13.i15, label %try_dequeue.exit19.thread, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %.lr.ph35, %bb.j
  %i.t = phi ptr [ %i.ac, %bb.j ], [ %i.s, %.lr.ph35 ]
  %i.u = phi ptr [ %i.ab, %bb.j ], [ %i.r, %.lr.ph35 ] ; 5 uses
  %i.v = load ptr, ptr @head, align 8
  %i.w = icmp eq ptr %i.v, @dummy
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i16
  %i.x = load atomic ptr, ptr @tail monotonic, align 8
  %i.y = icmp eq ptr %i.x, @dummy
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @abort() #12
  unreachable

bb.i:                                             ; preds = %bb.g, %.lr.ph.i16
  store ptr %i.t, ptr @head, align 8
  %i.z = icmp eq ptr %i.u, @dummy
  br i1 %i.z, label %bb.j, label %try_dequeue.exit24

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.u, align 8
  %i.aa = atomicrmw xchg ptr @tail, ptr %i.u seq_cst, align 8
  store atomic ptr %i.u, ptr %i.aa release, align 8
  %i.ab = load ptr, ptr @head, align 8            ; 2 uses
  %i.ac = load atomic ptr, ptr %i.ab acquire, align 8 ; 2 uses
  %.not.i18 = icmp eq ptr %i.ac, null
  br i1 %.not.i18, label %try_dequeue.exit19.thread, label %.lr.ph.i16

try_dequeue.exit19.thread:                        ; preds = %bb.j, %.lr.ph35
  tail call void @qemu_event_wait(ptr noundef nonnull @rcu_call_ready_event) #11
  %i.ad = load ptr, ptr @head, align 8            ; 2 uses
  %i.ae = load atomic ptr, ptr %i.ad acquire, align 8 ; 2 uses
  %.not13.i20 = icmp eq ptr %i.ae, null
  br i1 %.not13.i20, label %try_dequeue.exit24, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %try_dequeue.exit19.thread, %bb.n
  %i.af = phi ptr [ %i.ao, %bb.n ], [ %i.ae, %try_dequeue.exit19.thread ]
  %i.ag = phi ptr [ %i.an, %bb.n ], [ %i.ad, %try_dequeue.exit19.thread ] ; 5 uses
  %i.ah = load ptr, ptr @head, align 8
  %i.ai = icmp eq ptr %i.ah, @dummy
  br i1 %i.ai, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i21
  %i.aj = load atomic ptr, ptr @tail monotonic, align 8
  %i.ak = icmp eq ptr %i.aj, @dummy
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @abort() #12
  unreachable

bb.m:                                             ; preds = %bb.k, %.lr.ph.i21
  store ptr %i.af, ptr @head, align 8
  %i.al = icmp eq ptr %i.ag, @dummy
  br i1 %i.al, label %bb.n, label %try_dequeue.exit24

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.ag, align 8
  %i.am = atomicrmw xchg ptr @tail, ptr %i.ag seq_cst, align 8
  store atomic ptr %i.ag, ptr %i.am release, align 8
  %i.an = load ptr, ptr @head, align 8            ; 2 uses
  %i.ao = load atomic ptr, ptr %i.an acquire, align 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.ao, null
  br i1 %.not.i23, label %try_dequeue.exit24, label %.lr.ph.i21

try_dequeue.exit24:                               ; preds = %bb.i, %bb.n, %bb.m, %try_dequeue.exit19.thread
  %.1 = phi ptr [ null, %bb.n ], [ null, %try_dequeue.exit19.thread ], [ %i.ag, %bb.m ], [ %i.u, %bb.i ] ; 2 uses
  tail call void @bql_lock_impl(ptr noundef nonnull @.str, i32 noundef 320) #11
  %.not13 = icmp eq ptr %.1, null
  br i1 %.not13, label %.lr.ph35, label %._crit_edge36, !llvm.loop !18

._crit_edge36:                                    ; preds = %bb.e, %try_dequeue.exit24
  %.0.lcssa = phi ptr [ %.1, %try_dequeue.exit24 ], [ %i.i, %bb.e ] ; 2 uses
  %i.ap = add nsw i32 %.01038, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull %.0.lcssa) #11
  %i.as = icmp sgt i32 %.01038, 1
  br i1 %i.as, label %.lr.ph40, label %._crit_edge41, !llvm.loop !19

._crit_edge41:                                    ; preds = %._crit_edge36, %._crit_edge
  tail call void @bql_unlock() #11
  br label %bb.b
}

; Function Attrs: nounwind
declare i32 @malloc_trim(i64 noundef) local_unnamed_addr #8

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

attributes #0 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i64 2150656965}
!8 = !{i64 2150657046}
!9 = !{i64 2150657208}
!10 = distinct !{null, null, null}
!11 = !{i64 2150665255}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{i64 2150659300}
!15 = distinct !{!15, !13}
!16 = distinct !{null}
!17 = !{!"auto-init"}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
end_hunk_0
