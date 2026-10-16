Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/thread?download=true
inline.NumInlined: 1399
inline.NumDeleted: 321
begin_hunk_0_@thread_sched_setup_running_threads:bb.a
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %2, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !72
  %i.ab = getelementptr i8, ptr %i.aa, i64 32
  %i.ac = atomicrmw volatile or ptr %i.ab, i32 32 seq_cst, align 4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr i8, ptr %1, i64 304       ; 3 uses
  %i.ae = getelementptr i8, ptr %2, i64 104       ; 3 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !77 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !77
  %i.ag = getelementptr i8, ptr %2, i64 112
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !76
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !76
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !77
  %i.ai = getelementptr i8, ptr %1, i64 272       ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !126
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !126
  %i.al = getelementptr i8, ptr %0, i64 48
  store i8 1, ptr %i.al, align 8, !tbaa !103
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %ractor_sched_lock_.exit.thread
  %.not33 = icmp eq ptr %4, null
  br i1 %.not33, label %timer_thread_wakeup_locked.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr i8, ptr %1, i64 320       ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64 ; 3 uses
  %.not6 = icmp eq ptr %i.an, %i.am
  %i.ao = getelementptr i8, ptr %4, i64 88        ; 3 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !77
  %i.ap = getelementptr i8, ptr %4, i64 96
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !76
  %i.aq = getelementptr i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !76
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !77
  %i.ar = getelementptr i8, ptr %0, i64 49
  store i8 1, ptr %i.ar, align 1, !tbaa !135
  br i1 %.not6, label %bb.m, label %timer_thread_wakeup_locked.exit

bb.m:                                             ; preds = %bb.l
  %i.as = load i64, ptr @timer_th, align 8, !tbaa !138
  %i.at = load i64, ptr @current_fork_gen, align 8, !tbaa !139
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %bb.n, label %timer_thread_wakeup_locked.exit

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %1, i64 352
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !140, !range !104, !noundef !105
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.o, label %timer_thread_wakeup_locked.exit

bb.o:                                             ; preds = %bb.n
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @timer_th, i64 20), align 4, !tbaa !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 1, ptr %i.a, align 8, !tbaa !141
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %.preheader.i.i.i, label %timer_thread_wakeup_force.exit.i

.preheader.i.i.i:                                 ; preds = %bb.o, %bb.p
  %i.ba = call i64 @write(i32 noundef %i.ay, ptr noundef nonnull %i.a, i64 noundef 8) #17
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.p, label %timer_thread_wakeup_force.exit.i

bb.p:                                             ; preds = %.preheader.i.i.i
  %i.bc = tail call ptr @rb_errno_ptr() #17
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !17 ; 2 uses
  switch i32 %i.bd, label %bb.q [
    i32 4, label %.preheader.i.i.i
    i32 11, label %timer_thread_wakeup_force.exit.i
  ]

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @async_bug_fd(ptr noundef nonnull @.str.132, i32 noundef %i.bd, i32 noundef %i.ay) #47
  unreachable

timer_thread_wakeup_force.exit.i:                 ; preds = %bb.p, %.preheader.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %timer_thread_wakeup_locked.exit

timer_thread_wakeup_locked.exit:                  ; preds = %timer_thread_wakeup_force.exit.i, %bb.n, %bb.m, %bb.l, %bb.k
  %.not35 = icmp eq ptr %.035, null
  br i1 %.not35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %timer_thread_wakeup_locked.exit
  %i.be = getelementptr i8, ptr %.035, i64 88     ; 4 uses
  %i.bf = getelementptr i8, ptr %.035, i64 96     ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !76 ; 2 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !77 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !76
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !77
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !76
  store ptr %i.be, ptr %i.be, align 8, !tbaa !77
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %timer_thread_wakeup_locked.exit
  %i.bj = tail call i32 @pthread_mutex_unlock(ptr noundef %i.v) #17 ; 2 uses
  %.not.i.i36 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i36, label %ractor_sched_unlock_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.bj) #41
  unreachable

ractor_sched_unlock_.exit:                        ; preds = %bb.s
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @ruby_mn_threads_params() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !142
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !143 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %rb_current_ractor.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !144
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !144
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %rb_current_ractor.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %.val.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62
  br label %rb_current_ractor.exit

