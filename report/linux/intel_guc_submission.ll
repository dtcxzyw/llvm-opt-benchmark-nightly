Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_guc_submission?download=true
inline.NumInlined: 1050
inline.NumDeleted: 350
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@destroyed_worker_func:bb.a
  %i.cc = icmp eq i32 %i.cb, 1
  br i1 %i.cc, label %atomic_add_unless.exit.i.i.i.i13, label %.lr.ph.i.i.i.i10, !prof !34

atomic_add_unless.exit.i.i.i.i13:                 ; preds = %raw_atomic_try_cmpxchg.exit.i.i.i.i.i12, %deregister_destroyed_contexts.exit
  call void @__intel_wakeref_put_last(ptr noundef %i.f, i64 noundef 0) #21
  br label %intel_guc_is_ready.exit.thread

intel_guc_is_ready.exit.thread:                   ; preds = %.lr.ph.i.i.i.i10, %atomic_add_unless.exit.i.i.i.i13, %bb.a, %intel_guc_is_ready.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @reset_fail_worker_func(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1856
  %i.b = getelementptr i8, ptr %0, i64 -112       ; 2 uses
  %i.c = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.b) #21
  %i.d = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  store i32 0, ptr %i.d, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.b, i64 noundef %i.c) #21
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 3084
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, %i.e                       ; 2 uses
  %.not2729 = icmp eq i32 %i.h, 0
  br i1 %.not2729, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 2168
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %.030 = phi i32 [ %i.h, %.lr.ph ], [ %i.o, %bb.c ] ; 2 uses
  %i.j = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %.030, i32 -1) #20, !srcloc !49 ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw i64 1, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = xor i32 %i.m, -1
  %i.o = and i32 %.030, %i.n                      ; 2 uses
  %i.p = sext i32 %i.j to i64
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @intel_guc_find_hung_context(ptr noundef %i.r) #22
  %.not27 = icmp eq i32 %i.o, 0
  br i1 %.not27, label %.critedge, label %bb.c, !llvm.loop !91

.critedge:                                        ; preds = %bb.c, %bb.b
  tail call void (ptr, i32, i64, ptr, ...) @intel_gt_handle_error(ptr noundef %i.a, i32 noundef %i.e, i64 noundef 1, ptr noundef nonnull @.str.52, i32 noundef %i.e) #21
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @guc_timestamp_ping(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 -1624
  %i.d = getelementptr i8, ptr %0, i64 -2248      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 3176
  %i.g = tail call ptr @intel_runtime_pm_get_if_active(ptr noundef %i.f) #21
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !annotation !87
  store i32 0, ptr %i.b, align 4, !annotation !87
  %i.h = call i32 @intel_gt_reset_trylock(ptr noundef %i.d, ptr noundef nonnull %i.b) #21
  %.not20 = icmp eq i32 %i.h, 0
  br i1 %.not20, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call fastcc void @__update_guc_busyness_stats(ptr noundef %i.c) #22, !srcloc !92
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr i8, ptr %0, i64 -144       ; 2 uses
  %i.j = call ptr @xa_find(ptr noundef %i.i, ptr noundef nonnull %i.a, i64 noundef -1, i32 noundef 8) #21 ; 2 uses
  %.not2122 = icmp eq ptr %i.j, null
  br i1 %.not2122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.023 = phi ptr [ %i.k, %.lr.ph ], [ %i.j, %bb.c ]
  call void @guc_context_update_stats(ptr noundef nonnull %.023) #22, !srcloc !93
  %i.k = call ptr @xa_find_after(ptr noundef %i.i, ptr noundef nonnull %i.a, i64 noundef -1, i32 noundef 8) #21 ; 2 uses
  %.not21 = icmp eq ptr %i.k, null
  br i1 %.not21, label %._crit_edge, label %.lr.ph, !llvm.loop !94

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.l = load i32, ptr %i.b, align 4
  call void @intel_gt_reset_unlock(ptr noundef %i.d, i32 noundef %i.l) #21
  %i.m = load ptr, ptr @system_highpri_wq, align 8
  %i.n = getelementptr i8, ptr %0, i64 -8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = call zeroext i1 @mod_delayed_work_on(i32 noundef 64, ptr noundef %i.m, ptr noundef %0, i64 noundef %i.o) #21 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %._crit_edge
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 3176
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.r) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @timer_init_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -71, 1) i32 @intel_guc_tlb_invalidation_done(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4                ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 1064       ; 3 uses
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #21
  %i.e = zext i32 %i.b to i64
  %i.f = tail call ptr @xa_load(ptr noundef %i.c, i64 noundef %i.e) #21 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__wake_up(ptr noundef nonnull %i.f, i32 noundef 3, i32 noundef 1, ptr noundef null) #21 ; 0 uses
  br label %wait_wake_outstanding_tlb_g2h.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 -624
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ %i.k, %bb.e ], [ null, %bb.d ]
  %i.m = getelementptr i8, ptr %0, i64 4312
  %i.n = load i32, ptr %i.m, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.l, i32 noundef 1, ptr noundef nonnull @.str.39, i32 noundef %i.n, i32 noundef %i.b) #21
  br label %wait_wake_outstanding_tlb_g2h.exit

