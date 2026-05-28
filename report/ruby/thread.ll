inline.NumInlined: 1399
inline.NumDeleted: 321
begin_hunk_0_@rb_threadptr_unlock_all_locking_mutexes:bb.a
bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43, ptr noundef nonnull %i.e) #48
  unreachable

bb.e:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_mutex_unlock_th(ptr noundef captures(address) %0, ptr noundef captures(none) %1, i64 noundef %2) unnamed_addr #0 {
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
  %.0.1.val.a = load ptr, ptr %i.t, align 8, !tbaa !11 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.1.val.a, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %2

2:                                                ; preds = %rb_threadptr_unlock_all_locking_mutexes.exit
  %3 = getelementptr i8, ptr %.0.1.val.a, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr i8, ptr %.0.1.val.a, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %2, %rb_threadptr_unlock_all_locking_mutexes.exit
  %.0.i2.i = phi ptr [ %4, %2 ], [ null, %rb_threadptr_unlock_all_locking_mutexes.exit ] ; 2 uses
  %.0.i7.i = phi ptr [ %6, %2 ], [ null, %rb_threadptr_unlock_all_locking_mutexes.exit ]
  %7 = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %7, align 8, !tbaa !123
  %8 = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %8, label %bb.g, label %rb_ec_vm_lock_rec.exit

bb.g:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.u = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !121
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.g
  %.0.i = phi i32 [ %i.v, %bb.g ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 %.0.i, ptr %i.w, align 4, !tbaa !236
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.y, ptr %i.x, align 8
  %i.z = tail call ptr @llvm.stacksave.p0()
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.x)
  %.not20 = icmp eq i32 %i.ab, 0
  br i1 %.not20, label %.thread, label %bb.x, !prof !49

.thread:                                          ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %1, ptr %i.q, align 8, !tbaa !234
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.y
  %i.ac = getelementptr i8, ptr %i.f, i64 184     ; 3 uses
  %.011.i = load ptr, ptr %i.ac, align 8, !tbaa !73 ; 2 uses
  %.not12.i = icmp eq ptr %.011.i, %i.ac
  br i1 %.not12.i, label %terminate_all.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %rb_threadptr_interrupt.exit.i
  %.013.i = phi ptr [ %.0.i22, %rb_threadptr_interrupt.exit.i ], [ %.011.i, %bb.h ] ; 8 uses
  %.not8.i = icmp eq ptr %.013.i, %0
  br i1 %.not8.i, label %rb_threadptr_interrupt.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr i8, ptr %.013.i, i64 280
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !25
  %i.af = call i64 @rb_ary_push(i64 noundef %i.ae, i64 noundef 3) #17 ; 0 uses
  %i.ag = getelementptr i8, ptr %.013.i, i64 248  ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8
  %i.ai = and i8 %i.ah, -65
  store i8 %i.ai, ptr %i.ag, align 8
  %i.aj = getelementptr i8, ptr %.013.i, i64 296  ; 2 uses
  %i.ak = call i32 @pthread_mutex_lock(ptr noundef %i.aj) #17 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i, label %rb_native_mutex_lock.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.ak) #41
  unreachable

rb_native_mutex_lock.exit.i.i.i:                  ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.013.i, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !67
  %i.an = getelementptr i8, ptr %i.am, i64 32
  %i.ao = atomicrmw volatile or ptr %i.an, i32 2 seq_cst, align 4 ; 0 uses
  %i.ap = getelementptr i8, ptr %.013.i, i64 336
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !75 ; 2 uses
  %.not.i3.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i3.i.i.i, label %threadptr_set_interrupt_locked.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %rb_native_mutex_lock.exit.i.i.i
  %i.ar = getelementptr i8, ptr %.013.i, i64 344
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !77
  call void %i.aq(ptr noundef %i.as) #17, !inline_history !237
  br label %threadptr_set_interrupt_locked.exit.i.i.i

threadptr_set_interrupt_locked.exit.i.i.i:        ; preds = %bb.k, %rb_native_mutex_lock.exit.i.i.i
  %i.at = call i32 @pthread_mutex_unlock(ptr noundef %i.aj) #17 ; 2 uses
  %.not.i4.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i4.i.i.i, label %rb_threadptr_interrupt.exit.i, label %bb.l

bb.l:                                             ; preds = %threadptr_set_interrupt_locked.exit.i.i.i
  call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.at) #41
  unreachable

rb_threadptr_interrupt.exit.i:                    ; preds = %threadptr_set_interrupt_locked.exit.i.i.i, %.lr.ph.i
  %.0.i22 = load ptr, ptr %.013.i, align 8, !tbaa !73 ; 2 uses
  %.not.i23 = icmp eq ptr %.0.i22, %i.ac
  br i1 %.not.i23, label %terminate_all.exit, label %.lr.ph.i, !llvm.loop !238

terminate_all.exit:                               ; preds = %rb_threadptr_interrupt.exit.i, %bb.h
  %i.au = call i32 @rb_ractor_living_thread_num(ptr noundef %i.f) #17
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %terminate_all.exit
  %i.aw = getelementptr i8, ptr %0, i64 40
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %vm_check_ints_blocking.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 1000000000, ptr %i.d, align 8, !tbaa !144
  store volatile i32 1, ptr %i.b, align 4, !tbaa !7
  %.val.i = load ptr, ptr %i.aw, align 8, !tbaa !64
  %i.ax = getelementptr i8, ptr %.val.i, i64 104
  %.val.val.i = load i32, ptr %i.ax, align 8, !tbaa !65
  %i.ay = icmp sgt i32 %.val.val.i, 0
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call fastcc void @native_cond_sleep(ptr noundef nonnull %0, ptr noundef nonnull %i.d)
  br label %native_sleep.exit

bb.o:                                             ; preds = %bb.m
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.ba = getelementptr i8, ptr %i.az, i64 216
  %i.bb = call fastcc zeroext i1 @thread_sched_wait_events(ptr noundef %i.ba, ptr noundef nonnull %0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull %i.d) ; 0 uses
  br label %native_sleep.exit

native_sleep.exit:                                ; preds = %bb.n, %bb.o
  %.0..0..0..0.7 = load volatile ptr, ptr %i.a, align 8, !tbaa !147 ; 6 uses
  %i.bc = getelementptr i8, ptr %.0..0..0..0.7, i64 48
  %.val.i25 = load ptr, ptr %i.bc, align 8, !tbaa !11 ; 4 uses
  %i.bd = getelementptr i8, ptr %.val.i25, i64 280
  %.val15.i = load i64, ptr %i.bd, align 8, !tbaa !25
  %i.be = inttoptr i64 %.val15.i to ptr           ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !46 ; 2 uses
  %i.bg = and i64 %i.bf, 8192
  %.not.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %native_sleep.exit
  %i.bh = lshr i64 %i.bf, 15
  %i.bi = and i64 %i.bh, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.q:                                             ; preds = %native_sleep.exit
  %i.bj = getelementptr i8, ptr %i.be, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.q, %bb.p
  %.0.i.i.i = phi i64 [ %i.bi, %bb.p ], [ %i.bk, %bb.q ]
  %.not.i26 = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i26, label %bb.r, label %bb.s, !prof !49

bb.r:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.bl = getelementptr i8, ptr %.0..0..0..0.7, i64 32
  %i.bm = load atomic volatile i32, ptr %i.bl monotonic, align 8
  %i.bn = getelementptr i8, ptr %.0..0..0..0.7, i64 36
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !50
  %i.bp = xor i32 %i.bo, -1
  %i.bq = and i32 %i.bm, %i.bp
  %.not16.i = icmp eq i32 %i.bq, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.t, !prof !49

bb.s:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.br = getelementptr i8, ptr %.val.i25, i64 248 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8
  %i.bt = and i8 %i.bs, -65
  store i8 %i.bt, ptr %i.br, align 8
  %i.bu = getelementptr i8, ptr %.0..0..0..0.7, i64 32
  %i.bv = atomicrmw volatile or ptr %i.bu, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bw = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i25, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.bw, 0
  br i1 %.not13.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr i8, ptr %.0..0..0..0.7, i64 32
  %i.by = load atomic volatile i32, ptr %i.bx monotonic, align 8
  %i.bz = getelementptr i8, ptr %.0..0..0..0.7, i64 36
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !50
  %i.cb = xor i32 %i.ca, -1
  %i.cc = and i32 %i.by, 10
  %i.cd = and i32 %i.cc, %i.cb
  %.not17.i = icmp eq i32 %i.cd, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ce = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i25) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.ce, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.ce) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.r, %bb.u, %bb.v, %bb.w
  store volatile i32 0, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.cg = call i32 @rb_ractor_living_thread_num(ptr noundef %i.f) #17
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.m, label %.loopexit, !llvm.loop !239

bb.x:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.c, align 8, !tbaa !147
  %i.ci = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2) ; 0 uses
  %.0..0..0..0.5 = load volatile i32, ptr %i.b, align 4, !tbaa !7
  %.not21 = icmp eq i32 %.0..0..0..0.5, 0
  br i1 %.not21, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  store volatile i32 0, ptr %i.b, align 4, !tbaa !7
  br label %bb.h

.loopexit:                                        ; preds = %vm_check_ints_blocking.exit, %terminate_all.exit, %bb.x
  %i.cj = load ptr, ptr %i.s, align 8, !tbaa !235
  %.0..0..0..0.4 = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.ck = getelementptr i8, ptr %.0..0..0..0.4, i64 24
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !234
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
  %.val.i.a = load ptr, ptr %i.g, align 8, !tbaa !11 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i.a, null
  br i1 %.not.i.i.i, label %rb_ec_ractor_ptr.exit.i.i, label %1

1:                                                ; preds = %bb.a
  %2 = getelementptr i8, ptr %.val.i.a, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr i8, ptr %.val.i.a, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  br label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %1, %bb.a
  %.0.i2.i.i = phi ptr [ %3, %1 ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i.i = phi ptr [ %5, %1 ], [ null, %bb.a ]
  %6 = getelementptr i8, ptr %.0.i2.i.i, i64 88
  %.val5.i.i = load ptr, ptr %6, align 8, !tbaa !123
  %7 = icmp eq ptr %.val5.i.i, %.0.i7.i.i
  br i1 %7, label %bb.b, label %rb_ec_vm_lock_rec.exit.i

bb.b:                                             ; preds = %rb_ec_ractor_ptr.exit.i.i
  %i.h = getelementptr i8, ptr %.0.i2.i.i, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !121
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.b, %rb_ec_ractor_ptr.exit.i.i
  %.0.i.i = phi i32 [ %i.i, %bb.b ], [ 0, %rb_ec_ractor_ptr.exit.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, %i.f
  br i1 %.not.i, label %rb_ec_vm_lock_rec_check.exit, label %bb.c

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  tail call void @rb_ec_vm_lock_rec_release(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %.0.i.i) #17
  br label %rb_ec_vm_lock_rec_check.exit

rb_ec_vm_lock_rec_check.exit:                     ; preds = %rb_ec_vm_lock_rec.exit.i, %bb.c
  %i.j = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp ult i32 %i.d, 9
  tail call void @llvm.assume(i1 %i.k)
  ret i32 %i.d
}

declare i32 @rb_ractor_living_thread_num(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_thread_free_native_thread(ptr noundef captures(none) %0) local_unnamed_addr #0 {
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
define hidden void @ruby_thread_init_stack(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @native_thread_init_stack(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @native_thread_init_stack(ptr noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
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
  br i1 %.not12, label %bb.j, label %bb.k

bb.j:                                             ; preds = %native_thread_init_main_thread_stack.exit
  %i.ap = load ptr, ptr @native_main_thread.2, align 8, !tbaa !243
  %i.aq = getelementptr i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !67 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 176
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !244
  %i.at = load i64, ptr @native_main_thread.1, align 8, !tbaa !242
  %i.au = getelementptr i8, ptr %i.ar, i64 192
  store i64 %i.at, ptr %i.au, align 8, !tbaa !245
  br label %bb.q

bb.k:                                             ; preds = %native_thread_init_main_thread_stack.exit
  %i.av = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.av, align 8, !tbaa !64
  %i.aw = getelementptr i8, ptr %.val, i64 104
  %.val.val = load i32, ptr %i.aw, align 8, !tbaa !65
  %i.ax = icmp sgt i32 %.val.val, 0
  br i1 %i.ax, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !144
  %i.ay = call i32 @pthread_getattr_np(i64 noundef %i.g, ptr noundef nonnull %2) #17
  %.not.i10 = icmp eq i32 %i.ay, 0
  br i1 %.not.i10, label %bb.m, label %get_stack.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.az = call i32 @pthread_attr_getstack(ptr noundef nonnull %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #17
  %.not21.i = icmp eq i32 %i.az, 0
  br i1 %.not21.i, label %bb.n, label %get_stack.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.bb = load i64, ptr %i.f, align 8, !tbaa !144
  %i.bc = getelementptr i8, ptr %i.ba, i64 %i.bb
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !52
  %i.bd = call i32 @pthread_attr_getguardsize(ptr noundef nonnull %2, ptr noundef nonnull %i.a) #17
  %.not22.i = icmp eq i32 %i.bd, 0
  br i1 %.not22.i, label %bb.o, label %get_stack.exit.thread
end_hunk_0
begin_hunk_1_@rb_thread_schedule_limits:bb.a
  br label %thread_sched_to_ready_common.exit.i

thread_sched_to_ready_common.exit.i:              ; preds = %thread_sched_enq.exit.i.i, %bb.m
  call fastcc void @thread_sched_wait_running_turn(ptr noundef nonnull %i.x, ptr noundef nonnull %.val.i, i1 noundef zeroext %i.av)
  %i.bm = getelementptr i8, ptr %.val.i, i64 248  ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 8
  %i.bo = and i8 %i.bn, -4
  store i8 %i.bo, ptr %i.bm, align 8
  br label %bb.q

bb.q:                                             ; preds = %thread_sched_to_ready_common.exit.i, %thread_sched_lock_.exit.i
  %i.bp = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.x) #17 ; 2 uses
  %.not.i.i21.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i21.i, label %thread_sched_yield.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.bp) #41
  unreachable

thread_sched_yield.exit:                          ; preds = %bb.q
  %i.bq = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.br = getelementptr i8, ptr %i.bq, i64 312    ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !88
  %i.bt = load ptr, ptr %i.o, align 8, !tbaa !67  ; 2 uses
  store i32 0, ptr %i.m, align 4, !tbaa !100
  %.not.i10 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not.i10, label %rb_ractor_thread_switch.exit, label %bb.s

bb.s:                                             ; preds = %thread_sched_yield.exit
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !88
  br label %rb_ractor_thread_switch.exit

rb_ractor_thread_switch.exit:                     ; preds = %bb.s, %thread_sched_yield.exit, %bb.d, %rb_thread_alone.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @rb_thread_resolve_unblock_function(ptr noundef captures(none) %0, ptr noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #21 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @ubf_select, ptr %0, align 8, !tbaa !52
  store ptr %2, ptr %1, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @ubf_select(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.c = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i64, ptr %i.c, align 8, !tbaa !132
  %i.d = tail call i32 @pthread_kill(i64 noundef %.val.val, i32 noundef 26) #17 ; 0 uses
  %i.e = getelementptr i8, ptr %0, i64 56         ; 5 uses
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @ubf_list_lock) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %rb_native_mutex_lock.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.f) #41
  unreachable

rb_native_mutex_lock.exit.i:                      ; preds = %bb.a
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !58
  %.not.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_native_mutex_lock.exit.i
  %i.h = load ptr, ptr @ubf_list_head, align 8, !tbaa !73 ; 2 uses
  store ptr %i.h, ptr %i.e, align 8, !tbaa !73
  %i.i = getelementptr i8, ptr %0, i64 64
  store ptr @ubf_list_head, ptr %i.i, align 8, !tbaa !72
  %i.j = getelementptr i8, ptr %i.h, i64 8
  store ptr %i.e, ptr %i.j, align 8, !tbaa !72
  store ptr %i.e, ptr @ubf_list_head, align 8, !tbaa !73
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %rb_native_mutex_lock.exit.i
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @ubf_list_lock) #17 ; 2 uses
  %.not.i3.i = icmp eq i32 %i.k, 0
  br i1 %.not.i3.i, label %rb_native_mutex_unlock.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.k) #41
  unreachable

rb_native_mutex_unlock.exit.i:                    ; preds = %bb.d
  %i.l = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145 ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 160      ; 2 uses
  %i.n = tail call i32 @pthread_mutex_lock(ptr noundef %i.m) #17 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %ractor_sched_lock_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %rb_native_mutex_unlock.exit.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.n) #41
  unreachable

ractor_sched_lock_.exit.i.i:                      ; preds = %rb_native_mutex_unlock.exit.i
  %i.o = load i64, ptr @timer_th, align 8, !tbaa !140
  %i.p = load i64, ptr @current_fork_gen, align 8, !tbaa !142
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.g, label %timer_thread_wakeup_locked.exit.i.i

bb.g:                                             ; preds = %ractor_sched_lock_.exit.i.i
  %i.r = getelementptr i8, ptr %i.l, i64 352
  %i.s = load i8, ptr %i.r, align 8, !tbaa !143, !range !102, !noundef !103
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %timer_thread_wakeup_locked.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @timer_th, i64 20), align 4, !tbaa !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 1, ptr %i.a, align 8, !tbaa !144
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %.preheader.i.i.i.i.i, label %timer_thread_wakeup_force.exit.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.h, %bb.i
  %i.w = call i64 @write(i32 noundef %i.u, ptr noundef nonnull %i.a, i64 noundef 8) #17
  %i.x = icmp slt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %timer_thread_wakeup_force.exit.i.i.i

bb.i:                                             ; preds = %.preheader.i.i.i.i.i
  %i.y = tail call ptr @rb_errno_ptr() #17
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7    ; 2 uses
  switch i32 %i.z, label %bb.j [
    i32 4, label %.preheader.i.i.i.i.i
    i32 11, label %timer_thread_wakeup_force.exit.i.i.i
  ]

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @async_bug_fd(ptr noundef nonnull @.str.132, i32 noundef %i.z, i32 noundef %i.u) #47
  unreachable

timer_thread_wakeup_force.exit.i.i.i:             ; preds = %bb.i, %.preheader.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %timer_thread_wakeup_locked.exit.i.i

timer_thread_wakeup_locked.exit.i.i:              ; preds = %timer_thread_wakeup_force.exit.i.i.i, %bb.g, %ractor_sched_lock_.exit.i.i
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef %i.m) #17 ; 2 uses
  %.not.i.i3.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i3.i.i, label %register_ubf_list.exit, label %bb.k

