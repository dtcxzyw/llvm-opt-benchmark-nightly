Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/thread?download=true
inline.NumInlined: 1399
inline.NumDeleted: 321
begin_hunk_0_@blocking_region_end:bb.a
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %rb_native_mutex_lock.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.b) #41
  unreachable

rb_native_mutex_lock.exit.i:                      ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 336
  store ptr null, ptr %i.c, align 8, !tbaa !79
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef %i.a) #17 ; 2 uses
  %.not.i3.i = icmp eq i32 %i.d, 0
  br i1 %.not.i3.i, label %unblock_function_clear.exit, label %bb.c

bb.c:                                             ; preds = %rb_native_mutex_lock.exit.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.d) #41
  unreachable

unblock_function_clear.exit:                      ; preds = %rb_native_mutex_lock.exit.i
  %i.e = getelementptr i8, ptr %0, i64 56         ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %.not.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i, label %unregister_ubf_list.exit, label %bb.d

bb.d:                                             ; preds = %unblock_function_clear.exit
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @ubf_list_lock) #17 ; 2 uses
  %.not.i.i11 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i11, label %rb_native_mutex_lock.exit.i12, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.g) #41
  unreachable

rb_native_mutex_lock.exit.i12:                    ; preds = %bb.d
  %i.h = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76   ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !77   ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !76
  store ptr %i.j, ptr %i.i, align 8, !tbaa !77
  store ptr %i.e, ptr %i.h, align 8, !tbaa !76
  store ptr %i.e, ptr %i.e, align 8, !tbaa !77
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @ubf_list_lock) #17 ; 2 uses
  %.not.i3.i13 = icmp eq i32 %i.l, 0
  br i1 %.not.i3.i13, label %unregister_ubf_list.exit, label %bb.f

bb.f:                                             ; preds = %rb_native_mutex_lock.exit.i12
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.l) #41
  unreachable

unregister_ubf_list.exit:                         ; preds = %unblock_function_clear.exit, %rb_native_mutex_lock.exit.i12
  %i.m = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.o = getelementptr i8, ptr %i.n, i64 216
  tail call fastcc void @thread_sched_to_running(ptr noundef %i.o, ptr noundef nonnull %0)
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 312      ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !99
  %i.s = getelementptr i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72   ; 2 uses
  %.not = icmp eq ptr %i.r, %i.t
  br i1 %.not, label %rb_ractor_thread_switch.exit, label %bb.g

bb.g:                                             ; preds = %unregister_ubf_list.exit
  %i.u = getelementptr i8, ptr %0, i64 252
  store i32 0, ptr %i.u, align 4, !tbaa !102
  store ptr %i.t, ptr %i.q, align 8, !tbaa !99
  br label %rb_ractor_thread_switch.exit