rb_current_ractor.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.c, %bb.a ], [ %i.h, %bb.c ], [ null, %bb.b ]
  %i.i = tail call ptr @getenv(ptr noundef nonnull @.str.17) #17 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %rb_current_ractor.exit
  %i.j = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.i, ptr noundef null, i32 noundef 10) #17, !inline_history !370
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr @ruby_mn_threads_enabled, align 4, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %rb_current_ractor.exit
  %.09.shrunk = phi i8 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %rb_current_ractor.exit ]
  %i.m = getelementptr i8, ptr %.0.i.i, i64 266
  store i8 %.09.shrunk, ptr %i.m, align 2, !tbaa !145
  %i.n = tail call ptr @getenv(ptr noundef nonnull @.str.18) #17 ; 2 uses
  %.not13 = icmp eq ptr %i.n, null
  br i1 %.not13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.n, ptr noundef null, i32 noundef 10) #17, !inline_history !370
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  %spec.select = select i1 %i.q, i32 %i.p, i32 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %spec.select, %bb.g ], [ 8, %bb.f ]
  %i.r = getelementptr i8, ptr %i.b, i64 276
  store i32 %.1, ptr %i.r, align 4, !tbaa !146
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_threadptr_remove(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 189
  %i.c = load i8, ptr %i.b, align 1, !tbaa !147, !range !104, !noundef !105
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 188
  store i8 0, ptr %i.g, align 4, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !143
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %rb_vm_lock_enter.exit.a, label %rb_vm_lock_enter.exit.thread

rb_vm_lock_enter.exit.thread:                     ; preds = %bb.b
  %1 = getelementptr i8, ptr %i.f, i64 336
  %2 = getelementptr i8, ptr %0, i64 120
  %3 = getelementptr i8, ptr %0, i64 128
  br label %rb_vm_lock_leave.exit.us

rb_vm_lock_enter.exit.a:                          ; preds = %bb.b
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #17
  %.pre.a = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !143
  %4 = icmp eq ptr %.pre.a, null
  %i.i = getelementptr i8, ptr %i.f, i64 336      ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 120        ; 4 uses
  %5 = getelementptr i8, ptr %0, i64 128          ; 2 uses
  br i1 %4, label %bb.c, label %rb_vm_lock_leave.exit.us

rb_vm_lock_leave.exit.us:                         ; preds = %rb_vm_lock_enter.exit.thread, %rb_vm_lock_enter.exit.a
  %6 = phi ptr [ %3, %rb_vm_lock_enter.exit.thread ], [ %5, %rb_vm_lock_enter.exit.a ]
  %7 = phi ptr [ %2, %rb_vm_lock_enter.exit.thread ], [ %i.j, %rb_vm_lock_enter.exit.a ] ; 3 uses
  %8 = phi ptr [ %1, %rb_vm_lock_enter.exit.thread ], [ %i.i, %rb_vm_lock_enter.exit.a ] ; 3 uses
  %i.k = load ptr, ptr %8, align 8, !tbaa !77     ; 2 uses
  store ptr %i.k, ptr %7, align 8, !tbaa !77
  store ptr %8, ptr %6, align 8, !tbaa !76
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store ptr %7, ptr %i.l, align 8, !tbaa !76
  store ptr %7, ptr %8, align 8, !tbaa !77
  br label %rb_vm_lock_leave.exit.a

rb_vm_lock_leave.exit.a:                          ; preds = %bb.c, %rb_vm_lock_leave.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.d

bb.c:                                             ; preds = %rb_vm_lock_enter.exit.a
  %9 = load ptr, ptr %i.i, align 8, !tbaa !77     ; 2 uses
  store ptr %9, ptr %i.j, align 8, !tbaa !77
  store ptr %i.i, ptr %5, align 8, !tbaa !76
  %10 = getelementptr i8, ptr %9, i64 8
  store ptr %i.j, ptr %10, align 8, !tbaa !76
  store ptr %i.j, ptr %i.i, align 8, !tbaa !77
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #17
  br label %rb_vm_lock_leave.exit.a

bb.d:                                             ; preds = %bb.a, %rb_vm_lock_leave.exit.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_threadptr_sched_free(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 189
  %i.b = load i8, ptr %i.a, align 1, !tbaa !147, !range !104, !noundef !105
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149  ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @ruby_xfree(ptr noundef %i.e) #17
  %i.f = getelementptr i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69   ; 5 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %native_thread_destroy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 40
  %i.i = tail call i32 @pthread_cond_destroy(ptr noundef %i.h) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %native_thread_destroy_atfork.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.11, i32 noundef %i.i) #41
  unreachable

native_thread_destroy_atfork.exit.i:              ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.g, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !133
  tail call void @free(ptr noundef %i.k) #17
  %i.l = getelementptr i8, ptr %i.g, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !101
  tail call void @ruby_xfree(ptr noundef %i.m) #17
  tail call void @ruby_xfree(ptr noundef nonnull %i.g) #17
  br label %native_thread_destroy.exit

bb.e:                                             ; preds = %bb.a
  %.not.i7 = icmp eq ptr %i.e, null
  br i1 %.not.i7, label %native_thread_destroy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @nt_machine_stack_lock) #17 ; 2 uses
  %.not.i.i8 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i8, label %rb_native_mutex_lock.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.n) #41
  unreachable

