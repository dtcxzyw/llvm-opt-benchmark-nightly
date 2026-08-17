inline.NumInlined: 92
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@test_iothread_common:bb.a
bb.l:                                             ; preds = %bb.k
  %i.ae = sitofp i32 %i.ac to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 599, ptr noundef nonnull @__func__.test_iothread_common, ptr noundef nonnull @.str.45, x86_fp80 noundef %i.ae, ptr noundef nonnull @.str.39, x86_fp80 noundef 0.000000e+00, i8 noundef signext 105) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  br i1 %i.j, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @bdrv_drain_all_end() #15
  br label %do_drain_end.exit

bb.o:                                             ; preds = %bb.m
  call void @bdrv_drained_end(ptr noundef nonnull %i.n) #15
  br label %do_drain_end.exit

bb.p:                                             ; preds = %bb.f
  %i.af = call ptr @qemu_coroutine_create(ptr noundef nonnull @test_iothread_drain_co_entry, ptr noundef nonnull %2) #15
  call void @aio_co_enter(ptr noundef %i.d, ptr noundef %i.af) #15
  %i.ag = atomicrmw add ptr @global_aio_wait, i32 1 seq_cst, align 4 ; 0 uses
  fence syncscope("singlethread") seq_cst
  %i.ah = call ptr @qemu_get_current_aio_context() #15
  %i.ai = call ptr @qemu_get_aio_context() #15
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.p
  %i.ak = load i8, ptr %.sroa.5.0..sroa_idx, align 8, !range !8, !noundef !9
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %bb.p
  call void @__assert_fail(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.34, i32 noundef 605, ptr noundef nonnull @__PRETTY_FUNCTION__.test_iothread_common) #16
  unreachable

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.am = call ptr @qemu_get_aio_context() #15
  %i.an = call zeroext i1 @aio_poll(ptr noundef %i.am, i1 noundef zeroext true) #15 ; 0 uses
  %i.ao = load i8, ptr %.sroa.5.0..sroa_idx, align 8, !range !8, !noundef !9
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.aq = atomicrmw sub ptr @global_aio_wait, i32 1 seq_cst, align 4 ; 0 uses
  br label %do_drain_end.exit