bb.k:                                             ; preds = %timer_thread_wakeup_locked.exit.i.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.aa) #41
  unreachable

register_ubf_list.exit:                           ; preds = %timer_thread_wakeup_locked.exit.i.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_nogvl(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.rb_fiber_scheduler_blocking_operation_state, align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %struct.rb_blocking_region_buffer, align 4 ; 4 uses
  %i.c = and i32 %4, 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i64 @rb_fiber_scheduler_current() #17 ; 2 uses
  %.not41 = icmp eq i64 %i.d, 4
  br i1 %.not41, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.e = call i64 @rb_fiber_scheduler_blocking_operation_wait(i64 noundef %i.d, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5) #17
  %i.f = icmp eq i64 %i.e, 36
  br i1 %i.f, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !271
  call void @rb_errno_set(i32 noundef %i.h) #17
  %i.i = load ptr, ptr %5, align 8, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.t

select.unfold:                                    ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.thread

.thread:                                          ; preds = %select.unfold, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !147
  store volatile ptr %i.k, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !147 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48 ; 2 uses
  %.val.a = load ptr, ptr %i.l, align 8, !tbaa !11 ; 10 uses
  %.not.i = icmp eq ptr %.val.a, null
  br i1 %.not.i, label %rb_ec_vm_ptr.exit, label %7

7:                                                ; preds = %.thread
  %8 = getelementptr i8, ptr %.val.a, i64 32
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  br label %rb_ec_vm_ptr.exit

rb_ec_vm_ptr.exit:                                ; preds = %.thread, %7
  %.0.i = phi ptr [ %9, %7 ], [ null, %.thread ]  ; 3 uses
  %10 = getelementptr i8, ptr %.0.i, i64 40
  %11 = load ptr, ptr %10, align 8, !tbaa !166
  %12 = icmp ne ptr %11, %.val.a                  ; 2 uses
  %magicptr = ptrtoint ptr %2 to i64
  switch i64 %magicptr, label %rb_thread_resolve_unblock_function.exit.thread.fold.split [
    i64 -1, label %rb_thread_resolve_unblock_function.exit.thread
    i64 0, label %bb.f
  ]

rb_thread_resolve_unblock_function.exit.thread.fold.split: ; preds = %rb_ec_vm_ptr.exit
  br label %rb_thread_resolve_unblock_function.exit.thread

rb_thread_resolve_unblock_function.exit.thread:   ; preds = %rb_ec_vm_ptr.exit, %rb_thread_resolve_unblock_function.exit.thread.fold.split
  %.05463 = phi ptr [ %.val.a, %rb_ec_vm_ptr.exit ], [ %3, %rb_thread_resolve_unblock_function.exit.thread.fold.split ] ; 2 uses
  %.05561 = phi ptr [ @ubf_select, %rb_ec_vm_ptr.exit ], [ %2, %rb_thread_resolve_unblock_function.exit.thread.fold.split ] ; 2 uses
  %i.m = getelementptr i8, ptr %.val.a, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.o = call i32 @rb_ractor_living_thread_num(ptr noundef %i.n) #17
  %i.p = icmp ne i32 %i.o, 1
  %or.cond.not69 = select i1 %i.p, i1 true, i1 %12
  %i.q = and i32 %4, 2
  %.not43 = icmp eq i32 %i.q, 0
  %or.cond45 = or i1 %.not43, %or.cond.not69
  br i1 %or.cond45, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rb_thread_resolve_unblock_function.exit.thread
  %i.r = getelementptr i8, ptr %.0.i, i64 504
  store volatile i32 1, ptr %i.r, align 8, !tbaa !167
  br label %bb.f

bb.f:                                             ; preds = %rb_ec_vm_ptr.exit, %bb.e, %rb_thread_resolve_unblock_function.exit.thread
  %.05464 = phi ptr [ %.05463, %bb.e ], [ %.05463, %rb_thread_resolve_unblock_function.exit.thread ], [ %3, %rb_ec_vm_ptr.exit ]
  %.05562 = phi ptr [ %.05561, %bb.e ], [ %.05561, %rb_thread_resolve_unblock_function.exit.thread ], [ null, %rb_ec_vm_ptr.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile ptr %.0.i, ptr %i.b, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.s = and i32 %4, 1                            ; 2 uses
  %i.t = call fastcc i32 @blocking_region_begin(ptr noundef %.val.a, ptr noundef %6, ptr noundef %.05562, ptr noundef %.05464, i32 noundef %i.s)
  %.not44 = icmp eq i32 %i.t, 0
  br i1 %.not44, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %.val.a, i64 48    ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.w = getelementptr i8, ptr %i.v, i64 200
  %i.x = call i32 @_setjmp(ptr noundef %i.w) #45  ; 0 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.z = getelementptr i8, ptr %i.y, i64 184
  %i.aa = call ptr asm sideeffect "movq\09%rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !274
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !69
  %i.ab = getelementptr i8, ptr %.val.a, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56
  %i.ad = getelementptr i8, ptr %i.ac, i64 216
  call fastcc void @thread_sched_to_waiting(ptr noundef %i.ad, ptr noundef %.val.a)
  %i.ae = call ptr %0(ptr noundef %1) #17
  %i.af = call i32 @rb_errno() #17
  call fastcc void @blocking_region_end(ptr noundef %.val.a, ptr noundef %6)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.039 = phi ptr [ %i.ae, %bb.g ], [ null, %bb.f ]
  %.0 = phi i32 [ %i.af, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.0..0..0..0. = load volatile ptr, ptr %i.b, align 8, !tbaa !145
  br i1 %12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr i8, ptr %.0..0..0..0., i64 504
  store volatile i32 0, ptr %i.ag, align 8, !tbaa !167
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = icmp eq i32 %i.s, 0
  br i1 %i.ah, label %bb.k, label %vm_check_ints_blocking.exit

bb.k:                                             ; preds = %bb.j
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !11 ; 4 uses
  %i.ai = getelementptr i8, ptr %.val.i, i64 280
  %.val15.i = load i64, ptr %i.ai, align 8, !tbaa !25
  %i.aj = inttoptr i64 %.val15.i to ptr           ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !46 ; 2 uses
  %i.al = and i64 %i.ak, 8192
  %.not.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = lshr i64 %i.ak, 15
  %i.an = and i64 %i.am, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ao = getelementptr i8, ptr %i.aj, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi i64 [ %i.an, %bb.l ], [ %i.ap, %bb.m ]
  %.not.i47 = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i47, label %bb.n, label %bb.o, !prof !49

bb.n:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.aq = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 32
  %i.ar = load atomic volatile i32, ptr %i.aq monotonic, align 8
  %i.as = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !50
  %i.au = xor i32 %i.at, -1
  %i.av = and i32 %i.ar, %i.au
  %.not16.i = icmp eq i32 %i.av, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.p, !prof !49

bb.o:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.aw = getelementptr i8, ptr %.val.i, i64 248  ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8
  %i.ay = and i8 %i.ax, -65
  store i8 %i.ay, ptr %i.aw, align 8
  %i.az = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 32
  %i.ba = atomicrmw volatile or ptr %i.az, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bb = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.bb, 0
  br i1 %.not13.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 32
  %i.bd = load atomic volatile i32, ptr %i.bc monotonic, align 8
  %i.be = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !50
  %i.bg = xor i32 %i.bf, -1
  %i.bh = and i32 %i.bd, 10
  %i.bi = and i32 %i.bh, %i.bg
  %.not17.i = icmp eq i32 %i.bi, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bj = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.bj, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.bj) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.s, %bb.r, %bb.q, %bb.n, %bb.j
  call void @rb_errno_set(i32 noundef %.0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.t

bb.t:                                             ; preds = %bb.d, %vm_check_ints_blocking.exit
  %.3 = phi ptr [ %.039, %vm_check_ints_blocking.exit ], [ %i.i, %bb.d ]
  ret ptr %.3
}

declare i64 @rb_fiber_scheduler_current() local_unnamed_addr #4

declare i64 @rb_fiber_scheduler_blocking_operation_wait(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @rb_errno_set(i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @blocking_region_begin(ptr noundef %0, ptr noundef nonnull initializes((0, 4)) %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 248        ; 3 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 3
  %i.d = zext nneg i8 %i.c to i32
  store i32 %i.d, ptr %1, align 4, !tbaa !275
  %.not.i = icmp eq i32 %4, 0
  %i.e = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 296        ; 5 uses
  br i1 %.not.i, label %rb_native_mutex_unlock.exit.us.i, label %rb_native_mutex_unlock.exit.i

rb_native_mutex_unlock.exit.us.i:                 ; preds = %bb.a, %bb.d
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !67   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load atomic volatile i32, ptr %i.h monotonic, align 4
  %i.j = getelementptr i8, ptr %i.g, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !50
  %i.l = xor i32 %i.k, -1
  %i.m = and i32 %i.i, %i.l
  %.not.i.us.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.us.i, label %rb_vm_check_ints.exit.us.i, label %bb.b, !prof !49

bb.b:                                             ; preds = %rb_native_mutex_unlock.exit.us.i
  %i.n = getelementptr i8, ptr %i.g, i64 48
  %.val.i.us.i = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.o = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.us.i, i32 noundef 0) ; 0 uses
  br label %rb_vm_check_ints.exit.us.i

rb_vm_check_ints.exit.us.i:                       ; preds = %bb.b, %rb_native_mutex_unlock.exit.us.i
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef %i.f) #17 ; 2 uses
  %.not.i13.us.i = icmp eq i32 %i.p, 0
  br i1 %.not.i13.us.i, label %rb_native_mutex_lock.exit.us.i, label %.split26.us.i

rb_native_mutex_lock.exit.us.i:                   ; preds = %rb_vm_check_ints.exit.us.i
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !67   ; 3 uses
  %i.r = getelementptr i8, ptr %i.q, i64 144
  %i.s = load i8, ptr %i.r, align 8, !tbaa !76
  %.not12.us.i = icmp eq i8 %i.s, 0
  br i1 %.not12.us.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %rb_native_mutex_lock.exit.us.i
  %i.t = getelementptr i8, ptr %i.q, i64 32
  %i.u = load atomic volatile i32, ptr %i.t monotonic, align 8
  %i.v = getelementptr i8, ptr %i.q, i64 36
  %i.w = load i32, ptr %i.v, align 4, !tbaa !50
  %i.x = xor i32 %i.w, -1
  %i.y = and i32 %i.u, %i.x
  %.not18.us.i = icmp eq i32 %i.y, 0
  br i1 %.not18.us.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef %i.f) #17 ; 2 uses
  %.not.i14.us.i = icmp eq i32 %i.z, 0
  br i1 %.not.i14.us.i, label %rb_native_mutex_unlock.exit.us.i, label %.split29.us.i, !llvm.loop !277

rb_native_mutex_unlock.exit.i:                    ; preds = %bb.a, %bb.f
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 32
  %i.ac = load atomic volatile i32, ptr %i.ab monotonic, align 4
  %i.ad = getelementptr i8, ptr %i.aa, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !50
  %i.af = xor i32 %i.ae, -1
  %i.ag = and i32 %i.ac, %i.af
  %.not17.i = icmp eq i32 %i.ag, 0
  br i1 %.not17.i, label %rb_vm_check_ints.exit.i, label %unblock_function_set.exit.thread

rb_vm_check_ints.exit.i:                          ; preds = %rb_native_mutex_unlock.exit.i
  %i.ah = tail call i32 @pthread_mutex_lock(ptr noundef %i.f) #17 ; 2 uses
  %.not.i13.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i13.i, label %rb_native_mutex_lock.exit.i, label %.split26.us.i

.split26.us.i:                                    ; preds = %rb_vm_check_ints.exit.i, %rb_vm_check_ints.exit.us.i
  %.us-phi.i = phi i32 [ %i.p, %rb_vm_check_ints.exit.us.i ], [ %i.ah, %rb_vm_check_ints.exit.i ]
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %.us-phi.i) #41
  unreachable

rb_native_mutex_lock.exit.i:                      ; preds = %rb_vm_check_ints.exit.i
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !67  ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 144
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !76
  %.not12.i = icmp eq i8 %i.ak, 0
  br i1 %.not12.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %rb_native_mutex_lock.exit.i
  %i.al = getelementptr i8, ptr %i.ai, i64 32
  %i.am = load atomic volatile i32, ptr %i.al monotonic, align 8
  %i.an = getelementptr i8, ptr %i.ai, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !50
  %i.ap = xor i32 %i.ao, -1
  %i.aq = and i32 %i.am, %i.ap
  %.not18.i = icmp eq i32 %i.aq, 0
  br i1 %.not18.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = tail call i32 @pthread_mutex_unlock(ptr noundef %i.f) #17 ; 2 uses
  %.not.i14.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i14.i, label %rb_native_mutex_unlock.exit.i, label %.split29.us.i, !llvm.loop !277

.split29.us.i:                                    ; preds = %bb.f, %bb.d
  %.us-phi30.i = phi i32 [ %i.z, %bb.d ], [ %i.ar, %bb.f ]
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %.us-phi30.i) #41
  unreachable