rb_native_mutex_lock.exit.i:                      ; preds = %bb.f
  %i.o = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !142
  %i.p = getelementptr i8, ptr %i.o, i64 9528
  %.val.i = load i64, ptr %i.p, align 8, !tbaa !150
  %i.q = getelementptr i8, ptr %i.e, i64 %.val.i  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !153  ; 5 uses
  %i.t = getelementptr i8, ptr %i.q, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !154  ; 2 uses
  %sext.i = shl i64 %i.u, 32
  %i.v = ashr exact i64 %sext.i, 32
  %i.w = tail call fastcc ptr @nt_stack_chunk_get_stack_start(ptr noundef %i.s, i64 noundef %i.v) ; 2 uses
  %i.x = getelementptr i8, ptr %i.s, i64 8        ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !155
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_native_mutex_lock.exit.i
  %i.aa = load ptr, ptr @nt_free_stack_chunks, align 8, !tbaa !155
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !155
  store ptr %i.s, ptr @nt_free_stack_chunks, align 8, !tbaa !155
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %rb_native_mutex_lock.exit.i
  %i.ab = trunc i64 %i.u to i16
  %i.ac = getelementptr i8, ptr %i.s, i64 24
  %i.ad = getelementptr i8, ptr %i.s, i64 22      ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !157 ; 2 uses
  %i.af = add i16 %i.ae, 1
  store i16 %i.af, ptr %i.ad, align 2, !tbaa !157
  %i.ag = zext i16 %i.ae to i64
  %i.ah = getelementptr [2 x i8], ptr %i.ac, i64 %i.ag
  store i16 %i.ab, ptr %i.ah, align 2, !tbaa !157
  %i.ai = load i64, ptr @nt_thread_stack_size.msz, align 8, !tbaa !141 ; 2 uses
  %.not.i12.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i12.i, label %bb.j, label %nt_thread_stack_size.exit.i, !prof !136

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !142 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 9520
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !158
  %i.am = getelementptr i8, ptr %i.aj, i64 9528
  %i.an = load i64, ptr %i.am, align 8, !tbaa !150
  %i.ao = add i64 %i.an, %i.al                    ; 2 uses
  %i.ap = load i64, ptr @get_sysconf_page_size.page_size, align 8, !tbaa !141 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %get_sysconf_page_size.exit.i.i, label %get_sysconf_page_size.exit5.thread15.i.i, !prof !136

get_sysconf_page_size.exit5.thread15.i.i:         ; preds = %bb.j
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  %i.as = trunc i64 %i.ao to i32
  %factor.i = shl i32 %i.ar, 1
  %i.at = add i32 %i.as, -1
  %i.au = add i32 %i.at, %factor.i
  br label %get_sysconf_page_size.exit6.thread.i.i

get_sysconf_page_size.exit.i.i:                   ; preds = %bb.j
  %i.av = tail call i64 @sysconf(i32 noundef 30) #17 ; 4 uses
  store i64 %i.av, ptr @get_sysconf_page_size.page_size, align 8, !tbaa !141
  %i.aw = trunc i64 %i.av to i32                  ; 3 uses
  %i.ax = trunc i64 %i.ao to i32
  %i.ay = add i32 %i.aw, %i.ax                    ; 2 uses
  %i.az = icmp eq i64 %i.av, 0
  br i1 %i.az, label %get_sysconf_page_size.exit5.i.i, label %get_sysconf_page_size.exit5.thread.i.i, !prof !159