do_drain_end.exit:                                ; preds = %bb.o, %bb.n, %._crit_edge
  %i.ar = call ptr @qemu_get_aio_context() #15
  %i.as = call i32 @blk_set_aio_context(ptr noundef %i.m, ptr noundef %i.ar, ptr noundef nonnull @error_abort) #15 ; 0 uses
  call void @bdrv_unref(ptr noundef nonnull %i.n) #15
  call void @blk_unref(ptr noundef %i.m) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %do_drain_end.exit
  call void @iothread_join(ptr noundef %i.b) #15
  call void @iothread_join(ptr noundef %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare ptr @iothread_new() local_unnamed_addr #1

declare ptr @iothread_get_aio_context(ptr noundef) local_unnamed_addr #1

declare void @blk_set_disable_request_queuing(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @blk_set_aio_context(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_event_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @test_iothread_aio_cb(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) #0 {
bb.a:
  store i32 %1, ptr %0, align 4
  tail call void @qemu_event_set(ptr noundef nonnull @done_event) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind sspstrong uwtable
define internal void @test_iothread_main_thread_bh(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call i32 @bdrv_flush(ptr noundef %i.a) #15 ; 0 uses
  %i.c = load ptr, ptr %0, align 8
  tail call void @bdrv_dec_in_flight(ptr noundef %i.c) #15
  ret void
}

declare void @qemu_event_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @test_iothread_drain_co_entry(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @bdrv_drain_all_begin() #15
  br label %do_drain_begin.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  tail call void @bdrv_drained_begin(ptr noundef %i.c) #15
  br label %do_drain_begin.exit

bb.d:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 167, ptr noundef nonnull @__func__.do_drain_begin, ptr noundef null) #16
  unreachable

do_drain_begin.exit:                              ; preds = %bb.b, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %do_drain_begin.exit
  %i.h = sitofp i32 %i.f to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 497, ptr noundef nonnull @__func__.test_iothread_drain_co_entry, ptr noundef nonnull @.str.67, x86_fp80 noundef %i.h, ptr noundef nonnull @.str.39, x86_fp80 noundef 0.000000e+00, i8 noundef signext 105) #15
  br label %bb.f

bb.f:                                             ; preds = %do_drain_begin.exit, %bb.e
  %i.i = load i32, ptr %i.a, align 8
  switch i32 %i.i, label %bb.i [
    i32 0, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  tail call void @bdrv_drain_all_end() #15
  br label %do_drain_end.exit

bb.h:                                             ; preds = %bb.f
  %i.j = load ptr, ptr %0, align 8
  tail call void @bdrv_drained_end(ptr noundef %i.j) #15
  br label %do_drain_end.exit

bb.i:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 176, ptr noundef nonnull @__func__.do_drain_end, ptr noundef null) #16
  unreachable

do_drain_end.exit:                                ; preds = %bb.g, %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.k, align 8
  tail call void @aio_wait_kick() #15
  ret void
}

declare ptr @qemu_get_current_aio_context() local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

declare void @iothread_join(ptr noundef) local_unnamed_addr #1

declare void @qemu_event_set(ptr noundef) local_unnamed_addr #1

declare void @aio_wait_kick() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @test_blockjob_common_drain_node(i32 noundef range(i32 0, 2) %0, i1 noundef zeroext %1, i32 noundef range(i32 0, 3) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @bdrv_new_open_driver(ptr noundef nonnull @bdrv_test, ptr noundef nonnull @.str.68, i32 noundef 2, ptr noundef nonnull @error_abort) #15 ; 6 uses
  %i.b = tail call ptr @bdrv_new_open_driver(ptr noundef nonnull @bdrv_test, ptr noundef nonnull @.str.69, i32 noundef 2, ptr noundef nonnull @error_abort) #15 ; 3 uses
  %i.c = tail call ptr @bdrv_new_open_driver(ptr noundef nonnull @bdrv_test, ptr noundef nonnull @.str.70, i32 noundef 2, ptr noundef nonnull @error_abort) #15 ; 3 uses
  tail call void @bdrv_graph_wrlock_drained() #15
  %i.d = tail call i32 @bdrv_set_backing_hd(ptr noundef %i.c, ptr noundef %i.a, ptr noundef nonnull @error_abort) #15 ; 0 uses
  tail call void @bdrv_unref(ptr noundef %i.a) #15
  %i.e = tail call i32 @bdrv_set_backing_hd(ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull @error_abort) #15 ; 0 uses
  tail call void @bdrv_unref(ptr noundef %i.b) #15
  tail call void @bdrv_graph_wrunlock() #15
  %i.f = tail call ptr @qemu_get_aio_context() #15
  %i.g = tail call ptr @blk_new(ptr noundef %i.f, i64 noundef 15, i64 noundef 15) #15 ; 4 uses
  %i.h = tail call i32 @blk_insert_bs(ptr noundef %i.g, ptr noundef %i.c, ptr noundef nonnull @error_abort) #15 ; 0 uses
  %trunc = trunc nuw i32 %3 to i1
  %. = select i1 %trunc, ptr %i.b, ptr %i.a       ; 2 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @iothread_new() #15        ; 2 uses
  %i.j = tail call ptr @iothread_get_aio_context(ptr noundef %i.i) #15
  %i.k = tail call i32 @blk_set_aio_context(ptr noundef %i.g, ptr noundef %i.j, ptr noundef nonnull @error_abort) #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0135 = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.l = tail call ptr @bdrv_new_open_driver(ptr noundef nonnull @bdrv_test, ptr noundef nonnull @.str.71, i32 noundef 2, ptr noundef nonnull @error_abort) #15 ; 5 uses
  %i.m = tail call ptr @qemu_get_aio_context() #15
  %i.n = tail call ptr @blk_new(ptr noundef %i.m, i64 noundef 15, i64 noundef 15) #15 ; 4 uses
  %i.o = tail call i32 @blk_insert_bs(ptr noundef %i.n, ptr noundef %i.l, ptr noundef nonnull @error_abort) #15 ; 0 uses
  tail call void @blk_set_allow_aio_context_change(ptr noundef %i.n, i1 noundef zeroext true) #15
  %i.p = tail call ptr @block_job_create(ptr noundef nonnull @.str.72, ptr noundef nonnull @test_job_driver, ptr noundef null, ptr noundef %i.a, i64 noundef 0, i64 noundef 15, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull @error_abort) #15 ; 15 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 520
  store ptr %i.a, ptr %i.q, align 8
  tail call void @bdrv_graph_wrlock_drained() #15
  %i.r = tail call i32 @block_job_add_bdrv(ptr noundef %i.p, ptr noundef nonnull @.str.71, ptr noundef %i.l, i64 noundef 0, i64 noundef 15, ptr noundef nonnull @error_abort) #15 ; 0 uses
  tail call void @bdrv_graph_wrunlock() #15
  switch i32 %2, label %bb.f [
    i32 2, label %bb.e
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr %i.p, i64 528
  store i32 -5, ptr %4, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 532
  store i32 -5, ptr %i.s, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  tail call void @job_start(ptr noundef nonnull %i.p) #15
  br i1 %1, label %.preheader246, label %.split.us

.preheader246:                                    ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 536 ; 2 uses
  %i.u = load atomic i8, ptr %i.t monotonic, align 8, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.split.us, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader246, %.lr.ph
  %i.w = tail call ptr @qemu_get_aio_context() #15
  %i.x = tail call zeroext i1 @aio_poll(ptr noundef %i.w, i1 noundef zeroext false) #15 ; 0 uses
  %i.y = load atomic i8, ptr %i.t monotonic, align 8, !range !8, !noundef !9
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.split.us, label %.lr.ph, !llvm.loop !21

.split.us:                                        ; preds = %.lr.ph, %bb.f, %.preheader246
  %i.aa = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.aa(ptr noundef nonnull @job_mutex, ptr noundef nonnull @.str.83, i32 noundef 56) #15, !inline_history !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 181 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 536
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 180 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 176 ; 7 uses
  %i.af = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split.us
  %i.ah = sitofp i32 %i.af to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 808, ptr noundef nonnull @__func__.test_blockjob_common_drain_node, ptr noundef nonnull @.str.73, x86_fp80 noundef %i.ah, ptr noundef nonnull @.str.39, x86_fp80 noundef 0.000000e+00, i8 noundef signext 105) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.us
  %i.ai = load i8, ptr %i.ab, align 1, !range !8, !noundef !9
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %bb.h
  tail call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 809, ptr noundef nonnull @__func__.test_blockjob_common_drain_node, ptr noundef nonnull @.str.74) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = load atomic i8, ptr %i.ac monotonic, align 8, !range !8, !noundef !9
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.l, label %bb.k, !prof !17

bb.k:                                             ; preds = %bb.j
  tail call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 810, ptr noundef nonnull @__func__.test_blockjob_common_drain_node, ptr noundef nonnull @.str.75) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = load i8, ptr %i.ad, align 4, !range !8, !noundef !9
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %qemu_lockable_auto_unlock.exit.us, label %bb.m, !prof !17