wait_wake_outstanding_tlb_g2h.exit:               ; preds = %bb.c, %__drm_to_dev.exit.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.d) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %wait_wake_outstanding_tlb_g2h.exit
  %.0 = phi i32 [ 0, %wait_wake_outstanding_tlb_g2h.exit ], [ -71, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -15, -16) i32 @intel_guc_invalidate_tlb_engines(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @guc_send_invalidate_tlb(ptr noundef %0, i32 noundef 0) #22, !srcloc !95
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -15, -16) i32 @guc_send_invalidate_tlb(ptr noundef %0, i32 noundef range(i32 0, 4) %1) unnamed_addr #0 align 16 prefalign(16) {
intel_gt_is_wedged.exit.i:
  %2 = alloca %struct.intel_guc_tlb_wait, align 8 ; 6 uses
  %3 = alloca %struct.wait_queue_entry, align 8   ; 13 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca [3 x i32], align 4                ; 9 uses
  %4 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.c = getelementptr i8, ptr %0, i64 -624       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #20, !srcloc !10
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  store i64 0, ptr %3, align 8
  store ptr %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @woken_wake_function, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.h, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.h, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 28672, ptr %i.b, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = or disjoint i32 %1, -2147483648
  store i32 %i.l, ptr %i.k, align 4
  %i.m = getelementptr i8, ptr %0, i64 2864       ; 2 uses
  %i.n = load volatile i64, ptr %i.m, align 8
  %.in.i.i = icmp slt i64 %i.n, 0
  br i1 %.in.i.i, label %intel_gt_is_enabled.exit.thread, label %intel_gt_is_enabled.exit

intel_gt_is_enabled.exit:                         ; preds = %intel_gt_is_wedged.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false), !annotation !87
  store i32 0, ptr %i.a, align 4, !annotation !87
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = call zeroext i1 @intel_irqs_enabled(ptr noundef %i.o) #21
  br i1 %i.p, label %bb.a, label %intel_gt_is_enabled.exit.thread

bb.a:                                             ; preds = %intel_gt_is_enabled.exit
  call void @__init_waitqueue_head(ptr noundef nonnull %2, ptr noundef nonnull @.str.40, ptr noundef nonnull @guc_send_invalidate_tlb.__key) #21
  %i.q = getelementptr i8, ptr %0, i64 1064       ; 11 uses
  %i.r = getelementptr i8, ptr %0, i64 1084
  call void @_raw_spin_lock_irq(ptr noundef %i.q) #21
  %i.s = call i32 @__xa_alloc_cyclic(ptr noundef %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull %2, i64 4294967295, ptr noundef %i.r, i32 noundef 10272) #21
  call void @_raw_spin_unlock_irq(ptr noundef %i.q) #21
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @_raw_spin_lock_irq(ptr noundef %i.q) #21
  %i.u = getelementptr i8, ptr %0, i64 1080       ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = zext i32 %i.v to i64
  %i.x = call ptr @xa_load(ptr noundef %i.q, i64 noundef %i.w) #21 ; 4 uses
  %i.y = getelementptr i8, ptr %i.x, i64 24       ; 4 uses
  %i.z = load volatile i8, ptr %i.y, align 8, !range !12, !noundef !13
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false), !annotation !87
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ab = call i64 @prepare_to_wait_event(ptr noundef %i.x, ptr noundef nonnull %4, i32 noundef 2) #21 ; 0 uses
  %i.ac = load volatile i8, ptr %i.y, align 8, !range !12, !noundef !13
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_raw_spin_unlock_irq(ptr noundef %i.q) #21
  call void @schedule() #21
  call void @_raw_spin_lock_irq(ptr noundef %i.q) #21
  %i.ae = load volatile i8, ptr %i.y, align 8, !range !12, !noundef !13
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @finish_wait(ptr noundef %i.x, ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  store i8 1, ptr %i.y, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %i.q) #21
  %i.ag = load i32, ptr %i.u, align 8             ; 2 uses
  store i32 %i.ag, ptr %i.a, align 4
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.ah = phi i32 [ %i.ag, %bb.g ], [ %.pre, %._crit_edge ]
  %.035 = phi ptr [ %i.x, %bb.g ], [ %2, %._crit_edge ] ; 2 uses
  store i32 %i.ah, ptr %i.j, align 4
  call void @add_wait_queue(ptr noundef %.035, ptr noundef nonnull %3) #21
  %i.ai = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count) #25, !srcloc !96
  %i.aj = and i32 %i.ai, 2147483647
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.ak = call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !97
  %i.al = and i64 %i.ak, 512
  %.not.i.i44.not = icmp eq i64 %i.al, 0
  br i1 %.not.i.i44.not, label %.thread.i, label %.thread.i.thread