rb_ractor_thread_switch.exit:                     ; preds = %unregister_ubf_list.exit, %bb.g
  %i.v = getelementptr i8, ptr %0, i64 256
  store ptr null, ptr %i.v, align 8, !tbaa !241
  tail call void @rb_ractor_blocking_threads_dec(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.47, i32 noundef 1557) #17
  %i.w = getelementptr i8, ptr %0, i64 248        ; 2 uses
  %i.x = load i8, ptr %i.w, align 8               ; 2 uses
  %i.y = and i8 %i.x, 3
  %i.z = icmp eq i8 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_ractor_thread_switch.exit
  %i.aa = load i32, ptr %1, align 4, !tbaa !240
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = and i8 %i.ab, 3
  %i.ad = and i8 %i.x, -4
  %i.ae = or disjoint i8 %i.ac, %i.ad
  store i8 %i.ae, ptr %i.w, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %rb_ractor_thread_switch.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_thread_call_without_gvl2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_nogvl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_thread_call_without_gvl(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_nogvl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_thread_io_blocking_operation(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.rb_io_blocking_operation, align 8 ; 8 uses
  %4 = alloca %struct.io_blocking_operation_arguments, align 8 ; 5 uses
  %i.b = tail call i64 @rb_io_taint_check(i64 noundef %0) #17
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !400  ; 5 uses
  tail call void @rb_io_check_closed(ptr noundef %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !144
  store volatile ptr %i.g, ptr %i.a, align 8, !tbaa !144
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.0..0..0..0..0..0..i, ptr %i.h, align 8, !tbaa !244
  %i.i = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !142
  %i.j = getelementptr i8, ptr %i.i, i64 496
  %i.k = load i64, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.l = getelementptr i8, ptr %i.e, i64 240      ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !251
  %.not.i.i = icmp eq i64 %i.m, %i.k
  %.phi.trans.insert.i = getelementptr i8, ptr %i.e, i64 208 ; 5 uses
  br i1 %.not.i.i, label %.rb_io_blocking_operations.exit_crit_edge.i, label %bb.b

.rb_io_blocking_operations.exit_crit_edge.i:      ; preds = %bb.a
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !77
  br label %rb_io_blocking_operation_enter.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.e, i64 216
  store ptr %.phi.trans.insert.i, ptr %i.n, align 8, !tbaa !65
  store i64 %i.k, ptr %i.l, align 8, !tbaa !251
  br label %rb_io_blocking_operation_enter.exit

rb_io_blocking_operation_enter.exit:              ; preds = %.rb_io_blocking_operations.exit_crit_edge.i, %bb.b
  %i.o = phi ptr [ %.pre.i, %.rb_io_blocking_operations.exit_crit_edge.i ], [ %.phi.trans.insert.i, %bb.b ] ; 2 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !77
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.phi.trans.insert.i, ptr %i.p, align 8, !tbaa !76
  %i.q = getelementptr i8, ptr %i.o, i64 8
  store ptr %3, ptr %i.q, align 8, !tbaa !76
  store ptr %3, ptr %.phi.trans.insert.i, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %i.e, ptr %4, align 8, !tbaa !254
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.r, align 8, !tbaa !255
  %i.s = ptrtoint ptr %4 to i64
  %i.t = call i64 @rb_ensure(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @rb_thread_io_blocking_operation_ensure, i64 noundef %i.s) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i64 %i.t
}

declare void @rb_io_check_closed(ptr noundef) local_unnamed_addr #4

declare i64 @rb_io_taint_check(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ensure(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_thread_io_blocking_operation_ensure(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !255
  tail call fastcc void @rb_io_blocking_operation_exit(ptr noundef %i.b, ptr noundef %i.d)
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define hidden zeroext i1 @rb_thread_mn_schedulable(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ruby_threadptr_data_type) #17
  %i.b = getelementptr i8, ptr %i.a, i64 208
  %i.c = load i8, ptr %i.b, align 8, !tbaa !256, !range !104, !noundef !105
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_thread_io_blocking_call(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 23 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %4 = alloca %struct.rb_io_blocking_operation, align 8 ; 9 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct.rb_blocking_region_buffer, align 4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !144
  store volatile ptr %i.j, ptr %i.a, align 8, !tbaa !144
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store volatile ptr %.0..0..0..0..0..0..i, ptr %i.b, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.0..0..0..0.27 = load volatile ptr, ptr %i.b, align 8, !tbaa !144
  %i.k = getelementptr i8, ptr %.0..0..0..0.27, i64 48
  %.0.27.val = load ptr, ptr %i.k, align 8, !tbaa !31
  store volatile ptr %.0.27.val, ptr %i.c, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store volatile i64 36, ptr %i.d, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store volatile i32 0, ptr %i.e, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.0..0..0..0.15 = load volatile ptr, ptr %i.c, align 8, !tbaa !68
  %i.l = getelementptr i8, ptr %.0..0..0..0.15, i64 208
  %i.m = load i8, ptr %i.l, align 8, !tbaa !256, !range !104, !noundef !105
  store volatile i8 %i.m, ptr %i.f, align 1, !tbaa !257
  %.0..0..0..0.16 = load volatile ptr, ptr %i.c, align 8, !tbaa !68 ; 2 uses
  %i.n = getelementptr i8, ptr %.0..0..0..0.16, i64 40
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.o = getelementptr i8, ptr %.val.i, i64 104
  %.val.val.i = load i32, ptr %i.o, align 8, !tbaa !71
  %i.p = icmp sgt i32 %.val.val.i, 0
  %.not.i = icmp eq i32 %3, 0                     ; 2 uses
  %or.cond.i = or i1 %.not.i, %i.p
  br i1 %or.cond.i, label %thread_io_mn_schedulable.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %.0..0..0..0.16, i64 440
  %i.r = load i32, ptr %i.q, align 8, !tbaa !258
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i8
  br label %thread_io_mn_schedulable.exit

thread_io_mn_schedulable.exit:                    ; preds = %bb.a, %bb.b
  %i.u = phi i8 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %.0..0..0..0.17 = load volatile ptr, ptr %i.c, align 8, !tbaa !68
  %i.v = getelementptr i8, ptr %.0..0..0..0.17, i64 208
  store i8 %i.u, ptr %i.v, align 8, !tbaa !256
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !259
  %i.y = call ptr @rb_errno_ptr() #17
  store i32 0, ptr %i.y, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.0..0..0..0.28 = load volatile ptr, ptr %i.b, align 8, !tbaa !144
  store ptr %.0..0..0..0.28, ptr %i.z, align 8, !tbaa !244
  %i.aa = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !142
  %i.ab = getelementptr i8, ptr %i.aa, i64 496
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !194 ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 240       ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !251
  %.not.i.i = icmp eq i64 %i.ae, %i.ac
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 208 ; 5 uses
  br i1 %.not.i.i, label %.rb_io_blocking_operations.exit_crit_edge.i, label %bb.c

.rb_io_blocking_operations.exit_crit_edge.i:      ; preds = %thread_io_mn_schedulable.exit
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !77
  br label %rb_io_blocking_operation_enter.exit

bb.c:                                             ; preds = %thread_io_mn_schedulable.exit
  %i.af = getelementptr i8, ptr %0, i64 216
  store ptr %.phi.trans.insert.i, ptr %i.af, align 8, !tbaa !65
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !251
  br label %rb_io_blocking_operation_enter.exit

rb_io_blocking_operation_enter.exit:              ; preds = %.rb_io_blocking_operations.exit_crit_edge.i, %bb.c
  %i.ag = phi ptr [ %.pre.i, %.rb_io_blocking_operations.exit_crit_edge.i ], [ %.phi.trans.insert.i, %bb.c ] ; 2 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !77
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.phi.trans.insert.i, ptr %i.ah, align 8, !tbaa !76
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  store ptr %4, ptr %i.ai, align 8, !tbaa !76
  store ptr %4, ptr %.phi.trans.insert.i, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.0..0..0..0.29 = load volatile ptr, ptr %i.b, align 8, !tbaa !144 ; 4 uses
  store ptr %.0..0..0..0.29, ptr %i.g, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 0, ptr %i.aj, align 8, !tbaa !215
  store i64 36, ptr %5, align 8, !tbaa !216
  %i.ak = getelementptr i8, ptr %.0..0..0..0.29, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !217
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !218
  %i.an = getelementptr i8, ptr %.0..0..0..0.29, i64 48
  %.0.2.val = load ptr, ptr %i.an, align 8, !tbaa !31, !nonnull !105, !noundef !105 ; 2 uses
  %i.ao = getelementptr i8, ptr %.0.2.val, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !63 ; 2 uses
  %i.aq = getelementptr i8, ptr %.0.2.val, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !62
  %i.as = getelementptr i8, ptr %i.ap, i64 88
  %.val5.i = load ptr, ptr %i.as, align 8, !tbaa !125
  %i.at = icmp eq ptr %.val5.i, %i.ar
  br i1 %i.at, label %bb.d, label %rb_ec_vm_lock_rec.exit

bb.d:                                             ; preds = %rb_io_blocking_operation_enter.exit
  %i.au = getelementptr i8, ptr %i.ap, i64 96
  %i.av = load i32, ptr %i.au, align 8, !tbaa !123
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_io_blocking_operation_enter.exit, %bb.d
  %.0.i = phi i32 [ %i.av, %bb.d ], [ 0, %rb_io_blocking_operation_enter.exit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i32 %.0.i, ptr %i.aw, align 4, !tbaa !219
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ay = call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.ay, ptr %i.ax, align 8
  %i.az = call ptr @llvm.stacksave.p0()
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.ax)
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.f, label %bb.e, !prof !56

bb.e:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.3 = load volatile ptr, ptr %i.g, align 8, !tbaa !144 ; 2 uses
  %i.bc = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.3)
  br label %bb.y

bb.f:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %5, ptr %i.ak, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store volatile i32 0, ptr %i.h, align 4, !tbaa !17
  %i.bd = shl i32 %3, 1
  br i1 %.not.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %.0..0..0..0.18.us = load volatile ptr, ptr %i.c, align 8, !tbaa !68
  %.0..0..0..0.19.us = load volatile ptr, ptr %i.c, align 8, !tbaa !68
  %i.be = call fastcc i32 @blocking_region_begin(ptr noundef %.0..0..0..0.18.us, ptr noundef %6, ptr noundef nonnull @ubf_select, ptr noundef %.0..0..0..0.19.us, i32 noundef 0) ; 0 uses
  %.0..0..0..0.20.us = load volatile ptr, ptr %i.c, align 8, !tbaa !68
  %i.bf = getelementptr i8, ptr %.0..0..0..0.20.us, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !72
  %i.bh = getelementptr i8, ptr %i.bg, i64 200
  %i.bi = call i32 @_setjmp(ptr noundef %i.bh) #45 ; 0 uses
  %.0..0..0..0.21.us = load volatile ptr, ptr %i.c, align 8, !tbaa !68
  %i.bj = getelementptr i8, ptr %.0..0..0..0.21.us, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !72
  %i.bl = getelementptr i8, ptr %i.bk, i64 184
  %i.bm = call ptr asm sideeffect "movq\09%rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !401
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !73
  %.0..0..0..0.22.us = load volatile ptr, ptr %i.c, align 8, !tbaa !68
  %i.bn = getelementptr i8, ptr %.0..0..0..0.22.us, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !62
  %i.bp = getelementptr i8, ptr %i.bo, i64 216
  %.0..0..0..0.23.us = load volatile ptr, ptr %i.c, align 8, !tbaa !68
  call fastcc void @thread_sched_to_waiting(ptr noundef %i.bp, ptr noundef %.0..0..0..0.23.us)
  %i.bq = call i64 %1(ptr noundef %2) #17
  store volatile i64 %i.bq, ptr %i.d, align 8, !tbaa !141
  %i.br = call ptr @rb_errno_ptr() #17
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !17
  store volatile i32 %i.bs, ptr %i.e, align 4, !tbaa !17
  %.0..0..0..0.24.us = load volatile ptr, ptr %i.c, align 8, !tbaa !68
  call fastcc void @blocking_region_end(ptr noundef %.0..0..0..0.24.us, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %thread_io_wait_events.exit.thread

.split:                                           ; preds = %bb.f, %.split.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %.0..0..0..0.18 = load volatile ptr, ptr %i.c, align 8, !tbaa !68
  %.0..0..0..0.19 = load volatile ptr, ptr %i.c, align 8, !tbaa !68
  %i.bt = call fastcc i32 @blocking_region_begin(ptr noundef %.0..0..0..0.18, ptr noundef %6, ptr noundef nonnull @ubf_select, ptr noundef %.0..0..0..0.19, i32 noundef 0) ; 0 uses
  %.0..0..0..0.20 = load volatile ptr, ptr %i.c, align 8, !tbaa !68
  %i.bu = getelementptr i8, ptr %.0..0..0..0.20, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !72
  %i.bw = getelementptr i8, ptr %i.bv, i64 200
  %i.bx = call i32 @_setjmp(ptr noundef %i.bw) #45 ; 0 uses
  %.0..0..0..0.21 = load volatile ptr, ptr %i.c, align 8, !tbaa !68
  %i.by = getelementptr i8, ptr %.0..0..0..0.21, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !72
  %i.ca = getelementptr i8, ptr %i.bz, i64 184
  %i.cb = call ptr asm sideeffect "movq\09%rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !401
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !73
  %.0..0..0..0.22 = load volatile ptr, ptr %i.c, align 8, !tbaa !68
  %i.cc = getelementptr i8, ptr %.0..0..0..0.22, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !62
  %i.ce = getelementptr i8, ptr %i.cd, i64 216
  %.0..0..0..0.23 = load volatile ptr, ptr %i.c, align 8, !tbaa !68
  call fastcc void @thread_sched_to_waiting(ptr noundef %i.ce, ptr noundef %.0..0..0..0.23)
  %i.cf = call i64 %1(ptr noundef %2) #17
  store volatile i64 %i.cf, ptr %i.d, align 8, !tbaa !141
  %i.cg = call ptr @rb_errno_ptr() #17
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !17
  store volatile i32 %i.ch, ptr %i.e, align 4, !tbaa !17
  %.0..0..0..0.24 = load volatile ptr, ptr %i.c, align 8, !tbaa !68
  call fastcc void @blocking_region_end(ptr noundef %.0..0..0..0.24, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.0..0..0..0.13 = load volatile i64, ptr %i.d, align 8, !tbaa !141
  %.0..0..0..0.10 = load volatile i32, ptr %i.e, align 4, !tbaa !17
  %i.ci = and i64 %.0..0..0..0.13, 4294967295
  %.not.i46 = icmp eq i64 %i.ci, 4294967295
  %cond.i = icmp eq i32 %.0..0..0..0.10, 11
  %.0.i47 = and i1 %.not.i46, %cond.i
  br i1 %.0.i47, label %bb.g, label %thread_io_wait_events.exit.thread

bb.g:                                             ; preds = %.split
  %.0..0..0..0.25 = load volatile ptr, ptr %i.c, align 8, !tbaa !68 ; 4 uses
  %i.cj = getelementptr i8, ptr %.0..0..0..0.25, i64 40
  %.val.i.i = load ptr, ptr %i.cj, align 8, !tbaa !69
  %i.ck = getelementptr i8, ptr %.val.i.i, i64 104
  %.val.val.i.i = load i32, ptr %i.ck, align 8, !tbaa !71
  %i.cl = icmp sgt i32 %.val.val.i.i, 0
  br i1 %i.cl, label %thread_io_wait_events.exit.thread, label %thread_io_mn_schedulable.exit.i

thread_io_mn_schedulable.exit.i:                  ; preds = %bb.g
  %i.cm = getelementptr i8, ptr %.0..0..0..0.25, i64 440
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !258
  %.not.i49 = icmp eq i32 %i.cn, 0
  br i1 %.not.i49, label %thread_io_wait_events.exit.thread, label %thread_io_wait_events.exit

thread_io_wait_events.exit:                       ; preds = %thread_io_mn_schedulable.exit.i
  %i.co = getelementptr i8, ptr %.0..0..0..0.25, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !62
  %i.cq = getelementptr i8, ptr %i.cp, i64 216
  %i.cr = call fastcc zeroext i1 @thread_sched_wait_events(ptr noundef %i.cq, ptr noundef nonnull %.0..0..0..0.25, i32 noundef %i.x, i32 noundef %i.bd, ptr noundef null)
  br i1 %i.cr, label %thread_io_wait_events.exit.thread, label %bb.h

bb.h:                                             ; preds = %thread_io_wait_events.exit
  %.0..0..0..0.30 = load volatile ptr, ptr %i.b, align 8, !tbaa !144 ; 6 uses
  %i.cs = getelementptr i8, ptr %.0..0..0..0.30, i64 48
  %.val.i50 = load ptr, ptr %i.cs, align 8, !tbaa !31 ; 4 uses
  %i.ct = getelementptr i8, ptr %.val.i50, i64 280
  %.val15.i = load i64, ptr %i.ct, align 8, !tbaa !52
  %i.cu = inttoptr i64 %.val15.i to ptr           ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !54 ; 2 uses
  %i.cw = and i64 %i.cv, 8192
  %.not.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cx = lshr i64 %i.cv, 15
  %i.cy = and i64 %i.cx, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.j:                                             ; preds = %bb.h
  %i.cz = getelementptr i8, ptr %i.cu, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !55
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.j, %bb.i
  %.0.i.i.i = phi i64 [ %i.cy, %bb.i ], [ %i.da, %bb.j ]
  %.not.i51 = icmp eq i64 %.0.i.i.i, 0
end_hunk_0
