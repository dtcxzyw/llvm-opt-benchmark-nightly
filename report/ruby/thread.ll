inline.NumInlined: 1399
inline.NumDeleted: 321
begin_hunk_0_@rb_threadptr_interrupt:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.b) #41
  unreachable

rb_native_mutex_lock.exit.i:                      ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = atomicrmw volatile or ptr %i.e, i32 2 seq_cst, align 4 ; 0 uses
  %i.g = getelementptr i8, ptr %0, i64 336
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 2 uses
  %.not.i3.i = icmp eq ptr %i.h, null
  br i1 %.not.i3.i, label %threadptr_set_interrupt_locked.exit.i, label %bb.c

bb.c:                                             ; preds = %rb_native_mutex_lock.exit.i
  %i.i = getelementptr i8, ptr %0, i64 344
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !77
  tail call void %i.h(ptr noundef %i.j) #17, !inline_history !224
  br label %threadptr_set_interrupt_locked.exit.i

threadptr_set_interrupt_locked.exit.i:            ; preds = %bb.c, %rb_native_mutex_lock.exit.i
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef %i.a) #17 ; 2 uses
  %.not.i4.i = icmp eq i32 %i.k, 0
  br i1 %.not.i4.i, label %threadptr_set_interrupt.exit, label %bb.d

bb.d:                                             ; preds = %threadptr_set_interrupt_locked.exit.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.k) #41
  unreachable

threadptr_set_interrupt.exit:                     ; preds = %threadptr_set_interrupt_locked.exit.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_threadptr_unlock_all_locking_mutexes(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 360        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185
  store ptr %i.d, ptr %i.a, align 8, !tbaa !184
  %i.e = tail call fastcc ptr @rb_mutex_unlock_th(ptr noundef nonnull %i.b, ptr noundef nonnull %0, i64 noundef 0) ; 2 uses
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.b, label %bb.d, !llvm.loop !225

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43, ptr noundef nonnull %i.e) #48
  unreachable

bb.e:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_mutex_unlock_th(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !180    ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %rb_threadptr_interrupt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  %.not22 = icmp eq i64 %i.a, %2
  %or.cond = or i1 %.not, %.not22
  br i1 %or.cond, label %bb.c, label %rb_threadptr_interrupt.exit

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !tbaa !180
  %i.c = getelementptr i8, ptr %1, i64 360
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.c ], [ %i.e, %bb.d ] ; 2 uses
  %i.d = load ptr, ptr %.0.i, align 8, !tbaa !226 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null                ; 2 uses
  %.not10.i = icmp eq ptr %i.d, %0
  %or.cond.i = or i1 %.not.i, %.not10.i
  %i.e = getelementptr i8, ptr %i.d, i64 16
  br i1 %or.cond.i, label %.critedge.i, label %bb.d, !llvm.loop !227

.critedge.i:                                      ; preds = %bb.d
  br i1 %.not.i, label %thread_mutex_remove.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.f = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !185
  store ptr %i.g, ptr %.0.i, align 8, !tbaa !226
  store ptr null, ptr %i.f, align 8, !tbaa !185
  br label %thread_mutex_remove.exit

thread_mutex_remove.exit:                         ; preds = %.critedge.i, %bb.e
  %i.h = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58   ; 9 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %.not23 = icmp eq ptr %i.i, %i.h
  br i1 %.not23, label %rb_threadptr_interrupt.exit, label %bb.f