.critedge.i:                                      ; preds = %bb.e, %rb_native_mutex_lock.exit.i, %bb.c, %rb_native_mutex_lock.exit.us.i
  %i.as = getelementptr i8, ptr %0, i64 336
  store ptr %2, ptr %i.as, align 8, !tbaa !75
  %i.at = getelementptr i8, ptr %0, i64 344
  store ptr %3, ptr %i.at, align 8, !tbaa !77
  %i.au = tail call i32 @pthread_mutex_unlock(ptr noundef %i.f) #17 ; 2 uses
  %.not.i15.i = icmp eq i32 %i.au, 0
  br i1 %.not.i15.i, label %unblock_function_set.exit, label %bb.g

bb.g:                                             ; preds = %.critedge.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.au) #41
  unreachable
end_hunk_1
begin_hunk_2_@rb_thread_call_without_gvl2:bb.a
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !279  ; 5 uses
  tail call void @rb_io_check_closed(ptr noundef %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !147
  store volatile ptr %i.g, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.0..0..0..0..0..0..i, ptr %i.h, align 8, !tbaa !282
  %i.i = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145
  %i.j = getelementptr i8, ptr %i.i, i64 496
  %i.k = load i64, ptr %i.j, align 8, !tbaa !203  ; 2 uses
  %i.l = getelementptr i8, ptr %i.e, i64 240      ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !284
  %.not.i.i = icmp eq i64 %i.m, %i.k
  %.phi.trans.insert.i = getelementptr i8, ptr %i.e, i64 208 ; 5 uses
  br i1 %.not.i.i, label %.rb_io_blocking_operations.exit_crit_edge.i, label %bb.b

.rb_io_blocking_operations.exit_crit_edge.i:      ; preds = %bb.a
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !73
  br label %rb_io_blocking_operation_enter.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.e, i64 216
  store ptr %.phi.trans.insert.i, ptr %i.n, align 8, !tbaa !59
  store i64 %i.k, ptr %i.l, align 8, !tbaa !284
  br label %rb_io_blocking_operation_enter.exit

rb_io_blocking_operation_enter.exit:              ; preds = %.rb_io_blocking_operations.exit_crit_edge.i, %bb.b
  %i.o = phi ptr [ %.pre.i, %.rb_io_blocking_operations.exit_crit_edge.i ], [ %.phi.trans.insert.i, %bb.b ] ; 2 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.phi.trans.insert.i, ptr %i.p, align 8, !tbaa !72
  %i.q = getelementptr i8, ptr %i.o, i64 8
  store ptr %3, ptr %i.q, align 8, !tbaa !72
  store ptr %3, ptr %.phi.trans.insert.i, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %i.e, ptr %4, align 8, !tbaa !291
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.r, align 8, !tbaa !294
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !291
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !294
  tail call fastcc void @rb_io_blocking_operation_exit(ptr noundef %i.b, ptr noundef %i.d)
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define hidden zeroext i1 @rb_thread_mn_schedulable(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ruby_threadptr_data_type) #17
  %i.b = getelementptr i8, ptr %i.a, i64 208
  %i.c = load i8, ptr %i.b, align 8, !tbaa !295, !range !102, !noundef !103
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_thread_io_blocking_call(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 23 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %4 = alloca %struct.rb_io_blocking_operation, align 8 ; 8 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct.rb_blocking_region_buffer, align 4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147
  store volatile ptr %i.j, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store volatile ptr %.0..0..0..0..0..0..i, ptr %i.b, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.0..0..0..0.27 = load volatile ptr, ptr %i.b, align 8, !tbaa !147
  %i.k = getelementptr i8, ptr %.0..0..0..0.27, i64 48
  %.0.27.val = load ptr, ptr %i.k, align 8, !tbaa !11
  store volatile ptr %.0.27.val, ptr %i.c, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store volatile i64 36, ptr %i.d, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store volatile i32 0, ptr %i.e, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.0..0..0..0.15 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.l = getelementptr i8, ptr %.0..0..0..0.15, i64 208
  %i.m = load i8, ptr %i.l, align 8, !tbaa !295, !range !102, !noundef !103
  store volatile i8 %i.m, ptr %i.f, align 1, !tbaa !296
  %.0..0..0..0.16 = load volatile ptr, ptr %i.c, align 8, !tbaa !63 ; 2 uses
  %i.n = getelementptr i8, ptr %.0..0..0..0.16, i64 40
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.o = getelementptr i8, ptr %.val.i, i64 104
  %.val.val.i = load i32, ptr %i.o, align 8, !tbaa !65
  %i.p = icmp sgt i32 %.val.val.i, 0
  %.not.i = icmp eq i32 %3, 0                     ; 2 uses
  %or.cond.i = or i1 %.not.i, %i.p
  br i1 %or.cond.i, label %thread_io_mn_schedulable.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %.0..0..0..0.16, i64 440
  %i.r = load i32, ptr %i.q, align 8, !tbaa !297
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i8
  br label %thread_io_mn_schedulable.exit

thread_io_mn_schedulable.exit:                    ; preds = %bb.a, %bb.b
  %i.u = phi i8 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %.0..0..0..0.17 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.v = getelementptr i8, ptr %.0..0..0..0.17, i64 208
  store i8 %i.u, ptr %i.v, align 8, !tbaa !295
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !298
  %i.y = call ptr @rb_errno_ptr() #17
  store i32 0, ptr %i.y, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.0..0..0..0.28 = load volatile ptr, ptr %i.b, align 8, !tbaa !147
  store ptr %.0..0..0..0.28, ptr %i.z, align 8, !tbaa !282
  %i.aa = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145
  %i.ab = getelementptr i8, ptr %i.aa, i64 496
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !203 ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 240       ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !284
  %.not.i.i = icmp eq i64 %i.ae, %i.ac
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 208 ; 5 uses
  br i1 %.not.i.i, label %.rb_io_blocking_operations.exit_crit_edge.i, label %bb.c

.rb_io_blocking_operations.exit_crit_edge.i:      ; preds = %thread_io_mn_schedulable.exit
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !73
  br label %rb_io_blocking_operation_enter.exit

bb.c:                                             ; preds = %thread_io_mn_schedulable.exit
  %i.af = getelementptr i8, ptr %0, i64 216
  store ptr %.phi.trans.insert.i, ptr %i.af, align 8, !tbaa !59
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !284
  br label %rb_io_blocking_operation_enter.exit

rb_io_blocking_operation_enter.exit:              ; preds = %.rb_io_blocking_operations.exit_crit_edge.i, %bb.c
  %i.ag = phi ptr [ %.pre.i, %.rb_io_blocking_operations.exit_crit_edge.i ], [ %.phi.trans.insert.i, %bb.c ] ; 2 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !73
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.phi.trans.insert.i, ptr %i.ah, align 8, !tbaa !72
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  store ptr %4, ptr %i.ai, align 8, !tbaa !72
  store ptr %4, ptr %.phi.trans.insert.i, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.0..0..0..0.29 = load volatile ptr, ptr %i.b, align 8, !tbaa !147 ; 3 uses
  store ptr %.0..0..0..0.29, ptr %i.g, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 0, ptr %i.aj, align 8, !tbaa !231
  store i64 36, ptr %5, align 8, !tbaa !233
  %i.ak = getelementptr i8, ptr %.0..0..0..0.29, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !234
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !235
  %i.an = getelementptr i8, ptr %.0..0..0..0.29, i64 48
  %.0.2.val.a = load ptr, ptr %i.an, align 8, !tbaa !11 ; 3 uses
  %.not.i.i46 = icmp eq ptr %.0.2.val.a, null
  br i1 %.not.i.i46, label %rb_ec_ractor_ptr.exit.i, label %7

7:                                                ; preds = %rb_io_blocking_operation_enter.exit
  %8 = getelementptr i8, ptr %.0.2.val.a, i64 32
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr i8, ptr %.0.2.val.a, i64 24
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %7, %rb_io_blocking_operation_enter.exit
  %.0.i2.i = phi ptr [ %9, %7 ], [ null, %rb_io_blocking_operation_enter.exit ] ; 2 uses
  %.0.i7.i = phi ptr [ %11, %7 ], [ null, %rb_io_blocking_operation_enter.exit ]
  %12 = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %12, align 8, !tbaa !123
  %13 = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %13, label %bb.d, label %rb_ec_vm_lock_rec.exit

bb.d:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.ao = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !121
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.d
  %.0.i = phi i32 [ %i.ap, %bb.d ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i32 %.0.i, ptr %i.aq, align 4, !tbaa !236
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.as, ptr %i.ar, align 8
  %i.at = call ptr @llvm.stacksave.p0()
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.at, ptr %i.au, align 8
  %i.av = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.ar)
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %bb.f, label %bb.e, !prof !49

bb.e:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.3 = load volatile ptr, ptr %i.g, align 8, !tbaa !147
  %i.aw = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.3)
  br label %bb.y

bb.f:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %5, ptr %i.ak, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store volatile i32 0, ptr %i.h, align 4, !tbaa !7
  %i.ax = shl i32 %3, 1
  br i1 %.not.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %.0..0..0..0.18.us = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %.0..0..0..0.19.us = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.ay = call fastcc i32 @blocking_region_begin(ptr noundef %.0..0..0..0.18.us, ptr noundef %6, ptr noundef nonnull @ubf_select, ptr noundef %.0..0..0..0.19.us, i32 noundef 0) ; 0 uses
  %.0..0..0..0.20.us = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.az = getelementptr i8, ptr %.0..0..0..0.20.us, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !67
  %i.bb = getelementptr i8, ptr %i.ba, i64 200
  %i.bc = call i32 @_setjmp(ptr noundef %i.bb) #45 ; 0 uses
  %.0..0..0..0.21.us = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.bd = getelementptr i8, ptr %.0..0..0..0.21.us, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !67
  %i.bf = getelementptr i8, ptr %i.be, i64 184
  %i.bg = call ptr asm sideeffect "movq\09%rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !299
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !69
  %.0..0..0..0.22.us = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.bh = getelementptr i8, ptr %.0..0..0..0.22.us, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !56
  %i.bj = getelementptr i8, ptr %i.bi, i64 216
  %.0..0..0..0.23.us = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  call fastcc void @thread_sched_to_waiting(ptr noundef %i.bj, ptr noundef %.0..0..0..0.23.us)
  %i.bk = call i64 %1(ptr noundef %2) #17
  store volatile i64 %i.bk, ptr %i.d, align 8, !tbaa !144
  %i.bl = call ptr @rb_errno_ptr() #17
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  store volatile i32 %i.bm, ptr %i.e, align 4, !tbaa !7
  %.0..0..0..0.24.us = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  call fastcc void @blocking_region_end(ptr noundef %.0..0..0..0.24.us, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %thread_io_wait_events.exit.thread

.split:                                           ; preds = %bb.f, %.split.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %.0..0..0..0.18 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %.0..0..0..0.19 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.bn = call fastcc i32 @blocking_region_begin(ptr noundef %.0..0..0..0.18, ptr noundef %6, ptr noundef nonnull @ubf_select, ptr noundef %.0..0..0..0.19, i32 noundef 0) ; 0 uses
  %.0..0..0..0.20 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.bo = getelementptr i8, ptr %.0..0..0..0.20, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !67
  %i.bq = getelementptr i8, ptr %i.bp, i64 200
  %i.br = call i32 @_setjmp(ptr noundef %i.bq) #45 ; 0 uses
  %.0..0..0..0.21 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.bs = getelementptr i8, ptr %.0..0..0..0.21, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !67
  %i.bu = getelementptr i8, ptr %i.bt, i64 184
  %i.bv = call ptr asm sideeffect "movq\09%rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !299
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !69
  %.0..0..0..0.22 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.bw = getelementptr i8, ptr %.0..0..0..0.22, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !56
  %i.by = getelementptr i8, ptr %i.bx, i64 216
  %.0..0..0..0.23 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  call fastcc void @thread_sched_to_waiting(ptr noundef %i.by, ptr noundef %.0..0..0..0.23)
  %i.bz = call i64 %1(ptr noundef %2) #17
  store volatile i64 %i.bz, ptr %i.d, align 8, !tbaa !144
  %i.ca = call ptr @rb_errno_ptr() #17
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !7
  store volatile i32 %i.cb, ptr %i.e, align 4, !tbaa !7
  %.0..0..0..0.24 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  call fastcc void @blocking_region_end(ptr noundef %.0..0..0..0.24, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.0..0..0..0.13 = load volatile i64, ptr %i.d, align 8, !tbaa !144
  %.0..0..0..0.10 = load volatile i32, ptr %i.e, align 4, !tbaa !7
  %i.cc = and i64 %.0..0..0..0.13, 4294967295
  %.not.i47 = icmp eq i64 %i.cc, 4294967295
  %cond.i = icmp eq i32 %.0..0..0..0.10, 11
  %.0.i48 = and i1 %.not.i47, %cond.i
  br i1 %.0.i48, label %bb.g, label %thread_io_wait_events.exit.thread

bb.g:                                             ; preds = %.split
  %.0..0..0..0.25 = load volatile ptr, ptr %i.c, align 8, !tbaa !63 ; 4 uses
  %i.cd = getelementptr i8, ptr %.0..0..0..0.25, i64 40
  %.val.i.i = load ptr, ptr %i.cd, align 8, !tbaa !64
  %i.ce = getelementptr i8, ptr %.val.i.i, i64 104
  %.val.val.i.i = load i32, ptr %i.ce, align 8, !tbaa !65
  %i.cf = icmp sgt i32 %.val.val.i.i, 0
  br i1 %i.cf, label %thread_io_wait_events.exit.thread, label %thread_io_mn_schedulable.exit.i

thread_io_mn_schedulable.exit.i:                  ; preds = %bb.g
  %i.cg = getelementptr i8, ptr %.0..0..0..0.25, i64 440
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !297
  %.not.i50 = icmp eq i32 %i.ch, 0
  br i1 %.not.i50, label %thread_io_wait_events.exit.thread, label %thread_io_wait_events.exit

thread_io_wait_events.exit:                       ; preds = %thread_io_mn_schedulable.exit.i
  %i.ci = getelementptr i8, ptr %.0..0..0..0.25, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !56
  %i.ck = getelementptr i8, ptr %i.cj, i64 216
  %i.cl = call fastcc zeroext i1 @thread_sched_wait_events(ptr noundef %i.ck, ptr noundef nonnull %.0..0..0..0.25, i32 noundef %i.x, i32 noundef %i.ax, ptr noundef null)
  br i1 %i.cl, label %thread_io_wait_events.exit.thread, label %bb.h

bb.h:                                             ; preds = %thread_io_wait_events.exit
  %.0..0..0..0.30 = load volatile ptr, ptr %i.b, align 8, !tbaa !147 ; 6 uses
  %i.cm = getelementptr i8, ptr %.0..0..0..0.30, i64 48
  %.val.i51 = load ptr, ptr %i.cm, align 8, !tbaa !11 ; 4 uses
  %i.cn = getelementptr i8, ptr %.val.i51, i64 280
  %.val15.i = load i64, ptr %i.cn, align 8, !tbaa !25
  %i.co = inttoptr i64 %.val15.i to ptr           ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !46 ; 2 uses
  %i.cq = and i64 %i.cp, 8192
  %.not.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cr = lshr i64 %i.cp, 15
  %i.cs = and i64 %i.cr, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ct = getelementptr i8, ptr %i.co, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.j, %bb.i
  %.0.i.i.i = phi i64 [ %i.cs, %bb.i ], [ %i.cu, %bb.j ]
  %.not.i52 = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i52, label %bb.k, label %bb.l, !prof !49

bb.k:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.cv = getelementptr i8, ptr %.0..0..0..0.30, i64 32
  %i.cw = load atomic volatile i32, ptr %i.cv monotonic, align 8
  %i.cx = getelementptr i8, ptr %.0..0..0..0.30, i64 36
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !50
  %i.cz = xor i32 %i.cy, -1
  %i.da = and i32 %i.cw, %i.cz
  %.not16.i = icmp eq i32 %i.da, 0
  br i1 %.not16.i, label %.split.backedge, label %bb.m, !prof !49

.split.backedge:                                  ; preds = %bb.k, %bb.n, %bb.o, %bb.p
  br label %.split

bb.l:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.db = getelementptr i8, ptr %.val.i51, i64 248 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 8
  %i.dd = and i8 %i.dc, -65
  store i8 %i.dd, ptr %i.db, align 8
  %i.de = getelementptr i8, ptr %.0..0..0..0.30, i64 32
  %i.df = atomicrmw volatile or ptr %i.de, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dg = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i51, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.dg, 0
  br i1 %.not13.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dh = getelementptr i8, ptr %.0..0..0..0.30, i64 32
  %i.di = load atomic volatile i32, ptr %i.dh monotonic, align 8
  %i.dj = getelementptr i8, ptr %.0..0..0..0.30, i64 36
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !50
  %i.dl = xor i32 %i.dk, -1
  %i.dm = and i32 %i.di, 10
  %i.dn = and i32 %i.dm, %i.dl
  %.not17.i = icmp eq i32 %i.dn, 0
  br i1 %.not17.i, label %.split.backedge, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.do = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i51) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.do, 4
  br i1 %.not14.i, label %.split.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dp = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.do) #17, !inline_history !51 ; 0 uses
  br label %.split.backedge

thread_io_wait_events.exit.thread:                ; preds = %.split, %thread_io_wait_events.exit, %thread_io_mn_schedulable.exit.i, %bb.g, %.split.us
  %.0..0..0..0.31 = load volatile ptr, ptr %i.b, align 8, !tbaa !147 ; 6 uses
  %i.dq = getelementptr i8, ptr %.0..0..0..0.31, i64 48
  %.val.i54 = load ptr, ptr %i.dq, align 8, !tbaa !11 ; 4 uses
  %i.dr = getelementptr i8, ptr %.val.i54, i64 280
  %.val15.i55 = load i64, ptr %i.dr, align 8, !tbaa !25
  %i.ds = inttoptr i64 %.val15.i55 to ptr         ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !46 ; 2 uses
  %i.du = and i64 %i.dt, 8192
  %.not.i.i.i56 = icmp eq i64 %i.du, 0
end_hunk_2
begin_hunk_3_@do_select:bb.a

bb.af:                                            ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i49
  %i.eo = getelementptr i8, ptr %i.ee, i64 32
  %i.ep = load atomic volatile i32, ptr %i.eo monotonic, align 8
  %i.eq = getelementptr i8, ptr %i.ee, i64 36
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !50
  %i.es = xor i32 %i.er, -1
  %i.et = and i32 %i.ep, %i.es
  %.not16.i56 = icmp eq i32 %i.et, 0
  br i1 %.not16.i56, label %vm_check_ints_blocking.exit57, label %bb.ah, !prof !49

bb.ag:                                            ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i49
  %i.eu = getelementptr i8, ptr %.val.i46, i64 248 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 8
  %i.ew = and i8 %i.ev, -65
  store i8 %i.ew, ptr %i.eu, align 8
  %i.ex = getelementptr i8, ptr %i.ee, i64 32
  %i.ey = atomicrmw volatile or ptr %i.ex, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ez = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i46, i32 noundef 1), !inline_history !51
  %.not13.i52 = icmp eq i32 %i.ez, 0
  br i1 %.not13.i52, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fa = getelementptr i8, ptr %i.ee, i64 32
  %i.fb = load atomic volatile i32, ptr %i.fa monotonic, align 8
  %i.fc = getelementptr i8, ptr %i.ee, i64 36
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !50
  %i.fe = xor i32 %i.fd, -1
  %i.ff = and i32 %i.fb, 10
  %i.fg = and i32 %i.ff, %i.fe
  %.not17.i55 = icmp eq i32 %i.fg, 0
  br i1 %.not17.i55, label %vm_check_ints_blocking.exit57, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fh = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i46) #17, !inline_history !51 ; 2 uses
  %.not14.i53 = icmp eq i64 %i.fh, 4
  br i1 %.not14.i53, label %vm_check_ints_blocking.exit57, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fi = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.fh) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit57

