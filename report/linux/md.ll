Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/md?download=true
inline.NumInlined: 1946
inline.NumDeleted: 201
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@md_set_read_only:bb.a
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @mutex_unlock(ptr noundef %i.e) #29
  br label %mddev_lock.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 280
  %i.k = load i32, ptr %i.j, align 8
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.d, i64 212
  %i.m = load i32, ptr %i.l, align 4
  %.not19 = icmp eq i32 %i.m, 0                   ; 2 uses
  %brmerge = or i1 %1, %.not19
  %.mux = select i1 %.not19, i32 -19, i32 0
  br i1 %brmerge, label %bb.k, label %bb.g

bb.f:                                             ; preds = %bb.d
  br i1 %1, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.n = getelementptr i8, ptr %i.d, i64 104      ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %i.d, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %.not20 = icmp eq ptr %i.r, null
  br i1 %.not20, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call fastcc i32 @restart_array(ptr noundef %i.d) #30, !srcloc !167 ; 2 uses
  %.not21 = icmp eq i32 %i.s, 0
  br i1 %.not21, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 2, ptr %i.n, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %bb.i
  %.0 = phi i32 [ 0, %bb.f ], [ %i.s, %bb.i ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.g ], [ %.mux, %bb.e ]
  tail call void @mddev_unlock(ptr noundef %i.d) #30
  br label %mddev_lock.exit