bb.f:                                             ; preds = %thread_mutex_remove.exit
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !73   ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !72
  store ptr %i.k, ptr %i.m, align 8, !tbaa !73
  store ptr %i.i, ptr %i.l, align 8, !tbaa !72
  store ptr %i.i, ptr %i.i, align 8, !tbaa !73
  %i.o = getelementptr i8, ptr %i.i, i64 -16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !193  ; 6 uses
  %i.q = getelementptr i8, ptr %i.p, i64 432
  %i.r = load i64, ptr %i.q, align 8, !tbaa !228  ; 2 uses
  %.not24 = icmp eq i64 %i.r, 4
  br i1 %.not24, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %i.i, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !194  ; 2 uses
  %.not25 = icmp eq ptr %i.t, null
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i64, ptr %i.j, align 8, !tbaa !191
  %i.v = tail call i64 @rb_fiberptr_self(ptr noundef nonnull %i.t) #17
  %i.w = tail call i64 @rb_fiber_scheduler_unblock(i64 noundef %i.r, i64 noundef %i.u, i64 noundef %i.v) #17 ; 0 uses
  br label %rb_threadptr_interrupt.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.x = getelementptr i8, ptr %i.p, i64 248
  %i.y = load i8, ptr %i.x, align 8
  %i.z = and i8 %i.y, 3
  switch i8 %i.z, label %default.unreachable32 [
    i8 0, label %bb.j
    i8 2, label %bb.j
    i8 1, label %bb.n
    i8 3, label %bb.o
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.aa = getelementptr i8, ptr %i.p, i64 296     ; 2 uses
  %i.ab = tail call i32 @pthread_mutex_lock(ptr noundef %i.aa) #17 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i, label %rb_native_mutex_lock.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.ab) #41
  unreachable

rb_native_mutex_lock.exit.i.i:                    ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %i.p, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !67
  %i.ae = getelementptr i8, ptr %i.ad, i64 32
  %i.af = atomicrmw volatile or ptr %i.ae, i32 2 seq_cst, align 4 ; 0 uses
  %i.ag = getelementptr i8, ptr %i.p, i64 336
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i3.i.i, label %threadptr_set_interrupt_locked.exit.i.i, label %bb.l

bb.l:                                             ; preds = %rb_native_mutex_lock.exit.i.i
  %i.ai = getelementptr i8, ptr %i.p, i64 344
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !77
  tail call void %i.ah(ptr noundef %i.aj) #17, !inline_history !229
  br label %threadptr_set_interrupt_locked.exit.i.i

threadptr_set_interrupt_locked.exit.i.i:          ; preds = %bb.l, %rb_native_mutex_lock.exit.i.i
  %i.ak = tail call i32 @pthread_mutex_unlock(ptr noundef %i.aa) #17 ; 2 uses
  %.not.i4.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i4.i.i, label %rb_threadptr_interrupt.exit, label %bb.m

bb.m:                                             ; preds = %threadptr_set_interrupt_locked.exit.i.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.ak) #41
  unreachable

bb.n:                                             ; preds = %bb.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.178) #48
  unreachable

bb.o:                                             ; preds = %bb.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.179) #48
  unreachable

default.unreachable32:                            ; preds = %bb.i
  unreachable

rb_threadptr_interrupt.exit:                      ; preds = %threadptr_set_interrupt_locked.exit.i.i, %bb.h, %thread_mutex_remove.exit, %bb.b, %bb.a
  %.1 = phi ptr [ @.str.175, %bb.b ], [ @.str.174, %bb.a ], [ null, %thread_mutex_remove.exit ], [ null, %bb.h ], [ null, %threadptr_set_interrupt_locked.exit.i.i ]
  ret ptr %.1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_thread_terminate_all(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  store volatile ptr %i.h, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile i32 0, ptr %i.b, align 4, !tbaa !7
  %i.i = getelementptr i8, ptr %i.f, i64 320
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !230  ; 2 uses
  %.not = icmp eq ptr %i.j, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.44, ptr noundef %i.j, ptr noundef nonnull %0) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 360        ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !184  ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %rb_threadptr_unlock_all_locking_mutexes.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !185
  store ptr %i.n, ptr %i.k, align 8, !tbaa !184
  %i.o = tail call fastcc ptr @rb_mutex_unlock_th(ptr noundef nonnull %i.l, ptr noundef nonnull %0, i64 noundef 0) ; 2 uses
  %.not9.i = icmp eq ptr %i.o, null
  br i1 %.not9.i, label %bb.d, label %bb.f, !llvm.loop !225

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43, ptr noundef nonnull %i.o) #48
  unreachable