vm_check_ints_blocking.exit57:                    ; preds = %bb.af, %bb.ai, %bb.aj, %bb.ak
  %.0..0..0.60 = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %i.fj = icmp slt i32 %.0..0..0.60, 0
  br i1 %i.fj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %vm_check_ints_blocking.exit57
  %i.fk = call ptr @rb_errno_ptr() #17
  store i32 %.1, ptr %i.fk, align 4, !tbaa !7
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %vm_check_ints_blocking.exit57
  %.0..0..0.61 = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %i.fl = sext i32 %.0..0..0.61 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.fl
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @select_set_free(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.b = getelementptr i8, ptr %i.a, i64 40
  %i.c = getelementptr i8, ptr %i.a, i64 48       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !350
  tail call void @ruby_xfree(ptr noundef %i.d) #17
  store i32 0, ptr %i.b, align 8, !tbaa !348
  store ptr null, ptr %i.c, align 8, !tbaa !350
  %i.e = getelementptr i8, ptr %i.a, i64 56
  %i.f = getelementptr i8, ptr %i.a, i64 64       ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !350
  tail call void @ruby_xfree(ptr noundef %i.g) #17
  store i32 0, ptr %i.e, align 8, !tbaa !348
  store ptr null, ptr %i.f, align 8, !tbaa !350
  %i.h = getelementptr i8, ptr %i.a, i64 72
  %i.i = getelementptr i8, ptr %i.a, i64 80       ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !350
  tail call void @ruby_xfree(ptr noundef %i.j) #17
  store i32 0, ptr %i.h, align 8, !tbaa !348
  store ptr null, ptr %i.i, align 8, !tbaa !350
  ret i64 0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_thread_wait_for_single_fd(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @thread_io_wait(ptr noundef %0, ptr noundef null, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @thread_io_wait(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca [1 x %struct.pollfd], align 4       ; 6 uses
  %i.a = alloca i32, align 4                      ; 15 uses
  %6 = alloca %struct.rb_io_blocking_operation, align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i32 %2, ptr %5, align 4, !tbaa !370
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = trunc i32 %3 to i16                      ; 2 uses
  store i16 %i.f, ptr %i.e, align 4, !tbaa !372
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 3 uses
  store i16 0, ptr %i.g, align 2, !tbaa !373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i32 0, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.h = getelementptr i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67   ; 12 uses
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !282
  %i.k = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145
  %i.l = getelementptr i8, ptr %i.k, i64 496
  %i.m = load i64, ptr %i.l, align 8, !tbaa !203  ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 240        ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !284
  %.not.i.i = icmp eq i64 %i.o, %i.m
  %.phi.trans.insert.i = getelementptr i8, ptr %1, i64 208 ; 5 uses
  br i1 %.not.i.i, label %.rb_io_blocking_operations.exit_crit_edge.i, label %bb.c

.rb_io_blocking_operations.exit_crit_edge.i:      ; preds = %bb.b
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !73
  br label %rb_io_blocking_operation_enter.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %1, i64 216
  store ptr %.phi.trans.insert.i, ptr %i.p, align 8, !tbaa !59
  store i64 %i.m, ptr %i.n, align 8, !tbaa !284
  br label %rb_io_blocking_operation_enter.exit

rb_io_blocking_operation_enter.exit:              ; preds = %.rb_io_blocking_operations.exit_crit_edge.i, %bb.c
  %i.q = phi ptr [ %.pre.i, %.rb_io_blocking_operations.exit_crit_edge.i ], [ %.phi.trans.insert.i, %bb.c ] ; 2 uses
  store ptr %i.q, ptr %6, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.phi.trans.insert.i, ptr %i.r, align 8, !tbaa !72
  %i.s = getelementptr i8, ptr %i.q, i64 8
  store ptr %6, ptr %i.s, align 8, !tbaa !72
  store ptr %6, ptr %.phi.trans.insert.i, align 8, !tbaa !73
  br label %bb.d

bb.d:                                             ; preds = %rb_io_blocking_operation_enter.exit, %bb.a
  %i.t = icmp eq ptr %4, null                     ; 2 uses
  br i1 %i.t, label %bb.e, label %thread_io_wait_events.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %0, i64 40
  %.val.i.i = load ptr, ptr %i.u, align 8, !tbaa !64
  %i.v = getelementptr i8, ptr %.val.i.i, i64 104
  %.val.val.i.i = load i32, ptr %i.v, align 8, !tbaa !65
  %i.w = icmp sgt i32 %.val.val.i.i, 0
  %.not.i.i38 = icmp eq i32 %3, 0
  %or.cond.i.i = or i1 %.not.i.i38, %i.w
  br i1 %or.cond.i.i, label %thread_io_wait_events.exit.thread, label %thread_io_mn_schedulable.exit.i

thread_io_mn_schedulable.exit.i:                  ; preds = %bb.e
  %i.x = getelementptr i8, ptr %0, i64 440
  %i.y = load i32, ptr %i.x, align 8, !tbaa !297
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %thread_io_wait_events.exit.thread, label %thread_io_wait_events.exit

thread_io_wait_events.exit:                       ; preds = %thread_io_mn_schedulable.exit.i
  %i.z = getelementptr i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56
  %i.ab = getelementptr i8, ptr %i.aa, i64 216
  %i.ac = shl i32 %3, 1
  %i.ad = call fastcc zeroext i1 @thread_sched_wait_events(ptr noundef %i.ab, ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.ac, ptr noundef null)
  br i1 %i.ad, label %thread_io_wait_events.exit.thread, label %bb.f

bb.f:                                             ; preds = %thread_io_wait_events.exit
  store i16 %i.f, ptr %i.g, align 2, !tbaa !373
  %i.ae = call ptr @rb_errno_ptr() #17
  store i32 0, ptr %i.ae, align 4, !tbaa !7
  br label %bb.ar

thread_io_wait_events.exit.thread:                ; preds = %bb.e, %thread_io_mn_schedulable.exit.i, %bb.d, %thread_io_wait_events.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.i, ptr %i.c, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 0, ptr %i.af, align 8, !tbaa !231
  store i64 36, ptr %7, align 8, !tbaa !233
  %i.ag = getelementptr i8, ptr %i.i, i64 24      ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !234
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !235
  %i.aj = getelementptr i8, ptr %i.i, i64 48      ; 4 uses
  %.0.1.val.a = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 3 uses
  %.not.i.i39 = icmp eq ptr %.0.1.val.a, null
  br i1 %.not.i.i39, label %rb_ec_ractor_ptr.exit.i, label %8

8:                                                ; preds = %thread_io_wait_events.exit.thread
  %9 = getelementptr i8, ptr %.0.1.val.a, i64 32
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = getelementptr i8, ptr %.0.1.val.a, i64 24
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %8, %thread_io_wait_events.exit.thread
  %.0.i2.i = phi ptr [ %10, %8 ], [ null, %thread_io_wait_events.exit.thread ] ; 2 uses
  %.0.i7.i = phi ptr [ %12, %8 ], [ null, %thread_io_wait_events.exit.thread ]
  %13 = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %13, align 8, !tbaa !123
  %14 = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %14, label %bb.g, label %rb_ec_vm_lock_rec.exit

bb.g:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.ak = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !121
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.g
  %.0.i = phi i32 [ %i.al, %bb.g ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 68
  store i32 %.0.i, ptr %i.am, align 4, !tbaa !236
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ao = call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.ao, ptr %i.an, align 8
  %i.ap = call ptr @llvm.stacksave.p0()
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.an)
  %.not31 = icmp eq i32 %i.ar, 0
  br i1 %.not31, label %bb.i, label %bb.h, !prof !49

bb.h:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.c, align 8, !tbaa !147
  %i.as = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  br label %bb.aq

bb.i:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %7, ptr %i.ag, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %.val.i = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 4 uses
  %i.at = getelementptr i8, ptr %.val.i, i64 280
  %.val15.i = load i64, ptr %i.at, align 8, !tbaa !25
  %i.au = inttoptr i64 %.val15.i to ptr           ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !46 ; 2 uses
  %i.aw = and i64 %i.av, 8192
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = lshr i64 %i.av, 15
  %i.ay = and i64 %i.ax, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.k:                                             ; preds = %bb.i
  %i.az = getelementptr i8, ptr %i.au, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i64 [ %i.ay, %bb.j ], [ %i.ba, %bb.k ]
  %.not.i40 = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i40, label %bb.l, label %bb.m, !prof !49

bb.l:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.bb = getelementptr i8, ptr %i.i, i64 32
  %i.bc = load atomic volatile i32, ptr %i.bb monotonic, align 8
  %i.bd = getelementptr i8, ptr %i.i, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !50
  %i.bf = xor i32 %i.be, -1
  %i.bg = and i32 %i.bc, %i.bf
  %.not16.i = icmp eq i32 %i.bg, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.n, !prof !49

bb.m:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.bh = getelementptr i8, ptr %.val.i, i64 248  ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8
  %i.bj = and i8 %i.bi, -65
  store i8 %i.bj, ptr %i.bh, align 8
  %i.bk = getelementptr i8, ptr %i.i, i64 32
  %i.bl = atomicrmw volatile or ptr %i.bk, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.bm, 0
  br i1 %.not13.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr i8, ptr %i.i, i64 32
  %i.bo = load atomic volatile i32, ptr %i.bn monotonic, align 8
  %i.bp = getelementptr i8, ptr %i.i, i64 36
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !50
  %i.br = xor i32 %i.bq, -1
  %i.bs = and i32 %i.bo, 10
  %i.bt = and i32 %i.bs, %i.br
  %.not17.i = icmp eq i32 %i.bt, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bu = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.bu, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.bu) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.l, %bb.o, %bb.p, %bb.q
  br i1 %i.t, label %timeout_prepare.exit, label %bb.r

bb.r:                                             ; preds = %vm_check_ints_blocking.exit
  %.val.i43.a = load i64, ptr %4, align 8, !tbaa !365
  %i.bw = getelementptr i8, ptr %4, i64 8
  %.val8.i = load i64, ptr %i.bw, align 8, !tbaa !367
  %i.bx = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.val.i43.a, i64 1000000000) ; 2 uses
  %i.by = extractvalue { i64, i1 } %i.bx, 1
  %i.bz = extractvalue { i64, i1 } %i.bx, 0
  %i.ca = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.val8.i, i64 1000) ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.ca, 1
  %i.cc = extractvalue { i64, i1 } %i.ca, 0
  %i.cd = call i64 @llvm.uadd.sat.i64(i64 %i.bz, i64 %i.cc)
  %i.ce = select i1 %i.by, i1 true, i1 %i.cb
  %.0.i4.i.i = select i1 %i.ce, i64 -1, i64 %i.cd ; 2 uses
  store i64 %.0.i4.i.i, ptr %i.d, align 8, !tbaa !144
  %i.cf = call i64 @rb_hrtime_now()
  %.0.i.i = call noundef i64 @llvm.uadd.sat.i64(i64 %i.cf, i64 %.0.i4.i.i)
  br label %timeout_prepare.exit

timeout_prepare.exit:                             ; preds = %vm_check_ints_blocking.exit, %bb.r
  %.077 = phi i64 [ 0, %vm_check_ints_blocking.exit ], [ %.0.i.i, %bb.r ] ; 3 uses
  %storemerge.i = phi ptr [ null, %vm_check_ints_blocking.exit ], [ %i.d, %bb.r ] ; 3 uses
  %i.cg = getelementptr i8, ptr %i.i, i64 32      ; 6 uses
  %i.ch = getelementptr i8, ptr %i.i, i64 36      ; 4 uses
  %.not.i57 = icmp eq ptr %storemerge.i, null     ; 2 uses
  br label %wait_retryable.exit

wait_retryable.exit:                              ; preds = %wait_retryable.exit.backedge, %timeout_prepare.exit
  %i.ci = call fastcc i32 @wait_for_single_fd_blocking_region(ptr noundef %0, ptr noundef %5, ptr noundef %storemerge.i, ptr noundef %i.b)
  store volatile i32 %i.ci, ptr %i.a, align 4, !tbaa !7
  %.val.i44 = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 4 uses
  %i.cj = getelementptr i8, ptr %.val.i44, i64 280
  %.val15.i45 = load i64, ptr %i.cj, align 8, !tbaa !25
  %i.ck = inttoptr i64 %.val15.i45 to ptr         ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !46 ; 2 uses
  %i.cm = and i64 %i.cl, 8192
  %.not.i.i.i46 = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i46, label %bb.t, label %bb.s

bb.s:                                             ; preds = %wait_retryable.exit
  %i.cn = lshr i64 %i.cl, 15
  %i.co = and i64 %i.cn, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i47

bb.t:                                             ; preds = %wait_retryable.exit
  %i.cp = getelementptr i8, ptr %i.ck, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i47

rb_threadptr_pending_interrupt_empty_p.exit.i47:  ; preds = %bb.t, %bb.s
  %.0.i.i.i48 = phi i64 [ %i.co, %bb.s ], [ %i.cq, %bb.t ]
  %.not.i49 = icmp eq i64 %.0.i.i.i48, 0
  br i1 %.not.i49, label %bb.u, label %bb.v, !prof !49

bb.u:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i47
  %i.cr = load atomic volatile i32, ptr %i.cg monotonic, align 8
  %i.cs = load i32, ptr %i.ch, align 4, !tbaa !50
  %i.ct = xor i32 %i.cs, -1
  %i.cu = and i32 %i.cr, %i.ct
  %.not16.i54 = icmp eq i32 %i.cu, 0
  br i1 %.not16.i54, label %vm_check_ints_blocking.exit55, label %bb.w, !prof !49

bb.v:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i47
  %i.cv = getelementptr i8, ptr %.val.i44, i64 248 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 8
  %i.cx = and i8 %i.cw, -65
  store i8 %i.cx, ptr %i.cv, align 8
  %i.cy = atomicrmw volatile or ptr %i.cg, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cz = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i44, i32 noundef 1), !inline_history !51
  %.not13.i50 = icmp eq i32 %i.cz, 0
  br i1 %.not13.i50, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.da = load atomic volatile i32, ptr %i.cg monotonic, align 8
  %i.db = load i32, ptr %i.ch, align 4, !tbaa !50
  %i.dc = xor i32 %i.db, -1
  %i.dd = and i32 %i.da, 10
  %i.de = and i32 %i.dd, %i.dc
  %.not17.i53 = icmp eq i32 %i.de, 0
  br i1 %.not17.i53, label %vm_check_ints_blocking.exit55, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.df = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i44) #17, !inline_history !51 ; 2 uses
  %.not14.i51 = icmp eq i64 %i.df, 4
  br i1 %.not14.i51, label %vm_check_ints_blocking.exit55, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.df) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit55