mddev_lock.exit:                                  ; preds = %bb.c, %bb.a, %bb.k
  %.014 = phi i32 [ %.0, %bb.k ], [ %i.f, %bb.a ], [ -19, %bb.c ]
  ret i32 %.014
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @md_free_disk(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  tail call void @_raw_spin_lock(ptr noundef @all_mddevs_lock) #29
  %i.c = getelementptr i8, ptr %i.b, i64 1040     ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 1048     ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %i.g, align 8
  store volatile ptr %i.f, ptr %i.e, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.c, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.d, align 8
  tail call void @_raw_spin_unlock(ptr noundef @all_mddevs_lock) #29
  %i.h = getelementptr i8, ptr %i.b, i64 1064
  tail call void @bioset_exit(ptr noundef %i.h) #29
  %i.i = getelementptr i8, ptr %i.b, i64 1312
  tail call void @bioset_exit(ptr noundef %i.i) #29
  %i.j = getelementptr i8, ptr %i.b, i64 1560
  tail call void @bioset_exit(ptr noundef %i.j) #29
  %i.k = getelementptr i8, ptr %i.b, i64 88
  tail call void @percpu_ref_exit(ptr noundef %i.k) #29
  %i.l = getelementptr i8, ptr %i.b, i64 832
  tail call void @percpu_ref_exit(ptr noundef %i.l) #29
  tail call void @kfree(ptr noundef %i.b) #29
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @md_register_thread(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 8), align 8
  %i.b = tail call noalias align 8 dereferenceable_or_null(72) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef range(i32 3264, 3584) 3520, i64 noundef range(i64 24, 4097) 72) #33 ; 10 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 16
  tail call void @__init_waitqueue_head(ptr noundef %i.c, ptr noundef @.str.56, ptr noundef @md_register_thread.__key) #29
  store ptr %0, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 56
  store i64 9223372036854775807, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %1, i64 112
  %.val = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  %i.g = getelementptr i8, ptr %.val, i64 12
  %spec.select.i = select i1 %.not.i, ptr @.str.73, ptr %i.g
  %i.h = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef @md_thread, ptr noundef nonnull %i.b, i32 noundef -1, ptr noundef @.str.57, ptr noundef %spec.select.i, ptr noundef %2) #29 ; 4 uses
  %i.i = icmp ugt ptr %i.h, inttoptr (i64 -4096 to ptr)
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @wake_up_process(ptr noundef %i.h) #29 ; 0 uses
  %i.k = getelementptr i8, ptr %i.b, i64 48
  store ptr %i.h, ptr %i.k, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.b, i64 48
  store ptr %i.h, ptr %i.l, align 8
  tail call void @kfree(ptr noundef nonnull %i.b) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.a ], [ %i.b, %bb.c ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @md_thread(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  tail call void @kernel_sigaction(i32 noundef 9, ptr noundef nonnull inttoptr (i64 2 to ptr)) #29
  %i.a = tail call zeroext i1 @kthread_should_stop() #29
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #32, !srcloc !36
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 40         ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 16         ; 2 uses
  br label %test_tsk_thread_flag.exit.i

test_tsk_thread_flag.exit.i:                      ; preds = %bb.p, %.lr.ph
  %i.g = load volatile i64, ptr %i.c, align 8
  %i.h = and i64 %i.g, 4
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %signal_pending.exit, label %signal_pending.exit.thread, !prof !31

signal_pending.exit:                              ; preds = %test_tsk_thread_flag.exit.i
  %i.i = load volatile i64, ptr %i.c, align 8
  %i.j = and i64 %i.i, 2
  %.not67 = icmp eq i64 %i.j, 0
  br i1 %.not67, label %bb.b, label %signal_pending.exit.thread

signal_pending.exit.thread:                       ; preds = %test_tsk_thread_flag.exit.i, %signal_pending.exit
  call void @flush_signals(ptr noundef %i.c) #29
  br label %bb.b

bb.b:                                             ; preds = %signal_pending.exit.thread, %signal_pending.exit
  %i.k = load i64, ptr %i.d, align 8
  %i.l = call i32 @__SCT__might_resched() #29     ; 0 uses
  %i.m = load volatile i64, ptr %i.e, align 8
  %i.n = and i64 %i.m, 1
  %.not100 = icmp eq i64 %i.n, 0
  br i1 %.not100, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.o = call zeroext i1 @kthread_should_stop() #29
  br i1 %i.o, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call zeroext i1 @kthread_should_park() #29
  %.not = icmp eq i64 %i.k, 0
  %spec.select = select i1 %i.p, i1 true, i1 %.not
  br i1 %spec.select, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !30
  %i.q = load i64, ptr %i.d, align 8
  call void @init_wait_entry(ptr noundef nonnull %1, i32 noundef 0) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %bb.e
  %.066 = phi i64 [ %i.q, %bb.e ], [ %spec.store.select21, %bb.l ] ; 2 uses
  %i.r = call i64 @prepare_to_wait_event(ptr noundef %i.f, ptr noundef nonnull %1, i32 noundef 1) #29
  %i.s = load volatile i64, ptr %i.e, align 8
  %i.t = and i64 %i.s, 1
  %.not102 = icmp eq i64 %i.t, 0
  br i1 %.not102, label %bb.g, label %.thread82

bb.g:                                             ; preds = %bb.f
  %i.u = call zeroext i1 @kthread_should_stop() #29
  br i1 %i.u, label %.thread82, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = call zeroext i1 @kthread_should_park() #29 ; 2 uses
  %i.w = icmp eq i64 %.066, 0                     ; 2 uses
  %or.cond12.not = select i1 %i.v, i1 %i.w, i1 false
  %spec.store.select20 = select i1 %or.cond12.not, i64 1, i64 %.066
  %spec.select74 = select i1 %i.v, i1 true, i1 %i.w
  br i1 %spec.select74, label %.thread82, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not71 = icmp eq i64 %i.r, 0
  br i1 %.not71, label %bb.j, label %.thread91

bb.j:                                             ; preds = %bb.i
  %i.x = call i64 @schedule_timeout(i64 noundef %spec.store.select20) #29 ; 2 uses
  %i.y = load volatile i64, ptr %i.e, align 8
  %i.z = and i64 %i.y, 1
  %.not104 = icmp eq i64 %i.z, 0
  br i1 %.not104, label %bb.k, label %.thread82

bb.k:                                             ; preds = %bb.j
  %i.aa = call zeroext i1 @kthread_should_stop() #29
  br i1 %i.aa, label %.thread82, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = call zeroext i1 @kthread_should_park() #29 ; 2 uses
  %i.ac = icmp eq i64 %i.x, 0                     ; 2 uses
  %or.cond19.not = select i1 %i.ab, i1 %i.ac, i1 false
  %spec.store.select21 = select i1 %or.cond19.not, i64 1, i64 %i.x
  %spec.select75 = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %spec.select75, label %.thread82, label %bb.f

.thread82:                                        ; preds = %bb.j, %bb.k, %bb.l, %bb.f, %bb.g, %bb.h
  call void @finish_wait(ptr noundef %i.f, ptr noundef nonnull %1) #29
  br label %.thread91

.thread91:                                        ; preds = %bb.i, %.thread82
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %.thread91, %bb.d
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.e, i32 -2, ptr elementtype(i8) %i.e) #28, !srcloc !39
  %i.ad = call zeroext i1 @kthread_should_park() #29
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread
  call void @kthread_parkme() #29
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread
  %i.ae = call zeroext i1 @kthread_should_stop() #29
  br i1 %i.ae, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr %0, align 8
  call void %i.af(ptr noundef %0) #29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ag = call zeroext i1 @kthread_should_stop() #29
  br i1 %i.ag, label %._crit_edge, label %test_tsk_thread_flag.exit.i, !llvm.loop !168

._crit_edge:                                      ; preds = %bb.p, %bb.a
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @md_unregister_thread(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(address) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store volatile ptr null, ptr %1, align 8
  tail call void @synchronize_rcu() #29
  %i.b = getelementptr i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @kthread_stop(ptr noundef %i.c) #29 ; 0 uses
  tail call void @kfree(ptr noundef nonnull %i.a) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @register_md_submodule(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #32, !srcloc !36
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 44
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 2048
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.b, label %xa_insert.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @__SCT__might_resched() #29 ; 0 uses
  br label %xa_insert.exit

xa_insert.exit:                                   ; preds = %bb.a, %bb.b
  %i.i = sext i32 %i.b to i64
  tail call void @_raw_spin_lock(ptr noundef @md_submodule) #29
  %i.j = tail call i32 @__xa_insert(ptr noundef @md_submodule, i64 noundef range(i64 -2147483648, 2147483648) %i.i, ptr noundef %0, i32 noundef 3264) #29
  tail call void @_raw_spin_unlock(ptr noundef @md_submodule) #29
  ret i32 %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @unregister_md_submodule(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = tail call ptr @xa_erase(ptr noundef @md_submodule, i64 noundef %i.c) #29 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @md_setup_cluster(ptr noundef initializes((1864, 1872)) %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @_raw_spin_lock(ptr noundef @md_submodule) #29
  %i.a = tail call ptr @xa_load(ptr noundef @md_submodule, i64 noundef 11) #29 ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 1864       ; 6 uses
  store ptr %i.a, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %get_cluster_ops.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call zeroext i1 @try_module_get(ptr noundef %i.d) #29
  br i1 %i.e, label %get_cluster_ops.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8
  br label %get_cluster_ops.exit

get_cluster_ops.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_raw_spin_unlock(ptr noundef @md_submodule) #29
  %i.f = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %get_cluster_ops.exit
  %i.g = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef @.str.58) #29 ; 0 uses
  tail call void @_raw_spin_lock(ptr noundef @md_submodule) #29
  %i.h = tail call ptr @xa_load(ptr noundef @md_submodule, i64 noundef 11) #29 ; 3 uses
  store ptr %i.h, ptr %i.b, align 8
  %.not.i15 = icmp eq ptr %i.h, null
  br i1 %.not.i15, label %get_cluster_ops.exit16, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call zeroext i1 @try_module_get(ptr noundef %i.j) #29
  br i1 %i.k, label %get_cluster_ops.exit16, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.b, align 8
  br label %get_cluster_ops.exit16

get_cluster_ops.exit16:                           ; preds = %bb.d, %bb.e, %bb.f
  tail call void @_raw_spin_unlock(ptr noundef @md_submodule) #29
  %i.l = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %get_cluster_ops.exit16
  %i.n = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.59) #31 ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %get_cluster_ops.exit16, %get_cluster_ops.exit
  %i.o = phi ptr [ %i.l, %get_cluster_ops.exit16 ], [ %i.f, %get_cluster_ops.exit ]
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i32 %i.q(ptr noundef %0, i32 noundef %1) #29 ; 2 uses
  %.not14 = icmp eq i32 %i.r, 0
  br i1 %.not14, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr i8, ptr %0, i64 784
  store i32 0, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.0 = phi i32 [ -2, %bb.g ], [ 0, %bb.i ], [ %i.r, %bb.h ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @md_cluster_stop(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1864       ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %put_cluster_ops.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 %i.d(ptr noundef %0) #29, !inline_history !169 ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @module_put(ptr noundef %i.h) #29
  store ptr null, ptr %i.a, align 8
  br label %put_cluster_ops.exit

put_cluster_ops.exit:                             ; preds = %bb.a, %bb.b
  ret void
}
end_hunk_0