rb_threadptr_unlock_all_locking_mutexes.exit:     ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.0..0..0..0.6 = load volatile ptr, ptr %i.a, align 8, !tbaa !147 ; 3 uses
  store ptr %.0..0..0..0.6, ptr %i.c, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 0, ptr %i.p, align 8, !tbaa !231
  store i64 36, ptr %1, align 8, !tbaa !233
  %i.q = getelementptr i8, ptr %.0..0..0..0.6, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !234
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !235
  %i.t = getelementptr i8, ptr %.0..0..0..0.6, i64 48
  %.0.1.val = load ptr, ptr %i.t, align 8, !tbaa !11, !nonnull !103, !noundef !103 ; 2 uses
  %i.u = getelementptr i8, ptr %.0.1.val, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57   ; 2 uses
  %i.w = getelementptr i8, ptr %.0.1.val, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !56
  %i.y = getelementptr i8, ptr %i.v, i64 88
  %.val5.i = load ptr, ptr %i.y, align 8, !tbaa !123
  %i.z = icmp eq ptr %.val5.i, %i.x
  br i1 %i.z, label %bb.g, label %rb_ec_vm_lock_rec.exit

bb.g:                                             ; preds = %rb_threadptr_unlock_all_locking_mutexes.exit
  %i.aa = getelementptr i8, ptr %i.v, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !121
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_threadptr_unlock_all_locking_mutexes.exit, %bb.g
  %.0.i = phi i32 [ %i.ab, %bb.g ], [ 0, %rb_threadptr_unlock_all_locking_mutexes.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 %.0.i, ptr %i.ac, align 4, !tbaa !236
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.ae, ptr %i.ad, align 8
  %i.af = tail call ptr @llvm.stacksave.p0()
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.ad)
  %.not20 = icmp eq i32 %i.ah, 0
  br i1 %.not20, label %.thread, label %bb.x, !prof !49

.thread:                                          ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %1, ptr %i.q, align 8, !tbaa !234
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.y
  %i.ai = getelementptr i8, ptr %i.f, i64 184     ; 3 uses
  %.011.i = load ptr, ptr %i.ai, align 8, !tbaa !73 ; 2 uses
  %.not12.i = icmp eq ptr %.011.i, %i.ai
  br i1 %.not12.i, label %terminate_all.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %rb_threadptr_interrupt.exit.i
  %.013.i = phi ptr [ %.0.i22, %rb_threadptr_interrupt.exit.i ], [ %.011.i, %bb.h ] ; 8 uses
  %.not8.i = icmp eq ptr %.013.i, %0
  br i1 %.not8.i, label %rb_threadptr_interrupt.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr i8, ptr %.013.i, i64 280
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !25
  %i.al = call i64 @rb_ary_push(i64 noundef %i.ak, i64 noundef 3) #17 ; 0 uses
  %i.am = getelementptr i8, ptr %.013.i, i64 248  ; 2 uses
  %i.an = load i8, ptr %i.am, align 8
  %i.ao = and i8 %i.an, -65
  store i8 %i.ao, ptr %i.am, align 8
  %i.ap = getelementptr i8, ptr %.013.i, i64 296  ; 2 uses
  %i.aq = call i32 @pthread_mutex_lock(ptr noundef %i.ap) #17 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i, label %rb_native_mutex_lock.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.aq) #41
  unreachable

rb_native_mutex_lock.exit.i.i.i:                  ; preds = %bb.i
  %i.ar = getelementptr i8, ptr %.013.i, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !67
  %i.at = getelementptr i8, ptr %i.as, i64 32
  %i.au = atomicrmw volatile or ptr %i.at, i32 2 seq_cst, align 4 ; 0 uses
  %i.av = getelementptr i8, ptr %.013.i, i64 336
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !75 ; 2 uses
  %.not.i3.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i3.i.i.i, label %threadptr_set_interrupt_locked.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %rb_native_mutex_lock.exit.i.i.i
  %i.ax = getelementptr i8, ptr %.013.i, i64 344
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !77
  call void %i.aw(ptr noundef %i.ay) #17, !inline_history !237
  br label %threadptr_set_interrupt_locked.exit.i.i.i