vm_check_ints_blocking.exit55:                    ; preds = %bb.u, %bb.x, %bb.y, %bb.z
  %i.dh = load volatile i32, ptr %i.b, align 4, !tbaa !7
  %.0..0..0.76 = load volatile i32, ptr %i.a, align 4, !tbaa !7 ; 2 uses
  %i.di = icmp slt i32 %.0..0..0.76, 0
  br i1 %i.di, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %vm_check_ints_blocking.exit55
  switch i32 %i.dh, label %bb.ah [
    i32 4, label %bb.ab
    i32 85, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  store volatile i32 0, ptr %i.a, align 4, !tbaa !7
  br i1 %.not.i57, label %wait_retryable.exit.backedge, label %bb.ac

wait_retryable.exit.backedge:                     ; preds = %bb.ab, %bb.ae, %hrtime_update_expire.exit18.sink.split.i
end_hunk_3
begin_hunk_4_@exec_recursive:bb.a
  br i1 %i.z, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %i.y, 0
  %i.ab = and i64 %i.y, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = or i1 %i.aa, %i.ac
  br i1 %i.ad, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.d
  %i.ae = inttoptr i64 %i.y to ptr
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !46
  %i.ag = and i64 %i.af, 31
  %i.ah = icmp eq i64 %i.ag, 8
  br i1 %i.ah, label %recursive_list_access.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.d, %bb.c, %.thread.i
  %.01219.i = phi i64 [ %i.w, %.thread.i ], [ %.val.val.i, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.val.val.i, %bb.c ], [ %.val.val.i, %bb.d ]
  %i.ai = tail call i64 @rb_ident_hash_new() #17  ; 2 uses
  %i.aj = tail call i64 @rb_hash_aset(i64 noundef %.01219.i, i64 noundef %i.h, i64 noundef %i.ai) #17 ; 0 uses
  br label %recursive_list_access.exit

recursive_list_access.exit:                       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.ak = phi i64 [ %i.ai, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.y, %rbimpl_RB_TYPE_P_fastpath.exit.i ] ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !392
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store i64 %1, ptr %i.am, align 8, !tbaa !394
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i64 %2, ptr %i.an, align 8, !tbaa !395
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %3, ptr %i.ao, align 8, !tbaa !396
  %.not38 = icmp eq i32 %4, 0
  br i1 %.not38, label %bb.e, label %recursive_check.exit

recursive_check.exit:                             ; preds = %recursive_list_access.exit
  %i.ap = tail call i64 @rb_id2sym(i64 noundef 3169) #17
  %i.aq = tail call i64 @rb_hash_lookup2(i64 noundef %i.ak, i64 noundef %i.ap, i64 noundef 36) #17
  %.not91 = icmp eq i64 %i.aq, 36                 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %recursive_check.exit, %recursive_list_access.exit
  %or.cond = phi i1 [ true, %recursive_list_access.exit ], [ %.not91, %recursive_check.exit ]
  %i.ar = phi i1 [ false, %recursive_list_access.exit ], [ %.not91, %recursive_check.exit ]
  %i.as = tail call i64 @rb_hash_lookup2(i64 noundef %i.ak, i64 noundef %1, i64 noundef 36) #17 ; 6 uses
  %i.at = icmp eq i64 %i.as, 36
  br i1 %i.at, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %recursive_check.exit50, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = icmp eq i64 %i.as, 0
  %i.av = and i64 %i.as, 7
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = or i1 %i.au, %i.aw
  br i1 %i.ax, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i48, label %rbimpl_RB_TYPE_P_fastpath.exit.i47

rbimpl_RB_TYPE_P_fastpath.exit.i47:               ; preds = %bb.g
  %i.ay = inttoptr i64 %i.as to ptr
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !46
  %i.ba = and i64 %i.az, 31
  %i.bb = icmp eq i64 %i.ba, 8
  br i1 %i.bb, label %bb.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i48

rbimpl_RB_TYPE_P_fastpath.exit.thread.i48:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i47, %bb.g
  %i.bc = icmp eq i64 %2, %i.as
  br i1 %i.bc, label %recursive_check.exit50, label %bb.k

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i47
  %i.bd = tail call i64 @rb_hash_lookup(i64 noundef %i.as, i64 noundef %2) #17
  %i.be = icmp eq i64 %i.bd, 4
  br i1 %i.be, label %bb.k, label %recursive_check.exit50

recursive_check.exit50:                           ; preds = %bb.h, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i48, %bb.f
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %recursive_check.exit50
  tail call void @rb_throw_obj(i64 noundef %i.ak, i64 noundef %i.ak) #41
  unreachable

bb.j:                                             ; preds = %recursive_check.exit50
  %i.bf = tail call i64 %0(i64 noundef %1, i64 noundef %3, i32 noundef 1) #17
  br label %bb.ak

bb.k:                                             ; preds = %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i48, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store ptr %0, ptr %6, align 8, !tbaa !397
  br i1 %i.ar, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.bg = tail call i64 @rb_id2sym(i64 noundef 3169) #17
  %i.bh = tail call i64 @rb_hash_aset(i64 noundef %i.ak, i64 noundef %i.bg, i64 noundef 20) #17 ; 0 uses
  tail call fastcc void @recursive_push(i64 noundef %i.ak, i64 noundef %1, i64 noundef %2)
  %i.bi = ptrtoint ptr %6 to i64
  %i.bj = call i64 @rb_catch_protect(i64 noundef %i.ak, ptr noundef nonnull @exec_recursive_i, i64 noundef %i.bi, ptr noundef nonnull %i.e) #17 ; 2 uses
  %i.bk = load i64, ptr %i.al, align 8, !tbaa !392 ; 2 uses
  %i.bl = load i64, ptr %i.am, align 8, !tbaa !394 ; 2 uses
  %i.bm = load i64, ptr %i.an, align 8, !tbaa !395 ; 2 uses
  %.not.i51 = icmp eq i64 %i.bm, 0
  br i1 %.not.i51, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i53, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = call i64 @rb_hash_lookup2(i64 noundef %i.bk, i64 noundef %i.bl, i64 noundef 36) #17 ; 6 uses
  %i.bo = icmp eq i64 %i.bn, 36
  br i1 %i.bo, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = icmp eq i64 %i.bn, 0
  %i.bq = and i64 %i.bn, 7
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = or i1 %i.bp, %i.br
  br i1 %i.bs, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i53, label %rbimpl_RB_TYPE_P_fastpath.exit.i52

rbimpl_RB_TYPE_P_fastpath.exit.i52:               ; preds = %bb.n
  %i.bt = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !46
  %i.bv = and i64 %i.bu, 31
  %i.bw = icmp eq i64 %i.bv, 8
  br i1 %i.bw, label %bb.o, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i53

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i52
  %i.bx = call i64 @rb_hash_delete_entry(i64 noundef %i.bn, i64 noundef %i.bm) #17 ; 0 uses
  %i.by = load i64, ptr %i.bt, align 8, !tbaa !46 ; 2 uses
  %i.bz = and i64 %i.by, 32768
  %.not.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = lshr i64 %i.by, 16
  %i.cb = and i64 %i.ca, 15
  br label %RHASH_EMPTY_P.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cc = add i64 %i.bn, 24
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !398
  br label %RHASH_EMPTY_P.exit.i

RHASH_EMPTY_P.exit.i:                             ; preds = %bb.q, %bb.p
  %.0.i.i.i = phi i64 [ %i.cb, %bb.p ], [ %i.cf, %bb.q ]
  %i.cg = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.cg, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i53, label %bb.r

rbimpl_RB_TYPE_P_fastpath.exit.thread.i53:        ; preds = %RHASH_EMPTY_P.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i52, %bb.n, %bb.l
  %i.ch = call i64 @rb_hash_delete_entry(i64 noundef %i.bk, i64 noundef %i.bl) #17 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %RHASH_EMPTY_P.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i53
  %i.ci = load i64, ptr %i.al, align 8, !tbaa !392
  %i.cj = call i64 @rb_id2sym(i64 noundef 3169) #17
  %i.ck = call i64 @rb_hash_delete_entry(i64 noundef %i.ci, i64 noundef %i.cj) #17 ; 0 uses
  %i.cl = load i32, ptr %i.e, align 4, !tbaa !7   ; 2 uses
  %.not44 = icmp eq i32 %i.cl, 0
  br i1 %.not44, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cm = load ptr, ptr %i.i, align 8, !tbaa !147
  store volatile ptr %i.cm, ptr %i.c, align 8, !tbaa !147
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.c, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cn = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24
  %.val46 = load ptr, ptr %i.cn, align 8, !tbaa !234 ; 2 uses
  %i.co = getelementptr i8, ptr %.val46, i64 64
  store i32 %i.cl, ptr %i.co, align 8, !tbaa !231
  %i.cp = getelementptr i8, ptr %.val46, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.cp)
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cq = load i64, ptr %i.al, align 8, !tbaa !392
  %i.cr = icmp eq i64 %i.bj, %i.cq
  br i1 %i.cr, label %bb.u, label %bb.ai