bb.m:                                             ; preds = %bb.l
  tail call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 811, ptr noundef nonnull @__func__.test_blockjob_common_drain_node, ptr noundef nonnull @.str.76) #15
  br label %qemu_lockable_auto_unlock.exit.us

qemu_lockable_auto_unlock.exit.us:                ; preds = %bb.m, %bb.l
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @job_mutex, ptr noundef nonnull @.str.83, i32 noundef 56) #15
  %i.ao = icmp eq i32 %0, 0                       ; 4 uses
  br i1 %i.ao, label %bb.p, label %bb.r

bb.n:                                             ; preds = %qemu_lockable_auto_unlock.exit192
  tail call void @bdrv_drain_all_end() #15
  br label %do_drain_end_unlocked.exit

bb.o:                                             ; preds = %qemu_lockable_auto_unlock.exit192
  tail call void @bdrv_drained_end(ptr noundef %.) #15
  br label %do_drain_end_unlocked.exit

do_drain_end_unlocked.exit:                       ; preds = %bb.n, %bb.o
  br i1 %1, label %.preheader244, label %.split252.us

.preheader244:                                    ; preds = %do_drain_end_unlocked.exit
  %i.ap = tail call zeroext i1 @job_is_paused(ptr noundef nonnull %i.p) #15
  br i1 %i.ap, label %.lr.ph250, label %.split252.us

bb.p:                                             ; preds = %qemu_lockable_auto_unlock.exit.us
  tail call void @bdrv_drain_all_begin() #15
  %i.aq = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.aq(ptr noundef nonnull @job_mutex, ptr noundef nonnull @.str.83, i32 noundef 56) #15, !inline_history !22
  %i.ar = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = sitofp i32 %i.ar to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 819, ptr noundef nonnull @__func__.test_blockjob_common_drain_node, ptr noundef nonnull @.str.77, x86_fp80 noundef %i.at, ptr noundef nonnull @.str.39, x86_fp80 noundef 2.000000e+00, i8 noundef signext 105) #15
  br label %bb.t

bb.r:                                             ; preds = %qemu_lockable_auto_unlock.exit.us
  tail call void @bdrv_drained_begin(ptr noundef %.) #15
  %i.au = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.au(ptr noundef nonnull @job_mutex, ptr noundef nonnull @.str.83, i32 noundef 56) #15, !inline_history !22
  %i.av = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = sitofp i32 %i.av to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 821, ptr noundef nonnull @__func__.test_blockjob_common_drain_node, ptr noundef nonnull @.str.78, x86_fp80 noundef %i.ax, ptr noundef nonnull @.str.39, x86_fp80 noundef 1.000000e+00, i8 noundef signext 105) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.ay = load i8, ptr %i.ab, align 1, !range !8, !noundef !9
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.v, label %bb.u, !prof !17

bb.u:                                             ; preds = %bb.t
  tail call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 823, ptr noundef nonnull @__func__.test_blockjob_common_drain_node, ptr noundef nonnull @.str.79) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ba = load i8, ptr %i.ad, align 4, !range !8, !noundef !9
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.w, label %qemu_lockable_auto_unlock.exit192, !prof !16