threadptr_set_interrupt_locked.exit.i.i.i:        ; preds = %bb.k, %rb_native_mutex_lock.exit.i.i.i
  %i.az = call i32 @pthread_mutex_unlock(ptr noundef %i.ap) #17 ; 2 uses
  %.not.i4.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i4.i.i.i, label %rb_threadptr_interrupt.exit.i, label %bb.l

bb.l:                                             ; preds = %threadptr_set_interrupt_locked.exit.i.i.i
  call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.az) #41
  unreachable

rb_threadptr_interrupt.exit.i:                    ; preds = %threadptr_set_interrupt_locked.exit.i.i.i, %.lr.ph.i
  %.0.i22 = load ptr, ptr %.013.i, align 8, !tbaa !73 ; 2 uses
  %.not.i23 = icmp eq ptr %.0.i22, %i.ai
  br i1 %.not.i23, label %terminate_all.exit, label %.lr.ph.i, !llvm.loop !238

terminate_all.exit:                               ; preds = %rb_threadptr_interrupt.exit.i, %bb.h
  %i.ba = call i32 @rb_ractor_living_thread_num(ptr noundef %i.f) #17
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %terminate_all.exit
  %i.bc = getelementptr i8, ptr %0, i64 40
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %vm_check_ints_blocking.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 1000000000, ptr %i.d, align 8, !tbaa !144
  store volatile i32 1, ptr %i.b, align 4, !tbaa !7
  %.val.i = load ptr, ptr %i.bc, align 8, !tbaa !64
  %i.bd = getelementptr i8, ptr %.val.i, i64 104
  %.val.val.i = load i32, ptr %i.bd, align 8, !tbaa !65
  %i.be = icmp sgt i32 %.val.val.i, 0
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call fastcc void @native_cond_sleep(ptr noundef nonnull %0, ptr noundef nonnull %i.d)
  br label %native_sleep.exit

bb.o:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.bg = getelementptr i8, ptr %i.bf, i64 216
  %i.bh = call fastcc zeroext i1 @thread_sched_wait_events(ptr noundef %i.bg, ptr noundef nonnull %0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull %i.d) ; 0 uses
  br label %native_sleep.exit

native_sleep.exit:                                ; preds = %bb.n, %bb.o
  %.0..0..0..0.7 = load volatile ptr, ptr %i.a, align 8, !tbaa !147 ; 6 uses
  %i.bi = getelementptr i8, ptr %.0..0..0..0.7, i64 48
  %.val.i25 = load ptr, ptr %i.bi, align 8, !tbaa !11 ; 4 uses
  %i.bj = getelementptr i8, ptr %.val.i25, i64 280
  %.val15.i = load i64, ptr %i.bj, align 8, !tbaa !25
  %i.bk = inttoptr i64 %.val15.i to ptr           ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !46 ; 2 uses
  %i.bm = and i64 %i.bl, 8192
  %.not.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %native_sleep.exit
  %i.bn = lshr i64 %i.bl, 15
  %i.bo = and i64 %i.bn, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.q:                                             ; preds = %native_sleep.exit
  %i.bp = getelementptr i8, ptr %i.bk, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.q, %bb.p
  %.0.i.i.i = phi i64 [ %i.bo, %bb.p ], [ %i.bq, %bb.q ]
  %.not.i26 = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i26, label %bb.r, label %bb.s, !prof !49

bb.r:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.br = getelementptr i8, ptr %.0..0..0..0.7, i64 32
  %i.bs = load atomic volatile i32, ptr %i.br monotonic, align 8
  %i.bt = getelementptr i8, ptr %.0..0..0..0.7, i64 36
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !50
  %i.bv = xor i32 %i.bu, -1
  %i.bw = and i32 %i.bs, %i.bv
  %.not16.i = icmp eq i32 %i.bw, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.t, !prof !49