get_sysconf_page_size.exit5.thread.i.i:           ; preds = %get_sysconf_page_size.exit.i.i
  %i.ba = add i32 %i.ay, -1
  %i.bb = add i32 %i.ba, %i.aw
  br label %get_sysconf_page_size.exit6.thread.i.i

get_sysconf_page_size.exit5.i.i:                  ; preds = %get_sysconf_page_size.exit.i.i
  %i.bc = tail call i64 @sysconf(i32 noundef 30) #17 ; 4 uses
  store i64 %i.bc, ptr @get_sysconf_page_size.page_size, align 8, !tbaa !141
  %.pre.i.i = trunc i64 %i.bc to i32              ; 2 uses
  %i.bd = add i32 %i.ay, -1
  %i.be = add i32 %i.bd, %.pre.i.i                ; 2 uses
  %i.bf = icmp eq i64 %i.bc, 0
  br i1 %i.bf, label %get_sysconf_page_size.exit6.i.i, label %get_sysconf_page_size.exit6.thread.i.i, !prof !160

get_sysconf_page_size.exit6.thread.i.i:           ; preds = %get_sysconf_page_size.exit5.i.i, %get_sysconf_page_size.exit5.thread.i.i, %get_sysconf_page_size.exit5.thread15.i.i
  %.pre-phi.i = phi i32 [ %.pre.i.i, %get_sysconf_page_size.exit5.i.i ], [ %i.aw, %get_sysconf_page_size.exit5.thread.i.i ], [ %i.ar, %get_sysconf_page_size.exit5.thread15.i.i ]
  %.ph.i.i = phi i64 [ %i.bc, %get_sysconf_page_size.exit5.i.i ], [ %i.av, %get_sysconf_page_size.exit5.thread.i.i ], [ %i.ap, %get_sysconf_page_size.exit5.thread15.i.i ]
  %.ph17.i.i = phi i32 [ %i.be, %get_sysconf_page_size.exit5.i.i ], [ %i.bb, %get_sysconf_page_size.exit5.thread.i.i ], [ %i.au, %get_sysconf_page_size.exit5.thread15.i.i ]
  %i.bg = sdiv i32 %.ph17.i.i, %.pre-phi.i
  br label %get_sysconf_page_size.exit7.i.i

get_sysconf_page_size.exit6.i.i:                  ; preds = %get_sysconf_page_size.exit5.i.i
  %i.bh = tail call i64 @sysconf(i32 noundef 30) #17 ; 4 uses
  store i64 %i.bh, ptr @get_sysconf_page_size.page_size, align 8, !tbaa !141
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = sdiv i32 %i.be, %i.bi                   ; 2 uses
  %i.bk = icmp eq i64 %i.bh, 0
  br i1 %i.bk, label %bb.k, label %get_sysconf_page_size.exit7.i.i, !prof !159

bb.k:                                             ; preds = %get_sysconf_page_size.exit6.i.i
  %i.bl = tail call i64 @sysconf(i32 noundef 30) #17 ; 2 uses
  store i64 %i.bl, ptr @get_sysconf_page_size.page_size, align 8, !tbaa !141
  br label %get_sysconf_page_size.exit7.i.i

get_sysconf_page_size.exit7.i.i:                  ; preds = %bb.k, %get_sysconf_page_size.exit6.i.i, %get_sysconf_page_size.exit6.thread.i.i
  %.in.i.i = phi i32 [ %i.bj, %bb.k ], [ %i.bj, %get_sysconf_page_size.exit6.i.i ], [ %i.bg, %get_sysconf_page_size.exit6.thread.i.i ]
  %i.bm = phi i64 [ %i.bl, %bb.k ], [ %i.bh, %get_sysconf_page_size.exit6.i.i ], [ %.ph.i.i, %get_sysconf_page_size.exit6.thread.i.i ]
  %i.bn = sext i32 %.in.i.i to i64
  %i.bo = shl i64 %i.bm, 32
  %i.bp = ashr exact i64 %i.bo, 32
  %i.bq = mul nsw i64 %i.bp, %i.bn                ; 2 uses
  store i64 %i.bq, ptr @nt_thread_stack_size.msz, align 8, !tbaa !141
  br label %nt_thread_stack_size.exit.i