bb.w:                                             ; preds = %bb.v
  tail call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 824, ptr noundef nonnull @__func__.test_blockjob_common_drain_node, ptr noundef nonnull @.str.80) #15
  br label %qemu_lockable_auto_unlock.exit192

qemu_lockable_auto_unlock.exit192:                ; preds = %bb.w, %bb.v
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @job_mutex, ptr noundef nonnull @.str.83, i32 noundef 56) #15
  br i1 %i.ao, label %bb.n, label %bb.o

.lr.ph250:                                        ; preds = %.preheader244, %.lr.ph250
  %i.bc = tail call ptr @qemu_get_aio_context() #15
  %i.bd = tail call zeroext i1 @aio_poll(ptr noundef %i.bc, i1 noundef zeroext false) #15 ; 0 uses
  %i.be = tail call zeroext i1 @job_is_paused(ptr noundef nonnull %i.p) #15
  br i1 %i.be, label %.lr.ph250, label %.split252.us, !llvm.loop !23

.split252.us:                                     ; preds = %.lr.ph250, %do_drain_end_unlocked.exit, %.preheader244
  %i.bf = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.bf(ptr noundef nonnull @job_mutex, ptr noundef nonnull @.str.83, i32 noundef 56) #15, !inline_history !22
  %i.bg = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.split252.us
  %i.bi = sitofp i32 %i.bg to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 842, ptr noundef nonnull @__func__.test_blockjob_common_drain_node, ptr noundef nonnull @.str.73, x86_fp80 noundef %i.bi, ptr noundef nonnull @.str.39, x86_fp80 noundef 0.000000e+00, i8 noundef signext 105) #15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.split252.us
  %i.bj = load i8, ptr %i.ab, align 1, !range !8, !noundef !9
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.z, label %bb.aa, !prof !16

bb.z:                                             ; preds = %bb.y
  tail call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 843, ptr noundef nonnull @__func__.test_blockjob_common_drain_node, ptr noundef nonnull @.str.74) #15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bl = load i8, ptr %i.ad, align 4, !range !8, !noundef !9
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %qemu_lockable_auto_unlock.exit206.us, label %bb.ab, !prof !17

bb.ab:                                            ; preds = %bb.aa
  tail call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 844, ptr noundef nonnull @__func__.test_blockjob_common_drain_node, ptr noundef nonnull @.str.76) #15
  br label %qemu_lockable_auto_unlock.exit206.us

qemu_lockable_auto_unlock.exit206.us:             ; preds = %bb.ab, %bb.aa
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @job_mutex, ptr noundef nonnull @.str.83, i32 noundef 56) #15
  br i1 %i.ao, label %bb.ae, label %bb.ag

bb.ac:                                            ; preds = %qemu_lockable_auto_unlock.exit216
  tail call void @bdrv_drain_all_end() #15
  br label %do_drain_end_unlocked.exit212

bb.ad:                                            ; preds = %qemu_lockable_auto_unlock.exit216
  tail call void @bdrv_drained_end(ptr noundef %i.l) #15
  br label %do_drain_end_unlocked.exit212

do_drain_end_unlocked.exit212:                    ; preds = %bb.ac, %bb.ad
  br i1 %1, label %.preheader, label %.split256.us

.preheader:                                       ; preds = %do_drain_end_unlocked.exit212
  %i.bn = tail call zeroext i1 @job_is_paused(ptr noundef nonnull %i.p) #15
  br i1 %i.bn, label %.lr.ph254, label %.split256.us

bb.ae:                                            ; preds = %qemu_lockable_auto_unlock.exit206.us
  tail call void @bdrv_drain_all_begin() #15
  %i.bo = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.bo(ptr noundef nonnull @job_mutex, ptr noundef nonnull @.str.83, i32 noundef 56) #15, !inline_history !22
  %i.bp = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 2
  br i1 %i.bq, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.br = sitofp i32 %i.bp to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 852, ptr noundef nonnull @__func__.test_blockjob_common_drain_node, ptr noundef nonnull @.str.77, x86_fp80 noundef %i.br, ptr noundef nonnull @.str.39, x86_fp80 noundef 2.000000e+00, i8 noundef signext 105) #15
  br label %bb.ai

bb.ag:                                            ; preds = %qemu_lockable_auto_unlock.exit206.us
  tail call void @bdrv_drained_begin(ptr noundef %i.l) #15
  %i.bs = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.bs(ptr noundef nonnull @job_mutex, ptr noundef nonnull @.str.83, i32 noundef 56) #15, !inline_history !22
  %i.bt = load i32, ptr %i.ae, align 8            ; 2 uses
end_hunk_0