bb.s:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.bx = getelementptr i8, ptr %.val.i25, i64 248 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 8
  %i.bz = and i8 %i.by, -65
  store i8 %i.bz, ptr %i.bx, align 8
  %i.ca = getelementptr i8, ptr %.0..0..0..0.7, i64 32
  %i.cb = atomicrmw volatile or ptr %i.ca, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cc = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i25, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.cc, 0
  br i1 %.not13.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr i8, ptr %.0..0..0..0.7, i64 32
  %i.ce = load atomic volatile i32, ptr %i.cd monotonic, align 8
  %i.cf = getelementptr i8, ptr %.0..0..0..0.7, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !50
  %i.ch = xor i32 %i.cg, -1
  %i.ci = and i32 %i.ce, 10
  %i.cj = and i32 %i.ci, %i.ch
  %.not17.i = icmp eq i32 %i.cj, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ck = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i25) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.ck, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.ck) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.r, %bb.u, %bb.v, %bb.w
  store volatile i32 0, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.cm = call i32 @rb_ractor_living_thread_num(ptr noundef %i.f) #17
  %i.cn = icmp sgt i32 %i.cm, 1
  br i1 %i.cn, label %bb.m, label %.loopexit, !llvm.loop !239

bb.x:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.c, align 8, !tbaa !147
  %i.co = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2) ; 0 uses
  %.0..0..0..0.5 = load volatile i32, ptr %i.b, align 4, !tbaa !7
  %.not21 = icmp eq i32 %.0..0..0..0.5, 0
  br i1 %.not21, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  store volatile i32 0, ptr %i.b, align 4, !tbaa !7
  br label %bb.h

.loopexit:                                        ; preds = %vm_check_ints_blocking.exit, %terminate_all.exit, %bb.x
  %i.cp = load ptr, ptr %i.s, align 8, !tbaa !235
  %.0..0..0..0.4 = load ptr, ptr %i.c, align 8, !tbaa !147
  %2 = getelementptr i8, ptr %.0..0..0..0.4, i64 24
  store ptr %i.cp, ptr %2, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #16

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(ptr) #17

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 1, 9) i32 @rb_ec_tag_state(ptr noundef %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !231  ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !231
  %i.e = getelementptr i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !236  ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !11, !nonnull !103, !noundef !103 ; 2 uses
  %i.h = getelementptr i8, ptr %.val.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.l = getelementptr i8, ptr %i.i, i64 88
  %.val5.i.i = load ptr, ptr %i.l, align 8, !tbaa !123
  %i.m = icmp eq ptr %.val5.i.i, %i.k
  br i1 %i.m, label %bb.b, label %rb_ec_vm_lock_rec.exit.i

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.i, i64 96
  %i.o = load i32, ptr %i.n, align 8, !tbaa !121
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.o, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, %i.f
  br i1 %.not.i, label %rb_ec_vm_lock_rec_check.exit, label %bb.c

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  tail call void @rb_ec_vm_lock_rec_release(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %.0.i.i) #17
  br label %rb_ec_vm_lock_rec_check.exit

rb_ec_vm_lock_rec_check.exit:                     ; preds = %rb_ec_vm_lock_rec.exit.i, %bb.c
  %i.p = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i32 %i.d, 9
  tail call void @llvm.assume(i1 %i.q)
  ret i32 %i.d
}