nt_thread_stack_size.exit.i:                      ; preds = %get_sysconf_page_size.exit7.i.i, %bb.i
  %.0.i.i = phi i64 [ %i.bq, %get_sysconf_page_size.exit7.i.i ], [ %i.ai, %bb.i ] ; 2 uses
  %i.br = tail call i32 @madvise(ptr noundef %i.w, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i.i, i32 noundef 8) #17
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %nt_madvise_free_or_dontneed.exit.i, label %bb.l

bb.l:                                             ; preds = %nt_thread_stack_size.exit.i
  %i.bt = tail call i32 @madvise(ptr noundef %i.w, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i.i, i32 noundef 4) #17 ; 0 uses
  br label %nt_madvise_free_or_dontneed.exit.i

nt_madvise_free_or_dontneed.exit.i:               ; preds = %bb.l, %nt_thread_stack_size.exit.i
  %i.bu = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @nt_machine_stack_lock) #17 ; 2 uses
  %.not.i13.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i13.i, label %native_thread_destroy.exit, label %bb.m

bb.m:                                             ; preds = %nt_madvise_free_or_dontneed.exit.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.bu) #41
  unreachable

native_thread_destroy.exit:                       ; preds = %nt_madvise_free_or_dontneed.exit.i, %bb.e, %native_thread_destroy_atfork.exit.i, %bb.b
  %i.bv = getelementptr i8, ptr %0, i64 200       ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !100
  tail call void @ruby_xfree(ptr noundef %i.bw) #17
  store ptr null, ptr %i.bv, align 8, !tbaa !100
  %i.bx = getelementptr i8, ptr %0, i64 40
  store ptr null, ptr %i.bx, align 8, !tbaa !69
  ret void
}

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_thread_sched_mark_zombies(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 336        ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %.not = icmp eq ptr %i.b, %i.a
  br i1 %.not, label %.loopexit, label %.preheader
end_hunk_0
begin_hunk_1_@rb_thread_io_blocking_region:bb.a
bb.a:
  %i.a = tail call i64 @rb_thread_io_blocking_call(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_thread_call_with_gvl(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_native_thread)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 9 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @ruby_debug_breakpoint() #17
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !402
  %fwrite = call i64 @fwrite(ptr nonnull @.str.46, i64 61, i64 1, ptr %i.d) #51 ; 0 uses
  call void @exit(i32 noundef 1) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 256
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !241  ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr %0(ptr noundef %1) #17
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %i.b, i64 344
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !58
  %i.i = getelementptr i8, ptr %i.b, i64 336
  %.sroa.0.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !58
  call fastcc void @blocking_region_end(ptr noundef nonnull %i.b, ptr noundef %i.f)
  %i.j = call ptr %0(ptr noundef %1) #17
  %i.k = call fastcc i32 @blocking_region_begin(ptr noundef nonnull %i.b, ptr noundef %i.f, ptr noundef %.sroa.0.0.copyload, ptr noundef %.sroa.4.0.copyload, i32 noundef 0)
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.g, !prof !136

bb.f:                                             ; preds = %bb.e
  call void @rb_assert_failure(ptr noundef nonnull @.str.47, i32 noundef 2093, ptr noundef nonnull @__func__.rb_thread_call_with_gvl, ptr noundef nonnull @.str.48) #48
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.b, i64 48       ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72
  %i.n = getelementptr i8, ptr %i.m, i64 200
  %i.o = call i32 @_setjmp(ptr noundef %i.n) #45  ; 0 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !72
  %i.q = getelementptr i8, ptr %i.p, i64 184
  %i.r = call ptr asm sideeffect "movq\09%rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !403
  store ptr %i.r, ptr %i.q, align 8, !tbaa !73
  %i.s = getelementptr i8, ptr %i.b, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.u = getelementptr i8, ptr %i.t, i64 216
  call fastcc void @thread_sched_to_waiting(ptr noundef %i.u, ptr noundef nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.0 = phi ptr [ %i.h, %bb.d ], [ %i.j, %bb.g ]
  ret ptr %.0
}

declare void @ruby_debug_breakpoint() local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: cold noreturn
declare void @rb_assert_failure(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @ruby_thread_has_gvl_p() local_unnamed_addr #23 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_native_thread)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !241
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_threadptr_pending_interrupt_clear(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 280
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52
  %i.c = tail call i64 @rb_ary_clear(i64 noundef %i.b) #17 ; 0 uses
  ret void
}

declare i64 @rb_ary_clear(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_threadptr_pending_interrupt_enque(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 280
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52
  %i.c = tail call i64 @rb_ary_push(i64 noundef %i.b, i64 noundef %1) #17 ; 0 uses
  %i.d = getelementptr i8, ptr %0, i64 248        ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, -65
  store i8 %i.f, ptr %i.d, align 8
  ret void
}

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_threadptr_execute_interrupts(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.thread_create_params, align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 144
  %i.g = load i8, ptr %i.f, align 8, !tbaa !80
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 248        ; 14 uses
  %i.j = getelementptr i8, ptr %0, i64 368        ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 296        ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = getelementptr i8, ptr %0, i64 280        ; 3 uses
  %.not85 = icmp eq i32 %1, 0
  %i.q = getelementptr i8, ptr %0, i64 288
  %i.r = getelementptr i8, ptr %0, i64 249
  %i.s = getelementptr i8, ptr %0, i64 252        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.bk
  %i.aa = phi ptr [ %.pre, %bb.bk ], [ %i.e, %.preheader ] ; 2 uses
  %.067 = phi i32 [ %.4, %bb.bk ], [ 0, %.preheader ] ; 5 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 32     ; 2 uses
  %i.ac = load atomic volatile i32, ptr %i.ab monotonic, align 4
  %i.ad = getelementptr i8, ptr %i.aa, i64 36     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ %i.ac, %bb.b ], [ %i.ah, %bb.c ] ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !57
  %i.af = and i32 %i.ae, %.0.i
  %i.ag = cmpxchg volatile ptr %i.ab, i32 %.0.i, i32 %i.af seq_cst seq_cst, align 4 ; 2 uses
  %i.ah = extractvalue { i32, i1 } %i.ag, 0
  %.not.i = extractvalue { i32, i1 } %i.ag, 1
  br i1 %.not.i, label %threadptr_get_interrupts.exit, label %bb.c, !llvm.loop !3

threadptr_get_interrupts.exit:                    ; preds = %bb.c
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !57
  %i.aj = xor i32 %i.ai, -1
  %i.ak = and i32 %.0.i, %i.aj                    ; 7 uses
  %.not76 = icmp eq i32 %i.ak, 0
  br i1 %.not76, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %threadptr_get_interrupts.exit
  %i.al = and i32 %i.ak, 1
  %i.am = and i32 %i.ak, 2
  %i.an = and i32 %i.ak, 4
  %i.ao = and i32 %i.ak, 8
  %i.ap = and i32 %i.ak, 16
  %i.aq = and i32 %i.ak, 32
  %.not77 = icmp eq i32 %i.aq, 0
  br i1 %.not77, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.ar = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !143
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %rb_vm_lock_enter.exit, label %.split.us

rb_vm_lock_enter.exit:                            ; preds = %bb.e
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.c) #17
  %.pre189 = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !143
  %i.as = icmp eq ptr %.pre189, null
  br i1 %i.as, label %bb.f, label %.split.us

.split.us:                                        ; preds = %bb.e, %bb.f, %rb_vm_lock_enter.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.g

bb.f:                                             ; preds = %rb_vm_lock_enter.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.c) #17
  br label %.split.us

bb.g:                                             ; preds = %.split.us, %bb.d
  %.not79 = icmp eq i32 %i.an, 0
  br i1 %.not79, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !63
  call void @rb_postponed_job_flush(ptr noundef %i.at) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not80 = icmp eq i32 %i.ao, 0
  br i1 %.not80, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.av = getelementptr i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !161
  %i.ax = icmp eq ptr %0, %i.aw
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load i8, ptr %i.i, align 8              ; 2 uses
  %i.az = and i8 %i.ay, 3
  %i.ba = and i8 %i.ay, -4
  store i8 %i.ba, ptr %i.i, align 8
  %i.bb = call i32 @rb_get_next_signal() #17      ; 2 uses
  %.not81147 = icmp eq i32 %i.bb, 0
  br i1 %.not81147, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %i.bc = phi i32 [ %i.bf, %.lr.ph ], [ %i.bb, %bb.k ]
  %.168148 = phi i32 [ %i.be, %.lr.ph ], [ %.067, %bb.k ]
  %i.bd = call i32 @rb_signal_exec(ptr noundef nonnull %0, i32 noundef %i.bc) #17
  %i.be = or i32 %i.bd, %.168148                  ; 2 uses
  %i.bf = call i32 @rb_get_next_signal() #17      ; 2 uses
  %.not81 = icmp eq i32 %i.bf, 0
  br i1 %.not81, label %._crit_edge, label %.lr.ph, !llvm.loop !404

._crit_edge:                                      ; preds = %.lr.ph, %bb.k
  %.168.lcssa = phi i32 [ %.067, %bb.k ], [ %i.be, %.lr.ph ]
  %i.bg = load i8, ptr %i.i, align 8
  %i.bh = and i8 %i.bg, -4
  %i.bi = or disjoint i8 %i.bh, %i.az
  store i8 %i.bi, ptr %i.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %.2 = phi i32 [ %.168.lcssa, %._crit_edge ], [ %.067, %bb.j ] ; 2 uses
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !64
  %.not105 = icmp eq ptr %i.bj, %i.j
  br i1 %.not105, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = load i8, ptr %i.i, align 8              ; 2 uses
  %i.bl = and i8 %i.bk, 3
  %i.bm = and i8 %i.bk, -4
  store i8 %i.bm, ptr %i.i, align 8
  %i.bn = call i32 @pthread_mutex_lock(ptr noundef %i.k) #17, !inline_history !405 ; 2 uses
  %.not.i26.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i26.i, label %rb_native_mutex_lock.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m, %bb.p
  %.lcssa.i = phi i32 [ %i.ci, %bb.p ], [ %i.bn, %bb.m ]
  call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %.lcssa.i) #41, !inline_history !405
  unreachable

rb_native_mutex_lock.exit.i:                      ; preds = %bb.m, %bb.p
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !64  ; 7 uses
  %.not.i12.i = icmp eq ptr %i.bo, %i.j
  br i1 %.not.i12.i, label %ccan_list_pop_.exit.thread.i, label %ccan_list_pop_.exit.i

ccan_list_pop_.exit.i:                            ; preds = %rb_native_mutex_lock.exit.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !76 ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !77 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !76
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !77
  %i.bt = call i32 @pthread_mutex_unlock(ptr noundef %i.k) #17, !inline_history !405 ; 2 uses
  %.not.i13.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i13.i, label %rb_native_mutex_unlock.exit.i, label %.loopexit.i

ccan_list_pop_.exit.thread.i:                     ; preds = %rb_native_mutex_lock.exit.i
  %i.bu = call i32 @pthread_mutex_unlock(ptr noundef %i.k) #17, !inline_history !405 ; 2 uses
  %.not.i1315.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i1315.i, label %threadptr_interrupt_exec_exec.exit, label %.loopexit.i

.loopexit.i:                                      ; preds = %ccan_list_pop_.exit.thread.i, %ccan_list_pop_.exit.i
  %i.bv = phi i32 [ %i.bt, %ccan_list_pop_.exit.i ], [ %i.bu, %ccan_list_pop_.exit.thread.i ]
  call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.bv) #41, !inline_history !405
  unreachable