.thread.i:                                        ; preds = %bb.i, %bb.h
  %i.am = getelementptr i8, ptr %0, i64 640       ; 2 uses
  %i.an = call i32 @intel_guc_ct_send(ptr noundef %i.am, ptr noundef nonnull %i.b, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef -2147483647) #21 ; 2 uses
  %i.ao = icmp eq i32 %i.an, -16
  br i1 %i.ao, label %.lr.ph.split.split.i, label %intel_guc_send_busy_loop.exit, !prof !98

.thread.i.thread:                                 ; preds = %bb.i
  %i.ap = call i32 @__SCT__might_resched() #21    ; 0 uses
  %i.aq = getelementptr i8, ptr %0, i64 640       ; 2 uses
  %i.ar = call i32 @intel_guc_ct_send(ptr noundef %i.aq, ptr noundef nonnull %i.b, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef -2147483647) #21 ; 2 uses
  %i.as = icmp eq i32 %i.ar, -16
  br i1 %i.as, label %.lr.ph.split.us.split.i, label %intel_guc_send_busy_loop.exit, !prof !98

.lr.ph.split.us.split.i:                          ; preds = %.thread.i.thread, %bb.j
  %.01620.us.i = phi i32 [ %i.au, %bb.j ], [ 1, %.thread.i.thread ] ; 2 uses
  %i.at = call i64 @msleep_interruptible(i32 noundef %.01620.us.i) #21
  %.not18.us.i = icmp eq i64 %i.at, 0
  br i1 %.not18.us.i, label %bb.j, label %intel_guc_send_busy_loop.exit.thread

bb.j:                                             ; preds = %.lr.ph.split.us.split.i
  %i.au = shl i32 %.01620.us.i, 1
  %i.av = call i32 @intel_guc_ct_send(ptr noundef %i.aq, ptr noundef nonnull %i.b, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef -2147483647) #21 ; 2 uses
  %i.aw = icmp eq i32 %i.av, -16
  br i1 %i.aw, label %.lr.ph.split.us.split.i, label %intel_guc_send_busy_loop.exit, !prof !99

.lr.ph.split.split.i:                             ; preds = %.thread.i, %.lr.ph.split.split.i
  call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !100
  %i.ax = call i32 @intel_guc_ct_send(ptr noundef %i.am, ptr noundef nonnull %i.b, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef -2147483647) #21 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, -16
  br i1 %i.ay, label %.lr.ph.split.split.i, label %intel_guc_send_busy_loop.exit, !prof !99

intel_guc_send_busy_loop.exit:                    ; preds = %bb.j, %.lr.ph.split.split.i, %.thread.i.thread, %.thread.i
  %.0.i43 = phi i32 [ %i.ar, %.thread.i.thread ], [ %i.an, %.thread.i ], [ %i.ax, %.lr.ph.split.split.i ], [ %i.av, %bb.j ] ; 2 uses
  %.not = icmp eq i32 %.0.i43, 0
  br i1 %.not, label %bb.k, label %intel_guc_send_busy_loop.exit.thread

bb.k:                                             ; preds = %intel_guc_send_busy_loop.exit
  %i.az = call i64 @intel_guc_ct_max_queue_time_jiffies() #21
  %i.ba = getelementptr i8, ptr %i.f, i64 24      ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %.0.i45 = phi i64 [ %i.az, %bb.k ], [ %i.be, %bb.n ] ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_sched_set_state_tp, i64 8), i1 false) #19
          to label %arch_static_branch.exit23.i [label %bb.m], !srcloc !101