declare i32 @rb_ractor_living_thread_num(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_thread_free_native_thread(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %native_thread_destroy_atfork.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  tail call void @free(ptr noundef %i.d) #17
  %i.e = getelementptr i8, ptr %i.b, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !98
  tail call void @ruby_xfree(ptr noundef %i.f) #17
  tail call void @ruby_xfree(ptr noundef nonnull %i.b) #17
  br label %native_thread_destroy_atfork.exit

native_thread_destroy_atfork.exit:                ; preds = %bb.a, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !64
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @ruby_thread_init_stack(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @native_thread_init_stack(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @native_thread_init_stack(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %union.pthread_attr_t, align 8      ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %union.pthread_attr_t, align 8      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %4 = alloca %struct.rlimit, align 8             ; 4 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %i.g = tail call i64 @pthread_self() #46        ; 4 uses
  %i.h = load i64, ptr @native_main_thread.0, align 8, !tbaa !240
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %native_thread_init_main_thread_stack.exit

bb.b:                                             ; preds = %bb.a
  store i64 %i.g, ptr @native_main_thread.0, align 8, !tbaa !240
  %i.i = load i64, ptr @native_main_thread.1, align 8, !tbaa !242
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %native_thread_init_main_thread_stack.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8, !tbaa !144
  %i.j = call i32 @pthread_getattr_np(i64 noundef %i.g, ptr noundef nonnull %3) #17
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @pthread_attr_getstack(ptr noundef nonnull %3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #17
  %.not21.i.i = icmp eq i32 %i.k, 0
  br i1 %.not21.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.m = load i64, ptr %i.d, align 8, !tbaa !144
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  store ptr %i.n, ptr %i.c, align 8, !tbaa !52
  %i.o = call i32 @pthread_attr_getguardsize(ptr noundef nonnull %3, ptr noundef nonnull %i.b) #17
  %.not22.i.i = icmp eq i32 %i.o, 0
  br i1 %.not22.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %i.b, align 8, !tbaa !144
  %i.q = load i64, ptr %i.d, align 8, !tbaa !144
  %i.r = sub i64 %i.q, %i.p
  store i64 %i.r, ptr %i.d, align 8, !tbaa !144
  %i.s = call i32 @pthread_attr_destroy(ptr noundef nonnull %3) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.t = load i64, ptr %i.d, align 8, !tbaa !144  ; 2 uses
  store i64 %i.t, ptr @native_main_thread.1, align 8, !tbaa !242
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  store ptr %i.u, ptr @native_main_thread.2, align 8, !tbaa !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.v = load ptr, ptr @__libc_stack_end, align 8, !tbaa !52
  store ptr %i.v, ptr @native_main_thread.2, align 8, !tbaa !243
  %i.w = tail call i32 @getpagesize() #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.x = call i32 @getrlimit(i32 noundef 3, ptr noundef nonnull %4) #17
  %i.y = icmp eq i32 %i.x, 0
  %i.z = load i64, ptr %4, align 8
  %spec.select.i = select i1 %i.y, i64 %i.z, i64 1048576
  %i.aa = load ptr, ptr @native_main_thread.2, align 8, !tbaa !243 ; 4 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 0, %spec.select.i
  %i.ad = getelementptr i8, ptr %i.aa, i64 %i.ac
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sext i32 %i.w to i64                    ; 2 uses
  %i.ag = udiv i64 %i.ae, %i.af
  %.neg.i = xor i64 %i.ag, -1
  %.neg13.i = mul i64 %.neg.i, %i.af
  %i.ah = add i64 %.neg13.i, %i.ab                ; 2 uses
  store i64 %i.ah, ptr @native_main_thread.1, align 8, !tbaa !242
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = phi i64 [ %i.ah, %bb.g ], [ %i.t, %bb.f ]
  %i.aj = phi ptr [ %i.aa, %bb.g ], [ %i.u, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.aa, %bb.g ], [ %1, %bb.f ] ; 3 uses
  %i.ak = sub i64 0, %i.ai
  %i.al = getelementptr i8, ptr %i.aj, i64 %i.ak
  %i.am = icmp ult ptr %.0.i, %i.al
  %i.an = icmp ugt ptr %.0.i, %i.aj
  %or.cond.i = or i1 %i.an, %i.am
  br i1 %or.cond.i, label %bb.i, label %native_thread_init_main_thread_stack.exit

bb.i:                                             ; preds = %bb.h
  store ptr %.0.i, ptr @native_main_thread.2, align 8, !tbaa !243
  store i64 0, ptr @native_main_thread.1, align 8, !tbaa !242
  br label %native_thread_init_main_thread_stack.exit

native_thread_init_main_thread_stack.exit:        ; preds = %bb.i, %bb.h, %bb.b, %bb.a
  %i.ao = load i64, ptr @native_main_thread.0, align 8, !tbaa !240
  %.not12 = icmp eq i64 %i.g, %i.ao
end_hunk_0