bb.u:                                             ; preds = %bb.t
  %i.cs = call i64 %0(i64 noundef %1, i64 noundef %3, i32 noundef 1) #17
  br label %bb.ai

bb.v:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store volatile i64 36, ptr %i.f, align 8, !tbaa !144
  tail call fastcc void @recursive_push(i64 noundef %i.ak, i64 noundef %1, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ct = load ptr, ptr %i.i, align 8, !tbaa !147
  store volatile ptr %i.ct, ptr %i.b, align 8, !tbaa !147
  %.0..0..0..0..0..0..i59 = load volatile ptr, ptr %i.b, align 8, !tbaa !147 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.0..0..0..0..0..0..i59, ptr %i.g, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 0, ptr %i.cu, align 8, !tbaa !231
  store i64 36, ptr %7, align 8, !tbaa !233
  %i.cv = getelementptr i8, ptr %.0..0..0..0..0..0..i59, i64 24 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !234
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !235
  %i.cy = getelementptr i8, ptr %.0..0..0..0..0..0..i59, i64 48
  %.0.2.val.a = load ptr, ptr %i.cy, align 8, !tbaa !11 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.2.val.a, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %9

9:                                                ; preds = %bb.v
  %10 = getelementptr i8, ptr %.0.2.val.a, i64 32
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = getelementptr i8, ptr %.0.2.val.a, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %9, %bb.v
  %.0.i2.i = phi ptr [ %11, %9 ], [ null, %bb.v ] ; 2 uses
  %.0.i7.i = phi ptr [ %13, %9 ], [ null, %bb.v ]
  %14 = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %14, align 8, !tbaa !123
  %15 = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %15, label %bb.w, label %rb_ec_vm_lock_rec.exit

bb.w:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.cz = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !121
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.w
  %.0.i60 = phi i32 [ %i.da, %bb.w ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 68
  store i32 %.0.i60, ptr %i.db, align 4, !tbaa !236
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dd = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.dd, ptr %i.dc, align 8
  %i.de = tail call ptr @llvm.stacksave.p0()
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.de, ptr %i.df, align 8
  %i.dg = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.dc)
  %.not39 = icmp eq i32 %i.dg, 0
  br i1 %.not39, label %bb.y, label %bb.x, !prof !49

bb.x:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.3 = load volatile ptr, ptr %i.g, align 8, !tbaa !147
  %i.dh = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.3)
  %.0..0..0..0.5.pre = load ptr, ptr %i.g, align 8, !tbaa !147
  br label %bb.z

bb.y:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %7, ptr %i.cv, align 8, !tbaa !234
  %i.di = call i64 %0(i64 noundef %1, i64 noundef %3, i32 noundef 0) #17
  store volatile i64 %i.di, ptr %i.f, align 8, !tbaa !144
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.dj = phi i32 [ %i.dh, %bb.x ], [ 0, %bb.y ]  ; 2 uses
  %.0..0..0.5 = phi ptr [ %.0..0..0..0.5.pre, %bb.x ], [ %.0..0..0..0..0..0..i59, %bb.y ]
  %i.dk = load ptr, ptr %i.cx, align 8, !tbaa !235
  %i.dl = getelementptr i8, ptr %.0..0..0.5, i64 24
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.dm = load i64, ptr %i.al, align 8, !tbaa !392 ; 2 uses
  %i.dn = load i64, ptr %i.am, align 8, !tbaa !394 ; 2 uses
  %i.do = load i64, ptr %i.an, align 8, !tbaa !395 ; 2 uses
  %.not.i61 = icmp eq i64 %i.do, 0
  br i1 %.not.i61, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i63, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dp = call i64 @rb_hash_lookup2(i64 noundef %i.dm, i64 noundef %i.dn, i64 noundef 36) #17 ; 6 uses
  %i.dq = icmp eq i64 %i.dp, 36
  br i1 %i.dq, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = icmp eq i64 %i.dp, 0
  %i.ds = and i64 %i.dp, 7
  %i.dt = icmp ne i64 %i.ds, 0
  %i.du = or i1 %i.dr, %i.dt
  br i1 %i.du, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i63, label %rbimpl_RB_TYPE_P_fastpath.exit.i62

rbimpl_RB_TYPE_P_fastpath.exit.i62:               ; preds = %bb.ab
  %i.dv = inttoptr i64 %i.dp to ptr               ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !46
  %i.dx = and i64 %i.dw, 31
  %i.dy = icmp eq i64 %i.dx, 8
  br i1 %i.dy, label %bb.ac, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i63

bb.ac:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i62
  %i.dz = call i64 @rb_hash_delete_entry(i64 noundef %i.dp, i64 noundef %i.do) #17 ; 0 uses
  %i.ea = load i64, ptr %i.dv, align 8, !tbaa !46 ; 2 uses
  %i.eb = and i64 %i.ea, 32768
  %.not.i.i.i.i66 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i.i66, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ec = lshr i64 %i.ea, 16
  %i.ed = and i64 %i.ec, 15
  br label %RHASH_EMPTY_P.exit.i67

bb.ae:                                            ; preds = %bb.ac
  %i.ee = add i64 %i.dp, 24
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !398
  br label %RHASH_EMPTY_P.exit.i67

RHASH_EMPTY_P.exit.i67:                           ; preds = %bb.ae, %bb.ad
  %.0.i.i.i68 = phi i64 [ %i.ed, %bb.ad ], [ %i.eh, %bb.ae ]
  %i.ei = icmp eq i64 %.0.i.i.i68, 0
  br i1 %i.ei, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i63, label %bb.af

rbimpl_RB_TYPE_P_fastpath.exit.thread.i63:        ; preds = %RHASH_EMPTY_P.exit.i67, %rbimpl_RB_TYPE_P_fastpath.exit.i62, %bb.ab, %bb.z
  %i.ej = call i64 @rb_hash_delete_entry(i64 noundef %i.dm, i64 noundef %i.dn) #17 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i63, %RHASH_EMPTY_P.exit.i67
  %.not41 = icmp eq i32 %i.dj, 0
  br i1 %.not41, label %recursive_pop.exit69, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ek = load ptr, ptr %i.i, align 8, !tbaa !147
  store volatile ptr %i.ek, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..i70 = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.el = getelementptr i8, ptr %.0..0..0..0..0..0..i70, i64 24
  %.val = load ptr, ptr %i.el, align 8, !tbaa !234 ; 2 uses
  %i.em = getelementptr i8, ptr %.val, i64 64
  store i32 %i.dj, ptr %i.em, align 8, !tbaa !231
  %i.en = getelementptr i8, ptr %.val, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.en)
  unreachable

recursive_pop.exit69:                             ; preds = %bb.af
  %.0..0..0..0.6 = load volatile i64, ptr %i.f, align 8, !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.u, %bb.t, %recursive_pop.exit69
  %.2.ph = phi i64 [ %.0..0..0..0.6, %recursive_pop.exit69 ], [ %i.cs, %bb.u ], [ %i.bj, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %8, ptr nonnull align 8 %6, i64 40, i1 true), !tbaa.struct !402
  br label %bb.ak

bb.aj:                                            ; preds = %bb.m, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.eo = load i64, ptr @rb_eTypeError, align 8, !tbaa !144
  %i.ep = call i64 @rb_thread_current()
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.eo, ptr noundef nonnull @.str.232, i64 noundef %i.h, i64 noundef %i.ep) #41
  unreachable

bb.ak:                                            ; preds = %bb.ai, %bb.j
  %.033 = phi i64 [ %i.bf, %bb.j ], [ %.2.ph, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i64 %.033
}

declare i64 @rb_frame_last_func() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_exec_recursive_paired(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_memory_id(i64 noundef %2) #46
  %i.b = tail call i64 @rb_frame_last_func() #17
  %i.c = tail call fastcc i64 @exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef %i.a, i64 noundef %3, i32 noundef 0, i64 noundef %i.b)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @rb_memory_id(i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_exec_recursive_outer(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_frame_last_func() #17
  %i.b = tail call fastcc i64 @exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef %2, i32 noundef 1, i64 noundef %i.a)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_exec_recursive_outer_mid(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef %2, i32 noundef 1, i64 noundef %3)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_exec_recursive_paired_outer(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_memory_id(i64 noundef %2) #46
  %i.b = tail call i64 @rb_frame_last_func() #17
  %i.c = tail call fastcc i64 @exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef %i.a, i64 noundef %3, i32 noundef 1, i64 noundef %i.b)
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_Thread_Mutex() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %i.e = getelementptr i8, ptr %.val.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = getelementptr i8, ptr %i.f, i64 1168
  %i.h = tail call i32 @pthread_mutex_init(ptr noundef %i.g, ptr noundef null) #17 ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %rb_native_mutex_initialize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.7, i32 noundef %i.h) #41
  unreachable

rb_native_mutex_initialize.exit:                  ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.val.i, i64 296
  %i.j = tail call i32 @pthread_mutex_init(ptr noundef %i.i, ptr noundef null) #17 ; 2 uses
  %.not.i2 = icmp eq i32 %i.j, 0
  br i1 %.not.i2, label %rb_native_mutex_initialize.exit3, label %bb.c

bb.c:                                             ; preds = %rb_native_mutex_initialize.exit
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.7, i32 noundef %i.j) #41
end_hunk_4
begin_hunk_5_@rb_thread_s_ignore_deadlock:bb.a
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr i8, ptr %.val.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = getelementptr i8, ptr %i.f, i64 508
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, 8
  %.not = icmp eq i8 %i.i, 0
  %i.j = select i1 %.not, i64 0, i64 20
  ret i64 %i.j
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal noundef i64 @rb_thread_s_ignore_deadlock_set(i64 %0, i64 noundef returned %1) #31 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = and i64 %1, -5
  %.not = icmp eq i64 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr i8, ptr %.val.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = getelementptr i8, ptr %i.g, i64 508      ; 2 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = select i1 %.not, i8 0, i8 8
  %i.k = and i8 %i.i, -9
  %i.l = or disjoint i8 %i.k, %i.j
  store i8 %i.l, ptr %i.h, align 4
  ret i64 %1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_thread_s_handle_interrupt(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 14 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 36, ptr %i.b, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !147
  store volatile ptr %i.h, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store volatile ptr %.0..0..0..0..0..0..i, ptr %i.c, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.0..0..0..0.18 = load volatile ptr, ptr %i.c, align 8, !tbaa !147
  %i.i = getelementptr i8, ptr %.0..0..0..0.18, i64 48
  %.0.18.val = load ptr, ptr %i.i, align 8, !tbaa !11
  store volatile ptr %.0.18.val, ptr %i.d, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store volatile i64 4, ptr %i.e, align 8, !tbaa !144
  %i.j = tail call i32 @rb_block_given_p() #17
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.235) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i64 @rb_to_hash_type(i64 noundef %1) #17 ; 7 uses
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i64 %i.l, 7
  %i.o = icmp eq i64 %i.n, 0
  %.not3.i = and i1 %i.m, %i.o
  br i1 %.not3.i, label %RB_OBJ_FROZEN.exit, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit:                               ; preds = %bb.c
  %i.p = inttoptr i64 %i.l to ptr
  %i.q = load i64, ptr %i.p, align 8, !tbaa !46
  %i.r = and i64 %i.q, 2048
  %.not39.a = icmp eq i64 %i.r, 0
  br i1 %.not39.a, label %bb.e, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit.thread:                        ; preds = %bb.c, %RB_OBJ_FROZEN.exit
  %i.s = tail call i64 @rb_hash_compare_by_id_p(i64 noundef %i.l) #17
  %.not26 = icmp eq i64 %i.s, 0
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %RB_OBJ_FROZEN.exit.thread
  store i64 4, ptr %i.b, align 8, !tbaa !144
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %RB_OBJ_FROZEN.exit.thread, %RB_OBJ_FROZEN.exit
  %i.t = ptrtoint ptr %i.b to i64
  call void @rb_hash_foreach(i64 noundef %i.l, ptr noundef nonnull @handle_interrupt_arg_check_i, i64 noundef %i.t) #17
  %i.u = load i64, ptr %i.b, align 8, !tbaa !144  ; 8 uses
  %i.v = icmp eq i64 %i.u, 36
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = call i64 @rb_yield(i64 noundef 4) #17
  br label %bb.z