bb.m:                                             ; preds = %bb.l
  call void @__trace_set_current_state(i32 noundef 2) #21
  br label %arch_static_branch.exit23.i

arch_static_branch.exit23.i:                      ; preds = %bb.m, %bb.l
  %i.bb = call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ba, i32 2, ptr elementtype(i32) %i.ba) #19, !srcloc !102 ; 0 uses
  %i.bc = load i32, ptr %3, align 8
  %i.bd = and i32 %i.bc, 2
  %.not.i46 = icmp eq i32 %i.bd, 0
  br i1 %.not.i46, label %bb.n, label %bb.o

bb.n:                                             ; preds = %arch_static_branch.exit23.i
  %i.be = call i64 @schedule_timeout(i64 noundef %.0.i45) #21 ; 2 uses
  %.not21.i = icmp eq i64 %i.be, 0
  br i1 %.not21.i, label %bb.o, label %bb.l, !llvm.loop !103

bb.o:                                             ; preds = %bb.n, %arch_static_branch.exit23.i
  %.1.i = phi i64 [ %.0.i45, %arch_static_branch.exit23.i ], [ 0, %bb.n ]
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_sched_set_state_tp, i64 8), i1 false) #19
          to label %must_wait_woken.exit [label %bb.p], !srcloc !101

bb.p:                                             ; preds = %bb.o
  call void @__trace_set_current_state(i32 noundef 0) #21
  br label %must_wait_woken.exit

must_wait_woken.exit:                             ; preds = %bb.o, %bb.p
  store volatile i32 0, ptr %i.ba, align 8
  %i.bf = load i32, ptr %3, align 8
  %i.bg = and i32 %i.bf, -3
  %i.bh = call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %3, i32 %i.bg, ptr nonnull elementtype(i32) %3) #19, !srcloc !104 ; 0 uses
  %.not40 = icmp eq i64 %.1.i, 0
  br i1 %.not40, label %intel_gt_is_wedged.exit.i48, label %intel_guc_send_busy_loop.exit.thread

intel_gt_is_wedged.exit.i48:                      ; preds = %must_wait_woken.exit
  %i.bi = load volatile i64, ptr %i.m, align 8
  %.in.i.i50 = icmp slt i64 %i.bi, 0
  br i1 %.in.i.i50, label %intel_guc_send_busy_loop.exit.thread, label %intel_gt_is_enabled.exit52

intel_gt_is_enabled.exit52:                       ; preds = %intel_gt_is_wedged.exit.i48
  %i.bj = load ptr, ptr %i.c, align 8
  %i.bk = call zeroext i1 @intel_irqs_enabled(ptr noundef %i.bj) #21
  br i1 %i.bk, label %bb.q, label %intel_guc_send_busy_loop.exit.thread

bb.q:                                             ; preds = %intel_gt_is_enabled.exit52
  %i.bl = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i53 = icmp eq ptr %i.bl, null
  br i1 %.not.i53, label %__drm_to_dev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.q, %bb.r
  %i.bo = phi ptr [ %i.bn, %bb.r ], [ null, %bb.q ]
  %i.bp = getelementptr i8, ptr %0, i64 4312
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = load i32, ptr %i.a, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bo, ptr noundef nonnull @.str.41, i32 noundef %i.bq, i32 noundef %i.br) #23
  br label %intel_guc_send_busy_loop.exit.thread

intel_guc_send_busy_loop.exit.thread:             ; preds = %.lr.ph.split.us.split.i, %intel_gt_is_wedged.exit.i48, %must_wait_woken.exit, %intel_gt_is_enabled.exit52, %__drm_to_dev.exit, %intel_guc_send_busy_loop.exit
  %.036 = phi i32 [ %.0.i43, %intel_guc_send_busy_loop.exit ], [ 0, %must_wait_woken.exit ], [ -62, %__drm_to_dev.exit ], [ 0, %intel_gt_is_enabled.exit52 ], [ 0, %intel_gt_is_wedged.exit.i48 ], [ -4, %.lr.ph.split.us.split.i ] ; 2 uses
  call void @remove_wait_queue(ptr noundef %.035, ptr noundef nonnull %3) #21
  %i.bs = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bt = getelementptr i8, ptr %0, i64 1080
end_hunk_0