rb_native_mutex_unlock.exit.i:                    ; preds = %ccan_list_pop_.exit.i
  %i.bw = getelementptr i8, ptr %i.bo, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !263
  %i.by = and i32 %i.bx, 2
  %.not11.i = icmp eq i32 %i.by, 0
  %i.bz = getelementptr i8, ptr %i.bo, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !411 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bo, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !264 ; 2 uses
  br i1 %.not11.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %rb_native_mutex_unlock.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 3, ptr %3, align 8, !tbaa !225
  store i32 0, ptr %i.l, align 4
  %i.cd = ptrtoint ptr %i.cc to i64
  store i64 %i.cd, ptr %i.m, align 8, !tbaa !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr %i.ca, ptr %i.o, align 8, !tbaa !227
  %i.ce = load i64, ptr @rb_cThread, align 8, !tbaa !141
  %i.cf = call i64 @rb_thread_alloc(i64 noundef %i.ce) #17, !inline_history !406
  %i.cg = call fastcc i64 @thread_create_core(i64 noundef %i.cf, ptr noundef %3), !inline_history !406 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.p

bb.o:                                             ; preds = %rb_native_mutex_unlock.exit.i
  %i.ch = call i64 %i.ca(ptr noundef %i.cc) #17, !inline_history !405 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @ruby_xfree(ptr noundef nonnull %i.bo) #17, !inline_history !405
  %i.ci = call i32 @pthread_mutex_lock(ptr noundef %i.k) #17, !inline_history !405 ; 2 uses
  %.not.i.i90 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i90, label %rb_native_mutex_lock.exit.i, label %._crit_edge.i

