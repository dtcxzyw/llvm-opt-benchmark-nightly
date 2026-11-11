Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/kprobes?download=true
inline.NumInlined: 281
inline.NumDeleted: 96
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@disarm_kprobe:bb.a
bb.u:                                             ; preds = %.lr.ph.i.i.17.i
  %i.gf = load volatile ptr, ptr %.02431.i.i.17.i, align 8 ; 2 uses
  %.not27.i.i.17.i = icmp eq ptr %i.gf, null
  br i1 %.not27.i.i.17.i, label %__disarm_kprobe.exit, label %.lr.ph.i.i.17.i, !llvm.loop !2

get_kprobe.exit.thread.i.i:                       ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.1.i, %.lr.ph.i.i.2.i, %.lr.ph.i.i.3.i, %.lr.ph.i.i.4.i, %.lr.ph.i.i.5.i, %.lr.ph.i.i.6.i, %.lr.ph.i.i.7.i, %.lr.ph.i.i.8.i, %.lr.ph.i.i.9.i, %.lr.ph.i.i.10.i, %.lr.ph.i.i.11.i, %.lr.ph.i.i.12.i, %.lr.ph.i.i.13.i, %.lr.ph.i.i.14.i, %.lr.ph.i.i.15.i, %.lr.ph.i.i.16.i, %.lr.ph.i.i.17.i
  %.02431.i.i.lcssa.i = phi ptr [ %.02431.i.i.10.i, %.lr.ph.i.i.10.i ], [ %.02431.i.i.11.i, %.lr.ph.i.i.11.i ], [ %.02431.i.i.12.i, %.lr.ph.i.i.12.i ], [ %.02431.i.i.13.i, %.lr.ph.i.i.13.i ], [ %.02431.i.i.14.i, %.lr.ph.i.i.14.i ], [ %.02431.i.i.15.i, %.lr.ph.i.i.15.i ], [ %.02431.i.i.16.i, %.lr.ph.i.i.16.i ], [ %.02431.i.i.17.i, %.lr.ph.i.i.17.i ], [ %.02431.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.02431.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.02431.i.i.3.i, %.lr.ph.i.i.3.i ], [ %.02431.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.02431.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.02431.i.i.6.i, %.lr.ph.i.i.6.i ], [ %.02431.i.i.7.i, %.lr.ph.i.i.7.i ], [ %.02431.i.i.8.i, %.lr.ph.i.i.8.i ], [ %.02431.i.i.9.i, %.lr.ph.i.i.9.i ], [ %.02431.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %i.gg = getelementptr i8, ptr %.02431.i.i.lcssa.i, i64 64
  %.val.i.i.i = load ptr, ptr %i.gg, align 8
  %i.gh = icmp eq ptr %.val.i.i.i, @aggr_pre_handler
  br i1 %i.gh, label %kprobe_optready.exit.i.i, label %__disarm_kprobe.exit

kprobe_optready.exit.i.i:                         ; preds = %get_kprobe.exit.thread.i.i
  %i.gi = getelementptr i8, ptr %.02431.i.i.lcssa.i, i64 160
  %.val5.i.i.i = load i64, ptr %i.gi, align 8
  %i.gj = and i64 %.val5.i.i.i, 4294967295
  %.not15.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not15.i.i, label %__disarm_kprobe.exit, label %bb.v

bb.v:                                             ; preds = %kprobe_optready.exit.i.i
  %i.gk = tail call i32 @arch_within_optimized_kprobe(ptr noundef nonnull %.02431.i.i.lcssa.i, ptr noundef %i.h) #20
  %.not16.i.i = icmp ne i32 %i.gk, 0
  %brmerge.not.i = and i1 %1, %.not16.i.i
  br i1 %brmerge.not.i, label %bb.w, label %__disarm_kprobe.exit

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @optimize_kprobe(ptr noundef nonnull %.02431.i.i.lcssa.i) #22, !srcloc !108
  br label %__disarm_kprobe.exit

__disarm_kprobe.exit:                             ; preds = %bb.u, %bb.c, %get_kprobe.exit.i.16.i, %get_kprobe.exit.thread.i.i, %kprobe_optready.exit.i.i, %bb.v, %bb.w
  tail call void @mutex_unlock(ptr noundef @text_mutex) #20
  tail call void @cpus_read_unlock() #20
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %__disarm_kprobe.exit
  %.0 = phi i32 [ 0, %__disarm_kprobe.exit ], [ -19, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @arch_disarm_kprobe(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @arch_within_optimized_kprobe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @arch_arm_kprobe(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc i32 @populate_kprobe_blacklist() unnamed_addr #12 section ".init.text" align 16 {
bb.a:
  %i.a = icmp ult ptr @__start_kprobe_blacklist, @__stop_kprobe_blacklist
  br i1 %i.a, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.b = getelementptr i8, ptr %.01, i64 8        ; 2 uses
  %i.c = icmp ult ptr %i.b, @__stop_kprobe_blacklist
  br i1 %i.c, label %.lr.ph, label %._crit_edge, !llvm.loop !109

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01 = phi ptr [ %i.b, %bb.b ], [ @__start_kprobe_blacklist, %bb.a ] ; 2 uses
  %i.d = load i64, ptr %.01, align 8
  %i.e = tail call i32 @kprobe_add_ksym_blacklist(i64 noundef %i.d) #22 ; 3 uses
  %i.f = icmp ne i32 %i.e, -22
  %i.g = icmp slt i32 %i.e, 0
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.h = tail call i32 @kprobe_add_area_blacklist(i64 noundef ptrtoint (ptr @__kprobes_text_start to i64), i64 noundef ptrtoint (ptr @__kprobes_text_end to i64)) #22 ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %._crit_edge
  %i.i = tail call i32 @kprobe_add_area_blacklist(i64 noundef ptrtoint (ptr @__noinstr_text_start to i64), i64 noundef ptrtoint (ptr @__noinstr_text_end to i64)) #22 ; 2 uses
  %.not17 = icmp eq i32 %i.i, 0
  br i1 %.not17, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @arch_populate_kprobe_blacklist() #27
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %._crit_edge
  %.013 = phi i32 [ %i.h, %._crit_edge ], [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.e, %.lr.ph ]
  ret i32 %.013
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @init_optprobe() unnamed_addr #12 section ".init.text" align 16 prefalign(16) {
bb.a:
  store i64 add (i64 sub (i64 ptrtoint (ptr @optprobe_template_end to i64), i64 ptrtoint (ptr @optprobe_template_entry to i64)), i64 24), ptr getelementptr inbounds nuw (i8, ptr @kprobe_optinsn_slots, i64 64), align 8
  tail call void @__init_waitqueue_head(ptr noundef @kprobe_optimizer_wait, ptr noundef @.str.16, ptr noundef @init_optprobe.__key) #20
  store volatile i32 0, ptr @optimizer_state, align 4
  %i.a = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef @kprobe_optimizer_thread, ptr noundef null, i32 noundef -1, ptr noundef @.str.17) #20 ; 3 uses
  %i.b = icmp ugt ptr %i.a, inttoptr (i64 -4096 to ptr)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @wake_up_process(ptr noundef %i.a) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.a, ptr @kprobe_optimizer_task, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @arch_init_kprobes() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @register_die_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @kprobe_optimizer_thread(ptr nofree readnone captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %2 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %i.a = tail call zeroext i1 @kthread_should_stop() #20
  br i1 %i.a, label %.critedge._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %kprobe_optimizer.exit
  %i.b = call i32 @__SCT__might_resched() #20     ; 0 uses
  %i.c = load volatile i32, ptr @optimizer_state, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %.lr.ph
  %i.d = call zeroext i1 @kthread_should_stop() #20
  br i1 %i.d, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !29
  call void @init_wait_entry(ptr noundef nonnull %1, i32 noundef 0) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %i.e = call i64 @prepare_to_wait_event(ptr noundef @kprobe_optimizer_wait, ptr noundef nonnull %1, i32 noundef 1) #20
  %i.f = load volatile i32, ptr @optimizer_state, align 4
  %.not44 = icmp eq i32 %i.f, 0
  br i1 %.not44, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  %i.g = call zeroext i1 @kthread_should_stop() #20
  br i1 %i.g, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not45 = icmp eq i64 %i.e, 0
  br i1 %.not45, label %bb.g, label %.thread56

bb.g:                                             ; preds = %bb.f
  call void @schedule() #20
  %i.h = load volatile i32, ptr @optimizer_state, align 4
  %.not46 = icmp eq i32 %i.h, 0
  br i1 %.not46, label %bb.h, label %select.unfold

bb.h:                                             ; preds = %bb.g
  %i.i = call zeroext i1 @kthread_should_stop() #20
  br i1 %i.i, label %select.unfold, label %bb.d

select.unfold:                                    ; preds = %bb.h, %bb.g, %bb.d, %bb.e
  call void @finish_wait(ptr noundef @kprobe_optimizer_wait, ptr noundef nonnull %1) #20
  br label %.thread56

.thread56:                                        ; preds = %bb.f, %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.i

bb.i:                                             ; preds = %.thread56, %bb.b, %.lr.ph
  %i.j = call zeroext i1 @kthread_should_stop() #20
  br i1 %i.j, label %.critedge._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = load volatile i32, ptr @optimizer_state, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.m = call i32 @__SCT__might_resched() #20     ; 0 uses
  %i.n = load volatile i32, ptr @optimizer_state, align 4
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = call zeroext i1 @kthread_should_stop() #20
  br i1 %i.p, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !29
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.m
  %.040 = phi i64 [ 5, %bb.m ], [ %spec.store.select9, %bb.r ]
  %i.q = call i64 @prepare_to_wait_event(ptr noundef @kprobe_optimizer_wait, ptr noundef nonnull %2, i32 noundef 1) #20
  %i.r = load volatile i32, ptr @optimizer_state, align 4
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %.thread58, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = call zeroext i1 @kthread_should_stop() #20
  br i1 %i.t, label %.thread58, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not49 = icmp eq i64 %i.q, 0
  br i1 %.not49, label %bb.q, label %.thread68

bb.q:                                             ; preds = %bb.p
  %i.u = call i64 @schedule_timeout(i64 noundef %.040) #20 ; 2 uses
  %i.v = load volatile i32, ptr @optimizer_state, align 4
  %i.w = icmp eq i32 %i.v, 2
  br i1 %i.w, label %.thread58, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.x = call zeroext i1 @kthread_should_stop() #20 ; 2 uses
  %i.y = icmp eq i64 %i.u, 0
  %or.cond7.not = select i1 %i.x, i1 %i.y, i1 false
  %spec.store.select9 = select i1 %or.cond7.not, i64 1, i64 %i.u ; 2 uses
  %.not51 = icmp eq i64 %spec.store.select9, 0
  %spec.select52 = select i1 %i.x, i1 true, i1 %.not51
  br i1 %spec.select52, label %.thread58, label %bb.n

.thread58:                                        ; preds = %bb.q, %bb.r, %bb.n, %bb.o
  call void @finish_wait(ptr noundef @kprobe_optimizer_wait, ptr noundef nonnull %2) #20
  br label %.thread68

.thread68:                                        ; preds = %bb.p, %.thread58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.l, %.thread68, %bb.j
  %i.z = call zeroext i1 @kthread_should_stop() #20
  br i1 %i.z, label %.critedge._crit_edge, label %bb.s

bb.s:                                             ; preds = %.critedge
  store volatile i32 0, ptr @optimizer_state, align 4
  call void @mutex_lock(ptr noundef @kprobe_mutex) #20
  call void @cpus_read_lock() #20
  call void @mutex_lock(ptr noundef @text_mutex) #20
  call void @lockdep_assert_cpus_held() #20
  %i.aa = load volatile ptr, ptr @unoptimizing_list, align 8
  %.not.i.i = icmp eq ptr %i.aa, @unoptimizing_list
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @arch_unoptimize_kprobes(ptr noundef @unoptimizing_list, ptr noundef @freeing_list) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ab = load ptr, ptr @freeing_list, align 8    ; 2 uses
  %.not2124.i.i = icmp eq ptr %i.ab, @freeing_list
  br i1 %.not2124.i.i, label %do_unoptimize_kprobes.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %bb.aa
  %.pn.in25.i.i = phi ptr [ %.pn27.i.i, %bb.aa ], [ %i.ab, %bb.u ] ; 11 uses
  %.026.i.i = getelementptr i8, ptr %.pn.in25.i.i, i64 -128 ; 2 uses
  %.pn27.i.i = load ptr, ptr %.pn.in25.i.i, align 8 ; 2 uses
  %i.ac = getelementptr i8, ptr %.pn.in25.i.i, i64 -8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8            ; 3 uses
  %i.ae = and i32 %i.ad, -5
  store i32 %i.ae, ptr %i.ac, align 8
  %i.af = and i32 %i.ad, 3
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = trunc i32 %i.ad to i1
  %or.cond.i.i = or i1 %i.ag, %i.ah
  br i1 %or.cond.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  call void @arch_disarm_kprobe(ptr noundef %.026.i.i) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i.i
  %i.ai = getelementptr i8, ptr %.pn.in25.i.i, i64 -64
  %.val3.i.i.i = load ptr, ptr %i.ai, align 8
  %i.aj = icmp eq ptr %.val3.i.i.i, @aggr_pre_handler
  br i1 %i.aj, label %bb.x, label %kprobe_unused.exit.thread.i.i

bb.x:                                             ; preds = %bb.w
  %.val.i.i.i = load i32, ptr %i.ac, align 8
  %i.ak = and i32 %.val.i.i.i, 3
  %.not.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i, label %kprobe_unused.exit.thread.i.i, label %kprobe_unused.exit.i.i

kprobe_unused.exit.i.i:                           ; preds = %bb.x
  %i.al = getelementptr i8, ptr %.pn.in25.i.i, i64 -112 ; 2 uses
  %i.am = load volatile ptr, ptr %i.al, align 8
  %i.an = icmp eq ptr %i.am, %i.al
  br i1 %i.an, label %bb.y, label %kprobe_unused.exit.thread.i.i

bb.y:                                             ; preds = %kprobe_unused.exit.i.i
  %i.ao = load ptr, ptr %.026.i.i, align 8        ; 3 uses
  %i.ap = getelementptr i8, ptr %.pn.in25.i.i, i64 -120 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  store volatile ptr %i.ao, ptr %i.aq, align 8
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %hlist_del_rcu.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ar = getelementptr i8, ptr %i.ao, i64 8
  store volatile ptr %i.aq, ptr %i.ar, align 8
  br label %hlist_del_rcu.exit.i.i

hlist_del_rcu.exit.i.i:                           ; preds = %bb.z, %bb.y
  store volatile ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.ap, align 8
  br label %bb.aa

kprobe_unused.exit.thread.i.i:                    ; preds = %kprobe_unused.exit.i.i, %bb.x, %bb.w
  %i.as = getelementptr i8, ptr %.pn.in25.i.i, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = load ptr, ptr %.pn.in25.i.i, align 8    ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  store ptr %i.at, ptr %i.av, align 8
  store volatile ptr %i.au, ptr %i.at, align 8
  store volatile ptr %.pn.in25.i.i, ptr %.pn.in25.i.i, align 8
  store volatile ptr %.pn.in25.i.i, ptr %i.as, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %kprobe_unused.exit.thread.i.i, %hlist_del_rcu.exit.i.i
  %.not21.i.i = icmp eq ptr %.pn27.i.i, @freeing_list
  br i1 %.not21.i.i, label %do_unoptimize_kprobes.exit.i, label %.lr.ph.i.i, !llvm.loop !110

do_unoptimize_kprobes.exit.i:                     ; preds = %bb.aa, %bb.u
  call void @synchronize_rcu_tasks() #20
  call void @lockdep_assert_cpus_held() #20
  %.b.i.i = load i1, ptr @kprobes_all_disarmed, align 1
  %.not.i2.i = xor i1 %.b.i.i, true
  %.b2.i.i = load i1, ptr @kprobes_allow_optimization, align 1
  %or.cond.i3.i = select i1 %.not.i2.i, i1 %.b2.i.i, i1 false
  br i1 %or.cond.i3.i, label %bb.ab, label %do_optimize_kprobes.exit.i

bb.ab:                                            ; preds = %do_unoptimize_kprobes.exit.i
  %i.aw = load volatile ptr, ptr @optimizing_list, align 8
  %.not4.i.i = icmp eq ptr %i.aw, @optimizing_list
  br i1 %.not4.i.i, label %do_optimize_kprobes.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @arch_optimize_kprobes(ptr noundef @optimizing_list) #20
  br label %do_optimize_kprobes.exit.i

do_optimize_kprobes.exit.i:                       ; preds = %bb.ac, %bb.ab, %do_unoptimize_kprobes.exit.i
  %i.ax = load ptr, ptr @freeing_list, align 8    ; 2 uses
  %.not28.i.i = icmp eq ptr %i.ax, @freeing_list
  br i1 %.not28.i.i, label %do_free_cleaned_kprobes.exit.i, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %do_optimize_kprobes.exit.i, %bb.ax
  %.pn.in29.i.i = phi ptr [ %.pn31.i.i, %bb.ax ], [ %i.ax, %do_optimize_kprobes.exit.i ] ; 10 uses
  %.030.i.i = getelementptr i8, ptr %.pn.in29.i.i, i64 -128 ; 3 uses
  %.pn31.i.i = load ptr, ptr %.pn.in29.i.i, align 8 ; 4 uses
  %i.ay = getelementptr i8, ptr %.pn.in29.i.i, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr i8, ptr %.pn31.i.i, i64 8
  store ptr %i.az, ptr %i.ba, align 8
  store volatile ptr %.pn31.i.i, ptr %i.az, align 8
  store volatile ptr %.pn.in29.i.i, ptr %.pn.in29.i.i, align 8
  store volatile ptr %.pn.in29.i.i, ptr %i.ay, align 8
  %i.bb = getelementptr i8, ptr %.pn.in29.i.i, i64 -64
  %.val3.i.i5.i = load ptr, ptr %i.bb, align 8
  %i.bc = icmp eq ptr %.val3.i.i5.i, @aggr_pre_handler
  br i1 %i.bc, label %bb.ad, label %kprobe_unused.exit.thread.i6.i, !prof !113

bb.ad:                                            ; preds = %.lr.ph.i4.i
  %i.bd = getelementptr i8, ptr %.pn.in29.i.i, i64 -8
  %.val.i.i8.i = load i32, ptr %i.bd, align 8
  %i.be = and i32 %.val.i.i8.i, 3
  %.not.i.i9.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i9.i, label %kprobe_unused.exit.thread.i6.i, label %kprobe_unused.exit.i10.i, !prof !114

kprobe_unused.exit.i10.i:                         ; preds = %bb.ad
  %i.bf = getelementptr i8, ptr %.pn.in29.i.i, i64 -112 ; 2 uses
  %i.bg = load volatile ptr, ptr %i.bf, align 8
  %i.bh = icmp eq ptr %i.bg, %i.bf
  br i1 %i.bh, label %.critedge.i.i, label %kprobe_unused.exit.thread.i6.i, !prof !115

kprobe_unused.exit.thread.i6.i:                   ; preds = %kprobe_unused.exit.i10.i, %bb.ad, %.lr.ph.i4.i
  call void asm sideeffect "660: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 660b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 660) #21, !srcloc !116
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, ptr @.str.3, i32 601, i32 2307, i64 16) #21, !srcloc !117
  call void asm sideeffect "661: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 661b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 661) #21, !srcloc !118
  br label %bb.ax

.critedge.i.i:                                    ; preds = %kprobe_unused.exit.i10.i
  %i.bi = getelementptr i8, ptr %.pn.in29.i.i, i64 -88
  %i.bj = load ptr, ptr %i.bi, align 8            ; 19 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1     ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = mul i64 %i.bl, 7046029254386353131
  %i.bn = lshr i64 %i.bm, 58
  %i.bo = getelementptr [8 x i8], ptr @kprobe_table, i64 %i.bn
  %i.bp = load volatile ptr, ptr %i.bo, align 8   ; 2 uses
  %.not2730.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not2730.i.i.i.i, label %get_kprobe.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge.i.i, %bb.ae
  %.02431.i.i.i.i = phi ptr [ %i.bt, %bb.ae ], [ %i.bp, %.critedge.i.i ] ; 3 uses
  %i.bq = getelementptr i8, ptr %.02431.i.i.i.i, i64 40
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = icmp eq ptr %i.br, %i.bk
  br i1 %i.bs, label %get_kprobe.exit.thread.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i
  %i.bt = load volatile ptr, ptr %.02431.i.i.i.i, align 8 ; 2 uses
  %.not27.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not27.i.i.i.i, label %get_kprobe.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

get_kprobe.exit.i.i.i:                            ; preds = %bb.ae, %.critedge.i.i
  %i.bu = getelementptr i8, ptr %i.bj, i64 -2     ; 2 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = mul i64 %i.bv, 7046029254386353131
  %i.bx = lshr i64 %i.bw, 58
  %i.by = getelementptr [8 x i8], ptr @kprobe_table, i64 %i.bx
  %i.bz = load volatile ptr, ptr %i.by, align 8   ; 2 uses
  %.not2730.i.i.1.i.i = icmp eq ptr %i.bz, null
  br i1 %.not2730.i.i.1.i.i, label %get_kprobe.exit.i.1.i.i, label %.lr.ph.i.i.1.i.i

.lr.ph.i.i.1.i.i:                                 ; preds = %get_kprobe.exit.i.i.i, %bb.af
  %.02431.i.i.1.i.i = phi ptr [ %i.cd, %bb.af ], [ %i.bz, %get_kprobe.exit.i.i.i ] ; 3 uses
  %i.ca = getelementptr i8, ptr %.02431.i.i.1.i.i, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %get_kprobe.exit.thread.i.i.i, label %bb.af

end_hunk_0