bb.g:                                             ; preds = %bb.e
  %i.x = and i64 %i.u, -5
  %.not40.a = icmp eq i64 %i.x, 0
  br i1 %.not40.a, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 %i.l, ptr %i.b, align 8, !tbaa !144
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.y = icmp eq i64 %i.u, 0
  %i.z = and i64 %i.u, 7
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.i
  %i.ac = inttoptr i64 %i.u to ptr
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.ae = and i64 %i.ad, 31
  %i.af = icmp eq i64 %i.ae, 8
  br i1 %i.af, label %bb.j, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.j:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  call void @rb_obj_freeze_inline(i64 noundef %i.u) #17
  %.pre = load i64, ptr %i.b, align 8, !tbaa !144
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.i, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.j, %bb.h
  %i.ag = phi i64 [ %i.u, %bb.i ], [ %i.u, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %.pre, %bb.j ], [ %i.l, %bb.h ]
  %.0..0..0..0.7 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.ah = getelementptr i8, ptr %.0..0..0..0.7, i64 288
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !260
  %i.aj = call i64 @rb_ary_push(i64 noundef %i.ai, i64 noundef %i.ag) #17 ; 0 uses
  %.0..0..0..0.8 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.ak = getelementptr i8, ptr %.0..0..0..0.8, i64 280
  %.0.8.val = load i64, ptr %i.ak, align 8, !tbaa !25
  %i.al = inttoptr i64 %.0.8.val to ptr           ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %i.an = and i64 %i.am, 8192
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.ao = lshr i64 %i.am, 15
  %i.ap = and i64 %i.ao, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.aq = getelementptr i8, ptr %i.al, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit

rb_threadptr_pending_interrupt_empty_p.exit:      ; preds = %bb.k, %bb.l
  %.0.i.i = phi i64 [ %i.ap, %bb.k ], [ %i.ar, %bb.l ]
  %.not41.a = icmp eq i64 %.0.i.i, 0
  br i1 %.not41.a, label %bb.n, label %bb.m

bb.m:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit
  %.0..0..0..0.9 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.as = getelementptr i8, ptr %.0..0..0..0.9, i64 248 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8
  %i.au = and i8 %i.at, -65
  store i8 %i.au, ptr %i.as, align 8
  %.0..0..0..0.10 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.av = getelementptr i8, ptr %.0..0..0..0.10, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !67
  %i.ax = getelementptr i8, ptr %i.aw, i64 32
  %i.ay = atomicrmw volatile or ptr %i.ax, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.0..0..0..0.11 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.az = getelementptr i8, ptr %.0..0..0..0.11, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !67 ; 4 uses
  store ptr %i.ba, ptr %i.f, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.bb, align 8, !tbaa !231
  store i64 36, ptr %2, align 8, !tbaa !233
  %i.bc = getelementptr i8, ptr %i.ba, i64 24     ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !234
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !235
  %i.bf = getelementptr i8, ptr %i.ba, i64 48
  %.0.1.val.a = load ptr, ptr %i.bf, align 8, !tbaa !11 ; 3 uses
  %.not.i.i32 = icmp eq ptr %.0.1.val.a, null
  br i1 %.not.i.i32, label %rb_ec_ractor_ptr.exit.i, label %3

3:                                                ; preds = %bb.n
  %4 = getelementptr i8, ptr %.0.1.val.a, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = getelementptr i8, ptr %.0.1.val.a, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %3, %bb.n
  %.0.i2.i = phi ptr [ %5, %3 ], [ null, %bb.n ]  ; 2 uses
  %.0.i7.i = phi ptr [ %7, %3 ], [ null, %bb.n ]
  %8 = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %8, align 8, !tbaa !123
  %9 = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %9, label %bb.o, label %rb_ec_vm_lock_rec.exit

bb.o:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.bg = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !121
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.o
  %.0.i33 = phi i32 [ %i.bh, %bb.o ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %.0.i33, ptr %i.bi, align 4, !tbaa !236
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bk = call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.bk, ptr %i.bj, align 8
  %i.bl = call ptr @llvm.stacksave.p0()
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.bl, ptr %i.bm, align 8
  %i.bn = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.bj)
  %.not28 = icmp eq i32 %i.bn, 0                  ; 2 uses
  br i1 %.not28, label %bb.q, label %bb.p, !prof !49

bb.p:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.f, align 8, !tbaa !147
  %i.bo = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  %.0..0..0..0.4.pre = load ptr, ptr %i.f, align 8, !tbaa !147
  br label %bb.r

bb.q:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %2, ptr %i.bc, align 8, !tbaa !234
  %i.bp = call i64 @rb_yield(i64 noundef 4) #17
  store volatile i64 %i.bp, ptr %i.e, align 8, !tbaa !144
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.0..0..0.4 = phi ptr [ %i.ba, %bb.q ], [ %.0..0..0..0.4.pre, %bb.p ]
  %i.bq = phi i32 [ 0, %bb.q ], [ %i.bo, %bb.p ]
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !235
  %i.bs = getelementptr i8, ptr %.0..0..0.4, i64 24
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.0..0..0..0.12 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.bt = getelementptr i8, ptr %.0..0..0..0.12, i64 288
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !260
  %i.bv = call i64 @rb_ary_pop(i64 noundef %i.bu) #17 ; 0 uses
  %.0..0..0..0.13 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.bw = getelementptr i8, ptr %.0..0..0..0.13, i64 280
  %.0.13.val = load i64, ptr %i.bw, align 8, !tbaa !25
  %i.bx = inttoptr i64 %.0.13.val to ptr          ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !46 ; 2 uses
  %i.bz = and i64 %i.by, 8192
  %.not.i.i34 = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i34, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = lshr i64 %i.by, 15
  %i.cb = and i64 %i.ca, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit36

bb.t:                                             ; preds = %bb.r
  %i.cc = getelementptr i8, ptr %i.bx, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit36

rb_threadptr_pending_interrupt_empty_p.exit36:    ; preds = %bb.s, %bb.t
  %.0.i.i35 = phi i64 [ %i.cb, %bb.s ], [ %i.cd, %bb.t ]
  %.not42 = icmp eq i64 %.0.i.i35, 0
  br i1 %.not42, label %bb.v, label %bb.u

bb.u:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit36
  %.0..0..0..0.14 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.ce = getelementptr i8, ptr %.0..0..0..0.14, i64 248 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 8
  %i.cg = and i8 %i.cf, -65
  store i8 %i.cg, ptr %i.ce, align 8
  %.0..0..0..0.15 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.ch = getelementptr i8, ptr %.0..0..0..0.15, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !67
  %i.cj = getelementptr i8, ptr %i.ci, i64 32
  %i.ck = atomicrmw volatile or ptr %i.cj, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %rb_threadptr_pending_interrupt_empty_p.exit36
  %.0..0..0..0.16 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.cl = getelementptr i8, ptr %.0..0..0..0.16, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !67 ; 3 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 32
  %i.co = load atomic volatile i32, ptr %i.cn monotonic, align 4
  %i.cp = getelementptr i8, ptr %i.cm, i64 36
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !50
  %i.cr = xor i32 %i.cq, -1
  %i.cs = and i32 %i.co, %i.cr
  %.not.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i, label %rb_vm_check_ints.exit, label %bb.w, !prof !49

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr i8, ptr %i.cm, i64 48
  %.val.i = load ptr, ptr %i.ct, align 8, !tbaa !11
  %i.cu = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i, i32 noundef 0) ; 0 uses
  br label %rb_vm_check_ints.exit

rb_vm_check_ints.exit:                            ; preds = %bb.v, %bb.w
  br i1 %.not28, label %bb.y, label %bb.x

bb.x:                                             ; preds = %rb_vm_check_ints.exit
  %.0..0..0..0.17 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.cv = getelementptr i8, ptr %.0..0..0..0.17, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !67
  %i.cx = getelementptr i8, ptr %i.cw, i64 24
  %.val = load ptr, ptr %i.cx, align 8, !tbaa !234 ; 2 uses
  %i.cy = getelementptr i8, ptr %.val, i64 64
  store i32 %i.bq, ptr %i.cy, align 8, !tbaa !231
  %i.cz = getelementptr i8, ptr %.val, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.cz)
  unreachable

bb.y:                                             ; preds = %rb_vm_check_ints.exit
  %.0..0..0..0.6 = load volatile i64, ptr %i.e, align 8, !tbaa !144
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.f
  %.0 = phi i64 [ %i.w, %bb.f ], [ %.0..0..0..0.6, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_thread_s_pending_interrupt_p(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr i8, ptr %.val.i, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = tail call i64 @rb_thread_pending_interrupt_p(i32 noundef %0, ptr noundef %1, i64 noundef %i.f)
  ret i64 %i.g
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_thread_pending_interrupt_p(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ruby_threadptr_data_type) #17
  %i.b = getelementptr i8, ptr %i.a, i64 280      ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %rb_threadptr_pending_interrupt_include_p.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit

rb_threadptr_pending_interrupt_empty_p.exit:      ; preds = %bb.c, %bb.d
  %.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %.not15 = icmp eq i64 %.0.i.i, 0
  br i1 %.not15, label %rb_threadptr_pending_interrupt_include_p.exit, label %bb.e

bb.e:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.f, label %rb_check_arity.exit

bb.f:                                             ; preds = %bb.e
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #41
  unreachable

rb_check_arity.exit:                              ; preds = %bb.e
  %.not9 = icmp eq i32 %0, 0
  br i1 %.not9, label %rb_threadptr_pending_interrupt_include_p.exit, label %bb.g

bb.g:                                             ; preds = %rb_check_arity.exit
  %i.k = load i64, ptr %1, align 8, !tbaa !144    ; 2 uses
  %i.l = load i64, ptr @rb_cModule, align 8, !tbaa !144
  %i.m = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.k, i64 noundef %i.l) #17
  %.not10 = icmp eq i64 %i.m, 0
  br i1 %.not10, label %bb.h, label %.preheader

bb.h:                                             ; preds = %bb.g
  %i.n = load i64, ptr @rb_eTypeError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.236) #41
  unreachable

.preheader:                                       ; preds = %bb.g, %RARRAY_AREF.exit.i
  %.09.i = phi i32 [ %i.af, %RARRAY_AREF.exit.i ], [ 0, %bb.g ] ; 2 uses
  %i.o = sext i32 %.09.i to i64                   ; 3 uses
  %i.p = load i64, ptr %i.b, align 8, !tbaa !25
  %i.q = inttoptr i64 %i.p to ptr                 ; 4 uses
end_hunk_5
begin_hunk_6_@nt_start:bb.a

bb.h:                                             ; preds = %bb.g, %thread_sched_lock_.exit
  tail call fastcc void @thread_sched_wait_running_turn(ptr noundef %i.z, ptr noundef nonnull %i.w, i1 noundef zeroext false)
  %i.ao = tail call i32 @pthread_mutex_unlock(ptr noundef %i.z) #17 ; 2 uses
  %.not.i.i40 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i40, label %thread_sched_unlock_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.ao) #41
  unreachable

thread_sched_unlock_.exit:                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !144
  call fastcc void @native_thread_init_stack(ptr noundef nonnull %i.w, ptr noundef nonnull %i.a)
  call fastcc void @thread_start_func_2(ptr noundef nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit

.critedge:                                        ; preds = %bb.c, %thread_sched_unlock_.exit45
  %i.ap = tail call i32 @pthread_mutex_lock(ptr noundef %i.p) #17 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i, label %ractor_sched_lock_.exit.i, label %bb.j

bb.j:                                             ; preds = %.critedge
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.ap) #41
  unreachable

ractor_sched_lock_.exit.i:                        ; preds = %.critedge, %ccan_list_pop_.exit.thread.i
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !58  ; 6 uses
  %.not.i.i41 = icmp eq ptr %i.aq, %i.q
  br i1 %.not.i.i41, label %ccan_list_pop_.exit.thread.i, label %ccan_list_pop_.exit.i

ccan_list_pop_.exit.i:                            ; preds = %ractor_sched_lock_.exit.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72 ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !73 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  store ptr %i.as, ptr %i.au, align 8, !tbaa !72
  store ptr %i.at, ptr %i.as, align 8, !tbaa !73
  %i.av = getelementptr i8, ptr %i.aq, i64 -296
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %ccan_list_pop_.exit.thread.i, label %bb.l

ccan_list_pop_.exit.thread.i:                     ; preds = %ccan_list_pop_.exit.i, %ractor_sched_lock_.exit.i
  %i.ax = tail call i32 @pthread_cond_wait(ptr noundef %i.r, ptr noundef %i.p) #17 ; 2 uses
  %.not.i14.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i14.i, label %ractor_sched_lock_.exit.i, label %bb.k, !llvm.loop !473

bb.k:                                             ; preds = %ccan_list_pop_.exit.thread.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.14, i32 noundef %i.ax) #41
  unreachable

bb.l:                                             ; preds = %ccan_list_pop_.exit.i
  %i.ay = load i32, ptr %i.s, align 8, !tbaa !447
  %i.az = add i32 %i.ay, -1
  store i32 %i.az, ptr %i.s, align 8, !tbaa !447
  %i.ba = tail call i32 @pthread_mutex_unlock(ptr noundef %i.p) #17 ; 2 uses
  %.not.i.i15.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i15.i, label %ractor_sched_deq.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.ba) #41
  unreachable