threadptr_interrupt_exec_exec.exit:               ; preds = %ccan_list_pop_.exit.thread.i
  %i.cj = load i8, ptr %i.i, align 8
  %i.ck = and i8 %i.cj, -4
  %i.cl = or disjoint i8 %i.ck, %i.bl
  store i8 %i.cl, ptr %i.i, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %threadptr_interrupt_exec_exec.exit, %bb.i
  %.3 = phi i32 [ %.2, %bb.l ], [ %.2, %threadptr_interrupt_exec_exec.exit ], [ %.067, %bb.i ] ; 3 uses
  %.not83 = icmp eq i32 %i.am, 0
  br i1 %.not83, label %threadptr_pending_interrupt_active_p.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = load i8, ptr %i.i, align 8
  %i.cn = and i8 %i.cm, 64
  %.not.i91 = icmp eq i8 %i.cn, 0
  br i1 %.not.i91, label %bb.s, label %threadptr_pending_interrupt_active_p.exit.thread

bb.s:                                             ; preds = %bb.r
  %.val.i = load i64, ptr %i.p, align 8, !tbaa !52 ; 2 uses
  %i.co = inttoptr i64 %.val.i to ptr             ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !54 ; 3 uses
  %i.cq = and i64 %i.cp, 8192
  %.not.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = lshr i64 %i.cp, 15
  %i.cs = and i64 %i.cr, 127
  br label %threadptr_pending_interrupt_active_p.exit

bb.u:                                             ; preds = %bb.s
  %i.ct = getelementptr i8, ptr %i.co, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !55
  br label %threadptr_pending_interrupt_active_p.exit

threadptr_pending_interrupt_active_p.exit:        ; preds = %bb.t, %bb.u
  %.0.i.i.i = phi i64 [ %i.cs, %bb.t ], [ %i.cu, %bb.u ]
  %.not3.i.not = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not3.i.not, label %threadptr_pending_interrupt_active_p.exit.thread, label %.preheader151

.preheader151:                                    ; preds = %threadptr_pending_interrupt_active_p.exit, %rb_threadptr_pending_interrupt_check_mask.exit.thread24.i
  %i.cv = phi i64 [ %.pre191, %rb_threadptr_pending_interrupt_check_mask.exit.thread24.i ], [ %i.cp, %threadptr_pending_interrupt_active_p.exit ] ; 2 uses
  %i.cw = phi i64 [ %.pre190, %rb_threadptr_pending_interrupt_check_mask.exit.thread24.i ], [ %.val.i, %threadptr_pending_interrupt_active_p.exit ]
  %.014.i = phi i32 [ %i.hv, %rb_threadptr_pending_interrupt_check_mask.exit.thread24.i ], [ 0, %threadptr_pending_interrupt_active_p.exit ] ; 2 uses
  %i.cx = sext i32 %.014.i to i64                 ; 4 uses
  %i.cy = inttoptr i64 %i.cw to ptr               ; 3 uses
  %i.cz = and i64 %i.cv, 8192
  %.not.i.i94 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i94, label %rb_array_len.exit.i, label %rb_array_len.exit.thread.i

rb_array_len.exit.i:                              ; preds = %.preheader151
  %i.da = getelementptr i8, ptr %i.cy, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !55
  %i.dc = icmp sgt i64 %i.db, %i.cx
  br i1 %i.dc, label %bb.v, label %rb_threadptr_pending_interrupt_deque.exit.thread

rb_array_len.exit.thread.i:                       ; preds = %.preheader151
  %i.dd = lshr i64 %i.cv, 15
  %i.de = and i64 %i.dd, 127
  %i.df = icmp sgt i64 %i.de, %i.cx
  br i1 %i.df, label %.thread.i, label %rb_threadptr_pending_interrupt_deque.exit.thread

.thread.i:                                        ; preds = %rb_array_len.exit.thread.i
  %i.dg = getelementptr i8, ptr %i.cy, i64 16
  br label %RARRAY_AREF.exit.i

bb.v:                                             ; preds = %rb_array_len.exit.i
  %i.dh = getelementptr i8, ptr %i.cy, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !55
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.v, %.thread.i
  %.0.i.i.i95 = phi ptr [ %i.dg, %.thread.i ], [ %i.di, %bb.v ]
end_hunk_1