ractor_sched_deq.exit:                            ; preds = %bb.l
  %i.bb = getelementptr i8, ptr %i.aq, i64 -80    ; 2 uses
  %i.bc = tail call i32 @pthread_mutex_lock(ptr noundef %i.bb) #17 ; 2 uses
  %.not.i.i42 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i42, label %thread_sched_lock_.exit43, label %bb.n

bb.n:                                             ; preds = %ractor_sched_deq.exit
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.bc) #41
  unreachable

thread_sched_lock_.exit43:                        ; preds = %ractor_sched_deq.exit
  %i.bd = getelementptr i8, ptr %i.aq, i64 -40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !74 ; 8 uses
  %.not37 = icmp eq ptr %i.be, null
  br i1 %.not37, label %bb.r, label %bb.o

bb.o:                                             ; preds = %thread_sched_lock_.exit43
  %i.bf = getelementptr i8, ptr %i.be, i64 40     ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !64
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %i.t, align 8, !tbaa !98
  %i.bj = getelementptr i8, ptr %i.be, i64 56     ; 3 uses
  %i.bk = getelementptr i8, ptr %i.be, i64 64
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !72
  store ptr %i.bj, ptr %i.bj, align 8, !tbaa !73
  %i.bl = getelementptr i8, ptr %i.be, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !67 ; 3 uses
  %.not8.i.i = icmp eq ptr %i.bm, null
  br i1 %.not8.i.i, label %thread_sched_switch0.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr i8, ptr %i.be, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !56
  tail call void @rb_current_ec_set(ptr noundef nonnull %i.bm) #17
  %i.bp = getelementptr i8, ptr %i.bo, i64 312
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !88
  br label %thread_sched_switch0.exit

thread_sched_switch0.exit:                        ; preds = %bb.p, %bb.q
  store ptr %i.be, ptr %i.u, align 8, !tbaa !63
  store ptr %0, ptr %i.bf, align 8, !tbaa !64
  %i.bq = getelementptr i8, ptr %i.be, i64 200
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !97
  %i.bs = tail call ptr @coroutine_transfer(ptr noundef %i.bi, ptr noundef %i.br) #17 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %thread_sched_lock_.exit43, %bb.o, %thread_sched_switch0.exit
  %i.bt = tail call i32 @pthread_mutex_unlock(ptr noundef %i.bb) #17 ; 2 uses
  %.not.i.i44 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i44, label %thread_sched_unlock_.exit45, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.bt) #41
  unreachable

thread_sched_unlock_.exit45:                      ; preds = %bb.r
  %i.bu = load i32, ptr %i.l, align 8, !tbaa !65
  %.not38 = icmp eq i32 %i.bu, 0
  br i1 %.not38, label %.critedge, label %.loopexit

.loopexit:                                        ; preds = %thread_sched_unlock_.exit45, %thread_sched_unlock_.exit
  ret ptr null
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc void @thread_start_func_2(ptr noundef %0) unnamed_addr #20 {
bb.a:
  %1 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 4, ptr %i.d, align 8, !tbaa !144
  %i.f = getelementptr i8, ptr %0, i64 24         ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 320
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !230  ; 6 uses
  %i.j = getelementptr i8, ptr %i.g, i64 352
  %.val = load i32, ptr %i.j, align 8, !tbaa !384
  %i.k = icmp eq i32 %.val, 2
  br i1 %i.k, label %bb.b, label %rb_vm_unlock.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !146
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.c, label %rb_vm_lock.exit

bb.c:                                             ; preds = %bb.b
  tail call void @rb_vm_lock_body() #17
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !56
  br label %rb_vm_lock.exit

rb_vm_lock.exit:                                  ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.g, %bb.b ], [ %.pre, %bb.c ]
  %i.n = getelementptr i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  tail call void @rb_vm_ractor_blocking_cnt_dec(ptr noundef %i.o, ptr noundef %i.m, ptr noundef nonnull @.str.47, i32 noundef 677) #17
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !56   ; 3 uses
  %i.q = tail call i64 @rb_io_prep_stdin() #17
  %i.r = getelementptr i8, ptr %i.p, i64 408
  store i64 %i.q, ptr %i.r, align 8, !tbaa !474
  %i.s = tail call i64 @rb_io_prep_stdout() #17
  %i.t = getelementptr i8, ptr %i.p, i64 416
  store i64 %i.s, ptr %i.t, align 8, !tbaa !475
  %i.u = tail call i64 @rb_io_prep_stderr() #17
  %i.v = getelementptr i8, ptr %i.p, i64 424
  store i64 %i.u, ptr %i.v, align 8, !tbaa !476
  %i.w = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !146
  %.not.i.i88 = icmp eq ptr %i.w, null
  br i1 %.not.i.i88, label %bb.d, label %rb_vm_unlock.exit

bb.d:                                             ; preds = %rb_vm_lock.exit
  tail call void @rb_vm_unlock_body() #17
  br label %rb_vm_unlock.exit

rb_vm_unlock.exit:                                ; preds = %bb.d, %rb_vm_lock.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.x = getelementptr i8, ptr %0, i64 48         ; 12 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !67   ; 3 uses
  store ptr %i.y, ptr %i.e, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.z, align 8, !tbaa !231
  store i64 36, ptr %3, align 8, !tbaa !233
  %i.aa = getelementptr i8, ptr %i.y, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !234
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !235
  %i.ad = getelementptr i8, ptr %i.y, i64 48
  %.0.8.val.a = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 3 uses
  %.not.i.i89 = icmp eq ptr %.0.8.val.a, null
  br i1 %.not.i.i89, label %rb_ec_ractor_ptr.exit.i, label %4

4:                                                ; preds = %rb_vm_unlock.exit
  %5 = getelementptr i8, ptr %.0.8.val.a, i64 32
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr i8, ptr %.0.8.val.a, i64 24
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %4, %rb_vm_unlock.exit
  %.0.i2.i = phi ptr [ %6, %4 ], [ null, %rb_vm_unlock.exit ] ; 2 uses
  %.0.i7.i = phi ptr [ %8, %4 ], [ null, %rb_vm_unlock.exit ]
  %9 = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %9, align 8, !tbaa !123
  %10 = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %10, label %bb.e, label %rb_ec_vm_lock_rec.exit

bb.e:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.ae = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !121
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.e
  %.0.i90 = phi i32 [ %i.af, %bb.e ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %.0.i90, ptr %i.ag, align 4, !tbaa !236
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.ai, ptr %i.ah, align 8
  %i.aj = tail call ptr @llvm.stacksave.p0()
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.ah)
  %.not = icmp eq i32 %i.al, 0                    ; 2 uses
  br i1 %.not, label %rb_ec_hooks.exit, label %bb.f, !prof !49

bb.f:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.9 = load volatile ptr, ptr %i.e, align 8, !tbaa !147
  %i.am = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.9)
  br label %thread_do_start.exit

rb_ec_hooks.exit:                                 ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.10 = load ptr, ptr %i.e, align 8, !tbaa !147
  %i.an = getelementptr i8, ptr %.0..0..0..0.10, i64 24
  store ptr %3, ptr %i.an, align 8, !tbaa !234
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !67  ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 48
  %.val87 = load ptr, ptr %i.ap, align 8, !tbaa !11, !nonnull !103, !noundef !103
  %i.aq = getelementptr i8, ptr %.val87, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !327
  %i.au = and i32 %i.at, 1024
  %.not79 = icmp eq i32 %i.au, 0
  br i1 %.not79, label %bb.h, label %bb.g, !prof !49

bb.g:                                             ; preds = %rb_ec_hooks.exit
  %i.av = getelementptr i8, ptr %i.ar, i64 16
  %i.aw = getelementptr i8, ptr %0, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i32 1024, ptr %2, align 8, !tbaa !332
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ao, ptr %i.ay, align 8, !tbaa !334
  %i.az = getelementptr i8, ptr %i.ao, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !328
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !335
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.ax, ptr %i.bc, align 8, !tbaa !336
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  store i64 36, ptr %i.be, align 8, !tbaa !337
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 36, ptr %i.bf, align 8, !tbaa !338
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.bg, align 8, !tbaa !339
  call void @rb_exec_event_hooks(ptr noundef nonnull %2, ptr noundef %i.av, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %rb_ec_hooks.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bh = getelementptr i8, ptr %0, i64 448
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !406 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4
  br i1 %i.bj, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = tail call i64 @pthread_self() #46, !inline_history !477
  %i.bl = inttoptr i64 %i.bi to ptr               ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !46
  %i.bn = and i64 %i.bm, 8192
  %.not.i.i.i91 = icmp eq i64 %i.bn, 0
  %i.bo = getelementptr i8, ptr %i.bl, i64 24     ; 2 uses
  br i1 %.not.i.i.i91, label %RSTRING_PTR.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !48
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.j, %bb.i
  %i.bq = phi ptr [ %i.bp, %bb.j ], [ %i.bo, %bb.i ]
  %i.br = call i32 @pthread_setname_np(i64 noundef %i.bk, ptr noundef %i.bq) #17, !inline_history !477 ; 0 uses
  br label %native_set_thread_name.exit.i

bb.k:                                             ; preds = %bb.h
  %i.bs = getelementptr i8, ptr %0, i64 416
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !254
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %threadptr_invoke_proc_location.exit.i.i, label %native_set_thread_name.exit.i

threadptr_invoke_proc_location.exit.i.i:          ; preds = %bb.k
  %i.bv = getelementptr i8, ptr %0, i64 392
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !48
  %i.bx = call i64 @rb_proc_location(i64 noundef %i.bw) #17, !inline_history !477 ; 3 uses
  store i64 %i.bx, ptr %i.a, align 8, !tbaa !144
  %.not.i.i93 = icmp eq i64 %i.bx, 4
  br i1 %.not.i.i93, label %native_set_thread_name.exit.i, label %bb.l

bb.l:                                             ; preds = %threadptr_invoke_proc_location.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.by = inttoptr i64 %i.bx to ptr               ; 5 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !46
  %i.ca = and i64 %i.bz, 8192
  %.not.i.i.i.i = icmp eq i64 %i.ca, 0            ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr i8, ptr %i.by, i64 16
  br label %RARRAY_AREF.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.cc = getelementptr i8, ptr %i.by, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !48
  br label %RARRAY_AREF.exit.i.i

RARRAY_AREF.exit.i.i:                             ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi ptr [ %i.cb, %bb.m ], [ %i.cd, %bb.n ]
  %i.ce = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !144
  %i.cf = inttoptr i64 %i.ce to ptr               ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !46
  %i.ch = and i64 %i.cg, 8192
  %.not.i12.i.i = icmp eq i64 %i.ch, 0
  %i.ci = getelementptr i8, ptr %i.cf, i64 24     ; 2 uses
  br i1 %.not.i12.i.i, label %RSTRING_PTR.exit13.i.i, label %bb.o

bb.o:                                             ; preds = %RARRAY_AREF.exit.i.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !48
  br label %RSTRING_PTR.exit13.i.i

RSTRING_PTR.exit13.i.i:                           ; preds = %bb.o, %RARRAY_AREF.exit.i.i
  %i.ck = phi ptr [ %i.cj, %bb.o ], [ %i.ci, %RARRAY_AREF.exit.i.i ] ; 3 uses
  %i.cl = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.ck, i32 noundef 47) #54, !inline_history !477 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.cl, null
  br i1 %.not10.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %RSTRING_PTR.exit13.i.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 1      ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !48
  %.not11.i.i = icmp eq i8 %i.cn, 0
  %spec.select.i.i = select i1 %.not11.i.i, ptr %i.ck, ptr %i.cm
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %RSTRING_PTR.exit13.i.i
  %.0.i.i = phi ptr [ %i.ck, %RSTRING_PTR.exit13.i.i ], [ %spec.select.i.i, %bb.p ]
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr i8, ptr %i.by, i64 16
  br label %RARRAY_AREF.exit16.i.i

bb.s:                                             ; preds = %bb.q
  %i.cp = getelementptr i8, ptr %i.by, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !48
  br label %RARRAY_AREF.exit16.i.i

RARRAY_AREF.exit16.i.i:                           ; preds = %bb.s, %bb.r
  %.0.i.i15.i.i = phi ptr [ %i.co, %bb.r ], [ %i.cq, %bb.s ]
  %i.cr = getelementptr i8, ptr %.0.i.i15.i.i, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !144 ; 3 uses
  %i.ct = trunc i64 %i.cs to i1
  br i1 %i.ct, label %bb.t, label %bb.u

bb.t:                                             ; preds = %RARRAY_AREF.exit16.i.i
  %i.cu = call i64 @rb_fix2int(i64 noundef %i.cs) #17, !inline_history !477
  br label %rb_num2int_inline.exit.i.i

bb.u:                                             ; preds = %RARRAY_AREF.exit16.i.i
  %i.cv = call i64 @rb_num2int(i64 noundef %i.cs) #17, !inline_history !477
  br label %rb_num2int_inline.exit.i.i

rb_num2int_inline.exit.i.i:                       ; preds = %bb.u, %bb.t
  %.0.i17.i.i = phi i64 [ %i.cu, %bb.t ], [ %i.cv, %bb.u ]
  %i.cw = trunc i64 %.0.i17.i.i to i32
  %i.cx = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.b, i64 noundef 16, ptr noundef nonnull @.str.200, ptr noundef nonnull %.0.i.i, i32 noundef %i.cw) #17, !inline_history !477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store ptr %i.a, ptr %i.c, align 8, !tbaa !478
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #17, !inline_history !477, !srcloc !479
  %i.cy = load ptr, ptr %i.c, align 8, !tbaa !478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.cz = load volatile i64, ptr %i.cy, align 8, !tbaa !144 ; 0 uses
  %i.da = icmp ugt i32 %i.cx, 15
  br i1 %i.da, label %bb.v, label %bb.w

bb.v:                                             ; preds = %rb_num2int_inline.exit.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 42, ptr %i.db, align 2, !tbaa !48
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 0, ptr %i.dc, align 1, !tbaa !48
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %rb_num2int_inline.exit.i.i
  %i.dd = tail call i64 @pthread_self() #46, !inline_history !477
  %i.de = call i32 @pthread_setname_np(i64 noundef %i.dd, ptr noundef nonnull %i.b) #17, !inline_history !477 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %native_set_thread_name.exit.i

native_set_thread_name.exit.i:                    ; preds = %bb.w, %threadptr_invoke_proc_location.exit.i.i, %bb.k, %RSTRING_PTR.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.df = getelementptr i8, ptr %0, i64 416
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !254
  switch i32 %i.dg, label %thread_do_start.exit [
end_hunk_6
